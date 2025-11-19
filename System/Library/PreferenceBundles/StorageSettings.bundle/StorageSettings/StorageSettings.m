id STStorageLocStr(void *a1)
{
  v1 = qword_39FA8;
  v2 = a1;
  if (v1 != -1)
  {
    sub_1CA28();
  }

  v3 = [qword_39FA0 localizedStringForKey:v2 value:v2 table:0];

  return v3;
}

void sub_1834(id a1)
{
  qword_39FA0 = [NSBundle bundleForClass:NSClassFromString(@"STStorageController")];

  _objc_release_x1();
}

int64_t sub_216C(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = PSValueKey;
  v7 = [(PSSpecifier *)v4 propertyForKey:PSValueKey];
  v8 = [v7 longLongValue];

  v9 = [(PSSpecifier *)v5 propertyForKey:v6];
  v10 = [v9 longLongValue];

  if (v8 <= v10)
  {
    if (v10 <= v8)
    {
      v12 = STStorageAppKey;
      v13 = [(PSSpecifier *)v4 propertyForKey:STStorageAppKey];
      v14 = [(PSSpecifier *)v5 propertyForKey:v12];
      v15 = [v13 name];
      v16 = [v14 name];
      v17 = v16;
      if (v15)
      {
        v18 = v16 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        v11 = 0;
      }

      else
      {
        v11 = [v15 localizedCaseInsensitiveCompare:v16];
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

void sub_22E4(id a1)
{
  qword_39FB0 = STStorageLocStr(@"LAST_OPENED_FMT");

  _objc_release_x1();
}

void sub_2A8C(uint64_t a1)
{
  v2 = [*(a1 + 32) artwork];
  v3 = v2;
  if (v2 && ([v2 imageWithSize:{56.0, 56.0}], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) mediaType];
    v7 = @"book";
    if ((v6 & 4) == 0)
    {
      v7 = @"music";
    }

    v8 = @"podcasts";
    if ((v6 & 0xA) != 0)
    {
      v7 = @"podcasts";
    }

    if (!v6)
    {
      v7 = 0;
    }

    if ((v6 & 0x1400) == 0)
    {
      v8 = @"film";
    }

    if ((v6 & 0xFF00) != 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v5 = +[UIColor systemGray3Color];
    v4 = [UIImage _systemImageNamed:v9];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2C00;
  block[3] = &unk_2CA10;
  block[4] = *(a1 + 40);
  v13 = v5;
  v14 = v4;
  v10 = v4;
  v11 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_2C00(uint64_t a1)
{
  [*(a1 + 32) setTintColor:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setIcon:v2];
}

void sub_2C40(id a1)
{
  qword_39FC0 = STStorageLocStr(@"LAST_ACCESSED_FMT");

  _objc_release_x1();
}

void sub_3A30(id a1)
{
  v1 = NSStringFromSelector("documentSize");
  v2 = [NSSortDescriptor sortDescriptorWithKey:v1 ascending:0];
  v3 = NSStringFromSelector("displayName");
  v4 = [NSSortDescriptor sortDescriptorWithKey:v3 ascending:1 selector:"localizedCaseInsensitiveCompare:", v2];
  v9[1] = v4;
  v5 = NSStringFromSelector("itemIdentifier");
  v6 = [NSSortDescriptor sortDescriptorWithKey:v5 ascending:1];
  v9[2] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:3];
  v8 = qword_39FD8;
  qword_39FD8 = v7;
}

id sub_3EFC(uint64_t a1)
{
  [NSObject cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:"reloadSpecifiers" object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:"reloadSpecifiers" withObject:0 afterDelay:1.0];
}

void sub_467C(uint64_t a1)
{
  v3 = +[FPItemManager defaultManager];
  v2 = [[FPDeleteOperation alloc] initWithItems:*(a1 + 32)];
  [v3 scheduleAction:v2];
}

void sub_4738(id a1)
{
  qword_39FE0 = objc_opt_new();

  _objc_release_x1();
}

id sub_527C(uint64_t a1)
{
  v17 = *(a1 + 32);
  v16[0] = @"launch_time_start_calculating";
  v16[1] = @"launch_time_end_calculating";
  v2 = *(a1 + 48);
  v16[2] = @"device_capacity";
  v16[3] = @"disk_used_space";
  v19 = *(a1 + 56);
  v16[4] = @"disk_used_space_percent";
  v16[5] = @"disk_purgeable_space";
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v18 = v2;
  v20 = v3;
  v21 = v4;
  v16[6] = @"disk_purgeable_space_percent";
  v16[7] = @"others_size";
  v22 = *(a1 + 88);
  v16[8] = @"others_size_percent";
  v16[9] = @"media_size";
  v23 = *(a1 + 104);
  v5 = *(a1 + 112);
  v16[10] = @"media_size_percent";
  v16[11] = @"photos_size";
  v16[12] = @"photos_size_percent";
  v16[13] = @"apps_size";
  v6 = *(a1 + 136);
  v25 = *(a1 + 128);
  v26 = v6;
  v16[14] = @"apps_size_percent";
  v16[15] = @"messages_size";
  v7 = *(a1 + 152);
  v27 = *(a1 + 144);
  v28 = v7;
  v16[16] = @"messages_size_percent";
  v16[17] = @"mail_size";
  v8 = *(a1 + 168);
  v29 = *(a1 + 160);
  v30 = v8;
  v16[18] = @"mail_size_percent";
  v16[19] = @"podcast_size";
  v9 = *(a1 + 184);
  v31 = *(a1 + 176);
  v32 = v9;
  v16[20] = @"podcast_size_percent";
  v16[21] = @"music_size";
  v10 = *(a1 + 200);
  v33 = *(a1 + 192);
  v34 = v10;
  v16[22] = @"music_size_percent";
  v16[23] = @"icloud_drive_size";
  v11 = *(a1 + 216);
  v35 = *(a1 + 208);
  v36 = v11;
  v37 = *(a1 + 224);
  v24 = v5;
  v16[24] = @"icloud_drive_size_percent";
  v16[25] = @"apps_count";
  v12 = [NSNumber numberWithLongLong:*(a1 + 264)];
  v13 = *(a1 + 232);
  v38 = v12;
  v39 = v13;
  v16[26] = @"photos_count";
  v16[27] = @"podcast_count";
  v40 = *(a1 + 240);
  v16[28] = @"music_count";
  v16[29] = @"disk_usage_state";
  v41 = *(a1 + 256);
  v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:v16 count:30];

  return v14;
}

id sub_55E0(void *a1)
{
  v10[0] = &off_2FEB0;
  v9[0] = @"action_id";
  v9[1] = @"app_type";
  v2 = [NSNumber numberWithInteger:a1[6]];
  v3 = &off_2FE98;
  v4 = a1[5];
  if (a1[4])
  {
    v3 = a1[4];
  }

  v10[1] = v2;
  v10[2] = v3;
  v9[2] = @"detail_action_size";
  v9[3] = @"detail_action_size_percent";
  v5 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v4 deviceSize]);
  v6 = STStorageComputePercentage();
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

id sub_5A40(uint64_t a1)
{
  v5 = *(a1 + 32);
  v4[0] = @"usage_duration";
  v4[1] = @"done_calculating";
  v6 = *(a1 + 48);
  v4[2] = @"device_capacity";
  v4[3] = @"disk_used_space";
  v7 = *(a1 + 56);
  v4[4] = @"disk_used_space_percent";
  v4[5] = @"disk_purgeable_space";
  v1 = *(a1 + 80);
  v8 = *(a1 + 72);
  v9 = v1;
  v4[6] = @"disk_purgeable_space_percent";
  v4[7] = @"others_size";
  v10 = *(a1 + 88);
  v4[8] = @"others_size_percent";
  v4[9] = @"disk_usage_state";
  v11 = *(a1 + 104);
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:v4 count:10];

  return v2;
}

void sub_7A04(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = [a3 userTotal];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = [PSCapacityBarCategory alloc];
    v8 = STNameForCategoryKey();
    v9 = STColorForCategoryKey();
    v10 = [v7 initWithIdentifier:v11 title:v8 color:v9 bytes:v6];

    [*(a1 + 32) addObject:v10];
  }
}

int64_t sub_7AD4(id a1, PSCapacityBarCategory *a2, PSCapacityBarCategory *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(PSCapacityBarCategory *)v4 bytes];
  if (v6 <= [(PSCapacityBarCategory *)v5 bytes])
  {
    v8 = [(PSCapacityBarCategory *)v5 bytes];
    if (v8 <= [(PSCapacityBarCategory *)v4 bytes])
    {
      v9 = [(PSCapacityBarCategory *)v4 title];
      v10 = [(PSCapacityBarCategory *)v5 title];
      v7 = [v9 localizedCaseInsensitiveCompare:v10];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_7BA0(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 identifier];
  v6 = [v5 isEqualToString:STCategoryOtherDataKey];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    [v8 setColor:v7];
  }
}

void sub_7C3C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 152) propertyForKey:PSTableCellKey];
  [v2 refreshCellContentsWithSpecifier:*(*(a1 + 32) + 152)];
}

