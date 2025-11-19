void sub_1000BEC40(uint64_t a1)
{
  v2 = [*(a1 + 48) copy];
  [*(*(a1 + 32) + 16) setObject:v2 forKeyedSubscript:*(a1 + 40)];

  *(*(a1 + 32) + 24) = 0;
}

void sub_1000BEC88(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32));
    v2 = v3;
  }
}

void sub_1000BECE4(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0);
    v1 = v2;
  }
}

void sub_1000BEE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BEE7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BKLibraryManager defaultManager];
  v17 = *(a1 + 32);
  v5 = [NSArray arrayWithObjects:&v17 count:1];
  v6 = [v4 libraryAssetsWithAssetIDsContainedInList:v5 tempAssetIDs:0 inManagedObjectContext:v3];

  if ([v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = [v7 seriesContainer];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 seriesStackAssetIDs];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v13 = [BKLibraryManager seriesStackBooksForBook:v9];
        v12 = [v13 valueForKey:@"assetID"];
      }

      if ([v12 containsObject:*(a1 + 32)])
      {
        v14 = [v9 assetID];
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;
      }
    }
  }
}

void sub_1000BF0D8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
  v3 = [v2 copy];

  if (![v3 count])
  {
    [*(*(a1 + 32) + 64) addObject:*(a1 + 40)];
    [*(a1 + 32) _rebuild];
  }

  v4 = +[BKLibraryManager defaultManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000BF1DC;
  v6[3] = &unk_100A06678;
  v7 = v3;
  v8 = *(a1 + 48);
  v5 = v3;
  [v4 performBackgroundReadOnlyBlock:v6];
}

void sub_1000BF1DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = a1;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        objc_opt_class();
        v14 = 0;
        v11 = [v3 existingObjectWithID:v10 error:&v14];
        v12 = BUDynamicCast();

        if (v12)
        {
          [v4 addObject:v12];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  (*(*(v13 + 40) + 16))();
}

void sub_1000BF404(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v3 = +[NSNull null];
  [v2 setObject:v3 forKey:*(a1 + 40)];
}

void sub_1000C29D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a70);
  objc_destroyWeak(&STACK[0x210]);
  objc_destroyWeak(&STACK[0x238]);
  objc_destroyWeak(&STACK[0x260]);
  objc_destroyWeak(&STACK[0x288]);
  objc_destroyWeak(&STACK[0x2B0]);
  objc_destroyWeak(&STACK[0x2D8]);
  objc_destroyWeak(&STACK[0x300]);
  objc_destroyWeak(&STACK[0x328]);
  objc_destroyWeak(&STACK[0x350]);
  objc_destroyWeak(&STACK[0x378]);
  objc_destroyWeak(&STACK[0x3A0]);
  objc_destroyWeak(&STACK[0x3C8]);
  objc_destroyWeak(&STACK[0x3F0]);
  objc_destroyWeak(&STACK[0x418]);
  objc_destroyWeak(&STACK[0x488]);
  objc_destroyWeak(&STACK[0x4B0]);
  objc_destroyWeak(&STACK[0x4D8]);
  objc_destroyWeak(&STACK[0x500]);
  objc_destroyWeak(&STACK[0x528]);
  objc_destroyWeak(&STACK[0x550]);
  objc_destroyWeak(&STACK[0x578]);
  objc_destroyWeak(&STACK[0x5A0]);
  objc_destroyWeak(&STACK[0x5C8]);
  objc_destroyWeak(&STACK[0x5F0]);
  objc_destroyWeak(&STACK[0x5F8]);
  _Unwind_Resume(a1);
}

id sub_1000C2D84(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = v2[10];
  }

  else
  {
    v3 = 1;
  }

  return [v2 _emulateCurrentLightLevelChange:v3];
}

void sub_1000C2DA4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:1 forKey:BRCUserDefaultEnableMonitoring];

  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithBool:a2];
  [v5 setValue:v6 forKey:BRCBooksDefaultsKeyPersonalizationLocalSignalCollectionEnabled inNamespace:BRCBooksDefaultsNamespace source:1];
}

void sub_1000C2E5C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:1 forKey:BRCUserDefaultEnableMonitoring];

  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithBool:a2];
  [v5 setValue:v6 forKey:BRCBooksDefaultsKeyPersonalizationLocalSignalSyncEnabled inNamespace:BRCBooksDefaultsNamespace source:1];
}

void sub_1000C2F14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  [v3 books_internal_toggleFakePlayer:v4];
  [*(a1 + 32) validateCommand:*(a1 + 40)];
  objc_opt_class();
  v6 = [v5 sender];

  v7 = BUDynamicCast();

  [v7 setOn:{objc_msgSend(*(a1 + 40), "state") == 1}];
}

void sub_1000C2FE0(id a1, BOOL a2)
{
  if (a2)
  {
    [BKLibraryLayoutAttributes setGlobalLayoutDebugMode:2];
  }

  else
  {
    [BKLibraryLayoutAttributes setGlobalLayoutDebugMode:0];
  }
}

void sub_1000C2FF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentREIChromeEditingMenu];
}

id sub_1000C3038(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained lightLevelTitles];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 objectAtIndexedSubscript:{objc_msgSend(v4, "currentLightLevel")}];

  return v5;
}

void sub_1000C30BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentLightLevelChangeAlert];
}

void sub_1000C30FC(uint64_t a1)
{
  v4 = [[BSUIFeedViewController alloc] initWithOptions:&off_100A43BD8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 pushViewController:v4 animated:1];
}

void sub_1000C3180(uint64_t a1)
{
  v4 = objc_alloc_init(JSAFigaroSummaryViewController);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 pushViewController:v4 animated:1];
}

id sub_1000C31F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained bootUrl];

  return v2;
}

void sub_1000C3244(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentProductPageAlsoAvailableAsAlert];
}

void sub_1000C3284(id a1, NSIndexPath *a2)
{
  objc_opt_class();
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v5 = BUDynamicCast();

  v4 = [v5 engagementManager];
  [v4 forceSyncFromCloudKit];
}

void sub_1000C3328(id a1, NSIndexPath *a2)
{
  objc_opt_class();
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v5 = BUDynamicCast();

  v4 = [v5 engagementManager];
  [v4 forceSyncToCloudKit];
}

void sub_1000C33CC(uint64_t a1)
{
  v4 = objc_alloc_init(BKLocalSignalStressTestViewController);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 pushViewController:v4 animated:1];
}

void sub_1000C3444(uint64_t a1)
{
  v4 = objc_alloc_init(BKBookMessagesDebugViewController);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 pushViewController:v4 animated:1];
}

void sub_1000C34BC(id a1, NSIndexPath *a2)
{
  objc_opt_class();
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 delegate];
  v5 = BUDynamicCast();

  v4 = [v5 engagementManager];
  [v4 forcePurgeAll];
}

void sub_1000C3578(uint64_t a1)
{
  v4 = objc_alloc_init(BKAnalyticsDebugViewController);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained navigationController];
  [v3 pushViewController:v4 animated:1];
}

void sub_1000C35F0(id a1, NSIndexPath *a2)
{
  v3 = +[BSUITemplate manager];
  v2 = [v3 resourceLoader];
  [v2 clearCache];
}

__CFString *sub_1000C3650(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained readingSessionCurrentStartOffset])
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%.0f min", [v3 readingSessionCurrentStartOffset] / 60.0);
  }

  else
  {
    v4 = @"None";
  }

  return v4;
}

void sub_1000C3700(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentSessionStartOffsetChangeAlert];
}

void sub_1000C3740(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentAddReadingSessionPickerFromIndexPath:v3 duration:120.0];
}

void sub_1000C37A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentAddReadingSessionPickerFromIndexPath:v3 duration:1800.0];
}

void sub_1000C3808(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentAddReadingSessionPickerFromIndexPath:v3 duration:3600.0];
}

void sub_1000C386C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentAddReadingSessionPickerFromIndexPath:v3 duration:21600.0];
}

void sub_1000C38D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearTodaysReadingTime];
}

void sub_1000C3910(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _clearAppStoreReview];
}

void sub_1000C3950(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _moveEligibleLocalBooksToUbiquity];
}

void sub_1000C3990(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _moveUbiquityBooksBackToLocal];
}

void sub_1000C39D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAppRemoval];
}

__CFString *sub_1000C3A10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained coverCacheHashOrAdamID];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"None";
  }

  v5 = v4;

  return v4;
}

void sub_1000C3A70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentCoverCacheDumpingAdamIDCoversAlert];
}

void sub_1000C3AB0(uint64_t a1)
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  if (DistributedCenter)
  {
    CFNotificationCenterPostNotification(DistributedCenter, AMSFamilyContentDeletionNotification, 0, 0, 1u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _close:0];
}

void sub_1000C3B24(uint64_t a1)
{
  notify_post([@"MCManagedBooksChanged" UTF8String]);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _close:0];
}

void sub_1000C3B88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[BKNotificationManager sharedInstance];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C3C54;
  v5[3] = &unk_100A03B10;
  objc_copyWeak(&v6, (a1 + 32));
  [v4 requestAuthorizationWithCompletion:v5];

  objc_destroyWeak(&v6);
}

void sub_1000C3C54(uint64_t a1, int a2)
{
  v4 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000C3F0C;
  v17[3] = &unk_100A05C80;
  objc_copyWeak(&v18, (a1 + 32));
  v5 = [UIAlertAction actionWithTitle:@"Done" style:1 handler:v17];
  [v4 addAction:v5];

  if (a2)
  {
    +[UNUserNotificationCenter currentNotificationCenter];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000C3F50;
    v6 = v13[3] = &unk_100A068F8;
    v14 = v6;
    v15 = v4;
    objc_copyWeak(&v16, (a1 + 32));
    [v6 getNotificationSettingsWithCompletionHandler:v13];
    objc_destroyWeak(&v16);
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000C49C8;
    v10[3] = &unk_100A035F8;
    v11 = v4;
    objc_copyWeak(&v12, (a1 + 32));
    v7 = objc_retainBlock(v10);
    if (v7)
    {
      if (+[NSThread isMainThread])
      {
        (v7[2])(v7);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000C4A2C;
        block[3] = &unk_100A03920;
        v9 = v7;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    objc_destroyWeak(&v12);
    v6 = v11;
  }

  objc_destroyWeak(&v18);
}

void sub_1000C3ED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_1000C3F0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _close:0];
}

void sub_1000C3F50(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 authorizationStatus] == 2)
  {
    v4 = [UNNotificationAction actionWithIdentifier:@"test.action1" title:@"Action 1" options:0];
    v5 = [UNNotificationAction actionWithIdentifier:@"test.action2" title:@"Action 2" options:0];
    v23[0] = v4;
    v23[1] = v5;
    v6 = [NSArray arrayWithObjects:v23 count:2];
    v7 = [UNNotificationCategory categoryWithIdentifier:@"test.category" actions:v6 intentIdentifiers:&__NSArray0__struct options:0];

    v8 = a1[4];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000C4284;
    v18[3] = &unk_100A068A8;
    v9 = v7;
    v19 = v9;
    v20 = a1[4];
    v21 = a1[5];
    objc_copyWeak(&v22, a1 + 6);
    [v8 getNotificationCategoriesWithCompletionHandler:v18];
    objc_destroyWeak(&v22);
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000C48EC;
    v15[3] = &unk_100A068D0;
    v16 = a1[5];
    objc_copyWeak(&v17, a1 + 6);
    v10 = objc_retainBlock(v15);
    v11 = objc_retainBlock(v10);
    if (v11)
    {
      if (+[NSThread isMainThread])
      {
        (v11[2])(v11, [v3 authorizationStatus]);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000C4984;
        block[3] = &unk_100A03A58;
        v14 = v11;
        v13 = v3;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    objc_destroyWeak(&v17);
    v4 = v16;
  }
}

void sub_1000C4284(uint64_t a1, void *a2)
{
  v27 = a2;
  v3 = [v27 mutableCopy];
  [v3 addObject:*(a1 + 32)];
  v28 = v3;
  [*(a1 + 40) setNotificationCategories:v3];
  v29 = objc_alloc_init(BSUIMicaFileProvider);
  v31 = [[TUIMicaPlayer alloc] initWithPath:@"/mica/ic_ReadingMeter-Checkmark_58_v4~AMH.caar" retinaScale:v29 fileProvider:1.0];
  v32 = [v31 rootLayer];
  v4 = +[CALayer layer];
  [v32 bounds];
  [v4 setBounds:?];
  [v31 addToLayer:v4 onTop:1 gravity:kCAGravityResize];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v9 = [v4 isOpaque];
  v39.width = v6;
  v39.height = v8;
  UIGraphicsBeginImageContextWithOptions(v39, v9, 0.0);
  [v4 renderInContext:UIGraphicsGetCurrentContext()];
  image = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v10 = +[NSFileManager defaultManager];
  v11 = [v10 temporaryDirectory];
  v12 = [v11 URLByAppendingPathComponent:@"test.png"];

  v13 = +[NSFileManager defaultManager];
  v14 = [v12 path];
  v15 = UIImagePNGRepresentation(image);
  [v13 createFileAtPath:v14 contents:v15 attributes:0];

  v16 = +[NSUUID UUID];
  v17 = [v16 UUIDString];
  v37 = UNNotificationAttachmentOptionsHiddenFromDefaultExpandedViewKey;
  v38 = &__kCFBooleanTrue;
  v18 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v19 = [UNNotificationAttachment attachmentWithIdentifier:v17 URL:v12 options:v18 error:0];

  v20 = objc_opt_new();
  [v20 setTitle:@"Local Notification Test"];
  [v20 setBody:@"The request was made 1 second ago."];
  v36 = v19;
  v21 = [NSArray arrayWithObjects:&v36 count:1];
  [v20 setAttachments:v21];

  [v20 setCategoryIdentifier:@"test.category"];
  v22 = [UNTimeIntervalNotificationTrigger triggerWithTimeInterval:0 repeats:1.0];
  v23 = +[NSUUID UUID];
  v24 = [v23 UUIDString];
  v25 = [UNNotificationRequest requestWithIdentifier:v24 content:v20 trigger:v22];

  v26 = *(a1 + 40);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000C46C8;
  v33[3] = &unk_100A06880;
  v34 = *(a1 + 48);
  objc_copyWeak(&v35, (a1 + 56));
  [v26 addNotificationRequest:v25 withCompletionHandler:v33];
  objc_destroyWeak(&v35);
}

void sub_1000C46C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C4834;
  v8[3] = &unk_100A06858;
  v9 = *(a1 + 32);
  v4 = v3;
  v10 = v4;
  objc_copyWeak(&v11, (a1 + 40));
  v5 = objc_retainBlock(v8);
  if (v5)
  {
    if (+[NSThread isMainThread])
    {
      (v5[2])(v5);
    }

    else
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_1000C48DC;
      v6[3] = &unk_100A03920;
      v7 = v5;
      dispatch_async(&_dispatch_main_q, v6);
    }
  }

  objc_destroyWeak(&v11);
}

void sub_1000C4834(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v3 + 8))
  {
    v4 = @"Failed to Post Notification";
  }

  else
  {
    v4 = @"Notificaion Posted";
  }

  [v2 setTitle:v4];
  v5 = *(a1 + 40);
  if (v5)
  {
    v6 = [v5 debugDescription];
    [*(a1 + 32) setMessage:v6];
  }

  else
  {
    [*(a1 + 32) setMessage:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained presentModalViewController:*(a1 + 32) withTransition:9];
}

void sub_1000C48EC(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setTitle:@"Not Authorized"];
  v4 = [NSString stringWithFormat:@"UNNotificationSettings.authorizationStatus == %ld", a2];
  [*(a1 + 32) setMessage:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentModalViewController:*(a1 + 32) withTransition:9];
}

uint64_t sub_1000C4984(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) authorizationStatus];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void sub_1000C49C8(uint64_t a1)
{
  [*(a1 + 32) setTitle:@"Requested Authorization not Granted"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentModalViewController:*(a1 + 32) withTransition:9];
}

void sub_1000C535C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 88);
  v4 = [a2 title];
  v5 = [v3 indexOfObject:v4];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setInteger:v5 forKey:kOverrideLightLevel];

    *(*(a1 + 32) + 80) = v5;
    v7 = [*(a1 + 32) tableView];
    v9 = *(a1 + 40);
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [v7 reloadRowsAtIndexPaths:v8 withRowAnimation:100];

    if ([*(*(a1 + 32) + 96) isOn])
    {
      [*(a1 + 32) _emulateCurrentLightLevelChange:v5];
    }
  }
}

void sub_1000C5574(uint64_t a1)
{
  v2 = +[BCLightLevelController sharedInstance];
  [v2 emulateCurrentLightLevelChange:*(a1 + 40)];

  v3 = [*(a1 + 32) navigationController];
  [v3 setNavigationBarHidden:1];

  v4 = [*(a1 + 32) navigationController];
  [v4 setNavigationBarHidden:0];
}

void sub_1000C5750(id a1, UIAlertAction *a2)
{
  v2 = +[BRCConfigurationManager sharedInstance];
  [v2 setValue:@"none" forKey:BRCBooksDefaultsKeyProductPageAlsoAvailableAsType inNamespace:BRCBooksDefaultsNamespace source:1];
}

void sub_1000C57BC(id a1, UIAlertAction *a2)
{
  v2 = +[BRCConfigurationManager sharedInstance];
  [v2 setValue:@"type-1" forKey:BRCBooksDefaultsKeyProductPageAlsoAvailableAsType inNamespace:BRCBooksDefaultsNamespace source:1];
}

void sub_1000C5828(id a1, UIAlertAction *a2)
{
  v2 = +[BRCConfigurationManager sharedInstance];
  [v2 setValue:@"type-2" forKey:BRCBooksDefaultsKeyProductPageAlsoAvailableAsType inNamespace:BRCBooksDefaultsNamespace source:1];
}

void sub_1000C5A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C5AB4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setKeyboardType:11];
  [v3 setClearButtonMode:1];
  [v3 setText:*(a1 + 32)];
}

void sub_1000C5B18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained textFields];
  v4 = [v3 firstObject];
  v5 = [v4 text];

  v6 = [v5 length];
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v5 forKey:kAllowsCoverCacheImagesLoggingUserDefaultsKey];
    v6 = v5;
  }

  else
  {
    [v7 removeObjectForKey:kAllowsCoverCacheImagesLoggingUserDefaultsKey];
  }

  [*(a1 + 32) setCoverCacheHashOrAdamID:v6];
  v9 = [*(a1 + 32) tableView];
  v11 = *(a1 + 40);
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [v9 reloadRowsAtIndexPaths:v10 withRowAnimation:100];
}

void sub_1000C5FCC(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C6088;
  block[3] = &unk_100A03A30;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000C6088(uint64_t a1)
{
  v2 = [NSString stringWithFormat:@"Connection error: %@", *(a1 + 40)];
  [*(a1 + 32) setMessage:v2];

  v5 = [*(a1 + 48) view];
  v3 = [v5 window];
  v4 = [v3 rootViewController];
  [v4 presentViewController:*(a1 + 32) animated:1 completion:0];
}

void sub_1000C6140(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C61FC;
  block[3] = &unk_100A03A30;
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, block);
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000C61FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"Clear failed with error: %@", v2];
  }

  else
  {
    v3 = @"Clear success.";
  }

  v7 = v3;
  [*(a1 + 40) setMessage:v3];
  v4 = [*(a1 + 48) view];
  v5 = [v4 window];
  v6 = [v5 rootViewController];
  [v6 presentViewController:*(a1 + 40) animated:1 completion:0];
}

void *sub_1000C8B68(void *result)
{
  if (!--*(*(result[5] + 8) + 24))
  {
    v2 = result;
    v3 = +[AETestDriver shared];
    [v3 postEvent:kBETestDriverOpenAnimationZoomEnd sender:v2[4]];

    v4 = +[AETestDriver shared];
    [v4 postEvent:kBETestDriverOpenAnimationEnd sender:v2[4]];

    kdebug_trace();
    v5 = v2[4];

    return [v5 animationsDidFinish];
  }

  return result;
}

void sub_1000C8C3C(uint64_t a1)
{
  [*(a1 + 32) backgroundToAlpha];
  v3 = v2;
  v4 = [*(a1 + 32) backgroundView];
  [v4 setAlpha:v3];
}

void sub_1000C8CA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 coverToFrame];
  [v2 moveCoverToFrame:?];
  [*(a1 + 32) audiobookToCenter];
  v4 = v3;
  v6 = v5;
  v7 = [*(a1 + 40) view];
  [v7 setCenter:{v4, v6}];

  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 audiobookToTransform];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  v9 = [*(a1 + 40) view];
  v10[0] = v11;
  v10[1] = v12;
  v10[2] = v13;
  [v9 setTransform:v10];
}

