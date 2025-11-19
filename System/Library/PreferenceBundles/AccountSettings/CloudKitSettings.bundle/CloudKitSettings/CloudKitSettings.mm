id sub_14D8(id a1, CKSettingsAppNameImage *a2)
{
  v2 = a2;
  v3 = [(CKSettingsAppNameImage *)v2 appDisplayName];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:0 cell:-1 edit:0];

  v5 = [(CKSettingsAppNameImage *)v2 appImage];

  if (v5)
  {
    v6 = [(CKSettingsAppNameImage *)v2 appImage];
    [v4 setProperty:v6 forKey:PSIconImageKey];
  }

  [v4 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

  return v4;
}

id sub_16B8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = CKLocalizedStringFromTableInBundleVA();

  return v6;
}

void sub_312C(id a1)
{
  qword_197F8 = [NSSet setWithObjects:@"pages", @"numbers", @"keynote", @"iclouddrive", @"notes", @"reminders", @"photos", @"photos_links", @"photos_sharing", @"safari-tab-groups", @"freeform", @"share", 0];

  _objc_release_x1();
}

void sub_59F8(id a1)
{
  v1 = qword_19808;
  qword_19808 = &off_16340;

  v10[0] = @"com.apple.Notes";
  v2 = [NSSet setWithObject:@"com.apple.notes.folder"];
  v11[0] = v2;
  v10[1] = @"photos";
  v9[0] = CKPhotosSharedLibraryShareType;
  v9[1] = CKPhotosEPPMomentShareType;
  v9[2] = CKPhotosSharedCollectionsShareType;
  v3 = [NSArray arrayWithObjects:v9 count:3];
  v4 = [NSSet setWithObjects:v3, 0];
  v11[1] = v4;
  v10[2] = @"freeform";
  v5 = [NSSet setWithObject:CKFreeformShareType];
  v11[2] = v5;
  v10[3] = @"safari";
  v6 = [NSSet setWithObject:CKSafariTabGroupsShareType];
  v11[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
  v8 = qword_19810;
  qword_19810 = v7;
}

uint64_t sub_6170(uint64_t a1, int a2)
{
  if (a2)
  {
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }

    return (*(result + 16))();
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_6CC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = v5;
      v8 = [v6 primaryAppNameImage];
      v9 = [v8 appDisplayName];
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Error setting permission for app %{public}@: %@", &v16, 0x16u);
    }
  }

  else
  {
    v10 = [*(a1 + 40) BOOLValue];
    v11 = *(a1 + 48);
    v12 = [v11 enabledPermissions];
    if (v10)
    {
      v13 = v12 | 1;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    }

    [v11 setEnabledPermissions:v13];
  }

  dispatch_group_leave(*(a1 + 56));
  v14 = *(a1 + 64);
  v15 = objc_opt_self();
}

void sub_6E40(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Failed to terminate process %@: %@", &v8, 0x16u);
    }
  }
}

void sub_7698(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_77B8;
  v12[3] = &unk_14678;
  v12[4] = *(a1 + 32);
  v4 = [v3 CKFlatMap:v12];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7888;
  v8[3] = &unk_14730;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v5;
  v11 = v6;
  v7 = v3;
  [CKSettingsAppNameImage lookUpAppNameImagesForApplicationBundleIDs:v4 completionHandler:v8];
}

id sub_77B8(uint64_t a1, void *a2)
{
  v3 = [a2 applicationBundleIDs];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_7864;
  v6[3] = &unk_14650;
  v6[4] = *(a1 + 32);
  v4 = [v3 CKFilter:v6];

  return v4;
}

void sub_7888(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 applicationBundleIDs];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_7B38;
        v19[3] = &unk_146A0;
        v19[4] = *(a1 + 40);
        v20 = v3;
        v11 = [v10 CKCompactMap:v19];

        v12 = [[CKSettingsDisplayableAppPermissionGroup alloc] initWithApplicationPermissionGroup:v9 appNameImages:v11];
        [v4 addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  [v4 sortUsingComparator:&stru_146E0];
  v13 = *(a1 + 40);
  objc_sync_enter(v13);
  v14 = *(a1 + 40);
  v15 = *(v14 + 160);
  *(v14 + 160) = v4;
  v16 = v4;

  *(*(a1 + 40) + 137) = 1;
  *(*(a1 + 40) + 136) = 0;
  objc_sync_exit(v13);

  dispatch_semaphore_signal(*(a1 + 48));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7C40;
  block[3] = &unk_14708;
  block[4] = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_7B38(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _isApplicationHiddenFromSettings:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) objectForKeyedSubscript:v3];
  }

  return v4;
}

int64_t sub_7BA4(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 primaryAppNameImage];
  v6 = [v5 appDisplayName];
  v7 = [v4 primaryAppNameImage];

  v8 = [v7 appDisplayName];
  v9 = [v6 compare:v8];

  return v9;
}

_BYTE *sub_7C40(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[137] == 1)
  {
    return [result reloadSpecifiers];
  }

  return result;
}

void sub_7DC4(id a1)
{
  qword_19818 = objc_opt_new();

  _objc_release_x1();
}

void sub_7F94(id a1)
{
  qword_19828 = objc_opt_new();

  _objc_release_x1();
}

void sub_8670(uint64_t a1)
{
  v2 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = objc_opt_new();
        v9 = [*(a1 + 48) _cachedDisplayNameForBundleID:v7];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        [v8 setAppDisplayName:v11];
        v12 = [*(a1 + 48) _cachedImageForBundleID:v7];
        [v8 setAppImage:v12];

        [v2 setObject:v8 forKeyedSubscript:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v2, 0);
  }
}