void sub_8D7C(uint64_t a1)
{
  v2 = [NSMutableArray arrayWithCapacity:16];
  v3 = +[STStoragePluginManager sharedManager];
  v4 = [v3 topTips];

  if ([v4 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v16 = v4;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v21;
      do
      {
        v9 = 0;
        v17 = v7;
        v10 = -v7;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v20 + 1) + 8 * v9);
          if (v10 == v9)
          {
            [v2 addObject:*(*(a1 + 32) + 168)];
          }

          else
          {
            v12 = +[PSSpecifier emptyGroupSpecifier];
            [v2 addObject:v12];
          }

          v13 = [v11 specifier];
          [v2 addObject:v13];

          v14 = [v11 infoSpecifier];
          [v2 addObject:v14];

          v15 = [NSValue valueWithPointer:*(a1 + 32)];
          [v11 setProperty:v15 forKey:@"_stController"];

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v7 = v17 + v6;
        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    v4 = v16;
  }

  [*(a1 + 32) setTipSpecs:{v2, v16}];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9008;
  block[3] = &unk_2CAA0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_9008(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);

  return [v2 updateShowAllButton];
}

void sub_90C0(uint64_t a1)
{
  [*(a1 + 32) updateCategories:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9150;
  block[3] = &unk_2CAA0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_9150(uint64_t a1)
{
  [*(*(a1 + 32) + 216) reloadSpecifiers];
  if (STStorageIsInternalInstall())
  {
    v2 = [*(*(a1 + 32) + 216) apps];
    v3 = [NSMutableArray arrayWithArray:v2];

    [*(*(a1 + 32) + 192) setProperty:v3 forKey:STStorageDetailDataSizeKey];
  }

  v4 = *(a1 + 32);

  return [v4 reloadSpecifiers];
}

id sub_9278(uint64_t a1)
{
  [NSObject cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:"_updateApps:" object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:"_updateApps:" withObject:0 afterDelay:0.5];
}

int64_t sub_A458(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = STStorageAppKey;
  v5 = a3;
  v6 = [(PSSpecifier *)a2 propertyForKey:v4];
  v7 = [(PSSpecifier *)v5 propertyForKey:v4];

  v8 = [v6 name];
  v9 = [v7 name];
  v10 = [v8 localizedCaseInsensitiveCompare:v9];

  return v10;
}

id sub_A50C(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 256), *(a1 + 40));
  v2 = *(a1 + 48);

  return [v2 becomeFirstResponder];
}

int64_t sub_A8CC(id a1, PSSpecifier *a2, PSSpecifier *a3)
{
  v4 = STStorageAppKey;
  v5 = a3;
  v6 = [(PSSpecifier *)a2 propertyForKey:v4];
  v7 = [(PSSpecifier *)v5 propertyForKey:v4];

  v8 = [v6 name];
  v9 = [v7 name];
  v10 = [v8 localizedCaseInsensitiveCompare:v9];

  return v10;
}

void sub_A980(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 256));
  [WeakRetained setSpecifiers:*(a1 + 40)];
}

void sub_AC50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) name];
    v6 = [v3 description];
    [v3 code];
    STLog();
  }

  else
  {
    v5 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_AD44;
    block[3] = &unk_2CAA0;
    block[4] = *(a1 + 40);
    dispatch_after(v5, &_dispatch_main_q, block);
  }
}

void sub_B248(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v3)
  {
    v5 = [v4 name];
    v6 = [v7 description];
    [v7 code];
    STLog();
  }

  else
  {
    [v4 refreshAppState];
    if (([*(a1 + 32) isDemoted] & 1) == 0)
    {
      do
      {
        usleep(0x7A120u);
        [*(a1 + 32) refreshAppState];
      }

      while (![*(a1 + 32) isDemoted]);
    }

    v5 = [*(a1 + 32) name];
    STLog();
  }
}

void sub_B958(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v9 = a1[4];
  STLog();
  v7 = a1[5];
  v6 = a1[6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_BA18;
  v10[3] = &unk_2CD78;
  v11 = v5;
  v8 = v5;
  [v7 confirmDeleteApp:v6 completionHandler:{v10, v9}];
}

void sub_BA28(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v9 = a1[4];
  STLog();
  v7 = a1[5];
  v6 = a1[6];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_BAE8;
  v10[3] = &unk_2CD78;
  v11 = v5;
  v8 = v5;
  [v7 confirmDemoteApp:v6 completionHandler:{v10, v9}];
}

id sub_C4A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKey:a3];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