void sub_1000C8D64(uint64_t a1)
{
  [*(a1 + 32) bookContainerToAlpha];
  v3 = v2;
  v4 = [*(a1 + 32) bookContainerView];
  [v4 setAlpha:v3];

  v5 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    [v5 coverToAlpha];
    v7 = v6;
    v12 = [*(a1 + 32) coverContainerView];
    [v12 setAlpha:v7];
  }

  else
  {
    [v5 coverShadowToAlpha];
    v9 = v8;
    v10 = [*(a1 + 32) coverShadowView];
    [v10 setAlpha:v9];

    if ((*(a1 + 41) & 1) == 0)
    {
      v11 = *(a1 + 32);
      [v11 coverControlViewToShadowOpacity];

      [v11 _setLayerShadowOpacity:?];
    }
  }
}

void sub_1000C8E74(uint64_t a1)
{
  [*(a1 + 32) coverToCornerRadius];
  v3 = v2;
  v4 = [*(a1 + 32) coverImageView];
  [v4 _setContinuousCornerRadius:v3];
}

id sub_1000C8EDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 controlsToAlpha];

  return [v1 _setControlsAlpha:?];
}

id sub_1000C8F18(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    [*(a1 + 32) coverToAlpha];
    v3 = v2;
    v4 = [*(a1 + 32) coverContainerView];
    [v4 setAlpha:v3];
  }

  v5 = *(a1 + 32);
  [v5 toolbarToAlpha];

  return [v5 _setToolbarAlpha:?];
}

void sub_1000C8F90(uint64_t a1)
{
  v1 = [*(a1 + 32) toViewController];
  [v1 setNeedsWhitePointAdaptivityStyleUpdate];
}

id sub_1000C9A14(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 40);

  return [v6 setFrame:{v2, v3, v4, v5}];
}

id sub_1000C9A60(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) window];
  [v2 setUserInteractionEnabled:1];

  v3 = *(a1 + 48);

  return [v3 completeTransition:1];
}

void sub_1000C9FC0(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if ([*(a1 + 32) count] == 1)
  {
    v3 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v4 = [v3 isExplicit];
    v5 = [v4 BOOLValue];

    if (v5)
    {
      v6 = +[BURestrictionsProvider sharedInstance];
      v7 = [v6 isExplicitContentAllowed];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) trashButton];
  [v9 setEnabled:v8];

  v10 = [*(a1 + 40) addButton];
  [v10 setEnabled:v2 != 0];

  v11 = [*(a1 + 40) moreButton];
  [v11 setEnabled:v7];
}

void sub_1000CA884(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_100AF7558;
  qword_100AF7558 = v1;
}

void sub_1000CBE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CBE84(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000CBF40;
    v6[3] = &unk_100A03788;
    v7 = WeakRetained;
    v8 = v3;
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void sub_1000CBF40(uint64_t a1)
{
  [*(a1 + 32) _updateLibraryAsset];
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

void sub_1000CBFA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reviewMorePressed];
}

void sub_1000CF4BC(uint64_t a1)
{
  [*(a1 + 32) isRTL];
  IMRectFlippedForRTL();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) checkmarkView];
  [v10 setFrame:{v3, v5, v7, v9}];
}

void sub_1000D0040(uint64_t a1)
{
  v2 = [*(a1 + 32) coverView];
  v3 = [v2 coverLayer];
  [v3 setAnimateFrameChange:0];

  v9 = [*(a1 + 32) coverView];
  v4 = [v9 coverLayer];
  v5 = *(a1 + 32);
  v6 = v5[9];
  [v5 coverArea];
  [v4 setLibraryAsset:v6 size:{v7, v8}];
}

void sub_1000D11E8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained audiobookStatus];
  v3 = [v2 assetAudiobookStatusIsPlaying];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 audiobookControl];
  [v5 setPlaying:v3];
}

void sub_1000D1278(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained audiobookStatus];
  [v2 assetAudiobookStatusTrackProgress];
  v4 = v3;
  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 audiobookControl];
  [v6 setProgress:v4];
}

id sub_1000D1310(uint64_t a1)
{
  [*(a1 + 32) configureViewsBasedOnState];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

id sub_1000D134C(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryDownloadStatus];
  [v2 progressValue];
  v4 = v3;
  v5 = [*(a1 + 32) downloadProgressButton];
  *&v6 = v4;
  [v5 setProgress:v6];

  [*(a1 + 32) configureViewsBasedOnState];
  v7 = *(a1 + 32);

  return [v7 setNeedsLayout];
}

id sub_1000D16A4()
{
  v0 = +[NSCalendar currentCalendar];
  v1 = qword_100AF7588;
  qword_100AF7588 = v0;

  v2 = +[NSLocale currentLocale];
  v3 = qword_100AF7590;
  qword_100AF7590 = v2;

  v4 = objc_alloc_init(NSDateFormatter);
  v5 = qword_100AF7568;
  qword_100AF7568 = v4;

  [qword_100AF7568 setDateStyle:2];
  [qword_100AF7568 setLocalizedDateFormatFromTemplate:@"MMM d"];
  v6 = objc_alloc_init(NSDateFormatter);
  v7 = qword_100AF7570;
  qword_100AF7570 = v6;

  [qword_100AF7570 setDateStyle:2];
  [qword_100AF7570 setLocalizedDateFormatFromTemplate:@"yyyy"];
  v8 = objc_alloc_init(NSDateFormatter);
  v9 = qword_100AF7578;
  qword_100AF7578 = v8;

  v10 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [qword_100AF7578 setTimeZone:v10];

  [qword_100AF7578 setDateStyle:2];
  [qword_100AF7578 setFormattingContext:2];
  v11 = qword_100AF7578;

  return [v11 setLocalizedDateFormatFromTemplate:@"yyyy"];
}

void sub_1000D17E8(id a1)
{
  v3 = +[NSBundle mainBundle];
  v1 = [v3 localizedStringForKey:@"%1$@\n%2$@" value:&stru_100A30A68 table:0];
  v2 = qword_100AF7580;
  qword_100AF7580 = v1;
}

id *sub_1000D2368(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = [result[4] storageProvider];
    v5 = [v3[4] libraryAsset];
    v6 = [v5 permanentOrTemporaryAssetID];
    [v4 storeValue:&__kCFBooleanFalse forKey:@"kStarRatedThisSession" forConsumer:v6];

    v7 = v3[4];

    return [v7 updateRatingAndReview];
  }

  return result;
}

id sub_1000D2D24(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 mutableCopy];
    v19[0] = @"entryID";
    v19[1] = @"animateFromRefId";
    v20[0] = @"BKBookPresentingAnimateFromUid";
    v20[1] = @"BKBookPresentingAnimateFromRefId";
    v19[2] = @"animateFromRefInstance";
    v20[2] = @"BKBookPresentingAnimateFromRefInstance";
    [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v2 objectForKeyedSubscript:{v9, v14}];
          if (v10)
          {
            v11 = [v4 objectForKeyedSubscript:v9];
            [v3 setObject:v10 forKeyedSubscript:v11];
            [v3 removeObjectForKey:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = +[NSMutableDictionary dictionary];
  }

  v12 = [v3 copy];

  return v12;
}

void sub_1000D48B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000D48C8(uint64_t a1)
{
  result = [*(a1 + 32) contentRectForBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

AMSPromise *__cdecl sub_1000D49E8(id a1, AMSUserNotificationAuthorizationResult *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = BSUIWelcomeScreenLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10078E1D8(v5);
    }
  }

  v7 = [[AMSPromiseResult alloc] initWithResult:v4 error:v5];
  v8 = [AMSPromise promiseWithPromiseResult:v7];

  return v8;
}

void sub_1000D4F1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4FC8;
  v7[3] = &unk_100A03A58;
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_1000D4FC8(uint64_t a1)
{
  v2 = +[NSUserDefaults bu_groupUserDefaults];
  [v2 setBool:1 forKey:@"BKWelcomeNotificationWarmingItem.warmingSheetShown"];
  [v2 synchronize];
  v3 = objc_retainBlock(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0);
  }

  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  if (v6)
  {
    v7 = BSUIWelcomeScreenLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10078E2E4(v5);
    }
  }
}

id sub_1000D56DC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) coverContainerView];
  [v3 setAlpha:v2];

  [*(a1 + 32) moveCoverToFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v4 = *(a1 + 80);
  v5 = [*(a1 + 32) bookshelfTintView];
  [v5 setAlpha:v4];

  v6 = *(a1 + 32);
  v7 = *(a1 + 88);

  return [v6 setBookshelfAlpha:v7];
}

void sub_1000D576C(uint64_t a1)
{
  v1 = [*(a1 + 32) toViewController];
  [v1 setNeedsWhitePointAdaptivityStyleUpdate];
}

uint64_t sub_1000D64C4(uint64_t result)
{
  if (!--*(*(*(result + 40) + 8) + 24))
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

id sub_1000D6500(uint64_t a1)
{
  [*(a1 + 32) moveCoverToFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 272) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  [*(*(a1 + 32) + 280) setCenter:{*(a1 + 104), *(a1 + 112)}];
  v2 = *(*(a1 + 32) + 280);
  v3 = *(a1 + 136);
  v5[0] = *(a1 + 120);
  v5[1] = v3;
  v5[2] = *(a1 + 152);
  return [v2 setTransform:v5];
}

void sub_1000D65A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) bookshelfTintView];
  [v2 setAlpha:v1];
}

void sub_1000D6614(uint64_t a1)
{
  v1 = [*(a1 + 32) toViewController];
  [v1 setNeedsWhitePointAdaptivityStyleUpdate];
}

void sub_1000D6DF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[19];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D6E9C;
  v7[3] = &unk_100A03788;
  v8 = v4;
  v9 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t sub_1000D6E9C(uint64_t a1)
{
  [*(a1 + 32) cb_persistInfoToDisk];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_1000D7170(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) allKeys];
  v3 = *(*(a1 + 32) + 128);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_1000D7244;
  v8 = &unk_100A03788;
  v9 = v2;
  v10 = *(a1 + 40);
  v4 = v2;
  dispatch_async(v3, &v5);
  [*(a1 + 32) iq_setUbiquityDocumentMonitoringEnabled:{1, v5, v6, v7, v8}];
}

void sub_1000D7244(uint64_t a1)
{
  kdebug_trace();
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fetchAssetIDsWithCompletion: Returning %ld assetIDs.", &v6, 0xCu);
  }

  v4 = objc_retainBlock(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, *(a1 + 32), 0);
  }
}

void sub_1000D741C(uint64_t a1)
{
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v24;
    *&v5 = 141558274;
    v18 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [*(*(a1 + 40) + 80) objectForKeyedSubscript:{v10, v18}];
        if (v11)
        {
          ++v7;
          [v2 addObject:v11];
        }

        else
        {
          v12 = BKLibraryDataSourceUbiquityLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v28 = 1752392040;
            v29 = 2112;
            v30 = v10;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "fetchAssetsWithIDs: Asset not found. assetID: %{mask.hash}@", buf, 0x16u);
          }

          v13 = +[NSNull null];
          [v2 addObject:v13];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v16 = *(v15 + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7694;
  block[3] = &unk_100A06CD8;
  block[4] = v15;
  v20 = v2;
  v22 = v7;
  v21 = v14;
  v17 = v2;
  dispatch_async(v16, block);
}

void sub_1000D7694(uint64_t a1)
{
  kdebug_trace();
  [*(a1 + 32) _addAssetsToCoverCacheManager:*(a1 + 40)];
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "fetchAssetsWithIDs: Returning %ld assets.", &v6, 0xCu);
  }

  v4 = objc_retainBlock(*(a1 + 48));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, *(a1 + 40), 0);
  }
}

void sub_1000D78DC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 56) objectForKeyedSubscript:?];
  }

  else
  {
    v2 = 0;
  }

  v3 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = NSStringFromCGSize(*(a1 + 64));
    v6 = *(a1 + 48);
    *buf = 141559554;
    v19 = 1752392040;
    v20 = 2112;
    v21 = v4;
    v22 = 2114;
    v23 = v5;
    v24 = 2160;
    v25 = 1752392040;
    v26 = 2112;
    v27 = v6;
    v28 = 2160;
    v29 = 1752392040;
    v30 = 2112;
    v31 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "bookCoverForLibraryAssetProperties: assetID: %{mask.hash}@, size: %{public}@, title: %{mask.hash}@ url: %{mask.hash}@", buf, 0x48u);
  }

  if ([*(a1 + 40) skipThumbnailGeneration])
  {
    v7 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 141558274;
      v19 = 1752392040;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "bookCoverForLibraryAssetProperties: Skipping thumbnail request. assetID: %{mask.hash}@", buf, 0x16u);
    }

    v9 = objc_retainBlock(*(a1 + 56));
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0, 0);
    }
  }

  else
  {
    v11 = [*(a1 + 40) coverImageHelper];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000D7B74;
    v14[3] = &unk_100A06D28;
    v13 = *(a1 + 32);
    v12 = v13.i64[0];
    v15 = vextq_s8(v13, v13, 8uLL);
    v16 = v2;
    v17 = *(a1 + 56);
    [v11 coverImageFromURL:v16 completion:v14];
  }
}

void sub_1000D7B74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D7C78;
  block[3] = &unk_100A06D00;
  v12 = v6;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v8 = *(a1 + 56);
  v15 = v5;
  v16 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t sub_1000D7C78(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10078E41C();
    }
  }

  v3 = objc_retainBlock(*(a1 + 64));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, *(a1 + 56), 0, *(a1 + 32));
  }

  return kdebug_trace();
}

void sub_1000D7EBC(uint64_t a1)
{
  v2 = (a1 + 32);
  v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *v2;
  v3 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v3)
  {
    v4 = *v28;
    do
    {
      v5 = 0;
      do
      {
        if (*v28 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v27 + 1) + 8 * v5);
        v21 = 0;
        v22 = &v21;
        v23 = 0x3032000000;
        v24 = sub_100027354;
        v25 = sub_1000275F0;
        v26 = 0;
        v7 = *(a1 + 40);
        v8 = *(v7 + 48);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000D817C;
        block[3] = &unk_100A04950;
        block[5] = v6;
        block[6] = &v21;
        block[4] = v7;
        dispatch_sync(v8, block);
        if (v22[5])
        {
          v9 = *(a1 + 40);
          if (*(a1 + 56) == 1)
          {
            if ([v9 _deleteFromAllDevicesURL:?])
            {
              [v14 addObject:v6];
            }
          }

          else
          {
            [v9 _evictFromDeviceURL:? assetID:?];
          }
        }

        _Block_object_dispose(&v21, 8);

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v3);
  }

  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = *(v11 + 128);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D81CC;
  v16[3] = &unk_100A049A0;
  v17 = v14;
  v18 = v11;
  v19 = v10;
  v13 = v14;
  dispatch_async(v12, v16);
}

void sub_1000D815C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D817C(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000D81CC(id *a1)
{
  if ([a1[4] count])
  {
    v2 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [a1[4] count];
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "deleteAssets: Unclaiming assets. count: %ld", &v6, 0xCu);
    }

    [a1[5] _unclaimAssetIDs:a1[4]];
  }

  v4 = objc_retainBlock(a1[6]);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

void sub_1000D8474(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:*(a1 + 40)];
  v5 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    *buf = 141559810;
    v24 = 1752392040;
    v25 = 2112;
    v26 = v6;
    v27 = 2160;
    v28 = 1752392040;
    v29 = 2112;
    v30 = v7;
    v31 = 2160;
    v32 = 1752392040;
    v33 = 2112;
    v34 = v2;
    v35 = 2160;
    v36 = 1752392040;
    v37 = 2112;
    v38 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "resolveLibraryAsset: assetID: %{mask.hash}@ title: %{mask.hash}@ url: %{mask.hash}@ counterpartURL: %{mask.hash}@", buf, 0x52u);
  }

  if (v3)
  {
    v8 = v3;

    v2 = v8;
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D869C;
  block[3] = &unk_100A06D78;
  v16 = v3;
  v17 = v2;
  v18 = v10;
  v19 = v9;
  v22 = *(a1 + 56);
  v20 = *(a1 + 48);
  v21 = v4;
  v12 = v4;
  v13 = v2;
  v14 = v3;
  dispatch_async(v11, block);
}

uint64_t sub_1000D869C(uint64_t a1)
{
  if (*(a1 + 32) || [*(a1 + 40) bc_isDownloaded])
  {
    v50 = 0;
    v2 = [*(a1 + 40) path];
    v3 = +[NSFileManager defaultManager];
    if (![v3 fileExistsAtPath:v2 isDirectory:&v50])
    {
      goto LABEL_25;
    }

    v4 = [BKAssetUtilities contentTypeForPath:v2];
    if ((v50 & 1) != 0 || v4 == 3)
    {
      v14 = *(a1 + 72) == 0;
      v15 = BKLibraryDataSourceUbiquityLog();
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10078E664();
        }

        v30 = *(*(a1 + 48) + 128);
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_1000D8EB0;
        v45[3] = &unk_100A03920;
        v46 = *(a1 + 80);
        dispatch_async(v30, v45);
        v5 = v46;
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [*(a1 + 72) assetID];
          v18 = [*(a1 + 72) url];
          *buf = 141558786;
          v52 = 1752392040;
          v53 = 2112;
          v54 = v17;
          v55 = 2160;
          v56 = 1752392040;
          v57 = 2112;
          v58 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "resolveLibraryAsset: No action required. assetID: %{mask.hash}@ url: %{mask.hash}@", buf, 0x2Au);
        }

        v19 = *(*(a1 + 48) + 128);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000D8E4C;
        block[3] = &unk_100A03A58;
        v49 = *(a1 + 80);
        v48 = *(a1 + 72);
        dispatch_async(v19, block);

        v5 = v49;
      }

      goto LABEL_28;
    }

    if ([BUZipFileArchive isZipArchiveAtURL:*(a1 + 40) error:0])
    {
      v5 = [*(a1 + 48) _counterpartURLForURL:*(a1 + 40)];
      v6 = objc_opt_new();
      [v6 setAssetID:*(a1 + 56)];
      [v6 setDestURL:v5];
      [v6 setCompletion:*(a1 + 80)];
      v7 = objc_opt_new();
      [v7 setSourceFilePath:v2];
      v8 = [v5 path];
      [v7 setDestinationFilePath:v8];

      [v7 setSourceFileType:1];
      [v7 setUseFileCoordination:1];
      [v7 setFixFilePermissions:1];
      [v7 setDelegate:*(a1 + 48)];
      [v7 setUserContext:v6];
      v9 = BKLibraryDataSourceUbiquityLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 56);
        v11 = *(a1 + 64);
        v12 = *(a1 + 40);
        *buf = 141559810;
        v52 = 1752392040;
        v53 = 2112;
        v54 = v10;
        v55 = 2160;
        v56 = 1752392040;
        v57 = 2112;
        v58 = v11;
        v59 = 2160;
        v60 = 1752392040;
        v61 = 2112;
        v62 = v12;
        v63 = 2160;
        v64 = 1752392040;
        v65 = 2112;
        v66 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "resolveLibraryAsset: Uncompressing. assetID: %{mask.hash}@ title: %{mask.hash}@ url: %{mask.hash}@ destURL: %{mask.hash}@", buf, 0x52u);
      }

      v13 = [*(a1 + 48) uncompressQueue];
      [v13 addOperation:v7];
    }

    else
    {
LABEL_25:
      v32 = BKLibraryDataSourceUbiquityLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_10078E5EC();
      }

      v33 = *(*(a1 + 48) + 128);
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_1000D8F48;
      v43[3] = &unk_100A03920;
      v44 = *(a1 + 80);
      dispatch_async(v33, v43);
      v5 = v44;
    }

LABEL_28:

    return kdebug_trace();
  }

  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *(v21 + 144);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000D8FE0;
  v40[3] = &unk_100A03A30;
  v40[4] = v21;
  v41 = v20;
  v42 = *(a1 + 56);
  dispatch_async(v22, v40);
  v23 = *(a1 + 72) == 0;
  v24 = BKLibraryDataSourceUbiquityLog();
  v25 = v24;
  if (v23)
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10078E504();
    }

    v31 = *(*(a1 + 48) + 128);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000D9054;
    v35[3] = &unk_100A03920;
    v29 = &v36;
    v36 = *(a1 + 80);
    dispatch_async(v31, v35);
  }

  else
  {
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [*(a1 + 72) assetID];
      v27 = [*(a1 + 72) url];
      *buf = 141558786;
      v52 = 1752392040;
      v53 = 2112;
      v54 = v26;
      v55 = 2160;
      v56 = 1752392040;
      v57 = 2112;
      v58 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "resolveLibraryAsset: Download required. assetID: %{mask.hash}@ url: %{mask.hash}@", buf, 0x2Au);
    }

    v28 = *(*(a1 + 48) + 128);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000D8FF0;
    v37[3] = &unk_100A03A58;
    v39 = *(a1 + 80);
    v38 = *(a1 + 72);
    dispatch_async(v28, v37);

    v29 = &v39;
  }

  return kdebug_trace();
}

