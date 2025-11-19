id sub_10010E464(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryDownloadStatus];
  [v2 progressValue];
  v4 = v3;
  v5 = [*(a1 + 32) downloadProgressButton];
  *&v6 = v4;
  [v5 setProgress:v6];

  v7 = *(a1 + 32);

  return [v7 setNeedsLayout];
}

id sub_10010E554(uint64_t a1)
{
  [*(a1 + 32) updateBuyReadButton];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

void sub_1001109E4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = [*(a1 + 32) bookDescription];
  [v3 setAlpha:v2];

  if ([*(a1 + 32) shouldShowCloud])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) cloudView];
  [v5 setAlpha:v4];

  v6 = [*(a1 + 32) shouldShowCloud];
  v7 = [*(a1 + 32) cloudView];
  [v7 setIsAccessibilityElement:v6];

  if ([*(a1 + 32) shouldShowDownloadProgressButton])
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [*(a1 + 32) downloadProgressButton];
  [v9 setAlpha:v8];

  if ([*(a1 + 32) shouldShowMoreButton])
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  v11 = [*(a1 + 32) moreButton];
  [v11 setAlpha:v10];

  if ([*(a1 + 32) isInEditMode])
  {
    v12 = 0.0;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = [*(a1 + 32) readBuyButton];
  [v13 setAlpha:v12];
}

void sub_100110B3C(uint64_t a1)
{
  if ([*(a1 + 32) isInEditMode])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) checkmarkView];
  [v3 setAlpha:v2];

  if ([*(a1 + 32) isInEditMode])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) dragBarView];
  [v5 setAlpha:v4];
}

void sub_100110BE4(uint64_t a1)
{
  [*(a1 + 32) isRTL];
  IMRectFlippedForRTL();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) checkmarkView];
  [v10 setFrame:{v3, v5, v7, v9}];

  [*(a1 + 32) isRTL];
  IMRectFlippedForRTL();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [*(a1 + 32) dragBarView];
  [v19 setFrame:{v12, v14, v16, v18}];
}

void sub_100110CD4(uint64_t a1)
{
  v2 = [*(a1 + 32) bookDescription];
  [v2 frame];

  CGRectGetWidth(*(a1 + 40));
  [*(a1 + 32) isRTL];
  IMRectFlippedForRTL();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) bookDescription];
  [v11 setFrame:{v4, v6, v8, v10}];
}

void sub_100111558(uint64_t a1)
{
  v2 = [*(a1 + 32) coverView];
  v3 = [v2 coverLayer];
  [v3 setAnimateFrameChange:0];

  v9 = [*(a1 + 32) coverView];
  v4 = [v9 coverLayer];
  v5 = *(a1 + 32);
  v6 = v5[8];
  [v5 coverArea];
  [v4 setLibraryAsset:v6 size:{v7, v8}];
}

id sub_1001116C8(uint64_t a1)
{
  if ([*(a1 + 32) isInEditMode] && !objc_msgSend(*(a1 + 32), "isSelected"))
  {
    v2 = [*(a1 + 32) wantToReadMetrics];
    [v2 shrinkAlpha];
    [*(a1 + 32) setAlpha:?];
  }

  else
  {
    [*(a1 + 32) setAlpha:1.0];
  }

  v3 = [*(a1 + 32) dataSource];
  v4 = [v3 selectedCheckmarkImageForSelectedState:*(a1 + 40)];
  v5 = [*(a1 + 32) checkmarkView];
  [v5 setImage:v4];

  if (*(a1 + 40) == 1)
  {
    +[UIColor bc_booksKeyColor];
  }

  else
  {
    +[UIColor bc_booksTertiaryLabelColor];
  }
  v6 = ;
  v7 = [*(a1 + 32) checkmarkView];
  [v7 setTintColor:v6];

  v8 = *(a1 + 32);

  return [v8 layoutCoverView];
}

void sub_100114358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100114378(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_retainBlock(*(a1 + 32));
    if (v3)
    {
      v4 = [WeakRetained parameters];
      v5 = [WeakRetained error];
      v3[2](v3, v4, v5);
    }
  }

  else
  {
    v10 = NSLocalizedDescriptionKey;
    v11 = @"Unexpected nil operation";
    v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [NSError errorWithDomain:@"BKUpdatesParameterProviderDomain" code:-1 userInfo:v6];

    v8 = objc_retainBlock(*(a1 + 32));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 0, v7);
    }
  }
}

void sub_100114518(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  v2 = qword_100AF7660;
  qword_100AF7660 = v1;
}

void sub_100114894(uint64_t a1, void *a2)
{
  v5 = a2;
  [+[BCAppKitBundleLoader appKitBundleClass](BCAppKitBundleLoader "appKitBundleClass")];
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_100114910(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100114A50;
  block[3] = &unk_100A07B38;
  objc_copyWeak(&v17, (a1 + 88));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v12 = v7;
  v13 = v6;
  v8 = *(a1 + 80);
  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v16 = v8;
  v14 = v9;
  v18 = *(a1 + 96);
  v19 = *(a1 + 100);
  v15 = v10;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v17);
}

void sub_100114A50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained urlHandler];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100114C08;
    v18[3] = &unk_100A07B10;
    v9 = *(a1 + 80);
    v23 = *(a1 + 96);
    v18[4] = v3;
    v19 = *(a1 + 32);
    v24 = *(a1 + 97);
    v17 = *(a1 + 56);
    v10 = v17.i64[0];
    v20 = vextq_s8(v17, v17, 8uLL);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    *&v13 = *(a1 + 72);
    *(&v13 + 1) = v9;
    *&v14 = v11;
    *(&v14 + 1) = v12;
    v21 = v14;
    v22 = v13;
    [v4 handleURL:v5 sourceApplication:v6 annotation:v8 isLaunch:1 transaction:v7 completion:v18];
  }

  else
  {
    v15 = objc_retainBlock(*(a1 + 80));
    v16 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0);
    }
  }
}

void sub_100114C08(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = objc_retainBlock(*(a1 + 88));
    if (v3)
    {
      v19 = v3;
      v3[2](v3, 0);
      v3 = v19;
    }
  }

  else
  {
    if (*(a1 + 96) != 1)
    {
      goto LABEL_13;
    }

    v4 = [*(a1 + 32) mainLibrary];
    v5 = [v4 canImportURL:*(a1 + 40) openInPlace:0 options:0];

    if (v5)
    {
      v6 = [*(a1 + 32) launchCoordinator];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10011507C;
      v34[3] = &unk_100A07AC0;
      *v20 = *(a1 + 40);
      v7 = v20[0];
      v35 = vextq_s8(*v20, *v20, 8uLL);
      v38 = *(a1 + 97);
      v36 = *(a1 + 56);
      v37 = *(a1 + 88);
      [v6 appLaunchCoordinatorPerformWhenLaunched:@"Open in Place Copy First" block:v34];

      return;
    }

    if ((*(a1 + 96) & 1) != 0 && [*(a1 + 40) bu_isFolder])
    {
      v8 = *(a1 + 48);
      v39 = *(a1 + 40);
      v9 = [NSArray arrayWithObjects:&v39 count:1];
      [v8 handleImportURLs:v9 openAfterImport:*(a1 + 97) importInPlace:*(a1 + 98) showLibraryAllCollection:*(a1 + 99) switchToLibrary:*(a1 + 100) transaction:*(a1 + 56) perURLCompletion:0 completion:*(a1 + 88)];
    }

    else
    {
LABEL_13:
      v10 = [*(a1 + 40) bu_isbnForURI];
      v11 = [v10 length];

      if (v11)
      {
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100115124;
        v26[3] = &unk_100A07AE8;
        v12 = *(a1 + 40);
        v26[4] = *(a1 + 32);
        v27 = *(a1 + 64);
        v28 = *(a1 + 72);
        v29 = *(a1 + 80);
        v32 = *(a1 + 96);
        v33 = *(a1 + 100);
        v30 = *(a1 + 56);
        v31 = *(a1 + 88);
        [v12 bu_storeURLForISBNURNWithCompletion:v26];
      }

      else
      {
        v13 = [*(a1 + 80) BOOLValue];
        objc_initWeak(&location, *(a1 + 32));
        v14 = [*(a1 + 48) defaultSceneControllerForTransaction:*(a1 + 56)];
        v15 = [v14 externalURLOpenPrompter];
        v16 = *(a1 + 40);
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100115174;
        v21[3] = &unk_100A03648;
        objc_copyWeak(&v24, &location);
        v22 = *(a1 + 40);
        v23 = *(a1 + 64);
        [v15 maybePromptUserBeforeOpeningExternalURL:v16 shouldThrottle:v13 ^ 1 promptContext:0 completion:v21];

        v17 = objc_retainBlock(*(a1 + 88));
        v18 = v17;
        if (v17)
        {
          (*(v17 + 2))(v17, 0);
        }

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);
      }
    }
  }
}

void sub_100115040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011507C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 handleImportURLs:v3 openAfterImport:*(a1 + 64) importInPlace:*(a1 + 65) showLibraryAllCollection:*(a1 + 66) switchToLibrary:*(a1 + 67) transaction:*(a1 + 48) perURLCompletion:0 completion:*(a1 + 56)];
}

id sub_100115124(uint64_t a1, uint64_t a2)
{
  BYTE2(v3) = *(a1 + 84);
  LOWORD(v3) = *(a1 + 82);
  return [*(a1 + 32) handleApplicationURL:a2 sourceApplication:*(a1 + 40) annotation:*(a1 + 48) likelyUserInitiated:*(a1 + 56) canImport:*(a1 + 80) openAfterImport:*(a1 + 81) importInPlace:v3 showLibraryAllCollection:*(a1 + 64) switchToLibrary:*(a1 + 72) transaction:? completion:?];
}

void sub_100115174(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _openExternalURL:*(a1 + 32) sourceApplication:*(a1 + 40)];
  }
}

void sub_100115354(uint64_t a1)
{
  v2 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(a1 + 40) _findImportEligibleURLsAtURL:*(*(&v17 + 1) + 8 * v7)];
        [v2 addObjectsFromArray:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011553C;
  v11[3] = &unk_100A07B88;
  v9 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v2;
  v16 = *(a1 + 72);
  v13 = v9;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v10 = v2;
  dispatch_async(&_dispatch_main_q, v11);
}

void sub_10011553C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) launchCoordinator];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100115648;
  v10[3] = &unk_100A07B88;
  v4 = *(a1 + 40);
  v14 = *(a1 + 72);
  *&v5 = v4;
  *(&v5 + 1) = *v2;
  v9 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v13 = *(a1 + 64);
  [v3 appLaunchCoordinatorPerformWhenLaunched:@"handle Import URLs" block:v10];
}

void sub_100115648(uint64_t a1)
{
  v16 = +[BKLibraryImportStatusController sharedController];
  v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*(a1 + 32) count]);
  v13 = [*(a1 + 32) firstObject];
  v12 = [*(a1 + 32) lastObject];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v15 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v11 = *v24;
    do
    {
      v2 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v23 + 1) + 8 * v2);
        [v16 startImportOperation];
        if ([v3 isEqual:v13])
        {
          v4 = *(a1 + 72);
          v5 = *(a1 + 73);
          v6 = *(a1 + 74);
        }

        else
        {
          v4 = 0;
          v5 = 0;
          v6 = 0;
        }

        v7 = [*(a1 + 40) importCoordinator];
        v8 = *(a1 + 75);
        v9 = *(a1 + 48);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1001158FC;
        v17[3] = &unk_100A07B60;
        v17[4] = v3;
        v18 = v16;
        v19 = v14;
        v21 = *(a1 + 56);
        v20 = v12;
        v22 = *(a1 + 64);
        [v7 importBookFromURL:v3 openAfterImport:v6 & 1 importInPlace:v8 showLibraryAllCollection:v5 & 1 switchToLibrary:v4 & 1 transaction:v9 completion:v17];

        v2 = v2 + 1;
      }

      while (v15 != v2);
      v15 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }
}

void sub_1001158FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = BKLibraryBookImportLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v11 = 141558274;
      v12 = 1752392040;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handleImportURLs: Imported: %{mask.hash}@", &v11, 0x16u);
    }

    [*(a1 + 40) completeImportOperation];
    [*(a1 + 48) addObject:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10078FE80(a1, v5);
    }

    [*(a1 + 40) failImportOperation];
  }

  v7 = objc_retainBlock(*(a1 + 64));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, *(a1 + 32), v3);
  }

  if ([*(a1 + 32) isEqual:*(a1 + 56)])
  {
    v9 = objc_retainBlock(*(a1 + 72));
    if (v9)
    {
      v10 = [*(a1 + 48) copy];
      v9[2](v9, v10);
    }
  }
}

void sub_100115AC8(id a1)
{
  v1 = [UTTypePDF identifier];
  v19[0] = v1;
  v2 = [UTTypeEPUB identifier];
  v19[1] = v2;
  v19[2] = kBKUTITypeEPUBFolder;
  v19[3] = kBKUTITypeBlissEPUB;
  v19[4] = kBKUTITypeBliss;
  v19[5] = kBKUTITypeBlissAlternate;
  v19[6] = kBKUTITypeBlissIBA;
  v3 = [NSArray arrayWithObjects:v19 count:7];

  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [UTType typeWithIdentifier:*(*(&v14 + 1) + 8 * v9), v14];
        [v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = +[BKAppSceneManager supportedAudiobookImportTypes];
  v12 = [v4 arrayByAddingObjectsFromArray:v11];
  v13 = qword_100AF7670;
  qword_100AF7670 = v12;
}

void sub_100115D20(id a1)
{
  v1 = qword_100AF7680;
  qword_100AF7680 = &__NSArray0__struct;
}

void sub_100115D7C(id a1)
{
  v1 = qword_100AF7690;
  qword_100AF7690 = &__NSArray0__struct;
}

uint64_t sub_100116288(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 pathExtension];
  if ([v3 length])
  {
    v4 = [BKAssetUtilities utiTypeForContentType:[BKAssetUtilities contentTypeForExtension:v3]];
    if (v4 && ([UTType typeWithIdentifier:v4], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v6 = v5;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = +[BKAppSceneManager supportedFileImportTypes];
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = *v13;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v7);
            }

            if (([v6 conformsToType:*(*(&v12 + 1) + 8 * i)]& 1) != 0)
            {
              v8 = 1;
              goto LABEL_18;
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }

    else
    {
      v6 = BKLibraryBookImportLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10078FF4C();
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_100116448(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = BKLibraryBookImportLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10078FFC0();
  }

  return 1;
}

void sub_100116D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_100116DB4(uint64_t a1, void *a2)
{
  v8 = a2;
  v4 = [v8 dateAccessed];

  if (v4)
  {
    v5 = [v8 dateAccessed];
    [v5 timeIntervalSinceReferenceDate];
    if (v6 > *(*(*(a1 + 32) + 8) + 24))
    {
      [v5 timeIntervalSinceReferenceDate];
      *(*(*(a1 + 32) + 8) + 24) = v7;
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

void sub_100116FF8(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) playbackQueue];
  v3 = BUDynamicCast();

  v4 = _os_activity_create(&_mh_execute_header, "Audiobook playback queue request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117128;
  block[3] = &unk_100A04FE8;
  v9 = v3;
  v7 = *(a1 + 32);
  v5 = v7.i64[0];
  v10 = vextq_s8(v7, v7, 8uLL);
  v11 = *(a1 + 48);
  v6 = v3;
  os_activity_apply(v4, block);
}

void sub_100117128(id *a1)
{
  v2 = BKCarPlayLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] mediaQuery];
    *buf = 138412290;
    v37 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setplaybackqueue request: %@", buf, 0xCu);
  }

  v4 = a1[4];
  if (v4)
  {
    v5 = [v4 firstItem];

    if (v5)
    {
      objc_opt_class();
      v6 = [a1[4] firstItem];
      BUDynamicCast();
    }

    else
    {
      v6 = [a1[4] mediaQuery];
      [a1[5] _currentMediaItemFromQuery:v6];
    }
    v9 = ;

    if (v9)
    {
      v10 = +[BKAppDelegate sceneManager];
      v11 = +[BKAppDelegate currentSceneController];
      v12 = [v10 bookPresenter];
      if (v12)
      {
        v13 = [v9 bk_assetID];
        v14 = +[NSMutableDictionary dictionary];
        v15 = +[UIApplication sharedApplication];
        v16 = [v15 applicationState];

        if (v16)
        {
          v34[0] = @"BKBookPresentWithoutAnimations";
          v34[1] = @"BKBookPresentingForceOpenBeforeWelcomeCompleted";
          v35[0] = &__kCFBooleanTrue;
          v35[1] = &__kCFBooleanTrue;
          v34[2] = AEAudioBookForceAudiobookPlayIfCurrentAsset;
          v34[3] = AEAudiobookOptionsShouldBeginPlaybackInBackground;
          v35[2] = &__kCFBooleanTrue;
          v35[3] = &__kCFBooleanTrue;
          v17 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
          [v14 addEntriesFromDictionary:v17];
        }

        v18 = [a1[6] sessionIdentifierOverride];

        if (v18)
        {
          v19 = [a1[6] sessionIdentifierOverride];
          [v14 setObject:v19 forKeyedSubscript:AEAudiobookOptionsSessionID];
        }

        v20 = [v11 newShowAssetTransaction];
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_10011762C;
        v31[3] = &unk_100A03788;
        v21 = v13;
        v32 = v21;
        v33 = a1[7];
        [v20 whenCancelled:v31];
        v22 = BKCarPlayLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "setplaybackqueue begin playback assetID: %@", buf, 0xCu);
        }

        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1001176FC;
        v28[3] = &unk_100A05358;
        v29 = v21;
        v30 = a1[7];
        v23 = v21;
        [v12 showAssetWithTransaction:v20 assetID:v23 location:0 options:v14 completion:v28];
      }

      else
      {
        v26 = BKCarPlayLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1007900BC(v26);
        }

        v27 = objc_retainBlock(a1[7]);
        v14 = v27;
        if (v27)
        {
          (*(v27 + 2))(v27, 200);
        }
      }
    }

    else
    {
      v24 = BKCarPlayLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100790100(a1, v24);
      }

      v25 = objc_retainBlock(a1[7]);
      v10 = v25;
      if (v25)
      {
        (*(v25 + 2))(v25, 100);
      }
    }
  }

  else
  {
    v7 = BKCarPlayLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10079017C(a1, v7);
    }

    v8 = objc_retainBlock(a1[7]);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 200);
    }
  }
}

void sub_10011762C(uint64_t a1)
{
  v2 = BKCarPlayLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setplaybackqueue tx was cancelled %@", &v6, 0xCu);
  }

  v4 = objc_retainBlock(*(a1 + 40));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, 200);
  }
}

void sub_1001176FC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  kdebug_trace();
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = 200;
  }

  v7 = BKCarPlayLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 134218498;
    v12 = v6;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setplaybackqueue status: %ld error: %@ assetID: %@", &v11, 0x20u);
  }

  v9 = objc_retainBlock(*(a1 + 40));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v6);
  }
}

void sub_100117E20(uint64_t a1)
{
  v2 = +[BSUIStoreServices sharedInstance];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117EB8;
  block[3] = &unk_100A033C8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100117EB8(uint64_t a1)
{
  v2 = +[BKReachability sharedReachabilityForInternetConnection];
  [v2 startNotifier];

  v3 = [*(a1 + 32) launchCoordinator];
  [v3 signalConditionSatisfied:10];
}

void sub_100117FBC(id a1)
{
  v2 = +[JSABridge sharedInstance];
  v1 = [v2 currentPackage];
  [v1 startEviction];
}

void sub_1001192CC(uint64_t a1)
{
  v2 = BCCurrentBookLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finished setting up continue reading books provider. Issuing a one time startup block to look at seeding and purging.", buf, 2u);
  }

  v3 = +[BKAppDelegate delegate];
  v4 = [v3 appLaunchCoordinator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001193C4;
  v5[3] = &unk_100A03560;
  v5[4] = *(a1 + 32);
  [v4 appLaunchCoordinatorPerformWhenLaunched:@"ContinueReadingProvider BookReadingTimeTracker Init" block:v5];
}

void sub_1001193C4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100119450;
  block[3] = &unk_100A03560;
  block[4] = *(a1 + 32);
  if (qword_100AF76B8 != -1)
  {
    dispatch_once(&qword_100AF76B8, block);
  }
}

void sub_100119450(uint64_t a1)
{
  v2 = +[BCBookReadingTimeTracker sharedInstance];
  [v2 purgeRecentBooks];
  [v2 seedRecentBooksList:*(a1 + 32)];
}

id sub_1001194B0(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v5;
  v9 = [v8 lastPathComponent];
  if (([v9 hasPrefix:@".itemprovider"] & 1) != 0 || objc_msgSend(v9, "hasPrefix:", @".com.apple.UIKit.ItemProvider"))
  {
    v10 = [v7 suggestedName];

    if (![v10 length])
    {
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"Untitled" value:&stru_100A30A68 table:0];

      v10 = v12;
    }

    v13 = BCDragRepresentationFactoryFileExtensionForURLAndUTI();
    if (v13)
    {
      v14 = [v10 stringByAppendingPathExtension:v13];

      v10 = v14;
    }

    v15 = v10;
    v16 = +[NSMutableCharacterSet illegalCharacterSet];
    v17 = +[NSCharacterSet punctuationCharacterSet];
    [v16 formUnionWithCharacterSet:v17];

    v18 = +[NSCharacterSet controlCharacterSet];
    [v16 formUnionWithCharacterSet:v18];

    [v16 addCharactersInString:@"/:"];
    v9 = [v15 stringByTrimmingCharactersInSet:v16];
  }

  v19 = +[NSFileManager defaultManager];
  v20 = NSTemporaryDirectory();
  v21 = 0;
  *&v22 = 138412290;
  v33 = v22;
  do
  {
    v23 = +[NSUUID UUID];
    v24 = [v23 UUIDString];
    v25 = [v20 stringByAppendingPathComponent:v24];

    if ([v19 fileExistsAtPath:v25])
    {
      v26 = 0;
    }

    else
    {
      v34 = 0;
      v27 = [v19 createDirectoryAtPath:v25 withIntermediateDirectories:1 attributes:0 error:&v34];
      v28 = v34;
      if (v27)
      {
        v26 = v25;
      }

      else
      {
        v29 = BCDragAndDropLog();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = v33;
          v36 = v28;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Could not create temporary folder. Error: %@", buf, 0xCu);
        }

        v26 = 0;
      }
    }

    if (v21 > 0x62)
    {
      break;
    }

    ++v21;
  }

  while (!v26);
  v30 = [NSURL fileURLWithPath:v26];

  v31 = [v30 URLByAppendingPathComponent:v9];

  return v31;
}

id sub_100119840()
{
  v0 = [UTTypeUTF8PlainText identifier];
  v1 = [UTTypeURL identifier];
  v9[1] = v1;
  v2 = [UTTypePDF identifier];
  v9[2] = v2;
  v3 = [UTTypeEPUB identifier];
  v9[3] = v3;
  v9[4] = kBKUTITypeBliss;
  v9[5] = kBKUTITypeBlissAlternate;
  v9[6] = kBKUTITypeBlissIBA;
  v4 = [NSArray arrayWithObjects:v9 count:7];

  v5 = +[BKAppSceneManager supportedAudiobookImportTypes];
  v6 = [v5 valueForKeyPath:@"identifier"];

  v7 = [v4 arrayByAddingObjectsFromArray:v6];

  return v7;
}

id sub_1001199C0()
{
  v0 = +[BKAppSceneManager supportedFileImportTypes];
  v1 = [v0 valueForKeyPath:@"identifier"];

  return v1;
}

void sub_100119A1C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 canLoadObjectsOfClass:objc_opt_class()])
  {
    v5 = objc_opt_class();
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100119AF8;
    v7[3] = &unk_100A07A98;
    v8 = v4;
    v6 = [v3 loadObjectsOfClass:v5 completion:v7];
  }
}

void sub_100119AF8(uint64_t a1, void *a2)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v8 = BUDynamicCast();
        if (v8)
        {
          v9 = v8;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = objc_retainBlock(*(a1 + 32));
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v9);
  }
}

void sub_100119C50(id a1, NSURL *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100119CE8;
    block[3] = &unk_100A033C8;
    v5 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100119CE8(uint64_t a1)
{
  v3 = +[BKAppDelegate delegate];
  v2 = +[UIApplication sharedApplication];
  [v3 application:v2 openURL:*(a1 + 32) options:&__NSDictionary0__struct];
}

void sub_100119D68(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = +[BKAppDelegate sceneManager];
  v9 = +[BKAppSceneManager supportedFileImportTypes];
  v10 = +[NSFileManager defaultManager];
  v11 = +[BKLibraryManager defaultManager];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_10011A21C;
  v55[3] = &unk_100A07D20;
  v33 = v8;
  v56 = v33;
  v32 = v7;
  v57 = v32;
  v30 = v11;
  v58 = v30;
  v31 = v6;
  v59 = v31;
  v12 = objc_retainBlock(v55);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_10011A5A8;
  v52[3] = &unk_100A07D48;
  v29 = v10;
  v53 = v29;
  v13 = v12;
  v54 = v13;
  v14 = objc_retainBlock(v52);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10011A8D8;
  v49[3] = &unk_100A07D98;
  v28 = v13;
  v50 = v28;
  v27 = v14;
  v51 = v27;
  v37 = objc_retainBlock(v49);
  v34 = v9;
  v39 = [v9 arrayByAddingObject:UTTypeFolder];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v35 = v5;
  obj = [v5 items];
  v40 = [obj countByEnumeratingWithState:&v45 objects:v63 count:16];
  if (v40)
  {
    v38 = *v46;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v45 + 1) + 8 * i);
        v17 = [v16 itemProvider];
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v18 = v39;
        v19 = [v18 countByEnumeratingWithState:&v41 objects:v62 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v42;
          while (2)
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v42 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v41 + 1) + 8 * j);
              v24 = [v23 identifier];
              v25 = [v17 hasRepresentationConformingToTypeIdentifier:v24 fileOptions:0];

              if (v25)
              {
                v26 = [v23 identifier];
                (v37[2])(v37, v16, v26);

                goto LABEL_17;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v41 objects:v62 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v18 = BCDragAndDropLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1007901F8(v60, v17, &v61, v18);
        }