int64_t sub_C530(id a1, id a2, id a3)
{
  v4 = MPMediaItemPropertyFileSize;
  v5 = a2;
  v6 = [a3 valueForProperty:v4];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &off_2FF28;
  }

  v9 = v8;

  v10 = [v5 valueForProperty:v4];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &off_2FF28;
  }

  v12 = v11;

  v13 = [v9 compare:v12];
  return v13;
}

void sub_C748(id a1)
{
  qword_39FF8 = objc_alloc_init(STMediaCache);

  _objc_release_x1();
}

void sub_C7F0(id a1)
{
  v11[0] = comAppleiTunesU;
  v10[0] = UsageMediaAudioCourses;
  v10[1] = UsageMediaVideoCourses;
  v1 = [NSArray arrayWithObjects:v10 count:2];
  v12[0] = v1;
  v11[1] = comApplePodcasts;
  v9[0] = UsageMediaAudioPodcasts;
  v9[1] = UsageMediaVideoPodcasts;
  v2 = [NSArray arrayWithObjects:v9 count:2];
  v12[1] = v2;
  v11[2] = comAppleBooks;
  v8 = UsageMediaAudioBooks;
  v3 = [NSArray arrayWithObjects:&v8 count:1];
  v12[2] = v3;
  v11[3] = comAppleTV;
  v7 = UsageMediaTVShows;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v12[3] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  v6 = qword_3A008;
  qword_3A008 = v5;
}

uint64_t sub_DA58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 mediaCollectionForKey:a2];
  v8 = [*(a1 + 32) mediaCollectionForKey:v6];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v7)
    {
      v11 = -1;
    }

    else
    {
      v11 = v8 != 0;
    }
  }

  else
  {
    v10 = [v7 totalSize];
    v11 = v10 < [v8 totalSize];
  }

  return v11;
}

uint64_t sub_E858(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if (![v4 length])
  {
LABEL_7:
    [*(a1 + 40) addObject:v3];
    goto LABEL_8;
  }

  if (([v4 isEqualToString:@"com.apple.news"] & 1) == 0)
  {
    v5 = [*(a1 + 32) objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      [v5 addObject:v3];
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = [NSMutableArray arrayWithObject:v3];
      [v7 setValue:v8 forKey:v4];
    }

    goto LABEL_7;
  }

LABEL_8:

  return 1;
}

int64_t sub_E92C(id a1, LSApplicationRecord *a2, LSApplicationRecord *a3)
{
  v4 = a3;
  v5 = [(LSApplicationRecord *)a2 localizedName];
  v6 = [(LSApplicationRecord *)v4 localizedName];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

int64_t sub_E99C(id a1, CacheManagementAsset *a2, CacheManagementAsset *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [(CacheManagementAsset *)v4 consumedDate];
  v8 = [(CacheManagementAsset *)v5 consumedDate];
  v9 = v8;
  if (!v7 || v8)
  {
    if (!v8 || v7)
    {
      v11 = [(CacheManagementAsset *)v4 lastViewedDate];

      v12 = [(CacheManagementAsset *)v5 lastViewedDate];

      if (!v11 || v12)
      {
        if (v12 && !v11)
        {
          v7 = 0;
          v10 = 1;
          v9 = v12;
          goto LABEL_20;
        }

        v13 = [(CacheManagementAsset *)v4 size];
        v14 = [(CacheManagementAsset *)v5 size];
        if (v13 <= v14)
        {
          if (v13 < v14)
          {
            v10 = 1;
          }

          else
          {
            v15 = [(CacheManagementAsset *)v4 displayName];
            v16 = [(CacheManagementAsset *)v5 displayName];
            v10 = [v15 localizedCaseInsensitiveCompare:v16];
          }
        }

        else
        {
          v10 = -1;
        }

        v9 = v12;
      }

      else
      {
        v9 = 0;
        v10 = -1;
      }

      v7 = v11;
      goto LABEL_20;
    }

    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

LABEL_20:

  objc_autoreleasePoolPop(v6);
  return v10;
}

int64_t sub_EB0C(id a1, CacheManagementAsset *a2, CacheManagementAsset *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [(CacheManagementAsset *)v4 consumedDate];
  v8 = [(CacheManagementAsset *)v5 consumedDate];
  v9 = v8;
  if (!v7 || v8)
  {
    if (!v8 || v7)
    {
      v11 = [(CacheManagementAsset *)v4 lastViewedDate];

      v12 = [(CacheManagementAsset *)v5 lastViewedDate];

      if (!v11 || v12)
      {
        if (v12 && !v11)
        {
          v7 = 0;
          v10 = 1;
          v9 = v12;
          goto LABEL_20;
        }

        v13 = [(CacheManagementAsset *)v4 size];
        v14 = [(CacheManagementAsset *)v5 size];
        if (v13 <= v14)
        {
          if (v13 < v14)
          {
            v10 = 1;
          }

          else
          {
            v15 = [(CacheManagementAsset *)v4 displayName];
            v16 = [(CacheManagementAsset *)v5 displayName];
            v10 = [v15 localizedCaseInsensitiveCompare:v16];
          }
        }

        else
        {
          v10 = -1;
        }

        v9 = v12;
      }

      else
      {
        v9 = 0;
        v10 = -1;
      }

      v7 = v11;
      goto LABEL_20;
    }

    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

LABEL_20:

  objc_autoreleasePoolPop(v6);
  return v10;
}

void sub_ED3C(uint64_t a1)
{
  v2 = [*(a1 + 32) hlsSpecifiers];
  v3 = *(a1 + 32);
  v4 = *(v3 + 144);
  *(v3 + 144) = v2;

  v5 = dispatch_time(0, 10000000);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_EDFC;
  v6[3] = &unk_2CF68;
  v7 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  dispatch_after(v5, &_dispatch_main_q, v6);
}

id sub_EDFC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    return [v2 setSpecifiers:v2[18]];
  }

  else
  {
    return [v2 updateSpecifiers:*(v2 + OBJC_IVAR___PSListController__specifiers) withSpecifiers:v2[18]];
  }
}

void sub_F0C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 code];
    v6 = [v4 description];
    NSLog(@"Error %d removing video asset: %@", v5, v6);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_F194;
    block[3] = &unk_2CA38;
    v8 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_F194(uint64_t a1)
{
  [*(a1 + 32) removeSpecifier:*(a1 + 40) animated:1];
  v2 = *(a1 + 32);

  return [v2 updateHLSSpecs];
}

