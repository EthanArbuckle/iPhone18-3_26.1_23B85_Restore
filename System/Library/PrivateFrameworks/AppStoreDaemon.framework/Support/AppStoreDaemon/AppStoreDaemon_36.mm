void sub_1003CA720(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a2;
    v7 = sub_1002A570C([SQLiteTransporter alloc], v6);

    if (sub_1002A5784(v7))
    {
      v8 = [AppUpdatesDatabaseStore alloc];
      v9 = sub_1001C0DF0();
      v10 = sub_1001C0EC4(v9);
      v11 = [(SQLiteDatabaseStore *)v8 initWithDatabase:v10];

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1003CA87C;
      v13[3] = &unk_1005276A8;
      v14 = v5;
      v15 = &off_100549638;
      v16 = v11;
      v12 = v11;
      sub_1002A5CB0(v7, v13);
    }

    sub_1002A5B08(v7);
  }
}

void sub_1003CA87C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [NSString stringWithFormat:@"SELECT * FROM %@", v3];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003CA960;
  v6[3] = &unk_100527680;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  sub_10022C3C4(v4, v5, v6);
}

void sub_1003CA960(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003CAA04;
  v4[3] = &unk_100523D68;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  sub_100214814(a2, v4);
}

void sub_1003CAA04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = sub_1003B7B64(v3, *(a1 + 32));
  v6 = [v5 objectForKeyedSubscript:@"bundle_id"];
  if (!v6)
  {
    v30 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
LABEL_22:

      goto LABEL_27;
    }

    *buf = 0;
    v31 = "Skipping transported update with no bundle identifier";
    v32 = v30;
    v33 = 2;
LABEL_29:
    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v31, buf, v33);
    goto LABEL_22;
  }

  v38 = 0;
  v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v38];
  if (!v7)
  {
    v30 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 138543618;
    v40 = v6;
    v41 = 2114;
    v42 = v38;
    v31 = "Skipping transported update where uninstalled or demoted: %{public}@ %{public}@";
    v32 = v30;
    v33 = 22;
    goto LABEL_29;
  }

  v8 = v7;
  v9 = [v5 objectForKeyedSubscript:@"update_state"];
  v10 = [v9 integerValue];

  if ((v10 - 1) >= 2)
  {
    v34 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v40 = v6;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Skipping transported update where pending: %{public}@", buf, 0xCu);
    }
  }

  else
  {

    v11 = [v5 objectForKeyedSubscript:@"bundle_id"];
    [v4 setObject:v11 forKeyedSubscript:@"bundle_id"];

    v12 = [v5 objectForKeyedSubscript:@"is_background"];
    [v4 setObject:v12 forKeyedSubscript:@"is_background"];

    v13 = [v5 objectForKeyedSubscript:@"is_offloaded"];
    [v4 setObject:v13 forKeyedSubscript:@"is_offloaded"];

    v14 = [v5 objectForKeyedSubscript:@"is_per_device"];
    [v4 setObject:v14 forKeyedSubscript:@"is_per_device"];

    v15 = [v5 objectForKeyedSubscript:@"purchase_id"];
    [v4 setObject:v15 forKeyedSubscript:@"purchase_id"];

    v16 = [v5 objectForKeyedSubscript:@"store_item_id"];
    [v4 setObject:v16 forKeyedSubscript:@"store_item_id"];

    v17 = [v5 objectForKeyedSubscript:@"store_software_version_id"];
    [v4 setObject:v17 forKeyedSubscript:@"store_software_version_id"];

    v18 = [v5 objectForKeyedSubscript:@"update_state"];
    [v4 setObject:v18 forKeyedSubscript:@"update_state"];

    v19 = sub_1003B7A30(v3, @"install_date");
    v20 = v19;
    if (v19)
    {
      [v19 doubleValue];
      v21 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v4 setObject:v21 forKeyedSubscript:@"install_date"];
    }

    v22 = sub_1003B7A30(v3, @"release_date");

    if (v22)
    {
      [v22 doubleValue];
      v23 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v4 setObject:v23 forKeyedSubscript:@"release_date"];
    }

    v8 = sub_1003B7A30(v3, @"timestamp");

    if (v8)
    {
      [v8 doubleValue];
      v24 = [NSDate dateWithTimeIntervalSince1970:?];
      [v4 setObject:v24 forKeyedSubscript:@"timestamp"];
    }

    v25 = sub_1003B7904(v3, @"metrics_data");
    if (v25)
    {
      v26 = [NSJSONSerialization JSONObjectWithData:v25 options:0 error:0];
      if (v26)
      {
        [v4 setObject:v26 forKeyedSubscript:@"metrics_data"];
      }
    }

    v27 = sub_1003B7904(v3, @"store_item_data");

    if (v27)
    {
      v28 = [NSJSONSerialization JSONObjectWithData:v27 options:0 error:0];
      if (v28)
      {
        [v4 setObject:v28 forKeyedSubscript:@"store_item_data"];
      }
    }

    v29 = *(a1 + 40);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1003CAFC4;
    v35[3] = &unk_100520E08;
    v36 = v6;
    v37 = v4;
    [v29 modifyUsingTransaction:v35];
  }

LABEL_27:
}

id sub_1003CAFC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:*(a1 + 32)];
  v5 = [v3 connection];
  v6 = sub_1002D3DF0(AppUpdateEntity, v5, v4);

  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v18 = 138543362;
      v19 = v16;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to transport update with known bundle identifier: %{public}@", &v18, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v9 = [AppUpdateEntity alloc];
    v10 = *(a1 + 40);
    v11 = [v3 connection];
    v7 = [(SQLiteEntity *)v9 initWithPropertyValues:v10 onConnection:v11];

    v8 = [v7 existsInDatabase];
    v12 = ASDLogHandleForCategory();
    v13 = v12;
    if (v8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v18 = 138543362;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Sucessfully transported update for: %{public}@", &v18, 0xCu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = 138543362;
      v19 = v17;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Unable to transport update for: %{public}@", &v18, 0xCu);
    }
  }

  return v8;
}

void *sub_1003CB1E8(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = ClipAdditionalDataTask;
    v5 = objc_msgSendSuper2(&v8, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = ASDLogHandleForCategory();
      a1[2] = os_signpost_id_make_with_pointer(v6, a1);
    }
  }

  return a1;
}

Promise *sub_1003CB280(Promise *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(Promise);
    v3 = ASDLogHandleForCategory();
    v4 = v3;
    state = v1->_state;
    if (state - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, state, "Clip::AdditionalData/Prepare", "", buf, 2u);
    }

    v6 = [AMSURLRequestEncoder alloc];
    v7 = [(NSMutableArray *)v1->_observers amsBag];
    v8 = [v6 initWithBag:v7];

    [v8 setClientInfo:v1[1]._observers];
    v9 = [(NSRecursiveLock *)v1[1]._stateLock description];
    [v8 setLogUUID:v9];

    v10 = [AMSURLSession alloc];
    v11 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    v12 = [v10 initWithConfiguration:v11];

    v13 = objc_alloc_init(ClipAdditionalDataResponseDecoder);
    [v12 setResponseDecoder:v13];
    v14 = [(NSMutableArray *)v1->_observers URLForKey:@"appClipAdditionalData"];
    v15 = objc_alloc_init(AMSBuyParams);
    [v15 setParameter:v1[1]._state forKey:@"externalVersionId"];
    [v15 setParameter:v1->_stateLock forKey:@"adamId"];
    [v15 setParameter:v1->_result forKey:@"assetToken"];
    [v15 setParameter:v1[1].super.isa forKey:@"bundleId"];
    v16 = [v15 dictionary];

    v17 = [v8 requestWithMethod:4 URL:v14 parameters:v16];

    v18 = ASDLogHandleForCategory();
    v19 = v18;
    v20 = v1->_state;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v20, "Clip::AdditionalData/Prepare", "", buf, 2u);
    }

    v21 = ASDLogHandleForCategory();
    v22 = v21;
    v23 = v1->_state;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, v23, "Clip::AdditionalData/Request", "", buf, 2u);
    }

    v24 = [v12 dataTaskPromiseWithRequestPromise:v17];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1003CB680;
    v31[3] = &unk_1005276D0;
    v31[4] = v1;
    v25 = v2;
    v32 = v25;
    [v24 addSuccessBlock:v31];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1003CB730;
    v29[3] = &unk_10051B230;
    v29[4] = v1;
    v26 = v25;
    v30 = v26;
    [v24 addErrorBlock:v29];
    v27 = v30;
    v1 = v26;
  }

  return v1;
}

void sub_1003CB680(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  v6 = *(*(a1 + 32) + 16);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "Clip::AdditionalData/Request", "", v7, 2u);
  }

  sub_1001CE9E4(*(a1 + 40), v3);
}

void sub_1003CB730(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  v6 = *(*(a1 + 32) + 16);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "Clip::AdditionalData/Request", "", v7, 2u);
  }

  sub_1001CEA8C(*(a1 + 40), v3);
}

id sub_1003CB8DC(id result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = [BetaAppFeedbackEntity alloc];
    v5 = [v3 connection];
    v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

    v7 = [(SQLiteEntity *)v6 deleteFromDatabase];
    return v7;
  }

  return result;
}

id sub_1003CB95C(id a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = objc_opt_new();
    v11 = objc_autoreleasePoolPush();
    v59 = 0;
    v12 = [[LSApplicationRecord alloc] initWithURL:v8 allowPlaceholder:0 error:&v59];
    v13 = v59;
    if (v13)
    {
      v14 = v13;
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v47 = [v7 bundleID];
        *buf = 138543874;
        v61 = v8;
        v62 = 2114;
        v63 = v47;
        v64 = 2114;
        v65 = v14;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get an application record for %{public}@ (%{public}@): %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      a1 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v50 = a1;
    v54 = v9;
    v55 = v8;
    v16 = [v7 bundleID];
    v17 = [v12 exactBundleVersion];
    v18 = [ASDBetaAppVersion platformForRecord:v12];
    v19 = [v12 shortVersionString];
    v20 = [ASDBetaAppVersion versionWithBundleID:v16 bundleVersion:v17 platform:v18 andShortVersion:v19];

    [v7 setAppVersion:v20];
    v58 = 0;
    v53 = [NSKeyedArchiver archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v58];
    v51 = v58;
    v21 = [v12 iTunesMetadata];
    v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v21 storeItemIdentifier]);

    v23 = [v7 pairedWatchModel];
    v52 = v22;
    if (v23)
    {
    }

    else
    {
      v24 = [v7 pairedWatchOSVersion];

      if (!v24)
      {
LABEL_11:
        v27 = [v12 appClipMetadata];

        v57 = 0;
        v28 = sub_100407160(AppMetadataLoader, v12, &v57);
        v29 = v57;
        if (v29)
        {
          v30 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v49 = [v7 appVersion];
            *buf = 138543618;
            v61 = v49;
            v62 = 2114;
            v63 = v29;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error fetching metadata for %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v31 = [v28 betaBuildGroupID];
        [v10 setObject:v31 forKeyedSubscript:@"beta_build_group_id"];

        objc_autoreleasePoolPop(v11);
        v56 = 0;
        v32 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v56];
        v33 = v56;
        if (v33)
        {
          v34 = ASDLogHandleForCategory();
          v35 = v53;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v48 = [v7 appVersion];
            *buf = 138543618;
            v61 = v48;
            v62 = 2114;
            v63 = v33;
            _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Error archiving feedback for %{public}@: %{public}@", buf, 0x16u);
          }

          a1 = 0;
          v9 = v54;
          v8 = v55;
          v36 = v52;
        }

        else
        {
          v37 = v27 != 0;
          v9 = v54;
          [v10 setObject:v54 forKeyedSubscript:@"account_dsid"];
          v35 = v53;
          [v10 setObject:v53 forKeyedSubscript:@"app_version"];
          [v10 setObject:v32 forKeyedSubscript:@"feedback"];
          v38 = objc_alloc_init(_TtC9appstored6LogKey);
          v39 = [(LogKey *)v38 description];
          [v10 setObject:v39 forKeyedSubscript:@"log_key"];

          v40 = [v7 imagesData];
          v41 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", 2 * ([v40 count] == 0));
          [v10 setObject:v41 forKeyedSubscript:@"state"];

          [v10 setObject:v52 forKeyedSubscript:@"item_id"];
          v42 = v37;
          v36 = v52;
          v43 = [NSNumber numberWithBool:v42];
          [v10 setObject:v43 forKeyedSubscript:@"is_app_clip"];

          v44 = [BetaAppFeedbackEntity alloc];
          v45 = [v50 connection];
          v34 = [(SQLiteEntity *)v44 initWithPropertyValues:v10 onConnection:v45];

          a1 = [v34 persistentID];
          v8 = v55;
        }

        goto LABEL_21;
      }
    }

    v25 = [v12 counterpartIdentifiers];
    v26 = [v25 count];

    if (!v26)
    {
      [v7 setPairedWatchModel:0];
      [v7 setPairedWatchOSVersion:0];
    }

    goto LABEL_11;
  }

LABEL_22:

  return a1;
}

uint64_t sub_1003CBF88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 databaseID])
    {
      v5 = [BetaAppFeedbackEntity alloc];
      v6 = [v4 databaseID];
      v7 = [a1 connection];
      v8 = [(SQLiteEntity *)v5 initWithPersistentID:v6 onConnection:v7];

      if (v4)
      {
        v9 = v4[2];
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
      [(SQLiteEntity *)v8 setValuesWithDictionary:v10];

      a1 = 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

BOOL sub_1003CC054(_BOOL8 result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a3;
    v6 = [NSNumber numberWithBool:a2];
    v7 = sub_1003CC0D4(v4, v6, @"feedback_enabled", v5);

    return v7;
  }

  return result;
}

BOOL sub_1003CC0D4(_BOOL8 a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = sub_100396024(a1, a4);
    v10 = [a1 connection];
    v11 = sub_1002D3DF0(BetaAppInfoEntity, v10, v9);

    a1 = v11 != 0;
    if (v11)
    {
      [v11 setValue:v7 forProperty:v8];
    }
  }

  return a1;
}

BOOL sub_1003CC198(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 version];
    v6 = sub_100396024(a1, v5);
    v7 = [a1 connection];
    v8 = sub_1002D3DF0(BetaAppInfoEntity, v7, v6);

    v9 = [v5 bundleID];
    v10 = v9;
    if (v9 && [v9 length])
    {
      if (!v8)
      {
        v12 = [BetaAppInfoEntity alloc];
        v35 = @"bundle_id";
        v36 = v10;
        v13 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v14 = [a1 connection];
        v8 = [(SQLiteEntity *)v12 initWithPropertyValues:v13 onConnection:v14];
      }

      v15 = [v4 localizedTestNotes];
      [(SQLiteEntity *)v8 setObject:v15 forKeyedSubscript:@"what_to_test"];

      v16 = [v4 testerEmail];
      [(SQLiteEntity *)v8 setObject:v16 forKeyedSubscript:@"email"];

      v17 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 iconNeedsMask]);
      [(SQLiteEntity *)v8 setObject:v17 forKeyedSubscript:@"icon_needs_mask"];

      v18 = [v4 iconURLTemplate];
      [(SQLiteEntity *)v8 setObject:v18 forKeyedSubscript:@"icon_url_template"];

      v19 = [v4 expirationDate];
      [(SQLiteEntity *)v8 setObject:v19 forKeyedSubscript:@"expiration_date"];

      v20 = [v5 bundleID];
      [(SQLiteEntity *)v8 setObject:v20 forKeyedSubscript:@"bundle_id"];

      v21 = [v5 bundleVersion];
      [(SQLiteEntity *)v8 setObject:v21 forKeyedSubscript:@"bundle_version"];

      v22 = [v5 shortVersion];
      [(SQLiteEntity *)v8 setObject:v22 forKeyedSubscript:@"bundle_short_version"];

      v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isFeedbackEnabled]);
      [(SQLiteEntity *)v8 setObject:v23 forKeyedSubscript:@"feedback_enabled"];

      v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 hasSharedFeedback]);
      [(SQLiteEntity *)v8 setObject:v24 forKeyedSubscript:@"has_shared_screenshot_feedback"];

      v25 = [v4 lastWelcomeScreenViewDate];
      [(SQLiteEntity *)v8 setObject:v25 forKeyedSubscript:@"last_seen_date"];

      v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isLaunchScreenEnabled]);
      [(SQLiteEntity *)v8 setObject:v26 forKeyedSubscript:@"launch_screen_enabled"];

      v27 = [v4 displayNames];
      v28 = [v27 localizedNames];
      [(SQLiteEntity *)v8 setObject:v28 forKeyedSubscript:@"localized_display_names"];

      v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 platform]);
      [(SQLiteEntity *)v8 setObject:v29 forKeyedSubscript:@"platform"];

      v30 = [v4 displayNames];
      v31 = [v30 primaryLocale];
      [(SQLiteEntity *)v8 setObject:v31 forKeyedSubscript:@"primary_locale"];

      v11 = [(SQLiteEntity *)v8 persistentID]!= 0;
    }

    else
    {
      v11 = 0;
    }

    v34 = v11;

    v32 = v34;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

BOOL sub_1003CC604(_BOOL8 result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a3;
    v6 = [NSNumber numberWithBool:a2];
    v7 = sub_1003CC0D4(v4, v6, @"has_shared_screenshot_feedback", v5);

    return v7;
  }

  return result;
}

BOOL sub_1003CC684(_BOOL8 result, uint64_t a2, void *a3)
{
  if (result)
  {
    v4 = result;
    v5 = a3;
    v6 = [NSNumber numberWithBool:a2];
    v7 = sub_1003CC0D4(v4, v6, @"launch_screen_enabled", v5);

    return v7;
  }

  return result;
}

uint64_t sub_1003CC704(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = sub_100396024(result, a2);
    v4 = [v2 connection];
    v5 = sub_1002D3DF0(BetaAppInfoEntity, v4, v3);

    v6 = [v5 deleteFromDatabase];
    return v6;
  }

  return result;
}

BOOL sub_1003CC78C(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:a2];
    v4 = [v2 connection];
    v5 = sub_1002D3DF0(BetaAppInfoEntity, v4, v3);

    v2 = v5 != 0;
    if (v5)
    {
      [v5 setObject:0 forKeyedSubscript:@"last_seen_date"];
    }
  }

  return v2;
}

char *sub_1003CC85C(char *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = SwitchAppOwnerTask;
    v11 = objc_msgSendSuper2(&v15, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong((v11 + 42), a2);
      objc_storeStrong((a1 + 50), a3);
      objc_storeStrong((a1 + 66), a4);
      v12 = objc_alloc_init(_TtC9appstored6LogKey);
      v13 = *(a1 + 58);
      *(a1 + 58) = v12;
    }
  }

  return a1;
}

void sub_1003CCA10(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    sub_1003CCA34(*(a1 + 32), a2, *(a1 + 40));
  }
}

void sub_1003CCA34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v157 = a3;
    v6 = [v5 URLForKey:@"switch-arcade-user"];
    v7 = *(a1 + 74);
    *(a1 + 74) = v6;

    if (*(a1 + 74))
    {
      v8 = 1;
    }

    else
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[SwitchArcade]: Error reading switch bag key.", buf, 2u);
      }

      v8 = *(a1 + 74) != 0;
    }

    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1003D0F60(*(a1 + 66));
      v12 = *(a1 + 50);
      v13 = [*(a1 + 42) username];
      v14 = [*(a1 + 42) ams_DSID];
      v15 = *(a1 + 74) != 0;
      *buf = 138544643;
      v163 = v11;
      v164 = 2113;
      *v165 = v12;
      *&v165[8] = 2113;
      *&v165[10] = v13;
      v166 = 2114;
      v167 = v14;
      v168 = 1024;
      v169 = v8;
      v170 = 1024;
      v171 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[SwitchArcade]: Starting switch bundleID: %{public}@ fromUserName: %{private}@ toUserName: %{private}@/%{public}@ usingSwithArcadeUserEndpoint: %d hadURL: %d", buf, 0x36u);
    }

    v16 = &OBJC_IVAR___CoordinatorPromiseSpecification__location;
    v158 = v5;
    if (v8)
    {
      v17 = v5;
      v18 = [SwitchAppOwnerURLRequestEncoder alloc];
      v19 = [v17 amsBag];
      v20 = [(SwitchAppOwnerURLRequestEncoder *)v18 initWithBag:v19];

      if (*(a1 + 42))
      {
        [(SwitchAppOwnerURLRequestEncoder *)v20 setAccount:?];
      }

      v152 = v17;
      v154 = v20;
      v21 = objc_opt_new();
      v22 = +[AMSDevice deviceGUID];
      if (v22)
      {
        [v21 setObject:v22 forKeyedSubscript:@"guid"];
      }

      v23 = [LSApplicationRecord alloc];
      v24 = sub_1003D0F60(*(a1 + 66));
      v25 = [v23 initWithBundleIdentifier:v24 allowPlaceholder:0 error:0];

      if (v25)
      {
        v26 = [v25 URL];
        v27 = [v26 path];

        v28 = [v25 executableURL];
        v29 = [v28 lastPathComponent];
        v30 = [v29 stringByAppendingPathExtension:@"sinf"];

        if ([v27 length] && objc_msgSend(v30, "length"))
        {
          v31 = [[NSArray alloc] initWithObjects:{v27, @"SC_Info", v30, 0}];
          v32 = [NSString pathWithComponents:v31];
          if (v32)
          {
            v33 = [[NSData alloc] initWithContentsOfFile:v32];
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }

        if (!v33)
        {
          v16 = &OBJC_IVAR___CoordinatorPromiseSpecification__location;
LABEL_64:
          v84 = [LSApplicationRecord alloc];
          v85 = sub_1003D0F60(*(a1 + v16[332]));
          v86 = [v84 initWithBundleIdentifier:v85 allowPlaceholder:0 error:0];

          if (v86)
          {
            v87 = [v86 dataContainerURL];
            v88 = [v87 URLByAppendingPathComponent:@"StoreKit"];
            v89 = [v88 URLByAppendingPathComponent:@"receipt"];

            v90 = v152;
            if (v89)
            {
              v91 = [[NSData alloc] initWithContentsOfURL:v89];
            }

            else
            {
              v91 = 0;
            }

            v92 = &OBJC_IVAR___CoordinatorPromiseSpecification__location;

            if (!v91)
            {
LABEL_73:
              v93 = sub_1003D2CD8(*(a1 + v16[332]));
              if (v93)
              {
                [v21 setObject:v93 forKeyedSubscript:@"vid"];
              }

              v94 = [(SwitchAppOwnerURLRequestEncoder *)v154 requestWithMethod:4 URL:*(a1 + v92[334]) parameters:v21];
              v172 = 0;
              v95 = [v94 resultWithError:&v172];
              v96 = v172;

              v97 = sub_10000479C();
              v98 = sub_10024A984(AMSURLSession, 0, v97, v90);

              v99 = [v98 dataTaskPromiseWithRequest:v95];
              v161 = v96;
              v100 = [v99 resultWithError:&v161];
              v101 = v161;

              if (v101)
              {
                v102 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v163 = v101;
                  _os_log_error_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "[SwitchArcade]: Resulted with error: %{public}@", buf, 0xCu);
                }

                v103 = v101;
                v104 = 0;
              }

              else
              {
                v104 = [v100 object];
              }

              v105 = v101;
              v106 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v163 = v104;
                _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "[SwitchArcade]: Result: %{public}@", buf, 0xCu);
              }

              v107 = [v104 objectForKeyedSubscript:@"sinfs"];
              if (![v107 count])
              {
                v49 = v157;
                v5 = v158;
LABEL_113:
                v140 = v105;

LABEL_129:
                (v49)[2](v49, v140);

                goto LABEL_130;
              }

              v156 = v104;
              v108 = [v107 firstObject];
              v109 = [v108 objectForKeyedSubscript:@"sinf"];

              v110 = [[NSData alloc] initWithBase64EncodedString:v109 options:0];
              if (v110)
              {
                v111 = v110;
                v112 = sub_1003D2A70(*(a1 + 66));
                v113 = sub_1003D24E8(*(a1 + 66));
                v172 = v105;
                v114 = sub_100249490(IXAppInstallCoordinator, v112, v113, v111, &v172);
                v115 = v172;

                v116 = ASDLogHandleForCategory();
                v117 = v116;
                if (v115)
                {
                  if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                  {
                    v144 = sub_1003D0F60(*(a1 + 66));
                    *buf = 138543874;
                    v163 = v144;
                    v164 = 1024;
                    *v165 = v114;
                    *&v165[4] = 2114;
                    *&v165[6] = v115;
                    _os_log_error_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "[SwitchArcade]:Replaced SINF on app with bundleID: %{public}@ result: %d error: %{public}@", buf, 0x1Cu);
                  }

                  if ((v114 & 1) == 0)
                  {
                    v105 = v115;
LABEL_108:
                    v49 = v157;
                    v5 = v158;
LABEL_112:
                    v104 = v156;
                    goto LABEL_113;
                  }
                }

                else
                {
                  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                  {
                    v119 = sub_1003D0F60(*(a1 + 66));
                    *buf = 138543618;
                    v163 = v119;
                    v164 = 1024;
                    *v165 = v114;
                    _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "[SwitchArcade]:Replaced SINF on app with bundleID: %{public}@ result: %d", buf, 0x12u);
                  }

                  if (!v114)
                  {
                    v105 = 0;
                    goto LABEL_108;
                  }
                }

                v120 = [v156 objectForKeyedSubscript:@"replacementReceipt"];
                if (v120)
                {
                  v121 = [[NSData alloc] initWithBase64EncodedString:v120 options:0];
                  v122 = sub_1003CDFA4(a1, *(a1 + 66), v121);
                  v123 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                  {
                    v124 = sub_1003D0F60(*(a1 + 66));
                    *buf = 138543618;
                    v163 = v124;
                    v164 = 1024;
                    *v165 = v122;
                    _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "[SwitchArcade]: Replaced receipt on app with bundleID: %{public}@ result: %d", buf, 0x12u);
                  }
                }

                v126 = sub_1003D2888(*(a1 + 66), v125);
                v109 = v126;
                if (v126)
                {
                  sub_1003E38F0(v126, *(a1 + 42));
                  v127 = [*(a1 + 42) ams_DSID];
                  [v109 setPurchaserID:v127];

                  v128 = sub_1003D0F60(*(a1 + 66));
                  v129 = sub_1003D24E8(*(a1 + 66));
                  v161 = v115;
                  v130 = sub_1003E3BE4(v109, v128, v129, &v161);
                  v105 = v161;

                  if (v130)
                  {
                    v131 = ASDLogHandleForCategory();
                    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
                    {
                      v132 = sub_1003D0F60(*(a1 + 66));
                      v133 = [*(a1 + 42) ams_DSID];
                      *buf = 138543618;
                      v163 = v132;
                      v164 = 2114;
                      *v165 = v133;
                      _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "[SwitchArcade]: Updated metadata for bundleID: %{public}@ to account: %{public}@", buf, 0x16u);
                    }

                    v134 = sub_1003D2550(*(a1 + 66));
                    [v134 fileSystemRepresentation];
                    sub_100032D64();
                    v136 = v135;

                    if (v136)
                    {
                      v137 = v136;
                      v138 = [[NSError alloc] initWithDomain:NSOSStatusErrorDomain code:v136 userInfo:0];

                      v118 = ASDLogHandleForCategory();
                      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                      {
                        v139 = sub_1003D0F60(*(a1 + 66));
                        *buf = 138543618;
                        v163 = v139;
                        v164 = 2048;
                        *v165 = v137;
                        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "[SwitchArcade]: App with bundleID: %{public}@ not launchable following SINF update. Launch status: %ld", buf, 0x16u);
                      }

                      v105 = v138;
                      goto LABEL_91;
                    }

                    v118 = ASDLogHandleForCategory();
                    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                    {
                      v142 = sub_1003D0F60(*(a1 + 66));
                      v143 = [*(a1 + 42) ams_DSID];
                      *buf = 138543618;
                      v163 = v142;
                      v164 = 2114;
                      *v165 = v143;
                      _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "[SwitchArcade]: App with bundleID: %{public}@ launchable with account: %{public}@", buf, 0x16u);

LABEL_121:
                      goto LABEL_91;
                    }

                    goto LABEL_91;
                  }

                  v115 = v105;
                }

                v49 = v157;
                v5 = v158;
                goto LABEL_111;
              }

              v118 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
              {
                v142 = sub_1003D0F60(*(a1 + 66));
                *buf = 138543362;
                v163 = v142;
                _os_log_error_impl(&_mh_execute_header, v118, OS_LOG_TYPE_ERROR, "[SwitchArcade]: Unable to decode SINF on app with bundleID: %{public}@", buf, 0xCu);
                goto LABEL_121;
              }

LABEL_91:
              v49 = v157;
              v5 = v158;

              v115 = v105;
LABEL_111:

              v105 = v115;
              goto LABEL_112;
            }

            v86 = [v91 base64EncodedStringWithOptions:0];
            if (v86)
            {
              [v21 setObject:v86 forKeyedSubscript:@"existingReceipt"];
            }
          }

          else
          {
            v91 = 0;
            v90 = v152;
            v92 = &OBJC_IVAR___CoordinatorPromiseSpecification__location;
          }

          goto LABEL_73;
        }

        v50 = [v33 base64EncodedStringWithOptions:0];
        v16 = &OBJC_IVAR___CoordinatorPromiseSpecification__location;
        if (v50)
        {
          [v21 setObject:v50 forKeyedSubscript:@"existingSinf"];
        }
      }

      else
      {
        v50 = 0;
        v33 = 0;
      }

      goto LABEL_64;
    }

    v34 = v5;
    v35 = sub_1003B6560();
    sub_1003B6764(v35, 3);
    sub_1003B6820(v35, 4);
    sub_1003B66A8(v35, 60);
    v36 = [RestoreAppInstall alloc];
    v38 = sub_1003D2888(*(a1 + 66), v37);
    if (v36)
    {
      v39 = sub_10039826C(&v36->super.super.super.isa, v38, 1, -1, v35);
    }

    else
    {
      v39 = 0;
    }

    v40 = sub_1003D2CD8(*(a1 + 66));
    if (v40)
    {
      v41 = [[NSUUID alloc] initWithUUIDString:v40];
      if (v41 && v39)
      {
        sub_10023E000(v39, v41, @"vid");
      }
    }

    v155 = v40;
    v42 = [ContentRestoreTask alloc];
    v172 = v39;
    v43 = [NSArray arrayWithObjects:&v172 count:1];
    v44 = sub_10022B118(&v42->super.super.super.isa, v43, *(a1 + 42), v34);

    v161 = 0;
    [a1 runSubTask:v44 returningError:&v161];
    v45 = v161;
    if (v45)
    {
      v47 = v45;
      v48 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v141 = sub_1003D0F60(*(a1 + 66));
        *buf = 138543618;
        v163 = v141;
        v164 = 2112;
        *v165 = v47;
        _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "[SwitchArcade] [%{public}@] Content restore call resulted in error: %@", buf, 0x16u);
      }

      v49 = v157;
      goto LABEL_128;
    }

    if (v44)
    {
      Property = objc_getProperty(v44, v46, 64, 1);
    }

    else
    {
      Property = 0;
    }

    v52 = Property;
    v48 = [v52 firstObject];

    if (v48)
    {
      v54 = objc_getProperty(v48, v53, 72, 1);
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

    v153 = v57;
    if (v57)
    {
      v58 = sub_1003D2A70(*(a1 + 66));
      v59 = sub_1003D24E8(*(a1 + 66));
      v160 = 0;
      v60 = sub_100249490(IXAppInstallCoordinator, v58, v59, v57, &v160);
      v47 = v160;

      v61 = ASDLogHandleForCategory();
      v62 = v61;
      if (v60)
      {
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v63 = sub_1003D0F60(*(a1 + 66));
          v64 = [*(a1 + 42) ams_DSID];
          *buf = 138543618;
          v163 = v63;
          v164 = 2114;
          *v165 = v64;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[SwitchArcade]: Updated SINF for bundleID: %{public}@ to account: %{public}@", buf, 0x16u);
        }

        if (!v48 || (v65 = sub_100385EB4(v48, *(a1 + 42), 1)) == 0)
        {
          v72 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
          {
            v149 = sub_1003D0F60(*(a1 + 66));
            *buf = 138543362;
            v163 = v149;
            _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "[SwitchArcade]: Unable to generate new metadata for bundleID: %{public}@", buf, 0xCu);
          }

          v62 = 0;
          v49 = v157;
          goto LABEL_126;
        }

        v66 = v65;
        v67 = sub_1003D0F60(*(a1 + 66));
        v68 = sub_1003D24E8(*(a1 + 66));
        v159 = v47;
        v151 = v66;
        v69 = sub_1003E3BE4(v66, v67, v68, &v159);
        v70 = v159;

        if (v69)
        {
          v150 = v70;
          v72 = objc_getProperty(v48, v71, 40, 1);
          if (v72)
          {
            sub_1003CDFA4(a1, *(a1 + 66), v72);
          }

          v73 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = sub_1003D0F60(*(a1 + 66));
            v75 = [*(a1 + 42) ams_DSID];
            *buf = 138543618;
            v163 = v74;
            v164 = 2114;
            *v165 = v75;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "[SwitchArcade]: Updated metadata for bundleID: %{public}@ to account: %{public}@", buf, 0x16u);
          }

          v76 = sub_1003D2550(*(a1 + 66));
          [v76 fileSystemRepresentation];
          sub_100032D64();
          v78 = v77;

          if (v78)
          {
            v79 = v78;
            v80 = [[NSError alloc] initWithDomain:NSOSStatusErrorDomain code:v78 userInfo:0];

            v81 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v82 = sub_1003D0F60(*(a1 + 66));
              *buf = 138543618;
              v163 = v82;
              v164 = 2048;
              *v165 = v79;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "[SwitchArcade]: Not launching following SINF update for bundleID: %{public}@ subscription status: %ld", buf, 0x16u);
            }

            v49 = v157;
            v62 = v151;
          }

          else
          {
            v81 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v145 = sub_1003D0F60(*(a1 + 66));
              v146 = [*(a1 + 42) ams_DSID];
              *buf = 138543618;
              v163 = v145;
              v164 = 2114;
              *v165 = v146;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "[SwitchArcade]: Launching for bundleID: %{public}@ to account: %{public}@", buf, 0x16u);
            }

            v49 = v157;
            v80 = v150;
            v62 = v151;
          }

          v47 = v80;
LABEL_126:

          goto LABEL_127;
        }

        v47 = v70;
        v49 = v157;
        v62 = v151;
LABEL_127:

LABEL_128:
        v140 = v47;

        v5 = v158;
        goto LABEL_129;
      }

      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        v148 = sub_1003D0F60(*(a1 + 66));
        *buf = 138543618;
        v163 = v148;
        v164 = 2114;
        *v165 = v47;
        _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[SwitchArcade]: Unable to swap SINF for bundleID: %{public}@ error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v83 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        v47 = 0;
        v49 = v157;
        v62 = v83;
        goto LABEL_127;
      }

      v147 = sub_1003D0F60(*(a1 + 66));
      *buf = 138543362;
      v163 = v147;
      v62 = v83;
      _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "[SwitchArcade]: Unable to find SINF in server response for bundleID: %{public}@", buf, 0xCu);

      v47 = 0;
    }

    v49 = v157;
    goto LABEL_127;
  }

LABEL_130:
}

uint64_t sub_1003CDFA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1003B6F84(WriteReceipt, v6, v5, *(a1 + 58), 0);
  v8 = ASDLogHandleForCategory();
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v10 = sub_1003D0F60(v5);
    v12 = 138543362;
    v13 = v10;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[SwitchArcade]: Receipt fresh failed for bundleID: %{public}@", &v12, 0xCu);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1003D0F60(v5);
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[SwitchArcade]: Receipt fresh succeeded for bundleID: %{public}@", &v12, 0xCu);
LABEL_4:
  }

LABEL_6:

  return v7;
}

void sub_1003CE294(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = sub_100006B78();
  v5 = sub_10023D5E0(v4);

  if ((v5 & 1) == 0)
  {
    v6 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 138543362;
    v17 = objc_opt_class();
    v9 = v17;
    v10 = "[%{public}@]: Not prompting during device setup";
LABEL_10:
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v10, buf, 0xCu);

    goto LABEL_14;
  }

  if (!v2 || ![v2 count])
  {
    v6 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 138543362;
    v17 = objc_opt_class();
    v9 = v17;
    v10 = "[%{public}@]: No bundle ids";
    goto LABEL_10;
  }

  v6 = +[ActiveAccountObserver activeAccount];
  if (v6)
  {
    v7 = +[BagService appstoredService];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003CE508;
    v12[3] = &unk_1005276F8;
    v15 = v3;
    v13 = v2;
    v14 = v6;
    [v7 recentBagWithCompletionHandler:v12];

    v8 = v13;
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = objc_opt_class();
      v11 = v17;
    }
  }

LABEL_14:
}

void sub_1003CE508(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  objc_opt_self();
  v9 = [v7 BOOLForKey:@"use-alternate-text-for-manage-subs-on-app-delete"];
  v10 = v9;
  if (!v9)
  {
    v12 = [v7 stringForKey:@"currentStorefrontCountryCodeISO3A"];
    if (!v12)
    {
      v62 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2112;
        *&buf[14] = v8;
        v63 = *&buf[4];
        _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "[%{public}@]: Encountered error while loading storefront country code bag value: %@", buf, 0x16u);
      }

      v25 = 0;
      v70 = v8;
      v15 = v7;
      goto LABEL_47;
    }

    v13 = v12;
    v14 = [&off_100549650 containsObject:v12];

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  if (([v9 BOOLValue] & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = 1;
LABEL_7:

  v15 = [v7 arrayOfStringsForKey:@"manage-subs-app-delete-skip-list"];
  if (v8)
  {
    v16 = sub_1003D5C58();

    v15 = v16;
    if (!v16)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = &__NSArray0__struct;
    }

    sub_1003D5C94(AppDefaultsManager, v17);
  }

  v65 = v11;
  v64 = v8;
  v66 = v7;
  v70 = objc_opt_new();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v67 = a1;
  v18 = *(a1 + 32);
  v19 = [v18 countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v71 = 0;
    v68 = 0;
    v22 = *v74;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v74 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v73 + 1) + 8 * i);
        if (([v15 containsObject:v24] & 1) == 0)
        {
          if ([v24 isEqualToString:@"com.apple.Music"])
          {
            v21 = 1;
          }

          else if ([v24 isEqualToString:@"com.apple.news"])
          {
            v71 = 1;
          }

          else if ([v24 isEqualToString:@"com.apple.tv"])
          {
            v68 = 1;
          }

          else
          {
            [v70 addObject:v24];
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v73 objects:v77 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
    v71 = 0;
    v68 = 0;
  }

  v25 = [NSArray arrayWithArray:v70];
  v7 = v66;
  if (v21)
  {
    v26 = v66;
    v27 = objc_opt_self();
    v28 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = @"com.apple.Music";
      v30 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Checking status for %{public}@", buf, 0x16u);
    }

    v31 = [ICStoreRequestContext alloc];
    v32 = +[ICUserIdentity activeAccount];
    v33 = [v31 initWithIdentity:v32];

    v34 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:v33];
    [v34 setShouldReturnLastKnownStatusOnly:1];
    v35 = +[ICMusicSubscriptionStatusController sharedStatusController];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1003CEFE0;
    v79 = &unk_100527720;
    v80 = v26;
    v81 = v27;
    LOBYTE(v82) = v65;
    v36 = v26;
    [v35 performSubscriptionStatusRequest:v34 withCompletionHandler:buf];
  }

  v37 = v67;
  if (v71)
  {
    v38 = v66;
    v39 = objc_opt_self();
    v40 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v41;
      *&buf[12] = 2114;
      *&buf[14] = @"com.apple.news";
      v42 = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Checking status for %{public}@", buf, 0x16u);
    }

    v43 = +[SubscriptionEntitlementsCoordinator sharedInstance];
    v44 = sub_1003FA4F0(XPCRequestToken, 1);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1003CF640;
    v79 = &unk_100527748;
    v80 = v38;
    v81 = v39;
    LOBYTE(v82) = v65;
    v45 = v38;
    sub_1002F4DEC(v43, 0, v44, 0, 0, 1, buf);
  }

  if (v68)
  {
    v46 = v66;
    v47 = objc_opt_self();
    v48 = sub_1003CEE00(v47, @"com.apple.tv");
    if (v48)
    {
      v49 = [v46 itemIDForSystemAppWithBundleID:@"com.apple.tv"];
      v50 = [v49 longLongValue];

      if (v50)
      {
        v69 = sub_100005CD4();
        v72 = [NSNumber numberWithLongLong:v50];
        v85 = v72;
        v51 = [NSArray arrayWithObjects:&v85 count:1];
        v52 = sub_1003FA4F0(XPCRequestToken, 1);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1003CFCD8;
        v79 = &unk_100527790;
        v82 = v47;
        v80 = v48;
        v83 = v50;
        v84 = v65;
        v81 = v46;
        sub_10034A3D8(v69, v51, v52, buf);
      }
    }

    v37 = v67;
  }

  if ([v25 count])
  {
    v53 = *(v37 + 40);
    v54 = v25;
    v55 = v66;
    v56 = v53;
    v57 = objc_opt_self();
    v58 = sub_10021CA38();
    v59 = objc_alloc_init(ASDPurchaseHistoryQuery);
    [v59 setBundleIDs:v54];
    v60 = [v56 ams_DSID];

    [v59 setAccountID:{objc_msgSend(v60, "longLongValue")}];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1003CFFA0;
    v79 = &unk_1005277E0;
    v81 = v55;
    v82 = v57;
    LOBYTE(v83) = v65;
    v80 = v54;
    v61 = v55;
    v25 = v54;
    sub_10021D168(v58, v59, buf);

    v7 = v66;
  }

  v8 = v64;
LABEL_47:

LABEL_48:
}

NSObject *sub_1003CEE00(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v13 = 0;
  v3 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v2 error:&v13];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localizedName];
    if ([v5 length])
    {
      v5 = v5;
      v6 = v5;
      goto LABEL_10;
    }

    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v2;
      v12 = v11;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%{public}@]: Proxy missing name for %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      *buf = 138543874;
      v15 = v7;
      v16 = 2114;
      v17 = v2;
      v18 = 2114;
      v19 = v13;
      v8 = v7;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@]: No app record for %{public}@: %{public}@", buf, 0x20u);
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

void sub_1003CEFE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    if ([v8 isEqualToString:ICErrorDomain])
    {
      v9 = [v7 code];

      if (v9 == -7008)
      {
        v10 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v33 = 138543618;
          v34 = objc_opt_class();
          v35 = 2114;
          v36 = @"com.apple.Music";
          v11 = v34;
          v12 = "[%{public}@]: No cached subscription info for %{public}@";
          v13 = v10;
          v14 = 22;
LABEL_22:
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v12, &v33, v14);
          goto LABEL_23;
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v33 = 138543874;
      v34 = objc_opt_class();
      v35 = 2114;
      v36 = @"com.apple.Music";
      v37 = 2114;
      v38 = v7;
      v11 = v34;
      v12 = "[%{public}@]: Error getting subscription info for %{public}@, %{public}@";
      v13 = v10;
      v14 = 32;
      goto LABEL_22;
    }

LABEL_15:

    goto LABEL_16;
  }

  v15 = [v5 subscriptionStatus];
  v16 = [v15 statusType];

  v10 = ASDLogHandleForCategory();
  v17 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v16 != 1)
  {
    if (v17)
    {
      v29 = objc_opt_class();
      v30 = v29;
      v31 = [v5 subscriptionStatus];
      v33 = 138543874;
      v34 = v29;
      v35 = 2114;
      v36 = @"com.apple.Music";
      v37 = 2048;
      v38 = [v31 statusType];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Subscription not enabled for %{public}@, status %li", &v33, 0x20u);
    }

    goto LABEL_15;
  }

  if (v17)
  {
    v33 = 138543618;
    v34 = objc_opt_class();
    v35 = 2114;
    v36 = @"com.apple.Music";
    v18 = v34;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Subscription enabled for %{public}@", &v33, 0x16u);
  }

  v19 = [v5 subscriptionStatus];
  v20 = [v19 expirationDate];
  v21 = +[NSDate date];
  v22 = [v20 compare:v21];

  if (v22 != 1)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v32 = objc_opt_class();
      v33 = 138543618;
      v34 = v32;
      v35 = 2114;
      v36 = @"com.apple.Music";
      v11 = v32;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Filtering subscription for %{public}@", &v33, 0x16u);
LABEL_23:

      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v23 = sub_1003CEE00(*(a1 + 40), @"com.apple.Music");
  if (v23)
  {
    v10 = v23;
    v24 = [*(a1 + 32) itemIDForSystemAppWithBundleID:@"com.apple.Music"];
    v25 = [v24 longLongValue];

    if (v25)
    {
      v26 = *(a1 + 40);
      v27 = [v5 subscriptionStatus];
      v28 = [v27 expirationDate];
      sub_1003CF430(v26, v10, v25, v28, *(a1 + 48), *(a1 + 32));
    }

    goto LABEL_15;
  }

LABEL_16:
}

void sub_1003CF430(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v9 = a2;
  v10 = a6;
  v11 = a4;
  v12 = objc_opt_self();
  v13 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = objc_opt_class();
    v24 = 2048;
    v25 = a3;
    v14 = v23;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Prompting single for %lld", buf, 0x16u);
  }

  v15 = ASDLocalizedString();
  v16 = objc_alloc_init(NSDateFormatter);
  [v16 setDateStyle:2];
  v17 = [v16 stringFromDate:v11];

  v18 = ASDLocalizedString();
  v19 = [NSString stringWithFormat:v18, v9, v17];

  v20 = ASDLocalizedString();
  v21 = ASDLocalizedString();
  sub_1003D07F0(v12, v15, v19, v20, v21, a3, v10);
}

void sub_1003CF640(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a2;
  v7 = a5;
  if (v7)
  {
    v8 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 138543874;
    v47 = objc_opt_class();
    v48 = 2114;
    v49 = @"com.apple.news";
    v50 = 2114;
    v51 = v7;
    v32 = v47;
    v33 = "[%{public}@]: Error getting subscription info for %{public}@, %{public}@";
    v34 = v8;
    v35 = 32;
LABEL_31:
    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);

    goto LABEL_3;
  }

  if (![v6 count])
  {
    v8 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    *buf = 138543618;
    v47 = objc_opt_class();
    v48 = 2114;
    v49 = @"com.apple.news";
    v32 = v47;
    v33 = "[%{public}@]: No entitlements for %{public}@";
    v34 = v8;
    v35 = 22;
    goto LABEL_31;
  }

  if (![v6 count])
  {
    goto LABEL_4;
  }

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v47 = objc_opt_class();
    v48 = 2114;
    v49 = @"com.apple.news";
    v10 = v47;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Found subscription info for %{public}@", buf, 0x16u);
  }

  v11 = sub_1003CEE00(*(a1 + 40), @"com.apple.news");
  if (!v11)
  {
    goto LABEL_4;
  }

  v8 = v11;
  v12 = [*(a1 + 32) itemIDForSystemAppWithBundleID:@"com.apple.news"];
  v13 = [v12 longLongValue];

  if (!v13)
  {
    goto LABEL_3;
  }

  v36 = v13;
  v37 = v8;
  v39 = objc_opt_new();
  v14 = +[NSDate date];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v38 = v6;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v16)
  {
    goto LABEL_26;
  }

  v17 = v16;
  v18 = *v42;
  do
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v42 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v41 + 1) + 8 * i);
      v21 = [v20 expiryDate];
      if (v21)
      {
        v22 = v21;
        v23 = [v20 expiryDate];
        if ([v23 compare:v14] == 1)
        {
          v24 = [v20 autoRenewEnabled];

          if (v24)
          {
            [v39 addObject:v20];
            continue;
          }
        }

        else
        {
        }
      }

      v25 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        *buf = 138543618;
        v47 = v26;
        v48 = 2114;
        v49 = @"com.apple.news";
        v27 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Filtering an entitlement for %{public}@", buf, 0x16u);
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v41 objects:v45 count:16];
  }

  while (v17);
LABEL_26:

  if ([v39 count] == 1)
  {
    v28 = [v39 objectAtIndexedSubscript:0];
    v29 = *(a1 + 40);
    v30 = [v28 expiryDate];
    v31 = v29;
    v8 = v37;
    sub_1003CF430(v31, v37, v36, v30, *(a1 + 48), *(a1 + 32));

    v7 = 0;
    v6 = v38;
  }

  else
  {
    v7 = 0;
    v6 = v38;
    v8 = v37;
    if ([v39 count] >= 2)
    {
      sub_1003CFB14(*(a1 + 40), v37, v36, *(a1 + 48), *(a1 + 32));
    }
  }

LABEL_3:
LABEL_4:
}

void sub_1003CFB14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = objc_opt_self();
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = objc_opt_class();
    v19 = 2048;
    v20 = a3;
    v11 = v18;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Prompting multiple for %lld", buf, 0x16u);
  }

  v12 = ASDLocalizedString();
  v13 = ASDLocalizedString();
  v14 = [NSString stringWithFormat:v13, v7];

  v15 = ASDLocalizedString();
  v16 = ASDLocalizedString();
  sub_1003D07F0(v9, v12, v14, v15, v16, a3, v8);
}

void sub_1003CFCD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    *buf = 138543874;
    v15 = v5;
    v16 = 2048;
    v17 = [v3 count];
    v18 = 2114;
    v19 = @"com.apple.tv";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Found %li IAPs for bundle ID: %{public}@", buf, 0x20u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1003CFEC4;
  v13[3] = &unk_100527768;
  v13[4] = *(a1 + 48);
  v7 = sub_10036FF4C(v3, v13);
  if ([v7 count] == 1)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = [v8 expirationDate];
    sub_1003CF430(v10, v9, v11, v12, *(a1 + 64), *(a1 + 40));
  }

  else if ([v7 count] >= 2)
  {
    sub_1003CFB14(*(a1 + 48), *(a1 + 32), *(a1 + 56), *(a1 + 64), *(a1 + 40));
  }
}

id sub_1003CFECC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if ([v2 type] == 3)
  {
    v3 = [v2 expirationDate];
    if (v3)
    {
      v4 = [v2 expirationDate];
      v5 = +[NSDate date];
      if ([v4 compare:v5] == 1)
      {
        v6 = [v2 autoRenewStatus];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_1003CFFA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [v3 count];
    v8 = *(a1 + 32);
    *buf = 138543874;
    v33 = v5;
    v34 = 2048;
    v35 = v7;
    v36 = 2114;
    v37 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Found %li apps for bundle IDs %{public}@", buf, 0x20u);
  }

  if (v3 && [v3 count])
  {
    v9 = objc_opt_new();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = v3;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v15 storeItemID]);
          [v9 setObject:v15 forKeyedSubscript:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    v17 = sub_100005CD4();
    v18 = [v9 allKeys];
    v19 = sub_1003FA4F0(XPCRequestToken, 1);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003D027C;
    v21[3] = &unk_1005277B8;
    v25 = *(a1 + 48);
    v22 = *(a1 + 32);
    v23 = v9;
    v26 = *(a1 + 56);
    v24 = *(a1 + 40);
    v20 = v9;
    sub_10034A3D8(v17, v18, v19, v21);
  }
}

void sub_1003D027C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [v3 count];
    v8 = *(a1 + 32);
    *buf = 138543874;
    v63 = v5;
    v64 = 2048;
    v65 = v7;
    v66 = 2114;
    *v67 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Found %li IAPs for bundle IDs %{public}@", buf, 0x20u);
  }

  v9 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v10 = v3;
  v47 = v10;
  v51 = [v10 countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v51)
  {
    v12 = *v58;
    *&v11 = 138544386;
    v46 = v11;
    do
    {
      for (i = 0; i != v51; i = i + 1)
      {
        if (*v58 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v57 + 1) + 8 * i);
        v15 = sub_1003CFECC(*(a1 + 56), v14);
        v16 = ASDLogHandleForCategory();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          if (v17)
          {
            v18 = objc_opt_class();
            v19 = v18;
            v20 = [v14 adamId];
            *buf = 138543618;
            v63 = v18;
            v64 = 2114;
            v65 = v20;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Promptable IAP: %{public}@", buf, 0x16u);
          }

          v21 = [v14 appAdamId];
          v22 = [v9 objectForKeyedSubscript:v21];

          if (v22)
          {
            v23 = [v14 appAdamId];
            v16 = [v9 objectForKeyedSubscript:v23];

            [v16 addObject:v14];
          }

          else
          {
            v16 = [NSMutableArray arrayWithObject:v14];
            v31 = [v14 appAdamId];
            [v9 setObject:v16 forKeyedSubscript:v31];
          }
        }

        else if (v17)
        {
          v24 = objc_opt_class();
          v49 = v24;
          v25 = [v14 adamId];
          v26 = [v14 type];
          [v14 expirationDate];
          v27 = v9;
          v29 = v28 = v12;
          v30 = [v14 autoRenewStatus];
          *buf = v46;
          v63 = v24;
          v64 = 2114;
          v65 = v25;
          v66 = 1024;
          *v67 = v26;
          v10 = v47;
          *&v67[4] = 2114;
          *&v67[6] = v29;
          v68 = 1024;
          v69 = v30;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Not prompting for IAP: %{public}@, type: %hhu, expiration date: %{public}@, auto-renew: %i", buf, 0x2Cu);

          v12 = v28;
          v9 = v27;
        }
      }

      v51 = [v10 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v51);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = v9;
  obj = [v9 allKeys];
  v32 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v54;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v54 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v53 + 1) + 8 * j);
        v37 = [*(a1 + 40) objectForKeyedSubscript:{v36, v46}];
        v38 = [v52 objectForKeyedSubscript:v36];
        if ([v38 count] == 1)
        {
          v39 = [v38 objectAtIndexedSubscript:0];
          v50 = *(a1 + 56);
          v40 = [v37 longTitle];
          v41 = [v37 storeItemID];
          [v39 expirationDate];
          v42 = v33;
          v44 = v43 = v34;
          sub_1003CF430(v50, v40, v41, v44, *(a1 + 64), *(a1 + 48));

          v34 = v43;
          v33 = v42;
        }

        else
        {
          v45 = *(a1 + 56);
          v39 = [v37 longTitle];
          sub_1003CFB14(v45, v39, [v37 storeItemID], *(a1 + 64), *(a1 + 48));
        }
      }

      v33 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v33);
  }
}

void sub_1003D07F0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = objc_opt_self();
  v18 = [v16 URLForKey:@"manageSubsSKV2Url"];

  if (v18)
  {
    v19 = [NSURLComponents componentsWithURL:v18 resolvingAgainstBaseURL:0];
    v36 = v15;
    v20 = v14;
    v21 = v13;
    v22 = v12;
    v23 = [NSString stringWithFormat:@"%lld", a6];
    v24 = [NSURLQueryItem queryItemWithName:@"app" value:v23];
    v42[0] = v24;
    [NSURLQueryItem queryItemWithName:@"ctx" value:@"appdelete"];
    v25 = v35 = v17;
    v42[1] = v25;
    v26 = [NSArray arrayWithObjects:v42 count:2];
    [v19 setQueryItems:v26];

    v27 = [v19 URL];
    v28 = [[AMSDialogRequest alloc] initWithTitle:v12 message:v21];
    v29 = [AMSDialogAction actionWithTitle:v20 style:0];
    v30 = [AMSDialogAction actionWithTitle:v36 style:2];
    v41[0] = v29;
    v41[1] = v30;
    v31 = [NSArray arrayWithObjects:v41 count:2];
    [v28 setButtonActions:v31];

    [v28 setDefaultAction:v30];
    sub_100406DAC(v28, @"manageSubscriptionsOnDelete");
    sub_10022DA8C(v30, @"keep");
    sub_10022DA8C(v29, @"manage");
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1003D0B94;
    v37[3] = &unk_100527828;
    v38 = v29;
    v39 = v27;
    v40 = v35;
    v32 = v27;
    v33 = v29;
    v12 = v22;
    v13 = v21;
    v14 = v20;
    v15 = v36;
    sub_1003124D4(InteractiveRequestPresenter, v28, v37);
  }

  else
  {
    v19 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v44 = objc_opt_class();
      v34 = v44;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%{public}@]: Error retrieving URL for manage subs on app delete", buf, 0xCu);
    }
  }
}

void sub_1003D0B94(uint64_t a1, void *a2)
{
  v3 = [a2 selectedActionIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = objc_alloc_init(AMSEngagementRequest);
    [v6 setURL:*(a1 + 40)];
    v7 = +[ActiveAccountObserver activeAccount];
    [v6 setAccount:v7];

    v8 = [[AMSSystemEngagementTask alloc] initWithRequest:v6];
    v9 = [v8 present];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1003D0CC0;
    v10[3] = &unk_100527800;
    v10[4] = *(a1 + 48);
    [v9 addFinishBlock:v10];
  }
}

void sub_1003D0CC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    if ([v8 isEqualToString:AMSErrorDomain])
    {
      v9 = [v7 code];

      if (v9 == 6)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 138543618;
      v13 = v11;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to present manage subs on app delete with error: %{public}@", &v12, 0x16u);
    }
  }

LABEL_9:
}

id *sub_1003D0F1C(id *result)
{
  if (result)
  {
    v1 = [result[15] iTunesMetadata];
    v2 = [v1 storeItemIdentifier];

    return v2;
  }

  return result;
}

id *sub_1003D0F60(id *a1)
{
  if (a1)
  {
    a1 = [a1[15] bundleIdentifier];
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1003D0F94(uint64_t result)
{
  if (result)
  {
    return [*(result + 120) isPlaceholder] ^ 1;
  }

  return result;
}

id *sub_1003D1118(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = ApplicationProxy;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      if (v4)
      {
        objc_storeStrong(v5 + 15, a2);
      }

      else
      {

        a1 = 0;
      }
    }
  }

  return a1;
}

uint64_t sub_1003D11A0(id *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_27;
  }

  v4 = [a1[15] iTunesMetadata];
  v5 = [v4 storeItemIdentifier];

  if (v5)
  {
    v6 = [a1[15] applicationHasMIDBasedSINF];
    v7 = a1[15];
    if (v6)
    {
      if ([v7 isPlaceholder])
      {
        v8 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [a1[15] bundleIdentifier];
          v18 = 138412546;
          v19 = v3;
          v20 = 2114;
          v21 = v9;
          v10 = "[%@] Skipping per device app with bundle ID: %{public}@";
LABEL_25:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v18, 0x16u);

          goto LABEL_26;
        }

        goto LABEL_26;
      }
    }

    else if (([v7 isBeta] & 1) != 0 || objc_msgSend(a1[15], "isProfileValidated"))
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [a1[15] bundleIdentifier];
        v18 = 138412546;
        v19 = v3;
        v20 = 2114;
        v21 = v9;
        v10 = "[%@] Skipping TestFlight and profile validated apps: %{public}@";
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    if ([a1[15] isPlaceholder])
    {
      if ([a1[15] placeholderFailureReason])
      {
        v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [a1[15] placeholderFailureReason]);
        v8 = v11;
        if (v11 && [v11 integerValue]== 4)
        {

          goto LABEL_18;
        }
      }

      else
      {
        v8 = 0;
      }

      v16 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [a1[15] bundleIdentifier];
        v18 = 138412546;
        v19 = v3;
        v20 = 2114;
        v21 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Skipping placeholders that are not for 32-bit only apps: %{public}@", &v18, 0x16u);
      }

      goto LABEL_26;
    }

LABEL_18:
    if (([a1[15] isPlaceholder] & 1) != 0 || !objc_msgSend(a1[15], "applicationMissingRequiredSINF"))
    {
      v12 = [a1[15] iTunesMetadata];
      v13 = [v12 managementDeclarationIdentifier];

      if (!v13)
      {
        v14 = 1;
        goto LABEL_28;
      }

      v8 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v9 = [a1[15] bundleIdentifier];
      v18 = 138412546;
      v19 = v3;
      v20 = 2114;
      v21 = v9;
      v10 = "[%@] Skipping DDM managed app: %{public}@";
      goto LABEL_25;
    }

    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_1003D0F60(a1);
      v18 = 138412546;
      v19 = v3;
      v20 = 2114;
      v21 = v9;
      v10 = "[%@] Skipping unclaimed application: %{public}@";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [a1[15] bundleIdentifier];
    v18 = 138412546;
    v19 = v3;
    v20 = 2114;
    v21 = v9;
    v10 = "[%@] Skipping app with no ID: %{public}@";
    goto LABEL_25;
  }

LABEL_26:

LABEL_27:
  v14 = 0;
LABEL_28:

  return v14;
}

id *sub_1003D1560(id *result)
{
  if (result)
  {
    return [result[15] applicationHasMIDBasedSINF];
  }

  return result;
}

id *sub_1003D1570(id *result)
{
  if (result)
  {
    return [result[15] isBeta];
  }

  return result;
}

id *sub_1003D2234(id *a1)
{
  if (a1)
  {
    v2 = a1;
    if (!a1[6])
    {
      v3 = [a1[15] applicationDownloaderDSID];
      if (v3)
      {
        v4 = [NSNumber numberWithUnsignedLongLong:v3];
        v5 = v2[6];
        v2[6] = v4;
      }
    }

    a1 = v2[6];
    v1 = vars8;
  }

  return a1;
}

void **sub_1003D22A4(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    if (!v2)
    {
      v3 = sub_10040CF04(result[15]);
      v4 = v3;
      if (v3)
      {
        v5 = [v3 DSPersonID];
        if (v5)
        {
          v6 = +[ACAccountStore ams_sharedAccountStore];
          v7 = v6;
          if (v6)
          {
            v8 = [v6 ams_iTunesAccountWithDSID:v5];
            v9 = v1[1];
            v1[1] = v8;
          }
        }
      }

      v2 = v1[1];
    }

    v10 = v2;
    v11 = [v10 ams_isManagedAppleID];

    return v11;
  }

  return result;
}

id *sub_1003D2360(id *a1)
{
  if (a1)
  {
    v2 = a1;
    if (!a1[10])
    {
      v3 = [a1[15] applicationDSID];
      if (v3)
      {
        v4 = [NSNumber numberWithUnsignedLongLong:v3];
        v5 = v2[10];
        v2[10] = v4;
      }
    }

    a1 = v2[10];
    v1 = vars8;
  }

  return a1;
}

id *sub_1003D23D0(id *a1)
{
  if (a1)
  {
    a1 = sub_10040CB88(a1[15]);
    v1 = vars8;
  }

  return a1;
}

void *sub_1003D2404(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[2];
    if (!v2)
    {
      v3 = [v1[15] appClipMetadata];
      v4 = [NSNumber numberWithInt:v3 != 0];
      v5 = v1[2];
      v1[2] = v4;

      v2 = v1[2];
    }

    return [v2 BOOLValue];
  }

  return result;
}

id sub_1003D248C(uint64_t a1)
{
  if (a1)
  {
    v1 = [*(a1 + 120) URL];
    v2 = [v1 path];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id *sub_1003D24E8(id *a1)
{
  if (a1)
  {
    a1 = [a1[15] URL];
    v1 = vars8;
  }

  return a1;
}

id *sub_1003D251C(id *a1)
{
  if (a1)
  {
    a1 = [a1[15] exactBundleVersion];
    v1 = vars8;
  }

  return a1;
}

id *sub_1003D2550(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1[15] executableURL];

    if (v2)
    {
      v3 = [v1[15] executableURL];
      v4 = [v3 URLByResolvingSymlinksInPath];
      v1 = [v4 path];
    }

    else
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 138543362;
        v8 = v1;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Can't generate canonical executable path for app with no executable URL: %{public}@", &v7, 0xCu);
      }

      v1 = 0;
    }
  }

  return v1;
}

id *sub_1003D266C(id *a1)
{
  if (a1)
  {
    a1 = [a1[15] localizedName];
    v1 = vars8;
  }

  return a1;
}

id *sub_1003D26A0(id *a1)
{
  if (a1)
  {
    a1 = [a1[15] shortVersionString];
    v1 = vars8;
  }

  return a1;
}

id sub_1003D26D4(uint64_t a1)
{
  if (a1)
  {
    v1 = [*(a1 + 120) iTunesMetadata];
    v2 = [v1 artistName];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1003D2730(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 88);
    if ((v2 & 2) != 0)
    {
      v7 = v2 & 1;
    }

    else
    {
      v3 = [*(a1 + 120) bundleIdentifier];
      v4 = [LSBundleRecord bundleRecordWithBundleIdentifier:v3 allowPlaceholder:1 error:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 containingBundleRecord];

        v4 = v5;
      }

      if (v4)
      {
        v6 = [v4 isProfileValidated];
        v7 = v6 ^ 1;
        if (v6)
        {
          v8 = 2;
        }

        else
        {
          v8 = 3;
        }

        v9 = v8 | *(a1 + 88);
      }

      else
      {
        v7 = 0;
        v9 = *(a1 + 88) | 2;
      }

      *(a1 + 88) = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id *sub_1003D2820(id *result)
{
  if (result)
  {
    return [result[15] codeSignatureVersion];
  }

  return result;
}

id sub_1003D2830(void *a1, const char *a2)
{
  if (a1)
  {
    v2 = sub_1003D2888(a1, a2);
    v3 = [v2 md5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *sub_1003D2888(void *a1, const char *a2)
{
  if (a1)
  {
    v3 = a1;
    a1 = a1[14];
    if (a1)
    {
      goto LABEL_7;
    }

    v4 = sub_10040CF04(v3[15]);
    if (v4)
    {
      sub_10036BC58(Optional, v4);
    }

    else
    {
      sub_10036BBC4();
    }
    v5 = ;
    v6 = v3[14];
    v3[14] = v5;

    a1 = v3[14];
    if (a1)
    {
LABEL_7:
      if (a1[1])
      {
        a1 = objc_getProperty(a1, a2, 16, 1);
      }

      else
      {
        a1 = 0;
      }
    }

    v2 = vars8;
  }

  return a1;
}

id sub_1003D2934(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 120) URL];
    v3 = [v2 path];

    v4 = [*(a1 + 120) executableURL];
    v5 = [v4 lastPathComponent];
    v6 = [v5 stringByAppendingPathExtension:@"sinf"];

    if ([v3 length] && objc_msgSend(v6, "length"))
    {
      v7 = [[NSArray alloc] initWithObjects:{v3, @"SC_Info", v6, 0}];
      v8 = [NSString pathWithComponents:v7];
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = [[NSData alloc] initWithContentsOfFile:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_1003D2A70(uint64_t a1)
{
  if (a1)
  {
    v1 = [*(a1 + 120) bundleIdentifier];
    if (v1)
    {
      v2 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v1];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1003D2AE4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 120) typeForInstallMachinery];
  if ([v1 isEqualToString:LSUserApplicationType])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:LSSystemApplicationType])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:LSInternalApplicationType])
  {
    v2 = 2;
  }

  else
  {
    v2 = 99999;
  }

  return v2;
}

id *sub_1003D2B88(id *result)
{
  if (result)
  {
    return sub_10040C624(result[15]);
  }

  return result;
}

id *sub_1003D2B98(id *a1)
{
  if (a1)
  {
    a1 = [a1[15] appStoreToolsBuildVersion];
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1003D2BCC(uint64_t result)
{
  if (result)
  {
    return sub_10040C5B4(*(result + 120));
  }

  return result;
}

uint64_t sub_1003D2BDC(id *a1)
{
  v1 = a1;
  if (a1)
  {
    if ([a1[15] isArcadeApp])
    {
      return 1;
    }

    else if (os_variant_has_internal_content())
    {
      v2 = [v1[15] bundleIdentifier];
      if (v2)
      {
        v3 = sub_1003D4BD8();
        v4 = [v1[15] bundleIdentifier];
        v1 = [v3 containsObject:v4];
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

id *sub_1003D2C94(id *result)
{
  if (result)
  {
    v1 = [result[15] iTunesMetadata];
    v2 = [v1 betaVersionIdentifier];

    return v2;
  }

  return result;
}

id *sub_1003D2CD8(id *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    if (!v3)
    {
      v4 = [a1[15] deviceIdentifierForVendor];
      v5 = v4;
      if (v4)
      {
        v6 = [v4 UUIDString];
        v7 = v2[5];
        v2[5] = v6;
      }

      v3 = v2[5];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void *sub_1003D2D4C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[7];
    if (!v3)
    {
      v4 = [v2[15] applicationExtensionRecords];
      v5 = [v4 objectEnumerator];
      v6 = sub_1004024C4(v5, &stru_100527868);

      v7 = sub_10036BC58(Optional, v6);
      v8 = v2[7];
      v2[7] = v7;

      v3 = v2[7];
    }

    a1 = sub_10036BCC0(v3, &__NSArray0__struct);
    v1 = vars8;
  }

  return a1;
}

void **sub_1003D2E08(void **result)
{
  if (result)
  {
    v1 = sub_10040CF04(result[15]);
    v2 = [v1 isB2BCustomApp];

    return v2;
  }

  return result;
}

id sub_1003D2E4C(uint64_t a1)
{
  if (a1)
  {
    v1 = [*(a1 + 120) iTunesMetadata];
    v2 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v1 ratingRank]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id *sub_1003D2EBC(id *a1)
{
  if (a1)
  {
    a1 = sub_1003BB960(a1[15]);
    v1 = vars8;
  }

  return a1;
}

char *sub_1003D2EF0(char *a1)
{
  if (a1)
  {
    v3 = (a1 + 96);
    v2 = *(a1 + 12);
    if (!v2)
    {
      v4 = [*(a1 + 15) iTunesMetadata];
      v5 = [v4 storeCohort];

      if (v5 && [v5 length])
      {
        objc_storeStrong(v3, v5);
      }

      v2 = *v3;
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

id *sub_1003D2F7C(id *result)
{
  if (result)
  {
    v1 = [result[15] iTunesMetadata];
    v2 = [v1 versionIdentifier];

    return v2;
  }

  return result;
}

id *sub_1003D2FC0(id *a1)
{
  if (a1)
  {
    v2 = a1;
    if (!a1[13])
    {
      v3 = [a1[15] iTunesMetadata];
      v4 = [v3 storeFront];

      if (v4)
      {
        v5 = [v2[15] iTunesMetadata];
        v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 storeFront]);
        v7 = v2[13];
        v2[13] = v6;
      }
    }

    a1 = v2[13];
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1003D3068(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = [*(result + 120) iTunesMetadata];
    v3 = [v2 storeItemIdentifier];

    if (v3)
    {
      return sub_10040C5B4(*(v1 + 120)) ^ 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1003D30CC(uint64_t a1)
{
  if (a1)
  {
    v1 = [*(a1 + 120) iTunesMetadata];
    v2 = [v1 variantID];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *sub_1003D3128(void *result, const char *a2)
{
  if (result)
  {
    v2 = sub_1003D2888(result, a2);
    v3 = [v2 sideLoadedDeviceBasedVPP];

    return v3;
  }

  return result;
}

void *sub_1003D3168(void *result, const char *a2)
{
  if (result)
  {
    v2 = sub_1003D2888(result, a2);
    v3 = [v2 isFactoryInstall];

    return v3;
  }

  return result;
}

void sub_1003D31A8(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  if (a2 > 2)
  {
    v6 = 0;
  }

  else
  {
    v5 = *(&off_100527910 + a2);
    v6 = [LSApplicationRecord enumeratorWithOptions:qword_10044BD48[a2]];
    [v6 setFilter:v5];
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1003D33F4;
  v8[3] = &unk_1005278F0;
  v9 = v4;
  v7 = v4;
  sub_1004021A8(v6, v8);
}

BOOL sub_1003D329C(id a1, LSApplicationRecord *a2)
{
  v2 = a2;
  v3 = [(LSApplicationRecord *)v2 bundleIdentifier];
  if (v3)
  {
    v4 = [(LSApplicationRecord *)v2 bundleIdentifier];
    v5 = [v4 length];

    if (v5 && (-[LSApplicationRecord iTunesMetadata](v2, "iTunesMetadata"), v6 = objc_claimAutoreleasedReturnValue(), [v6 distributorInfo], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "distributorIsThirdParty"), v7, v6, (v8 & 1) == 0))
    {
      v9 = [(LSApplicationRecord *)v2 typeForInstallMachinery];
      LOBYTE(v3) = [v9 isEqualToString:LSUserApplicationType];
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

BOOL sub_1003D3364(id a1, LSApplicationRecord *a2)
{
  v2 = [(LSApplicationRecord *)a2 typeForInstallMachinery];
  v3 = [v2 isEqualToString:LSSystemApplicationType];

  return v3;
}

BOOL sub_1003D33AC(id a1, LSApplicationRecord *a2)
{
  v2 = [(LSApplicationRecord *)a2 typeForInstallMachinery];
  v3 = [v2 isEqualToString:LSInternalApplicationType];

  return v3;
}

void sub_1003D33F4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1003D1118([ApplicationProxy alloc], v5);
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v3);
}

id sub_1003D3584(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 120, 1);
  }

  return result;
}

id sub_1003D36EC()
{
  objc_opt_self();
  if (qword_1005AAE80 != -1)
  {
    dispatch_once(&qword_1005AAE80, &stru_100527928);
  }

  v0 = qword_1005AAE78;

  return v0;
}

void sub_1003D3744(id a1)
{
  v1 = objc_alloc_init(RepairService);
  v2 = qword_1005AAE78;
  qword_1005AAE78 = v1;
}

void sub_1003D388C(void **a1)
{
  v2 = sub_100278FAC([RepairApplicationTask alloc], a1[4], a1[5]);
  newValue[0] = _NSConcreteStackBlock;
  newValue[1] = 3221225472;
  newValue[2] = sub_1003D3968;
  newValue[3] = &unk_100526600;
  v7 = a1[6];
  if (v2)
  {
    objc_setProperty_atomic_copy(v2, v3, newValue, 66);
  }

  v4 = sub_100284B90();
  v5 = v4;
  if (v4)
  {
    [*(v4 + 8) addOperation:v2];
  }
}

void sub_1003D3968(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = ASDErrorWithSafeUserInfo();
  (*(v4 + 16))(v4, a2, v5, v6);
}

void sub_1003D3ACC(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) processInfo];
    v5 = [v4 bundleIdentifier];
    *buf = 138412546;
    v17 = v2;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Processing keybag refresh for client: %{public}@", buf, 0x16u);
  }

  v6 = objc_alloc_init(RefetchKeybag);
  v8 = v6;
  if (v6)
  {
    objc_setProperty_atomic_copy(v6, v7, v2, 32);
    v8->_userInitiated = 1;
  }

  v9 = sub_10020A3C4(v8);
  v15 = 0;
  v10 = [v9 resultWithError:&v15];
  v11 = v15;

  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v2;
    v18 = 1024;
    LODWORD(v19) = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Keybag refresh complete with result: %d", buf, 0x12u);
  }

  v13 = *(a1 + 40);
  v14 = ASDErrorWithSafeUserInfo();
  (*(v13 + 16))(v13, v10, v14);
}

id sub_1003D3D04(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10023E0F8(a1, @"last_duet_sync");
    v2 = v1;
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = +[NSDate distantPast];
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1003D3DBC(uint64_t a1, const __CFString *a2)
{
  objc_opt_self();
  v3 = CFPreferencesCopyAppValue(a2, @"com.apple.appstored");
  objc_opt_class();
  v4 = sub_1001C09E4(v3);

  return v4;
}

id sub_1003D3E2C(uint64_t a1, void *a2, id a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = CFPreferencesCopyAppValue(v4, @"com.apple.appstored");

  if (objc_opt_respondsToSelector())
  {
    a3 = [v5 BOOLValue];
  }

  return a3;
}

id sub_1003D3EA8(uint64_t a1, const __CFString *a2)
{
  objc_opt_self();
  v3 = CFPreferencesCopyAppValue(a2, @"com.apple.appstored");
  objc_opt_class();
  v4 = sub_1001C09E4(v3);

  return v4;
}

id sub_1003D3F18(uint64_t a1, const __CFString *a2)
{
  objc_opt_self();
  v3 = CFPreferencesCopyAppValue(a2, @"com.apple.appstored");
  objc_opt_class();
  v4 = sub_1001C09E4(v3);

  return v4;
}

id sub_1003D3F88(uint64_t a1, const __CFString *a2)
{
  v3 = objc_opt_self();
  v4 = sub_1003D3FC4(v3, a2);

  return v4;
}

uint64_t sub_1003D3FC4(uint64_t a1, const __CFString *a2)
{
  objc_opt_self();
  v3 = CFPreferencesCopyAppValue(a2, @"com.apple.appstored");
  objc_opt_class();
  v4 = sub_1001C09E4(v3);

  return v4;
}

uint64_t sub_1003D4024(uint64_t a1, void *a2, const __CFString *a3)
{
  v4 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(a3, v4, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

void sub_1003D4090(uint64_t a1, uint64_t a2, void *a3)
{
  key = a3;
  objc_opt_self();
  objc_opt_self();
  CFPreferencesSetAppValue(key, [NSNumber numberWithBool:a2], @"com.apple.appstored");
}

id sub_1003D4108(uint64_t a1, const __CFString *a2)
{
  objc_opt_self();
  v3 = CFPreferencesCopyAppValue(a2, @"com.apple.appstored");
  objc_opt_class();
  v4 = sub_1001C09E4(v3);

  return v4;
}

id sub_1003D4178()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"AdPlatformsStatusConditionSetDate", @"com.apple.appstored");

  return v0;
}

uint64_t sub_1003D41B4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"AdPlatformsStatusConditionSetDate", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

id sub_1003D4218(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [NSString stringWithFormat:@"%@%@", @"TargetDate", v2];

  v4 = CFPreferencesCopyAppValue(v3, @"com.apple.appstored");

  return v4;
}

id sub_1003D42A8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [NSString stringWithFormat:@"%@%@", @"PostIntervalOverrideSeconds", v2];

  v4 = CFPreferencesCopyAppValue(v3, @"com.apple.appstored");

  return v4;
}

void sub_1003D4338(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  key = [NSString stringWithFormat:@"%@%@", @"TargetDate", v4];

  CFPreferencesSetAppValue(key, v5, @"com.apple.appstored");
  CFPreferencesAppSynchronize(@"com.apple.appstored");
}

id sub_1003D43E8()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"ClipDataReclaimHistory", @"com.apple.appstored");
  if (!v0)
  {
    v0 = &__NSDictionary0__struct;
  }

  return v0;
}

uint64_t sub_1003D4434(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"ClipDataReclaimHistory", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

BOOL sub_1003D4498()
{
  objc_opt_self();
  objc_opt_self();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ClipEnableLZMAAutodetection", @"com.apple.appstored", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat == 1 && AppBooleanValue == 1;
}

id sub_1003D44EC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = sub_1003D458C(v3, v2);

  v5 = CFPreferencesCopyAppValue(v4, @"com.apple.appstored");
  if (v5)
  {
    v6 = [[NSData alloc] initWithBase64EncodedString:v5 options:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1003D458C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[AMSDevice serialNumber];
  v4 = v3;
  if (!v3)
  {
    if (!sub_1003E2538())
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Database defaults key generation failed unexpectedly", buf, 2u);
      }
    }

    v4 = @"xyzzy";
  }

  v6 = v4;

  v7 = [v2 stringByAppendingString:v6];

  v8 = [[NSString alloc] initWithFormat:@"%lu", objc_msgSend(v7, "hash")];
  return v8;
}

void sub_1003D46A8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  key = sub_1003D458C(v6, v4);

  v7 = [v5 base64EncodedStringWithOptions:0];

  CFPreferencesSetAppValue(key, v7, @"com.apple.appstored");
  CFPreferencesAppSynchronize(@"com.apple.appstored");
}

BOOL sub_1003D4754()
{
  objc_opt_self();
  objc_opt_self();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DiagnosticClockEnabled", @"com.apple.appstored", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat == 1 && AppBooleanValue == 1;
}

double sub_1003D47A8()
{
  objc_opt_self();
  v0 = objc_opt_self();
  v1 = sub_1003D3FC4(v0, @"DiagnosticClockOffset");
  v2 = v1;
  if (v1)
  {
    [v1 doubleValue];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

id sub_1003D4804()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"AppUsageActorID", @"com.apple.appstored");

  return v0;
}

id sub_1003D4878()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"AppUsageDailyPostCountOverride", @"com.apple.appstored");

  return v0;
}

id sub_1003D48B4()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"AppUsageFlushIntervalOverride", @"com.apple.appstored");

  return v0;
}

id sub_1003D48F0()
{
  v0 = objc_opt_self();

  return sub_1003D3EA8(v0, @"AppUsageFlushTargetDate");
}

id sub_1003D4920()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"AppUsageResetActorIDOverride", @"com.apple.appstored");

  return v0;
}

id sub_1003D495C()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"AppUsageResetActorIDTargetDate", @"com.apple.appstored");

  return v0;
}

id sub_1003D4998()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"AppUsageTaskGracePeriodOverride", @"com.apple.appstored");

  return v0;
}

id sub_1003D49D4()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"AppUsageTaskSpreadPeriodOverride", @"com.apple.appstored");

  return v0;
}

uint64_t sub_1003D4A48(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"AppUsageActorID", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D4AAC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"AppUsageFlushTargetDate", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D4B10(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"AppUsageNextPostTargetDate", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D4B74(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"AppUsageResetActorIDTargetDate", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

id sub_1003D4BD8()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"BeagleApps", @"com.apple.appstored");

  return v0;
}

id sub_1003D4C14()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"AnalyticsClientIDOverride", @"com.apple.appstored");

  return v0;
}

id sub_1003D4C50()
{
  objc_opt_self();
  v0 = sub_1003D3FC4(AppDefaultsManager, @"ArcadeRepairTimeout");

  return v0;
}

id sub_1003D4C8C()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"ArcadeDefaultApp", @"com.apple.appstored");

  return v0;
}

id sub_1003D4CC8()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"ArcadeDeviceGUID", @"com.apple.appstored");

  return v0;
}

id sub_1003D4D04()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"ArcadeDeviceID", @"com.apple.appstored");

  return v0;
}

id sub_1003D4D40()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"ArcadeDeviceIDCreationDate", @"com.apple.appstored");

  return v0;
}

id sub_1003D4D7C()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"ArcadePayoutDeviceID", @"com.apple.appstored");

  return v0;
}

id sub_1003D4DB8()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"ArcadePayoutResetDate", @"com.apple.appstored");

  return v0;
}

BOOL sub_1003D4DF4()
{
  objc_opt_self();
  objc_opt_self();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ArcadeShouldRetryOptOut", @"com.apple.appstored", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat == 1 && AppBooleanValue == 1;
}

id sub_1003D4E48()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"ArcadeSubscriptionState", @"com.apple.appstored");

  return v0;
}

uint64_t sub_1003D4E84(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  objc_opt_self();
  CFPreferencesSetAppValue(@"ArcadeDeviceGUID", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D4EEC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  objc_opt_self();
  CFPreferencesSetAppValue(@"ArcadeDeviceID", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D4F54(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  objc_opt_self();
  CFPreferencesSetAppValue(@"ArcadeDeviceIDCreationDate", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D4FBC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"ArcadePayoutResetDate", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

void sub_1003D5020(uint64_t a1, void *a2)
{
  value = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"ArcadePayoutDeviceID", value, @"com.apple.appstored");
  CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D5090(uint64_t a1, int a2)
{
  objc_opt_self();
  v3 = &kCFBooleanTrue;
  if (!a2)
  {
    v3 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"ArcadeShouldRetryOptOut", *v3, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

void sub_1003D50FC(uint64_t a1, void *a2)
{
  value = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"ArcadeSubscriptionState", value, @"com.apple.appstored");
  CFPreferencesAppSynchronize(@"com.apple.appstored");
}

id sub_1003D51A4()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"OncePerBoot", @"com.apple.appstored");
  if (!v0)
  {
    v0 = &__NSDictionary0__struct;
  }

  return v0;
}

void sub_1003D51F0(uint64_t a1, void *a2)
{
  value = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"OncePerBoot", value, @"com.apple.appstored");
  CFPreferencesAppSynchronize(@"com.apple.appstored");
}

id sub_1003D5260()
{
  objc_opt_self();
  v0 = sub_1003D3FC4(AppDefaultsManager, @"PowerPluggedInOverride");

  return v0;
}

id sub_1003D529C()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"AMSMetricsCanaryIdentifier", @"com.apple.AppleMediaServices");
  objc_opt_class();
  v1 = sub_1001C09E4(v0);

  return v1;
}

BOOL sub_1003D530C()
{
  objc_opt_self();
  objc_opt_self();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"RepairForceSbsync", @"com.apple.appstored", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat == 1 && AppBooleanValue == 1;
}

id sub_1003D5368()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"AttemptedPreflightAccounts", @"com.apple.appstored");

  return v0;
}

uint64_t sub_1003D53A4()
{
  objc_opt_self();
  CFPreferencesSetAppValue(@"HasPresentedDistributorRestoreDialog", 0, @"com.apple.appstored");
  CFPreferencesSetAppValue(@"RestoreAccountIDs", 0, @"com.apple.appstored");
  CFPreferencesSetAppValue(@"FollowUpAccounts", 0, @"com.apple.appstored");
  CFPreferencesSetAppValue(@"AttemptedPreflightAccounts", 0, @"com.apple.appstored");
  CFPreferencesSetAppValue(@"RestoreItemKinds", 0, @"com.apple.appstored");
  CFPreferencesSetAppValue(@"RestoreStoreFrontIDs", 0, @"com.apple.appstored");
  CFPreferencesSetAppValue(@"RestoreSuppressTermsAndConditions", 0, @"com.apple.appstored");
  CFPreferencesSetAppValue(@"RestoreInstallsFailedWithCodeSigError", 0, @"com.apple.appstored");
  v0 = qword_1005AAE88;
  qword_1005AAE88 = 0;

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

id sub_1003D5490()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"FollowUpAccounts", @"com.apple.appstored");

  return v0;
}

id sub_1003D5504()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"RestoreSoftFailureRetryDate", @"com.apple.appstored");

  return v0;
}

void sub_1003D5540(uint64_t a1, void *a2)
{
  value = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"AttemptedPreflightAccounts", value, @"com.apple.appstored");
  CFPreferencesAppSynchronize(@"com.apple.appstored");
}

void sub_1003D55B0(uint64_t a1, void *a2)
{
  value = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"FollowUpAccounts", value, @"com.apple.appstored");
  CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D5620(uint64_t a1, int a2)
{
  objc_opt_self();
  v3 = &kCFBooleanTrue;
  if (!a2)
  {
    v3 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"PerformedPostRestoreUpdate", *v3, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

void sub_1003D568C(uint64_t a1, void *a2)
{
  value = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"RestoreSoftFailureRetryDate", value, @"com.apple.appstored");
  CFPreferencesAppSynchronize(@"com.apple.appstored");
}

id sub_1003D56FC()
{
  v0 = objc_opt_self();
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1003D5804;
  v9 = sub_1003D5814;
  v10 = 0;
  v1 = sub_1003D581C();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003D5870;
  v4[3] = &unk_100527960;
  v4[4] = &v5;
  v4[5] = v0;
  dispatch_sync(v1, v4);

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t sub_1003D5804(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1003D581C()
{
  if (qword_1005AAE98 != -1)
  {
    dispatch_once(&qword_1005AAE98, &stru_100527980);
  }

  v1 = qword_1005AAE90;

  return v1;
}

void sub_1003D5870(uint64_t a1)
{
  v2 = sub_1003D58BC();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1003D58BC()
{
  objc_opt_self();
  if (qword_1005AAE88)
  {
    v0 = qword_1005AAE88;
  }

  else
  {
    v0 = CFPreferencesCopyAppValue(@"RestoreInstallsFailedWithCodeSigError", @"com.apple.appstored");
  }

  return v0;
}

void sub_1003D590C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v8 = v5;
  v7 = [NSArray arrayWithObjects:&v8 count:1];

  sub_1003D59C4(v6, v7, v4);
}

void sub_1003D59C4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if ([v4 count])
  {
    v7 = sub_1003D581C();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003D5AAC;
    block[3] = &unk_10051F4B0;
    v11 = v6;
    v9 = v4;
    v10 = v5;
    dispatch_async(v7, block);
  }
}

void sub_1003D5AAC(uint64_t a1)
{
  v2 = sub_1003D58BC();
  v3 = v2;
  if (!v2)
  {
    v2 = &__NSDictionary0__struct;
  }

  v4 = [v2 mutableCopy];

  v5 = [v4 count];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v4 setObject:*(a1 + 40) forKeyedSubscript:{*(*(&v14 + 1) + 8 * i), v14}];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if (*(a1 + 40) || v5 != [v4 count])
  {
    v11 = v4;
    objc_opt_self();
    v12 = [v11 copy];

    v13 = qword_1005AAE88;
    qword_1005AAE88 = v12;

    CFPreferencesSetAppValue(@"RestoreInstallsFailedWithCodeSigError", qword_1005AAE88, @"com.apple.appstored");
    CFPreferencesAppSynchronize(@"com.apple.appstored");
  }
}

id sub_1003D5C58()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"ManageSubsOnDeleteBlacklist", @"com.apple.appstored");

  return v0;
}

uint64_t sub_1003D5C94(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"ManageSubsOnDeleteBlacklist", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

id sub_1003D5CF8()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"SKANWebImpressionFetchURL", @"com.apple.appstored");

  return v0;
}

BOOL sub_1003D5D34()
{
  objc_opt_self();
  objc_opt_self();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"InstallAttributionIgnoreSourceAppCheck", @"com.apple.appstored", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat == 1 && AppBooleanValue == 1;
}

id sub_1003D5D88()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"InstallAttributionShouldSendDevPingback", @"com.apple.appstored");

  return v0;
}

id sub_1003D5DC4()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"InstallAttributionDeveloperPingbackOverride", @"com.apple.appstored");

  return v0;
}

BOOL sub_1003D5E00()
{
  objc_opt_self();
  objc_opt_self();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"developer-mode-enabled", @"com.apple.attributionkitd", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat == 1 && AppBooleanValue == 1;
}

id sub_1003D5E54()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"skan-developer-mode-postback-delay", @"com.apple.attributionkitd");

  return v0;
}

id sub_1003D5E90()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"skan-developer-mode-conversion-window-thresholds", @"com.apple.attributionkitd");

  return v0;
}

id sub_1003D5ECC()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"skan-developer-mode-should-use-proxy", @"com.apple.attributionkitd");

  return v0;
}

BOOL sub_1003D5F08()
{
  objc_opt_self();
  objc_opt_self();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ExternalPurchasesSpringBoardAppDeleteIsEnabled", @"com.apple.appstored", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat != 1 || AppBooleanValue == 1;
}

uint64_t sub_1003D5F5C(uint64_t a1, int a2)
{
  objc_opt_self();
  v3 = &kCFBooleanTrue;
  if (!a2)
  {
    v3 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"ExternalPurchasesSpringBoardAppDeleteIsEnabled", *v3, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

BOOL sub_1003D5FC8()
{
  objc_opt_self();
  v0 = sub_10030B58C();
  objc_opt_self();
  keyExistsAndHasValidFormat = 0;
  v1 = CFPreferencesGetAppBooleanValue(@"AutoUpdatesEnabled", @"com.apple.itunesstored", &keyExistsAndHasValidFormat) == 1;
  if (keyExistsAndHasValidFormat == 1)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

id sub_1003D603C()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"UpdateCleanupTime", @"com.apple.appstored");

  return v0;
}

id sub_1003D6078()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"LastUpdatesCheck", @"com.apple.appstored");

  return v0;
}

id sub_1003D60B4()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"LastAutoUpdateCompletion", @"com.apple.appstored");

  return v0;
}

id sub_1003D60F0()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"PreviouslyInstalledProvisionedApps", @"com.apple.appstored");

  return v0;
}

BOOL sub_1003D612C()
{
  objc_opt_self();
  objc_opt_self();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DoForceDeltaUpdateFailure", @"com.apple.appstored", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat == 1 && AppBooleanValue == 1;
}

uint64_t sub_1003D6180()
{
  objc_opt_self();
  CFPreferencesSetAppValue(@"UpdateCleanupTime", +[NSDate date], @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D61DC(uint64_t a1, int a2)
{
  objc_opt_self();
  v3 = &kCFBooleanTrue;
  if (!a2)
  {
    v3 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(@"AutoUpdatesEnabled", *v3, @"com.apple.itunesstored");

  return CFPreferencesAppSynchronize(@"com.apple.itunesstored");
}

BOOL sub_1003D6248()
{
  objc_opt_self();
  objc_opt_self();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"HasPresentedDistributorRestoreDialog", @"com.apple.appstored", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat == 1 && AppBooleanValue == 1;
}

uint64_t sub_1003D629C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"LastAutoUpdateCompletion", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D6300(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"LastUpdatesPerform", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D6364(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"LastUpdatesCheck", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D63C8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"PreviouslyInstalledProvisionedApps", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

void sub_1003D642C(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  objc_opt_self();
  v3 = [NSNumber numberWithBool:a2];

  CFPreferencesSetAppValue(@"HasPresentedDistributorRestoreDialog", v3, @"com.apple.appstored");
}

BOOL sub_1003D6488()
{
  objc_opt_self();
  objc_opt_self();
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"UseFollowupsForRestoreFailures", @"com.apple.appstored", &keyExistsAndHasValidFormat);
  return keyExistsAndHasValidFormat == 1 && AppBooleanValue == 1;
}

id sub_1003D64DC()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"ForceAppDRMMode", @"com.apple.appstored");

  return v0;
}

id sub_1003D6518()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"vppExpiredApps", @"com.apple.appstored");

  return v0;
}

id sub_1003D6554()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"vppRevokedApps", @"com.apple.appstored");

  return v0;
}

id sub_1003D6590()
{
  objc_opt_self();
  v0 = objc_opt_self();
  v1 = sub_1003D3FC4(v0, @"DayLock");

  return v1;
}

void sub_1003D65C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = objc_opt_self();
  sub_1003D4024(v2, v3, @"DayLock");
}

id sub_1003D6624()
{
  objc_opt_self();
  v0 = +[ACAccountStore ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  v2 = [v1 accountPropertyForKey:@"automaticDownloadKinds"];
  v3 = [v2 containsObject:@"software"];

  return v3;
}

id sub_1003D66DC()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"AppClaimHistory", @"com.apple.appstored");

  return v0;
}

uint64_t sub_1003D6718()
{
  objc_opt_self();
  CFPreferencesSetAppValue(@"UpdateMigratorConfiguration", 0, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

id sub_1003D6810()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"InvalidBuildToolVersions", @"com.apple.appstored");

  return v0;
}

id sub_1003D684C()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"LastOSBuildVersion", @"com.apple.appstored");

  return v0;
}

id sub_1003D6888()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"PendingPushActionTypes", @"com.apple.appstored");

  return v0;
}

uint64_t sub_1003D68C4()
{
  objc_opt_self();
  CFPreferencesSetAppValue(@"LastOSInstallDate", +[NSDate date], @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D6920(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"AppClaimHistory", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D6984(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"InvalidBuildToolVersions", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

void sub_1003D69E8(uint64_t a1, void *a2)
{
  value = a2;
  objc_opt_self();
  if (value)
  {
    CFPreferencesSetAppValue(@"LastOSBuildVersion", value, @"com.apple.appstored");
    CFPreferencesAppSynchronize(@"com.apple.appstored");
  }

  else
  {
    CFPreferencesSetAppValue(@"LastOSBuildVersion", 0, @"com.apple.appstored");
  }
}

uint64_t sub_1003D6A74(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"PendingPushActionTypes", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D6AD8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"TransporterConfiguration", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

uint64_t sub_1003D6B3C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  CFPreferencesSetAppValue(@"UpdateMigratorConfiguration", v2, @"com.apple.appstored");

  return CFPreferencesAppSynchronize(@"com.apple.appstored");
}

id sub_1003D6BA0()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"TestFlightFeedbackOverrides", @"com.apple.appstored");

  return v0;
}

id sub_1003D6BDC()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"TransporterConfiguration", @"com.apple.appstored");

  return v0;
}

id sub_1003D6C18()
{
  objc_opt_self();
  v0 = CFPreferencesCopyAppValue(@"UpdateMigratorConfiguration", @"com.apple.appstored");

  return v0;
}

void sub_1003D6C54(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.appstored.restoreInstalls", v3);
  v2 = qword_1005AAE90;
  qword_1005AAE90 = v1;
}

id sub_1003D6D24(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    [v2 setAccountID:*(a1 + 304)];
    [v2 setBundleID:*(a1 + 72)];
    [v2 setBundleVersion:*(a1 + 80)];
    [v2 setCount:*(a1 + 408)];
    [v2 setCohort:*(a1 + 200)];
    [v2 setDeviceVendorID:*(a1 + 56)];
    [v2 setDuration:*(a1 + 232)];
    [v2 setEvid:*(a1 + 240)];
    [v2 setEventType:{sub_1001FD02C(AppEvent, *(a1 + 24))}];
    [v2 setEventSubtype:{sub_1001FD06C(AppEvent, *(a1 + 28))}];
    if (*(a1 + 248))
    {
      [v2 setEventTime:?];
    }

    else
    {
      v3 = [a1 eventTime];
      [v2 setEventTime:v3];
    }

    [v2 setForegroundUsage:*(a1 + 400)];
    [v2 setForegroundUsageEvents:*(a1 + 256)];
    [v2 setHasBeenPosted:*(a1 + 26)];
    v4 = [a1 underlyingDictionary];
    v5 = [v4 objectForKeyedSubscript:@"appPlatform"];

    if (v5)
    {
      v6 = [a1 underlyingDictionary];
      v7 = [v6 objectForKeyedSubscript:@"appPlatform"];
      [v2 setAppPlatform:v7];
    }

    v8 = *(a1 + 16);
    v9 = v8 && ([v8 BOOLValue] & 1) != 0;
    [v2 setIsBeta:v9];
    v10 = *(a1 + 96);
    if (v10)
    {
      v11 = [*(a1 + 96) isEqualToString:@"clip"];
    }

    else
    {
      v11 = 0;
    }

    [v2 setIsClip:v11];

    [v2 setItemName:*(a1 + 288)];
    [v2 setItemID:*(a1 + 280)];
    [v2 setStartTime:*(a1 + 368)];
    [v2 setShortVersion:*(a1 + 352)];
    [v2 setStorefront:*(a1 + 376)];
    [v2 setWeekStartDate:*(a1 + 424)];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1003D7020(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"usageClientId"];
    objc_storeStrong(a1 + 6, a2);
    v4 = v5;
  }
}

void sub_1003D7098(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 keyEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v6;
    v8 = *v15;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v4 objectForKeyedSubscript:v10];
        objc_opt_class();
        v12 = sub_1001C09E4(v11);
        if (v12)
        {
        }

        else
        {
          objc_opt_class();
          v13 = sub_1001C09E4(v11);

          if (!v13)
          {
            goto LABEL_11;
          }
        }

        [a1 setProperty:v11 forBodyKey:v10];
LABEL_11:
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v7)
      {
LABEL_13:

        break;
      }
    }
  }
}

void sub_1003D7220(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = a2;
    v4 = sub_1003D7284(a1, a2);
    [a1 setProperty:v4 forBodyKey:@"eventType"];

    *(a1 + 24) = v2;
  }
}

__CFString *sub_1003D7284(__CFString *a1, int a2)
{
  if (a1)
  {
    if (a2 > 2)
    {
      switch(a2)
      {
        case 3:
          v3 = &off_100524CC8;
          break;
        case 4:
          v3 = &off_100524CD8;
          break;
        case 5:
          v3 = &off_100524CA8;
          break;
        default:
LABEL_15:
          v3 = &off_100524CD0;
          break;
      }
    }

    else
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v3 = &off_100524CB0;
          goto LABEL_18;
        }

        if (a2 == 2)
        {
          if (a1[2].isa == 3)
          {
            v3 = &off_100524CC0;
          }

          else
          {
            v3 = &off_100524CB8;
          }

          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v3 = &off_100524CA0;
    }

LABEL_18:
    a1 = *v3;
  }

  return a1;
}

void sub_1003D7354(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"app_sessionreporter_key"];
    objc_storeStrong(a1 + 7, a2);
    v4 = v5;
  }
}

void sub_1003D73CC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    v4 = [NSNumber numberWithBool:a2];
    v5 = a1[1];
    a1[1] = v4;

    if (v2)
    {
      v6 = a1[1];

      [a1 setProperty:v6 forBodyKey:@"app_sessionreporter_key_repaired"];
    }
  }
}

void sub_1003D745C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    v4 = [NSNumber numberWithBool:a2];
    v5 = a1[2];
    a1[2] = v4;

    if (v2)
    {
      v6 = a1[2];

      [a1 setProperty:v6 forBodyKey:@"isBeta"];
    }
  }
}

void sub_1003D74EC(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"bundleId"];
    objc_storeStrong(a1 + 9, a2);
    v4 = v5;
  }
}

void sub_1003D7564(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"bundleVersion"];
    objc_storeStrong(a1 + 10, a2);
    v4 = v5;
  }
}

void sub_1003D75DC(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"clientEventId"];
    objc_storeStrong(a1 + 11, a2);
    v4 = v5;
  }
}

void sub_1003D7654(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"campaign_at"];
    objc_storeStrong(a1 + 13, a2);
    v4 = v5;
  }
}

void sub_1003D76CC(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"appType"];
    objc_storeStrong(a1 + 12, a2);
    v4 = v5;
  }
}

void sub_1003D7744(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"campaign"];
    objc_storeStrong(a1 + 14, a2);
    v4 = v5;
  }
}

void sub_1003D77BC(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"campaign_ct"];
    objc_storeStrong(a1 + 15, a2);
    v4 = v5;
  }
}

void sub_1003D7834(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    [a1 setProperty:v3 forBodyKey:@"installCampaign_at"];
    v4 = [v3 copy];

    v5 = a1[16];
    a1[16] = v4;
  }
}

void sub_1003D78B4(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    [a1 setProperty:v3 forBodyKey:@"installCampaign_ct"];
    v4 = [v3 copy];

    v5 = a1[17];
    a1[17] = v4;
  }
}

void sub_1003D7934(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    [a1 setProperty:v3 forBodyKey:@"installCampaign_pt"];
    v4 = [v3 copy];

    v5 = a1[18];
    a1[18] = v4;
  }
}

void sub_1003D79B4(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"installRefSource"];
    objc_storeStrong(a1 + 19, a2);
    v4 = v5;
  }
}

void sub_1003D7A2C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"installRefType"];
    objc_storeStrong(a1 + 20, a2);
    v4 = v5;
  }
}

void sub_1003D7AA4(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"campaign_pt"];
    objc_storeStrong(a1 + 22, a2);
    v4 = v5;
  }
}

void sub_1003D7B1C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"refSource"];
    objc_storeStrong(a1 + 21, a2);
    v4 = v5;
  }
}

void sub_1003D7B94(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"refType"];
    objc_storeStrong(a1 + 23, a2);
    v4 = v5;
  }
}

void sub_1003D7C0C(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v8 = v3;
    v5 = [v3 copy];
    v6 = a1[24];
    a1[24] = v5;

    v7 = [a1[24] BOOLValue];
    v4 = v8;
    if (v7)
    {
      [a1 setProperty:a1[24] forBodyKey:@"thirdPartyWithNoAppReferrer"];
      v4 = v8;
    }
  }
}

void sub_1003D7CA0(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"cohort"];
    objc_storeStrong(a1 + 25, a2);
    v4 = v5;
  }
}

void sub_1003D7D18(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithInteger:a2];
    [a1 setProperty:v4 forBodyKey:@"cumulativeUserCount"];

    a1[27] = a2;
  }
}

void sub_1003D7D88(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    [a1 setProperty:v4 forBodyKey:@"eventTime"];
    v5.receiver = a1;
    v5.super_class = AppUsageMetricsEvent;
    objc_msgSendSuper2(&v5, "setEventTime:", v4);
    objc_storeStrong(a1 + 31, a2);
  }
}

void sub_1003D7E14(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v6 = v4;
    if (objc_opt_respondsToSelector())
    {
      v5 = [v6 stringValue];
      [a1 setProperty:v5 forBodyKey:@"externalVersionId"];
    }

    objc_storeStrong(a1 + 30, a2);
    v4 = v6;
  }
}

void sub_1003D7EB4(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"collectionTime"];
    objc_storeStrong(a1 + 26, a2);
    v4 = v5;
  }
}

void sub_1003D7F2C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithLongLong:a2];
    [a1 setProperty:v4 forBodyKey:@"duration"];

    a1[29] = a2;
  }
}

void sub_1003D7F9C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"foregroundEvents"];
    objc_storeStrong(a1 + 32, a2);
    v4 = v5;
  }
}

void sub_1003D8014(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"hardwareFamily"];
    objc_storeStrong(a1 + 33, a2);
    v4 = v5;
  }
}

void sub_1003D808C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"hardwareModel"];
    objc_storeStrong(a1 + 34, a2);
    v4 = v5;
  }
}

_BYTE *sub_1003D8104(_BYTE *result, int a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    v4 = &off_100524D30;
    v5 = &off_100524D38;
    if (a2 != 2)
    {
      v5 = &off_100524D28;
    }

    if (a2 != 1)
    {
      v4 = v5;
    }

    result = [result setProperty:*v4 forBodyKey:@"installationType"];
    v3[27] = v2;
  }

  return result;
}

void sub_1003D8174(_BYTE *a1, int a2)
{
  if (a1)
  {
    v2 = a2;
    v4 = sub_100308EC0(MetricsHandler, a2);
    [a1 setProperty:v4 forBodyKey:@"installType"];

    a1[28] = v2;
  }
}

void sub_1003D81E0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithBool:a2];
    [a1 setProperty:v3 forBodyKey:@"isSystemApp"];
  }
}

void sub_1003D8250(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v6 = v4;
    v5 = [v4 stringValue];
    if ([v5 length])
    {
      [a1 setProperty:v5 forBodyKey:@"itemId"];
    }

    objc_storeStrong(a1 + 35, a2);

    v4 = v6;
  }
}

void sub_1003D82E4(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"os"];
    objc_storeStrong(a1 + 40, a2);
    v4 = v5;
  }
}

void sub_1003D835C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"startTime"];
    objc_storeStrong(a1 + 46, a2);
    v4 = v5;
  }
}

void sub_1003D83D4(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"clientId"];
    objc_storeStrong(a1 + 37, a2);
    v4 = v5;
  }
}

void sub_1003D844C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"dsId"];
    objc_storeStrong(a1 + 38, a2);
    v4 = v5;
  }
}

void sub_1003D84C4(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"osBuildNumber"];
    objc_storeStrong(a1 + 41, a2);
    v4 = v5;
  }
}

void sub_1003D853C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"platform"];
    objc_storeStrong(a1 + 42, a2);
    v4 = v5;
  }
}

void sub_1003D85B4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithLongLong:a2];
    [a1 setProperty:v4 forBodyKey:@"qualificationDuration"];

    a1[52] = a2;
  }
}

void sub_1003D8624(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"shortAppVersion"];
    objc_storeStrong(a1 + 44, a2);
    v4 = v5;
  }
}

void sub_1003D869C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"sourceBundleID"];
    objc_storeStrong(a1 + 45, a2);
    v4 = v5;
  }
}

void sub_1003D8714(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"storefront"];
    objc_storeStrong(a1 + 47, a2);
    v4 = v5;
  }
}

void sub_1003D878C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithLongLong:a2];
    [a1 setProperty:v4 forBodyKey:@"rangeEndTime"];

    a1[48] = a2;
  }
}

void sub_1003D87FC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithLongLong:a2];
    [a1 setProperty:v4 forBodyKey:@"rangeStartTime"];

    a1[49] = a2;
  }
}

void sub_1003D886C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithInteger:a2];
    [a1 setProperty:v4 forBodyKey:@"count"];

    a1[51] = a2;
  }
}

void sub_1003D88DC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [NSNumber numberWithLongLong:a2];
    [a1 setProperty:v4 forBodyKey:@"foregroundDuration"];

    a1[50] = a2;
  }
}

void sub_1003D894C(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = v4;
    [a1 setProperty:v4 forBodyKey:@"weekStartDate"];
    objc_storeStrong(a1 + 53, a2);
    v4 = v5;
  }
}

void sub_1003D9D40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1003D9D50);
  }

  _Unwind_Resume(a1);
}

void sub_1003D9D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D9DFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1003D9E14(void *a1, void *a2)
{
  v3 = a2;
  v60 = 0;
  v4 = sub_1002487CC(v3, &v60);
  v5 = v60;
  v6 = +[_TtC9appstored9MadBridge shared];
  v7 = [v3 identity];
  v8 = [v7 bundleID];
  v9 = [v6 isThirdPartyRestore:v8];

  if (!v9)
  {
    if (!v4)
    {
      v25 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v32 = a1[4];
        if (v32)
        {
          v32 = v32[6];
        }

        *buf = 138412802;
        v62 = v32;
        v63 = 2114;
        v64 = v3;
        v65 = 2114;
        v66 = v5;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[%@] Not responsible for coordinator: %{public}@ or error occurred: %{public}@", buf, 0x20u);
      }

      goto LABEL_22;
    }

    v22 = a1[5];
    v23 = [v3 uniqueIdentifier];
    v24 = [v22 objectForKeyedSubscript:v23];

    if (v24)
    {
      v25 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = a1[4];
        if (v26)
        {
          v27 = *(v26 + 48);
        }

        else
        {
          v27 = 0;
        }

        v28 = a1[5];
        v29 = v27;
        v30 = [v3 uniqueIdentifier];
        v31 = [v28 objectForKeyedSubscript:v30];
        *buf = 138412546;
        v62 = v27;
        v63 = 2114;
        v64 = v31;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Skipping store item coordinator due to existing restore", buf, 0x16u);
      }

LABEL_22:

      goto LABEL_23;
    }

    v34 = a1[6];
    v59 = 0;
    v35 = [_TtC9appstored21RestoreInstallCreator createRestoreFromCoordinator:v3 policy:v34 error:&v59];
    v36 = v59;
    if (v36)
    {
      v37 = a1[7];
      v38 = sub_100248FF4(v3);
      [v37 setObject:v36 forKeyedSubscript:v38];

      v39 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = a1[4];
        if (v40)
        {
          v41 = *(v40 + 48);
        }

        else
        {
          v41 = 0;
        }

        v42 = v41;
        v43 = [v3 identity];
        v44 = [v43 bundleID];
        *buf = 138412802;
        v62 = v41;
        v63 = 2114;
        v64 = v44;
        v65 = 2114;
        v66 = v36;
        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "[%@] [%{public}@] Hard failed coordinator due to placeholder error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v45 = a1[8];
      v46 = [v3 identity];
      v47 = [v46 bundleID];
      v48 = [v45 indexOfObject:v47];

      if (v48 < a1[13])
      {
        sub_10023E000(v35, &off_1005484F0, @"priority");
      }

      if (v48 == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_10023E000(v35, &off_100548508, @"order_index");
      }

      else
      {
        v49 = [NSNumber numberWithUnsignedInteger:v48];
        sub_10023E000(v35, v49, @"order_index");
      }

      v50 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = a1[4];
        if (v51)
        {
          v52 = *(v51 + 48);
        }

        else
        {
          v52 = 0;
        }

        v53 = v52;
        v54 = sub_100408EB0(v35);
        *buf = 138412546;
        v62 = v52;
        v63 = 2112;
        v64 = v54;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[%@] [%@] Beginning restore", buf, 0x16u);
      }

      [*(*(a1[11] + 8) + 40) addObject:v35];
      if ([*(*(a1[11] + 8) + 40) count] < 0x32)
      {
        goto LABEL_41;
      }

      v55 = sub_1003C27BC();
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_1003DA540;
      v58[3] = &unk_100522CF0;
      v58[4] = a1[11];
      [v55 modifyUsingTransaction:v58];

      *(*(a1[12] + 8) + 24) += [*(*(a1[11] + 8) + 40) count];
      v56 = objc_alloc_init(NSMutableArray);
      v57 = *(a1[11] + 8);
      v39 = *(v57 + 40);
      *(v57 + 40) = v56;
    }

LABEL_41:
    goto LABEL_23;
  }

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    if (v11)
    {
      v12 = *(v11 + 48);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [v3 identity];
    v15 = [v14 bundleID];
    *buf = 138412546;
    v62 = v12;
    v63 = 2114;
    v64 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Found marketplace app", buf, 0x16u);
  }

  *(*(a1[9] + 8) + 24) = 1;
  if (v4)
  {
    v16 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = a1[4];
      if (v17)
      {
        v18 = *(v17 + 48);
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v20 = [v3 identity];
      v21 = [v20 bundleID];
      *buf = 138412546;
      v62 = v18;
      v63 = 2114;
      v64 = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] [%{public}@] Updating responsible restore responsible client", buf, 0x16u);
    }

    [*(*(a1[10] + 8) + 40) addObject:v3];
  }

LABEL_23:

  return 1;
}

void sub_1003DA578(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v14 = *(a1 + 32);
    if (v14)
    {
      v14 = *(v14 + 48);
    }

    *buf = 138412802;
    v20 = v14;
    v21 = 2114;
    v22 = v5;
    v23 = 2114;
    v24 = v6;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Failing coordinator: %{public}@ with reason: %{public}@", buf, 0x20u);
  }

  v18 = 0;
  v8 = sub_100248D24(IXAppInstallCoordinator, v5, &v18);
  v9 = v18;
  v10 = v9;
  if (!v8)
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      if (v15)
      {
        v15 = *(v15 + 48);
      }

      *buf = 138412802;
      v20 = v15;
      v21 = 2114;
      v22 = v5;
      v23 = 2114;
      v24 = v10;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@] Could not find coordinator to cancel: %{public}@ error: %{public}@", buf, 0x20u);
    }

    goto LABEL_7;
  }

  v17 = v9;
  v11 = sub_100249ACC(v8, v6, &v17);
  v12 = v17;

  if ((v11 & 1) == 0)
  {
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = *(v16 + 48);
      }

      *buf = 138412802;
      v20 = v16;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = v12;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@] Could not fail coordinator: %{public}@ error: %{public}@", buf, 0x20u);
    }

    v10 = v12;
LABEL_7:

    v12 = v10;
  }
}

void sub_1003DA824(id *a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100548520];
  v5 = [v3 connection];
  v6 = sub_1002D3F5C(AppInstallEntity, v5, v4);

  v7 = +[RestoreAppInstall defaultProperties];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003DA984;
  v9[3] = &unk_1005279F8;
  v10 = v3;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[6];
  v8 = v3;
  [v6 enumeratePersistentIDsAndProperties:v7 usingBlock:v9];
}

void sub_1003DA984(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v7 = [[_TtC9appstored6LogKey alloc] initWithAppInstallEntity:v6];
  v8 = [(SQLiteEntity *)v6 valueForProperty:@"coordinator_id"];
  v9 = [(SQLiteEntity *)v6 valueForProperty:@"bootstrapped"];
  if ([v9 integerValue] != 2)
  {
    v10 = sub_10029430C(v6);
    v11 = *(a1 + 40);
    v12 = [v10 description];
    [v11 addObject:v12];
  }

  v13 = sub_100340244(v6, @"failure_error");
  if (!v13)
  {
    if (!v8 || !v7)
    {
      goto LABEL_14;
    }

LABEL_13:
    v17 = [(LogKey *)v7 description];
    [*(a1 + 48) setObject:v17 forKeyedSubscript:v8];

    goto LABEL_14;
  }

  IsEqual = ASDErrorIsEqual();
  if (v8 && v7 && (IsEqual & 1) == 0)
  {
    goto LABEL_13;
  }

  if (IsEqual)
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 56);
      *buf = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] [%@] DB has previous device based VPP app failure", buf, 0x16u);
    }

    ASDDebugLog();
  }

LABEL_14:
}

id sub_1003DAC60()
{
  objc_opt_self();
  if (qword_1005AAEA8 != -1)
  {
    dispatch_once(&qword_1005AAEA8, &stru_100527A18);
  }

  v0 = qword_1005AAEA0;

  return v0;
}

void sub_1003DACB8(id a1)
{
  v1 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase value:10)" comparisonType:&off_100548538, 5];
  v2 = qword_1005AAEA0;
  qword_1005AAEA0 = v1;
}

id sub_1003DAD0C()
{
  objc_opt_self();
  if (qword_1005AAEB8 != -1)
  {
    dispatch_once(&qword_1005AAEB8, &stru_100527A38);
  }

  v0 = qword_1005AAEB0;

  return v0;
}

void sub_1003DAD64(id a1)
{
  v1 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100548550];
  v2 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase value:10)" comparisonType:&off_100548568, 5, v1];
  v7[1] = v2;
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_state" equalToValue:&off_100548580];
  v7[2] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:3];
  v5 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v4];
  v6 = qword_1005AAEB0;
  qword_1005AAEB0 = v5;
}

id sub_1003DAE8C()
{
  objc_opt_self();
  if (qword_1005AAEC8 != -1)
  {
    dispatch_once(&qword_1005AAEC8, &stru_100527A58);
  }

  v0 = qword_1005AAEC0;

  return v0;
}

void sub_1003DAEE4(id a1)
{
  v1 = [SQLiteComparisonPredicate predicateWithProperty:@"client_type" equalToValue:&off_100548550];
  v2 = qword_1005AAEC0;
  qword_1005AAEC0 = v1;
}

id sub_1003DAF34()
{
  objc_opt_self();
  if (qword_1005AAED8 != -1)
  {
    dispatch_once(&qword_1005AAED8, &stru_100527A78);
  }

  v0 = qword_1005AAED0;

  return v0;
}

void sub_1003DAF8C(id a1)
{
  v1 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100548550];
  v6[0] = v1;
  v2 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.bootstrapped equalToValue:2)", &off_100548550];
  v6[1] = v2;
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v3];
  v5 = qword_1005AAED0;
  qword_1005AAED0 = v4;
}

id sub_1003DB080()
{
  objc_opt_self();
  if (qword_1005AAEE8 != -1)
  {
    dispatch_once(&qword_1005AAEE8, &stru_100527A98);
  }

  v0 = qword_1005AAEE0;

  return v0;
}

void sub_1003DB0D8(id a1)
{
  v1 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.bootstrapped equalToValue:2)", &off_100548580];
  v6[0] = v1;
  v2 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase equalToValue:10)", &off_100548538];
  v6[1] = v2;
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v3];
  v5 = qword_1005AAEE0;
  qword_1005AAEE0 = v4;
}

id sub_1003DB1CC()
{
  objc_opt_self();
  if (qword_1005AAF08 != -1)
  {
    dispatch_once(&qword_1005AAF08, &stru_100527AB8);
  }

  v0 = qword_1005AAF00;

  return v0;
}

void sub_1003DB224(id a1)
{
  v12 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100548550];
  v14[0] = v12;
  v11 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100548598];
  v14[1] = v11;
  v1 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_1005485B0];
  v14[2] = v1;
  v2 = [NSArray arrayWithObjects:v14 count:3];
  v3 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v2];
  v15[0] = v3;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.bootstrapped equalToValue:2)", &off_1005485E0];
  v13[0] = v4;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.bootstrapped equalToValue:2)", &off_1005485C8];
  v13[1] = v5;
  v6 = [NSArray arrayWithObjects:v13 count:2];
  v7 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v6];
  v15[1] = v7;
  v8 = [NSArray arrayWithObjects:v15 count:2];
  v9 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v8];
  v10 = qword_1005AAF00;
  qword_1005AAF00 = v9;
}

id sub_1003DB420()
{
  objc_opt_self();
  if (qword_1005AAF18 != -1)
  {
    dispatch_once(&qword_1005AAF18, &stru_100527AD8);
  }

  v0 = qword_1005AAF10;

  return v0;
}

void sub_1003DB478(id a1)
{
  v1 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100548550];
  v2 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100548598, v1];
  v10[1] = v2;
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_1005485B0];
  v10[2] = v3;
  v4 = [NSArray arrayWithObjects:v10 count:3];
  v5 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v4];
  v11[0] = v5;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.bootstrapped equalToValue:2)", &off_1005485E0];
  v11[1] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];
  v9 = qword_1005AAF10;
  qword_1005AAF10 = v8;
}

id sub_1003DB600()
{
  objc_opt_self();
  if (qword_1005AAF28 != -1)
  {
    dispatch_once(&qword_1005AAF28, &stru_100527AF8);
  }

  v0 = qword_1005AAF20;

  return v0;
}

void sub_1003DB658(id a1)
{
  v1 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100548550];
  v2 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.bootstrapped equalToValue:2)", &off_100548550, v1];
  v7[1] = v2;
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_state" equalToValue:&off_100548598];
  v7[2] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:3];
  v5 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v4];
  v6 = qword_1005AAF20;
  qword_1005AAF20 = v5;
}

id sub_1003DB77C()
{
  objc_opt_self();
  if (qword_1005AAF38 != -1)
  {
    dispatch_once(&qword_1005AAF38, &stru_100527B18);
  }

  v0 = qword_1005AAF30;

  return v0;
}

void sub_1003DB7D4(id a1)
{
  v1 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.bootstrapped equalToValue:2)", &off_1005485E0];
  v6[0] = v1;
  v2 = [SQLiteComparisonPredicate predicateWithProperty:@"source_type" equalToValue:&off_100548550];
  v6[1] = v2;
  v3 = [NSArray arrayWithObjects:v6 count:2];
  v4 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v3];
  v5 = qword_1005AAF30;
  qword_1005AAF30 = v4;
}

id sub_1003DB8C8()
{
  objc_opt_self();
  if (qword_1005AAF48 != -1)
  {
    dispatch_once(&qword_1005AAF48, &stru_100527B38);
  }

  v0 = qword_1005AAF40;

  return v0;
}

void sub_1003DB920(id a1)
{
  v1 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100548550];
  v11[0] = v1;
  v2 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase equalToValue:10)", &off_100548568];
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase equalToValue:10)", &off_1005485F8, v2];
  v10[1] = v3;
  v4 = [NSArray arrayWithObjects:v10 count:2];
  v5 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v4];
  v11[1] = v5;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_state" equalToValue:&off_100548550];
  v11[2] = v6;
  v7 = [NSArray arrayWithObjects:v11 count:3];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];
  v9 = qword_1005AAF40;
  qword_1005AAF40 = v8;
}

id sub_1003DBAB8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v2];

  v8[0] = v3;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase value:10)" comparisonType:&off_100548568, 5];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  return v6;
}

id sub_1003DBBCC(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"source_type" equalToLongLong:a2];
  v8[0] = v3;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.bootstrapped equalToValue:2)", &off_100548550];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  return v6;
}

id sub_1003DBCD4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  objc_opt_self();
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (v8)
    {
      v10 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v8];
LABEL_4:
      v11 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"IFNULL(app_install.phase values:10)", &off_100549668];
      v19[0] = v10;
      v19[1] = v11;
      v12 = [NSArray arrayWithObjects:v19 count:2];
      v13 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

      goto LABEL_14;
    }

LABEL_10:
    if (a5)
    {
      v17 = [NSString stringWithFormat:@"Bundle identifier is required (source = '%ld')", a2];
LABEL_12:
      *a5 = ASDErrorWithDescription();

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (!v8 || ![v8 length])
  {
    goto LABEL_10;
  }

  if (v9 && [v9 unsignedLongLongValue])
  {
    v14 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v8];
    v20[0] = v14;
    v15 = [SQLiteComparisonPredicate predicateWithProperty:@"item_id" equalToValue:v9];
    v20[1] = v15;
    v16 = [NSArray arrayWithObjects:v20 count:2];
    v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v16];

    goto LABEL_4;
  }

  if (a5)
  {
    v17 = [NSString stringWithFormat:@"Item identifier is required (source = '%ld')", a2];
    goto LABEL_12;
  }

LABEL_13:
  v13 = 0;
LABEL_14:

  return v13;
}

id sub_1003DBF54()
{
  objc_opt_self();
  v2[0] = @"app_adam_id";
  v2[1] = @"app_bundle_id";
  v2[2] = @"ad_network_id";
  v2[3] = @"campaign_id";
  v2[4] = @"source_identifier";
  v2[5] = @"transaction_id";
  v2[6] = @"attribution_signature";
  v2[7] = @"source_app_adam_id";
  v2[8] = @"source_domain";
  v2[9] = @"conversion_value";
  v2[10] = @"coarse_conversion_value";
  v2[11] = @"conversion_value_timestamp";
  v2[12] = @"should_send_conversion_value";
  v2[13] = @"pingback_url";
  v2[14] = @"redownload";
  v2[15] = @"registered";
  v2[16] = @"retry_count";
  v2[17] = @"retry_timestamp";
  v2[18] = @"version";
  v2[19] = @"local_timestamp";
  v2[20] = @"maturity_timestamp";
  v2[21] = @"fidelity_type";
  v2[22] = @"is_winning_pingback";
  v2[23] = @"is_developer_pingback";
  v2[24] = @"should_send_coarse_conversion_value";
  v2[25] = @"postback_sequence_index";
  v2[26] = @"is_locked";
  v2[27] = @"environment";
  v2[28] = @"country_code";
  v0 = [NSArray arrayWithObjects:v2 count:29];

  return v0;
}

id sub_1003DC0F4()
{
  objc_opt_self();
  if (qword_1005AAF58 != -1)
  {
    dispatch_once(&qword_1005AAF58, &stru_100527C40);
  }

  v0 = qword_1005AAF60;

  return v0;
}

void sub_1003DC14C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_1005AAF60;
  qword_1005AAF60 = v1;

  objc_opt_self();
  v4 = sub_10029C3FC();
  v3 = [v4 stringByAppendingPathComponent:@"storeSystem.db"];
  if (qword_1005AAF60)
  {
    objc_storeStrong((qword_1005AAF60 + 16), v3);
  }
}

void sub_1003DC1E4(id a1)
{
  v1 = +[UMUserManager sharedManager];
  v2 = [v1 isMultiUser];
  v3 = [v1 currentUser];
  v4 = [v3 userType];

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    v10 = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Multiuser system : %{BOOL}d", &v9, 8u);
  }

  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    v10 = v4 == 1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ephemeral user   : %{BOOL}d", &v9, 8u);
  }

  if (v4 == 1)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0;
  }

  byte_1005AAF50 = v7;
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    v10 = byte_1005AAF50;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Edu Mode Enabled : %{BOOL}d", &v9, 8u);
  }
}

void sub_1003DC390(id a1)
{
  v1 = container_system_group_path_for_identifier();
  if (v1)
  {
    v2 = v1;
    v3 = [NSURL fileURLWithFileSystemRepresentation:v1 isDirectory:1 relativeToURL:0];
    v4 = qword_1005AAF70;
    qword_1005AAF70 = v3;

    free(v2);
  }

  else
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v8 = 1;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error getting system container: %llu", buf, 0xCu);
    }
  }

  v6 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v8 = qword_1005AAF70;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "System container URL : %{public}@", buf, 0xCu);
  }
}

id sub_1003DC4F8(id a1)
{
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003DC5A0;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    if (qword_1005AAF88 != -1)
    {
      dispatch_once(&qword_1005AAF88, block);
    }

    a1 = qword_1005AAF80;
    v1 = block[6];
  }

  return a1;
}

void sub_1003DC5A0(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_10;
  }

  if (qword_1005AAF68 != -1)
  {
    dispatch_once(&qword_1005AAF68, &stru_100527C60);
  }

  if (byte_1005AAF50 == 1)
  {
    if (*(a1 + 32))
    {
      if (qword_1005AAF78 != -1)
      {
        dispatch_once(&qword_1005AAF78, &stru_100527C80);
      }

      v2 = qword_1005AAF70;
    }

    else
    {
      v2 = 0;
    }

    v3 = [v2 URLByAppendingPathComponent:@"Library"];
    v4 = qword_1005AAF80;
    qword_1005AAF80 = v3;
  }

  else
  {
LABEL_10:
    v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
    v5 = [v2 firstObject];
    v4 = [v5 stringByAppendingPathComponent:@"OnDemandResources"];

    v6 = [NSURL fileURLWithPath:v4];
    v7 = qword_1005AAF80;
    qword_1005AAF80 = v6;
  }

  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138543362;
    v10 = qword_1005AAF80;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "BaseURL for ODR content : %{public}@", &v9, 0xCu);
  }
}

void *sub_1003DC770(void *result, _BYTE *a2)
{
  if (result)
  {
    v3 = result;
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Going to verify/create all of our library paths.", buf, 2u);
    }

    v35[0] = NSFileOwnerAccountName;
    v35[1] = NSFileGroupOwnerAccountName;
    v36[0] = @"mobile";
    v36[1] = @"mobile";
    v5 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
    v6 = +[NSFileManager defaultManager];
    v7 = sub_1003DC4F8(v3);
    v8 = v7;
    if (a2)
    {
      v9 = [v7 path];
      *a2 = [v6 fileExistsAtPath:v9 isDirectory:0] ^ 1;
    }

    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Check/Creating the base library path.", buf, 2u);
    }

    v29 = 0;
    v11 = [v6 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:v5 error:&v29];
    v12 = v29;
    v13 = ASDLogHandleForCategory();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v32 = v8;
        _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Base path for ODR content : %{public}@", buf, 0xCu);
      }

      v15 = [v8 URLByAppendingPathComponent:@"Database/odr.sqlite"];
      v16 = [v15 path];
      v17 = v3[3];
      v3[3] = v16;

      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Check/Creating the asset packs path.", buf, 2u);
      }

      v19 = [v8 URLByAppendingPathComponent:@"AssetPacks"];
      v28 = v12;
      v20 = [v6 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:v5 error:&v28];
      v21 = v28;

      if (v20)
      {
        v22 = [v19 path];
        v23 = v3[4];
        v3[4] = v22;

        v24 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = v3[4];
          *buf = 138543362;
          v32 = v25;
          _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "AssetPacks path is: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v27 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v32 = v19;
          v33 = 2114;
          v34 = v21;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Unable to create or find the Asset Packs path [%{public}@]. Error: %{public}@", buf, 0x16u);
        }

        v24 = v21;
        v21 = 0;
      }

      v30 = v20;
      v12 = v21;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unable to create hase path for ODR content.", buf, 2u);
      }

      if (v12)
      {
        v26 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v32 = v12;
          _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Underlying error : %{public}@", buf, 0xCu);
        }
      }

      v30 = 0;
    }

    return v30;
  }

  return result;
}

uint64_t sub_1003DCD20(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 32);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 contentsOfDirectoryAtPath:v2 error:0];

  v5 = [v4 mutableCopy];
  [v5 removeObject:@"StoreKit"];
  v6 = [v5 count] != 0;

  return v6;
}

id sub_1003DCDD4(id a1)
{
  if (a1)
  {
    if (qword_1005AAF98 != -1)
    {
      dispatch_once(&qword_1005AAF98, &stru_100527CA0);
    }

    a1 = qword_1005AAF90;
    v1 = vars8;
  }

  return a1;
}

void sub_1003DCE30(id a1)
{
  v1 = objc_alloc_init(NSRecursiveLock);
  v2 = qword_1005AAF90;
  qword_1005AAF90 = v1;
}

void sub_1003DCE6C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = sub_1003DCDD4(a1);
    [v4 lock];

    v6[2]();
    v5 = sub_1003DCDD4(a1);
    [v5 unlock];

    v3 = v6;
  }
}

id *sub_1003DCF8C(id *a1, void *a2, void *a3, char a4, void *a5)
{
  v10 = a2;
  v11 = a5;
  if (a1)
  {
    v12 = [a1 init];
    a1 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 1, a2);
      a1[7] = a3;
      objc_storeStrong(a1 + 3, a5);
      v13 = sub_1003BBF50();
      v14 = a1[5];
      a1[5] = v13;

      v15 = sub_10000479C();
      v16 = a1[4];
      a1[4] = v15;

      v17 = [[_TtC9appstored6LogKey alloc] initWithCategory:@"AM"];
      v18 = a1[9];
      a1[9] = v17;

      *(a1 + 48) = a4;
    }
  }

  return a1;
}

id sub_1003DD080(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(AMSMutableBinaryPromise);
    v3 = [*(a1 + 24) integerForKey:@"min-keybag-repair-interval-seconds" defaultValue:0];
    v4 = *(a1 + 48);
    v5 = [*(a1 + 8) ams_DSID];
    v6 = [v5 longLongValue];
    os_unfair_lock_lock(&stru_1005AAFA4);
    v7 = +[NSProcessInfo processInfo];
    [v7 systemUptime];
    v9 = v8;

    if (v9 - qword_1005AAFA8 < v3 && (!v4 || (byte_1005AAFA0 & 1) != 0 || qword_1005AAFB0 == v6))
    {
      os_unfair_lock_unlock(&stru_1005AAFA4);

      v34 = v3;
      v33 = ASDErrorWithUserInfoAndFormat();
      if (v33)
      {
        v31 = v33;
        [v2 finishWithError:{v33, v3}];
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
      byte_1005AAFA0 = v4;
      qword_1005AAFA8 = v9;
      qword_1005AAFB0 = v6;
      os_unfair_lock_unlock(&stru_1005AAFA4);
    }

    v44[0] = 0;
    v10 = objc_alloc_init(NSMutableDictionary);
    if (*(a1 + 56) == 2)
    {
      v11 = 8;
    }

    else
    {
      v11 = 1;
    }

    v12 = sub_1002C6074(AMSKeybag, *(a1 + 8), v11, v44);
    if (v12)
    {
      [v10 setObject:v12 forKeyedSubscript:@"kbsync"];
      v13 = [*(a1 + 40) deviceGUID];
      v14 = [v13 uppercaseString];
      [v10 setObject:v14 forKeyedSubscript:@"guid"];

      v15 = [*(a1 + 40) deviceName];
      [v10 setObject:v15 forKeyedSubscript:@"machineName"];

      v16 = [*(a1 + 8) ams_DSID];
      [v10 setObject:v16 forKeyedSubscript:@"ownerDsid"];

      v17 = *(a1 + 56);
      v18 = @"family";
      if (v17 != 1)
      {
        v18 = 0;
      }

      if (v17 == 2)
      {
        v19 = @"refetch";
      }

      else
      {
        v19 = v18;
      }

      [v10 setObject:v19 forKeyedSubscript:{@"reason", v34}];
      v20 = sub_100346BD4(FairPlay, *(a1 + 8), 0, v44);
      [v10 setObject:v20 forKeyedSubscript:@"token"];

      v21 = v10;
    }

    else
    {
      v21 = 0;
    }

    v22 = v44[0];
    if (v21)
    {
      v23 = [AMSURLRequestEncoder alloc];
      v24 = [*(a1 + 24) amsBag];
      v25 = [v23 initWithBag:v24];

      [v25 setUrlKnownToBeTrusted:1];
      [v25 setAccount:*(a1 + 8)];
      [v25 setAnisetteType:2];
      [v25 setClientInfo:*(a1 + 32)];
      v26 = [*(a1 + 24) URLForKey:@"authorizeMachine"];
      v27 = [v25 requestWithMethod:4 URL:v26 parameters:v21];
      v39 = _NSConcreteStackBlock;
      v40 = 3221225472;
      v41 = sub_1003DD7DC;
      v42 = &unk_10051E090;
      v43 = a1;
      v28 = [v27 thenWithBlock:&v39];
    }

    else
    {
      v28 = [AMSPromise promiseWithError:v22];
    }

    v39 = _NSConcreteStackBlock;
    v40 = 3221225472;
    v41 = sub_1003DD8B0;
    v42 = &unk_10051E090;
    v43 = a1;
    v29 = [v28 thenWithBlock:&v39];

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1003DD590;
    v37[3] = &unk_100527CD0;
    v30 = v2;
    v38 = v30;
    [v29 addSuccessBlock:v37];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1003DD710;
    v35[3] = &unk_10051B5C0;
    v36 = v30;
    [v29 addErrorBlock:v35];

    v31 = 0;
    goto LABEL_22;
  }

  v2 = 0;
LABEL_23:

  return v2;
}

void sub_1003DD590(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 object];
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100237E9C(v6, @"failureType");
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      [v7 integerValue];
    }

    v11 = ASDErrorWithTitleAndMessage();
    [*(a1 + 32) finishWithError:v11];
  }

  else
  {
    v8 = sub_100237B38(v6, @"keybag");
    if (v8)
    {
      v9 = +[AMSKeybag sharedInstance];
      v12 = 0;
      [v9 importKeybagWithData:v8 error:&v12];
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }

    [*(a1 + 32) finishWithSuccess];
  }
}

void sub_1003DD71C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_1003DD080(a1);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003DD7C8;
    v5[3] = &unk_10051D1B0;
    v6 = v3;
    [v4 addFinishBlock:v5];
  }
}

id sub_1003DD7DC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setCachePolicy:1];
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = objc_getProperty(v5, v4, 64, 1);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 stringValue];
      [v3 setValue:v8 forHTTPHeaderField:@"X-FM-Dsid"];
    }

    v9 = *(a1 + 32);
    if (v9 && *(v9 + 56) == 2)
    {
      [v3 setTimeoutInterval:15.0];
    }
  }

  v10 = [AMSPromise promiseWithResult:v3];

  return v10;
}

id sub_1003DD8B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(RequestEnvironment);
  v6 = v4;
  if (v4)
  {
    objc_setProperty_atomic_copy(v4, v5, *(*(a1 + 32) + 32), 8);
    objc_setProperty_atomic_copy(v6, v7, *(*(a1 + 32) + 72), 16);
    v8 = objc_opt_new();
    objc_setProperty_atomic(v6, v9, v8, 32);
  }

  else
  {
    v8 = objc_opt_new();
  }

  v10 = sub_10024A6D0();
  v11 = sub_10024AB48(v10, v3, v6);

  return v11;
}

void sub_1003DDA74(id a1)
{
  v1 = objc_alloc_init(InstallCoordinationObserver);
  v2 = qword_1005AAFC0;
  qword_1005AAFC0 = v1;
}

uint64_t sub_1003DDD48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [*(a1 + 32) identity];
  v6 = [v5 bundleID];
  v7 = sub_1003E3ECC(v3, v4, v6);

  if ([v7 existsInDatabase])
  {
    v8 = sub_1002944D0(v7);
    if (v8 + 40 > 0x14 || ((1 << (v8 + 40)) & 0x100401) == 0)
    {
      v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
      v10 = sub_100402BD0(AppInstallInfo, v13);

      v14 = ASDLogHandleForCategory();
      v15 = v14;
      if (v10)
      {
        isa = v10[13].isa;
        if (isa - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
        {
          v17 = sub_100342C9C(*(a1 + 40));
          *v40 = 138543362;
          *&v40[4] = v17;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, isa, "Install/Install", " error=%{public, signpost.description:attribute}@ ", v40, 0xCu);
        }
      }

      v18 = *(a1 + 40);
      objc_opt_self();
      if (ASDErrorIsEqual())
      {
        IsEqual = 1;
      }

      else
      {
        IsEqual = ASDErrorIsEqual();
      }

      v20 = ASDLogHandleForCategory();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
      if (IsEqual)
      {
        if (v21)
        {
          v35 = sub_10029430C(v7);
          v36 = *(a1 + 40);
          *v40 = 138412546;
          *&v40[4] = v35;
          *&v40[12] = 2114;
          *&v40[14] = v36;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%@] Canceling installation after receiving reason: %{public}@", v40, 0x16u);
        }

        v22 = [v7 persistentID];
        v23 = +[BagService appstoredService];
        v24 = [v23 lastBag];
        sub_1002067C8(v3, v22, -30, v24);
      }

      else
      {
        if (v21)
        {
          v37 = sub_10029430C(v7);
          v38 = *(a1 + 40);
          *v40 = 138412546;
          *&v40[4] = v37;
          *&v40[12] = 2114;
          *&v40[14] = v38;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%@] Failing installation after receiving error: %{public}@", v40, 0x16u);
        }

        if (ASDErrorSearch())
        {
          v25 = *(a1 + 40);
          v26 = v7;
          v27 = v3;
          objc_opt_self();
          v28 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            v39 = sub_10029430C(v26);
            *v40 = 138412290;
            *&v40[4] = v39;
            _os_log_fault_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "[%@] SINF mismatch error has been detected", v40, 0xCu);
          }

          if (os_variant_has_internal_content())
          {
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SSHTTPArchiveShouldSaveToDiskDecompressedNotification", 0, 0, 1u);
            v30 = sub_1002CC188([PresentTapToRadarRequestFlow alloc], @"SINF Mismatch Error", @"An unexpected installation failure occurred.");
            *v40 = _NSConcreteStackBlock;
            *&v40[8] = 3221225472;
            *&v40[16] = sub_1003E13AC;
            v41 = &unk_100527D40;
            v42 = v25;
            v43 = v26;
            v44 = v27;
            if (v30)
            {
              objc_setProperty_atomic_copy(v30, v31, v40, 24);
            }

            sub_1002CC240(v30);
          }
        }

        sub_100204718(v3, [v7 persistentID], *(a1 + 40));
      }

      v11 = sub_100305C4C();
      v32 = [*(a1 + 32) identity];
      v33 = [v32 bundleID];
      sub_100307BB8(v11, v33);

      goto LABEL_31;
    }
  }

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) uniqueIdentifier];
    v12 = *(a1 + 40);
    *v40 = 138543618;
    *&v40[4] = v11;
    *&v40[12] = 2114;
    *&v40[14] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Notified that coordinator %{public}@ canceled with reason: %{public}@, but we don't have an active installation for it.", v40, 0x16u);
LABEL_31:
  }

  return 1;
}

uint64_t sub_1003DE584(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [*(a1 + 32) identity];
  v6 = [v5 bundleID];
  v7 = sub_1003E3ECC(v3, v4, v6);

  if ([v7 existsInDatabase])
  {
    v8 = sub_10029430C(v7);
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Completing installation after receiving notification", buf, 0xCu);
    }

    v10 = [*(a1 + 32) identity];
    v11 = [v10 bundleID];
    sub_1003D590C(AppDefaultsManager, v11, 0);

    if (*(a1 + 40))
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        *buf = 138412546;
        v33 = v8;
        v34 = 2114;
        v35 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Application was installed at: %{public}@", buf, 0x16u);
      }

      [v7 setValue:*(a1 + 40) forProperty:@"bundle_url"];
    }

    v30 = v8;
    v14 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
    v15 = sub_100402BD0(AppInstallInfo, v14);

    v31[0] = @"source_type";
    v31[1] = @"metrics_install_type";
    v31[2] = @"item_id";
    v16 = [NSArray arrayWithObjects:v31 count:3];
    v17 = [v7 getValuesForProperties:v16];

    v18 = [v17 objectForKeyedSubscript:@"source_type"];
    v19 = [v18 integerValue];

    v20 = [v17 objectForKeyedSubscript:@"item_id"];
    v21 = [v17 objectForKeyedSubscript:@"metrics_install_type"];
    v22 = [v21 unsignedCharValue];

    v23 = sub_100305C4C();
    v24 = [*(a1 + 32) identity];
    v25 = [v24 bundleID];
    sub_100306DD4(v23, 4, 0, 4, v25, v20, 1, v19, v22, 0);

    v26 = ASDLogHandleForCategory();
    v27 = v26;
    if (v15)
    {
      v28 = v15[13];
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v28, "Install/Install", "", buf, 2u);
      }
    }

    sub_1002046B8(v3, [v7 persistentID]);
  }

  return 1;
}

void sub_1003DE970(uint64_t a1)
{
  v4 = sub_100220330();
  v2 = [*(a1 + 32) identity];
  v3 = [v2 bundleID];
  sub_100220F1C(v4, v3);
}

void sub_1003DEB74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 uniqueIdentifier];
  v6 = [*(a1 + 32) identity];
  v7 = [v6 bundleID];
  v8 = sub_1003E3ECC(v4, v5, v7);

  if (![v8 existsInDatabase])
  {
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 32);
      *buf = 138543362;
      v28 = v19;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Ignoring coordinatorDidInstallPlaceholder for unknown coordinator: %{public}@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (sub_100340114(v8, @"has_background_assets_extension"))
  {
    v9 = sub_100294758(v8) == 2;
    v10 = sub_1002943F0(v8);
    v11 = [BAAppStoreEventDescriptor descriptorWithAppBundleIdentifier:v10 appBundleURL:*(a1 + 40) event:5 client:v9];

    [v11 setUserInitiated:sub_100294244(v8) ^ 1];
    [v11 setAutomaticInstall:sub_100294298(v8) != 0];
    v12 = objc_alloc_init(BAAppStoreClient);
    v26 = 0;
    v13 = [v12 performEventWithDescriptor:v11 error:&v26];
    v14 = v26;
    v15 = ASDLogHandleForCategory();
    v16 = v15;
    if (v13)
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:

        goto LABEL_11;
      }

      v17 = sub_10029430C(v8);
      *buf = 138412290;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Sent placeholder-ready descriptor to Background Assets", buf, 0xCu);
    }

    else
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v17 = sub_10029430C(v8);
      *buf = 138412546;
      v28 = v17;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%@] Failed to send placeholder-ready descriptor to Background Assets: %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

LABEL_11:
  if (sub_100340114(v8, @"default_browser"))
  {
    v20 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = sub_10029430C(v8);
      v22 = [*(a1 + 32) identity];
      v23 = [v22 bundleID];
      *buf = 138412546;
      v28 = v21;
      v29 = 2114;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%@] Swapping %{public}@ with Safari on the home screen as it is set to become the default", buf, 0x16u);
    }

    v18 = objc_alloc_init(SBSHomeScreenService);
    v24 = [*(a1 + 32) identity];
    v25 = [v24 bundleID];
    [v18 swapApplicationIconsInProminentPositionsWithBundleIdentifier:@"com.apple.mobilesafari" withApplicationIconsWithWithBundleIdentifier:v25];

LABEL_15:
  }
}

void sub_1003DF1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003DF1EC(uint64_t *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100248E14(a1[4]);
  v5 = [a1[4] uniqueIdentifier];
  v6 = [a1[4] identity];
  v7 = [v6 bundleID];
  if (v4 == 3)
  {
    sub_1003E42F8(v3, v5, v7);
  }

  else
  {
    sub_1003E3ECC(v3, v5, v7);
  }
  v8 = ;

  if ([v8 existsInDatabase])
  {
    *(*(a1[6] + 8) + 24) = 0;
    [v8 setValue:&off_100548640 forProperty:@"priority"];
    v9 = sub_1003402E8(v8, @"phase");
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_10029430C(v8);
      v25 = 138412546;
      v26 = v11;
      v27 = 2048;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Prioritization request found existing install with phase %ld", &v25, 0x16u);
    }

    if ((sub_1003DF610(a1[5], v8, v3, @"Prioritize Coordinator") & 1) == 0)
    {
      v12 = a1[5];
      v13 = v8;
      v14 = v3;
      if (v12 && sub_1003402E8(v13, @"source_type") == 1)
      {
        v15 = sub_100340328(v13, @"bundle_id");
        sub_10023836C(TelephonyUtility, v15);
        if (sub_1003402E8(v13, @"bootstrapped") != 2)
        {
          [(EvaluatorDownload *)v13 setValue:&__kCFBooleanFalse forProperty:@"supress_dialogs"];
          if (v14)
          {
            v23 = objc_getProperty(v14, v22, 24, 1);
            if (v23)
            {
              v23[17] |= 0x2000uLL;
            }
          }

          else
          {
            v23 = 0;
          }

          v17 = v13;
          goto LABEL_27;
        }
      }

      if (v9 == 10 || v9 == -15)
      {
        v16 = sub_1003402E8(v13, @"IFNULL(app_install.bootstrapped, 2)");
        v17 = sub_100227468();
        v14 = sub_100294554(v13);
        if (v16 != 2 || !sub_1003B6D5C(v17, v14))
        {
          goto LABEL_28;
        }

        if (sub_1003402E8(v13, @"automatic_type"))
        {
          v18 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = sub_10029430C(v13);
            v25 = 138412290;
            v26 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Removing automatic flag, prioritized by user", &v25, 0xCu);
          }

          sub_100294380(v13, 0);
        }

        v20 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = sub_10029430C(v13);
          v25 = 138412290;
          v26 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%@] Reviewing network policy", &v25, 0xCu);
        }

        v15 = sub_100396F9C(v13);
        sub_1003DFA2C(a1[5], [(EvaluatorDownload *)v13 persistentID], v15, a1[4]);
LABEL_27:

LABEL_28:
      }
    }
  }

  return 1;
}

uint64_t sub_1003DF610(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1 && sub_1003402E8(v7, @"restore_type"))
  {
    v10 = sub_1003402E8(v7, @"phase");
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = sub_10029430C(v7);
      v32 = 138412802;
      v33 = v12;
      v34 = 2048;
      v35 = v10;
      v36 = 2114;
      v37 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Prioritizing restore with phase: %ld with reason: %{public}@", &v32, 0x20u);
    }

    [v7 setValue:&off_100548640 forProperty:@"priority"];
    [v7 setValue:&off_1005486A0 forProperty:@"phase"];
    [v7 setValue:&__kCFBooleanFalse forProperty:@"supress_dialogs"];
    v13 = sub_100340244(v7, @"failure_error");
    v14 = v13 && ((ASDErrorIsEqual() & 1) != 0 || ASDErrorIsEqual());
    v16 = sub_1003402E8(v7, @"bootstrapped");
    v17 = sub_1003402E8(v7, @"restore_state");
    if (v16)
    {
      v15 = 0;
      if (((v17 != 2) & ~v14) != 0 || v16 != 1)
      {
        goto LABEL_27;
      }
    }

    v18 = sub_100227468();
    v19 = [v18 isConnected];

    v20 = ASDLogHandleForCategory();
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = sub_10029430C(v7);
        v32 = 138412546;
        v33 = v22;
        v34 = 2114;
        v35 = v9;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] Hydrating non-bootstrapped existing restore install with reason: %{public}@", &v32, 0x16u);
      }

      if (v8)
      {
        Property = objc_getProperty(v8, v23, 24, 1);
      }

      else
      {
        Property = 0;
      }

      v25 = Property;
      v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v7 persistentID]);
      sub_100256064(v25, v26);
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v31 = sub_10029430C(v7);
        v32 = 138412546;
        v33 = v31;
        v34 = 2114;
        v35 = v9;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%@] Unable to promote due to no network with reason: %{public}@ due to no network", &v32, 0x16u);
      }

      v27 = sub_100340328(v7, @"bundle_id");
      v25 = v27;
      if (!v27 || ![v27 length])
      {
        goto LABEL_26;
      }

      v26 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v25 allowPlaceholder:1 error:0];
      v28 = sub_10029430C(v7);
      v29 = [v28 description];
      sub_1003E18C4(v26, v29);
    }

LABEL_26:
    v15 = 1;
LABEL_27:

    goto LABEL_28;
  }

  v15 = 0;
LABEL_28:

  return v15;
}

void sub_1003DFA2C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = [*(a1 + 8) database];
    v10 = v9;
    if (v9)
    {
      dispatch_assert_queue_V2(*(v9 + 16));
    }

    v11 = qword_1005AAFB8;
    if (!qword_1005AAFB8)
    {
      v12 = objc_alloc_init(NSMutableSet);
      v13 = qword_1005AAFB8;
      qword_1005AAFB8 = v12;

      v11 = qword_1005AAFB8;
    }

    v14 = [NSNumber numberWithLongLong:a2];
    v15 = [v11 containsObject:v14];

    if ((v15 & 1) == 0)
    {
      v16 = qword_1005AAFB8;
      v17 = [NSNumber numberWithLongLong:a2];
      [v16 addObject:v17];

      v18 = [[_TtC9appstored23ReviewNetworkPolicyTask alloc] initWithDownload:v7];
      objc_initWeak(&location, v18);
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_1003E1FA4;
      v23 = &unk_100527DB8;
      objc_copyWeak(v27, &location);
      v24 = a1;
      v27[1] = a2;
      v25 = v7;
      v26 = v8;
      [(ReviewNetworkPolicyTask *)v18 setCompletionBlock:&v20];
      v19 = *(a1 + 24);
      if (v19)
      {
        [*(v19 + 8) addOperation:{v18, v20, v21, v22, v23, v24, v25}];
      }

      objc_destroyWeak(v27);
      objc_destroyWeak(&location);
    }
  }
}

void sub_1003DFC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003DFC20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_63;
  }

  v7 = +[_TtC9appstored9MadBridge shared];
  v8 = [v7 isThirdPartyRestore:v5];

  if (!v8)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [[LSApplicationRecord alloc] initForInstallMachineryWithBundleIdentifier:v5 placeholder:1 error:0];
    v13 = v12;
    if (v12)
    {
      if ([v12 isUpdate])
      {
        v14 = [v13 bundleIdentifier];
        if ([v14 length])
        {
          v86 = 0;
          v87 = &v86;
          v88 = 0x2020000000;
          LOBYTE(v89) = 0;
          v15 = *(a1 + 16);
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1003E17B0;
          *&buf[24] = &unk_10051EEF0;
          v93 = v14;
          v94 = &v86;
          dispatch_sync(v15, buf);
          v16 = *(v87 + 24);

          _Block_object_dispose(&v86, 8);
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v13 isPlaceholder];
        *buf = 138543874;
        *&buf[4] = v5;
        *&buf[12] = 1024;
        *&buf[14] = v18;
        *&buf[18] = 2114;
        *&buf[20] = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Prioritize for bundleID: %{public}@ placeholder: %{BOOL}d coordinator: %{public}@", buf, 0x1Cu);
      }

      v19 = sub_100227468();
      v20 = [v19 isConnected];

      if ((v20 & 1) == 0)
      {
        v41 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v5;
          _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Skipping rehydrate of %@ - no network available", buf, 0xCu);
        }

        sub_1003E18C4(v13, v5);
        goto LABEL_62;
      }

      v21 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v5 error:0];

      if (v21)
      {
        v71 = v5;
        v86 = 0;
        v87 = &v86;
        v88 = 0x3032000000;
        v89 = sub_1003E1C44;
        v90 = sub_1003E1C54;
        v91 = 0;
        v22 = sub_100289018();
        if ((v22 & 1) == 0)
        {
          sub_10023836C(TelephonyUtility, v71);
        }

        v23 = [[ASDSystemAppMetadata alloc] initWithBundleID:v71];
        [v23 setUserInitiated:1];
        v70 = v23;
        v24 = sub_100408B8C([AppInstall alloc], v23);
        sub_10023E000(v24, &off_100548658, @"coordinator_intent");
        if (v22)
        {
          sub_10023E000(v24, &off_100548670, @"bootstrapped");
        }

        v25 = (v87 + 5);
        obj = v87[5];
        v69 = sub_1003A07F4(v24);
        objc_storeStrong(v25, obj);
        if (!v69)
        {
          v46 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = sub_100408EB0(v24);
            v48 = v87[5];
            *buf = 138412546;
            *&buf[4] = v47;
            *&buf[12] = 2114;
            *&buf[14] = v48;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[%@] User initiated hydration request failed with error: %{public}@", buf, 0x16u);
          }

          goto LABEL_61;
        }

        v26 = (v87 + 5);
        v84 = v87[5];
        v68 = sub_1003A040C(v69, &v84);
        objc_storeStrong(v26, v84);
        if (!v68)
        {
          v51 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = sub_100408EB0(v24);
            v53 = v87[5];
            *buf = 138412546;
            *&buf[4] = v52;
            *&buf[12] = 2114;
            *&buf[14] = v53;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[%@] User initiated hydration request failed with error: %{public}@", buf, 0x16u);
          }

          goto LABEL_60;
        }

        v27 = (v87 + 5);
        v83 = v87[5];
        v67 = sub_1002FFD28(v24, 0, &v83);
        objc_storeStrong(v27, v83);
        if (v67)
        {
          v28 = (v87 + 5);
          v82 = v87[5];
          v66 = sub_1002FE824(v67, &v82);
          objc_storeStrong(v28, v82);
          if (!v66)
          {
            v57 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v58 = sub_100408EB0(v24);
              v59 = v87[5];
              *buf = 138412546;
              *&buf[4] = v58;
              *&buf[12] = 2114;
              *&buf[14] = v59;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "[%@] User initiated hydration request failed with error: %{public}@", buf, 0x16u);
            }

            goto LABEL_59;
          }

          v29 = (v87 + 5);
          v81 = v87[5];
          v30 = sub_10024A138(v68, v66, &v81);
          objc_storeStrong(v29, v81);
          if (v30)
          {
            v31 = [v68 uniqueIdentifier];
            sub_10023E000(v24, v31, @"coordinator_id");

            v77 = 0;
            v78 = &v77;
            v79 = 0x2020000000;
            v80 = 0;
            v32 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = sub_100408EB0(v24);
              *buf = 138412290;
              *&buf[4] = v33;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%@] Importing user initiated hydration request", buf, 0xCu);
            }

            v34 = *(a1 + 8);
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_1003E1C5C;
            *&buf[24] = &unk_100527D68;
            v35 = v24;
            v93 = v35;
            v94 = &v86;
            v96 = v22;
            v95 = &v77;
            [v34 modifyUsingTransaction:buf];
            if (*(v78 + 24) == 1)
            {
              v36 = dispatch_semaphore_create(0);
              v37 = sub_1002856D4();
              v38 = sub_100408EB0(v35);
              v39 = sub_10040908C(v35);
              v74[0] = _NSConcreteStackBlock;
              v74[1] = 3221225472;
              v74[2] = sub_1003E1F5C;
              v74[3] = &unk_1005216F0;
              v75 = v68;
              v40 = v36;
              v76 = v40;
              sub_1002878E0(v37, v38, v39, v74);

              dispatch_semaphore_wait(v40, 0xFFFFFFFFFFFFFFFFLL);
            }

            _Block_object_dispose(&v77, 8);
          }

          else
          {
            v60 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              v61 = sub_100408EB0(v24);
              v62 = v87[5];
              *buf = 138412546;
              *&buf[4] = v61;
              *&buf[12] = 2114;
              *&buf[14] = v62;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "[%@] User initiated hydration request failed with error: %{public}@", buf, 0x16u);
            }

            sub_100249ACC(v68, v87[5], 0);
          }
        }

        else
        {
          v54 = ASDLogHandleForCategory();
          v66 = v54;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = sub_100408EB0(v24);
            v56 = v87[5];
            *buf = 138412546;
            *&buf[4] = v55;
            *&buf[12] = 2114;
            *&buf[14] = v56;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%@] User initiated hydration request failed with error: %{public}@", buf, 0x16u);
          }
        }

LABEL_59:
        v51 = v67;
LABEL_60:

        v46 = v68;
LABEL_61:

        _Block_object_dispose(&v86, 8);
        goto LABEL_62;
      }

      if (!((v6 == 0) | (([v13 isUpdate] & 1) == 0) | v16 & 1))
      {
        v49 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Canceling coordinator for orphaned app update %{public}@", buf, 0xCu);
        }

        v50 = IXCreateUserPresentableError();
        [v6 cancelForReason:v50 client:1 error:0];

        goto LABEL_62;
      }

      v42 = [v13 isAppStoreVendable];
      v43 = ASDLogHandleForCategory();
      v44 = v43;
      if (v42)
      {
        v45 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        if ((v16 & 1) == 0)
        {
          if (v45)
          {
            *buf = 138543362;
            *&buf[4] = v5;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Attempting to cold promote %{public}@", buf, 0xCu);
          }

          v63 = sub_1002AEA18([RescueAbandonedPlaceholderOperation alloc], v5);
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_1003E1A50;
          v72[3] = &unk_10051B348;
          v73 = v5;
          sub_1002AEA94(v63, v72);
          v64 = sub_100284B90();
          v65 = v64;
          if (v64)
          {
            [*(v64 + 8) addOperation:v63];
          }

          goto LABEL_62;
        }

        if (v45)
        {
          *buf = 138543362;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Could not rescue placeholder - actively updating: %{public}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v5;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Could not rescue placeholder - not vendable: %{public}@", buf, 0xCu);
      }
    }

LABEL_62:

    objc_autoreleasePoolPop(v11);
    goto LABEL_63;
  }

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Forwarding prioritize call", buf, 0xCu);
  }

  v10 = +[_TtC9appstored9MadBridge shared];
  [v10 kickOffRestoreIfNeeded:v6];

LABEL_63:
}

void sub_1003E0888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E0A10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [*(a1 + 32) identity];
  v6 = [v5 bundleID];
  v7 = sub_1003E3ECC(v3, v4, v6);

  if ([v7 existsInDatabase])
  {
    v8 = [v7 persistentID];
    if (v3)
    {
      sub_100207D08(v3, v8, -10, 2uLL);
    }
  }

  else
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 138543362;
      v13 = v11;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Ignoring pausing request for unknown coordinator: %{public}@", &v12, 0xCu);
    }
  }

  return 1;
}

BOOL sub_1003E0C6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [*(a1 + 32) identity];
  v6 = [v5 bundleID];
  v7 = sub_1003E3ECC(v3, v4, v6);

  if ([(EvaluatorDownload *)v7 existsInDatabase])
  {
    v8 = sub_1003402E8(v7, @"IFNULL(app_install.phase, 10)");
    v9 = v8 == -10 || v8 == -15;
    if (v8 == -10 || v8 + 15 == 0)
    {
      v18 = sub_100294554(v7);
      if ((sub_1003DF610(*(a1 + 40), v7, v3, @"Resume Coordinator") & 1) == 0)
      {
        v11 = sub_100227468();
        v12 = sub_1003B6D5C(v11, v18);

        if (v12)
        {
          if (sub_1003402E8(v7, @"automatic_type"))
          {
            v13 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = sub_10029430C(v7);
              v29 = 138412290;
              v30 = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Removing automatic flag, resumed by user", &v29, 0xCu);
            }

            sub_100294380(v7, 0);
          }

          v15 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = sub_10029430C(v7);
            v29 = 138412290;
            v30 = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@] Reviewing network policy before resuming by user request", &v29, 0xCu);
          }

          v17 = sub_100396F9C(v7);
          sub_1003DFA2C(*(a1 + 40), [(EvaluatorDownload *)v7 persistentID], v17, *(a1 + 32));
        }

        else
        {
          v21 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = sub_10029430C(v7);
            v29 = 138412290;
            v30 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] Resuming by user request", &v29, 0xCu);
          }

          v23 = sub_1003649C8();
          v24 = sub_1002943F0(v7);
          sub_1003659FC(v23, v24);

          sub_100208224(v3, 10, [(EvaluatorDownload *)v7 persistentID]);
          if (v3)
          {
            v26 = objc_getProperty(v3, v25, 24, 1);
            v17 = v26;
            if (v26)
            {
              *(v26 + 17) |= 0x10000uLL;
            }
          }

          else
          {
            v17 = 0;
          }
        }
      }
    }

    else
    {
      v18 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = sub_10029430C(v7);
        v29 = 138412290;
        v30 = v20;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[%@] Ignoring duplicate resumption request", &v29, 0xCu);
      }
    }
  }

  else
  {
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 32);
      v29 = 138543362;
      v30 = v28;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Ignoring resumption request for unknown coordinator: %{public}@", &v29, 0xCu);
    }

    v9 = 1;
  }

  return v9;
}

id sub_1003E13AC(uint64_t a1)
{
  v2 = [[NSMutableString alloc] initWithString:@"\n\nInstallation details:"];
  [v2 appendFormat:@"\n\nError: %@", *(a1 + 32)];
  v3 = sub_100340154(*(a1 + 40), @"item_id");
  v4 = sub_100340154(*(a1 + 40), @"evid");
  v5 = sub_100340328(*(a1 + 40), @"bundle_id");
  v6 = sub_100340154(*(a1 + 40), @"account_id");
  [v2 appendFormat:@"\n\nStore DSID: %@\nStore Item ID: %@\nStore Version ID: %@\nBundle ID: %@", v6, v3, v4, v5];
  v7 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 iTunesMetadata];
    v10 = [v9 versionIdentifier];

    v11 = [v8 iTunesMetadata];
    v12 = [v11 variantID];

    [v2 appendFormat:@"\n\nInstalled Version ID: %llu\nInstalled Variant ID: %@", v10, v12];
  }

  v13 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"parent_id", [*(a1 + 40) persistentID]);
  v14 = [*(a1 + 48) connection];
  v15 = sub_1002D3F5C(AppPackageEntity, v14, v13);

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1003E162C;
  v19[3] = &unk_10051CA10;
  v20 = *(a1 + 48);
  v21 = v2;
  v16 = v2;
  [v15 enumeratePersistentIDsUsingBlock:v19];
  v17 = [v16 copy];

  return v17;
}

void sub_1003E162C(uint64_t a1, uint64_t a2)
{
  v4 = [AppPackageEntity alloc];
  v5 = [*(a1 + 32) connection];
  v14 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v6 = sub_100340154(v14, @"package_type");
  v7 = sub_100340418(v14, @"package_url");
  v8 = sub_100340328(v14, @"variant_id");
  v9 = sub_100340154(v14, @"blocked");
  v10 = [(SQLiteEntity *)v14 valueForProperty:@"sinf"];
  v11 = [v10 base64EncodedStringWithOptions:0];
  v12 = [(SQLiteEntity *)v14 valueForProperty:@"dp_info"];
  v13 = [v12 base64EncodedStringWithOptions:0];
  [*(a1 + 40) appendFormat:@"\n\nPackageType: %@\nPackageBlocked: %@\nPackageVariant: %@\nPackageURL: %@\nSINF: %@\nDPInfo: %@", v6, v9, v8, v7, v11, v13];
}

void sub_1003E17B0(uint64_t a1)
{
  v2 = sub_1003C27BC();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E1858;
  v5[3] = &unk_100521DC8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 readUsingSession:v5];
}

void sub_1003E1858(uint64_t a1, id a2)
{
  v3 = sub_1003E3D74(a2, *(a1 + 32));
  if ([v3 existsInDatabase])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_1003E18C4(void *a1, void *a2)
{
  v14 = a1;
  v3 = a2;
  v4 = [v14 localizedName];

  if (v4)
  {
    v5 = ASDLocalizedString();
    v6 = [v14 localizedName];
    v7 = [NSString stringWithFormat:v5, v6];
    v8 = ASDLocalizedString();
    v9 = [AMSDialogRequest requestWithTitle:v7 message:v8];

    [v9 setLogKey:v3];
    v10 = ASDLocalizedString();
    v11 = [AMSDialogAction actionWithTitle:v10];
    [v9 addButtonAction:v11];

    v12 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v9];
    v13 = [v12 present];
    [v13 waitUntilFinishedWithTimeout:60.0];
  }
}

void sub_1003E1A50(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not rescue placeholder: %{public}@ due to error: %{public}@", &v8, 0x16u);
    }
  }
}

void sub_1003E1B28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = ASDLogHandleForCategory();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received app may be uninstalled notification for bundleID: %{public}@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v7) = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Received app may be uninstalled notification but no bundleID was included", &v7, 2u);
  }

  v6 = sub_1002B5560();
  sub_1002B5CC0(v6, *(a1 + 32), 8);
}

uint64_t sub_1003E1C44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1003E1C5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v27 = 0u;
  v28 = 0u;
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  v22 = v9;
  if (v3)
  {
    sub_100207374(v3, v5, 0, 1, &v22, &v27);
    v7 = v22;
  }

  objc_storeStrong(v8, v7);
  switch(*(&v28 + 1))
  {
    case 2:
      v16 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = sub_100408EB0(*(a1 + 32));
        *buf = 138412290;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Duplicate exists - requesting bootstrap", buf, 0xCu);
      }

      if (v4)
      {
        v19 = objc_getProperty(v4, v18, 24, 1);
        v11 = v19;
        if (v19)
        {
          v19[17].isa = (v19[17].isa | 0x20);
        }
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_22;
    case 1:
      if (*(a1 + 56) == 1)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        v11 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
LABEL_22:

          break;
        }

        v14 = sub_100408EB0(*(a1 + 32));
        *buf = 138412290;
        v24 = v14;
        v15 = "[%@] Import succeeded - Waiting for distributor";
      }

      else
      {
        if (v4)
        {
          v20 = objc_getProperty(v4, v10, 24, 1);
          if (v20)
          {
            v20[17] |= 0x20uLL;
          }
        }

        else
        {
          v20 = 0;
        }

        v11 = ASDLogHandleForCategory();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_22;
        }

        v14 = sub_100408EB0(*(a1 + 32));
        *buf = 138412290;
        v24 = v14;
        v15 = "[%@] Import succeeded - requesting bootstrap";
      }

      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);

      goto LABEL_22;
    case 0:
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = sub_100408EB0(*(a1 + 32));
        v13 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412546;
        v24 = v12;
        v25 = 2114;
        v26 = v13;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "[%@] Import failed with error: %{public}@", buf, 0x16u);
      }

      goto LABEL_22;
  }

  return 1;
}

intptr_t sub_1003E1F5C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    sub_100249ACC(*(a1 + 32), a3, 0);
  }

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

void sub_1003E1FA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = *(*(a1 + 32) + 8);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003E2084;
  v5[3] = &unk_100527D90;
  v10 = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = WeakRetained;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v4 = WeakRetained;
  [v3 modifyUsingTransaction:v5];
}

BOOL sub_1003E2084(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1005AAFB8;
  v5 = [NSNumber numberWithLongLong:*(a1 + 64)];
  [v4 removeObject:v5];

  if (![qword_1005AAFB8 count])
  {
    v6 = qword_1005AAFB8;
    qword_1005AAFB8 = 0;
  }

  v7 = [AppInstallEntity alloc];
  v8 = *(a1 + 64);
  v9 = [v3 connection];
  v10 = [(SQLiteEntity *)v7 initWithPersistentID:v8 onConnection:v9];

  v11 = sub_1003402E8(v10, @"IFNULL(app_install.phase, 10)");
  if (v11 >= 11)
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [*(a1 + 32) logKey];
      *buf = 138412290;
      v34 = v16;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%@] Stopping because the installation is no longer paused", buf, 0xCu);
    }
  }

  else
  {
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_1003E2440;
    v30 = &unk_10051FD10;
    v31 = *(a1 + 40);
    sub_10029591C(v10, &v27);
    if ([*(a1 + 40) accessWasUnblocked])
    {
      sub_100208224(v3, 10, [(SQLiteEntity *)v10 persistentID]);
      if (v3)
      {
        v13 = objc_getProperty(v3, v12, 24, 1);
        v14 = v13;
        if (v13)
        {
          *(v13 + 17) |= 0x10000uLL;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v26 = [*(a1 + 32) logKey];
        *buf = 138412290;
        v34 = v26;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@] Pausing after cellular network access was denied", buf, 0xCu);
      }

      [(SQLiteEntity *)v10 setValue:&off_100548688 forProperty:@"phase"];
      v19 = *(a1 + 48);
      v18 = *(a1 + 56);
      v20 = [*(a1 + 32) logKey];
      if (v19)
      {
        v32 = 0;
        v21 = [v18 pauseWithError:&v32];
        v22 = v32;
        if ((v21 & 1) == 0)
        {
          v23 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v34 = v20;
            v35 = 2114;
            v36 = v22;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%@] Unable to re-pause after cellular access declined: %{public}@", buf, 0x16u);
          }
        }
      }

      v14 = sub_1003649C8();
      v24 = sub_1002943F0(v10);
      sub_100365640(v14, v24);
    }

    v15 = v31;
  }

  return v11 < 11;
}

void sub_1003E2440(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_1003B6764(v4, [v3 constrainedResult]);
  sub_1003B6820(v4, [*(a1 + 32) expensiveResult]);
  sub_1003B66A8(v4, [*(a1 + 32) interfaceMask]);
}

BOOL sub_1003E2538()
{
  objc_opt_self();
  if (qword_1005AAFD8 != -1)
  {
    dispatch_once(&qword_1005AAFD8, &stru_100527DD8);
  }

  return dword_1005AAFD0 != 0;
}

void sub_1003E2588(id a1)
{
  v3 = 4;
  if (sysctlbyname("kern.hv_vmm_present", &dword_1005AAFD0, &v3, 0, 0))
  {
    v1 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      v2 = *__error();
      *buf = 67109120;
      v5 = v2;
      _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "sysctlbyname for kern.hv_vmm_present failed with error: %{darwin.errno}d", buf, 8u);
    }
  }
}

BOOL sub_1003E2664(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  if (v6)
  {
    v9 = MobileInstallationCheckCapabilitiesMatch();
    if (v9)
    {
      v10 = v9;
      Value = CFDictionaryGetValue(v9, @"CapabilitiesMatch");
      if (Value)
      {
        v12 = CFBooleanGetValue(Value) != 0;
      }

      else
      {
        v12 = 0;
      }

      v13 = CFDictionaryGetValue(v10, @"MismatchedCapabilities");
      if (v13)
      {
        v14 = v13;
        v15 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v18 = 138412802;
          v19 = objc_opt_class();
          v20 = 2114;
          v21 = v8;
          v22 = 2114;
          v23 = v14;
          v17 = v19;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%@]: [%{public}@] Mismatched capabilites: %{public}@", &v18, 0x20u);
        }
      }

      CFRelease(v10);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

id sub_1003E2800()
{
  objc_opt_self();
  if (qword_1005AAFE8 != -1)
  {
    dispatch_once(&qword_1005AAFE8, &stru_100527DF8);
  }

  v0 = qword_1005AAFE0;

  return v0;
}

void sub_1003E2858(id a1)
{
  v1 = objc_alloc_init(ThermalPressureMonitor);
  v2 = qword_1005AAFE0;
  qword_1005AAFE0 = v1;
}

void sub_1003E299C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 16) = -1;
    objc_initWeak(&location, v1);
    v2 = *(v1 + 8);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003E2CB4;
    v5[3] = &unk_10051DDD0;
    objc_copyWeak(&v6, &location);
    v3 = notify_register_dispatch(kOSThermalNotificationPressureLevelName, (v1 + 16), v2, v5);
    if (v3)
    {
      v4 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v9 = v3;
        _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[Thermal] Registration for thermal pressure notification failed: %u", buf, 8u);
      }
    }

    else
    {
      sub_1003E2D70(v1);
    }

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void sub_1003E2B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E2B88(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1003E2C40;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1003E2C54(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"ThermalPressureStateDidChangeNotification" object:*(a1 + 32)];
}

void sub_1003E2CB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    sub_1003E2D70(WeakRetained);
    v2 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003E2C54;
    block[3] = &unk_10051AF98;
    block[4] = v3;
    dispatch_async(v2, block);

    WeakRetained = v3;
  }
}

void sub_1003E2D70(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != -1)
  {
    state64 = 0;
    if (notify_get_state(v2, &state64))
    {
      v3 = 0;
    }

    else
    {
      v3 = state64 > 0x13;
    }

    v4 = v3;
    *(a1 + 20) = v4;
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 20))
      {
        v6 = @"elevated";
      }

      else
      {
        v6 = @"nominal";
      }

      *buf = 138412546;
      v9 = v6;
      v10 = 2048;
      v11 = state64;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Thermal] Thermal pressure is now %@ (%llu)", buf, 0x16u);
    }
  }
}

id sub_1003E2E80(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v8 = 0;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v8];

  v6 = v8;
  if (a3 && !v5)
  {
    v6 = v6;
    *a3 = v6;
  }

  return v5;
}

id sub_1003E2F24(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_alloc_init(MIStoreMetadata);
  v4 = v2;
  v6 = v4;
  if (v3)
  {
    if (v4)
    {
      v7 = objc_getProperty(v4, v5, 48, 1);
      [v3 setArtistName:v7];

      Property = objc_getProperty(v6, v8, 232, 1);
    }

    else
    {
      [v3 setArtistName:0];
      Property = 0;
    }

    v10 = Property;
    [v3 setKind:v10];

    if (v6)
    {
      v12 = objc_getProperty(v6, v11, 216, 1);
      [v3 setItemID:v12];

      v14 = objc_getProperty(v6, v13, 224, 1);
    }

    else
    {
      [v3 setItemID:0];
      v14 = 0;
    }

    v15 = v14;
    [v3 setItemName:v15];

    if (v6)
    {
      v17 = objc_getProperty(v6, v16, 88, 1);
      [v3 setShortItemName:v17];

      v19 = objc_getProperty(v6, v18, 144, 1);
    }

    else
    {
      [v3 setShortItemName:0];
      v19 = 0;
    }

    v20 = v19;
    [v3 setSoftwareVersionExternalIdentifier:v20];

    if (v6)
    {
      v22 = objc_getProperty(v6, v21, 96, 1);
      [v3 setSoftwareVersionBundleID:v22];

      [v3 setIsB2BCustomApp:v6[15] & 1];
      v24 = objc_getProperty(v6, v23, 104, 1);
    }

    else
    {
      [v3 setSoftwareVersionBundleID:0];
      [v3 setIsB2BCustomApp:0];
      v24 = 0;
    }

    v25 = v24;
    [v3 setBundleShortVersionString:v25];

    if (v6)
    {
      v27 = objc_getProperty(v6, v26, 112, 1);
      [v3 setBundleVersion:v27];

      v29 = objc_getProperty(v6, v28, 176, 1);
    }

    else
    {
      [v3 setBundleVersion:0];
      v29 = 0;
    }

    v30 = v29;
    [v3 setHasOrEverHasHadIAP:v30];

    if (v6)
    {
      [v3 setHasMessagesExtension:v6[11] & 1];
      [v3 setLaunchProhibited:v6[18] & 1];
      v32 = objc_getProperty(v6, v31, 160, 1);
    }

    else
    {
      [v3 setHasMessagesExtension:0];
      [v3 setLaunchProhibited:0];
      v32 = 0;
    }

    v33 = v32;
    [v3 setGenre:v33];

    if (v6)
    {
      v35 = objc_getProperty(v6, v34, 168, 1);
      [v3 setGenreID:v35];

      v37 = objc_getProperty(v6, v36, 328, 1);
    }

    else
    {
      [v3 setGenreID:0];
      v37 = 0;
    }

    v38 = v37;
    v39 = sub_10036FDEC(v38, &stru_100527E40);
    [v3 setSubGenres:v39];

    if (v6)
    {
      v41 = objc_getProperty(v6, v40, 280, 1);
      [v3 setRatingLabel:v41];

      v43 = objc_getProperty(v6, v42, 288, 1);
    }

    else
    {
      [v3 setRatingLabel:0];
      v43 = 0;
    }

    v44 = v43;
    [v3 setRatingRank:v44];

    if (v6)
    {
      [v3 setGameCenterEnabled:v6[9] & 1];
      [v3 setGameCenterEverEnabled:v6[10] & 1];
      [v3 setIsAutoDownload:v6[8] & 1];
      v46 = objc_getProperty(v6, v45, 256, 1);
    }

    else
    {
      [v3 setGameCenterEnabled:0];
      [v3 setGameCenterEverEnabled:0];
      [v3 setIsAutoDownload:0];
      v46 = 0;
    }

    v47 = v46;
    [v3 setPurchaseDate:v47];

    if (v6)
    {
      if (v6[19])
      {
        v48 = 1;
      }

      else
      {
        v48 = v6[17];
      }

      [v3 setPurchasedRedownload:v48 & 1];
      v50 = objc_getProperty(v6, v49, 264, 1);
    }

    else
    {
      [v3 setPurchasedRedownload:0];
      v50 = 0;
    }

    v51 = v50;
    [v3 setRedownloadParams:v51];

    if (v6)
    {
      v53 = objc_getProperty(v6, v52, 272, 1);
      [v3 setReleaseDate:v53];

      v55 = objc_getProperty(v6, v54, 304, 1);
    }

    else
    {
      [v3 setReleaseDate:0];
      v55 = 0;
    }

    v56 = v55;
    v57 = [v56 longLongValue];

    v58 = [NSNumber numberWithUnsignedLongLong:v57];
    [v3 setStorefront:v58];

    v59 = +[BagService appstoredService];
    v60 = [v59 lastCountryCodeForStorefront:v57];
    [v3 setStorefrontCountryCode:v60];

    if (v6)
    {
      v62 = objc_getProperty(v6, v61, 192, 1);
      [v3 setIAdConversionDate:v62];

      v64 = objc_getProperty(v6, v63, 200, 1);
    }

    else
    {
      [v3 setIAdConversionDate:0];
      v64 = 0;
    }

    v65 = v64;
    [v3 setIAdImpressionDate:v65];

    if (v6)
    {
      v67 = objc_getProperty(v6, v66, 184, 1);
      v68 = [v67 stringValue];
      [v3 setIAdAttribution:v68];

      v70 = objc_getProperty(v6, v69, 320, 1);
    }

    else
    {
      v79 = [0 stringValue];
      [v3 setIAdAttribution:v79];

      v70 = 0;
    }

    v71 = v70;
    [v3 setStoreCohort:v71];

    if (v6)
    {
      v73 = objc_getProperty(v6, v72, 344, 1);
      [v3 setNameTranscriptions:v73];

      v75 = objc_getProperty(v6, v74, 80, 1);
    }

    else
    {
      [v3 setNameTranscriptions:0];
      v75 = 0;
    }

    v76 = v75;
    v77 = [v76 unsignedLongLongValue] != 0;

    sub_1003E36D4(v3, v77);
  }

  return v3;
}

id sub_1003E364C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v6 = 0;
    v3 = [NSKeyedArchiver archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v6];
    v4 = v6;
    if (a2 && !v3)
    {
      v4 = v4;
      *a2 = v4;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1003E36D4(void *a1, int a2)
{
  if (a1)
  {
    v4 = [a1 distributorInfo];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MIStoreMetadataDistributor);
    }

    v7 = v6;

    if (a2)
    {
      v8 = @"com.apple.TestFlight";
    }

    else
    {
      v8 = @"com.apple.AppStore";
    }

    [v7 setDistributorID:v8];
    v9 = [LSApplicationRecord alloc];
    v10 = [v7 distributorID];
    v11 = [v9 initWithBundleIdentifier:v10 allowPlaceholder:0 error:0];

    v12 = [v11 localizedName];
    v13 = v12;
    if (v12)
    {
      v16 = &stru_100529300;
      v17 = v12;
      v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      [v7 setLocalizedDistributorName:v14];
    }

    v15 = ASDLocalizedString();
    [v7 setDeveloperName:v15];

    [a1 setDistributorInfo:v7];
  }
}

void sub_1003E3854(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 distributorInfo];

    if (!v4)
    {
      v5 = objc_alloc_init(MIStoreMetadataDistributor);
      [a1 setDistributorInfo:v5];
    }

    v6 = [a1 distributorInfo];
    [v6 setBetaTesterType:a2];
  }
}

void sub_1003E38F0(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [v3 username];
    [a1 setAppleID:v4];

    v5 = [v3 ams_DSID];
    [a1 setDSPersonID:v5];

    v6 = [v3 ams_altDSID];

    [a1 setAltDSID:v6];
  }
}

void sub_1003E39A0(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [v3 clientInfo];
    v5 = [v4 bundleIdentifier];
    [a1 setSourceApp:v5];

    v6 = [v3 referrerName];
    [a1 setReferrerApp:v6];

    v7 = [v3 referrerURL];

    [a1 setReferrerURL:v7];
  }
}

void sub_1003E3A60(void *a1, void *a2, int a3)
{
  v8 = a2;
  if (a1)
  {
    v5 = sub_1002BA9FC(v8);
    [a1 setDownloaderID:v5];

    v6 = sub_1002BAB58(v8);
    [a1 setFamilyID:v6];

    v7 = sub_1002BABDC(v8);
    [a1 setPurchaserID:v7];

    if (a3)
    {
      [a1 setDeviceBasedVPP:sub_1002BAB8C(v8)];
    }
  }
}

id sub_1003E3B2C(id a1, StoreItemSubGenre *a2)
{
  v2 = a2;
  v4 = [MIStoreMetadataSubGenre alloc];
  if (v2)
  {
    v5 = objc_getProperty(v2, v3, 8, 1);
    Property = objc_getProperty(v2, v6, 16, 1);
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  v8 = Property;

  v9 = [v4 initWithGenre:v5 genreID:v8];

  return v9;
}

id sub_1003E3BE4(id a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  if (a1)
  {
    v15 = 0;
    v7 = [a1 dictionaryRepresentation];
    v8 = [NSPropertyListSerialization dataWithPropertyList:v7 format:200 options:0 error:&v15];

    v9 = v15;
    if (v8)
    {
      v10 = [[IXApplicationIdentity alloc] initWithBundleIdentifier:v6];
      v14 = v9;
      a1 = [IXAppInstallCoordinator updateiTunesMetadata:a1 forAppWithIdentity:v10 error:&v14];
      v11 = v14;

      v9 = v11;
      if (!a4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a1 = 0;
      if (!a4)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    if ((a1 & 1) == 0)
    {
      v12 = v9;
      *a4 = v9;
    }

    goto LABEL_8;
  }

LABEL_9:

  return a1;
}

id sub_1003E3D74(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"phase" values:&off_100549680];
    v10[0] = v4;
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];

    v10[1] = v5;
    v6 = [NSArray arrayWithObjects:v10 count:2];
    v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

    v8 = [v2 connection];
    v2 = sub_1002D3DF0(AppInstallEntity, v8, v7);
  }

  return v2;
}

id sub_1003E3ECC(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = a3;
    v5 = a2;
    v17 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"phase" values:&off_100549698];
    v21[0] = v17;
    v6 = [SQLiteComparisonPredicate predicateWithProperty:@"coordinator_id" equalToValue:v5];
    v20[0] = v6;
    v7 = [SQLiteNullPredicate isNullPredicateWithProperty:@"coordinator_id"];
    v19[0] = v7;
    v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v4];

    v19[1] = v8;
    v9 = [NSArray arrayWithObjects:v19 count:2];
    v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
    v20[1] = v10;
    v11 = [NSArray arrayWithObjects:v20 count:2];
    v12 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v11];
    v21[1] = v12;
    v13 = [NSArray arrayWithObjects:v21 count:2];
    v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];

    v15 = sub_1003E40F8(a1, v14, v5);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_1003E40F8(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [a1 connection];
  v8 = sub_1002D3DF0(AppInstallEntity, v7, v6);

  if (v8)
  {
    v9 = sub_100294460(v8);
    if (v9 && (v10 = v9, sub_100294460(v8), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqual:v5], v11, v10, (v12 & 1) == 0))
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v16 = sub_100294460(v8);
        v17 = 138543874;
        v18 = v8;
        v19 = 2114;
        v20 = v16;
        v21 = 2114;
        v22 = v5;
        _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Matched an installation (%{public}@) with a coordinator ID (%{public}@) that differs from the expected coordinator ID (%{public}@).", &v17, 0x20u);
      }
    }

    else
    {
      v13 = sub_100294460(v8);

      if (v13)
      {
        goto LABEL_10;
      }

      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v17 = 138543618;
        v18 = v8;
        v19 = 2114;
        v20 = v5;
        _os_log_fault_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Matched an installation (%{public}@) that lacks a coordinator ID despite expecting a particular coordinator ID (%{public}@).", &v17, 0x16u);
      }
    }
  }

LABEL_10:

  return v8;
}

id sub_1003E42F8(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = a3;
    v5 = a2;
    v17 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"phase" values:&off_1005496B0];
    v21[0] = v17;
    v6 = [SQLiteComparisonPredicate predicateWithProperty:@"coordinator_id" equalToValue:v5];
    v20[0] = v6;
    v7 = [SQLiteNullPredicate isNullPredicateWithProperty:@"coordinator_id"];
    v19[0] = v7;
    v8 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v4];

    v19[1] = v8;
    v9 = [NSArray arrayWithObjects:v19 count:2];
    v10 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v9];
    v20[1] = v10;
    v11 = [NSArray arrayWithObjects:v20 count:2];
    v12 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v11];
    v21[1] = v12;
    v13 = [NSArray arrayWithObjects:v21 count:2];
    v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];

    v15 = sub_1003E40F8(a1, v14, v5);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_1003E4524(id a1)
{
  v1 = a1;
  if (a1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_1003E46B4;
    v11 = sub_1003E46C4;
    v12 = objc_opt_new();
    v2 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"phase" values:&off_1005496C8];
    v3 = [v1 connection];
    v4 = sub_1002D3F5C(AppInstallEntity, v3, v2);

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003E46CC;
    v6[3] = &unk_10051CCA0;
    v6[4] = v1;
    v6[5] = &v7;
    [v4 enumeratePersistentIDsUsingBlock:v6];
    v1 = [v8[5] allObjects];

    _Block_object_dispose(&v7, 8);
  }

  return v1;
}

void sub_1003E4698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E46B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003E46CC(uint64_t a1, uint64_t a2)
{
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"parent_id" equalToLongLong:a2];
  v5 = [*(a1 + 32) connection];
  v6 = sub_1002D3F5C(AppPackageEntity, v5, v4);

  v7 = [AppInstallEntity alloc];
  v8 = [*(a1 + 32) connection];
  v9 = [(SQLiteEntity *)v7 initWithPersistentID:a2 onConnection:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003E480C;
  v12[3] = &unk_100523478;
  v10 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v9;
  v14 = v10;
  v11 = v9;
  [v6 enumeratePersistentIDsUsingBlock:v12];
}

void sub_1003E480C(uint64_t a1, uint64_t a2)
{
  v4 = [AppPackageEntity alloc];
  v5 = [*(a1 + 32) connection];
  v13 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v6 = sub_100340418(v13, @"package_url");
  if (v6)
  {
    v7 = v6;
    v8 = sub_100258F88(v6);

    [(SQLiteEntity *)v13 setValue:v8 forProperty:@"package_url"];
    v9 = sub_1002943F0(*(a1 + 40));

    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = *(*(*(a1 + 48) + 8) + 40);
      v12 = sub_1002943F0(v10);
      [v11 addObject:v12];
    }
  }

  else
  {
    v8 = 0;
  }
}

uint64_t sub_1003E4918(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = [a1 connection];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E49F8;
  v4[3] = &unk_10051D518;
  v4[4] = &v5;
  sub_10022C3C4(v1, @"SELECT SUM(ap.bytes_total) FROM app_install AS ai LEFT JOIN app_package AS ap ON ai.pid = ap.parent_id WHERE ai.restore_type = 1 AND ap.package_type = 0", v4);

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1003E49E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003E49F8(uint64_t a1, uint64_t a2)
{
  result = sub_1002149DC(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

id sub_1003E4A78()
{
  objc_opt_self();
  if (qword_1005AAFF0 != -1)
  {
    dispatch_once(&qword_1005AAFF0, &stru_100527E60);
  }

  v0 = qword_1005AAFF8;

  return v0;
}

void sub_1003E4AD0(id a1)
{
  v1 = objc_alloc_init(DiagnosticClock);
  v2 = qword_1005AAFF8;
  qword_1005AAFF8 = v1;
}

void sub_1003E4C84(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 16) = sub_1003D47A8();
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 16);
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Diagnostic clock offset updated: %.0f", &v4, 0xCu);
    }
  }
}

id *sub_1003E4DB4(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = TestFlightServiceHost;
    a1 = objc_msgSendSuper2(&v22, "init");
    if (a1)
    {
      v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v6 = dispatch_queue_create("com.apple.appstored.TestFlightServiceHost.dispatch", v5);
      v7 = a1[3];
      a1[3] = v6;

      objc_storeStrong(a1 + 2, a2);
      a1[5] = 0x404E000000000000;
      v8 = [ASDExtensionMonitor alloc];
      v23[0] = NSExtensionPointName;
      v23[1] = NSExtensionIdentifierName;
      v24[0] = ASDTestFlightServiceExtensionPointIdentifier;
      v24[1] = @"com.apple.TestFlight.ServiceExtension";
      v23[2] = @"ENTITLEMENT:com.apple.private.appstored";
      v24[2] = &off_1005496E0;
      v9 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];
      v10 = [v8 initWithAttributes:v9];
      v11 = a1[1];
      a1[1] = v10;

      objc_initWeak(&location, a1);
      v12 = a1[3];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1003E506C;
      v18[3] = &unk_100527E88;
      objc_copyWeak(&v20, &location);
      v13 = v12;
      v19 = v13;
      [a1[1] setUpdateHandler:v18];
      v14 = a1[3];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003E53B4;
      block[3] = &unk_10051AF98;
      a1 = a1;
      v17 = a1;
      dispatch_async(v14, block);

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void sub_1003E5048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003E506C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1003E5130;
    v7[3] = &unk_10051B570;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_1003E5130(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) firstObject];
  sub_1003E5184(v1, v2);
}

void sub_1003E5184(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1 && *(a1 + 32) != v4)
  {
    objc_storeStrong((a1 + 32), a2);
    v6 = [*(a1 + 32) testFlightServiceExtensionCustomServiceTime];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      if (v8 < 0.0)
      {
        v8 = 0.0;
      }

      v9 = fmin(v8, 300.0);
    }

    else
    {
      v9 = 60.0;
    }

    *(a1 + 40) = v9;
    v10 = [*(a1 + 32) identifier];
    v11 = [v10 length];

    v12 = ASDLogHandleForCategory();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        v14 = [*(a1 + 32) identifier];
        v15 = [NSNumber numberWithDouble:*(a1 + 40)];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "TestFlight service extension: %{public}@ with service time: %{public}@ seconds", buf, 0x16u);
      }
    }

    else if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "TestFlight service extension: none", buf, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v17 = *(a1 + 32) != 0;
      v18 = *(a1 + 16);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1003E763C;
      v19[3] = &unk_10051B830;
      v19[4] = a1;
      v19[5] = v17;
      dispatch_async(v18, v19);
    }
  }
}

void sub_1003E53B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(v1 + 8) extensions];
  v2 = [v3 firstObject];
  sub_1003E5184(v1, v2);
}

uint64_t sub_1003E541C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003E54D4;
  v4[3] = &unk_10051B638;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_async_and_wait(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sub_1003E54D4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v1 = *(v1 + 32) != 0;
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

uint64_t sub_1003E54F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003E5510(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "notifyOfReceivedPushToken", buf, 2u);
    }

    *buf = 0;
    v17 = buf;
    v18 = 0x2810000000;
    v19 = &unk_10049798A;
    v20 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1003E56A8;
    v11[3] = &unk_100527ED8;
    v12 = v5;
    v15 = buf;
    v13 = a1;
    v14 = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003E5914;
    v8[3] = &unk_100527F00;
    v10 = buf;
    v8[4] = a1;
    v9 = v14;
    sub_1003E59F8(a1, v11, v8);

    _Block_object_dispose(buf, 8);
  }
}

void sub_1003E56A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, v6);
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003E57C0;
  v10[3] = &unk_100527EB0;
  objc_copyWeak(&v12, &location);
  v9 = *(a1 + 48);
  v8 = v9;
  v11 = v9;
  v10[4] = *(a1 + 40);
  [v5 didReceivePushToken:v7 reply:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_1003E57A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1003E57C0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained endRequest];

  if ((atomic_exchange((*(*(a1 + 48) + 8) + 32), 1u) & 1) == 0)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(*(a1 + 32) + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003E58B0;
      block[3] = &unk_100523EA0;
      v11 = v7;
      v12 = a2;
      v10 = v5;
      dispatch_async(v8, block);
    }
  }
}

void sub_1003E58B0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = ASDErrorWithSafeUserInfo();
  (*(v2 + 16))(v2, v1, v3);
}

void sub_1003E5914(void *a1, void *a2)
{
  v3 = a2;
  if ((atomic_exchange((*(a1[6] + 8) + 32), 1u) & 1) == 0)
  {
    v4 = a1[5];
    if (v4)
    {
      v5 = *(a1[4] + 16);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1003E59E0;
      v6[3] = &unk_10051B790;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_1003E59F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003E76A4;
  block[3] = &unk_10051B320;
  block[4] = a1;
  v8 = v5;
  v11 = v8;
  v9 = v6;
  v12 = v9;
  dispatch_async(v7, block);
}

void sub_1003E5AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "notifyOfReceivedPushMessages", buf, 2u);
    }

    *buf = 0;
    v17 = buf;
    v18 = 0x2810000000;
    v19 = &unk_10049798A;
    v20 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1003E5C5C;
    v11[3] = &unk_100527ED8;
    v12 = v5;
    v15 = buf;
    v13 = a1;
    v14 = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003E5EC8;
    v8[3] = &unk_100527F00;
    v10 = buf;
    v8[4] = a1;
    v9 = v14;
    sub_1003E59F8(a1, v11, v8);

    _Block_object_dispose(buf, 8);
  }
}

void sub_1003E5C5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, v6);
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003E5D74;
  v10[3] = &unk_100527EB0;
  objc_copyWeak(&v12, &location);
  v9 = *(a1 + 48);
  v8 = v9;
  v11 = v9;
  v10[4] = *(a1 + 40);
  [v5 didReceivePushMessages:v7 reply:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_1003E5D58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1003E5D74(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained endRequest];

  if ((atomic_exchange((*(*(a1 + 48) + 8) + 32), 1u) & 1) == 0)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(*(a1 + 32) + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003E5E64;
      block[3] = &unk_100523EA0;
      v11 = v7;
      v12 = a2;
      v10 = v5;
      dispatch_async(v8, block);
    }
  }
}

void sub_1003E5E64(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = ASDErrorWithSafeUserInfo();
  (*(v2 + 16))(v2, v1, v3);
}

void sub_1003E5EC8(void *a1, void *a2)
{
  v3 = a2;
  if ((atomic_exchange((*(a1[6] + 8) + 32), 1u) & 1) == 0)
  {
    v4 = a1[5];
    if (v4)
    {
      v5 = *(a1[4] + 16);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1003E5F94;
      v6[3] = &unk_10051B790;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_1003E5FAC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = v9;
      *&buf[12] = 2050;
      *&buf[14] = a3;
      *&buf[22] = 2114;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "notifyOfReachedTerminalPhaseWithBetaBundle: %{public}@, phase: %{public}ld, error: %{public}@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2810000000;
    v24 = &unk_10049798A;
    v25 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1003E61D4;
    v16[3] = &unk_100527F28;
    v17 = v9;
    v22 = a3;
    v18 = v10;
    v21 = buf;
    v19 = a1;
    v20 = v11;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1003E6454;
    v13[3] = &unk_100527F00;
    v15 = buf;
    v13[4] = a1;
    v14 = v20;
    sub_1003E59F8(a1, v16, v13);

    _Block_object_dispose(buf, 8);
  }
}

void sub_1003E61D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, v6);
  v7 = *(a1 + 72);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1003E6300;
  v12[3] = &unk_100527EB0;
  objc_copyWeak(&v14, &location);
  v11 = *(a1 + 56);
  v10 = v11;
  v13 = v11;
  v12[4] = *(a1 + 48);
  [v5 didReachTerminalPhaseWithBetaBundle:v8 terminalPhase:v7 error:v9 reply:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_1003E62E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1003E6300(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained endRequest];

  if ((atomic_exchange((*(*(a1 + 48) + 8) + 32), 1u) & 1) == 0)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(*(a1 + 32) + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003E63F0;
      block[3] = &unk_100523EA0;
      v11 = v7;
      v12 = a2;
      v10 = v5;
      dispatch_async(v8, block);
    }
  }
}

void sub_1003E63F0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = ASDErrorWithSafeUserInfo();
  (*(v2 + 16))(v2, v1, v3);
}

void sub_1003E6454(void *a1, void *a2)
{
  v3 = a2;
  if ((atomic_exchange((*(a1[6] + 8) + 32), 1u) & 1) == 0)
  {
    v4 = a1[5];
    if (v4)
    {
      v5 = *(a1[4] + 16);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1003E6520;
      v6[3] = &unk_10051B790;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_1003E6538(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, uint64_t a7, void *a8, void *a9)
{
  v22 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  if (a1)
  {
    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544898;
      *&buf[4] = v22;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      *&buf[22] = 2114;
      v38 = v17;
      v39 = 2114;
      v40 = v18;
      v41 = 1026;
      v42 = a6;
      v43 = 2050;
      v44 = a7;
      v45 = 2114;
      v46 = v19;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "didReachAssetPackTerminalPhaseForStoreItemID: %{public}@, bundleID: %{public}@, assetPackID: %{public}@, assetPackVersion: %{public}@, isInternalBeta: %{public}d, terminalPhase: %{public}ld, error: %{public}@", buf, 0x44u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2810000000;
    v38 = &unk_10049798A;
    LOBYTE(v39) = 0;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1003E6800;
    v26[3] = &unk_100527F50;
    v27 = v22;
    v28 = v16;
    v29 = v17;
    v36 = a6;
    v30 = v18;
    v35 = a7;
    v31 = v19;
    v34 = buf;
    v32 = a1;
    v33 = v20;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1003E6AA4;
    v23[3] = &unk_100527F00;
    v25 = buf;
    v23[4] = a1;
    v24 = v33;
    sub_1003E59F8(a1, v26, v23);

    _Block_object_dispose(buf, 8);
  }
}

void sub_1003E6800(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  objc_initWeak(&location, v5);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 104);
  v11 = *(a1 + 96);
  v12 = *(a1 + 64);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1003E6950;
  v16[3] = &unk_100527EB0;
  objc_copyWeak(&v18, &location);
  v14 = *(a1 + 80);
  v13 = v14;
  v17 = v14;
  v16[4] = *(a1 + 72);
  [v15 didReachAssetPackTerminalPhaseForStoreItemID:v6 bundleID:v7 assetPackID:v8 assetPackVersion:v9 isInternalBeta:v10 terminalPhase:v11 error:v12 reply:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void sub_1003E6934(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_1003E6950(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained endRequest];

  if ((atomic_exchange((*(*(a1 + 48) + 8) + 32), 1u) & 1) == 0)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(*(a1 + 32) + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003E6A40;
      block[3] = &unk_100523EA0;
      v11 = v7;
      v12 = a2;
      v10 = v5;
      dispatch_async(v8, block);
    }
  }
}

void sub_1003E6A40(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = ASDErrorWithSafeUserInfo();
  (*(v2 + 16))(v2, v1, v3);
}

void sub_1003E6AA4(void *a1, void *a2)
{
  v3 = a2;
  if ((atomic_exchange((*(a1[6] + 8) + 32), 1u) & 1) == 0)
  {
    v4 = a1[5];
    if (v4)
    {
      v5 = *(a1[4] + 16);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1003E6B70;
      v6[3] = &unk_10051B790;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

void sub_1003E6B88(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "reloadAppsFromServerWithCompletionHandler", buf, 2u);
    }

    *buf = 0;
    v12 = buf;
    v13 = 0x2810000000;
    v14 = &unk_10049798A;
    v15 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003E6D00;
    v8[3] = &unk_100527F78;
    v10 = buf;
    v8[4] = a1;
    v9 = v3;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003E6F5C;
    v5[3] = &unk_100527F00;
    v7 = buf;
    v5[4] = a1;
    v6 = v9;
    sub_1003E59F8(a1, v8, v5);

    _Block_object_dispose(buf, 8);
  }
}

void sub_1003E6D00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, v6);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003E6E08;
  v9[3] = &unk_100527EB0;
  objc_copyWeak(&v11, &location);
  v8 = *(a1 + 40);
  v7 = v8;
  v10 = v8;
  v9[4] = *(a1 + 32);
  [v5 reloadAppsFromServerWithReply:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_1003E6DEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1003E6E08(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained endRequest];

  if ((atomic_exchange((*(*(a1 + 48) + 8) + 32), 1u) & 1) == 0)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(*(a1 + 32) + 16);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1003E6EF8;
      block[3] = &unk_100523EA0;
      v11 = v7;
      v12 = a2;
      v10 = v5;
      dispatch_async(v8, block);
    }
  }
}

void sub_1003E6EF8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 40);
  v3 = ASDErrorWithSafeUserInfo();
  (*(v2 + 16))(v2, v1, v3);
}

void sub_1003E6F5C(void *a1, void *a2)
{
  v3 = a2;
  if ((atomic_exchange((*(a1[6] + 8) + 32), 1u) & 1) == 0)
  {
    v4 = a1[5];
    if (v4)
    {
      v5 = *(a1[4] + 16);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1003E7028;
      v6[3] = &unk_10051B790;
      v8 = v4;
      v7 = v3;
      dispatch_async(v5, v6);
    }
  }
}

id sub_1003E7040(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "fetching background asset manifest request for app %{public}@ with bundle ID  %{public}@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v41 = sub_1003E54F8;
    v42 = sub_1003E5508;
    v43 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_1003E54F8;
    v34 = sub_1003E5508;
    v35 = 0;
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1003E7410;
    v24[3] = &unk_100527FC8;
    v11 = v7;
    v25 = v11;
    v12 = v8;
    v26 = v12;
    v28 = &v30;
    v29 = buf;
    v27 = v10;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003E75DC;
    v21[3] = &unk_100527FF0;
    v23 = &v30;
    v13 = v27;
    v22 = v13;
    sub_1003E59F8(a1, v24, v21);
    v14 = dispatch_time(0, 60000000000);
    if (dispatch_group_wait(v13, v14))
    {
      v15 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 138543618;
        v37 = v11;
        v38 = 2114;
        v39 = v12;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Timed out while trying fetch background asset manifest NSURLRequest for app %{public}@ with bundle ID %{public}@", v36, 0x16u);
      }

      v16 = [NSString stringWithFormat:@"Timed out while trying fetch background asset manifest request for app %@ with bundle ID  %@", v11, v12];
      v17 = ASDErrorWithDescription();
      v18 = v31[5];
      v31[5] = v17;
    }

    *a4 = v31[5];
    v19 = *(*&buf[8] + 40);

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

void sub_1003E73E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1003E7410(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_initWeak(&location, v6);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003E752C;
  v11[3] = &unk_100527FA0;
  objc_copyWeak(&v14, &location);
  v13 = *(a1 + 64);
  v10 = *(a1 + 48);
  v9 = v10;
  v12 = v10;
  [v5 fetchBAManifestRequestForStoreItemID:v7 bundleID:v8 reply:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void sub_1003E7510(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1003E752C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained endRequest];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v13 = v6;

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1003E75DC(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1003E763C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 48));
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    WeakRetained = 0;
  }

  v5 = WeakRetained;
  [WeakRetained testFlightServiceHost:v4 didUpdateExtensionStatus:*(a1 + 40)];
}

void sub_1003E76A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = sub_100006B78();
    v6 = sub_10023D0B0(v5);

    if (v6)
    {
      v7 = *(v1 + 32);
      if (v7)
      {
        v8 = v7;
        v9 = [[ASDExtensionRequest alloc] initWithExtension:v8 queue:*(v1 + 24) serviceTime:*(v1 + 40) graceTime:1.0];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_1003E7900;
        v16[3] = &unk_100528018;
        v16[4] = v1;
        v17 = v4;
        [v9 setErrorBlock:v16];
        v10 = objc_opt_class();
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_1003E7960;
        v13[3] = &unk_100528040;
        v13[4] = v1;
        v14 = v9;
        v15 = v3;
        v11 = v9;
        [v11 beginRequestForHostContext:v10 XPCInterface:&OBJC_PROTOCOL___ASDTestFlightServiceExtensionRemoteXPCInterface executionBlock:v13];

LABEL_9:
        goto LABEL_10;
      }
    }

    else
    {
      v12 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Not calling TestFlight service extension due to security policy", v13, 2u);
      }
    }

    v8 = ASDErrorWithDescription();
    (*(v4 + 2))(v4, v8);
    goto LABEL_9;
  }

LABEL_10:
}

void sub_1003E7900(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = ASDErrorWithSafeUserInfo();
  (*(v1 + 16))(v1, v2);
}

id *sub_1003E7974(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 6, a2);
  }

  return result;
}

AppInstallInstallTask *sub_1003E79E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v28 = a5;
  v9 = a4;
  objc_opt_self();
  v10 = [AppInstallEntity alloc];
  v11 = [v9 connection];
  v12 = [(SQLiteEntity *)v10 initWithPersistentID:a2 onConnection:v11];

  v13 = +[NSDate date];
  [(SQLiteEntity *)v12 setValue:v13 forProperty:@"timestamp"];

  v31[0] = @"alternate_icon_name";
  v31[1] = @"arcade";
  v31[2] = @"auto_install_override";
  v31[3] = @"bundle_id";
  v31[4] = @"bundle_url";
  v31[5] = @"client_id";
  v31[6] = @"client_type";
  v31[7] = @"coordinator_id";
  v31[8] = @"download_path";
  v31[9] = @"download_volume";
  v31[10] = @"evid";
  v31[11] = @"external_id";
  v31[12] = @"install_volume";
  v31[13] = @"item_id";
  v31[14] = @"log_code";
  v31[15] = @"receipt";
  v31[16] = @"software_platform";
  v31[17] = @"source_type";
  v31[18] = @"store_cohort";
  v31[19] = @"store_metadata";
  v31[20] = @"storefront";
  v31[21] = @"update_type";
  v31[22] = @"vendor_name";
  v14 = [NSArray arrayWithObjects:v31 count:23];
  v15 = [v9 connection];
  v16 = [(SQLiteEntity *)AppInstallEntity memoryEntityForPersistentID:a2 withProperties:v14 usingConnection:v15];

  v30[0] = @"archive_type";
  v30[1] = @"dp_info";
  v30[2] = @"extracted_content_size";
  v30[3] = @"package_type";
  v30[4] = @"package_url";
  v30[5] = @"provisioning_profiles";
  v30[6] = @"sinf";
  v30[7] = @"variant_id";
  v17 = [NSArray arrayWithObjects:v30 count:8];
  v18 = [v9 connection];

  v19 = [(SQLiteEntity *)AppPackageEntity memoryEntityForPersistentID:a3 withProperties:v17 usingConnection:v18];

  v20 = [AppInstallInstallTask alloc];
  v21 = v16;
  v22 = v19;
  v23 = v28;
  if (v20)
  {
    v29.receiver = v20;
    v29.super_class = AppInstallInstallTask;
    v24 = objc_msgSendSuper2(&v29, "init");
    v20 = v24;
    if (v24)
    {
      objc_storeStrong(&v24->_coordinator, a5);
      objc_storeStrong(&v20->_install, v16);
      objc_storeStrong(&v20->_package, v19);
      v25 = [[_TtC9appstored6LogKey alloc] initWithAppInstallMemoryEntity:v21];
      logKey = v20->_logKey;
      v20->_logKey = v25;
    }
  }

  return v20;
}

void sub_1003E8D50(uint64_t a1)
{
  v3 = sub_100305C4C();
  v2 = sub_10023E644(*(a1 + 48), @"bundle_id");
  sub_100307BB8(v3, v2);
}

id *sub_1003E8DD0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_opt_self();
  v5 = sub_1003E8F78([AppInstallInstallResponse alloc], a2, 2, v4);

  return v5;
}

id *sub_1003E8E44(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = sub_1003E8F78([AppInstallInstallResponse alloc], a2, 3, 0);

  return v3;
}

id sub_1003E8E94(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [[NSData alloc] initWithBase64EncodedString:v2 options:0];

  return v3;
}

id *sub_1003E8F78(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a4;
  if (a1)
  {
    v11.receiver = a1;
    v11.super_class = AppInstallInstallResponse;
    v9 = objc_msgSendSuper2(&v11, "init");
    a1 = v9;
    if (v9)
    {
      v9[1] = a2;
      v9[3] = a3;
      objc_storeStrong(v9 + 2, a4);
    }
  }

  return a1;
}

id sub_1003E9190()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003E9234;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AB008 != -1)
  {
    dispatch_once(&qword_1005AB008, block);
  }

  v0 = qword_1005AB000;

  return v0;
}

void sub_1003E9234(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AB000;
  qword_1005AB000 = v1;
}

void sub_1003E926C(void *a1, void *a2)
{
  if (a1)
  {
    v18 = a2;
    v3 = a2;
    v4 = [NSArray arrayWithObjects:&v18 count:1];

    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v5)
    {
      v6 = *v15;
      do
      {
        v7 = 0;
        do
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = sub_100304784(*(*(&v14 + 1) + 8 * v7));
          objc_initWeak(&location, a1);
          v9 = a1[1];
          v11[0] = _NSConcreteStackBlock;
          v11[1] = 3221225472;
          v11[2] = sub_1003E9728;
          v11[3] = &unk_10051B4A8;
          objc_copyWeak(&v12, &location);
          [v9 addNotificationRequest:v8 withCompletionHandler:v11];
          objc_destroyWeak(&v12);
          objc_destroyWeak(&location);

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v5);
    }
  }
}

void sub_1003E944C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003E9728(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = v3;
      v7 = v9;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to post notification. Error: %{public}@", &v8, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 138543362;
    v9 = objc_opt_class();
    v7 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Notification posted successfully", &v8, 0xCu);
    goto LABEL_6;
  }
}

AppInstallPostambleTask *sub_1003E9B5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  objc_opt_self();
  v20[0] = @"automatic_type";
  v20[1] = @"bundle_id";
  v20[2] = @"bundle_url";
  v20[3] = @"coordinator_intent";
  v20[4] = @"client_id";
  v20[5] = @"download_volume";
  v20[6] = @"external_id";
  v20[7] = @"has_background_assets_extension";
  v20[8] = @"metrics_install_type";
  v20[9] = @"post_processing_state";
  v20[10] = @"previous_galette_mode";
  v20[11] = @"receipt";
  v20[12] = @"redownload";
  v20[13] = @"restore_type";
  v20[14] = @"software_platform";
  v20[15] = @"source_type";
  v20[16] = @"update_type";
  v20[17] = @"account_id";
  v20[18] = @"item_id";
  v20[19] = @"transaction_id";
  v20[20] = @"log_code";
  v20[21] = @"external_id";
  v20[22] = @"store_cohort";
  v20[23] = @"storefront";
  v20[24] = @"vendor_name";
  v20[25] = @"store_metadata";
  v20[26] = @"default_browser";
  v7 = [NSArray arrayWithObjects:v20 count:27];
  v8 = [v6 connection];
  v9 = [(SQLiteEntity *)AppInstallEntity memoryEntityForPersistentID:a2 withProperties:v7 usingConnection:v8];

  v19 = @"archive_type";
  v10 = [NSArray arrayWithObjects:&v19 count:1];
  v11 = [v6 connection];

  v12 = [(SQLiteEntity *)AppPackageEntity memoryEntityForPersistentID:a3 withProperties:v10 usingConnection:v11];

  v13 = [AppInstallPostambleTask alloc];
  v14 = v9;
  v15 = v12;
  if (v13)
  {
    v18.receiver = v13;
    v18.super_class = AppInstallPostambleTask;
    v16 = objc_msgSendSuper2(&v18, "init");
    v13 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_install, v9);
      objc_storeStrong(&v13->_package, v12);
    }
  }

  return v13;
}

void sub_1003EB280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1003EB2A0(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = a2;
  v4 = sub_10040908C(v2);
  v5 = [v3 setNeedsThirdPartyPurchasesConfirmationForBundleID:v4];

  return v5;
}

void sub_1003EB308(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to notify Game Center of app install: %{public}@", &v6, 0x16u);
    }
  }
}

void sub_1003EB3D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_100408EB0(*(*(a1 + 32) + 40));
      *buf = 138412546;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] Failed to set default browser app with error: %{public}@", buf, 0x16u);
LABEL_9:
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_100408EB0(*(*(a1 + 32) + 40));
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Successfully configured as default web browser", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v9 && sub_1003D3E2C(AppDefaultsManager, @"ShouldPostNotificationOnDefaultBrowserInstallation", 0))
    {
      v7 = objc_opt_new();
      v10 = ASDLocalizedString();
      [v7 setTitle:v10];

      v11 = ASDLocalizedString();
      v12 = [v6 localizedName];
      v13 = [NSString localizedStringWithFormat:v11, v12];
      [v7 setBody:v13];

      v14 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.Settings.Apps.DefaultApps"];
      [v7 setDefaultActionURL:v14];

      v15 = +[NSUUID UUID];
      v16 = [v15 UUIDString];
      v17 = [UNNotificationRequest requestWithIdentifier:v16 content:v7 trigger:0];

      v18 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.Preferences"];
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1003EB6E8;
      v20 = &unk_10051B5C0;
      v21 = v9;
      [v18 addNotificationRequest:v17 withCompletionHandler:buf];

      goto LABEL_9;
    }
  }
}

void sub_1003EB6E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ASDLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_100408EB0(*(*(a1 + 32) + 40));
      v7 = 138412546;
      v8 = v6;
      v9 = 2114;
      v10 = v3;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@] Failed to post default web browser updated notification: %{public}@", &v7, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100408EB0(*(*(a1 + 32) + 40));
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Successfully posted default web browser updated notification", &v7, 0xCu);
    goto LABEL_6;
  }
}

void sub_1003EB834(id a1, AMSUniversalLinksUpdateResult *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5 || ([(AMSUniversalLinksUpdateResult *)v4 success]& 1) == 0)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to update AMS universal links: %{public}@", &v7, 0xCu);
    }
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Successfully updated AMS universal links", &v7, 2u);
    }
  }
}

Class sub_1003EB9AC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1005AB018)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1003EBB00;
    v4[4] = &unk_10051BD00;
    v4[5] = v4;
    v5 = off_100528110;
    v6 = 0;
    qword_1005AB018 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1005AB018)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("GKScopedIdManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np();
  }

  qword_1005AB010 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1003EBB00()
{
  result = _sl_dlopen();
  qword_1005AB018 = result;
  return result;
}

uint64_t sub_1003EBB74(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (sub_100252934(v2) == 19000)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_100252A6C(v2, 19000, &stru_100528128);
  }

  return v3;
}

void sub_1003EBBE0(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"DROP TABLE app_done", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE app_install", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE app_install_remote", 0, 0);
    sub_1003BA14C(v3, @"DROP TABLE app_package", 0, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS app_done (pid INTEGER, account_id INTEGER, item_id INTEGER, machine_based INTEGER NOT NULL DEFAULT 0, request_url URL, transaction_id TEXT, PRIMARY KEY(pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS app_install (pid INTEGER, account_id INTEGER, apple_id TEXT, arcade INTEGER NOT NULL DEFAULT 0, alt_dsid TEXT, alternate_icon_name TEXT, artwork_url URL, auto_install_override INTEGER NOT NULL DEFAULT 0, automatic_type INTEGER NOT NULL DEFAULT 0, bundle_id TEXT, bundle_name TEXT, bundle_url URL, bundle_version TEXT, bootstrapped INTEGER NOT NULL DEFAULT 2, cancel_download_url URL, cancel_if_duplicate INTEGER NOT NULL DEFAULT 0, companion_bundle_id TEXT, check_store_queue_reason INTEGER NOT NULL DEFAULT 0, client_id TEXT, client_type INTEGER NOT NULL DEFAULT 0, coordinator_id UUID, coordinator_intent INTEGER NOT NULL DEFAULT 1, default_browser INTEGER NOT NULL DEFAULT 0, device_based_vpp INTEGER, downloader_id INTEGER, download_path TEXT, download_volume TEXT, external_id UUID, external_order INTEGER, evid INTEGER, failure_error BLOB, gizmo_pairing_id UUID, has_background_assets_extension INTEGER NOT NULL DEFAULT 0, has_messages_extension INTEGER NOT NULL DEFAULT 0, install_finished_timestamp DATETIME, install_verification_token TEXT, install_volume TEXT, item_id INTEGER, last_start_date DATETIME, launch_prohibited INTEGER NOT NULL DEFAULT 0, log_code TEXT, messages_artwork_url URL, metrics_fields JSON, optimal_download_duration INTEGER, optimal_download_start INTEGER, metrics_install_type INTEGER NOT NULL DEFAULT 0, order_index INTEGER, phase INTEGER NOT NULL DEFAULT 10, policy JSON, placeholder_entitlements BLOB, placeholder_path TEXT, post_processing_state INTEGER NOT NULL DEFAULT 0, preorder INTEGER NOT NULL DEFAULT 0, previous_galette_mode INTEGER, priority INTEGER NOT NULL DEFAULT 0, quarantine INTEGER NOT NULL DEFAULT 0, receipt BLOB, recovery_count INTEGER NOT NULL DEFAULT 0, redownload INTEGER NOT NULL DEFAULT 0, remote_install INTEGER NOT NULL DEFAULT 0, requires_rosetta INTEGER NOT NULL DEFAULT 0, restore_state INTEGER NOT NULL DEFAULT 0, restore_retry_count INTEGER NOT NULL DEFAULT 0, restore_type INTEGER NOT NULL DEFAULT 0, runs_on_apple_silicon INTEGER NOT NULL DEFAULT 1, runs_on_intel INTEGER NOT NULL DEFAULT 1,software_platform INTEGER NOT NULL DEFAULT 0, source_type INTEGER NOT NULL DEFAULT 0, storefront TEXT, store_cohort TEXT, store_metadata BLOB, supports_32bit_only INTEGER NOT NULL DEFAULT 0, supress_dialogs INTEGER NOT NULL DEFAULT 0, timestamp DATETIME DEFAULT (timestamp()), transaction_id TEXT, tv_provider INTEGER NOT NULL DEFAULT 0, update_type INTEGER NOT NULL DEFAULT 0, vid UUID, vendor_name TEXT, watch_type INTEGER NOT NULL DEFAULT 0, PRIMARY KEY(pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS app_install_remote (pid INTEGER, destination_id TEXT, external_id UUID, metadata BLOB, PRIMARY KEY(pid));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS app_package (pid INTEGER, archive_type INTEGER NOT NULL DEFAULT 0, background_asset_metadata JSON, blocked INTEGER NOT NULL DEFAULT 0, bytes_offset INTEGER, bytes_remaining INTEGER, bytes_total INTEGER, clear_hash_array JSON, compression INTEGER NOT NULL DEFAULT 0, data_promise_id UUID, delta_algorithm TEXT, disk_usage INTEGER, dp_info BLOB, extracted_content_size INTEGER, hash_array JSON, hash_size INTEGER, hash_type INTEGER, hole_punch_size INTEGER, initial_odr_size INTEGER, locate_asset_cache INTEGER, odr_manifest_url URL, package_type INTEGER, package_url URL, parent_id UUID, provisioning_profiles JSON, ranges_not_supported INTEGER DEFAULT 0, request_count INTEGER DEFAULT 0, sinf BLOB, streaming_zip INTEGER, timestamp DATETIME DEFAULT (timestamp()), variant_id TEXT, PRIMARY KEY(pid));", 1, 0);
    v2 = v3;
  }
}

id *sub_1003EBCD8(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (a1)
  {
    v23.receiver = a1;
    v23.super_class = LoadStoreQueueTask;
    v18 = objc_msgSendSuper2(&v23, "init");
    a1 = v18;
    if (v18)
    {
      objc_storeStrong(v18 + 13, a3);
      a1[8] = a2;
      v19 = [v14 copy];
      v20 = a1[9];
      a1[9] = v19;

      objc_storeStrong(a1 + 7, a5);
      objc_storeStrong(a1 + 6, a6);
      objc_storeStrong(a1 + 5, a7);
    }
  }

  return a1;
}

uint64_t sub_1003ECB98(uint64_t a1, void *a2)
{
  v3 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  v6 = v5 != 0;
  if (v5)
  {
    v7 = v5;
    v18 = v5 != 0;
    v8 = 0;
    v9 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [AppDoneEntity alloc];
        v13 = [v3 connection];
        v14 = [(SQLiteEntity *)v12 initWithPropertyValues:v11 onConnection:v13];

        v8 |= v14 != 0;
      }

      v7 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);

    if ((v8 & 1) == 0)
    {
      v6 = 0;
      goto LABEL_15;
    }

    if (v3)
    {
      v16 = objc_getProperty(v3, v15, 24, 1);
      v4 = v16;
      if (v16)
      {
        *(v16 + 145) = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = v18;
  }

LABEL_15:
  return v6;
}

id *sub_1003ECE00(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = PurchaseHistoryHideShowRequest;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
    }
  }

  return a1;
}

void sub_1003ECEAC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 16);
    if (!v5)
    {
      goto LABEL_27;
    }

    v6 = objc_getProperty(v5, v3, 16, 1);
    if (!v6)
    {
      goto LABEL_27;
    }

    v8 = v6;
    Property = *(a1 + 16);
    if (Property)
    {
      Property = objc_getProperty(Property, v7, 16, 1);
    }

    v10 = Property;
    v11 = [v10 ams_DSID];

    if (v11)
    {
      v12 = [*(a1 + 8) URLForKey:@"purchase-daap/base-url"];
      if (v12 && (v13 = v12, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"databases/%ld/items/edit", [*(a1 + 8) integerForKey:@"purchase-daap/database-id" defaultValue:101]), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "URLByAppendingPathComponent:", v14), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, v15))
      {
        v16 = 0;
      }

      else
      {
        v17 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = objc_opt_class();
          v33 = v38;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@]: Failed to construct request URL error", buf, 0xCu);
        }

        v16 = sub_1002358D4(2, 0);
        v15 = 0;
      }

      v18 = v16;
      if (v15)
      {
        v20 = [PurchaseHistoryHideShowRequestEncoder alloc];
        v21 = *(a1 + 16);
        if (v21)
        {
          v21 = objc_getProperty(v21, v19, 8, 1);
        }

        v22 = v21;
        v23 = sub_10029C9E8(v20, v22);

        v25 = sub_100363298([DAAPURLRequest alloc], v23, v15);
        v26 = *(a1 + 16);
        if (v26)
        {
          v26 = objc_getProperty(v26, v24, 16, 1);
        }

        v28 = v26;
        if (v25)
        {
          objc_setProperty_atomic(v25, v27, v28, 32);
        }

        v30 = *(a1 + 16);
        if (v30)
        {
          v30 = objc_getProperty(v30, v29, 24, 1);
        }

        v32 = v30;
        if (v25)
        {
          objc_setProperty_atomic(v25, v31, v32, 48);
        }

        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_1003ED244;
        v35[3] = &unk_10051E0B8;
        v36 = v4;
        sub_100363334(v25, v35);
      }

      else
      {
        v23 = sub_1002358D4(2, v18);
        (*(v4 + 2))(v4, v23);
      }
    }

    else
    {
LABEL_27:
      v34 = sub_1002358D4(4, 0);
      (*(v4 + 2))(v4, v34);
    }
  }
}

void sub_1003ED244(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = v13;
  if (!v13)
  {
    v7 = *(a1 + 32);
    v8 = v5;
    goto LABEL_5;
  }

  if ([v13 responseStatusCode] - 300 <= 0xFFFFFFFFFFFFFF9BLL)
  {
    v7 = *(a1 + 32);
    v6 = 1;
    v8 = 0;
LABEL_5:
    v9 = sub_1002358D4(v6, v8);
    (*(v7 + 16))(v7, v9);
    goto LABEL_9;
  }

  v10 = [v13 data];
  v11 = *(a1 + 32);
  if (v10)
  {
    v9 = v10;
    (*(v11 + 16))(v11, 0);
  }

  else
  {
    v12 = sub_1002358D4(0, 0);
    (*(v11 + 16))(v11, v12);

    v9 = 0;
  }

LABEL_9:
}

id *sub_1003ED3B4(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = RequestBrokerClient;
    v4 = objc_msgSendSuper2(&v19, "init");
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 2, v3);
      v5 = [[XPCClient alloc] initWithConnection:v3];
      v6 = a1[1];
      a1[1] = v5;

      v7 = objc_alloc_init(TaskQueue);
      v8 = a1[4];
      a1[4] = v7;

      v9 = [a1[1] clientID];
      v10 = [NSString stringWithFormat:@"com.apple.appstored.RequestBrokerClient.%@", v9];
      v11 = [v10 UTF8String];
      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_get_global_queue(21, 0);
      v14 = dispatch_queue_create_with_target_V2(v11, v12, v13);

      v15 = a1[4];
      if (v15)
      {
        [v15[1] setUnderlyingQueue:v14];
      }

      v16 = objc_opt_new();
      v17 = a1[3];
      a1[3] = v16;
    }
  }

  return a1;
}

void sub_1003ED52C(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [WeakRetained invalidate];
  }
}

void sub_1003ED574(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 138543618;
      v7 = v3;
      v8 = 2114;
      v9 = a1;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Queued task: %{public}@ for: %{public}@", &v6, 0x16u);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      [*(v5 + 8) addOperation:v3];
    }
  }
}

BOOL sub_1003ED794(id a1, AppInstallsDatabaseTransaction *a2)
{
  v2 = a2;
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"source_type" equalToValue:&off_100548718];
  v16[0] = v3;
  v4 = [SQLiteContainsPredicate doesNotContainPredicateWithProperty:@"IFNULL(app_install.phase values:10)", &off_1005496F8];
  v16[1] = v4;
  v5 = [NSArray arrayWithObjects:v16 count:2];
  v6 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_1003ED9B4;
  v14[4] = sub_1003ED9C4;
  v15 = 0;
  v7 = [(AppInstallsDatabaseSession *)v2 connection];
  v8 = sub_1002D3F5C(AppInstallEntity, v7, v6);

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003ED9CC;
  v11[3] = &unk_100528170;
  v13 = v14;
  v9 = v2;
  v12 = v9;
  [v8 enumeratePersistentIDsUsingBlock:v11];

  _Block_object_dispose(v14, 8);
  return 1;
}

void sub_1003ED994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003ED9B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003ED9CC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (!v4)
  {
    v5 = +[BagService cachedQOSPackageInstallMetricsCollectionChanceBag];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = *(*(*(a1 + 40) + 8) + 40);
  }

  v8 = *(a1 + 32);

  sub_1002067C8(v8, a2, -30, v4);
}

uint64_t sub_1003EDA4C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished canceling all system applications for: %{public}@", &v5, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

id sub_1003EDC98()
{
  objc_opt_self();
  if (qword_1005AB028 != -1)
  {
    dispatch_once(&qword_1005AB028, &stru_100528190);
  }

  v0 = qword_1005AB020;

  return v0;
}

void sub_1003EDCF0(id a1)
{
  v1 = objc_alloc_init(PurchaseService);
  v2 = qword_1005AB020;
  qword_1005AB020 = v1;
}

void sub_1003EE14C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 40);
    v6 = v3;
    if (v4)
    {
      Property = objc_getProperty(v4, v5, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = Property;
    if (*(a1 + 48))
    {
      v9 = @"Pending";
    }

    else
    {
      v9 = @"Auto";
    }

    v10 = [*(a1 + 40) processInfo];
    v11 = [v10 bundleIdentifier];
    v23 = 138544130;
    v24 = v3;
    v25 = 2112;
    v26 = v8;
    v27 = 2114;
    v28 = v9;
    v29 = 2114;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@][%@] Checking server queue for queue: %{public}@ clientID: %{public}@", &v23, 0x2Au);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v12 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v19 = objc_opt_class();
    v20 = *(a1 + 40);
    v16 = v19;
    if (v20)
    {
      v22 = objc_getProperty(v20, v21, 32, 1);
    }

    else
    {
      v22 = 0;
    }

    v18 = v22;
    v23 = 138543618;
    v24 = v19;
    v25 = 2112;
    v26 = v18;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[%{public}@][%@] selector not implemented", &v23, 0x16u);
    goto LABEL_13;
  }

  [*(*(a1 + 32) + 32) checkStoreQueue:*(a1 + 48) withReason:4];
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = *(a1 + 40);
    v16 = v13;
    if (v14)
    {
      v17 = objc_getProperty(v14, v15, 32, 1);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v23 = 138543618;
    v24 = v13;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@][%@] Checking server queue complete", &v23, 0x16u);
LABEL_13:
  }

LABEL_15:
}

void sub_1003EE52C(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = v3;
    v7 = [v4 processInfo];
    v8 = [v7 bundleIdentifier];
    *buf = 138412802;
    v22 = v3;
    v23 = 2114;
    v24 = v5;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@]: Notify dialog complete for purchaseID %{public}@ clientID: %{public}@", buf, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(v9 + 32);
    v12 = *(a1 + 72);
    v13 = *(a1 + 64);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1003EE768;
    v17[3] = &unk_1005281B8;
    v17[4] = v9;
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 72);
    [v11 notifyDialogCompleteForPurchaseID:v10 result:v12 selectedButton:v13 withResultHandler:v17];
  }

  else
  {
    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      *buf = 138412290;
      v22 = v15;
      v16 = v15;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%@]: selector not implemented", buf, 0xCu);
    }
  }
}

void sub_1003EE768(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 processInfo];
      v11 = [v10 bundleIdentifier];
      v17 = 138412802;
      v18 = v7;
      v19 = 2114;
      v20 = v11;
      v21 = 2114;
      v22 = v4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@]: Notify dialog completed for clientID: %{public}@ with error: %{public}@", &v17, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = *(a1 + 40);
    v9 = v12;
    v10 = [v13 processInfo];
    v11 = [v10 bundleIdentifier];
    v17 = 138412546;
    v18 = v12;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@]: Notify dialog completed successfully for client: %{public}@ ", &v17, 0x16u);
    goto LABEL_6;
  }

  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = ASDErrorWithSafeUserInfo();
  (*(v14 + 16))(v14, v15, v16);
}

void sub_1003EEA3C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v8 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003EEB54;
  v5[3] = &unk_10051DF58;
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 56);
  [v2 processPurchases:v3 failBatchOnError:0 requestToken:v6 withReplyHandler:v5];
}

void sub_1003EEB54(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = [v10 processInfo];
      v13 = [v12 bundleIdentifier];
      v18 = 138412802;
      v19 = v9;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: Purchase completed for clientID: %{public}@ with error: %{public}@", &v18, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = *(a1 + 40);
    v11 = v14;
    v12 = [v15 processInfo];
    v13 = [v12 bundleIdentifier];
    v18 = 138412546;
    v19 = v14;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@]: Purchase completed successfully for client %{public}@", &v18, 0x16u);
    goto LABEL_6;
  }

  v16 = *(a1 + 48);
  v17 = ASDErrorWithSafeUserInfo();
  (*(v16 + 16))(v16, v6, v17);
}

void sub_1003EEE34(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 32);
  v5 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003EEEF8;
  v6[3] = &unk_10051DF58;
  v6[4] = v2;
  v7 = v5;
  v8 = *(a1 + 56);
  [v4 processPurchases:v3 failBatchOnError:1 requestToken:v7 withReplyHandler:v6];
}

void sub_1003EEEF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = [v10 processInfo];
      v13 = [v12 bundleIdentifier];
      v18 = 138412802;
      v19 = v9;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Purchases completed for client: %{public}@ with error: %{public}@", &v18, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = *(a1 + 40);
    v11 = v14;
    v12 = [v15 processInfo];
    v13 = [v12 bundleIdentifier];
    v18 = 138412546;
    v19 = v14;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@] Purchases completed successfully for client: %{public}@", &v18, 0x16u);
    goto LABEL_6;
  }

  v16 = *(a1 + 48);
  v17 = ASDErrorWithSafeUserInfo();
  (*(v16 + 16))(v16, v6, v17);
}

void sub_1003EF1F8(id *a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1[4] processInfo];
    v5 = [v4 bundleIdentifier];
    v6 = [a1[5] componentsJoinedByString:{@", "}];
    *buf = 138412802;
    v17 = v2;
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@] Batch purchase started client: %{public}@ itemIDs: [%{public}@]", buf, 0x20u);
  }

  v7 = sub_100284B90();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003EF438;
  v10[3] = &unk_1005281E0;
  v15 = a1[7];
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[4];
  v8 = v2;
  v14 = v8;
  sub_100284D1C(v7, v10);

  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@] Batch purchase complete", buf, 0xCu);
  }
}

void sub_1003EF438(id *a1)
{
  v2 = +[BagService appstoredService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003EF550;
  v9[3] = &unk_10051C998;
  v12 = a1[8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 upToDateBagWithCompletionHandler:v9];
}

void sub_1003EF550(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[_TtC9appstored23PurchaseArcadeBatchTask alloc] initWithItemIDs:*(a1 + 32) additionalBuyParams:*(a1 + 40) requestToken:*(a1 + 48) logKey:*(a1 + 56) bag:v3];
    v5 = sub_100284B90();
    v6 = v5;
    if (v5)
    {
      [*(v5 + 8) addOperation:v4];
    }

    v7 = sub_100284B90();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1003EF690;
    v9[3] = &unk_10051B2D0;
    v10 = v4;
    v11 = *(a1 + 64);
    v8 = v4;
    sub_100284D9C(v7, v9);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_1003EF690(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && (v4 = objc_getProperty(v3, a2, 32, 1)) != 0 && (v5 = *(a1 + 40), v4, v5))
  {
    Property = *(a1 + 32);
    v8 = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 32, 1);
    }

    v10 = Property;
    (*(v8 + 16))(v8, 0);
  }

  else
  {
    v9 = *(a1 + 40);
    if (!v9)
    {
      return;
    }

    v10 = [*(a1 + 32) purchaseResponse];
    (*(v9 + 16))(v9);
  }
}

void sub_1003EF898(id *a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = [a1[4] allKeys];
  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1[5] processInfo];
    v6 = [v5 bundleIdentifier];
    v7 = [v3 componentsJoinedByString:{@", "}];
    *buf = 138412802;
    v18 = v2;
    v19 = 2114;
    v20 = v6;
    v21 = 2114;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] Batch purchase started client: %{public}@ itemIDs: [%{public}@]", buf, 0x20u);
  }

  v8 = sub_100284B90();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1003EFAF4;
  v11[3] = &unk_1005281E0;
  v16 = a1[7];
  v12 = a1[4];
  v13 = a1[6];
  v14 = a1[5];
  v9 = v2;
  v15 = v9;
  sub_100284D1C(v8, v11);

  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Batch purchase complete", buf, 0xCu);
  }
}

void sub_1003EFAF4(id *a1)
{
  v2 = +[BagService appstoredService];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003EFC0C;
  v9[3] = &unk_10051C998;
  v12 = a1[8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  [v2 upToDateBagWithCompletionHandler:v9];
}

void sub_1003EFC0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [[_TtC9appstored23PurchaseArcadeBatchTask alloc] initWithItemMetadata:*(a1 + 32) additionalBuyParams:*(a1 + 40) requestToken:*(a1 + 48) logKey:*(a1 + 56) bag:v3];
    v5 = sub_100284B90();
    v6 = v5;
    if (v5)
    {
      [*(v5 + 8) addOperation:v4];
    }

    v7 = sub_100284B90();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1003EFD4C;
    v9[3] = &unk_10051B2D0;
    v10 = v4;
    v11 = *(a1 + 64);
    v8 = v4;
    sub_100284D9C(v7, v9);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void sub_1003EFD4C(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && (v4 = objc_getProperty(v3, a2, 32, 1)) != 0 && (v5 = *(a1 + 40), v4, v5))
  {
    Property = *(a1 + 32);
    v8 = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 32, 1);
    }

    v10 = Property;
    (*(v8 + 16))(v8, 0);
  }

  else
  {
    v9 = *(a1 + 40);
    if (!v9)
    {
      return;
    }

    v10 = [*(a1 + 32) purchaseResponse];
    (*(v9 + 16))(v9);
  }
}

void sub_1003EFF34(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = v3;
    v7 = [v4 itemID];
    v8 = [*(a1 + 48) bundleID];
    v9 = [*(a1 + 40) processInfo];
    v10 = [v9 bundleIdentifier];
    *buf = 138413314;
    v19 = v3;
    v20 = 2114;
    v21 = v5;
    v22 = 2114;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Starting purchase of %{public}@:%{public}@ by %{public}@", buf, 0x34u);
  }

  v11 = *(*(a1 + 32) + 32);
  v17 = *(a1 + 48);
  v12 = [NSArray arrayWithObjects:&v17 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1003F0144;
  v14[3] = &unk_10051DF58;
  v13 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v13;
  v16 = *(a1 + 56);
  [v11 processPurchases:v12 failBatchOnError:0 requestToken:v15 withReplyHandler:v14];
}

void sub_1003F0144(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = *(a1 + 40);
      v23 = 138412802;
      v24 = v20;
      v25 = 2114;
      v26 = v21;
      v27 = 2114;
      v28 = v6;
      v22 = v20;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: %{public}@ Purchase completed with error: %{public}@", &v23, 0x20u);
    }

    v9 = [[ASDPurchaseResult alloc] initWithSuccess:0 error:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 40);
      v23 = 138412546;
      v24 = v10;
      v25 = 2114;
      v26 = v11;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ Purchase completed successfully", &v23, 0x16u);
    }

    v13 = [v5 items];
    v14 = [v13 firstObject];

    v15 = [ASDPurchaseResult alloc];
    v16 = [v14 success];
    v17 = [v14 error];
    v9 = [v15 initWithSuccess:v16 error:v17];
  }

  v18 = *(a1 + 48);
  v19 = ASDErrorWithSafeUserInfo();
  (*(v18 + 16))(v18, v9, v19);
}

id sub_1003F0450(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = *(v3 + 2);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [AccountEventEntity alloc];
    v8 = [a1 connection];
    v9 = [(SQLiteEntity *)v7 initWithPropertyValues:v6 onConnection:v8];

    if (v9)
    {
      v10 = [NSNumber numberWithLongLong:[(SQLiteEntity *)v9 persistentID]];
    }

    else
    {
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 138543362;
        v14 = v4;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Unable to create account event entity with: %{public}@", &v13, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1003F05C0(void *a1, void *a2, objc_class *a3, void *a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = +[NSMutableOrderedSet orderedSet];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        v11 = 0;
        do
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          if (v12)
          {
            v14 = *(v12 + 16);
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          v16 = [a3 alloc];
          v17 = [a1 connection];
          v18 = [v16 initWithPropertyValues:v15 onConnection:v17];

          if (!v18)
          {

            objc_autoreleasePoolPop(v13);
            goto LABEL_16;
          }

          v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v18 persistentID]);
          [v7 addObject:v19];

          objc_autoreleasePoolPop(v13);
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v20 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        v9 = v20;
      }

      while (v20);
    }

LABEL_16:

    v21 = [v7 count];
    v22 = [obj count];
    if (a4)
    {
      *a4 = 0;
    }

    if (v21 == v22)
    {
      v23 = v7;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    v6 = v26;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

id sub_1003F07EC(void *a1, void *a2, void *a3)
{
  v4 = a2;
  if (a1)
  {
    v34 = +[NSMutableOrderedSet orderedSet];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v31 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v35 = *v37;
      p_info = &OBJC_METACLASS___SQLiteSchema.info;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v37 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v36 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          v11 = sub_1003B3298(v9);
          v12 = [v11 length];

          if (v12)
          {
            v13 = sub_1003B3298(v9);
            v14 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v13];

            v15 = [a1 connection];
            v16 = sub_1002D3DF0((p_info + 476), v15, v14);

            if ([v16 existsInDatabase])
            {
              [v16 deleteFromDatabase];
            }

            v17 = objc_alloc((p_info + 476));
            if (v9)
            {
              v18 = v9[2];
            }

            else
            {
              v18 = 0;
            }

            v19 = v18;
            v20 = [a1 connection];
            v21 = [v17 initWithPropertyValues:v19 onConnection:v20];

            if (!v21)
            {
              v24 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v30 = sub_1003B3298(v9);
                *buf = 138543362;
                v41 = v30;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error creating app install metadata entity for bundleID: %{public}@", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v10);
              goto LABEL_24;
            }

            v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v21 persistentID]);
            [v34 addObject:v22];

            p_info = (&OBJC_METACLASS___SQLiteSchema + 32);
          }

          else
          {
            v14 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v41 = v9;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Dropping app install meatadata due to no bundleID: %@", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v10);
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v23 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
        v6 = v23;
        if (v23)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:

    v25 = [v34 count];
    v26 = [obj count];
    if (a3)
    {
      *a3 = 0;
    }

    if (v25 == v26)
    {
      v27 = v34;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    v4 = v31;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

id sub_1003F0BA0(void *a1, void *a2, void *a3)
{
  v4 = a2;
  if (a1)
  {
    v5 = +[NSMutableOrderedSet orderedSet];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        v10 = 0;
        do
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v27 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          if (v11)
          {
            v13 = *(v11 + 16);
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;
          v15 = [AppMetricsEventEntity alloc];
          v16 = [a1 connection];
          v17 = [(SQLiteEntity *)v15 initWithPropertyValues:v14 onConnection:v16];

          if (!v17)
          {

            objc_autoreleasePoolPop(v12);
            goto LABEL_16;
          }

          v18 = [NSNumber numberWithLongLong:[(SQLiteEntity *)v17 persistentID]];
          [v5 addObject:v18];

          objc_autoreleasePoolPop(v12);
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v19 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
        v8 = v19;
      }

      while (v19);
    }

LABEL_16:

    v20 = [v5 count];
    v21 = [v6 count];
    if (a3)
    {
      *a3 = 0;
    }

    if (v20 == v21)
    {
      v22 = v5;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v4 = v25;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

id sub_1003F0DC8(void *a1, void *a2, objc_class *a3, void *a4)
{
  v5 = a2;
  if (a1)
  {
    v32 = +[NSMutableOrderedSet orderedSet];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = v5;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v30 = *v34;
      do
      {
        v8 = 0;
        do
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v33 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          v11 = sub_100382084(v9);
          v12 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v11];

          v13 = [a1 connection];
          v14 = sub_1002D3DF0(AppMetadataEntity, v13, v12);

          if ([v14 existsInDatabase])
          {
            [v14 deleteFromDatabase];
          }

          if (v9)
          {
            v15 = v9[2];
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;
          v17 = [a3 alloc];
          v18 = [a1 connection];
          v19 = [v17 initWithPropertyValues:v16 onConnection:v18];

          if (!v19)
          {

            objc_autoreleasePoolPop(v10);
            goto LABEL_18;
          }

          v20 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v19 persistentID]);
          [v32 addObject:v20];

          objc_autoreleasePoolPop(v10);
          v8 = v8 + 1;
        }

        while (v7 != v8);
        v21 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
        v7 = v21;
      }

      while (v21);
    }

LABEL_18:

    v22 = [v32 count];
    v23 = [obj count];
    if (a4)
    {
      *a4 = 0;
    }

    if (v22 == v23)
    {
      v24 = v32;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    v5 = v27;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

id sub_1003F1090(void *a1, void *a2, void *a3)
{
  v4 = a2;
  if (a1)
  {
    v34 = +[NSMutableOrderedSet orderedSet];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v31 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v35 = *v37;
      p_info = PersonalizationManager.info;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v37 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v36 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          v11 = sub_1002287FC(v9);
          v12 = [v11 length];

          if (v12)
          {
            v13 = sub_1002287FC(v9);
            v14 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v13];

            v15 = [a1 connection];
            v16 = sub_1002D3DF0((p_info + 56), v15, v14);

            if ([v16 existsInDatabase])
            {
              [v16 deleteFromDatabase];
            }

            v17 = objc_alloc((p_info + 56));
            if (v9)
            {
              v18 = v9[2];
            }

            else
            {
              v18 = 0;
            }

            v19 = v18;
            v20 = [a1 connection];
            v21 = [v17 initWithPropertyValues:v19 onConnection:v20];

            if (!v21)
            {
              v24 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v30 = sub_1002287FC(v9);
                *buf = 138543362;
                v41 = v30;
                _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error creating app usage sessionentity for bundleID: %{public}@", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v10);
              goto LABEL_24;
            }

            v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v21 persistentID]);
            [v34 addObject:v22];

            p_info = (PersonalizationManager + 32);
          }

          else
          {
            v14 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v41 = v9;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Dropping app install meatadata due to no bundleID: %@", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v10);
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v23 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
        v6 = v23;
        if (v23)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:

    v25 = [v34 count];
    v26 = [obj count];
    if (a3)
    {
      *a3 = 0;
    }

    if (v25 == v26)
    {
      v27 = v34;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    v4 = v31;
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

id sub_1003F1444(id a1, void *a2, void *a3)
{
  v4 = a2;
  v42 = a1;
  if (a1)
  {
    v5 = +[NSMutableOrderedSet orderedSet];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v38 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v44;
      p_info = &OBJC_METACLASS___SQLiteSchema.info;
      v40 = v5;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v43 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          v13 = sub_10038AD6C(v11);
          v14 = [v13 length];

          if (v14)
          {
            v15 = sub_10038AD6C(v11);
            v16 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v15];

            v17 = [v42 connection];
            v18 = sub_1002D3DF0((p_info + 186), v17, v16);

            if (v18)
            {
              v19 = [NSNumber numberWithUnsignedChar:sub_10038B1E4(v11)];
              [v18 setValue:v19 forProperty:@"event_source"];

              v20 = sub_10038ADA4(v11);
              [v18 setValue:v20 forProperty:@"launch_start_time"];

              if (sub_10038AEFC(v11))
              {
                v21 = [NSNumber numberWithBool:sub_10038AEFC(v11)];
                [v18 setValue:v21 forProperty:@"is_extension"];
              }

              v22 = sub_10038AF64(v11);

              if (v22)
              {
                v23 = sub_10038AF64(v11);
                [v18 setValue:v23 forProperty:@"containing_bundle_id"];
              }

              v24 = sub_10038B22C(v11);

              if (v24)
              {
                v25 = sub_10038B22C(v11);
                [v18 setValue:v25 forProperty:@"payload"];
              }
            }

            else
            {
              v26 = objc_alloc((p_info + 186));
              if (v11)
              {
                v27 = v11[2];
              }

              else
              {
                v27 = 0;
              }

              v28 = v27;
              v29 = [v42 connection];
              v18 = [v26 initWithPropertyValues:v28 onConnection:v29];

              v5 = v40;
              if (!v18)
              {
                v32 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  v37 = sub_10038AD6C(v11);
                  *buf = 138543362;
                  v48 = v37;
                  _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Error creating entity for bundleID: %{public}@", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v12);
                goto LABEL_29;
              }
            }

            v30 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v18 persistentID]);
            [v5 addObject:v30];

            p_info = (&OBJC_METACLASS___SQLiteSchema + 32);
          }

          else
          {
            v16 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v48 = v11;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Dropping event due to no bundleID: %@", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v12);
          v10 = v10 + 1;
        }

        while (v7 != v10);
        v31 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
        v7 = v31;
        if (v31)
        {
          continue;
        }

        break;
      }
    }

LABEL_29:

    v33 = [v5 count];
    v34 = [obj count];
    if (a3)
    {
      *a3 = 0;
    }

    if (v33 == v34)
    {
      v35 = v5;
    }

    else
    {
      v35 = 0;
    }

    a1 = v35;

    v4 = v38;
  }

  return a1;
}

id sub_1003F1928(void *a1, void *a2)
{
  v3 = a2;
  v33 = v3;
  if (a1)
  {
    v4 = v3;
    v35 = +[NSMutableOrderedSet orderedSet];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v37;
      p_vtable = &OBJC_METACLASS___PurchaseHistoryItemsDAAPPartialResponse.vtable;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v37 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v36 + 1) + 8 * v9);
          v11 = objc_autoreleasePoolPush();
          v12 = sub_10038AD6C(v10);
          v13 = [v12 length];

          if (v13)
          {
            v14 = sub_10038AD6C(v10);
            v15 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v14];

            v16 = [a1 connection];
            v17 = sub_1002D3DF0((p_vtable + 62), v16, v15);

            if (v17)
            {
              v18 = [NSNumber numberWithUnsignedChar:sub_10038B1E4(v10)];
              [v17 setValue:v18 forProperty:@"event_source"];

              v19 = sub_10038ADA4(v10);
              [v17 setValue:v19 forProperty:@"launch_start_time"];

              v20 = sub_10038AE18(v10);
              [v17 setValue:v20 forProperty:@"launch_end_time"];
            }

            else
            {
              v21 = objc_alloc((p_vtable + 62));
              if (v10)
              {
                v22 = v10[2];
              }

              else
              {
                v22 = 0;
              }

              v23 = v22;
              v24 = [a1 connection];
              v17 = [v21 initWithPropertyValues:v23 onConnection:v24];

              if (!v17)
              {
                v27 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v32 = sub_10038AD6C(v10);
                  *buf = 138543362;
                  v41 = v32;
                  _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Error creating entity for bundleID: %{public}@", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v11);
                goto LABEL_24;
              }
            }

            v25 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v17 persistentID]);
            [v35 addObject:v25];

            p_vtable = (&OBJC_METACLASS___PurchaseHistoryItemsDAAPPartialResponse + 24);
          }

          else
          {
            v15 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v41 = v10;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Dropping event due to no bundleID: %@", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v11);
          v9 = v9 + 1;
        }

        while (v6 != v9);
        v26 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
        v6 = v26;
        if (v26)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:

    v28 = [v35 count];
    if (v28 == [obj count])
    {
      v29 = v35;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

id sub_1003F1D50(void *a1, void *a2, void *a3)
{
  v4 = a2;
  if (a1)
  {
    v5 = +[NSMutableOrderedSet orderedSet];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        v10 = 0;
        do
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v27 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          if (v11)
          {
            v13 = *(v11 + 16);
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;
          v15 = [ArcadeAppLaunchEventEntity alloc];
          v16 = [a1 connection];
          v17 = [(SQLiteEntity *)v15 initWithPropertyValues:v14 onConnection:v16];

          if (!v17)
          {

            objc_autoreleasePoolPop(v12);
            goto LABEL_16;
          }

          v18 = [NSNumber numberWithLongLong:[(SQLiteEntity *)v17 persistentID]];
          [v5 addObject:v18];

          objc_autoreleasePoolPop(v12);
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v19 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
        v8 = v19;
      }

      while (v19);
    }

LABEL_16:

    v20 = [v5 count];
    v21 = [v6 count];
    if (a3)
    {
      *a3 = 0;
    }

    if (v20 == v21)
    {
      v22 = v5;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    v4 = v25;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

id sub_1003F1F78(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = *(v3 + 2);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v4 databaseID];
    v8 = [LaunchEventSyncMetadataEntity alloc];
    if (v7)
    {
      v9 = [v4 databaseID];
      v10 = [a1 connection];
      v11 = [(SQLiteEntity *)v8 initWithPersistentID:v9 onConnection:v10];

      [(SQLiteEntity *)v11 setValuesWithDictionary:v6];
      if (v11)
      {
LABEL_6:
        v12 = [NSNumber numberWithLongLong:[(SQLiteEntity *)v11 persistentID]];
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v13 = [a1 connection];
      v11 = [(SQLiteEntity *)v8 initWithPropertyValues:v6 onConnection:v13];

      if (v11)
      {
        goto LABEL_6;
      }
    }

    v14 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = v4;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Unable to launch sync metadata entity with: %{public}@", &v16, 0xCu);
    }

    v12 = 0;
    goto LABEL_11;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

void sub_1003F2160()
{
  v0 = objc_opt_self();
  v1 = sub_1003D3EA8(AppDefaultsManager, @"LastWeeklyAnalyticsPostDate");
  v2 = v1;
  if (!v1 || ([v1 timeIntervalSinceNow], v3 <= -604800.0))
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Recording weekly analytics events", v21, 2u);
    }

    v5 = +[NSDate date];
    sub_1003D4024(AppDefaultsManager, v5, @"LastWeeklyAnalyticsPostDate");

    v30[0] = @"AutomaticDownloads";
    v6 = [NSNumber numberWithBool:sub_1003D6624()];
    v30[1] = @"AutomaticUpdates";
    v31[0] = v6;
    v7 = [NSNumber numberWithBool:sub_1003D5FC8()];
    v31[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    v9 = [v8 mutableCopy];

    v10 = sub_1003D3F88(AppDefaultsManager, @"BackgroundAssetDownloadsEnabled");
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = &off_100548778;
    }

    [v9 setObject:v11 forKeyedSubscript:@"BackgroundAssetsDownloads"];
    v12 = sub_10032C390();
    v13 = sub_10032C7CC(v12);

    if (v13)
    {
      v14 = [ASDCellularSettings settingsForIdentity:v13];
      v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v14 allowAutomaticDownloads]);
      [v9 setObject:v15 forKeyedSubscript:@"CellularAutomaticDownloads"];

      v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 cellularDataPrompt]);
      [v9 setObject:v16 forKeyedSubscript:@"CellularDataPrompt"];
    }

    v17 = [NSNumber numberWithBool:sub_1003D3E2C(AppDefaultsManager, @"OffloadUnusedApps", 0)];
    [v9 setObject:v17 forKeyedSubscript:@"AutomaticOffloading"];

    sub_1003F25C4(v0, v9, 40);
    objc_opt_self();
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1003F2794;
    v21[3] = &unk_100528210;
    v21[4] = &v22;
    v21[5] = &v26;
    sub_1003D31A8(ApplicationProxy, 0, v21);
    v32[0] = @"appStoreAppsCount";
    v18 = [NSNumber numberWithUnsignedInteger:v27[3]];
    v32[1] = @"testFlightCount";
    v33[0] = v18;
    v19 = [NSNumber numberWithUnsignedInteger:v23[3]];
    v33[1] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
    sub_1003F25C4(v0, v20, 19);
  }
}

void sub_1003F2598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1003F25C4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v6 = sub_1003F26F8(v5, a3);
  v7 = v4;
  AnalyticsSendEventLazy();
}

void sub_1003F2684(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = objc_opt_self();
  v6 = sub_1003F26F8(v5, a3);
  AnalyticsSendEventLazy();
}

const __CFString *sub_1003F26F8(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if ((a2 - 2) > 0x27)
  {
    return @"com.apple.appstored.repair";
  }

  else
  {
    return off_100528230[a2 - 2];
  }
}

uint64_t sub_1003F2748(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = sub_1003F26F8(v3, a2);
  [v4 UTF8String];
  is_event_used = analytics_is_event_used();

  return is_event_used;
}

void sub_1003F2794(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v8 = v3;
  if (v3 && (v5 = [v3[15] isBeta], v4 = v8, (v5 & 1) != 0))
  {
    v6 = 32;
  }

  else
  {
    v7 = sub_1003D3068(v4);
    v4 = v8;
    if (!v7)
    {
      goto LABEL_7;
    }

    v6 = 40;
  }

  ++*(*(*(a1 + v6) + 8) + 24);
LABEL_7:
}

id sub_1003F281C()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003F28C0;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AB048 != -1)
  {
    dispatch_once(&qword_1005AB048, block);
  }

  v0 = qword_1005AB040;

  return v0;
}

void sub_1003F28C0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AB040;
  qword_1005AB040 = v1;
}

void sub_1003F29AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003F2A54;
    v6[3] = &unk_10051B570;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1003F2A60(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_95;
  }

  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v6 = objc_getProperty(v3, v5, 184, 1);
      v8 = objc_getProperty(v3, v7, 104, 1);
      Property = objc_getProperty(v3, v9, 112, 1);
      v11 = v8;
      v12 = v6;
    }

    else
    {
      v8 = 0;
      v11 = 0;
      v6 = 0;
      v12 = 0;
      Property = 0;
    }

    v13 = Property;
    *buf = 138412802;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    *&buf[22] = 2114;
    v119 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%@] ODR Download requested for %{public}@ : %{public}@", buf, 0x20u);
  }

  v14 = v3;
  objc_opt_self();
  if (_os_feature_enabled_impl())
  {
    v15 = -1;
  }

  else
  {
    v15 = 0x80000000;
  }

  v16 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v122 = 136446466;
    *&v122[4] = "[ODRDownloadManager _hasExceededMaxPinnedResources:]";
    *&v122[12] = 2048;
    *&v122[14] = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s ODRDownloadManager._hasExceededMaxPinnedResources maxPinnedSizeAllowed %lul", v122, 0x16u);
  }

  *v122 = 0;
  *&v122[8] = v122;
  *&v122[16] = 0x2020000000;
  v123 = 0;
  v17 = sub_100208FBC();
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_1003F9760;
  v119 = &unk_10051DC00;
  v121 = v122;
  v18 = v14;
  v120 = v18;
  [v17 readUsingSession:buf];

  if (*(*&v122[8] + 24) > v15)
  {
    v19 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      if (v18)
      {
        v85 = objc_getProperty(v18, v20, 184, 1);
      }

      else
      {
        v85 = 0;
      }

      v86 = v85;
      v87 = *(*&v122[8] + 24);
      *v112 = 138412802;
      v113 = v86;
      v114 = 2048;
      v115 = v87;
      v116 = 2048;
      v117 = v15;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%@] Pin exceeded maximum pinned assets limit (%lu > %lu)", v112, 0x20u);
    }

    _Block_object_dispose(v122, 8);
    v21 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (v18)
      {
        v23 = objc_getProperty(v18, v22, 184, 1);
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;
      *buf = 138412290;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@]: resource request exceeds maximum limit.", buf, 0xCu);
    }

    v110 = NSLocalizedDescriptionKey;
    v111 = @"Request for resource exceeds maximum limit.";
    v25 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
    v26 = [NSError errorWithDomain:NSCocoaErrorDomain code:4993 userInfo:v25];
    sub_1002E0BFC(v18, v26);

    goto LABEL_95;
  }

  _Block_object_dispose(v122, 8);
  if (!sub_1003F77A4(a1, v18))
  {
    v31 = v18;
    os_unfair_lock_lock(&unk_1005AB030);
    v33 = qword_1005AB038;
    if (qword_1005AB038)
    {
      if (v31)
      {
        v34 = objc_getProperty(v31, v32, 240, 1);
      }

      else
      {
        v34 = 0;
      }

      v35 = v34;
      v33 = [v33 objectForKey:v35];
    }

    os_unfair_lock_unlock(&unk_1005AB030);

    if (v33)
    {
      if (v33[80] & 1) == 0 || v31 && (v31[80])
      {
        v36 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          if (v31)
          {
            v38 = objc_getProperty(v31, v37, 184, 1);
          }

          else
          {
            v38 = 0;
          }

          v39 = v38;
          v41 = objc_getProperty(v33, v40, 184, 1);
          *buf = 138412546;
          *&buf[4] = v39;
          *&buf[12] = 2114;
          *&buf[14] = v41;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%@]: request is a duplicate of [%{public}@]", buf, 0x16u);
        }

        sub_1002E0B28(v33, v31);
LABEL_94:

        goto LABEL_95;
      }

      v42 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v44 = objc_getProperty(v33, v43, 184, 1);
        *buf = 138412290;
        *&buf[4] = v44;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%@]: Restarting prefetch download as non-discretionary", buf, 0xCu);
      }

      v46 = objc_getProperty(v33, v45, 96, 1);
      [v46 cancel];
    }

    v47 = v31;
    os_unfair_lock_lock(&unk_1005AB030);
    v49 = qword_1005AB038;
    if (!qword_1005AB038)
    {
      v50 = +[NSMapTable strongToStrongObjectsMapTable];
      v51 = qword_1005AB038;
      qword_1005AB038 = v50;

      v49 = qword_1005AB038;
    }

    if (v47)
    {
      v52 = objc_getProperty(v47, v48, 240, 1);
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;
    [v49 setObject:v47 forKey:v53];

    os_unfair_lock_unlock(&unk_1005AB030);
    sub_1001CDBB8(ODRAssetDownload, v47);

    v54 = sub_100220330();
    v55 = v54;
    if (v47)
    {
      v56 = sub_10022067C(v54, v47[19]);

      if (v56)
      {
        v58 = objc_getProperty(v47, v57, 216, 1);
        goto LABEL_47;
      }
    }

    else
    {
      v96 = sub_10022067C(v54, 0);

      if (v96)
      {
        v58 = 0;
LABEL_47:
        v59 = v58;
        v60 = [v59 isFileURL];

        if (v60)
        {
          objc_initWeak(buf, a1);
          v105[0] = _NSConcreteStackBlock;
          v105[1] = 3221225472;
          v105[2] = sub_1003F7D9C;
          v105[3] = &unk_1005283F0;
          objc_copyWeak(&v107, buf);
          v106 = v47;
          sub_1002E1774(v106, v105);

          objc_destroyWeak(&v107);
          objc_destroyWeak(buf);
        }

        else
        {
          if (v47 && v47[18])
          {
            goto LABEL_79;
          }

          v62 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            if (v47)
            {
              v64 = objc_getProperty(v47, v63, 184, 1);
            }

            else
            {
              v64 = 0;
            }

            v65 = v64;
            *buf = 138412290;
            *&buf[4] = v65;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "[%@] No download size, attempting to look it up", buf, 0xCu);
          }

          v67 = [DetermineSizeForURLTask alloc];
          if (v47)
          {
            v68 = objc_getProperty(v47, v66, 216, 1);
            v70 = objc_getProperty(v47, v69, 184, 1);
          }

          else
          {
            v68 = 0;
            v70 = 0;
          }

          v71 = v70;
          v72 = sub_1002E6CB8(v67, v68, v71);

          if (v47)
          {
            v73 = (v47[10] & 1) != 0 ? 9 : 25;
          }

          else
          {
            v73 = 25;
          }

          sub_10023EF88(ODRTaskQueue, v72, v73, 1);
          v75 = v72 ? objc_getProperty(v72, v74, 32, 1) : 0;
          v76 = v75;

          if (v76)
          {
            v78 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              if (v47)
              {
                v80 = objc_getProperty(v47, v79, 184, 1);
              }

              else
              {
                v80 = 0;
              }

              v82 = v80;
              if (v72)
              {
                v83 = objc_getProperty(v72, v81, 32, 1);
              }

              else
              {
                v83 = 0;
              }

              v84 = v83;
              *buf = 138412546;
              *&buf[4] = v82;
              *&buf[12] = 2114;
              *&buf[14] = v84;
              _os_log_error_impl(&_mh_execute_header, v78, OS_LOG_TYPE_ERROR, "[%@] Error fetching size: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            if (v72)
            {
              v88 = objc_getProperty(v72, v77, 66, 1);
            }

            else
            {
              v88 = 0;
            }

            v89 = v88;
            v90 = [v89 integerValue];
            if (v47)
            {
              v47[18] = v90;
            }

            v91 = sub_100208FBC();
            v103[0] = _NSConcreteStackBlock;
            v103[1] = 3221225472;
            v103[2] = sub_1003F7DFC;
            v103[3] = &unk_10051AF70;
            v104 = v47;
            [v91 modifyUsingTransaction:v103];

            v78 = v104;
          }

          if (v47)
          {
LABEL_79:
            v92 = objc_getProperty(v47, v61, 200, 1);
          }

          else
          {
            v92 = 0;
          }

          v93 = v92;
          v94 = [v93 isCancelled];

          if (v94)
          {
            v95 = [NSError errorWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
            sub_1003F78A4(a1, v47, v95);
          }

          else
          {
            sub_1003F7E0C(a1, v47);
          }
        }

        goto LABEL_94;
      }
    }

    v97 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      if (v47)
      {
        v99 = objc_getProperty(v47, v98, 184, 1);
      }

      else
      {
        v99 = 0;
      }

      v100 = v99;
      *buf = 138412290;
      *&buf[4] = v100;
      _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "[%@]: There was not enough space available to download the requested resource.", buf, 0xCu);
    }

    v108 = NSLocalizedFailureReasonErrorKey;
    v109 = @"There was not enough space available to download the requested On Demand Resources.";
    v101 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
    v102 = [NSError errorWithDomain:NSCocoaErrorDomain code:4992 userInfo:v101];
    sub_1003F78A4(a1, v47, v102);

    goto LABEL_94;
  }

  v27 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (v18)
    {
      v29 = objc_getProperty(v18, v28, 184, 1);
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    *buf = 138412290;
    *&buf[4] = v30;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%@]: Expected asset already exists.", buf, 0xCu);
  }

  sub_1003F78A4(a1, v18, 0);
LABEL_95:
}

void sub_1003F3730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003F3770(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003F3834;
    block[3] = &unk_10051AEE8;
    v9 = v5;
    v10 = v6;
    v11 = a1;
    dispatch_async(v7, block);
  }
}

void sub_1003F3834(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received request to cancel download requests for %{public}@ - %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = sub_1003F3B7C;
  v31 = sub_1003F3B8C;
  v32 = 0;
  v5 = sub_100208FBC();
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1003F3B94;
  v23[3] = &unk_10051B5E8;
  v25 = buf;
  v24 = *(a1 + 32);
  [v5 modifyUsingTransaction:v23];

  sub_1003F3CC0(*(a1 + 48), *(*&buf[8] + 40));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          if (v10)
          {
            Property = objc_getProperty(v10, v12, 184, 1);
          }

          else
          {
            Property = 0;
          }

          v14 = Property;
          *v26 = 138412290;
          v27 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@]: Canceling download request", v26, 0xCu);
        }

        if (v10)
        {
          v16 = objc_getProperty(v10, v15, 96, 1);
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
        [v17 cancel];

        sub_1003F3E9C(*(a1 + 48), v10);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v18 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
      v7 = v18;
    }

    while (v18);
  }

  _Block_object_dispose(buf, 8);
}

uint64_t sub_1003F3B7C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1003F3B94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001C351C(v3, *(a1 + 32));
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        sub_10021A104(v3, *(*(&v13 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return 1;
}

id sub_1003F3CC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_opt_new();
    os_unfair_lock_lock(&unk_1005AB030);
    if (qword_1005AB038)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v19;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v19 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v18 + 1) + 8 * i);
            v11 = qword_1005AB038;
            v12 = sub_1001CDAC8(v10);
            v13 = [v11 objectForKey:{v12, v18}];

            if (v13)
            {
              [v4 addObject:v13];
              v14 = qword_1005AB038;
              v15 = sub_1001CDAC8(v10);
              [v14 removeObjectForKey:v15];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v7);
      }
    }

    os_unfair_lock_unlock(&unk_1005AB030);
    v16 = [NSArray arrayWithArray:v4];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_1003F3E9C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = sub_1002E12A8(v3);
    v6 = [v4 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = sub_1002E12A8(v3);
      v18 = 0;
      [v4 removeItemAtPath:v7 error:&v18];
      v8 = v18;

      v9 = ASDLogHandleForCategory();
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          if (v3)
          {
            Property = objc_getProperty(v3, v11, 184, 1);
          }

          else
          {
            Property = 0;
          }

          v13 = Property;
          *buf = 138412546;
          v20 = v13;
          v21 = 2114;
          v22 = v8;
          _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%@]: Error removing download from scratch directory: %{public}@", buf, 0x16u);
LABEL_16:
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (v3)
        {
          v17 = objc_getProperty(v3, v16, 184, 1);
        }

        else
        {
          v17 = 0;
        }

        v13 = v17;
        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@]: Successfully removed download from scratch directory", buf, 0xCu);
        goto LABEL_16;
      }
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
LABEL_18:

        goto LABEL_19;
      }

      if (v3)
      {
        v15 = objc_getProperty(v3, v14, 184, 1);
      }

      else
      {
        v15 = 0;
      }

      v10 = v15;
      *buf = 138412290;
      v20 = v10;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[%@]: No download files to remove, skipping.", buf, 0xCu);
    }

    goto LABEL_18;
  }

LABEL_19:
}

void sub_1003F40F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003F41B8;
    block[3] = &unk_10051AEE8;
    v9 = v5;
    v10 = v6;
    v11 = a1;
    dispatch_async(v7, block);
  }
}

void sub_1003F41B8(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received request to pause download requests for %{public}@ - %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = sub_1003F3B7C;
  v31 = sub_1003F3B8C;
  v32 = 0;
  v5 = sub_100208FBC();
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1003F44F4;
  v23[3] = &unk_10051B5E8;
  v25 = buf;
  v24 = *(a1 + 40);
  [v5 modifyUsingTransaction:v23];

  sub_1003F3CC0(*(a1 + 48), *(*&buf[8] + 40));
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          if (v10)
          {
            Property = objc_getProperty(v10, v12, 184, 1);
          }

          else
          {
            Property = 0;
          }

          v14 = Property;
          *v26 = 138412290;
          v27 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@]: Pausing download request", v26, 0xCu);
        }

        if (v10)
        {
          v16 = objc_getProperty(v10, v15, 96, 1);
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;
        [v17 cancel];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v18 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
      v7 = v18;
    }

    while (v18);
  }

  _Block_object_dispose(buf, 8);
}

uint64_t sub_1003F44F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001C3700(v3, *(a1 + 32), 1);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        sub_10021B35C(v3, 1, *(*(&v13 + 1) + 8 * v11));
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return 1;
}

void sub_1003F4628(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003F46EC;
    block[3] = &unk_10051AEE8;
    v9 = v5;
    v10 = v6;
    v11 = a1;
    dispatch_async(v7, block);
  }
}

void sub_1003F46EC(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *buf = 138412802;
    *&buf[4] = v2;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    *&buf[22] = 2114;
    v33 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@]: Received request to resume download requests for %{public}@ - %{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = sub_1003F3B7C;
  v34 = sub_1003F3B8C;
  v35 = objc_opt_new();
  v6 = sub_100208FBC();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1003F4ACC;
  v22[3] = &unk_100528378;
  v23 = *(a1 + 40);
  v24 = *(a1 + 32);
  v7 = v2;
  v25 = v7;
  v26 = buf;
  [v6 modifyUsingTransaction:v22];

  if ([*(*&buf[8] + 40) count])
  {
    v8 = [*(*&buf[8] + 40) firstObject];
    v10 = v8;
    if (v8)
    {
      Property = objc_getProperty(v8, v9, 128, 1);
    }

    else
    {
      Property = 0;
    }

    v12 = Property;

    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 138412546;
      v29 = v7;
      v30 = 2114;
      v31 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@]: Recreating promises on resume request for %{public}@", v28, 0x16u);
    }

    sub_1003F4CC8(*(a1 + 48), *(*&buf[8] + 40), v12, v7);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v14 = *(*&buf[8] + 40);
    v15 = [v14 countByEnumeratingWithState:&v18 objects:v27 count:16];
    if (v15)
    {
      v16 = *v19;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v14);
          }

          sub_1003F2A60(*(a1 + 48), *(*(&v18 + 1) + 8 * i));
        }

        v15 = [v14 countByEnumeratingWithState:&v18 objects:v27 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 138412290;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@]: No paused initial requests found", v28, 0xCu);
    }
  }

  _Block_object_dispose(buf, 8);
}

uint64_t sub_1003F4ACC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001C3700(v3, *(a1 + 32), 1);
  if ([v4 count])
  {
    v19 = sub_100399B78(ODRApplication, *(a1 + 40));
    v5 = sub_1001C40CC(v3, v19);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          sub_10021B35C(v3, 0, v11);
          v12 = sub_1001CD9C8(v11);
          v13 = sub_1001C3A68(v3, v12);

          if (v13)
          {
            v14 = v5 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (!v14)
          {
            v15 = sub_1002E0230(ODRAssetDownloadRequest, v13, v5, v19, *(a1 + 48));
            v16 = sub_1001CDA80(v11);
            if (v15)
            {
              v15[29] = v16;
            }

            [*(*(*(a1 + 56) + 8) + 40) addObject:{v15, v18}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v4 = v18;
  }

  return 1;
}

void sub_1003F4CC8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v37 = 0;
    v10 = sub_100248934(IXAppInstallCoordinator, v8, &v37);
    v11 = v37;
    if (v11)
    {
      v12 = v11;
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v41 = v9;
        v42 = 2114;
        v43 = v8;
        v44 = 2114;
        v45 = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@]: Error fetching coordinator with ID %{public}@: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v13 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = v7;
      v15 = [v14 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v34;
        do
        {
          v18 = 0;
          do
          {
            if (*v34 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v33 + 1) + 8 * v18);
            if (v19 && v19[29] == 1)
            {
              v20 = sub_1002E151C(v19);
              if (v20)
              {
                [v13 addObject:v20];
              }
            }

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v16);
      }

      v32 = 0;
      v21 = sub_100249EFC(v10, v13, &v32);
      v12 = v32;
      if (v12)
      {
        v22 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v41 = v9;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%@]: Error setting initial ODR promises", buf, 0xCu);
        }
      }

      if ((v21 & 1) == 0)
      {
        v23 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v41 = v9;
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%@]: Setting initial ODR promises failed, canceling promises", buf, 0xCu);
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v13 = v13;
        v24 = [v13 countByEnumeratingWithState:&v28 objects:v38 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v29;
          do
          {
            v27 = 0;
            do
            {
              if (*v29 != v26)
              {
                objc_enumerationMutation(v13);
              }

              [*(*(&v28 + 1) + 8 * v27) setComplete:{1, v28}];
              v27 = v27 + 1;
            }

            while (v25 != v27);
            v25 = [v13 countByEnumeratingWithState:&v28 objects:v38 count:16];
          }

          while (v25);
        }
      }
    }
  }
}

void sub_1003F5048(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003F50C4;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_1003F50C4(uint64_t a1)
{
  v1 = sub_1001CDDC8();
  v2 = objc_opt_new();
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v106 objects:v119 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v107;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v107 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v106 + 1) + 8 * i);
        v9 = sub_1001CD990(v8);
        v10 = [v2 objectForKeyedSubscript:v9];

        if (!v10)
        {
          v10 = objc_opt_new();
        }

        [v10 addObject:v8];
        v11 = sub_1001CD990(v8);
        [v2 setObject:v10 forKeyedSubscript:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v106 objects:v119 count:16];
    }

    while (v5);
  }

  v64 = v3;

  v71 = objc_alloc_init(_TtC9appstored6LogKey);
  v72 = objc_opt_new();
  v12 = objc_opt_new();
  v74 = objc_opt_new();
  v73 = objc_opt_new();
  v65 = +[LSDatabaseContext sharedDatabaseContext];
  v66 = [v65 startAccessingReturningError:0];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v70 = v2;
  obj = [v2 allKeys];
  v13 = [obj countByEnumeratingWithState:&v102 objects:v118 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v103;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v103 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v102 + 1) + 8 * j);
        v18 = sub_100399B78(ODRApplication, v17);
        v19 = sub_100208FBC();
        v93[0] = _NSConcreteStackBlock;
        v93[1] = 3221225472;
        v93[2] = sub_1003F59E8;
        v93[3] = &unk_1005283A0;
        v94 = v18;
        v95 = v70;
        v96 = v17;
        v97 = v71;
        v98 = v74;
        v99 = v72;
        v100 = v12;
        v101 = v73;
        v20 = v18;
        [v19 modifyUsingTransaction:v93];
      }

      v14 = [obj countByEnumeratingWithState:&v102 objects:v118 count:16];
    }

    while (v14);
  }

  if (v66)
  {
    [v65 stopAccessing];
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v21 = v12;
  v22 = [v21 countByEnumeratingWithState:&v89 objects:v117 count:16];
  if (v22)
  {
    v24 = v22;
    v25 = *v90;
    do
    {
      v26 = 0;
      do
      {
        if (*v90 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v89 + 1) + 8 * v26);
        if (v27)
        {
          Property = objc_getProperty(*(*(&v89 + 1) + 8 * v26), v23, 104, 1);
        }

        else
        {
          Property = 0;
        }

        v29 = Property;
        v30 = [v74 objectForKeyedSubscript:v29];

        if (!v30)
        {
          [v72 addObject:v27];
        }

        v26 = v26 + 1;
      }

      while (v24 != v26);
      v31 = [v21 countByEnumeratingWithState:&v89 objects:v117 count:16];
      v24 = v31;
    }

    while (v31);
  }

  [v21 removeAllObjects];
  v63 = v21;
  if (![v72 count])
  {
    v43 = objc_opt_new();
    sub_10029BD7C();
    v50 = v80 = 0;
    v51 = [v43 contentsOfDirectoryAtPath:? error:?];
    v52 = v80;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    obja = v51;
    v53 = [obja countByEnumeratingWithState:&v76 objects:v110 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v77;
      do
      {
        for (k = 0; k != v54; k = k + 1)
        {
          v57 = v52;
          if (*v77 != v55)
          {
            objc_enumerationMutation(obja);
          }

          v58 = *(*(&v76 + 1) + 8 * k);
          v59 = [v50 stringByAppendingPathComponent:v58];
          v75 = v52;
          v60 = [v43 removeItemAtPath:v59 error:&v75];
          v52 = v75;

          v61 = ASDLogHandleForCategory();
          v62 = v61;
          if ((v60 & 1) != 0 || !v52)
          {
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v114 = v58;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Successfully removed %{public}@ from the scratch directory", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v114 = v58;
            v115 = 2114;
            v116 = v52;
            _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "Failed to remove %{public}@ from the scratch directory: %{public}@", buf, 0x16u);
          }
        }

        v54 = [obja countByEnumeratingWithState:&v76 objects:v110 count:16];
      }

      while (v54);
    }

    goto LABEL_66;
  }

  v32 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v72 count];
    *buf = 138543618;
    v114 = v71;
    v115 = 2048;
    v116 = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Found %lu download(s) to resume", buf, 0x16u);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v34 = [v73 allKeys];
  v35 = [v34 countByEnumeratingWithState:&v85 objects:v112 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v86;
    do
    {
      for (m = 0; m != v36; m = m + 1)
      {
        if (*v86 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v85 + 1) + 8 * m);
        v40 = objc_alloc_init(_TtC9appstored6LogKey);
        v41 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v114 = v40;
          v115 = 2114;
          v116 = v39;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%@]: Recreating promises for %{public}@", buf, 0x16u);
        }

        v42 = [v73 objectForKeyedSubscript:v39];
        sub_1003F4CC8(*(a1 + 32), v42, v39, v40);
      }

      v36 = [v34 countByEnumeratingWithState:&v85 objects:v112 count:16];
    }

    while (v36);
  }

  v84 = 0u;
  v82 = 0u;
  v83 = 0u;
  v81 = 0u;
  v43 = v72;
  v44 = [v43 countByEnumeratingWithState:&v81 objects:v111 count:16];
  if (!v44)
  {
LABEL_66:
    v48 = v63;
    v47 = v64;
    goto LABEL_67;
  }

  v45 = v44;
  v46 = *v82;
  v48 = v63;
  v47 = v64;
  do
  {
    for (n = 0; n != v45; n = n + 1)
    {
      if (*v82 != v46)
      {
        objc_enumerationMutation(v43);
      }

      sub_1003F2A60(*(a1 + 32), *(*(&v81 + 1) + 8 * n));
    }

    v45 = [v43 countByEnumeratingWithState:&v81 objects:v111 count:16];
  }

  while (v45);
LABEL_67:
}

uint64_t sub_1003F59E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001C40CC(v3, *(a1 + 32));
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = [*(a1 + 40) objectForKeyedSubscript:*(a1 + 48)];
  v35 = [v5 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v35)
  {
    v7 = *v38;
    v34 = (a1 + 72);
    v32 = (a1 + 80);
    *&v6 = 138543618;
    v31 = v6;
    v33 = *v38;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        if (sub_1001CDA38(v9))
        {
          v36 = 0;
          v10 = [LSApplicationRecord alloc];
          v11 = sub_1001CD990(v9);
          v12 = [v10 initWithBundleIdentifier:v11 allowPlaceholder:0 error:&v36];

          if (!v12)
          {
            v25 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v29 = sub_1001CD990(v9);
              *buf = v31;
              v42 = v29;
              v43 = 2114;
              v44 = v36;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Error retrieving application record for %{public}@: %{public}@", buf, 0x16u);
            }

            goto LABEL_34;
          }

          if ([v12 isPlaceholder])
          {
            goto LABEL_34;
          }

          if (sub_1001CDA80(v9) != 1)
          {
            sub_10021A104(v3, v9);
LABEL_34:

            continue;
          }
        }

        v13 = sub_1001CD9C8(v9);
        v14 = sub_1001C3A68(v3, v13);

        if (v14)
        {
          v15 = v4 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          sub_1001CDF48(ODRAssetDownload, v9);
        }

        else
        {
          v16 = sub_1002E0230(ODRAssetDownloadRequest, v14, v4, *(a1 + 32), *(a1 + 56));
          v17 = v16;
          if (v16)
          {
            *(v16 + 232) = sub_1001CDA80(v9);
            if (sub_1001CDA80(v9) == 1)
            {
              v18 = *(a1 + 64);
              sub_1001CD990(v9);
              v19 = v5;
              v20 = v4;
              v21 = a1;
              v23 = v22 = v3;
              [v18 setObject:&__kCFBooleanTrue forKeyedSubscript:v23];

              v3 = v22;
              a1 = v21;
              v4 = v20;
              v5 = v19;
              v7 = v33;
              v24 = v34;
            }

            else
            {
              v26 = sub_1001CDA80(v9);
              v24 = v34;
              if (v26 == 2)
              {
                v24 = v32;
              }
            }

            [*v24 addObject:{v17, v31}];
            v27 = sub_1001CDA00(v9);
            if (v27 && sub_1001CDA80(v9) == 1)
            {
              v28 = [*(a1 + 88) objectForKeyedSubscript:v27];
              if (!v28)
              {
                v28 = objc_opt_new();
              }

              [v28 addObject:v17];
              [*(a1 + 88) setObject:v28 forKeyedSubscript:v27];
            }
          }
        }
      }

      v35 = [v5 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v35);
  }

  return 1;
}

void sub_1003F5DB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 16);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1003F5E9C;
    v11[3] = &unk_10051C7A8;
    v12 = v7;
    v13 = v8;
    v14 = a1;
    v15 = v9;
    dispatch_async(v10, v11);
  }
}

void sub_1003F5E9C(void **a1)
{
  v1 = sub_100399B78(ODRApplication, a1[4]);
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v5 = a1[5];
    *buf = 138412802;
    *&buf[4] = v2;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    *&buf[22] = 2114;
    v83 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@]: Checking for prefetch downloads for %{public}@ - %{public}@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v83 = sub_1003F3B7C;
  v84 = sub_1003F3B8C;
  v85 = objc_opt_new();
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v6 = sub_100208FBC();
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1003F67AC;
  v62[3] = &unk_1005283C8;
  v63 = a1[5];
  v40 = v1;
  v64 = v40;
  v42 = v2;
  v65 = v42;
  v66 = &v68;
  v67 = buf;
  [v6 readUsingSession:v62];

  v7 = sub_10032C390();
  v61 = 0;
  v41 = sub_10032C7CC(v7);
  v39 = 0;

  if (v41)
  {
    v8 = sub_10020FCA4(ExpensiveNetworkEvaluator, v41);
    v9 = [_TtC9appstored17EvaluatorDownload alloc];
    v10 = [(EvaluatorDownload *)v9 initWithBytes:v69[3] isAutomatic:1 isRemaining:0 isUpdate:0 name:0 clientID:0 logKey:v42];
    v11 = +[BagService appstoredService];
    v12 = [v11 lastBagNoAsyncBlocking];
    v13 = sub_10020FD94(v8, v10, v12);

    v14 = (v13 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"Not allowing";
      v17 = v69[3];
      if ((v13 & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v16 = @"Allowing";
      }

      *v73 = 138412802;
      v74 = v42;
      v75 = 2114;
      v76 = v16;
      v77 = 2048;
      v78 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%@]: %{public}@ cellular for prefetch downloads with total size of %llu", v73, 0x20u);
    }
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v73 = 138412546;
      v74 = v42;
      v75 = 2114;
      v76 = v39;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%@]: Not allowing cellular for prefetch downloads because no identity was found: %{public}@", v73, 0x16u);
    }

    v14 = 0;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v18 = *(*&buf[8] + 40);
  v19 = [v18 countByEnumeratingWithState:&v57 objects:v81 count:16];
  if (v19)
  {
    v20 = *v58;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v58 != v20)
        {
          objc_enumerationMutation(v18);
        }

        sub_1002E1110(*(*(&v57 + 1) + 8 * i), v14);
      }

      v19 = [v18 countByEnumeratingWithState:&v57 objects:v81 count:16];
    }

    while (v19);
  }

  v22 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [*(*&buf[8] + 40) count];
    v24 = sub_10039A6A0(v40);
    v25 = a1[5];
    *v73 = 138413058;
    v74 = v42;
    v75 = 2048;
    v76 = v23;
    v77 = 2114;
    v78 = v24;
    v79 = 2114;
    v80 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%@]: Starting %lu prefetch downloads for %{public}@ - %{public}@", v73, 0x2Au);
  }

  v26 = dispatch_group_create();
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = *(*&buf[8] + 40);
  v27 = [obj countByEnumeratingWithState:&v53 objects:v72 count:16];
  if (v27)
  {
    v28 = *v54;
    do
    {
      v29 = 0;
      do
      {
        if (*v54 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v53 + 1) + 8 * v29);
        dispatch_group_enter(v26);
        if (v30)
        {
          *(v30 + 80) = 1;
        }

        v31 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          if (v30)
          {
            v33 = objc_getProperty(v30, v32, 184, 1);
            v34 = *(v30 + 176);
          }

          else
          {
            v33 = 0;
            v34 = 0;
          }

          *v73 = 138412546;
          v74 = v33;
          v75 = 2048;
          v76 = v34;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[%@]: Starting prefetch download with priority %f", v73, 0x16u);
        }

        objc_initWeak(v73, v30);
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_1003F696C;
        v50[3] = &unk_1005283F0;
        objc_copyWeak(&v52, v73);
        v35 = v26;
        v51 = v35;
        if (v30)
        {
          [*(v30 + 256) addErrorBlock:v50];
        }

        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1003F6A80;
        v47[3] = &unk_100528418;
        objc_copyWeak(&v49, v73);
        v48 = v35;
        if (v30)
        {
          [*(v30 + 256) addSuccessBlock:v47];
        }

        sub_1003F2A60(a1[6], v30);

        objc_destroyWeak(&v49);
        objc_destroyWeak(&v52);
        objc_destroyWeak(v73);
        v29 = v29 + 1;
      }

      while (v27 != v29);
      v36 = [obj countByEnumeratingWithState:&v53 objects:v72 count:16];
      v27 = v36;
    }

    while (v36);
  }

  v37 = dispatch_get_global_queue(21, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003F6B70;
  block[3] = &unk_10051B790;
  v38 = a1[7];
  block[4] = a1[6];
  v46 = v38;
  dispatch_group_notify(v26, v37, block);

  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(buf, 8);
}

void sub_1003F6714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose((v63 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1003F67AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_1001C3700(v3, *(a1 + 32), 2);
  if ([v4 count])
  {
    v5 = sub_1001C40CC(v3, *(a1 + 40));
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = sub_1001CD9C8(*(*(&v16 + 1) + 8 * i));
          v12 = sub_1001C3A68(v3, v11);

          v13 = sub_1002E0230(ODRAssetDownloadRequest, v12, v5, *(a1 + 40), *(a1 + 48));
          v14 = v13;
          if (v13)
          {
            *(*(*(a1 + 56) + 8) + 24) += *(v13 + 144);
            [*(*(*(a1 + 64) + 8) + 40) addObject:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v4 = v15;
  }
}

void sub_1003F696C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v6, 184, 1);
    }

    else
    {
      Property = 0;
    }

    v8 = Property;
    v9 = 138412546;
    v10 = v8;
    v11 = 2114;
    v12 = v3;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[%@]: Failed prefetch download with error: %{public}@", &v9, 0x16u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1003F6A80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (WeakRetained)
    {
      Property = objc_getProperty(WeakRetained, v4, 184, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = Property;
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%@]: Successfully finished prefetch download", &v7, 0xCu);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_1003F6B70(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(*(a1 + 32) + 8);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003F6C08;
    block[3] = &unk_10051BD28;
    v4 = v1;
    dispatch_async(v2, block);
  }
}

void sub_1003F6C18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003F6CBC;
    v6[3] = &unk_10051B570;
    v7 = v3;
    v8 = a1;
    dispatch_async(v5, v6);
  }
}

void sub_1003F6CBC(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 64, 1);
    }

    v6 = Property;
    v7 = *(a1 + 32);
    if (v7)
    {
      v7 = objc_getProperty(v7, v5, 24, 1);
    }

    v9 = v7;
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = objc_getProperty(v10, v8, 40, 1);
    }

    v11 = v10;
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    *&buf[22] = 2114;
    v82 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%@]: Checking for initial downloads for %{public}@ - %{public}@", buf, 0x20u);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 16);
  }

  else
  {
    v13 = 0;
  }

  v14 = ASDLogHandleForCategory();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v17 = *(a1 + 32);
      if (v17)
      {
        v17 = objc_getProperty(v17, v16, 64, 1);
      }

      v18 = v17;
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@]: Skipping manifest fetch for App Review install", buf, 0xCu);
    }
  }

  else
  {
    if (v15)
    {
      v19 = *(a1 + 32);
      if (v19)
      {
        v19 = objc_getProperty(v19, v16, 64, 1);
      }

      v20 = v19;
      *buf = 138412290;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@]: Fetching manifest", buf, 0xCu);
    }

    v21 = *(a1 + 40);
    v14 = *(a1 + 32);
    if (v21)
    {
      v22 = sub_100220330();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1003F9804;
      v82 = &unk_10051AF98;
      v83 = v14;
      sub_100221660(v22, buf);
    }
  }

  v23 = *(a1 + 40);
  v24 = *(a1 + 32);
  if (v23)
  {
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = sub_1003F3B7C;
    v72 = sub_1003F3B8C;
    v73 = objc_opt_new();
    v25 = sub_100271100(v24);
    if (v24)
    {
      v26 = v24[9];
    }

    else
    {
      v26 = 0;
    }

    v27 = v25;
    v28 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x3032000000;
    v77 = sub_1003F3B7C;
    v78 = sub_1003F3B8C;
    v79 = 0;
    if (v26 <= 2)
    {
      v29 = sub_100208FBC();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1003FA100;
      v82 = &unk_1005284B8;
      v84 = &v74;
      v85 = v26;
      v83 = v27;
      [v29 readUsingSession:buf];

      v28 = *(v75 + 40);
    }

    v30 = v28;
    _Block_object_dispose(&v74, 8);

    if (v24)
    {
      v31 = v24[9];
    }

    else
    {
      v31 = 0;
    }

    v32 = v27;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v82 = sub_1003F3B7C;
    v83 = sub_1003F3B8C;
    v84 = 0;
    if ((v31 | 2) == 2)
    {
      v33 = sub_100208FBC();
      v74 = _NSConcreteStackBlock;
      v75 = 3221225472;
      v76 = sub_1003FA170;
      v77 = &unk_10051DC00;
      v79 = buf;
      v78 = v32;
      [v33 readUsingSession:&v74];

      v34 = *(*&buf[8] + 40);
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
    _Block_object_dispose(buf, 8);

    if ([v30 count] || objc_msgSend(v35, "count"))
    {
      v36 = sub_100208FBC();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1003F943C;
      v82 = &unk_100528468;
      v83 = v32;
      v84 = v30;
      v85 = v24;
      v87 = &v68;
      v86 = v35;
      [v36 modifyUsingTransaction:buf];
    }

    v37 = [NSArray arrayWithArray:v69[5]];

    _Block_object_dispose(&v68, 8);
  }

  else
  {
    v37 = 0;
  }

  v38 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v40 = *(a1 + 32);
    if (v40)
    {
      v40 = objc_getProperty(v40, v39, 64, 1);
    }

    v41 = v40;
    v42 = [v37 count];
    *buf = 138412546;
    *&buf[4] = v41;
    *&buf[12] = 2048;
    *&buf[14] = v42;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[%@]: Found %ld initial download(s)", buf, 0x16u);
  }

  v44 = *(a1 + 32);
  v45 = *(a1 + 40);
  if (v44)
  {
    v44 = objc_getProperty(v44, v43, 40, 1);
  }

  v47 = v44;
  v48 = *(a1 + 32);
  if (v48)
  {
    v48 = objc_getProperty(v48, v46, 64, 1);
  }

  v49 = v48;
  sub_1003F4CC8(v45, v37, v47, v49);

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v50 = v37;
  v51 = [v50 countByEnumeratingWithState:&v64 objects:v80 count:16];
  if (v51)
  {
    v52 = *v65;
    do
    {
      v53 = 0;
      do
      {
        if (*v65 != v52)
        {
          objc_enumerationMutation(v50);
        }

        v54 = *(*(&v64 + 1) + 8 * v53);
        v55 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v57 = *(a1 + 32);
          if (v57)
          {
            v57 = objc_getProperty(v57, v56, 64, 1);
          }

          v59 = v57;
          if (v54)
          {
            v60 = objc_getProperty(v54, v58, 184, 1);
            v61 = a1;
          }

          else
          {
            v61 = a1;
            v60 = 0;
          }

          v62 = v60;
          *buf = 138412546;
          *&buf[4] = v59;
          *&buf[12] = 2114;
          *&buf[14] = v62;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%@]: Requesting download %{public}@", buf, 0x16u);

          a1 = v61;
        }

        sub_1003F2A60(*(a1 + 40), v54);
        v53 = v53 + 1;
      }

      while (v51 != v53);
      v63 = [v50 countByEnumeratingWithState:&v64 objects:v80 count:16];
      v51 = v63;
    }

    while (v63);
  }
}

void sub_1003F752C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1003F7570(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_opt_new();
    os_unfair_lock_lock(&unk_1005AB030);
    if (qword_1005AB038)
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v2 = [qword_1005AB038 objectEnumerator];
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v9;
        do
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v9 != v5)
            {
              objc_enumerationMutation(v2);
            }

            [v1 addObject:*(*(&v8 + 1) + 8 * i)];
          }

          v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        }

        while (v4);
      }
    }

    os_unfair_lock_unlock(&unk_1005AB030);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id sub_1003F76B4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = a2;
    v3 = sub_1002690FC(v2);
    v4 = sub_100269134(v2);

    v5 = [NSString stringWithFormat:@"%@-%@", v3, v4];
    os_unfair_lock_lock(&unk_1005AB030);
    if (v5)
    {
      v6 = qword_1005AB038 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = [qword_1005AB038 objectForKey:v5];
    }

    os_unfair_lock_unlock(&unk_1005AB030);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1003F77A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    a1 = sub_100220330();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1003F8518;
    v5[3] = &unk_10051EEF0;
    v6 = v3;
    v7 = &v8;
    sub_100221660(a1, v5);

    LOBYTE(a1) = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return a1 & 1;
}

void sub_1003F788C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003F78A4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (a1)
  {
    if (v6)
    {
      sub_1003F3E9C(a1, v5);
      sub_1002E0BFC(v5, v8);
    }

    else
    {
      if (v5)
      {
        v9 = objc_getProperty(v5, v7, 200, 1);
        Property = objc_getProperty(v5, v10, 200, 1);
      }

      else
      {
        v9 = 0;
        Property = 0;
      }

      v12 = Property;
      [v9 setCompletedUnitCount:{objc_msgSend(v12, "completedUnitCount")}];

      v13 = v5;
      v44[0] = 0;
      v44[1] = v44;
      v44[2] = 0x2020000000;
      v45 = 1;
      v14 = sub_100220330();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1003F9D74;
      v47 = &unk_10051EEF0;
      v15 = v13;
      v48 = v15;
      v49 = v44;
      sub_100221660(v14, buf);

      _Block_object_dispose(v44, 8);
      sub_1002E0D48(v15);
      v16 = sub_10029869C();
      v17 = v16;
      if (v16)
      {
        sub_100299D0C(v16, 1, 0, 10.0);
      }
    }

    v19 = objc_opt_new();
    if (v5)
    {
      v20 = objc_getProperty(v5, v18, 104, 1);
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    [v19 setObject:v21 forKeyedSubscript:@"bundleID"];

    if (v5)
    {
      v22 = v5[29];
    }

    else
    {
      v22 = 0;
    }

    v23 = [NSNumber numberWithInteger:v22];
    [v19 setObject:v23 forKeyedSubscript:@"odrType"];

    if (v5)
    {
      v24 = v5[18];
    }

    else
    {
      v24 = 0;
    }

    v25 = [NSNumber numberWithInteger:v24];
    [v19 setObject:v25 forKeyedSubscript:@"downloadSize"];

    v26 = 1;
    if (v5)
    {
      v26 = (*(v5 + 84) & 1) == 0;
    }

    v27 = [NSNumber numberWithInt:v26];
    [v19 setObject:v27 forKeyedSubscript:@"isFileBased"];

    if (v5)
    {
      v28 = *(v5 + 83);
    }

    else
    {
      v28 = 0;
    }

    v29 = [NSNumber numberWithBool:v28 & 1];
    [v19 setObject:v29 forKeyedSubscript:@"isStoreBased"];

    if (v8)
    {
      v30 = sub_1003429BC(v8);
      [v19 setObject:v30 forKeyedSubscript:@"error"];

      v31 = &__kCFBooleanFalse;
    }

    else
    {
      v31 = &__kCFBooleanTrue;
    }

    [v19 setObject:v31 forKeyedSubscript:@"result"];
    sub_1003F25C4(Analytics, v19, 20);
    v32 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      if (v5)
      {
        v39 = objc_getProperty(v5, v33, 184, 1);
        v41 = objc_getProperty(v5, v40, 200, 1);
        v42 = v39;
      }

      else
      {
        v39 = 0;
        v42 = 0;
        v41 = 0;
      }

      v43 = v41;
      *buf = 138412546;
      *&buf[4] = v39;
      *&buf[12] = 2114;
      *&buf[14] = v43;
      _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[%@] Download made progress: %{public}@", buf, 0x16u);
    }

    v34 = v5;
    os_unfair_lock_lock(&unk_1005AB030);
    v36 = qword_1005AB038;
    if (qword_1005AB038)
    {
      if (v5)
      {
        v37 = objc_getProperty(v34, v35, 240, 1);
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;
      [v36 removeObjectForKey:v38];
    }

    os_unfair_lock_unlock(&unk_1005AB030);
    sub_1001CE010(ODRAssetDownload, v34);
  }
}

void sub_1003F7D9C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  sub_1003F78A4(WeakRetained, *(a1 + 32), v3);
}

void sub_1003F7E0C(void *a1, void *a2)
{
  v2 = a2;
  v3 = sub_1002E12A8(v2);
  if (v3)
  {
    v4 = objc_opt_new();
    *&v66 = 0;
    *(&v66 + 1) = &v66;
    v67 = 0x3032000000;
    v68 = sub_1003F3B7C;
    v69 = sub_1003F3B8C;
    v70 = 0;
    obj = 0;
    v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&obj];
    objc_storeStrong(&v70, obj);
    if (!v5)
    {
      v37 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        if (v2)
        {
          Property = objc_getProperty(v2, v38, 184, 1);
        }

        else
        {
          Property = 0;
        }

        v40 = Property;
        v41 = *(*(&v66 + 1) + 40);
        *buf = 138412546;
        v61 = v40;
        v62 = 2114;
        v63 = v41;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[%@] Error creating path for download: %{public}@", buf, 0x16u);
      }

      sub_1003F78A4(a1, v2, *(*(&v66 + 1) + 40));
      goto LABEL_36;
    }

    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v2)
      {
        v8 = objc_getProperty(v2, v7, 184, 1);
        v9 = v2[18];
        v10 = v2[19];
        v11 = v8;
      }

      else
      {
        v9 = 0;
        v8 = 0;
        v11 = 0;
        v10 = 0;
      }

      *buf = 138412802;
      v61 = v11;
      v62 = 2048;
      v63 = v9;
      v64 = 2048;
      v65 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%@] Starting ODR Download with download size: %lu and expected disk usage: %lld", buf, 0x20u);
    }

    v12 = sub_1002E1588(v2);
    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v44 = [0 unsignedLongLongValue];
      *buf = 134218240;
      v61 = 8 * v44;
      v62 = 1024;
      LODWORD(v63) = 0;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Rate Limit : %{bitrate}llu (Ethernet : %{BOOL}d)", buf, 0x12u);
    }

    if (v12)
    {
      objc_setProperty_atomic(v12, v14, 0, 48);
    }

    v45 = sub_1002E1308(v2);
    v15 = sub_10024DD14([ODRZipStreamDataConsumer alloc], v45);
    v17 = v15;
    if (v15)
    {
      objc_storeWeak(v15 + 5, v2);
    }

    if (v12)
    {
      objc_setProperty_atomic(v12, v16, v17, 72);
    }

    if (v2)
    {
      v18 = 5;
      if ((*(v2 + 83) & 1) == 0)
      {
        v18 = 6;
      }

      if (!v12)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = 6;
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    v12[4] = v18;
LABEL_20:
    v20 = [AssetRequest alloc];
    if (v2)
    {
      v21 = objc_getProperty(v2, v19, 216, 1);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = sub_10030B928(v20, v22, v12);

    v24 = sub_1003710C0();
    v25 = sub_100371818(v24, v23);

    if (v2)
    {
      objc_setProperty_atomic(v2, v26, v25, 96);
      v28 = objc_getProperty(v2, v27, 208, 1);
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;
    v30 = v29 == 0;

    if (v30)
    {
      v32 = +[NSDate date];
      if (v2)
      {
        objc_setProperty_atomic(v2, v31, v32, 208);
      }
    }

    objc_initWeak(buf, a1);
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1003F8618;
    v54[3] = &unk_1005283F0;
    objc_copyWeak(&v56, buf);
    v33 = v2;
    v55 = v33;
    [v25 addErrorBlock:v54];
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1003F8E84;
    v47[3] = &unk_100528440;
    objc_copyWeak(&v53, buf);
    v48 = v33;
    v49 = a1;
    v50 = v3;
    v52 = &v66;
    v51 = v4;
    [v25 addSuccessBlock:v47];

    objc_destroyWeak(&v53);
    objc_destroyWeak(&v56);
    objc_destroyWeak(buf);

LABEL_36:
    _Block_object_dispose(&v66, 8);

    goto LABEL_37;
  }

  v34 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    if (v2)
    {
      v42 = objc_getProperty(v2, v35, 184, 1);
    }

    else
    {
      v42 = 0;
    }

    v43 = v42;
    LODWORD(v66) = 138412290;
    *(&v66 + 4) = v43;
    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "[%@] Nil destination path for asset", &v66, 0xCu);
  }

  v58 = NSLocalizedRecoverySuggestionErrorKey;
  v59 = @"Attempted to download asset pack into nil destination.";
  v4 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v36 = [NSError errorWithDomain:NSCocoaErrorDomain code:4 userInfo:v4];
  sub_1003F78A4(a1, v2, v36);

LABEL_37:
}

void sub_1003F8518(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 136, 1);
  }

  v4 = Property;

  if (v4)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v6 = objc_getProperty(v6, v5, 136, 1);
    }

    v7 = v6;
    v11 = [NSURL fileURLWithPath:v7 isDirectory:1];

    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = objc_getProperty(v9, v8, 120, 1);
    }

    v10 = v9;
    *(*(*(a1 + 40) + 8) + 24) = sub_1001FE144(ODRAssetPack, v11, v10);
  }
}

void sub_1003F8618(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  sub_1003F8678(WeakRetained, v3, *(a1 + 32));
}

void sub_1003F8678(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (v6)
      {
        Property = objc_getProperty(v6, v8, 184, 1);
      }

      else
      {
        Property = 0;
      }

      v20 = Property;
      *buf = 138412546;
      *&buf[4] = v20;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Error downloading asset: %{public}@", buf, 0x16u);
    }

    if (!v6)
    {
      goto LABEL_7;
    }

    v10 = objc_getProperty(v6, v9, 208, 1);
    if (!v10)
    {
      goto LABEL_7;
    }

    v12 = v10;
    v13 = objc_getProperty(v6, v11, 208, 1);
    if (v13)
    {
      v14 = v13;
      [v13 timeIntervalSinceNow];
      v16 = v15 < -604800.0;

      if (v16)
      {
LABEL_7:
        v17 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          if (v6)
          {
            v21 = objc_getProperty(v6, v18, 184, 1);
          }

          else
          {
            v21 = 0;
          }

          v22 = v21;
          *buf = 138412290;
          *&buf[4] = v22;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@] Failing download, exceeded maximum retry time", buf, 0xCu);
        }

LABEL_8:

        sub_1003F78A4(a1, v6, v5);
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (!ASDErrorIsEqual() || (v6[81] & 1) != 0)
    {
      if (ASDErrorIsEqual())
      {
        v23 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v25 = objc_getProperty(v6, v24, 184, 1);
          *buf = 138412290;
          *&buf[4] = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Restarting download after previous attempt timed out", buf, 0xCu);
        }
      }

      else
      {
        if (!ASDErrorIsEqual())
        {
          sub_1003F78A4(a1, v6, v5);
          goto LABEL_9;
        }

        if ((sub_1002E0EE0(v6) & 1) == 0)
        {
          v26 = sub_100227468();
          v27 = [v26 isExpensive];

          if (v27)
          {
            v17 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v54 = objc_getProperty(v6, v28, 184, 1);
              *buf = 138412290;
              *&buf[4] = v54;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[%@] Failing download after connection lost", buf, 0xCu);
            }

            goto LABEL_8;
          }
        }

        v23 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v36 = objc_getProperty(v6, v35, 184, 1);
          *buf = 138412290;
          *&buf[4] = v36;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@] Restarting download after connection lost", buf, 0xCu);
        }
      }

      sub_1003F7E0C(a1, v6);
      goto LABEL_9;
    }

    v29 = v6;
    v55 = v5;
    v30 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v52 = objc_getProperty(v29, v31, 184, 1);
      *buf = 138412290;
      *&buf[4] = v52;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[%@] Handling manifest refresh for expired URL", buf, 0xCu);
    }

    v32 = v29[29] == 1;
    v34 = objc_getProperty(v29, v33, 104, 1);
    if (v32)
    {
      sub_10039A094(ODRApplication, v34);
    }

    else
    {
      sub_100399B78(ODRApplication, v34);
    }
    v37 = ;

    v39 = objc_getProperty(v29, v38, 112, 1);
    v40 = sub_10026A844(ODRClient, v39, v37);

    if (v40)
    {
      v41 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v53 = objc_getProperty(v29, v42, 184, 1);
        *buf = 138412546;
        *&buf[4] = v53;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[%@] Refresh failed with error: %{public}@", buf, 0x16u);
      }

      sub_1003F78A4(a1, v29, v40);
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v61 = sub_1003F3B7C;
      v62 = sub_1003F3B8C;
      v63 = 0;
      v43 = sub_100208FBC();
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_1003FA1C4;
      v57[3] = &unk_10051DC00;
      v59 = buf;
      v44 = v29;
      v58 = v44;
      [v43 readUsingSession:v57];

      v46 = objc_getProperty(v44, v45, 216, 1);
      v47 = sub_100269588(*(*&buf[8] + 40));
      v48 = [v46 isEqual:v47];

      if (v48)
      {
        v49 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *v56 = 0;
          _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to get a new URL after a manifest refresh, failing", v56, 2u);
        }

        sub_1003F78A4(a1, v44, v55);
      }

      else
      {
        v50 = sub_100269588(*(*&buf[8] + 40));
        objc_setProperty_atomic_copy(v44, v51, v50, 216);

        v6[81] = 1;
        sub_1001CE178(ODRAssetDownload, v44);
        sub_1003F7E0C(a1, v44);
      }

      _Block_object_dispose(buf, 8);
    }
  }

LABEL_9:
}

void sub_1003F8E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1003F8E84(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (v3)
  {
    Property = objc_getProperty(v3, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;

  if (v7)
  {
    if (v3)
    {
      v9 = objc_getProperty(v3, v8, 32, 1);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    sub_1003F8678(WeakRetained, v10, *(a1 + 32));

    goto LABEL_50;
  }

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      v13 = objc_getProperty(v13, v12, 184, 1);
    }

    v14 = v13;
    *buf = 138412290;
    v72 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Successfully downloaded asset", buf, 0xCu);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v16 = objc_getProperty(v16, v15, 136, 1);
  }

  v17 = v16;

  if (v17)
  {
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v21 = *(a1 + 32);
    if (v21)
    {
      v21 = objc_getProperty(v21, v18, 136, 1);
    }

    v22 = v21;
    v23 = v22;
    v24 = *(*(a1 + 64) + 8);
    v27 = *(v24 + 40);
    v26 = (v24 + 40);
    v25 = v27;
    obj = v27;
    if (v19)
    {
      v28 = v22;
      v29 = v20;
      v30 = +[NSFileManager defaultManager];
      v31 = [v30 moveItemAtPath:v29 toPath:v28 error:&obj];

      objc_storeStrong(v26, obj);
      if (v31)
      {
        v32 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 32);
          if (v34)
          {
            v34 = objc_getProperty(v34, v33, 184, 1);
          }

          v35 = v34;
          *buf = 138412290;
          v72 = v35;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%@] Successfully moved the asset into its destination path", buf, 0xCu);
        }

LABEL_23:
        v36 = *(a1 + 32);
        v37 = WeakRetained;
        v38 = 0;
LABEL_49:
        sub_1003F78A4(v37, v36, v38);
        goto LABEL_50;
      }
    }

    else
    {
      objc_storeStrong(v26, v25);
    }

    v48 = [*(*(*(a1 + 64) + 8) + 40) domain];
    if ([v48 isEqualToString:NSCocoaErrorDomain])
    {
      v49 = [*(*(*(a1 + 64) + 8) + 40) code];

      if (v49 == 516)
      {
        v50 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v52 = *(a1 + 32);
          if (v52)
          {
            v52 = objc_getProperty(v52, v51, 184, 1);
          }

          v53 = v52;
          *buf = 138412290;
          v72 = v53;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "[%@] Asset already exists at the destination path, validating", buf, 0xCu);
        }

        if (sub_1003F77A4(WeakRetained, *(a1 + 32)))
        {
          goto LABEL_23;
        }

        v56 = *(a1 + 48);
        v55 = *(a1 + 56);
        v57 = *(a1 + 32);
        if (v57)
        {
          v57 = objc_getProperty(v57, v54, 136, 1);
        }

        v58 = v57;
        v59 = *(*(a1 + 64) + 8);
        v69 = *(v59 + 40);
        v60 = [v55 moveItemAtPath:v56 toPath:v58 error:&v69];
        objc_storeStrong((v59 + 40), v69);

        if (v60)
        {
          goto LABEL_23;
        }

        v61 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v63 = *(a1 + 32);
          if (v63)
          {
            v63 = objc_getProperty(v63, v62, 184, 1);
          }

          v64 = v63;
          v65 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 138412546;
          v72 = v64;
          v73 = 2114;
          v74 = v65;
LABEL_54:
          _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "[%@] Failed to move the downloaded asset into place: %{public}@", buf, 0x16u);

          goto LABEL_48;
        }

        goto LABEL_48;
      }
    }

    else
    {
    }

    v61 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v67 = *(a1 + 32);
      if (v67)
      {
        v67 = objc_getProperty(v67, v66, 184, 1);
      }

      v64 = v67;
      v68 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412546;
      v72 = v64;
      v73 = 2114;
      v74 = v68;
      goto LABEL_54;
    }

LABEL_48:

    v36 = *(a1 + 32);
    v38 = *(*(*(a1 + 64) + 8) + 40);
    v37 = WeakRetained;
    goto LABEL_49;
  }

  v39 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v41 = *(a1 + 32);
    if (v41)
    {
      v41 = objc_getProperty(v41, v40, 184, 1);
    }

    v42 = v41;
    v43 = *(a1 + 32);
    *buf = 138412546;
    v72 = v42;
    v73 = 2114;
    v74 = v43;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "[%@] Error, no destination path for download: %{public}@", buf, 0x16u);
  }

  v46 = a1 + 32;
  v44 = *(a1 + 32);
  v45 = *(v46 + 8);
  v47 = ASDErrorWithTitleAndMessage();
  sub_1003F78A4(v45, v44, v47);

LABEL_50:
}

uint64_t sub_1003F943C(uint64_t a1, void *a2)
{
  v39 = a2;
  v3 = sub_1001C40CC(v39, *(a1 + 32));
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = *(a1 + 40);
  v4 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v45;
    do
    {
      v8 = 0;
      do
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        v10 = *(a1 + 32);
        Property = *(a1 + 48);
        if (Property)
        {
          Property = objc_getProperty(Property, v5, 64, 1);
        }

        v12 = Property;
        v13 = sub_1002E0230(ODRAssetDownloadRequest, v9, v3, v10, v12);

        if (v13)
        {
          v15 = *(a1 + 48);
          if (v15)
          {
            v15 = objc_getProperty(v15, v14, 40, 1);
          }

          v16 = v15;
          objc_setProperty_atomic_copy(v13, v17, v16, 128);

          v13[29] = 1;
          v19 = *(a1 + 48);
          if (v19)
          {
            v19 = objc_getProperty(v19, v18, 80, 1);
          }

          v20 = v19;
          objc_setProperty_atomic_copy(v13, v21, v20, 168);

          sub_10021B0C0(v39, v13);
          [*(*(*(a1 + 64) + 8) + 40) addObject:v13];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v6);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = *(a1 + 56);
  v23 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v23)
  {
    v25 = v23;
    v26 = *v41;
    do
    {
      v27 = 0;
      do
      {
        if (*v41 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v40 + 1) + 8 * v27);
        v29 = *(a1 + 32);
        v30 = *(a1 + 48);
        if (v30)
        {
          v30 = objc_getProperty(v30, v24, 64, 1);
        }

        v31 = v30;
        v32 = sub_1002E0230(ODRAssetDownloadRequest, v28, v3, v29, v31);

        if (v32)
        {
          v34 = *(a1 + 48);
          if (v34)
          {
            v34 = objc_getProperty(v34, v33, 40, 1);
          }

          v35 = v34;
          objc_setProperty_atomic_copy(v32, v36, v35, 128);

          v32[29] = 2;
          sub_10021B0C0(v39, v32);
        }

        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v25);
  }

  return 1;
}

void sub_1003F9760(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  if (v3)
  {
    Property = objc_getProperty(v3, v4, 104, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = Property;
  v7 = sub_1001C4F60(v5, v8);

  *(*(*(a1 + 40) + 8) + 24) = [v7 unsignedIntegerValue];
}

void sub_1003F9804(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = sub_100271100(*(a1 + 32));
  v4 = sub_10024D554([ODRManifestRequestTask alloc], v3);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = sub_1003F3B7C;
  v14[4] = sub_1003F3B8C;
  v15 = 0;
  objc_initWeak(&location, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003F99D0;
  v7[3] = &unk_100528490;
  objc_copyWeak(&v12, &location);
  v5 = v3;
  v8 = v5;
  v9 = *(a1 + 32);
  v11 = v14;
  v6 = v2;
  v10 = v6;
  [v4 setCompletionBlock:v7];
  sub_10023EDE4(ODRTaskQueue, v4, -1);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(v14, 8);
}

void sub_1003F99A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_1003F99D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[24])
    {
      v5 = sub_100208FBC();
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1003F9BBC;
      v14[3] = &unk_100528378;
      v15 = v4;
      v16 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 56);
      v17 = v6;
      v18 = v7;
      [v5 modifyUsingTransaction:v14];

      v8 = v15;
      goto LABEL_6;
    }

    Property = objc_getProperty(WeakRetained, v3, 32, 1);
  }

  else
  {
    Property = 0;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), Property);
  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v11 = objc_getProperty(v11, v10, 64, 1);
    }

    v12 = v11;
    v13 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138412546;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@]: Failed updating manifest: %{public}@", buf, 0x16u);
  }

LABEL_6:

  dispatch_semaphore_signal(*(a1 + 48));
}

BOOL sub_1003F9BBC(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 48, 1);
  }

  v6 = Property;
  v7 = sub_10021A80C(v4, v6, *(a1 + 40), 1);

  v8 = ASDLogHandleForCategory();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 48);
      if (v11)
      {
        v11 = objc_getProperty(v11, v10, 64, 1);
      }

      v12 = v11;
      v18 = 138412290;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[%@]: Success updating manifest", &v18, 0xCu);
    }

    sub_10021B798(v4, *(a1 + 40));
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 48);
      if (v15)
      {
        v15 = objc_getProperty(v15, v13, 64, 1);
      }

      v16 = v15;
      v17 = *(*(*(a1 + 56) + 8) + 40);
      v18 = 138412546;
      v19 = v16;
      v20 = 2114;
      v21 = v17;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[%@]: Failed updating manifest: %{public}@", &v18, 0x16u);
    }
  }

  return v7;
}

void sub_1003F9D74(uint64_t a1)
{
  v2 = sub_100208FBC();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003F9E1C;
  v5[3] = &unk_10051DA60;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 modifyUsingTransaction:v5];
}

BOOL sub_1003F9E1C(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 112, 1);
  }

  v6 = Property;
  v7 = sub_1001C3A68(v4, v6);

  if (v7)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = objc_getProperty(v9, v8, 216, 1);
    }

    v10 = v9;
    sub_100269A18(v7, v10);

    v12 = *(a1 + 32);
    if (v12)
    {
      v12 = objc_getProperty(v12, v11, 136, 1);
    }

    v13 = v12;
    v14 = [NSURL fileURLWithPath:v13 isDirectory:1];

    sub_1002696D0(v7, v14);
    v15 = +[NSDate date];
    sub_10023E000(v7, v15, @"last_used_date");

    v16 = sub_100269440(v7);
    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = v16;
      v19 = *(v17 + 82);
      if ((v19 & 1) == 0)
      {
        goto LABEL_18;
      }

      [*(v17 + 40) lock];
      v20 = *(v17 + 48);
      [*(v17 + 40) unlock];
      if ((v18 + v19 + v20) <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 += v19 + v20;
      }

      sub_100269738(v7, v18);
      v21 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        if (v23)
        {
          v23 = objc_getProperty(v23, v22, 184, 1);
        }

        v24 = v23;
        v31 = 138412546;
        v32 = v24;
        v33 = 2048;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@]: Updated pin count: %lld", &v31, 0x16u);
      }

      v17 = *(a1 + 32);
      if (v17)
      {
LABEL_18:
        *(v17 + 192) = v18;
      }
    }

    sub_1002699A8(v7, 0);
    sub_1001FE93C(v7);
    v25 = sub_10021BB90(v4, v7);
  }

  else
  {
    v26 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 32);
      if (v29)
      {
        v29 = objc_getProperty(v29, v27, 184, 1);
      }

      v30 = v29;
      v31 = 138412290;
      v32 = v30;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[%@]: Failed to find asset pack to update", &v31, 0xCu);
    }

    v25 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return v25;
}

void sub_1003FA100(void *a1, id a2)
{
  v3 = a1[4];
  if (a1[6] == 1)
  {
    sub_1001C48D8(a2, 4, v3);
  }

  else
  {
    sub_1001C427C(a2, v3);
  }
  v4 = ;
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1003FA170(uint64_t a1, id a2)
{
  v3 = sub_1001C43B8(a2, *(a1 + 32));
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1003FA1C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  if (v3)
  {
    Property = objc_getProperty(v3, v4, 112, 1);
  }

  else
  {
    Property = 0;
  }

  v10 = Property;
  v7 = sub_1001C3A68(v5, v10);

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void **sub_1003FA2A8(void **a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      v7 = [v5 processInfo];
    }

    else
    {
      if (a3)
      {
        sub_10000474C();
      }

      else
      {
        sub_10000479C();
      }
      v7 = ;
    }

    v8 = v7;
    v9 = [v7 bundleIdentifier];
    a1 = sub_1003FA35C(a1, v6, v8, v9, 0);
  }

  return a1;
}

void **sub_1003FA35C(void **a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = XPCRequestToken;
    a1 = objc_msgSendSuper2(&v26, "init");
    if (a1)
    {
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = [v11 bundleIdentifier];
      }

      v15 = a1[6];
      a1[6] = v14;

      v16 = +[NSUUID UUID];
      v17 = a1[3];
      a1[3] = v16;

      v18 = [[_TtC9appstored6LogKey alloc] initWithBaseUUID:a1[3]];
      v19 = a1[4];
      a1[4] = v18;

      objc_storeStrong(a1 + 9, a3);
      objc_storeStrong(a1 + 7, a5);
      objc_storeStrong(a1 + 5, a2);
      v20 = [a1[9] bundleIdentifier];
      v21 = [NSString stringWithFormat:@"com.apple.appstored.XPCRequestToken.%@.%@", v20, a1[4]];
      v22 = a1[1];
      a1[1] = v21;

      sub_1003204A0(TransactionStore, a1[1]);
      v23 = voucher_copy();
      v24 = a1[8];
      a1[8] = v23;
    }
  }

  return a1;
}

void **sub_1003FA4F0(uint64_t a1, int a2)
{
  objc_opt_self();
  v3 = sub_1003FA2A8([_XPCInternalRequestToken alloc], 0, a2);

  return v3;
}

void **sub_1003FA53C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [_XPCInternalRequestToken alloc];
  v4 = [v2 bundleIdentifier];
  v5 = sub_1003FA35C(&v3->super.super.isa, 0, v2, v4, 0);

  return v5;
}

void **sub_1003FA5CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_self();
  v9 = sub_100003C04();
  if (v9)
  {
    v10 = sub_1003FA35C([XPCRequestToken alloc], v9, v6, v7, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_1003FA694(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = sub_100003B90();
  v5 = [v4 processInfo];
  v6 = [v5 bundleIdentifier];

  if (([v2 isEqualToString:@"com.apple.AppStore"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"com.apple.AppStore"))
  {
    v7 = sub_10000474C();
    v8 = sub_1003FA5CC(v3, v7, v6, v2);

    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (!v8)
  {
    v9 = [[AMSProcessInfo alloc] initWithBundleIdentifier:v2];
    v8 = sub_1003FA5CC(v3, v9, v6, v2);

    goto LABEL_10;
  }

LABEL_8:
  if (!v8)
  {
    v8 = v4;
  }

LABEL_10:

  return v8;
}

void sub_1003FA9E0(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = [AMSAuthenticateTask alloc];
    v4 = *(a1 + 32);
    v5 = [v8 amsBag];
    v6 = [v3 initWithRequest:v4 bag:v5];

    v7 = [v6 performAuthentication];
    [v7 addFinishBlock:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

id sub_1003FACA0()
{
  objc_opt_self();
  if (qword_1005AB058 != -1)
  {
    dispatch_once(&qword_1005AB058, &stru_1005284D8);
  }

  v0 = qword_1005AB050;

  return v0;
}

void sub_1003FACF8(id a1)
{
  v1 = objc_alloc_init(AppInstallQueue);
  v2 = qword_1005AB050;
  qword_1005AB050 = v1;
}

void sub_1003FAE3C(uint64_t a1)
{
  if (a1)
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Validating active installations on daemon start", buf, 2u);
    }

    v3 = sub_100249134(IXAppInstallCoordinator, 0);
    v13[0] = @"bundle_id";
    v13[1] = @"bundle_url";
    v13[2] = @"coordinator_id";
    v13[3] = @"external_id";
    v13[4] = @"install_volume";
    v13[5] = @"item_id";
    v13[6] = @"log_code";
    v13[7] = @"policy";
    v13[8] = @"update_type";
    v13[9] = @"IFNULL(app_install.phase, 10)";
    v4 = [NSArray arrayWithObjects:v13 count:10];
    v5 = *(a1 + 16);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1003FB010;
    v8[3] = &unk_10051F040;
    v9 = v4;
    v10 = a1;
    v11 = v3;
    v6 = v3;
    v7 = v4;
    [v5 modifyUsingTransaction:v8];
    [*(a1 + 16) modifyUsingTransaction:&stru_100528538];
  }
}

uint64_t sub_1003FB010(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase value:10)" comparisonType:&off_100548790, 6];
  v22[0] = v5;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.bootstrapped equalToValue:2)", &off_1005487A8];
  v22[1] = v6;
  v7 = [NSArray arrayWithObjects:v22 count:2];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  v9 = [v3 connection];
  v10 = sub_1002D3F5C(AppInstallEntity, v9, v8);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1003FB1FC;
  v17[3] = &unk_1005279F8;
  v12 = a1[4];
  v11 = a1[5];
  v13 = a1[6];
  v18 = v3;
  v19 = v11;
  v20 = v13;
  v21 = v4;
  v14 = v4;
  v15 = v3;
  [v10 enumeratePersistentIDsAndProperties:v12 usingBlock:v17];

  return 1;
}

void sub_1003FB1FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"policy"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = sub_1003B65C4([AppInstallPolicy alloc], v6);
    if (sub_1003B6BE8(v7))
    {
      v8 = [AppInstallEntity alloc];
      v9 = [*(a1 + 32) connection];
      v10 = [(SQLiteEntity *)v8 initWithPersistentID:a2 onConnection:v9];

      sub_10029591C(v10, &stru_100528518);
    }
  }

  v11 = [AppInstallInfo alloc];
  v12 = [NSNumber numberWithLongLong:a2];
  v13 = sub_1004028AC(v11, v12, v5);

  v14 = [v5 objectForKeyedSubscript:{@"IFNULL(app_install.phase, 10)"}];
  v15 = [v14 integerValue];

  v16 = v15 > 10;
  if (v15 != 50)
  {
    v22 = [v5 objectForKeyedSubscript:@"coordinator_id"];
    if (!v22)
    {
      sub_100208224(*(a1 + 32), v15, a2);
      if (v15 < 11)
      {
        goto LABEL_67;
      }

LABEL_42:
      v42 = sub_10024B054(AppPackageEntity, a2, *(a1 + 56));
      v43 = [v42 persistentID];
      if (v13)
      {
        v13[12] = v43;
      }

      sub_100402A5C(AppInstallInfo, v13);
      if ((v15 + 40) > 0x3C)
      {
        goto LABEL_52;
      }

      if (((1 << (v15 + 40)) & 0x84000042100401) != 0)
      {
        v44 = ASDLogHandleForCategory();
        if (os_log_type_enabled(&v44->super.super, OS_LOG_TYPE_ERROR))
        {
          if (v13)
          {
            Property = objc_getProperty(v13, v45, 80, 1);
          }

          else
          {
            Property = 0;
          }

          v47 = Property;
          v48 = sub_100382EEC(v15);
          *buf = 138412546;
          v75 = v47;
          v76 = 2114;
          v77 = v48;
          _os_log_error_impl(&_mh_execute_header, &v44->super.super, OS_LOG_TYPE_ERROR, "[%@] Ignoring request to resume inactive installation in phase %{public}@", buf, 0x16u);
        }

        goto LABEL_65;
      }

      if (v15 != 20)
      {
LABEL_52:
        if (v15 > 0x2D || ((1 << v15) & 0x210040000000) == 0)
        {
          v61 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            if (v13)
            {
              v69 = objc_getProperty(v13, v62, 80, 1);
            }

            else
            {
              v69 = 0;
            }

            v70 = v69;
            *buf = 138412546;
            v75 = v70;
            v76 = 2048;
            v77 = v15;
          }

          v44 = [(SQLiteEntity *)[AppInstallEntity alloc] initWithPersistentID:a2 onConnection:*(a1 + 56)];
          v64 = ASDErrorWithUserInfoAndFormat();
          v65 = *(a1 + 32);
          if (v65)
          {
            v65 = objc_getProperty(v65, v63, 24, 1);
          }

          v66 = v65;
          v67 = sub_100294BA8(v44, v64);
          sub_1002561F0(v66, v67);

          goto LABEL_65;
        }
      }

      v49 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        if (v13)
        {
          v51 = objc_getProperty(v13, v50, 80, 1);
        }

        else
        {
          v51 = 0;
        }

        v52 = v51;
        v53 = sub_100382EEC(v15);
        *buf = 138412546;
        v75 = v52;
        v76 = 2114;
        v77 = v53;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "[%@] Discovered previously active installation (phase = '%{public}@'), resetting state to Waiting for scheduling", buf, 0x16u);
      }

      v54 = *(a1 + 40);
      if (!v54)
      {
        goto LABEL_66;
      }

      v55 = *(a1 + 32);
      v56 = v13;
      v57 = [AppInstallEntity alloc];
      if (v13)
      {
        v58 = v56[8];
      }

      else
      {
        v58 = 0;
      }

      v59 = [v55 connection];
      v44 = [(SQLiteEntity *)v57 initWithPersistentID:v58 onConnection:v59];

      v60 = sub_100387D4C([AppInstallPreambleTask alloc], v44, v55);
      sub_1003FDEEC(v54, v60, v55);

LABEL_65:
LABEL_66:

      goto LABEL_67;
    }

    if (v13)
    {
      v23 = objc_getProperty(v13, v21, 32, 1);
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (v24)
    {
      v72 = 0;
      if (v13)
      {
LABEL_16:
        v26 = objc_getProperty(v13, v25, 32, 1);
        goto LABEL_17;
      }
    }

    else
    {
      v71 = v22;
      if (v13)
      {
        v32 = objc_getProperty(v13, v25, 40, 1);
        v34 = objc_getProperty(v13, v33, 24, 1);
      }

      else
      {
        v32 = 0;
        v34 = 0;
      }

      v35 = v34;
      v73 = 0;
      v36 = sub_100248B24(IXAppInstallCoordinator, v32, v35, &v73);
      v72 = v73;
      if (v13)
      {
        objc_setProperty_atomic(v13, v37, v36, 32);
      }

      v22 = v71;
      if (v13)
      {
        goto LABEL_16;
      }
    }

    v26 = 0;
LABEL_17:
    v27 = v26;

    if (v27)
    {
      v29 = sub_10025E74C();
      if (v13)
      {
        v30 = objc_getProperty(v13, v28, 32, 1);
      }

      else
      {
        v30 = 0;
      }

      v31 = v30;
      sub_10025E9A4(v29, v31);
    }

    else
    {
      v29 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
LABEL_31:

        v39 = [*(a1 + 48) objectForKeyedSubscript:v22];
        v40 = v39;
        if (!v39)
        {
          goto LABEL_41;
        }

        v41 = [v39 integerValue];
        objc_opt_self();
        v15 = 10;
        if (v41 > 2)
        {
          if (v41 != 3)
          {
            if (v41 != 4)
            {
              goto LABEL_41;
            }

            v16 = 0;
            goto LABEL_40;
          }
        }

        else
        {
          if (v41 < 2)
          {
            v16 = 0;
            goto LABEL_41;
          }

          if (v41 != 2)
          {
LABEL_41:

            sub_100208224(*(a1 + 32), v15, a2);
            if (!v16)
            {
LABEL_67:

              goto LABEL_68;
            }

            goto LABEL_42;
          }
        }

        v16 = 1;
LABEL_40:
        v15 = 40;
        goto LABEL_41;
      }

      if (v13)
      {
        v68 = objc_getProperty(v13, v38, 80, 1);
      }

      else
      {
        v68 = 0;
      }

      v31 = v68;
      *buf = 138412546;
      v75 = v31;
      v76 = 2114;
      v77 = v72;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[%@] Tried to replace the coordinator, but failed: %{public}@", buf, 0x16u);
    }

    goto LABEL_31;
  }

  v17 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (v13)
    {
      v19 = objc_getProperty(v13, v18, 80, 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    *buf = 138412290;
    v75 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Restarting from postamble", buf, 0xCu);
  }

  sub_1003FBA5C(*(a1 + 40), v13, *(a1 + 32));
LABEL_68:
}

void sub_1003FBA5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a3;
    v7 = ASDLogHandleForCategory();
    v8 = v7;
    if (v5)
    {
      v9 = v5[13];
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        v11 = objc_getProperty(v5, v10, 80, 1);
        *buf = 138543362;
        v26 = v11;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Install/Postamble", " uuid=%{public, signpost.description:attribute}@ ", buf, 0xCu);
      }
    }

    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        Property = objc_getProperty(v5, v13, 80, 1);
      }

      else
      {
        Property = 0;
      }

      v15 = Property;
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Beginning final", buf, 0xCu);
    }

    if (v5)
    {
      sub_100208224(v6, 50, v5[8]);
      v16 = v5[8];
      v17 = v5[12];
    }

    else
    {
      sub_100208224(v6, 50, 0);
      v16 = 0;
      v17 = 0;
    }

    v18 = sub_1003E9B5C(AppInstallPostambleTask, v16, v17, v6);

    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1003FD95C;
    v22 = &unk_10051B570;
    v23 = a1;
    v24 = v5;
    [v18 setCompletionBlock:&v19];
    [*(a1 + 32) addOperation:{v18, v19, v20, v21, v22, v23}];
  }
}

BOOL sub_1003FBCB4(id a1, AppInstallsDatabaseTransaction *a2)
{
  v2 = a2;
  v3 = [SQLiteComparisonPredicate predicateWithProperty:@"IFNULL(app_install.phase equalToValue:10)", &off_1005487C0];
  v4 = [(AppInstallsDatabaseSession *)v2 connection];
  v5 = sub_1002D3F5C(AppInstallEntity, v4, v3);

  v11[0] = @"automatic_type";
  v11[1] = @"bundle_id";
  v11[2] = @"coordinator_id";
  v11[3] = @"update_type";
  v11[4] = @"IFNULL(app_install.phase, 10)";
  v6 = [NSArray arrayWithObjects:v11 count:5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003FBE3C;
  v9[3] = &unk_100521638;
  v10 = v2;
  v7 = v2;
  [v5 enumeratePersistentIDsAndProperties:v6 usingBlock:v9];

  return 1;
}

void sub_1003FBE3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"update_type"];
  if ([v6 integerValue] == 1)
  {
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:@"automatic_type"];
    v8 = [v7 integerValue];

    if (!v8)
    {
      goto LABEL_12;
    }
  }

  v9 = [v5 objectForKeyedSubscript:@"bundle_id"];
  v10 = [v5 objectForKeyedSubscript:@"coordinator_id"];
  sub_100208224(*(a1 + 32), 10, a2);
  if (v10 && v9)
  {
    v12 = sub_100249094(lib_IXAppInstallCoordinatorTag, v10, v9);
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v11, 24, 1);
    }

    v14 = Property;
    sub_100256A94(v14, v12);
  }

  v15 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Reset jettisoned background update to install phase waiting for %{public}@.", &v16, 0xCu);
  }

LABEL_12:
}

void sub_1003FC920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FCBA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AppPackageEntity alloc];
  v5 = [*(a1 + 32) longLongValue];
  v6 = [v3 connection];

  v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 onConnection:v6];
  [(SQLiteEntity *)v7 setValue:*(a1 + 40) forProperty:@"data_promise_id"];

  return 1;
}

void sub_1003FCE34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (v3)
    {
      v4 = v3[3];
    }

    else
    {
      v4 = 0;
    }

    v5 = [NSNumber numberWithLongLong:v4];
    v6 = sub_100402BD0(AppInstallInfo, v5);

    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x3032000000;
    v41[3] = sub_1003FE424;
    v41[4] = sub_1003FE434;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = sub_1003FE424;
    v39 = sub_1003FE434;
    v40 = 0;
    v7 = *(a1 + 16);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1003FE43C;
    v29[3] = &unk_100528560;
    v8 = v6;
    v30 = v8;
    v9 = v3;
    v31 = v9;
    v32 = a1;
    v33 = &v35;
    v34 = v41;
    [v7 modifyUsingTransaction:v29];
    if (v36[5])
    {
      v11 = [NSProgress discreteProgressWithTotalUnitCount:1];
      if (v8)
      {
        Property = objc_getProperty(v8, v10, 56, 1);
      }

      else
      {
        Property = 0;
      }

      v13 = Property;
      [v11 setUserInfoObject:v13 forKey:@"AppInstallExternalID"];

      [v11 becomeCurrentWithPendingUnitCount:1];
      v15 = sub_100371818(*(a1 + 8), v36[5]);
      if (v15)
      {
        if (v8)
        {
          objc_setProperty_atomic(v8, v14, v15, 16);
        }

        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1003FE6DC;
        v28[3] = &unk_100528588;
        v28[4] = v41;
        [v15 setProgress:v28];
        if (v8)
        {
          objc_setProperty_atomic(v8, v16, v11, 48);
          v18 = objc_getProperty(v8, v17, 80, 1);
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;
        v20 = [v19 description];
        v21 = [v20 hasPrefix:@"LGY"];

        if (v21)
        {
          [v11 addObserver:a1 forKeyPath:@"fractionCompleted" options:5 context:0];
        }

        if (v3)
        {
          v22 = v9[3];
        }

        else
        {
          v22 = 0;
        }

        v23 = [NSNumber numberWithLongLong:v22];
        v24 = *(a1 + 40);
        v25 = [v15 requestID];
        [v24 setObject:v23 forKeyedSubscript:v25];

        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_1003FE764;
        v26[3] = &unk_1005285B0;
        v26[4] = a1;
        v27 = v8;
        [v15 addFinishBlock:v26];
      }

      [v11 resignCurrent];
    }

    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(v41, 8);
  }
}

void sub_1003FD210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1003FD240(uint64_t a1, void *a2, void *a3)
{
  v20 = a3;
  v5 = a2;
  v7 = v5;
  if (v5)
  {
    v8 = objc_getProperty(v5, v6, 24, 1);
    if (v8)
    {
      v9 = v8;

LABEL_5:
      Property = objc_getProperty(v7, v10, 72, 1);
      goto LABEL_6;
    }
  }

  v9 = sub_100340328(v20, @"bundle_id");
  if (v7)
  {
    goto LABEL_5;
  }

  Property = 0;
LABEL_6:
  v12 = Property;

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = sub_100340154(v20, @"item_id");
  }

  v14 = v13;

  v15 = sub_100340154(v20, @"source_type");
  v16 = [v15 unsignedIntegerValue];

  v17 = sub_100340154(v20, @"metrics_install_type");
  v18 = [v17 unsignedCharValue];

  v19 = sub_100305C4C();
  sub_100306DD4(v19, a1, 0, 4, v9, v14, 1, v16, v18, 0);
}

void sub_1003FD3C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003FD468;
  v6[3] = &unk_10051B570;
  v7 = WeakRetained;
  v8 = v3;
  v5 = WeakRetained;
  dispatch_async(v4, v6);
}

void sub_1003FD468(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    Property = *(a1 + 32);
    v4 = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v2, 90, 1);
    }

    v5 = Property;
    sub_1003FCE34(v4, v5);
  }
}

void sub_1003FD4EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = ASDLogHandleForCategory();
    v8 = v7;
    if (v5)
    {
      v9 = v5[13];
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
      {
        v11 = objc_getProperty(v5, v10, 80, 1);
        *buf = 138543362;
        v29 = v11;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Install/Install", " uuid=%{public, signpost.description:attribute}@ ", buf, 0xCu);
      }
    }

    v12 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        Property = objc_getProperty(v5, v13, 80, 1);
      }

      else
      {
        Property = 0;
      }

      v15 = Property;
      *buf = 138412290;
      v29 = v15;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Beginning installation", buf, 0xCu);
    }

    if (v5)
    {
      sub_100208224(v6, 40, v5[8]);
      v16 = v5[8];
      v17 = v5[12];
      v19 = objc_getProperty(v5, v18, 32, 1);
    }

    else
    {
      sub_100208224(v6, 40, 0);
      v17 = 0;
      v16 = 0;
      v19 = 0;
    }

    v20 = v19;
    v21 = sub_1003E79E8(AppInstallInstallTask, v16, v17, v6, v20);

    objc_initWeak(buf, v21);
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1003FD7CC;
    v25 = &unk_100521310;
    objc_copyWeak(&v27, buf);
    v26 = a1;
    [v21 setCompletionBlock:&v22];
    [*(a1 + 32) addOperation:{v21, v22, v23, v24, v25}];
    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }
}

void sub_1003FD7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003FD7CC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003FD86C;
  v6[3] = &unk_10051B570;
  v7 = WeakRetained;
  v8 = v3;
  v5 = WeakRetained;
  dispatch_async(v4, v6);
}

void sub_1003FD86C(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    Property = *(a1 + 32);
    v4 = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v2, 72, 1);
    }

    v6 = Property;
    if (v4)
    {
      v5 = *(v4 + 16);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1003FECDC;
      v7[3] = &unk_10051CA38;
      v8 = v6;
      v9 = v4;
      [v5 modifyUsingTransaction:v7];
    }
  }
}

void sub_1003FD95C(uint64_t a1)
{
  v2 = +[BagService appstoredService];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003FDA14;
  v6[3] = &unk_10051C008;
  v6[4] = v4;
  v7 = v3;
  [v2 bagOnQueue:v5 completionHandler:v6];
}

void sub_1003FDA14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  if (v3)
  {
    v6 = ASDLogHandleForCategory();
    v7 = v6;
    if (v4)
    {
      v8 = v4[13];
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        LOWORD(v10[0]) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "Install/Postamble", "", v10, 2u);
      }
    }

    v9 = *(v3 + 16);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100400028;
    v10[3] = &unk_10051CA38;
    v11 = v4;
    v12 = v5;
    [v9 modifyUsingTransaction:v10];
  }
}

void sub_1003FDB48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1003FDBE8;
  v6[3] = &unk_10051B570;
  v7 = WeakRetained;
  v8 = v3;
  v5 = WeakRetained;
  dispatch_async(v4, v6);
}

void sub_1003FDBE8(uint64_t a1)
{
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    Property = *(a1 + 32);
    v4 = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v2, 48, 1);
    }

    v6 = Property;
    if (v4)
    {
      v5 = *(v4 + 16);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1003FF230;
      v7[3] = &unk_10051CA38;
      v8 = v6;
      v9 = v4;
      [v5 modifyUsingTransaction:v7];
    }
  }
}

void sub_1003FDCD8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [AppInstallInfo alloc];
  v7 = [NSNumber numberWithLongLong:a2];
  v8 = sub_1004028AC(v6, v7, v5);

  sub_100402A5C(AppInstallInfo, v8);
  v9 = ASDLogHandleForCategory();
  v10 = v9;
  if (v8)
  {
    v11 = v8[13];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v13 = objc_getProperty(v8, v12, 80, 1);
      v20 = 138543362;
      v21 = v13;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Install", " uuid=%{public, signpost.description:attribute}@ ", &v20, 0xCu);
    }
  }

  v14 = [AppInstallEntity alloc];
  v15 = [*(a1 + 32) connection];
  v16 = [(SQLiteEntity *)v14 initWithPersistentID:a2 onConnection:v15];

  v17 = +[NSDate date];
  [v17 timeIntervalSinceReferenceDate];
  v18 = [NSNumber numberWithDouble:?];
  [(SQLiteEntity *)v16 setValue:v18 forProperty:@"last_start_date"];

  v19 = sub_100387D4C([AppInstallPreambleTask alloc], v16, *(a1 + 32));
  sub_1003FDEEC(*(a1 + 40), v19, *(a1 + 32));
}

void sub_1003FDEEC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_20;
  }

  objc_initWeak(&location, v5);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1003FE208;
  v21[3] = &unk_100521310;
  objc_copyWeak(&v22, &location);
  v21[4] = a1;
  [v5 setCompletionBlock:v21];
  if (v5)
  {
    v7 = [*(v5 + 42) databaseID];
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSNumber numberWithLongLong:v7];
  v9 = sub_100402BD0(AppInstallInfo, v8);

  if (v9)
  {
    objc_storeWeak((v9 + 88), v5);
  }

  if (v5)
  {
    v10 = [*(v5 + 50) databaseID];
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = 0;
  if (v9)
  {
LABEL_8:
    *(v9 + 96) = v10;
  }

LABEL_9:
  v11 = ASDLogHandleForCategory();
  v12 = v11;
  if (v9)
  {
    v13 = *(v9 + 104);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      v15 = objc_getProperty(v9, v14, 80, 1);
      *buf = 138543362;
      v25 = v15;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "Install/Preamble", " uuid=%{public, signpost.description:attribute}@ ", buf, 0xCu);
    }
  }

  v16 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      Property = objc_getProperty(v9, v17, 80, 1);
    }

    else
    {
      Property = 0;
    }

    v19 = Property;
    *buf = 138412290;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%@] Queuing preamble task", buf, 0xCu);
  }

  [*(a1 + 32) addOperation:v5];
  if (v5)
  {
    v20 = [*(v5 + 42) databaseID];
  }

  else
  {
    v20 = 0;
  }

  sub_100208224(v6, 20, v20);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
LABEL_20:
}

void sub_1003FE1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003FE208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained isCancelled] & 1) == 0)
  {
    v3 = +[BagService appstoredService];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1003FE2D0;
    v4[3] = &unk_10051C008;
    v4[4] = *(a1 + 32);
    v5 = WeakRetained;
    [v3 bagWithCompletionHandler:v4];
  }
}

void sub_1003FE2D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v11 = sub_100388098(v2);
  v5 = v4;
  if (v3)
  {
    if (v11)
    {
      v6 = v11[1];
    }

    else
    {
      v6 = 0;
    }

    v7 = [NSNumber numberWithLongLong:v6];
    v8 = sub_100402BD0(AppInstallInfo, v7);

    v9 = *(v3 + 16);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1003FF414;
    v12[3] = &unk_1005285D8;
    v13 = v8;
    v14 = v11;
    v15 = v5;
    v16 = v3;
    v10 = v8;
    [v9 modifyUsingTransaction:v12];
  }
}

uint64_t sub_1003FE424(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1003FE43C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_storeWeak((v4 + 88), 0);
  }

  v5 = [AppPackageEntity alloc];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 connection];
  v9 = [(SQLiteEntity *)v5 initWithPersistentID:v7 onConnection:v8];

  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v10, 16, 1);
  }

  v12 = Property;

  if (v12)
  {
    v14 = *(a1 + 40);
    if (v14)
    {
      v14 = objc_getProperty(v14, v13, 16, 1);
    }

    v15 = v14;
    [(SQLiteEntity *)v9 setValue:v15 forProperty:@"bytes_total"];
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = *(v16 + 48);
  }

  else
  {
    v17 = 0;
  }

  v18 = [NSNumber numberWithUnsignedInteger:v17];
  [(SQLiteEntity *)v9 setValue:v18 forProperty:@"request_count"];

  v20 = *(a1 + 40);
  if (!v20)
  {
    v22 = 0;
    goto LABEL_18;
  }

  v21 = v20[7];
  switch(v21)
  {
    case 2:
      sub_1003FD4EC(*(a1 + 48), *(a1 + 32), v3);
      break;
    case 1:
      v34 = *(a1 + 32);
      if (v34)
      {
        v35 = *(v34 + 64);
      }

      else
      {
        v35 = 0;
      }

      v25 = objc_getProperty(v20, v19, 32, 1);
      sub_100204718(v3, v35, v25);
LABEL_28:

      break;
    case 0:
      v22 = objc_getProperty(v20, v19, 8, 1);
LABEL_18:
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v22);
      v24 = *(a1 + 40);
      if (v24)
      {
        v24 = objc_getProperty(v24, v23, 64, 1);
      }

      v25 = v24;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_1001D9284(v25, *(a1 + 48));
      }

      v26 = [AppInstallEntity alloc];
      v27 = *(a1 + 40);
      if (v27)
      {
        v28 = *(v27 + 24);
      }

      else
      {
        v28 = 0;
      }

      v29 = [v3 connection];
      v30 = [(SQLiteEntity *)v26 initWithPersistentID:v28 onConnection:v29];

      v31 = sub_100340328(v30, @"bundle_id");
      v32 = *(*(a1 + 64) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;

      goto LABEL_28;
  }

  return 1;
}

void sub_1003FE6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003649C8();
  v9 = *(*(*(a1 + 32) + 8) + 40);
  v10 = v8;
  if (a2)
  {
    sub_100366EC0(v8, v9, a3);
  }

  else
  {
    sub_100366C10(v8, v9, a3, a4);
  }
}

void sub_1003FE764(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v53 = a2;
  v6 = a3;
  v7 = v4;
  v9 = v7;
  v52 = v5;
  if (!v5)
  {
    goto LABEL_44;
  }

  if (v7)
  {
    objc_setProperty_atomic(v7, v8, 0, 16);
    v10 = v9;
    v13 = objc_getProperty(v10, v11, 48, 1);
    if (v13)
    {
      v14 = objc_getProperty(v10, v12, 80, 1);
      v15 = [v14 description];
      v16 = [v15 hasPrefix:@"LGY"];

      if (v16)
      {
        [v13 removeObserver:v52 forKeyPath:@"fractionCompleted"];
      }

      objc_setProperty_atomic(v10, v17, 0, 48);
    }
  }

  else
  {
    v13 = 0;
  }

  v54 = v53;
  v18 = v9;
  if (os_variant_has_internal_content())
  {
    self = v18;
    if (!v9)
    {
      v39 = 0;
      v50 = 0;
      goto LABEL_34;
    }

    v50 = objc_getProperty(v18, v19, 80, 1);
    v21 = objc_getProperty(v18, v20, 24, 1);
    if (!v21)
    {
      v39 = 0;
LABEL_34:

      v18 = self;
      goto LABEL_35;
    }

    v49 = v21;
    v22 = [v50 description];
    v23 = [v22 hasPrefix:@"UPA"];

    if (!v23)
    {
LABEL_33:
      v39 = v49;
      goto LABEL_34;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    Property = v54;
    if (v54)
    {
      Property = objc_getProperty(v54, v24, 40, 1);
    }

    v26 = Property;
    v27 = [v26 transactionMetrics];

    v28 = [v27 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v28)
    {
      v29 = 0;
      v30 = 0;
      v31 = *v60;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v60 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v59 + 1) + 8 * i);
          if (!v29)
          {
            v34 = [*(*(&v59 + 1) + 8 * i) requestStartDate];
            v35 = v34 == 0;

            if (v35)
            {
              v29 = 0;
            }

            else
            {
              v29 = [v33 requestStartDate];
            }
          }

          v36 = [v33 responseEndDate];

          if (v36)
          {
            v37 = [v33 responseEndDate];

            v30 = v37;
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v28);

      if (!v29 || !v30)
      {
        goto LABEL_32;
      }

      v38 = sub_1002BB3F0();
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100401058;
      v55[3] = &unk_100528670;
      v29 = v29;
      v56 = v29;
      v30 = v30;
      v57 = v30;
      v58 = v49;
      [v38 modifyUsingTransaction:v55];

      v27 = v56;
    }

    else
    {
      v30 = 0;
      v29 = 0;
    }

LABEL_32:
    goto LABEL_33;
  }

LABEL_35:

  if (!v6)
  {
    v41 = v54;
    if (v54)
    {
      v41 = objc_getProperty(v54, v40, 32, 1);
    }

    v6 = v41;
  }

  *&v59 = 0;
  *(&v59 + 1) = &v59;
  *&v60 = 0x2020000000;
  BYTE8(v60) = 0;
  v42 = *(v52 + 16);
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_100400094;
  v63[3] = &unk_100528600;
  v64 = v54;
  v43 = v18;
  v65 = v43;
  v6 = v6;
  v66 = v6;
  v67 = v52;
  v68 = &v59;
  [v42 modifyUsingTransaction:v63];
  if (*(*(&v59 + 1) + 24) == 1)
  {
    if (v9)
    {
      v45 = objc_getProperty(v43, v44, 24, 1);
    }

    else
    {
      v45 = 0;
    }

    v46 = v45;
    v47 = sub_100305C4C();
    sub_100307BB8(v47, v46);
  }

  v48 = sub_1002C0D84();
  sub_1002C19F0(v48);

  _Block_object_dispose(&v59, 8);
LABEL_44:
}

void sub_1003FECBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FECDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = [NSNumber numberWithLongLong:v5];
  v7 = sub_100402BD0(AppInstallInfo, v6);

  v9 = *(a1 + 32);
  if (!v9)
  {
    goto LABEL_24;
  }

  v10 = v9[3];
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      sub_1003FBA5C(*(a1 + 40), v7, v3);
      goto LABEL_51;
    }

    if (v10 == 4)
    {
      v34 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          Property = objc_getProperty(v7, v35, 80, 1);
        }

        else
        {
          Property = 0;
        }

        v37 = Property;
        v46 = 138412290;
        v47 = v37;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%@] Advancing installation phase to post-processing", &v46, 0xCu);
      }

      v38 = [AppInstallEntity alloc];
      v39 = *(a1 + 32);
      if (v39)
      {
        v40 = *(v39 + 8);
      }

      else
      {
        v40 = 0;
      }

      v41 = [v3 connection];
      v21 = [(SQLiteEntity *)v38 initWithPersistentID:v40 onConnection:v41];

      [v21 setValue:&off_1005487F0 forProperty:@"phase"];
      goto LABEL_50;
    }

    if (v10 != 6)
    {
      goto LABEL_31;
    }

    v13 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (v7)
      {
        v15 = objc_getProperty(v7, v14, 80, 1);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v46 = 138412290;
      v47 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Installation has been scheduled", &v46, 0xCu);
    }

    v17 = [AppInstallEntity alloc];
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 8);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v3 connection];
    v21 = [(SQLiteEntity *)v17 initWithPersistentID:v19 onConnection:v20];

    if (sub_1003402E8(v21, @"IFNULL(app_install.phase, 10)") == 40)
    {
      [v21 setValue:&off_1005487D8 forProperty:@"phase"];
      if (v3)
      {
        v23 = objc_getProperty(v3, v22, 24, 1);
        v24 = v23;
        if (v23)
        {
          v23[17].isa = (v23[17].isa | 0x20000);
        }
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          v43 = objc_getProperty(v7, v42, 80, 1);
        }

        else
        {
          v43 = 0;
        }

        v44 = v43;
        v46 = 138412290;
        v47 = v44;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%@] Installation is already complete", &v46, 0xCu);
      }
    }

    goto LABEL_49;
  }

  if (!v10)
  {
LABEL_24:
    v25 = [AppInstallEntity alloc];
    v26 = *(a1 + 32);
    if (v26)
    {
      v27 = *(v26 + 8);
    }

    else
    {
      v27 = 0;
    }

    v28 = [v3 connection];
    v21 = [(SQLiteEntity *)v25 initWithPersistentID:v27 onConnection:v28];

    [v21 setValue:&off_100548790 forProperty:@"phase"];
    if (v3)
    {
      v30 = objc_getProperty(v3, v29, 24, 1);
      if (v30)
      {
        v30[17] |= 0x8000uLL;
      }
    }

    else
    {
      v30 = 0;
    }

    sub_100402B28(AppInstallInfo, v7);
    goto LABEL_50;
  }

  if (v10 == 1)
  {
    v21 = ASDLogHandleForCategory();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
LABEL_50:

      goto LABEL_51;
    }

    if (v7)
    {
      v33 = objc_getProperty(v7, v32, 80, 1);
    }

    else
    {
      v33 = 0;
    }

    v24 = v33;
    v46 = 138412290;
    v47 = v24;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[%@] Waiting for installation to complete", &v46, 0xCu);
LABEL_49:

    goto LABEL_50;
  }

  if (v10 != 2)
  {
LABEL_31:
    v21 = ASDErrorWithUserInfoAndFormat();
    if (v7)
    {
      v31 = v7[8];
    }

    else
    {
      v31 = 0;
    }

    sub_100204718(v3, v31, v21);
    goto LABEL_50;
  }

  if (v7)
  {
    v11 = v7[8];
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_getProperty(v9, v8, 16, 1);
  sub_100204718(v3, v11, v12);

LABEL_51:
  return 1;
}

uint64_t sub_1003FF230(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = [NSNumber numberWithLongLong:v5];
  v7 = sub_100402BD0(AppInstallInfo, v6);

  v9 = *(a1 + 32);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9[3];
  if (v10 == 2)
  {
    sub_1003FBA5C(*(a1 + 40), v7, v3);
  }

  else
  {
    if (v10 != 1)
    {
      if (v10)
      {
        v11 = ASDErrorWithUserInfoAndFormat();
        if (v7)
        {
          v17 = v7[8];
        }

        else
        {
          v17 = 0;
        }

        sub_100204718(v3, v17, v11);
LABEL_18:

        goto LABEL_19;
      }

LABEL_7:
      v11 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          Property = objc_getProperty(v7, v12, 80, 1);
        }

        else
        {
          Property = 0;
        }

        v14 = Property;
        v19 = 138412290;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%@] Waiting for post processing to complete", &v19, 0xCu);
      }

      goto LABEL_18;
    }

    if (v7)
    {
      v15 = v7[8];
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_getProperty(v9, v8, 16, 1);
    sub_100204718(v3, v15, v16);
  }

LABEL_19:

  return 1;
}

uint64_t sub_1003FF414(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_storeWeak((v5 + 88), 0);
  }

  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 16, 1);
  }

  v7 = Property;

  if (v7)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v9 = objc_getProperty(v9, v8, 16, 1);
    }

    v10 = v9;
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 64);
    }

    else
    {
      v12 = 0;
    }

    sub_100208B18(v4, v10, v12);
  }

  v13 = *(a1 + 40);
  if (!v13)
  {
    goto LABEL_69;
  }

  v14 = *(v13 + 32);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v99 = ASDLogHandleForCategory();
      v100 = v99;
      v101 = *(a1 + 32);
      if (v101)
      {
        v102 = v101[13];
        if (v102 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
        {
          v105 = objc_getProperty(v101, v103, 80, 1);
          v106 = *(a1 + 40);
          if (v106)
          {
            v106 = objc_getProperty(v106, v104, 24, 1);
          }

          v107 = v106;
          v108 = sub_100342C9C(v107);
          *buf = 138543618;
          *&buf[4] = v105;
          *&buf[12] = 2114;
          *&buf[14] = v108;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v100, OS_SIGNPOST_INTERVAL_END, v102, "Install/Preamble", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", buf, 0x16u);
        }
      }

      v109 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        v123 = *(a1 + 32);
        if (v123)
        {
          v123 = objc_getProperty(v123, v110, 80, 1);
        }

        v125 = v123;
        v126 = *(a1 + 40);
        if (v126)
        {
          v126 = objc_getProperty(v126, v124, 24, 1);
        }

        v127 = v126;
        *buf = 138412546;
        *&buf[4] = v125;
        *&buf[12] = 2114;
        *&buf[14] = v127;
        _os_log_error_impl(&_mh_execute_header, v109, OS_LOG_TYPE_ERROR, "[%@] Preflight failed with error: %{public}@", buf, 0x16u);
      }

      v112 = *(a1 + 40);
      if (v112)
      {
        v113 = v112[1];
        v112 = objc_getProperty(v112, v111, 24, 1);
      }

      else
      {
        v113 = 0;
      }

      v114 = v112;
      sub_100204718(v4, v113, v114);
    }

    else if (v14 == 3)
    {
      v67 = ASDLogHandleForCategory();
      v68 = v67;
      v69 = *(a1 + 32);
      if (v69)
      {
        v70 = v69[13];
        if (v70 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
        {
          v72 = objc_getProperty(v69, v71, 80, 1);
          *buf = 138543362;
          *&buf[4] = v72;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v68, OS_SIGNPOST_INTERVAL_END, v70, "Install/Preamble", " uuid=%{public, signpost.description:attribute}@ ", buf, 0xCu);
        }
      }

      v73 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v75 = *(a1 + 32);
        if (v75)
        {
          v75 = objc_getProperty(v75, v74, 80, 1);
        }

        v76 = v75;
        *buf = 138412290;
        *&buf[4] = v76;
        _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "[%@] Preflight finished and will proceed to installation", buf, 0xCu);
      }

      sub_1003FD4EC(*(a1 + 56), *(a1 + 32), v4);
    }

    goto LABEL_109;
  }

  if (!v14)
  {
LABEL_69:
    v77 = ASDLogHandleForCategory();
    v78 = v77;
    v79 = *(a1 + 32);
    if (v79)
    {
      v80 = v79[13];
      if (v80 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
      {
        v83 = objc_getProperty(v79, v81, 80, 1);
        v84 = *(a1 + 40);
        if (v84)
        {
          v84 = objc_getProperty(v84, v82, 24, 1);
        }

        v85 = v84;
        v86 = sub_100342C9C(v85);
        *buf = 138543618;
        *&buf[4] = v83;
        *&buf[12] = 2114;
        *&buf[14] = v86;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v78, OS_SIGNPOST_INTERVAL_END, v80, "Install/Preamble", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", buf, 0x16u);
      }
    }

    v87 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v89 = *(a1 + 32);
      if (v89)
      {
        v89 = objc_getProperty(v89, v88, 80, 1);
      }

      v91 = v89;
      v92 = *(a1 + 40);
      if (v92)
      {
        v92 = objc_getProperty(v92, v90, 16, 1);
      }

      v94 = v92;
      v95 = *(a1 + 40);
      if (v95)
      {
        v95 = objc_getProperty(v95, v93, 24, 1);
      }

      v96 = v95;
      *buf = 138412802;
      *&buf[4] = v91;
      *&buf[12] = 2114;
      *&buf[14] = v94;
      *&buf[22] = 2114;
      v130 = v96;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[%@] Preflight canceled with coordinator: %{public}@ error: %{public}@", buf, 0x20u);
    }

    v97 = *(a1 + 40);
    if (v97)
    {
      v98 = *(v97 + 8);
    }

    else
    {
      v98 = 0;
    }

    sub_1002067C8(v4, v98, -30, *(a1 + 48));
    goto LABEL_109;
  }

  if (v14 == 1)
  {
    v15 = ASDLogHandleForCategory();
    v16 = v15;
    v17 = *(a1 + 32);
    if (v17)
    {
      v18 = v17[13];
      if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        v21 = objc_getProperty(v17, v19, 80, 1);
        v22 = *(a1 + 40);
        if (v22)
        {
          v22 = objc_getProperty(v22, v20, 24, 1);
        }

        v23 = v22;
        v24 = sub_100342C9C(v23);
        *buf = 138543618;
        *&buf[4] = v21;
        *&buf[12] = 2114;
        *&buf[14] = v24;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v18, "Install/Preamble", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", buf, 0x16u);
      }
    }

    v25 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 32);
      if (v27)
      {
        v27 = objc_getProperty(v27, v26, 80, 1);
      }

      v29 = v27;
      v30 = *(a1 + 40);
      if (v30)
      {
        v30 = objc_getProperty(v30, v28, 16, 1);
      }

      v31 = v30;
      *buf = 138412546;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[%@] Preflight succeeded with coordinator: %{public}@", buf, 0x16u);
    }

    v33 = *(a1 + 40);
    if (v33)
    {
      v33 = objc_getProperty(v33, v32, 16, 1);
    }

    v35 = v33;
    v36 = *(a1 + 32);
    if (v36)
    {
      objc_setProperty_atomic(v36, v34, v35, 32);
    }

    v38 = *(a1 + 40);
    if (v38)
    {
      v38 = objc_getProperty(v38, v37, 16, 1);
    }

    v39 = v38;

    if (v39)
    {
      v41 = sub_10025E74C();
      v42 = *(a1 + 40);
      if (v42)
      {
        v42 = objc_getProperty(v42, v40, 16, 1);
      }

      v43 = v42;
      sub_10025E9A4(v41, v43);
    }

    v44 = *(a1 + 32);
    if (v44)
    {
      v45 = *(v44 + 64);
    }

    else
    {
      v45 = 0;
    }

    sub_100208224(v4, 30, v45);
    v46 = *(a1 + 56);
    v47 = *(a1 + 32);
    v48 = v4;
    if (!v46)
    {
      goto LABEL_108;
    }

    v49 = ASDLogHandleForCategory();
    v50 = v49;
    if (v47)
    {
      v51 = *(v47 + 13);
      if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
      {
        v53 = objc_getProperty(v47, v52, 80, 1);
        *buf = 138543362;
        *&buf[4] = v53;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v50, OS_SIGNPOST_INTERVAL_BEGIN, v51, "Install/Download", " uuid=%{public, signpost.description:attribute}@ ", buf, 0xCu);
      }
    }

    v54 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      if (v47)
      {
        v56 = objc_getProperty(v47, v55, 80, 1);
      }

      else
      {
        v56 = 0;
      }

      v57 = v56;
      *buf = 138412290;
      *&buf[4] = v57;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[%@] Beginning downloading", buf, 0xCu);
    }

    if (os_variant_has_internal_content() && sub_1003D612C())
    {
      if (v47)
      {
        v58 = *(v47 + 8);
      }

      else
      {
        v58 = 0;
      }

      v59 = [v48 connection];
      v60 = sub_10024B054(AppPackageEntity, v58, v59);
      if (sub_1003402E8(v60, @"package_type") == 1)
      {
        v61 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          if (v47)
          {
            v63 = objc_getProperty(v47, v62, 80, 1);
          }

          else
          {
            v63 = 0;
          }

          v64 = v63;
          *buf = 138412290;
          *&buf[4] = v64;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[%@] Forcing failure of delta update (expect further error messages prior to expected retry with full update)…", buf, 0xCu);
        }

        v65 = ASDErrorWithDescription();
        v66 = sub_10027E39C(AppInstallDownloadResponse, v58, v65);
        sub_1003FCE34(v46, v66);

LABEL_107:
LABEL_108:

        goto LABEL_109;
      }
    }

    v115 = [AppInstallEntity alloc];
    if (v47)
    {
      v116 = *(v47 + 8);
    }

    else
    {
      v116 = 0;
    }

    v117 = [v48 connection];
    v59 = [(SQLiteEntity *)v115 initWithPersistentID:v116 onConnection:v117];

    if ([(SQLiteEntity *)v59 existsInDatabase]&& !sub_1003402E8(v59, @"source_type"))
    {
      sub_1003FD240(2, v47, v59);
    }

    if (v47)
    {
      v119 = *(v47 + 8);
      v120 = objc_getProperty(v47, v118, 32, 1);
    }

    else
    {
      v119 = 0;
      v120 = 0;
    }

    v121 = v120;
    v60 = sub_10027C6B8(AppInstallDownloadTask, v119, v48, v121);

    objc_initWeak(&location, v60);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1003FD3C8;
    v130 = &unk_100521310;
    objc_copyWeak(v132, &location);
    v131 = v46;
    [v60 setCompletionBlock:buf];
    if (v47)
    {
      objc_storeWeak(v47 + 11, v60);
    }

    [*(v46 + 32) addOperation:v60];
    objc_destroyWeak(v132);
    objc_destroyWeak(&location);
    goto LABEL_107;
  }

LABEL_109:

  return 1;
}

void sub_100400000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100400028(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6 = *(v3 + 64);
  }

  else
  {
    v6 = 0;
  }

  sub_1002067C8(v4, v6, -40, *(a1 + 40));

  sub_100402B28(AppInstallInfo, *(a1 + 32));
  return 1;
}

uint64_t sub_100400094(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = objc_getProperty(v5, v3, 48, 1);
    if (v6)
    {
      v7 = [AppInstallEntity alloc];
      v8 = *(a1 + 40);
      if (v8)
      {
        v9 = *(v8 + 64);
      }

      else
      {
        v9 = 0;
      }

      v10 = [v4 connection];
      v11 = [(SQLiteEntity *)v7 initWithPersistentID:v9 onConnection:v10];

      [(SQLiteEntity *)v11 setValue:v6 forProperty:@"metrics_fields"];
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 48))
  {
    v12 = ASDLogHandleForCategory();
    v13 = v12;
    v14 = *(a1 + 40);
    if (v14)
    {
      v15 = v14[13];
      if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        v17 = objc_getProperty(v14, v16, 80, 1);
        v18 = sub_100342C9C(*(a1 + 48));
        *buf = 138543618;
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = v18;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v15, "Install/Download", " uuid=%{public, signpost.description:attribute}@  error=%{public, signpost.description:attribute}@ ", buf, 0x16u);
      }
    }

    if (ASDErrorIsEqual())
    {
      v19 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        Property = *(a1 + 40);
        if (Property)
        {
          Property = objc_getProperty(Property, v20, 80, 1);
        }

        v22 = Property;
        *buf = 138412290;
        *&buf[4] = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Download canceled", buf, 0xCu);
      }

      *(*(*(a1 + 64) + 8) + 24) = 1;
      goto LABEL_118;
    }

    v36 = *(a1 + 56);
    v38 = *(a1 + 32);
    v37 = *(a1 + 40);
    self = *(*(a1 + 64) + 8);
    v118 = *(a1 + 48);
    v39 = v37;
    v117 = v38;
    v119 = v4;
    if (!v36)
    {
LABEL_117:

LABEL_118:
      sub_100402B28(AppInstallInfo, *(a1 + 40));
      goto LABEL_119;
    }

    v40 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      if (v39)
      {
        v42 = objc_getProperty(v39, v41, 80, 1);
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;
      *buf = 138412546;
      *&buf[4] = v43;
      *&buf[12] = 2114;
      *&buf[14] = v118;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[%@] Download failed with error: %{public}@", buf, 0x16u);
    }

    v44 = [AppInstallEntity alloc];
    if (v39)
    {
      v45 = v39[8];
    }

    else
    {
      v45 = 0;
    }

    v46 = [v119 connection];
    v47 = [(SQLiteEntity *)v44 initWithPersistentID:v45 onConnection:v46];

    if (!sub_1003402E8(v47, @"source_type") && ASDErrorIsEqual())
    {
      v48 = v47;
      selfa = v39;
      v113 = v119;
      v49 = sub_1003402E8(v48, @"recovery_count");
      v50 = sub_100294244(v48);
      if (v49 < 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v50;
      }

      v111 = v51;
      if (v51)
      {
        if (v49 >= 2)
        {

          goto LABEL_110;
        }

        oslog = ASDLogHandleForCategory();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          if (v39)
          {
            v53 = objc_getProperty(selfa, v52, 80, 1);
          }

          else
          {
            v53 = 0;
          }

          v54 = v53;
          *v125 = 138412290;
          *&v125[4] = v54;
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "[%@] Attempting expired download recovery for update", v125, 0xCu);
        }

        if (v49 >= 1)
        {
          v55 = v49 + 1;
        }

        else
        {
          v55 = 1;
        }

        v56 = [NSNumber numberWithInteger:v55];
        [(SQLiteEntity *)v48 setValue:v56 forProperty:@"recovery_count"];

        v57 = sub_10022F9A4(ExpiredUpdateRecoveryTask, v48);
        objc_initWeak(v125, v57);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100400F38;
        v121 = &unk_100528648;
        objc_copyWeak(v124, v125);
        v122 = v36;
        v123 = selfa;
        [v57 setCompletionBlock:buf];
        v58 = sub_100284B90();
        v59 = v58;
        if (v58)
        {
          [*(v58 + 8) addOperation:v57];
        }

        objc_destroyWeak(v124);
        objc_destroyWeak(v125);
      }

      else
      {
        v57 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          if (v39)
          {
            v94 = objc_getProperty(selfa, v93, 80, 1);
          }

          else
          {
            v94 = 0;
          }

          v95 = v94;
          *v125 = 138412290;
          *&v125[4] = v95;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "[%@] Expired download recovery for user-initiated update has already been attempted", v125, 0xCu);
        }
      }

      if (v111)
      {
        goto LABEL_116;
      }

LABEL_110:
      v99 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        if (v39)
        {
          v106 = objc_getProperty(selfa, v100, 80, 1);
        }

        else
        {
          v106 = 0;
        }

        v107 = v106;
        *buf = 138412290;
        *&buf[4] = v107;
        _os_log_error_impl(&_mh_execute_header, v99, OS_LOG_TYPE_ERROR, "[%@] Cannot recover from expired download for this installation", buf, 0xCu);
      }

      if (v39)
      {
        v101 = selfa[8];
      }

      else
      {
        v101 = 0;
      }

      v102 = v117;
      if (v117)
      {
        v102 = v117[8];
      }

      sub_1002057B0(v113, v101, v118, v102 & 1);
      goto LABEL_116;
    }

    v60 = v118;
    v61 = [v60 domain];
    v62 = [v61 isEqualToString:NSURLErrorDomain];

    if (v62)
    {
      v63 = [v60 code];
      if (v63 + 1009 <= 8 && ((1 << (v63 - 15)) & 0x111) != 0)
      {

        v64 = v39;
        v65 = v119;
        v66 = v47;
        v114 = sub_100227468();
        v112 = sub_100294554(v66);

        if ([v114 isExpensive] && (v67 = sub_1003B67D4(v112), v67 <= 4) && ((1 << v67) & 0x15) != 0)
        {
          v68 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            if (v39)
            {
              v70 = objc_getProperty(v64, v69, 80, 1);
            }

            else
            {
              v70 = 0;
            }

            v71 = v70;
            *buf = 138412290;
            *&buf[4] = v71;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "[%@] Pausing download - policy prevents expensive networks", buf, 0xCu);
          }
        }

        else
        {
          if (![v114 isConstrained] || (v79 = sub_1003B6718(v112), v79 > 4) || ((1 << v79) & 0x15) == 0)
          {
            if (v39)
            {
              v92 = v64[8];
            }

            else
            {
              v92 = 0;
            }

            sub_100205ACC(v65, v92);
LABEL_96:

LABEL_116:
            goto LABEL_117;
          }

          v68 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            if (v39)
            {
              v81 = objc_getProperty(v64, v80, 80, 1);
            }

            else
            {
              v81 = 0;
            }

            v82 = v81;
            *buf = 138412290;
            *&buf[4] = v82;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "[%@] Pausing download - policy prevents constrained networks", buf, 0xCu);
          }
        }

        if (v39)
        {
          sub_100207D08(v65, v64[8], -15, 3uLL);
          v84 = objc_getProperty(v64, v83, 32, 1);
        }

        else
        {
          sub_100207D08(v65, 0, -15, 3uLL);
          v84 = 0;
        }

        v85 = v84;
        *v125 = 0;
        v86 = [v85 pauseWithError:v125];
        v87 = *v125;

        if ((v86 & 1) == 0)
        {
          v88 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            if (v39)
            {
              v108 = objc_getProperty(v64, v89, 80, 1);
            }

            else
            {
              v108 = 0;
            }

            v109 = v108;
            *buf = 138412546;
            *&buf[4] = v109;
            *&buf[12] = 2114;
            *&buf[14] = v87;
            _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "[%@] Failed to pause for policy error: %{public}@", buf, 0x16u);
          }
        }

        self[24] = 1;

        goto LABEL_96;
      }
    }

    v72 = [v60 domain];
    v73 = [v72 isEqualToString:SZExtractorErrorDomain];

    if (!v73)
    {
      if (v39)
      {
        v77 = v39[8];
      }

      else
      {
        v77 = 0;
      }

      v78 = v117;
      if (v117)
      {
        v78 = v117[8];
      }

      sub_1002057B0(v119, v77, v60, v78 & 1);
      self[24] = 1;
      goto LABEL_116;
    }

    v74 = sub_1002947DC(v47);
    if (sub_1003402E8(v74, @"package_type") == 1)
    {
      v75 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        if (v39)
        {
          v104 = objc_getProperty(v39, v76, 80, 1);
        }

        else
        {
          v104 = 0;
        }

        v105 = v104;
        *buf = 138412546;
        *&buf[4] = v105;
        *&buf[12] = 2114;
        *&buf[14] = v60;
        _os_log_error_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "[%@] Ignoring data promise failure to wait for delta recovery error: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      if ([v60 code] != 4 && objc_msgSend(v60, "code") != 2 || v117 && (v117[8] & 1) != 0)
      {
        if (v39)
        {
          v90 = v39[8];
        }

        else
        {
          v90 = 0;
        }

        v91 = v117;
        if (v117)
        {
          v91 = v117[8];
        }

        sub_1002057B0(v119, v90, v60, v91 & 1);
        goto LABEL_108;
      }

      v75 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        if (v39)
        {
          v97 = objc_getProperty(v39, v96, 80, 1);
        }

        else
        {
          v97 = 0;
        }

        v98 = v97;
        *buf = 138412546;
        *&buf[4] = v98;
        *&buf[12] = 2114;
        *&buf[14] = v60;
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "[%@] Ignoring data promise failure to wait for corrupt asset cache recovery error: %{public}@", buf, 0x16u);
      }
    }

LABEL_108:
    self[24] = 1;

    goto LABEL_116;
  }

  v23 = *(a1 + 56);
  v24 = *(a1 + 40);
  v25 = v4;
  if (v23)
  {
    v26 = ASDLogHandleForCategory();
    v27 = v26;
    if (v24)
    {
      v28 = v24[13];
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        v30 = objc_getProperty(v24, v29, 80, 1);
        *buf = 138543362;
        *&buf[4] = v30;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, OS_SIGNPOST_INTERVAL_END, v28, "Install/Download", " uuid=%{public, signpost.description:attribute}@ ", buf, 0xCu);
      }
    }

    v31 = [AppInstallEntity alloc];
    if (v24)
    {
      v32 = v24[8];
    }

    else
    {
      v32 = 0;
    }

    v33 = [v25 connection];
    v34 = [(SQLiteEntity *)v31 initWithPersistentID:v32 onConnection:v33];

    if (!sub_1003402E8(v34, @"source_type"))
    {
      sub_1003FD240(3, v24, v34);
    }

    sub_10029591C(v34, &stru_100528620);
    v35 = +[NSNull null];
    [(SQLiteEntity *)v34 setValue:v35 forProperty:@"optimal_download_start"];

    sub_1003FD4EC(v23, v24, v25);
  }

LABEL_119:
  return 1;
}

void sub_100400EB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_100400EE0(id a1, AppInstallPolicy *a2)
{
  v2 = a2;
  sub_1003B69B0(v2, 0);
  sub_1003B6B78(v2, 0);
  sub_1003B6638(v2, 0);
}

void sub_100400F38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[24];
    WeakRetained = objc_getProperty(WeakRetained, v3, 32, 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = WeakRetained;
  v7 = *(a1 + 40);
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v4)
  {
    v11 = *(v4 + 16);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10040106C;
    v13[3] = &unk_100528698;
    v16 = v5 & 1;
    v14 = v9;
    v15 = v8;
    [v11 modifyUsingTransaction:v13];
  }
}

uint64_t sub_10040106C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = ASDLogHandleForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v6)
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v7, 80, 1);
      }

      v9 = Property;
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Restarting after successful recovery", &v18, 0xCu);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 64);
    }

    else
    {
      v11 = 0;
    }

    sub_100205ACC(v4, v11);
  }

  else
  {
    if (v6)
    {
      v12 = *(a1 + 32);
      if (v12)
      {
        v12 = objc_getProperty(v12, v7, 80, 1);
      }

      v13 = v12;
      v14 = *(a1 + 40);
      v18 = 138412546;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Failing after unsuccessful recovery error %{public}@", &v18, 0x16u);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = *(v15 + 64);
    }

    else
    {
      v16 = 0;
    }

    sub_100204718(v4, v16, *(a1 + 40));
  }

  return 1;
}

id sub_10040126C(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];

  v5 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v4];
  sub_10040130C(v5);
  sub_1004013A4(v5, v2);

  return v5;
}

void sub_10040130C(void *a1)
{
  if (a1)
  {
    [a1 setHTTPCookieAcceptPolicy:1];
    [a1 setHTTPShouldSetCookies:0];
    [a1 setRequestCachePolicy:1];
    [a1 set_timingDataOptions:69];
    v2 = [NSSet setWithObject:@"Accept-Language"];
    [a1 set_suppressedAutoAddedHTTPHeaders:v2];
  }
}

void sub_1004013A4(void *a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (!a1)
  {
    goto LABEL_29;
  }

  if (v3)
  {
    v6 = objc_getProperty(v3, v4, 168, 1);
    [a1 set_sourceApplicationBundleIdentifier:v6];

    Property = objc_getProperty(v5, v7, 96, 1);
  }

  else
  {
    [a1 set_sourceApplicationBundleIdentifier:0];
    Property = 0;
  }

  v9 = Property;
  [a1 set_sourceApplicationSecondaryIdentifier:v9];

  if (v5)
  {
    if (*(v5 + 13))
    {
      v31 = @"NSAllowsArbitraryLoads";
      v32 = &__kCFBooleanFalse;
      v10 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v26 = 0;
      v11 = [NSPropertyListSerialization dataWithPropertyList:v10 format:200 options:0 error:&v26];
      v12 = v26;

      if (v11)
      {
        [a1 set_atsContext:v11];
      }

      else
      {
        v13 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v25 = objc_getProperty(v5, v14, 152, 1);
          *buf = 138412546;
          v28 = v25;
          v29 = 2114;
          v30 = v12;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%@] Failed to encode ATS data error: %{public}@", buf, 0x16u);
        }
      }
    }

    [a1 set_requiresPowerPluggedIn:*(v5 + 15) & 1];
    [a1 setAllowsCellularAccess:*(v5 + 9) & 1];
    [a1 setAllowsConstrainedNetworkAccess:*(v5 + 10) & 1];
    [a1 setAllowsExpensiveNetworkAccess:*(v5 + 11) & 1];
    v16 = v5[10];
    if (v16 > 2)
    {
      goto LABEL_15;
    }

    v17 = 4u >> (v16 & 7);
  }

  else
  {
    [a1 set_requiresPowerPluggedIn:0];
    [a1 setAllowsCellularAccess:0];
    [a1 setAllowsConstrainedNetworkAccess:0];
    [a1 setAllowsExpensiveNetworkAccess:0];
    LOBYTE(v17) = 0;
    LOBYTE(v16) = 0;
  }

  [a1 setDiscretionary:v17 & 1];
  [a1 set_infersDiscretionaryFromOriginatingClient:v16 & 1];
  if (v5)
  {
LABEL_15:
    v18 = objc_getProperty(v5, v15, 176, 1);
    goto LABEL_16;
  }

  v18 = 0;
LABEL_16:
  v19 = v18;

  if (v19)
  {
    if (v5)
    {
      v21 = objc_getProperty(v5, v20, 176, 1);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    [a1 setProtocolClasses:v22];
  }

  if (v5 && v5[8])
  {
    objc_opt_self();
    if (qword_1005AB060 != -1)
    {
      dispatch_once(&qword_1005AB060, &stru_1005286B8);
    }

    v23 = v5[8];
    if (v23 == 1)
    {
      v24 = @"com.apple.appstored.connectionPool.apps";
      goto LABEL_28;
    }

    if (v23 == 2)
    {
      v24 = @"com.apple.appstored.connectionPool.odr";
LABEL_28:
      [a1 set_connectionPoolName:v24];
    }
  }

LABEL_29:
}

id sub_100401720(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  sub_10040130C(v3);
  sub_1004013A4(v3, v2);

  [v3 set_connectionCachePurgeTimeout:1.0];
  [v3 set_longLivedConnectionCachePurgeTimeout:1.0];
  [v3 set_preventsIdleSleepOnceConnected:1];

  return v3;
}

id sub_1004017B0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  v4 = sub_100401808(v3, v2);

  return v4;
}

id sub_100401808(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v4 = [NSMutableArray arrayWithObject:@"com.apple.appstored"];
  if (v2)
  {
    Property = objc_getProperty(v2, v3, 168, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;

  if (v6)
  {
    if (v2)
    {
      v8 = objc_getProperty(v2, v7, 168, 1);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    [v4 addObject:v9];
  }

  if (v2)
  {
    v10 = objc_getProperty(v2, v7, 96, 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    if (v2)
    {
      v13 = objc_getProperty(v2, v12, 96, 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    [v4 addObject:v14];
  }

  if (!v2)
  {
    [v4 addObject:@"inexpensive"];
    [v4 addObject:@"wifi"];
    [v4 addObject:@"nolowdata"];
LABEL_33:
    [v4 addObject:@"utility"];
    goto LABEL_34;
  }

  if (*(v2 + 13))
  {
    [v4 addObject:@"ats"];
  }

  v15 = *(v2 + 10);
  if (v15 == 2)
  {
    v16 = @"discretionary-always";
  }

  else
  {
    if (v15 != 1)
    {
      goto LABEL_21;
    }

    v16 = @"discretionary-inferred";
  }

  [v4 addObject:v16];
LABEL_21:
  if ((*(v2 + 11) & 1) == 0)
  {
    [v4 addObject:@"inexpensive"];
  }

  if (*(v2 + 9))
  {
    if (*(v2 + 12))
    {
      goto LABEL_28;
    }

    v17 = @"phone";
  }

  else
  {
    v17 = @"wifi";
  }

  [v4 addObject:v17];
LABEL_28:
  if ((*(v2 + 10) & 1) == 0)
  {
    [v4 addObject:@"nolowdata"];
  }

  if (*(v2 + 15))
  {
    [v4 addObject:@"power"];
  }

  if (*(v2 + 6) <= 0x11u)
  {
    goto LABEL_33;
  }

LABEL_34:
  v18 = [v4 componentsJoinedByString:@"."];

  return v18;
}

void sub_100401A60(id a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v1 = qword_1005AB068;
  v10 = qword_1005AB068;
  if (!qword_1005AB068)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100401C78;
    v6[3] = &unk_10051E318;
    v6[4] = &v7;
    sub_100401C78(v6);
    v1 = v8[3];
  }

  v2 = v1;
  _Block_object_dispose(&v7, 8);
  v3 = [v1 sharedScheduler];
  v4 = [sub_100401B98() groupWithName:@"com.apple.appstored.connectionPool.apps" maxConcurrent:4];
  [v3 createActivityGroup:v4];

  v5 = [sub_100401B98() groupWithName:@"com.apple.appstored.connectionPool.odr" maxConcurrent:3];
  [v3 createActivityGroup:v5];
}

void sub_100401B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100401B98()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1005AB078;
  v7 = qword_1005AB078;
  if (!qword_1005AB078)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100401E68;
    v3[3] = &unk_10051E318;
    v3[4] = &v4;
    sub_100401E68(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100401C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100401C78(uint64_t a1)
{
  sub_100401CE8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("_DASScheduler");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1005AB068 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    sub_100401CE8();
  }
}

void sub_100401CE8()
{
  v1[0] = 0;
  if (!qword_1005AB070)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100401DF4;
    v1[4] = &unk_10051BD00;
    v1[5] = v1;
    v2 = off_1005286D8;
    v3 = 0;
    qword_1005AB070 = _sl_dlopen();
    v0 = v1[0];
    if (qword_1005AB070)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t sub_100401DF4()
{
  result = _sl_dlopen();
  qword_1005AB070 = result;
  return result;
}

Class sub_100401E68(uint64_t a1)
{
  sub_100401CE8();
  result = objc_getClass("_DASActivityGroup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1005AB078 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return [(ConcatenateEnumerator *)v3 nextObject];
  }

  return result;
}

void sub_1004021A8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v15 = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = a1;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v3[2](v3, v9, &v15);
        objc_autoreleasePoolPop(v10);
        if (v15)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

id sub_1004022E4(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = a1;
    v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = v3[2](v3, *(*(&v20 + 1) + 8 * i));
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v17;
            do
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v17 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                [v4 addObject:*(*(&v16 + 1) + 8 * j)];
              }

              v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
            }

            while (v11);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v6);
    }

    a1 = [v4 copy];
  }

  return a1;
}

id sub_1004024C4(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[NSMutableArray array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = a1;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = v3[2](v3, *(*(&v12 + 1) + 8 * i));
          if (v10)
          {
            [v4 addObject:{v10, v12}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    a1 = [v4 copy];
  }

  return a1;
}

TransformEnumerator *sub_100402630(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = [TransformEnumerator alloc];
    v5 = a1;
    v6 = v3;
    if (v4)
    {
      v11.receiver = v4;
      v11.super_class = TransformEnumerator;
      v7 = objc_msgSendSuper2(&v11, "init");
      v4 = v7;
      if (v7)
      {
        objc_storeStrong(&v7->_enumerator, a1);
        v8 = [v6 copy];
        transform = v4->_transform;
        v4->_transform = v8;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

FilterEnumerator *sub_100402718(void *a1, void *a2)
{
  if (a1)
  {
    v4 = a2;
    v5 = [FilterEnumerator alloc];
    v6 = a1;
    v7 = v4;
    if (v5)
    {
      v10.receiver = v5;
      v10.super_class = FilterEnumerator;
      v8 = objc_msgSendSuper2(&v10, "init");
      v5 = v8;
      if (v8)
      {
        objc_storeStrong(&v8->_enumerator, a1);
        objc_storeStrong(&v5->_predicate, a2);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1004027FC()
{
  objc_opt_self();
  v2[0] = @"bundle_id";
  v2[1] = @"coordinator_id";
  v2[2] = @"external_id";
  v2[3] = @"item_id";
  v2[4] = @"log_code";
  v2[5] = @"IFNULL(app_install.priority, 0)";
  v0 = [NSArray arrayWithObjects:v2 count:6];

  return v0;
}

id sub_1004028AC(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = AppInstallInfo;
    a1 = objc_msgSendSuper2(&v20, "init");
    if (a1)
    {
      *(a1 + 8) = [v5 longLongValue];
      v7 = [v6 objectForKeyedSubscript:@"bundle_id"];
      v8 = *(a1 + 3);
      *(a1 + 3) = v7;

      v9 = [v6 objectForKeyedSubscript:@"coordinator_id"];
      v10 = *(a1 + 5);
      *(a1 + 5) = v9;

      v11 = [v6 objectForKeyedSubscript:@"external_id"];
      v12 = *(a1 + 7);
      *(a1 + 7) = v11;

      v13 = *(a1 + 7);
      if (v13)
      {
        v21[0] = 0;
        v21[1] = 0;
        [v13 getUUIDBytes:v21];
        v14 = v21[0];
      }

      else
      {
        v14 = 0;
      }

      *(a1 + 13) = v14;
      v15 = [v6 objectForKeyedSubscript:@"item_id"];
      v16 = *(a1 + 9);
      *(a1 + 9) = v15;

      v17 = [[_TtC9appstored6LogKey alloc] initWithAppInstallDictionary:v6];
      v18 = *(a1 + 10);
      *(a1 + 10) = v17;

      *(a1 + 2) = 0;
    }
  }

  return a1;
}

void sub_100402A5C(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_self();
  os_unfair_lock_lock(&stru_1005ABBF8);
  v2 = qword_1005ABBF0;
  if (!qword_1005ABBF0)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    v4 = qword_1005ABBF0;
    qword_1005ABBF0 = v3;

    v2 = qword_1005ABBF0;
  }

  if (v7)
  {
    v5 = v7[8];
  }

  else
  {
    v5 = 0;
  }

  v6 = [NSNumber numberWithLongLong:v5];
  [v2 setObject:v7 forKey:v6];

  os_unfair_lock_unlock(&stru_1005ABBF8);
}

void sub_100402B28(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_self();
  os_unfair_lock_lock(&stru_1005ABBF8);
  v2 = qword_1005ABBF0;
  if (qword_1005ABBF0)
  {
    if (v5)
    {
      v3 = v5[8];
    }

    else
    {
      v3 = 0;
    }

    v4 = [NSNumber numberWithLongLong:v3];
    [v2 removeObjectForKey:v4];
  }

  os_unfair_lock_unlock(&stru_1005ABBF8);
}

id sub_100402BD0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  os_unfair_lock_lock(&stru_1005ABBF8);
  if (qword_1005ABBF0)
  {
    v3 = [qword_1005ABBF0 objectForKey:v2];
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(&stru_1005ABBF8);

  return v3;
}

void sub_100402CF4(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindArray:v5 atPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindDictionary:v5 atPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindString:v5 atPosition:a2];
    goto LABEL_10;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v9 bindNullAtPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timeIntervalSinceReferenceDate];
LABEL_15:
    [v9 bindDouble:a2 atPosition:?];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindData:v5 atPosition:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 bindUUID:v5 atPosition:a2];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 absoluteString];
        [v9 bindString:v6 atPosition:a2];
      }

      else
      {
        v7 = [v5 objCType];
        v8 = *v7;
        if ((v8 == 102 || v8 == 100) && !v7[1])
        {
          [v5 doubleValue];
          goto LABEL_15;
        }

        [v9 bindInt64:objc_msgSend(v5 atPosition:{"longLongValue"), a2}];
      }
    }
  }

LABEL_10:
}

__CFString *sub_100402F34(uint64_t a1)
{
  if (a1)
  {
    v2 = [[NSMutableString alloc] initWithCapacity:3 * a1 + 1];
    [v2 appendString:@"?"];
    v3 = a1 - 1;
    if (a1 != 1)
    {
      do
      {
        [v2 appendString:{@", ?"}];
        --v3;
      }

      while (v3);
    }

    v4 = [v2 copy];
  }

  else
  {
    v4 = &stru_100529300;
  }

  return v4;
}

void *sub_100402FDC(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v4 = 0;
    goto LABEL_9;
  }

  if ((sub_1004030CC() & 1) == 0)
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Dropping anonymous pings - DNU submission disabled", buf, 2u);
    }

    v4 = 0;
    goto LABEL_8;
  }

  v8.receiver = a1;
  v8.super_class = AnonymousPingTask;
  v4 = objc_msgSendSuper2(&v8, "init");
  if (v4)
  {
    v5 = [v3 copy];
    a1 = v4[5];
    v4[5] = v5;
LABEL_8:
  }

LABEL_9:

  return v4;
}

uint64_t sub_1004030CC()
{
  objc_opt_self();
  if (!sub_10030B4C0())
  {
    return 0;
  }

  v0 = sub_1003BBF50();
  v1 = [v0 isHRNMode] ^ 1;

  return v1;
}

id sub_100403578()
{
  objc_opt_self();
  v0 = [@"com.apple.itunes.extended-media-kind" stringByReplacingOccurrencesOfString:@"-" withString:@"\\-"];
  v1 = objc_alloc_init(NSMutableArray);
  [v1 addObject:&off_100548808];
  [v1 addObject:&off_100548820];
  v2 = objc_alloc_init(NSMutableString);
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      if (v3)
      {
        [v2 appendString:{@", "}];
      }

      v4 = [v1 objectAtIndexedSubscript:v3];
      [v2 appendFormat:@"'%@:%llu'", v0, objc_msgSend(v4, "unsignedLongLongValue")];

      ++v3;
    }

    while (v3 < [v1 count]);
  }

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Query string for DAAP call is: %{public}@", buf, 0xCu);
  }

  v6 = [NSString stringWithString:v2];

  return v6;
}

void sub_100403A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100403A3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Completed request %{public}@", &v9, 0xCu);
    }

    v5 = sub_100005738(WeakRetained);
    v6 = *(a1 + 40);
    if (v6)
    {
      v6 = v6[2];
    }

    v7 = v6;
    [v7 receiveResponse:v5];
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, 0);
  }
}

id *sub_100403C3C(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v24.receiver = a1;
    v24.super_class = ProgressInfo;
    v10 = objc_msgSendSuper2(&v24, "init");
    a1 = v10;
    if (v10)
    {
      v10[12] = v7;
      objc_storeStrong(v10 + 13, a4);
      if (v8)
      {
        v11 = v8;
      }

      else
      {
        sub_10030B6D4([ProgressPortions alloc], 0, 0);
      }

      v12 = a1[17];
      a1[17] = v11;

      a1[16] = 0;
      v13 = [NSMutableArray arrayWithCapacity:50];
      v14 = a1[5];
      a1[5] = v13;

      v15 = [NSMutableArray arrayWithCapacity:30];
      v16 = a1[7];
      a1[7] = v15;

      +[NSDate timeIntervalSinceReferenceDate];
      a1[1] = v17;
      +[NSDate timeIntervalSinceReferenceDate];
      a1[2] = v18;
      +[NSDate timeIntervalSinceReferenceDate];
      a1[3] = v19;
      v20 = objc_alloc_init(ASDProgress);
      v21 = a1[9];
      a1[9] = v20;

      [a1[9] setBundleID:v7];
      [a1[9] setCompletedUnitCount:-1];
      [a1[9] setTotalUnitCount:1000];
      [a1[9] setInstallTotalUnitCount:1000];
      [a1[9] setPhase:1];
      if (v8)
      {
        [a1[9] setHasPostProcessing:v8[4] > 0];
        v22 = v8[4];
      }

      else
      {
        [a1[9] setHasPostProcessing:0];
        v22 = 0;
      }

      [a1[9] setEssentialBackgroundAssetDownloadEstimate:v22];
    }
  }

  return a1;
}

id *sub_100403E00(id *result)
{
  if (result)
  {
    v1 = result;
    [result[5] removeAllObjects];
    [v1[7] removeAllObjects];
    +[NSDate timeIntervalSinceReferenceDate];
    v1[1] = v2;
    +[NSDate timeIntervalSinceReferenceDate];
    v1[2] = v3;
    result = +[NSDate timeIntervalSinceReferenceDate];
    v1[3] = v4;
  }

  return result;
}

id *sub_100403E60(id *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ([result[9] phase] == 2)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v3 = sub_100404190(v1, *(v1 + 112), v2);
    v4 = v3;
    if (v3 > 0.0)
    {
      v5 = *(v1 + 56);
      v6 = [NSNumber numberWithDouble:v3];
      [v5 addObject:v6];

      if ([*(v1 + 56) count] >= 0x1F)
      {
        [*(v1 + 56) removeObjectAtIndex:0];
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v7 = *(v1 + 56);
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v9 = 0.0;
      v10 = 0.0;
      if (v8)
      {
        v11 = v8;
        v12 = *v25;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v7);
            }

            [*(*(&v24 + 1) + 8 * i) doubleValue];
            v10 = v10 + v14;
          }

          v11 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v11);
      }

      if ([*(v1 + 56) count])
      {
        v9 = ceil((*(v1 + 120) - *(v1 + 112)) / ceil(v10 / [*(v1 + 56) count]));
      }

      v15 = *(v1 + 24);
      +[NSDate timeIntervalSinceReferenceDate];
      v17 = v15 - ceil(v16 - *(v1 + 16));
      if (vabdd_f64(v17, v9) / v17 > 0.25)
      {
        +[NSDate timeIntervalSinceReferenceDate];
        *(v1 + 16) = v18;
        *(v1 + 24) = v9;
        +[NSDate timeIntervalSinceReferenceDate];
        v17 = v9 - ceil(v19 - *(v1 + 16));
      }

      v20 = v17;
      goto LABEL_23;
    }

LABEL_21:
    v20 = -1;
    goto LABEL_23;
  }

  if ([*(v1 + 72) phase] == 5)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v22 = sub_100404190(v1, *(v1 + 80), v21);
    v4 = v22;
    if (v22 > 0.0)
    {
      v20 = vcvtpd_s64_f64((*(v1 + 88) - *(v1 + 80)) / v22);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_100403E00(v1);
  v20 = -1;
  v4 = 0.0;
LABEL_23:
  result = [*(v1 + 72) setCompletedUnitCount:{(*(v1 + 128) * objc_msgSend(*(v1 + 72), "totalUnitCount"))}];
  if (v4 > 0.0)
  {
    [*(v1 + 72) setThroughput:v4];
    v23 = *(v1 + 72);

    return [v23 setSecondsRemaining:v20];
  }

  return result;
}

double sub_100404190(uint64_t a1, unint64_t a2, double a3)
{
  v6 = objc_alloc_init(ProgressSample);
  v7 = v6;
  if (v6)
  {
    v6->_time = a3;
    v6->_bytes = a2;
  }

  [*(a1 + 40) addObject:v6];
  v8 = 0.0;
  if ([*(a1 + 40) count] >= 5)
  {
    v9 = [*(a1 + 40) count];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = *(a1 + 40);
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(*(&v25 + 1) + 8 * v18);
          if (v19)
          {
            v20 = *(v19 + 16) - *(a1 + 8);
            v21 = *(v19 + 8);
          }

          else
          {
            v21 = 0.0;
            v20 = 0.0 - *(a1 + 8);
          }

          v17 = v17 + v20;
          v14 = v14 + v20 * v20;
          v15 = v15 + v20 * v21;
          v16 = v16 + v21;
          v18 = v18 + 1;
        }

        while (v12 != v18);
        v22 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v12 = v22;
      }

      while (v22);
    }

    else
    {
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
    }

    v8 = (v9 * v15 - v17 * v16) / (v9 * v14 - v17 * v17);
  }

  if ([*(a1 + 40) count] >= 0x32)
  {
    v23 = 0;
    do
    {
      [*(a1 + 40) removeObjectAtIndex:v23++];
    }

    while (v23 < [*(a1 + 40) count]);
  }

  return v8;
}

void *sub_10040439C(void *result, unint64_t a2)
{
  if (result)
  {
    v2 = result;
    result[14] = a2;
    v3 = result[17];
    if (v3)
    {
      v4 = *(v3 + 32);
      if (v4 < 1)
      {
        v5 = result[15];
      }

      else
      {
        v5 = (v4 + result[15]);
      }

      v6 = a2 / v5;
      v7 = *(v3 + 16);
    }

    else
    {
      v6 = a2 / result[15];
      v7 = 0.0;
    }

    *(result + 16) = v6 * (1.0 - v7);
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v2[16];
      v10 = v2[13];
      v11 = v2[14];
      v13 = 138412802;
      v14 = v10;
      v15 = 2048;
      v16 = v9;
      v17 = 2048;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%@]: Received download update: %.2f (%lld)", &v13, 0x20u);
    }

    [v2[9] setDownloadCompletedUnitCount:v2[14]];
    [v2[9] setDownloadTotalUnitCount:v2[15]];
    result = [v2[9] phase];
    if (result != 7)
    {
      if (v2[14] < v2[15])
      {
        v12 = 2;
      }

      else
      {
        v12 = 3;
      }

      return [v2[9] setPhase:v12];
    }
  }

  return result;
}

const __CFString *sub_100404660(const __CFString *result, unint64_t a2)
{
  if (result)
  {
    if (a2 > 7)
    {
      return &stru_100529300;
    }

    else
    {
      return off_100528718[a2];
    }
  }

  return result;
}

void sub_1004046FC(uint64_t a1, void *a2)
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

void sub_100404D8C(void *a1, void *a2)
{
  if (a1)
  {
    sub_100404DA0(a1, 0, a2);
  }
}

void sub_100404DA0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[UpdatesManager shouldUseModernUpdates];
  if (!v7)
  {
    v20 = v6;
    v9 = [SQLiteComparisonPredicate predicateWithProperty:@"update_state" value:&off_100548880 comparisonType:2];
    v26[0] = v9;
    v10 = [SQLiteComparisonPredicate predicateWithProperty:@"is_offloaded" equalToValue:&__kCFBooleanFalse];
    v26[1] = v10;
    v11 = [SQLiteComparisonPredicate predicateWithProperty:@"is_per_device" equalToValue:&__kCFBooleanFalse];
    v26[2] = v11;
    v12 = [NSArray arrayWithObjects:v26 count:3];
    v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v12];

    v6 = v20;
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [SQLiteComparisonPredicate predicateWithProperty:@"update_state" value:&off_100548880 comparisonType:2];
  if (v5)
  {
LABEL_5:
    v25[0] = v8;
    v25[1] = v5;
    v13 = [NSArray arrayWithObjects:v25 count:2];
    v14 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v13];

    v8 = v14;
  }

LABEL_6:
  v15 = [a1 connection];
  if (v7)
  {
    v16 = sub_1002D4C68(_TtC9appstored14MediaAPIUpdate, v15, v8);

    v17 = +[_TtC9appstored14MediaAPIUpdate defaultProperties];
  }

  else
  {
    v16 = sub_1002D4C68(AppUpdateMemoryEntity, v15, v8);

    v24[0] = @"bundle_id";
    v24[1] = @"store_item_data";
    v17 = [NSArray arrayWithObjects:v24 count:2];
  }

  v18 = v17;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100405490;
  v21[3] = &unk_100528788;
  v23 = v7;
  v19 = v6;
  v22 = v19;
  [v16 enumerateMemoryEntitiesWithProperties:v18 usingBlock:v21];
}

id sub_1004050A4(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [SQLiteContainsPredicate containsPredicateWithProperty:@"update_state" values:&off_100549710];
    v5 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];

    v14[0] = v4;
    v14[1] = v5;
    v6 = [NSArray arrayWithObjects:v14 count:2];
    v7 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v6];

    v8 = +[UpdatesManager shouldUseModernUpdates];
    v9 = off_100506478;
    if (!v8)
    {
      v9 = off_1005063A0;
    }

    v10 = *v9;
    v11 = [v2 connection];
    v12 = sub_1002D4B20(v10, v11, v7);

    v2 = [v12 buyParams];
  }

  return v2;
}

id sub_10040522C(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_100405374;
    v11 = sub_100405384;
    v12 = 0;
    v4 = [SQLiteComparisonPredicate predicateWithProperty:@"bundle_id" equalToValue:v3];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10040538C;
    v6[3] = &unk_100528760;
    v6[4] = &v7;
    sub_100404DA0(a1, v4, v6);
    a1 = v8[5];

    _Block_object_dispose(&v7, 8);
  }

  return a1;
}

void sub_10040535C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100405374(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_10040539C(id a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = +[_TtC9appstored20MediaAPIUpdateEntity bundleIDPropertyKey];
    v5 = [SQLiteComparisonPredicate predicateWithProperty:v4 equalToValue:v3];

    v6 = [v2 connection];
    v7 = sub_1002D4B20(_TtC9appstored14MediaAPIUpdate, v6, v5);

    v8 = +[_TtC9appstored20MediaAPIUpdateEntity metadataPropertyKey];
    v2 = sub_10023E0F8(v7, v8);
  }

  return v2;
}

void sub_100405490(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) != 1)
  {
    v5 = sub_10023E644(v3, @"bundle_id");
    v6 = sub_10023E0F8(v4, @"store_item_data");
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v14 = [[AppUpdateMemoryEntity alloc] initWithUpdateDictionary:v7];
        if (v14)
        {
          v15 = v14;
          (*(*(a1 + 32) + 16))();
        }
      }

      goto LABEL_18;
    }

    v9 = ASDLogHandleForCategory();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v10)
      {
        v16 = 0;
        v11 = "No bundleID";
        v12 = &v16;
LABEL_21:
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v11, v12, 2u);
      }
    }

    else if (v10)
    {
      *buf = 0;
      v11 = "Bad item data";
      v12 = buf;
      goto LABEL_21;
    }

LABEL_18:
    goto LABEL_19;
  }

  v5 = v3;
  if (([v5 isOffloaded] & 1) == 0 && (objc_msgSend(v5, "isPerDevice") & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

LABEL_19:
}

id sub_100405768()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10040580C;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AB088 != -1)
  {
    dispatch_once(&qword_1005AB088, block);
  }

  v0 = qword_1005AB080;

  return v0;
}

void sub_10040580C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AB080;
  qword_1005AB080 = v1;
}

uint64_t sub_100405844(uint64_t a1, void *a2, int a3, int a4, BOOL *a5, void *a6)
{
  v11 = a2;
  v54 = a1;
  if (!a1)
  {
    goto LABEL_44;
  }

  v12 = +[ACAccountStore ams_sharedAccountStore];
  v13 = [v12 ams_activeiTunesAccount];

  v55 = v13;
  v14 = [v13 ams_DSID];
  v15 = sub_100379D48(FamilyInfoLookupTask, v11);
  v16 = v15;
  v17 = v15 != 0;
  if (v15)
  {
    v18 = *(v15 + 16);
    if (a3)
    {
LABEL_4:
      v60 = 0;
      sub_100405C4C(v54, a4 ^ 1, v11, &v60);
      v18 = v19 = v18;
      v20 = v60;

      v21 = (v16 | v18) != 0;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v48 = v23;
      [v55 ams_DSID];
      v52 = a6;
      v25 = v24 = a5;
      *buf = 138543874;
      v63 = v23;
      v64 = 2114;
      v65 = v11;
      v66 = 2114;
      v67 = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Did not find cached FamilyInfo for account: %{public}@", buf, 0x20u);

      a5 = v24;
      a6 = v52;
    }

    v18 = 0;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  v20 = 0;
  v21 = v17;
LABEL_9:
  if (v18)
  {
    v26 = v20 == 0;
  }

  else
  {
    v26 = 0;
  }

  if (!v26 || v14 == 0)
  {
    LOBYTE(v28) = 0;
    if (!a6)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v50 = a5;
    v51 = v11;
    v53 = a6;
    v49 = v18;
    if (v16)
    {
      v29 = *(v16 + 16);
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    v31 = [v30 countByEnumeratingWithState:&v56 objects:v70 count:16];
    if (v31)
    {
      v32 = v31;
      v46 = v20;
      v47 = v21;
      v33 = *v57;
LABEL_23:
      v34 = 0;
      while (1)
      {
        if (*v57 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v56 + 1) + 8 * v34);
        if (v35)
        {
          v36 = *(v35 + 40);
          if (v36)
          {
            v37 = v36;
            v38 = *(v35 + 40);
            v39 = [v38 isEqualToNumber:v14];

            if (v39)
            {
              break;
            }
          }
        }

        if (v32 == ++v34)
        {
          v40 = [v30 countByEnumeratingWithState:&v56 objects:v70 count:16];
          v32 = v40;
          if (!v40)
          {
            LOBYTE(v28) = 0;
            v11 = v51;
            goto LABEL_37;
          }

          goto LABEL_23;
        }
      }

      v28 = *(v35 + 9);
      v41 = ASDLogHandleForCategory();
      v11 = v51;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = objc_opt_class();
        *buf = 138544130;
        v63 = v42;
        v64 = 2114;
        v65 = v51;
        v66 = 2114;
        v67 = v14;
        v68 = 1024;
        v69 = v28;
        v43 = v42;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Family member found for account: %{public}@ askToBuyEnabled: %d", buf, 0x26u);
      }

LABEL_37:
      a5 = v50;
      a6 = v53;
      v21 = v47;
      v20 = v46;
    }

    else
    {
      LOBYTE(v28) = 0;
    }

    v18 = v49;
    if (!a6)
    {
      goto LABEL_41;
    }
  }

  v44 = v20;
  *a6 = v20;
LABEL_41:
  if (a5)
  {
    *a5 = v21;
  }

  v61 = v28;

  a1 = v61;
LABEL_44:

  return a1;
}

id sub_100405C4C(uint64_t a1, int a2, void *a3, void *a4)
{
  if (a1)
  {
    sub_100405D70(a1, a2, a3, a4);
    [*(a1 + 48) lock];
    v5 = [*(a1 + 32) copy];
    [*(a1 + 48) unlock];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_100405CAC(void *a1)
{
  if (a1)
  {
    a1 = sub_100405CE0(a1, 0);
    v1 = vars8;
  }

  return a1;
}

id sub_100405CE0(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = objc_alloc_init(_TtC9appstored6LogKey);
    sub_100405D70(a1, a2, v4, 0);
    [*(a1 + 48) lock];
    v5 = [*(a1 + 24) copy];
    [*(a1 + 48) unlock];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100405D70(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  if (*(a1 + 40) > 0.0)
  {
    v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v8 timeIntervalSinceNow];
    v10 = v9;

    if (v10 >= -10800.0)
    {
      v20 = 0;
      goto LABEL_51;
    }
  }

  v11 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v66 = objc_opt_class();
    v67 = 2114;
    v68 = v7;
    v69 = 1024;
    LODWORD(v70) = 1;
    v12 = v66;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Bootstrapping family : refresh from server: %d", buf, 0x1Cu);
  }

  v13 = [FamilyInfoLookupTask alloc];
  v14 = +[BagService appstoredService];
  v15 = [v14 amsBag];
  v16 = sub_100379CC8(v13, v15);

  if (v16)
  {
    objc_setProperty_nonatomic_copy(v16, v17, v7, 16);
    *(v16 + 8) = a2;
  }

  v18 = sub_10037A38C(v16);
  v63 = 0;
  v19 = [v18 resultWithError:&v63];
  v20 = v63;

  if (!v20)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    *(a1 + 40) = v24;
    if (v19)
    {
      v25 = v19[2];
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    if (!v26)
    {
      goto LABEL_47;
    }

    [*(a1 + 48) lock];
    v56 = a4;
    v57 = v7;
    v54 = v16;
    v53 = v19;
    if (v19)
    {
      v27 = v19[2];
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;
    v29 = [v28 copy];
    v30 = *(a1 + 32);
    *(a1 + 32) = v29;

    v31 = +[ActiveAccountObserver activeAccount];
    v21 = [v31 ams_DSID];

    v58 = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v55 = a1;
    v32 = *(a1 + 32);
    v33 = [v32 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (!v33)
    {
LABEL_41:

      v45 = [v58 copy];
      v46 = *(v55 + 24);
      *(v55 + 24) = v45;

      [*(v55 + 48) unlock];
      a4 = v56;
      v7 = v57;
      v16 = v54;
      if ([*(v55 + 24) count])
      {
        v47 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = objc_opt_class();
          v49 = *(v55 + 24);
          v50 = v48;
          v51 = [v49 componentsJoinedByString:{@", "}];
          *buf = 138543874;
          v66 = v48;
          v67 = 2114;
          v68 = v57;
          v69 = 2114;
          v70 = v51;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Set family accounts to: [%{public}@]", buf, 0x20u);
        }
      }

      v19 = v53;
      v20 = 0;
      goto LABEL_46;
    }

    v34 = v33;
    v35 = *v60;
LABEL_17:
    v36 = 0;
    while (1)
    {
      if (*v60 != v35)
      {
        objc_enumerationMutation(v32);
      }

      v37 = *(*(&v59 + 1) + 8 * v36);
      if (v21)
      {
        if (!v37)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (!v37)
        {
          v20 = 0;
LABEL_39:
          v38 = 0;
          goto LABEL_27;
        }

        v43 = *(v37 + 40);
        v20 = v43;
        if (v43)
        {

LABEL_34:
          v40 = v20;
          v20 = *(v37 + 40);
          [v58 addObject:v20];
LABEL_35:

          v20 = v40;
          goto LABEL_36;
        }
      }

      v38 = *(v37 + 40);
      if (v38)
      {
        v39 = v21 == 0;
      }

      else
      {
        v39 = 1;
      }

      if (!v39)
      {
        v41 = *(v37 + 40);
        v42 = [v41 isEqualToNumber:v21];

        if (v42)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }

LABEL_27:

      v40 = v20;
      if (!v21)
      {
        goto LABEL_35;
      }

LABEL_36:
      if (v34 == ++v36)
      {
        v44 = [v32 countByEnumeratingWithState:&v59 objects:v64 count:16];
        v34 = v44;
        if (!v44)
        {
          goto LABEL_41;
        }

        goto LABEL_17;
      }
    }
  }

  v21 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = objc_opt_class();
    *buf = 138544130;
    v66 = v22;
    v67 = 2114;
    v68 = v7;
    v69 = 2114;
    v70 = v20;
    v71 = 1024;
    v72 = a2;
    v23 = v22;
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[%{public}@] [%{public}@] Family circle request resulted in error: [%{public}@] isBackground: %{BOOL}d", buf, 0x26u);
  }

LABEL_46:

LABEL_47:
  if (a4 && v20)
  {
    v52 = v20;
    *a4 = v20;
  }

LABEL_51:
}

void sub_1004062D4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100406350;
    block[3] = &unk_10051AF98;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_100406350(uint64_t a1)
{
  v2 = objc_alloc_init(_TtC9appstored6LogKey);
  v3 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = objc_opt_class();
    v25 = 2112;
    v26 = v2;
    v4 = v24;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Performing migration of FamilyInfo", buf, 0x16u);
  }

  v5 = +[ACAccountStore ams_sharedAccountStore];
  v6 = [v5 ams_activeiTunesAccount];

  if (v6)
  {
    v7 = sub_100379D48(FamilyInfoLookupTask, v2);
    if (v7)
    {
      goto LABEL_8;
    }

    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v11 = [v6 ams_DSID];
      *buf = 138543874;
      v24 = v9;
      v25 = 2114;
      v26 = v2;
      v27 = 2114;
      v28 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Attempting to update cached FamilyInfo for account: %{public}@", buf, 0x20u);
    }

    v12 = *(a1 + 32);
    v22 = 0;
    v13 = sub_100405C4C(v12, 1, v2, &v22);

    if (v13)
    {
LABEL_8:
      v14 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_11:

        goto LABEL_14;
      }

      v15 = objc_opt_class();
      v16 = v15;
      v17 = [v6 ams_DSID];
      *buf = 138543874;
      v24 = v15;
      v25 = 2114;
      v26 = v2;
      v27 = 2114;
      v28 = v17;
      v18 = "[%{public}@] [%{public}@] FamilyInfo cached for account: %{public}@";
    }

    else
    {
      v14 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v21 = objc_opt_class();
      v16 = v21;
      v17 = [v6 ams_DSID];
      *buf = 138543874;
      v24 = v21;
      v25 = 2114;
      v26 = v2;
      v27 = 2114;
      v28 = v17;
      v18 = "[%{public}@] [%{public}@] FamilyInfo not cached following migration for account: %{public}@";
    }

    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v18, buf, 0x20u);

    goto LABEL_11;
  }

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v19 = objc_opt_class();
    *buf = 138543618;
    v24 = v19;
    v25 = 2112;
    v26 = v2;
    v20 = v19;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Not updating FamilyInfo due to no active account", buf, 0x16u);
  }

LABEL_14:
}

void sub_100406740(uint64_t a1)
{
  v53 = +[ActiveAccountObserver activeAccount];
  v2 = [v53 ams_DSID];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  if (v2)
  {
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else if (v5)
  {
    goto LABEL_7;
  }

  if ([v2 isEqualToNumber:?])
  {
    goto LABEL_48;
  }

  v4 = *(a1 + 32);
LABEL_7:
  objc_storeStrong((v4 + 8), v3);
  v6 = *(a1 + 32);
  if (v6)
  {
    if (*(v6 + 32))
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v69 = objc_opt_class();
        v8 = v69;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cleared family", buf, 0xCu);
      }
    }

    [*(v6 + 48) lock];
    v9 = *(v6 + 32);
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;

    v10 = *(v6 + 24);
    *(v6 + 24) = 0;

    [*(v6 + 48) unlock];
  }

  if (v53)
  {
    v11 = *(a1 + 32);
    v12 = v53;
    v13 = v12;
    if (!v11)
    {
LABEL_47:

      goto LABEL_48;
    }

    v54 = v12;
    v14 = objc_alloc_init(_TtC9appstored6LogKey);
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = [v54 ams_DSID];
      *buf = 138543874;
      v69 = v16;
      v70 = 2114;
      v71 = v14;
      v72 = 2114;
      v73 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] Checking if account: %{public}@ has FamilyInfo following account change", buf, 0x20u);
    }

    v51 = v11;

    sub_100379D48(FamilyInfoLookupTask, v14);
    v52 = v13 = v54;
    if (v52)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v19 = v52[2];
      v20 = [v19 countByEnumeratingWithState:&v56 objects:buf count:16];
      if (v20)
      {
        v21 = v20;
        v49 = v14;
        v50 = v3;
        v22 = 0;
        v23 = *v57;
        do
        {
          v24 = 0;
          do
          {
            if (*v57 != v23)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v56 + 1) + 8 * v24);
            if (v25)
            {
              v26 = *(v25 + 40);
              if (v26)
              {
                v27 = [v13 ams_DSID];
                if (v27)
                {
                  v28 = *(v25 + 40);
                  v29 = [v13 ams_DSID];
                  v30 = [v28 isEqualToNumber:v29];

                  v13 = v54;
                  v22 |= v30;
                }
              }
            }

            else
            {
              v26 = 0;
            }

            v24 = v24 + 1;
          }

          while (v21 != v24);
          v31 = [v19 countByEnumeratingWithState:&v56 objects:buf count:16];
          v21 = v31;
        }

        while (v31);

        v14 = v49;
        v3 = v50;
        if (v22)
        {
          v32 = ASDLogHandleForCategory();
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
LABEL_46:

            goto LABEL_47;
          }

          v33 = objc_opt_class();
          v34 = v33;
          v35 = [v54 ams_DSID];
          *v60 = 138543874;
          v61 = v33;
          v62 = 2114;
          v63 = v49;
          v64 = 2114;
          v65 = v35;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] FamilyInfo found for account: %{public}@", v60, 0x20u);

LABEL_45:
          v13 = v54;
          goto LABEL_46;
        }
      }

      else
      {
      }
    }

    v36 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_opt_class();
      v38 = v37;
      v39 = [v54 ams_DSID];
      *v60 = 138543874;
      v61 = v37;
      v62 = 2114;
      v63 = v14;
      v64 = 2114;
      v65 = v39;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%{public}@] FamilyInfo not found account: %{public}@. Attempting to reload silently.", v60, 0x20u);
    }

    v55 = 0;
    sub_100405D70(v51, 1, v14, &v55);
    v32 = v55;
    v40 = ASDLogHandleForCategory();
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    if (v32)
    {
      if (v41)
      {
        v42 = objc_opt_class();
        v43 = v42;
        v44 = [v54 ams_DSID];
        *v60 = 138544130;
        v61 = v42;
        v62 = 2114;
        v63 = v14;
        v64 = 2114;
        v65 = v44;
        v66 = 2114;
        v67 = v32;
        v45 = "[%{public}@] [%{public}@] Error looking up FamilyInfo for account: %{public}@ error: %{public}@";
        v46 = v40;
        v47 = 42;
LABEL_43:
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v45, v60, v47);
      }
    }

    else if (v41)
    {
      v48 = objc_opt_class();
      v43 = v48;
      v44 = [v54 ams_DSID];
      *v60 = 138543874;
      v61 = v48;
      v62 = 2114;
      v63 = v14;
      v64 = 2114;
      v65 = v44;
      v45 = "[%{public}@] [%{public}@] FamilyInfo reloaded for account: %{public}@";
      v46 = v40;
      v47 = 32;
      goto LABEL_43;
    }

    goto LABEL_45;
  }

LABEL_48:
}

void sub_100406DAC(void *a1, void *a2)
{
  v10 = a2;
  if (a1)
  {
    v3 = sub_10022DA38(a1);
    v4 = [v3 mutableCopy];

    if (!v4)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
    }

    v5 = [v10 copy];
    [v4 setObject:v5 forKeyedSubscript:@"AnalyticsDialogName"];

    v6 = v4;
    v7 = [a1 userInfo];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
    }

    v9 = [v6 copy];
    [v8 setObject:v9 forKeyedSubscript:@"com.apple.appstored.AnalyticsEvent"];

    [a1 setUserInfo:v8];
  }
}

void sub_100406ED0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = sub_10022DA38(a1);
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:@"AnalyticsDialogName"];
      v13 = v12;
      if (v12 && [v12 length])
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10040701C;
        v14[3] = &unk_1005287F0;
        v15 = v11;
        v16 = v7;
        v17 = a1;
        v18 = v8;
        v19 = v13;
        v9[2](v9, @"com.apple.appstored.dialog", v14);
      }
    }
  }
}

id sub_10040701C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"AnalyticsEventInfo"];
  v3 = [v2 mutableCopy];

  if (!v3)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
  }

  v4 = [*(a1 + 40) selectedActionIdentifier];
  if (v4)
  {
    v5 = [*(a1 + 48) locateActionWithIdentifier:v4];
    v6 = v5;
    if (v5)
    {
      v7 = sub_10022D9D8(v5);
      if (!v7)
      {
        v8 = [v6 style];
        if (v8 > 2)
        {
          v7 = @"uknown";
        }

        else
        {
          v7 = off_100528810[v8];
        }
      }

      [v3 setObject:v7 forKeyedSubscript:@"actionName"];
    }
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = sub_1003429BC(v9);
    [v3 setObject:v10 forKeyedSubscript:@"errorDescription"];
  }

  [v3 setObject:*(a1 + 64) forKeyedSubscript:@"dialogName"];

  return v3;
}

id sub_100407160(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = v4;
  objc_opt_self();
  v6 = [AppMetadataLoader alloc];
  v7 = [v5 bundleContainerURL];

  v8 = v7;
  if (v6)
  {
    v15.receiver = v6;
    v15.super_class = AppMetadataLoader;
    v9 = objc_msgSendSuper2(&v15, "init");
    v6 = v9;
    if (v9)
    {
      v9->_targetIsContainer = 1;
      objc_storeStrong(&v9->_targetURL, v7);
    }
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  if (!v6->_targetIsContainer)
  {
    if (a3)
    {
      *a3 = sub_100407328(v6->_targetURL, 0, @"Extended attribute is not available on this platform");
    }

LABEL_11:
    v12 = 0;
    goto LABEL_16;
  }

  v10 = [(NSURL *)v6->_targetURL URLByAppendingPathComponent:@"iTunesMetadata"];
  v11 = [v10 URLByAppendingPathExtension:@"plist"];

  if (v11)
  {
    v15.receiver = 0;
    v12 = [MIStoreMetadata metadataFromPlistAtURL:v11 error:&v15];
    v13 = v15.receiver;
    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_13:
    if (!v12)
    {
      *a3 = sub_100407328(v6->_targetURL, v13, @"Loading failed");
    }

    goto LABEL_15;
  }

  v13 = 0;
  v12 = 0;
  if (a3)
  {
    goto LABEL_13;
  }

LABEL_15:

LABEL_16:

  return v12;
}

id sub_100407328(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [a1 path];
  v8 = [NSString stringWithFormat:@"%@ for '%@'", v5, v7];

  v9 = ASDErrorWithUnderlyingErrorAndDescription();

  return v9;
}

void sub_1004073F4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [NSString stringWithFormat:@"itms-apps://?action=lookup&ids=%@", v5];

  v7 = [NSURL URLWithString:v6];

  v8 = +[LSApplicationWorkspace defaultWorkspace];
  v11 = 0;
  LODWORD(v6) = [v8 openURL:v7 withOptions:0 error:&v11];
  v9 = v11;

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  (v4)[2](v4, v10);
}

void sub_1004074EC(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_self();
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [v2 openApplicationWithBundleID:@"com.apple.AppStore"];

  if (v3)
  {
    v5[2](v5, 0);
  }

  else
  {
    v4 = ASDErrorWithDescription();
    (v5)[2](v5, v4);
  }
}

void *sub_10040771C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = DownloadSinf;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

void sub_100407890(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      v3 = [*(v2 + 8) copy];
      if (v3)
      {
        v28 = v3;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v4 = *(a1 + 16);
        if (v4)
        {
          v5 = [*(v4 + 8) copy];
        }

        else
        {
          v5 = 0;
        }

        v6 = [v5 countByEnumeratingWithState:&v33 objects:v40 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v34;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v34 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v33 + 1) + 8 * i);
              v11 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v39 = v10;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deleting asset pack at URL: %{public}@", buf, 0xCu);
              }

              sub_1001FD9A0(ODRAssetPack, v10);
            }

            v7 = [v5 countByEnumeratingWithState:&v33 objects:v40 count:16];
          }

          while (v7);
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = [v12[2] copy];
      if (v13)
      {
        v27 = v13;
        v14 = sub_1003DC0F4();
        v15 = v14;
        if (v14)
        {
          v16 = *(v14 + 32);
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        v18 = +[NSFileManager defaultManager];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v19 = *(a1 + 16);
        if (v19)
        {
          v20 = [*(v19 + 16) copy];
        }

        else
        {
          v20 = 0;
        }

        v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v30;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v30 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [NSString stringWithFormat:@"%@/%@", v17, *(*(&v29 + 1) + 8 * j)];
              if ([v18 fileExistsAtPath:v25])
              {
                v26 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v39 = v25;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Deleting storage at path: %{public}@", buf, 0xCu);
                }

                [v18 removeItemAtPath:v25 error:0];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v22);
        }

        v12 = v27;
      }

      else
      {
        v12 = 0;
      }
    }
  }
}

IAPInfoUpdateRequestContext *sub_100407C30(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  objc_opt_self();
  v9 = [IAPInfoUpdateRequestContext alloc];
  v11 = [v6 processInfo];
  if (v6)
  {
    Property = objc_getProperty(v6, v10, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v13 = Property;

  v14 = v8;
  v15 = v7;
  v16 = v11;
  v17 = v13;
  if (v9)
  {
    v20.receiver = v9;
    v20.super_class = IAPInfoUpdateRequestContext;
    v18 = objc_msgSendSuper2(&v20, "init");
    v9 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_revision, a2);
      objc_storeStrong(&v9->_account, a3);
      objc_storeStrong(&v9->_clientInfo, v11);
      objc_storeStrong(&v9->_logKey, Property);
    }
  }

  return v9;
}

void *sub_100408284(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = AppInstall;
    v10 = objc_msgSendSuper2(&v13, "init");
    a1 = v10;
    if (v10)
    {
      sub_100408354(v10, v7, v8, v9);
      v11 = +[NSUUID UUID];
      sub_10023E000(a1, v11, @"external_id");
    }
  }

  return a1;
}

void sub_100408354(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  if (!a1)
  {
    goto LABEL_50;
  }

  v8 = a2;
  v9 = a4;
  objc_opt_self();
  v10 = objc_alloc_init(NSMutableDictionary);
  [v10 setObject:&off_100548898 forKeyedSubscript:@"source_type"];
  if (v8)
  {
    v12 = objc_getProperty(v8, v11, 24, 1);
    [v10 setObject:v12 forKeyedSubscript:@"alternate_icon_name"];

    Property = objc_getProperty(v8, v13, 96, 1);
  }

  else
  {
    [v10 setObject:0 forKeyedSubscript:@"alternate_icon_name"];
    Property = 0;
  }

  v15 = Property;
  [v10 setObject:v15 forKeyedSubscript:@"bundle_id"];

  if (v8)
  {
    v17 = objc_getProperty(v8, v16, 88, 1);
    if (v17)
    {
      v19 = v17;
      [v10 setObject:v17 forKeyedSubscript:@"bundle_name"];

      goto LABEL_9;
    }

    v21 = objc_getProperty(v8, v18, 224, 1);
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  [v10 setObject:v22 forKeyedSubscript:@"bundle_name"];

  if (!v8)
  {
    [v10 setObject:0 forKeyedSubscript:@"bundle_version"];
    v25 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v23 = objc_getProperty(v8, v20, 112, 1);
  [v10 setObject:v23 forKeyedSubscript:@"bundle_version"];

  v25 = objc_getProperty(v8, v24, 216, 1);
LABEL_10:
  v26 = v25;
  [v10 setObject:v26 forKeyedSubscript:@"item_id"];

  if (v8)
  {
    v28 = objc_getProperty(v8, v27, 144, 1);
    [v10 setObject:v28 forKeyedSubscript:@"evid"];

    v30 = objc_getProperty(v8, v29, 56, 1);
  }

  else
  {
    [v10 setObject:0 forKeyedSubscript:@"evid"];
    v30 = 0;
  }

  v31 = v30;
  if ([v31 length])
  {
    v33 = [NSURL URLWithString:v31];
    [v10 setObject:v33 forKeyedSubscript:@"artwork_url"];
  }

  if (v8)
  {
    v34 = objc_getProperty(v8, v32, 240, 1);
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  if ([v35 length])
  {
    v36 = [NSURL URLWithString:v35];
    [v10 setObject:v36 forKeyedSubscript:@"messages_artwork_url"];
  }

  if (v8)
  {
    if (v8[1])
    {
      [v10 setObject:&off_100548910 forKeyedSubscript:@"automatic_type"];
    }

    [v10 setObject:v9 forKeyedSubscript:@"check_store_queue_reason"];
    v37 = *(v8 + 16);
  }

  else
  {
    [v10 setObject:v9 forKeyedSubscript:@"check_store_queue_reason"];
    v37 = 0;
  }

  v38 = [NSNumber numberWithBool:v37 & 1];
  [v10 setObject:v38 forKeyedSubscript:@"preorder"];

  if (v8)
  {
    v40 = objc_getProperty(v8, v39, 40, 1);
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;
  [v10 setObject:v41 forKeyedSubscript:@"receipt"];

  if (v8)
  {
    v42 = *(v8 + 18);
  }

  else
  {
    v42 = 0;
  }

  v43 = [NSNumber numberWithBool:v42 & 1];
  [v10 setObject:v43 forKeyedSubscript:@"launch_prohibited"];

  if (v8)
  {
    v44 = [NSNumber numberWithBool:*(v8 + 11) & 1];
    [v10 setObject:v44 forKeyedSubscript:@"has_messages_extension"];

    v46 = objc_getProperty(v8, v45, 312, 1);
  }

  else
  {
    v74 = [NSNumber numberWithBool:0];
    [v10 setObject:v74 forKeyedSubscript:@"has_messages_extension"];

    v46 = 0;
  }

  v47 = v46;
  [v10 setObject:v47 forKeyedSubscript:@"transaction_id"];

  if (v8)
  {
    v49 = objc_getProperty(v8, v48, 120, 1);
    [v10 setObject:v49 forKeyedSubscript:@"cancel_download_url"];

    if (*(v8 + 12))
    {
      if (*(v8 + 14))
      {
        v50 = &off_100548940;
      }

      else if (*(v8 + 13))
      {
        v50 = &off_100548958;
      }

      else
      {
        v50 = &off_100548910;
      }
    }

    else
    {
      v50 = &off_100548898;
    }

    [v10 setObject:v50 forKeyedSubscript:@"watch_type"];
    v51 = *(v8 + 20);
  }

  else
  {
    [v10 setObject:0 forKeyedSubscript:@"cancel_download_url"];
    [v10 setObject:&off_100548898 forKeyedSubscript:@"watch_type"];
    v51 = 0;
  }

  v52 = [NSNumber numberWithBool:v51 & 1];
  [v10 setObject:v52 forKeyedSubscript:@"supports_32bit_only"];

  if (v8)
  {
    v53 = [NSNumber numberWithBool:*(v8 + 19) & 1];
    [v10 setObject:v53 forKeyedSubscript:@"redownload"];

    v55 = objc_getProperty(v8, v54, 320, 1);
  }

  else
  {
    v75 = [NSNumber numberWithBool:0];
    [v10 setObject:v75 forKeyedSubscript:@"redownload"];

    v55 = 0;
  }

  v56 = v55;
  [v10 setObject:v56 forKeyedSubscript:@"store_cohort"];

  if (v8)
  {
    v58 = objc_getProperty(v8, v57, 304, 1);
    [v10 setObject:v58 forKeyedSubscript:@"storefront"];

    v60 = objc_getProperty(v8, v59, 48, 1);
  }

  else
  {
    [v10 setObject:0 forKeyedSubscript:@"storefront"];
    v60 = 0;
  }

  v61 = v60;
  [v10 setObject:v61 forKeyedSubscript:@"vendor_name"];

  if (v8)
  {
    v62 = v8[37];
  }

  else
  {
    v62 = 0;
  }

  v63 = [NSNumber numberWithInteger:v62];
  [v10 setObject:v63 forKeyedSubscript:@"software_platform"];

  v64 = [v10 copy];
  [*(a1 + 16) addEntriesFromDictionary:v64];
  v65 = [[NSMutableArray alloc] initWithCapacity:2];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v66 = v7;
  v67 = [v66 countByEnumeratingWithState:&v76 objects:v80 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v77;
    do
    {
      for (i = 0; i != v68; i = i + 1)
      {
        if (*v77 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v71 = sub_1001D4DC4([AppPackage alloc], *(*(&v76 + 1) + 8 * i));
        if (v71)
        {
          [v65 addObject:{v71, v76}];
        }
      }

      v68 = [v66 countByEnumeratingWithState:&v76 objects:v80 count:16];
    }

    while (v68);
  }

  v72 = [v65 copy];
  v73 = *(a1 + 48);
  *(a1 + 48) = v72;

LABEL_50:
}

id *sub_100408B8C(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = AppInstall;
    a1 = objc_msgSendSuper2(&v20, "init");
    if (a1)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      v5 = [v3 bundleID];
      [v4 setObject:v5 forKeyedSubscript:@"bundle_id"];

      v6 = +[NSUUID UUID];
      [v4 setObject:v6 forKeyedSubscript:@"external_id"];

      v7 = [v3 isUserInitiated];
      v8 = @"priority";
      if (v7)
      {
        v9 = &off_100548898;
      }

      else
      {
        [v4 setObject:&off_1005488B0 forKeyedSubscript:@"priority"];
        v8 = @"supress_dialogs";
        v9 = &__kCFBooleanTrue;
      }

      [v4 setObject:v9 forKeyedSubscript:v8];
      v10 = objc_autoreleasePoolPush();
      v11 = [LSApplicationRecord alloc];
      v12 = [v3 bundleID];
      v13 = [v11 initWithBundleIdentifierOfSystemPlaceholder:v12 error:0];

      v14 = [v13 localizedName];
      [v4 setObject:v14 forKeyedSubscript:@"bundle_name"];

      v15 = [LSApplicationRecord alloc];
      v16 = [v3 bundleID];
      v17 = [v15 initWithBundleIdentifier:v16 allowPlaceholder:1 error:0];

      if (v17)
      {
        if ([v17 isPlaceholder])
        {
          v18 = &off_1005488E0;
        }

        else
        {
          v18 = &off_1005488C8;
        }
      }

      else
      {
        v18 = &off_1005488F8;
      }

      [v4 setObject:v18 forKeyedSubscript:@"coordinator_intent"];

      objc_autoreleasePoolPop(v10);
      [v4 setObject:&off_100548910 forKeyedSubscript:@"source_type"];
      [v4 setObject:&off_100548898 forKeyedSubscript:@"bootstrapped"];
      [v4 setObject:@"SYS" forKeyedSubscript:@"log_code"];
      [v4 setObject:&off_100548928 forKeyedSubscript:@"metrics_install_type"];
      [a1[2] addEntriesFromDictionary:v4];
    }
  }

  return a1;
}

uint64_t sub_100408E18(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = sub_10023E604(result, @"update_type");
    if (result != 1)
    {
      return sub_10023E604(v1, @"automatic_type") != 0;
    }
  }

  return result;
}

uint64_t sub_100408E6C(uint64_t result)
{
  if (result)
  {
    return sub_10023E604(result, @"update_type");
  }

  return result;
}

BOOL sub_100408E80(_BOOL8 result)
{
  if (result)
  {
    return sub_10023E604(result, @"update_type") != 0;
  }

  return result;
}

void *sub_100408EB0(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[5];
    if (!v3)
    {
      v4 = [[_TtC9appstored6LogKey alloc] initWithAppInstallMemoryEntity:a1];
      v5 = v2[5];
      v2[5] = v4;

      v3 = v2[5];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void *sub_100408F24(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10023E0F8(a1, @"policy");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = sub_1003B65C4([AppInstallPolicy alloc], v1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100408FB4(uint64_t a1, id *a2)
{
  if (a1)
  {
    if (a2)
    {
      a2 = [a2[1] copy];
    }

    v3 = a2;
    sub_10023E000(a1, a2, @"policy");
  }
}

void sub_10040901C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithInteger:a2];
    sub_10023E000(a1, v3, @"automatic_type");
  }
}

id sub_10040908C(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1004090C4(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E644(a1, @"bundle_name");
    v1 = vars8;
  }

  return a1;
}

id sub_1004090FC(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E72C(a1, @"bundle_url");
    v1 = vars8;
  }

  return a1;
}

id sub_100409134(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E6B8(a1, @"external_id");
    v1 = vars8;
  }

  return a1;
}

id sub_10040916C(void *a1)
{
  if (a1)
  {
    a1 = sub_10023E51C(a1, @"item_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1004091A4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_10023E51C(a1, @"priority");
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100409200(uint64_t result)
{
  if (result)
  {
    return sub_10023E604(result, @"source_type");
  }

  return result;
}

id sub_100409214(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = sub_10023E0F8(v10, @"blocked");
          v12 = [v11 BOOLValue];

          if ((v12 & 1) == 0)
          {
            v13 = sub_10023E604(v10, @"package_type");
            v14 = v10;
            if (v13 == 1)
            {

              goto LABEL_16;
            }

            v7 = v14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v7 = 0;
    }

    v7 = v7;
    v14 = v7;
LABEL_16:

    v3 = v16;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

AppPackage *sub_1004093BC(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = a2;
    v7 = sub_10024B054(AppPackageEntity, [a1 databaseID], v6);

    if (v7)
    {
      v8 = [(SQLiteMemoryEntity *)[AppPackage alloc] initWithDatabaseEntity:v7 properties:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

_TtC9appstored17EvaluatorDownload *sub_100409474(_TtC9appstored17EvaluatorDownload *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10023E644(a1, @"client_id");
    v5 = sub_10023E51C(v3, @"bytes_total");
    v6 = v5;
    if (v5)
    {
      v7 = [v5 unsignedLongLongValue];
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_10023E51C(v3, @"initial_odr_size");
    v9 = v8;
    if (v8)
    {
      v7 = &v7[[v8 unsignedLongLongValue]];
    }

    v10 = sub_10023E7A0(v3, @"background_asset_metadata");
    v11 = v10;
    if (v10)
    {
      v7 = &v7[sub_1001C08FC(v10)];
    }

    v12 = sub_100408E18(a1);
    v13 = sub_100408EB0(a1);
    a1 = [[_TtC9appstored17EvaluatorDownload alloc] initWithBytes:v7 isAutomatic:v12 isRemaining:0 isUpdate:0 name:0 clientID:v4 logKey:v13];
  }

  return a1;
}

uint64_t sub_1004095D8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (sub_10023E604(result, @"source_type"))
    {
      return 0;
    }

    else if (sub_10023E604(v1, @"automatic_type") == 1)
    {
      return 2;
    }

    else
    {
      v2 = sub_10023E604(v1, @"update_type");
      if (v2)
      {
        if (v2 == 1)
        {
          return 3;
        }

        else
        {
          return 6;
        }
      }

      else if (sub_10023E604(v1, @"restore_type"))
      {
        return 9;
      }

      else if (sub_10023E4DC(v1, @"redownload"))
      {
        return 8;
      }

      else
      {
        return 4;
      }
    }
  }

  return result;
}

id sub_10040969C(void *a1, void *a2)
{
  if (a1)
  {
    v10 = 0;
    v4 = sub_10023E0F8(a1, @"store_metadata");
    if (!v4 || (sub_1003E2E80(MIStoreMetadata, v4, &v10), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = sub_100408EB0(a1);
        v9 = [v4 length];
        *buf = 138412802;
        v12 = v8;
        v13 = 2048;
        v14 = v9;
        v15 = 2114;
        v16 = v10;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "[%@] Store metadata (%{iec-bytes}ld) could not be decoded with error: %{public}@", buf, 0x20u);
      }

      if (v4)
      {
        [v4 length];
      }

      if (a2)
      {
        ASDErrorWithUnderlyingErrorAndDescription();
        *a2 = v5 = 0;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10040998C(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 48, 1);
  }

  return result;
}

BOOL sub_100409D10(uint64_t a1, void *a2)
{
  [a2 insertApp:*(a1 + 32)];
  if (*(a1 + 32))
  {
    return 1;
  }

  v4 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = sub_100256C00([*(a1 + 32) mode]);
    v6 = *(a1 + 40);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to persist %{public}@ for %{public}@", &v7, 0x16u);
  }

  return *(a1 + 32) != 0;
}

uint64_t sub_10040A08C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10040A0A4(uint64_t a1, void *a2)
{
  v3 = [a2 appForBundleID:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

id sub_10040A0F4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(*(*(a1 + 40) + 8) + 40);

    return [v3 _showUninstallAlertForApp:v5 bundleID:v4];
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100256C00([*(*(*(a1 + 40) + 8) + 40) mode]);
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping uninstall alert for %{public}@ for %{public}@", &v10, 0x16u);
    }

    return [*(a1 + 48) _cleanupAfterUninstallingBundleID:*(a1 + 32)];
  }
}

void sub_10040A4C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138543362;
    v12 = v5;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "System alert task did finish with result: %{public}@", &v11, 0xCu);
  }

  if (!v5 || v6)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_100256C00([*(a1 + 32) mode]);
      v10 = *(a1 + 40);
      v11 = 138543874;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to show uninstall %{public}@ alert for %{public}@: %{public}@", &v11, 0x20u);
    }
  }

  [*(a1 + 48) _cleanupAfterUninstallingBundleID:*(a1 + 40)];
}

id sub_10040A7B8(uint64_t a1, void *a2)
{
  v3 = [a2 removeAppForBundleID:*(a1 + 32)];
  if ((v3 & 1) == 0)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543362;
      v8 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to remove persisted record for %{public}@", &v7, 0xCu);
    }
  }

  return v3;
}

void sub_10040AB30(uint64_t a1, void *a2)
{
  v3 = [a2 BOOLForKey:@"storekit-external-purchases-app-delete-alert"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
    sub_1003D5F5C(AppDefaultsManager, v5);
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 67240192;
      v10 = v5;
      v7 = "Got bag value for showing app delete alert: %{public}d";
LABEL_7:
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, v7, &v9, 8u);
    }
  }

  else
  {
    v8 = sub_1003D5F08();
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 67240192;
      v10 = v8;
      v7 = "Failed to check bag for showing app delete alert, will defaut to %{public}d";
      goto LABEL_7;
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

AppInstall *sub_10040AC84(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_opt_self();
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 persistentID];
  v7 = v6;
  if (v6)
  {
    sub_100232CA4(NSUUID, [v6 unsignedLongLongValue]);
  }

  else
  {
    +[NSUUID UUID];
  }
  v8 = ;
  [v5 setObject:v8 forKeyedSubscript:@"external_id"];

  [v5 setObject:@"LGY" forKeyedSubscript:@"log_code"];
  v9 = [v4 bundleID];
  [v5 setObject:v9 forKeyedSubscript:@"bundle_id"];

  v10 = [v4 cancelDownloadURL];
  [v5 setObject:v10 forKeyedSubscript:@"cancel_download_url"];

  v11 = [v4 clientID];
  [v5 setObject:v11 forKeyedSubscript:@"client_id"];

  v12 = [v4 itemID];
  [v5 setObject:v12 forKeyedSubscript:@"item_id"];

  v13 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 is32BitOnly]);
  [v5 setObject:v13 forKeyedSubscript:@"supports_32bit_only"];

  v14 = [v4 storeAccountName];
  [v5 setObject:v14 forKeyedSubscript:@"apple_id"];

  v15 = [v4 storeAccountID];
  [v5 setObject:v15 forKeyedSubscript:@"account_id"];

  v16 = [v4 storeTransactionID];
  [v5 setObject:v16 forKeyedSubscript:@"transaction_id"];

  v17 = [v4 betaExternalVersionIdentifier];
  if (v17)
  {
    v18 = [v4 betaExternalVersionIdentifier];
    v19 = &off_100548988;
    v20 = &off_100548970;
  }

  else
  {
    v18 = [v4 softwareVersionExternalIdentifier];
    v19 = &off_1005489B8;
    v20 = &off_1005489A0;
  }

  [v5 setObject:v18 forKeyedSubscript:@"evid"];

  [v5 setObject:v20 forKeyedSubscript:@"source_type"];
  [v5 setObject:v19 forKeyedSubscript:@"metrics_install_type"];
  v21 = [v4 title];
  [v5 setObject:v21 forKeyedSubscript:@"bundle_name"];

  v22 = [v4 bundleVersion];
  [v5 setObject:v22 forKeyedSubscript:@"bundle_version"];

  v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 cancelIfDuplicate]);
  [v5 setObject:v23 forKeyedSubscript:@"cancel_if_duplicate"];

  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 hasMessagesExtension]);
  [v5 setObject:v24 forKeyedSubscript:@"has_messages_extension"];

  v25 = [v4 messagesArtworkURL];
  v26 = sub_10026699C(v25);
  [v5 setObject:v26 forKeyedSubscript:@"messages_artwork_url"];

  v27 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 launchProhibited]);
  [v5 setObject:v27 forKeyedSubscript:@"launch_prohibited"];

  v28 = [v4 appReceiptData];
  [v5 setObject:v28 forKeyedSubscript:@"receipt"];

  v29 = [v4 storefront];
  [v5 setObject:v29 forKeyedSubscript:@"storefront"];

  v30 = [v4 storeCohort];
  [v5 setObject:v30 forKeyedSubscript:@"store_cohort"];

  v31 = [v4 thumbnailURL];
  v32 = sub_10026699C(v31);
  [v5 setObject:v32 forKeyedSubscript:@"artwork_url"];

  v33 = sub_100399778(MIStoreMetadata, v4);
  v34 = [v4 storeAccountID];

  if (v34)
  {
    v35 = +[ACAccountStore ams_sharedAccountStore];
    v36 = [v4 storeAccountID];
    v37 = [v35 ams_iTunesAccountWithDSID:v36];
  }

  else
  {
    v38 = [v4 storeAccountName];

    if (!v38)
    {
      goto LABEL_13;
    }

    v35 = +[ACAccountStore ams_sharedAccountStore];
    v36 = [v4 storeAccountName];
    v37 = [v35 ams_iTunesAccountWithUsername:v36];
  }

  v39 = v37;

  if (v39)
  {
    sub_1003E38F0(v33, v39);
  }

LABEL_13:
  v51 = 0;
  v40 = sub_1003E364C(v33, &v51);
  v41 = v51;
  if (v40)
  {
    [v5 setObject:v40 forKeyedSubscript:@"store_metadata"];
    if (v41)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v44 = ASDErrorWithUnderlyingErrorAndDescription();

    v41 = v44;
    if (v44)
    {
LABEL_15:
      if (a3)
      {
        v42 = v41;
        v43 = 0;
        *a3 = v41;
      }

      else
      {
        v43 = 0;
      }

      goto LABEL_22;
    }
  }

  v43 = [(SQLiteMemoryEntity *)[AppInstall alloc] initWithPropertyValues:v5];
  v45 = [v4 assets];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10040B37C;
  v49[3] = &unk_1005288A8;
  v50 = v4;
  v47 = sub_10036FDEC(v45, v49);
  if (v43)
  {
    objc_setProperty_atomic_copy(v43, v46, v47, 48);
  }

LABEL_22:

  return v43;
}

id sub_10040B37C(uint64_t a1, void *a2)
{
  v3 = sub_1002C4C3C(AppPackage, a2);
  v4 = sub_10023E644(v3, @"variant_id");
  if (!v4)
  {
    v5 = [*(a1 + 32) variantID];

    if (v5)
    {
      v6 = [*(a1 + 32) variantID];
      sub_10023E000(v3, v6, @"variant_id");
    }
  }

  return v3;
}

uint64_t sub_10040B6F8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v47 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v47 & 0x7F) << v5;
        if ((v47 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 4)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v21 = PBReaderReadString();
            v22 = 32;
          }

          else
          {
            if (v13 != 4)
            {
              goto LABEL_71;
            }

            v21 = PBReaderReadString();
            v22 = 40;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              v49 = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v49 & 0x7F) << v23;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_76;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_76:
            v45 = 8;
            goto LABEL_83;
          }

          if (v13 != 2)
          {
            goto LABEL_71;
          }

          v21 = PBReaderReadString();
          v22 = 24;
        }

        goto LABEL_70;
      }

      if (v13 <= 6)
      {
        break;
      }

      if (v13 == 7)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 72) |= 8u;
        while (1)
        {
          v50 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v50 & 0x7F) << v30;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            LOBYTE(v36) = 0;
            goto LABEL_78;
          }
        }

        v36 = (v32 != 0) & ~[a2 hasError];
LABEL_78:
        *(a1 + 68) = v36;
        goto LABEL_88;
      }

      if (v13 == 8)
      {
        v21 = PBReaderReadString();
        v22 = 48;
LABEL_70:
        v43 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_88;
      }

      if (v13 != 9)
      {
        goto LABEL_71;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 72) |= 4u;
      while (1)
      {
        v51 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v51 & 0x7F) << v14;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_87;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_87:
      *(a1 + 64) = v20;
LABEL_88:
      v46 = [a2 position];
      if (v46 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 5)
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      *(a1 + 72) |= 2u;
      while (1)
      {
        v48 = 0;
        v40 = [a2 position] + 1;
        if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v39 |= (v48 & 0x7F) << v37;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        v37 += 7;
        v11 = v38++ >= 9;
        if (v11)
        {
          v29 = 0;
          goto LABEL_82;
        }
      }

      if ([a2 hasError])
      {
        v29 = 0;
      }

      else
      {
        v29 = v39;
      }

LABEL_82:
      v45 = 16;
LABEL_83:
      *(a1 + v45) = v29;
      goto LABEL_88;
    }

    if (v13 != 6)
    {
LABEL_71:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_88;
    }

    v21 = PBReaderReadString();
    v22 = 56;
    goto LABEL_70;
  }

  return [a2 hasError] ^ 1;
}

void sub_10040BEBC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_10040BED4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_10040BEEC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

void sub_10040BF04(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

uint64_t sub_10040C464(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 applicationExtensionRecords];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v12;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) extensionPointRecord];
        v8 = [v7 name];
        v9 = [v8 isEqualToString:@"com.apple.message-payload-provider"];

        if (v9)
        {
          v4 = 1;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10040C5B4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 iTunesMetadata];
  v2 = [v1 distributorInfo];

  v3 = [v2 distributorID];

  if (v3)
  {
    v3 = [v2 distributorIsFirstPartyApple] ^ 1;
  }

  return v3;
}

id sub_10040C624(id result)
{
  if (result)
  {
    v1 = [result entitlements];
    v2 = [v1 objectForKey:@"com.apple.developer.carplay-automaker" ofClass:objc_opt_class()];

    v3 = [v2 BOOLValue];
    return v3;
  }

  return result;
}

id sub_10040C694(id result)
{
  if (result)
  {
    return [ASDUpdatesService isAutomaticUpdateAuthorizationRequiredWhenEnabledForAppWithRecord:result];
  }

  return result;
}

void *sub_10040C6AC(void *result)
{
  if (result)
  {
    v1 = [result executableURL];
    v2 = [v1 path];

    v3 = sub_100346FD8(FairPlay, v2);
    return v3;
  }

  return result;
}

id sub_10040C708(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() enumeratorWithOptions:a3];
  v5 = v4;
  if (a2 <= 2)
  {
    [v4 setFilter:*(&off_100528948 + a2)];
  }

  return v5;
}

BOOL sub_10040C770(id a1, LSApplicationRecord *a2)
{
  v2 = [(LSApplicationRecord *)a2 typeForInstallMachinery];
  v3 = [v2 isEqualToString:LSUserApplicationType];

  return v3;
}

BOOL sub_10040C7B8(id a1, LSApplicationRecord *a2)
{
  v2 = [(LSApplicationRecord *)a2 typeForInstallMachinery];
  v3 = [v2 isEqualToString:LSInternalApplicationType];

  return v3;
}

BOOL sub_10040C800(id a1, LSApplicationRecord *a2)
{
  v2 = [(LSApplicationRecord *)a2 typeForInstallMachinery];
  v3 = [v2 isEqualToString:LSSystemApplicationType];

  return v3;
}

id sub_10040C848(void *a1, uint64_t a2)
{
  if (a1)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [a1 applicationExtensionRecords];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 extensionPointRecord];
          v10 = [v9 name];

          if (a2 == 1 && ([v10 isEqualToString:@"com.apple.message-payload-provider"] & 1) != 0)
          {
            v11 = v8;

            goto LABEL_13;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id sub_10040C9BC(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 URL];
    v13 = 0;
    v12 = 0;
    v3 = [v2 getResourceValue:&v13 forKey:NSURLAttributeModificationDateKey error:&v12];
    v4 = v13;
    v5 = v12;
    v6 = ASDLogHandleForCategory();
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v11 = [v1 bundleIdentifier];
        *buf = 138412546;
        v15 = v11;
        v16 = 2112;
        v17 = v4;
        _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[%@] Returning the last modified date: %@", buf, 0x16u);
      }

      v8 = v4;
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = [v1 bundleIdentifier];
        *buf = 138543618;
        v15 = v9;
        v16 = 2114;
        v17 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] Unable to find modified date due to error: %{public}@", buf, 0x16u);
      }

      v8 = [v1 registrationDate];
    }

    v1 = v8;
  }

  return v1;
}

id sub_10040CB88(id a1)
{
  v1 = a1;
  if (a1)
  {
    if (([a1 isPlaceholder] & 1) == 0 && (objc_msgSend(v1, "applicationHasMIDBasedSINF") & 1) != 0 || (objc_msgSend(v1, "iTunesMetadata"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isDeviceBasedVPP"), v2, v3))
    {
      v4 = sub_100267DA0();
LABEL_12:
      v1 = v4;
      goto LABEL_13;
    }

    if (([v1 isPlaceholder] & 1) == 0 && (objc_msgSend(v1, "isProfileValidated") & 1) != 0 || (objc_msgSend(v1, "isAppStoreVendable") & 1) == 0)
    {
      v4 = sub_100267CFC();
      goto LABEL_12;
    }

    if ([v1 applicationDownloaderDSID])
    {
      v5 = [v1 applicationDownloaderDSID];
LABEL_18:
      v7 = [NSNumber numberWithUnsignedLongLong:v5];
      goto LABEL_19;
    }

    if ([v1 applicationDSID])
    {
      v5 = [v1 applicationDSID];
      goto LABEL_18;
    }

    v20 = sub_10040CF04(v1);
    v21 = [v20 altDSID];
    if (v21)
    {
      v22 = +[ACAccountStore ams_sharedAccountStore];
      v23 = [v22 ams_iTunesAccountWithAltDSID:v21];

      v24 = [v23 ams_DSID];
      v25 = sub_10040D0A4(v24);

      if (v25)
      {
        v7 = [v23 ams_DSID];

        if (v7)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }
    }

    v26 = [v20 downloaderID];
    v27 = sub_10040D0A4(v26);

    if (v27)
    {
      v28 = [v20 downloaderID];
    }

    else
    {
      v29 = [v20 purchaserID];
      v30 = sub_10040D0A4(v29);

      if (!v30)
      {
        v7 = 0;
        goto LABEL_41;
      }

      v28 = [v20 purchaserID];
    }

    v7 = v28;
LABEL_41:

LABEL_19:
    v8 = +[ACAccountStore ams_sharedAccountStore];
    v9 = [v8 ams_activeiTunesAccount];

    if (!v7)
    {
      v1 = sub_100267E44();
LABEL_29:

      goto LABEL_13;
    }

    v10 = [v9 ams_DSID];
    v11 = [v7 isEqual:v10];

    if (v11)
    {
      v12 = [v9 ams_DSID];
      v13 = sub_100267DE0(PurchaseOwner, v12);
    }

    else
    {
      v14 = sub_100405768();
      v12 = sub_100405CAC(v14);

      if ([v12 containsObject:v7])
      {
        v15 = [v1 iTunesMetadata];
        v16 = [v15 storeFront];
        v17 = [v9 ams_storefront];
        v18 = [v17 integerValue];

        if (v16 == v18)
        {
          v19 = [v9 ams_DSID];
          v1 = sub_100267D3C(PurchaseOwner, v19);

LABEL_28:
          goto LABEL_29;
        }
      }

      v13 = sub_100267C18(PurchaseOwner, v7);
    }

    v1 = v13;
    goto LABEL_28;
  }

LABEL_13:

  return v1;
}

id sub_10040CF04(void *a1)
{
  if (a1)
  {
    v9 = 0;
    v2 = sub_100407160(AppMetadataLoader, a1, &v9);
    v3 = v9;
    if (v3)
    {
      v4 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v7 = [a1 bundleIdentifier];
      *buf = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v3;
      v8 = "Error loading metadata for %{public}@: %{public}@";
    }

    else
    {
      v6 = [v2 protectedMetadata];
      if (!v6)
      {
        goto LABEL_5;
      }

      if (v2)
      {
        goto LABEL_5;
      }

      v4 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
LABEL_4:

LABEL_5:
        goto LABEL_6;
      }

      v7 = [a1 bundleIdentifier];
      *buf = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = 0;
      v8 = "Error decrypting protected metadata for %{public}@: %{public}@";
    }

    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v8, buf, 0x16u);

    goto LABEL_4;
  }

  v2 = 0;
LABEL_6:

  return v2;
}

uint64_t sub_10040D0A4(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 isEqualToNumber:&off_1005489D0] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String_optional __swiftcall URLRequest.value(forHTTPHeaderField:)(Swift::String forHTTPHeaderField)
{
  v1 = URLRequest.value(forHTTPHeaderField:)(forHTTPHeaderField._countAndFlagsBits, forHTTPHeaderField._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t dispatch thunk of Bag.subscript.getter()
{
  return dispatch thunk of Bag.subscript.getter();
}

{
  return dispatch thunk of Bag.subscript.getter();
}

{
  return dispatch thunk of Bag.subscript.getter();
}

{
  return dispatch thunk of Bag.subscript.getter();
}

{
  return dispatch thunk of Bag.subscript.getter();
}

{
  return dispatch thunk of Bag.subscript.getter();
}

{
  return dispatch thunk of Bag.subscript.getter();
}

{
  return dispatch thunk of Bag.subscript.getter();
}

uint64_t XPCDictionary.subscript.setter()
{
  return XPCDictionary.subscript.setter();
}

{
  return XPCDictionary.subscript.setter();
}

{
  return XPCDictionary.subscript.setter();
}

Swift::String __swiftcall Character.lowercased()()
{
  v0 = Character.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = Substring.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}