void sub_1000D8E4C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), 1, 0);
    v2 = v3;
  }
}

void sub_1000D8EB0(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v3 = v1;
    v2 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorMissingUbiquityMetadata userInfo:0];
    v3[2](v3, 0, 1, v2);

    v1 = v3;
  }
}

void sub_1000D8F48(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v3 = v1;
    v2 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorMissingPath userInfo:0];
    v3[2](v3, 0, 1, v2);

    v1 = v3;
  }
}

void sub_1000D8FF0(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), 1, 0);
    v2 = v3;
  }
}

void sub_1000D9054(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v3 = v1;
    v2 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorMissingUbiquityMetadata userInfo:0];
    v3[2](v3, 0, 1, v2);

    v1 = v3;
  }
}

void sub_1000D924C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 80) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(*(a1 + 32) + 128);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D93B8;
    block[3] = &unk_100A03788;
    v5 = &v11;
    v11 = v2;
    v12 = *(a1 + 48);
    dispatch_async(v4, block);
  }

  else
  {
    v6 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10078E718();
    }

    v7 = *(*(a1 + 32) + 128);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000D94E0;
    v8[3] = &unk_100A03920;
    v5 = &v9;
    v9 = *(a1 + 48);
    dispatch_async(v7, v8);
  }
}

void sub_1000D93B8(uint64_t a1)
{
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) assetID];
    v4 = [*(a1 + 32) url];
    v7 = 141558786;
    v8 = 1752392040;
    v9 = 2112;
    v10 = v3;
    v11 = 2160;
    v12 = 1752392040;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "assetForLibraryAsset: Returning ubiquityAssest. assetID: %{mask.hash}@ url: %{mask.hash}@", &v7, 0x2Au);
  }

  v5 = objc_retainBlock(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, *(a1 + 32), 0);
  }
}

void sub_1000D94E0(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v3 = v1;
    v2 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorMissingUbiquityMetadata userInfo:0];
    v3[2](v3, 0, v2);

    v1 = v3;
  }
}

void sub_1000D9674(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  v3 = BKLibraryDataSourceUbiquityLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      *buf = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v2;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "updateAsset: userEditedTitle:%@ url: %@ assetID:%@", buf, 0x20u);
    }

    v7 = *(*(a1 + 32) + 152);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000D97F8;
    v8[3] = &unk_100A03440;
    v9 = *(a1 + 48);
    v10 = v2;
    dispatch_async(v7, v8);

    v4 = v9;
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10078E7C4();
  }
}

void sub_1000D97F8(uint64_t a1)
{
  v2 = +[BKUbiquityMetadataHelper sharedInstance];
  [v2 setUbiquityMetadataTitle:*(a1 + 32) forURL:*(a1 + 40)];
}

void sub_1000D99B0(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100027354;
  v14 = sub_1000275F0;
  v15 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D9BA8;
  block[3] = &unk_100A036C0;
  block[4] = v2;
  block[5] = &v10;
  dispatch_sync(v3, block);
  if ([v11[5] count])
  {
    v4 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v11[5] count];
      *buf = 134217984;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ubiquityStatusChangedToAvailableWithNewIdentity: Removing assets. count: %ld", buf, 0xCu);
    }

    [*(a1 + 32) _unclaimAssetIDs:v11[5]];
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D9BF8;
  v8[3] = &unk_100A033C8;
  v8[4] = v6;
  dispatch_sync(v7, v8);
  _Block_object_dispose(&v10, 8);
}

void sub_1000D9B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D9BA8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000D9CC0(uint64_t a1)
{
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "didLoadWithItems: count: %ld", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = sub_100027354;
  v31 = sub_1000275F0;
  v32 = 0;
  v4 = *(a1 + 40);
  v5 = *(v4 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DA0DC;
  block[3] = &unk_100A036C0;
  block[4] = v4;
  block[5] = &buf;
  dispatch_sync(v5, block);
  v6 = [*(a1 + 32) valueForKey:@"url"];
  v7 = [NSSet setWithArray:v6];
  v8 = [NSMutableSet setWithSet:*(*(&buf + 1) + 40)];
  [v8 minusSet:v7];
  v21 = v8;
  v9 = [NSMutableSet setWithSet:v7];
  [v9 minusSet:*(*(&buf + 1) + 40)];
  v10 = [NSMutableSet setWithSet:v7];
  [v10 intersectSet:*(*(&buf + 1) + 40)];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000DA158;
  v25[3] = &unk_100A06DA0;
  v20 = v9;
  v26 = v20;
  v11 = [v6 indexesOfObjectsPassingTest:v25];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000DA164;
  v23[3] = &unk_100A06DA0;
  v12 = v10;
  v24 = v12;
  v13 = [v6 indexesOfObjectsPassingTest:v23];
  v14 = [*(a1 + 32) objectsAtIndexes:v11];
  v15 = [*(a1 + 32) objectsAtIndexes:v13];
  v16 = *(a1 + 40);
  v17 = [v21 allObjects];
  [v16 mq_itemsDidBecomeUnavailable:v17];

  [*(a1 + 40) mq_itemsDidChange:v15];
  [*(a1 + 40) mq_itemsDidChange:v14];
  [*(a1 + 40) setHandledInitialMetadataQuery:1];
  v18 = *(a1 + 40);
  v19 = *(v18 + 128);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000DA170;
  v22[3] = &unk_100A033C8;
  v22[4] = v18;
  dispatch_async(v19, v22);
  kdebug_trace();

  _Block_object_dispose(&buf, 8);
}

void sub_1000DA0DC(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 56) allValues];
  v2 = [NSSet setWithArray:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000DA170(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 136);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) didHandleInitialQuery];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

id sub_1000DA2F8(uint64_t a1)
{
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "itemsDidBecomeAvailable: count: %ld", &v5, 0xCu);
  }

  return [*(a1 + 40) mq_itemsDidBecomeAvailable:*(a1 + 32)];
}

void sub_1000DA444(uint64_t a1)
{
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "itemsDidBecomeUnavailable: count: %ld", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) valueForKey:@"url"];
  [v4 mq_itemsDidBecomeUnavailable:v5];
}

id sub_1000DA5B0(uint64_t a1)
{
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "itemsDidChange: count: %ld", &v5, 0xCu);
  }

  return [*(a1 + 40) mq_itemsDidChange:*(a1 + 32)];
}

void sub_1000DAAF0(uint64_t a1)
{
  v2 = [*(a1 + 32) umq_metadataDictsFromUbiquityDocumentItems:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 152);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DAB98;
  v6[3] = &unk_100A03440;
  v7 = v2;
  v8 = v3;
  v5 = v2;
  dispatch_async(v4, v6);
}

void sub_1000DAB98(uint64_t a1)
{
  v21 = +[NSMutableArray array];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v2)
  {
    v3 = *v39;
    v4 = BCMetadataXattrAssetID;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v39 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v38 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:v4];
        v32 = 0;
        v33 = &v32;
        v34 = 0x3032000000;
        v35 = sub_100027354;
        v36 = sub_1000275F0;
        v37 = 0;
        v8 = *(a1 + 40);
        v9 = *(v8 + 48);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000DAF64;
        block[3] = &unk_100A04950;
        block[5] = v6;
        block[6] = &v32;
        block[4] = v8;
        dispatch_sync(v9, block);
        if (v33[5])
        {
          [v21 addObject:?];
          v10 = *(a1 + 40);
          v11 = *(v10 + 48);
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_1000DAFB4;
          v29[3] = &unk_100A03440;
          v29[4] = v10;
          v30 = v7;
          dispatch_async(v11, v29);
        }

        else
        {
          v12 = BKLibraryDataSourceUbiquityLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_10078E834(&buf, v28, v12);
          }
        }

        _Block_object_dispose(&v32, 8);
      }

      v2 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v2);
  }

  if ([v21 count])
  {
    v14 = *(a1 + 40);
    v13 = (a1 + 40);
    [v14 p_schedulePersistInfoToDisk];
    v15 = *(*v13 + 128);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000DAFC0;
    v24[3] = &unk_100A03440;
    v16 = v21;
    v17 = *v13;
    v25 = v16;
    v26 = v17;
    dispatch_async(v15, v24);
    v18 = *v13;
    v19 = *(*v13 + 128);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000DB088;
    v22[3] = &unk_100A03440;
    v22[4] = v18;
    v23 = v16;
    dispatch_async(v19, v22);
  }

  kdebug_trace();
}

void sub_1000DAF64(uint64_t a1)
{
  v2 = [*(a1 + 32) iq_createUbiquityAssetFromMetadataDict:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000DAFC0(uint64_t a1)
{
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidBecomeAvailable: Adding %ld assets.", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) libraryManager];
  [v4 libraryDataSource:*(a1 + 40) addedAssets:*(a1 + 32)];
}

void sub_1000DB260(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v13;
    *&v4 = 141558274;
    v11 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [*(*(a1 + 40) + 72) objectForKeyedSubscript:{v8, v11, v12}];
        if ([v9 length])
        {
          [*(a1 + 48) addObject:v9];
        }

        else
        {
          v10 = BKLibraryDataSourceUbiquityLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = v11;
            v17 = 1752392040;
            v18 = 2112;
            v19 = v8;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "mq_itemsDidBecomeUnavailable: No asset for url: %{mask.hash}@", buf, 0x16u);
          }
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v5);
  }
}

id sub_1000DB40C(uint64_t a1)
{
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "mq_itemsDidBecomeUnavailable: Removing %ld assets.", &v5, 0xCu);
  }

  return [*(a1 + 40) _unclaimAssetIDs:*(a1 + 32)];
}

void sub_1000DB788(uint64_t a1)
{
  v2 = [*(a1 + 32) umq_metadataDictsFromUbiquityDocumentItems:*(a1 + 40)];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000DB830;
  v4[3] = &unk_100A03440;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_1000DB830(uint64_t a1)
{
  v2 = +[NSSet set];
  v3 = +[BKAppDelegate delegate];
  v4 = [v3 appLaunchCoordinator];
  v5 = [v4 appLaunchCoordinatorIsConditionSatisfied:6];

  if (v5)
  {
    v6 = +[BKAppDelegate sceneManager];
    v7 = [v6 bookPresenter];
    v8 = [v7 bookPresenterCurrentlyOpenBooks];
    v9 = [v8 valueForKey:@"assetPresenterAssetID"];
    v10 = [NSSet setWithArray:v9];

    v2 = v10;
  }

  v11 = *(*(a1 + 32) + 152);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB9B0;
  block[3] = &unk_100A03A30;
  v12 = *(a1 + 40);
  v13 = *(a1 + 32);
  v16 = v12;
  v17 = v13;
  v18 = v2;
  v14 = v2;
  dispatch_async(v11, block);
}

void sub_1000DB9B0(id *a1)
{
  v54 = objc_opt_new();
  v56 = +[NSMutableArray array];
  v57 = +[NSMutableArray array];
  v53 = +[NSMutableArray array];
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  obj = a1[4];
  v62 = [obj countByEnumeratingWithState:&v114 objects:v126 count:16];
  v2 = &unk_100A03440;
  if (v62)
  {
    v60 = BCMetadataXattrAssetID;
    v61 = *v115;
    do
    {
      v3 = 0;
      do
      {
        if (*v115 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v114 + 1) + 8 * v3);
        v5 = [v4 objectForKeyedSubscript:v60];
        v108 = 0;
        v109 = &v108;
        v110 = 0x3032000000;
        v111 = sub_100027354;
        v112 = sub_1000275F0;
        v113 = 0;
        v102 = 0;
        v103 = &v102;
        v104 = 0x3032000000;
        v105 = sub_100027354;
        v106 = sub_1000275F0;
        v107 = 0;
        v96 = 0;
        v97 = &v96;
        v98 = 0x3032000000;
        v99 = sub_100027354;
        v100 = sub_1000275F0;
        v101 = 0;
        v6 = a1[5];
        v7 = *(v6 + 6);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000DC84C;
        block[3] = &unk_100A06DC8;
        v93 = &v108;
        block[4] = v6;
        v8 = v5;
        v91 = v8;
        v92 = v4;
        v94 = &v102;
        v95 = &v96;
        dispatch_sync(v7, block);
        if ([a1[6] containsObject:v8] && objc_msgSend(a1[5], "_assetHasChanged:updatedAsset:", v109[5], v97[5]))
        {
          [v54 addObject:v8];
        }

        [a1[5] _updateUbiquityAssetID:v8 withMetadata:v4];
        if (v103[5] || v97[5])
        {
          if (!v109[5])
          {
            [v56 addObject:?];
            goto LABEL_31;
          }

          if (([v97[5] isDifferentPath:v109[5]] & 1) != 0 || !objc_msgSend(v97[5], "isDifferentFilename:", v109[5]))
          {
            if (![v97[5] isSameAsAsset:v109[5]])
            {
              v20 = BKLibraryDataSourceUbiquityLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v22 = [v97[5] url];
                *buf = 141558786;
                v119 = 1752392040;
                v120 = 2112;
                v121 = v8;
                v122 = 2160;
                v123 = 1752392040;
                v124 = 2112;
                v125 = v22;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidChange: Fundamental Difference found. assetID: %{mask.hash}@  url: %{mask.hash}@.", buf, 0x2Au);
              }

LABEL_29:

LABEL_30:
              v23 = a1[5];
              v24 = *(v23 + 6);
              v79[0] = _NSConcreteStackBlock;
              v79[1] = 3221225472;
              v79[2] = sub_1000DC928;
              v79[3] = &unk_100A04950;
              v79[5] = v4;
              v79[6] = &v102;
              v79[4] = v23;
              dispatch_sync(v24, v79);
              [v57 addObject:v103[5]];
LABEL_31:
              v25 = a1[5];
              v26 = *(v25 + 6);
              v77[0] = _NSConcreteStackBlock;
              v77[1] = 3221225472;
              v77[2] = sub_1000DC978;
              v77[3] = v2;
              v77[4] = v25;
              v78 = v8;
              dispatch_async(v26, v77);

              goto LABEL_32;
            }

            if ([v97[5] isUpdatedFromAsset:v109[5]])
            {
              v20 = BKLibraryDataSourceUbiquityLog();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [v97[5] url];
                *buf = 141558786;
                v119 = 1752392040;
                v120 = 2112;
                v121 = v8;
                v122 = 2160;
                v123 = 1752392040;
                v124 = 2112;
                v125 = v21;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidChange: Found more recent updateDate. assetID: %{mask.hash}@ url:%{mask.hash}@.", buf, 0x2Au);
              }

              goto LABEL_29;
            }

            v28 = BKLibraryDataSourceUbiquityLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = [v97[5] assetID];
              v30 = [v97[5] url];
              *buf = 141558786;
              v119 = 1752392040;
              v120 = 2112;
              v121 = v29;
              v122 = 2160;
              v123 = 1752392040;
              v124 = 2112;
              v125 = v30;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidChange: Skipping identical item. assetID: %{mask.hash}@ url: %{mask.hash}@", buf, 0x2Au);
            }

            goto LABEL_40;
          }

          v9 = v2;
          v86 = 0;
          v87 = &v86;
          v88 = 0x2020000000;
          v89 = 0;
          v82 = 0;
          v83 = &v82;
          v84 = 0x2020000000;
          v85 = 0;
          v58 = objc_opt_new();
          v10 = [v109[5] url];
          v81 = 0;
          v80[0] = _NSConcreteStackBlock;
          v80[1] = 3221225472;
          v80[2] = sub_1000DC8E0;
          v80[3] = &unk_100A06DF0;
          v80[4] = &v82;
          v80[5] = &v86;
          [v58 coordinateReadingItemAtURL:v10 options:4 error:&v81 byAccessor:v80];
          v55 = v81;

          if (*(v83 + 24) == 1)
          {
            if (*(v87 + 24) != 1)
            {
              v18 = BKLibraryDataSourceUbiquityLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v32 = [v109[5] url];
                v33 = [v97[5] url];
                *buf = 141558786;
                v119 = 1752392040;
                v120 = 2112;
                v121 = v32;
                v122 = 2160;
                v123 = 1752392040;
                v124 = 2112;
                v125 = v33;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidChange: Asset moved. oldPath: %{mask.hash}@ newPath: %{mask.hash}@", buf, 0x2Au);

                v2 = v9;
              }

LABEL_50:

              _Block_object_dispose(&v82, 8);
              _Block_object_dispose(&v86, 8);
              goto LABEL_30;
            }

            v11 = BKLibraryDataSourceUbiquityLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v52 = [v109[5] url];
              v51 = [v52 lastPathComponent];
              v34 = [v97[5] url];
              v35 = [v34 lastPathComponent];
              *buf = 141558786;
              v119 = 1752392040;
              v120 = 2112;
              v121 = v51;
              v122 = 2160;
              v123 = 1752392040;
              v124 = 2112;
              v125 = v35;
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "mq_batchOfItemsDidChange: Duplicate File found with different filename. %{mask.hash}@, %{mask.hash}@", buf, 0x2Au);
            }

            v12 = [v97[5] updateDate];
            [v12 timeIntervalSinceReferenceDate];
            v14 = v13;
            v15 = [v109[5] updateDate];
            [v15 timeIntervalSinceReferenceDate];
            v17 = v14 > v16;

            v2 = v9;
            if (v17)
            {
              v18 = BKLibraryDataSourceUbiquityLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = v97[5];
                *buf = 138412290;
                v119 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidChange: Assuming update from: %@", buf, 0xCu);
              }

              goto LABEL_50;
            }
          }

          else
          {
            v31 = BKLibraryDataSourceUbiquityLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v119 = v55;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "mq_batchOfItemsDidChange: coordinateReadingItemAtURL failed. error: %@", buf, 0xCu);
            }
          }

          _Block_object_dispose(&v82, 8);
          _Block_object_dispose(&v86, 8);
        }

        else
        {
          if (!v109[5])
          {
            v28 = BKLibraryDataSourceUbiquityLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 141558274;
              v119 = 1752392040;
              v120 = 2112;
              v121 = v8;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "mq_batchOfItemsDidChange: Asset not found: %{mask.hash}@", buf, 0x16u);
            }

LABEL_40:

            goto LABEL_32;
          }

          v27 = BKLibraryDataSourceUbiquityLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 141558274;
            v119 = 1752392040;
            v120 = 2112;
            v121 = v8;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidChange: Removing from cache: %{mask.hash}@", buf, 0x16u);
          }

          [v53 addObject:v8];
        }

LABEL_32:

        _Block_object_dispose(&v96, 8);
        _Block_object_dispose(&v102, 8);

        _Block_object_dispose(&v108, 8);
        v3 = v3 + 1;
      }

      while (v62 != v3);
      v36 = [obj countByEnumeratingWithState:&v114 objects:v126 count:16];
      v62 = v36;
    }

    while (v36);
  }

  if ([v56 count] || objc_msgSend(v53, "count") || objc_msgSend(v57, "count"))
  {
    [a1[5] p_schedulePersistInfoToDisk];
  }

  if ([v56 count])
  {
    v37 = *(a1[5] + 16);
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_1000DC984;
    v74[3] = v2;
    v38 = v56;
    v39 = a1[5];
    v75 = v38;
    v76 = v39;
    dispatch_async(v37, v74);
    v40 = a1[5];
    v41 = *(v40 + 16);
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1000DCA4C;
    v72[3] = v2;
    v72[4] = v40;
    v73 = v38;
    dispatch_async(v41, v72);
  }

  if ([v57 count])
  {
    v42 = *(a1[5] + 16);
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_1000DCA58;
    v69[3] = v2;
    v43 = v57;
    v44 = a1[5];
    v70 = v43;
    v71 = v44;
    dispatch_async(v42, v69);
  }

  if ([v53 count])
  {
    v45 = *(a1[5] + 16);
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1000DCB20;
    v66[3] = v2;
    v46 = v53;
    v47 = a1[5];
    v67 = v46;
    v68 = v47;
    dispatch_async(v45, v66);
  }

  if ([v54 count])
  {
    v48 = *(a1[5] + 16);
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_1000DCBD4;
    v63[3] = v2;
    v49 = v54;
    v50 = a1[5];
    v64 = v49;
    v65 = v50;
    dispatch_async(v48, v63);
  }

  kdebug_trace();
}

void sub_1000DC7B8(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x240], 8);
  _Block_object_dispose(&STACK[0x260], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Unwind_Resume(a1);
}