void sub_FBB0(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailData];
  if (v2 && ([UIImage imageWithData:v2], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = 0;
  }

  else
  {
    v4 = [UIImage systemImageNamed:@"film"];
    v5 = +[UIColor systemGray3Color];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_FCD0;
  block[3] = &unk_2CA10;
  block[4] = *(a1 + 40);
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_FCD0(uint64_t a1)
{
  [*(a1 + 32) setTintColor:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setIcon:v2];
}

void sub_FD10(uint64_t a1)
{
  v2 = [*(a1 + 32) size];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_FD9C;
  v3[3] = &unk_2CF98;
  v3[4] = *(a1 + 40);
  v3[5] = v2;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_11888(uint64_t a1)
{
  v2 = [NSMutableDictionary dictionaryWithCapacity:4];
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;

  STMSizeOfFileTree();
  v5 = [NSNumber numberWithLongLong:v37 - v38];
  [*(*(a1 + 32) + 184) setObject:v5 forKeyedSubscript:@"Siri"];

  STMSizeOfFileTree();
  v6 = [NSNumber numberWithLongLong:v37 - v38];
  [*(*(a1 + 32) + 184) setObject:v6 forKeyedSubscript:@"MobileAssets"];

  STMSizeOfFileTree();
  v7 = [NSNumber numberWithLongLong:v37 - v38];
  [*(*(a1 + 32) + 184) setObject:v7 forKeyedSubscript:@"Spotlight"];

  v8 = [NSMutableDictionary dictionaryWithCapacity:16];
  sub_11E6C(v8, @"/cores");
  sub_11E6C(v8, @"/var/log");
  sub_11E6C(v8, @"/var/logs");
  sub_11E6C(v8, @"/var/db/PanicReporter");
  sub_11E6C(v8, @"/var/db/systemstats");
  sub_11E6C(v8, @"/var/db/uuidtext");
  sub_11E6C(v8, @"/var/tmp/powerlog");
  sub_11E6C(v8, @"/var/wireless/Library/Logs");
  sub_11E6C(v8, @"/Library/Logs");
  sub_11E6C(v8, @"/var/mobile/Library/Logs");
  v9 = [NSMutableDictionary dictionaryWithCapacity:16];
  v10 = *(a1 + 32);
  v11 = *(v10 + 176);
  *(v10 + 176) = v9;

  sub_11E6C(*(*(a1 + 32) + 176), @"/var/mobile/Library/Logs/AutoBugCapture");
  sub_11E6C(*(*(a1 + 32) + 176), @"/var/mobile/Library/Logs/CrashReporter");
  v12 = +[STStorageCacheDelete sharedMonitor];
  v13 = [v12 cacheDeleteDict];

  v26 = v13;
  v25 = [v13 objectForKey:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
  v14 = [v25 objectForKey:@"com.apple.logd.cachedelete"];
  if (v14)
  {
    [v8 setObject:v14 forKey:@"/var/db/diagnostics"];
  }

  v27 = v8;
  [*(a1 + 32) setLogSizes:{v8, v14}];
  v37 = 0u;
  v38 = 0u;
  v36 = 32;
  if (!sysctlbyname("vm.swapusage", &v37, &v36, 0, 0))
  {
    *(*(a1 + 32) + 136) = v37;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_11F04;
  block[3] = &unk_2CAA0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(*(a1 + 32) + 208);
  v15 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = [*(*(a1 + 32) + 208) objectForKeyedSubscript:v19];
        v21 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:v19];
        [v20 setApp:v21];
        if (v21)
        {
          [v20 setIsAppFound:1];
          v22 = [v21 appSize];
          v23 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v22 userTotal]);
          [v20 setReportedSize:v23];
        }

        else
        {
          [v20 setReportedSize:&off_2FF40];
        }

        [v20 fetchSize];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_11F0C;
        v30[3] = &unk_2CAA0;
        v30[4] = *(a1 + 32);
        dispatch_async(&_dispatch_main_q, v30);
      }

      v16 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v16);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_11F14;
  v29[3] = &unk_2CAA0;
  v29[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v29);
}

void sub_11E6C(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  STMSizeOfFileTree();
  v5 = [NSNumber numberWithLongLong:0];
  [v4 setObject:v5 forKey:v3];
}

void RoundToSignificantDigits(int a1, double a2)
{
  if (a2 != 0.0)
  {
    v3 = log10(fabs(a2));
    __exp10(a1 - ceil(v3));
  }
}

void sub_133B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_133E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_133FC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
  }

  else
  {
    v11 = *(*(a1 + 48) + 8);
    obj = 0;
    v12 = [NSPropertyListSerialization propertyListWithData:v7 options:0 format:0 error:&obj];
    objc_storeStrong((v11 + 40), obj);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !*(*(*(a1 + 48) + 8) + 40))
    {
      v13 = [v12 objectForKeyedSubscript:@"bag"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = *(*(a1 + 48) + 8);
        v28 = 0;
        v15 = [NSPropertyListSerialization propertyListWithData:v13 options:0 format:0 error:&v28];
        objc_storeStrong((v14 + 40), v28);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && !*(*(*(a1 + 48) + 8) + 40))
        {
          v16 = [v15 objectForKeyedSubscript:@"metrics"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = [v16 objectForKeyedSubscript:@"metricsUrl"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [v17 stringByAppendingString:@"/2/xp_ios_storage_mgmt"];
              v18 = [NSURL URLWithString:?];
              v19 = *(a1 + 32);
              v20 = *(v19 + 8);
              *(v19 + 8) = v18;

              v21 = [*(*(a1 + 32) + 8) scheme];
              v26 = [v21 isEqualToString:@"https"];

              if ((v26 & 1) == 0)
              {
                v22 = *(a1 + 32);
                v23 = *(v22 + 8);
                *(v22 + 8) = 0;
              }
            }
          }
        }
      }
    }
  }

  v24 = *(*(*(a1 + 48) + 8) + 40);
  if (v24)
  {
    v25 = [v24 description];
    NSLog(@"Unable to fetch splunk endpoint: %@", v25);
  }

  else if (!*(*(a1 + 32) + 8))
  {
    NSLog(@"Malformed iTunes bag payload!");
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_13764(uint64_t a1)
{
  v22[0] = @"postTime";
  v2 = +[NSDate date];
  [v2 timeIntervalSince1970];
  v4 = [NSNumber numberWithLong:1000 * v3];

  v22[1] = @"events";
  v23[0] = v4;
  v5 = [*(a1 + 32) events];
  v23[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];

  v7 = [*(a1 + 32) events];
  if ([v7 count] >= 0x3E8)
  {
    sub_1CADC();
  }

  objc_initWeak(&location, *(a1 + 32));
  v8 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
  v9 = objc_loadWeakRetained(&location);
  v10 = [NSURLSession sessionWithConfiguration:v8 delegate:v9 delegateQueue:0];

  v11 = [*(a1 + 32) splunkUploadURL];
  v12 = objc_alloc_init(NSMutableURLRequest);
  [v12 setURL:v11];
  [v12 setHTTPMethod:@"POST"];
  v20 = 0;
  v13 = [NSJSONSerialization dataWithJSONObject:v6 options:0 error:&v20];
  v14 = v20;
  v15 = [*(a1 + 32) events];
  [v15 removeAllObjects];

  if (!v13 || v14)
  {
    NSLog(@"Failed to serialize Splunk payload: %@", v14);
  }

  else
  {
    if ([v13 length] >= 0x100000)
    {
      __assert_rtn("[SplunkLogger postEvents]_block_invoke", "SplunkLogger.m", 239, "postData.length < MAX_SPLUNK_LOG_SIZE_BYTES");
    }

    [v12 setHTTPBody:v13];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_13AC0;
    v18[3] = &unk_2D008;
    v16 = dispatch_semaphore_create(0);
    v19 = v16;
    v17 = [v10 dataTaskWithRequest:v12 completionHandler:v18];
    NSLog(@"Splunk upload start");
    [v17 resume];
    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  }

  objc_destroyWeak(&location);
}

void sub_13AC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  if (a4)
  {
    NSLog(@"Error in uploading the events to splunk: %@", a4);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v8;
      if ([v6 statusCode] < 200 || objc_msgSend(v6, "statusCode") > 299)
      {
        NSLog(@"Splunk upload unexpected status: %d", [v6 statusCode]);
      }

      else
      {
        NSLog(@"Splunk upload success");
      }
    }

    else
    {
      v7 = objc_opt_class();
      v6 = NSStringFromClass(v7);
      NSLog(@"Received the wrong kind of response: %@", v6);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_13D0C(uint64_t a1)
{
  v2 = [*(a1 + 32) events];
  [v2 addObject:*(a1 + 40)];
}

void sub_14094(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1410C;
  block[3] = &unk_2CAA0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1410C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 248) & 1) == 0)
  {
    v15 = *(v2 + 136);
    v4 = [v15 state];
    v5 = v4 == 3 || v4 == 0;
    v6 = v15;
    if (v5)
    {
      v7 = [v15 appSize];
      v8 = *(a1 + 32);
      v9 = *(v8 + 200);
      v10 = *(v8 + 208);
      if ([v15 isDemoted])
      {
        *(*(a1 + 32) + 200) = 0;
        v11 = [v7 userTotal];
      }

      else
      {
        *(*(a1 + 32) + 200) = [v7 fixed];
        v11 = [v7 docsAndData];
      }

      *(*(a1 + 32) + 208) = v11;
      v12 = *(a1 + 32);
      if (v9 != v12[25])
      {
        v13 = v12[22];
        if (v13)
        {
          [v12 reloadSpecifier:v13 animated:0];
          v12 = *(a1 + 32);
        }
      }

      if (v10 != v12[26])
      {
        v14 = v12[23];
        if (v14)
        {
          [v12 reloadSpecifier:v14 animated:0];
        }
      }

      v6 = v15;
    }
  }
}