LABEL_17:
      }

      v40 = [obj countByEnumeratingWithState:&v45 objects:v63 count:16];
    }

    while (v40);
  }
}

void sub_10011A21C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BCDragAndDropLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 path];
    *buf = 141558274;
    v19 = 1752392040;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BKDropSessionImportFiles: importURL: %{mask.hash}@", buf, 0x16u);
  }

  v9 = *(a1 + 32);
  v17 = v5;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011A3D4;
  v13[3] = &unk_100A07CF8;
  v16 = v6;
  v11 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v12 = v6;
  [v9 handleImportURLs:v10 transaction:v11 perURLCompletion:v13 completion:0];
}

void sub_10011A3D4(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_retainBlock(a1[6]);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v4 != 0);
  }

  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10011A4CC;
    block[3] = &unk_100A03A30;
    v8 = a1[4];
    v9 = a1[5];
    v10 = v4;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_10011A4CC(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionProvider];
  v3 = [v2 collectionOnMainQueueWithCollectionID:*(a1 + 40) error:0];

  v4 = [*(a1 + 32) collectionController];
  v6 = *(a1 + 48);
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v4 addBooks:v5 toCollection:v3 forceToTop:0 completion:0];
}

void sub_10011A5A8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = BCDragAndDropLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v9 path];
    *buf = 141558274;
    v29 = 1752392040;
    v30 = 2112;
    v31 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BKDropSessionImportFiles: importURLWithMove: %{mask.hash}@", buf, 0x16u);
  }

  v15 = [v12 itemProvider];

  v16 = sub_1001194B0(v9, v11, v15);

  v17 = *(a1 + 32);
  v27 = 0;
  LODWORD(v15) = [v17 moveItemAtURL:v9 toURL:v16 error:&v27];
  v18 = v27;
  if (v15)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10011A868;
    v23[3] = &unk_100A05218;
    v19 = *(a1 + 40);
    v24 = *(a1 + 32);
    v25 = v16;
    v26 = v10;
    (*(v19 + 16))(v19, v25, v23);

    v20 = v24;
  }

  else
  {
    v21 = BCDragAndDropLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 141559042;
      v29 = 1752392040;
      v30 = 2112;
      v31 = v9;
      v32 = 2160;
      v33 = 1752392040;
      v34 = 2112;
      v35 = v16;
      v36 = 2112;
      v37 = v18;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "BKDropSessionImportFiles: importURLWithMove: moveItemAtURL failed. url: %{mask.hash}@ destURL: %{mask.hash}@ error: %@", buf, 0x34u);
    }

    v22 = objc_retainBlock(v10);
    v20 = v22;
    if (v22)
    {
      (*(v22 + 2))(v22, 0);
    }
  }
}

void sub_10011A868(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) removeItemAtURL:*(a1 + 40) error:0];
  v4 = objc_retainBlock(*(a1 + 48));
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, a2);
    v4 = v5;
  }
}

void sub_10011A8D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 itemProvider];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011A9E4;
  v11[3] = &unk_100A07D70;
  v12 = v6;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v13 = v5;
  v8 = v5;
  v9 = v6;
  v10 = [v7 loadInPlaceFileRepresentationForTypeIdentifier:v9 completionHandler:v11];
}

void sub_10011A9E4(void *a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = BCDragAndDropLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    *buf = 138543618;
    v19 = v10;
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BKDropSessionImportFiles: importItem: type: %{public}@ isInPlace: %d", buf, 0x12u);
  }

  if (v7)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10011ABA4;
    v15[3] = &unk_100A05D78;
    v17 = [v7 startAccessingSecurityScopedResource];
    v11 = v7;
    v16 = v11;
    v13 = objc_retainBlock(v15);
    if (a3)
    {
      (*(a1[6] + 16))(a1[6], v11, v13, v12);
    }

    else
    {
      (*(a1[7] + 16))(a1[7], v11, a1[5], a1[4]);
    }

    v14 = v16;
  }

  else
  {
    v14 = BCDragAndDropLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100790270(v8, v14);
    }
  }
}

id *sub_10011ABA4(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] stopAccessingSecurityScopedResource];
  }

  return result;
}

uint64_t sub_10011ABBC(void *a1)
{
  v1 = a1;
  if ([v1 canLoadObjectsOfClass:objc_opt_class()])
  {
    v2 = sub_10011AC18(v1) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_10011AC18(void *a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v1 = [a1 items];
  v2 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v11 + 1) + 8 * v5) itemProvider];
        v7 = [v6 registeredTypeIdentifiers];
        v8 = [v7 firstObject];

        LOBYTE(v6) = [v8 isEqualToString:@"com.apple.mapkit.map-item"];
        if (v6)
        {
          v9 = 1;
          goto LABEL_11;
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

uint64_t sub_10011AD6C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 count] && (objc_msgSend(v3, "hasItemsConformingToTypeIdentifiers:", v4) & 1) != 0)
  {
    v5 = 1;
  }

  else if ([v3 canLoadObjectsOfClass:objc_opt_class()])
  {
    v5 = sub_10011AC18(v3) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_10011AE00(void *a1)
{
  v1 = a1;
  v2 = [UTTypeFolder identifier];
  v6 = v2;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [v1 hasItemsConformingToTypeIdentifiers:v3];

  return v4;
}

void sub_10011B860(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryAssetOnMainQueueWithAssetID:*(a1 + 40)];
  v3 = objc_opt_class();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10011B92C;
  v4[3] = &unk_100A03710;
  v5 = *(a1 + 48);
  [v3 fetchImageForAsset:v2 size:0 includeSpine:0 includeShadow:0 coverEffectsEnvironment:v4 completion:{*(a1 + 56), *(a1 + 64)}];
}

uint64_t sub_10011B92C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGImage];
  v4 = *(v2 + 16);

  return v4(v2, v3, 0);
}

void sub_10011C0E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1007903DC(a1, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = objc_retainBlock(*(a1 + 40));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, v5, 0, 0);
  }
}

void sub_10011C520(id *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length])
  {
    v4 = [a1[4] assetFromAssetID:v3];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 representativeItem];
      v7 = [v6 bk_storeID];

      if ([v7 longLongValue] < 1)
      {
        objc_opt_class();
        v9 = [v5 representativeItem];
        v10 = [v9 valueForProperty:MPMediaItemPropertyAlbumPersistentID];
        v11 = BUDynamicCast();

        v12 = BKLibraryDataSourceMediaLibraryLog();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
        if (v11)
        {
          if (v13)
          {
            v21 = [v5 title];
            v22 = 138412802;
            v23 = v11;
            v24 = 2112;
            v25 = v3;
            v26 = 2112;
            v27 = v21;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Preparing to delete asset with albumPersistentID: %@, assetID: %@, title: %@", &v22, 0x20u);
          }

          [a1[7] addObject:v11];
          [a1[6] addObject:v5];
        }

        else
        {
          if (v13)
          {
            sub_100790514(v3, v12, v14, v15, v16, v17, v18, v19);
          }
        }
      }

      else
      {
        v8 = BKLibraryDataSourceMediaLibraryLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v20 = [v5 title];
          v22 = 138412802;
          v23 = v7;
          v24 = 2112;
          v25 = v3;
          v26 = 2112;
          v27 = v20;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Preparing to delete asset with storePlaylistID: %@, assetID: %@, title: %@", &v22, 0x20u);
        }

        [a1[5] addObject:v7];
        [a1[6] addObject:v5];
      }
    }
  }
}

void *sub_10011D024(void *a1)
{
  v2 = sub_100057464(a1);
  sub_100057464(v2 + 4);
  sub_100057464(a1 + 8);
  sub_100057464(a1 + 12);
  sub_100057464(a1 + 16);
  sub_100057464(a1 + 20);
  sub_100057464(a1 + 24);
  sub_100057464(a1 + 28);
  sub_100057464(a1 + 32);
  *(a1 + 293) = 0;
  a1[36] = 0;
  return a1;
}

void sub_10011EA20(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  [*(a1 + 32) _addAssetIDsToCacheManager:v8];
  v6 = objc_retainBlock(*(a1 + 40));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6, v8, v5);
  }
}

void sub_10011F054(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([v7 count])
  {
    v9 = BKLibraryDataSourceMediaLibraryLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = [v7 count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully unclaimed %lu assets", &v13, 0xCu);
    }

    [BKMediaLibraryChangeCollector logAssets:v7 message:@"removing"];
    v10 = [*(a1 + 32) libraryManager];
    [v10 libraryDataSource:*(a1 + 32) removedAssets:v7];
  }

  v11 = objc_retainBlock(*(a1 + 40));
  v12 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, a2, v8);
  }
}

void sub_10011FA68(uint64_t a1)
{
  v5 = +[JSABridge sharedInstance];
  v2 = [v5 windowManager];
  v3 = [*(a1 + 32) view];
  v4 = [v3 window];
  [v2 updateWindowSizeIfNeeded:v4];
}

void sub_1001204A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v46 - 216), 8);
  _Block_object_dispose((v46 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100120548(uint64_t a1)
{
  v1 = a1;
  if ((*(*(*(a1 + 88) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 96) + 8) + 24) & 1) != 0 || (*(*(*(a1 + 104) + 8) + 24) & 1) != 0 || *(*(*(a1 + 112) + 8) + 24) == 1 && (*(a1 + 120) & 1) == 0 && (*(a1 + 121) & 1) == 0)
  {
    v2 = [*(a1 + 32) fragment];

    if (v2)
    {
      v3 = [*(v1 + 32) query];
      v4 = [v3 componentsSeparatedByString:@"&"];

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v117 objects:v124 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v118;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v118 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v117 + 1) + 8 * i) componentsSeparatedByString:@"="];
            if ([v10 count] == 2)
            {
              v11 = [v10 objectAtIndex:0];
              v12 = [v10 objectAtIndex:1];
              if ([v11 isEqualToString:@"id"])
              {
                v15 = [*(v1 + 40) libraryAssetProvider];
                v16 = [v15 libraryAssetOnMainQueueWithStoreID:v12];

                v17 = [*(v1 + 40) locationFromURLFragment:*(v1 + 32)];
                if ([v16 isPreorderBook])
                {
                  v122 = AEHelperNumberIsPreorderKey;
                  v123 = &__kCFBooleanTrue;
                  v105 = [NSDictionary dictionaryWithObjects:&v123 forKeys:&v122 count:1];
                }

                else
                {
                  v105 = 0;
                }

                v18 = [v16 assetID];
                v19 = [*(v1 + 40) _newShowAssetTransactionFromExistingTransaction:*(v1 + 48) forAssetID:v18 isAudiobook:{objc_msgSend(v16, "isAudiobook")}];
                [*(v1 + 40) delegate];
                v20 = v100 = v16;
                v21 = [v20 bookPresenter];
                [v21 showAssetWithTransaction:v19 assetID:v18 location:v17 options:v105 completion:0];

                v14 = 1;
                v13 = v5;
                goto LABEL_90;
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v117 objects:v124 count:16];
        }

        while (v7);
      }
    }

    v13 = [*(v1 + 40) delegate];
    v5 = [v13 storePresenter];
    v14 = [v5 storeHandleURL:*(v1 + 32) sourceApplication:*(v1 + 56) annotation:*(v1 + 64) isLaunch:*(v1 + 122) transaction:*(v1 + 48)];
    goto LABEL_90;
  }

  if ((*(a1 + 123) & 1) == 0 && *(a1 + 121) != 1)
  {
    v14 = 0;
    goto LABEL_91;
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v22 = [*(a1 + 72) queryItems];
  v23 = [v22 countByEnumeratingWithState:&v113 objects:v121 count:16];
  v24 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
  v99 = v1;
  if (!v23)
  {
    v33 = 0;
    goto LABEL_48;
  }

  v25 = v23;
  v26 = *v114;
LABEL_28:
  v27 = 0;
  while (1)
  {
    if (*v114 != v26)
    {
      objc_enumerationMutation(v22);
    }

    v28 = *(*(&v113 + 1) + 8 * v27);
    v29 = [v28 name];
    v30 = [v29 caseInsensitiveCompare:@"reason"];

    if (v30)
    {
      goto LABEL_34;
    }

    v31 = [v28 value];
    if (![v31 caseInsensitiveCompare:@"preorder-available"])
    {
      break;
    }

    v32 = [v31 caseInsensitiveCompare:@"purchase-approved"];

    if (!v32)
    {
      goto LABEL_40;
    }

LABEL_34:
    if (v25 == ++v27)
    {
      v25 = [v22 countByEnumeratingWithState:&v113 objects:v121 count:16];
      if (v25)
      {
        goto LABEL_28;
      }

      v33 = 0;
      v1 = v99;
      v24 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
      goto LABEL_48;
    }
  }

LABEL_40:
  v34 = +[BURestrictionsProvider sharedInstance];
  v35 = [v34 isBookStoreAllowed];

  if (!v35)
  {
    v33 = 0;
    v1 = v99;
    v24 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
    goto LABEL_49;
  }

  v24 = &_s19EngagementCollector15BMPropertyValueC4withACSgAA08PropertyD0OSg_tcfc_ptr;
  v1 = v99;
  v22 = [NSURL assetIDFromURL:*(v99 + 32)];
  v36 = [v22 length];
  v33 = v36 != 0;
  if (v36)
  {
    v37 = +[BKLibraryDataSourceJalisco isShowPurchasesEnabled];
    v38 = [*(v99 + 40) libraryAssetProvider];
    v39 = [v38 libraryAssetOnMainQueueWithAssetID:v22];

    if (([v39 canOpen] & 1) != 0 || (objc_msgSend(v39, "isStore") & v37) == 1)
    {
      v40 = [*(v99 + 40) libraryAssetProvider];
      v41 = +[NSDate date];
      [v40 updateLibraryAssetWithID:v22 withLastOpenDate:v41 completion:0];

      v42 = [*(v99 + 40) delegate];
      v43 = [v42 libraryCollectionPresenter];
      [v43 showLibraryWithTransaction:*(v99 + 48) animated:1 assetID:v22 completion:0];
    }

    else
    {
      v44 = [*(v99 + 40) delegate];
      v45 = [v44 libraryCollectionPresenter];
      v46 = *(v99 + 48);
      v109[0] = _NSConcreteStackBlock;
      v109[1] = 3221225472;
      v109[2] = sub_100121298;
      v109[3] = &unk_100A03A30;
      v110 = v39;
      v111 = v22;
      v112 = *(v99 + 48);
      [v45 showLibraryWithTransaction:v46 animated:1 completion:v109];

      v42 = v110;
    }

    v33 = 1;
  }

LABEL_48:

LABEL_49:
  if (*(v1 + 123))
  {
    [*(v1 + 32) host];
  }

  else
  {
    [*(v1 + 72) path];
  }
  v47 = ;
  v13 = v47;
  if (v33 || [v47 containsString:@"show-reading-now"] && (objc_msgSend(*(v1 + 40), "_handleShowReadingNowWithTransaction:", *(v1 + 48)) & 1) != 0 || objc_msgSend(v13, "containsString:", @"reading-goals") && (objc_msgSend(*(v1 + 40), "delegate"), v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "storePresenter"), v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v66, "storeHandleURL:sourceApplication:annotation:isLaunch:transaction:", *(v1 + 32), *(v1 + 56), *(v1 + 64), *(v1 + 122), *(v1 + 48)), v66, v65, (v67 & 1) != 0) || objc_msgSend(v13, "containsString:", @"show-audiobook-store") && (+[BURestrictionsProvider sharedInstance](BURestrictionsProvider, "sharedInstance"), v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v68, "isBookStoreAllowed"), v68, v69) && (objc_msgSend(*(v1 + 40), "_handleShowAudiobooksMainWithTransaction:", *(v1 + 48)) & 1) != 0)
  {
    v48 = 1;
  }

  else if ([v13 containsString:@"show-manga-store"] && (+[BURestrictionsProvider sharedInstance](BURestrictionsProvider, "sharedInstance"), v70 = objc_claimAutoreleasedReturnValue(), v71 = objc_msgSend(v70, "isBookStoreAllowed"), v70, v71))
  {
    v48 = [*(v1 + 40) _handleShowMangaMainWithTransaction:*(v1 + 48)];
  }

  else
  {
    v48 = 0;
  }

  v49 = (v1 + 32);
  v5 = [v24[483] assetIDFromURL:*(v1 + 32)];
  v50 = [*(v1 + 32) bu_libraryIDFromURL];
  v51 = v50;
  if (v50)
  {
    v52 = v50;
  }

  else
  {
    v52 = v5;
  }

  v53 = v52;

  if (![v53 length] || (v48 & 1) != 0)
  {
    if ((v48 & 1) == 0)
    {
      goto LABEL_74;
    }

    v14 = 1;
  }

  else
  {
    v54 = +[MPMediaQuery bk_audiobooksQuery];
    v55 = [MPMediaPropertyPredicate predicateWithValue:v53 forProperty:MPMediaItemPropertyAlbumPersistentID];
    [v54 addFilterPredicate:v55];

    v56 = [v54 items];
    v57 = [v56 firstObject];

    if (v57)
    {
      v106 = v53;
      v58 = *(v1 + 40);
      v59 = *(v1 + 48);
      v60 = [v57 bk_assetID];
      v14 = 1;
      v61 = [v58 _newShowAssetTransactionFromExistingTransaction:v59 forAssetID:v60 isAudiobook:1];

      v62 = [*(v1 + 40) delegate];
      v63 = [v62 bookPresenter];
      v64 = [v57 bk_assetID];
      [v63 showAssetWithTransaction:v61 assetID:v64 location:0 options:0 completion:0];
      goto LABEL_86;
    }

LABEL_74:
    v54 = *(v1 + 32);
    v106 = v53;
    if ((*(v1 + 123) & 1) == 0)
    {
      v72 = [*(v1 + 72) copy];
      [v72 setScheme:@"ibooks"];
      v73 = [v72 host];
      v74 = [v73 containsString:@"books.apple.com"];

      if (v74)
      {
        v75 = [v72 URL];
        v76 = [v75 absoluteString];
        v77 = [v76 stringByReplacingOccurrencesOfString:@"books.apple.com/" withString:&stru_100A30A68];

        v78 = [v24[483] URLWithString:v77];
        v79 = v78;
        if (v78)
        {
          v80 = v78;

          v54 = v80;
        }
      }
    }

    v81 = *(v1 + 56);
    v82 = *(v1 + 64);
    v108 = 0;
    v61 = [*(v1 + 40) p_libraryAssetFromIbooksSchemeURL:v54 sourceApplication:v81 annotation:v82 remainingPath:&v108 canScheduleOperations:*(v1 + 122) transaction:*(v1 + 48)];
    v57 = v108;
    if (v61 && [v61 isOwned])
    {
      if ([v57 length])
      {
        v83 = [BKAnchorPathLocation alloc];
        v84 = [*v49 fragment];
        v62 = [v83 initWithOrdinal:-1 anchor:v84 andPath:v57];
      }

      else
      {
        v90 = [*v49 fragment];
        v91 = [v90 length];

        if (v91)
        {
          v62 = [*(v1 + 40) locationFromURLFragment:*(v1 + 32)];
        }

        else
        {
          v62 = 0;
        }
      }

      v14 = [v61 canOpen];
      if (v14)
      {
        v63 = +[NSMutableDictionary dictionary];
        v92 = [*(v99 + 40) delegate];
        if ([v92 pushLargeCoverForInitialHandleURLBookOpen])
        {

          goto LABEL_105;
        }

        v93 = [*(v99 + 40) delegate];
        v102 = [v93 pushLargeCoverForNextHandleURLBookOpen];

        if (v102)
        {
LABEL_105:
          [v63 setObject:&__kCFBooleanTrue forKeyedSubscript:@"BKBookPresentingUseLargeCoverIfNeeded"];
        }

        if ([v61 isPreorderBook])
        {
          [v63 setObject:&__kCFBooleanTrue forKeyedSubscript:AEHelperNumberIsPreorderKey];
        }

        v94 = *(v99 + 48);
        v103 = *(v99 + 40);
        v95 = [v61 assetID];
        v104 = [v103 _newShowAssetTransactionFromExistingTransaction:v94 forAssetID:v95 isAudiobook:{objc_msgSend(v61, "isAudiobook")}];

        v96 = sub_1001221D8();
        if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Now proceed to showAssetWithTransaction", buf, 2u);
        }

        v101 = [*(v99 + 40) delegate];
        v98 = [v101 bookPresenter];
        v97 = [v61 assetID];
        [v98 showAssetWithTransaction:v104 assetID:v97 location:v62 options:v63 completion:0];
      }

      else
      {
        v63 = sub_1001221D8();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          sub_10079063C(v49, v63);
        }
      }

LABEL_87:

      v1 = v99;
    }

    else
    {
      if ([v5 length])
      {
        v85 = +[BKAppDelegate delegate];
        v86 = [v85 storeController];
        [v86 bookUrlForStoreId:v5];
        v62 = v87 = v1;

        v63 = [*(v87 + 40) delegate];
        v64 = [v63 storePresenter];
        v14 = [v64 storeHandleURL:v62 sourceApplication:*(v87 + 56) annotation:*(v87 + 64) isLaunch:*(v87 + 122) transaction:*(v87 + 48)];
LABEL_86:

        goto LABEL_87;
      }

      v14 = 0;
    }

    v53 = v106;
  }

LABEL_90:
LABEL_91:
  v88 = objc_retainBlock(*(v1 + 80));
  v89 = v88;
  if (v88)
  {
    (*(v88 + 2))(v88, v14);
  }
}

void sub_100121298(uint64_t a1)
{
  if ([*(a1 + 32) isAudiobook])
  {
    v2 = 0;
  }

  else
  {
    v2 = 3;
  }

  v3 = +[BSUIStoreServices sharedInstance];
  [v3 showProductPageForStoreID:*(a1 + 40) resourceType:v2 transaction:*(a1 + 48) needsAnalyticsLinkData:0];
}

void sub_100121868(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (*(a1 + 72))
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100121E28;
      block[3] = &unk_100A039C0;
      v30 = *(a1 + 32);
      v8 = *(&v30 + 1);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *&v11 = v9;
      *(&v11 + 1) = v10;
      v35 = v30;
      v36 = v11;
      v37 = *(a1 + 64);
      dispatch_async(&_dispatch_main_q, block);

      v12 = *(&v35 + 1);
    }

    else
    {
      v20 = [*(a1 + 32) libraryAssetProvider];
      v21 = [v5 assetID];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100121D2C;
      v38[3] = &unk_100A07E70;
      v32 = *(a1 + 32);
      v22 = *(&v32 + 1);
      v23 = *(a1 + 48);
      v24 = *(a1 + 56);
      *&v25 = v23;
      *(&v25 + 1) = v24;
      v39 = v32;
      v40 = v25;
      v41 = *(a1 + 64);
      [v20 resolveToLocalAssetWithAssetID:v21 completion:v38];

      v12 = *(&v39 + 1);
    }

    goto LABEL_8;
  }

  if (!v6)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_100121D10;
    v42[3] = &unk_100A039C0;
    v33 = *(a1 + 32);
    v26 = *(&v33 + 1);
    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    *&v29 = v27;
    *(&v29 + 1) = v28;
    v43 = v33;
    v44 = v29;
    v45 = *(a1 + 64);
    dispatch_async(&_dispatch_main_q, v42);

    v12 = *(&v43 + 1);
LABEL_8:

    goto LABEL_9;
  }

  v13 = +[UIApplication sharedApplication];
  v14 = [v13 delegate];

  v15 = [v14 libraryAssetIsNewManager];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100121C14;
  v46[3] = &unk_100A039C0;
  v31 = *(a1 + 32);
  v16 = *(&v31 + 1);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  v47 = v31;
  v48 = v19;
  v49 = *(a1 + 64);
  [v15 updateLibraryAssetEpubIDsHandling:v7 foundAssetHandler:v46];

LABEL_9:
}

void sub_100121C14(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100121CF4;
  block[3] = &unk_100A039C0;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100121D2C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100121E0C;
  block[3] = &unk_100A039C0;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  v10 = *(a1 + 64);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100121E44(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100121F0C;
  block[3] = &unk_100A04FE8;
  v6 = *(a1 + 32);
  v2 = *(&v6 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100121F0C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v7 = 0;
  v5 = [v2 p_libraryAssetFromIbooksSchemeURL:v3 remainingPath:0 needsBookID:&v7 transaction:v4];
  v6 = v7;
  (*(a1[7] + 16))();
}

id sub_1001221D8()
{
  if (qword_100AF76C8 != -1)
  {
    sub_1007906B8();
  }

  v1 = qword_100AF76C0;

  return v1;
}

void sub_10012221C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKAppURLHandler");
  v2 = qword_100AF76C0;
  qword_100AF76C0 = v1;
}

void sub_100122380(uint64_t a1)
{
  v1 = [*(a1 + 32) bkaxTarget];
  [v1 handleTapIfPossible];
}

void sub_100122AE4(uint64_t a1, uint64_t a2)
{
  v3 = [NSNumber numberWithInt:a2 != 0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;
}

void sub_100123EAC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100123FA4;
    v10[3] = &unk_100A05E68;
    v10[4] = v7;
    v11 = *(a1 + 40);
    [v7 fetchAssetsWithIDs:v5 completion:v10];
  }

  else
  {
    v8 = objc_retainBlock(*(a1 + 40));
    v9 = v8;
    if (v8)
    {
      (*(v8 + 2))(v8, 0, v6);
    }
  }
}

void sub_100123FA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        objc_opt_class();
        v13 = BUDynamicCast();
        if (v13 && [*(a1 + 32) isEligibleLocalBookToBeMadeUbiquitous:{v13, v16}])
        {
          [v7 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = objc_retainBlock(*(a1 + 40));
  v15 = v14;
  if (v14)
  {
    (*(v14 + 2))(v14, v7, v6);
  }
}

void sub_1001242A4(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 count])
  {
    objc_opt_class();
    v3 = [v7 firstObject];
    v4 = BUDynamicCast();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v4, 0);
  }
}