void sub_1000DC84C(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[6];
  v6 = a1[4];
  if (*(*(a1[7] + 8) + 40))
  {
    v7 = [v6 iq_createTempUbiquityAssetFromMetadataDict:v5];
    v8 = 9;
  }

  else
  {
    v7 = [v6 iq_createUbiquityAssetFromMetadataDict:v5];
    v8 = 8;
  }

  v9 = *(a1[v8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

id sub_1000DC8E0(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  result = [a2 checkPromisedItemIsReachableAndReturnError:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1000DC928(uint64_t a1)
{
  v2 = [*(a1 + 32) iq_createUbiquityAssetFromMetadataDict:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000DC984(uint64_t a1)
{
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidChange: Adding %ld assets.", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) libraryManager];
  [v4 libraryDataSource:*(a1 + 40) addedAssets:*(a1 + 32)];
}

void sub_1000DCA58(uint64_t a1)
{
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidChange: Updating %ld assets.", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) libraryManager];
  [v4 libraryDataSource:*(a1 + 40) updatedAssets:*(a1 + 32)];
}

id sub_1000DCB20(uint64_t a1)
{
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidChange: Removing %ld assets.", &v5, 0xCu);
  }

  return [*(a1 + 40) _unclaimAssetIDs:*(a1 + 32)];
}

id sub_1000DCBD4(uint64_t a1)
{
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "mq_batchOfItemsDidChange: Requesting reopen. assetIDs: %@", &v5, 0xCu);
  }

  return [*(a1 + 40) _requestReOpenWithConflictDictionary:0 requestOpenAssetIDs:*(a1 + 32)];
}

void sub_1000DCDEC(uint64_t a1)
{
  v2 = [*(a1 + 32) bookPresenter];
  [v2 requestReopenAssetIDs:*(a1 + 40) options:*(a1 + 48)];
}

void sub_1000DCF00(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v37 objects:v59 count:16];
  v29 = v4;
  if (v5)
  {
    v7 = v5;
    v8 = *v38;
    *&v6 = 67111170;
    v26 = v6;
    v27 = v3;
    v28 = v2;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        v11 = BKLibraryDataSourceUbiquityLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v32 = [v10 isLocal];
          v31 = [v10 isNotLocal];
          v30 = [v10 isDownloading];
          v33 = [v10 downloadingPercent];
          [v33 floatValue];
          v14 = v13;
          v15 = [v10 isUploading];
          v16 = [v10 uploadingPercent];
          [v16 floatValue];
          v18 = v17;
          v19 = [v10 isUploaded];
          v20 = [v10 url];
          *buf = v26;
          v42 = v32;
          v43 = 1024;
          v44 = v31;
          v45 = 1024;
          v46 = v30;
          v47 = 2048;
          v48 = v14;
          v49 = 1024;
          v50 = v15;
          v51 = 2048;
          v52 = v18;
          v53 = 1024;
          v54 = v19;
          v4 = v29;
          v55 = 2160;
          v56 = 1752392040;
          v57 = 2112;
          v58 = v20;
          _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "_reportProgressWithItems: item: [isLocal=%d, isNotLocal=%d, isDownloading=%d, downloadPercent=%.2f, isUploading=%d, uploadPercent=%.2f, isUploaded=%d | url= %{mask.hash}@]", buf, 0x48u);

          v2 = v28;
          v3 = v27;
        }

        if ([v10 isLocal])
        {
          [*(a1 + 40) udq_reportUploadProgressIfNeeded:v10 completedAssetIDs:v2 failedAssets:v3];
        }

        else if ([v10 isNotLocal])
        {
          v12 = [*(a1 + 40) udq_reportDownloadProgressIfNeeded:v10];
          if (v12)
          {
            [v4 unionSet:v12];
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v37 objects:v59 count:16];
    }

    while (v7);
  }

  if ([v2 count])
  {
    v21 = [*(a1 + 40) uploadReporter];
    [v21 reportUploadCompleteForBooks:v2];

    v4 = v29;
  }

  if ([v3 count])
  {
    v22 = [*(a1 + 40) uploadReporter];
    [v22 reportUploadErrorForBooks:v3];

    v4 = v29;
  }

  if ([v4 count])
  {
    v23 = *(a1 + 40);
    v24 = *(v23 + 152);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DD2F0;
    block[3] = &unk_100A03440;
    block[4] = v23;
    v36 = v29;
    v25 = v24;
    v4 = v29;
    dispatch_async(v25, block);
  }

  kdebug_trace();
}

void sub_1000DD2F0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = BKLibraryDownloadStatusNotification;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = BKLibraryDownloadStatusKey;
  v8 = v4;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v2 postNotificationName:v3 object:v5 userInfo:v6];
}

void sub_1000DDDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000DDDE8(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000DDE38(uint64_t a1)
{
  v2 = [*(a1 + 32) iq_downloadProgressStatusesWithAssetID:*(*(*(a1 + 56) + 8) + 40) item:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_1000DDE94(uint64_t a1)
{
  result = [*(a1 + 32) iq_downloadingAssetID:*(*(*(a1 + 48) + 8) + 40)];
  if (result)
  {
    v3 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(a1 + 40) url];
      v8 = 141558274;
      v9 = 1752392040;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "udq_reportDownloadProgressIfNeeded: finished download: %{mask.hash}@", &v8, 0x16u);
    }

    v5 = [*(a1 + 32) iq_downloadProgressStatusesWithAssetID:*(*(*(a1 + 48) + 8) + 40) item:*(a1 + 40)];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return [*(a1 + 32) iq_removeDownloadingAssetID:*(*(*(a1 + 48) + 8) + 40)];
  }

  return result;
}

void sub_1000DE69C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

id sub_1000DE6F4(void *a1)
{
  v2 = [*(a1[4] + 72) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(a1[4] + 96) containsObject:*(*(a1[6] + 8) + 40)];
  *(*(a1[7] + 8) + 24) = result;
  return result;
}

void sub_1000DE75C(uint64_t a1)
{
  [*(a1 + 32) floatValue];
  v3 = [[BKLibraryDownloadStatus alloc] initWithAssetID:*(*(*(a1 + 48) + 8) + 40) state:9 progressValue:0 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:(v2 / 100.0)];
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = BKLibraryDownloadStatusNotification;
  v6 = *(a1 + 40);
  v9 = BKLibraryDownloadStatusKey;
  v7 = [NSSet setWithObject:v3];
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v4 postNotificationName:v5 object:v6 userInfo:v8];
}

void sub_1000DE8BC(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKeyedSubscript:*(*(a1[6] + 8) + 40)];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000DE918(uint64_t a1)
{
  v2 = [[BKLibraryDownloadStatus alloc] initWithAssetID:*(*(*(a1 + 40) + 8) + 40) state:10 progressValue:-1 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:0.0];
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = BKLibraryDownloadStatusNotification;
  v5 = *(a1 + 32);
  v8 = BKLibraryDownloadStatusKey;
  v6 = [NSSet setWithObject:v2];
  v9 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v3 postNotificationName:v4 object:v5 userInfo:v7];
}

void sub_1000DEA44(void *a1)
{
  v2 = [[BKLibraryDownloadStatus alloc] initWithAssetID:*(*(a1[6] + 8) + 40) state:11 progressValue:1 timeRemaining:0x7FFFFFFFFFFFFFFFLL bytesDownloaded:0x7FFFFFFFFFFFFFFFLL fileSize:0.0];
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = BKLibraryDownloadStatusNotification;
  v5 = a1[4];
  v19 = BKLibraryDownloadStatusKey;
  v6 = [NSSet setWithObject:v2];
  v20 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v3 postNotificationName:v4 object:v5 userInfo:v7];

  v8 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[5];
    v10 = *(*(a1[6] + 8) + 40);
    v11 = 141558786;
    v12 = 1752392040;
    v13 = 2112;
    v14 = v10;
    v15 = 2160;
    v16 = 1752392040;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "udq_reportUploadProgressIfNeeded: Sending upload notification assetID: %{mask.hash}@ url: %{mask.hash}@", &v11, 0x2Au);
  }
}

void sub_1000DEBFC(uint64_t a1)
{
  v1 = a1 + 32;
  [*(*(a1 + 32) + 96) removeObject:*(*(*(a1 + 40) + 8) + 40)];
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10078E964(v1, v2);
  }
}

id sub_1000DEC5C(uint64_t a1)
{
  result = [*(a1 + 32) iq_downloadingAssetID:*(*(*(a1 + 56) + 8) + 40)];
  if (result)
  {
    v3 = BKLibraryDataSourceUbiquityLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 56) + 8) + 40);
      v5 = *(a1 + 40);
      v9 = 141558786;
      v10 = 1752392040;
      v11 = 2112;
      v12 = v4;
      v13 = 2160;
      v14 = 1752392040;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "udq_reportUploadProgressIfNeeded: Finished downloading. assetID: %{mask.hash}@ url: %{mask.hash}@", &v9, 0x2Au);
    }

    v6 = [*(a1 + 32) iq_downloadProgressStatusesWithAssetID:*(*(*(a1 + 56) + 8) + 40) item:*(a1 + 48)];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    return [*(a1 + 32) iq_removeDownloadingAssetID:*(*(*(a1 + 56) + 8) + 40)];
  }

  return result;
}

void sub_1000DED90(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = BKLibraryDownloadStatusNotification;
  v4 = *(a1 + 32);
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v7 = BKLibraryDownloadStatusKey;
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [v2 postNotificationName:v3 object:v4 userInfo:v6];
}

void sub_1000DF244(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        v8 = [*(*(a1 + 40) + 64) objectForKeyedSubscript:{v7, v9}];
        if (v8)
        {
          [*(*(a1 + 40) + 64) setObject:0 forKeyedSubscript:v7];
          [*(a1 + 48) addObject:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1000DFFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000DFFF4(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E0098;
  v4[3] = &unk_100A04BD8;
  v5 = a2;
  v6 = *(a1 + 32);
  v3 = v5;
  [NSURL bc_datalessMaterializationOffForBlock:v4];
}

void sub_1000E0098(void *a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = a1[4];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 removeItemAtURL:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[5] + 8) + 24) = v5;
}

void sub_1000E05DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLibraryDataSourceUbiquityLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10078EB34();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 141558274;
    v8 = 1752392040;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_triggerDownload: Successful download. url: %{mask.hash}@", &v7, 0x16u);
  }
}

void sub_1000E0A4C(uint64_t a1)
{
  v2 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) shouldArchivePathFixupRevision];
    *buf = 67109120;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "cb_persistInfoToDisk. shouldArchivePathFixupRevision: %d", buf, 8u);
  }

  v13[0] = &off_100A43560;
  v4 = [*(a1 + 32) shouldArchivePathFixupRevision];
  v5 = &off_100A43590;
  if (v4)
  {
    v5 = &off_100A43578;
  }

  v13[1] = v5;
  v12[2] = @"URLFromAssetID";
  v6 = [[NSDictionary alloc] initWithDictionary:*(*(a1 + 32) + 56) copyItems:1];
  v13[2] = v6;
  v12[3] = @"AssetFromAssetID";
  v7 = [[NSDictionary alloc] initWithDictionary:*(*(a1 + 32) + 80) copyItems:1];
  v13[3] = v7;
  v12[4] = @"InsertionDateFromAssetID";
  v8 = [[NSDictionary alloc] initWithDictionary:*(*(a1 + 32) + 88) copyItems:1];
  v13[4] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_1000E0C0C(uint64_t a1)
{
  v4 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v4 encodeObject:*(*(*(a1 + 40) + 8) + 40) forKey:@"Root"];
  [v4 finishEncoding];
  v2 = [v4 encodedData];
  v3 = [*(a1 + 32) _persistedInfoURL];
  [v2 writeToURL:v3 atomically:1];
}

void sub_1000E0E04(uint64_t a1)
{
  v2 = (a1 + 32);
  v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *v2;
  v3 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v3)
  {
    v4 = *v37;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v37 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v36 + 1) + 8 * i);
        v7 = [BCUbiquityMetadataHelper ubiquityMetadataForURL:v6 options:-262145 needsCoordination:1];
        v8 = [v7 mutableCopy];

        v9 = [NSNumber numberWithBool:1];
        [v8 setObject:v9 forKeyedSubscript:@"isLocal"];

        [v8 setObject:0 forKeyedSubscript:@"contentChangedDate"];
        v10 = [NSNumber numberWithInt:0xFFFFFFFFLL];
        [v8 setObject:v10 forKeyedSubscript:@"contentFileSize"];

        [v8 setObject:v6 forKeyedSubscript:@"itemURL"];
        v30 = 0;
        v31 = &v30;
        v32 = 0x3032000000;
        v33 = sub_100027354;
        v34 = sub_1000275F0;
        v35 = 0;
        v11 = *(a1 + 40);
        v12 = *(v11 + 48);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000E11D4;
        block[3] = &unk_100A04950;
        v29 = &v30;
        block[4] = v11;
        v13 = v8;
        v28 = v13;
        dispatch_sync(v12, block);
        if (v31[5])
        {
          [v21 addObject:?];
        }

        _Block_object_dispose(&v30, 8);
      }

      v3 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v3);
  }

  v14 = *(a1 + 40);
  v15 = *(v14 + 128);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000E1224;
  v24[3] = &unk_100A049A0;
  v24[4] = v14;
  v16 = v21;
  v25 = v16;
  v26 = *(a1 + 48);
  dispatch_async(v15, v24);
  v17 = *(a1 + 40);
  v18 = *(v17 + 128);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000E12A0;
  v22[3] = &unk_100A03440;
  v22[4] = v17;
  v23 = v16;
  v19 = v16;
  dispatch_async(v18, v22);
}

void sub_1000E11D4(uint64_t a1)
{
  v2 = [*(a1 + 32) iq_createUbiquityAssetFromMetadataDict:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000E1224(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryManager];
  [v2 libraryDataSource:*(a1 + 32) addedAssets:*(a1 + 40)];

  v3 = objc_retainBlock(*(a1 + 48));
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, *(a1 + 40), 0);
    v3 = v4;
  }
}

void sub_1000E15C4(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryManager];
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v2 libraryDataSource:v3 updatedAssets:v4];
}

void sub_1000E1734(uint64_t a1)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:BCMetadataXattrTitle];
  v2 = [*(a1 + 32) objectForKeyedSubscript:BCMetadataXattrAuthor];
  v3 = [BKLibraryAsset actualAuthorFromMetedata:v2];

  v4 = [*(a1 + 32) objectForKeyedSubscript:BCMetadataXattrGenre];
  if ([v6 length] || objc_msgSend(v3, "length") || objc_msgSend(v4, "length"))
  {
    v5 = [*(a1 + 40) assetMetadataCache];
    [v5 saveTitle:v6 author:v3 genre:v4 language:0 pageProgressionDirection:0 forAssetID:*(a1 + 48)];
  }
}

void sub_1000E1BBC(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E1C4C;
  v4[3] = &unk_100A06300;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 fetchAssetsWithIDs:a2 completion:v4];
}

void sub_1000E1C4C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = objc_retainBlock(*(a1 + 32));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v8, v5);
  }
}

void sub_1000E1E60(id *a1, void *a2)
{
  v51 = a2;
  v2 = +[NSMutableArray array];
  v3 = +[NSMutableArray array];
  v4 = *(a1[4] + 6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E26C8;
  block[3] = &unk_100A03C78;
  v5 = a1[5];
  v6 = a1[4];
  v68 = v5;
  v69 = v6;
  v46 = v3;
  v70 = v46;
  v7 = v2;
  v71 = v7;
  dispatch_sync(v4, block);
  v8 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 count];
    v10 = [v46 count];
    *buf = 134218754;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    v73 = v10;
    LOWORD(v74) = 2112;
    *(&v74 + 2) = v46;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_makeBooksUbiquitous: %lu assetsToMove: %@, %lu duplicateAssets: %@", buf, 0x2Au);
  }

  v47 = +[NSMutableArray array];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v11)
  {
    v49 = *v64;
    *&v12 = 141558274;
    v45 = v12;
    do
    {
      v13 = 0;
      do
      {
        if (*v64 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v63 + 1) + 8 * v13);
        v15 = [a1[4] libraryManager];
        v16 = [v14 assetID];
        v17 = [v15 libraryAssetWithAssetID:v16 inManagedObjectContext:v51];

        if (v17)
        {
          v18 = +[BKUbiquityMetadataHelper sharedInstance];
          v19 = [v14 url];
          v20 = [v18 setUbiquityMetadataForURL:v19 withLibraryAsset:v17];

          if (v20 && ([v14 url], v21 = objc_claimAutoreleasedReturnValue(), +[BCUbiquityMetadataHelper xattrAssetIDForURL:](BCUbiquityMetadataHelper, "xattrAssetIDForURL:", v21), v22 = objc_claimAutoreleasedReturnValue(), v21, v22))
          {
            v23 = [v14 url];
            if (v23)
            {
              v24 = [v14 title];
              if ([v24 length])
              {
                v25 = [v14 title];
              }

              else
              {
                v25 = 0;
              }

              v32 = [a1[4] p_moveToUbiquityItemAtURL:v23 preferredFileNameWithoutPathExtension:v25];
              if (v32)
              {
                [v47 addObject:v32];
              }

              else
              {
                v33 = BKLibraryBookImportLog();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  v34 = [v14 assetID];
                  *buf = v45;
                  *&buf[4] = 1752392040;
                  *&buf[12] = 2112;
                  *&buf[14] = v34;
                  _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "_makeBooksUbiquitous: p_moveToUbiquityItemAtURL failed. assetID: %{mask.hash}@", buf, 0x16u);
                }
              }
            }

            else
            {
              v25 = BKLibraryBookImportLog();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v30 = [v14 assetID];
                v31 = [v14 title];
                *buf = 141558786;
                *&buf[4] = 1752392040;
                *&buf[12] = 2112;
                *&buf[14] = v30;
                *&buf[22] = 2160;
                v73 = 1752392040;
                LOWORD(v74) = 2112;
                *(&v74 + 2) = v31;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "_makeBooksUbiquitous: skipping migration of asset with assetID: %{mask.hash}@, title: %{mask.hash}@. Reason: nil url", buf, 0x2Au);
              }
            }
          }

          else
          {
            v22 = BKLibraryBookImportLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v26 = [v14 assetID];
              v27 = [v14 url];
              *buf = 141558786;
              *&buf[4] = 1752392040;
              *&buf[12] = 2112;
              *&buf[14] = v26;
              *&buf[22] = 2160;
              v73 = 1752392040;
              LOWORD(v74) = 2112;
              *(&v74 + 2) = v27;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "_makeBooksUbiquitous: skipping migration of asset with assetID: %{mask.hash}@ at URL: %{mask.hash}@. Reason: failed xattr creation", buf, 0x2Au);
            }
          }
        }

        else
        {
          v22 = BKLibraryBookImportLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v28 = [v14 assetID];
            v29 = [v14 url];
            *buf = 141558786;
            *&buf[4] = 1752392040;
            *&buf[12] = 2112;
            *&buf[14] = v28;
            *&buf[22] = 2160;
            v73 = 1752392040;
            LOWORD(v74) = 2112;
            *(&v74 + 2) = v29;
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "_makeBooksUbiquitous: skipping migration of asset with assetID: %{mask.hash}@ at URL: %{mask.hash}@. Reason: nil libraryAsset", buf, 0x2Au);
          }
        }

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v11);
  }

  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v59 = 0u;
  v50 = v46;
  v35 = [v50 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v35)
  {
    v36 = *v60;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v60 != v36)
        {
          objc_enumerationMutation(v50);
        }

        v38 = *(*(&v59 + 1) + 8 * i);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v73 = sub_100027354;
        *&v74 = sub_1000275F0;
        *(&v74 + 1) = 0;
        v39 = a1[4];
        v40 = *(v39 + 6);
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_1000E2814;
        v58[3] = &unk_100A04950;
        v58[5] = v38;
        v58[6] = buf;
        v58[4] = v39;
        dispatch_sync(v40, v58);
        [a1[4] _addSupplementalContentMetadataFromAsset:v38 toExistingAsset:*(*&buf[8] + 40)];
        _Block_object_dispose(buf, 8);
      }

      v35 = [v50 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v35);
  }

  v41 = a1[4];
  v42 = *(v41 + 6);
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000E2888;
  v53[3] = &unk_100A04FE8;
  v54 = v47;
  v55 = v41;
  v56 = v50;
  v57 = a1[6];
  v43 = v50;
  v44 = v47;
  dispatch_async(v42, v53);
}