id sub_14254(uint64_t a1)
{
  [*(*(a1 + 32) + 136) refreshAppState];
  v2 = *(a1 + 32);

  return [v2 syncUI];
}

id sub_145E0(id result)
{
  v1 = *(result + 4);
  v2 = *(result + 10);
  if (*(v1 + 144) != v2)
  {
    *(v1 + 144) = v2;
    return [*(result + 4) reloadSpecifiers];
  }

  return result;
}

void sub_14820(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) name];
    v6 = [v3 description];
    [v3 code];
    STLog();
  }

  else
  {
    v5 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_14924;
    block[3] = &unk_2CAA0;
    block[4] = *(a1 + 40);
    dispatch_after(v5, &_dispatch_main_q, block);
  }

  *(*(a1 + 40) + 248) = 0;
}

void sub_14924(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + OBJC_IVAR___PSViewController__parentController));
  [WeakRetained removeSpecifier:*(*(a1 + 32) + OBJC_IVAR___PSViewController__specifier)];
  v2 = [WeakRetained navigationController];
  v3 = [v2 popViewControllerAnimated:1];
}

void sub_14ED4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = v3;
  if (v3)
  {
    v5 = [v4 name];
    v7 = [v8 description];
    [v8 code];
    v6 = v5;
    STLog();
  }

  else
  {
    [v4 refreshAppState];
    if (([*(a1 + 32) isDemoted] & 1) == 0)
    {
      do
      {
        usleep(0x7A120u);
        [*(a1 + 32) refreshAppState];
      }

      while (![*(a1 + 32) isDemoted]);
    }

    v5 = [*(a1 + 32) name];
    v6 = v5;
    STLog();
  }

  [*(a1 + 40) syncUI];
  *(*(a1 + 40) + 248) = 0;
}

void sub_15468(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    [*(a1 + 32) setUIState:*(a1 + 48)];
    [*(a1 + 32) showAlertForFailedInstallation];
    v3 = [v6 code];
    v4 = [v6 description];
    v5 = v3;
  }

  else
  {
    [*(a1 + 40) refreshAppState];
    if ([*(a1 + 40) isDemoted])
    {
      do
      {
        usleep(0x7A120u);
        [*(a1 + 40) refreshAppState];
      }

      while (([*(a1 + 40) isDemoted] & 1) != 0);
    }

    v4 = [*(a1 + 40) name];
    v5 = v4;
  }

  STLog();

  [*(a1 + 32) syncUI];
  *(*(a1 + 32) + 248) = 0;
}

void sub_155F8(uint64_t a1)
{
  v2 = STStorageLocStr(@"REINSTALLATION_FAILED_DESCRIPTION");
  v3 = [*(*(a1 + 32) + 136) name];
  v7 = [NSString stringWithFormat:v2, v3];

  v4 = STStorageLocStr(@"REINSTALLATION_FAILED_TITLE");
  v5 = [UIAlertController alertControllerWithTitle:v4 message:v7 preferredStyle:1];

  v6 = [UIAlertAction actionWithTitle:@"Ok" style:1 handler:0];
  [v5 addAction:v6];
  [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
}

uint64_t sub_15D64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 consumedDate];

  v5 = 32;
  if (!v4)
  {
    v5 = 40;
  }

  [*(a1 + v5) addObject:v3];

  return 1;
}