void sub_1001244A0(id *a1)
{
  v24 = +[NSFileManager defaultManager];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a1[4];
  v1 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v1)
  {
    v21 = 0;
    v2 = *v33;
    do
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v33 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v32 + 1) + 8 * i);
        v5 = [v4 url];
        v6 = +[IMLibraryPlist purchasesRepositoryPath];
        v7 = [v5 lastPathComponent];
        v8 = [v24 bu_nonCollidingNameForFileName:v7 inDestPath:v6];

        v9 = [NSURL alloc];
        v10 = [v6 stringByAppendingPathComponent:v8];
        v11 = [v9 initFileURLWithPath:v10];

        v12 = [a1[5] plistAssetWithAsset:v4 andURL:v11];
        if (v12)
        {
          v31 = 0;
          v13 = [v24 setUbiquitous:0 itemAtURL:v5 destinationURL:v11 error:&v31];
          v14 = v31;
          v15 = v14;
          if (v13)
          {
            [a1[6] addObject:v12];
          }

          else if (v14)
          {
            v16 = v14;

            v21 = v16;
          }
        }
      }

      v1 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v1);
  }

  else
  {
    v21 = 0;
  }

  if ([a1[6] count])
  {
    objc_initWeak(&location, a1[5]);
    v17 = a1[5];
    v18 = a1[6];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100124824;
    v25[3] = &unk_100A07F08;
    objc_copyWeak(&v29, &location);
    v26 = a1[6];
    v28 = a1[7];
    v27 = v21;
    [v17 addPlistAssets:v18 completion:v25];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    v19 = objc_retainBlock(a1[7]);
    v20 = v19;
    if (v19)
    {
      (*(v19 + 2))(v19, 0, v21);
    }
  }
}

void sub_100124800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100124824(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = [WeakRetained libraryManager];
  [v6 libraryDataSource:WeakRetained addedAssets:*(a1 + 32)];

  [WeakRetained reload];
  v7 = objc_retainBlock(*(a1 + 48));
  if (v7)
  {
    v8 = v9;
    if (!v9)
    {
      v8 = *(a1 + 40);
    }

    v7[2](v7, a2, v8);
  }
}

void sub_100125F5C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = [*(a1 + 32) toastViewController];
  v5 = [v6 view];
  [v5 setFrame:{v1, v2, v3, v4}];
}

id sub_100125FE0(uint64_t a1)
{
  v2 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "BKToastPresenter toast presentation animation complete", v8, 2u);
  }

  v3 = UIAccessibilityAnnouncementNotification;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Recommendations for next book available. Check it out using the containers rotor." value:&stru_100A30A68 table:0];
  UIAccessibilityPostNotification(v3, v5);

  v6 = [*(a1 + 32) toastViewController];
  [v6 toastPresenter:*(a1 + 32) didPresentToastInViewController:*(a1 + 40)];

  return [*(a1 + 32) _currentActionComplete];
}

void sub_100126638(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [BKEndOfBookCompactViewController alloc];
  v5 = *(a1 + 32);
  v17[0] = @"storeId";
  v17[1] = @"additionalSeeds";
  v6 = &__NSArray0__struct;
  if (v3)
  {
    v6 = v3;
  }

  v18[0] = v5;
  v18[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v8 = [(BKEndOfBookCompactViewController *)v4 initWithOptions:v7];

  [(BKEndOfBookCompactViewController *)v8 setPageProgressionIsRTL:*(a1 + 64)];
  [(BKEndOfBookCompactViewController *)v8 setDelegate:*(a1 + 40)];
  [*(a1 + 40) setToastViewController:v8];
  objc_initWeak(&location, *(a1 + 40));
  v9 = *(a1 + 48);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100126828;
  v11[3] = &unk_100A07FA8;
  objc_copyWeak(&v15, &location);
  v10 = v8;
  v12 = v10;
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  [(BKEndOfBookCompactViewController *)v10 preloadContentWithViewController:v9 completion:v11];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void sub_100126804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100126828(id *a1, int a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    *buf = 138412546;
    v25 = WeakRetained;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@: preloadPresentation (success: %@)", buf, 0x16u);
  }

  v7 = [WeakRetained toastViewController];
  v8 = v7 == a1[4];

  if (v8)
  {
    if (a2)
    {
      v10 = BCAugmentedExperienceLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@: preloadPresentation getting resource dictionary from compact feed", buf, 0xCu);
      }

      v11 = BCAugmentedExperienceSignpost();
      v12 = os_signpost_id_generate(v11);

      v13 = BCAugmentedExperienceSignpost();
      v14 = v13;
      if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "EOB.Toast.preload", "", buf, 2u);
      }

      v15 = [a1[4] feedViewController];
      v16 = +[JSABridge sharedInstance];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100126BC8;
      v19[3] = &unk_100A07F80;
      v9 = v15;
      v20 = v9;
      objc_copyWeak(v23, a1 + 7);
      v23[1] = v12;
      v21 = a1[5];
      v22 = a1[6];
      [v16 enqueueBlock:v19 file:@"BKToastPresenter.m" line:261];

      objc_destroyWeak(v23);
    }

    else
    {
      [WeakRetained setToastViewController:0];
      v17 = BCAugmentedExperienceLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@: preloadPresentation preloading failed", buf, 0xCu);
      }

      v18 = objc_retainBlock(a1[6]);
      v9 = v18;
      if (v18)
      {
        (v18[2].isa)(v18, 1);
      }
    }
  }

  else
  {
    v9 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: preloadPresentation the presentation had been cancelled during preload", buf, 0xCu);
    }
  }
}

void sub_100126BC8(uint64_t a1)
{
  v2 = [*(a1 + 32) feed];
  v3 = [v2 valueForProperty:@"resourceDictionary"];
  v4 = [v3 toDictionary];
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v6 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100790758(WeakRetained, v3, v6);
    }
  }

  v7 = BCAugmentedExperienceSignpost();
  v8 = v7;
  v9 = *(a1 + 64);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = @"YES";
    if (!v4)
    {
      v10 = @"NO";
    }

    *buf = 138412290;
    v18 = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "EOB.Toast.preload", "Success: %@", buf, 0xCu);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100126DD0;
  v12[3] = &unk_100A06FA0;
  objc_copyWeak(&v16, (a1 + 56));
  v13 = *(a1 + 40);
  v14 = v4;
  v15 = *(a1 + 48);
  v11 = v4;
  dispatch_async(&_dispatch_main_q, v12);

  objc_destroyWeak(&v16);
}

void sub_100126DD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [[BKEndOfBookCardViewController alloc] initWithStoreID:*(a1 + 32) resource:*(a1 + 40)];
  [WeakRetained setCardViewController:v3];

  v4 = [WeakRetained cardViewController];
  v5 = [WeakRetained toastViewController];
  [v5 setCardViewController:v4];

  v6 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@: preloadPresentation preloading succeeded", &v9, 0xCu);
  }

  v7 = objc_retainBlock(*(a1 + 48));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

void sub_100126F0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BCAugmentedExperienceLog();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1007907D0(a1, v6, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    *buf = 138412546;
    v16 = v9;
    v17 = 2048;
    v18 = [v5 count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%@: loaded %lu additional seeds", buf, 0x16u);
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100127090;
  v12[3] = &unk_100A03A58;
  v10 = *(a1 + 40);
  v13 = v5;
  v14 = v10;
  v11 = v5;
  dispatch_async(&_dispatch_main_q, v12);
}

void sub_10012732C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v6 = [*(a1 + 32) toastViewController];
  v5 = [v6 view];
  [v5 setFrame:{v1, v2, v3, v4}];
}

id sub_1001273B0(uint64_t a1)
{
  v2 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "BKToastPresenter toast dismissed animation complete", v10, 2u);
  }

  v3 = [*(a1 + 32) toastViewController];
  [v3 willMoveToParentViewController:0];

  v4 = [*(a1 + 32) toastViewController];
  [v4 removeFromParentViewController];

  v5 = [*(a1 + 32) toastViewController];
  v6 = [v5 view];
  [v6 removeFromSuperview];

  v7 = [*(a1 + 32) toastViewController];
  [v7 didMoveToParentViewController:0];

  v8 = [*(a1 + 32) toastViewController];
  [v8 toastPresenterDidDismissToast:*(a1 + 32)];

  return [*(a1 + 32) _currentActionComplete];
}

void sub_100127F10(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_100AF76E8;
  qword_100AF76E8 = v1;
}

void sub_100128240(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100128268(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100128320;
  v5[3] = &unk_100A04058;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_100128320(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained && ([WeakRetained isSeriesCollection] & 1) == 0)
  {
    v3 = [v6 frc];
    [v3 performFetch:0];

    [v6 updateCounts];
  }

  v4 = objc_retainBlock(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4);
  }
}

id sub_100129B4C(uint64_t a1)
{
  [*(a1 + 32) updateCounts];
  [*(a1 + 32) updateCloudButton];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

void sub_10012A3F8(uint64_t a1)
{
  v3 = +[BKLibraryAssetStatusController sharedController];
  if ([v3 uploadStatus] == 3)
  {
    v2 = [*(a1 + 32) uploadProgressNavigationController];

    if (!v2)
    {
      [v3 removeCompletedUploads];
    }
  }

  [*(a1 + 32) updateAndLayoutCloudButtonAnimated];
}

BOOL sub_10012ADC0(int a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (a1 && (a3 < 0.0500000007 && a7 < 0.0500000007 || a5 < 0.0149999997 && a9 < 0.0149999997))
  {
    *&v35 = sub_10005784C(a2, a3, a4);
    *(&v35 + 1) = v23;
    v36 = v24;
    v37 = v25;
    *&v32 = sub_10005784C(a6, a7, a8);
    *(&v32 + 1) = v26;
    v33 = v27;
    v34 = v28;
    if (sub_100057B14(&v35, &v32) <= 1.65999997)
    {
      return 1;
    }
  }

  if (vabdd_f64(a3, a7) > a10 || vabdd_f64(a4, a8) > a10)
  {
    return 0;
  }

  if (vabdd_f64(a2, a6) <= a10)
  {
    return 1;
  }

  v30 = a2 + 1.0;
  if (a2 >= a10)
  {
    v30 = a2;
  }

  v31 = a6 + 1.0;
  if (a6 >= a10)
  {
    v31 = a6;
  }

  return vabdd_f64(v30, v31) <= a10;
}

uint64_t sub_10012AEE8(uint64_t a1)
{
  sub_100057464((a1 + 32));
  sub_100057464((a1 + 64));
  sub_100057464((a1 + 96));
  sub_100057464((a1 + 128));
  sub_100057464((a1 + 160));
  sub_100057464((a1 + 192));
  sub_100057464((a1 + 224));
  sub_100057464((a1 + 256));
  sub_100057464((a1 + 288));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  return a1;
}

uint64_t sub_10012AF64(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    free(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 344);
  if (v4)
  {
    *(a1 + 352) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 320);
  if (v5)
  {
    *(a1 + 328) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_10012AFC8(double *a1, CGContext *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = sub_10012B028(a1, a2);
  if (result)
  {
    result = sub_10012B220(a1);
    if (result)
    {
      sub_10012B4F0(a1);
      sub_10012B694(a1);
      sub_10012BBC8(a1);
      return 1;
    }
  }

  return result;
}

uint64_t sub_10012B028(double *a1, CGContextRef context)
{
  if (!context)
  {
    return 0;
  }

  BytesPerRow = CGBitmapContextGetBytesPerRow(context);
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  result = 0;
  if (Height == 22 && Width == 22)
  {
    sub_100057464(v32);
    BitmapInfo = CGBitmapContextGetBitmapInfo(context);
    result = CGBitmapContextGetData(context);
    v29 = result;
    if (result)
    {
      result = malloc_type_calloc(0x1E4uLL, 0x20uLL, 0x1000040E0EAB150uLL);
      *a1 = result;
      if (result)
      {
        v11 = 0;
        v12 = BitmapInfo & 0x3000;
        v13 = 1;
        v14 = 24;
        do
        {
          v15 = 0;
          v31 = v14;
          do
          {
            v16 = v29 + BytesPerRow * v13 + v15;
            if (v12)
            {
              v17 = 4;
            }

            else
            {
              v17 = 7;
            }

            if (v12)
            {
              v18 = 5;
            }

            else
            {
              v18 = 6;
            }

            if (v12)
            {
              v19 = 6;
            }

            else
            {
              v19 = 5;
            }

            LOBYTE(v8) = *(v16 + v19);
            LOBYTE(v9) = *(v16 + v18);
            LOBYTE(v10) = *(v16 + v17);
            sub_1000576D8(v33, *&v8 / 255.0, *&v9 / 255.0, v10 / 255.0, 1.0);
            v32[0] = v33[0];
            v32[1] = v33[1];
            v20 = sub_10005788C(v33);
            v22 = v21;
            v24 = v23;
            sub_1000579F4(v33);
            v25 = *a1;
            v26 = (*a1 + v14);
            *(v26 - 3) = v20;
            v27 = *&v25 + v11 + 8 * v15;
            *(v27 + 8) = v22;
            *(v27 + 16) = v24;
            *v26 = v28;
            v9 = a1[47];
            v8 = v28 + v9;
            a1[47] = v8;
            v15 += 4;
            v14 += 32;
          }

          while (v15 != 80);
          ++v13;
          v14 = v31 + 640;
          v11 += 640;
        }

        while (v13 != 21);
        a1[47] = v8 / 400.0;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_10012B220(void *a1)
{
  result = malloc_type_calloc(0x190uLL, 8uLL, 0x100004000313F17uLL);
  a1[1] = result;
  if (result)
  {
    result = malloc_type_calloc(0x190uLL, 1uLL, 0x100004077774924uLL);
    if (result)
    {
      v3 = result;
      v4 = 0;
      v5 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v6 = 1;
      do
      {
        if ((v3[v5] & 1) == 0)
        {
          v7 = (*a1 + 32 * v5);
          v8 = sub_10012BE98(result, v5 - 20 * (v5 / 0x14u), v5 / 0x14u);
          v23 = *v7;
          v24 = v7[1];
          v30[0] = *v7;
          v30[1] = v24;
          v31 = v5;
          v32 = v8;
          v34 = v4;
          sub_10012BD90(&v33, v30);
          *(a1[1] + 8 * v5) = v32;
          v3[v5] = 1;
          if (v5 <= 0x18E)
          {
            v9 = v6;
            do
            {
              if ((v3[v9] & 1) == 0)
              {
                v10 = *a1 + 32 * v9;
                v25 = *(v10 + 16);
                v26 = *v10;
                result = sub_10012ADC0(0, *&v23, *(&v23 + 1), *&v24, *(&v24 + 1), *v10, *(v10 + 8), *&v25, *(v10 + 24), 0.0799999982);
                if (result)
                {
                  v11 = sub_10012BE98(result, v9 - 20 * (v9 / 0x14u), v9 / 0x14u);
                  v27[0] = v26;
                  v27[1] = v25;
                  v28 = v9;
                  v29 = v11;
                  sub_10012BCA0(v12, v27, &v33);
                  v3[v9] = 1;
                }
              }

              ++v9;
            }

            while (v9 != 400);
          }

          v4 = v33;
          if (v34 != v33)
          {
            *&v27[0] = sub_10012BF68;
            sub_10012CBCC(v33, v34, v27, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v34 - v33)), 1);
            v4 = v33;
            v13 = *(v33 + 8);
            v14 = *(v33 + 5);
            v15 = 0xAAAAAAAAAAAAAAABLL * (v34 - v33);
            if (v15 >= 2)
            {
              v16 = v33 + 11;
              v17 = v15 - 1;
              do
              {
                v18 = *(v16 - 2);
                v19 = *v16;
                if ((v3[v18] & 1) == 0)
                {
                  v3[v18] = 1;
                }

                v14 = v14 + v19;
                v16 += 6;
                v20 = (*a1 + 32 * v13);
                v21 = v20[1];
                v22 = (*a1 + 32 * v18);
                *v22 = *v20;
                v22[1] = v21;
                --v17;
              }

              while (v17);
            }

            *(a1[1] + 8 * v13) = v14;
          }
        }

        ++v5;
        ++v6;
      }

      while (v5 != 400);
      free(v3);
      if (v4)
      {
        v34 = v4;
        operator delete(v4);
      }

      return 1;
    }
  }

  return result;
}

void sub_10012B4CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012B4F0(uint64_t a1)
{
  v2 = *(a1 + 376);
  v3 = sub_10012BF7C(a1);
  v4 = *(*v3 + 16);
  *(a1 + 32) = **v3;
  *(a1 + 48) = v4;
  v5 = *(a1 + 48);
  v29 = *(a1 + 32);
  v30 = v5;
  if (sub_100057B70(&v29, 0.180000007) < 1.29999995)
  {
    v6 = sub_100057B70((a1 + 32), 0.180000007);
    v7 = (v3[1] - *v3) >> 5;
    if (v7 >= 2)
    {
      v8 = v6;
      if (v7 == 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      for (i = 1; i != v9; ++i)
      {
        v11 = *(a1 + 344);
        v12 = v11[i];
        if (v12 <= 0.0)
        {
          break;
        }

        v13 = *v11 / v12;
        if (v13 <= 0.9 || v13 >= 1.112)
        {
          break;
        }

        v14 = sub_100057B70((*v3 + 32 * i), 0.180000007);
        if (v14 > v8)
        {
          v15 = (*v3 + 32 * i);
          v16 = v15[1];
          *(a1 + 32) = *v15;
          *(a1 + 48) = v16;
          v8 = v14;
        }
      }
    }
  }

  v17 = *(a1 + 48);
  v29 = *(a1 + 32);
  v30 = v17;
  if (sub_100057B70(&v29, 0.180000007) < 1.29999995)
  {
    v27 = sub_10005788C((a1 + 32));
    v28.f64[0] = v18.f64[0];
    v28.f64[1] = v19;
    if (v2 < 0.180000007 || (v25 = v19, v26 = v18.f64[0], v20 = *(a1 + 48), v29 = *(a1 + 32), v30 = v20, sub_1000579F4(&v29), v19 = v25, v18.f64[0] = v26, v21 < 0.180000007))
    {
      v18.f64[1] = v19;
      v28 = vmulq_f64(v18, xmmword_10080B4D0);
    }

    *(a1 + 32) = sub_1000576E4(&v27);
    *(a1 + 40) = v22;
    *(a1 + 48) = v23;
    *(a1 + 56) = v24;
  }
}

void sub_10012B694(uint64_t a1)
{
  v2 = sub_10012BF7C(a1);
  v3 = v2[1] - *v2;
  v4 = v3 >> 5;
  if ((v3 >> 5) < 2)
  {
    v33 = 0;
    v34 = 0;
    goto LABEL_33;
  }

  v5 = v2;
  v6 = sub_100057B14((*v2 + 32), (a1 + 32));
  v7 = 0;
  LOBYTE(v8) = 0;
  v9 = (v3 >> 5);
  v10 = v3 >> 5;
  v11 = 1;
  v84 = v10;
  v12 = 1;
  v13 = 1;
  v14 = v6;
  do
  {
    v15 = (*v5 + v7);
    v16 = v15[1];
    v86 = *v15;
    v87 = v16;
    if (v8)
    {
      v8 = 1;
    }

    else if (sub_10012C28C(*&v86, *(&v86 + 1), *&v87, *(&v87 + 1), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)))
    {
      sub_10012C34C(*&v86, *(&v86 + 1), *&v87, *(&v87 + 1), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0.449999988);
      *(a1 + 64) = v17;
      *(a1 + 72) = v18;
      *(a1 + 80) = v19;
      *(a1 + 88) = v20;
      v8 = 1;
      LODWORD(v10) = v11;
    }

    else
    {
      v8 = 0;
    }

    v21 = sub_100057B14(&v86, (a1 + 32));
    if (v21 > v14)
    {
      if (v21 <= v6)
      {
        v14 = v21;
        v13 = v11 - 1;
      }

      else
      {
        v14 = v6;
        v6 = v21;
        v13 = v12;
        v12 = v11 - 1;
      }
    }

    ++v11;
    v7 += 32;
  }

  while (32 * v9 != v7);
  LODWORD(v4) = v84;
  if (v10 >= v84)
  {
    LOBYTE(v26) = 0;
  }

  else
  {
    v22 = v10;
    v23 = 32 * v10;
    v24 = v10 - v9;
    v25 = v22 + 1;
    v26 = 1;
    while (1)
    {
      v27 = (*v5 + v23);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      if (sub_10012C40C(*v27, v29, v30, v31, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)))
      {
        break;
      }

      v26 = v25 < v9;
      v23 += 32;
      ++v25;
      if (__CFADD__(v24++, 1))
      {
        LOBYTE(v26) = 0;
        LODWORD(v4) = v84;
        goto LABEL_23;
      }
    }

    sub_10012C34C(v28, v29, v30, v31, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0.449999988);
    *(a1 + 96) = v35;
    *(a1 + 104) = v36;
    *(a1 + 112) = v37;
    *(a1 + 120) = v38;
    LODWORD(v4) = v84;
    if (v8 & v26)
    {
      v33 = 1;
      v34 = 1;
      goto LABEL_33;
    }
  }

LABEL_23:
  sub_100057464(&v86);
  if (v8)
  {
LABEL_26:
    v34 = 1;
    if (v26)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  sub_10012C34C(*(*v5 + 32 * v12), *(*v5 + 32 * v12 + 8), *(*v5 + 32 * v12 + 16), *(*v5 + 32 * v12 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0.200000003);
  *&v86 = v39;
  *(&v86 + 1) = v40;
  *&v87 = v41;
  *(&v87 + 1) = v42;
  if (sub_10012C40C(v39, v40, v41, v42, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)))
  {
    sub_10012C34C(*&v86, *(&v86 + 1), *&v87, *(&v87 + 1), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0.449999988);
    *(a1 + 64) = v43;
    *(a1 + 72) = v44;
    *(a1 + 80) = v45;
    *(a1 + 88) = v46;
    goto LABEL_26;
  }

  v34 = 0;
  if (v26)
  {
LABEL_31:
    v33 = 1;
    goto LABEL_33;
  }

LABEL_29:
  sub_10012C34C(*(*v5 + 32 * v13), *(*v5 + 32 * v13 + 8), *(*v5 + 32 * v13 + 16), *(*v5 + 32 * v13 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0.200000003);
  *&v86 = v47;
  *(&v86 + 1) = v48;
  *&v87 = v49;
  *(&v87 + 1) = v50;
  if (sub_10012C40C(v47, v48, v49, v50, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)))
  {
    sub_10012C34C(*&v86, *(&v86 + 1), *&v87, *(&v87 + 1), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0.449999988);
    *(a1 + 96) = v51;
    *(a1 + 104) = v52;
    *(a1 + 112) = v53;
    *(a1 + 120) = v54;
    goto LABEL_31;
  }

  v33 = 0;
LABEL_33:
  v55 = *(a1 + 48);
  v86 = *(a1 + 32);
  v87 = v55;
  sub_1000579F4(&v86);
  v56 = (a1 + 64);
  v58 = *(a1 + 72);
  v57 = *(a1 + 80);
  v59 = *(a1 + 88);
  if (v60 >= 0.180000007)
  {
    *&v86 = *(a1 + 64);
    *(&v86 + 1) = v58;
    *&v87 = v57;
    *(&v87 + 1) = v59;
    sub_1000579F4(&v86);
    if (v61 >= 0.180000007)
    {
      v34 = 0;
    }

    v62 = *(a1 + 112);
    v86 = *(a1 + 96);
    v87 = v62;
    sub_1000579F4(&v86);
    if (v63 < 0.180000007)
    {
      v64 = v33;
    }

    else
    {
      v64 = 0;
    }

    if (v34)
    {
      goto LABEL_56;
    }

LABEL_47:
    v68 = *(a1 + 48);
    v86 = *(a1 + 32);
    v87 = v68;
    sub_1000579F4(&v86);
    if (v69 < 0.180000007)
    {
      if (!v4)
      {
        sub_1000576C4(&v86, 1.0, 1.0, 1.0);
        goto LABEL_55;
      }

      sub_1000576C4(v85, 1.0, 1.0, 1.0);
    }

    else
    {
      if (!v4)
      {
        sub_100057464(&v86);
        goto LABEL_55;
      }

      sub_100057464(v85);
    }

    *&v86 = sub_100057BB4(v85, 0.0500000007, *(a1 + 32));
    *(&v86 + 1) = v70;
    *&v87 = v71;
    *(&v87 + 1) = v72;
LABEL_55:
    v73 = v87;
    *v56 = v86;
    *(a1 + 80) = v73;
    goto LABEL_56;
  }

  *&v86 = *(a1 + 64);
  *(&v86 + 1) = v58;
  *&v87 = v57;
  *(&v87 + 1) = v59;
  sub_1000579F4(&v86);
  if (v65 < 0.180000007)
  {
    v34 = 0;
  }

  v66 = *(a1 + 112);
  v86 = *(a1 + 96);
  v87 = v66;
  sub_1000579F4(&v86);
  if (v67 >= 0.180000007)
  {
    v64 = v33;
  }

  else
  {
    v64 = 0;
  }

  if ((v34 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_56:
  if (v64)
  {
    goto LABEL_66;
  }

  v74 = *(a1 + 48);
  v86 = *(a1 + 32);
  v87 = v74;
  sub_1000579F4(&v86);
  if (v75 < 0.180000007)
  {
    if (!v4)
    {
      sub_1000576C4(&v86, 1.0, 1.0, 1.0);
      goto LABEL_65;
    }

    sub_1000576C4(v85, 1.0, 1.0, 1.0);
  }

  else
  {
    if (!v4)
    {
      sub_100057464(&v86);
      goto LABEL_65;
    }

    sub_100057464(v85);
  }

  *&v86 = sub_100057BB4(v85, 0.100000001, *(a1 + 32));
  *(&v86 + 1) = v76;
  *&v87 = v77;
  *(&v87 + 1) = v78;
LABEL_65:
  v79 = v87;
  *(a1 + 96) = v86;
  *(a1 + 112) = v79;
LABEL_66:
  v80 = sub_100057B14((a1 + 64), (a1 + 32));
  if (sub_100057B14((a1 + 96), (a1 + 32)) > v80)
  {
    v82 = *v56;
    v81 = *(a1 + 80);
    v83 = *(a1 + 112);
    *v56 = *(a1 + 96);
    *(a1 + 80) = v83;
    *(a1 + 96) = v82;
    *(a1 + 112) = v81;
  }
}

void sub_10012BBC8(uint64_t a1)
{
  v2 = (a1 + 32);
  *(a1 + 128) = sub_100057BB4(a1 + 64, 0.200000003, *(a1 + 32));
  *(a1 + 136) = v3;
  *(a1 + 144) = v4;
  *(a1 + 152) = v5;
  *(a1 + 160) = sub_100057BB4(a1 + 96, 0.200000003, *v2);
  *(a1 + 168) = v6;
  *(a1 + 176) = v7;
  *(a1 + 184) = v8;
  sub_10012C4CC(v9, (a1 + 64), v2);
  *(a1 + 192) = v10;
  *(a1 + 200) = v11;
  *(a1 + 208) = v12;
  *(a1 + 216) = v13;
  sub_10012C4CC(v14, (a1 + 96), v2);
  *(a1 + 256) = v15;
  *(a1 + 264) = v16;
  *(a1 + 272) = v17;
  *(a1 + 280) = v18;
  sub_10012C4CC(v19, (a1 + 128), v2);
  *(a1 + 224) = v20;
  *(a1 + 232) = v21;
  *(a1 + 240) = v22;
  *(a1 + 248) = v23;
  sub_10012C4CC(v24, (a1 + 160), v2);
  *(a1 + 288) = v25;
  *(a1 + 296) = v26;
  *(a1 + 304) = v27;
  *(a1 + 312) = v28;
}

double sub_10012BCA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  if (a3[1] == *a3)
  {
LABEL_5:

    sub_10012BD90(a3, a2);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    while (!sub_10012ADC0(0, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(v5 + v6), *(v5 + v6 + 8), *(v5 + v6 + 16), *(v5 + v6 + 24), 0.0799999982))
    {
      ++v7;
      v5 = *a3;
      v6 += 48;
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4) <= v7)
      {
        goto LABEL_5;
      }
    }

    v9 = *a3 + v6;
    result = *(a2 + 40) + *(v9 + 40);
    *(v9 + 40) = result;
  }

  return result;
}

void sub_10012BD90(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_10012CA98();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_10012CB40(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

double sub_10012BE98(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = a2;
  if (a2 <= 4 && a3 <= 4)
  {
    v4 = a3;
    v5 = 4.00000006 - v3;
LABEL_4:
    v6 = 4.00000006 - v4;
    if (v5 < 1.0)
    {
      v5 = 1.0;
    }

    if (v6 < 1.0)
    {
      v6 = 1.0;
    }

    v7 = v5 * 0.75;
    v8 = v6 * 0.75;
    if (v8 <= v7)
    {
      v8 = v7;
    }

    goto LABEL_16;
  }

  if (a2 > 4)
  {
    if (a2 >= 0x10 && a3 <= 4)
    {
      v4 = a3;
      v5 = 15.9999999 - v3;
      goto LABEL_4;
    }

    v8 = 1.0;
    if (a2 < 0x10)
    {
      goto LABEL_16;
    }

    v9 = 15.9999999;
  }

  else
  {
    v9 = 4.00000006;
  }

  v10 = v9 - v3;
  if (v10 < 1.0)
  {
    v10 = 1.0;
  }

  v8 = v10 * 0.75;
LABEL_16:
  result = 1.0;
  if (v8 >= 1.0)
  {
    return v8;
  }

  return result;
}

void *sub_10012BF7C(void *a1)
{
  if (a1[41] == a1[40])
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    sub_100057464(v42);
    v2 = 0;
    for (i = 0; i != 3200; i += 8)
    {
      if (*(a1[1] + i) >= 1.0)
      {
        v41[0] = *(a1[1] + i);
        v42[0] = sub_10005784C(*(*a1 + v2), *(*a1 + v2 + 8), *(*a1 + v2 + 16));
        v42[1] = v4;
        v42[2] = v5;
        v42[3] = v6;
        v42[4] = *(*a1 + v2 + 24);
        sub_10012C59C(v7, v41, &v43);
      }

      v2 += 32;
    }

    v8 = v43;
    if (v44 != v43)
    {
      v46 = sub_10012C588;
      sub_10012F09C(v43, v44, &v46, 126 - 2 * __clz((v44 - v43) >> 6), 1);
      sub_10012C794(a1 + 40, (v44 - v43) >> 6);
      sub_10012C834(a1 + 43, (v44 - v43) >> 6);
      v8 = v43;
      if (v44 != v43)
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = &v8[v9];
          v12 = a1[41];
          v13 = a1[42];
          if (v12 >= v13)
          {
            v16 = a1[40];
            v17 = (v12 - v16) >> 5;
            v18 = v17 + 1;
            if ((v17 + 1) >> 59)
            {
              sub_10012CA98();
            }

            v19 = v13 - v16;
            if (v19 >> 4 > v18)
            {
              v18 = v19 >> 4;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFE0)
            {
              v20 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              sub_100131554((a1 + 40), v20);
            }

            v21 = (32 * v17);
            v22 = v11[2];
            *v21 = v11[1];
            v21[1] = v22;
            v15 = 32 * v17 + 32;
            v23 = a1[40];
            v24 = a1[41] - v23;
            v25 = v21 - v24;
            memcpy(v21 - v24, v23, v24);
            v26 = a1[40];
            a1[40] = v25;
            a1[41] = v15;
            a1[42] = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            v14 = v11[2];
            *v12 = v11[1];
            v12[1] = v14;
            v15 = (v12 + 2);
          }

          a1[41] = v15;
          v28 = a1[44];
          v27 = a1[45];
          if (v28 >= v27)
          {
            v30 = a1[43];
            v31 = v28 - v30;
            v32 = (v28 - v30) >> 3;
            v33 = v32 + 1;
            if ((v32 + 1) >> 61)
            {
              sub_10012CA98();
            }

            v34 = v27 - v30;
            if (v34 >> 2 > v33)
            {
              v33 = v34 >> 2;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF8)
            {
              v35 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              sub_10013159C((a1 + 43), v35);
            }

            v36 = v32;
            v37 = (8 * v32);
            v38 = &v37[-v36];
            *v37 = *&v43[v9];
            v29 = v37 + 1;
            memcpy(v38, v30, v31);
            v39 = a1[43];
            a1[43] = v38;
            a1[44] = v29;
            a1[45] = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v28 = *&v43[v9];
            v29 = v28 + 8;
          }

          a1[44] = v29;
          ++v10;
          v8 = v43;
          v9 += 4;
        }

        while (v10 < (v44 - v43) >> 6);
      }
    }

    if (v8)
    {
      v44 = v8;
      operator delete(v8);
    }
  }

  return a1 + 40;
}

void sub_10012C260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10012C28C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v20 = a3;
  v21 = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  v17 = a7;
  v18 = a8;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v23 = a3;
  v24 = a4;
  sub_1000579F4(&v22);
  v13 = v12 >= 0.180000007;
  *&v22 = a5;
  *(&v22 + 1) = a6;
  v23 = a7;
  v24 = a8;
  sub_1000579F4(&v22);
  return v13 != v14 >= 0.180000007 && sub_100057B14(&v19, &v16) >= 4.5999999;
}

void sub_10012C34C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v29 = a3;
  v30 = a4;
  v20 = sub_10005788C(&v28);
  v22 = v21;
  v24 = v23;
  sub_1000579F4(&v28);
  *&v28 = a5;
  *(&v28 + 1) = a6;
  v29 = a7;
  v30 = a8;
  sub_1000579F4(&v28);
  v25 = 1.0 - (1.0 - v24) * a9;
  if (v26 >= 0.180000007)
  {
    v25 = v24 * a9;
  }

  sub_10005784C(v20, v22, v25);
}

BOOL sub_10012C40C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *&v19 = a1;
  *(&v19 + 1) = a2;
  v20 = a3;
  v21 = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  v17 = a7;
  v18 = a8;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v23 = a3;
  v24 = a4;
  sub_1000579F4(&v22);
  v13 = v12 >= 0.180000007;
  *&v22 = a5;
  *(&v22 + 1) = a6;
  v23 = a7;
  v24 = a8;
  sub_1000579F4(&v22);
  return v13 != v14 >= 0.180000007 && sub_100057B14(&v19, &v16) >= 3.0999999;
}