void sub_1000E26C8(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = *(*(a1 + 40) + 56);
        v9 = [v7 assetID];
        v10 = [v8 objectForKeyedSubscript:v9];

        if (v10)
        {
          v11 = 48;
        }

        else
        {
          v11 = 56;
        }

        [*(a1 + v11) addObject:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void sub_1000E2814(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v6 = [*(a1 + 40) assetID];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000E2888(id *a1)
{
  if ([a1[4] count])
  {
    objc_initWeak(&location, a1[5]);
    v3 = a1[4];
    v2 = a1[5];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E2A84;
    v11[3] = &unk_100A06F28;
    v12 = a1[6];
    objc_copyWeak(&v14, &location);
    v13 = a1[7];
    [v2 _addLocalAssetsForURLs:v3 completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v4 = [a1[6] valueForKey:@"assetID"];
    v5 = [a1[5] madeUbiquitousNotifyBlock];

    if (v5)
    {
      v6 = [a1[5] madeUbiquitousNotifyBlock];
      if (v6)
      {
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1000E2C6C;
        v9[3] = &unk_100A063F0;
        v10 = a1[7];
        (v6)[2](v6, v4, v4, v9);
      }
    }

    else
    {
      v7 = objc_retainBlock(a1[7]);
      v8 = v7;
      if (v7)
      {
        (*(v7 + 2))(v7, 0, 0);
      }
    }
  }
}

void sub_1000E2A68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000E2A84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 arrayByAddingObjectsFromArray:*(a1 + 32)];
  v5 = [v4 valueForKey:@"assetID"];
  v6 = [v5 bu_arrayByRemovingNSNulls];

  v7 = v6;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [WeakRetained madeUbiquitousNotifyBlock];

  if (v9)
  {
    v10 = objc_loadWeakRetained((a1 + 48));
    v11 = [v10 madeUbiquitousNotifyBlock];

    if (v11)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000E2C0C;
      v14[3] = &unk_100A06F00;
      v16 = *(a1 + 40);
      v15 = v3;
      (v11)[2](v11, v7, v7, v14);
    }
  }

  else
  {
    v12 = objc_retainBlock(*(a1 + 40));
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, v3, 0);
    }
  }
}

void sub_1000E2C0C(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 32), 0);
    v2 = v3;
  }
}

void sub_1000E2C6C(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))(v1, 0, 0);
    v1 = v2;
  }
}

void sub_1000E321C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E3234(uint64_t a1)
{
  v2 = [*(a1 + 32) ubiquityStatusMonitor];
  v3 = [v2 documentsURL];

  v67 = v3;
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    if ([v4 isUbiquitousItemAtURL:*(a1 + 40)])
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
LABEL_36:

      goto LABEL_37;
    }

    v7 = *(a1 + 48);
    if (![v7 length])
    {
      v8 = [*(a1 + 40) lastPathComponent];

      v7 = v8;
    }

    v9 = +[NSMutableCharacterSet illegalCharacterSet];
    v10 = +[NSCharacterSet punctuationCharacterSet];
    [v9 formUnionWithCharacterSet:v10];

    v11 = +[NSCharacterSet controlCharacterSet];
    [v9 formUnionWithCharacterSet:v11];

    [v9 addCharactersInString:@"/\\?%*|<>:-#"];
    [v9 removeCharactersInString:@"_-"];
    v12 = [v7 componentsSeparatedByCharactersInSet:v9];
    v13 = [v12 componentsJoinedByString:&stru_100A30A68];

    v70 = 0;
    v14 = [NSRegularExpression regularExpressionWithPattern:@"  +" options:1 error:&v70];
    v15 = v70;
    v16 = [v14 stringByReplacingMatchesInString:v13 options:0 range:0 withTemplate:{objc_msgSend(v13, "length"), @" "}];

    v17 = [*(a1 + 40) pathExtension];
    v18 = 254 - [v17 length];
    if ([v16 length] > v18)
    {
      v19 = [v16 substringWithRange:{0, v18}];

      v16 = v19;
    }

    if (![v16 length])
    {
      v20 = +[NSBundle mainBundle];
      v21 = [v20 localizedStringForKey:@"unknown" value:&stru_100A30A68 table:0];

      v16 = v21;
    }

    v22 = [v16 stringByAppendingPathExtension:v17];

    if (v22)
    {
      v23 = [v67 URLByAppendingPathComponent:v22];
      v24 = *(*(a1 + 56) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    v26 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 141558274;
      *v72 = 1752392040;
      *&v72[8] = 2112;
      *v73 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "p_moveToUbiquityItemAtURL: Importing to destURL: %{mask.hash}@", buf, 0x16u);
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
LABEL_35:

      goto LABEL_36;
    }

    v28 = [v4 isUbiquitousItemAtURL:?];
    v29 = [*(*(*(a1 + 56) + 8) + 40) path];
    v30 = [v4 fileExistsAtPath:v29];

    v31 = BKLibraryBookImportLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 67109890;
      *v72 = v28;
      *&v72[4] = 1024;
      *&v72[6] = v30;
      strcpy(v73, "p\bhash");
      v73[7] = 0;
      *&v73[8] = 0;
      v74 = 2112;
      v75 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "p_moveToUbiquityItemAtURL: ubiquitousCollisions: %d fileCollision: %d destURL: %{mask.hash}@", buf, 0x22u);
    }

    if ((v28 | v30))
    {
      v33 = 0;
    }

    else
    {
      v56 = *(a1 + 40);
      v57 = *(*(*(a1 + 56) + 8) + 40);
      v69 = 0;
      v58 = [v4 setUbiquitous:1 itemAtURL:v56 destinationURL:v57 error:&v69];
      v33 = v69;
      if ((v58 & 1) != 0 || (v59 = *(*(a1 + 56) + 8), v60 = *(v59 + 40), *(v59 + 40) = 0, v60, ![*(a1 + 32) _isFileExistsError:v33]))
      {
LABEL_34:

        goto LABEL_35;
      }
    }

    v62 = v17;
    v63 = v14;
    v64 = v15;
    v65 = v9;
    v34 = [v22 pathExtension];
    v61 = v22;
    v35 = [v22 stringByDeletingPathExtension];
    v36 = 0;
    v37 = v33;
    while (1)
    {
      v66 = v37;
      while (1)
      {
        v38 = v36 + 1;
        v39 = [NSString stringWithFormat:@"%@ %d.%@", v35, (v36 + 1), v34];
        v40 = [v67 URLByAppendingPathComponent:v39];
        v41 = *(*(a1 + 56) + 8);
        v42 = *(v41 + 40);
        *(v41 + 40) = v40;

        v43 = BKLibraryBookImportLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = *(*(*(a1 + 56) + 8) + 40);
          *buf = 141558274;
          *v72 = 1752392040;
          *&v72[8] = 2112;
          *v73 = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "p_moveToUbiquityItemAtURL: Previous file exists! Trying importing to destURL: %{mask.hash}@", buf, 0x16u);
        }

        v45 = [v4 isUbiquitousItemAtURL:*(*(*(a1 + 56) + 8) + 40)];
        v46 = [*(*(*(a1 + 56) + 8) + 40) path];
        v47 = [v4 fileExistsAtPath:v46];

        if ((v45 & 1) == 0 && (v47 & 1) == 0)
        {
          break;
        }

        v48 = *(*(a1 + 56) + 8);
        v49 = *(v48 + 40);
        *(v48 + 40) = 0;

        ++v36;
        if (v38 == 100)
        {
          v33 = v66;
          goto LABEL_31;
        }
      }

      v50 = *(a1 + 40);
      v51 = *(*(*(a1 + 56) + 8) + 40);
      v68 = v66;
      v52 = [v4 setUbiquitous:1 itemAtURL:v50 destinationURL:v51 error:&v68];
      v33 = v68;

      if (v52)
      {
        break;
      }

      v53 = *(*(a1 + 56) + 8);
      v54 = *(v53 + 40);
      *(v53 + 40) = 0;

      v55 = [*(a1 + 32) _isFileExistsError:v33];
      if (v36 <= 98)
      {
        ++v36;
        v37 = v33;
        if (v55)
        {
          continue;
        }
      }

      goto LABEL_31;
    }

LABEL_31:
    v15 = v64;
    v9 = v65;
    v17 = v62;
    v14 = v63;
    v22 = v61;
    goto LABEL_34;
  }

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

LABEL_37:
}

void sub_1000E3B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E3B88(void *a1)
{
  v2 = [*(a1[4] + 56) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000E4584(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = [*(a1 + 40) assetID];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [*(a1 + 40) destURL];
  [v4 setUrl:v5];

  v6 = BCMetadataXattrAssetID;
  v7 = [*(a1 + 40) assetID];
  v8 = [*(a1 + 40) destURL];
  [BCUbiquityMetadataHelper setExtendedAttributeNamed:v6 toValue:v7 forUrl:v8];

  v9 = [*(a1 + 40) destURL];
  v10 = *(*(a1 + 32) + 64);
  v11 = [*(a1 + 40) assetID];
  [v10 setObject:v9 forKeyedSubscript:v11];

  [*(a1 + 32) p_schedulePersistInfoToDisk];
  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14 = *(v13 + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E473C;
  block[3] = &unk_100A03A30;
  block[4] = v13;
  v19 = v4;
  v20 = v12;
  v15 = v4;
  dispatch_async(v14, block);
  v16 = *(a1 + 32);
  v17 = [*(a1 + 40) destURL];
  [v16 iq_purgeUnzippedBooksCacheIfNeededExceptURL:v17];
}

void sub_1000E473C(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryManager];
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  [v2 libraryDataSource:v3 updatedAssets:v4];

  v5 = [*(a1 + 48) completion];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, *(a1 + 40), 1, 0);
  }
}

void sub_1000E48B4(uint64_t a1)
{
  v4 = [*(a1 + 32) userContext];
  v2 = [v4 completion];
  if (v2)
  {
    v3 = [NSError errorWithDomain:kBKLibraryDataSourceDomain code:kBKLibraryDataSourceErrorExtractionError userInfo:0];
    (v2)[2](v2, 0, 1, v3);
  }

  [*(a1 + 40) iq_purgeUnzippedBooksCacheIfNeededExceptURL:0];
}

void sub_1000E4DF4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1000E52EC(uint64_t a1)
{
  v23.receiver = *(a1 + 32);
  v23.super_class = BKBookZoomRevealOpenAnimator;
  objc_msgSendSuper2(&v23, "bookContentDidLoad");
  if ([*(a1 + 32) contentLoaded])
  {
    v2 = _AEBookOpenLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    return;
  }

  [*(a1 + 32) setContentLoaded:1];
  v3 = [*(a1 + 32) waitingForContentLoaded];
  v4 = _AEBookOpenLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v5)
    {
      *buf = 0;
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v6 = [*(a1 + 32) zoomRequiresContentLoaded];
    v7 = @"NO";
    if (v6)
    {
      v7 = @"YES";
    }

    v8 = v7;
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "-bookContentDidLoad -- waitingForContentLoaded: YES, zoomRequiresContentLoaded: %{public}@", buf, 0xCu);
  }

  if ([*(a1 + 32) zoomRequiresContentLoaded])
  {
    v9 = _AEBookOpenLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "-bookContentDidLoad -- waitingForContentLoaded: NO, zoomRequiresContentLoaded: YES -- performing _animateFirstHalf", buf, 2u);
    }

    [*(a1 + 32) setWaitingForContentLoaded:0];
    [*(a1 + 32) _animateFirstHalf];
    return;
  }

  [*(a1 + 32) spinnerStartTime];
  v11 = v10 + 0.3 + 0.4;
  +[NSDate timeIntervalSinceReferenceDate];
  v13 = v12;
  v4 = _AEBookOpenLog();
  v14 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v11 >= v13)
  {
    if (v14)
    {
      if ([*(a1 + 32) contentLoaded])
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = v16;
      if ([*(a1 + 32) waitingForContentLoaded])
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v19 = v18;
      if ([*(a1 + 32) zoomRequiresContentLoaded])
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v21 = v20;
      *buf = 138543874;
      v25 = v17;
      v26 = 2114;
      v27 = v19;
      v28 = 2114;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "-bookContentDidLoad -- contentLoaded: %{public}@ waitingForContentLoaded: %{public}@ zoomRequiresContentLoaded: %{public}@ -- nothing to do", buf, 0x20u);
    }

LABEL_16:

    return;
  }

  if (v14)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "-bookContentDidLoad -- waitingForContentLoaded: NO, showSpinner: NO -- performing _animateSecondHalf after animations complete", buf, 2u);
  }

  [*(a1 + 32) setWaitingForContentLoaded:0];
  v15 = *(a1 + 32);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000E5698;
  v22[3] = &unk_100A038D0;
  v22[4] = v15;
  [v15 _showSpinner:0 delay:v22 completion:0.0];
}

id sub_1000E593C(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 240) setAlpha:v1];
}

void sub_1000E5B78(uint64_t a1)
{
  v2 = _AEBookOpenLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "spinnerMinDurationComplete", buf, 2u);
  }

  if ([*(a1 + 32) contentLoaded] && objc_msgSend(*(a1 + 32), "waitingForContentLoaded"))
  {
    v3 = _AEBookOpenLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "content loaded & waiting on content to load", buf, 2u);
    }

    [*(a1 + 32) setWaitingForContentLoaded:0];
    v4 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E5D8C;
    v10[3] = &unk_100A038D0;
    v10[4] = v4;
    [v4 _showSpinner:0 delay:v10 completion:0.0];
  }

  else
  {
    v5 = _AEBookOpenLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 32) contentLoaded])
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v6;
      if ([*(a1 + 32) waitingForContentLoaded])
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      *buf = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "spinnerMinDurationComplete - contentLoaded: %{public}@ waitingForContentLoaded: %{public}@. Nothing else will happen in this case", buf, 0x16u);
    }
  }
}

id sub_1000E5D8C(uint64_t a1)
{
  v2 = _AEBookOpenLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
  }

  return [*(a1 + 32) _animateSecondHalf];
}

void sub_1000E5E00(uint64_t a1)
{
  v2 = _AEBookOpenLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "secondHalfDelayComplete", buf, 2u);
  }

  if ([*(a1 + 32) opening] && (objc_msgSend(*(a1 + 32), "contentLoaded") & 1) == 0)
  {
    v8 = _AEBookOpenLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = &off_100A43E98;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "opening but content not loaded -- showing spinner for at least %{public}@s", buf, 0xCu);
    }

    [*(a1 + 32) setWaitingForContentLoaded:1];
    +[NSDate timeIntervalSinceReferenceDate];
    [*(a1 + 32) setSpinnerStartTime:?];
    [*(a1 + 32) setupSpinner];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E605C;
    v10[3] = &unk_100A03CA0;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    [v9 _showSpinner:1 delay:v10 completion:0.0];
  }

  else
  {
    v3 = _AEBookOpenLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if ([*(a1 + 32) opening])
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v5 = v4;
      if ([*(a1 + 32) contentLoaded])
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v6;
      *buf = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "animating second half - opening: %{public}@ contentLoaded: %{public}@", buf, 0x16u);
    }

    [*(a1 + 32) _animateSecondHalf];
  }
}

void sub_1000E605C(uint64_t a1)
{
  v2 = dispatch_time(0, 400000000);
  v3 = *(a1 + 32);

  dispatch_after(v2, &_dispatch_main_q, v3);
}

void sub_1000E60A8(uint64_t a1, int a2)
{
  v4 = _AEBookOpenLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    v6 = v5;
    *buf = 138543362;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "firstHalfComplete - finished: %{public}@", buf, 0xCu);
  }

  if ([*(a1 + 32) opening] && objc_msgSend(*(a1 + 32), "skipReveal"))
  {
    v7 = _AEBookOpenLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "opening & skipping reveal - calling animations finished", buf, 2u);
    }

    [*(a1 + 32) animationsDidFinish];
  }

  else
  {
    v8 = [*(a1 + 32) opening];
    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 minSecondHalfDelayOnOpen];
    }

    else
    {
      [v9 minSecondHalfDelayOnClose];
    }

    v11 = v10;
    if (v10 > 0.0)
    {
      v12 = dispatch_time(0, (v10 * 1000000000.0));
    }

    else
    {
      v12 = 0;
    }

    v13 = _AEBookOpenLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) opening];
      v15 = @"NO";
      if (v14)
      {
        v15 = @"YES";
      }

      v16 = v15;
      v17 = [NSNumber numberWithDouble:v11];
      *buf = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "opening: %{public}@ - waiting %{public}@s before calling secondHalfDelayComplete", buf, 0x16u);
    }

    dispatch_after(v12, &_dispatch_main_q, *(a1 + 40));
    if ([*(a1 + 32) opening])
    {
      if (v11 > 0.0)
      {
        v18 = dispatch_time(0, 5000000000);
      }

      else
      {
        v18 = 0;
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E6390;
      block[3] = &unk_100A033C8;
      block[4] = *(a1 + 32);
      dispatch_after(v18, &_dispatch_main_q, block);
    }
  }
}

id sub_1000E6390(uint64_t a1)
{
  result = [*(a1 + 32) contentLoaded];
  if ((result & 1) == 0)
  {
    v3 = _AEBookOpenLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = &off_100A43EA8;
    }

    return [*(a1 + 32) bookContentDidLoad];
  }

  return result;
}

void sub_1000E6524(uint64_t a1)
{
  v2 = _AEBookOpenLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "second half animations complete", v4, 2u);
  }

  [*(a1 + 32) animationsDidFinish];
  v3 = +[AETestDriver shared];
  [v3 postEvent:kBETestDriverOpenAnimationEnd sender:*(a1 + 32)];
}

uint64_t sub_1000E66B4(uint64_t a1)
{
  kdebug_trace();
  v2 = +[AETestDriver shared];
  [v2 postEvent:kBETestDriverOpenAnimationZoomEnd sender:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_1000E684C(uint64_t a1)
{
  kdebug_trace();
  v2 = +[AETestDriver shared];
  [v2 postEvent:kBETestDriverOpenAnimationRevealEnd sender:*(a1 + 32)];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000E8A60(uint64_t a1)
{
  v1 = (*(a1 + 40) ^ 1u);
  v2 = [*(a1 + 32) closeButton];
  [v2 setAlpha:v1];
}

void sub_1000E9074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E908C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000E92C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v11 = sub_1001B9CD0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10078ED10(v10, v11);
    }

    v12 = objc_retainBlock(*(a1 + 32));
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0);
    }
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E9420;
    v14[3] = &unk_100A06FA0;
    objc_copyWeak(&v18, (a1 + 40));
    v15 = v7;
    v16 = v8;
    v17 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v14);

    objc_destroyWeak(&v18);
  }
}

void sub_1000E9420(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [UIImage imageWithData:*(a1 + 32)];
    if (!v3)
    {
      v4 = sub_1001B9CD0();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10078ED88(a1, v4);
      }
    }

    v5 = objc_retainBlock(*(a1 + 48));
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, v3);
    }
  }

  else
  {
    v7 = objc_retainBlock(*(a1 + 48));
    v3 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

void sub_1000E962C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E9648(id *a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9700;
  block[3] = &unk_100A06FF0;
  objc_copyWeak(&v5, a1 + 6);
  v4 = a1[5];
  v3 = a1[4];
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v5);
}

void sub_1000E9700(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained view];
  [v2 setFrame:{0.0, 0.0, 1000.0, 52.0}];
  v3 = objc_retainBlock(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, WeakRetained, *(a1 + 32));
  }
}

id sub_1000E9BD4(uint64_t a1)
{
  v2 = objc_alloc_init(BKBookProgressController);
  v3 = qword_100AF75A0;
  qword_100AF75A0 = v2;

  v4 = *(a1 + 32);
  v5 = qword_100AF75A0;

  return [v5 setAnnotationProvider:v4];
}

void sub_1000EA2B4(uint64_t a1, void *a2)
{
  v34 = [a2 firstObject];
  v3 = [v34 collection];
  if ([v34 isCloudAsset])
  {
    [v3 bk_cloudTimeRemaining];
  }

  else
  {
    [v3 bk_localTimeRemaining];
  }

  v5 = v4;
  if ([v34 isCloudAsset])
  {
    [v3 bk_cloudDuration];
  }

  else
  {
    [v3 bk_localDuration];
  }

  v7 = v6;
  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = AEAudioBookPlaybackRateUserDefaultsKey;
  v10 = [v8 objectForKey:AEAudioBookPlaybackRateUserDefaultsKey];

  v11 = 1.0;
  if (v10)
  {
    v12 = +[NSUserDefaults standardUserDefaults];
    [v12 floatForKey:v9];
    v11 = v13;
  }

  v14 = v5 / v11;
  if (v11 <= 0.0)
  {
    v14 = v5;
  }

  if (v3)
  {
    if (*(a1 + 40) == 1)
    {
      v15 = +[NSBundle mainBundle];
      v16 = v15;
      v17 = @"New";
LABEL_28:
      v29 = [v15 localizedStringForKey:v17 value:&stru_100A30A68 table:0];
LABEL_29:

      goto LABEL_35;
    }

    if (1.0 - v5 / fmax(v7, 1.0) <= 0.01)
    {
      v15 = +[NSBundle mainBundle];
      v16 = v15;
      v17 = @"Just started";
      goto LABEL_28;
    }

    v18 = llround(fabs(v14)) / 60.0;
    v19 = vcvtmd_s64_f64(ceil(v18) / 60.0);
    v20 = vcvtpd_s64_f64(v18) - 60 * v19;
    if (v19 <= 0 && v20 < 1)
    {
      v15 = +[NSBundle mainBundle];
      v16 = v15;
      v17 = @"Finished";
      goto LABEL_28;
    }

    if (v19 >= 1 && v20 >= 1)
    {
      v16 = +[NSBundle mainBundle];
      v24 = [v16 localizedStringForKey:@"%@ hr value:%@ min left" table:{&stru_100A30A68, 0}];
      v25 = [NSNumber numberWithInteger:v19];
      v26 = [NSNumberFormatter localizedStringFromNumber:v25 numberStyle:1];
      v27 = [NSNumber numberWithInteger:v20];
      v28 = [NSNumberFormatter localizedStringFromNumber:v27 numberStyle:1];
      v29 = [NSString stringWithFormat:v24, v26, v28];

LABEL_30:
LABEL_31:

      goto LABEL_29;
    }

    if (v19 >= 1)
    {
      v16 = +[NSBundle mainBundle];
      v24 = [v16 localizedStringForKey:@"%@ hr left" value:&stru_100A30A68 table:0];
      v25 = [NSNumber numberWithInteger:v19];
      v23 = [NSNumberFormatter localizedStringFromNumber:v25 numberStyle:1];
      v29 = [NSString stringWithFormat:v24, v23];

      goto LABEL_30;
    }

    if (v20 >= 1)
    {
      v16 = +[NSBundle mainBundle];
      v24 = [v16 localizedStringForKey:@"%@ min left" value:&stru_100A30A68 table:0];
      v30 = [NSNumber numberWithInteger:v20];
      v31 = [NSNumberFormatter localizedStringFromNumber:v30 numberStyle:1];
      v29 = [NSString stringWithFormat:v24, v31];

      goto LABEL_31;
    }
  }

  v29 = &stru_100A30A68;
LABEL_35:
  v32 = objc_retainBlock(*(a1 + 32));
  v33 = v32;
  if (v32)
  {
    (*(v32 + 2))(v32, v29);
  }
}