int64_t sub_15DC8(id a1, CacheManagementAsset *a2, CacheManagementAsset *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CacheManagementAsset *)v4 lastViewedDate];
  if (v6)
  {
    v7 = v6;
    v8 = [(CacheManagementAsset *)v5 lastViewedDate];

    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v9 = [(CacheManagementAsset *)v5 lastViewedDate];
  if (v9)
  {
    v10 = v9;
    v11 = [(CacheManagementAsset *)v4 lastViewedDate];

    if (!v11)
    {
LABEL_8:
      v13 = 1;
      goto LABEL_10;
    }
  }

  v12 = [(CacheManagementAsset *)v4 size];
  if (v12 <= [(CacheManagementAsset *)v5 size])
  {
    v14 = [(CacheManagementAsset *)v4 size];
    if (v14 >= [(CacheManagementAsset *)v5 size])
    {
      v15 = [(CacheManagementAsset *)v4 displayName];
      v16 = [(CacheManagementAsset *)v5 displayName];
      v13 = [v15 localizedCaseInsensitiveCompare:v16];

      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_6:
  v13 = -1;
LABEL_10:

  return v13;
}

int64_t sub_15EF4(id a1, CacheManagementAsset *a2, CacheManagementAsset *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CacheManagementAsset *)v4 size];
  if (v6 <= [(CacheManagementAsset *)v5 size])
  {
    v8 = [(CacheManagementAsset *)v4 size];
    if (v8 >= [(CacheManagementAsset *)v5 size])
    {
      v9 = [(CacheManagementAsset *)v4 displayName];
      v10 = [(CacheManagementAsset *)v5 displayName];
      v7 = [v9 localizedCaseInsensitiveCompare:v10];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_16050(uint64_t a1)
{
  v2 = [*(a1 + 32) hlsSpecifiers];
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  v5 = dispatch_time(0, 10000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_16108;
  block[3] = &unk_2CAA0;
  block[4] = *(a1 + 32);
  dispatch_after(v5, &_dispatch_main_q, block);
}

void sub_163CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_163E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_163FC(uint64_t a1, void *a2)
{
  v3 = [a2 UIImage];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_16544(uint64_t a1)
{
  v58 = STStorageDeviceKey();
  v2 = [*(a1 + 32) spinnerSpecifier];
  v3 = qword_3A020;
  qword_3A020 = v2;

  v4 = STStorageLocStr(@"UNINSTALL_APP");
  v5 = [PSSpecifier deleteButtonSpecifierWithName:v4 target:*(a1 + 32) action:"confirmDemoteApp"];
  v6 = qword_3A028;
  qword_3A028 = v5;

  v7 = STStorageLocStr(@"REINSTALL_APP");
  v8 = [PSSpecifier deleteButtonSpecifierWithName:v7 target:*(a1 + 32) action:"reinstallApp"];
  v9 = qword_3A030;
  qword_3A030 = v8;

  v10 = STStorageLocStr(@"REINSTALL_HEALTH_APP");
  v11 = [PSSpecifier deleteButtonSpecifierWithName:v10 target:*(a1 + 32) action:"reinstallApp"];
  v12 = qword_3A038;
  qword_3A038 = v11;

  v13 = STStorageLocStr(@"DELETE_APP");
  v14 = [PSSpecifier deleteButtonSpecifierWithName:v13 target:*(a1 + 32) action:"confirmDeleteApp"];
  v15 = qword_3A040;
  qword_3A040 = v14;

  v16 = STStorageLocStr(@"DELETE_DATA");
  v17 = [PSSpecifier deleteButtonSpecifierWithName:v16 target:*(a1 + 32) action:"confirmDeleteApp"];
  v18 = qword_3A048;
  qword_3A048 = v17;

  v19 = STStorageLocStr(@"DELETE_APPCLIP");
  v20 = [PSSpecifier deleteButtonSpecifierWithName:v19 target:*(a1 + 32) action:"confirmDeleteApp"];
  v21 = qword_3A050;
  qword_3A050 = v20;

  v22 = +[PSSpecifier emptyGroupSpecifier];
  v23 = qword_3A058;
  qword_3A058 = v22;

  v24 = qword_3A058;
  v25 = STStorageLocStr(@"UNINSTALL_INFO");
  v26 = PSFooterTextGroupKey;
  [v24 setProperty:v25 forKey:PSFooterTextGroupKey];

  v27 = +[PSSpecifier emptyGroupSpecifier];
  v28 = qword_3A060;
  qword_3A060 = v27;

  v29 = qword_3A060;
  v30 = [NSString stringWithFormat:@"REINSTALL_INFO_%@", v58];
  v31 = STStorageLocStr(v30);
  [v29 setProperty:v31 forKey:v26];

  v32 = +[PSSpecifier emptyGroupSpecifier];
  v33 = qword_3A068;
  qword_3A068 = v32;

  v34 = qword_3A068;
  v35 = [NSString stringWithFormat:@"REINSTALL_HEALTH_INFO_%@", v58];
  v36 = STStorageLocStr(v35);
  [v34 setProperty:v36 forKey:v26];

  v37 = +[PSSpecifier emptyGroupSpecifier];
  v38 = qword_3A070;
  qword_3A070 = v37;

  v39 = qword_3A070;
  v40 = [NSString stringWithFormat:@"DELETE_INFO_%@", v58];
  v41 = STStorageLocStr(v40);
  [v39 setProperty:v41 forKey:v26];

  v42 = +[PSSpecifier emptyGroupSpecifier];
  v43 = qword_3A078;
  qword_3A078 = v42;

  v44 = qword_3A078;
  v45 = [NSString stringWithFormat:@"DELETE_APPCLIP_INFO_%@", v58];
  v46 = STStorageLocStr(v45);
  [v44 setProperty:v46 forKey:v26];

  v47 = +[PSSpecifier emptyGroupSpecifier];
  v48 = qword_3A080;
  qword_3A080 = v47;

  v49 = qword_3A080;
  v50 = [NSString stringWithFormat:@"DELETE_DATA_INFO_%@", v58];
  v51 = STStorageLocStr(v50);
  [v49 setProperty:v51 forKey:v26];

  v52 = qword_3A030;
  v53 = +[UIColor systemBlueColor];
  [v52 setProperty:v53 forKey:@"buttonColor"];

  v54 = qword_3A038;
  v55 = +[UIColor systemBlueColor];
  [v54 setProperty:v55 forKey:@"buttonColor"];

  v56 = qword_3A028;
  v57 = +[UIColor systemBlueColor];
  [v56 setProperty:v57 forKey:@"buttonColor"];
}

void sub_16B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_182D0(uint64_t a1)
{
  [NSObject cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:"_syncUI:" object:0];
  v2 = *(a1 + 32);

  return [v2 performSelector:"_syncUI:" withObject:0 afterDelay:1.0];
}

void sub_18730(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 code];
    v5 = [v4 description];
    STLog();
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_18804;
    block[3] = &unk_2CA38;
    v7 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_18804(uint64_t a1)
{
  [*(a1 + 32) removeSpecifier:*(a1 + 40) animated:1];
  v2 = *(a1 + 32);

  return [v2 updateHLSSpecs];
}

void sub_18A28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = 0;
  [v2 removeItemAtURL:v3 error:&v9];
  v4 = v9;
  v5 = v4;
  if (v4)
  {
    [v4 code];
    v6 = [v5 description];

    STLog();
    v5 = v6;
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_18B18;
    block[3] = &unk_2CA38;
    v8 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_18D5C(uint64_t a1)
{
  v2 = +[MPMediaLibrary defaultMediaLibrary];
  v3 = [v2 removeItems:*(a1 + 32)];

  if (v3)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_18E3C;
    v10 = &unk_2CA38;
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v11 = v4;
    v12 = v5;
    dispatch_async(&_dispatch_main_q, &v7);
    v6 = [STMediaCache sharedCache:v7];
    [v6 reload];
  }
}

void sub_18E3C(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) removeSpecifier:*(*(&v7 + 1) + 8 * v6) animated:{1, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_19ED4(id a1)
{
  qword_3A088 = objc_alloc_init(STStoragePluginManager);

  _objc_release_x1();
}

void sub_1A104(uint64_t a1)
{
  v43 = [NSMutableDictionary dictionaryWithCapacity:10];
  v1 = [NSMutableDictionary dictionaryWithCapacity:4];
  v2 = [NSMutableDictionary dictionaryWithCapacity:4];
  v3 = +[NSFileManager defaultManager];
  v38 = [NSURL fileURLWithPath:@"/System/Library/PreferenceBundles/StoragePlugins/" isDirectory:1];
  v39 = v3;
  [v3 enumeratorAtURL:? includingPropertiesForKeys:? options:? errorHandler:?];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v60 = 0u;
  v4 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v58;
    v7 = &__objc_personality_v0_ptr;
    v41 = *v58;
    do
    {
      v8 = 0;
      v42 = v5;
      do
      {
        if (*v58 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v57 + 1) + 8 * v8);
        v10 = [v7[217] bundleWithURL:{v9, v36, v37}];
        v56 = 0;
        v11 = [v10 loadAndReturnError:&v56];
        v12 = v56;
        v13 = v12;
        if ((v11 & 1) == 0)
        {
          v16 = [v9 lastPathComponent];
          [v13 localizedDescription];
          v37 = v36 = v16;
          STLog();

          goto LABEL_38;
        }

        v46 = v12;
        v47 = v10;
        v14 = [v10 principalClass];
        if (v14)
        {
          v15 = objc_alloc_init(v14);
          v16 = v15;
          v45 = v8;
          if (v15)
          {
            v17 = [v15 identifier];
            [v43 setObject:v16 forKey:v17];

            if (objc_opt_respondsToSelector())
            {
              v18 = [v16 documentAppIdentifiers];
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v55 = 0u;
              v19 = [v18 countByEnumeratingWithState:&v52 objects:v62 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v53;
                do
                {
                  for (i = 0; i != v20; i = i + 1)
                  {
                    if (*v53 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v52 + 1) + 8 * i);
                    v24 = [v1 objectForKey:v23];
                    v25 = v24;
                    if (v24)
                    {
                      [v24 addObject:v16];
                    }

                    else
                    {
                      v26 = [NSMutableArray arrayWithObject:v16];
                      [v1 setObject:v26 forKey:v23];
                    }
                  }

                  v20 = [v18 countByEnumeratingWithState:&v52 objects:v62 count:16];
                }

                while (v20);
              }

              v6 = v41;
              v5 = v42;
              v7 = &__objc_personality_v0_ptr;
              v8 = v45;
            }

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_37;
            }

            v27 = [v16 externDataSizeAppIdentifiers];
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v28 = [v27 countByEnumeratingWithState:&v48 objects:v61 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v49;
              do
              {
                for (j = 0; j != v29; j = j + 1)
                {
                  if (*v49 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v48 + 1) + 8 * j);
                  v33 = [v2 objectForKey:v32];
                  v34 = v33;
                  if (v33)
                  {
                    [v33 addObject:v16];
                  }

                  else
                  {
                    v35 = [NSMutableArray arrayWithObject:v16];
                    [v2 setObject:v35 forKey:v32];
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v48 objects:v61 count:16];
              }

              while (v29);
              v6 = v41;
              v5 = v42;
              v7 = &__objc_personality_v0_ptr;
            }
          }

          else
          {
            v27 = [v9 lastPathComponent];
            v36 = v27;
            STLog();
          }

          v8 = v45;
        }

        else
        {
          v16 = [v9 lastPathComponent];
          v36 = v16;
          STLog();
        }

LABEL_37:
        v13 = v46;
        v10 = v47;
LABEL_38:

        v8 = v8 + 1;
      }

      while (v8 != v5);
      v5 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) setPluginsByID:{v43, v36}];
  [*(a1 + 32) setDocPluginsByID:v1];
  [*(a1 + 32) setExternDataPluginsByID:v2];
}

void sub_1A6C0(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) tips];
  v30 = v2;
  if (![v2 count])
  {
    v28 = [*(v1 + 40) tipsByPluginID];
    v29 = [*(v1 + 32) identifier];
    [v28 removeObjectForKey:v29];
    goto LABEL_34;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (!v3)
  {
    goto LABEL_32;
  }

  v4 = v3;
  v5 = *v38;
  v6 = &__objc_personality_v0_ptr;
  v31 = *v38;
  v32 = v1;
  do
  {
    v7 = 0;
    v33 = v4;
    do
    {
      if (*v38 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v37 + 1) + 8 * v7);
      v9 = [*(v1 + 32) identifier];
      [v8 setProperty:v9 forKey:@"_stPluginID"];

      v10 = [v8 propertyForKey:@"_stTipID"];

      if (!v10)
      {
        v11 = [v8 title];
        [v8 setProperty:v11 forKey:@"_stTipID"];
      }

      v12 = v6[284];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = v7;
        v13 = v8;
        v14 = [v13 significantItems];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v15)
        {
          v16 = v15;
          v35 = v13;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v21 = *v42;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v42 != v21)
              {
                objc_enumerationMutation(v14);
              }

              v23 = *(*(&v41 + 1) + 8 * i);
              v24 = [v23 isRecoverable];
              v25 = [v23 size];
              if (v24)
              {
                ++v19;
              }

              else
              {
                v17 += v25;
                ++v18;
              }

              if (v24)
              {
                v20 += v25;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
          }

          while (v16);
          if (v19)
          {
            v26 = [NSNumber numberWithLongLong:v20 / v19];
            v13 = v35;
            [v35 setProperty:v26 forKey:@"_stRecAvg"];

            v5 = v31;
            v1 = v32;
            v6 = &__objc_personality_v0_ptr;
            if (!v18)
            {
              goto LABEL_24;
            }

LABEL_28:
            v27 = [NSNumber numberWithLongLong:v17 / v18];
            [v13 setProperty:v27 forKey:@"_stNonRecAvg"];

            goto LABEL_29;
          }

          v5 = v31;
          v1 = v32;
          v6 = &__objc_personality_v0_ptr;
          v13 = v35;
        }

        else
        {
          v18 = 0;
          v17 = 0;
        }

        [v13 setProperty:0 forKey:@"_stRecAvg"];
        if (v18)
        {
          goto LABEL_28;
        }

LABEL_24:
        [v13 setProperty:0 forKey:@"_stNonRecAvg"];
LABEL_29:
        v4 = v33;
        v7 = v36;
      }

      v7 = v7 + 1;
    }

    while (v7 != v4);
    v4 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  }

  while (v4);
