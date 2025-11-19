void sub_100002E90(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  v2 = qword_1000B5198;
  qword_1000B5198 = v1;

  v3 = qword_1000B5198;

  [v3 setMaxConcurrentOperationCount:1];
}

void sub_1000058D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_100005924(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained contentParser];
  [v2 setDelegate:WeakRetained];

  v3 = [WeakRetained tip];
  v20 = [v3 identifier];

  v4 = [WeakRetained tip];
  v5 = [v4 fullContentAssets];
  v19 = [v5 baseURL];

  v6 = [WeakRetained tip];
  v7 = [v6 language];

  v8 = [WeakRetained tip];
  v9 = [v8 assetFileInfoManager];

  LOBYTE(v2) = [WeakRetained isSharedVariant] ^ 1;
  v10 = [WeakRetained contentParser];
  v11 = [WeakRetained tip];
  v12 = [v11 bodyContent];
  v13 = *(a1 + 32);
  v25 = 0;
  LOBYTE(v18) = v2;
  v14 = v9;
  v15 = [v10 attributedStringForConstellationContent:v12 defaultAttributes:v13 identifier:v20 language:v7 assetsBaseURL:v19 assetFileInfoManager:v9 supportsLinks:v18 error:&v25];
  v16 = v25;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005B54;
  block[3] = &unk_1000A2E58;
  block[4] = WeakRetained;
  objc_copyWeak(&v24, (a1 + 48));
  v23 = v15;
  v17 = v15;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v24);
}

id sub_100005B54(uint64_t a1)
{
  v2 = [*(a1 + 32) contentParser];
  [*(a1 + 32) setBodyContentProcessingCount:{objc_msgSend(v2, "numOfActiveRemoteURLSessions")}];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [*(a1 + 32) uniqueIdentifierForCurrentTip];
  v5 = [WeakRetained isEqualToString:v4];

  if (v5)
  {
    v6 = [*(a1 + 32) appController];
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) tip];
    v9 = [v8 identifier];
    [v6 updateAttributedString:v7 forIdentifier:v9];

    [*(a1 + 32) updateAttributedStringWithCache];
  }

  [*(a1 + 32) setContentTextOperation:0];
  [*(a1 + 32) setContentTextOperationID:0];
  v10 = *(a1 + 32);

  return [v10 updateImageReadyStatus];
}

void sub_100006868(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) delegate];
      [v6 performSelector:"tipCollectionViewCellSharedTipTapped:" withObject:*(a1 + 32)];
    }
  }
}

void sub_10000692C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) link];
  [v1 handleTipsURL:v2];
}

void sub_100007FC8(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100008080;
  v4[3] = &unk_1000A2EF8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 installCACommitCompletionBlock:v4];
}

void sub_100008080(uint64_t a1)
{
  v2 = [*(a1 + 32) appCoordinator];
  v3 = [v2 tipsByCollectionViewController];
  v9 = [v3 collectionView];

  if (*(a1 + 56) == 1)
  {
    v4 = [[RPTDirectionalSwipeTestParameters alloc] initWithTestName:*(a1 + 40) scrollView:v9 completionHandler:0];
    RPTGetBoundsForView();
    x = v11.origin.x;
    y = v11.origin.y;
    width = v11.size.width;
    Height = CGRectGetHeight(v11);
    if (Height > 0.0)
    {
      [v4 setScrollingBounds:{x + 30.0, y + 0.0, width + -60.0, round(Height / 3.0)}];
    }

    [v4 setDirection:2];
    [v4 setSwipeSpeedFactor:&off_1000A5118];
    [v4 setShouldFlick:1];
    [RPTTestRunner runTestWithParameters:v4];
  }

  else
  {
    [v9 _performScrollTest:*(a1 + 40) iterations:*(a1 + 48) delta:*(a1 + 52) scrollAxis:1];
  }
}

void sub_100009FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A00C(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained networkStateDidChange:a2];
}

void sub_10000C4F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10000C514(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) searchResultViewModel];
  v3 = [v2 searchQuery];
  v4 = [v3 searchTerm];

  if (![v4 length])
  {
    v5 = [WeakRetained searchResultViewModel];
    [v5 reset];
  }
}

void sub_10000DB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [NSIndexPath indexPathForRow:a3 inSection:0];
  v4 = [*(a1 + 32) collectionView];
  v5 = [v4 cellForItemAtIndexPath:v6];

  if (v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

void sub_10000DBA4(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 reconfigureItemsAtIndexPaths:*(a1 + 40)];
}

void sub_10000DDBC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_10000DDE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained collectionViewLayout];
  [v2 invalidateLayout];

  [WeakRetained reconfigureAllCollectionViewItems];
  [WeakRetained ensureCurrentTipPositionWithViewSize:{*(a1 + 40), *(a1 + 48)}];
}

void sub_10000DE50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setScrollingTipContent:0];
  if ((+[TPSAppearance isPhoneUI]& 1) == 0)
  {
    v2 = [WeakRetained appController];
    v3 = [v2 appInBackground];

    if ((v3 & 1) == 0)
    {
      v4 = [*(a1 + 32) delegate];
      [WeakRetained updateTipForCell:0 startVideo:{objc_msgSend(v4, "tipsViewControllerShouldStartVideo:", *(a1 + 32))}];
    }
  }

  [WeakRetained _adjustScrollViewPagingDecelerationForSize:{*(a1 + 48), *(a1 + 56)}];
  [WeakRetained resetSearchController];
  v5 = [WeakRetained view];
  [v5 setNeedsLayout];
}

void sub_10000E0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000E110(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 identifier];
  v8 = [*(a1 + 32) currentTip];
  v9 = [v8 identifier];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

id sub_10000FA28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 cancelAssetsPrefetch];
  v6 = [*(a1 + 32) appController];
  [v6 resetAttributedStringCache];

  v7 = [*(a1 + 32) traitCollection];
  v8 = [v7 hasDifferentColorAppearanceComparedToTraitCollection:v5];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v9 traitCollection];
    [v9 updateContentBackgroundWithTraitCollection:v10];

    v11 = [*(a1 + 32) traitCollection];
    v12 = [v11 userInterfaceStyle];
    v13 = [*(a1 + 32) cellAppearance];
    [v13 setUserInterfaceStyle:v12];

    [*(a1 + 32) reconfigureAllCollectionViewItems];
  }

  v14 = *(a1 + 32);

  return [v14 updateTipForCell:0 startVideo:1];
}

void sub_100010360(uint64_t a1)
{
  v1 = [*(a1 + 32) playerController];
  [v1 autoplay:0];
}

void sub_1000124C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012500(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) identifier];
  v4 = [*(a1 + 32) fullContentAssets];
  v5 = [v4 baseURL];

  v6 = [*(a1 + 32) language];
  v7 = [*(a1 + 32) assetFileInfoManager];
  v8 = [WeakRetained isSharedVariant] ^ 1;
  v9 = [WeakRetained footnoteContentParser];
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v22 = 0;
  LOBYTE(v16) = v8;
  v12 = [v9 attributedStringForConstellationContent:v10 defaultAttributes:v11 identifier:v3 language:v6 assetsBaseURL:v5 assetFileInfoManager:v7 supportsLinks:v16 error:&v22];
  v13 = v22;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000126A8;
  block[3] = &unk_1000A3088;
  v18 = *(a1 + 56);
  v19 = WeakRetained;
  v20 = v12;
  v21 = v3;
  v14 = v3;
  v15 = v12;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000126A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) uniqueIdentifierForCurrentTip];
  LODWORD(v2) = [v2 hasPrefix:v3];

  if (v2)
  {
    v4 = [*(a1 + 40) appController];
    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) tip];
    v7 = [v6 identifier];
    [v4 updateFootnoteAttributedString:v5 forIdentifier:v7];

    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) footnoteTextView];
    [v9 setAttributedText:v8];

    v10 = *(a1 + 56);
    v11 = [*(a1 + 40) footnoteTextView];
    [v11 setTipID:v10];

    v12 = [*(a1 + 40) footnoteTextView];
    [v12 setHidden:0];
  }

  [*(a1 + 40) setFootnoteContentTextOperation:0];
  v13 = *(a1 + 40);

  return [v13 setFootnoteContentTextOperationID:0];
}

void sub_100013F98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v5 - 104));
  _Unwind_Resume(a1);
}

void sub_100013FF0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([TPSCommonDefines isChecklistCollectionWithIdentifier:v5])
  {
    v4 = +[TPSAnalyticsChecklistSessionController sharedInstance];
    [v4 startSession];
  }

  else
  {
    [WeakRetained logAnalyticsEventForChecklistSession];
  }

  if (([*(a1 + 32) pendingColumnSwitching] & 1) == 0)
  {
    [WeakRetained displayCollectionID:v5 tipID:0 preferredColumn:1];
  }
}

void sub_1000140A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = +[TPSCommonDefines checklistCollectionIdentifier];
  v5 = [v3 identifier];

  [WeakRetained displayCollectionID:v4 tipID:v5 preferredColumn:2];
  v6 = +[TPSAnalyticsChecklistSessionController sharedInstance];
  [v6 startSession];
}

void sub_100014160(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logAnalyticsEventForChecklistSession];
  v4 = [v3 identifier];
  v5 = [v3 version];
  v6 = [v3 platformIndependent];

  [WeakRetained displayUserGuideWithIdentifier:v4 topicId:0 version:v5 platformIndependent:v6 prefersLandingPage:0 referrer:0];
}

void sub_100014214(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained displaySupportFlowWithIdentifier:v3];
}

void sub_100014364(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10001438C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained tipListViewController];
  v5 = [v4 viewModel];
  v6 = [v5 collection];
  v7 = [v6 identifier];

  v8 = [WeakRetained tipsByCollectionViewController];
  v9 = [v3 identifier];

  [v8 updateWithCollectionID:v7 tipID:v9];
  if (([*(a1 + 32) pendingColumnSwitching] & 1) == 0)
  {
    [*(a1 + 32) showTipsView];
  }
}

void sub_100014F18(uint64_t a1)
{
  v2 = [*(a1 + 32) supportID];

  v3 = *(a1 + 40);
  if (v2)
  {
    v8 = [*(a1 + 32) identifier];
    [v3 displaySupportFlowWithIdentifier:v8];
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 40);

    [v7 displayCollectionID:v4 tipID:v5 preferredColumn:v6];
  }
}

void sub_100015270(uint64_t a1)
{
  v2 = [*(a1 + 32) splitViewController];
  [v2 showColumn:*(a1 + 40)];
}

void sub_100015A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100015A7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showCollectionsView];
}

void sub_100016A5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) length] || *(a1 + 40) != 1)
  {
    [v3 setSelectedHelpTopicID:*(a1 + 32)];
  }

  else
  {
    [v3 setPrefersLandingViewOnLoad:1];
  }
}

void sub_100016AD4(uint64_t a1)
{
  v2 = [*(a1 + 32) text];
  v4 = [HLPHelpViewController helpViewControllerWithTitle:v2 identifier:*(a1 + 40) version:*(a1 + 48)];

  [v4 setDelegate:*(a1 + 56)];
  [v4 setAccessType:*(a1 + 72)];
  (*(*(a1 + 64) + 16))();
  [v4 setShowTopicViewOnLoad:1];
  [v4 setPlatformIndependent:*(a1 + 80)];
  [*(a1 + 56) setUserGuideDisplayed:1];
  v3 = [[UINavigationController alloc] initWithRootViewController:v4];
  [v3 setModalPresentationStyle:1];
  [*(a1 + 56) presentViewController:v3 animated:1 completion:0];
}

uint64_t sub_100016DF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  if (v4 && (v5 = v4, [v3 title], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v5, v7))
  {
    v8 = objc_alloc_init(NSURLComponents);
    [v8 setScheme:@"tips"];
    [v8 setPath:@"open"];
    v9 = [v3 identifier];
    v10 = +[TPSCommonDefines sharedInstance];
    v11 = [v3 collectionIdentifiers];
    v12 = [v10 collectionIdentifierToUseForCollectionIdentifiers:v11];

    if ([v12 length])
    {
      v13 = [v9 stringByAppendingFormat:@"%@%@", @"#", v12];

      v9 = v13;
    }

    v14 = [NSURLQueryItem queryItemWithName:@"type" value:@"shortcut"];
    v15 = [NSURLQueryItem queryItemWithName:@"id" value:v9];
    v23[0] = v14;
    v23[1] = v15;
    v16 = [NSArray arrayWithObjects:v23 count:2];
    [v8 setQueryItems:v16];

    v17 = [v8 string];
    v18 = [UIApplicationShortcutItem alloc];
    v19 = [v3 title];
    v20 = [v18 initWithType:v17 localizedTitle:v19];

    [*(a1 + 32) addObject:v20];
    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_10001704C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 collectionIdentifiers];
  v7 = +[TPSCommonDefines checklistCollectionIdentifier];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    if ((*(*(a1 + 48) + 16))())
    {
      [*(a1 + 32) removeObject:v9];
      if ([*(a1 + 40) count] >= 3)
      {
        *a4 = 1;
      }
    }
  }
}

BOOL sub_100017E9C(id a1, NSURLQueryItem *a2)
{
  v2 = [(NSURLQueryItem *)a2 name];
  v3 = [v2 isEqualToString:TPSTipURLSchemeParameterSearchTermKey];

  return v3;
}

void sub_1000185BC(uint64_t a1)
{
  [*(a1 + 32) showCollectionsView];
  v2 = [*(a1 + 32) collectionListViewController];
  v3 = [v2 navigationController];
  v4 = [v3 popToRootViewControllerAnimated:0];

  v5 = [*(a1 + 32) collectionListViewController];
  [v5 searchWithSearchQuery:*(a1 + 40)];
}

void sub_100018654(uint64_t a1)
{
  [*(a1 + 32) showTipsView];
  v2 = [*(a1 + 32) tipsByCollectionViewController];
  [v2 searchWithSearchQuery:*(a1 + 40)];
}