void sub_10012C4CC(uint64_t a1, __int128 *a2, __int128 *a3)
{
  sub_100057464(v13);
  sub_1000579F4(a2);
  v6 = v5;
  sub_1000579F4(a3);
  if (v6 >= v7)
  {
    sub_100057464(v12);
  }

  else
  {
    sub_1000576C4(v12, 1.0, 1.0, 1.0);
  }

  v13[0] = v12[0];
  v13[1] = v12[1];
  sub_1000579F4(v13);
  v9 = v8;
  sub_1000579F4(a3);
  v11 = vabdd_f64(v9, v10);
  sub_100057BB4(v13, 1.0 - ((v11 + v11) * -0.599999994 + 1.0), *a3);
}

void sub_10012C59C(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  if (v5 == *a3)
  {
    v23 = *(a3 + 8);
LABEL_7:
    v24 = *(a3 + 16);
    if (v23 >= v24)
    {
      v29 = (v23 - v5) >> 6;
      v30 = v29 + 1;
      if ((v29 + 1) >> 58)
      {
        sub_10012CA98();
      }

      v31 = v24 - v5;
      if (v31 >> 5 > v30)
      {
        v30 = v31 >> 5;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFC0)
      {
        v32 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v30;
      }

      if (v32)
      {
        sub_10012F054(a3, v32);
      }

      v33 = (v29 << 6);
      v34 = *a2;
      v35 = *(a2 + 1);
      v36 = *(a2 + 3);
      v33[2] = *(a2 + 2);
      v33[3] = v36;
      *v33 = v34;
      v33[1] = v35;
      v28 = (v29 << 6) + 64;
      v37 = *(a3 + 8) - *a3;
      v38 = v33 - v37;
      memcpy(v33 - v37, *a3, v37);
      v39 = *a3;
      *a3 = v38;
      *(a3 + 8) = v28;
      *(a3 + 16) = 0;
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      v25 = *a2;
      v26 = *(a2 + 1);
      v27 = *(a2 + 3);
      *(v23 + 2) = *(a2 + 2);
      *(v23 + 3) = v27;
      *v23 = v25;
      *(v23 + 1) = v26;
      v28 = (v23 + 64);
    }

    *(a3 + 8) = v28;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = *a3;
    while (1)
    {
      v8 = &v5[v6];
      v40 = *(v8 + 2);
      v41 = *(v8 + 1);
      v9 = *(a2 + 2);
      v42 = *(a2 + 1);
      v43 = v9;
      v10 = sub_10005788C(&v42);
      v12 = v11;
      v14 = v13;
      sub_1000579F4(&v42);
      v16 = v15;
      v42 = v41;
      v43 = v40;
      v17 = sub_10005788C(&v42);
      v19 = v18;
      v21 = v20;
      sub_1000579F4(&v42);
      if (sub_10012ADC0(1, v10, v12, v14, v16, v17, v19, v21, v22, 0.0700000003))
      {
        break;
      }

      ++v7;
      v5 = *a3;
      v23 = *(a3 + 8);
      v6 += 64;
      if (v7 >= &v23[-*a3] >> 6)
      {
        goto LABEL_7;
      }
    }

    *(*a3 + v6) = *a2 + *(*a3 + v6);
  }
}

void *sub_10012C794(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_100131554(result, a2);
    }

    sub_10012CA98();
  }

  return result;
}

void *sub_10012C834(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_10013159C(result, a2);
    }

    sub_10012CA98();
  }

  return result;
}

uint64_t sub_10012C8D4(CGContext *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_5;
  }

  sub_10012AEE8(v20);
  if ((sub_10012AFC8(v20, a1) & 1) == 0)
  {
    sub_10012AF64(v20);
LABEL_5:
    v18 = 0;
    return v18 & 1;
  }

  v4 = v21;
  v5 = v22;
  v6 = v23;
  *a2 = v21;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = v24;
  *(a2 + 24) = v24;
  *(a2 + 40) = v25;
  *(a2 + 56) = v26;
  *(a2 + 72) = v27;
  *(a2 + 88) = v28;
  *(a2 + 104) = v29;
  *(a2 + 120) = v30;
  *(a2 + 136) = v31;
  v8 = v34;
  *(a2 + 152) = v32;
  *(a2 + 168) = v33;
  *(a2 + 184) = v8;
  v9 = v36;
  *(a2 + 224) = v35;
  *(a2 + 240) = v9;
  v10 = v38;
  *(a2 + 192) = v37;
  *(a2 + 208) = v10;
  v11 = v40;
  *(a2 + 256) = v39;
  *(a2 + 272) = v11;
  *(a2 + 296) = 1;
  *&v42 = v4;
  *(&v42 + 1) = v5;
  *&v43 = v6;
  *(&v43 + 1) = v7;
  sub_1000579F4(&v42);
  *(a2 + 297) = v12 >= 0.180000007;
  v13 = *(a2 + 48);
  v42 = *(a2 + 32);
  v43 = v13;
  sub_1000579F4(&v42);
  *(a2 + 298) = v14 >= 0.180000007;
  v15 = *(a2 + 80);
  v42 = *(a2 + 64);
  v43 = v15;
  sub_1000579F4(&v42);
  *(a2 + 299) = v16 >= 0.180000007;
  v17 = v41;
  *(a2 + 300) = v41 > 0.0;
  *(a2 + 288) = v17;
  sub_10012AF64(v20);
  v18 = *(a2 + 296);
  return v18 & 1;
}

BOOL sub_10012CA5C(double a1, double a2, double a3, double a4)
{
  *&v6 = a1;
  *(&v6 + 1) = a2;
  v7 = a3;
  v8 = a4;
  sub_1000579F4(&v6);
  return v4 < 0.180000007;
}

void sub_10012CAB0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10012CB0C(exception, a1);
}

std::logic_error *sub_10012CB0C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_10012CB40(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_10012CB98();
}