void sub_8810(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v61 = v5;
      _os_log_error_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Error performing AMS lookup: %@", buf, 0xCu);
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = [v4 allItems];
  v7 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v55;
    do
    {
      v10 = 0;
      v47 = v8;
      do
      {
        if (*v55 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v54 + 1) + 8 * v10);
        v12 = [v11 bundleIdentifier];
        if (v12)
        {
          v13 = [v11 displayName];

          if (v13)
          {
            v14 = *(a1 + 48);
            v15 = [v11 displayName];
            v16 = [v11 bundleIdentifier];
            [v14 _setCachedDisplayName:v15 forBundleID:v16];

            v17 = *(a1 + 32);
            v18 = [v11 bundleIdentifier];
            [v17 removeObject:v18];
          }

          v19 = +[UITraitCollection currentTraitCollection];
          [v19 displayScale];
          v21 = v20;

          if (v21 <= 1.0)
          {
            v22 = 29;
          }

          else
          {
            v22 = 58;
          }

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v23 = [v11 artwork];
          v24 = [v23 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (v24)
          {
            v25 = v9;
            v26 = *v51;
            v27 = v22;
            v28 = v22;
            while (2)
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v51 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v30 = *(*(&v50 + 1) + 8 * i);
                [v30 width];
                if (v31 == v28)
                {
                  v24 = v30;
                  goto LABEL_27;
                }
              }

              v24 = [v23 countByEnumeratingWithState:&v50 objects:v58 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }

LABEL_27:
            v9 = v25;
            v8 = v47;
          }

          else
          {
            v27 = v22;
          }

          v32 = [v11 artwork];
          v33 = [v32 count];

          if (v24)
          {
            v34 = 1;
          }

          else
          {
            v34 = v33 == 0;
          }

          if (!v34)
          {
            if (ck_log_initialization_predicate != -1)
            {
              dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
            }

            v35 = ck_log_facility_ck;
            if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
            {
              v41 = v35;
              v42 = [v11 artwork];
              *buf = 138412290;
              v61 = v42;
              _os_log_error_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "Couldn't find expected sized image in artwork %@", buf, 0xCu);
            }

            v36 = [v11 artwork];
            v24 = [v36 lastObject];
          }

          if (v24)
          {
            v37 = [v24 URLWithHeight:v27 width:v27 cropStyle:0 format:0];
            v38 = [NSData dataWithContentsOfURL:v37];

            v39 = +[UITraitCollection currentTraitCollection];
            [v39 displayScale];
            v40 = [UIImage imageWithData:v38 scale:?];

            if (v40)
            {
              [*(a1 + 48) _setCachedImage:v40 forBundleID:v12];
            }
          }
        }

        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v54 objects:v59 count:16];
    }

    while (v8);
  }

  if ([*(a1 + 32) count])
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v43 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v44 = *(a1 + 32);
      *buf = 138543362;
      v61 = v44;
      _os_log_error_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "Couldn't find local or remote resources for app bundles %{public}@", buf, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

int64_t sub_8EBC(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 appDisplayName];
  v6 = [v4 appDisplayName];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_9A10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_9A34(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_9BCC;
    block[3] = &unk_14708;
    v5 = &v13;
    v13 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
    v6 = [WeakRetained shareURL];
    v7 = [CKVettingAlerts alertContentForShareMetadataErrorWithURL:v6 email:0];

    [CKVettingAlerts showFailureAlert:v7 isSourceICS:0];
  }

  else
  {
    v8 = [*(a1 + 32) participantID];
    v9 = [*(a1 + 32) address];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_9BD4;
    v10[3] = &unk_14858;
    v5 = v11;
    v11[0] = *(a1 + 32);
    v11[1] = WeakRetained;
    [WeakRetained _initiateVettingForParticipantID:v8 address:v9 andThen:v10];
  }
}

void sub_9BD4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9C88;
  block[3] = &unk_14830;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_9C88(id *a1)
{
  [a1[4] clearSpinner];
  if ([a1[5] isCKVettedToSelfError])
  {
    v3 = a1[5];
    v2 = a1[6];
    v4 = [v2 sharedItem];
    [v2 _showInitiateFailureAlert:v3 shareTitle:v4 cell:a1[4]];

    v5 = [a1[6] navigationController];
    [v5 dismissViewControllerAnimated:1 completion:0];

    v6 = +[LSApplicationWorkspace defaultWorkspace];
    v7 = [a1[6] shareURL];
    v19 = 0;
    v8 = [v6 openSensitiveURL:v7 withOptions:0 error:&v19];
    v9 = v19;

    if ((v8 & 1) == 0)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v10 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v9;
        _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Failed open share URL: %@", buf, 0xCu);
      }

      v11 = a1[6];
      v12 = [v11 sharedItem];
      [v11 _showInitiateFailureAlert:v9 shareTitle:v12 cell:a1[4]];
    }
  }

  else
  {
    v13 = a1[5];
    if (v13)
    {
      if ([v13 isCKAuthenticationUserCancelled])
      {
        return;
      }

      v15 = a1[5];
      v14 = a1[6];
      v16 = [v14 sharedItem];
      v17 = a1[4];
      v18 = v16;
      [v14 _showInitiateFailureAlert:v15 shareTitle:? cell:?];
    }

    else
    {
      v18 = [a1[6] navigationController];
      [v18 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_A22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_A258(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShareMetadata:v4];
}

void sub_A528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_A540(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_A568(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  (*(*(a1 + 32) + 16))();
}