LABEL_32:

  v28 = [*(v1 + 40) tipsByPluginID];
  v29 = [*(v1 + 32) identifier];
  [v28 setObject:obj forKey:v29];
LABEL_34:
}

void sub_1AE20(uint64_t a1)
{
  v2 = [*(a1 + 32) pluginsByID];
  v3 = [v2 allValues];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count] + 1);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(a1 + 32) loadTipsOperation:{*(*(&v11 + 1) + 8 * v9), v11}];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [*(*(a1 + 32) + 16) addOperations:v4 waitUntilFinished:1];
}

id sub_1AF90(uint64_t a1)
{
  [*(a1 + 32) updateTipIndexes];
  v2 = *(a1 + 32);

  return [v2 notifyTipsChanged];
}

id sub_1B08C(uint64_t a1)
{
  [*(a1 + 32) updateTipIndexes];
  v2 = *(a1 + 32);

  return [v2 notifyTipsChanged];
}

int64_t sub_1B314(id a1, STStorageTip *a2, STStorageTip *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 || (v7 & 1) == 0)
  {
    if (isKindOfClass)
    {
      v13 = v4;
    }

    else
    {
      v13 = v5;
    }

    if ((isKindOfClass | v7))
    {
      if (isKindOfClass)
      {
        v14 = v5;
      }

      else
      {
        v14 = v4;
      }

      v8 = v13;
      v15 = v14;
      v9 = [(STStorageTip *)v15 propertyForKey:@"_stRecAvg"];
      v16 = [(STStorageTip *)v15 propertyForKey:@"_stNonRecAvg"];

      if (![(STStorageTip *)v8 immediateGain]|| v9 && (v17 = [(STStorageTip *)v9 longLongValue], v17 > [(STStorageTip *)v8 immediateGain]) || v16 && (v18 = [(STStorageTip *)v9 longLongValue], v18 > [(STStorageTip *)v8 immediateGain]))
      {
        v19 = (isKindOfClass & 1) == 0;
        v20 = 1;
      }

      else
      {
        v19 = (isKindOfClass & 1) == 0;
        v20 = -1;
      }

      if (v19)
      {
        v12 = -v20;
      }

      else
      {
        v12 = v20;
      }

      goto LABEL_41;
    }

    v21 = v4;
    v22 = v5;
    v23 = [(STStorageTip *)v21 propertyForKey:@"_stRecAvg"];
    v24 = [(STStorageTip *)v22 propertyForKey:@"_stRecAvg"];
    if (v23 | v24 || ([(STStorageTip *)v21 propertyForKey:@"_stNonRecAvg"], v23 = objc_claimAutoreleasedReturnValue(), [(STStorageTip *)v22 propertyForKey:@"_stNonRecAvg"], v24 = objc_claimAutoreleasedReturnValue(), v23 | v24))
    {
      v25 = v24;
      v26 = [v23 longLongValue];
      if (v26 > [v25 longLongValue])
      {
        v12 = -1;
      }

      else
      {
        v12 = 1;
      }

      v27 = 0;
    }

    else
    {
      v28 = [(STStorageTip *)v21 sortSize];
      v29 = [(STStorageTip *)v22 sortSize];
      v27 = (v28 | v29) == 0;
      if (v28 < v29)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }
    }

    if (!v27)
    {
      goto LABEL_42;
    }