id sub_1000EB4B0(uint64_t a1)
{
  v2 = [*(a1 + 40) editMode] ^ 1;
  v3 = *(a1 + 32);

  return [v3 setEnabled:v2];
}

void sub_1000EF4C0(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000EF560;
  v3[3] = &unk_100A03698;
  v4 = *(a1 + 40);
  [v2 requestTabBarSceneController:v3];
}

void sub_1000EF560(uint64_t a1, void *a2)
{
  v3 = [a2 rootBarCoordinator];
  v4 = [v3 hostingViewController];

  if (!v4)
  {
    sub_10078EE80();
  }

  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[BKJSAAppController requestRootBarControllerWithCompletionValue:]_block_invoke_2";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s done result=%@", buf, 0x16u);
  }

  v6 = +[JSABridge sharedInstance];
  v7 = v6;
  v8 = *(a1 + 32);
  if (v4)
  {
    v10 = v4;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [v7 enqueueValueCall:v8 arguments:v9 file:@"BKJSAAppController.m" line:116];
  }

  else
  {
    [v6 enqueueValueCall:v8 arguments:0 file:@"BKJSAAppController.m" line:116];
  }
}

void sub_1000EF8A4(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000EF944;
  v3[3] = &unk_100A07040;
  v4 = *(a1 + 40);
  [v2 requestPrimaryScene:v3];
}

void sub_1000EF944(uint64_t a1, void *a2)
{
  v3 = [a2 scene];
  if (!v3)
  {
    sub_10078EEB8();
  }

  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[BKJSAAppController requestPrimarySceneWithCompletionValue:]_block_invoke_2";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s done, result=%@", buf, 0x16u);
  }

  v5 = +[JSABridge sharedInstance];
  v6 = v5;
  v7 = *(a1 + 32);
  if (v3)
  {
    v9 = v3;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [v6 enqueueValueCall:v7 arguments:v8 file:@"BKJSAAppController.m" line:130];
  }

  else
  {
    [v5 enqueueValueCall:v7 arguments:0 file:@"BKJSAAppController.m" line:130];
  }
}

void sub_1000EFC78(uint64_t a1)
{
  v2 = [*(a1 + 32) sceneManager];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000EFD18;
  v3[3] = &unk_100A03698;
  v4 = *(a1 + 40);
  [v2 requestTabBarSceneController:v3];
}

void sub_1000EFD18(uint64_t a1, void *a2)
{
  v3 = [a2 rootBarCoordinator];
  v4 = [v3 hostingViewController];

  if (!v4)
  {
    sub_10078EEF0();
  }

  v5 = [v4 ba_effectiveAnalyticsTracker];
  v6 = JSALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v13 = "[BKJSAAppController requestRootBarAnalyticsTrackerWithCompletionValue:]_block_invoke_2";
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s done, result=%@", buf, 0x16u);
  }

  v7 = +[JSABridge sharedInstance];
  v8 = v7;
  v9 = *(a1 + 32);
  if (v5)
  {
    v11 = v5;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [v8 enqueueValueCall:v9 arguments:v10 file:@"BKJSAAppController.m" line:145];
  }

  else
  {
    [v7 enqueueValueCall:v9 arguments:0 file:@"BKJSAAppController.m" line:145];
  }
}

void sub_1000F005C(uint64_t a1)
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 primaryAnalyticsController];

  v4 = JSALog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v11 = "[BKJSAAppController requestPrimaryAnalyticsControllerWithCompletionValue:]_block_invoke";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "done %{public}s, result=%@", buf, 0x16u);
  }

  v5 = +[JSABridge sharedInstance];
  v6 = v5;
  v7 = *(a1 + 32);
  if (v3)
  {
    v9 = v3;
    v8 = [NSArray arrayWithObjects:&v9 count:1];
    [v6 enqueueValueCall:v7 arguments:v8 file:@"BKJSAAppController.m" line:156];
  }

  else
  {
    [v5 enqueueValueCall:v7 arguments:0 file:@"BKJSAAppController.m" line:156];
  }
}

void sub_1000F0320(uint64_t a1)
{
  v2 = JSALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[BKJSAAppController setScriptDataSource:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s done", &v4, 0xCu);
  }

  v3 = +[JSABridge sharedInstance];
  [v3 enqueueValueCall:*(a1 + 32) arguments:0 file:@"BKJSAAppController.m" line:166];
}

void sub_1000F05EC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:JSABridgeWillReloadNotification object:0];

  v3 = [*(a1 + 32) sceneManager];
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F06C8;
  v5[3] = &unk_100A033C8;
  v6 = *(a1 + 40);
  [v3 reloadStandardItemsWithAnimated:v4 completion:v5];
}

void sub_1000F06C8(uint64_t a1)
{
  v2 = JSALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[BKJSAAppController reloadStandardItemsWithAnimated:completion:]_block_invoke_2";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s done", &v4, 0xCu);
  }

  v3 = +[JSABridge sharedInstance];
  [v3 enqueueValueCall:*(a1 + 32) arguments:0 file:@"BKJSAAppController.m" line:177];
}

void sub_1000F09C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F09EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained rootBarCoordinator];
  v4 = [v3 hostingViewController];
  v5 = [v4 bc_firstVisibleChildViewControllerOfClass:objc_opt_class() includePresented:1];

  if (v5)
  {
    v6 = *(a1 + 48);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F0C30;
    v12[3] = &unk_100A044C8;
    v14 = v6;
    v13 = *(a1 + 32);
    [v5 popAllCardsAnimated:v6 completion:v12];
    if (*(a1 + 48) == 1)
    {
      v7 = [v5 transitionCoordinator];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000F0D18;
      v10[3] = &unk_100A04410;
      v11 = *(a1 + 32);
      [v7 animateAlongsideTransition:0 completion:v10];
    }

    v8 = v13;
  }

  else
  {
    v9 = JSALog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v16 = "[BKJSAAppController dismissCardsForSelectedTab:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s skipped because there is no card stack", buf, 0xCu);
    }

    v8 = +[JSABridge sharedInstance];
    [v8 enqueueValueCall:*(a1 + 32) arguments:&off_100A43E10 file:@"BKJSAAppController.m" line:204];
  }
}

void sub_1000F0C30(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = JSALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446210;
      v5 = "[BKJSAAppController dismissCardsForSelectedTab:completion:]_block_invoke_2";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s done", &v4, 0xCu);
    }

    v3 = +[JSABridge sharedInstance];
    [v3 enqueueValueCall:*(a1 + 32) arguments:&off_100A43DE0 file:@"BKJSAAppController.m" line:193];
  }
}

void sub_1000F0D18(uint64_t a1)
{
  v2 = JSALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[BKJSAAppController dismissCardsForSelectedTab:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s done", &v4, 0xCu);
  }

  v3 = +[JSABridge sharedInstance];
  [v3 enqueueValueCall:*(a1 + 32) arguments:&off_100A43DF8 file:@"BKJSAAppController.m" line:199];
}

void sub_1000F0F68(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000F0F84(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[BKAppDelegate delegate];
  v4 = [v3 appLaunchCoordinator];
  v5 = [v4 appLaunchCoordinatorHasAppLaunched];

  v6 = [WeakRetained rootBarCoordinator];
  v7 = [v6 hostingViewController];
  v8 = [v7 presentedViewController];

  v9 = JSALog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 && v5)
  {
    if (v10)
    {
      v11 = [NSNumber numberWithBool:*(a1 + 48)];
      *buf = 136446722;
      v25 = "[BKJSAAppController dismissPresentedViewControllerAnimated:completion:]_block_invoke";
      v26 = 2112;
      v27 = v11;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s: Dismissing presentedViewController animted=%@: %{public}@", buf, 0x20u);
    }

    v12 = *(a1 + 48);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000F12C8;
    v21[3] = &unk_100A044C8;
    v23 = v12;
    v22 = *(a1 + 32);
    [v8 dismissViewControllerAnimated:v12 completion:v21];
    if (*(a1 + 48) == 1)
    {
      v13 = [WeakRetained rootBarCoordinator];
      v14 = [v13 hostingViewController];
      v15 = [v14 presentedViewController];
      v16 = [v15 transitionCoordinator];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000F13AC;
      v19[3] = &unk_100A04410;
      v20 = *(a1 + 32);
      [v16 animateAlongsideTransition:0 completion:v19];
    }

    v17 = v22;
  }

  else
  {
    if (v10)
    {
      v18 = [NSNumber numberWithBool:v5];
      *buf = 136446722;
      v25 = "[BKJSAAppController dismissPresentedViewControllerAnimated:completion:]_block_invoke";
      v26 = 2112;
      v27 = v18;
      v28 = 2114;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}s skipped because hasAppLaunched=%@, presentedViewController=%{public}@", buf, 0x20u);
    }

    v17 = +[JSABridge sharedInstance];
    [v17 enqueueValueCall:*(a1 + 32) arguments:0 file:@"BKJSAAppController.m" line:237];
  }
}

void sub_1000F12C8(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v2 = JSALog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446210;
      v5 = "[BKJSAAppController dismissPresentedViewControllerAnimated:completion:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s done", &v4, 0xCu);
    }

    v3 = +[JSABridge sharedInstance];
    [v3 enqueueValueCall:*(a1 + 32) arguments:0 file:@"BKJSAAppController.m" line:223];
  }
}

void sub_1000F13AC(uint64_t a1)
{
  v2 = JSALog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[BKJSAAppController dismissPresentedViewControllerAnimated:completion:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}s done", &v4, 0xCu);
  }

  v3 = +[JSABridge sharedInstance];
  [v3 enqueueValueCall:*(a1 + 32) arguments:0 file:@"BKJSAAppController.m" line:230];
}

void sub_1000F167C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1000F16A0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained rootBarCoordinator];
    v4 = [v3 selectedNavigationController];

    [v4 pushViewController:*(a1 + 32) animated:*(a1 + 48)];
  }
}

void sub_1000F192C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1000F1950(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained rootBarCoordinator];
  [v2 selectWithIdentifier:*(a1 + 32) isUserAction:*(a1 + 48)];
}

void sub_1000F1BA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1000F1BC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained rootBarCoordinator];
  v4 = [v3 selectedTopViewController];

  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[BKJSAAppController topViewControllerInSelectedTab:]_block_invoke";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "done %{public}s, result=%@", buf, 0x16u);
  }

  v6 = +[JSABridge sharedInstance];
  v7 = v6;
  v8 = *(a1 + 32);
  if (v4)
  {
    v10 = v4;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [v7 enqueueValueCall:v8 arguments:v9 file:@"BKJSAAppController.m" line:267];
  }

  else
  {
    [v6 enqueueValueCall:v8 arguments:0 file:@"BKJSAAppController.m" line:267];
  }
}

void sub_1000F232C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1000F2350(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained rootBarCoordinator];
  v4 = [v3 selectedTopViewController];

  [*(*(a1 + 32) + 16) performRawActionModel:*(a1 + 40) withParentTracker:*(a1 + 48) shouldReportFigaro:*(a1 + 64) sourceViewController:v4 completion:&stru_100A070D8];
}

void sub_1000F23E0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = JSALog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10078EF28(v2, v3);
  }
}

id sub_1000F24B4()
{
  if (qword_100AF75E0 != -1)
  {
    sub_10078EFA0();
  }

  v1 = qword_100AF75D8;

  return v1;
}

void sub_1000F24F8(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibraryProvider");
  v2 = qword_100AF75D8;
  qword_100AF75D8 = v1;
}

void sub_1000F2580(id a1)
{
  v1 = [[_BKLibraryProviderContext alloc] initSingleton];
  v2 = qword_100AF75E8;
  qword_100AF75E8 = v1;
}

void sub_1000F3DB8(uint64_t a1)
{
  v2 = [NSFetchedResultsController alloc];
  v4 = *(a1 + 40);
  v3 = (a1 + 32);
  v5 = [*(a1 + 32) moc];
  v6 = [v2 initWithFetchRequest:v4 managedObjectContext:v5 sectionNameKeyPath:0 cacheName:0];
  [*(a1 + 32) setFetchedResultsController:v6];

  v7 = *(a1 + 32);
  v8 = [v7 fetchedResultsController];
  [v8 setDelegate:v7];

  v9 = [*(a1 + 32) fetchedResultsController];
  v20 = 0;
  LOBYTE(v5) = [v9 performFetch:&v20];
  v10 = v20;

  if (v5)
  {
    v11 = [*(a1 + 32) fetchedResultsController];
    v12 = [v11 fetchedObjects];

    v13 = [*(a1 + 32) assetsFromFetchRequestResults:v12];
    v14 = [*(a1 + 32) _assetDictionariesForDynamicArrayWithFetchRequest:*(a1 + 40) isInitialFetch:1 matchedAssets:v13];
    v15 = sub_1000F24B4();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10078F0C4();
    }

    v16 = [*v3 dynamicArray];
    [v16 updateArray:v14];

    v17 = [*v3 delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [*v3 delegate];
      [v19 libraryProvider:*v3 contentDidLoad:v13];
    }
  }

  else
  {
    v12 = sub_1000F24B4();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10078F050();
    }
  }
}

void sub_1000F3FC0(uint64_t a1)
{
  v2 = sub_1000F24B4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10078F15C();
  }

  v3 = [*(a1 + 32) fetchedResultsController];
  [v3 setDelegate:0];

  [*(a1 + 32) setFetchedResultsController:0];
  v4 = [*(a1 + 32) dynamicArray];
  [v4 updateArray:&__NSArray0__struct];
}

void sub_1000F4368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F4380(uint64_t a1)
{
  v3 = [*(a1 + 32) fetchedResultsController];
  v2 = [v3 fetchedObjects];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_1000F44F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F4508(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchedResultsController];
  v7 = [v2 fetchedObjects];

  v3 = v7;
  if (v7)
  {
    v4 = [*(a1 + 32) assetsFromFetchRequestResults:v7];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v7;
  }
}

void sub_1000F486C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 assetID];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [v6 storeID];
    if (!v8)
    {
LABEL_8:
      v9 = [v6 toDictionary];
      [*(a1 + 40) addObject:v9];
      goto LABEL_9;
    }
  }

  if (([*(a1 + 32) containsObject:v8] & 1) == 0)
  {
    [*(a1 + 32) addObject:v8];
    goto LABEL_8;
  }

  v9 = sub_1000F24B4();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10078F1D8();
  }

LABEL_9:

  if (*(a1 + 56) && [*(a1 + 40) count] >= *(a1 + 56))
  {
    *a4 = 1;
  }
}

void sub_1000F4CB0(id *a1)
{
  v2 = sub_1000F24B4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10078F3E0(a1);
  }

  v3 = [a1[5] fetchedObjects];
  v4 = a1 + 4;
  v5 = [a1[4] assetsFromFetchRequestResults:v3];
  v6 = a1[4];
  v7 = [a1[5] fetchRequest];
  v8 = [v6 _assetDictionariesForDynamicArrayWithFetchRequest:v7 isInitialFetch:0 matchedAssets:v5];

  v9 = [a1[4] dynamicArray];
  v10 = [v9 dataProvider];

  if (v10)
  {
    v11 = a1[6];
    v12 = sub_1000F24B4();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v13)
      {
        sub_10078F4B4();
      }

      v14 = [a1[5] fetchRequest];
      v15 = [v14 fetchLimit];

      if (v15)
      {
        [a1[6] trimWithStart:0 end:v15 - 1];
      }

      v16 = +[TUITransactionOptions defaultImplicitOptions];
      v23 = _NSConcreteStackBlock;
      v24 = 3221225472;
      v25 = sub_1000F4F70;
      v26 = &unk_100A071E0;
      v27 = v10;
      v28 = v8;
      v29 = a1[6];
      v30 = v3;
      v17 = a1[5];
      v18 = a1[4];
      v31 = v17;
      v32 = v18;
      v19 = [TUITransaction currentOrNewTransactionWithOptions:v16 block:&v23];
    }

    else
    {
      if (v13)
      {
        sub_10078F54C();
      }

      [v10 updateArray:v8 batchUpdatesBlock:0];
    }
  }

  v20 = [*v4 delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [*v4 delegate];
    [v22 libraryProvider:*v4 contentDidChange:v5];
  }
}

void sub_1000F4F70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000F52A4;
  v29[3] = &unk_100A071B8;
  v30 = *(a1 + 48);
  [v2 updateArray:v3 batchUpdatesBlock:v29];
  v4 = [*(a1 + 56) count];
  v5 = [*(a1 + 64) fetchRequest];
  v6 = [v5 fetchLimit];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v4 < v7)
  {
    v8 = sub_1000F24B4();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 72);
      v27 = *(v26 + 8);
      *buf = 138413058;
      v32 = v27;
      v33 = 2048;
      v34 = v26;
      v35 = 2048;
      v36 = v4;
      v37 = 2048;
      v38 = v7;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%@[%p] - actual < desired (%lu vs %lu)", buf, 0x2Au);
    }

    v9 = [*(a1 + 72) fetchedResultsController];
    [v9 setDelegate:0];

    v10 = [NSFetchedResultsController alloc];
    v11 = [*(a1 + 64) fetchRequest];
    v12 = [*(a1 + 72) moc];
    v13 = [v10 initWithFetchRequest:v11 managedObjectContext:v12 sectionNameKeyPath:0 cacheName:0];
    [*(a1 + 72) setFetchedResultsController:v13];

    v14 = *(a1 + 72);
    v15 = [v14 fetchedResultsController];
    [v15 setDelegate:v14];

    v16 = [*(a1 + 72) fetchedResultsController];
    v28 = 0;
    LOBYTE(v12) = [v16 performFetch:&v28];
    v17 = v28;

    if ((v12 & 1) == 0)
    {
      v18 = sub_1000F24B4();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10078F050();
      }
    }

    v19 = sub_1000F24B4();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_10078F5E4((a1 + 72));
    }

    v20 = [*(a1 + 72) fetchedResultsController];
    v21 = [v20 fetchedObjects];

    v22 = [*(a1 + 72) assetsFromFetchRequestResults:v21];
    v23 = *(a1 + 72);
    v24 = [*(a1 + 64) fetchRequest];
    v25 = [v23 _assetDictionariesForDynamicArrayWithFetchRequest:v24 isInitialFetch:0 matchedAssets:v22];

    [*(a1 + 32) updateArray:v25 batchUpdatesBlock:0];
  }
}

void sub_1000F52A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F533C;
  v6[3] = &unk_100A07190;
  v7 = v3;
  v5 = v3;
  [v4 computeUpdatesWithBlock:v6];
}

id *sub_1000F533C(id *result, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      return [result[4] updateItemAtIndex:?];
    }

    else if (a2 == 3)
    {
      return [result[4] moveItemFromIndex:? toIndex:?];
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      return [result[4] deleteItemAtIndex:?];
    }
  }

  else
  {
    return [result[4] insertItemAtIndex:?];
  }

  return result;
}

void sub_1000F5514(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 entity];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = *(*(a1 + 40) + 56);
    v6 = [v7 objectIDsForRelationshipNamed:@"collectionMembers"];
    [v5 addObjectsFromArray:v6];
  }
}

void sub_1000F5664(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  v6 = v3;
  v5 = [v3 objectID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(*(a1 + 32) + 40) refreshObject:v6 mergeChanges:1];
  }
}