void sub_100019DE0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id sub_10001AA30(uint64_t a1)
{
  result = [*(a1 + 32) model];
  if (result < 2)
  {
    return [*(a1 + 32) parallaxFactor];
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  sub_10001AC14(0, &qword_1000B2BD0, &off_1000A1498);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  sub_10001AC14(0, &qword_1000B2BD8, off_1000A1490);
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

uint64_t sub_10001AC14(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10001AC5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_100069BAC(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_10001ADC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_100069BAC(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10001AFDC(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10001B054(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10001B0D4@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10001B11C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10001B148(uint64_t a1)
{
  v2 = sub_10001B5C8(&qword_1000B2C48, type metadata accessor for ActivityType);
  v3 = sub_10001B5C8(&qword_1000B2C50, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10001B204@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10001B24C(uint64_t a1)
{
  v2 = sub_10001B5C8(&qword_1000B2C58, type metadata accessor for Key);
  v3 = sub_10001B5C8(&qword_1000B2C60, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10001B30C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10001B34C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10001B3A4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10001B41C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10001B4A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_10001B4EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10001B5C8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001B730(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001B750(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_10001B78C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10001B860()
{
  v0 = *(*(type metadata accessor for Locale() - 8) + 64);
  __chkstk_darwin();
  v1 = *(*(type metadata accessor for String.LocalizationValue() - 8) + 64);
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1000B6E78 = result;
  unk_1000B6E80 = v3;
  return result;
}

uint64_t sub_10001BAA4(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

id sub_10001BC44()
{
  [v0 cancelAnalyticsIncreaseCountViewForCollectionsViewDelay];
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:UIApplicationWillEnterForegroundNotification object:0];
  [v1 removeObserver:v0 name:UIApplicationDidEnterBackgroundNotification object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CollectionListViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001BEBC(void *a1)
{
  v3 = OBJC_IVAR___CollectionListViewController_viewModel;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CollectionListViewModel()) init];
  v1[OBJC_IVAR___CollectionListViewController_canIncreaseViewCount] = 1;
  v4 = OBJC_IVAR___CollectionListViewController_searchResultsViewModel;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for SearchResultsViewModel()) init];
  *&v1[OBJC_IVAR___CollectionListViewController_searchResultsViewController] = 0;
  *&v1[OBJC_IVAR___CollectionListViewController_searchController] = 0;
  v1[OBJC_IVAR___CollectionListViewController_searchActive] = 0;
  *&v1[OBJC_IVAR___CollectionListViewController_cancellables] = &_swiftEmptySetSingleton;
  v5 = &v1[OBJC_IVAR___CollectionListViewController_searchResultSelectedHandler];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR___CollectionListViewController_supportArticleURLHandler];
  *v6 = 0;
  v6[1] = 0;
  v7 = *&v1[v3];
  sub_10001E928(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel);
  v8 = v7;
  v14 = ObservedObject.init(wrappedValue:)();
  v15 = v9;
  v10 = objc_allocWithZone(sub_10001B4A4(&qword_1000B2DC8, qword_100077C28));
  *&v1[OBJC_IVAR___CollectionListViewController_hostingController] = UIHostingController.init(rootView:)();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for CollectionListViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

void sub_10001C088()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for CollectionListViewController();
  objc_msgSendSuper2(&v30, "loadView");
  v1 = *&v0[OBJC_IVAR___CollectionListViewController_hostingController];
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v0 addChildViewController:v1];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 addSubview:v3];

      [v3 setBackgroundColor:0];
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6 = [v0 view];
      if (v6)
      {
        v7 = v6;
        sub_10001B4A4(&qword_1000B2DB0, &qword_100077C20);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_100077BC0;
        v9 = [v3 leadingAnchor];
        v10 = [v0 view];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 leadingAnchor];

          v13 = [v9 constraintEqualToAnchor:v12];
          *(v8 + 32) = v13;
          v14 = [v3 topAnchor];
          v15 = [v0 view];
          if (v15)
          {
            v16 = v15;
            v17 = [v15 topAnchor];

            v18 = [v14 constraintEqualToAnchor:v17];
            *(v8 + 40) = v18;
            v19 = [v3 trailingAnchor];
            v20 = [v0 view];
            if (v20)
            {
              v21 = v20;
              v22 = [v20 trailingAnchor];

              v23 = [v19 constraintEqualToAnchor:v22];
              *(v8 + 48) = v23;
              v24 = [v3 bottomAnchor];
              v25 = [v0 view];
              if (v25)
              {
                v26 = v25;
                v27 = [v25 bottomAnchor];

                v28 = [v24 constraintEqualToAnchor:v27];
                *(v8 + 56) = v28;
                sub_10001AC14(0, &qword_1000B2DB8, NSLayoutConstraint_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v7 addConstraints:isa];

                [v1 didMoveToParentViewController:v0];
                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_10001C470()
{
  v1 = v0;
  v2 = sub_10001B4A4(&qword_1000B2D68, &qword_100077C00);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v26 - v5;
  v26 = sub_10001B4A4(&qword_1000B2D70, &qword_100077C08);
  v7 = *(v26 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v26 - v9;
  v11 = sub_10001B4A4(&qword_1000B2D78, &unk_100077C10);
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = &v26 - v13;
  v15 = type metadata accessor for CollectionListViewController();
  v29.receiver = v0;
  v29.super_class = v15;
  objc_msgSendSuper2(&v29, "viewDidLoad");
  v16 = [v0 navigationController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 navigationBar];

    [v18 setPrefersLargeTitles:1];
  }

  v19 = [v1 view];
  if (v19)
  {
    v20 = v19;
    v21 = [objc_opt_self() clearColor];
    [v20 setBackgroundColor:v21];

    v22 = *&v1[OBJC_IVAR___CollectionListViewController_viewModel];
    swift_beginAccess();
    v23 = v22;
    sub_10001B4A4(&qword_1000B2D80, &qword_100078250);
    Published.projectedValue.getter();
    swift_endAccess();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10001E8B8(&qword_1000B2D88, &qword_1000B2D68, &qword_100077C00);
    Publisher.filter(_:)();

    (*(v3 + 8))(v6, v2);
    sub_10001E8B8(&qword_1000B2D90, &qword_1000B2D70, &qword_100077C08);
    v24 = v26;
    Publisher<>.removeDuplicates()();
    (*(v7 + 8))(v10, v24);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10001E8B8(&qword_1000B2D98, &qword_1000B2D78, &unk_100077C10);
    v25 = v28;
    Publisher<>.sink(receiveValue:)();

    (*(v27 + 8))(v14, v25);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_10001D1E0();
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_10001C94C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v1 = Strong;
  v2 = [Strong traitCollection];

  v3 = [v2 horizontalSizeClass];
  return v3 != 0;
}

void sub_10001C9DC(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10001CA38(v1);
  }
}

void sub_10001CA38(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = OBJC_IVAR___CollectionListViewController_searchResultsViewModel;
    v4 = *&v1[OBJC_IVAR___CollectionListViewController_searchResultsViewModel];
    dispatch thunk of SearchResultsViewModel.searchResultEligibilityFilter.setter();

    v5 = *&v2[v3];
    dispatch thunk of SearchResultsViewModel.searchResultCollectionResolver.setter();

    v6 = *&v2[v3];
    dispatch thunk of SearchResultsViewModel.searchResultUserGuideResolver.setter();

    v7 = *&v2[OBJC_IVAR___CollectionListViewController_searchResultSelectedHandler];
    v8 = *&v2[OBJC_IVAR___CollectionListViewController_searchResultSelectedHandler + 8];
    v9 = *&v2[v3];
    sub_10001E900(v7);
    dispatch thunk of SearchResultsViewModel.searchResultSelected.setter();

    v10 = *&v2[OBJC_IVAR___CollectionListViewController_supportArticleURLHandler];
    v11 = *&v2[OBJC_IVAR___CollectionListViewController_supportArticleURLHandler + 8];
    v12 = *&v2[v3];
    sub_10001E900(v10);
    dispatch thunk of SearchResultsViewModel.supportArticleURLHandler.setter();

    v13 = *&v2[v3];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = v13;

    dispatch thunk of SearchResultsViewModel.searchResultsSeeAllHandler.setter();

    v15 = *&v2[v3];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = v15;

    dispatch thunk of SearchResultsViewModel.searchResultScrollHandler.setter();

    v17 = *&v2[v3];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = v17;

    dispatch thunk of SearchResultsViewModel.searchResultsUpdated.setter();

    v19 = *&v2[v3];
    v20 = objc_allocWithZone(type metadata accessor for SearchResultsViewController());
    v21 = v19;
    v22 = SearchResultsViewController.init(_:)();
    v23 = *&v2[OBJC_IVAR___CollectionListViewController_searchResultsViewController];
    *&v2[OBJC_IVAR___CollectionListViewController_searchResultsViewController] = v22;
    v24 = v22;

    v25 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:v24];
    v26 = OBJC_IVAR___CollectionListViewController_searchController;
    v27 = *&v2[OBJC_IVAR___CollectionListViewController_searchController];
    *&v2[OBJC_IVAR___CollectionListViewController_searchController] = v25;
    v28 = v25;

    if (v28)
    {
      [v28 setSearchResultsUpdater:v2];
    }

    v29 = *&v2[v26];
    if (v29)
    {
      [v29 setDelegate:v2];
      v30 = *&v2[v26];
      if (v30)
      {
        [v30 setHidesNavigationBarDuringPresentation:1];
        v31 = *&v2[v26];
        if (v31)
        {
          [v31 setObscuresBackgroundDuringPresentation:0];
          v32 = *&v2[v26];
          if (v32)
          {
            v33 = [v32 searchBar];
            [v33 setDelegate:v2];

            v34 = *&v2[v26];
            if (v34)
            {
              v35 = [v34 searchBar];
              [v35 setAutocorrectionType:1];

              v36 = *&v2[v26];
              if (v36)
              {
                v37 = [v36 searchBar];
                [v37 setAutocapitalizationType:0];
              }
            }
          }
        }
      }
    }

    v38 = [v2 navigationItem];
    v39 = *&v2[v26];
    [v38 setSearchController:v39];

    v40 = [v2 navigationItem];
    [v40 setHidesSearchBarWhenScrolling:0];

    [v2 setDefinesPresentationContext:1];
  }

  else
  {
    v41 = [v1 navigationController];
    if (v41)
    {
      v42 = v41;
    }

    v43 = [v2 navigationItem];
    [v43 setSearchController:0];

    v44 = *&v2[OBJC_IVAR___CollectionListViewController_searchController];
    *&v2[OBJC_IVAR___CollectionListViewController_searchController] = 0;

    v2[OBJC_IVAR___CollectionListViewController_searchActive] = 0;
    v45 = *&v2[OBJC_IVAR___CollectionListViewController_searchResultsViewModel];
    dispatch thunk of SearchResultsViewModel.reset()();

    sub_10001D1E0();
  }
}

void sub_10001D1E0()
{
  v1 = *(*(type metadata accessor for Locale() - 8) + 64);
  __chkstk_darwin();
  v2 = *(*(type metadata accessor for String.LocalizationValue() - 8) + 64);
  __chkstk_darwin();
  if (*(v0 + OBJC_IVAR___CollectionListViewController_searchActive) == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v3 = String._bridgeToObjectiveC()();

    [v0 setTitle:v3];
  }

  else
  {
    if (qword_1000B2B40 != -1)
    {
      swift_once();
    }

    v4 = String._bridgeToObjectiveC()();
    [v0 setTitle:v4];
  }
}

id sub_10001D4B8(uint64_t a1, uint64_t a2, SEL *a3)
{
  type metadata accessor for TPSUIAppController();
  v4 = static TPSUIAppController.shared.getter();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 *a3];

  return v6;
}

void sub_10001D534()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10001AC14(0, &qword_1000B2DA8, UIViewController_ptr);
    v2 = *&v1[OBJC_IVAR___CollectionListViewController_searchResultsViewModel];
    v3 = static UIViewController._makeSearchResultsListViewController(for:viewModel:)();

    if (v3)
    {
      v4 = [v1 navigationController];
      if (v4)
      {
        v5 = v4;
        [v4 pushViewController:v3 animated:1];
      }

      v1 = v3;
    }
  }
}

void sub_10001D61C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissSearch];
  }
}

void sub_10001D678()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___CollectionListViewController_searchResultsViewController);
    if (!v2)
    {
LABEL_13:

      return;
    }

    v3 = *(Strong + OBJC_IVAR___CollectionListViewController_searchResultsViewModel);
    v4 = v2;
    v5 = v3;
    v6 = dispatch thunk of SearchResultsViewModel.hasStartedSearch.getter();

    v7 = objc_opt_self();
    v8 = &selRef_systemBackgroundColor;
    if ((v6 & 1) == 0)
    {
      v8 = &selRef_clearColor;
    }

    v9 = [v7 *v8];
    v10 = [v4 view];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 backgroundColor];

      if (v12)
      {
        sub_10001AC14(0, &qword_1000B2DA0, UIColor_ptr);
        v13 = v9;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v15 = v9;
      }

      v16 = [v4 view];
      if (v16)
      {
        v17 = v16;
        [v16 setBackgroundColor:v9];

        v13 = v9;
LABEL_12:

        v1 = v13;
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_10001D838(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  (__chkstk_darwin)();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  (__chkstk_darwin)();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v26 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (__chkstk_darwin)();
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v25 = *(v11 + 8);
  v25(v15, v10);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  aBlock[4] = sub_10001E840;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002086C;
  aBlock[3] = &unk_1000A35D8;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10001E928(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v29 + 8))(v5, v2);
  (*(v27 + 8))(v9, v28);
  return (v25)(v17, v26);
}

void sub_10001DC3C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR___CollectionListViewController_searchController);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      v7 = [v6 searchBar];

      dispatch thunk of TPSAppSearchQuery.searchTerm.getter();
      v8 = String._bridgeToObjectiveC()();

      [v7 setText:v8];
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR___CollectionListViewController_searchController);
    v11 = v9;
    v12 = v10;

    if (v10)
    {
      v13 = [v12 searchBar];

      [v13 becomeFirstResponder];
    }
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + OBJC_IVAR___CollectionListViewController_searchResultsViewModel);

    v17 = a2;
    dispatch thunk of SearchResultsViewModel.searchQuery.setter();
  }
}

void sub_10001DE4C(char *a1, uint64_t a2, SEL *a3)
{
  v3 = *&a1[OBJC_IVAR___CollectionListViewController_searchController];
  if (v3)
  {
    v6 = a1;
    v5 = [v3 searchBar];
    [v5 *a3];
  }
}

void sub_10001DED8(void *a1)
{
  v2 = [a1 searchBar];
  v3 = [v2 text];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = *(v1 + OBJC_IVAR___CollectionListViewController_searchResultsViewModel);
    v5 = objc_allocWithZone(type metadata accessor for TPSAppSearchQuery());
    v6 = v4;
    TPSAppSearchQuery.init(searchTerm:origin:identifier:)();
    dispatch thunk of SearchResultsViewModel.searchQuery.setter();
  }
}

void sub_10001E1F4(uint64_t a1)
{
  if (v1[OBJC_IVAR___CollectionListViewController_canIncreaseViewCount] == 1)
  {
    v2 = v1;
    v4 = *&v1[OBJC_IVAR___CollectionListViewController_viewModel];
    v5 = sub_10002FFE4();

    if (v5)
    {
      [v2 cancelAnalyticsIncreaseCountViewForCollectionsViewDelay];
      v6 = [objc_opt_self() proxyWithViewMethod:a1];
      [v2 performSelector:"analyticsIncreaseCountViewForCollectionsView:" withObject:v6 afterDelay:kTipsAnalyticsDelayedEventInterval];
    }
  }
}

void sub_10001E360(void *a1)
{
  v2 = v1;
  [v1 cancelAnalyticsIncreaseCountViewForCollectionsViewDelay];
  if (v1[OBJC_IVAR___CollectionListViewController_canIncreaseViewCount] == 1)
  {
    v4 = *&v1[OBJC_IVAR___CollectionListViewController_viewModel];
    v5 = sub_10002FFE4();

    if (v5)
    {
      v6 = TPSAnalyticsContentStyleLandingPage;
      v7 = [a1 viewMethod];
      if (!v7)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = String._bridgeToObjectiveC()();
      }

      v8 = objc_opt_self();
      v9 = [v2 traitCollection];
      v10 = [v8 analyticsViewModeForTraitCollection:v9];

      v11 = [v8 eventWithContentID:v6 collectionID:v6 correlationID:0 clientConditionID:0 viewMethod:v7 viewMode:v10];
      [v11 log];
    }
  }
}

id sub_10001E56C(void *a1)
{
  v3 = OBJC_IVAR___CollectionListViewController_viewModel;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CollectionListViewModel()) init];
  v1[OBJC_IVAR___CollectionListViewController_canIncreaseViewCount] = 1;
  v4 = OBJC_IVAR___CollectionListViewController_searchResultsViewModel;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for SearchResultsViewModel()) init];
  *&v1[OBJC_IVAR___CollectionListViewController_searchResultsViewController] = 0;
  *&v1[OBJC_IVAR___CollectionListViewController_searchController] = 0;
  v1[OBJC_IVAR___CollectionListViewController_searchActive] = 0;
  *&v1[OBJC_IVAR___CollectionListViewController_cancellables] = &_swiftEmptySetSingleton;
  v5 = &v1[OBJC_IVAR___CollectionListViewController_searchResultSelectedHandler];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR___CollectionListViewController_supportArticleURLHandler];
  *v6 = 0;
  v6[1] = 0;
  if (a1)
  {
    v7 = *&v1[v3];
    *&v1[v3] = a1;
    v8 = a1;
  }

  v9 = *&v1[v3];
  sub_10001E928(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel);
  v10 = v9;
  v15 = ObservedObject.init(wrappedValue:)();
  v16 = v11;
  v12 = objc_allocWithZone(sub_10001B4A4(&qword_1000B2DC8, qword_100077C28));
  *&v1[OBJC_IVAR___CollectionListViewController_hostingController] = UIHostingController.init(rootView:)();
  v14.receiver = v1;
  v14.super_class = type metadata accessor for CollectionListViewController();
  return objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
}

void sub_10001E70C()
{
  v1 = OBJC_IVAR___CollectionListViewController_searchActive;
  if (v0[OBJC_IVAR___CollectionListViewController_searchActive] == 1)
  {
    v2 = v0;
    v3 = OBJC_IVAR___CollectionListViewController_searchResultsViewModel;
    v4 = *&v0[OBJC_IVAR___CollectionListViewController_searchResultsViewModel];
    v5 = dispatch thunk of SearchResultsViewModel.queryCount.getter();

    if (!v5)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
      v2[v1] = 0;
      v6 = *&v2[v3];
      dispatch thunk of SearchResultsViewModel.reset()();

      sub_10001D1E0();
    }
  }
}

uint64_t sub_10001E7C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E800()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E848(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001E860(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001E8B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001E860(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001E900(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001E928(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001E970(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001E980()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10001E9B8(NSURL *a1@<X8>)
{
  v2 = *(v1 + 16);
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  (*(v2 + 16))(v2, v3);
}

id sub_10001EA20()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for SearchResultsViewModel()) init];
  [v1 setSearchResultViewModel:v2];

  v3 = [v1 searchResultViewModel];
  if (v3)
  {
    v4 = v3;
    dispatch thunk of SearchResultsViewModel.supportsHighlight.setter();
  }

  v5 = [v1 searchResultViewModel];
  if (v5)
  {
    v6 = v5;
    dispatch thunk of SearchResultsViewModel.presentAsPopover.setter();
  }

  v7 = [v1 searchResultViewModel];
  if (v7)
  {
    v8 = v7;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultEligibilityFilter.setter();
  }

  v9 = [v1 searchResultViewModel];
  if (v9)
  {
    v10 = v9;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultCollectionResolver.setter();
  }

  v11 = [v1 searchResultViewModel];
  if (v11)
  {
    v12 = v11;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultUserGuideResolver.setter();
  }

  v13 = [v1 searchResultViewModel];
  if (v13)
  {
    v14 = v13;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultSelected.setter();
  }

  v15 = [v1 searchResultViewModel];
  if (v15)
  {
    v16 = v15;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultsSeeAllHandler.setter();
  }

  v17 = [v1 searchResultViewModel];
  if (v17)
  {
    v18 = v17;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultScrollHandler.setter();
  }

  v19 = [v1 searchResultViewModel];
  if (v19)
  {
    v20 = v19;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.searchResultsUpdated.setter();
  }

  result = [v1 searchResultViewModel];
  if (result)
  {
    v22 = result;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of SearchResultsViewModel.supportArticleURLHandler.setter();
  }

  return result;
}

void sub_10001EE6C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong appController];

    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
      [v7 *a4];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10001EF38(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    [result dismissPresentedSearchResultsViewController:1];
    [v3 dismissSearch];
    result = [v3 delegate];
    if (result)
    {
      v4 = result;
      if ([result respondsToSelector:"tipsViewController:didSelectSearchResult:"])
      {
        v5 = type metadata accessor for SearchResult.Item.Value();
        v19[3] = v5;
        v6 = sub_10001F7A4(v19);
        (*(*(v5 - 8) + 16))(v6, a1, v5);
        sub_10001F808(v19, v17, &qword_1000B2E90, &unk_100077E50);
        v7 = v18;
        if (v18)
        {
          v8 = sub_10001F8D0(v17, v18);
          v9 = *(v7 - 8);
          v10 = *(v9 + 64);
          __chkstk_darwin(v8);
          v12 = &v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v9 + 16))(v12);
          v13 = v3;
          v14 = _bridgeAnythingToObjectiveC<A>(_:)();
          (*(v9 + 8))(v12, v7);
          sub_10001F914(v17);
        }

        else
        {
          v15 = v3;
          v14 = 0;
        }

        [v4 tipsViewController:v3 didSelectSearchResult:v14];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return sub_10001F870(v19, &qword_1000B2E90, &unk_100077E50);
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10001F19C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong searchResultViewModel];
    if (v2)
    {
      v3 = v2;
      sub_10001F758();
      v4 = static UIViewController._makeSearchResultsListViewController(for:viewModel:)();
      if (v4)
      {
        v5 = v4;
        v6 = [v1 searchResultsNavigationController];
        if (v6)
        {
          v7 = v6;
          [v6 pushViewController:v5 animated:1];

          v1 = v3;
          v3 = v5;
          v5 = v7;
        }

        v1 = v3;
        v3 = v5;
      }

      v1 = v3;
    }
  }
}

void sub_10001F290(uint64_t a1, const char **a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = Strong;
    [Strong v4];
  }
}

id sub_10001F2EC(uint64_t a1)
{
  v2 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    [result dismissPresentedSearchResultsViewController:1];
    [v10 dismissSearch];
    result = [v10 delegate];
    if (result)
    {
      v11 = result;
      if ([result respondsToSelector:"tipsViewControllerHandleSupportArticleURL:"])
      {
        v12 = type metadata accessor for URL();
        v13 = *(v12 - 8);
        (*(v13 + 16))(v8, a1, v12);
        (*(v13 + 56))(v8, 0, 1, v12);
        sub_10001F808(v8, v6, &unk_1000B3380, &qword_100079940);
        v15 = 0;
        if ((*(v13 + 48))(v6, 1, v12) != 1)
        {
          URL._bridgeToObjectiveC()(v14);
          v15 = v16;
          (*(v13 + 8))(v6, v12);
        }

        [v11 tipsViewControllerHandleSupportArticleURL:v15];
        swift_unknownObjectRelease();

        return sub_10001F870(v8, &unk_1000B3380, &qword_100079940);
      }

      else
      {

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10001F5C0(void *a1, uint64_t a2, SEL *a3)
{
  v7 = a1;
  v4 = [v7 searchController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 searchBar];

    [v6 *a3];
  }
}

uint64_t sub_10001F654()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10001F758()
{
  result = qword_1000B2DA8;
  if (!qword_1000B2DA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B2DA8);
  }

  return result;
}

uint64_t *sub_10001F7A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001F808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001B4A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001F870(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10001B4A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_10001F8D0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001F914(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_10001FCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR___TPSAppCoordinator_mainViewController);
  if (a2)
  {
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    if (a4)
    {
LABEL_3:
      v9 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v10 = v6;
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v11 = v9;
  [v6 displayCollectionID:v8 tipID:?];
}

id sub_10001FE60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSAppCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100020004()
{
  v1 = OBJC_IVAR___TPSAppCoordinator_mainViewController;
  v2 = *(v0 + OBJC_IVAR___TPSAppCoordinator_mainViewController);
  v3 = String._bridgeToObjectiveC()();
  [v2 displayCollectionID:v3 tipID:0];

  [*(v0 + v1) showTOCView];
  v4 = [*(v0 + v1) tipListViewController];
  v5 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v4 runTest:v5 options:isa];
}

void sub_100020200()
{
  v1 = OBJC_IVAR___TPSAppCoordinator_mainViewController;
  v2 = [*(v0 + OBJC_IVAR___TPSAppCoordinator_mainViewController) appController];
  v3 = [v2 collections];

  if (!v3)
  {
    goto LABEL_10;
  }

  sub_1000203F4();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v5 = *(v4 + 32);
  }

  v8 = v5;

LABEL_11:
  v6 = [*(v0 + v1) tipsByCollectionViewController];
  if (v8)
  {
    v7 = [v8 identifier];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }
  }

  else
  {
    v7 = 0;
  }

  [v6 updateWithCollectionID:v7 tipID:0];

  [*(v0 + v1) showTipsView];
}

unint64_t sub_1000203F4()
{
  result = qword_1000B2EC8;
  if (!qword_1000B2EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B2EC8);
  }

  return result;
}