LABEL_40:
    v8 = [(STStorageTip *)v4 title];
    v9 = [(STStorageTip *)v5 title];
    v12 = [(STStorageTip *)v8 localizedCaseInsensitiveCompare:v9];
LABEL_41:

    goto LABEL_42;
  }

  v8 = v4;
  v9 = v5;
  if ([(STStorageTip *)v8 immediateGain]|| [(STStorageTip *)v9 immediateGain])
  {
    v10 = [(STStorageTip *)v8 immediateGain];
    v11 = [(STStorageTip *)v9 immediateGain];
    goto LABEL_6;
  }

  if ([(STStorageTip *)v8 eventualGain]|| [(STStorageTip *)v9 eventualGain])
  {
    v10 = [(STStorageTip *)v8 eventualGain];
    v11 = [(STStorageTip *)v9 eventualGain];
LABEL_6:
    if (v10 < v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    goto LABEL_41;
  }

  v31 = [(STStorageTip *)v8 sortSize];
  v32 = [(STStorageTip *)v9 sortSize];
  v33 = v31 | v32;
  if (v31 < v32)
  {
    v12 = 1;
  }

  else
  {
    v12 = -1;
  }

  if (!v33)
  {
    goto LABEL_40;
  }

LABEL_42:

  return v12;
}

int64_t sub_1B634(id a1, STStorageTip *a2, STStorageTip *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  if ((isKindOfClass & 1) == (objc_opt_isKindOfClass() & 1))
  {
    if (isKindOfClass)
    {
      goto LABEL_14;
    }

    v8 = v4;
    v9 = v5;
    v10 = [(STStorageTip *)v8 propertyForKey:@"_stRecAvg"];
    v11 = [(STStorageTip *)v9 propertyForKey:@"_stRecAvg"];
    if (v10 | v11 || (v7 = @"_stNonRecAvg", [(STStorageTip *)v8 propertyForKey:@"_stNonRecAvg"], v10 = objc_claimAutoreleasedReturnValue(), [(STStorageTip *)v9 propertyForKey:@"_stNonRecAvg"], v11 = objc_claimAutoreleasedReturnValue(), v10 | v11))
    {
      v12 = v11;
      v13 = [v10 longLongValue];
      v7 = v13 > [v12 longLongValue] ? -1 : 1;

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
LABEL_14:
      v15 = [(STStorageTip *)v4 sortSize];
      v16 = [(STStorageTip *)v5 sortSize];
      if (v15 | v16)
      {
        if (v15 < v16)
        {
          v7 = 1;
        }

        else
        {
          v7 = -1;
        }
      }

      else
      {
        v17 = [(STStorageTip *)v4 title];
        v18 = [(STStorageTip *)v5 title];
        v7 = [v17 localizedCaseInsensitiveCompare:v18];
      }
    }
  }

  else if (isKindOfClass)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

int64_t sub_1BCBC(id a1, STStorageTip *a2, STStorageTip *a3)
{
  v4 = a3;
  v5 = [(STStorageTip *)a2 title];
  v6 = [(STStorageTip *)v4 title];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

void sub_1C894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1C998;
  block[3] = &unk_2D228;
  v9 = a3;
  v6 = v9;
  objc_copyWeak(&v11, (a1 + 32));
  v10 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v11);
}

void sub_1C998(uint64_t a1)
{
  if (*(a1 + 32) || ([*(a1 + 40) UIImage], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v2 = PSBlankIconImage();
  }

  else
  {
    v2 = [*(a1 + 40) UIImage];
  }

  v5 = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setIcon:v5];
}