id sub_1000F6518(uint64_t a1)
{
  result = [*(a1 + 32) setFlowState:*(a1 + 40)];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 _persistDownloadFlowState:v4];
  }

  return result;
}

void sub_1000F6604(uint64_t a1)
{
  v2 = [*(a1 + 32) stage];
  v3 = BKBookletMigrationLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 <= 299)
  {
    if (v2)
    {
      if (v2 == 150)
      {
        if (v4)
        {
          *v6 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Set download flow stage to: wait GDPR privacy acknowledgement", v6, 2u);
        }

        [*(a1 + 40) wq_runDownloadFlowStageWaitGDPRPrivacyAcknowledgement];
      }

      else
      {
        if (v2 != 200)
        {
          goto LABEL_21;
        }

        if (v4)
        {
          *v6 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Set download flow stage to: force reload purchase items", v6, 2u);
        }

        [*(a1 + 40) wq_runDownloadFlowStageForceReloadPurchaseItems];
      }
    }

    else
    {
      if (v4)
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Set download flow stage to: initial", v6, 2u);
      }

      [*(a1 + 40) wq_runDownloadFlowStageInitial];
    }
  }

  else if (v2 > 599)
  {
    if (v2 != 600)
    {
      if (v2 == 800)
      {
        if (v4)
        {
          *v6 = 0;
          v5 = "Set download flow stage to: finished";
LABEL_23:
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
        }

LABEL_24:

        return;
      }

LABEL_21:
      if (v4)
      {
        *v6 = 0;
        v5 = "Unknown download flow stage";
        goto LABEL_23;
      }

      goto LABEL_24;
    }

    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Set download flow stage to: queued", v6, 2u);
    }

    [*(a1 + 40) wq_runDownloadFlowStageQueued];
  }

  else
  {
    if (v2 != 300)
    {
      if (v2 == 400)
      {
        if (v4)
        {
          *v6 = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Set download flow stage to: query", v6, 2u);
        }

        [*(a1 + 40) wq_runDownloadFlowStageQuery];
        return;
      }

      goto LABEL_21;
    }

    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Set download flow stage to: stop and wait", v6, 2u);
    }

    [*(a1 + 40) wq_runDownloadFlowStageWait];
  }
}

id sub_1000F6EF4(uint64_t a1)
{
  v2 = +[NSDate now];
  [v2 timeIntervalSince1970];
  v4 = v3;

  v5 = BKBookletMigrationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Persisting stop and wait timestamp: %f", &v8, 0xCu);
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setDouble:@"BKBookletMigration.stopAndWaitStartTime" forKey:v4];

  return [*(a1 + 32) _setDownloadFlowStage:300];
}

void sub_1000F7488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F74B4(uint64_t a1, int a2)
{
  v4 = BKBookletMigrationLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = [*(*(*(a1 + 48) + 8) + 40) count];
      v7 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 134218242;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Candidate audiobooks %lu assetIDs: %@", buf, 0x16u);
    }

    if ([*(*(*(a1 + 48) + 8) + 40) count])
    {
      v8 = [BKLibraryManager predicateForSupplementalContentLibraryAssetsWithStorePlaylistIDs:*(*(*(a1 + 48) + 8) + 40)];
      v18[0] = v8;
      v9 = +[BKLibraryManager predicateForNonLocalAndNonDownloadingStoreAssets];
      v18[1] = v9;
      v10 = [*(a1 + 32) _predicateForRedownloadableAssets];
      v18[2] = v10;
      v11 = [NSArray arrayWithObjects:v18 count:3];
      v12 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];

      v4 = [*(a1 + 40) storeIDsOfStoreAssetsWithPredicate:v12];
      v13 = BKBookletMigrationLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Non-local, non-downloading booklet storeIDs: %@", buf, 0xCu);
      }
    }

    else
    {
      v4 = 0;
    }

    v14 = [v4 count];
    v15 = *(a1 + 32);
    if (v14)
    {
      v16 = [v15 migrationDownloadQueue];
      [v16 enqueueDownloads:v4];

      v15 = *(a1 + 32);
      v17 = 600;
    }

    else
    {
      v17 = 800;
    }

    [v15 _setDownloadFlowStage:v17];
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Stopping migration for now. Will retry stage query on next launch.", buf, 2u);
  }
}

void sub_1000F772C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = [v5 allObjects];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = [v6 count];
    if (v10 < [*(a1 + 32) count])
    {
      v11 = [*(a1 + 32) mutableCopy];
      [v11 minusSet:v6];
      v12 = BKBookletMigrationLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218242;
        v14 = [v11 count];
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Encountered audiobooks with missing purchase token, %lu storeIDs: %@", &v13, 0x16u);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000F83F8(uint64_t a1)
{
  v2 = [*(a1 + 32) cellMetrics];
  [v2 dimmedScale];
  v4 = v3;
  v5 = [*(a1 + 32) cellMetrics];
  [v5 dimmedScale];
  CGAffineTransformMakeScale(&v9, v4, v6);
  v7 = *(a1 + 32);
  v8 = v9;
  [v7 setTransform:&v8];
}

id sub_1000F8510(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *&CGAffineTransformIdentity.c;
  v4[0] = *&CGAffineTransformIdentity.a;
  v4[1] = v2;
  v4[2] = *&CGAffineTransformIdentity.tx;
  return [v1 setTransform:v4];
}

void sub_1000F85D0(uint64_t a1)
{
  v2 = [*(a1 + 32) cellMetrics];
  [v2 dimmedAlpha];
  [*(a1 + 32) setAlpha:?];
}

void sub_1000F9854(uint64_t a1)
{
  [*(a1 + 32) infoFrame];
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  if (!CGRectIsEmpty(v8))
  {
    v6 = [*(a1 + 32) infoCell];
    [v6 setFrame:{x, y, width, height}];
  }
}

void sub_1000FA748(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000FA7FC;
  block[3] = &unk_100A03A30;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  v11 = v4;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000FA7FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) libraryAsset];
  v4 = [v3 storeID];
  LODWORD(v2) = [v2 isEqualToString:v4];

  if (v2)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    [v5 setFormattedPrice:v6];
  }
}

void sub_1000FACE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained assetStateChanged];
}

void sub_1000FAD20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained audiobookStatus];
  v3 = [v2 assetAudiobookStatusIsPlaying];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 audiobookControl];
  [v5 setPlaying:v3];
}

void sub_1000FADB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained audiobookStatus];
  [v2 assetAudiobookStatusTrackProgress];
  v4 = v3;
  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 audiobookControl];
  [v6 setProgress:v4];
}

void sub_1000FAE48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleAssetMetadataChange];
}

id sub_1000FCB58(uint64_t a1)
{
  [*(a1 + 32) setIsAccessibilityScrollAncestor:0];
  v2 = *(a1 + 40);

  return [v2 setIsAccessibilityScrollAncestor:0];
}

id sub_1000FCE4C(uint64_t a1)
{
  v2 = [*(a1 + 32) _imaxPageStatus:1 window:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 48);
  v6 = *(a1 + 64) + 1;

  return [v5 turnToPageNumber:v6 animated:0];
}

id sub_1000FCEB4(uint64_t a1)
{
  v2 = [*(a1 + 32) _imaxPageStatus:0 window:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 48);
  v6 = *(a1 + 64) - 1;

  return [v5 turnToPageNumber:v6 animated:0];
}

id sub_1000FD348(uint64_t a1)
{
  result = [*(a1 + 32) pageRangeForChapterAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = result;
  *(v3 + 40) = v4;
  return result;
}

void *sub_1000FD380(void *result)
{
  if (result[4])
  {
    v1 = result;
    v2 = [[NSAttributedString alloc] initWithString:result[4]];
    v3 = *(v1[5] + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(*(v1[5] + 8) + 40);
    v6 = IMAccessibilityTokenLowPitch;

    return [v5 setAttribute:kCFBooleanTrue forKey:v6];
  }

  return result;
}

void sub_1000FD5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FD620(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (!v6 || v7)
  {
    v10 = sub_1000AC6E8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to retrieve acquireSlot URL from the bag.", v11, 2u);
    }

    [v9 finishWithError:v7];
  }

  else
  {
    [WeakRetained _acquireSlotWithURL:v6];
  }
}

void sub_1000FD8D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FD8FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v6)
  {
    v8 = [v6 userInfo];
    v9 = [NSError errorWithDomain:@"BKAcquireSlotErrorDomain" code:2 userInfo:v8];
  }

  else
  {
    objc_opt_class();
    v11 = [v5 parsedBodyDictionary];
    v12 = [v11 objectForKeyedSubscript:@"status"];
    v13 = BUDynamicCast();
    v14 = [v13 integerValue];

    if (!v14)
    {
      goto LABEL_10;
    }

    if (v14 == 502)
    {
      v9 = [NSError errorWithDomain:@"BKAcquireSlotErrorDomain" code:3 userInfo:0];
    }

    else
    {
      v16 = [v5 parsedBodyDictionary];
      v9 = [NSError errorWithDomain:@"BKAcquireSlotErrorDomain" code:1 userInfo:v16];
    }
  }

  if (v9)
  {
    v10 = sub_1000AC6E8();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = 134218242;
      v18 = [v9 code];
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AcquireSlot returned an error. {c=%ld, (%@)}", &v17, 0x16u);
    }

    [WeakRetained finishWithError:v9];
    goto LABEL_13;
  }

LABEL_10:
  v15 = sub_1000AC6E8();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "AcquireSlot was successful.", &v17, 2u);
  }

  [WeakRetained finish];
LABEL_13:
}

void sub_1000FDEEC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100AF7620;
  qword_100AF7620 = v1;
}

void sub_1000FE0DC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000FE1F4;
  v8[3] = &unk_100A05268;
  v9 = a3;
  v10 = a1[4];
  v14 = a1[7];
  v11 = v5;
  v12 = a1[5];
  v13 = a1[6];
  v6 = v5;
  v7 = v9;
  dispatch_async(&_dispatch_main_q, v8);
}

void sub_1000FE1F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (([v2 bl_isUserCancelError] & 1) != 0 || (v3 = *(a1 + 40)) == 0)
    {
      v14 = objc_retainBlock(*(a1 + 72));
      if (v14)
      {
        v19 = v14;
        v15 = [*(a1 + 48) validDownloadIDs];
        v19[2](v19, v15, *(a1 + 32));

        v14 = v19;
      }
    }

    else
    {
      v4 = [v3 host];
      if ([v4 length] >= 0x1F5)
      {
        v5 = [v4 substringToIndex:500];

        v4 = v5;
      }

      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"Cannot connect to %@" value:&stru_100A30A68 table:0];
      v8 = [NSString stringWithFormat:v7, v4];

      v9 = [UIAlertController alertControllerWithTitle:v8 message:0 preferredStyle:1];
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"OK" value:&stru_100A30A68 table:0];
      v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:&stru_100A07388];

      [v9 addAction:v12];
      v13 = +[BKAppDelegate currentSceneController];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000FE574;
      v20[3] = &unk_100A073B0;
      v23 = *(a1 + 72);
      v21 = *(a1 + 48);
      v22 = *(a1 + 32);
      [v13 presentViewController:v9 animated:1 completion:v20];
    }
  }

  else
  {
    if (*(a1 + 56) && *(a1 + 64))
    {
      v16 = +[BAEventReporter sharedReporter];
      [v16 emitAddToCollectionEventWithTracker:*(a1 + 56) collectionID:kBKCollectionDefaultIDSamples contentData:*(a1 + 64)];
    }

    kdebug_trace();
    v17 = objc_retainBlock(*(a1 + 72));
    if (v17)
    {
      v18 = [*(a1 + 48) validDownloadIDs];
      v17[2](v17, v18, *(a1 + 32));
    }

    kdebug_trace();
  }
}

void sub_1000FE574(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 32) validDownloadIDs];
    v4[2](v4, v3, *(a1 + 40));

    v2 = v4;
  }
}

void sub_1000FEBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000FEC04(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) setCompletion:0];
  if (+[BKUIPFeatures useUIPFluidBookOpenTransition])
  {
    v5 = +[AETestDriver shared];
    [v5 postEvent:kBETestDriverOpenAnimationSetupEnd sender:*(a1 + 32)];
  }
}

void sub_1000FED64(uint64_t a1)
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 libraryAssetProvider];
  v4 = [*(a1 + 32) assetIdentifier];
  v5 = [v3 libraryAssetOnMainQueueWithAssetIdentifier:v4];

  LOBYTE(v2) = [v5 streamable];
  v6 = [v5 assetLogID];
  v7 = [v5 updateDate];
  v8 = +[BKAppDelegate delegate];
  v9 = [v8 libraryAssetProvider];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000FEED4;
  v12[3] = &unk_100A07430;
  v15 = v2;
  v12[4] = *(a1 + 32);
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 assetForLibraryAsset:v5 completion:v12];
}

void sub_1000FEED4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000FEFCC;
  v10[3] = &unk_100A04B18;
  v16 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v15 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

void sub_1000FEFCC(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = [*(a1 + 32) title];
    v3 = [MPMediaItem bk_audioBookAssetURLWithAlbumTitle:v2 isCloudItem:1];

    if (v3)
    {
LABEL_3:
      v4 = [*(a1 + 48) _isProperlyInstalledAssetURL:v3];
      goto LABEL_8;
    }
  }

  else
  {
    v3 = [*(a1 + 32) url];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v5 = BCCurrentBookLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10078F71C(a1, v5);
  }

  v4 = 1;
LABEL_8:
  if ((byte_100AF7630 & 1) == 0)
  {
    byte_100AF7630 = 1;
    v6 = +[BCAugmentedExperienceRegistry sharedRegistry];
    [v6 registerPresenterClass:objc_opt_class() forExperienceType:0];
  }

  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 BOOLForKey:@"BKLookAssetSimulateFamilyError"];

  if (v8)
  {
    v9 = [NSError errorWithDomain:AssetEngineErrorDomain code:2003 userInfo:0];
    [*(a1 + 48) _completeWithAssetViewController:0 helper:0 error:v9];
  }

  if (!v4)
  {
    v10 = [NSError errorWithDomain:@"BKAssetLookup" code:1 userInfo:0];
    goto LABEL_26;
  }

  v10 = [*(a1 + 48) assetIdentifier];

  if (!v10)
  {
LABEL_26:
    v12 = *(a1 + 48);
    v23 = v10;
LABEL_27:
    [v12 _completeWithAssetViewController:0 helper:0 error:v23];
    goto LABEL_28;
  }

  v11 = +[AEPluginRegistry sharedInstance];
  v10 = [v11 pluginForURL:v3];

  v12 = *(a1 + 48);
  if (!v10)
  {
    v23 = 0;
    goto LABEL_27;
  }

  v13 = [v12 options];
  v14 = [v13 mutableCopy];

  v15 = [*(a1 + 32) storeID];
  v16 = [v15 longLongValue];

  if (v16 >= 1)
  {
    v17 = [*(a1 + 32) storeID];
    [v14 setObject:v17 forKeyedSubscript:@"storeID"];
  }

  v18 = [*(a1 + 48) assetIdentifier];
  v19 = [v18 permanentAssetID];

  if ([v19 length])
  {
    [v14 setObject:v19 forKeyedSubscript:@"assetID"];
  }

  if ([*(a1 + 56) length])
  {
    [v14 setObject:*(a1 + 56) forKeyedSubscript:AEAssetLogID];
  }

  v20 = *(a1 + 64);
  if (v20)
  {
    [v14 setObject:v20 forKeyedSubscript:AEAssetUpdateDate];
  }

  v21 = [v10 helperForURL:v3 withOptions:v14];
  v22 = BUProtocolCast();

  if (v22)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000FF3A4;
    v24[3] = &unk_100A07408;
    v24[4] = *(a1 + 48);
    v25 = v22;
    [v25 helperViewControllerWithOptions:v14 completion:v24];
  }

  else
  {
    [*(a1 + 48) _completeWithAssetViewController:0 helper:0 error:0];
  }

LABEL_28:
}

void sub_1000FF3A4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 code] == 1002 || objc_msgSend(v5, "code") == 2002)
  {
    +[(BKBasePresentingViewController *)BKAssetPresentingViewController];
  }

  [*(a1 + 32) _completeWithAssetViewController:v6 helper:*(a1 + 40) error:v5];
}

void sub_1000FF7C4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BCCurrentBookLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10078F810(a1, v3, v4);
    }

    v5 = [NSError errorWithDomain:AssetEngineErrorDomain code:1006 userInfo:0];
    v6 = objc_retainBlock(*(a1 + 56));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, v5);
    }

LABEL_11:

    goto LABEL_12;
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) URL];
  v5 = [v8 helperForURL:v9 withOptions:0];

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v12 = 0;
    [v5 helperValidateBookAuthorizationWithError:&v12 needsCoordination:0];
    v7 = v12;
    v10 = objc_retainBlock(*(a1 + 56));
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, v7);
    }

    goto LABEL_11;
  }

LABEL_12:
}

void sub_1001025C0(uint64_t a1)
{
  v2 = +[JSABridge sharedInstance];
  v3 = *(a1 + 32);
  v9[0] = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100102700;
  v6[3] = &unk_100A07480;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v4 = objc_retainBlock(v6);
  v9[1] = v4;
  v5 = [NSArray arrayWithObjects:v9 count:2];
  [v2 enqueueManagedValueInvocation:v3 method:@"viewControllerForTabBarItem" arguments:v5 file:@"BKAppSceneManager+BKTabBarControllerJSApp.m" line:170];
}

void sub_100102700(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  v5 = JSALog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "VC %{public}@ for %{public}@", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v4)
  {
    (*(v7 + 16))(v7, v4);
  }

  else
  {
    v8 = objc_opt_new();
    (*(v7 + 16))(v7, v8);
  }
}

void sub_100102AEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_100102B10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained setTabsAreLoaded:1];
    v2 = [WeakRetained launchCoordinator];
    [v2 signalConditionSatisfied:12];
  }

  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }
}

void sub_100102BA8(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = JSALog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = [v3 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loaded %lu tabs from bag...", buf, 0xCu);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100102DD8;
    v11[3] = &unk_100A074A8;
    objc_copyWeak(&v14, a1 + 6);
    v12 = v3;
    v13 = a1[4];
    v6 = objc_retainBlock(v11);
    if (v6)
    {
      if (+[NSThread isMainThread])
      {
        (v6[2])(v6);
      }

      else
      {
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100102E64;
        v9[3] = &unk_100A03920;
        v10 = v6;
        dispatch_async(&_dispatch_main_q, v9);
      }
    }

    objc_destroyWeak(&v14);
  }

  else
  {
    v7 = objc_retainBlock(a1[5]);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }
}

uint64_t sub_100102DD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained rootBarCoordinator];
  v4 = [v3 standardItemsManager];
  v5 = v4;
  if (*(a1 + 32))
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  [v4 processBagItems:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void sub_100102F7C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = JSALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078F89C(v7, v8);
    }

    (*(*(a1 + 32) + 16))();
  }

  else if ([v6 count])
  {
    v9 = +[BUBag defaultBag];
    v10 = [v9 countryCode];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001030C0;
    v11[3] = &unk_100A074F8;
    v12 = v6;
    v13 = *(a1 + 32);
    [v10 valueWithCompletion:v11];
  }
}

void sub_1001030C0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = JSALog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a3)
    {
      v7 = @"YES";
    }

    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Loaded tabs from bag, isDefault: %@", &v11, 0xCu);
  }

  v8 = [*(a1 + 32) objectForKey:@"standard"];
  v9 = JSALog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_10078F914(v5, v8, v9);
  }

  v10 = [BKRootBarItemsProvider standardItemsFromBagWith:v8 countryCode:v5];
  (*(*(a1 + 40) + 16))();
}

void sub_100103B6C(uint64_t a1)
{
  v2 = [*(a1 + 32) coverImage];
  if (v2 && (v3 = *(a1 + 48), v2, (v3 & 1) != 0))
  {
    v7 = [TUIImageContent alloc];
    v8 = [BCUPurgeableImage alloc];
    v14 = [*(a1 + 32) coverImage];
    v9 = [v8 initWithImage:v14];
    v10 = *(a1 + 32);
    v11 = [v7 initWithImage:v9 insets:*(v10 + 88) ^ 1 intrinsicSize:*(v10 + 40) flags:{*(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80)}];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v6 = v14;
  }

  else
  {
    if ((*(a1 + 48) & 2) == 0)
    {
      return;
    }

    v4 = [[TUIImageContent alloc] initWithIntrinsicSize:*(*(a1 + 32) + 88) ^ 1 flags:{*(*(a1 + 32) + 72), *(*(a1 + 32) + 80)}];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

_BYTE *sub_100103D0C(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[88] & 1) == 0)
  {
    return [result _q_loadIfNeeded];
  }

  return result;
}