uint64_t sub_100020454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100020534(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001B4A4(&qword_1000B2ED0, &unk_100077C70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FeaturedCollectionView()
{
  result = qword_1000B2F30;
  if (!qword_1000B2F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100020648()
{
  sub_100020714();
  if (v0 <= 0x3F)
  {
    sub_10002076C();
    if (v1 <= 0x3F)
    {
      sub_100020800();
      if (v2 <= 0x3F)
      {
        sub_10001AC14(319, &qword_1000B2EC8, TPSCollection_ptr);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100020714()
{
  if (!qword_1000B2F40)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B2F40);
    }
  }
}

void sub_10002076C()
{
  if (!qword_1000B2F48)
  {
    type metadata accessor for CollectionListViewModel();
    sub_100023970(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B2F48);
    }
  }
}

void sub_100020800()
{
  if (!qword_1000B2F50)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B2F50);
    }
  }
}

uint64_t sub_10002086C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000208B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100023544(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_100020A98(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for FeaturedCollectionView();
  v7 = a3 + v6[6];
  State.init(wrappedValue:)();
  *v7 = v21;
  *(v7 + 1) = v22;
  v8 = (a3 + v6[5]);
  type metadata accessor for CollectionListViewModel();
  sub_100023970(&qword_1000B2DC0, type metadata accessor for CollectionListViewModel);
  v9 = a1;
  *v8 = ObservedObject.init(wrappedValue:)();
  v8[1] = v10;
  *(a3 + v6[8]) = a2;
  v11 = a2;
  v12 = [v11 identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v11 title];
  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {

    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = (a3 + v6[7]);
  *v20 = v13;
  v20[1] = v15;
  v20[2] = v17;
  v20[3] = v19;
}

uint64_t sub_100020C48@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v47 - v4;
  v48 = sub_10001B4A4(&qword_1000B3038, &qword_100077D58);
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v48);
  v9 = &v47 - v8;
  v47 = sub_10001B4A4(&qword_1000B3040, &qword_100077D60);
  v10 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v12 = &v47 - v11;
  v50 = sub_10001B4A4(&qword_1000B3048, &qword_100077D68);
  v13 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v15 = &v47 - v14;
  v49 = *(v1 + *(type metadata accessor for FeaturedCollectionView() + 32));
  v16 = [v49 featuredTitle];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  v52 = v18;
  v53 = v20;
  sub_1000235B4();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v52 = v21;
  v53 = v22;
  v25 = v24 & 1;
  v54 = v24 & 1;
  v55 = v26;
  View.avoidsOrphans(_:)();
  sub_100023608(v21, v23, v25);

  sub_10001B4A4(&qword_1000B3050, &qword_100077D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077C60;
  v28 = static Edge.Set.top.getter();
  *(inited + 32) = v28;
  v29 = static Edge.Set.horizontal.getter();
  *(inited + 33) = v29;
  v30 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v28)
  {
    v30 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v29)
  {
    v30 = Edge.Set.init(rawValue:)();
  }

  (*(v6 + 32))(v12, v9, v48);
  v31 = &v12[*(v47 + 36)];
  *v31 = v30;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  v31[40] = 1;
  v32 = type metadata accessor for Font.Design();
  (*(*(v32 - 8) + 56))(v5, 1, 1, v32);
  static Font.system(size:weight:design:)();
  sub_10001F870(v5, &qword_1000B3030, &qword_100077D50);
  static Font.Weight.bold.getter();
  v33 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  sub_100023628(v12, v15, &qword_1000B3040, &qword_100077D60);
  v35 = v49;
  v36 = &v15[*(v50 + 36)];
  *v36 = KeyPath;
  v36[1] = v33;
  v37 = [v35 featuredContent];
  if (v37 && (v38 = v37, v39 = [v37 labelStyle], v38, v39 == 1))
  {
    v40 = static Color.white.getter();
  }

  else
  {
    v40 = static Color.primary.getter();
  }

  v41 = v40;
  v42 = swift_getKeyPath();
  v43 = v15;
  v44 = v51;
  sub_100023628(v43, v51, &qword_1000B3048, &qword_100077D68);
  result = sub_10001B4A4(&qword_1000B3058, &qword_100077DD8);
  v46 = (v44 + *(result + 36));
  *v46 = v42;
  v46[1] = v41;
  return result;
}

uint64_t sub_100021100@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v94 = type metadata accessor for AccessibilityChildBehavior();
  v92 = *(v94 - 8);
  v2 = *(v92 + 64);
  __chkstk_darwin(v94);
  v91 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v77 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v76 = &v76 - v8;
  v9 = type metadata accessor for ColorScheme();
  v10 = *(v9 - 8);
  v85 = v9;
  v86 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v80 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001B4A4(&qword_1000B2F90, &qword_100077CF0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v76 - v15;
  v17 = type metadata accessor for FeaturedCollectionView();
  v78 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10001B4A4(&qword_1000B2F98, &qword_100077CF8);
  v21 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v23 = &v76 - v22;
  v24 = sub_10001B4A4(&qword_1000B2FA0, &qword_100077D00);
  v87 = *(v24 - 8);
  v88 = v24;
  v25 = *(v87 + 64);
  __chkstk_darwin(v24);
  v95 = &v76 - v26;
  v89 = sub_10001B4A4(&qword_1000B2FA8, &qword_100077D08);
  v27 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v90 = &v76 - v28;
  v96 = v1;
  sub_100022DC8(v1, v20);
  v29 = *(v18 + 80);
  v30 = (v29 + 16) & ~v29;
  v31 = swift_allocObject();
  sub_100022E30(v20, v31 + v30);
  v97 = sub_100022E94;
  v98 = v31;
  v32 = v1 + *(v17 + 28);
  v33 = *v32;
  v35 = *(v32 + 16);
  v34 = *(v32 + 24);
  v99 = v33;
  *&v100 = v35;
  *(&v100 + 1) = v34;
  sub_100022F14();
  AppEntity.fullyQualifiedIdentifier.getter();
  v36 = type metadata accessor for EntityIdentifier();
  (*(*(v36 - 8) + 56))(v16, 0, 1, v36);
  sub_10001B4A4(&qword_1000B2FC0, &qword_100077D18);
  sub_10001E8B8(&qword_1000B2FC8, &qword_1000B2FC0, &qword_100077D18);
  View.appEntityIdentifier(_:)();
  sub_10001F870(v16, &qword_1000B2F90, &qword_100077CF0);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v37 = &v23[*(sub_10001B4A4(&qword_1000B2FD0, &qword_100077D20) + 36)];
  v38 = v100;
  *v37 = v99;
  *(v37 + 1) = v38;
  *(v37 + 2) = v101;
  v39 = static Alignment.topLeading.getter();
  v41 = v40;
  v42 = &v23[*(sub_10001B4A4(&qword_1000B2FD8, &qword_100077D28) + 36)];
  v43 = v96;
  sub_100020C48(v42);
  v44 = (v42 + *(sub_10001B4A4(&qword_1000B2FE0, &qword_100077D30) + 36));
  v45 = v29;
  *v44 = v39;
  v44[1] = v41;
  v46 = v95;
  sub_100022DC8(v43, v20);
  v47 = swift_allocObject();
  sub_100022E30(v20, v47 + v30);
  v48 = &v23[*(sub_10001B4A4(&qword_1000B2FE8, &qword_100077D38) + 36)];
  *v48 = sub_100022F68;
  v48[1] = v47;
  v48[2] = 0;
  v48[3] = 0;
  sub_100022DC8(v43, v20);
  v49 = swift_allocObject();
  sub_100022E30(v20, v49 + v30);
  v50 = &v23[*(v79 + 36)];
  *v50 = 0;
  *(v50 + 1) = 0;
  *(v50 + 2) = sub_100022F70;
  *(v50 + 3) = v49;
  v51 = v80;
  sub_1000208B0(v80);
  sub_100022DC8(v43, v20);
  v84 = v19;
  v83 = v45;
  v52 = swift_allocObject();
  v81 = v30;
  v82 = v20;
  sub_100022E30(v20, v52 + v30);
  sub_10002308C(&qword_1000B2FF0, &qword_1000B2F98, &qword_100077CF8, sub_10002305C);
  sub_100023970(&qword_1000B3018, &type metadata accessor for ColorScheme);
  v53 = v46;
  v54 = v51;
  v55 = v85;
  View.onChange<A>(of:initial:_:)();

  (*(v86 + 8))(v54, v55);
  v56 = v96;
  sub_10001F870(v23, &qword_1000B2F98, &qword_100077CF8);
  v57 = *(v56 + *(v78 + 20) + 8);
  if (*(v57 + OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel))
  {
    v58 = *(v57 + OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel);
  }

  else
  {
    v59 = *(v56 + *(v78 + 32));
    v60 = type metadata accessor for URL();
    v61 = *(*(v60 - 8) + 56);
    v61(v76, 1, 1, v60);
    v61(v77, 1, 1, v60);
    v62 = objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
    v63 = v59;
    TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();
    type metadata accessor for TipsContentModel();
    static TipsContentModel.shared()();
    v64 = type metadata accessor for DocumentAssetViewModel();
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();
    v53 = v95;
    DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
  }

  v67 = v89;
  v68 = *(v89 + 52);

  v69 = v90;
  dispatch thunk of DocumentAssetViewModel.$player.getter();

  v70 = v82;
  sub_100022DC8(v56, v82);
  v71 = v81;
  v72 = swift_allocObject();
  sub_100022E30(v70, v72 + v71);
  (*(v87 + 32))(v69, v53, v88);
  v73 = (v69 + *(v67 + 56));
  *v73 = sub_1000232C4;
  v73[1] = v72;
  v74 = v91;
  static AccessibilityChildBehavior.combine.getter();
  sub_10001E8B8(&qword_1000B3020, &qword_1000B2FA8, &qword_100077D08);
  View.accessibilityElement(children:)();
  (*(v92 + 8))(v74, v94);
  return sub_10001F870(v69, &qword_1000B2FA8, &qword_100077D08);
}

double sub_100021B1C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeaturedCollectionView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_100022DC8(a1, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100022E30(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v13 = a1;
  sub_10001B4A4(&qword_1000B3060, &qword_100077DE0);
  sub_100023858();
  Button.init(action:label:)();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = (a2 + *(sub_10001B4A4(&qword_1000B3088, &qword_100077DF0) + 36));
  v10 = v15;
  *v9 = v14;
  v9[1] = v10;
  result = *&v16;
  v9[2] = v16;
  return result;
}

uint64_t sub_100021CC8(uint64_t a1)
{
  result = type metadata accessor for FeaturedCollectionView();
  v3 = *(a1 + *(result + 20) + 8) + OBJC_IVAR___CollectionListViewModel_actionHandler;
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    v6 = *(a1 + *(result + 32));

    v7 = [v6 identifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v4(v8, v10);
    sub_10001E970(v4);
  }

  return result;
}

uint64_t sub_100021DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = type metadata accessor for RemoteVideoView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10001B4A4(&qword_1000B3090, &qword_100077DF8);
  v16 = *(v42 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v42);
  v19 = &v39 - v18;
  v20 = type metadata accessor for FeaturedCollectionView();
  v21 = *(a1 + *(v20 + 20) + 8);
  if (*(v21 + OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel))
  {
    v22 = *(v21 + OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel);
  }

  else
  {
    v40 = *(a1 + *(v20 + 32));
    v23 = type metadata accessor for URL();
    v24 = *(*(v23 - 8) + 56);
    v41 = a2;
    v24(v10, 1, 1, v23);
    v24(v8, 1, 1, v23);
    objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
    v25 = v40;
    TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();
    type metadata accessor for TipsContentModel();
    static TipsContentModel.shared()();
    v26 = type metadata accessor for DocumentAssetViewModel();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    a2 = v41;
    DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
  }

  v43 = 0;

  static Binding.constant(_:)();
  RemoteVideoView.init(viewModel:showReplayButtonAtVideoEnd:isImageLoaded:)();
  sub_100023970(&qword_1000B3070, &type metadata accessor for RemoteVideoView);
  View.assetContentMode(_:)();
  (*(v12 + 8))(v15, v11);
  v29 = (a2 + *(sub_10001B4A4(&qword_1000B3060, &qword_100077DE0) + 36));
  v30 = *(type metadata accessor for RoundedRectangle() + 20);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = type metadata accessor for RoundedCornerStyle();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  __asm { FMOV            V0.2D, #10.0 }

  *v29 = _Q0;
  *&v29[*(sub_10001B4A4(&qword_1000B3080, &qword_100077DE8) + 36)] = 256;
  return (*(v16 + 32))(a2, v19, v42);
}

uint64_t sub_1000221E0(char a1)
{
  v2 = v1;
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v55[-v9];
  v11 = type metadata accessor for FeaturedCollectionView();
  v12 = (v2 + v11[6]);
  v14 = *(v12 + 1);
  v57 = *v12;
  v13 = v57;
  v58 = v14;
  v56 = a1;
  sub_10001B4A4(&qword_1000B3028, &qword_100078C60);
  State.wrappedValue.setter();
  v57 = v13;
  v58 = v14;
  State.wrappedValue.getter();
  v15 = *(v2 + v11[5] + 8);
  v16 = OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel;
  v17 = *(v15 + OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel);
  if (v56 == 1)
  {
    if (v17)
    {
      v18 = *(v15 + OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel);
    }

    else
    {
      v20 = *(v2 + v11[8]);
      v21 = type metadata accessor for URL();
      v22 = *(*(v21 - 8) + 56);
      v22(v10, 1, 1, v21);
      v22(v8, 1, 1, v21);
      v23 = objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
      v24 = v20;
      TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();
      type metadata accessor for TipsContentModel();
      static TipsContentModel.shared()();
      v25 = type metadata accessor for DocumentAssetViewModel();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
    }

    dispatch thunk of DocumentAssetViewModel.load()();

    if (*(v15 + v16))
    {
      v28 = *(v15 + v16);
    }

    else
    {
      v38 = *(v2 + v11[8]);
      v39 = type metadata accessor for URL();
      v40 = *(*(v39 - 8) + 56);
      v40(v10, 1, 1, v39);
      v40(v8, 1, 1, v39);
      v41 = objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
      v42 = v38;
      TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();
      type metadata accessor for TipsContentModel();
      static TipsContentModel.shared()();
      v43 = type metadata accessor for DocumentAssetViewModel();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
    }

    dispatch thunk of DocumentAssetViewModel.playVideo()();
  }

  else
  {
    if (v17)
    {
      v19 = *(v15 + OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel);
    }

    else
    {
      v29 = *(v2 + v11[8]);
      v30 = type metadata accessor for URL();
      v31 = *(*(v30 - 8) + 56);
      v31(v10, 1, 1, v30);
      v31(v8, 1, 1, v30);
      v32 = objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
      v33 = v29;
      TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();
      type metadata accessor for TipsContentModel();
      static TipsContentModel.shared()();
      v34 = type metadata accessor for DocumentAssetViewModel();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
    }

    dispatch thunk of DocumentAssetViewModel.cancel()();

    if (*(v15 + v16))
    {
      v37 = *(v15 + v16);
    }

    else
    {
      v46 = *(v2 + v11[8]);
      v47 = type metadata accessor for URL();
      v48 = *(*(v47 - 8) + 56);
      v48(v10, 1, 1, v47);
      v48(v8, 1, 1, v47);
      v49 = objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
      v50 = v46;
      TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();
      type metadata accessor for TipsContentModel();
      static TipsContentModel.shared()();
      v51 = type metadata accessor for DocumentAssetViewModel();
      v52 = *(v51 + 48);
      v53 = *(v51 + 52);
      swift_allocObject();
      DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
    }

    dispatch thunk of DocumentAssetViewModel.resetVideo()();
  }
}

void sub_10002272C(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = type metadata accessor for FeaturedCollectionView();
  v6 = *(a3 + *(v5 + 20) + 8);
  v7 = (a3 + *(v5 + 24));
  v9 = *v7;
  v10 = *(v7 + 1);
  sub_10001B4A4(&qword_1000B3028, &qword_100078C60);
  State.wrappedValue.getter();
  sub_10002D850(a2, v8);
}

uint64_t sub_1000227B8(void **a1, uint64_t a2)
{
  v45 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v45 - 8);
  v4 = *(v48 + 64);
  __chkstk_darwin(v45);
  v44 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeaturedCollectionView();
  v10 = v9 - 8;
  v41 = *(v9 - 8);
  v11 = *(v41 + 64);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v49 = v13;
  v50 = v14;
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v40 = &v39 - v19;
  v20 = type metadata accessor for ColorScheme();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  v25 = *(a2 + *(v10 + 28) + 8);
  sub_1000208B0(v24);
  sub_10002D850(v24, 0);
  (*(v21 + 8))(v24, v20);
  sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v27 = *(v50 + 8);
  v50 += 8;
  v42 = v27;
  v27(v18, v49);
  sub_100022DC8(a2, v12);
  v28 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v29 = (v11 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_100022E30(v12, v30 + v28);
  v31 = v39;
  *(v30 + v29) = v39;
  aBlock[4] = sub_1000234A0;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002086C;
  aBlock[3] = &unk_1000A3768;
  v32 = _Block_copy(aBlock);
  v33 = v31;

  v34 = v43;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100023970(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40);
  v36 = v44;
  v35 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v37 = v40;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v32);

  (*(v48 + 8))(v36, v35);
  (*(v46 + 8))(v34, v47);
  return v42(v37, v49);
}

id sub_100022D18(uint64_t a1, void *a2)
{
  v3 = (a1 + *(type metadata accessor for FeaturedCollectionView() + 24));
  v6 = *v3;
  v7 = *(v3 + 1);
  sub_10001B4A4(&qword_1000B3028, &qword_100078C60);
  result = State.wrappedValue.getter();
  if (v5 == 1)
  {
    return [a2 play];
  }

  return result;
}

uint64_t sub_100022DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedCollectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedCollectionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100022E94@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeaturedCollectionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100021B1C(v4, a1);
}

unint64_t sub_100022F14()
{
  result = qword_1000B2FB8;
  if (!qword_1000B2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2FB8);
  }

  return result;
}