void sub_10012CB98()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_10012CBCC(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 3;
  v9 = a2 - 6;
  v10 = a2 - 9;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = a2 - v11;
    v15 = 0xAAAAAAAAAAAAAAABLL * (a2 - v11);
    if (v15 > 2)
    {
      break;
    }

    if (v15 < 2)
    {
      return;
    }

    if (v15 == 2)
    {
      v324 = *a3;
      v325 = *(a2 - 3);
      v326 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v326;
      v355 = v325;
      v327 = *v11;
      v328 = v11[2];
      v353 = v11[1];
      v354 = v328;
      v352 = v327;
      if (!v324(&v355, &v352))
      {
        return;
      }

      goto LABEL_76;
    }

LABEL_10:
    if (v14 <= 1151)
    {
      if (a5)
      {
        sub_10012DDB8(v11, a2, a3);
      }

      else
      {
        sub_10012DEE8(v11, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {
        sub_10012EA98(v11, a2, a2, a3);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = &v11[3 * (v15 >> 1)];
    v18 = *a3;
    if (v14 >= 0x1801)
    {
      v19 = *v17;
      v20 = v17[2];
      v356 = v17[1];
      v357 = v20;
      v355 = v19;
      v21 = *v11;
      v22 = v11[2];
      v353 = v11[1];
      v354 = v22;
      v352 = v21;
      v23 = v18(&v355, &v352);
      v24 = *a3;
      if (v23)
      {
        v25 = *v8;
        v26 = *(a2 - 1);
        v356 = *(a2 - 2);
        v357 = v26;
        v355 = v25;
        v27 = *v17;
        v28 = v17[2];
        v353 = v17[1];
        v354 = v28;
        v352 = v27;
        if (v24(&v355, &v352))
        {
          v29 = *v11;
          v30 = v11[2];
          v356 = v11[1];
          v357 = v30;
          v355 = v29;
          v31 = *v8;
          v32 = *(a2 - 1);
          v11[1] = *(a2 - 2);
          v11[2] = v32;
          *v11 = v31;
          goto LABEL_27;
        }

        v85 = *v11;
        v86 = v11[2];
        v356 = v11[1];
        v357 = v86;
        v355 = v85;
        v87 = *v17;
        v88 = v17[2];
        v11[1] = v17[1];
        v11[2] = v88;
        *v11 = v87;
        v89 = v355;
        v90 = v357;
        v17[1] = v356;
        v17[2] = v90;
        *v17 = v89;
        v91 = *a3;
        v92 = *v8;
        v93 = *(a2 - 1);
        v356 = *(a2 - 2);
        v357 = v93;
        v355 = v92;
        v94 = *v17;
        v95 = v17[2];
        v353 = v17[1];
        v354 = v95;
        v352 = v94;
        if (v91(&v355, &v352))
        {
          v96 = *v17;
          v97 = v17[2];
          v356 = v17[1];
          v357 = v97;
          v355 = v96;
          v98 = *v8;
          v99 = *(a2 - 1);
          v17[1] = *(a2 - 2);
          v17[2] = v99;
          *v17 = v98;
LABEL_27:
          *v8 = v355;
          *(a2 - 2) = v356;
          *(a2 - 1) = v357;
        }
      }

      else
      {
        v47 = *v8;
        v48 = *(a2 - 1);
        v356 = *(a2 - 2);
        v357 = v48;
        v355 = v47;
        v49 = *v17;
        v50 = v17[2];
        v353 = v17[1];
        v354 = v50;
        v352 = v49;
        if (v24(&v355, &v352))
        {
          v51 = *v17;
          v52 = v17[2];
          v356 = v17[1];
          v357 = v52;
          v355 = v51;
          v53 = *v8;
          v54 = *(a2 - 1);
          v17[1] = *(a2 - 2);
          v17[2] = v54;
          *v17 = v53;
          *v8 = v355;
          *(a2 - 2) = v356;
          *(a2 - 1) = v357;
          v55 = *a3;
          v56 = *v17;
          v57 = v17[2];
          v356 = v17[1];
          v357 = v57;
          v355 = v56;
          v58 = *v11;
          v59 = v11[2];
          v353 = v11[1];
          v354 = v59;
          v352 = v58;
          if (v55(&v355, &v352))
          {
            v60 = *v11;
            v61 = v11[2];
            v356 = v11[1];
            v357 = v61;
            v355 = v60;
            v62 = *v17;
            v63 = v17[2];
            v11[1] = v17[1];
            v11[2] = v63;
            *v11 = v62;
            v64 = v355;
            v65 = v357;
            v17[1] = v356;
            v17[2] = v65;
            *v17 = v64;
          }
        }
      }

      v100 = *a3;
      v101 = &v11[3 * v16];
      v102 = v101 - 3;
      v103 = *(v101 - 3);
      v104 = *(v101 - 1);
      v356 = *(v101 - 2);
      v357 = v104;
      v105 = a1[4];
      v352 = a1[3];
      v353 = v105;
      v354 = a1[5];
      v355 = v103;
      v106 = v100(&v355, &v352);
      v107 = *a3;
      if (v106)
      {
        v108 = *v9;
        v109 = *(a2 - 4);
        v356 = *(a2 - 5);
        v357 = v109;
        v355 = v108;
        v110 = *v102;
        v111 = v102[2];
        v353 = v102[1];
        v354 = v111;
        v352 = v110;
        if (v107(&v355, &v352))
        {
          v112 = a1[3];
          v113 = a1[4];
          v114 = a1[5];
          v116 = *(a2 - 5);
          v115 = *(a2 - 4);
          a1[3] = *v9;
          a1[4] = v116;
          a1[5] = v115;
          *(a2 - 5) = v113;
          *(a2 - 4) = v114;
          *v9 = v112;
        }

        else
        {
          v150 = a1[4];
          v355 = a1[3];
          v149 = v355;
          v356 = v150;
          v357 = a1[5];
          v151 = v357;
          v152 = *v102;
          v153 = v102[2];
          a1[4] = v102[1];
          a1[5] = v153;
          a1[3] = v152;
          v102[1] = v150;
          v102[2] = v151;
          *v102 = v149;
          v154 = *a3;
          v155 = *v9;
          v156 = *(a2 - 4);
          v356 = *(a2 - 5);
          v357 = v156;
          v355 = v155;
          v157 = *v102;
          v158 = v102[2];
          v353 = v102[1];
          v354 = v158;
          v352 = v157;
          if (v154(&v355, &v352))
          {
            v159 = *v102;
            v160 = v102[2];
            v356 = v102[1];
            v357 = v160;
            v355 = v159;
            v161 = *v9;
            v162 = *(a2 - 4);
            v102[1] = *(a2 - 5);
            v102[2] = v162;
            *v102 = v161;
            *v9 = v355;
            *(a2 - 5) = v356;
            *(a2 - 4) = v357;
          }
        }
      }

      else
      {
        v117 = *v9;
        v118 = *(a2 - 4);
        v356 = *(a2 - 5);
        v357 = v118;
        v355 = v117;
        v119 = *v102;
        v120 = v102[2];
        v353 = v102[1];
        v354 = v120;
        v352 = v119;
        if (v107(&v355, &v352))
        {
          v121 = *v102;
          v122 = v102[2];
          v356 = v102[1];
          v357 = v122;
          v355 = v121;
          v123 = *v9;
          v124 = *(a2 - 4);
          v102[1] = *(a2 - 5);
          v102[2] = v124;
          *v102 = v123;
          *v9 = v355;
          *(a2 - 5) = v356;
          *(a2 - 4) = v357;
          v125 = *a3;
          v126 = *v102;
          v127 = v102[2];
          v356 = v102[1];
          v357 = v127;
          v128 = a1[4];
          v352 = a1[3];
          v353 = v128;
          v354 = a1[5];
          v355 = v126;
          if (v125(&v355, &v352))
          {
            v130 = a1[4];
            v355 = a1[3];
            v129 = v355;
            v356 = v130;
            v357 = a1[5];
            v131 = v357;
            v132 = *v102;
            v133 = v102[2];
            a1[4] = v102[1];
            a1[5] = v133;
            a1[3] = v132;
            v102[1] = v130;
            v102[2] = v131;
            *v102 = v129;
          }
        }
      }

      v163 = *a3;
      v164 = &a1[3 * v16];
      v165 = v164[3];
      v166 = v164[5];
      v356 = v164[4];
      v357 = v166;
      v167 = a1[7];
      v352 = a1[6];
      v353 = v167;
      v354 = a1[8];
      v355 = v165;
      v168 = v163(&v355, &v352);
      v169 = *a3;
      if (v168)
      {
        v170 = *v10;
        v171 = *(a2 - 7);
        v356 = *(a2 - 8);
        v357 = v171;
        v355 = v170;
        v172 = v164[3];
        v173 = v164[5];
        v353 = v164[4];
        v354 = v173;
        v352 = v172;
        if (v169(&v355, &v352))
        {
          v174 = a1[6];
          v175 = a1[7];
          v176 = a1[8];
          v178 = *(a2 - 8);
          v177 = *(a2 - 7);
          a1[6] = *v10;
          a1[7] = v178;
          a1[8] = v177;
          *(a2 - 8) = v175;
          *(a2 - 7) = v176;
          *v10 = v174;
        }

        else
        {
          v197 = a1[7];
          v355 = a1[6];
          v196 = v355;
          v356 = v197;
          v357 = a1[8];
          v198 = v357;
          v199 = v164[3];
          v200 = v164[5];
          a1[7] = v164[4];
          a1[8] = v200;
          a1[6] = v199;
          v164[4] = v197;
          v164[5] = v198;
          v164[3] = v196;
          v201 = *a3;
          v202 = *v10;
          v203 = *(a2 - 7);
          v356 = *(a2 - 8);
          v357 = v203;
          v355 = v202;
          v204 = v164[3];
          v205 = v164[5];
          v353 = v164[4];
          v354 = v205;
          v352 = v204;
          if (v201(&v355, &v352))
          {
            v206 = v164[3];
            v207 = v164[5];
            v356 = v164[4];
            v357 = v207;
            v355 = v206;
            v208 = *v10;
            v209 = *(a2 - 7);
            v164[4] = *(a2 - 8);
            v164[5] = v209;
            v164[3] = v208;
            *v10 = v355;
            *(a2 - 8) = v356;
            *(a2 - 7) = v357;
          }
        }
      }

      else
      {
        v179 = *v10;
        v180 = *(a2 - 7);
        v356 = *(a2 - 8);
        v357 = v180;
        v355 = v179;
        v181 = v164[3];
        v182 = v164[5];
        v353 = v164[4];
        v354 = v182;
        v352 = v181;
        if (v169(&v355, &v352))
        {
          v183 = v164[3];
          v184 = v164[5];
          v356 = v164[4];
          v357 = v184;
          v355 = v183;
          v185 = *v10;
          v186 = *(a2 - 7);
          v164[4] = *(a2 - 8);
          v164[5] = v186;
          v164[3] = v185;
          *v10 = v355;
          *(a2 - 8) = v356;
          *(a2 - 7) = v357;
          v187 = *a3;
          v188 = v164[3];
          v189 = v164[5];
          v356 = v164[4];
          v357 = v189;
          v190 = a1[7];
          v352 = a1[6];
          v353 = v190;
          v354 = a1[8];
          v355 = v188;
          if (v187(&v355, &v352))
          {
            v192 = a1[7];
            v355 = a1[6];
            v191 = v355;
            v356 = v192;
            v357 = a1[8];
            v193 = v357;
            v194 = v164[3];
            v195 = v164[5];
            a1[7] = v164[4];
            a1[8] = v195;
            a1[6] = v194;
            v164[4] = v192;
            v164[5] = v193;
            v164[3] = v191;
          }
        }
      }

      v210 = *a3;
      v211 = *v17;
      v212 = v17[2];
      v356 = v17[1];
      v357 = v212;
      v355 = v211;
      v213 = *v102;
      v214 = v102[2];
      v353 = v102[1];
      v354 = v214;
      v352 = v213;
      v215 = v210(&v355, &v352);
      v216 = *a3;
      if (v215)
      {
        v217 = v164[3];
        v218 = v164[5];
        v356 = v164[4];
        v357 = v218;
        v355 = v217;
        v219 = *v17;
        v220 = v17[2];
        v353 = v17[1];
        v354 = v220;
        v352 = v219;
        if (v216(&v355, &v352))
        {
          v221 = *v102;
          v222 = v102[2];
          v356 = v102[1];
          v357 = v222;
          v355 = v221;
          v223 = v164[4];
          *v102 = v164[3];
          v102[1] = v223;
          v102[2] = v164[5];
          goto LABEL_55;
        }

        v243 = *v102;
        v244 = v102[2];
        v356 = v102[1];
        v357 = v244;
        v355 = v243;
        v245 = v17[1];
        *v102 = *v17;
        v102[1] = v245;
        v102[2] = v17[2];
        v246 = v357;
        v247 = v355;
        v17[1] = v356;
        v17[2] = v246;
        *v17 = v247;
        v248 = *a3;
        v249 = v164[3];
        v250 = v164[5];
        v356 = v164[4];
        v357 = v250;
        v355 = v249;
        v251 = *v17;
        v252 = v17[2];
        v353 = v17[1];
        v354 = v252;
        v352 = v251;
        if (v248(&v355, &v352))
        {
          v253 = *v17;
          v254 = v17[2];
          v356 = v17[1];
          v357 = v254;
          v355 = v253;
          v255 = v164[4];
          *v17 = v164[3];
          v17[1] = v255;
          v17[2] = v164[5];
LABEL_55:
          v256 = v357;
          v257 = v355;
          v164[4] = v356;
          v164[5] = v256;
          v164[3] = v257;
        }
      }

      else
      {
        v224 = v164[3];
        v225 = v164[5];
        v356 = v164[4];
        v357 = v225;
        v355 = v224;
        v226 = *v17;
        v227 = v17[2];
        v353 = v17[1];
        v354 = v227;
        v352 = v226;
        if (v216(&v355, &v352))
        {
          v228 = *v17;
          v229 = v17[2];
          v356 = v17[1];
          v357 = v229;
          v355 = v228;
          v230 = v164[4];
          *v17 = v164[3];
          v17[1] = v230;
          v17[2] = v164[5];
          v231 = v357;
          v232 = v355;
          v164[4] = v356;
          v164[5] = v231;
          v164[3] = v232;
          v233 = *a3;
          v234 = *v17;
          v235 = v17[2];
          v356 = v17[1];
          v357 = v235;
          v355 = v234;
          v236 = *v102;
          v237 = v102[2];
          v353 = v102[1];
          v354 = v237;
          v352 = v236;
          if (v233(&v355, &v352))
          {
            v238 = *v102;
            v239 = v102[2];
            v356 = v102[1];
            v357 = v239;
            v355 = v238;
            v240 = v17[1];
            *v102 = *v17;
            v102[1] = v240;
            v102[2] = v17[2];
            v241 = v357;
            v242 = v355;
            v17[1] = v356;
            v17[2] = v241;
            *v17 = v242;
          }
        }
      }

      v258 = *a1;
      v259 = a1[2];
      v356 = a1[1];
      v357 = v259;
      v355 = v258;
      v260 = *v17;
      v261 = v17[2];
      a1[1] = v17[1];
      a1[2] = v261;
      *a1 = v260;
      v262 = v355;
      v263 = v357;
      v17[1] = v356;
      v17[2] = v263;
      *v17 = v262;
      goto LABEL_57;
    }

    v33 = *v11;
    v34 = v11[2];
    v356 = v11[1];
    v357 = v34;
    v355 = v33;
    v35 = *v17;
    v36 = v17[2];
    v353 = v17[1];
    v354 = v36;
    v352 = v35;
    v37 = v18(&v355, &v352);
    v38 = *a3;
    if (v37)
    {
      v39 = *v8;
      v40 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v40;
      v355 = v39;
      v41 = *v11;
      v42 = v11[2];
      v353 = v11[1];
      v354 = v42;
      v352 = v41;
      if (v38(&v355, &v352))
      {
        v43 = *v17;
        v44 = v17[2];
        v356 = v17[1];
        v357 = v44;
        v355 = v43;
        v45 = *v8;
        v46 = *(a2 - 1);
        v17[1] = *(a2 - 2);
        v17[2] = v46;
        *v17 = v45;
LABEL_36:
        *v8 = v355;
        *(a2 - 2) = v356;
        *(a2 - 1) = v357;
        goto LABEL_57;
      }

      v134 = *v17;
      v135 = v17[2];
      v356 = v17[1];
      v357 = v135;
      v355 = v134;
      v136 = *v11;
      v137 = v11[2];
      v17[1] = v11[1];
      v17[2] = v137;
      *v17 = v136;
      v138 = v355;
      v139 = v357;
      v11[1] = v356;
      v11[2] = v139;
      *v11 = v138;
      v140 = *a3;
      v141 = *v8;
      v142 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v142;
      v355 = v141;
      v143 = *v11;
      v144 = v11[2];
      v353 = v11[1];
      v354 = v144;
      v352 = v143;
      if (v140(&v355, &v352))
      {
        v145 = *v11;
        v146 = v11[2];
        v356 = v11[1];
        v357 = v146;
        v355 = v145;
        v147 = *v8;
        v148 = *(a2 - 1);
        v11[1] = *(a2 - 2);
        v11[2] = v148;
        *v11 = v147;
        goto LABEL_36;
      }
    }

    else
    {
      v66 = *v8;
      v67 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v67;
      v355 = v66;
      v68 = *v11;
      v69 = v11[2];
      v353 = v11[1];
      v354 = v69;
      v352 = v68;
      if (v38(&v355, &v352))
      {
        v70 = *v11;
        v71 = v11[2];
        v356 = v11[1];
        v357 = v71;
        v355 = v70;
        v72 = *v8;
        v73 = *(a2 - 1);
        v11[1] = *(a2 - 2);
        v11[2] = v73;
        *v11 = v72;
        *v8 = v355;
        *(a2 - 2) = v356;
        *(a2 - 1) = v357;
        v74 = *a3;
        v75 = *v11;
        v76 = v11[2];
        v356 = v11[1];
        v357 = v76;
        v355 = v75;
        v77 = *v17;
        v78 = v17[2];
        v353 = v17[1];
        v354 = v78;
        v352 = v77;
        if (v74(&v355, &v352))
        {
          v79 = *v17;
          v80 = v17[2];
          v356 = v17[1];
          v357 = v80;
          v355 = v79;
          v81 = *v11;
          v82 = v11[2];
          v17[1] = v11[1];
          v17[2] = v82;
          *v17 = v81;
          v83 = v355;
          v84 = v357;
          v11[1] = v356;
          v11[2] = v84;
          *v11 = v83;
        }
      }
    }

LABEL_57:
    if ((a5 & 1) == 0)
    {
      v264 = *a3;
      v265 = *(a1 - 3);
      v266 = *(a1 - 1);
      v356 = *(a1 - 2);
      v357 = v266;
      v355 = v265;
      v267 = *a1;
      v268 = a1[2];
      v353 = a1[1];
      v354 = v268;
      v352 = v267;
      if ((v264(&v355, &v352) & 1) == 0)
      {
        v11 = sub_10012DFEC(a1, a2, a3);
        goto LABEL_64;
      }
    }

    v269 = sub_10012E220(a1, a2, a3);
    if ((v270 & 1) == 0)
    {
      goto LABEL_62;
    }

    v271 = sub_10012E430(a1, v269, a3);
    v11 = &v269[3];
    if (sub_10012E430(v269 + 3, a2, a3))
    {
      a4 = -v13;
      a2 = v269;
      if (v271)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v271)
    {
LABEL_62:
      sub_10012CBCC(a1, v269, a3, -v13, a5 & 1);
      v11 = &v269[3];
LABEL_64:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v15 != 3)
  {
    if (v15 == 4)
    {
      sub_10012DAD4(v11, v11 + 3, v11 + 6, a2 - 3, a3);
      return;
    }

    if (v15 == 5)
    {
      sub_10012DAD4(v11, v11 + 3, v11 + 6, v11 + 9, a3);
      v296 = *a3;
      v297 = *(a2 - 3);
      v298 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v298;
      v299 = v11[10];
      v352 = v11[9];
      v353 = v299;
      v354 = v11[11];
      v355 = v297;
      if (v296(&v355, &v352))
      {
        v300 = v11[9];
        v301 = v11[10];
        v302 = v11[11];
        v304 = *(a2 - 2);
        v303 = *(a2 - 1);
        v11[9] = *v8;
        v11[10] = v304;
        v11[11] = v303;
        *(a2 - 2) = v301;
        *(a2 - 1) = v302;
        *v8 = v300;
        v305 = *a3;
        v306 = v11[10];
        v307 = v11[11];
        v308 = v11[8];
        v355 = v11[9];
        v356 = v306;
        v357 = v307;
        v309 = v11[7];
        v352 = v11[6];
        v353 = v309;
        v354 = v308;
        if (v305(&v355, &v352))
        {
          v310 = v11[10];
          v312 = v11[5];
          v311 = v11[6];
          v11[6] = v11[9];
          v314 = v11[6];
          v313 = v11[7];
          v11[7] = v310;
          v316 = v11[7];
          v315 = v11[8];
          v11[8] = v11[11];
          v11[9] = v311;
          v11[10] = v313;
          v11[11] = v315;
          v317 = *a3;
          v355 = v314;
          v356 = v316;
          v357 = v11[8];
          v318 = v11[4];
          v352 = v11[3];
          v353 = v318;
          v354 = v312;
          if (v317(&v355, &v352))
          {
            v320 = v11[3];
            v319 = v11[4];
            v321 = v11[5];
            v322 = v11[7];
            v323 = v11[8];
            v11[3] = v11[6];
            v11[4] = v322;
            v11[5] = v323;
            v11[6] = v320;
            v11[7] = v319;
            v11[8] = v321;
LABEL_84:
            v341 = *a3;
            v342 = v11[4];
            v355 = v11[3];
            v356 = v342;
            v357 = v11[5];
            v343 = *v11;
            v344 = v11[2];
            v353 = v11[1];
            v354 = v344;
            v352 = v343;
            if (v341(&v355, &v352))
            {
              v345 = *v11;
              v346 = v11[2];
              v347 = v11[3];
              v356 = v11[1];
              v357 = v346;
              v355 = v345;
              v348 = v11[4];
              v349 = v11[5];
              *v11 = v347;
              v11[1] = v348;
              v11[2] = v349;
              v350 = v356;
              v11[3] = v355;
              v11[4] = v350;
              v11[5] = v357;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v272 = *a3;
  v273 = v11[4];
  v355 = v11[3];
  v356 = v273;
  v357 = v11[5];
  v274 = *v11;
  v275 = v11[2];
  v353 = v11[1];
  v354 = v275;
  v352 = v274;
  v276 = v272(&v355, &v352);
  v277 = *a3;
  if (v276)
  {
    v278 = *v8;
    v279 = *(a2 - 1);
    v356 = *(a2 - 2);
    v357 = v279;
    v280 = v11[4];
    v352 = v11[3];
    v353 = v280;
    v354 = v11[5];
    v355 = v278;
    if (!v277(&v355, &v352))
    {
      v281 = *v11;
      v282 = v11[2];
      v283 = v11[3];
      v356 = v11[1];
      v357 = v282;
      v355 = v281;
      v284 = v11[4];
      v285 = v11[5];
      *v11 = v283;
      v11[1] = v284;
      v11[2] = v285;
      v286 = v356;
      v11[3] = v355;
      v11[4] = v286;
      v11[5] = v357;
      v287 = *a3;
      v288 = *v8;
      v289 = *(a2 - 1);
      v356 = *(a2 - 2);
      v357 = v289;
      v290 = v11[4];
      v352 = v11[3];
      v353 = v290;
      v354 = v11[5];
      v355 = v288;
      if (v287(&v355, &v352))
      {
        v291 = v11[3];
        v292 = v11[4];
        v293 = v11[5];
        v295 = *(a2 - 2);
        v294 = *(a2 - 1);
        v11[3] = *v8;
        v11[4] = v295;
        v11[5] = v294;
        *(a2 - 2) = v292;
        *(a2 - 1) = v293;
        *v8 = v291;
      }

      return;
    }

LABEL_76:
    v329 = *v11;
    v330 = v11[2];
    v356 = v11[1];
    v357 = v330;
    v355 = v329;
    v331 = *v8;
    v332 = *(a2 - 1);
    v11[1] = *(a2 - 2);
    v11[2] = v332;
    *v11 = v331;
    *v8 = v355;
    *(a2 - 2) = v356;
    *(a2 - 1) = v357;
    return;
  }

  v333 = *v8;
  v334 = *(a2 - 1);
  v356 = *(a2 - 2);
  v357 = v334;
  v335 = v11[4];
  v352 = v11[3];
  v353 = v335;
  v354 = v11[5];
  v355 = v333;
  if (v277(&v355, &v352))
  {
    v336 = v11[3];
    v337 = v11[4];
    v338 = v11[5];
    v340 = *(a2 - 2);
    v339 = *(a2 - 1);
    v11[3] = *v8;
    v11[4] = v340;
    v11[5] = v339;
    *(a2 - 2) = v337;
    *(a2 - 1) = v338;
    *v8 = v336;
    goto LABEL_84;
  }
}

__n128 sub_10012DAD4(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v11 = a2[1];
  v74 = *a2;
  v75 = v11;
  v76 = a2[2];
  v12 = a1[1];
  v71 = *a1;
  v72 = v12;
  v73 = a1[2];
  v13 = v10(&v74, &v71);
  v14 = *a5;
  if (v13)
  {
    v15 = a3[1];
    v74 = *a3;
    v75 = v15;
    v76 = a3[2];
    v16 = a2[1];
    v71 = *a2;
    v72 = v16;
    v73 = a2[2];
    if (v14(&v74, &v71))
    {
      v17 = *a1;
      v18 = a1[1];
      v19 = a1[2];
      v21 = a3[1];
      v20 = a3[2];
      *a1 = *a3;
      a1[1] = v21;
      a1[2] = v20;
LABEL_9:
      a3[1] = v18;
      a3[2] = v19;
      *a3 = v17;
      goto LABEL_10;
    }

    v37 = *a1;
    v38 = a1[1];
    v39 = a1[2];
    v41 = a2[1];
    v40 = a2[2];
    *a1 = *a2;
    a1[1] = v41;
    a1[2] = v40;
    a2[1] = v38;
    a2[2] = v39;
    *a2 = v37;
    v42 = *a5;
    v43 = a3[1];
    v74 = *a3;
    v75 = v43;
    v76 = a3[2];
    v44 = a2[1];
    v71 = *a2;
    v72 = v44;
    v73 = a2[2];
    if (v42(&v74, &v71))
    {
      v17 = *a2;
      v18 = a2[1];
      v19 = a2[2];
      v46 = a3[1];
      v45 = a3[2];
      *a2 = *a3;
      a2[1] = v46;
      a2[2] = v45;
      goto LABEL_9;
    }
  }

  else
  {
    v22 = a3[1];
    v74 = *a3;
    v75 = v22;
    v76 = a3[2];
    v23 = a2[1];
    v71 = *a2;
    v72 = v23;
    v73 = a2[2];
    if (v14(&v74, &v71))
    {
      v24 = *a2;
      v25 = a2[1];
      v26 = a2[2];
      v28 = a3[1];
      v27 = a3[2];
      *a2 = *a3;
      a2[1] = v28;
      a2[2] = v27;
      a3[1] = v25;
      a3[2] = v26;
      *a3 = v24;
      v29 = *a5;
      v30 = a2[1];
      v74 = *a2;
      v75 = v30;
      v76 = a2[2];
      v31 = a1[1];
      v71 = *a1;
      v72 = v31;
      v73 = a1[2];
      if (v29(&v74, &v71))
      {
        v32 = *a1;
        v33 = a1[1];
        v34 = a1[2];
        v36 = a2[1];
        v35 = a2[2];
        *a1 = *a2;
        a1[1] = v36;
        a1[2] = v35;
        a2[1] = v33;
        a2[2] = v34;
        *a2 = v32;
      }
    }
  }

LABEL_10:
  v47 = *a5;
  v48 = a4[1];
  v74 = *a4;
  v75 = v48;
  v76 = a4[2];
  v49 = a3[1];
  v71 = *a3;
  v72 = v49;
  v73 = a3[2];
  if (v47(&v74, &v71))
  {
    v51 = *a3;
    v52 = a3[1];
    v53 = a3[2];
    v55 = a4[1];
    v54 = a4[2];
    *a3 = *a4;
    a3[1] = v55;
    a3[2] = v54;
    a4[1] = v52;
    a4[2] = v53;
    *a4 = v51;
    v56 = *a5;
    v57 = a3[1];
    v74 = *a3;
    v75 = v57;
    v76 = a3[2];
    v58 = a2[1];
    v71 = *a2;
    v72 = v58;
    v73 = a2[2];
    if (v56(&v74, &v71))
    {
      v59 = *a2;
      v60 = a2[1];
      v61 = a2[2];
      v63 = a3[1];
      v62 = a3[2];
      *a2 = *a3;
      a2[1] = v63;
      a2[2] = v62;
      a3[1] = v60;
      a3[2] = v61;
      *a3 = v59;
      v64 = *a5;
      v65 = a2[1];
      v74 = *a2;
      v75 = v65;
      v76 = a2[2];
      v66 = a1[1];
      v71 = *a1;
      v72 = v66;
      v73 = a1[2];
      if (v64(&v74, &v71))
      {
        result = *a1;
        v67 = a1[1];
        v68 = a1[2];
        v70 = a2[1];
        v69 = a2[2];
        *a1 = *a2;
        a1[1] = v70;
        a1[2] = v69;
        a2[1] = v67;
        a2[2] = v68;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t sub_10012DDB8(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v31 = v3;
    v32 = v4;
    v6 = result;
    v7 = (result + 48);
    if ((result + 48) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        v12 = *a3;
        v13 = v10[1];
        v28 = *v10;
        v29 = v13;
        v30 = v10[2];
        v14 = *v11;
        v15 = v11[2];
        v26 = v11[1];
        v27 = v15;
        v25 = v14;
        result = v12(&v28, &v25);
        if (result)
        {
          v16 = v10[1];
          v28 = *v10;
          v29 = v16;
          v30 = v10[2];
          v17 = v9;
          while (1)
          {
            v18 = (v6 + v17);
            v19 = *(v6 + v17 + 16);
            v18[3] = *(v6 + v17);
            v18[4] = v19;
            v18[5] = *(v6 + v17 + 32);
            if (!v17)
            {
              break;
            }

            v20 = *a3;
            v25 = v28;
            v26 = v29;
            v27 = v30;
            v21 = *(v18 - 2);
            v24[0] = *(v18 - 3);
            v24[1] = v21;
            v24[2] = *(v18 - 1);
            result = v20(&v25, v24);
            v17 -= 48;
            if ((result & 1) == 0)
            {
              v22 = (v6 + v17 + 48);
              goto LABEL_10;
            }
          }

          v22 = v6;
LABEL_10:
          v23 = v29;
          *v22 = v28;
          v22[1] = v23;
          v22[2] = v30;
        }

        v7 = v10 + 3;
        v9 += 48;
      }

      while (v10 + 3 != a2);
    }
  }

  return result;
}

uint64_t sub_10012DEE8(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v30 = v3;
    v31 = v4;
    v6 = result;
    for (i = (result + 48); v6 + 3 != a2; i = v6 + 3)
    {
      v9 = v6;
      v6 = i;
      v10 = *a3;
      v11 = v6[1];
      v27 = *v6;
      v28 = v11;
      v29 = v6[2];
      v12 = *v9;
      v13 = v9[2];
      v25 = v9[1];
      v26 = v13;
      v24 = v12;
      result = v10(&v27, &v24);
      if (result)
      {
        v14 = v6[1];
        v27 = *v6;
        v28 = v14;
        v29 = v6[2];
        v15 = v6;
        do
        {
          v16 = *(v15 - 2);
          v17 = *(v15 - 1);
          v18 = *(v15 - 4);
          *v15 = *(v15 - 3);
          v15[1] = v16;
          v15[2] = v17;
          v24 = v27;
          v25 = v28;
          v26 = v29;
          v19 = *(v15 - 5);
          v23[0] = *(v15 - 6);
          v23[1] = v19;
          v20 = v15 - 3;
          v21 = *a3;
          v23[2] = v18;
          result = v21(&v24, v23);
          v15 = v20;
        }

        while ((result & 1) != 0);
        v22 = v28;
        *v20 = v27;
        v20[1] = v22;
        v20[2] = v29;
      }
    }
  }

  return result;
}

__int128 *sub_10012DFEC(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v46 = *a1;
  v47 = v6;
  v8 = *a1;
  v7 = a1[1];
  v48 = a1[2];
  v49 = v8;
  v9 = *a3;
  v10 = a1[2];
  v50 = v7;
  v51 = v10;
  v11 = *(a2 - 2);
  v43 = *(a2 - 3);
  v44 = v11;
  v45 = *(a2 - 1);
  if (v9(&v49, &v43))
  {
    v12 = a1;
    do
    {
      v13 = v12 + 3;
      v14 = *a3;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v15 = v12[4];
      v43 = v12[3];
      v44 = v15;
      v45 = v12[5];
      v16 = v14(&v49, &v43);
      v12 = v13;
    }

    while ((v16 & 1) == 0);
  }

  else
  {
    v17 = a1 + 3;
    do
    {
      v13 = v17;
      if (v17 >= v4)
      {
        break;
      }

      v18 = *a3;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v19 = v13[1];
      v43 = *v13;
      v44 = v19;
      v45 = v13[2];
      v20 = v18(&v49, &v43);
      v17 = v13 + 3;
    }

    while (!v20);
  }

  if (v13 >= v4)
  {
    v21 = v4;
  }

  else
  {
    do
    {
      v21 = v4 - 3;
      v22 = *a3;
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v23 = *(v4 - 2);
      v43 = *(v4 - 3);
      v44 = v23;
      v45 = *(v4 - 1);
      v4 -= 3;
    }

    while ((v22(&v49, &v43) & 1) != 0);
  }

  while (v13 < v21)
  {
    v24 = *v13;
    v25 = v13[2];
    v50 = v13[1];
    v51 = v25;
    v49 = v24;
    v26 = *v21;
    v27 = v21[2];
    v13[1] = v21[1];
    v13[2] = v27;
    *v13 = v26;
    v28 = v49;
    v29 = v51;
    v21[1] = v50;
    v21[2] = v29;
    *v21 = v28;
    do
    {
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v30 = v13[4];
      v43 = v13[3];
      v44 = v30;
      v31 = v13[5];
      v13 += 3;
      v32 = *a3;
      v45 = v31;
    }

    while (!v32(&v49, &v43));
    do
    {
      v49 = v46;
      v50 = v47;
      v51 = v48;
      v33 = *(v21 - 3);
      v34 = *(v21 - 2);
      v35 = *(v21 - 1);
      v21 -= 3;
      v36 = *a3;
      v44 = v34;
      v45 = v35;
      v43 = v33;
    }

    while ((v36(&v49, &v43) & 1) != 0);
  }

  v37 = v13 - 3;
  if (v13 - 3 != a1)
  {
    v38 = *v37;
    v39 = *(v13 - 1);
    a1[1] = *(v13 - 2);
    a1[2] = v39;
    *a1 = v38;
  }

  v40 = v46;
  v41 = v48;
  *(v13 - 2) = v47;
  *(v13 - 1) = v41;
  *v37 = v40;
  return v13;
}

__int128 *sub_10012E220(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v40 = *a1;
  v41 = v7;
  v42 = a1[2];
  do
  {
    v8 = *a3;
    v9 = a1[v6 + 4];
    v43 = a1[v6 + 3];
    v44 = v9;
    v45 = a1[v6 + 5];
    v37 = v40;
    v38 = v41;
    v39 = v42;
    v6 += 3;
  }

  while ((v8(&v43, &v37) & 1) != 0);
  v10 = &a1[v6];
  v11 = &a1[v6 - 3];
  if (v6 == 3)
  {
    while (v10 < a2)
    {
      v15 = *a3;
      v12 = a2 - 3;
      v16 = *(a2 - 2);
      v43 = *(a2 - 3);
      v44 = v16;
      v45 = *(a2 - 1);
      v37 = v40;
      v38 = v41;
      v39 = v42;
      a2 -= 3;
      if (v15(&v43, &v37))
      {
        goto LABEL_9;
      }
    }

    v12 = a2;
  }

  else
  {
    do
    {
      v12 = a2 - 3;
      v13 = *a3;
      v14 = *(a2 - 2);
      v43 = *(a2 - 3);
      v44 = v14;
      v45 = *(a2 - 1);
      v37 = v40;
      v38 = v41;
      v39 = v42;
      a2 -= 3;
    }

    while (!v13(&v43, &v37));
  }

LABEL_9:
  if (v10 < v12)
  {
    v17 = v10;
    v18 = v12;
    do
    {
      v20 = v17[1];
      v43 = *v17;
      v19 = v43;
      v44 = v20;
      v45 = v17[2];
      v21 = v45;
      v22 = *v18;
      v23 = v18[2];
      v17[1] = v18[1];
      v17[2] = v23;
      *v17 = v22;
      v18[1] = v20;
      v18[2] = v21;
      *v18 = v19;
      do
      {
        v24 = v17[3];
        v25 = v17[4];
        v26 = v17[5];
        v17 += 3;
        v27 = *a3;
        v43 = v24;
        v44 = v25;
        v45 = v26;
        v37 = v40;
        v38 = v41;
        v39 = v42;
      }

      while ((v27(&v43, &v37) & 1) != 0);
      do
      {
        v28 = *(v18 - 3);
        v29 = *(v18 - 2);
        v30 = *(v18 - 1);
        v18 -= 3;
        v31 = *a3;
        v44 = v29;
        v45 = v30;
        v43 = v28;
        v37 = v40;
        v38 = v41;
        v39 = v42;
      }

      while (!v31(&v43, &v37));
    }

    while (v17 < v18);
    v11 = v17 - 3;
  }

  if (v11 != a1)
  {
    v32 = *v11;
    v33 = v11[2];
    a1[1] = v11[1];
    a1[2] = v33;
    *a1 = v32;
  }

  v34 = v40;
  v35 = v42;
  v11[1] = v41;
  v11[2] = v35;
  *v11 = v34;
  return v11;
}

BOOL sub_10012E430(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v47 = a2 - 3;
        v48 = *a3;
        v49 = a1[4];
        v50 = a1[5];
        v51 = a1[2];
        v146 = a1[3];
        v147 = v49;
        v148 = v50;
        v52 = a1[1];
        v143 = *a1;
        v144 = v52;
        v145 = v51;
        v53 = v48(&v146, &v143);
        v54 = *a3;
        if (v53)
        {
          v55 = v47[1];
          v146 = *v47;
          v147 = v55;
          v148 = v47[2];
          v56 = a1[4];
          v143 = a1[3];
          v144 = v56;
          v145 = a1[5];
          if (v54(&v146, &v143))
          {
            v57 = *a1;
            v58 = a1[1];
            v59 = a1[2];
            v61 = v47[1];
            v60 = v47[2];
            *a1 = *v47;
            a1[1] = v61;
            a1[2] = v60;
          }

          else
          {
            v108 = a1[1];
            v109 = a1[2];
            v110 = a1[3];
            a1[3] = *a1;
            v112 = a1[3];
            v111 = a1[4];
            *a1 = v110;
            a1[1] = v111;
            a1[4] = v108;
            v113 = a1[4];
            a1[2] = a1[5];
            a1[5] = v109;
            v114 = *a3;
            v115 = v47[1];
            v146 = *v47;
            v147 = v115;
            v148 = v47[2];
            v143 = v112;
            v144 = v113;
            v145 = a1[5];
            if (!v114(&v146, &v143))
            {
              return 1;
            }

            v57 = a1[3];
            v58 = a1[4];
            v59 = a1[5];
            v117 = v47[1];
            v116 = v47[2];
            a1[3] = *v47;
            a1[4] = v117;
            a1[5] = v116;
          }

          v47[1] = v58;
          v47[2] = v59;
          result = 1;
          *v47 = v57;
          return result;
        }

        v76 = v47[1];
        v146 = *v47;
        v147 = v76;
        v148 = v47[2];
        v77 = a1[4];
        v143 = a1[3];
        v144 = v77;
        v145 = a1[5];
        if (!v54(&v146, &v143))
        {
          return 1;
        }

        v78 = a1[3];
        v79 = a1[4];
        v80 = a1[5];
        v82 = v47[1];
        v81 = v47[2];
        a1[3] = *v47;
        a1[4] = v82;
        a1[5] = v81;
        v47[1] = v79;
        v47[2] = v80;
        *v47 = v78;
        v46 = *a3;
        v83 = a1[4];
        v84 = a1[5];
        v41 = a1[2];
        v146 = a1[3];
        v147 = v83;
        v148 = v84;
        break;
      case 4:
        sub_10012DAD4(a1, a1 + 3, a1 + 6, a2 - 3, a3);
        return 1;
      case 5:
        sub_10012DAD4(a1, a1 + 3, a1 + 6, a1 + 9, a3);
        v16 = *a3;
        v17 = a2[-2];
        v146 = a2[-3];
        v147 = v17;
        v148 = a2[-1];
        v18 = a1[10];
        v143 = a1[9];
        v144 = v18;
        v145 = a1[11];
        if (!v16(&v146, &v143))
        {
          return 1;
        }

        v19 = a2 - 3;
        v20 = a1[9];
        v21 = a1[10];
        v22 = a1[11];
        v24 = a2[-2];
        v23 = a2[-1];
        a1[9] = a2[-3];
        a1[10] = v24;
        a1[11] = v23;
        v19[1] = v21;
        v19[2] = v22;
        *v19 = v20;
        v25 = *a3;
        v26 = a1[10];
        v27 = a1[11];
        v28 = a1[8];
        v146 = a1[9];
        v147 = v26;
        v148 = v27;
        v29 = a1[7];
        v143 = a1[6];
        v144 = v29;
        v145 = v28;
        if (!v25(&v146, &v143))
        {
          return 1;
        }

        v30 = a1[10];
        v32 = a1[5];
        v31 = a1[6];
        a1[6] = a1[9];
        v34 = a1[6];
        v33 = a1[7];
        a1[7] = v30;
        v36 = a1[7];
        v35 = a1[8];
        a1[8] = a1[11];
        a1[9] = v31;
        a1[10] = v33;
        a1[11] = v35;
        v37 = *a3;
        v146 = v34;
        v147 = v36;
        v148 = a1[8];
        v38 = a1[4];
        v143 = a1[3];
        v144 = v38;
        v145 = v32;
        if (!v37(&v146, &v143))
        {
          return 1;
        }

        v39 = a1[7];
        v41 = a1[2];
        v40 = a1[3];
        a1[3] = a1[6];
        v43 = a1[3];
        v42 = a1[4];
        a1[4] = v39;
        v45 = a1[4];
        v44 = a1[5];
        a1[5] = a1[8];
        a1[6] = v40;
        a1[7] = v42;
        a1[8] = v44;
        v46 = *a3;
        v146 = v43;
        v147 = v45;
        v148 = a1[5];
        break;
      default:
        goto LABEL_16;
    }

    v85 = a1[1];
    v143 = *a1;
    v144 = v85;
    v145 = v41;
    if (v46(&v146, &v143))
    {
      v87 = *a1;
      v86 = a1[1];
      v88 = a1[2];
      v89 = a1[4];
      v90 = a1[5];
      *a1 = a1[3];
      a1[1] = v89;
      a1[2] = v90;
      a1[3] = v87;
      result = 1;
      a1[4] = v86;
      a1[5] = v88;
      return result;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = a2[-2];
    v146 = a2[-3];
    v147 = v8;
    v148 = a2[-1];
    v9 = a1[1];
    v143 = *a1;
    v144 = v9;
    v145 = a1[2];
    if (v7(&v146, &v143))
    {
      v10 = a2 - 3;
      v11 = *a1;
      v12 = a1[1];
      v13 = a1[2];
      v15 = a2[-2];
      v14 = a2[-1];
      *a1 = a2[-3];
      a1[1] = v15;
      a1[2] = v14;
      v10[1] = v12;
      v10[2] = v13;
      *v10 = v11;
    }

    return 1;
  }

LABEL_16:
  v62 = a1 + 6;
  v63 = *a3;
  v64 = a1[4];
  v65 = a1[5];
  v66 = a1[2];
  v146 = a1[3];
  v147 = v64;
  v148 = v65;
  v67 = a1[1];
  v143 = *a1;
  v144 = v67;
  v145 = v66;
  v68 = v63(&v146, &v143);
  v69 = *a3;
  if (v68)
  {
    v70 = a1[7];
    v146 = *v62;
    v147 = v70;
    v148 = a1[8];
    v71 = a1[4];
    v143 = a1[3];
    v144 = v71;
    v145 = a1[5];
    if (v69(&v146, &v143))
    {
      v73 = a1[1];
      v72 = a1[2];
      v74 = *a1;
      v75 = a1[7];
      *a1 = *v62;
      a1[1] = v75;
      a1[2] = a1[8];
    }

    else
    {
      v118 = a1[1];
      v119 = a1[2];
      v120 = a1[3];
      a1[3] = *a1;
      v122 = a1[3];
      v121 = a1[4];
      *a1 = v120;
      a1[1] = v121;
      a1[4] = v118;
      v123 = a1[4];
      a1[2] = a1[5];
      a1[5] = v119;
      v124 = *a3;
      v125 = a1[7];
      v146 = *v62;
      v147 = v125;
      v148 = a1[8];
      v143 = v122;
      v144 = v123;
      v145 = a1[5];
      if (!v124(&v146, &v143))
      {
        goto LABEL_33;
      }

      v73 = a1[4];
      v72 = a1[5];
      v74 = a1[3];
      v126 = a1[7];
      a1[3] = *v62;
      a1[4] = v126;
      a1[5] = a1[8];
    }

    *v62 = v74;
    a1[7] = v73;
    a1[8] = v72;
  }

  else
  {
    v92 = a1[7];
    v146 = *v62;
    v147 = v92;
    v148 = a1[8];
    v93 = a1[4];
    v143 = a1[3];
    v144 = v93;
    v145 = a1[5];
    if (v69(&v146, &v143))
    {
      v94 = a1[7];
      v96 = a1[2];
      v95 = a1[3];
      a1[3] = *v62;
      v98 = a1[3];
      v97 = a1[4];
      a1[4] = v94;
      v100 = a1[4];
      v99 = a1[5];
      a1[5] = a1[8];
      *v62 = v95;
      a1[7] = v97;
      a1[8] = v99;
      v101 = *a3;
      v146 = v98;
      v147 = v100;
      v148 = a1[5];
      v102 = a1[1];
      v143 = *a1;
      v144 = v102;
      v145 = v96;
      if (v101(&v146, &v143))
      {
        v104 = *a1;
        v103 = a1[1];
        v105 = a1[2];
        v106 = a1[4];
        v107 = a1[5];
        *a1 = a1[3];
        a1[1] = v106;
        a1[2] = v107;
        a1[3] = v104;
        a1[4] = v103;
        a1[5] = v105;
      }
    }
  }

LABEL_33:
  v127 = a1 + 9;
  if (&a1[9] == a2)
  {
    return 1;
  }

  v128 = 0;
  v129 = 0;
  while (1)
  {
    v130 = *a3;
    v131 = v127[1];
    v146 = *v127;
    v147 = v131;
    v148 = v127[2];
    v132 = *v62;
    v133 = v62[2];
    v144 = v62[1];
    v145 = v133;
    v143 = v132;
    if (v130(&v146, &v143))
    {
      v134 = v127[1];
      v146 = *v127;
      v147 = v134;
      v148 = v127[2];
      v135 = v128;
      while (1)
      {
        v136 = (a1->n128_u64 + v135);
        v137 = *(&a1[7] + v135);
        v136[9] = *(&a1[6] + v135);
        v136[10] = v137;
        v136[11] = *(&a1[8] + v135);
        if (v135 == -96)
        {
          break;
        }

        v138 = *a3;
        v143 = v146;
        v144 = v147;
        v145 = v148;
        v139 = v136[4];
        v142[0] = v136[3];
        v142[1] = v139;
        v142[2] = v136[5];
        v135 -= 48;
        if (((v138)(&v143, v142) & 1) == 0)
        {
          v140 = (a1 + v135 + 144);
          goto LABEL_41;
        }
      }

      v140 = a1;
LABEL_41:
      v141 = v147;
      *v140 = v146;
      v140[1] = v141;
      v140[2] = v148;
      if (++v129 == 8)
      {
        return &v127[3] == a2;
      }
    }

    v62 = v127;
    v128 += 48;
    v127 += 3;
    if (v127 == a2)
    {
      return 1;
    }
  }
}

__n128 *sub_10012EA98(uint64_t a1, __n128 *a2, __n128 *a3, unsigned int (**a4)(__n128 *, __n128 *))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 49)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 48 * v10);
      do
      {
        sub_10012EC78(a1, a4, v9, v12);
        v12 -= 3;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = *a4;
        v15 = v13[1];
        v32 = *v13;
        v33 = v15;
        v34 = v13[2];
        v16 = *(a1 + 16);
        v31[0] = *a1;
        v31[1] = v16;
        v31[2] = *(a1 + 32);
        if (v14(&v32, v31))
        {
          v17 = *v13;
          v18 = v13[1];
          v19 = v13[2];
          v21 = *(a1 + 16);
          v20 = *(a1 + 32);
          *v13 = *a1;
          v13[1] = v21;
          v13[2] = v20;
          *(a1 + 16) = v18;
          *(a1 + 32) = v19;
          *a1 = v17;
          sub_10012EC78(a1, a4, v9, a1);
        }

        v13 += 3;
      }

      while (v13 != a3);
    }

    if (v8 >= 49)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v23 = a2 - 3;
      do
      {
        v24 = *(a1 + 16);
        v32 = *a1;
        v33 = v24;
        v34 = *(a1 + 32);
        v25 = sub_10012EE5C(a1, a4, v22);
        if (v23 == v25)
        {
          *v25 = v32;
          v25[1] = v33;
          v25[2] = v34;
        }

        else
        {
          v26 = *v23;
          v27 = v23[2];
          v25[1] = v23[1];
          v25[2] = v27;
          *v25 = v26;
          v28 = v33;
          *v23 = v32;
          v23[1] = v28;
          v23[2] = v34;
          sub_10012EF44(a1, &v25[3], a4, 0xAAAAAAAAAAAAAAABLL * ((&v25[3] - a1) >> 4));
        }

        v23 -= 3;
      }

      while (v22-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 sub_10012EC78(uint64_t a1, unsigned int (**a2)(__n128 *, __n128 *), uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v46 = v4;
    v47 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 4)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 4)) | 1;
      v13 = (a1 + 48 * v12);
      v14 = 0x5555555555555556 * ((a4 - a1) >> 4) + 2;
      if (v14 < a3)
      {
        v15 = *a2;
        v16 = v13[1];
        v43 = *v13;
        v44 = v16;
        v17 = v13[3];
        v45 = v13[2];
        v18 = v13[4];
        v19 = v13[5];
        v40 = v17;
        v41 = v18;
        v42 = v19;
        if (v15(&v43, &v40))
        {
          v13 += 3;
          v12 = v14;
        }
      }

      v20 = *a2;
      v21 = v13[1];
      v43 = *v13;
      v44 = v21;
      v45 = v13[2];
      v22 = v7[1];
      v40 = *v7;
      v41 = v22;
      v42 = v7[2];
      if ((v20(&v43, &v40) & 1) == 0)
      {
        v24 = v7[1];
        v43 = *v7;
        v44 = v24;
        v45 = v7[2];
        do
        {
          v25 = v13;
          v26 = *v13;
          v27 = v13[2];
          v7[1] = v13[1];
          v7[2] = v27;
          *v7 = v26;
          if (v9 < v12)
          {
            break;
          }

          v28 = (2 * v12) | 1;
          v13 = (a1 + 48 * v28);
          if (2 * v12 + 2 < a3)
          {
            v29 = *a2;
            v30 = v13[1];
            v40 = *v13;
            v41 = v30;
            v31 = v13[3];
            v42 = v13[2];
            v32 = v13[4];
            v33 = v13[5];
            v37 = v31;
            v38 = v32;
            v39 = v33;
            if (v29(&v40, &v37))
            {
              v13 += 3;
              v28 = 2 * v12 + 2;
            }
          }

          v34 = *a2;
          v35 = v13[1];
          v40 = *v13;
          v41 = v35;
          v42 = v13[2];
          v37 = v43;
          v38 = v44;
          v39 = v45;
          v7 = v25;
          v12 = v28;
        }

        while (!v34(&v40, &v37));
        result = v43;
        v36 = v45;
        v25[1] = v44;
        v25[2] = v36;
        *v25 = result;
      }
    }
  }

  return result;
}

_OWORD *sub_10012EE5C(_OWORD *a1, unsigned int (**a2)(_OWORD *, _OWORD *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[3 * v6];
    v9 = v8 + 3;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v13 = *v9;
      v14 = v8[5];
      v22[1] = v8[4];
      v22[2] = v14;
      v22[0] = v13;
      v15 = v8 + 6;
      v16 = v8[6];
      v17 = v8[8];
      v21[1] = v8[7];
      v21[2] = v17;
      v21[0] = v16;
      if (v12(v22, v21))
      {
        v9 = v15;
        v10 = v11;
      }
    }

    v18 = *v9;
    v19 = v9[2];
    a1[1] = v9[1];
    a1[2] = v19;
    *a1 = v18;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double sub_10012EF44(uint64_t a1, uint64_t a2, unsigned int (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v31 = v4;
    v32 = v5;
    v9 = (a4 - 2) >> 1;
    v10 = *a3;
    v11 = (a1 + 48 * v9);
    v12 = v11[1];
    v28 = *v11;
    v29 = v12;
    v30 = v11[2];
    v13 = *(a2 - 32);
    v25 = *(a2 - 48);
    v26 = v13;
    v27 = *(a2 - 16);
    if (v10(&v28, &v25))
    {
      v15 = (a2 - 48);
      v16 = *(a2 - 32);
      v28 = *(a2 - 48);
      v29 = v16;
      v30 = *(a2 - 16);
      do
      {
        v17 = v11;
        v18 = *v11;
        v19 = v11[2];
        v15[1] = v11[1];
        v15[2] = v19;
        *v15 = v18;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v20 = *a3;
        v11 = (a1 + 48 * v9);
        v21 = v11[1];
        v25 = *v11;
        v26 = v21;
        v27 = v11[2];
        v24[0] = v28;
        v24[1] = v29;
        v24[2] = v30;
        v22 = v20(&v25, v24);
        v15 = v17;
      }

      while ((v22 & 1) != 0);
      v23 = v29;
      *v17 = v28;
      v17[1] = v23;
      result = *&v30;
      v17[2] = v30;
    }
  }

  return result;
}

void sub_10012F054(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_10012CB98();
}

void sub_10012F09C(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 4;
  v9 = a2 - 8;
  v10 = a2 - 12;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 6;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      v450 = *a3;
      v451 = *(a2 - 4);
      v452 = *(a2 - 3);
      v453 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v453;
      v495 = v451;
      v496 = v452;
      v454 = *v11;
      v455 = v11[1];
      v456 = v11[3];
      v493 = v11[2];
      v494 = v456;
      v491 = v454;
      v492 = v455;
      if (!v450(&v495, &v491))
      {
        return;
      }

      goto LABEL_78;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {
        sub_1001302E4(v11, a2, a3);
      }

      else
      {
        sub_10013041C(v11, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v11 != a2)
      {
        sub_100130FE0(v11, a2, a2, a3);
      }

      return;
    }

    v15 = &v11[4 * (v14 >> 1)];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = *v15;
      v18 = v15[1];
      v19 = v15[3];
      v497 = v15[2];
      v498 = v19;
      v495 = v17;
      v496 = v18;
      v20 = *v11;
      v21 = v11[1];
      v22 = v11[3];
      v493 = v11[2];
      v494 = v22;
      v491 = v20;
      v492 = v21;
      v23 = v16(&v495, &v491);
      v24 = *a3;
      if (v23)
      {
        v25 = *v8;
        v26 = *(a2 - 3);
        v27 = *(a2 - 1);
        v497 = *(a2 - 2);
        v498 = v27;
        v495 = v25;
        v496 = v26;
        v28 = *v15;
        v29 = v15[1];
        v30 = v15[3];
        v493 = v15[2];
        v494 = v30;
        v491 = v28;
        v492 = v29;
        if (v24(&v495, &v491))
        {
          v31 = *v11;
          v32 = v11[1];
          v33 = v11[3];
          v497 = v11[2];
          v498 = v33;
          v495 = v31;
          v496 = v32;
          v34 = *v8;
          v35 = *(a2 - 3);
          v36 = *(a2 - 1);
          v11[2] = *(a2 - 2);
          v11[3] = v36;
          *v11 = v34;
          v11[1] = v35;
          goto LABEL_27;
        }

        v113 = *v11;
        v114 = v11[1];
        v115 = v11[3];
        v497 = v11[2];
        v498 = v115;
        v495 = v113;
        v496 = v114;
        v116 = *v15;
        v117 = v15[1];
        v118 = v15[3];
        v11[2] = v15[2];
        v11[3] = v118;
        *v11 = v116;
        v11[1] = v117;
        v119 = v495;
        v120 = v496;
        v121 = v498;
        v15[2] = v497;
        v15[3] = v121;
        *v15 = v119;
        v15[1] = v120;
        v122 = *a3;
        v123 = *v8;
        v124 = *(a2 - 3);
        v125 = *(a2 - 1);
        v497 = *(a2 - 2);
        v498 = v125;
        v495 = v123;
        v496 = v124;
        v126 = *v15;
        v127 = v15[1];
        v128 = v15[3];
        v493 = v15[2];
        v494 = v128;
        v491 = v126;
        v492 = v127;
        if (v122(&v495, &v491))
        {
          v129 = *v15;
          v130 = v15[1];
          v131 = v15[3];
          v497 = v15[2];
          v498 = v131;
          v495 = v129;
          v496 = v130;
          v132 = *v8;
          v133 = *(a2 - 3);
          v134 = *(a2 - 1);
          v15[2] = *(a2 - 2);
          v15[3] = v134;
          *v15 = v132;
          v15[1] = v133;
LABEL_27:
          *v8 = v495;
          *(a2 - 3) = v496;
          *(a2 - 2) = v497;
          *(a2 - 1) = v498;
        }
      }

      else
      {
        v57 = *v8;
        v58 = *(a2 - 3);
        v59 = *(a2 - 1);
        v497 = *(a2 - 2);
        v498 = v59;
        v495 = v57;
        v496 = v58;
        v60 = *v15;
        v61 = v15[1];
        v62 = v15[3];
        v493 = v15[2];
        v494 = v62;
        v491 = v60;
        v492 = v61;
        if (v24(&v495, &v491))
        {
          v63 = *v15;
          v64 = v15[1];
          v65 = v15[3];
          v497 = v15[2];
          v498 = v65;
          v495 = v63;
          v496 = v64;
          v66 = *v8;
          v67 = *(a2 - 3);
          v68 = *(a2 - 1);
          v15[2] = *(a2 - 2);
          v15[3] = v68;
          *v15 = v66;
          v15[1] = v67;
          *v8 = v495;
          *(a2 - 3) = v496;
          *(a2 - 2) = v497;
          *(a2 - 1) = v498;
          v69 = *a3;
          v70 = *v15;
          v71 = v15[1];
          v72 = v15[3];
          v497 = v15[2];
          v498 = v72;
          v495 = v70;
          v496 = v71;
          v73 = *v11;
          v74 = v11[1];
          v75 = v11[3];
          v493 = v11[2];
          v494 = v75;
          v491 = v73;
          v492 = v74;
          if (v69(&v495, &v491))
          {
            v76 = *v11;
            v77 = v11[1];
            v78 = v11[3];
            v497 = v11[2];
            v498 = v78;
            v495 = v76;
            v496 = v77;
            v79 = *v15;
            v80 = v15[1];
            v81 = v15[3];
            v11[2] = v15[2];
            v11[3] = v81;
            *v11 = v79;
            v11[1] = v80;
            v82 = v495;
            v83 = v496;
            v84 = v498;
            v15[2] = v497;
            v15[3] = v84;
            *v15 = v82;
            v15[1] = v83;
          }
        }
      }

      v135 = v15 - 4;
      v136 = *a3;
      v137 = *(v15 - 4);
      v138 = *(v15 - 3);
      v139 = *(v15 - 1);
      v497 = *(v15 - 2);
      v498 = v139;
      v495 = v137;
      v496 = v138;
      v140 = a1[5];
      v491 = a1[4];
      v492 = v140;
      v141 = a1[7];
      v493 = a1[6];
      v494 = v141;
      v142 = v136(&v495, &v491);
      v143 = *a3;
      if (v142)
      {
        v144 = *v9;
        v145 = *(a2 - 7);
        v146 = *(a2 - 5);
        v497 = *(a2 - 6);
        v498 = v146;
        v495 = v144;
        v496 = v145;
        v147 = *v135;
        v148 = *(v15 - 3);
        v149 = *(v15 - 1);
        v493 = *(v15 - 2);
        v494 = v149;
        v491 = v147;
        v492 = v148;
        if (v143(&v495, &v491))
        {
          v151 = a1[6];
          v150 = a1[7];
          v153 = a1[4];
          v152 = a1[5];
          v154 = *(a2 - 5);
          v156 = *v9;
          v155 = *(a2 - 7);
          a1[6] = *(a2 - 6);
          a1[7] = v154;
          a1[4] = v156;
          a1[5] = v155;
          *v9 = v153;
          *(a2 - 7) = v152;
          *(a2 - 6) = v151;
          goto LABEL_39;
        }

        v205 = a1[5];
        v495 = a1[4];
        v204 = v495;
        v496 = v205;
        v207 = a1[7];
        v497 = a1[6];
        v206 = v497;
        v498 = v207;
        v209 = *(v15 - 2);
        v208 = *(v15 - 1);
        v210 = *(v15 - 3);
        a1[4] = *v135;
        a1[5] = v210;
        a1[6] = v209;
        a1[7] = v208;
        *(v15 - 2) = v206;
        *(v15 - 1) = v207;
        *v135 = v204;
        *(v15 - 3) = v205;
        v211 = *a3;
        v212 = *v9;
        v213 = *(a2 - 7);
        v214 = *(a2 - 5);
        v497 = *(a2 - 6);
        v498 = v214;
        v495 = v212;
        v496 = v213;
        v215 = *v135;
        v216 = *(v15 - 3);
        v217 = *(v15 - 1);
        v493 = *(v15 - 2);
        v494 = v217;
        v491 = v215;
        v492 = v216;
        if (v211(&v495, &v491))
        {
          v218 = *v135;
          v219 = *(v15 - 3);
          v220 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v220;
          v495 = v218;
          v496 = v219;
          v221 = *v9;
          v222 = *(a2 - 7);
          v223 = *(a2 - 5);
          *(v15 - 2) = *(a2 - 6);
          *(v15 - 1) = v223;
          *v135 = v221;
          *(v15 - 3) = v222;
          *v9 = v495;
          *(a2 - 7) = v496;
          *(a2 - 6) = v497;
          v150 = v498;
LABEL_39:
          *(a2 - 5) = v150;
        }
      }

      else
      {
        v157 = *v9;
        v158 = *(a2 - 7);
        v159 = *(a2 - 5);
        v497 = *(a2 - 6);
        v498 = v159;
        v495 = v157;
        v496 = v158;
        v160 = *v135;
        v161 = *(v15 - 3);
        v162 = *(v15 - 1);
        v493 = *(v15 - 2);
        v494 = v162;
        v491 = v160;
        v492 = v161;
        if (v143(&v495, &v491))
        {
          v163 = *v135;
          v164 = *(v15 - 3);
          v165 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v165;
          v495 = v163;
          v496 = v164;
          v166 = *v9;
          v167 = *(a2 - 7);
          v168 = *(a2 - 5);
          *(v15 - 2) = *(a2 - 6);
          *(v15 - 1) = v168;
          *v135 = v166;
          *(v15 - 3) = v167;
          *v9 = v495;
          *(a2 - 7) = v496;
          *(a2 - 6) = v497;
          *(a2 - 5) = v498;
          v169 = *a3;
          v170 = *v135;
          v171 = *(v15 - 3);
          v172 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v172;
          v495 = v170;
          v496 = v171;
          v173 = a1[5];
          v491 = a1[4];
          v492 = v173;
          v174 = a1[7];
          v493 = a1[6];
          v494 = v174;
          if (v169(&v495, &v491))
          {
            v176 = a1[5];
            v495 = a1[4];
            v175 = v495;
            v496 = v176;
            v178 = a1[7];
            v497 = a1[6];
            v177 = v497;
            v498 = v178;
            v180 = *(v15 - 2);
            v179 = *(v15 - 1);
            v181 = *(v15 - 3);
            a1[4] = *v135;
            a1[5] = v181;
            a1[6] = v180;
            a1[7] = v179;
            *(v15 - 2) = v177;
            *(v15 - 1) = v178;
            *v135 = v175;
            *(v15 - 3) = v176;
          }
        }
      }

      v224 = *a3;
      v225 = v15[4];
      v226 = v15[5];
      v227 = v15[7];
      v497 = v15[6];
      v498 = v227;
      v495 = v225;
      v496 = v226;
      v228 = a1[9];
      v491 = a1[8];
      v492 = v228;
      v229 = a1[11];
      v493 = a1[10];
      v494 = v229;
      v230 = v224(&v495, &v491);
      v231 = *a3;
      if (v230)
      {
        v232 = *v10;
        v233 = *(a2 - 11);
        v234 = *(a2 - 9);
        v497 = *(a2 - 10);
        v498 = v234;
        v495 = v232;
        v496 = v233;
        v235 = v15[4];
        v236 = v15[5];
        v237 = v15[7];
        v493 = v15[6];
        v494 = v237;
        v491 = v235;
        v492 = v236;
        if (v231(&v495, &v491))
        {
          v239 = a1[10];
          v238 = a1[11];
          v241 = a1[8];
          v240 = a1[9];
          v242 = *(a2 - 9);
          v244 = *v10;
          v243 = *(a2 - 11);
          a1[10] = *(a2 - 10);
          a1[11] = v242;
          a1[8] = v244;
          a1[9] = v243;
          *v10 = v241;
          *(a2 - 11) = v240;
          *(a2 - 10) = v239;
          goto LABEL_48;
        }

        v271 = a1[9];
        v495 = a1[8];
        v270 = v495;
        v496 = v271;
        v273 = a1[11];
        v497 = a1[10];
        v272 = v497;
        v498 = v273;
        v275 = v15[6];
        v274 = v15[7];
        v276 = v15[5];
        a1[8] = v15[4];
        a1[9] = v276;
        a1[10] = v275;
        a1[11] = v274;
        v15[6] = v272;
        v15[7] = v273;
        v15[4] = v270;
        v15[5] = v271;
        v277 = *a3;
        v278 = *v10;
        v279 = *(a2 - 11);
        v280 = *(a2 - 9);
        v497 = *(a2 - 10);
        v498 = v280;
        v495 = v278;
        v496 = v279;
        v281 = v15[4];
        v282 = v15[5];
        v283 = v15[7];
        v493 = v15[6];
        v494 = v283;
        v491 = v281;
        v492 = v282;
        if (v277(&v495, &v491))
        {
          v284 = v15[4];
          v285 = v15[5];
          v286 = v15[7];
          v497 = v15[6];
          v498 = v286;
          v495 = v284;
          v496 = v285;
          v287 = *v10;
          v288 = *(a2 - 11);
          v289 = *(a2 - 9);
          v15[6] = *(a2 - 10);
          v15[7] = v289;
          v15[4] = v287;
          v15[5] = v288;
          *v10 = v495;
          *(a2 - 11) = v496;
          *(a2 - 10) = v497;
          v238 = v498;
LABEL_48:
          *(a2 - 9) = v238;
        }
      }

      else
      {
        v245 = *v10;
        v246 = *(a2 - 11);
        v247 = *(a2 - 9);
        v497 = *(a2 - 10);
        v498 = v247;
        v495 = v245;
        v496 = v246;
        v248 = v15[4];
        v249 = v15[5];
        v250 = v15[7];
        v493 = v15[6];
        v494 = v250;
        v491 = v248;
        v492 = v249;
        if (v231(&v495, &v491))
        {
          v251 = v15[4];
          v252 = v15[5];
          v253 = v15[7];
          v497 = v15[6];
          v498 = v253;
          v495 = v251;
          v496 = v252;
          v254 = *v10;
          v255 = *(a2 - 11);
          v256 = *(a2 - 9);
          v15[6] = *(a2 - 10);
          v15[7] = v256;
          v15[4] = v254;
          v15[5] = v255;
          *v10 = v495;
          *(a2 - 11) = v496;
          *(a2 - 10) = v497;
          *(a2 - 9) = v498;
          v257 = *a3;
          v258 = v15[4];
          v259 = v15[5];
          v260 = v15[7];
          v497 = v15[6];
          v498 = v260;
          v495 = v258;
          v496 = v259;
          v261 = a1[9];
          v491 = a1[8];
          v492 = v261;
          v262 = a1[11];
          v493 = a1[10];
          v494 = v262;
          if (v257(&v495, &v491))
          {
            v264 = a1[9];
            v495 = a1[8];
            v263 = v495;
            v496 = v264;
            v266 = a1[11];
            v497 = a1[10];
            v265 = v497;
            v498 = v266;
            v268 = v15[6];
            v267 = v15[7];
            v269 = v15[5];
            a1[8] = v15[4];
            a1[9] = v269;
            a1[10] = v268;
            a1[11] = v267;
            v15[6] = v265;
            v15[7] = v266;
            v15[4] = v263;
            v15[5] = v264;
          }
        }
      }

      v290 = *a3;
      v291 = *v15;
      v292 = v15[1];
      v293 = v15[3];
      v497 = v15[2];
      v498 = v293;
      v495 = v291;
      v496 = v292;
      v294 = *v135;
      v295 = *(v15 - 3);
      v296 = *(v15 - 1);
      v493 = *(v15 - 2);
      v494 = v296;
      v491 = v294;
      v492 = v295;
      v297 = v290(&v495, &v491);
      v298 = *a3;
      if (v297)
      {
        v299 = v15[4];
        v300 = v15[5];
        v301 = v15[7];
        v497 = v15[6];
        v498 = v301;
        v495 = v299;
        v496 = v300;
        v302 = *v15;
        v303 = v15[1];
        v304 = v15[3];
        v493 = v15[2];
        v494 = v304;
        v491 = v302;
        v492 = v303;
        if (v298(&v495, &v491))
        {
          v305 = *v135;
          v306 = *(v15 - 3);
          v307 = *(v15 - 1);
          v497 = *(v15 - 2);
          v498 = v307;
          v495 = v305;
          v496 = v306;
          v308 = v15[5];
          *v135 = v15[4];
          *(v15 - 3) = v308;
          v309 = v15[7];
          *(v15 - 2) = v15[6];
          *(v15 - 1) = v309;
          goto LABEL_57;
        }

        v339 = *v135;
        v340 = *(v15 - 3);
        v341 = *(v15 - 1);
        v497 = *(v15 - 2);
        v498 = v341;
        v495 = v339;
        v496 = v340;
        v342 = v15[1];
        *v135 = *v15;
        *(v15 - 3) = v342;
        v343 = v15[3];
        *(v15 - 2) = v15[2];
        *(v15 - 1) = v343;
        v344 = v498;
        v345 = v495;
        v346 = v496;
        v15[2] = v497;
        v15[3] = v344;
        *v15 = v345;
        v15[1] = v346;
        v347 = *a3;
        v348 = v15[4];
        v349 = v15[5];
        v350 = v15[7];
        v497 = v15[6];
        v498 = v350;
        v495 = v348;
        v496 = v349;
        v351 = *v15;
        v352 = v15[1];
        v353 = v15[3];
        v493 = v15[2];
        v494 = v353;
        v491 = v351;
        v492 = v352;
        if (v347(&v495, &v491))
        {
          v354 = *v15;
          v355 = v15[1];
          v356 = v15[3];
          v497 = v15[2];
          v498 = v356;
          v495 = v354;
          v496 = v355;
          v357 = v15[5];
          *v15 = v15[4];
          v15[1] = v357;
          v358 = v15[7];
          v15[2] = v15[6];
          v15[3] = v358;
LABEL_57:
          v359 = v498;
          v360 = v495;
          v361 = v496;
          v15[6] = v497;
          v15[7] = v359;
          v15[4] = v360;
          v15[5] = v361;
        }
      }

      else
      {
        v310 = v15[4];
        v311 = v15[5];
        v312 = v15[7];
        v497 = v15[6];
        v498 = v312;
        v495 = v310;
        v496 = v311;
        v313 = *v15;
        v314 = v15[1];
        v315 = v15[3];
        v493 = v15[2];
        v494 = v315;
        v491 = v313;
        v492 = v314;
        if (v298(&v495, &v491))
        {
          v316 = *v15;
          v317 = v15[1];
          v318 = v15[3];
          v497 = v15[2];
          v498 = v318;
          v495 = v316;
          v496 = v317;
          v319 = v15[5];
          *v15 = v15[4];
          v15[1] = v319;
          v320 = v15[7];
          v15[2] = v15[6];
          v15[3] = v320;
          v321 = v498;
          v322 = v495;
          v323 = v496;
          v15[6] = v497;
          v15[7] = v321;
          v15[4] = v322;
          v15[5] = v323;
          v324 = *a3;
          v325 = *v15;
          v326 = v15[1];
          v327 = v15[3];
          v497 = v15[2];
          v498 = v327;
          v495 = v325;
          v496 = v326;
          v328 = *v135;
          v329 = *(v15 - 3);
          v330 = *(v15 - 1);
          v493 = *(v15 - 2);
          v494 = v330;
          v491 = v328;
          v492 = v329;
          if (v324(&v495, &v491))
          {
            v331 = *v135;
            v332 = *(v15 - 3);
            v333 = *(v15 - 1);
            v497 = *(v15 - 2);
            v498 = v333;
            v495 = v331;
            v496 = v332;
            v334 = v15[1];
            *v135 = *v15;
            *(v15 - 3) = v334;
            v335 = v15[3];
            *(v15 - 2) = v15[2];
            *(v15 - 1) = v335;
            v336 = v498;
            v337 = v495;
            v338 = v496;
            v15[2] = v497;
            v15[3] = v336;
            *v15 = v337;
            v15[1] = v338;
          }
        }
      }

      v362 = *a1;
      v363 = a1[1];
      v364 = a1[3];
      v497 = a1[2];
      v498 = v364;
      v495 = v362;
      v496 = v363;
      v365 = *v15;
      v366 = v15[1];
      v367 = v15[3];
      a1[2] = v15[2];
      a1[3] = v367;
      *a1 = v365;
      a1[1] = v366;
      v368 = v495;
      v369 = v496;
      v370 = v498;
      v15[2] = v497;
      v15[3] = v370;
      *v15 = v368;
      v15[1] = v369;
      goto LABEL_59;
    }

    v37 = *v11;
    v38 = v11[1];
    v39 = v11[3];
    v497 = v11[2];
    v498 = v39;
    v495 = v37;
    v496 = v38;
    v40 = *v15;
    v41 = v15[1];
    v42 = v15[3];
    v493 = v15[2];
    v494 = v42;
    v491 = v40;
    v492 = v41;
    v43 = v16(&v495, &v491);
    v44 = *a3;
    if (v43)
    {
      v45 = *v8;
      v46 = *(a2 - 3);
      v47 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v47;
      v495 = v45;
      v496 = v46;
      v48 = *v11;
      v49 = v11[1];
      v50 = v11[3];
      v493 = v11[2];
      v494 = v50;
      v491 = v48;
      v492 = v49;
      if (v44(&v495, &v491))
      {
        v51 = *v15;
        v52 = v15[1];
        v53 = v15[3];
        v497 = v15[2];
        v498 = v53;
        v495 = v51;
        v496 = v52;
        v54 = *v8;
        v55 = *(a2 - 3);
        v56 = *(a2 - 1);
        v15[2] = *(a2 - 2);
        v15[3] = v56;
        *v15 = v54;
        v15[1] = v55;
LABEL_36:
        *v8 = v495;
        *(a2 - 3) = v496;
        *(a2 - 2) = v497;
        *(a2 - 1) = v498;
        goto LABEL_59;
      }

      v182 = *v15;
      v183 = v15[1];
      v184 = v15[3];
      v497 = v15[2];
      v498 = v184;
      v495 = v182;
      v496 = v183;
      v185 = *v11;
      v186 = v11[1];
      v187 = v11[3];
      v15[2] = v11[2];
      v15[3] = v187;
      *v15 = v185;
      v15[1] = v186;
      v188 = v495;
      v189 = v496;
      v190 = v498;
      v11[2] = v497;
      v11[3] = v190;
      *v11 = v188;
      v11[1] = v189;
      v191 = *a3;
      v192 = *v8;
      v193 = *(a2 - 3);
      v194 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v194;
      v495 = v192;
      v496 = v193;
      v195 = *v11;
      v196 = v11[1];
      v197 = v11[3];
      v493 = v11[2];
      v494 = v197;
      v491 = v195;
      v492 = v196;
      if (v191(&v495, &v491))
      {
        v198 = *v11;
        v199 = v11[1];
        v200 = v11[3];
        v497 = v11[2];
        v498 = v200;
        v495 = v198;
        v496 = v199;
        v201 = *v8;
        v202 = *(a2 - 3);
        v203 = *(a2 - 1);
        v11[2] = *(a2 - 2);
        v11[3] = v203;
        *v11 = v201;
        v11[1] = v202;
        goto LABEL_36;
      }
    }

    else
    {
      v85 = *v8;
      v86 = *(a2 - 3);
      v87 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v87;
      v495 = v85;
      v496 = v86;
      v88 = *v11;
      v89 = v11[1];
      v90 = v11[3];
      v493 = v11[2];
      v494 = v90;
      v491 = v88;
      v492 = v89;
      if (v44(&v495, &v491))
      {
        v91 = *v11;
        v92 = v11[1];
        v93 = v11[3];
        v497 = v11[2];
        v498 = v93;
        v495 = v91;
        v496 = v92;
        v94 = *v8;
        v95 = *(a2 - 3);
        v96 = *(a2 - 1);
        v11[2] = *(a2 - 2);
        v11[3] = v96;
        *v11 = v94;
        v11[1] = v95;
        *v8 = v495;
        *(a2 - 3) = v496;
        *(a2 - 2) = v497;
        *(a2 - 1) = v498;
        v97 = *a3;
        v98 = *v11;
        v99 = v11[1];
        v100 = v11[3];
        v497 = v11[2];
        v498 = v100;
        v495 = v98;
        v496 = v99;
        v101 = *v15;
        v102 = v15[1];
        v103 = v15[3];
        v493 = v15[2];
        v494 = v103;
        v491 = v101;
        v492 = v102;
        if (v97(&v495, &v491))
        {
          v104 = *v15;
          v105 = v15[1];
          v106 = v15[3];
          v497 = v15[2];
          v498 = v106;
          v495 = v104;
          v496 = v105;
          v107 = *v11;
          v108 = v11[1];
          v109 = v11[3];
          v15[2] = v11[2];
          v15[3] = v109;
          *v15 = v107;
          v15[1] = v108;
          v110 = v495;
          v111 = v496;
          v112 = v498;
          v11[2] = v497;
          v11[3] = v112;
          *v11 = v110;
          v11[1] = v111;
        }
      }
    }

LABEL_59:
    if ((a5 & 1) == 0)
    {
      v371 = *a3;
      v372 = *(a1 - 4);
      v373 = *(a1 - 3);
      v374 = *(a1 - 1);
      v497 = *(a1 - 2);
      v498 = v374;
      v495 = v372;
      v496 = v373;
      v375 = *a1;
      v376 = a1[1];
      v377 = a1[3];
      v493 = a1[2];
      v494 = v377;
      v491 = v375;
      v492 = v376;
      if ((v371(&v495, &v491) & 1) == 0)
      {
        v11 = sub_100130524(a1, a2, a3);
        goto LABEL_66;
      }
    }

    v378 = sub_10013075C(a1, a2, a3);
    if ((v379 & 1) == 0)
    {
      goto LABEL_64;
    }

    v380 = sub_100130974(a1, v378, a3);
    v11 = &v378[4];
    if (sub_100130974(v378 + 4, a2, a3))
    {
      a4 = -v13;
      a2 = v378;
      if (v380)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v380)
    {
LABEL_64:
      sub_10012F09C(a1, v378, a3, -v13, a5 & 1);
      v11 = &v378[4];
LABEL_66:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      sub_100130000(v11, v11 + 4, v11 + 8, a2 - 4, a3);
      return;
    }

    if (v14 == 5)
    {
      sub_100130000(v11, v11 + 4, v11 + 8, v11 + 12, a3);
      v415 = *a3;
      v416 = *(a2 - 4);
      v417 = *(a2 - 3);
      v418 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v418;
      v495 = v416;
      v496 = v417;
      v419 = v11[13];
      v491 = v11[12];
      v492 = v419;
      v420 = v11[15];
      v493 = v11[14];
      v494 = v420;
      if (v415(&v495, &v491))
      {
        v422 = v11[14];
        v421 = v11[15];
        v424 = v11[12];
        v423 = v11[13];
        v425 = *(a2 - 1);
        v427 = *v8;
        v426 = *(a2 - 3);
        v11[14] = *(a2 - 2);
        v11[15] = v425;
        v11[12] = v427;
        v11[13] = v426;
        *v8 = v424;
        *(a2 - 3) = v423;
        *(a2 - 2) = v422;
        *(a2 - 1) = v421;
        v428 = *a3;
        v429 = v11[13];
        v495 = v11[12];
        v496 = v429;
        v430 = v11[15];
        v497 = v11[14];
        v498 = v430;
        v431 = v11[9];
        v491 = v11[8];
        v492 = v431;
        v432 = v11[11];
        v493 = v11[10];
        v494 = v432;
        if (v428(&v495, &v491))
        {
          v434 = v11[10];
          v433 = v11[11];
          v436 = v11[8];
          v435 = v11[9];
          v437 = v11[13];
          v11[8] = v11[12];
          v11[9] = v437;
          v438 = v11[15];
          v11[10] = v11[14];
          v11[11] = v438;
          v11[12] = v436;
          v11[13] = v435;
          v11[14] = v434;
          v11[15] = v433;
          v439 = *a3;
          v440 = v11[9];
          v495 = v11[8];
          v496 = v440;
          v441 = v11[11];
          v497 = v11[10];
          v498 = v441;
          v442 = v11[5];
          v491 = v11[4];
          v492 = v442;
          v443 = v11[7];
          v493 = v11[6];
          v494 = v443;
          if (v439(&v495, &v491))
          {
            v445 = v11[6];
            v444 = v11[7];
            v447 = v11[4];
            v446 = v11[5];
            v448 = v11[9];
            v11[4] = v11[8];
            v11[5] = v448;
            v449 = v11[11];
            v11[6] = v11[10];
            v11[7] = v449;
            v11[8] = v447;
            v11[9] = v446;
            v11[10] = v445;
            v11[11] = v444;
LABEL_86:
            v476 = *a3;
            v477 = v11[5];
            v495 = v11[4];
            v496 = v477;
            v478 = v11[7];
            v497 = v11[6];
            v498 = v478;
            v479 = *v11;
            v480 = v11[1];
            v481 = v11[3];
            v493 = v11[2];
            v494 = v481;
            v491 = v479;
            v492 = v480;
            if (v476(&v495, &v491))
            {
              v482 = *v11;
              v483 = v11[1];
              v484 = v11[3];
              v497 = v11[2];
              v498 = v484;
              v495 = v482;
              v496 = v483;
              v485 = v11[5];
              *v11 = v11[4];
              v11[1] = v485;
              v486 = v11[7];
              v11[2] = v11[6];
              v11[3] = v486;
              v487 = v495;
              v488 = v496;
              v489 = v498;
              v11[6] = v497;
              v11[7] = v489;
              v11[4] = v487;
              v11[5] = v488;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v381 = *a3;
  v382 = v11[5];
  v495 = v11[4];
  v496 = v382;
  v383 = v11[7];
  v497 = v11[6];
  v498 = v383;
  v384 = *v11;
  v385 = v11[1];
  v386 = v11[3];
  v493 = v11[2];
  v494 = v386;
  v491 = v384;
  v492 = v385;
  v387 = v381(&v495, &v491);
  v388 = *a3;
  if (v387)
  {
    v389 = *v8;
    v390 = *(a2 - 3);
    v391 = *(a2 - 1);
    v497 = *(a2 - 2);
    v498 = v391;
    v495 = v389;
    v496 = v390;
    v392 = v11[5];
    v491 = v11[4];
    v492 = v392;
    v393 = v11[7];
    v493 = v11[6];
    v494 = v393;
    if (!v388(&v495, &v491))
    {
      v394 = *v11;
      v395 = v11[1];
      v396 = v11[3];
      v497 = v11[2];
      v498 = v396;
      v495 = v394;
      v496 = v395;
      v397 = v11[5];
      *v11 = v11[4];
      v11[1] = v397;
      v398 = v11[7];
      v11[2] = v11[6];
      v11[3] = v398;
      v399 = v495;
      v400 = v496;
      v401 = v498;
      v11[6] = v497;
      v11[7] = v401;
      v11[4] = v399;
      v11[5] = v400;
      v402 = *a3;
      v403 = *v8;
      v404 = *(a2 - 3);
      v405 = *(a2 - 1);
      v497 = *(a2 - 2);
      v498 = v405;
      v495 = v403;
      v496 = v404;
      v406 = v11[5];
      v491 = v11[4];
      v492 = v406;
      v407 = v11[7];
      v493 = v11[6];
      v494 = v407;
      if (v402(&v495, &v491))
      {
        v409 = v11[6];
        v408 = v11[7];
        v411 = v11[4];
        v410 = v11[5];
        v412 = *(a2 - 1);
        v414 = *v8;
        v413 = *(a2 - 3);
        v11[6] = *(a2 - 2);
        v11[7] = v412;
        v11[4] = v414;
        v11[5] = v413;
        *v8 = v411;
        *(a2 - 3) = v410;
        *(a2 - 2) = v409;
        *(a2 - 1) = v408;
      }

      return;
    }

LABEL_78:
    v458 = *v11;
    v459 = v11[1];
    v460 = v11[3];
    v497 = v11[2];
    v498 = v460;
    v495 = v458;
    v496 = v459;
    v461 = *v8;
    v462 = *(a2 - 3);
    v463 = *(a2 - 1);
    v11[2] = *(a2 - 2);
    v11[3] = v463;
    *v11 = v461;
    v11[1] = v462;
    *v8 = v495;
    *(a2 - 3) = v496;
    *(a2 - 2) = v497;
    *(a2 - 1) = v498;
    return;
  }

  v464 = *v8;
  v465 = *(a2 - 3);
  v466 = *(a2 - 1);
  v497 = *(a2 - 2);
  v498 = v466;
  v495 = v464;
  v496 = v465;
  v467 = v11[5];
  v491 = v11[4];
  v492 = v467;
  v468 = v11[7];
  v493 = v11[6];
  v494 = v468;
  if (v388(&v495, &v491))
  {
    v470 = v11[6];
    v469 = v11[7];
    v472 = v11[4];
    v471 = v11[5];
    v473 = *(a2 - 1);
    v475 = *v8;
    v474 = *(a2 - 3);
    v11[6] = *(a2 - 2);
    v11[7] = v473;
    v11[4] = v475;
    v11[5] = v474;
    *v8 = v472;
    *(a2 - 3) = v471;
    *(a2 - 2) = v470;
    *(a2 - 1) = v469;
    goto LABEL_86;
  }
}

__n128 sub_100130000(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unsigned int (**a5)(__n128 *, __n128 *))
{
  v10 = *a5;
  v11 = a2[1];
  v106 = *a2;
  v107 = v11;
  v12 = a2[3];
  v108 = a2[2];
  v109 = v12;
  v13 = a1[1];
  v102 = *a1;
  v103 = v13;
  v14 = a1[3];
  v104 = a1[2];
  v105 = v14;
  v15 = v10(&v106, &v102);
  v16 = *a5;
  if (v15)
  {
    v17 = a3[1];
    v106 = *a3;
    v107 = v17;
    v18 = a3[3];
    v108 = a3[2];
    v109 = v18;
    v19 = a2[1];
    v102 = *a2;
    v103 = v19;
    v20 = a2[3];
    v104 = a2[2];
    v105 = v20;
    if (v16(&v106, &v102))
    {
      v22 = a1[2];
      v21 = a1[3];
      v24 = *a1;
      v23 = a1[1];
      v25 = a3[3];
      v27 = *a3;
      v26 = a3[1];
      a1[2] = a3[2];
      a1[3] = v25;
      *a1 = v27;
      a1[1] = v26;
LABEL_9:
      *a3 = v24;
      a3[1] = v23;
      a3[2] = v22;
      a3[3] = v21;
      goto LABEL_10;
    }

    v52 = a1[2];
    v51 = a1[3];
    v54 = *a1;
    v53 = a1[1];
    v55 = a2[3];
    v57 = *a2;
    v56 = a2[1];
    a1[2] = a2[2];
    a1[3] = v55;
    *a1 = v57;
    a1[1] = v56;
    *a2 = v54;
    a2[1] = v53;
    a2[2] = v52;
    a2[3] = v51;
    v58 = *a5;
    v59 = a3[1];
    v106 = *a3;
    v107 = v59;
    v60 = a3[3];
    v108 = a3[2];
    v109 = v60;
    v61 = a2[1];
    v102 = *a2;
    v103 = v61;
    v62 = a2[3];
    v104 = a2[2];
    v105 = v62;
    if (v58(&v106, &v102))
    {
      v22 = a2[2];
      v21 = a2[3];
      v24 = *a2;
      v23 = a2[1];
      v63 = a3[3];
      v65 = *a3;
      v64 = a3[1];
      a2[2] = a3[2];
      a2[3] = v63;
      *a2 = v65;
      a2[1] = v64;
      goto LABEL_9;
    }
  }

  else
  {
    v28 = a3[1];
    v106 = *a3;
    v107 = v28;
    v29 = a3[3];
    v108 = a3[2];
    v109 = v29;
    v30 = a2[1];
    v102 = *a2;
    v103 = v30;
    v31 = a2[3];
    v104 = a2[2];
    v105 = v31;
    if (v16(&v106, &v102))
    {
      v33 = a2[2];
      v32 = a2[3];
      v35 = *a2;
      v34 = a2[1];
      v36 = a3[3];
      v38 = *a3;
      v37 = a3[1];
      a2[2] = a3[2];
      a2[3] = v36;
      *a2 = v38;
      a2[1] = v37;
      *a3 = v35;
      a3[1] = v34;
      a3[2] = v33;
      a3[3] = v32;
      v39 = *a5;
      v40 = a2[1];
      v106 = *a2;
      v107 = v40;
      v41 = a2[3];
      v108 = a2[2];
      v109 = v41;
      v42 = a1[1];
      v102 = *a1;
      v103 = v42;
      v43 = a1[3];
      v104 = a1[2];
      v105 = v43;
      if (v39(&v106, &v102))
      {
        v45 = a1[2];
        v44 = a1[3];
        v47 = *a1;
        v46 = a1[1];
        v48 = a2[3];
        v50 = *a2;
        v49 = a2[1];
        a1[2] = a2[2];
        a1[3] = v48;
        *a1 = v50;
        a1[1] = v49;
        *a2 = v47;
        a2[1] = v46;
        a2[2] = v45;
        a2[3] = v44;
      }
    }
  }

LABEL_10:
  v66 = *a5;
  v67 = a4[1];
  v106 = *a4;
  v107 = v67;
  v68 = a4[3];
  v108 = a4[2];
  v109 = v68;
  v69 = a3[1];
  v102 = *a3;
  v103 = v69;
  v70 = a3[3];
  v104 = a3[2];
  v105 = v70;
  if (v66(&v106, &v102))
  {
    v73 = a3[2];
    v72 = a3[3];
    v75 = *a3;
    v74 = a3[1];
    v76 = a4[3];
    v78 = *a4;
    v77 = a4[1];
    a3[2] = a4[2];
    a3[3] = v76;
    *a3 = v78;
    a3[1] = v77;
    *a4 = v75;
    a4[1] = v74;
    a4[2] = v73;
    a4[3] = v72;
    v79 = *a5;
    v80 = a3[1];
    v106 = *a3;
    v107 = v80;
    v81 = a3[3];
    v108 = a3[2];
    v109 = v81;
    v82 = a2[1];
    v102 = *a2;
    v103 = v82;
    v83 = a2[3];
    v104 = a2[2];
    v105 = v83;
    if (v79(&v106, &v102))
    {
      v85 = a2[2];
      v84 = a2[3];
      v87 = *a2;
      v86 = a2[1];
      v88 = a3[3];
      v90 = *a3;
      v89 = a3[1];
      a2[2] = a3[2];
      a2[3] = v88;
      *a2 = v90;
      a2[1] = v89;
      *a3 = v87;
      a3[1] = v86;
      a3[2] = v85;
      a3[3] = v84;
      v91 = *a5;
      v92 = a2[1];
      v106 = *a2;
      v107 = v92;
      v93 = a2[3];
      v108 = a2[2];
      v109 = v93;
      v94 = a1[1];
      v102 = *a1;
      v103 = v94;
      v95 = a1[3];
      v104 = a1[2];
      v105 = v95;
      if (v91(&v106, &v102))
      {
        v96 = a1[2];
        result = a1[3];
        v98 = *a1;
        v97 = a1[1];
        v99 = a2[3];
        v101 = *a2;
        v100 = a2[1];
        a1[2] = a2[2];
        a1[3] = v99;
        *a1 = v101;
        a1[1] = v100;
        *a2 = v98;
        a2[1] = v97;
        a2[2] = v96;
        a2[3] = result;
      }
    }
  }

  return result;
}

uint64_t sub_1001302E4(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v39 = v3;
    v40 = v4;
    v6 = result;
    v7 = (result + 64);
    if ((result + 64) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        v12 = *a3;
        v13 = v10[1];
        v35 = *v10;
        v36 = v13;
        v14 = v10[3];
        v37 = v10[2];
        v38 = v14;
        v15 = *v11;
        v16 = v11[1];
        v17 = v11[3];
        v33 = v11[2];
        v34 = v17;
        v31 = v15;
        v32 = v16;
        result = v12(&v35, &v31);
        if (result)
        {
          v18 = v10[1];
          v35 = *v10;
          v36 = v18;
          v19 = v10[3];
          v37 = v10[2];
          v38 = v19;
          v20 = v9;
          while (1)
          {
            v21 = (v6 + v20);
            v22 = *(v6 + v20 + 16);
            v21[4] = *(v6 + v20);
            v21[5] = v22;
            v23 = *(v6 + v20 + 48);
            v21[6] = *(v6 + v20 + 32);
            v21[7] = v23;
            if (!v20)
            {
              break;
            }

            v24 = *a3;
            v31 = v35;
            v32 = v36;
            v33 = v37;
            v34 = v38;
            v25 = *(v21 - 3);
            v30[0] = *(v21 - 4);
            v30[1] = v25;
            v26 = *(v21 - 1);
            v30[2] = *(v21 - 2);
            v30[3] = v26;
            result = v24(&v31, v30);
            v20 -= 64;
            if ((result & 1) == 0)
            {
              v27 = (v6 + v20 + 64);
              goto LABEL_10;
            }
          }

          v27 = v6;
LABEL_10:
          v28 = v36;
          *v27 = v35;
          v27[1] = v28;
          v29 = v38;
          v27[2] = v37;
          v27[3] = v29;
        }

        v7 = v10 + 4;
        v9 += 64;
      }

      while (v10 + 4 != a2);
    }
  }

  return result;
}

uint64_t sub_10013041C(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v36 = v3;
    v37 = v4;
    v6 = result;
    for (i = (result + 64); v6 + 4 != a2; i = v6 + 4)
    {
      v9 = v6;
      v6 = i;
      v10 = *a3;
      v11 = v6[1];
      v32 = *v6;
      v33 = v11;
      v12 = v6[3];
      v34 = v6[2];
      v35 = v12;
      v13 = *v9;
      v14 = v9[1];
      v15 = v9[3];
      v30 = v9[2];
      v31 = v15;
      v28 = v13;
      v29 = v14;
      result = v10(&v32, &v28);
      if (result)
      {
        v16 = v6[1];
        v32 = *v6;
        v33 = v16;
        v17 = v6[3];
        v34 = v6[2];
        v35 = v17;
        v18 = v6;
        do
        {
          v19 = v18 - 4;
          v20 = *(v18 - 3);
          *v18 = *(v18 - 4);
          v18[1] = v20;
          v21 = *(v18 - 1);
          v18[2] = *(v18 - 2);
          v18[3] = v21;
          v22 = *a3;
          v28 = v32;
          v29 = v33;
          v30 = v34;
          v31 = v35;
          v23 = *(v18 - 7);
          v27[0] = *(v18 - 8);
          v27[1] = v23;
          v24 = *(v18 - 5);
          v27[2] = *(v18 - 6);
          v27[3] = v24;
          result = v22(&v28, v27);
          v18 = v19;
        }

        while ((result & 1) != 0);
        v25 = v33;
        *v19 = v32;
        v19[1] = v25;
        v26 = v35;
        v19[2] = v34;
        v19[3] = v26;
      }
    }
  }

  return result;
}

__int128 *sub_100130524(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = a1[1];
  v59 = *a1;
  v60 = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v61 = a1[2];
  v62 = v7;
  v10 = *a3;
  v63 = v9;
  v64 = v8;
  v11 = a1[3];
  v65 = a1[2];
  v66 = v11;
  v12 = *(a2 - 3);
  v55 = *(a2 - 4);
  v56 = v12;
  v13 = *(a2 - 1);
  v57 = *(a2 - 2);
  v58 = v13;
  if (v10(&v63, &v55))
  {
    v14 = a1;
    do
    {
      v15 = v14 + 4;
      v16 = *a3;
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v17 = v14[5];
      v55 = v14[4];
      v56 = v17;
      v18 = v14[7];
      v57 = v14[6];
      v58 = v18;
      v19 = v16(&v63, &v55);
      v14 = v15;
    }

    while ((v19 & 1) == 0);
  }

  else
  {
    v20 = a1 + 4;
    do
    {
      v15 = v20;
      if (v20 >= v4)
      {
        break;
      }

      v21 = *a3;
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v22 = v15[1];
      v55 = *v15;
      v56 = v22;
      v23 = v15[3];
      v57 = v15[2];
      v58 = v23;
      v24 = v21(&v63, &v55);
      v20 = v15 + 4;
    }

    while (!v24);
  }

  if (v15 >= v4)
  {
    v25 = v4;
  }

  else
  {
    do
    {
      v25 = v4 - 4;
      v26 = *a3;
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v27 = *(v4 - 3);
      v55 = *(v4 - 4);
      v56 = v27;
      v28 = *(v4 - 1);
      v57 = *(v4 - 2);
      v58 = v28;
      v4 -= 4;
    }

    while ((v26(&v63, &v55) & 1) != 0);
  }

  while (v15 < v25)
  {
    v29 = *v15;
    v30 = v15[1];
    v31 = v15[3];
    v65 = v15[2];
    v66 = v31;
    v63 = v29;
    v64 = v30;
    v32 = *v25;
    v33 = v25[1];
    v34 = v25[3];
    v15[2] = v25[2];
    v15[3] = v34;
    *v15 = v32;
    v15[1] = v33;
    v35 = v63;
    v36 = v64;
    v37 = v66;
    v25[2] = v65;
    v25[3] = v37;
    *v25 = v35;
    v25[1] = v36;
    do
    {
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v38 = v15[5];
      v55 = v15[4];
      v56 = v38;
      v39 = v15[6];
      v40 = v15[7];
      v15 += 4;
      v41 = *a3;
      v57 = v39;
      v58 = v40;
    }

    while (!v41(&v63, &v55));
    do
    {
      v63 = v59;
      v64 = v60;
      v65 = v61;
      v66 = v62;
      v42 = *(v25 - 4);
      v43 = *(v25 - 3);
      v44 = *(v25 - 2);
      v45 = *(v25 - 1);
      v25 -= 4;
      v46 = *a3;
      v57 = v44;
      v58 = v45;
      v55 = v42;
      v56 = v43;
    }

    while ((v46(&v63, &v55) & 1) != 0);
  }

  v47 = v15 - 4;
  if (v15 - 4 != a1)
  {
    v48 = *v47;
    v49 = *(v15 - 3);
    v50 = *(v15 - 1);
    a1[2] = *(v15 - 2);
    a1[3] = v50;
    *a1 = v48;
    a1[1] = v49;
  }

  v51 = v59;
  v52 = v60;
  v53 = v62;
  *(v15 - 2) = v61;
  *(v15 - 1) = v53;
  *v47 = v51;
  *(v15 - 3) = v52;
  return v15;
}

__int128 *sub_10013075C(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v7 = a1[1];
  v50 = *a1;
  v51 = v7;
  v8 = a1[3];
  v52 = a1[2];
  v53 = v8;
  do
  {
    v9 = *a3;
    v10 = a1[v6 + 5];
    v54 = a1[v6 + 4];
    v55 = v10;
    v11 = a1[v6 + 7];
    v56 = a1[v6 + 6];
    v57 = v11;
    v46 = v50;
    v47 = v51;
    v48 = v52;
    v49 = v53;
    v6 += 4;
  }

  while ((v9(&v54, &v46) & 1) != 0);
  v12 = &a1[v6];
  v13 = &a1[v6 - 4];
  if (v6 == 4)
  {
    while (v12 < a2)
    {
      v18 = *a3;
      v14 = a2 - 4;
      v19 = *(a2 - 3);
      v54 = *(a2 - 4);
      v55 = v19;
      v20 = *(a2 - 1);
      v56 = *(a2 - 2);
      v57 = v20;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      a2 -= 4;
      if (v18(&v54, &v46))
      {
        goto LABEL_9;
      }
    }

    v14 = a2;
  }

  else
  {
    do
    {
      v14 = a2 - 4;
      v15 = *a3;
      v16 = *(a2 - 3);
      v54 = *(a2 - 4);
      v55 = v16;
      v17 = *(a2 - 1);
      v56 = *(a2 - 2);
      v57 = v17;
      v46 = v50;
      v47 = v51;
      v48 = v52;
      v49 = v53;
      a2 -= 4;
    }

    while (!v15(&v54, &v46));
  }

LABEL_9:
  if (v12 < v14)
  {
    v21 = v12;
    v22 = v14;
    do
    {
      v24 = v21[1];
      v54 = *v21;
      v23 = v54;
      v55 = v24;
      v26 = v21[3];
      v56 = v21[2];
      v25 = v56;
      v57 = v26;
      v28 = v22[2];
      v27 = v22[3];
      v29 = v22[1];
      *v21 = *v22;
      v21[1] = v29;
      v21[2] = v28;
      v21[3] = v27;
      v22[2] = v25;
      v22[3] = v26;
      *v22 = v23;
      v22[1] = v24;
      do
      {
        v30 = v21[5];
        v54 = v21[4];
        v55 = v30;
        v31 = v21[6];
        v32 = v21[7];
        v21 += 4;
        v33 = *a3;
        v56 = v31;
        v57 = v32;
        v46 = v50;
        v47 = v51;
        v48 = v52;
        v49 = v53;
      }

      while ((v33(&v54, &v46) & 1) != 0);
      do
      {
        v34 = *(v22 - 4);
        v35 = *(v22 - 3);
        v36 = *(v22 - 2);
        v37 = *(v22 - 1);
        v22 -= 4;
        v38 = *a3;
        v56 = v36;
        v57 = v37;
        v54 = v34;
        v55 = v35;
        v46 = v50;
        v47 = v51;
        v48 = v52;
        v49 = v53;
      }

      while (!v38(&v54, &v46));
    }

    while (v21 < v22);
    v13 = v21 - 4;
  }

  if (v13 != a1)
  {
    v39 = *v13;
    v40 = v13[1];
    v41 = v13[3];
    a1[2] = v13[2];
    a1[3] = v41;
    *a1 = v39;
    a1[1] = v40;
  }

  v42 = v50;
  v43 = v51;
  v44 = v53;
  v13[2] = v52;
  v13[3] = v44;
  *v13 = v42;
  v13[1] = v43;
  return v13;
}

BOOL sub_100130974(__n128 *a1, __n128 *a2, unsigned int (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 6;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v56 = a2 - 4;
        v57 = *a3;
        v58 = a1[5];
        v189 = a1[4];
        v190 = v58;
        v59 = a1[7];
        v191 = a1[6];
        v192 = v59;
        v60 = a1[1];
        v185 = *a1;
        v186 = v60;
        v61 = a1[3];
        v187 = a1[2];
        v188 = v61;
        v62 = v57(&v189, &v185);
        v63 = *a3;
        if (v62)
        {
          v64 = v56[1];
          v189 = *v56;
          v190 = v64;
          v65 = v56[3];
          v191 = v56[2];
          v192 = v65;
          v66 = a1[5];
          v185 = a1[4];
          v186 = v66;
          v67 = a1[7];
          v187 = a1[6];
          v188 = v67;
          if (v63(&v189, &v185))
          {
            v69 = a1[2];
            v68 = a1[3];
            v71 = *a1;
            v70 = a1[1];
            v72 = v56[3];
            v74 = *v56;
            v73 = v56[1];
            a1[2] = v56[2];
            a1[3] = v72;
            *a1 = v74;
            a1[1] = v73;
          }

          else
          {
            v137 = a1[2];
            v136 = a1[3];
            v139 = *a1;
            v138 = a1[1];
            v140 = a1[5];
            *a1 = a1[4];
            a1[1] = v140;
            v141 = a1[7];
            a1[2] = a1[6];
            a1[3] = v141;
            a1[4] = v139;
            a1[5] = v138;
            a1[6] = v137;
            a1[7] = v136;
            v142 = *a3;
            v143 = v56[1];
            v189 = *v56;
            v190 = v143;
            v144 = v56[3];
            v191 = v56[2];
            v192 = v144;
            v145 = a1[5];
            v185 = a1[4];
            v186 = v145;
            v146 = a1[7];
            v187 = a1[6];
            v188 = v146;
            if (!v142(&v189, &v185))
            {
              return 1;
            }

            v69 = a1[6];
            v68 = a1[7];
            v71 = a1[4];
            v70 = a1[5];
            v147 = v56[3];
            v149 = *v56;
            v148 = v56[1];
            a1[6] = v56[2];
            a1[7] = v147;
            a1[4] = v149;
            a1[5] = v148;
          }

          *v56 = v71;
          v56[1] = v70;
          result = 1;
          v56[2] = v69;
          v56[3] = v68;
          return result;
        }

        v93 = v56[1];
        v189 = *v56;
        v190 = v93;
        v94 = v56[3];
        v191 = v56[2];
        v192 = v94;
        v95 = a1[5];
        v185 = a1[4];
        v186 = v95;
        v96 = a1[7];
        v187 = a1[6];
        v188 = v96;
        if (!v63(&v189, &v185))
        {
          return 1;
        }

        v98 = a1[6];
        v97 = a1[7];
        v100 = a1[4];
        v99 = a1[5];
        v101 = v56[3];
        v103 = *v56;
        v102 = v56[1];
        a1[6] = v56[2];
        a1[7] = v101;
        a1[4] = v103;
        a1[5] = v102;
        *v56 = v100;
        v56[1] = v99;
        v56[2] = v98;
        v56[3] = v97;
        break;
      case 4:
        sub_100130000(a1, a1 + 4, a1 + 8, a2 - 4, a3);
        return 1;
      case 5:
        sub_100130000(a1, a1 + 4, a1 + 8, a1 + 12, a3);
        v21 = *a3;
        v22 = a2[-3];
        v189 = a2[-4];
        v190 = v22;
        v23 = a2[-1];
        v191 = a2[-2];
        v192 = v23;
        v24 = a1[13];
        v185 = a1[12];
        v186 = v24;
        v25 = a1[15];
        v187 = a1[14];
        v188 = v25;
        if (!v21(&v189, &v185))
        {
          return 1;
        }

        v26 = a2 - 4;
        v28 = a1[14];
        v27 = a1[15];
        v30 = a1[12];
        v29 = a1[13];
        v31 = a2[-1];
        v33 = a2[-4];
        v32 = a2[-3];
        a1[14] = a2[-2];
        a1[15] = v31;
        a1[12] = v33;
        a1[13] = v32;
        *v26 = v30;
        v26[1] = v29;
        v26[2] = v28;
        v26[3] = v27;
        v34 = *a3;
        v35 = a1[13];
        v189 = a1[12];
        v190 = v35;
        v36 = a1[15];
        v191 = a1[14];
        v192 = v36;
        v37 = a1[9];
        v185 = a1[8];
        v186 = v37;
        v38 = a1[11];
        v187 = a1[10];
        v188 = v38;
        if (!v34(&v189, &v185))
        {
          return 1;
        }

        v40 = a1[10];
        v39 = a1[11];
        v42 = a1[8];
        v41 = a1[9];
        v43 = a1[13];
        a1[8] = a1[12];
        a1[9] = v43;
        v44 = a1[15];
        a1[10] = a1[14];
        a1[11] = v44;
        a1[12] = v42;
        a1[13] = v41;
        a1[14] = v40;
        a1[15] = v39;
        v45 = *a3;
        v46 = a1[9];
        v189 = a1[8];
        v190 = v46;
        v47 = a1[11];
        v191 = a1[10];
        v192 = v47;
        v48 = a1[5];
        v185 = a1[4];
        v186 = v48;
        v49 = a1[7];
        v187 = a1[6];
        v188 = v49;
        if (!v45(&v189, &v185))
        {
          return 1;
        }

        v51 = a1[6];
        v50 = a1[7];
        v53 = a1[4];
        v52 = a1[5];
        v54 = a1[9];
        a1[4] = a1[8];
        a1[5] = v54;
        v55 = a1[11];
        a1[6] = a1[10];
        a1[7] = v55;
        a1[8] = v53;
        a1[9] = v52;
        a1[10] = v51;
        a1[11] = v50;
        break;
      default:
        goto LABEL_16;
    }

    v104 = *a3;
    v105 = a1[5];
    v189 = a1[4];
    v190 = v105;
    v106 = a1[7];
    v191 = a1[6];
    v192 = v106;
    v107 = a1[1];
    v185 = *a1;
    v186 = v107;
    v108 = a1[3];
    v187 = a1[2];
    v188 = v108;
    if (v104(&v189, &v185))
    {
      v110 = a1[2];
      v109 = a1[3];
      v112 = *a1;
      v111 = a1[1];
      v113 = a1[5];
      *a1 = a1[4];
      a1[1] = v113;
      v114 = a1[7];
      a1[2] = a1[6];
      a1[3] = v114;
      a1[4] = v112;
      a1[5] = v111;
      a1[6] = v110;
      a1[7] = v109;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *a3;
    v8 = a2[-3];
    v189 = a2[-4];
    v190 = v8;
    v9 = a2[-1];
    v191 = a2[-2];
    v192 = v9;
    v10 = a1[1];
    v185 = *a1;
    v186 = v10;
    v11 = a1[3];
    v187 = a1[2];
    v188 = v11;
    if (v7(&v189, &v185))
    {
      v12 = a2 - 4;
      v14 = a1[2];
      v13 = a1[3];
      v16 = *a1;
      v15 = a1[1];
      v17 = a2[-1];
      v19 = a2[-4];
      v18 = a2[-3];
      a1[2] = a2[-2];
      a1[3] = v17;
      *a1 = v19;
      a1[1] = v18;
      *v12 = v16;
      v12[1] = v15;
      result = 1;
      v12[2] = v14;
      v12[3] = v13;
      return result;
    }

    return 1;
  }

LABEL_16:
  v75 = a1 + 8;
  v76 = *a3;
  v77 = a1[5];
  v189 = a1[4];
  v190 = v77;
  v78 = a1[7];
  v191 = a1[6];
  v192 = v78;
  v79 = a1[1];
  v185 = *a1;
  v186 = v79;
  v80 = a1[3];
  v187 = a1[2];
  v188 = v80;
  v81 = v76(&v189, &v185);
  v82 = *a3;
  if (v81)
  {
    v83 = a1[9];
    v189 = *v75;
    v190 = v83;
    v84 = a1[11];
    v191 = a1[10];
    v192 = v84;
    v85 = a1[5];
    v185 = a1[4];
    v186 = v85;
    v86 = a1[7];
    v187 = a1[6];
    v188 = v86;
    if (v82(&v189, &v185))
    {
      v88 = a1[2];
      v87 = a1[3];
      v90 = *a1;
      v89 = a1[1];
      v91 = a1[9];
      *a1 = *v75;
      a1[1] = v91;
      v92 = a1[11];
      a1[2] = a1[10];
      a1[3] = v92;
    }

    else
    {
      v151 = a1[2];
      v150 = a1[3];
      v153 = *a1;
      v152 = a1[1];
      v154 = a1[5];
      *a1 = a1[4];
      a1[1] = v154;
      v155 = a1[7];
      a1[2] = a1[6];
      a1[3] = v155;
      a1[4] = v153;
      a1[5] = v152;
      a1[6] = v151;
      a1[7] = v150;
      v156 = *a3;
      v157 = a1[9];
      v189 = *v75;
      v190 = v157;
      v158 = a1[11];
      v191 = a1[10];
      v192 = v158;
      v159 = a1[5];
      v185 = a1[4];
      v186 = v159;
      v160 = a1[7];
      v187 = a1[6];
      v188 = v160;
      if (!v156(&v189, &v185))
      {
        goto LABEL_33;
      }

      v88 = a1[6];
      v87 = a1[7];
      v90 = a1[4];
      v89 = a1[5];
      v161 = a1[9];
      a1[4] = *v75;
      a1[5] = v161;
      v162 = a1[11];
      a1[6] = a1[10];
      a1[7] = v162;
    }

    *v75 = v90;
    a1[9] = v89;
    a1[10] = v88;
    a1[11] = v87;
  }

  else
  {
    v115 = a1[9];
    v189 = *v75;
    v190 = v115;
    v116 = a1[11];
    v191 = a1[10];
    v192 = v116;
    v117 = a1[5];
    v185 = a1[4];
    v186 = v117;
    v118 = a1[7];
    v187 = a1[6];
    v188 = v118;
    if (v82(&v189, &v185))
    {
      v120 = a1[6];
      v119 = a1[7];
      v122 = a1[4];
      v121 = a1[5];
      v123 = a1[9];
      a1[4] = *v75;
      a1[5] = v123;
      v124 = a1[11];
      a1[6] = a1[10];
      a1[7] = v124;
      *v75 = v122;
      a1[9] = v121;
      a1[10] = v120;
      a1[11] = v119;
      v125 = *a3;
      v126 = a1[5];
      v189 = a1[4];
      v190 = v126;
      v127 = a1[7];
      v191 = a1[6];
      v192 = v127;
      v128 = a1[1];
      v185 = *a1;
      v186 = v128;
      v129 = a1[3];
      v187 = a1[2];
      v188 = v129;
      if (v125(&v189, &v185))
      {
        v131 = a1[2];
        v130 = a1[3];
        v133 = *a1;
        v132 = a1[1];
        v134 = a1[5];
        *a1 = a1[4];
        a1[1] = v134;
        v135 = a1[7];
        a1[2] = a1[6];
        a1[3] = v135;
        a1[4] = v133;
        a1[5] = v132;
        a1[6] = v131;
        a1[7] = v130;
      }
    }
  }

LABEL_33:
  v163 = a1 + 12;
  if (&a1[12] == a2)
  {
    return 1;
  }

  v164 = 0;
  v165 = 0;
  while (1)
  {
    v166 = *a3;
    v167 = v163[1];
    v189 = *v163;
    v190 = v167;
    v168 = v163[3];
    v191 = v163[2];
    v192 = v168;
    v169 = *v75;
    v170 = v75[1];
    v171 = v75[3];
    v187 = v75[2];
    v188 = v171;
    v185 = v169;
    v186 = v170;
    if (v166(&v189, &v185))
    {
      v172 = v163[1];
      v189 = *v163;
      v190 = v172;
      v173 = v163[3];
      v191 = v163[2];
      v192 = v173;
      v174 = v164;
      while (1)
      {
        v175 = (a1->n128_u64 + v174);
        v176 = *(&a1[9] + v174);
        v175[12] = *(&a1[8] + v174);
        v175[13] = v176;
        v177 = *(&a1[11] + v174);
        v175[14] = *(&a1[10] + v174);
        v175[15] = v177;
        if (v174 == -128)
        {
          break;
        }

        v178 = *a3;
        v185 = v189;
        v186 = v190;
        v187 = v191;
        v188 = v192;
        v179 = v175[5];
        v184[0] = v175[4];
        v184[1] = v179;
        v180 = v175[7];
        v184[2] = v175[6];
        v184[3] = v180;
        v174 -= 64;
        if (((v178)(&v185, v184) & 1) == 0)
        {
          v181 = (a1 + v174 + 192);
          goto LABEL_41;
        }
      }

      v181 = a1;
LABEL_41:
      v182 = v190;
      *v181 = v189;
      v181[1] = v182;
      v183 = v192;
      v181[2] = v191;
      v181[3] = v183;
      if (++v165 == 8)
      {
        return &v163[4] == a2;
      }
    }

    v75 = v163;
    v164 += 64;
    v163 += 4;
    if (v163 == a2)
    {
      return 1;
    }
  }
}