void sub_100103E10(uint64_t a1)
{
  [*(a1 + 32) _q_loadIfNeeded];
  v2 = [*(a1 + 32) coverImage];

  if (v2)
  {
    v3 = [TUIImageContent alloc];
    v4 = [BCUPurgeableImage alloc];
    v10 = [*(a1 + 32) coverImage];
    v5 = [v4 initWithImage:v10];
    v6 = *(a1 + 32);
    v7 = [v3 initWithImage:v5 insets:*(v6 + 88) ^ 1 intrinsicSize:*(v6 + 40) flags:{*(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 80)}];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

void *sub_10010416C(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 32);
  if (v2)
  {
    *(v1 + 32) = v2 - 1;
    result = result[4];
    if (!result[4])
    {
      return [result _q_unload];
    }
  }

  return result;
}

void sub_1001043C4(id *a1)
{
  v2 = BCImageCacheLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] identifier];
    v4 = v3;
    v5 = a1[5];
    if (!v5)
    {
      v5 = @"no";
    }

    *buf = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BKCoverResourceProvider: fetching %@ (series: %@)", buf, 0x16u);
  }

  v6 = +[BCCacheManager defaultCacheManager];
  v7 = a1[4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010458C;
  v8[3] = &unk_100A07628;
  objc_copyWeak(v11, a1 + 6);
  v9 = a1[4];
  v10 = a1[5];
  v11[1] = a1[7];
  [v6 fetchCGImageFor:v7 forRequest:v7 timeOut:1 waitForNonGeneric:v8 completion:5.0];

  objc_destroyWeak(v11);
}

void sub_10010458C(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 89) = 0;
    if (v3)
    {
      v6 = [v3 image];
      v7 = [v6 CGImage];

      if (!v7)
      {
        v8 = BCImageCacheLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10078FA54(v3, v8, v22, v23, v24, v25, v26, v27);
        }

        goto LABEL_12;
      }

      if ([v3 quality] == 1)
      {
        v8 = BCImageCacheLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10078F9E8(v3, v8, v9, v10, v11, v12, v13, v14);
        }

LABEL_12:

        goto LABEL_24;
      }

      v28 = [v3 isGeneric];
      v29 = BCImageCacheLog();
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      if (v28)
      {
        if (v30)
        {
          v31 = a1[5];
          if (!v31)
          {
            v31 = @"no";
          }

          *buf = 138412546;
          v40 = v3;
          v41 = 2112;
          v42 = v31;
          v32 = "BKCoverResourceProvider: Generic image returned with: %@ (series: %@)";
LABEL_22:
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v32, buf, 0x16u);
        }
      }

      else if (v30)
      {
        v33 = a1[5];
        if (!v33)
        {
          v33 = @"no";
        }

        *buf = 138412546;
        v40 = v3;
        v41 = 2112;
        v42 = v33;
        v32 = "BKCoverResourceProvider: imaged returned with: %@ (series: %@)";
        goto LABEL_22;
      }

      v34 = v5[1];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10010482C;
      v35[3] = &unk_100A07600;
      objc_copyWeak(v38, a1 + 6);
      v36 = v3;
      v37 = a1[5];
      v38[1] = a1[7];
      dispatch_async(v34, v35);

      objc_destroyWeak(v38);
      goto LABEL_24;
    }

    v15 = BCImageCacheLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10078FAC0(a1, v15, v16, v17, v18, v19, v20, v21);
    }
  }

LABEL_24:
}

void sub_10010482C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001048F8;
    v5[3] = &unk_100A075D8;
    v5[4] = WeakRetained;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    dispatch_async(v4, v5);
  }
}

void sub_1001048F8(uint64_t a1)
{
  v2 = [UIImage alloc];
  v3 = [*(a1 + 40) image];
  v4 = [v2 initWithCGImage:{objc_msgSend(v3, "CGImage")}];
  v5 = (a1 + 32);
  [*(a1 + 32) setCoverImage:v4];

  if ([*(a1 + 48) isEqualToString:BCUCoverEffectsIdentifierSeriesStackDiagonal])
  {
    v6 = [*(a1 + 40) identifier];
    v7 = [*(a1 + 32) coverImage];
    [v7 size];
    v9 = v8;
    v10 = [*(a1 + 32) coverImage];
    [v10 size];
    v12 = v9 / v11;

    if (v12 <= 1.0)
    {
      if (([*(a1 + 40) isGenericSeriesStack] & 1) == 0)
      {
        [*(a1 + 40) nonShadowArea];
        v20 = v19;
        v21 = [*(a1 + 32) coverImage];
        [v21 size];
        v23 = v22 / *(a1 + 56);
        [*(a1 + 40) nonShadowArea];
        v25 = v23 - v24;
        [*(a1 + 40) nonShadowArea];
        v27 = v25 + v26 * -2.0;

        [*(a1 + 40) nonShadowArea];
        v29 = v28 + v28;
        v30 = [*(a1 + 32) coverImage];
        [v30 size];
        v32 = v31 / *(a1 + 56);
        [*(a1 + 40) nonShadowArea];
        v34 = (v32 - v33) / *(a1 + 56);
        [*(a1 + 40) nonShadowArea];
        v36 = v34 + v35 * (*(a1 + 56) * 0.5);

        v37 = *(a1 + 32);
        *(v37 + 40) = v20;
        *(v37 + 48) = v27;
        *(v37 + 56) = v36;
        *(v37 + 64) = v29;
      }

      v38 = *(a1 + 32);
      v39 = [v38 coverImage];
      [*(a1 + 40) nonShadowArea];
      [v38 _nq_loadedImage:v39 withIntrinsicSize:{v40, v41}];
    }

    else
    {
      v13 = BCImageCacheLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10078FB30(v6, v5, v13);
      }

      v14 = +[BCCacheManager defaultCacheManager];
      v15 = +[BKSeriesCoverManager sharedInstance];
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_100104C4C;
      v43[3] = &unk_100A075B0;
      v44 = v14;
      v16 = v14;
      [v15 assetIDsAndOptionsForBooksInSeries:v6 completion:v43];

      [v16 pruneItemsWithIdentifier:v6 forMedium:0];
      [v16 pruneItemsWithIdentifier:v6 forMedium:1];
      [v16 incrementVersionForIdentifier:v6];
    }
  }

  else
  {
    v17 = *v5;
    v42 = [*v5 coverImage];
    v18 = [*v5 coverImage];
    [v18 size];
    [v17 _nq_loadedImage:v42 withIntrinsicSize:?];
  }
}

void sub_100104C4C(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:BCCoverCacheAssetIDKey];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [*(a1 + 32) pruneItemsWithIdentifier:v8 forMedium:0];
        [*(a1 + 32) pruneItemsWithIdentifier:v8 forMedium:1];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *(a1 + 32);
  v10 = [NSSet setWithArray:v3];
  [v9 incrementVersionForIdentifiers:v10];
}

void sub_1001050EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_100105124(uint64_t a1)
{
  if ([*(*(a1 + 32) + 24) count])
  {
    v2 = [*(*(a1 + 32) + 24) allObjects];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 32);
  if (*(v5 + 88) != 1 || (*(v5 + 72) == *(a1 + 64) ? (v6 = *(v5 + 80) == *(a1 + 72)) : (v6 = 0), !v6))
  {
    *(v5 + 72) = *(a1 + 64);
    *(*(a1 + 32) + 88) = *(a1 + 40) != 0;
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_1001051C4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 imageResourceDidChangeIntrinsicSize:{*(a1 + 32), v8}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_1001053D8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100AF7648;
  qword_100AF7648 = v1;
}

void sub_100105C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100105C94(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 bk_window];
  v7 = [v6 rootViewController];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_100105EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100105EF8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  obj = BUProtocolCast();
  v5 = [obj openBookAssetID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    *a3 = 1;
  }
}

void sub_1001064C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_100106508(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v5 = [v11 scene];
  v6 = [v5 _persistenceIdentifier];

  if (v6)
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    v8 = [v5 _persistenceIdentifier];
    [v7 addObject:v8];

    v9 = objc_retainBlock(*(a1 + 32));
    if (v9)
    {
      v10 = [v11 sceneInfo];
      v9[2](v9, v10, *(*(a1 + 48) + 8) + 24);
    }

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }
}

void sub_100106A48(uint64_t a1)
{
  v2 = [*(a1 + 32) primarySceneController];
  v3 = [v2 bk_window];

  if (!v3)
  {
    v4 = [*(a1 + 32) primarySceneController];
    [v4 setupPlaceholderWindow];
  }

  v5 = objc_retainBlock(*(a1 + 40));
  if (v5)
  {
    v7 = v5;
    v6 = [*(a1 + 32) primarySceneController];
    v7[2](v7, v6);

    v5 = v7;
  }
}

void sub_100106EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100106EE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v2 = [WeakRetained pendingPrimarySceneCompletionBlocks];
    [v2 removeAllObjects];
  }
}

void sub_100107330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_100107380(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setRequestAssetID:*(a1 + 32)];
  v3 = objc_retainBlock(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1001073F4(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = [a2 sceneController];
  if (![v12 sceneType])
  {
    v5 = [v12 requestAssetID];
    v6 = [v5 isEqualToString:*(a1 + 32)];

    if (v6)
    {
      v7 = [*(a1 + 40) pendingBookSceneCompletionBlocksByAssetID];
      v8 = [v7 objectForKeyedSubscript:*(a1 + 32)];

      if ([v8 count])
      {
        v9 = objc_retainBlock(*(a1 + 48));
        [v8 addObject:v9];
      }

      else
      {
        objc_opt_class();
        v9 = BUDynamicCast();
        v10 = objc_retainBlock(*(a1 + 48));
        v11 = v10;
        if (v10)
        {
          (*(v10 + 2))(v10, v9);
        }
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}

void sub_10010752C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = WeakRetained;
    if (*(a1 + 32))
    {
      [WeakRetained _finishSceneRequest:?];
    }

    else
    {
      v4 = [WeakRetained pendingBookSceneCompletionBlocksByAssetID];
      v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];

      if (v5)
      {
        [v5 removeAllObjects];
      }

      v6 = [v7 pendingBookSceneRequestAssetIDs];
      [v6 removeObject:*(a1 + 40)];
    }
  }
}

void sub_1001077C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001077EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [*(a1 + 32) pendingAccountSceneCompletionBlocks];
    [WeakRetained _handleErrorForCompletionBlocks:v3];
  }
}

void sub_100107B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100107B9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [*(a1 + 32) pendingEndOfBookSceneCompletionBlocks];
    [WeakRetained _handleErrorForCompletionBlocks:v3];
  }
}

void sub_100107E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100107E3C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v12 = BUProtocolCast();
  v5 = [v12 sceneSession];
  v6 = [v12 sceneController];
  v7 = [v6 scene];
  if (v7)
  {
    v8 = v7;
    v9 = [*(a1 + 32) primarySceneController];
    v10 = v9;
    if (v6 == v9)
    {
    }

    else
    {
      v11 = [v12 supportsOpeningToAuxiliaryScene];

      if (v11)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    *a3 = 1;
    goto LABEL_9;
  }

  if (([v12 supportsOpeningToAuxiliaryScene] & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
}

void sub_100108054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010806C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v11 = BUProtocolCast();
  v5 = [v11 openBookAssetID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  v7 = v11;
  if (v6)
  {
    v8 = [v11 sceneSession];
    v9 = [v11 sceneController];
    v10 = v9;
    if (v9 && ![v9 sceneType] || objc_msgSend(v11, "supportsOpeningToAuxiliaryScene"))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
      *a3 = 1;
    }

    v7 = v11;
  }
}

void sub_1001083C8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = BUProtocolCast();
  v5 = [v7 openBookAssetID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6 && ([v7 supportsOpeningToAuxiliaryScene] & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_100108464(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_1001084D0(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

BOOL sub_100109CC0(uint64_t a1, void *a2)
{
  v3 = [a2 scene];
  v4 = v3 != *(a1 + 32);

  return v4;
}

void sub_100109FA8(uint64_t a1, void *a2)
{
  v3 = [a2 bookFlowAssetPresenting];
  v4 = [v3 presenterViewControllersConformingToProtocol:*(a1 + 32)];

  [*(a1 + 40) addObjectsFromArray:v4];
}

void sub_10010A0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_10010A100(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v5 = [v8 scene];
  if ([v5 activationState] == 1)
  {
  }

  else
  {
    v6 = [v8 scene];
    v7 = [v6 activationState];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  ++*(*(*(a1 + 32) + 8) + 24);
  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_5:
  if (*(*(*(a1 + 32) + 8) + 24) >= 2)
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_10010A28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010A2A4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = BUProtocolCast();
  v5 = [v8 openBookAssetID];
  if (!v5 || (v6 = v5, v7 = [v8 supportsOpeningToAuxiliaryScene], v6, (v7 & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void sub_10010A650(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 updateCloseTypeState:{objc_msgSend(v2, "closeTypeForSceneController:", v3)}];
}

void sub_10010A780(id a1, BKPrimarySceneControlling *a2)
{
  v4 = [(BKPrimarySceneControlling *)a2 bookFlowAssetPresenting];
  v2 = [v4 presenterFirstVisibleChildConformingToProtocol:&OBJC_PROTOCOL___BKAssetPresenting];
  v3 = v2;
  if (v2)
  {
    [v2 im_dismissAnimated:0];
  }
}

void sub_10010A920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010A93C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(&qword_100AF7658);

  if (!WeakRetained)
  {
    v6 = [[BKDebugViewController alloc] initWithStyle:1];
    v3 = [[BSUINavigationController alloc] initWithRootViewController:v6];
    [v3 setModalPresentationStyle:1];
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 controller];
    [v5 presentViewController:v3 animated:1 completion:0];

    objc_storeWeak(&qword_100AF7658, v3);
  }
}

void sub_10010AC78(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) _bkaxSearchDelegate];
  v3 = __IMAccessibilityCastAsClass();

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 view];
  v5 = [v4 _accessibleSubviews];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v12 + 1) + 8 * v9);
      NSClassFromString(@"UIWebDocumentView");
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  if (IMAccessibilityShouldPerformValidationChecks())
  {
    IMAccessibilityShouldCrashOnValidationErrorAfterLaunch();
    if (__IMAccessibilityHandleValidationErrorWithDescription())
    {
      abort();
    }
  }

  v11 = [v3 view];
LABEL_14:
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v11);
}

void sub_10010B134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10010B15C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processNextBatchWithCompletion:v3];
}

void sub_10010B38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010B794(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = BKBookletMigrationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078FC0C(a1, v7, v8);
    }
  }

  else if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_10010BA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10010BAB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = BKBookletMigrationLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10078FC98(a1, v6, v7);
    }

LABEL_8:

    goto LABEL_9;
  }

  if (v5)
  {
    v8 = BKBookletMigrationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10078FD58(v5, a1, v8);
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = v5;
    v7 = *(v9 + 40);
    *(v9 + 40) = v10;
    goto LABEL_8;
  }

LABEL_9:
}

void sub_10010BB70(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingItems];
  [v2 removeAllObjects];
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    [v2 addObjectsFromArray:*(*(*(a1 + 40) + 8) + 40)];
  }

  if ([v2 count])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10010BCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010BCF0(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingItems];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] != 0;
}

void sub_10010BEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10010BF04(uint64_t a1)
{
  v8 = [*(a1 + 32) pendingItems];
  if ([v8 count])
  {
    v2 = [*(a1 + 32) _batchSize];
    v3 = [v8 count];
    if (v2 >= v3)
    {
      v2 = v3;
    }

    v4 = [v8 subarrayWithRange:{0, v2}];
    [v8 removeObjectsInRange:{0, v2}];
    v5 = [v4 valueForKey:@"storeIDString"];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_10010C208(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    dispatch_group_enter(*(a1 + 32));
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v39 = 0u;
    v26 = v3;
    obj = v3;
    v29 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
    if (v29)
    {
      v28 = *v40;
      do
      {
        v4 = 0;
        do
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v39 + 1) + 8 * v4);
          v30 = v4;
          if ([v5 isSupplementalContent])
          {
            v6 = [NSSet setWithObject:v5];
          }

          else
          {
            v7 = [v5 supplementalContentAssets];

            v8 = BKBookletMigrationLog();
            v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
            if (v7)
            {
              if (v9)
              {
                v22 = [v5 storeID];
                v23 = [v5 dataSourceIdentifier];
                *buf = 141558530;
                v44 = 1752392040;
                v45 = 2112;
                v46 = v22;
                v47 = 2114;
                v48 = v23;
                _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "_triggerDownloads: Not expected to handle parent: [%{mask.hash}@], dataSource: %{public}@", buf, 0x20u);
              }

              v6 = [v5 supplementalContentAssets];
            }

            else
            {
              if (v9)
              {
                v24 = [v5 storeID];
                v25 = [v5 dataSourceIdentifier];
                *buf = 141558530;
                v44 = 1752392040;
                v45 = 2112;
                v46 = v24;
                v47 = 2114;
                v48 = v25;
                _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "_triggerDownloads: Not expected to handle asset: [%{mask.hash}@], dataSource: %{public}@", buf, 0x20u);
              }

              v6 = objc_alloc_init(NSSet);
            }
          }

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v10 = v6;
          v11 = [v10 countByEnumeratingWithState:&v35 objects:v51 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v36;
            do
            {
              for (i = 0; i != v12; i = i + 1)
              {
                if (*v36 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v35 + 1) + 8 * i);
                v16 = [v15 storeID];
                v17 = [v15 storePlaylistID];
                [*(a1 + 40) removeObject:v16];
                v18 = [v15 isDownloading];
                v19 = BKBookletMigrationLog();
                v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
                if (v18)
                {
                  if (v20)
                  {
                    *buf = 141558786;
                    v44 = 1752392040;
                    v45 = 2112;
                    v46 = v17;
                    v47 = 2160;
                    v48 = 1752392040;
                    v49 = 2112;
                    v50 = v16;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_triggerDownloads: Asset is already downloading: [%{mask.hash}@, %{mask.hash}@]", buf, 0x2Au);
                  }
                }

                else
                {
                  if (v20)
                  {
                    *buf = 141558786;
                    v44 = 1752392040;
                    v45 = 2112;
                    v46 = v17;
                    v47 = 2160;
                    v48 = 1752392040;
                    v49 = 2112;
                    v50 = v16;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_triggerDownloads: Attempt to download asset: [%{mask.hash}@, %{mask.hash}@]", buf, 0x2Au);
                  }

                  v19 = objc_alloc_init(BKResolveLibraryAssetOptions);
                  [v19 setUserInitiated:&__kCFBooleanFalse];
                  dispatch_group_enter(*(a1 + 32));
                  v21 = *(a1 + 48);
                  v31[0] = _NSConcreteStackBlock;
                  v31[1] = 3221225472;
                  v31[2] = sub_10010C75C;
                  v31[3] = &unk_100A079E8;
                  v32 = v17;
                  v33 = v16;
                  v34 = *(a1 + 32);
                  [v21 resolveLibraryAsset:v15 options:v19 completion:v31];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v35 objects:v51 count:16];
            }

            while (v12);
          }

          v4 = v30 + 1;
        }

        while ((v30 + 1) != v29);
        v29 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
      }

      while (v29);
    }

    dispatch_group_leave(*(a1 + 32));
    v3 = v26;
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_10010C75C(uint64_t a1)
{
  v2 = BKBookletMigrationLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 141558786;
    v6 = 1752392040;
    v7 = 2112;
    v8 = v3;
    v9 = 2160;
    v10 = 1752392040;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_triggerDownloads: resolveLibraryAsset completion: [%{mask.hash}@, %{mask.hash}@]", &v5, 0x2Au);
  }

  dispatch_group_leave(*(a1 + 48));
}

void sub_10010C834(id *a1)
{
  if ([a1[4] count])
  {
    v2 = BKBookletMigrationLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "_triggerDownloads: libraryAssets not found for %@", &v7, 0xCu);
    }

    [a1[5] _setMigrationState:700 forStoreIDStrings:a1[4] logPrefix:@"_triggerDownloads"];
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if ([WeakRetained _hasPendingItems])
  {
    v5 = [WeakRetained coalescingProcessNextBatch];
    [v5 signalWithCompletion:&stru_100A07A08];
  }

  else
  {
    v6 = BKBookletMigrationLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_triggerDownloads: Pending queue is empty", &v7, 2u);
    }

    [a1[5] _notifyDidBecomeEmpty];
  }
}

void sub_10010E270(uint64_t a1)
{
  v2 = [*(a1 + 32) readBuyButton];
  [v2 resetButtonState];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setNeedsLayout];
}

void sub_10010E2D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained audiobookStatus];
  v3 = [v2 assetAudiobookStatusIsPlaying];
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 audiobookControl];
  [v5 setPlaying:v3];
}

void sub_10010E364(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained audiobookStatus];
  [v2 assetAudiobookStatusTrackProgress];
  v4 = v3;
  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 audiobookControl];
  [v6 setProgress:v4];
}

void sub_10010E3FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateAssetStrings];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setNeedsLayout];
}