uint64_t sub_100022F78(char a1)
{
  v3 = *(type metadata accessor for FeaturedCollectionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_1000221E0(a1);
}

void sub_100022FDC(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for FeaturedCollectionView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_10002272C(a1, a2, v6);
}

uint64_t sub_10002308C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001E860(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100023110()
{
  result = qword_1000B3000;
  if (!qword_1000B3000)
  {
    sub_10001E860(&qword_1000B2FD8, &qword_100077D28);
    sub_1000231C8();
    sub_10001E8B8(&qword_1000B3010, &qword_1000B2FE0, &qword_100077D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3000);
  }

  return result;
}

unint64_t sub_1000231C8()
{
  result = qword_1000B3008;
  if (!qword_1000B3008)
  {
    sub_10001E860(&qword_1000B2FD0, &qword_100077D20);
    sub_10001E860(&qword_1000B2FC0, &qword_100077D18);
    sub_10001E8B8(&qword_1000B2FC8, &qword_1000B2FC0, &qword_100077D18);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3008);
  }

  return result;
}

uint64_t sub_1000232C4(void **a1)
{
  v3 = *(type metadata accessor for FeaturedCollectionView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000227B8(a1, v4);
}

uint64_t sub_100023334()
{
  v1 = type metadata accessor for FeaturedCollectionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v9 = *(v5 + v1[6] + 8);

  v10 = v5 + v1[7];
  v11 = *(v10 + 1);

  v12 = *(v10 + 3);

  return _swift_deallocObject(v0, v8 + 8, v2 | 7);
}

id sub_1000234A0()
{
  v1 = *(type metadata accessor for FeaturedCollectionView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100022D18(v0 + v2, v3);
}

uint64_t sub_10002352C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023544(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000235B4()
{
  result = qword_1000B4D90;
  if (!qword_1000B4D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D90);
  }

  return result;
}

uint64_t sub_100023608(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100023628(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001B4A4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100023690()
{
  v1 = type metadata accessor for FeaturedCollectionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_10001B4A4(&qword_1000B2FB0, &qword_100077D10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[6] + 8);

  v9 = v5 + v1[7];
  v10 = *(v9 + 1);

  v11 = *(v9 + 3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000237F0()
{
  v1 = *(type metadata accessor for FeaturedCollectionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100021CC8(v2);
}

unint64_t sub_100023858()
{
  result = qword_1000B3068;
  if (!qword_1000B3068)
  {
    sub_10001E860(&qword_1000B3060, &qword_100077DE0);
    type metadata accessor for RemoteVideoView();
    sub_100023970(&qword_1000B3070, &type metadata accessor for RemoteVideoView);
    swift_getOpaqueTypeConformance2();
    sub_10001E8B8(&qword_1000B3078, &qword_1000B3080, &qword_100077DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3068);
  }

  return result;
}

uint64_t sub_100023970(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000239B8()
{
  sub_10001E860(&qword_1000B2FA8, &qword_100077D08);
  sub_10001E8B8(&qword_1000B3020, &qword_1000B2FA8, &qword_100077D08);
  return swift_getOpaqueTypeConformance2();
}

id sub_100023A6C(void *a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = [objc_allocWithZone(v1) init];
  sub_100024368();
  v8 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v8 setTips:isa];

  if (!a1)
  {
LABEL_9:
    [v8 setAllowBookmarks:0];
    [v8 setAllowPaging:0];
    [v8 setShouldDisplayNavigationTitle:0];
    [v8 setIsSharedVariant:1];
    v16 = v8;
    [v16 setCurrentTip:a1];
    v17 = objc_allocWithZone(UIBarButtonItem);
    v18 = _bridgeAnythingToObjectiveC<A>(_:)();

    v19 = [v17 initWithBarButtonSystemItem:0 target:v18 action:"doneTapped:"];
    swift_unknownObjectRelease();
    v20 = [v16 navigationItem];
    [v20 setRightBarButtonItem:v19];

    v21 = [v16 navigationItem];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v22 = String._bridgeToObjectiveC()();

    [v21 setTitle:v22];

    return v16;
  }

  v10 = a1;
  result = [v8 tips];
  if (result)
  {
    v12 = result;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = v13;
    v14 = v10;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (v24)
    {
      v15.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v15.super.isa = 0;
    }

    [v8 setTips:v15.super.isa];

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_1000240E0(char *a1, uint64_t a2, void *a3, const char **a4)
{
  v6 = &a1[OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed];
  *v6 = 0;
  *(v6 + 1) = 0;
  v11.receiver = a1;
  v11.super_class = type metadata accessor for TPSSharedTipViewController();
  v7 = *a4;
  v8 = a3;
  v9 = objc_msgSendSuper2(&v11, v7, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_100024168()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSSharedTipViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_1000241D4(_BOOL8 a1)
{
  v2 = v1;
  v4 = [v1 assetFileInfoManager];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 assets];
    if (v6 && (v7 = v6, v8 = [v6 videoId], v7, v8) || (v9 = objc_msgSend(v2, "assets")) != 0 && (v10 = v9, v8 = objc_msgSend(v9, "posterId"), v10, v8))
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = String._bridgeToObjectiveC()();
      v12 = [v5 fileInfoIdentifierWithMainIdentifier:v11 userInterfaceStyle:a1];

      if (v12)
      {

        v5 = v12;
      }

      else
      {
        v13 = String._bridgeToObjectiveC()();

        v14 = [v5 fileInfoIdentifierWithMainIdentifier:v13 userInterfaceStyle:!a1];

        if (v14)
        {

          a1 = !a1;
        }
      }
    }
  }

  return a1;
}

unint64_t sub_100024368()
{
  result = qword_1000B30C8;
  if (!qword_1000B30C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B30C8);
  }

  return result;
}

uint64_t sub_1000243B4(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B2E90, &unk_100077E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100024460()
{
  if (![objc_opt_self() isPhoneUI])
  {
    return 0;
  }

  v1 = [v0 viewControllers];
  sub_10001F758();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_17:

    return 0;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_7:
    v5 = v4;

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 && (v7 = [v6 topViewController]) != 0)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9 && (v10 = [v9 topViewController]) != 0)
      {
        v11 = v10;
        type metadata accessor for TipListViewController();
        if ([v11 isKindOfClass:swift_getObjCClassFromMetadata()])
        {
          v12 = [v0 viewControllerForColumn:1];

          return v12;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

id sub_100024794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSSplitViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100024904()
{
  sub_100025B08();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    v1 = [v5 identifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {
    v2 = [v5 title];

    if (v2)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v0;
  return static Published.subscript.setter();
}

uint64_t sub_100024AB0(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  return v4;
}

uint64_t sub_100024B40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100024BC0(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_100024CE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100024DD8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (a2)
  {
    v6 = sub_100026408(a1, a2);

    sub_100025098(v6);
  }
}

double sub_100024EC8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  return result;
}

void sub_100024F48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  sub_100024DD8(v2, v3);
}

id sub_100024F9C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  return v4;
}

void sub_100025098(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1;
  v3 = a1;
  v4 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7)
  {
    v5 = *&v4[OBJC_IVAR___TPSChecklistViewModel_actionHandler];
    if (v5)
    {
      v6 = *&v4[OBJC_IVAR___TPSChecklistViewModel_actionHandler + 8];

      v5(v7);

      sub_10001E970(v5);
      v3 = v7;
    }

    else
    {
    }
  }
}

Class sub_100025200(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  if (v5)
  {
    sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t sub_1000252E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100025360(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_100025410@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10002548C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_100025504()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void *sub_1000255F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1)
  {
    sub_100028994(v1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1)
  {
    sub_100028994(v1);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100025978()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1)
  {

    return 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return 0;
  }
}

void sub_100025B08()
{
  v2 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v72[0])
  {
    v3 = *(v0 + OBJC_IVAR___TPSChecklistViewModel_appController);
    v4 = [v72[0] identifier];
    if (!v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1 = v5;
      v4 = String._bridgeToObjectiveC()();
    }

    v6 = [v3 tipsForCollectionIdentifier:v4];

    if (v6)
    {
      v67 = v72[0];
      v68 = v2;
      sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = sub_100046590(_swiftEmptyArrayStorage);
      v73 = _swiftEmptyArrayStorage;
      v74 = _swiftEmptyArrayStorage;
      if (v7 >> 62)
      {
        goto LABEL_40;
      }

      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        while (v9 >= 1)
        {
          v10 = 0;
          v1 = 0;
          v70 = v7;
          v71 = v7 & 0xC000000000000001;
          v69 = v9;
          while (1)
          {
            v11 = v71 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v7 + 8 * v10 + 32);
            v12 = v11;
            v13 = [v11 checklistContent];
            if (v13)
            {
              break;
            }

LABEL_10:
            if (v9 == ++v10)
            {
              goto LABEL_41;
            }
          }

          if ([v12 contentStatus] == 1)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v15 = v72[0];
            if (v72[0])
            {
              v72[0] = v12;
              __chkstk_darwin(v14);
              v66 = v72;
              v16 = sub_100028744(sub_100029374, v65, v15);

              if ((v16 & 1) == 0)
              {
                type metadata accessor for TPSAnalyticsChecklistSessionController();
                v7 = static TPSAnalyticsChecklistSessionController.sharedInstance.getter();
                v17 = dispatch thunk of TPSAnalyticsChecklistSessionController.sessionTipsCompleted.modify();
                if (__OFADD__(*v18, 1))
                {
                  goto LABEL_39;
                }

                ++*v18;
                v17(v72, 0);
              }
            }

            v19 = v12;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v20 = v73;
          }

          else
          {
            v21 = v12;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v20 = v74;
          }

          if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v22 = [v12 identifier];
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72[0] = v8;
          v7 = v8;
          v28 = sub_1000452A8(v23, v25);
          v29 = v8[2];
          v30 = (v27 & 1) == 0;
          v31 = v29 + v30;
          if (!__OFADD__(v29, v30))
          {
            v32 = v27;
            if (v8[3] >= v31)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v8 = v72[0];
                if ((v27 & 1) == 0)
                {
                  goto LABEL_33;
                }
              }

              else
              {
                v7 = v72;
                sub_100046100();
                v8 = v72[0];
                if ((v32 & 1) == 0)
                {
                  goto LABEL_33;
                }
              }
            }

            else
            {
              sub_100045570(v31, isUniquelyReferenced_nonNull_native);
              v7 = v72[0];
              v33 = sub_1000452A8(v23, v25);
              if ((v32 & 1) != (v34 & 1))
              {
                goto LABEL_73;
              }

              v28 = v33;
              v8 = v72[0];
              if ((v32 & 1) == 0)
              {
LABEL_33:
                v8[(v28 >> 6) + 8] |= 1 << v28;
                v37 = (v8[6] + 16 * v28);
                *v37 = v23;
                v37[1] = v25;
                *(v8[7] + 8 * v28) = v12;
                v38 = v8[2];
                v39 = __OFADD__(v38, 1);
                v40 = v38 + 1;
                if (v39)
                {
                  goto LABEL_38;
                }

                v8[2] = v40;
                goto LABEL_35;
              }
            }

            v35 = v8[7];
            v36 = *(v35 + 8 * v28);
            *(v35 + 8 * v28) = v12;

LABEL_35:
            v9 = v69;
            v7 = v70;
            goto LABEL_10;
          }

          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v9 = _CocoaArrayWrapper.endIndex.getter();
          if (!v9)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
LABEL_58:
        v45 = _CocoaArrayWrapper.endIndex.getter();
        if (!v45)
        {
          goto LABEL_59;
        }

LABEL_44:
        if (v45 >= 1)
        {
          v46 = 0;
          v43 = _swiftEmptyArrayStorage;
          while (1)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v47 = *(v1 + 8 * v46 + 32);
            }

            v48 = v47;
            v49 = [v47 identifier];
            v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v52 = v51;

            if (v8[2])
            {
              v53 = sub_1000452A8(v50, v52);
              v55 = v54;

              if (v55)
              {
                v56 = *(v8[7] + 8 * v53);
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v57 = *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v43 = v72[0];
                goto LABEL_48;
              }
            }

            else
            {
            }

LABEL_48:
            if (v45 == ++v46)
            {
              goto LABEL_60;
            }
          }
        }

        __break(1u);
LABEL_73:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      else
      {
LABEL_41:

        __chkstk_darwin(v41);
        v42 = v68;
        v65[0] = v68;
        v65[1] = &v74;
        v66 = &v73;
        static Animation.default.getter();
        withAnimation<A>(_:_:)();

        v43 = sub_1000255F0();
        v44 = OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips;
        v1 = *(v42 + OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips);
        if (v1)
        {
          v71 = OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips;

          v72[0] = _swiftEmptyArrayStorage;
          if (v1 >> 62)
          {
            goto LABEL_58;
          }

          v45 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v45)
          {
            goto LABEL_44;
          }

LABEL_59:
          v43 = _swiftEmptyArrayStorage;
LABEL_60:

          v44 = v71;
        }

        v58 = v68;
        v59 = *(v68 + v44);
        *(v68 + v44) = v43;

        v60 = *(v58 + OBJC_IVAR___TPSChecklistViewModel_checkListSessionController);
        dispatch thunk of TPSAnalyticsChecklistSessionController.sessionStartSuggestedTipCount.getter();
        v61 = v74 >> 62;
        if (v62)
        {
          if (v61)
          {
            _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v63 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          dispatch thunk of TPSAnalyticsChecklistSessionController.sessionStartSuggestedTipCount.setter();
        }

        else
        {
          if (v61)
          {
            _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v64 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          dispatch thunk of TPSAnalyticsChecklistSessionController.sessionEndSuggestedTipsCount.setter();
        }

        sub_1000268CC();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100026278(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a2;
  if (!(*a2 >> 62))
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_3;
  }

  if (v5 < 0)
  {
    v7 = *a2;
  }

  v8 = a2;
  v9 = _CocoaArrayWrapper.endIndex.getter();
  a2 = v8;
  if (v9)
  {
LABEL_3:
    v6 = *a2;
  }

LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a1;
  static Published.subscript.setter();
  v11 = *a3;
  if (*a3 >> 62)
  {
    if (v11 < 0)
    {
      v13 = *a3;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    v12 = *a3;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v10;
  return static Published.subscript.setter();
}

uint64_t sub_100026408(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v37;
  v4 = &_swiftEmptyArrayStorage;
  if (v37)
  {
    v37 = &_swiftEmptyArrayStorage;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      v4 = (v3 & 0xC000000000000001);
      while (1)
      {
        if (v4)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v3 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v12 = [v9 identifier];
        v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        if (v2 == a1 && v14 == a2)
        {
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v16 & 1) == 0)
          {

            goto LABEL_8;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v8 = *(&_swiftEmptyArrayStorage + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_8:
        ++v7;
        if (v11 == i)
        {
          v4 = &_swiftEmptyArrayStorage;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

LABEL_24:

    if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_27;
      }
    }

    else if (*(&_swiftEmptyArrayStorage + 2))
    {
LABEL_27:
      if ((&_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        goto LABEL_54;
      }

      if (*(&_swiftEmptyArrayStorage + 2))
      {
        v17 = *(&_swiftEmptyArrayStorage + 4);
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_56;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v37;
  if (!v37)
  {
    return 0;
  }

  v37 = v4;
  v2 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_56:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (!v20)
    {
LABEL_57:
      v32 = &_swiftEmptyArrayStorage;
LABEL_58:

      if ((v32 & 0x8000000000000000) != 0 || (v32 & 0x4000000000000000) != 0)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
LABEL_61:
          if ((v32 & 0xC000000000000001) != 0)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*(v32 + 16))
            {
              __break(1u);
              return result;
            }

            v33 = *(v32 + 32);
          }

          v34 = v33;

          return v34;
        }
      }

      else if (*(v32 + 16))
      {
        goto LABEL_61;
      }

      return 0;
    }

    goto LABEL_36;
  }

  v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_57;
  }

LABEL_36:
  v21 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v21 >= *(v2 + 16))
      {
        goto LABEL_53;
      }

      v23 = *(v5 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    v26 = [v23 identifier];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (v27 == a1 && v29 == a2)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {

        goto LABEL_39;
      }
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v22 = v37[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_39:
    ++v21;
    if (v25 == v20)
    {
      v32 = v37;
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_30:
  v18 = v17;

  return v18;
}

void sub_1000268CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v10)
  {

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9)
  {

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = *&v0[OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips];
  if (!v1)
  {
    v4 = 0;
    goto LABEL_18;
  }

  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v6 = *&v0[OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }

LABEL_17:
    v4 = 0;
    v1 = 0;
    goto LABEL_18;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v2 = *(v1 + 32);
  }

  v3 = [v2 identifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = v5;

LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1)
  {
    v8 = sub_100026408(v4, v1);

    sub_100025098(v8);
  }
}

uint64_t sub_100026BB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v4;
  if (v4)
  {
    if (v4 >> 62)
    {
      goto LABEL_7;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      while ((v4 & 0xC000000000000001) == 0)
      {
        if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        __break(1u);
LABEL_7:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_8;
        }
      }

      goto LABEL_16;
    }

LABEL_8:
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v4;
  if (!v4)
  {
    return 0;
  }

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_18:

    return 0;
  }

LABEL_12:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    v2 = *(v0 + 32);
LABEL_15:
    v3 = v2;

    return v3;
  }

  __break(1u);
  return result;
}

id sub_100026DC8()
{
  v1 = v0;
  v2 = sub_10001B4A4(&qword_1000B3208, &qword_100078228);
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  __chkstk_darwin(v2);
  v53 = &v44 - v4;
  v5 = sub_10001B4A4(&qword_1000B3210, &unk_100078230);
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  __chkstk_darwin(v5);
  v50 = &v44 - v7;
  v8 = sub_10001B4A4(&qword_1000B3218, &qword_10007A0B0);
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  __chkstk_darwin(v8);
  v47 = &v44 - v10;
  v11 = sub_10001B4A4(&qword_1000B3220, &unk_100078240);
  v45 = *(v11 - 8);
  v46 = v11;
  v12 = *(v45 + 64);
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = sub_10001B4A4(&qword_1000B3228, &qword_100078930);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  v20 = sub_10001B4A4(&qword_1000B2D80, &qword_100078250);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v44 - v23;
  v25 = OBJC_IVAR___TPSChecklistViewModel_appController;
  type metadata accessor for TPSUIAppController();
  *&v0[v25] = static TPSUIAppController.shared.getter();
  v26 = OBJC_IVAR___TPSChecklistViewModel_checkListSessionController;
  type metadata accessor for TPSAnalyticsChecklistSessionController();
  *&v0[v26] = static TPSAnalyticsChecklistSessionController.sharedInstance.getter();
  v27 = OBJC_IVAR___TPSChecklistViewModel__appInBackground;
  LOBYTE(v57) = 0;
  Published.init(initialValue:)();
  v28 = *(v21 + 32);
  v28(&v1[v27], v24, v20);
  v29 = OBJC_IVAR___TPSChecklistViewModel__collection;
  v57 = 0;
  sub_10001B4A4(&qword_1000B3190, &unk_1000783D0);
  Published.init(initialValue:)();
  (*(v16 + 32))(&v1[v29], v19, v15);
  v30 = OBJC_IVAR___TPSChecklistViewModel__viewCollapsed;
  LOBYTE(v57) = 0;
  Published.init(initialValue:)();
  v28(&v1[v30], v24, v20);
  v31 = OBJC_IVAR___TPSChecklistViewModel__selectedTipIdentifier;
  v57 = 0;
  v58 = 0;
  sub_10001B4A4(&qword_1000B3390, &unk_100077F30);
  Published.init(initialValue:)();
  (*(v45 + 32))(&v1[v31], v14, v46);
  v32 = OBJC_IVAR___TPSChecklistViewModel__currentTip;
  v57 = 0;
  sub_10001B4A4(&qword_1000B31A8, &qword_100078BC0);
  v33 = v47;
  Published.init(initialValue:)();
  (*(v48 + 32))(&v1[v32], v33, v49);
  v34 = OBJC_IVAR___TPSChecklistViewModel__suggestedTips;
  v57 = 0;
  sub_10001B4A4(&qword_1000B31B8, &qword_100077F40);
  v35 = v50;
  Published.init(initialValue:)();
  v36 = v52;
  v37 = *(v51 + 32);
  v37(&v1[v34], v35, v52);
  v38 = OBJC_IVAR___TPSChecklistViewModel__completedTips;
  v57 = 0;
  Published.init(initialValue:)();
  v37(&v1[v38], v35, v36);
  v39 = OBJC_IVAR___TPSChecklistViewModel__collectionEntity;
  v57 = *aEmpty;
  v58 = unk_1000B4C18;
  v59 = qword_1000B4C20;
  v60 = unk_1000B4C28;

  v40 = v53;
  Published.init(initialValue:)();
  (*(v54 + 32))(&v1[v39], v40, v55);
  *&v1[OBJC_IVAR___TPSChecklistViewModel_currentDisplayTips] = 0;
  v41 = &v1[OBJC_IVAR___TPSChecklistViewModel_actionHandler];
  v42 = type metadata accessor for ChecklistViewModel();
  *v41 = 0;
  *(v41 + 1) = 0;
  v56.receiver = v1;
  v56.super_class = v42;
  return objc_msgSendSuper2(&v56, "init");
}

id sub_1000273E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChecklistViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ChecklistViewModel()
{
  result = qword_1000B3170;
  if (!qword_1000B3170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000276FC()
{
  sub_1000279AC(319, &qword_1000B3180);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_100027958(319, &qword_1000B3188, &qword_1000B3190, &unk_1000783D0);
    if (v4 <= 0x3F)
    {
      v13 = *(v3 - 8) + 64;
      sub_100027958(319, &qword_1000B3198, &qword_1000B3390, &unk_100077F30);
      if (v6 <= 0x3F)
      {
        v14 = *(v5 - 8) + 64;
        sub_100027958(319, &qword_1000B31A0, &qword_1000B31A8, &qword_100078BC0);
        if (v8 <= 0x3F)
        {
          v15 = *(v7 - 8) + 64;
          sub_100027958(319, &qword_1000B31B0, &qword_1000B31B8, &qword_100077F40);
          if (v10 <= 0x3F)
          {
            v16 = *(v9 - 8) + 64;
            sub_1000279AC(319, &qword_1000B31C0);
            if (v12 <= 0x3F)
            {
              v17 = *(v11 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100027958(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10001E860(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000279AC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000279F8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChecklistViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100027A38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = [a1 checklistContent];
  if (v8 && (v9 = v8, v10 = [v8 assets], v9, v10))
  {
    v11 = [v10 baseURL];

    if (v11)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = type metadata accessor for URL();
      (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    }

    else
    {
      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    return sub_10002920C(v7, a2);
  }

  else
  {
    v13 = type metadata accessor for URL();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t sub_100027E1C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = [a1 checklistContent];
  if (v8 && (v9 = v8, v10 = [v8 subtitle], v9, v10))
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  else
  {
    v13 = [v2 titleFor:a1];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    [v2 isCompletedFor:a1];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_10001B4A4(&qword_1000B31E8, &unk_100078060);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100077E80;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_1000291B8();
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    v18 = String.init(format:_:)();

    return v18;
  }
}

id *sub_10002811C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100028B24(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v7 = *v3;

      sub_10001B4A4(&qword_1000B31D0, &qword_100078048);
      sub_10001B4A4(&qword_1000B31C8, &qword_100078040);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_100028B24((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = (v5 + 1);
      _swiftEmptyArrayStorage[v5 + 4] = v8;
      ++v3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

id *sub_10002824C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100028B24(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v9 = *i;

      sub_10001B4A4(&qword_1000B31D8, &qword_100078050);
      sub_10001B4A4(&qword_1000B31C8, &qword_100078040);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_100028B24((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = (v6 + 1);
      _swiftEmptyArrayStorage[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_100028528@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 checklistContent];
  if (v3 && (v4 = v3, v5 = [v3 assets], v4, v5))
  {
    v6 = [v5 symbolSize];

    v7 = &enum case for Image.Scale.medium(_:);
    if (v6)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v11 = v8 == 0x656772616CLL && v10 == 0xE500000000000000;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = &enum case for Image.Scale.large(_:);
      }

      else if (v8 == 0x6C6C616D73 && v10 == 0xE500000000000000)
      {

        v7 = &enum case for Image.Scale.small(_:);
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          v7 = &enum case for Image.Scale.small(_:);
        }
      }
    }
  }

  else
  {
    v7 = &enum case for Image.Scale.medium(_:);
  }

  v12 = *v7;
  v13 = type metadata accessor for Image.Scale();
  v14 = *(*(v13 - 8) + 104);

  return v14(a2, v12, v13);
}

uint64_t sub_100028744(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

double sub_10002886C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1000288F8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return static Published.subscript.setter();
}

uint64_t sub_100028994(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100028A84(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100028E2C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100028A84(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

id *sub_100028B24(id *a1, int64_t a2, char a3)
{
  result = sub_100028B64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_100028B44(id *a1, int64_t a2, char a3)
{
  result = sub_100028C98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_100028B64(id *result, int64_t a2, char a3, id *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001B4A4(&qword_1000B31E0, &qword_100078058);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10001B4A4(&qword_1000B31C8, &qword_100078040);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100028C98(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10001B4A4(&unk_1000B3230, &qword_100078258);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*sub_100028DA4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100028E24;
  }

  __break(1u);
  return result;
}

uint64_t sub_100028E2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000293DC();
          for (i = 0; i != v6; ++i)
          {
            sub_10001B4A4(&qword_1000B31F8, &qword_1000790F0);
            v9 = sub_100028DA4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100028FBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_100029020(void *a1)
{
  v2 = [a1 checklistContent];
  if (v2 && (v3 = v2, v4 = [v2 bodyContent], v3, v4))
  {
    sub_10001B4A4(&qword_1000B31D8, &qword_100078050);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_10002824C(v5);

    if (!v6)
    {
      sub_10001B4A4(&qword_1000B31E0, &qword_100078058);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100077E80;
      *(v6 + 32) = sub_100046694(_swiftEmptyArrayStorage);
    }
  }

  else
  {
    v7 = [a1 checklistContent];
    if (!v7 || (v8 = v7, v9 = [v7 bodyText], v8, !v9))
    {
      v9 = 0;
    }

    v10 = [objc_opt_self() textContentWithText:v9];

    sub_10001B4A4(&qword_1000B31D0, &qword_100078048);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = sub_10002811C(v11);
  }

  return v6;
}

unint64_t sub_1000291B8()
{
  result = qword_1000B31F0;
  if (!qword_1000B31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B31F0);
  }

  return result;
}

uint64_t sub_10002920C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000292B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  sub_100024DD8(v2, v3);
}

void sub_10002931C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100025098(v2);
}

uint64_t sub_100029374(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_1000293DC()
{
  result = qword_1000B3200;
  if (!qword_1000B3200)
  {
    sub_10001E860(&qword_1000B31F8, &qword_1000790F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3200);
  }

  return result;
}

uint64_t sub_100029448()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029488(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000294A0(void *a1)
{
  v2 = [a1 checklistContent];
  if (v2 && (v3 = v2, v4 = [v2 assets], v3, v4) && (v5 = objc_msgSend(v4, "symbolColor"), v4, v5))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10001AC14(0, &qword_1000B2DA0, UIColor_ptr);
    static UIColor.colorForSystemColorString(_:)();

    return Color.init(_:)();
  }

  else
  {
    v7 = [a1 checklistContent];
    if (v7 && (v8 = v7, v9 = [v7 assets], v8, v9) && (v10 = objc_msgSend(v9, "symbolId"), v9, v10))
    {

      return static Color.black.getter();
    }

    else
    {

      return static Color.yellow.getter();
    }
  }
}

void sub_100029A80(uint64_t a1)
{
  v29 = type metadata accessor for URL();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v29);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10001AC14(0, &qword_1000B32D8, UIOpenURLContext_ptr);
    sub_10002AB3C(&qword_1000B32E0, &qword_1000B32D8, UIOpenURLContext_ptr);
    Set.Iterator.init(_cocoa:)();
    a1 = v33;
    v6 = v34;
    v8 = v35;
    v7 = v36;
    v9 = v37;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v7 = 0;
  }

  v13 = (v8 + 64) >> 6;
  v27[1] = v8;
  v28 = (v2 + 8);
  while (a1 < 0)
  {
    v19 = __CocoaSet.Iterator.next()();
    if (!v19 || (v31 = v19, sub_10001AC14(0, &qword_1000B32D8, UIOpenURLContext_ptr), swift_dynamicCast(), v18 = v32, v16 = v7, v17 = v9, !v32))
    {
LABEL_21:
      sub_100029E94();
      return;
    }

LABEL_19:
    v20 = *(v30 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
    if (v20)
    {
      v21 = v20;
      v22 = [v18 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = *&v21[OBJC_IVAR___TPSAppCoordinator_mainViewController];
      URL._bridgeToObjectiveC()(v24);
      v26 = v25;
      [v23 openURL:v25];

      (*v28)(v5, v29);
    }

    else
    {
    }

    v7 = v16;
    v9 = v17;
  }

  v14 = v7;
  v15 = v9;
  v16 = v7;
  if (v9)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_21;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_100029DF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100029E9C(void *a1)
{
  v2 = [a1 URLContexts];
  sub_10001AC14(0, &qword_1000B32D8, UIOpenURLContext_ptr);
  sub_10002AB3C(&qword_1000B32E0, &qword_1000B32D8, UIOpenURLContext_ptr);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *(v3 + 16);
  }

  if (v4)
  {
    return 0;
  }

  v5 = [a1 userActivities];
  sub_10001AC14(0, &qword_1000B32E8, NSUserActivity_ptr);
  sub_10002AB3C(&unk_1000B32F0, &qword_1000B32E8, NSUserActivity_ptr);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = (v6 & 0xC000000000000001) != 0 ? __CocoaSet.count.getter() : *(v6 + 16);

  if (v7)
  {
    return 0;
  }

  v8 = [a1 shortcutItem];
  if (v8 || (v8 = [a1 sourceApplication]) != 0 || (v8 = objc_msgSend(a1, "handoffUserActivityType")) != 0 || (v8 = objc_msgSend(a1, "notificationResponse")) != 0 || (v8 = objc_msgSend(a1, "cloudKitShareMetadata")) != 0)
  {

    return 0;
  }

  return 1;
}

void sub_10002A09C(void *a1, void *a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = objc_allocWithZone(UIWindow);
  v50 = a1;
  v9 = [v8 initWithWindowScene:v7];
  v10 = [objc_allocWithZone(TPSMainViewController) init];
  [v9 setRootViewController:v10];
  v11 = type metadata accessor for TPSAppCoordinator();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR___TPSAppCoordinator_mainViewController] = v10;
  v54.receiver = v12;
  v54.super_class = v11;
  v49 = v10;
  v13 = objc_msgSendSuper2(&v54, "init");
  v14 = *(v3 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  v52 = OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator;
  *(v3 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator) = v13;

  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 delegate];

  if (v16)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      [v17 setAppCoordinator:*(v3 + v52)];
    }

    swift_unknownObjectRelease();
  }

  v18 = *(v3 + OBJC_IVAR____TtC4Tips13SceneDelegate_window);
  *(v3 + OBJC_IVAR____TtC4Tips13SceneDelegate_window) = v9;
  v19 = v9;

  v48 = v19;
  [v19 makeKeyAndVisible];
  v51 = a2;
  v20 = [a2 userActivities];
  sub_10001AC14(0, &qword_1000B32E8, NSUserActivity_ptr);
  sub_10002AB3C(&unk_1000B32F0, &qword_1000B32E8, NSUserActivity_ptr);
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v21 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v21 = v55;
    v22 = v56;
    v23 = v57;
    v24 = v58;
    v25 = v59;
  }

  else
  {
    v24 = 0;
    v26 = -1 << *(v21 + 32);
    v22 = v21 + 56;
    v23 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v21 + 56);
  }

  v29 = (v23 + 64) >> 6;
  while (v21 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v34 = v53, v32 = v24, v33 = v25, !v53))
    {
LABEL_25:
      sub_100029E94();
      v38 = [v51 shortcutItem];
      if (v38)
      {
        v39 = v38;
        v40 = *(v3 + v52);
        if (v40)
        {
          v41 = v40;
          v42 = [v39 type];
          if (!v42)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = String._bridgeToObjectiveC()();
          }

          v43 = *&v41[OBJC_IVAR___TPSAppCoordinator_mainViewController];
          [v43 handleTipsURL:v42];

          v39 = v42;
        }
      }

      v44 = [v51 URLContexts];
      sub_10001AC14(0, &qword_1000B32D8, UIOpenURLContext_ptr);
      sub_10002AB3C(&qword_1000B32E0, &qword_1000B32D8, UIOpenURLContext_ptr);
      v45 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100029A80(v45);

      v46 = *(v3 + v52);
      if (v46)
      {
        v47 = *(v46 + OBJC_IVAR___TPSAppCoordinator_mainViewController);
        [v47 setAccessType:sub_100029E9C(v51) & 1];
      }

      return;
    }

LABEL_23:
    v35 = *(v3 + v52);
    if (v35)
    {
      v36 = *&v35[OBJC_IVAR___TPSAppCoordinator_mainViewController];
      v37 = v35;
      [v36 handleUserActivity:v34];
    }

    v24 = v32;
    v25 = v33;
  }

  v30 = v24;
  v31 = v25;
  v32 = v24;
  if (v25)
  {
LABEL_19:
    v33 = (v31 - 1) & v31;
    v34 = *(*(v21 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
    if (!v34)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {
      goto LABEL_25;
    }

    v31 = *(v22 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_10002A5EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator;
  v5 = *(a2 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v5)
  {
    v8 = v5;
    v9 = [a1 type];
    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    v10 = *&v8[OBJC_IVAR___TPSAppCoordinator_mainViewController];
    [v10 handleTipsURL:v9];

    v11 = *(a2 + v4);
    if (v11)
    {
      [*(v11 + OBJC_IVAR___TPSAppCoordinator_mainViewController) setAccessType:0];
    }
  }

  v12 = *(a3 + 16);

  return v12(a3, 1);
}

id sub_10002A6F0(id result)
{
  v2 = OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator;
  v3 = *(v1 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v3)
  {
    result = [*(v3 + OBJC_IVAR___TPSAppCoordinator_mainViewController) handleUserActivity:result];
    v4 = *(v1 + v2);
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR___TPSAppCoordinator_mainViewController);

      return [v5 setAccessType:0];
    }
  }

  return result;
}

void sub_10002A780()
{
  v1 = type metadata accessor for TipsLog();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TipsLog.default.getter();
  logDebug(_:_:)();
  (*(v2 + 8))(v5, v1);
  v6 = [objc_opt_self() currentNotificationCenter];
  [v6 setBadgeCount:0 withCompletionHandler:0];

  v7 = OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator;
  v8 = *(v0 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v8)
  {
    [*(v8 + OBJC_IVAR___TPSAppCoordinator_mainViewController) applicationWillEnterForeground];
    v9 = *(v0 + v7);
    if (v9)
    {
      [*(v9 + OBJC_IVAR___TPSAppCoordinator_mainViewController) setAccessType:2];
    }
  }
}

void sub_10002A8E8()
{
  v1 = type metadata accessor for TipsLog();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TipsLog.default.getter();
  logDebug(_:_:)();
  (*(v2 + 8))(v5, v1);
  v6 = [objc_opt_self() currentNotificationCenter];
  [v6 setBadgeCount:0 withCompletionHandler:0];

  v7 = *(v0 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v7)
  {
    [*(v7 + OBJC_IVAR___TPSAppCoordinator_mainViewController) applicationDidEnterBackground];
  }
}

id sub_10002AA30()
{
  v1 = type metadata accessor for TipsLog();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TipsLog.default.getter();
  logDebug(_:_:)();
  result = (*(v2 + 8))(v5, v1);
  v7 = *(v0 + OBJC_IVAR____TtC4Tips13SceneDelegate_appCoordinator);
  if (v7)
  {
    return [*(v7 + OBJC_IVAR___TPSAppCoordinator_mainViewController) applicationWillTerminate];
  }

  return result;
}

uint64_t sub_10002AB3C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001AC14(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002AC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10001B4A4(&qword_1000B3368, &qword_100078278);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v32 - v10;
  v12 = type metadata accessor for UIButton.Configuration.Size();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UIButton.Configuration();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v17 + 16);
  v34(v20, a3, v16);
  if (([v4 isEnabled] & 1) == 0)
  {
    v32[0] = a1;
    v21 = UIButton.Configuration.baseForegroundColor.getter();
    v32[1] = a2;
    v33 = v4;
    if (v21)
    {
      v22 = v21;
      v23 = [v21 colorWithAlphaComponent:0.3];
    }

    UIButton.Configuration.baseForegroundColor.setter();
    v24 = objc_opt_self();
    v25 = [v24 systemGray6Color];
    v26 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.strokeColor.setter();
    v26(v37, 0);
    v27 = [v24 clearColor];
    v28 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v28(v37, 0);
    v4 = v33;
  }

  UIButton.Configuration.title.setter();
  (*(v35 + 104))(v15, enum case for UIButton.Configuration.Size.medium(_:), v36);
  UIButton.Configuration.buttonSize.setter();
  v34(v11, v20, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  UIButton.configuration.setter();
  v29 = [v4 titleLabel];
  if (v29)
  {
    v30 = v29;
    [v29 setAdjustsFontForContentSizeCategory:1];
  }

  [v4 setNeedsUpdateConfiguration];
  return (*(v17 + 8))(v20, v16);
}

void sub_10002B164()
{
  v1 = v0;
  v2 = sub_10001B4A4(&qword_1000B3368, &qword_100078278);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - v11;
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15];

  if (v16)
  {
    v22 = [objc_opt_self() configurationWithScale:1];
    UIButton.configuration.getter();
    v17 = type metadata accessor for UIButton.Configuration();
    v18 = *(*(v17 - 8) + 48);
    if (v18(v14, 1, v17))
    {
      sub_10002BB40(v14, v6);
      UIButton.configuration.setter();
      sub_10002BBB0(v14);
    }

    else
    {
      UIButton.Configuration.imagePlacement.setter();
      UIButton.configuration.setter();
    }

    UIButton.configuration.getter();
    if (v18(v12, 1, v17))
    {
      sub_10002BB40(v12, v6);
      UIButton.configuration.setter();
      sub_10002BBB0(v12);
    }

    else
    {
      UIButton.Configuration.imagePadding.setter();
      UIButton.configuration.setter();
    }

    UIButton.configuration.getter();
    if (v18(v9, 1, v17))
    {
      sub_10002BB40(v9, v6);
      UIButton.configuration.setter();
      sub_10002BBB0(v9);
      v19 = v22;
    }

    else
    {
      v19 = v22;
      v20 = [v16 imageByApplyingSymbolConfiguration:v22];
      UIButton.Configuration.image.setter();
      UIButton.configuration.setter();
    }

    [v1 setNeedsUpdateConfiguration];
  }
}

void sub_10002B4DC()
{
  v1 = v0;
  v2 = sub_10001B4A4(&qword_1000B3360, &qword_100078270);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_10001B4A4(&qword_1000B3368, &qword_100078278);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = objc_opt_self();
  [v13 buttonFontSize];
  v14 = [v13 systemFontOfSize:? weight:?];
  v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
  v16 = [v15 scaledFontForFont:v14];

  UIButton.configuration.getter();
  v17 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v17 - 8) + 48))(v12, 1, v17))
  {
    sub_10002BB40(v12, v10);
    UIButton.configuration.setter();
    sub_10002BBB0(v12);
  }

  else
  {
    *(swift_allocObject() + 16) = v16;
    v18 = v16;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v19 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    UIButton.configuration.setter();
  }

  [v1 onConfigurationUpdated];
}

uint64_t sub_10002B784@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_10002BC58();
  v7 = a2;
  return AttributeContainer.subscript.setter();
}

id sub_10002B8C0()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();

  static UIButton.Configuration.glass()();
  isa = UIButton.Configuration._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);
  [v1 configureWithTitle:v11 preferredConfiguration:isa];

  v13 = String._bridgeToObjectiveC()();
  [v1 configureImageWithSymbolName:v13 padding:5.0];

  return [v1 configureMediumFontStyle];
}

uint64_t sub_10002BB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B3368, &qword_100078278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BBB0(uint64_t a1)
{
  v2 = sub_10001B4A4(&qword_1000B3368, &qword_100078278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002BC18()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10002BC58()
{
  result = qword_1000B3370;
  if (!qword_1000B3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B3370);
  }

  return result;
}

void sub_10002BEE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TipsLog();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TipsLog.default.getter();
  aBlock = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  aBlock = 0xD00000000000001CLL;
  v16 = 0x800000010008BEE0;
  v21 = a1;
  v22 = a2;

  sub_10001B4A4(&qword_1000B3390, &unk_100077F30);
  v11._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v11);

  log(_:_:)();

  (*(v7 + 8))(v10, v6);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v12;
  v19 = sub_10002D7D8;
  v20 = v13;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_10002086C;
  v18 = &unk_1000A3880;
  v14 = _Block_copy(&aBlock);

  [v3 dismissViewControllerAnimated:1 completion:v14];
  _Block_release(v14);
}

uint64_t sub_10002C130(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001B4A4(&qword_1000B3398, &qword_100078280);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  if (a2)
  {

    SupportFlowIdentifier.init(rawValue:)();
  }

  else
  {
    v10 = type metadata accessor for SupportFlowIdentifier();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  sub_10001F808(v9, v7, &qword_1000B3398, &qword_100078280);
  v11 = objc_allocWithZone(type metadata accessor for SupportFlowViewController());
  v12 = SupportFlowViewController.init(flowIdentifier:showsSearchBar:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong presentViewController:v12 animated:1 completion:0];

    v12 = v14;
  }

  return sub_10001F870(v9, &qword_1000B3398, &qword_100078280);
}

void sub_10002C354(uint64_t a1)
{
  v2 = type metadata accessor for SearchResult.Item.Value();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for SearchResult.Item.Value.topic(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_10002C7DC();
LABEL_7:

      return;
    }

LABEL_8:

    return;
  }

  if (v7 == enum case for SearchResult.Item.Value.tip(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v10 = v11;
      sub_10002C660(v8);
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (v7 == enum case for SearchResult.Item.Value.supportArticle(_:))
  {
    (*(v3 + 96))(v6, v2);
    v12 = *v6;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      SupportArticle.supportSiteURLString.getter();
      if (v15)
      {
        sub_10002CA5C();
      }
    }
  }

  else if (v7 == enum case for SearchResult.Item.Value.supportFlow(_:))
  {
    (*(v3 + 96))(v6, v2);
    v10 = *v6;
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v8 = [v10 identifier];
      if (!v8)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = String._bridgeToObjectiveC()();
      }

      [v17 displaySupportFlowWithIdentifier:v8];

      goto LABEL_7;
    }
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }
}

void sub_10002C660(void *a1)
{
  v3 = [v1 appController];
  v4 = [objc_allocWithZone(TPSTipsByCollectionViewController) initWithAppController:v3];

  if (v4)
  {
    v8 = v4;
    [v8 setDelegate:v1];
    [v8 setShouldDisplayNavigationTitle:1];

    v5 = [a1 identifier];
    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String._bridgeToObjectiveC()();
    }

    [v8 updateWithCollectionID:0 tipID:v5];

    v6 = [v1 collectionListViewController];
    v7 = [v6 navigationController];

    if (v7)
    {
      [v7 pushViewController:v8 animated:1];
    }
  }
}

void sub_10002C7DC()
{
  dispatch thunk of UserGuideTopic.productId.getter();
  v1 = String._bridgeToObjectiveC()();

  dispatch thunk of UserGuideTopic.topicId.getter();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();

    dispatch thunk of UserGuideTopic.version.getter();
    if (v4)
    {
LABEL_3:
      v6 = String._bridgeToObjectiveC()();

      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    dispatch thunk of UserGuideTopic.version.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  [v0 displayUserGuideWithIdentifier:v1 topicId:v3 version:v6 platformIndependent:1 prefersLandingPage:1 referrer:0];
}

void sub_10002C8F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    URL._bridgeToObjectiveC()(v1);
    v4 = v3;
    [v2 tipsViewControllerHandleSupportArticleURL:v3];
  }
}

uint64_t sub_10002C99C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = a1;
  v9 = [v8 collectionListViewController];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v11 = &v9[*a3];
  v12 = *v11;
  v13 = *(v11 + 1);
  *v11 = a4;
  *(v11 + 1) = v10;

  a5(v12, v13);
}

uint64_t sub_10002CA5C()
{
  v1 = v0;
  v2 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  URL.init(string:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10001F870(v5, &unk_1000B3380, &qword_100079940);
  }

  URL.appendingSupportArticleQueryParam()();
  v15 = *(v7 + 8);
  v15(v5, v6);
  (*(v7 + 32))(v13, v11, v6);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  [v1 presentURL:v17 isModalInPresentation:1];

  return (v15)(v13, v6);
}

void TPSMainViewController.presentURL(_:isModalInPresentation:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(SFSafariViewControllerConfiguration) init];
  v6 = v5;
  if (a2)
  {
    [v5 _setPerformingAccountSecurityUpgrade:1];
  }

  v7 = objc_allocWithZone(SFSafariViewController);
  v8 = v6;
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = [v7 initWithURL:v10 configuration:v8];

  [v12 setModalPresentationStyle:1];
  [v3 presentViewController:v12 animated:1 completion:0];
}

void TPSMainViewController.tipsViewControllerHandleSupportArticleURL(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F808(a1, v7, &unk_1000B3380, &qword_100079940);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    URL.appendingSupportArticleQueryParam()();
    v13 = *(v9 + 8);
    v13(v7, v8);
    URL._bridgeToObjectiveC()(v14);
    v16 = v15;
    v13(v12, v8);
    [v2 presentURL:v16 isModalInPresentation:1];
  }
}

uint64_t sub_10002D2C0(uint64_t a1)
{
  v3 = sub_10001B4A4(&qword_1000B33A8, &qword_100078288);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v31[-v5];
  v7 = type metadata accessor for SearchResult.Item.Value();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v31[-v13];
  sub_10001F808(a1, v31, &qword_1000B2E90, &unk_100077E50);
  if (!v32)
  {
    sub_10001F870(v31, &qword_1000B2E90, &unk_100077E50);
    (*(v8 + 56))(v6, 1, 1, v7);
    return sub_10001F870(v6, &qword_1000B33A8, &qword_100078288);
  }

  v15 = swift_dynamicCast();
  (*(v8 + 56))(v6, v15 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10001F870(v6, &qword_1000B33A8, &qword_100078288);
  }

  (*(v8 + 32))(v14, v6, v7);
  (*(v8 + 16))(v12, v14, v7);
  v16 = (*(v8 + 88))(v12, v7);
  if (v16 == enum case for SearchResult.Item.Value.topic(_:))
  {
    v17 = v1;
    (*(v8 + 96))(v12, v7);
    v18 = *v12;
    dispatch thunk of UserGuideTopic.productId.getter();
    v19 = String._bridgeToObjectiveC()();

    dispatch thunk of UserGuideTopic.topicId.getter();
    if (v20)
    {
      v21 = String._bridgeToObjectiveC()();

      dispatch thunk of UserGuideTopic.version.getter();
      if (v22)
      {
LABEL_6:
        v23 = String._bridgeToObjectiveC()();

LABEL_18:
        [v17 displayUserGuideWithIdentifier:v19 topicId:v21 version:v23 platformIndependent:1 prefersLandingPage:1 referrer:0];

        return (*(v8 + 8))(v14, v7);
      }
    }

    else
    {
      v21 = 0;
      dispatch thunk of UserGuideTopic.version.getter();
      if (v29)
      {
        goto LABEL_6;
      }
    }

    v23 = 0;
    goto LABEL_18;
  }

  if (v16 == enum case for SearchResult.Item.Value.tip(_:))
  {
    (*(v8 + 96))(v12, v7);
    v25 = *v12;
    v26 = [v25 identifier];
    if (!v26)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = String._bridgeToObjectiveC()();
    }

    [v1 showTipWithID:v26 launchType:TPSAnalyticsLaunchTypeSearchResult];
  }

  else
  {
    if (v16 != enum case for SearchResult.Item.Value.supportArticle(_:))
    {
      v30 = *(v8 + 8);
      v30(v14, v7);
      return v30(v12, v7);
    }

    (*(v8 + 96))(v12, v7);
    v27 = *v12;
    SupportArticle.supportSiteURLString.getter();
    if (v28)
    {
      sub_10002CA5C();
    }

    else
    {
    }
  }

  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_10002D750()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D798()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002D7E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002D7FC()
{
  result = qword_1000B33A0;
  if (!qword_1000B33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B33A0);
  }

  return result;
}

void sub_10002D850(char *a1, char a2)
{
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___CollectionListViewModel_colorScheme;
  swift_beginAccess();
  v11 = *(v6 + 16);
  v11(v9, &v2[v10], v5);
  v12 = static ColorScheme.== infix(_:_:)();
  (*(v6 + 8))(v9, v5);
  if (v12 & 1) == 0 || (a2)
  {
    v11(v9, a1, v5);
    swift_beginAccess();
    (*(v6 + 40))(&v2[v10], v9, v5);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v13 = v16;
    if (v16)
    {
      if (*&v2[OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel])
      {
        v14 = *&v2[OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel];

        v15 = [v2 assetsInfoFor:v13];
        dispatch thunk of DocumentAssetViewModel.updateWithTipAssetInfo(_:shouldReload:)();
      }
    }
  }
}

uint64_t sub_10002DAC4(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_10002DB44(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_10002DC34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10002DCB0(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3;
  static Published.subscript.setter();
  return sub_10002DE6C();
}

void sub_10002DDA0(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.setter();
  sub_10002DE6C();
}

uint64_t sub_10002DE6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  return static Published.subscript.setter();
}

uint64_t sub_10002E098(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9)
  {
    v6 = *(v2 + OBJC_IVAR___CollectionListViewModel_actionHandler);
    if (v6)
    {
      v7 = *(v2 + OBJC_IVAR___CollectionListViewModel_actionHandler + 8);

      v6();
      sub_10001E970(v6);
    }

    if (a2 && (v8 == a1 && v9 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();
    }
  }

  return result;
}

uint64_t sub_10002E288(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  static Published.subscript.setter();
  sub_10002E098(v7, v8);
}

uint64_t sub_10002E43C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v15)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v14 >> 62)
    {
LABEL_24:
      v13 = v14 & 0xFFFFFFFFFFFFFF8;
      v2 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = v14 & 0xFFFFFFFFFFFFFF8;
      v2 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = 0;
    while (1)
    {
      if (v2 == v3)
      {
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v13 + 16))
        {
          goto LABEL_23;
        }

        v4 = *(v14 + 8 * v3 + 32);
      }

      v5 = v4;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v6 = [v4 identifier];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (v7 == v14 && v15 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v3;
      if (v11)
      {
        goto LABEL_19;
      }
    }

LABEL_19:

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v0;
    static Published.subscript.setter();
    (sub_10002E098)();
  }

  return result;
}

uint64_t sub_10002E6E8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4;
  static Published.subscript.setter();
  return sub_10002E43C();
}

id sub_10002E788(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  static Published.subscript.getter();

  if (v5)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_10002E850()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_10002E9FC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10002EA78(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v2;

  v5 = v4;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5;
    static Published.subscript.setter();
    return sub_10002E43C();
  }

  return result;
}

void sub_10002ECBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  if (v2)
  {
    v0 = v2;
    v1 = v2;
    static Published.subscript.setter();
    sub_100024904();
  }

  else
  {
    v1 = 0;
    static Published.subscript.setter();
    sub_100024904();
  }
}

void sub_10002EE30(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v3;
  static Published.subscript.setter();
  sub_10002ECBC();
}

uint64_t sub_10002EF40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002F028@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10002F0A8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10002F15C(void *a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a3;
  v6 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_10002F1F4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

Class sub_10002F2E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a1;
  static Published.subscript.getter();

  sub_10001AC14(0, a5, a6);
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

uint64_t sub_10002F3E4(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  sub_10001AC14(0, a4, a5);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  return static Published.subscript.setter();
}

uint64_t sub_10002F614(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_10002F6BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
    v0 = static NSObject.== infix(_:_:)();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

uint64_t sub_10002F8F8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v2(v3, v5);
}

void sub_10002FC50(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10002FE2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
}

void sub_10002FF54(uint64_t a1, NSString a2, uint64_t a3)
{
  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  v4 = a2;
  (*(a3 + 16))(a3);
}

uint64_t sub_10002FFE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();

    if (v3)
    {
      return 1;
    }
  }

  else
  {
    v0 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v0)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v5 >> 62))
  {
    v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v1)
    {
      goto LABEL_5;
    }

    return 1;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();

  if (v4)
  {
    return 1;
  }

LABEL_5:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5)
  {

    return 1;
  }

  return 0;
}

id sub_100030184()
{
  v1 = sub_10001B4A4(&qword_1000B3490, &qword_100078900);
  v2 = *(v1 - 8);
  v90 = v1;
  v91 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v88 = &v75 - v4;
  v5 = sub_10001B4A4(&qword_1000B3498, &qword_100078908);
  v6 = *(v5 - 8);
  v92 = v5;
  v93 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v87 = &v75 - v8;
  v9 = sub_10001B4A4(&qword_1000B34A0, &qword_100078910);
  v10 = *(v9 - 8);
  v94 = v9;
  v95 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v89 = &v75 - v12;
  v13 = sub_10001B4A4(&qword_1000B34A8, &qword_100078918);
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = *(v85 + 64);
  __chkstk_darwin(v13);
  v84 = &v75 - v15;
  v16 = sub_10001B4A4(&qword_1000B34B0, &qword_100078920);
  v82 = *(v16 - 8);
  v83 = v16;
  v17 = *(v82 + 64);
  __chkstk_darwin(v16);
  v81 = &v75 - v18;
  v80 = sub_10001B4A4(&qword_1000B34B8, &qword_100078928);
  v79 = *(v80 - 8);
  v19 = *(v79 + 64);
  __chkstk_darwin(v80);
  v78 = &v75 - v20;
  v77 = sub_10001B4A4(&qword_1000B3228, &qword_100078930);
  v76 = *(v77 - 8);
  v21 = *(v76 + 64);
  __chkstk_darwin(v77);
  v23 = &v75 - v22;
  v75 = sub_10001B4A4(&qword_1000B3220, &unk_100078240);
  v24 = *(v75 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v75);
  v27 = &v75 - v26;
  v28 = sub_10001B4A4(&qword_1000B2D80, &qword_100078250);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v75 - v31;
  v33 = OBJC_IVAR___CollectionListViewModel__appInBackground;
  LOBYTE(v98) = 0;
  Published.init(initialValue:)();
  v34 = *(v29 + 32);
  v34(&v0[v33], v32, v28);
  v35 = OBJC_IVAR___CollectionListViewModel__viewCollapsed;
  LOBYTE(v98) = 0;
  Published.init(initialValue:)();
  v34(&v0[v35], v32, v28);
  v36 = OBJC_IVAR___CollectionListViewModel__currentCollectionID;
  v98 = 0;
  v99 = 0;
  sub_10001B4A4(&qword_1000B3390, &unk_100077F30);
  Published.init(initialValue:)();
  v37 = *(v24 + 32);
  v38 = v75;
  v37(&v0[v36], v27, v75);
  v39 = OBJC_IVAR___CollectionListViewModel__selectedItemID;
  v98 = 0;
  v99 = 0;
  Published.init(initialValue:)();
  v37(&v0[v39], v27, v38);
  v40 = OBJC_IVAR___CollectionListViewModel__selectedCollectionID;
  v98 = 0;
  v99 = 0;
  Published.init(initialValue:)();
  v37(&v0[v40], v27, v38);
  v41 = OBJC_IVAR___CollectionListViewModel__featuredCollection;
  v98 = 0;
  sub_10001B4A4(&qword_1000B3190, &unk_1000783D0);
  Published.init(initialValue:)();
  v42 = *(v76 + 32);
  v43 = v77;
  v42(&v0[v41], v23, v77);
  v44 = OBJC_IVAR___CollectionListViewModel__checklistCollection;
  v98 = 0;
  Published.init(initialValue:)();
  v42(&v0[v44], v23, v43);
  v45 = OBJC_IVAR___CollectionListViewModel__savedTipsCollection;
  v98 = 0;
  Published.init(initialValue:)();
  v42(&v0[v45], v23, v43);
  v46 = OBJC_IVAR___CollectionListViewModel__collections;
  v98 = _swiftEmptyArrayStorage;
  sub_10001B4A4(&qword_1000B3468, &qword_10007AF20);
  v47 = v78;
  Published.init(initialValue:)();
  (*(v79 + 32))(&v0[v46], v47, v80);
  v48 = OBJC_IVAR___CollectionListViewModel__collectionSections;
  v98 = _swiftEmptyArrayStorage;
  sub_10001B4A4(&qword_1000B3478, &unk_1000783E0);
  v49 = v81;
  Published.init(initialValue:)();
  (*(v82 + 32))(&v0[v48], v49, v83);
  v50 = OBJC_IVAR___CollectionListViewModel__userGuides;
  v98 = _swiftEmptyArrayStorage;
  sub_10001B4A4(&qword_1000B3488, &qword_10007AE70);
  v51 = v84;
  Published.init(initialValue:)();
  (*(v85 + 32))(&v0[v50], v51, v86);
  *&v0[OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel] = 0;
  v52 = &v0[OBJC_IVAR___CollectionListViewModel_actionHandler];
  *v52 = 0;
  *(v52 + 1) = 0;
  v53 = &v0[OBJC_IVAR___CollectionListViewModel_checklistHandler];
  *v53 = 0;
  *(v53 + 1) = 0;
  v54 = &v0[OBJC_IVAR___CollectionListViewModel_userGuideHandler];
  *v54 = 0;
  *(v54 + 1) = 0;
  v55 = &v0[OBJC_IVAR___CollectionListViewModel_supportFlowHandler];
  *v55 = 0;
  *(v55 + 1) = 0;
  v56 = OBJC_IVAR___CollectionListViewModel_colorScheme;
  v57 = enum case for ColorScheme.light(_:);
  v58 = type metadata accessor for ColorScheme();
  (*(*(v58 - 8) + 104))(&v0[v56], v57, v58);
  *&v0[OBJC_IVAR___CollectionListViewModel_cancellables] = &_swiftEmptySetSingleton;
  v59 = [objc_allocWithZone(type metadata accessor for ChecklistViewModel()) init];
  swift_beginAccess();
  v97 = v59;
  Published.init(initialValue:)();
  swift_endAccess();
  v60 = type metadata accessor for CollectionListViewModel();
  v96.receiver = v0;
  v96.super_class = v60;
  v61 = objc_msgSendSuper2(&v96, "init");
  swift_getKeyPath();
  swift_getKeyPath();
  v62 = v61;
  static Published.subscript.getter();

  v63 = v98;
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = (v63 + OBJC_IVAR___TPSChecklistViewModel_actionHandler);
  v66 = *(v63 + OBJC_IVAR___TPSChecklistViewModel_actionHandler);
  v67 = *(v63 + OBJC_IVAR___TPSChecklistViewModel_actionHandler + 8);
  *v65 = sub_100032B2C;
  v65[1] = v64;

  sub_10001E970(v66);

  swift_beginAccess();
  v68 = v88;
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10001E8B8(&qword_1000B34C0, &qword_1000B3490, &qword_100078900);
  sub_100032B34();
  v69 = v87;
  v70 = v90;
  Publisher<>.removeDuplicates()();
  (*(v91 + 8))(v68, v70);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
  sub_10001E8B8(&qword_1000B34D8, &qword_1000B3498, &qword_100078908);
  v71 = v89;
  v72 = v92;
  Publisher.compactMap<A>(_:)();

  (*(v93 + 8))(v69, v72);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10001E8B8(&qword_1000B34E0, &qword_1000B34A0, &qword_100078910);
  v73 = v94;
  Publisher<>.sink(receiveValue:)();

  (*(v95 + 8))(v71, v73);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v62;
}

void sub_100030D9C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR___CollectionListViewModel_checklistHandler);
    v4 = Strong;
    sub_10001E900(v3);

    if (v3)
    {
      v3(a1);
      sub_10001E970(v3);
    }
  }
}

id sub_100030E30@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = 0;
    if (Strong)
    {
      v5 = *&Strong[OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel];
      *&Strong[OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel] = 0;

      v3 = 0;
    }
  }

  *a2 = v3;

  return v3;
}

char *sub_100030EBC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [result assetsInfoFor:v1];
    type metadata accessor for TipsContentModel();
    static TipsContentModel.shared()();
    v5 = type metadata accessor for DocumentAssetViewModel();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    v8 = DocumentAssetViewModel.init(document:assetsInfo:contentModel:)();
    v9 = *&v3[OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel];
    *&v3[OBJC_IVAR___CollectionListViewModel_featuredAssetViewModel] = v8;
  }

  return result;
}

id sub_100031054()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionListViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CollectionListViewModel()
{
  result = qword_1000B3448;
  if (!qword_1000B3448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031478()
{
  sub_100031748();
  if (v1 <= 0x3F)
  {
    v17 = *(v0 - 8) + 64;
    sub_100027958(319, &qword_1000B3198, &qword_1000B3390, &unk_100077F30);
    if (v3 <= 0x3F)
    {
      v18 = *(v2 - 8) + 64;
      sub_100027958(319, &qword_1000B3188, &qword_1000B3190, &unk_1000783D0);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_100031798();
        if (v8 <= 0x3F)
        {
          v19 = *(v7 - 8) + 64;
          sub_100027958(319, &qword_1000B3460, &qword_1000B3468, &qword_10007AF20);
          if (v10 <= 0x3F)
          {
            v20 = *(v9 - 8) + 64;
            sub_100027958(319, &qword_1000B3470, &qword_1000B3478, &unk_1000783E0);
            if (v12 <= 0x3F)
            {
              v21 = *(v11 - 8) + 64;
              sub_100027958(319, &qword_1000B3480, &qword_1000B3488, &qword_10007AE70);
              if (v14 <= 0x3F)
              {
                v22 = *(v13 - 8) + 64;
                v15 = type metadata accessor for ColorScheme();
                if (v16 <= 0x3F)
                {
                  v23 = *(v15 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100031748()
{
  if (!qword_1000B3180)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B3180);
    }
  }
}

void sub_100031798()
{
  if (!qword_1000B3458)
  {
    type metadata accessor for ChecklistViewModel();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B3458);
    }
  }
}

uint64_t sub_1000317F0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CollectionListViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id sub_100031874()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = v16;
  if (!v16)
  {
    return 0;
  }

  v10 = OBJC_IVAR___CollectionListViewModel_colorScheme;
  swift_beginAccess();
  (*(v2 + 16))(v8, &v0[v10], v1);
  (*(v2 + 32))(v6, v8, v1);
  v11 = (*(v2 + 88))(v6, v1);
  v12 = 0;
  if (v11 != enum case for ColorScheme.light(_:))
  {
    if (v11 == enum case for ColorScheme.dark(_:))
    {
      v12 = 1;
    }

    else
    {
      (*(v2 + 8))(v6, v1);
      v12 = 0;
    }
  }

  v13 = [v0 assetsInfoFor:v9 userInterfaceStyle:v12];

  return v13;
}

id sub_100031B44(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v7)
  {
    return [a1 count];
  }

  sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
  v2 = a1;
  v3 = static NSObject.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    return [a1 count];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();

    return v6;
  }

  else
  {
    v4 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    return v4;
  }
}

BOOL sub_100031D54(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v9)
  {
    sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
    v4 = a1;
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      return [v2 tipCountFor:a1] > 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v9)
  {
    return 0;
  }

  sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  return (v7 & 1) != 0 && [v2 tipCountFor:a1] > 0;
}

BOOL sub_100031F14(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = 0;
  if (v7)
  {
    sub_10001AC14(0, &qword_1000B2EC8, TPSCollection_ptr);
    v4 = a1;
    v5 = static NSObject.== infix(_:_:)();

    if ((v5 & 1) != 0 && ![v2 tipCountFor:v4])
    {
      return 1;
    }
  }

  return result;
}

id sub_100032050(uint64_t a1)
{
  v3 = type metadata accessor for ColorScheme();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR___CollectionListViewModel_colorScheme;
  swift_beginAccess();
  (*(v4 + 16))(v10, &v1[v11], v3);
  (*(v4 + 32))(v8, v10, v3);
  v12 = (*(v4 + 88))(v8, v3);
  v13 = 0;
  if (v12 != enum case for ColorScheme.light(_:))
  {
    if (v12 == enum case for ColorScheme.dark(_:))
    {
      v13 = 1;
    }

    else
    {
      (*(v4 + 8))(v8, v3);
      v13 = 0;
    }
  }

  v14 = [v1 assetsInfoFor:a1 userInterfaceStyle:v13];

  return v14;
}

uint64_t sub_100032390(void *a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v36 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v36 - v12;
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v16 = [a1 featuredAssets];
  v17 = [a1 language];
  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  v18 = [a1 assetFileInfoManager];
  v19 = [objc_allocWithZone(TPSAssetsConfiguration) initWithAssets:v16 language:v17 userInterfaceStyle:a2 assetFileInfoManager:v18];

  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 assetPathFromAssetConfiguration:v21 type:0];
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();
  }

  else
  {

    v24 = type metadata accessor for URL();
    (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  }

  v25 = [v21 cacheIdentifierForType:0];
  if (v25)
  {
    v26 = v25;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v27 = v21;
  v28 = [v20 assetPathFromAssetConfiguration:v27 type:1];
  if (v28)
  {
    v29 = v28;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URL.init(string:)();
  }

  else
  {

    v30 = type metadata accessor for URL();
    (*(*(v30 - 8) + 56))(v13, 1, 1, v30);
  }

  v31 = [v27 cacheIdentifierForType:1];
  if (v31)
  {
    v32 = v31;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10003277C(v13, v10);
  sub_10003277C(v15, v37);
  v33 = objc_allocWithZone(type metadata accessor for TPSAssetsInfo());
  v34 = TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)();

  sub_1000327EC(v13);
  sub_1000327EC(v15);
  return v34;
}

uint64_t sub_10003277C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000327EC(uint64_t a1)
{
  v2 = sub_10001B4A4(&unk_1000B3380, &qword_100079940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100032AF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100032B34()
{
  result = qword_1000B34C8;
  if (!qword_1000B34C8)
  {
    sub_10001E860(&qword_1000B3190, &unk_1000783D0);
    sub_100032BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B34C8);
  }

  return result;
}

unint64_t sub_100032BB8()
{
  result = qword_1000B34D0;
  if (!qword_1000B34D0)
  {
    sub_10001AC14(255, &qword_1000B2EC8, TPSCollection_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B34D0);
  }

  return result;
}

uint64_t sub_100032C30()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100032C70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100032C9C()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_100032D64@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ElementVerticalMotion();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  *a1 = 0;
  LOBYTE(v20) = 0;
  State.init(wrappedValue:)();
  v10 = v22;
  *(a1 + 24) = v21;
  *(a1 + 32) = v10;
  v11 = type metadata accessor for TipListView();
  v12 = v11[7];
  (*(v3 + 104))(v9, enum case for ElementVerticalMotion.stationary(_:), v2);
  (*(v3 + 16))(v7, v9, v2);
  State.init(wrappedValue:)();
  (*(v3 + 8))(v9, v2);
  v13 = (a1 + v11[8]);
  v20 = 0;
  State.init(wrappedValue:)();
  v14 = v22;
  *v13 = v21;
  v13[1] = v14;
  v15 = (a1 + v11[9]);
  v20 = 0;
  State.init(wrappedValue:)();
  v16 = v22;
  *v15 = v21;
  v15[1] = v16;
  type metadata accessor for TipListViewModel();
  sub_100038D98(&qword_1000B34F8, type metadata accessor for TipListViewModel);
  result = ObservedObject.init(wrappedValue:)();
  *(a1 + 8) = result;
  *(a1 + 16) = v18;
  return result;
}

uint64_t type metadata accessor for TipListView()
{
  result = qword_1000B3560;
  if (!qword_1000B3560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100033000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001B4A4(&qword_1000B3500, &qword_100078950);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000330D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001B4A4(&qword_1000B3500, &qword_100078950);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100033180()
{
  sub_100033264();
  if (v0 <= 0x3F)
  {
    sub_100033350(319, &qword_1000B2F50);
    if (v1 <= 0x3F)
    {
      sub_1000332F8();
      if (v2 <= 0x3F)
      {
        sub_100033350(319, &unk_1000B3580);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100033264()
{
  if (!qword_1000B3570)
  {
    type metadata accessor for TipListViewModel();
    sub_100038D98(&qword_1000B34F8, type metadata accessor for TipListViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B3570);
    }
  }
}

void sub_1000332F8()
{
  if (!qword_1000B3578)
  {
    type metadata accessor for ElementVerticalMotion();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B3578);
    }
  }
}

void sub_100033350(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000333B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v5 = type metadata accessor for TipListView();
  v62 = *(v5 - 8);
  v6 = *(v62 + 64);
  __chkstk_darwin(v5 - 8);
  v68 = v7;
  v65 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001B4A4(&qword_1000B3640, &qword_100078AA8);
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  v58 = sub_10001B4A4(&qword_1000B3648, &qword_100078AB0);
  v56 = *(v58 - 8);
  v12 = *(v56 + 64);
  __chkstk_darwin(v58);
  v52 = &v51 - v13;
  v51 = sub_10001B4A4(&qword_1000B3650, &qword_100078AB8);
  v14 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v16 = &v51 - v15;
  v59 = sub_10001B4A4(&qword_1000B3658, &qword_100078AC0);
  v17 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v19 = &v51 - v18;
  v67 = sub_10001B4A4(&qword_1000B3660, &qword_100078AC8);
  v20 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v60 = &v51 - v21;
  v22 = sub_10001B4A4(&qword_1000B3668, qword_100078AD0);
  v63 = *(v22 - 8);
  v64 = v22;
  v23 = *(v63 + 64);
  __chkstk_darwin(v22);
  v61 = &v51 - v24;
  v26 = *(a2 + 8);
  v25 = *(a2 + 16);
  type metadata accessor for TipListViewModel();
  sub_100038D98(&qword_1000B34F8, type metadata accessor for TipListViewModel);
  v57 = v25;
  v27 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v77 = v83;
  v78 = v84;
  v69 = a2;
  v70 = a1;
  v53 = a1;
  sub_10001B4A4(&qword_1000B3670, &qword_100078B20);
  sub_10001E8B8(&qword_1000B3678, &qword_1000B3670, &qword_100078B20);
  List.init(selection:content:)();
  sub_10001B4A4(&qword_1000B3680, &qword_100078B28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077C60;
  LOBYTE(a1) = static Axis.Set.horizontal.getter();
  *(inited + 32) = a1;
  v29 = static Axis.Set.vertical.getter();
  *(inited + 33) = v29;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != a1)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v29)
  {
    Axis.Set.init(rawValue:)();
  }

  static Alignment.center.getter();
  sub_10001E8B8(&qword_1000B3688, &qword_1000B3640, &qword_100078AA8);
  v30 = v52;
  v31 = v55;
  View.containerRelativeFrame(_:alignment:)();
  (*(v54 + 8))(v11, v31);
  v32 = static Alignment.center.getter();
  v34 = v33;
  sub_100035224(a2, &v72);
  v79 = v74;
  v80 = v75;
  v77 = v72;
  v78 = v73;
  *&v81 = v76;
  *(&v81 + 1) = v32;
  v82 = v34;
  (*(v56 + 32))(v16, v30, v58);
  v35 = &v16[*(v51 + 36)];
  v36 = v80;
  *(v35 + 2) = v79;
  *(v35 + 3) = v36;
  *(v35 + 4) = v81;
  *(v35 + 10) = v82;
  v37 = v78;
  *v35 = v77;
  *(v35 + 1) = v37;
  v85 = v74;
  v86 = v75;
  v83 = v72;
  v84 = v73;
  v87 = v76;
  v88 = v32;
  v89 = v34;
  sub_10001F808(&v77, &v71, &qword_1000B3690, &qword_100078B30);
  sub_10001F870(&v83, &qword_1000B3690, &qword_100078B30);
  sub_100023628(v16, v19, &qword_1000B3650, &qword_100078AB8);
  v38 = &v19[*(v59 + 36)];
  *v38 = 1953720684;
  *(v38 + 1) = 0xE400000000000000;
  KeyPath = swift_getKeyPath();
  v40 = v60;
  sub_100023628(v19, v60, &qword_1000B3658, &qword_100078AC0);
  v41 = v40 + *(v67 + 36);
  *v41 = KeyPath;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v42 = v71;
  v43 = v65;
  sub_100038CB4(a2, v65);
  v44 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v62 = a2;
  v45 = swift_allocObject();
  sub_100038D1C(v43, v45 + v44);
  sub_10001B4A4(&qword_1000B31A8, &qword_100078BC0);
  sub_100039218();
  sub_1000394B0();
  v46 = v61;
  View.onChange<A>(of:initial:_:)();

  sub_10001F870(v40, &qword_1000B3660, &qword_100078AC8);
  sub_100038CB4(v62, v43);
  v47 = swift_allocObject();
  sub_100038D1C(v43, v47 + v44);
  v48 = v66;
  (*(v63 + 32))(v66, v46, v64);
  result = sub_10001B4A4(&qword_1000B36E8, qword_100078BD8);
  v50 = (v48 + *(result + 36));
  *v50 = sub_10003959C;
  v50[1] = v47;
  v50[2] = 0;
  v50[3] = 0;
  return result;
}

uint64_t sub_100033C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v93 = a3;
  v5 = sub_10001B4A4(&qword_1000B38D8, &qword_100079060);
  v94 = *(v5 - 8);
  v95 = v5;
  v6 = *(v94 + 64);
  v7 = __chkstk_darwin(v5);
  v92 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v97 = &v78 - v9;
  v10 = type metadata accessor for TipListView();
  v85 = *(v10 - 8);
  v11 = *(v85 + 64);
  __chkstk_darwin(v10 - 8);
  v96 = v12;
  v91 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for CoordinateSpace();
  v86 = *(v87 - 8);
  v13 = *(v86 + 64);
  __chkstk_darwin(v87);
  v84 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10001B4A4(&qword_1000B38E0, &qword_100079068);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v78 - v17;
  v19 = sub_10001B4A4(&qword_1000B38E8, &qword_100079070);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = &v78 - v22;
  v81 = sub_10001B4A4(&qword_1000B38F0, &qword_100079078);
  v24 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v26 = &v78 - v25;
  v82 = sub_10001B4A4(&qword_1000B38F8, &qword_100079080);
  v27 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v83 = &v78 - v28;
  v90 = sub_10001B4A4(&qword_1000B3900, &qword_100079088);
  v89 = *(v90 - 8);
  v29 = *(v89 + 64);
  v30 = __chkstk_darwin(v90);
  v88 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v98 = &v78 - v32;
  sub_10003474C(v18);
  *&v79 = a2;
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v33 = &v18[*(v15 + 36)];
  v34 = v103;
  *v33 = v102;
  *(v33 + 1) = v34;
  *(v33 + 2) = v104;
  static VerticalEdge.Set.all.getter();
  sub_10003A474();
  View.listRowSeparator(_:edges:)();
  sub_10001F870(v18, &qword_1000B38E0, &qword_100079068);
  v35 = &v23[*(sub_10001B4A4(&qword_1000B3918, &qword_100079090) + 52)];
  *v35 = 0x646165487473696CLL;
  *(v35 + 1) = 0xEA00000000007265;
  v36 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v37 = -*v100;
  v38 = &v23[*(sub_10001B4A4(&qword_1000B3920, &qword_100079098) + 36)];
  *v38 = v37;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 1) = 0;
  v38[32] = 0;
  v39 = a1;
  v40 = *a1;
  v41 = Namespace.wrappedValue.getter();
  LODWORD(v18) = static MatchedGeometryProperties.frame.getter();
  static UnitPoint.center.getter();
  v42 = &v23[*(v20 + 44)];
  *v42 = 0x646165487473696CLL;
  *(v42 + 1) = 0xEA00000000007265;
  *(v42 + 2) = v41;
  *(v42 + 6) = v18;
  *(v42 + 4) = v43;
  *(v42 + 5) = v44;
  v42[48] = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v45 = *&v100[0];
  v46 = [*&v100[0] gradient];

  swift_getKeyPath();
  swift_getKeyPath();
  v80 = v36;
  static Published.subscript.getter();

  if (BYTE8(v100[0]) == 1)
  {
    GeometryProxy.size.getter();
  }

  else
  {
    v47 = *v100;
  }

  sub_1000383FC(a1, v100, round(v47));
  v48 = v101;
  v79 = v100[0];
  v78 = v100[1];
  v49 = static Alignment.center.getter();
  v51 = v50;
  sub_100023628(v23, v26, &qword_1000B38E8, &qword_100079070);
  v52 = &v26[*(v81 + 36)];
  v53 = v78;
  *v52 = v79;
  *(v52 + 1) = v53;
  v52[32] = v48;
  *(v52 + 5) = v49;
  *(v52 + 6) = v51;
  v54 = *(a1 + 32);
  LOBYTE(v100[0]) = *(a1 + 24);
  *(&v100[0] + 1) = v54;
  sub_10001B4A4(&qword_1000B3028, &qword_100078C60);
  State.wrappedValue.getter();
  if (v99)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = 1.0;
  }

  v56 = v83;
  sub_100023628(v26, v83, &qword_1000B38F0, &qword_100079078);
  *(v56 + *(v82 + 36)) = v55;
  *&v100[0] = 1953720684;
  *(&v100[0] + 1) = 0xE400000000000000;
  v57 = v84;
  AnyHashable.init<A>(_:)();
  v58 = v86;
  v59 = v87;
  (*(v86 + 104))(v57, enum case for CoordinateSpace.named(_:), v87);
  v60 = v91;
  sub_100038CB4(v39, v91);
  v61 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v62 = swift_allocObject();
  sub_100038D1C(v60, v62 + v61);
  sub_10003A66C();
  View.readVerticalMotion(in:onChange:)();

  (*(v58 + 8))(v57, v59);
  sub_10001F870(v56, &qword_1000B38F8, &qword_100079080);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  sub_100038CB4(v39, v60);
  v63 = swift_allocObject();
  sub_100038D1C(v60, v63 + v61);
  sub_10001B4A4(&qword_1000B31F8, &qword_1000790F0);
  sub_10001B4A4(&qword_1000B3980, &qword_1000790F8);
  sub_10001E8B8(&qword_1000B3988, &qword_1000B31F8, &qword_1000790F0);
  sub_10003AB1C();
  v64 = v97;
  ForEach<>.init(_:id:content:)();
  v65 = v89;
  v66 = *(v89 + 16);
  v67 = v88;
  v68 = v90;
  v66(v88, v98, v90);
  v69 = v94;
  v96 = *(v94 + 16);
  v70 = v92;
  v71 = v64;
  v72 = v95;
  v96(v92, v71, v95);
  v73 = v93;
  v66(v93, v67, v68);
  v74 = sub_10001B4A4(&qword_1000B39A0, &qword_100079100);
  v96(&v73[*(v74 + 48)], v70, v72);
  v75 = *(v69 + 8);
  v75(v97, v72);
  v76 = *(v65 + 8);
  v76(v98, v68);
  v75(v70, v72);
  return (v76)(v67, v68);
}

uint64_t sub_10003474C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for TipListView();
  v59 = *(v3 - 8);
  v58 = *(v59 + 64);
  __chkstk_darwin(v3 - 8);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001B4A4(&qword_1000B3740, &qword_100078D70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v56 - v7;
  v9 = sub_10001B4A4(&qword_1000B3748, &qword_100078D78);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v56 - v12;
  v14 = sub_10001B4A4(&qword_1000B3750, &qword_100078D80);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = sub_10001B4A4(&qword_1000B3758, &qword_100078D88);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v56 - v21;
  v56 = sub_10001B4A4(&qword_1000B3760, &qword_100078D90);
  v23 = *(v56 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v56);
  v26 = &v56 - v25;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v27 = sub_10001B4A4(&qword_1000B3768, &qword_100078D98);
  sub_100036970(v2, &v8[*(v27 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100023628(v8, v13, &qword_1000B3740, &qword_100078D70);
  v28 = &v13[*(v10 + 44)];
  v29 = v66;
  *(v28 + 4) = v65;
  *(v28 + 5) = v29;
  *(v28 + 6) = v67;
  v30 = v62;
  *v28 = v61;
  *(v28 + 1) = v30;
  v31 = v64;
  *(v28 + 2) = v63;
  *(v28 + 3) = v31;
  LOBYTE(v10) = static Edge.Set.bottom.getter();
  v32 = *(v2 + 16);
  dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_100023628(v13, v18, &qword_1000B3748, &qword_100078D78);
  v41 = &v18[*(v15 + 44)];
  *v41 = v10;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  LOBYTE(v13) = static Edge.Set.horizontal.getter();
  dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
  EdgeInsets.init(_all:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_100023628(v18, v22, &qword_1000B3750, &qword_100078D80);
  v50 = &v22[*(v19 + 36)];
  *v50 = v13;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v51 = v57;
  sub_100038CB4(v2, v57);
  v52 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v53 = swift_allocObject();
  sub_100038D1C(v51, v53 + v52);
  sub_100039DC8(&qword_1000B3770, &qword_1000B3758, &qword_100078D88, sub_100039A6C);
  View.readScrollOffset(onChange:)();

  sub_10001F870(v22, &qword_1000B3758, &qword_100078D88);
  v54 = v60;
  (*(v23 + 32))(v60, v26, v56);
  result = sub_10001B4A4(&qword_1000B3730, qword_100078D08);
  *(v54 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100034CA0(uint64_t a1, double a2)
{
  v4 = type metadata accessor for ElementVerticalMotion();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v21 - v10;
  v12 = type metadata accessor for TipListView();
  v13 = (a1 + v12[8]);
  v15 = v13[1];
  v22 = *v13;
  v14 = v22;
  v23 = v15;
  sub_10001B4A4(&qword_1000B39B0, &qword_100079110);
  State.wrappedValue.getter();
  static ElementVerticalMotion.fromPositionChange(previous:current:)();
  v16 = v12[7];
  (*(v5 + 16))(v9, v11, v4);
  sub_10001B4A4(&qword_1000B3500, &qword_100078950);
  State.wrappedValue.setter();
  (*(v5 + 8))(v11, v4);
  v22 = v14;
  v23 = v15;
  State.wrappedValue.getter();
  v17 = (a1 + v12[9]);
  v18 = *v17;
  v19 = v17[1];
  v22 = v18;
  v23 = v19;
  State.wrappedValue.setter();
  *&v21[1] = a2;
  v22 = v14;
  v23 = v15;
  return State.wrappedValue.setter();
}

unint64_t sub_100034E94@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ListItemDocumentView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001B4A4(&qword_1000B39A8, &qword_100079108);
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = *a1;
  *(a2 + 16);
  v16 = v15;
  ListItemDocumentView.init(viewModel:document:preferLineCount:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v35;
  if (!(v35 >> 62))
  {
    v18 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_3:
  v19 = __OFSUB__(v18, 1);
  result = v18 - 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v33 = v11;
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v21 = v7;
    v22 = v6;
    v23 = a3;
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (result >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v21 = v7;
  v22 = v6;
  v23 = a3;
  v24 = *(v17 + 8 * result + 32);
LABEL_8:
  v25 = v24;

  sub_10001AC14(0, &qword_1000B30C8, TPSTip_ptr);
  v26 = v16;
  static NSObject.== infix(_:_:)();

  a3 = v23;
  v6 = v22;
  v7 = v21;
  v11 = v33;
LABEL_11:
  static VerticalEdge.Set.bottom.getter();
  sub_100038D98(&qword_1000B3998, &type metadata accessor for ListItemDocumentView);
  View.listRowSeparator(_:edges:)();
  (*(v7 + 8))(v10, v6);
  v27 = dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
  v28 = v27 & 1;
  if (v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = 0x4024000000000000;
  }

  if (v27)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0x4028000000000000;
  }

  (*(v34 + 32))(a3, v14, v11);
  result = sub_10001B4A4(&qword_1000B3980, &qword_1000790F8);
  v31 = a3 + *(result + 36);
  *v31 = v29;
  *(v31 + 8) = v29;
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  *(v31 + 32) = v28;
  return result;
}

uint64_t sub_100035224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TipListView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = *(a1 + 32);
  LOBYTE(v23) = *(a1 + 24);
  v24 = v7;
  sub_10001B4A4(&qword_1000B3028, &qword_100078C60);
  result = State.wrappedValue.getter();
  if (v22[15] == 1)
  {
    v9 = *(a1 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v24 == 1)
    {
      GeometryProxy.size.getter();
    }

    else
    {
      v10 = v23;
    }

    v17 = round(v10);
    sub_100038CB4(a1, &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    sub_100038D1C(&v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v18);
    *(v12 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
    v19 = *a1;
    v13 = Namespace.wrappedValue.getter();
    v20 = static MatchedGeometryProperties.frame.getter();
    result = static UnitPoint.center.getter();
    *(&v16 + 1) = v21;
    v15 = xmmword_100078940;
    v14 = v20;
    v11 = sub_1000397C8;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v15;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16;
  *(a2 + 64) = 0;
  return result;
}

void sub_100035444(uint64_t a1, void **a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(a3 + 16);
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v3;
    static Published.subscript.getter();

    v7 = v15[0];
    v15[0] = v5;
    __chkstk_darwin(v6);
    v14[2] = v15;
    v8 = sub_100028744(sub_10003AD40, v14, v7);

    if ((v8 & 1) != 0 && (dispatch thunk of SearchResultsViewModel.viewCollapsed.getter() & 1) == 0)
    {
      v9 = [v5 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      swift_getKeyPath();
      swift_getKeyPath();
      v15[0] = v10;
      v15[1] = v12;
      v13 = v4;
      static Published.subscript.setter();
      sub_10004F6A0();
    }
  }
}

uint64_t sub_1000355B4(uint64_t a1)
{
  v28 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  v1 = *(v33 + 64);
  __chkstk_darwin(v30);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TipListView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = type metadata accessor for DispatchTime();
  v29 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  sub_10001AC14(0, &qword_1000B2D48, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v12 + 8);
  v19(v16, v11);
  sub_100038CB4(v28, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  sub_100038D1C(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  aBlock[4] = sub_1000395B4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002086C;
  aBlock[3] = &unk_1000A3B00;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100038D98(&qword_1000B2D50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10001B4A4(&qword_1000B2D58, &unk_100077D40);
  sub_10001E8B8(&qword_1000B2D60, &qword_1000B2D58, &unk_100077D40);
  v23 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v33 + 8))(v3, v23);
  (*(v31 + 8))(v7, v32);
  return (v19)(v18, v29);
}

void sub_100035A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v12 & 1) == 0)
  {
    if (dispatch thunk of SearchResultsViewModel.viewCollapsed.getter())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v12 = 0;
      v13 = 0;
      v2 = v1;
      static Published.subscript.setter();
      sub_10004F6A0();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v3 = v12;
      if (v12)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        __chkstk_darwin(v4);
        v11[2] = &v12;
        v5 = sub_100028744(sub_100039660, v11, v12);

        if (v5)
        {
          v6 = [v3 identifier];
          v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = v8;

          swift_getKeyPath();
          swift_getKeyPath();
          v12 = v7;
          v13 = v9;
          v10 = v1;
          static Published.subscript.setter();
          sub_10004F6A0();
        }
      }
    }
  }
}

uint64_t sub_100035C60@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v21 = type metadata accessor for ContentMessageView();
  v20[0] = *(v21 - 8);
  v2 = *(v20[0] + 64);
  __chkstk_darwin(v21);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001B4A4(&qword_1000B35C0, &unk_1000789C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (v20 - v7);
  v9 = type metadata accessor for TipListView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v22 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    sub_100038CB4(v1, v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v15 = swift_allocObject();
    sub_100038D1C(v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    *v8 = sub_100038D80;
    v8[1] = v15;
    swift_storeEnumTagMultiPayload();
    sub_10001B4A4(&qword_1000B35C8, &unk_100078A18);
    sub_10001E8B8(&qword_1000B35D0, &qword_1000B35C8, &unk_100078A18);
    sub_100038D98(&qword_1000B35D8, &type metadata accessor for ContentMessageView);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    if ([objc_opt_self() isPadUI])
    {
      dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
    }

    v17 = objc_allocWithZone(type metadata accessor for ContentMessageViewModel());
    ContentMessageViewModel.init(contentMessageType:additionalContext:)();
    ContentMessageView.init(with:maxWidth:)();
    v18 = v20[0];
    v19 = v21;
    (*(v20[0] + 16))(v8, v4, v21);
    swift_storeEnumTagMultiPayload();
    sub_10001B4A4(&qword_1000B35C8, &unk_100078A18);
    sub_10001E8B8(&qword_1000B35D0, &qword_1000B35C8, &unk_100078A18);
    sub_100038D98(&qword_1000B35D8, &type metadata accessor for ContentMessageView);
    _ConditionalContent<>.init(storage:)();
    return (*(v18 + 8))(v4, v19);
  }
}

uint64_t sub_1000360B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001B4A4(&qword_1000B2F90, &qword_100077CF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_10001B4A4(&qword_1000B35E0, &qword_100078A28);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  sub_100036300(a2, &v17 - v10);
  v12 = *(v8 + 36);
  v13 = type metadata accessor for ScrollViewProxy();
  (*(*(v13 - 8) + 16))(&v11[v12], a1, v13);
  v14 = *(a2 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100022F14();
  AppEntity.fullyQualifiedIdentifier.getter();

  v15 = type metadata accessor for EntityIdentifier();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  sub_100038DE8();
  View.appEntityIdentifier(_:)();
  sub_10001F870(v7, &qword_1000B2F90, &qword_100077CF0);
  return sub_10001F870(v11, &qword_1000B35E0, &qword_100078A28);
}

uint64_t sub_100036300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v43 = type metadata accessor for InsetListStyle();
  v36 = *(v43 - 8);
  v3 = *(v36 + 64);
  __chkstk_darwin(v43);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10001B4A4(&qword_1000B3628, &qword_100078A90);
  v38 = *(v44 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v44);
  v37 = &v36 - v7;
  v40 = sub_10001B4A4(&qword_1000B3630, &qword_100078A98);
  v8 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v42 = &v36 - v9;
  v39 = type metadata accessor for PlainListStyle();
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v39);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TipListView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10001B4A4(&qword_1000B3638, &qword_100078AA0);
  v18 = *(v41 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v41);
  v21 = &v36 - v20;
  v22 = *(a1 + 16);
  LOBYTE(v22) = dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
  sub_100038CB4(a1, v17);
  v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v24 = swift_allocObject();
  sub_100038D1C(v17, v24 + v23);
  if (v22)
  {
    v46 = sub_10003AD5C;
    v47 = v24;
    PlainListStyle.init()();
    v25 = sub_10001B4A4(&qword_1000B3610, &qword_100078A88);
    v26 = sub_10001E8B8(&qword_1000B3618, &qword_1000B3610, &qword_100078A88);
    v27 = v39;
    View.listStyle<A>(_:)();
    (*(v10 + 8))(v13, v27);

    v28 = v41;
    (*(v18 + 16))(v42, v21, v41);
    swift_storeEnumTagMultiPayload();
    v46 = v25;
    v47 = v27;
    v48 = v26;
    v49 = &protocol witness table for PlainListStyle;
    swift_getOpaqueTypeConformance2();
    v46 = v25;
    v47 = v43;
    v48 = v26;
    v49 = &protocol witness table for InsetListStyle;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v18 + 8))(v21, v28);
  }

  else
  {
    v46 = sub_100039070;
    v47 = v24;
    InsetListStyle.init()();
    v30 = sub_10001B4A4(&qword_1000B3610, &qword_100078A88);
    v31 = sub_10001E8B8(&qword_1000B3618, &qword_1000B3610, &qword_100078A88);
    v32 = v37;
    v33 = v43;
    View.listStyle<A>(_:)();
    (*(v36 + 8))(v5, v33);

    v34 = v38;
    v35 = v44;
    (*(v38 + 16))(v42, v32, v44);
    swift_storeEnumTagMultiPayload();
    v46 = v30;
    v47 = v39;
    v48 = v31;
    v49 = &protocol witness table for PlainListStyle;
    swift_getOpaqueTypeConformance2();
    v46 = v30;
    v47 = v33;
    v48 = v31;
    v49 = &protocol witness table for InsetListStyle;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v34 + 8))(v32, v35);
  }
}

uint64_t sub_100036970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v120 = *(v3 - 8);
  v121 = v3;
  v4 = *(v120 + 64);
  __chkstk_darwin(v3);
  v118 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001B4A4(&qword_1000B3790, &qword_100078DA0);
  v128 = *(v6 - 8);
  v129 = v6;
  v7 = *(v128 + 64);
  __chkstk_darwin(v6);
  v119 = &v118 - v8;
  v9 = sub_10001B4A4(&qword_1000B3798, &unk_100078DA8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v126 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v130 = &v118 - v13;
  v14 = sub_10001B4A4(&qword_1000B3030, &qword_100077D50);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v118 - v16;
  v18 = sub_10001B4A4(&qword_1000B37A0, &qword_100078DB8);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v118 - v21;
  v23 = sub_10001B4A4(&qword_1000B37A8, &qword_100078DC0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v122 = &v118 - v26;
  v27 = sub_10001B4A4(&qword_1000B37B0, &qword_100078DC8);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v123 = &v118 - v30;
  v31 = sub_10001B4A4(&qword_1000B37B8, qword_100078DD0);
  v32 = *(v31 - 8);
  v125 = v31 - 8;
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31 - 8);
  v131 = &v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v124 = &v118 - v37;
  __chkstk_darwin(v36);
  v132 = &v118 - v38;
  sub_1000374E0(a1, v22);
  v39 = static Edge.Set.top.getter();
  v40 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  EdgeInsets.init(_all:)();
  v41 = &v22[*(v19 + 44)];
  *v41 = v39;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
  v46 = type metadata accessor for Font.Design();
  (*(*(v46 - 8) + 56))(v17, 1, 1, v46);
  static Font.system(size:weight:design:)();
  sub_10001F870(v17, &qword_1000B3030, &qword_100077D50);
  static Font.Weight.semibold.getter();
  v47 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v49 = v22;
  v50 = v122;
  sub_100023628(v49, v122, &qword_1000B37A0, &qword_100078DB8);
  v51 = (v50 + *(v24 + 44));
  *v51 = KeyPath;
  v51[1] = v47;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v52 = v123;
  sub_100023628(v50, v123, &qword_1000B37A8, &qword_100078DC0);
  v53 = (v52 + *(v28 + 44));
  v54 = v158;
  v53[4] = v157;
  v53[5] = v54;
  v53[6] = v159;
  v55 = v154;
  *v53 = v153;
  v53[1] = v55;
  v56 = v156;
  v53[2] = v155;
  v53[3] = v56;
  v57 = static Color.white.getter();
  v58 = swift_getKeyPath();
  v59 = v52;
  v60 = v124;
  sub_100023628(v59, v124, &qword_1000B37B0, &qword_100078DC8);
  v61 = (v60 + *(v125 + 44));
  *v61 = v58;
  v61[1] = v57;
  sub_100023628(v60, v132, &qword_1000B37B8, qword_100078DD0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v62 = v142;
  v63 = [v142 title];

  if (v63)
  {
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    *&v142 = v64;
    *(&v142 + 1) = v66;
    sub_1000235B4();
    v67 = Text.init<A>(_:)();
    v124 = v68;
    v125 = v67;
    v70 = v69;
    v72 = v71;
    v73 = swift_getKeyPath();
    v74 = static Edge.Set.top.getter();
    dispatch thunk of SearchResultsViewModel.viewCollapsed.getter();
    EdgeInsets.init(_all:)();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v82 = v81;
    LOBYTE(v64) = v70 & 1;
    v152 = v70 & 1;
    v151 = 0;
    static Font.title2.getter();
    static Font.Weight.bold.getter();
    v83 = Font.weight(_:)();

    v84 = swift_getKeyPath();
    v85 = static Color.white.getter();
    v86 = swift_getKeyPath();
    v87 = static HierarchicalShapeStyle.primary.getter();
    *&v133 = v125;
    *(&v133 + 1) = v124;
    LOBYTE(v134) = v64;
    *(&v134 + 1) = v72;
    *&v135 = v73;
    BYTE8(v135) = 0;
    LOBYTE(v136) = v74;
    *(&v136 + 1) = v76;
    *&v137 = v78;
    *(&v137 + 1) = v80;
    *&v138 = v82;
    BYTE8(v138) = 0;
    *&v139 = v84;
    *(&v139 + 1) = v83;
    *&v140 = v86;
    *(&v140 + 1) = v85;
    v141 = v87;
    v88 = v118;
    static AccessibilityTraits.isHeader.getter();
    sub_10001B4A4(&qword_1000B37D0, &qword_100078EE0);
    sub_100039B74();
    v89 = v119;
    View.accessibilityAddTraits(_:)();
    (*(v120 + 8))(v88, v121);
    v148 = v139;
    v149 = v140;
    v150 = v141;
    v144 = v135;
    v145 = v136;
    v146 = v137;
    v147 = v138;
    v142 = v133;
    v143 = v134;
    sub_10001F870(&v142, &qword_1000B37D0, &qword_100078EE0);
    v90 = v89;
    v91 = v130;
    sub_100023628(v90, v130, &qword_1000B3790, &qword_100078DA0);
    (*(v128 + 56))(v91, 0, 1, v129);
  }

  else
  {
    v91 = v130;
    (*(v128 + 56))(v130, 1, 1, v129);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v92 = v142;
  v93 = [v142 text];

  if (v93)
  {
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    *&v142 = v94;
    *(&v142 + 1) = v96;
    sub_1000235B4();
    v97 = Text.init<A>(_:)();
    v124 = v98;
    v125 = v97;
    v100 = v99;
    v123 = v101;
    v122 = swift_getKeyPath();
    static Font.title2.getter();
    static Font.Weight.regular.getter();
    v121 = Font.weight(_:)();

    v129 = swift_getKeyPath();
    LOBYTE(v142) = v100 & 1;
    v102 = v100 & 1;
    v120 = static Color.secondary.getter();
    v128 = swift_getKeyPath();
    LODWORD(v119) = static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v128 = 0;
    v129 = 0;
    v120 = 0;
    v121 = 0;
    LODWORD(v119) = 0;
    v102 = 0;
  }

  v103 = v131;
  sub_10001F808(v132, v131, &qword_1000B37B8, qword_100078DD0);
  v104 = v126;
  sub_10001F808(v91, v126, &qword_1000B3798, &unk_100078DA8);
  v105 = v127;
  sub_10001F808(v103, v127, &qword_1000B37B8, qword_100078DD0);
  v106 = sub_10001B4A4(&qword_1000B37C0, &qword_100078EA0);
  sub_10001F808(v104, v105 + *(v106 + 48), &qword_1000B3798, &unk_100078DA8);
  v107 = v105 + *(v106 + 64);
  v109 = v124;
  v108 = v125;
  *&v133 = v125;
  *(&v133 + 1) = v124;
  v111 = v122;
  v110 = v123;
  *&v134 = v102;
  *(&v134 + 1) = v123;
  v135 = v122;
  v112 = v120;
  v113 = v121;
  *&v136 = v129;
  *(&v136 + 1) = v121;
  *&v137 = v128;
  *(&v137 + 1) = v120;
  v114 = v119;
  LODWORD(v138) = v119;
  v115 = v136;
  *(v107 + 32) = v122;
  *(v107 + 48) = v115;
  *(v107 + 80) = v114;
  v116 = v134;
  *v107 = v133;
  *(v107 + 16) = v116;
  *(v107 + 64) = v137;
  sub_10001F808(&v133, &v142, &qword_1000B37C8, &qword_100078EA8);
  sub_10001F870(v130, &qword_1000B3798, &unk_100078DA8);
  sub_10001F870(v132, &qword_1000B37B8, qword_100078DD0);
  *&v142 = v108;
  *(&v142 + 1) = v109;
  *&v143 = v102;
  *(&v143 + 1) = v110;
  v144 = v111;
  *&v145 = v129;
  *(&v145 + 1) = v113;
  *&v146 = v128;
  *(&v146 + 1) = v112;
  LODWORD(v147) = v114;
  sub_10001F870(&v142, &qword_1000B37C8, &qword_100078EA8);
  sub_10001F870(v104, &qword_1000B3798, &unk_100078DA8);
  return sub_10001F870(v131, &qword_1000B37B8, qword_100078DD0);
}