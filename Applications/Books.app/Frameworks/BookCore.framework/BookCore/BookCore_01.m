void sub_4982C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _coverSourceAtIndex:a2];
  [v3 cardStackTransitioningCoverSourceReplaceReferenceView:*(a1 + 40)];
}

void sub_499A4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) dataSource];
  v9 = [v4 representedObjectForCardAtIndex:a2];

  v5 = [*(a1 + 32) coverHost];
  v6 = [v5 coverSourceForRepresentedObject:v9];

  if (v6)
  {
    v7 = *(a1 + 40);
    v8 = [NSNumber numberWithUnsignedInteger:a2];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

void sub_4A144(uint64_t a1, uint64_t a2)
{
  v13 = [NSString stringWithFormat:@"%ld-cover-move", a2];
  v4 = [(BCCardStackTransitionAnimationItem *)[BCCardStackTransitionCoverMoveAnimationItem alloc] initWithKey:v13];
  [(BCCardStackTransitionCoverMoveAnimationItem *)v4 setIsFocusedCover:*(a1 + 48) == a2];
  v5 = [*(a1 + 32) visibleCoverSourceByIndex];
  v6 = [NSNumber numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];
  [(BCCardStackTransitionCoverMoveAnimationItem *)v4 setCoverSource:v7];

  v8 = [*(a1 + 32) cardCoverSourceByIndex];
  v9 = [NSNumber numberWithUnsignedInteger:a2];
  v10 = [v8 objectForKeyedSubscript:v9];
  [(BCCardStackTransitionCoverMoveAnimationItem *)v4 setCardCoverSource:v10];

  if ([*(a1 + 32) isDismiss])
  {
    v11 = [*(a1 + 32) visibleCardIndexesWithAdjustedCoverSource];
    -[BCCardStackTransitionCoverMoveAnimationItem setNeedsFadeInOnDismiss:](v4, "setNeedsFadeInOnDismiss:", [v11 containsIndex:a2]);
  }

  else
  {
    [(BCCardStackTransitionCoverMoveAnimationItem *)v4 setNeedsFadeInOnDismiss:0];
  }

  v12 = [*(a1 + 32) clippedCoverIndexes];
  -[BCCardStackTransitionCoverMoveAnimationItem setAnimatesInInnerContainerView:](v4, "setAnimatesInInnerContainerView:", [v12 containsIndex:a2]);

  [*(a1 + 40) addObject:v4];
}

void sub_4A304(uint64_t a1, uint64_t a2)
{
  v27 = [NSString stringWithFormat:@"%ld-card-move", a2];
  v4 = [(BCCardStackTransitionAnimationItem *)[BCCardStackTransitionCardMoveAnimationItem alloc] initWithKey:v27];
  v5 = [*(a1 + 32) fakeCoverSourceByIndex];
  v6 = [NSNumber numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];
  if (v7)
  {
    [(BCCardStackTransitionCardMoveAnimationItem *)v4 setCoverSource:v7];
  }

  else
  {
    v8 = [*(a1 + 32) visibleCoverSourceByIndex];
    v9 = [NSNumber numberWithUnsignedInteger:a2];
    v10 = [v8 objectForKeyedSubscript:v9];
    [(BCCardStackTransitionCardMoveAnimationItem *)v4 setCoverSource:v10];
  }

  v11 = [*(a1 + 32) cardByIndex];
  v12 = [NSNumber numberWithUnsignedInteger:a2];
  v13 = [v11 objectForKeyedSubscript:v12];
  [(BCCardStackTransitionCardMoveAnimationItem *)v4 setCard:v13];

  [(BCCardStackTransitionCardMoveAnimationItem *)v4 setIsFocusedCard:*(a1 + 48) == a2];
  v14 = [(BCCardStackTransitionCardMoveAnimationItem *)v4 coverSource];

  if (!v14)
  {
    v15 = [*(a1 + 32) fakeCoverSourceByIndex];
    v16 = a2 - 1;
    v17 = [NSNumber numberWithUnsignedInteger:a2 - 1];
    v18 = [v15 objectForKeyedSubscript:v17];
    if (v18)
    {
      [(BCCardStackTransitionCardMoveAnimationItem *)v4 setCoverSource:v18];
    }

    else
    {
      v19 = [*(a1 + 32) visibleCoverSourceByIndex];
      v20 = [NSNumber numberWithUnsignedInteger:v16];
      v21 = [v19 objectForKeyedSubscript:v20];
      [(BCCardStackTransitionCardMoveAnimationItem *)v4 setCoverSource:v21];
    }

    v22 = [(BCCardStackTransitionCardMoveAnimationItem *)v4 coverSource];

    if (!v22)
    {
      v23 = [*(a1 + 32) fakeCoverSourceByIndex];
      v24 = [v23 objectForKeyedSubscript:&off_2E58A0];
      if (v24)
      {
        [(BCCardStackTransitionCardMoveAnimationItem *)v4 setCoverSource:v24];
      }

      else
      {
        v25 = [*(a1 + 32) visibleCoverSourceByIndex];
        v26 = [v25 objectForKeyedSubscript:&off_2E58A0];
        [(BCCardStackTransitionCardMoveAnimationItem *)v4 setCoverSource:v26];
      }
    }
  }

  [*(a1 + 40) addObject:v4];
}

void sub_4A724(uint64_t a1, uint64_t a2)
{
  v8 = [NSString stringWithFormat:@"%ld-fade", a2];
  v4 = [(BCCardStackTransitionAnimationItem *)[BCCardStackTransitionCoverFadeAnimationItem alloc] initWithKey:v8];
  v5 = [*(a1 + 32) visibleCoverSourceByIndex];
  v6 = [NSNumber numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];
  [(BCCardStackTransitionCoverFadeAnimationItem *)v4 setCoverSource:v7];

  [*(a1 + 40) addObject:v4];
}

void sub_4AAE0(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  *v5.i64 = ([a2 integerValue] - *(a1 + 40));
  v6.i64[0] = 0;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *&v9 = vbslq_s8(vnegq_f64(v7), v6, v5).u64[0];
  if ([*(a1 + 32) _isRTL])
  {
    v8 = -v9;
  }

  else
  {
    v8 = v9;
  }

  [v10 cardStackTransitioningCardPrepare:objc_msgSend(*(a1 + 32) extraXOffsetForAnimation:{"isDismiss") ^ 1, v8}];
}

void sub_4ACE4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];

  if (!v6)
  {
    v7 = [v5 cardStackTransitioningCoverSourceHide];
    v8 = objc_retainBlock(v7);
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

void sub_4AE74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7 = [a3 cardStackTransitioningCoverSourceHide];
  v6 = objc_retainBlock(v7);
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_4AFC8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  [v4 cardStackTransitioningCardFinalize:{objc_msgSend(v3, "isDismiss") ^ 1}];
}

void sub_4C35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_4C374(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_4C38C(uint64_t a1)
{
  v2 = [*(a1 + 32) currentUbiquityIdentityToken];
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return _objc_release_x1(v2);
}

void sub_4C5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_4C5D8(uint64_t a1)
{
  result = [*(a1 + 32) dq_isICloudDriveEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_4C6CC(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    sub_1E5FD8((a1 + 40), v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = [*(a1 + 32) observers];
  [v11 addObject:*(a1 + 40)];
}

void sub_4C81C(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) observers];
    [v4 removeObject:*(a1 + 40)];
  }
}

id sub_4C970(uint64_t a1)
{
  v2 = [*(a1 + 32) coordinatingObserver];

  if (v2)
  {
    sub_1E6094(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 40);

  return [v11 setCoordinatingObserver:v12];
}

void sub_4CA4C(uint64_t a1)
{
  v2 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "BCUbiquityStatusMonitor: restartObserving was called", &v17, 2u);
  }

  [*(a1 + 32) dq_refreshUbiquityAvailabilityStatus];
  v3 = [*(a1 + 32) lastArchivedUbiquityIdentityToken];
  v4 = [*(a1 + 32) currentUbiquityIdentityToken];
  if (v3 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) lastArchivedUbiquityIdentityToken];
    v6 = [*(a1 + 32) currentUbiquityIdentityToken];
    v7 = [v5 isEqual:v6] ^ 1;
  }

  v8 = +[BCSyncUserDefaults isICloudDriveSyncOptedIn];
  v9 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = @"NO";
    if (v8)
    {
      v10 = @"YES";
    }

    v17 = 138412290;
    v18 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "BCUbiquityStatusMonitor: restartObserving cloudDriveOptedIn:%@", &v17, 0xCu);
  }

  if (v8 != [*(a1 + 32) archivedCloudDriveOptedIn])
  {
    [*(a1 + 32) setArchivedCloudDriveOptedIn:v8];
    v11 = BCUbiquityEnabledLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"disabled";
      if (v8)
      {
        v12 = @"enabled";
      }

      v17 = 138412290;
      v18 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "BCUbiquityStatusMonitor: restartObserving - Books / iCloud Drive switch was %@", &v17, 0xCu);
    }

    goto LABEL_17;
  }

  if (v7)
  {
LABEL_17:
    [*(a1 + 32) dq_archiveCurrentUbiquityIdentityToken];
    v13 = [*(a1 + 32) currentUbiquityIdentityToken];
    v14 = [*(a1 + 32) lastArchivedUbiquityIdentityToken];
    v15 = BCUbiquityEnabledLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "BCUbiquityStatusMonitor: restartObserving - notifying observers of a token change", &v17, 2u);
    }

    [*(a1 + 32) _notifyObserversForChangesWithCurrentToken:v13 lastToken:v14];
    goto LABEL_23;
  }

  v13 = [*(a1 + 32) currentUbiquityIdentityToken];
  v16 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "BCUbiquityStatusMonitor: restartObserving - tokens match ... so we are not notifying anyone for changes", &v17, 2u);
  }

  [*(a1 + 32) _notifyObserversForUnchangedWithCurrentToken:v13];
LABEL_23:
}

void sub_4CEF4(uint64_t a1)
{
  v2 = +[BUAccountsProvider sharedProvider];
  [v2 ubiquityIdentityDidChange];

  v3 = [*(a1 + 32) currentUbiquityIdentityToken];
  [*(a1 + 32) dq_refreshUbiquityAvailabilityStatus];
  v4 = [*(a1 + 32) currentUbiquityIdentityToken];
  [*(a1 + 32) dq_archiveCurrentUbiquityIdentityToken];
  v5 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1E60CC(v4, v5);
  }

  if (v3 == v4 || [v3 isEqual:v4])
  {
    if (!(v3 | v4))
    {
      v6 = BCUbiquityEnabledLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1E615C(v6);
      }
    }

    v7 = BCUbiquityEnabledLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "BCUbiquityStatusMonitor: p_ubiquityIdentityDidChange - tokens match. Skipping notification to observers for changes", buf, 2u);
    }

    [*(a1 + 32) _notifyObserversForUnchangedWithCurrentToken:v4];
  }

  else
  {
    v8 = BCUbiquityEnabledLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "BCUbiquityStatusMonitor: p_ubiquityIdentityDidChange - notifying observers of a token change", v9, 2u);
    }

    [*(a1 + 32) _notifyObserversForChangesWithCurrentToken:v4 lastToken:v3];
  }
}

id sub_4D324(uint64_t a1)
{
  v2 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "BCUbiquityStatusMonitor: iCloud identity changed. Notifying newToken:%@ oldToken:%@", &v6, 0x16u);
  }

  return [*(a1 + 48) ubiquityStatusChangedToAvailableWithNewIdentity:*(a1 + 32) oldIdentity:*(a1 + 40)];
}

id sub_4D3E4(uint64_t a1)
{
  v2 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "BCUbiquityStatusMonitor: iCloud identity changed. Notifying coordinating observer newToken:%@ oldToken:%@", &v6, 0x16u);
  }

  return [*(a1 + 48) ubiquityStatusChangedToAvailableWithNewIdentity:*(a1 + 32) oldIdentity:*(a1 + 40)];
}

id sub_4D6F8(uint64_t a1)
{
  v2 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "BCUbiquityStatusMonitor: iCloud identity NOT changed. Notifying token:%@", &v5, 0xCu);
  }

  return [*(a1 + 40) ubiquityStatusUnchangedWithIdentity:*(a1 + 32)];
}

id sub_4D7A8(uint64_t a1)
{
  v2 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "BCUbiquityStatusMonitor: iCloud identity NOT changed. Notifying coordinating observer token:%@", &v5, 0xCu);
  }

  return [*(a1 + 40) ubiquityStatusUnchangedWithIdentity:*(a1 + 32)];
}

void sub_4DA5C(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [v4 containerIdentifier];
  v6 = [v2 URLForUbiquityContainerIdentifier:v5];
  v7 = *(*v3 + 2);
  *(*v3 + 2) = v6;

  v8 = [*(*v3 + 2) URLByAppendingPathComponent:@"Documents"];
  v9 = *(*v3 + 3);
  *(*v3 + 3) = v8;

  v10 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1E61A0(v3, v10);
  }

  if (*(*v3 + 3))
  {
    v11 = objc_opt_new();
    v12 = [*(*v3 + 3) path];
    v13 = [v2 contentsOfDirectoryAtPath:v12 error:0];

    v14 = 0;
    if ([v13 count])
    {
      v15 = 0;
      do
      {
        v16 = [v13 objectAtIndex:v15];
        if (![v16 rangeOfString:@".Trash"])
        {
          v17 = [*(*v3 + 3) URLByAppendingPathComponent:v16];
          v29 = v14;
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_4DE54;
          v27[3] = &unk_2C9960;
          v28 = v2;
          [v11 coordinateWritingItemAtURL:v17 options:1 error:&v29 byAccessor:v27];
          v18 = v29;

          v14 = v18;
        }

        ++v15;
      }

      while (v15 < [v13 count]);
    }
  }

  v19 = BCUbiquityEnabledLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = *(*v3 + 3);
    *buf = 138412290;
    v31 = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "dq_refreshUbiquityAvailabilityStatus iCloud documentURL changed. {documentURL: %@}", buf, 0xCu);
  }

  v21 = BDSCloudKitLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = *(*v3 + 3);
    *buf = 138412290;
    v31 = v22;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "dq_refreshUbiquityAvailabilityStatus iCloud documentURL changed. {documentURL: %@}", buf, 0xCu);
  }

  v23 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = *(*v3 + 3);
    *buf = 141558274;
    v31 = 1752392040;
    v32 = 2112;
    v33 = v24;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "dq_refreshUbiquityAvailabilityStatus iCloud documentURL changed. {documentURL: %{mask.hash}@}", buf, 0x16u);
  }

  v25 = [*v3 dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4DF40;
  block[3] = &unk_2C7D40;
  block[4] = *v3;
  dispatch_async(v25, block);
}

void sub_4DE54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = 0;
  [v4 removeItemAtURL:v3 error:&v7];
  v5 = v7;
  if (v5)
  {
    v6 = BDSCloudKitLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Error deleting the folder:[%@] : Error: {%@}", buf, 0x16u);
    }
  }
}

void sub_4DF40(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) notifyQueue];
          v10[0] = _NSConcreteStackBlock;
          v10[1] = 3221225472;
          v10[2] = sub_4E0CC;
          v10[3] = &unk_2C7BE8;
          v9 = *(a1 + 32);
          v10[4] = v7;
          v10[5] = v9;
          dispatch_async(v8, v10);
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_4E0DC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = BKLibraryDataSourceUbiquityLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Container URL set to: <nil>", v7, 2u);
  }
}

void sub_4E26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4E39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_4E568(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_4E58C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _stateForLog];

  return v2;
}

void sub_4F01C(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

id sub_4F064(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  [v2 setUserInteractionEnabled:1];

  v3 = *(a1 + 40);

  return [v3 didShow];
}

id sub_4F640(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionEnabled:1];
  v2 = *(a1 + 32);

  return [v2 removeFromSuperview];
}

id BABackgroundColorDataFromBCAppearanceStyle(unint64_t a1)
{
  if (a1 > 4)
  {
    v1 = 4;
  }

  else
  {
    v1 = qword_2A3978[a1];
  }

  v2 = [[BABackgroundColorData alloc] initWithBackgroundColor:v1];

  return v2;
}

void sub_4FA00(id a1)
{
  v1 = objc_opt_new();
  qword_3421E8 = v1;

  _objc_release_x1(v1);
}

uint64_t BookFormatByExtension(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  if (![v1 caseInsensitiveCompare:@"epub"])
  {
    v3 = 0;
    goto LABEL_9;
  }

  if (![v2 caseInsensitiveCompare:@"pdf"])
  {
    v3 = 2;
    goto LABEL_9;
  }

  if (off_3421F8)
  {
    v3 = off_3421F8(v2);
  }

  else
  {
LABEL_6:
    v3 = 0xFFFFFFFFLL;
  }

LABEL_9:

  return v3;
}

uint64_t BookFormatByFilePath(void *a1)
{
  v1 = [a1 pathExtension];
  v2 = BookFormatByExtension(v1);

  return v2;
}

void sub_5125C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  [v3 contentInsetForCards];
  [v4 setContentInset:?];
}

void sub_5186C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_51884(void *result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (result[4] == a3)
  {
    v5 = result;
    result = [a2 unsignedIntegerValue];
    *(*(v5[5] + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

void sub_52444(uint64_t a1)
{
  [*(a1 + 32) updateCards];
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 40) view];
    v5 = *&CGAffineTransformIdentity.c;
    v7 = *&CGAffineTransformIdentity.a;
    v6 = v7;
    v8 = v5;
    v9 = *&CGAffineTransformIdentity.tx;
    v4 = v9;
    [v2 setTransform:&v7];

    v3 = [*(a1 + 48) view];
    v7 = v6;
    v8 = v5;
    v9 = v4;
    [v3 setTransform:&v7];
  }
}

void sub_524E8(uint64_t a1)
{
  CGAffineTransformMakeTranslation(&v7, -*(a1 + 56), 0.0);
  v2 = [*(a1 + 32) view];
  v6 = v7;
  [v2 setTransform:&v6];

  CGAffineTransformMakeTranslation(&v5, *(a1 + 56), 0.0);
  v3 = [*(a1 + 40) view];
  v6 = v5;
  [v3 setTransform:&v6];

  v4 = [*(a1 + 48) currentCardViewController];
  [v4 setScrimAlpha:1 animated:0.2 duration:*(a1 + 64)];
}

void sub_525B4(uint64_t a1)
{
  [*(a1 + 32) updateCards];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

void sub_5260C(uint64_t a1)
{
  CGAffineTransformMakeTranslation(&v6, -*(a1 + 48), 0.0);
  v2 = [*(a1 + 32) view];
  v5 = v6;
  [v2 setTransform:&v5];

  CGAffineTransformMakeTranslation(&v4, *(a1 + 48), 0.0);
  v3 = [*(a1 + 40) view];
  v5 = v4;
  [v3 setTransform:&v5];
}

void sub_526B0(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v5 = *&CGAffineTransformIdentity.c;
  v7 = *&CGAffineTransformIdentity.a;
  v6 = v7;
  v8 = v5;
  v9 = *&CGAffineTransformIdentity.tx;
  v4 = v9;
  [v2 setTransform:&v7];

  v3 = [*(a1 + 40) view];
  v7 = v6;
  v8 = v5;
  v9 = v4;
  [v3 setTransform:&v7];
}

void sub_52F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_52F94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (*(a1 + 32) == 1)
  {
    [v4 viewWillLayoutSubviews];
    v4 = v5;
  }

  [v4 goContracted];
}

void sub_52FF4(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = [a2 unsignedIntegerValue];
  if (v5 != [*(a1 + 32) focusedIndex])
  {
    v11 = [v13 cardNavigationController];
    v12 = [v11 popToRootViewControllerAnimated:0];

LABEL_5:
    [v13 goContracted];
    goto LABEL_10;
  }

  v6 = [v13 scrollView];
  [v6 contentOffset];
  if (v7 == 0.0)
  {
    v8 = [v13 cardNavigationController];
    v9 = [v8 viewControllers];
    v10 = a1 + 40;
    *(*(*(a1 + 40) + 8) + 24) = [v9 count] > 1;
  }

  else
  {
    v10 = a1 + 40;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (*(a1 + 48) == 1 && *(*(*v10 + 8) + 24) != 1)
  {
    goto LABEL_5;
  }

  [v13 goExpanded];
LABEL_10:
}

void sub_53338(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 unsignedIntegerValue];
  if (v5 < *(a1 + 40) || v5 > *(a1 + 48))
  {
    [v7 suspendAndTeardownForReason:@"horizontal size class change begin"];
    v6 = [v7 view];
    [v6 setHidden:1];

    [*(a1 + 32) addObject:v7];
  }
}

void sub_533D8(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 cardsCanExpand];

  v4 = [*(a1 + 32) displayedCardViewControllers];
  v5 = [v4 allValues];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    *&v8 = 138412290;
    v15 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        if (*(a1 + 48) != v3)
        {
          [*(*(&v16 + 1) + 8 * v11) clearSavedContentOffsets];
        }

        if ([v5 indexOfObjectIdenticalTo:{v12, v15, v16}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v13 = BCCardModelLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v21 = v12;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Skipped resuming card %@ as it's no longer displayed", buf, 0xCu);
          }
        }

        else
        {
          v14 = [v12 view];
          [v14 setHidden:0];

          [v12 resumeAndRebuildForReason:@"horizontal size class change end"];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }
}

void sub_5369C(uint64_t a1)
{
  [*(a1 + 32) _updateFramesToSize:{*(a1 + 40), *(a1 + 48)}];
  [*(a1 + 32) _layoutCards];
  *(*(a1 + 32) + 10) = 0;
  v2 = [*(a1 + 32) displayedCardViewControllers];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_53750;
  v3[3] = &unk_2C9A20;
  v3[4] = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_53750(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _frameForCardAtIndex:{objc_msgSend(a2, "integerValue")}];
  CGRectGetCenterNoRounding();
  v7 = v6;
  v9 = v8;
  v10 = [v5 view];
  [v10 setCenter:{v7, v9}];

  v20 = [v5 view];
  [v20 bounds];
  CGRectMakeWithOriginSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v5 view];

  [v19 setBounds:{v12, v14, v16, v18}];
}

void sub_5392C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _frameForCardAtIndex:{objc_msgSend(a2, "integerValue")}];
  CGRectGetCenterNoRounding();
  v7 = v6;
  v9 = v8;
  v10 = [v5 view];
  [v10 setCenter:{v7, v9}];

  v20 = [v5 view];
  [v20 bounds];
  CGRectMakeWithOriginSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v5 view];

  [v19 setBounds:{v12, v14, v16, v18}];
}

id sub_53FD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 expandedTransform];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  v3 = *(a1 + 32);
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  [v3 setTransform:v6];
  v4 = [*(a1 + 40) currentCardViewController];
  [v4 configureChromeForExpanded];

  return [*(a1 + 40) _didBecomeVisibleContentScrollView];
}

uint64_t sub_54418(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_54430(uint64_t a1)
{
  v2 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [*(a1 + 32) CGColor]);
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return _objc_release_x1(v2);
}

void sub_54494(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_5459C;
  v4[3] = &unk_2C9BE0;
  v8 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = v2;
  v6 = v3;
  v9 = *(a1 + 57);
  objc_copyWeak(&v7, &location);
  [UIView animateKeyframesWithDuration:0 delay:v4 options:0 animations:0.2 completion:0.0];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
}

void sub_54580(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_5459C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setBackgroundColor:*(*(*(a1 + 40) + 8) + 40)];
  }

  if ((*(a1 + 57) & 1) == 0)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_54678;
    v2[3] = &unk_2C8FF8;
    objc_copyWeak(&v3, (a1 + 48));
    [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:0.5 animations:0.5];
    objc_destroyWeak(&v3);
  }
}

void sub_54678(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained cardStackViewController];
  v2 = [v1 statusBarBackgroundController];
  [v2 setOpacity:1.0];
}

id sub_546E4(uint64_t a1, uint64_t a2)
{
  if (a2 || !*(a1 + 64))
  {
    if (!*(a1 + 64))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) currentCardViewController];
  v6 = [v5 traitOverrides];
  [v6 setUserInterfaceLevel:v4];

  if (*(a1 + 64))
  {
LABEL_6:
    [*(a1 + 40) setBackgroundColor:*(a1 + 48)];
  }

LABEL_7:
  v7 = *(a1 + 32);

  return [v7 zoomingAnimationCompletedAtPosition:a2];
}

void sub_54A64(uint64_t a1)
{
  [*(a1 + 32) _goContractedCommonTransformingView:*(a1 + 40)];
  v2 = [*(a1 + 32) currentCardViewController];
  [v2 configureChromeForContracted];
}

char *sub_54AC0(char *result, uint64_t a2)
{
  if (a2 == 1)
  {
    v9 = v2;
    v10 = v3;
    v4 = result;
    v5 = *(result + 56);
    *&v7.a = *(result + 40);
    *&v7.c = v5;
    *&v7.tx = *(result + 72);
    memset(&v8, 0, sizeof(v8));
    CGAffineTransformScale(&v8, &v7, 0.9, 0.9);
    v7 = v8;
    [*(v4 + 4) setTransform:&v7];
    v6 = *(v4 + 56);
    *&v7.a = *(v4 + 40);
    *&v7.c = v6;
    *&v7.tx = *(v4 + 72);
    return [*(v4 + 4) setTransform:&v7];
  }

  return result;
}

uint64_t sub_54EF8(uint64_t a1)
{
  v2 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [*(a1 + 32) CGColor]);
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return _objc_release_x1(v2);
}

void sub_54F5C(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_5505C;
  v4[3] = &unk_2C9C80;
  v8 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = v2;
  v6 = v3;
  objc_copyWeak(&v7, &location);
  [UIView animateKeyframesWithDuration:0 delay:v4 options:0 animations:0.2 completion:0.0];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
}

void sub_55040(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_5505C(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) setBackgroundColor:*(*(*(a1 + 40) + 8) + 40)];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_55148;
    v2[3] = &unk_2C8FF8;
    objc_copyWeak(&v3, (a1 + 48));
    [UIView addKeyframeWithRelativeStartTime:v2 relativeDuration:0.5 animations:0.5];
    objc_destroyWeak(&v3);
  }
}

void sub_55148(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained cardStackViewController];
  v2 = [v1 statusBarBackgroundController];
  [v2 setOpacity:0.0];
}

id sub_551B4(uint64_t a1, uint64_t a2)
{
  if (a2 || !*(a1 + 64))
  {
    if (!*(a1 + 64))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) currentCardViewController];
  v6 = [v5 traitOverrides];
  [v6 setUserInterfaceLevel:v4];

  if (*(a1 + 64))
  {
LABEL_6:
    [*(a1 + 40) setBackgroundColor:*(a1 + 48)];
  }

LABEL_7:
  v7 = *(a1 + 32);

  return [v7 zoomingAnimationCompletedAtPosition:a2];
}

void sub_5600C(id *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([a1[4] containsIndex:{objc_msgSend(v12, "unsignedIntegerValue")}])
  {
    [a1[5] setObject:v5 forKeyedSubscript:v12];
  }

  else
  {
    [v5 suspendAndTeardownForReason:@"card set: card not displayed"];
    v6 = [a1[6] suspendedCardViewControllers];
    [v6 setObject:v5 forKeyedSubscript:v12];

    v7 = [v5 view];
    [v7 setHidden:1];

    v8 = [v5 topContentViewController];
    v9 = [a1[6] scrollingAssertions];
    v10 = [v9 objectForKey:v8];

    if (v10)
    {
      v11 = [a1[6] suspendedCardsScrollingAssertions];
      [v11 setObject:v10 forKey:v8];
    }
  }
}

void sub_5614C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = [NSNumber numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = *(a1 + 40);
  if (v7)
  {
    [v8 _frameForCardAtIndex:a2];
    CGRectGetCenterNoRounding();
    v10 = v9;
    v12 = v11;
    v13 = [(BCCardViewController *)v7 view];
    [v13 setCenter:{v10, v12}];

    v14 = [(BCCardViewController *)v7 view];
    [v14 bounds];
    CGRectMakeWithOriginSize();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [(BCCardViewController *)v7 view];
    [v23 setBounds:{v16, v18, v20, v22}];

    v24 = [(BCCardViewController *)v7 cardNavigationController];
    v25 = [v24 topViewController];

    if (!v25)
    {
      v33 = [*(a1 + 48) contentViewControllerForCardSet:*(a1 + 40) index:a2 cardContentScrollManager:v7];
      if (!v33)
      {
        sub_1E63E8(0, v26, v27, v28, v29, v30, v31, v32);
      }

      [(BCCardViewController *)v7 setContentViewController:v33];
    }

    v34 = 0;
  }

  else
  {
    v35 = [v8 suspendedCardViewControllers];
    v36 = [NSNumber numberWithUnsignedInteger:a2];
    v37 = [v35 objectForKeyedSubscript:v36];

    v34 = v37 == 0;
    if (v37)
    {
      v38 = [*(a1 + 40) suspendedCardViewControllers];
      v39 = [NSNumber numberWithUnsignedInteger:a2];
      [v38 setObject:0 forKeyedSubscript:v39];

      v7 = v37;
    }

    else
    {
      v40 = [BCCardViewController alloc];
      v41 = *(a1 + 64);
      v42 = *(a1 + 40);
      [v42 distanceToExpand];
      v44 = v43;
      v45 = [*(a1 + 40) configuration];
      v46 = [(BCCardViewController *)v40 initWithNavigationControllerClass:v41 cardSetData:v42 distanceToExpand:v45 configuration:*(a1 + 40) cardSetViewController:*(a1 + 40) delegate:v44];

      v47 = [(BCCardViewController *)v46 view];
      [v47 setAlpha:0.0];

      [*(a1 + 40) addChildViewController:v46];
      v95[0] = _NSConcreteStackBlock;
      v95[1] = 3221225472;
      v95[2] = sub_56824;
      v95[3] = &unk_2C7D40;
      v7 = v46;
      v96 = v7;
      [UIView animateWithDuration:v95 animations:0.2];
    }

    v48 = [(BCCardViewController *)v7 view];
    v49 = *&CGAffineTransformIdentity.c;
    v94[0] = *&CGAffineTransformIdentity.a;
    v94[1] = v49;
    v94[2] = *&CGAffineTransformIdentity.tx;
    [v48 setTransform:v94];

    [*(a1 + 40) _frameForCardAtIndex:a2];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = [(BCCardViewController *)v7 view];
    [v58 setFrame:{v51, v53, v55, v57}];

    if (!v37)
    {
      v59 = [*(a1 + 40) scrollView];
      v60 = [(BCCardViewController *)v7 view];
      [v59 addSubview:v60];

      [(BCCardViewController *)v7 didMoveToParentViewController:*(a1 + 40)];
    }

    [*(a1 + 40) contentInsetForCards];
    [(BCCardViewController *)v7 setContentInset:?];
    if (v37)
    {
      v61 = [(BCCardViewController *)v7 topContentViewController];
      v62 = [*(a1 + 40) suspendedCardsScrollingAssertions];
      v63 = [v62 objectForKey:v61];

      v64 = [*(a1 + 40) suspendedCardsScrollingAssertions];
      [v64 removeObjectForKey:v61];

      if (v63)
      {
        v65 = [*(a1 + 40) scrollingAssertions];
        [v65 setObject:v63 forKey:v61];
      }

      [(BCCardViewController *)v7 resumeAndRebuildForReason:@"card layout"];
      v66 = [(BCCardViewController *)v7 view];
      [v66 setHidden:0];
    }

    else
    {
      v61 = [*(a1 + 48) contentViewControllerForCardSet:*(a1 + 40) index:a2 cardContentScrollManager:v7];
      if (!v61)
      {
        sub_1E6424(0, v67, v68, v69, v70, v71, v72, v73);
      }

      v74 = [*(a1 + 40) scrollingAssertions];
      if (v74)
      {
        v75 = v74;
        v76 = [*(a1 + 40) scrollingAssertions];
        v77 = [v76 objectForKey:v61];

        if (!v77)
        {
          v78 = [*(a1 + 40) scrollingAssertions];
          v79 = [[BCCardSetScrollingAssertion alloc] initWithContent:v61];
          [v78 setObject:v79 forKey:v61];
        }
      }

      [(BCCardViewController *)v7 setContentViewController:v61];
    }

    v80 = *(a1 + 32);
    v81 = [NSNumber numberWithUnsignedInteger:a2];
    [v80 setObject:v7 forKeyedSubscript:v81];

    v82 = [(BCCardViewController *)v7 view];
    [v82 layoutIfNeeded];
  }

  v83 = [*(a1 + 40) configuration];
  [v83 cardCornerRadius];
  [(BCCardViewController *)v7 setCornerRadius:?];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v84 = [*(a1 + 40) configuration];
    v85 = [v84 cardsCanExpand];

    v86 = v85 ? 3 : 2;
    v87 = [(BCCardViewController *)v7 cardNavigationController];
    [v87 _setPreferredNavigationBarPosition:v86];

    if (v85)
    {
      v88 = [(BCCardViewController *)v7 cardNavigationController];
      [v88 _setPositionBarsExclusivelyWithSafeArea:0];
    }
  }

  [(BCCardViewController *)v7 setIsCurrentCard:v4 == a2];
  if (v7)
  {
    v89 = [(BCCardViewController *)v7 cardNavigationController];
    v90 = [v89 topViewController];

    if (v90)
    {
      v91 = [(BCCardViewController *)v7 cardNavigationController];
      v92 = [v91 topViewController];
      v93 = BUProtocolCast();

      [v93 setDistanceFromFocusedCard:*(a1 + 56) - a2];
    }
  }

  if (_UISolariumEnabled() && [*(a1 + 40) isPresentationTransitionCompleted])
  {
    if (v34)
    {
      [(BCCardViewController *)v7 cardSetPresentationTransitionDidComplete];
    }

    else
    {
      [(BCCardViewController *)v7 updateNavBarAlpha];
    }
  }
}

void sub_56824(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

uint64_t sub_56A14(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _frameForCardAtIndex:a2];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) view];
  v12 = [*(a1 + 32) scrollView];
  [v11 convertRect:v12 fromView:{v4, v6, v8, v10}];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v24.origin.x = v14;
  v24.origin.y = v16;
  v24.size.width = v18;
  v24.size.height = v20;
  v25 = CGRectIntersection(v24, *(a1 + 48));
  v21 = *(*(a1 + 40) + 16);

  return v21(v25.origin, *&v25.origin.y, v25.size, *&v25.size.height);
}

void sub_56BC8(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 unsignedIntegerValue];
  v6 = *(a1 + 32);
  v8 = v5 >= v6;
  v7 = &v5[-v6];
  v8 = !v8 || v7 >= *(a1 + 40);
  if (v8)
  {
    v9 = [v10 view];
    [v9 setHidden:1];
  }
}

void sub_56CC4(id a1, NSNumber *a2, BCCardViewController *a3, BOOL *a4)
{
  v4 = [(BCCardViewController *)a3 view];
  [v4 setHidden:0];
}

void sub_57340(id a1)
{
  v1 = BCCardModelLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Done closing all cards", v2, 2u);
  }
}

void sub_57418(id a1)
{
  v1 = BCCardModelLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "Done closing card stack, EOB card and current asset", v2, 2u);
  }
}

id sub_5899C(uint64_t a1)
{
  [*(a1 + 32) setPersistentStoreCoordinator:*(a1 + 40)];
  [*(a1 + 32) setUndoManager:0];
  v2 = *(a1 + 32);
  v3 = NSMergeByPropertyObjectTrumpMergePolicy;

  return [v2 setMergePolicy:v3];
}

id sub_58AC0(uint64_t a1)
{
  [*(a1 + 32) loadManagedObjectModel];
  [*(a1 + 32) loadPersistentStoreCoordinator];
  v2 = *(a1 + 32);

  return [v2 loadPersistentStore];
}

id sub_58C2C(uint64_t a1)
{
  [*(a1 + 32) cacheMetadataDictionary];
  v2 = [*(a1 + 32) metadataDictionary];
  [v2 setValue:*(a1 + 40) forKey:*(a1 + 48)];

  v3 = *(a1 + 32);

  return [v3 setMetadataDictionaryDirty:1];
}

void sub_58DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_58DE8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_58E00(uint64_t a1)
{
  [*(a1 + 32) cacheMetadataDictionary];
  v5 = [*(a1 + 32) metadataDictionary];
  v2 = [v5 valueForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_59270(uint64_t a1)
{
  [*(a1 + 32) removePersistentStores];
  v2 = [*(a1 + 32) bringUpPersistentStoreLoader];
  v3 = [*(a1 + 32) persistentStoreCoordinator];
  v4 = [v2 addPersistentStoreToPersistentStoreCoordinator:v3];
  [*(a1 + 32) setCurrentPersistentStore:v4];

  v5 = *(a1 + 32);

  return [v5 setCurrentPersistentStoreType:2];
}

void sub_5A3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_5A414(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
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

        [*(a1 + 40) deleteObject:{*(*(&v8 + 1) + 8 * v6), v8}];
        ++*(*(*(a1 + 48) + 8) + 24);
        v7 = *(*(a1 + 48) + 8);
        if (*(v7 + 24) == 100)
        {
          *(v7 + 24) = 0;
          [*(a1 + 40) save:0];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_5B16C(void *a1)
{
  objc_begin_catch(a1);

  objc_exception_rethrow();
}

void sub_5B690(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x5B670);
}

void sub_5BB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_5BB4C(uint64_t a1)
{
  result = [*(a1 + 32) touchInsets];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

void sub_5C128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_5C14C(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setLookupResultPromise:0];

  v7 = objc_retainBlock(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v9, v5);
  }
}

void sub_5C500(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_5C614(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 0, 0, v5);
  }
}

double mainScreenScaleFactor()
{
  if (qword_342210 != -1)
  {
    sub_1E6554();
  }

  return *&qword_33D748;
}

void sub_5C83C(id a1)
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  qword_33D748 = v1;
}

BOOL isPortrait()
{
  v0 = +[UIWindow _applicationKeyWindow];
  v1 = [v0 windowScene];
  v2 = [v1 interfaceOrientation];

  return (v2 - 1) < 2;
}

BOOL isLandscape()
{
  v0 = +[UIWindow _applicationKeyWindow];
  v1 = [v0 windowScene];
  v2 = [v1 interfaceOrientation];

  return (v2 - 3) < 2;
}

uint64_t isPad()
{
  if (qword_342220 != -1)
  {
    sub_1E6568();
  }

  return byte_342218;
}

void sub_5C984(id a1)
{
  v1 = +[UIDevice currentDevice];
  if (objc_opt_respondsToSelector())
  {
    byte_342218 = [v1 userInterfaceIdiom] != 0;
  }
}

BOOL isMegaPad()
{
  if (qword_342230 != -1)
  {
    sub_1E657C();
  }

  return dword_342228 != 0;
}

void sub_5CA30(id a1)
{
  if (qword_342220 != -1)
  {
    sub_1E6568();
  }

  if (byte_342218 == 1)
  {
    v1 = +[UIScreen mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;

    dword_342228 = fmin(fabs(v3 + -1366.0), fabs(v5 + -1366.0)) < 0.00999999978;
  }
}

BOOL isPhone()
{
  if (qword_342220 != -1)
  {
    sub_1E6568();
  }

  return (byte_342218 & 1) == 0;
}

BOOL isTallPhone()
{
  v0 = +[UIScreen mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  if (qword_342220 != -1)
  {
    sub_1E6568();
  }

  if (byte_342218)
  {
    return 0;
  }

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  if (CGRectGetHeight(v10) >= 568.0)
  {
    return 1;
  }

  v11.origin.x = v2;
  v11.origin.y = v4;
  v11.size.width = v6;
  v11.size.height = v8;
  return CGRectGetWidth(v11) >= 568.0;
}

uint64_t isMultitaskingSupported()
{
  if ((byte_342239 & 1) == 0)
  {
    v0 = +[UIDevice currentDevice];
    if (objc_opt_respondsToSelector())
    {
      byte_342238 = [v0 isMultitaskingSupported];
    }

    byte_342239 = 1;
  }

  return byte_342238;
}

BOOL isRetina()
{
  v0 = +[UIScreen mainScreen];
  if (objc_opt_respondsToSelector())
  {
    [v0 scale];
    v2 = v1 > 1.0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL isARMv6()
{
  v2 = 0;
  v1 = 4;
  sysctlbyname("hw.cpusubtype", &v2, &v1, 0, 0);
  return v2 == 6;
}

void sub_5CF90(id a1)
{
  v19[0] = @"All_Collection_ID";
  v18 = IMCommonCoreBundle();
  v17 = [v18 localizedStringForKey:@"Library" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v20[0] = v17;
  v19[1] = @"AudioBooks_Collection_ID";
  v16 = IMCommonCoreBundle();
  v15 = [v16 localizedStringForKey:@"Audiobooks" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v20[1] = v15;
  v19[2] = @"Books_Collection_ID";
  v14 = IMCommonCoreBundle();
  v13 = [v14 localizedStringForKey:@"Books" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v20[2] = v13;
  v19[3] = @"Downloaded_Collection_ID";
  v12 = IMCommonCoreBundle();
  v1 = [v12 localizedStringForKey:@"Downloaded" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v20[3] = v1;
  v19[4] = @"Finished_Collection_ID";
  v2 = IMCommonCoreBundle();
  v3 = [v2 localizedStringForKey:@"Finished" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v20[4] = v3;
  v19[5] = @"Pdfs_Collection_ID";
  v4 = IMCommonCoreBundle();
  v5 = [v4 localizedStringForKey:@"PDFs" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v20[5] = v5;
  v19[6] = @"Want_To_Read_Collection_ID";
  v6 = IMCommonCoreBundle();
  v7 = [v6 localizedStringForKey:@"Want to Read" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v20[6] = v7;
  v19[7] = @"Samples_Collection_ID";
  v8 = IMCommonCoreBundle();
  v9 = [v8 localizedStringForKey:@"My Samples" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
  v20[7] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:8];
  v11 = qword_342240;
  qword_342240 = v10;
}

void sub_5D4B8(id a1)
{
  v3[0] = @"All_Collection_ID";
  v3[1] = @"AudioBooks_Collection_ID";
  v4[0] = &off_2E58B8;
  v4[1] = &off_2E58D0;
  v3[2] = @"Books_Collection_ID";
  v3[3] = @"Downloaded_Collection_ID";
  v4[2] = &off_2E58E8;
  v4[3] = &off_2E5900;
  v3[4] = @"Finished_Collection_ID";
  v3[5] = @"Pdfs_Collection_ID";
  v4[4] = &off_2E5918;
  v4[5] = &off_2E5930;
  v3[6] = @"Want_To_Read_Collection_ID";
  v3[7] = @"Samples_Collection_ID";
  v4[6] = &off_2E5948;
  v4[7] = &off_2E5960;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:8];
  v2 = qword_342250;
  qword_342250 = v1;
}

void sub_5DAA0(uint64_t a1, uint64_t a2)
{
  --*(*(a1 + 32) + 8);
  v3 = *(a1 + 32);
  if (!*(v3 + 8))
  {
    v5 = objc_retainBlock(*(v3 + 16));
    if (v5)
    {
      v6 = v5;
      (*(v5 + 2))(v5, a2);
      v5 = v6;
    }
  }
}

void sub_5E188(id a1)
{
  v1 = objc_alloc_init(NSNumberFormatter);
  v2 = qword_342260;
  qword_342260 = v1;

  v3 = qword_342260;
  v4 = +[NSLocale currentLocale];
  [v3 setLocale:v4];

  v5 = qword_342260;

  [v5 setNumberStyle:3];
}

void sub_5EC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_5EC90(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (++*(*(result[4] + 8) + 24) >= result[5])
  {
    *a7 = 1;
    v7 = result[6];
    if (v7)
    {
      *v7 = a5 + a6;
    }
  }

  return result;
}

void sub_5EE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_5EE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = a3 + a4;
  v10 = *(a1 + 48);
  result = [*(a1 + 32) length];
  if (v9 <= v10 - result)
  {
    *(*(*(a1 + 40) + 8) + 24) = v9;
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

void sub_5F63C(id a1)
{
  v3 = objc_alloc_init(NSMutableCharacterSet);
  [v3 addCharactersInRange:{34, 1}];
  [v3 addCharactersInRange:{39, 1}];
  [v3 addCharactersInRange:{171, 1}];
  [v3 addCharactersInRange:{187, 1}];
  [v3 addCharactersInRange:{8216, 7}];
  [v3 addCharactersInRange:{8249, 2}];
  [v3 addCharactersInRange:{12296, 8}];
  v1 = [v3 copy];
  v2 = qword_342270;
  qword_342270 = v1;
}

BOOL sub_5F824(id a1, NSObject *a2, BOOL *a3)
{
  v3 = a2;
  objc_opt_class();
  v4 = BUDynamicCast();

  LOBYTE(v3) = [v4 length] != 0;
  return v3;
}

__CFString *BC_CFXMLCreateStringByUnescapingEntities(const __CFAllocator *a1, CFStringRef theString, const __CFDictionary *a3)
{
  v4 = theString;
  Length = CFStringGetLength(theString);
  if (a3)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, a3);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v8 = MutableCopy;
  v88 = 0;
  v85 = 0;
  v87 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  *buffer = 0u;
  v76 = 0u;
  CFDictionaryAddValue(MutableCopy, @"amp", @"&");
  CFDictionaryAddValue(v8, @"quot", @"");
  CFDictionaryAddValue(v8, @"lt", @"<");
  CFDictionaryAddValue(v8, @"gt", @">");
  CFDictionaryAddValue(v8, @"apos", @"'");
  v83 = v4;
  v86 = 0;
  *&v87 = Length - 1;
  CharactersPtr = CFStringGetCharactersPtr(v4);
  CStringPtr = 0;
  v84 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v4, 0x600u);
  }

  v85 = CStringPtr;
  *(&v87 + 1) = 0;
  v88 = 0;
  Mutable = CFStringCreateMutable(a1, 0);
  theStringa = Mutable;
  if (Length >= 1)
  {
    v12 = 0;
    v13 = 0;
    v72 = v8;
    v70 = a1;
    v71 = v4;
    while (1)
    {
      if (v13 < 0 || (v14 = v87, v87 <= v13))
      {
        v16 = v13 + 1;
      }

      else
      {
        if (v84)
        {
          v15 = v84[v86 + v13];
        }

        else if (v85)
        {
          v15 = v85[v86 + v13];
        }

        else
        {
          if (v88 <= v13 || (v17 = *(&v87 + 1), *(&v87 + 1) > v13))
          {
            v18 = v13 - 4;
            if (v13 < 4)
            {
              v18 = 0;
            }

            if (v18 + 64 < v87)
            {
              v14 = v18 + 64;
            }

            *(&v87 + 1) = v18;
            v88 = v14;
            v89.length = v14 - v18;
            v89.location = v86 + v18;
            CFStringGetCharacters(v83, v89, buffer);
            v17 = *(&v87 + 1);
          }

          v15 = buffer[v13 - v17];
        }

        v19 = v13 + 1;
        if (v15 == 38)
        {
          if (v13 > v12)
          {
            v95.location = v12;
            v95.length = v13 - v12;
            v20 = CFStringCreateWithSubstring(a1, v4, v95);
            CFStringAppend(Mutable, v20);
            CFRelease(v20);
          }

          v21 = v87;
          if (v87 <= v19)
          {
            v22 = 0;
            v16 = v13 + 2;
          }

          else
          {
            if (v84)
            {
              v22 = v84[v86 + v19];
            }

            else if (v85)
            {
              v22 = v85[v86 + v19];
            }

            else
            {
              if (v88 <= v19 || (v23 = *(&v87 + 1), *(&v87 + 1) > v19))
              {
                v24 = v13 - 3;
                if (v13 < 3)
                {
                  v24 = 0;
                }

                if (v24 + 64 < v87)
                {
                  v21 = v24 + 64;
                }

                *(&v87 + 1) = v24;
                v88 = v21;
                v90.length = v21 - v24;
                v90.location = v86 + v24;
                CFStringGetCharacters(v83, v90, buffer);
                v23 = *(&v87 + 1);
              }

              v22 = buffer[v19 - v23];
            }

            v16 = v13 + 2;
            if (v22 == 35)
            {
              v25 = v87;
              if (v87 <= v16)
              {
                v39 = 0;
                v22 = 0;
                v16 = v13 + 3;
              }

              else
              {
                if (v84)
                {
                  v22 = v84[v86 + v16];
                }

                else if (v85)
                {
                  v22 = v85[v86 + v16];
                }

                else
                {
                  if (v88 <= v16 || (v40 = *(&v87 + 1), *(&v87 + 1) > v16))
                  {
                    v41 = v13 - 2;
                    if (v13 < 2)
                    {
                      v41 = 0;
                    }

                    if (v41 + 64 < v87)
                    {
                      v25 = v41 + 64;
                    }

                    *(&v87 + 1) = v41;
                    v88 = v25;
                    v92.length = v25 - v41;
                    v92.location = v86 + v41;
                    CFStringGetCharacters(v83, v92, buffer);
                    v40 = *(&v87 + 1);
                  }

                  v22 = buffer[v16 - v40];
                }

                v16 = v13 + 3;
                if (v22 == 120)
                {
                  v42 = v87;
                  if (v87 <= v16)
                  {
                    v22 = 0;
                  }

                  else if (v84)
                  {
                    v22 = v84[v86 + v16];
                  }

                  else if (v85)
                  {
                    v22 = v85[v86 + v16];
                  }

                  else
                  {
                    if (v88 <= v16 || (v65 = *(&v87 + 1), *(&v87 + 1) > v16))
                    {
                      v66 = v13 - 1;
                      if (!v13)
                      {
                        v66 = 0;
                      }

                      if (v66 + 64 < v87)
                      {
                        v42 = v66 + 64;
                      }

                      *(&v87 + 1) = v66;
                      v88 = v42;
                      v94.length = v42 - v66;
                      v94.location = v86 + v66;
                      CFStringGetCharacters(v83, v94, buffer);
                      v65 = *(&v87 + 1);
                    }

                    v22 = buffer[v16 - v65];
                  }

                  v16 = v13 + 4;
                  v43 = 16;
                  v39 = 1;
                  goto LABEL_93;
                }

                v39 = 0;
              }

              v43 = 10;
LABEL_93:
              v26 = 0;
              if (Length <= v16)
              {
                v44 = v16;
              }

              else
              {
                v44 = Length;
              }

              v45 = -v16;
              for (i = v16 + 64; ; ++i)
              {
                if (v16 >= 4)
                {
                  v47 = 4;
                }

                else
                {
                  v47 = v16;
                }

                if ((v22 - 48) > 9u)
                {
                  v49 = v39 ^ 1;
                  if ((v22 - 97) > 5u)
                  {
                    v50 = 1;
                  }

                  else
                  {
                    v50 = v39 ^ 1;
                  }

                  if (v50)
                  {
                    if ((v22 - 65) > 5u)
                    {
                      v49 = 1;
                    }

                    if (v49)
                    {
                      a1 = v70;
                      v4 = v71;
                      v8 = v72;
                      Mutable = theStringa;
                      v19 = v13 + 1;
                      goto LABEL_48;
                    }

                    v48 = 16 * v26 - 55;
                  }

                  else
                  {
                    v48 = 16 * v26 - 87;
                  }
                }

                else
                {
                  v48 = v26 * v43 - 48;
                }

                v26 = v48 + v22;
                if (v44 == v16)
                {
                  v16 = v44;
                  a1 = v70;
                  v4 = v71;
                  v8 = v72;
                  Mutable = theStringa;
                  v19 = v13 + 1;
                  goto LABEL_130;
                }

                if (v16 < 0 || (v51 = v87, v87 <= v16))
                {
                  v22 = 0;
                }

                else
                {
                  if (v84)
                  {
                    v52 = &v84[v86];
LABEL_116:
                    v22 = v52[v16];
                    goto LABEL_118;
                  }

                  if (!v85)
                  {
                    if (v88 <= v16 || (v53 = *(&v87 + 1), *(&v87 + 1) > v16))
                    {
                      v54 = -v47;
                      v55 = v47 + v45;
                      v56 = i - v47;
                      v57 = v16 + v54;
                      v58 = v57 + 64;
                      if (v57 + 64 >= v87)
                      {
                        v58 = v87;
                      }

                      *(&v87 + 1) = v57;
                      v88 = v58;
                      if (v87 >= v56)
                      {
                        v51 = v56;
                      }

                      v93.location = v57 + v86;
                      v93.length = v51 + v55;
                      CFStringGetCharacters(v83, v93, buffer);
                      v53 = *(&v87 + 1);
                    }

                    v52 = &buffer[-v53];
                    goto LABEL_116;
                  }

                  v22 = v85[v86 + v16];
                }

LABEL_118:
                ++v16;
                --v45;
              }
            }
          }

          v26 = 0xFFFF;
LABEL_48:
          if (v22 != 59 && v16 < Length)
          {
            v27 = -v16;
            v28 = v16 + 64;
            while (1)
            {
              if (v16 >= 4)
              {
                v29 = 4;
              }

              else
              {
                v29 = v16;
              }

              if (v16 < 0 || (v30 = v87, v87 <= v16))
              {
                v32 = 0;
              }

              else
              {
                if (v84)
                {
                  v31 = &v84[v86];
LABEL_58:
                  v32 = v31[v16];
                  goto LABEL_60;
                }

                if (!v85)
                {
                  if (v88 <= v16 || (v33 = *(&v87 + 1), *(&v87 + 1) > v16))
                  {
                    v34 = -v29;
                    v35 = v29 + v27;
                    v36 = v28 - v29;
                    v37 = v16 + v34;
                    v38 = v37 + 64;
                    if (v37 + 64 >= v87)
                    {
                      v38 = v87;
                    }

                    *(&v87 + 1) = v37;
                    v88 = v38;
                    if (v87 >= v36)
                    {
                      v30 = v36;
                    }

                    v91.location = v37 + v86;
                    v91.length = v30 + v35;
                    CFStringGetCharacters(v83, v91, buffer);
                    v33 = *(&v87 + 1);
                  }

                  v31 = &buffer[-v33];
                  goto LABEL_58;
                }

                v32 = v85[v86 + v16];
              }

LABEL_60:
              ++v16;
              if (v32 != 59)
              {
                --v27;
                ++v28;
                if (v16 < Length)
                {
                  continue;
                }
              }

              v8 = v72;
              Mutable = theStringa;
              break;
            }
          }

LABEL_130:
          if (v26 == 0xFFFF)
          {
            v96.length = v16 - v13 - 2;
            v96.location = v19;
            v59 = CFStringCreateWithSubstring(a1, v4, v96);
            Value = CFDictionaryGetValue(v8, v59);
            if (Value)
            {
              v61 = Value;
              v62 = Mutable;
            }

            else
            {
              CFRelease(v59);
              v97.location = v13;
              v97.length = v16 - v13;
              v59 = CFStringCreateWithSubstring(a1, v4, v97);
              v62 = Mutable;
              v61 = v59;
            }

            CFStringAppend(v62, v61);
            CFRelease(v59);
          }

          else
          {
            if (v26 < 0x10000)
            {
              chars[0] = v26;
              v63 = Mutable;
              v64 = 1;
            }

            else
            {
              chars[0] = ((v26 + 67043328) >> 10) - 10240;
              chars[1] = v26 & 0x3FF | 0xDC00;
              v63 = Mutable;
              v64 = 2;
            }

            CFStringAppendCharacters(v63, chars, v64);
          }

          v12 = v16;
        }

        else
        {
          v16 = v13 + 1;
        }
      }

      v13 = v16;
      if (v16 >= Length)
      {
        goto LABEL_152;
      }
    }
  }

  v16 = 0;
  v12 = 0;
LABEL_152:
  if (v12 < Length)
  {
    v98.length = v16 - v12;
    v98.location = v12;
    v67 = CFStringCreateWithSubstring(a1, v4, v98);
    CFStringAppend(theStringa, v67);
    v68 = v67;
    Mutable = theStringa;
    CFRelease(v68);
  }

  CFRelease(v8);
  return Mutable;
}

void sub_60F00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_60F1C(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[1] superview];

    if (v5)
    {
      v6 = v4[1];
      if (UIAccessibilityIsReduceMotionEnabled())
      {
        v7 = 0.3;
      }

      else
      {
        v7 = 0.15;
      }

      v8 = [[UIViewPropertyAnimator alloc] initWithDuration:0 curve:0 animations:v7];
      [v6 setImage:v9 animatedWithAnimator:v8];

      [v8 startAnimation];
    }
  }
}

id sub_62788(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    [a2 im_visibleChildViewControllers];
  }

  else
  {
    [a2 childViewControllers];
  }
  v2 = ;

  return v2;
}

void sub_64AF0(uint64_t a1)
{
  [*(a1 + 32) setTintColor:*(a1 + 40)];
  v2 = objc_retainBlock(*(a1 + 48));
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

id BKSemanticLayoutInternalLog()
{
  if (qword_3422A8 != -1)
  {
    sub_1E66C8();
  }

  v1 = qword_3422A0;

  return v1;
}

void sub_662A4(id a1)
{
  if (+[BCDevice isInternalInstall])
  {
    v1 = os_log_create("com.apple.iBooks", "BKSemanticLayoutInternal");
  }

  else
  {
    v1 = &_os_log_disabled;
    v2 = &_os_log_disabled;
  }

  v3 = qword_3422A0;
  qword_3422A0 = v1;
}

void sub_66358(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v4 = [v1 objectForKey:@"kBKSemanticLayoutOptions_v3"];

  v2 = [BCSemanticLayoutOptions fromJSON:v4];
  v3 = qword_3422B8;
  qword_3422B8 = v2;
}

void sub_66424(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKSemanticLayoutOptions");
  qword_3422C0 = v1;

  _objc_release_x1(v1);
}

double sub_66774(void *a1, void *a2, double a3)
{
  v5 = a2;
  v6 = a1;
  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:v5];

  v8 = BUDynamicCast();

  if (v8)
  {
    [v8 floatValue];
    a3 = v9;
  }

  return a3;
}

void sub_674D8(id a1)
{
  v1 = objc_opt_new();
  v2 = +[BCCoverEffects sharedInstance];
  v3 = [v2 bookCoverEffectFilters];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 identifier];
        if (v10)
        {
          [v1 setObject:v9 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = qword_3422D0;
  qword_3422D0 = v1;
}

void sub_67CEC(uint64_t a1, CGImageRef image, double a3, double a4, double a5, double a6)
{
  if (image)
  {
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    v14 = *(a1 + 64);
    v15 = Width / v14;
    v16 = a4 + 0.0 / v14;
    v17 = a3 + 0.0 / v14;
    v18 = v15 - (a4 + a6);
    v19 = Height / v14 - (a3 + a5);
    v20 = [BICImage imageWithCGImage:image];
    [*(a1 + 32) setImage:v20];

    [*(a1 + 32) setNonShadowArea:{v16, v17, v18, v19}];
    [*(a1 + 32) setProcessingOptions:{objc_msgSend(*(a1 + 40), "processingOptions")}];
    if ([*(a1 + 48) isGeneric])
    {
      [*(a1 + 32) setProcessingOptions:{objc_msgSend(*(a1 + 32), "processingOptions") | 0x200}];
    }

    [BICCacheStats logDescribedImage:*(a1 + 32) withComment:@"CacheTransformWithProcessingOptions"];
    v21 = objc_retainBlock(*(a1 + 56));
    if (v21)
    {
      v22 = v21;
      (*(v21 + 2))(v21, *(a1 + 32));
      v21 = v22;
    }
  }
}

void sub_68028(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  v15 = objc_retainBlock(*(a1 + 40));
  if (v15)
  {
    v15[2](v15, [v14 CGImage], 0, a4, a5, a6, a7);
  }

  v16 = *(a1 + 32);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_68150;
  v18[3] = &unk_2C7BE8;
  v18[4] = v16;
  v19 = v13;
  v17 = v13;
  os_unfair_lock_lock(v16 + 2);
  sub_68150(v18);
  os_unfair_lock_unlock(v16 + 2);
}

void sub_68150(uint64_t a1)
{
  v2 = [*(a1 + 32) renderOperations];
  [v2 removeObjectIdenticalTo:*(a1 + 40)];
}

void sub_681A4(uint64_t a1)
{
  v2 = [*(a1 + 32) renderOperations];
  [v2 addObject:*(a1 + 40)];
}

void sub_6856C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v21 = *v31;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v31 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v7 = [*(a1 + 40) imagesInCacheSinceLaunch];
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v35 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v27;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v27 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v26 + 1) + 8 * j);
              if ([v12 hasPrefix:v6])
              {
                [v2 addObject:v12];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v26 objects:v35 count:16];
          }

          while (v9);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v4);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v2;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (k = 0; k != v15; k = k + 1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * k);
        v19 = [*(a1 + 40) dataStore];
        [v19 markAsOldImageForEntryLocation:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v15);
  }
}

void sub_68990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_689AC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_689C4(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [*(a1 + 32) imagesInCacheSinceLaunch];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if ([v8 hasPrefix:*(a1 + 40)])
        {
          v9 = [*(a1 + 32) dataStore];
          v10 = [v9 imageForEntryLocation:v8];

          if (v10)
          {
            [v10 setLocation:1];
            [v2 addObject:v10];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 32) comparator];
  v12 = [v11 sortedBestMatchOf:*(a1 + 48) toCandidateImages:v2];
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

void sub_68E5C(uint64_t a1)
{
  v2 = [*(a1 + 32) imagesInCacheSinceLaunch];
  [v2 addObject:*(a1 + 40)];
}

void sub_690C4(uint64_t a1)
{
  v2 = [*(a1 + 32) imagesInCacheSinceLaunch];
  [v2 removeObject:*(a1 + 40)];
}

void sub_693A8(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) imagesInCacheSinceLaunch];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 hasPrefix:*(a1 + 40)])
        {
          v8 = [BICDescribedImage describedImageFromEntryLocation:v7];
          v9 = [v8 processingOptions] & 0xFFFFFDFF;
          if (v9 == [*(a1 + 48) processingOptions])
          {
            objc_storeStrong((*(*(a1 + 56) + 8) + 40), v7);

            goto LABEL_13;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void sub_69508(uint64_t a1)
{
  v2 = [*(a1 + 32) imagesInCacheSinceLaunch];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = (*(*(a1 + 48) + 8) + 40);

    objc_storeStrong(v5, v4);
  }
}

void sub_698E4(uint64_t a1)
{
  v5 = [*(a1 + 32) imagesInCacheSinceLaunch];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_69CD8(uint64_t a1)
{
  v2 = [*(a1 + 32) imagesInCacheSinceLaunch];
  v3 = [v2 mutableCopy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 40);
  v7 = *(*(*(a1 + 48) + 8) + 40);
  v8 = [NSPredicate predicateWithFormat:@"SELF beginswith %@", v6];
  [v7 filterUsingPredicate:v8];
}

void sub_69F8C(uint64_t a1)
{
  v2 = [*(a1 + 32) imagesInCacheSinceLaunch];
  [v2 removeObject:*(a1 + 40)];
}

void sub_6A11C(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_retainBlock(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void sub_6A234(uint64_t a1)
{
  v1 = objc_retainBlock(*(a1 + 32));
  if (v1)
  {
    v2 = v1;
    v1[2]();
    v1 = v2;
  }
}

id BCSignpostFeedViewController()
{
  if (qword_3422E8 != -1)
  {
    sub_1E6818();
  }

  v1 = qword_3422E0;

  return v1;
}

void sub_6A37C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "FeedViewController");
  qword_3422E0 = v1;

  _objc_release_x1(v1);
}

id BCSignpostLaunch()
{
  if (qword_3422F8 != -1)
  {
    sub_1E682C();
  }

  v1 = qword_3422F0;

  return v1;
}

void sub_6A404(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "Launch");
  qword_3422F0 = v1;

  _objc_release_x1(v1);
}

id BCSignpostLibrary()
{
  if (qword_342308 != -1)
  {
    sub_1E6840();
  }

  v1 = qword_342300;

  return v1;
}

void sub_6A48C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "Library");
  qword_342300 = v1;

  _objc_release_x1(v1);
}

id BCSignpostLibraryDataSource()
{
  if (qword_342318 != -1)
  {
    sub_1E6854();
  }

  v1 = qword_342310;

  return v1;
}

void sub_6A514(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "Library DataSource");
  qword_342310 = v1;

  _objc_release_x1(v1);
}

id BCSignpostLibrarySetupQueue()
{
  if (qword_342328 != -1)
  {
    sub_1E6868();
  }

  v1 = qword_342320;

  return v1;
}

void sub_6A59C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "LibrarySetupQueue");
  qword_342320 = v1;

  _objc_release_x1(v1);
}

id BCSignpostPreLaunchQueue()
{
  if (qword_342338 != -1)
  {
    sub_1E687C();
  }

  v1 = qword_342330;

  return v1;
}

void sub_6A624(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "PreLaunchQueue");
  qword_342330 = v1;

  _objc_release_x1(v1);
}

id BCSignpostStartupQueue()
{
  if (qword_342348 != -1)
  {
    sub_1E6890();
  }

  v1 = qword_342340;

  return v1;
}

void sub_6A6AC(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "StartupQueue");
  qword_342340 = v1;

  _objc_release_x1(v1);
}

uint64_t sub_6AA6C()
{
  v0 = objc_opt_new();
  qword_342350 = v0;

  return _objc_release_x1(v0);
}

id IMCommonCoreAccessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:v1 value:&stru_2D2930 table:@"BCCommonCoreAccessibility"];

  if (IMAccessibilityShouldPerformValidationChecks())
  {
    if (v3 == v1)
    {
      ShouldCrashOnValidationErrorAfterLaunch = IMAccessibilityShouldCrashOnValidationErrorAfterLaunch();
      if (__IMAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"error: String could not be found for key: %@", v5, v6, v7, v8, v9, v1))
      {
        abort();
      }
    }
  }

  return v3;
}

id __IMAccessibilityStringForVariables(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  objc_opt_class();
  objc_opt_class();
  v10 = [NSMutableString stringWithString:&stru_2D2930];
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v11 = [v9 string];
  }

  v12 = v11;
LABEL_7:
  if ([v12 length])
  {
    [v10 appendString:v12];
  }

  v18 = &a9;
  while (1)
  {
    v13 = v18++;
    v14 = *v13;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
LABEL_14:
      v16 = v15;
      goto LABEL_16;
    }

    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 string];
      goto LABEL_14;
    }

    v16 = 0;
LABEL_16:
    if (![v16 length])
    {
      goto LABEL_21;
    }

    if ([v16 isEqualToString:@"__IMAccessibilityStringForVariablesSentinel"])
    {
      break;
    }

    if ([v10 length])
    {
      [v10 appendString:{@", "}];
    }

    [v10 appendString:v16];
LABEL_21:
  }

  return v10;
}

void IMAccessibilityPerformBlockOnMainThread(void *a1)
{
  block = a1;
  if (+[NSThread isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }
}

void IMAccessibilityPerformBlockOnMainThreadAfterDelay(void *a1, double a2)
{
  v2 = (a2 * 1000000000.0);
  block = a1;
  v3 = dispatch_time(0, v2);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_6B3F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_6B408(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_6B420(uint64_t a1)
{
  v2 = sub_6B4D4(*(a1 + 48), [*(a1 + 32) epubTheme]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v5 CGColor]);

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_6B4D4(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 0:
      if (a2 > 2)
      {
        switch(a2)
        {
          case 3:
            v3 = 0.968627451;
            v8 = 0.945098039;
            v4 = 0.894117647;
            goto LABEL_146;
          case 4:
            v3 = 0.282352941;
            v4 = 0.290196078;
            goto LABEL_8;
          case 5:
            goto LABEL_37;
        }
      }

      else if ((a2 + 1) < 4)
      {
        goto LABEL_37;
      }

      goto LABEL_111;
    case 1:
      if (a2 <= 2)
      {
        if ((a2 + 1) >= 4)
        {
          goto LABEL_111;
        }

        goto LABEL_26;
      }

      switch(a2)
      {
        case 3:
          goto LABEL_130;
        case 4:
          v3 = 0.341176471;
          v4 = 0.356862745;
          goto LABEL_8;
        case 5:
LABEL_26:
          v2 = +[UIColor bc_booksSecondaryBackground];
          goto LABEL_159;
      }

      goto LABEL_111;
    case 2:
      if (a2 <= 2)
      {
        if ((a2 + 1) >= 4)
        {
          goto LABEL_111;
        }

        goto LABEL_17;
      }

      switch(a2)
      {
        case 3:
LABEL_130:
          v3 = 0.917647059;
          v8 = 0.898039216;
          v4 = 0.843137255;
          goto LABEL_146;
        case 4:
          v3 = 0.22745098;
          v4 = 0.235294118;
          goto LABEL_8;
        case 5:
LABEL_17:
          v2 = +[UIColor bc_booksGroupedBackground];
          goto LABEL_159;
      }

      goto LABEL_111;
    case 3:
      if (a2 <= 2)
      {
        if ((a2 + 1) >= 4)
        {
          goto LABEL_111;
        }

        goto LABEL_40;
      }

      switch(a2)
      {
        case 3:
          v8 = 0.976470588;
          v4 = 0.925490196;
          v3 = 1.0;
          goto LABEL_146;
        case 4:
          v3 = 0.301960784;
          v4 = 0.309803922;
LABEL_8:
          v5 = 1.0;
          goto LABEL_157;
        case 5:
LABEL_40:
          v2 = +[UIColor bc_booksSecondaryGroupedBackground];
          goto LABEL_159;
      }

      goto LABEL_111;
    case 4:
      if (a2 <= 2)
      {
        if ((a2 + 1) >= 4)
        {
          goto LABEL_111;
        }

        v6 = 0.7;
        goto LABEL_44;
      }

      if (a2 == 3)
      {
        v3 = 0.682352941;
        v8 = 0.654901961;
        v4 = 0.545098039;
        goto LABEL_146;
      }

      if (a2 == 4)
      {
        v6 = 0.666666667;
        v7 = 0.5;
        goto LABEL_45;
      }

      if (a2 != 5)
      {
        goto LABEL_111;
      }

      v2 = +[UIColor systemBlackColor];
      goto LABEL_159;
    case 5:
      if (a2 <= 2)
      {
        goto LABEL_33;
      }

      switch(a2)
      {
        case 3:
          v3 = 0.290196078;
          v8 = 0.2;
          v4 = 0.125490196;
          goto LABEL_146;
        case 4:
          v5 = 0.77;
          break;
        case 5:
          v5 = 0.67;
          break;
        default:
          goto LABEL_111;
      }

      v3 = 1.0;
      v8 = 1.0;
      v4 = 1.0;
      goto LABEL_158;
    case 6:
      if (a2 <= 2)
      {
        if ((a2 + 1) >= 4)
        {
          goto LABEL_111;
        }

        goto LABEL_48;
      }

      switch(a2)
      {
        case 3:
          v3 = 0.290196078;
          v8 = 0.2;
          v4 = 0.125490196;
          v5 = 0.5;
          goto LABEL_158;
        case 4:
          v3 = 0.921568627;
          v4 = 0.960784314;
          v5 = 0.4;
          goto LABEL_157;
        case 5:
LABEL_48:
          v2 = +[UIColor bc_booksSecondaryLabelColor];
          goto LABEL_159;
      }

      goto LABEL_111;
    case 7:
    case 10:
      if (a2 <= 2)
      {
        if ((a2 + 1) >= 4)
        {
          goto LABEL_111;
        }

        goto LABEL_4;
      }

      switch(a2)
      {
        case 3:
          v3 = 0.290196078;
          v8 = 0.2;
          v4 = 0.125490196;
          v5 = 0.3;
          goto LABEL_158;
        case 4:
          v3 = 0.921568627;
          v4 = 0.960784314;
          v5 = 0.3;
          goto LABEL_157;
        case 5:
LABEL_4:
          v2 = +[UIColor bc_booksTertiaryLabelColor];
          goto LABEL_159;
      }

      goto LABEL_111;
    case 8:
      if (a2 <= 2)
      {
        if ((a2 + 1) >= 4)
        {
          goto LABEL_111;
        }

        goto LABEL_14;
      }

      switch(a2)
      {
        case 3:
          v3 = 0.290196078;
          v8 = 0.2;
          v4 = 0.125490196;
          v5 = 0.19;
          goto LABEL_158;
        case 4:
          goto LABEL_131;
        case 5:
LABEL_14:
          v2 = +[UIColor bc_booksQuaternaryLabelColor];
          goto LABEL_159;
      }

      goto LABEL_111;
    case 9:
      if (a2 <= 2)
      {
        if ((a2 + 1) >= 4)
        {
          goto LABEL_111;
        }

        goto LABEL_20;
      }

      switch(a2)
      {
        case 3:
          v3 = 0.290196078;
          v8 = 0.2;
          v4 = 0.125490196;
          v5 = 0.29;
          goto LABEL_158;
        case 4:
LABEL_131:
          v3 = 0.921568627;
          v4 = 0.960784314;
          v5 = 0.19;
          goto LABEL_157;
        case 5:
LABEL_20:
          v2 = +[UIColor bc_booksSeparatorColor];
          goto LABEL_159;
      }

      goto LABEL_111;
    case 11:
      if (a2 <= 2)
      {
        if ((a2 + 1) >= 4)
        {
          goto LABEL_111;
        }

        goto LABEL_51;
      }

      switch(a2)
      {
        case 3:
          goto LABEL_128;
        case 4:
LABEL_129:
          v2 = +[UIColor bc_booksCyan];
          goto LABEL_159;
        case 5:
LABEL_51:
          v2 = +[UIColor systemGreenColor];
          goto LABEL_159;
      }

LABEL_111:
      if (a2 > 2)
      {
        if (a2 == 3 || a2 == 4 || a2 == 5)
        {
          goto LABEL_113;
        }
      }

      else if ((a2 + 1) < 4)
      {
LABEL_113:
        v2 = +[UIColor systemWhiteColor];
        goto LABEL_159;
      }

LABEL_117:
      v2 = 0;
      if (a2 <= 2)
      {
        if ((a2 + 1) < 4)
        {
LABEL_119:
          v2 = +[UIColor bc_booksLabelColor];
        }

        goto LABEL_159;
      }

      if (a2 == 3)
      {
LABEL_128:
        v3 = 0.780392157;
        v8 = 0.596078431;
        v4 = 0.196078431;
LABEL_146:
        v5 = 1.0;
        goto LABEL_158;
      }

      if (a2 == 4 || a2 == 5)
      {
        v3 = 0.921568627;
        v4 = 0.960784314;
        v5 = 0.22;
        goto LABEL_157;
      }

      goto LABEL_159;
    case 12:
      if (a2 <= 2)
      {
        if ((a2 + 1) >= 4)
        {
          goto LABEL_111;
        }

        v2 = +[UIColor systemBlueColor];
        goto LABEL_159;
      }

      if (a2 == 3)
      {
        v3 = 0.749019608;
        v8 = 0.57254902;
        v4 = 0.188235294;
        goto LABEL_146;
      }

      if (a2 != 4 && a2 != 5)
      {
        goto LABEL_111;
      }

      goto LABEL_129;
    case 13:
      if (a2 <= 2)
      {
LABEL_33:
        if ((a2 + 1) < 4)
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (a2 == 3)
        {
          goto LABEL_128;
        }

        if (a2 == 4 || a2 == 5)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_111;
    case 14:
      if (a2 <= 2)
      {
        if ((a2 + 1) >= 4)
        {
          goto LABEL_111;
        }

        v3 = 0.109803922;
        v4 = 0.117647059;
        goto LABEL_8;
      }

      if (a2 == 3)
      {
        v3 = 0.380392157;
        v8 = 0.301960784;
        v4 = 0.231372549;
        goto LABEL_146;
      }

      if (a2 == 4)
      {
        v3 = 0.4;
        v4 = 0.419607843;
        goto LABEL_8;
      }

      if (a2 != 5)
      {
        goto LABEL_111;
      }

      v2 = +[UIColor tertiarySystemBackgroundColor];
      goto LABEL_159;
    case 15:
      goto LABEL_111;
    case 16:
      goto LABEL_117;
    case 17:
      v2 = 0;
      if (a2 > 2)
      {
        switch(a2)
        {
          case 3:
            v3 = 0.831372549;
            v8 = 0.776470588;
            v4 = 0.623529412;
            goto LABEL_146;
          case 4:
            v3 = 0.352941176;
            v4 = 0.360784314;
            goto LABEL_8;
          case 5:
            v6 = 0.2;
LABEL_44:
            v7 = 1.0;
LABEL_45:
            v2 = [UIColor colorWithWhite:v6 alpha:v7];
            break;
        }
      }

      else if ((a2 + 1) < 4)
      {
LABEL_37:
        v2 = +[UIColor bc_booksBackground];
      }

      goto LABEL_159;
    case 18:
      v2 = 0;
      if (a2 <= 2)
      {
        if ((a2 + 1) >= 4)
        {
          goto LABEL_159;
        }

        goto LABEL_54;
      }

      switch(a2)
      {
        case 3:
          v3 = 0.290196078;
          v8 = 0.2;
          v4 = 0.125490196;
          v5 = 0.15;
LABEL_158:
          v2 = [UIColor colorWithRed:v3 green:v8 blue:v4 alpha:v5];
          break;
        case 4:
          v3 = 0.921568627;
          v4 = 0.960784314;
          v5 = 0.13;
LABEL_157:
          v8 = v3;
          goto LABEL_158;
        case 5:
LABEL_54:
          v2 = +[UIColor bc_booksTableSelectionColor];
          break;
      }

LABEL_159:

      return v2;
    default:
      v2 = 0;
      goto LABEL_159;
  }
}

void sub_6BF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_6BF98(uint64_t a1)
{
  v2 = sub_6B4D4(0, [*(a1 + 32) epubTheme]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v5 CGColor]);

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_6C460(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_6C9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_6C9EC(uint64_t a1)
{
  v2 = sub_6B4D4(0, [*(a1 + 32) epubTheme]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v5 CGColor]);

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_6CA9C(uint64_t a1)
{
  v2 = sub_6B4D4(0, [*(a1 + 32) epubTheme]);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v5 CGColor]);

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_6F24C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 rangeOfVisibleCells];

  return [v1 arrangeVisibleCells:{v3, v2}];
}

void sub_6F768(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 184);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v16;
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 = [*(a1 + 32) visibleCellForIndex:{objc_msgSend(*(*(&v15 + 1) + 8 * v7), "index")}];

        if (v5)
        {
          CGAffineTransformMakeScale(&v14, 0.001, 0.001);
          v13 = v14;
          [v5 setTransform:&v13];
        }

        v7 = v7 + 1;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 208);
  if (v10)
  {
    [v10 addObjectsFromArray:*(v9 + 184)];
  }

  else
  {
    objc_storeStrong((v9 + 208), *(v9 + 184));
  }

  ++*(*(a1 + 32) + 200);
  v11 = *(a1 + 32);
  v12 = *(v11 + 184);
  *(v11 + 184) = 0;
}

id sub_7043C(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t sub_70478(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_70490(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = [v2 gridView:*(a1 + 32) cellForIndex:*(a1 + 48)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 40);

  return [v6 layoutSubviews];
}

void sub_7078C(uint64_t a1)
{
  v1 = [*(a1 + 32) footerView];
  [v1 setAlpha:1.0];
}

id sub_71C84(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _hideGrabbedCell];
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);

    return [v5 dragInteraction:v6 session:v7 didEndWithOperation:0];
  }

  return result;
}

void sub_7266C(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingDropView];

  if (v2)
  {
    [*(a1 + 32) _showGrabbedCell];
    v3 = *(a1 + 32);

    [v3 setPendingDropView:0];
  }
}

id sub_72C7C(uint64_t a1)
{
  result = [*(a1 + 32) setAlpha:1.0];
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 40);

    return [v3 layoutSubviews];
  }

  return result;
}

id sub_73828(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 8);

  return [v2 setAlpha:1.0];
}

void sub_74B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_74B98(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v5 = 0;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (objc_opt_isKindOfClass())
          {
            v5 = 1;
            goto LABEL_13;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_13:
  }

  return v5;
}

id BCImageCacheLog()
{
  if (qword_342368 != -1)
  {
    sub_1E6AA0();
  }

  v1 = qword_342360;

  return v1;
}

void sub_7590C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BookCore.imageCache");
  qword_342360 = v1;

  _objc_release_x1(v1);
}

id BCAugmentedExperienceLog()
{
  if (qword_342378 != -1)
  {
    sub_1E6AB4();
  }

  v1 = qword_342370;

  return v1;
}

void sub_75994(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BookCore.AugmentedExperiences");
  qword_342370 = v1;

  _objc_release_x1(v1);
}

id BCReadingStatisticsLog()
{
  if (qword_342388 != -1)
  {
    sub_1E6AC8();
  }

  v1 = qword_342380;

  return v1;
}

void sub_75A1C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCCommonCore.ReadingStatistics");
  qword_342380 = v1;

  _objc_release_x1(v1);
}

id BCProgressKitLog()
{
  if (qword_342398 != -1)
  {
    sub_1E6ADC();
  }

  v1 = qword_342390;

  return v1;
}

void sub_75AA4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCCommonCore.ClassKit");
  qword_342390 = v1;

  _objc_release_x1(v1);
}

id BCCloudKitLog()
{
  if (qword_3423A8 != -1)
  {
    sub_1E6AF0();
  }

  v1 = qword_3423A0;

  return v1;
}

void sub_75B2C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCCommonCore.CloudKit");
  qword_3423A0 = v1;

  _objc_release_x1(v1);
}

id BCQuotaFetcherLog()
{
  if (qword_3423B8 != -1)
  {
    sub_1E6B04();
  }

  v1 = qword_3423B0;

  return v1;
}

void sub_75BB4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCCommonCore.QuotaFetcher");
  qword_3423B0 = v1;

  _objc_release_x1(v1);
}

id BCCardModelLog()
{
  if (qword_3423C8 != -1)
  {
    sub_1E6B18();
  }

  v1 = qword_3423C0;

  return v1;
}

void sub_75C3C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCCommonCore.CardModel");
  qword_3423C0 = v1;

  _objc_release_x1(v1);
}

id BCAVPlayerLog()
{
  if (qword_3423D8 != -1)
  {
    sub_1E6B2C();
  }

  v1 = qword_3423D0;

  return v1;
}

void sub_75CC4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCCommonCore.AVPlayer");
  qword_3423D0 = v1;

  _objc_release_x1(v1);
}

id BCIMLog()
{
  if (qword_3423E8 != -1)
  {
    sub_1E6B40();
  }

  v1 = qword_3423E0;

  return v1;
}

void sub_75D4C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCCommonCore.BCLog");
  qword_3423E0 = v1;

  _objc_release_x1(v1);
}

id BCDragAndDropLog()
{
  if (qword_3423F8 != -1)
  {
    sub_1E6B54();
  }

  v1 = qword_3423F0;

  return v1;
}

void sub_75DD4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCCommonCore.DragAndDrop");
  qword_3423F0 = v1;

  _objc_release_x1(v1);
}

id BCUbiquityEnabledLog()
{
  if (qword_342408 != -1)
  {
    sub_1E6B68();
  }

  v1 = qword_342400;

  return v1;
}

void sub_75E5C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCCommonCore.UbiquityEnabled");
  qword_342400 = v1;

  _objc_release_x1(v1);
}

id BKLibraryLog()
{
  if (qword_342418 != -1)
  {
    sub_1E6B7C();
  }

  v1 = qword_342410;

  return v1;
}

void sub_75EE4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary");
  qword_342410 = v1;

  _objc_release_x1(v1);
}

id BCSeriesManagerLog()
{
  if (qword_342428 != -1)
  {
    sub_1E6B90();
  }

  v1 = qword_342420;

  return v1;
}

void sub_75F6C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.SeriesManager");
  qword_342420 = v1;

  _objc_release_x1(v1);
}

id BCSeriesManagerUpdaterLog()
{
  if (qword_342438 != -1)
  {
    sub_1E6BA4();
  }

  v1 = qword_342430;

  return v1;
}

void sub_75FF4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.SeriesManagerUpdater");
  qword_342430 = v1;

  _objc_release_x1(v1);
}

id BKLibraryPerformanceLog()
{
  if (qword_342448 != -1)
  {
    sub_1E6BB8();
  }

  v1 = qword_342440;

  return v1;
}

void sub_7607C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.Performance");
  qword_342440 = v1;

  _objc_release_x1(v1);
}

id BKLibraryCoverPerformanceLog()
{
  if (qword_342458 != -1)
  {
    sub_1E6BCC();
  }

  v1 = qword_342450;

  return v1;
}

void sub_76104(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.CoverPerformance");
  qword_342450 = v1;

  _objc_release_x1(v1);
}

id BKLibraryUILog()
{
  if (qword_342468 != -1)
  {
    sub_1E6BE0();
  }

  v1 = qword_342460;

  return v1;
}

void sub_7618C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.UI");
  qword_342460 = v1;

  _objc_release_x1(v1);
}

id BKMobileCloudSyncLog()
{
  if (qword_342478 != -1)
  {
    sub_1E6BF4();
  }

  v1 = qword_342470;

  return v1;
}

void sub_76214(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKMobile.CloudSync");
  qword_342470 = v1;

  _objc_release_x1(v1);
}

id BKMobileCloudSyncAnnotationsLog()
{
  if (qword_342488 != -1)
  {
    sub_1E6C08();
  }

  v1 = qword_342480;

  return v1;
}

void sub_7629C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKMobile.CloudSync.Annotations");
  qword_342480 = v1;

  _objc_release_x1(v1);
}

id BKMobileCloudSyncAnnotationsPerformanceLog()
{
  if (qword_342498 != -1)
  {
    sub_1E6C1C();
  }

  v1 = qword_342490;

  return v1;
}

void sub_76324(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKMobile.CloudSync.Annotations.Performance");
  qword_342490 = v1;

  _objc_release_x1(v1);
}

id BKMobileDragAndDropLog()
{
  if (qword_3424A8 != -1)
  {
    sub_1E6C30();
  }

  v1 = qword_3424A0;

  return v1;
}

void sub_763AC(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKMobile.DragAndDrop");
  qword_3424A0 = v1;

  _objc_release_x1(v1);
}

id BCProductPageExtensionLog()
{
  if (qword_3424B8 != -1)
  {
    sub_1E6C44();
  }

  v1 = qword_3424B0;

  return v1;
}

void sub_76434(id a1)
{
  v1 = os_log_create("com.apple.iBooks.iBooksProductPageExtension", "BookCore.BCProductPageExtensionLog");
  qword_3424B0 = v1;

  _objc_release_x1(v1);
}

id BKStoreLog()
{
  if (qword_3424C8 != -1)
  {
    sub_1E6C58();
  }

  v1 = qword_3424C0;

  return v1;
}

void sub_764BC(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKStore");
  qword_3424C0 = v1;

  _objc_release_x1(v1);
}

id BKStoreAccessLog()
{
  if (qword_3424D8 != -1)
  {
    sub_1E6C6C();
  }

  v1 = qword_3424D0;

  return v1;
}

void sub_76544(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKStore.StoreAccess");
  qword_3424D0 = v1;

  _objc_release_x1(v1);
}

id BKStoreBookUpdateLog()
{
  if (qword_3424E8 != -1)
  {
    sub_1E6C80();
  }

  v1 = qword_3424E0;

  return v1;
}

void sub_765CC(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKStore.BookUpdate");
  qword_3424E0 = v1;

  _objc_release_x1(v1);
}

id BCUbiquityMetadataHelperLog()
{
  if (qword_3424F8 != -1)
  {
    sub_1E6C94();
  }

  v1 = qword_3424F0;

  return v1;
}

void sub_76654(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BookCore.Metadata");
  qword_3424F0 = v1;

  _objc_release_x1(v1);
}

id BKLibraryDataSourceUbiquityLog()
{
  if (qword_342508 != -1)
  {
    sub_1E6CA8();
  }

  v1 = qword_342500;

  return v1;
}

void sub_766DC(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.DataSource.Ubiquity");
  qword_342500 = v1;

  _objc_release_x1(v1);
}

id BKLibraryDataSourceMediaLibraryLog()
{
  if (qword_342518 != -1)
  {
    sub_1E6CBC();
  }

  v1 = qword_342510;

  return v1;
}

void sub_76764(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.DataSource.MediaLibrary");
  qword_342510 = v1;

  _objc_release_x1(v1);
}

id BKLibraryBookImportLog()
{
  if (qword_342528 != -1)
  {
    sub_1E6CD0();
  }

  v1 = qword_342520;

  return v1;
}

void sub_767EC(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.Import");
  qword_342520 = v1;

  _objc_release_x1(v1);
}

id BCBookDownloadLog()
{
  if (qword_342538 != -1)
  {
    sub_1E6CE4();
  }

  v1 = qword_342530;

  return v1;
}

void sub_76874(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BookCore.Download");
  qword_342530 = v1;

  _objc_release_x1(v1);
}

id BKLibraryDataSourceBookKitLog()
{
  if (qword_342548 != -1)
  {
    sub_1E6CF8();
  }

  v1 = qword_342540;

  return v1;
}

void sub_768FC(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.DataSource.BookKit");
  qword_342540 = v1;

  _objc_release_x1(v1);
}

id BKLibraryDataSourceSampleBooksLog()
{
  if (qword_342558 != -1)
  {
    sub_1E6D0C();
  }

  v1 = qword_342550;

  return v1;
}

void sub_76984(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.DataSource.SampleBooks");
  qword_342550 = v1;

  _objc_release_x1(v1);
}

id BKLibraryDataSourceJaliscoLog()
{
  if (qword_342568 != -1)
  {
    sub_1E6D20();
  }

  v1 = qword_342560;

  return v1;
}

void sub_76A0C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.DataSource.Jalisco");
  qword_342560 = v1;

  _objc_release_x1(v1);
}

id BKLibraryDataSourceSeriesLog()
{
  if (qword_342578 != -1)
  {
    sub_1E6D34();
  }

  v1 = qword_342570;

  return v1;
}

void sub_76A94(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.DataSource.Series");
  qword_342570 = v1;

  _objc_release_x1(v1);
}

id BKATAssetLog()
{
  if (qword_342588 != -1)
  {
    sub_1E6D48();
  }

  v1 = qword_342580;

  return v1;
}

void sub_76B1C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "iBooks.ATAsset");
  qword_342580 = v1;

  _objc_release_x1(v1);
}

id BKBookletMigrationLog()
{
  if (qword_342598 != -1)
  {
    sub_1E6D5C();
  }

  v1 = qword_342590;

  return v1;
}

void sub_76BA4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKBookletMigration");
  qword_342590 = v1;

  _objc_release_x1(v1);
}

id BCBookPromotionLog()
{
  if (qword_3425A8 != -1)
  {
    sub_1E6D70();
  }

  v1 = qword_3425A0;

  return v1;
}

void sub_76C2C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BookPromotion");
  qword_3425A0 = v1;

  _objc_release_x1(v1);
}

id BCCurrentBookLog()
{
  if (qword_3425B8 != -1)
  {
    sub_1E6D84();
  }

  v1 = qword_3425B0;

  return v1;
}

void sub_76CB4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "CurrentBook");
  qword_3425B0 = v1;

  _objc_release_x1(v1);
}

id BCCurrentBookLiveResizeLog()
{
  if (qword_3425C8 != -1)
  {
    sub_1E6D98();
  }

  v1 = qword_3425C0;

  return v1;
}

void sub_76D3C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "CurrentBook.LiveResize");
  qword_3425C0 = v1;

  _objc_release_x1(v1);
}

id BCCoverAnimationLog()
{
  if (qword_3425D8 != -1)
  {
    sub_1E6DAC();
  }

  v1 = qword_3425D0;

  return v1;
}

void sub_76DC4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BookCore.CoverAnimationLog");
  qword_3425D0 = v1;

  _objc_release_x1(v1);
}

id THLog()
{
  if (qword_3425E8 != -1)
  {
    sub_1E6DC0();
  }

  v1 = qword_3425E0;

  return v1;
}

void sub_76E4C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "THLog");
  qword_3425E0 = v1;

  _objc_release_x1(v1);
}

id BKLibraryItemStateProviderLog()
{
  if (qword_3425F8 != -1)
  {
    sub_1E6DD4();
  }

  v1 = qword_3425F0;

  return v1;
}

void sub_76ED4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKLibrary.ItemStateProvider");
  qword_3425F0 = v1;

  _objc_release_x1(v1);
}

id BKModernPDFLog()
{
  if (qword_342608 != -1)
  {
    sub_1E6DE8();
  }

  v1 = qword_342600;

  return v1;
}

void sub_76F5C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AEBookPlugins.ModernPDF");
  qword_342600 = v1;

  _objc_release_x1(v1);
}

id BCSpotlightIndexLog()
{
  if (qword_342618 != -1)
  {
    sub_1E6DFC();
  }

  v1 = qword_342610;

  return v1;
}

void sub_76FE4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCSpotlightIndexLog");
  qword_342610 = v1;

  _objc_release_x1(v1);
}

id BALog()
{
  if (qword_342628 != -1)
  {
    sub_1E6E10();
  }

  v1 = qword_342620;

  return v1;
}

void sub_7706C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BookAnalytics");
  qword_342620 = v1;

  _objc_release_x1(v1);
}

id BSUIFeedViewControllerLog()
{
  if (qword_342638 != -1)
  {
    sub_1E6E24();
  }

  v1 = qword_342630;

  return v1;
}

void sub_770F4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BookStoreUI.FeedViewController");
  qword_342630 = v1;

  _objc_release_x1(v1);
}

id BSUITemplateLog()
{
  if (qword_342648 != -1)
  {
    sub_1E6E38();
  }

  v1 = qword_342640;

  return v1;
}

void sub_7717C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BSUITemplate");
  qword_342640 = v1;

  _objc_release_x1(v1);
}

id BSUIWelcomeScreenLog()
{
  if (qword_342658 != -1)
  {
    sub_1E6E4C();
  }

  v1 = qword_342650;

  return v1;
}

void sub_77204(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BSUIWelcomeScreenLog");
  qword_342650 = v1;

  _objc_release_x1(v1);
}

id BSUIGoalsSharableImageRendererLog()
{
  if (qword_342668 != -1)
  {
    sub_1E6E60();
  }

  v1 = qword_342660;

  return v1;
}

void sub_7728C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BSUIGoalsSharableImageRendererLog");
  qword_342660 = v1;

  _objc_release_x1(v1);
}

id BCCardStackSignpost()
{
  if (qword_342678 != -1)
  {
    sub_1E6E74();
  }

  v1 = qword_342670;

  return v1;
}

void sub_77314(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCCardStackSignpost");
  qword_342670 = v1;

  _objc_release_x1(v1);
}

id BCAugmentedExperienceSignpost()
{
  if (qword_342688 != -1)
  {
    sub_1E6E88();
  }

  v1 = qword_342680;

  return v1;
}

void sub_7739C(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCAugmentedExperienceSignpost");
  qword_342680 = v1;

  _objc_release_x1(v1);
}

id BCSceneLog()
{
  if (qword_342698 != -1)
  {
    sub_1E6E9C();
  }

  v1 = qword_342690;

  return v1;
}

void sub_77424(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCSceneLog");
  qword_342690 = v1;

  _objc_release_x1(v1);
}

id BCAppIntentsLog()
{
  if (qword_3426A8 != -1)
  {
    sub_1E6EB0();
  }

  v1 = qword_3426A0;

  return v1;
}

void sub_774AC(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "AppIntents");
  qword_3426A0 = v1;

  _objc_release_x1(v1);
}

id BooksSiriLog()
{
  if (qword_3426B8 != -1)
  {
    sub_1E6EC4();
  }

  v1 = qword_3426B0;

  return v1;
}

void sub_77534(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BooksSiriLog");
  qword_3426B0 = v1;

  _objc_release_x1(v1);
}

id BRCConfigLog()
{
  if (qword_3426C8 != -1)
  {
    sub_1E6ED8();
  }

  v1 = qword_3426C0;

  return v1;
}

void sub_775BC(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BRCConfigLog");
  qword_3426C0 = v1;

  _objc_release_x1(v1);
}

id BCLookupLog()
{
  if (qword_3426D8 != -1)
  {
    sub_1E6EEC();
  }

  v1 = qword_3426D0;

  return v1;
}

void sub_77644(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "Books.Lookup");
  qword_3426D0 = v1;

  _objc_release_x1(v1);
}

id BCAudiobooksAppLog()
{
  if (qword_3426E8 != -1)
  {
    sub_1E6F00();
  }

  v1 = qword_3426E0;

  return v1;
}

void sub_776CC(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "Books.Audiobooks");
  qword_3426E0 = v1;

  _objc_release_x1(v1);
}

id BKCarPlayLog()
{
  if (qword_3426F8 != -1)
  {
    sub_1E6F14();
  }

  v1 = qword_3426F0;

  return v1;
}

void sub_77754(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKCarPlay");
  qword_3426F0 = v1;

  _objc_release_x1(v1);
}

id BCRemoteManagedObjectIDMonitorLog()
{
  if (qword_342708 != -1)
  {
    sub_1E6F28();
  }

  v1 = qword_342700;

  return v1;
}

void sub_777DC(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCRemoteManagedObjectIDMonitor");
  qword_342700 = v1;

  _objc_release_x1(v1);
}

id BCSleepManagerLog()
{
  if (qword_342718 != -1)
  {
    sub_1E6F3C();
  }

  v1 = qword_342710;

  return v1;
}

void sub_77864(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCSleepManager");
  qword_342710 = v1;

  _objc_release_x1(v1);
}

id BSUIStoreServicesLog()
{
  if (qword_342728 != -1)
  {
    sub_1E6F50();
  }

  v1 = qword_342720;

  return v1;
}

void sub_778EC(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BSUIStoreServices");
  qword_342720 = v1;

  _objc_release_x1(v1);
}

id BCTransactionLog()
{
  if (qword_342738 != -1)
  {
    sub_1E6F64();
  }

  v1 = qword_342730;

  return v1;
}

void sub_77974(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCCommonCore.Transaction");
  qword_342730 = v1;

  _objc_release_x1(v1);
}

void sub_79228(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 layer];
  v4 = [v3 CGContext];

  [v5 renderInContext:v4];
}

id sub_794A0(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 bounds];
  v3 = *(a1 + 40);

  return [v2 drawViewHierarchyInRect:v3 afterScreenUpdates:?];
}

void sub_7ABE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7AC00(uint64_t a1)
{
  v2 = [*(a1 + 32) al_workItems];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count] > 0x4B;
}

void sub_7ADF0(uint64_t a1)
{
  v2 = [*(a1 + 32) al_workItems];
  [v2 addObject:*(a1 + 40)];
}

void sub_7B0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_7B0E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_7B0F8(uint64_t a1)
{
  v10 = [*(a1 + 32) al_workItems];
  if ([v10 count])
  {
    v2 = [*(a1 + 32) al_workingOnItems];
    v3 = [v2 count];
    v4 = [*(a1 + 32) numConcurrentWorkItems];

    if (v3 >= v4)
    {
      return;
    }

    v5 = [*(a1 + 32) al_workItems];
    v6 = [v5 valueForKeyPath:@"@max.self"];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(a1 + 32) al_workItems];
    [v9 removeObject:*(*(*(a1 + 40) + 8) + 40)];

    v10 = [*(a1 + 32) al_workingOnItems];
    [v10 addObject:*(*(*(a1 + 40) + 8) + 40)];
  }
}

id sub_7B21C(uint64_t a1)
{
  v2 = BCImageCacheLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(*(a1 + 48) + 8) + 40);
    v4 = [*(a1 + 32) identifier];
    v5 = [*(a1 + 32) _statsString];
    *buf = 138543874;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "BICWorkQueue: Running %{public}@ on queue %@. %{public}@", buf, 0x20u);
  }

  if ([*(a1 + 32) manualCompletion])
  {
    objc_initWeak(buf, *(*(*(a1 + 48) + 8) + 40));
    [*(a1 + 32) workItemTimeout];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_7B430;
    block[3] = &unk_2CB0B8;
    objc_copyWeak(&v11, buf);
    v8 = *(a1 + 48);
    block[4] = *(a1 + 32);
    block[5] = v8;
    dispatch_after(v7, &_dispatch_main_q, block);
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  [*(*(*(a1 + 48) + 8) + 40) performWork:*(a1 + 40)];
  result = [*(a1 + 32) manualCompletion];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) workComplete:*(*(*(a1 + 48) + 8) + 40)];
  }

  return result;
}

void sub_7B430(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_7B5DC;
    v13 = &unk_2CB090;
    v16 = &v18;
    v14 = v4;
    v5 = WeakRetained;
    v6 = *(a1 + 40);
    v15 = v5;
    v17 = v6;
    v7 = &v10;
    os_unfair_lock_lock_with_options();
    v12(v7);
    os_unfair_lock_unlock(v4 + 2);

    if (v19[3])
    {
      v8 = BCImageCacheLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [*(a1 + 32) identifier];
        sub_1E6F78(v5, v9, buf, v8);
      }

      [*(a1 + 32) _startNextWorkItem];
    }
  }

  _Block_object_dispose(&v18, 8);
}

void sub_7B5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7B5DC(uint64_t a1)
{
  v2 = [*(a1 + 32) al_workingOnItems];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v3 = [*(a1 + 32) al_workingOnItems];
    [v3 removeObject:*(*(*(a1 + 56) + 8) + 40)];

    v4 = *(a1 + 32);
    v5 = [v4 al_totalWorkItemsRun] + 1;

    [v4 setAl_totalWorkItemsRun:v5];
  }
}

void sub_7B8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7B8F4(uint64_t a1)
{
  v2 = [*(a1 + 32) al_workingOnItems];
  *(*(*(a1 + 48) + 8) + 24) = [v2 containsObject:*(a1 + 40)];

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v3 = [*(a1 + 32) al_workingOnItems];
    [v3 removeObject:*(a1 + 40)];

    v4 = *(a1 + 32);
    v5 = [v4 al_totalWorkItemsRun] + 1;

    [v4 setAl_totalWorkItemsRun:v5];
  }
}

void sub_7BAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

id sub_7BB20(uint64_t a1)
{
  v2 = [*(a1 + 32) al_workItems];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];

  v3 = [*(a1 + 32) al_workingOnItems];
  *(*(*(a1 + 48) + 8) + 24) = [v3 count];

  result = [*(a1 + 32) al_totalWorkItemsRun];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void sub_7C5A8(id a1)
{
  v1 = objc_alloc_init(BCAugmentedExperienceRegistry);
  qword_342740 = v1;

  _objc_release_x1(v1);
}

void sub_7D7E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_7D884;
  v5[3] = &unk_2C8488;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void sub_7D884(uint64_t a1)
{
  v2 = [*(a1 + 32) previewAssetCoverFuture];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_7D924;
  v3[3] = &unk_2CB150;
  v4 = *(a1 + 40);
  [v2 get:v3];
}

void sub_7D924(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7D9FC;
  block[3] = &unk_2CB128;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v11 = v5;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_7D9FC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = UIImagePNGRepresentation(*(a1 + 32));
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

void sub_7E69C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  if (([v5 hasSuffix:@"."] & 1) == 0)
  {
    v6 = [v5 stringByAppendingString:@"."];

    v5 = v6;
  }

  v7 = [v5 stringByAppendingString:@" "];

  [*(a1 + 32) addObject:v7];
}

void sub_7E778(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_7F260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_7F288(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_7F2A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = 0;
  [v4 copyItemAtURL:v3 toURL:v5 error:&v7];
  v6 = v7;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1E71E0();
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
    [*(a1 + 48) setTemporaryURL:*(a1 + 40)];
  }
}

id _generateText(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  v3 = [v1 title];
  if ([v3 length])
  {
    [v2 addObject:v3];
    [v2 addObject:@"\n"];
  }

  v4 = [v1 author];
  if ([v4 length])
  {
    [v2 addObject:v4];
    [v2 addObject:@"\n"];
  }

  if ([v1 isStoreAsset])
  {
    v5 = [v1 storeURLPreferShort];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 absoluteString];
      if ([v7 length])
      {
        [v2 addObject:v7];
        [v2 addObject:@"\n"];
      }
    }
  }

  if ([v2 count])
  {
    v8 = [v2 componentsJoinedByString:&stru_2D2930];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_80A4C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a3 - 1;
  v8 = v5;
  if (a3 - 1) <= 5 && ((0x2Fu >> v6))
  {
    v7 = IMAXLocString(*(&off_2CB2C0 + v6));
    v5 = v8;
    if (v7)
    {
      [v8 setAccessibilityLabel:v7];

      v5 = v8;
    }
  }

  [v5 setAccessibilityTraits:IMAccessibilityTraitMenuItem];
  [v8 imaxSetParentAnnotationPopoverViewController:*(a1 + 32)];
}

void sub_80C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_80C80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_80C98(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 32) + 8);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  v13 = v7;
  if (!v10)
  {
    objc_storeStrong(v9, a2);
    v7 = v13;
  }

  v11 = [v7 imaxValueForKey:@"isSelected"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_80DAC(id a1, id a2, int64_t a3, BOOL *a4)
{
  v9 = a2;
  v4 = [v9 accessibilityTraits];
  v5 = v4 & ~UIAccessibilityTraitButton | IMAccessibilityTraitMenuItem;
  v6 = [v9 imaxValueForKey:@"isSelected"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = UIAccessibilityTraitSelected | v5;
  }

  else
  {
    v8 = v5 & ~UIAccessibilityTraitSelected;
  }

  [v9 setAccessibilityTraits:v8];
}

id BCJSConfigurationLog()
{
  if (qword_342758 != -1)
  {
    sub_1E73F4();
  }

  v1 = qword_342750;

  return v1;
}

void sub_811C4(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BCJSConfiguration");
  qword_342750 = v1;

  _objc_release_x1(v1);
}

void sub_81258(id a1)
{
  v1 = [[BCJSConfiguration alloc] _init];
  v2 = qword_342760;
  qword_342760 = v1;

  v3 = qword_342760;
  v17 = @"BCJSFinishedWindowKey";
  v18 = &off_2EF458;
  v4 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v3 updateConfiguration:v4];

  v5 = qword_342760;
  v15 = @"BCJSInvalidationWindowKey";
  v16 = &off_2EF468;
  v6 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v5 updateConfiguration:v6];

  v7 = qword_342760;
  v13 = @"BCJSInvalidationWindowForSamplesKey";
  v14 = &off_2EF478;
  v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v7 updateConfiguration:v8];

  v9 = qword_342760;
  v11 = @"BCJSLaunchesRequiredToPurgeKey";
  v12 = &off_2E59A8;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v9 updateConfiguration:v10];
}

void sub_816F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_81710(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_81728(uint64_t a1)
{
  v2 = [*(a1 + 32) overrides];
  if (v2)
  {
    v3 = [*(a1 + 32) overrides];
    v4 = [v3 mutableCopy];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_81818;
  v11 = &unk_2CB418;
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v12 = v4;
  v13 = v5;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:&v8];
  [*(a1 + 32) setOverrides:{v7, v8, v9, v10, v11}];
}

void sub_81818(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  [*(a1 + 32) setObject:a3 forKeyedSubscript:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v9];
  }

  else
  {
    BCReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BookCore/BookCore/BookPromotionEngine/BCJSConfiguration.m", 140, "[BCJSConfiguration updateConfiguration:]_block_invoke_2", "NO", @"Someone is using a non-string key for the configuration. Please file a radar.", v5, v6, v7, v8);
  }
}

void sub_81E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_81E4C(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSInvalidationWindowKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_820F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_82114(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSInvalidationWindowForSamplesKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_822E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_822FC(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSLaunchesRequiredToPurgeKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_825A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_825C4(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSFinishedWindowKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_82868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8288C(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSUpgradeWindowKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_82B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_82B28(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSThresholdForPromotionKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_82DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_82DC0(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSValidCollectionPeriodKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_83030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8304C(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSTimeThresholdForOpenEventKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_832C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_832DC(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSNumberOfBooksInRecentsKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_835F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_83610(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSWindowForActiveBookKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_83804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8381C(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSOpenBookDefaultBehaviorOverrideKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_83A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_83A28(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSOpenBookOpenBehaviorOverrideKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_83C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_83C34(uint64_t a1)
{
  objc_opt_class();
  v6 = [*(a1 + 32) overrides];
  v2 = [v6 objectForKeyedSubscript:@"BCJSOpenBookClosedSpreadBehaviorOverrideKey"];
  v3 = BUDynamicCast();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_84240(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_84260(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = [a1[4] operationToWatchdogTimerMap];
  v9 = [v8 objectForKey:WeakRetained];

  dispatch_source_cancel(v9);
  v10 = [a1[4] operationToWatchdogTimerMap];
  [v10 setObject:0 forKey:WeakRetained];

  if (v6)
  {
    v11 = +[BKReachability sharedReachabilityForInternetConnection];
    v12 = [v11 currentReachabilityStatus];

    if (v12)
    {
      v13 = BCQuotaFetcherLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1E7A60(v6, v13);
      }
    }

    else
    {

      v13 = BCQuotaFetcherLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1E7AD8(v13);
      }

      v6 = 0;
    }
  }

  if ([WeakRetained isCancelled])
  {
    v14 = BCQuotaFetcherLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "Could not get ahold of the quota server ... operation timed out.", &v30, 2u);
    }

    v15 = objc_retainBlock(a1[5]);
    if (v15)
    {
      v16 = [a1[4] lastCachedFreeBytes];
      v17 = [NSError errorWithDomain:@"IMUbiquityQuotaFetcherErrorDomain" code:-1001 userInfo:0];
      v15[2](v15, v16, v17);
    }

    goto LABEL_26;
  }

  if (v5)
  {
    v18 = [v5 unsignedLongLongValue];
    v19 = BCQuotaFetcherLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v30 = 134217984;
      v31 = v18;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Fetched quota.  Got the number: %llu.", &v30, 0xCu);
    }

    if (v18 == -1)
    {
      sub_1E7B1C(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    else if ((v18 & 0x8000000000000000) == 0)
    {
      if (v18)
      {
        [a1[4] setLastCachedFreeBytes:v18];
      }

      goto LABEL_21;
    }

    sub_1E7B58(v18, v21, v22, v23, v24, v25, v26, v27);
  }

LABEL_21:
  v28 = +[NSUserDefaults standardUserDefaults];
  v29 = [v28 stringForKey:@"BKUbiquitySimulateQuota"];

  if ([v29 length] && (objc_msgSend(v29, "longLongValue") & 0x8000000000000000) == 0)
  {
    [a1[4] setLastCachedFreeBytes:{objc_msgSend(v29, "longLongValue")}];
  }

  v15 = objc_retainBlock(a1[5]);
  if (v15)
  {
    v15[2](v15, [a1[4] lastCachedFreeBytes], v6);
  }

LABEL_26:
}

void sub_86CFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_86E64;
  v18 = sub_86E74;
  v19 = 0;
  v4 = *(a1 + 32);
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_86E7C;
  v11 = &unk_2C7AE0;
  v13 = &v14;
  v12 = v4;
  v5 = &v8;
  os_unfair_lock_lock(v4 + 2);
  v10(v5);
  os_unfair_lock_unlock(v4 + 2);

  [*(a1 + 32) _incrementVersionForIdentifiers:{v15[5], v8, v9}];
  v6 = objc_retainBlock(v3);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
  }

  _Block_object_dispose(&v14, 8);
}

void sub_86E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_86E64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_86E7C(uint64_t a1)
{
  v2 = [*(a1 + 32) versionBumpedIdentifiers];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) versionBumpedIdentifiers];
  [v6 removeAllObjects];
}

void sub_86EF8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _pruneIfNeeded];
  v5 = objc_retainBlock(v3);

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

void sub_86F68(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 _preloadOneBatch];
  v5 = objc_retainBlock(v3);

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

id sub_86FD8(uint64_t a1)
{
  [*(a1 + 32) _checkRestrictedContentSettings];
  v2 = *(a1 + 32);

  return [v2 _preloadCache];
}

void sub_87140(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 level1];
  [v4 pruneItems:v3 forMedium:0 withCompletion:&stru_2CB510];
}

void sub_87374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_87398(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained lowPriorityWorkQueue];
  v7 = [BCWorkItemCompletionHandler newCompletionHandlerWithWorkItem:v4 onQueue:v6];

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 level4];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_874B0;
  v11[3] = &unk_2CB538;
  v12 = v8;
  v10 = v8;
  [v9 _inventoryLevelOnly:1 addLevelID:0 completion:v11];

  [v7 workComplete];
}

void sub_874B0(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:@"identifier"];
  [*(a1 + 32) _preloadAdamIDs:v3];
}

void sub_876DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_87708(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained lowPriorityWorkQueue];
  v7 = [BCWorkItemCompletionHandler newCompletionHandlerWithWorkItem:v4 onQueue:v6];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [NSMutableSet setWithArray:*(a1 + 32)];
  v10 = [v8 level2];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_87850;
  v16 = &unk_2CB5A8;
  v17 = v9;
  v18 = v8;
  v11 = v8;
  v12 = v9;
  [v10 _inventoryLevelOnly:1 addLevelID:0 completion:&v13];

  [v7 workComplete];
}

void sub_87850(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:@"identifier"];
  v4 = [NSSet setWithArray:v3];
  [*(a1 + 32) minusSet:v4];
  v5 = *(a1 + 40);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_87974;
  v10 = &unk_2C7BE8;
  v11 = v5;
  v12 = *(a1 + 32);
  os_unfair_lock_lock(v5 + 2);
  sub_87974(&v7);
  os_unfair_lock_unlock(v5 + 2);
  v6 = [*(a1 + 40) coalescingPreloading];
  [v6 signalWithCompletion:&stru_2CB580];
}

void sub_87974(uint64_t a1)
{
  v2 = [*(a1 + 32) adamIDsToPreload];
  [v2 unionSet:*(a1 + 40)];
}

void sub_87CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  objc_destroyWeak((v26 + 40));
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  objc_destroyWeak((v27 - 104));
  _Unwind_Resume(a1);
}

void sub_87CF8(uint64_t a1)
{
  v2 = [*(a1 + 32) adamIDsToPreload];
  v11 = [v2 allObjects];

  v3 = [v11 count];
  if (v3)
  {
    if (v3 >= 0x28)
    {
      v4 = 40;
    }

    else
    {
      v4 = v3;
    }

    v5 = [v11 subarrayWithRange:{0, v4}];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(a1 + 32) adamIDsToPreload];
    v9 = [NSSet setWithArray:*(*(*(a1 + 40) + 8) + 40)];
    [v8 minusSet:v9];

    v10 = [*(a1 + 32) adamIDsToPreload];
    *(*(*(a1 + 48) + 8) + 24) = [v10 count];
  }
}

void sub_87E00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained lowPriorityWorkQueue];
  v7 = [BCWorkItemCompletionHandler newCompletionHandlerWithWorkItem:v4 onQueue:v6];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = *(*(*(a1 + 32) + 8) + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_87F08;
  v11[3] = &unk_2C7D40;
  v12 = v7;
  v10 = v7;
  [v8 _preloadBatch:v9 completion:v11];
}

void sub_88090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_880BC(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = [BICDescribedImage describedImageWithIdentifier:@"prioritizer" size:0 processingOptions:CGSizeZero.width, CGSizeZero.height];
    [v4 setPriority:3];
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v6 = [WeakRetained lowPriorityWorkQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_88250;
    v11[3] = &unk_2C7C88;
    objc_copyWeak(&v14, a1 + 6);
    v12 = v3;
    v7 = v4;
    v13 = v7;
    [v6 addWorkItemWithPriority:v7 description:@"CacheManager preload batch" block:v11];

    objc_destroyWeak(&v14);
  }

  else
  {
    v8 = [a1[4] coalescingPreloading];
    [v8 signalWithCompletion:&stru_2CB6A0];
  }

  v9 = objc_retainBlock(a1[5]);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }
}

void sub_88250(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained lowPriorityWorkQueue];
  v7 = [BCWorkItemCompletionHandler newCompletionHandlerWithWorkItem:v4 onQueue:v6];

  v8 = objc_loadWeakRetained((a1 + 48));
  v9 = +[NSMutableArray array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      v14 = 0;
      do
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v8 describedImagesFromProductProfile:*(*(&v35 + 1) + 8 * v14)];
        [v9 addObjectsFromArray:v15];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v30 = v4;
    v16 = BCImageCacheLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v9 count];
      *buf = 134217984;
      v41 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "BCCacheManager: Pushing a pre-loaded batch of %lu URLs", buf, 0xCu);
    }

    v29 = v7;

    v18 = [v8 level1];
    [v18 addDescribedImages:v9 forRequest:*(a1 + 40) completion:&stru_2CB640];

    v19 = [v9 valueForKey:@"identifier"];
    v20 = [NSSet setWithArray:v19];
    v21 = BCImageCacheLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v20 count];
      *buf = 134217984;
      v41 = v22;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "BCCacheManager: Downloading a pre-loaded batch of %lu covers", buf, 0xCu);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v20;
    v24 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        v27 = 0;
        do
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [BICDescribedImage describedImageWithIdentifier:*(*(&v31 + 1) + 8 * v27) size:0 processingOptions:50.0, 50.0, v29];
          [v28 setPriority:3];
          [v28 setRequestOptions:290];
          [v8 fetchCGImageFor:v28 forRequest:v28 completion:&stru_2CB680];

          v27 = v27 + 1;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v25);
    }

    v7 = v29;
    v4 = v30;
  }

  [v7 workComplete];
}

void sub_888E8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) objectAtIndexedSubscript:0];
  if (![v3 priority])
  {
    [v3 setPriority:3];
  }

  v4 = [*(a1 + 40) level1];
  [v4 removeDescribedImages:*(a1 + 32) forRequest:v3 completion:&stru_2CB6E8];

  objc_autoreleasePoolPop(v2);
}

void sub_88A40(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    height = CGSizeZero.height;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [BICDescribedImage describedImageWithIdentifier:v10 size:0 processingOptions:CGSizeZero.width, height, v12];
        [v11 setAdamID:v10];
        [v11 setPriority:*(a1 + 48)];
        [v11 setQuality:203];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    [*(a1 + 40) _addDescribedImages:v3];
  }

  [*(a1 + 40) _preloadAdamIDs:{*(a1 + 32), v12}];

  objc_autoreleasePoolPop(v2);
}

void sub_88CBC(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = *(a1 + 48);
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSDate dateWithTimeIntervalSinceNow:(86400 * v2)];
  }

  v4 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [*(a1 + 32) allKeys];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    height = CGSizeZero.height;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [BICDescribedImage describedImageWithIdentifier:v11 size:0 processingOptions:CGSizeZero.width, height];
        v13 = [*(a1 + 32) objectForKeyedSubscript:v11];
        [v12 setUrlString:v13];

        [v12 setPriority:*(a1 + 56)];
        [v12 setQuality:*(a1 + 64)];
        [v12 setExpiry:v3];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    [*(a1 + 40) _addDescribedImages:v4];
  }

  objc_autoreleasePoolPop(context);
}

void sub_891E0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [*(a1 + 32) allKeys];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    height = CGSizeZero.height;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [BICDescribedImage describedImageWithIdentifier:v10 size:0 processingOptions:CGSizeZero.width, height];
        v12 = [*(a1 + 32) objectForKeyedSubscript:v10];
        [v11 setFilePath:v12];

        [v11 setPriority:*(a1 + 48)];
        [v11 setQuality:*(a1 + 56)];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    [*(a1 + 40) _addDescribedImages:v3];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_8947C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    Width = CGImageGetWidth(v2);
    v4 = [BICDescribedImage describedImageWithIdentifier:*(a1 + 32) size:0 processingOptions:Width, CGImageGetHeight(*(a1 + 48))];
    v5 = [BICImage imageWithCGImage:*(a1 + 48)];
    [v4 setImage:v5];

    [v4 setPriority:*(a1 + 56)];
    [v4 setQuality:*(a1 + 64)];
    v6 = *(a1 + 40);
    v8 = v4;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [v6 _addDescribedImages:v7];

    CGImageRelease(*(a1 + 48));
  }
}

void sub_89620(uint64_t a1)
{
  v1 = [*(a1 + 32) level1];
  [v1 _clean:&stru_2CB758];
}

void sub_899D8(uint64_t a1, void *a2)
{
  v3 = [a2 filePath];
  v7 = v3;
  if (v3)
  {
    v4 = [NSURL fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_retainBlock(*(a1 + 32));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v4);
  }
}

void sub_89CF4(uint64_t a1)
{
  v2 = [*(a1 + 32) vendedImageInterests];
  [v2 addPointer:*(a1 + 40)];
}

void sub_89E28(id *a1, void *a2)
{
  v6 = a2;
  if ([v6 count])
  {
    [BICCacheStats incrementCounter:kBICCacheStatsCounterBestMatches[0]];
    [a1[4] _fetchImagesMatchingBestDescriptions:v6 forOriginalDescription:a1[5] forRequest:a1[6]];
  }

  else if (([a1[6] isAlternateGeneric] & 1) == 0)
  {
    [a1[4] _makeGenericForDescription:a1[5] forRequest:a1[6]];
  }

  if ([a1[5] seriesStack])
  {
    if (![v6 count] || (objc_msgSend(v6, "objectAtIndexedSubscript:", 0), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isGeneric"), v3, v4))
    {
      v5 = [a1[4] stackManager];
      [v5 renderStackFromSource:a1[5] forRequest:a1[6]];
    }
  }
}

void sub_8A02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8A050(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = [WeakRetained workHighPriorityTarget];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_8A14C;
    v9[3] = &unk_2CB818;
    v10 = *(a1 + 32);
    objc_copyWeak(&v13, (a1 + 48));
    v7 = v3;
    v8 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    dispatch_async(v6, v9);

    objc_destroyWeak(&v13);
  }
}

void sub_8A14C(uint64_t a1)
{
  if ([*(a1 + 32) priority] != &dword_0 + 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_8A264;
    v7[3] = &unk_2CB7F0;
    objc_copyWeak(&v10, (a1 + 56));
    v8 = *(a1 + 32);
    v6 = *(a1 + 40);
    v5 = v6.i64[0];
    v9 = vextq_s8(v6, v6, 8uLL);
    [WeakRetained _fetchImagesMatchingDescription:v3 withTimeout:30 forRequest:v4 completion:v7];

    objc_destroyWeak(&v10);
  }
}

void sub_8A264(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && [v3 count] && objc_msgSend(*(a1 + 32), "priority") != &dword_0 + 1)
  {
    v7 = BCImageCacheLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v3 bu_prettyDescription];
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "BCCacheManager: Exact primary match: images=%@", buf, 0xCu);
    }

    v9 = [*(a1 + 40) level1];
    v10 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_8A464;
    v11[3] = &unk_2C89F8;
    v12 = WeakRetained;
    v13 = v3;
    v14 = *(a1 + 32);
    [v9 addDescribedImages:v13 forRequest:v10 completion:v11];

    v5 = v12;
  }

  else
  {
    v5 = BCImageCacheLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 48);
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "BCCacheManager: No primary match for image=%@", buf, 0xCu);
    }
  }
}

void sub_8A5C0(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([a1[4] priority] != &dword_0 + 1)
  {
    v3 = [a1[5] quality];
    v4 = +[NSMutableSet set];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = a1[6];
    v6 = [v5 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          if (![v10 processingOptions] && objc_msgSend(v10, "quality") > v3)
          {
            v11 = [v10 identifier];
            [v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      v12 = BCImageCacheLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = a1[6];
        v14 = a1[4];
        *buf = 138412546;
        v35 = v13;
        v36 = 2112;
        v37 = v14;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "BCCacheManager: Checking for interest in image=%@ for series stack request=%@", buf, 0x16u);
      }

      v15 = [a1[4] identifier];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_8A928;
      v24[3] = &unk_2CB868;
      v25 = v4;
      v26 = a1[6];
      v27 = a1[4];
      v16 = v15;
      v17 = a1[7];
      v28 = v16;
      v29 = v17;
      v18 = objc_retainBlock(v24);
      v19 = [a1[8] stackIDs];
      if (v19)
      {
        (v18[2])(v18, v19);
      }

      else
      {
        v20 = [a1[7] seriesDecomposer];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_8AA58;
        v21[3] = &unk_2C8460;
        v22 = a1[8];
        v23 = v18;
        [v20 assetIDsAndOptionsForBooksInSeries:v16 completion:v21];
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_8A928(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) intersectsSet:a2])
  {
    v3 = BCImageCacheLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 40) bu_prettyDescription];
      v5 = *(a1 + 48);
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "BCCacheManager: Interest found, bumping version for series stack images=%@ request=%@", &v7, 0x16u);
    }

    v6 = [BICDescribedImage describedImageWithIdentifier:*(a1 + 56) size:0 processingOptions:CGSizeZero.width, CGSizeZero.height];
    [BICCacheStats logOperation:BICCacheStatsOperationBeginGenericUpgradeAttemptForStackBook[0] forRequest:v6];
    [*(a1 + 64) incrementVersionForIdentifier:*(a1 + 56)];
  }
}

void sub_8AA58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
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

        v10 = [*(*(&v11 + 1) + 8 * v9) objectForKeyedSubscript:{@"assetID", v11}];
        if (v10)
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    [*(a1 + 32) setStackIDs:v4];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_8AD48(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    height = CGSizeZero.height;
    *&v5 = 138412546;
    v14 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) objectForKeyedSubscript:{@"assetID", v14}];
        v11 = [BICDescribedImage describedImageWithIdentifier:v10 size:0 processingOptions:CGSizeZero.width, height];
        [v11 setPriority:3];
        [v11 setUnknownAspectRatio:1];
        v12 = BCImageCacheLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(a1 + 32);
          *buf = v14;
          v20 = v11;
          v21 = 2112;
          v22 = v13;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "BCCacheManager: Refetching a cover image=%@ for series stack request=%@", buf, 0x16u);
        }

        [*(a1 + 40) _fetchPrimaryImage:v11 forRequest:*(a1 + 32)];
        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v3 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v6);
  }
}

char *sub_8B044(id *a1)
{
  result = [a1[4] priority];
  if (result != &dword_0 + 1)
  {
    if ([a1[5] isSeriesStackWithGenerics])
    {
      [BICCacheStats incrementCounter:kBICCacheStatsCounterStackUpgrades[0]];
      v3 = a1[6];
      v4 = a1[4];

      return [v3 _performGenericUpgradeOfStackForRequest:v4];
    }

    else
    {
      v5 = BCImageCacheLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = a1[4];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "BCCacheManager: Attempting to upgrade a generic cover request=%@", &v7, 0xCu);
      }

      [BICCacheStats incrementCounter:kBICCacheStatsCounterGenericUpgrades[0]];
      return [a1[6] _fetchPrimaryImage:a1[4] forRequest:a1[4]];
    }
  }

  return result;
}

void sub_8B26C(uint64_t a1)
{
  if ([*(a1 + 32) priority] != &dword_0 + 1)
  {
    v2 = [*(a1 + 32) copy];
    v3 = BCImageCacheLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "BCCacheManager: Attempting quality upgrade of %@", &v4, 0xCu);
    }

    [v2 setPriority:3];
    [v2 setRequestOptions:128];
    [BICCacheStats logOperation:BICCacheStatsOperationAsyncFetchExactHighQualityAttempt[0] forRequest:v2];
    [*(a1 + 40) _fetchImagesMatchingDescription:v2 forRequest:v2];
  }
}

void sub_8B5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8B5EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    goto LABEL_37;
  }

  v6 = (a1 + 32);
  if ([v3 count])
  {
    [WeakRetained _pushDescribedImages:v3 forRequest:*(a1 + 32)];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v28 = v4;
      v10 = 0;
      v11 = *v35;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v34 + 1) + 8 * i) image];
          v10 |= [v13 CGImage] != 0;
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);

      v4 = v28;
      if (v10)
      {
        goto LABEL_37;
      }
    }

    else
    {
    }

    if (([*v6 requestOptions] & 2) == 0 && (objc_msgSend(*v6, "isAlternateGeneric") & 1) == 0)
    {
      [*(a1 + 40) _fetchGenericForDescription:*(a1 + 48) forRequest:*(a1 + 32)];
    }

    goto LABEL_37;
  }

  if ([*(a1 + 32) priority] != &dword_0 + 1)
  {
    v14 = BCImageCacheLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1E7C50(a1, (a1 + 32), v14);
    }

    [BICCacheStats logOperation:BICCacheStatsOperationAsyncLoadBestFail[0] forRequest:*v6];
    v15 = [*v6 requestOptions];
    v16 = *v6;
    if ((v15 & 0x40) != 0)
    {
      if (([v16 isAlternateGeneric] & 1) == 0)
      {
        [*(a1 + 40) _makeGenericForDescription:*(a1 + 48) forRequest:*(a1 + 32)];
      }
    }

    else
    {
      v29 = [v16 copy];
      [v29 setRequestOptions:64];
      v17 = +[NSMutableArray array];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v18 = *(a1 + 64);
      v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = 0;
        v22 = *v31;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(v18);
            }

            if (v21)
            {
              v24 = *(*(&v30 + 1) + 8 * j);
              if (([v24 requiresNetwork] & 1) == 0)
              {
                [v17 addObject:v24];
              }
            }

            v21 = 1;
          }

          v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v20);
      }

      [*(a1 + 40) _fetchImagesMatchingBestDescriptions:v17 forOriginalDescription:*(a1 + 48) forRequest:v29];
      if ([*(a1 + 48) seriesStack])
      {
        if (![v17 count] || (objc_msgSend(v17, "objectAtIndexedSubscript:", 0), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isGeneric"), v25, v26))
        {
          v27 = [*(a1 + 40) stackManager];
          [v27 renderStackFromSource:*(a1 + 48) forRequest:*(a1 + 32)];
        }
      }
    }
  }

LABEL_37:

  objc_autoreleasePoolPop(v4);
}

void sub_8BB14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_initWeak(&location, v2);
  v4 = [v2 level1];
  v5 = [v4 costFor:*(a1 + 40)];

  v6 = objc_loadWeakRetained(&location);
  v7 = [v6 _maxCostForMedium:*(a1 + 40)];

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = &v5[-v7];
  if (&v5[-v7] >= 1)
  {
    v8 = objc_autoreleasePoolPush();
    v16[3] += v7 / 5;
    v9 = objc_loadWeakRetained(&location);
    v10 = [v9 level1];
    v11 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_8BCEC;
    v12[3] = &unk_2CB928;
    v12[4] = *(a1 + 32);
    v12[5] = &v15;
    objc_copyWeak(&v13, &location);
    v14 = *(a1 + 40);
    [v10 gatherPrunableItemsForMedium:v11 withCompletion:v12];

    objc_destroyWeak(&v13);
    objc_autoreleasePoolPop(v8);
  }

  _Block_object_dispose(&v15, 8);
  objc_destroyWeak(&location);
}

void sub_8BCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_destroyWeak((v10 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 - 56));
  _Unwind_Resume(a1);
}

void sub_8BCEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v3 sortedArrayUsingSelector:"compare:"];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      [v4 addObject:v10];
      *(*(*(a1 + 40) + 8) + 24) -= [v10 cost];
      if ((*(*(*(a1 + 40) + 8) + 24) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = [*(a1 + 32) lowPriorityTarget];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8BEE4;
  block[3] = &unk_2CB900;
  objc_copyWeak(&v15, (a1 + 48));
  v14 = v4;
  v16 = *(a1 + 56);
  v12 = v4;
  dispatch_async(v11, block);

  objc_destroyWeak(&v15);
}

void sub_8BEE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained level1];
  [v2 pruneItems:*(a1 + 32) forMedium:*(a1 + 48) withCompletion:&stru_2CB8D8];
}

void sub_8C010(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_initWeak(&location, v2);
  v4 = [v2 level1];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8C134;
  v7[3] = &unk_2CB9A0;
  objc_copyWeak(&v9, &location);
  v10 = *(a1 + 48);
  v8 = *(a1 + 40);
  [v4 gatherPrunableItemsWithIdentifier:v5 forMedium:v6 withCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_8C110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8C134(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained level1];
  v6 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8C210;
  v7[3] = &unk_2CB978;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  [v5 pruneItems:v3 forMedium:v6 withCompletion:v7];
}

void sub_8C210(uint64_t a1)
{
  v2 = BCImageCacheLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "BCCacheManager: covers for assetID %@ were pruned from medium %d", &v5, 0x12u);
  }
}

void sub_8C624(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _checkInterestForDescribedImages:*(a1 + 32) forRequest:*(a1 + 40)];
  }
}

void sub_8C75C(id *a1)
{
  if ([a1[4] priority] != &dword_0 + 1)
  {
    objc_initWeak(&location, a1[5]);
    v3 = a1[5];
    v2 = a1[6];
    v4 = a1[4];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_8C878;
    v7[3] = &unk_2CB7F0;
    objc_copyWeak(&v11, &location);
    v8 = a1[4];
    v5 = a1[6];
    v6 = a1[5];
    v9 = v5;
    v10 = v6;
    [v3 _fetchImagesMatchingDescription:v2 withTimeout:30 forRequest:v4 completion:v7];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void sub_8C85C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_8C878(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ([v3 count])
    {
      v5 = BCImageCacheLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [v3 bu_prettyDescription];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "BCCacheManager: Found exact match from L2-L4, pushing to L1. images=%@", &v7, 0xCu);
      }

      [WeakRetained _pushDescribedImages:v3 forRequest:*(a1 + 32)];
    }

    else if ([*(a1 + 40) isGeneric])
    {
      [*(a1 + 48) _makeGenericForDescription:*(a1 + 40) forRequest:*(a1 + 32)];
    }

    else
    {
      [WeakRetained _fetchBestImagesForDescription:*(a1 + 40) forRequest:*(a1 + 32)];
    }
  }
}

void sub_8CC4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 136));
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_8CC80(uint64_t a1)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_8CDD0;
  v10 = &unk_2CBA38;
  v3 = *(a1 + 48);
  v11 = &v13;
  v12 = v3;
  v4 = v8;
  os_unfair_lock_lock(v2 + 2);
  v9(v4);
  os_unfair_lock_unlock(v2 + 2);

  if (*(v14 + 24) == 1)
  {
    v5 = BCImageCacheLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1E7CD0(a1, v5);
    }

    v6 = objc_retainBlock(*(a1 + 40));
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }
  }

  _Block_object_dispose(&v13, 8);
}

void sub_8CDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8CDEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8CEBC;
  v7[3] = &unk_2CBA88;
  v7[4] = *(a1 + 48);
  os_unfair_lock_lock(v4 + 2);
  sub_8CEBC(v7);
  os_unfair_lock_unlock(v4 + 2);
  v5 = objc_retainBlock(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_8CED0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_8CFA0;
  v7[3] = &unk_2CBA88;
  v7[4] = *(a1 + 48);
  os_unfair_lock_lock(v4 + 2);
  sub_8CFA0(v7);
  os_unfair_lock_unlock(v4 + 2);
  v5 = objc_retainBlock(*(a1 + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v3);
  }
}

void sub_8D08C(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_8D180;
  v5[3] = &unk_2CBAD8;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 48);
  [v2 _fetchImagesMatchingDescription:v3 withTimeout:30 forRequest:v4 completion:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_8D164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8D180(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && [v4 count])
  {
    [WeakRetained _checkInterestForDescribedImages:v4 forRequest:*(a1 + 32)];
  }
}

void sub_8D4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8D50C(uint64_t a1)
{
  v5 = [*(a1 + 32) genericRequestsInProcess];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_8D82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8D864(uint64_t a1)
{
  v2 = [*(a1 + 32) vendedImageInterests];
  [v2 compact];

  v6 = [*(a1 + 32) vendedImageInterests];
  v3 = [v6 allObjects];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_8DCF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_8DD20(id *a1)
{
  v2 = a1 + 4;
  if ([a1[4] seriesStack] && !objc_msgSend(a1[5], "seriesStack"))
  {
    v2 = a1 + 5;
  }

  v3 = [a1[6] genericRequestsInProcess];
  [v3 addObject:*v2];
}

void sub_8DDA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained highPriorityWorkQueue];
  v9 = [BCWorkItemCompletionHandler newCompletionHandlerWithWorkItem:v6 onQueue:v8];

  [BICCacheStats logOperation:BICCacheStatsOperationMakingGenericQueueEnd[0] forRequest:*(a1 + 32)];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_8E1E0;
  v32[3] = &unk_2CBB00;
  objc_copyWeak(v36, (a1 + 48));
  v10 = v9;
  v33 = v10;
  v34 = *(a1 + 32);
  v35 = *(a1 + 40);
  v11 = objc_retainBlock(v32);
  [BICCacheStats logOperation:BICCacheStatsOperationMakingGenericStart[0] forRequest:*(a1 + 32)];
  [BICCacheStats incrementCounter:kBICCacheStatsCounterGenericsCreated[0]];
  v12 = objc_loadWeakRetained((a1 + 48));
  if ([*(a1 + 32) seriesStack] && !objc_msgSend(*(a1 + 40), "seriesStack") || objc_msgSend(v12, "_isVendedInterestBlankOrOldForRequest:", *(a1 + 32)))
  {
    kdebug_trace();
    v31 = 0;
    v30 = 0u;
    *location = 0u;
    v13 = [v12 delegate];
    v14 = [*(a1 + 40) identifier];
    if (v13)
    {
      [v13 cacheManager:v12 bookCoverInfoForIdentifier:v14];
    }

    else
    {
      v31 = 0;
      v30 = 0u;
      *location = 0u;
    }

    kdebug_trace();
    if (!location[0])
    {
      v15 = [*(a1 + 32) title];
      v16 = v15;
      v17 = v15 ? v15 : @"Title";
      objc_storeStrong(location, v17);

      v18 = [*(a1 + 32) author];
      v19 = v18;
      v20 = v18 ? v18 : @"Author";
      objc_storeStrong(&location[1], v20);

      v21 = [*(a1 + 32) title];

      if (!v21)
      {
        v22 = BCImageCacheLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1E7D6C();
        }
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3254779904;
    block[2] = sub_8E344;
    block[3] = &unk_2CBB28;
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    sub_8E904(v28, location);
    *&v28[40] = *(a1 + 56);
    v27 = v11;
    v26 = v12;
    dispatch_async(v5, block);

    sub_8E970(v28);
    sub_8E970(location);
  }

  else
  {
    [BICCacheStats logOperation:BICCacheStatsOperationMakingGenericEnd forRequest:*(a1 + 32)];
    (v11[2])(v11);
  }

  objc_destroyWeak(v36);
}

void sub_8E1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_8E970(va);
  objc_destroyWeak((v17 + 56));
  _Unwind_Resume(a1);
}

void sub_8E1E0(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    [a1[4] workComplete];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_8E2C4;
    v3[3] = &unk_2C89F8;
    v4 = a1[5];
    v5 = a1[6];
    v6 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 2);
    sub_8E2C4(v3);
    os_unfair_lock_unlock(WeakRetained + 2);
  }
}

void sub_8E2C4(id *a1)
{
  v2 = a1 + 4;
  if ([a1[4] seriesStack] && !objc_msgSend(a1[5], "seriesStack"))
  {
    v2 = a1 + 5;
  }

  v3 = [a1[6] genericRequestsInProcess];
  [v3 removeObject:*v2];
}

void sub_8E344(uint64_t a1)
{
  v2 = BCImageCacheLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) priority]);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v42 = v3;
    v43 = 2112;
    v44 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "BCCacheManager: Rendering generic at priority %@ for image=%@", buf, 0x16u);
  }

  kdebug_trace();
  v5 = 544;
  if ([*(a1 + 40) seriesStack])
  {
    v6 = [*(a1 + 40) processingOptions];
    v7 = (v6 & 0x40) << 18;
    v5 = v6 & 0x40 | 0x220;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | *(a1 + 97) | (*(a1 + 98) << 8) | (*(a1 + 96) << 16);
  v9 = *(a1 + 88);
  v10 = *(a1 + 80);
  v11 = BKGenericBookCoverLayoutFromLanguageAndVerticality(v10, [v9 imIsVerticalWritingMode]);
  v12 = *(a1 + 104);
  v13 = *(a1 + 112);
  if ([*(a1 + 40) seriesStack])
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    if (DeviceRGB)
    {
      v15 = DeviceRGB;
      v16 = CGBitmapContextCreate(0, v12, v13, 8uLL, vcvtd_n_u64_f64(v12, 2uLL), DeviceRGB, 1u);
      CGColorSpaceRelease(v15);
      if (v16)
      {
        v17 = v12 * 0.85;
        v18 = v13 * 0.85;
        goto LABEL_14;
      }

      v19 = BCImageCacheLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1E7DA0();
      }
    }
  }

  v16 = 0;
  v18 = v13;
  v17 = v12;
LABEL_14:
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v22 = [*(a1 + 40) identifier];
  ImageWithItemIDAndLayout = BKGenericBookCoverCreateImageWithItemIDAndLayout(v20, v21, 0x3FF0000000000000, v8, v22, v11);

  if (!ImageWithItemIDAndLayout)
  {
    v24 = BCImageCacheLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1E7DD4();
    }
  }

  Mutable = 0;
  if ([*(a1 + 40) seriesStack] && v16)
  {
    v45.origin.y = v13 - v18;
    v45.origin.x = 0.0;
    v45.size.width = v17;
    v45.size.height = v18;
    CGContextDrawImage(v16, v45, ImageWithItemIDAndLayout);
    v46.origin.x = v12 - v17;
    v46.origin.y = 0.0;
    v46.size.width = v17;
    v46.size.height = v18;
    CGContextDrawImage(v16, v46, ImageWithItemIDAndLayout);
    CGImageRelease(ImageWithItemIDAndLayout);
    ImageWithItemIDAndLayout = CGBitmapContextCreateImage(v16);
    if (!ImageWithItemIDAndLayout)
    {
      v26 = BCImageCacheLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_1E7E08();
      }
    }

    CGContextRelease(v16);
    Mutable = CGPathCreateMutable();
    v27 = +[UIScreen mainScreen];
    [v27 scale];
    v29 = v28;

    v30 = v17 / v29;
    v31 = v18 / v29;
    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    v47.size.width = v30;
    v47.size.height = v31;
    CGPathAddRect(Mutable, 0, v47);
    v48.origin.x = v12 / v29 - v30;
    v48.origin.y = v13 / v29 - v31;
    v48.size.width = v30;
    v48.size.height = v31;
    CGPathAddRect(Mutable, 0, v48);
  }

  v32 = [*(a1 + 40) copy];
  v33 = [BICImage imageWithCGImage:ImageWithItemIDAndLayout];
  [v32 setImage:v33];

  [v32 setStackOutline:Mutable];
  if ([*(a1 + 40) seriesStack])
  {
    v34 = v5;
  }

  else
  {
    v34 = 512;
  }

  [v32 setProcessingOptions:v34];
  [v32 setQuality:2];
  [v32 setImageSize:{*(a1 + 104), *(a1 + 112)}];
  CGImageRelease(ImageWithItemIDAndLayout);
  if (Mutable)
  {
    CGPathRelease(Mutable);
  }

  kdebug_trace();
  [BICCacheStats logOperation:BICCacheStatsOperationMakingGenericEnd forRequest:*(a1 + 32)];
  (*(*(a1 + 56) + 16))();
  v35 = [*(a1 + 48) workHighPriorityTarget];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8E864;
  block[3] = &unk_2C89F8;
  v38 = *(a1 + 48);
  v39 = v32;
  v40 = *(a1 + 32);
  v36 = v32;
  dispatch_async(v35, block);
}

void sub_8E864(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 _pushDescribedImages:v3 forRequest:a1[6]];
}

id sub_8E904(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  v5 = *(a2 + 34);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 34) = v5;
  return result;
}

void sub_8E970(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_8EC10(uint64_t a1)
{
  v2 = [*(a1 + 32) versionBumpedIdentifiers];
  [v2 unionSet:*(a1 + 40)];
}

void sub_8ED34(uint64_t a1)
{
  v2 = [*(a1 + 32) versionBumpedIdentifiers];
  [v2 addObject:*(a1 + 40)];
}

id sub_8EE40(uint64_t a1)
{
  v2 = BCImageCacheLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) allObjects];
    v4 = [v3 bu_prettyDescription];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "BCCacheManager: Incrementing version for assetIDs=%@", &v7, 0xCu);
  }

  v5 = [*(a1 + 40) level1];
  [v5 incrementVersionForIdentifiers:*(a1 + 32)];

  return +[BICCacheStats addToCounter:amount:](BICCacheStats, "addToCounter:amount:", kBICCacheStatsCounterVersionBumps[0], [*(a1 + 32) count]);
}

void sub_8F0BC(id *a1)
{
  kdebug_trace();
  v24 = [a1[4] bu_arrayByInvokingBlock:&stru_2CBC08];
  v2 = BCImageCacheLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [v24 bu_prettyDescription];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "BCCacheManager: Checking interest for images=%@", &buf, 0xCu);
  }

  v27 = [BICDescribedImage groupDescribedImagesByIdentifier:a1[4]];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v67 = 0x3032000000;
  v68 = sub_86E64;
  v69 = sub_86E74;
  v70 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = 0;
  v4 = a1[5];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v49 = sub_8F740;
  v50 = &unk_2CB5F8;
  v51 = v4;
  p_buf = &buf;
  v53 = v54;
  v5 = v48;
  os_unfair_lock_lock(v4 + 2);
  v49(v5);
  os_unfair_lock_unlock(v4 + 2);

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = *(*(&buf + 1) + 40);
  v23 = [obj countByEnumeratingWithState:&v44 objects:v65 count:16];
  if (v23)
  {
    v25 = *v45;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v32 = *(*(&v44 + 1) + 8 * i);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v29 = v27;
        v31 = [v29 countByEnumeratingWithState:&v40 objects:v64 count:16];
        if (v31)
        {
          v30 = *v41;
          do
          {
            for (j = 0; j != v31; j = j + 1)
            {
              if (*v41 != v30)
              {
                objc_enumerationMutation(v29);
              }

              v35 = *(*(&v40 + 1) + 8 * j);
              v34 = [v32 describedImageRequested];
              if ([v34 seriesStack])
              {
                v6 = [v32 describedImageShown];
                v7 = [v6 isGeneric];

                if (v7)
                {
                  v8 = [a1[6] stackRequest];
                  if (v8 == v34)
                  {
                  }

                  else
                  {
                    v9 = a1[6];
                    v10 = [v34 alternateRequest];
                    LOBYTE(v9) = v9 == v10;

                    if ((v9 & 1) == 0)
                    {
                      [a1[5] _checkStack:v32 forInterestIn:v35];
                    }
                  }
                }
              }

              v11 = [a1[5] comparator];
              v12 = [BCCacheManager operationsFromInterestInDescribedImages:v35 comparator:v11 imageRequest:a1[6] vendedImageInterest:v32];

              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              v13 = v12;
              v14 = [v13 countByEnumeratingWithState:&v36 objects:v63 count:16];
              if (v14)
              {
                v15 = *v37;
                do
                {
                  for (k = 0; k != v14; k = k + 1)
                  {
                    if (*v37 != v15)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v17 = *(*(&v36 + 1) + 8 * k);
                    v18 = BCImageCacheLog();
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                    {
                      v19 = [v17 operationKind];
                      v20 = [v17 descriptionForKind];
                      v21 = [v35 bu_prettyDescription];
                      v22 = a1[6];
                      *v55 = 67109890;
                      v56 = v19;
                      v57 = 2114;
                      v58 = v20;
                      v59 = 2112;
                      v60 = v21;
                      v61 = 2112;
                      v62 = v22;
                      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "BCCacheManager: Performing operation %d=%{public}@ for image=%@ for request=%@", v55, 0x26u);
                    }

                    [a1[5] _performOperation:v17];
                  }

                  v14 = [v13 countByEnumeratingWithState:&v36 objects:v63 count:16];
                }

                while (v14);
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v40 objects:v64 count:16];
          }

          while (v31);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v44 objects:v65 count:16];
    }

    while (v23);
  }

  kdebug_trace();
  _Block_object_dispose(v54, 8);
  _Block_object_dispose(&buf, 8);
}

void sub_8F664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose((v57 - 160), 8);
  _Unwind_Resume(a1);
}

id sub_8F6C4(id a1, id a2)
{
  v2 = BUProtocolCast();
  v3 = [v2 adamID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 description];
  }

  v6 = v5;

  return v6;
}

id sub_8F740(uint64_t a1)
{
  v2 = [*(a1 + 32) vendedImageInterests];
  [v2 compact];

  v3 = [*(a1 + 32) vendedImageInterests];
  v4 = [v3 allObjects];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  result = [*(*(*(a1 + 40) + 8) + 40) count];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_8FBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_8FBEC(uint64_t a1)
{
  v2 = [*(a1 + 32) vendedImageInterests];
  [v2 compact];

  v6 = [*(a1 + 32) vendedImageInterests];
  v3 = [v6 allObjects];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_903CC(uint64_t a1)
{
  v5 = [*(a1 + 32) blankImages];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_90438(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [*(a1 + 32) blankImages];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void sub_91064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location, id a28)
{
  objc_destroyWeak((v28 + 72));
  objc_destroyWeak((v28 + 64));
  _Block_object_dispose((v29 - 160), 8);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a28);
  _Unwind_Resume(a1);
}

void sub_910A8(uint64_t a1)
{
  v2 = [*(a1 + 32) cgInterests];
  [v2 addObject:*(a1 + 40)];
}

void sub_910FC(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = objc_loadWeakRetained((a1 + 72));
  v9 = [v6 quality];
  if (v9 != 2 || ([v6 requestOptions] & 8) != 0)
  {
    v16 = 0;
  }

  else
  {
    v10 = [v8 describedImageRequested];
    v11 = [v10 requestOptions];

    if ((v11 & 0x10) != 0)
    {
      v16 = 1;
    }

    else
    {
      v12 = [v8 describedImageRequested];
      v32 = [v12 operationsLog];

      v13 = [BICCacheStats operationToLogString:BICCacheStatsOperationNetworkDownloadQueueStart[0]];
      v14 = [BICCacheStats operationToLogString:BICCacheStatsOperationProfileDownloadQueueStart[0]];
      if (([v32 containsString:v13] & 1) != 0 || objc_msgSend(v32, "containsString:", v14))
      {
        v15 = BCImageCacheLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_1E7F3C(a1, v15);
        }

        v16 = 0;
      }

      else
      {
        v16 = 1;
      }
    }
  }

  if (a3)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16 | (v9 > 2) | *(a1 + 80);
  }

  if (v9 > [*(*(*(a1 + 56) + 8) + 40) quality])
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  if (v17)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v44 = 0;
    v18 = *(a1 + 40);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v34 = sub_915C8;
    v35 = &unk_2C95A0;
    v36 = WeakRetained;
    v38 = buf;
    v37 = v8;
    v19 = v33;
    os_unfair_lock_lock(v18 + 2);
    v34(v19);
    os_unfair_lock_unlock(v18 + 2);

    if (*(*&buf[8] + 24) != 1)
    {
      if (a3)
      {
LABEL_33:

        _Block_object_dispose(buf, 8);
        goto LABEL_34;
      }

      v26 = BCImageCacheLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = *(*(*(a1 + 56) + 8) + 40);
        v28 = *(a1 + 32);
        *v39 = 138412546;
        v40 = v27;
        v41 = 2112;
        v42 = v28;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "BCCacheManager: Ignoring unexpected delivery of uninterested image=%@ for request=%@", v39, 0x16u);
      }

LABEL_32:

      goto LABEL_33;
    }

    if (a3)
    {
      v20 = BCImageCacheLog();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v21 = *(*(*(a1 + 56) + 8) + 40);
      v22 = *(a1 + 32);
      *v39 = 138412546;
      v40 = v21;
      v41 = 2112;
      v42 = v22;
      v23 = "BCCacheManager: Timed out while fetching image, returning %@ for request=%@";
    }

    else
    {
      v20 = BCImageCacheLog();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v29 = *(*(*(a1 + 56) + 8) + 40);
      v30 = *(a1 + 32);
      *v39 = 138412546;
      v40 = v29;
      v41 = 2112;
      v42 = v30;
      v23 = "BCCacheManager: Returning image=%@ for request=%@";
    }

    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, v23, v39, 0x16u);
LABEL_30:

    v31 = objc_retainBlock(*(a1 + 48));
    v26 = v31;
    if (v31)
    {
      (v31[2].isa)(v31, *(*(*(a1 + 56) + 8) + 40));
    }

    goto LABEL_32;
  }

  v24 = BCImageCacheLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = *(a1 + 32);
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v25;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "BCCacheManager: Waiting for better image to be delivered for: current=%@ request=%@", buf, 0x16u);
  }

LABEL_34:
}

void sub_91598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_915C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 cgInterests];
    *(*(*(a1 + 48) + 8) + 24) = [v3 indexOfObjectIdenticalTo:*(a1 + 40)] != 0x7FFFFFFFFFFFFFFFLL;

    v4 = [*(a1 + 32) cgInterests];
    [v4 removeObjectIdenticalTo:*(a1 + 40)];
  }
}

void sub_91664(uint64_t a1)
{
  v3 = [*(a1 + 32) handler];
  v2 = [*(a1 + 40) _blankCoverForDescribedImage:*(a1 + 48)];
  v3[2](v3, v2, 1);
}

void sub_9180C(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v14;
    *&v4 = 138412546;
    v12 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [*(a1 + 40) _refetchInterestsForNewVersion:{v8, v12, v13}];
        v9 = [*(a1 + 40) seriesDecomposer];
        v10 = [v9 seriesIDContainingBook:v8];

        if ([v10 length])
        {
          v11 = BCImageCacheLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = v12;
            v18 = v10;
            v19 = 2112;
            v20 = v8;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "BCCacheManager: Incrementing Series Stack version for seriesID=%@ because of assetID=%@", buf, 0x16u);
          }

          [*(a1 + 40) incrementVersionForIdentifier:v10];
        }
      }

      v5 = [v2 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }
}

id im_expandedItemSourcesFromItemSource(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  if ([v1 conformsToProtocol:&OBJC_PROTOCOL___IMActivityItemSource])
  {
    [v2 addObject:v1];
  }

  if ([v1 conformsToProtocol:&OBJC_PROTOCOL___IMActivityItemSourceExpanding])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [v1 expandedItemProviders];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = im_expandedItemSourcesFromItemSource(*(*(&v10 + 1) + 8 * i));
          if ([v8 count])
          {
            [v2 addObjectsFromArray:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  return v2;
}

uint64_t sub_92C78(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3 = [v2 newPrivateQueueManagedObjectContext];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = +[NSMutableSet set];
  *(*(a1 + 32) + 56) = v6;

  return _objc_release_x1(v6);
}

id sub_92D88(uint64_t a1)
{
  v2 = BCSeriesManagerUpdaterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1E7FB8(a1);
  }

  return [*(*(a1 + 40) + 56) addObjectsFromArray:*(a1 + 32)];
}

id sub_92E68(uint64_t a1)
{
  [*(a1 + 32) setFinished:1];
  v2 = *(a1 + 32);

  return [v2 setOnFinished:0];
}

void sub_92F34(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    [*(a1 + 32) setFinished:1];
    v2 = [*(a1 + 32) managedObjectContext];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_92FDC;
    v3[3] = &unk_2C7D40;
    v3[4] = *(a1 + 32);
    [v2 performBlockAndWait:v3];
  }
}

void sub_92FDC(uint64_t a1)
{
  v2 = BCSeriesManagerUpdaterLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1E8050(a1);
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [*(v4 + 56) allObjects];
  v6 = [*v3 managedObjectContext];
  [BKSeriesCheck recordAdamIDsAsChecked:v5 inManagedObjectContext:v6];

  [*(*v3 + 7) removeAllObjects];
  v7 = [*v3 managedObjectContext];
  LODWORD(v5) = [v7 hasChanges];

  if (v5)
  {
    v8 = +[NSMutableDictionary dictionary];
    v9 = [*v3 managedObjectContext];
    v10 = [v9 insertedObjects];
    v11 = sub_932E4(v10, v10);

    if ([v11 count])
    {
      [v8 setObject:v11 forKey:@"BKSeriesItemAdamIDsAdded"];
    }

    v12 = [*v3 managedObjectContext];
    v13 = [v12 updatedObjects];
    v14 = sub_932E4(v13, v13);

    if ([v14 count])
    {
      [v8 setObject:v14 forKey:@"BKSeriesItemAdamIDsUpdated"];
    }

    v15 = [*v3 managedObjectContext];
    v16 = [v15 deletedObjects];
    v17 = sub_932E4(v16, v16);

    if ([v17 count])
    {
      [v8 setObject:v17 forKey:@"BKSeriesItemAdamIDsRemoved"];
    }

    v18 = [*v3 managedObjectContext];
    v26 = 0;
    v19 = [v18 save:&v26];
    v20 = v26;

    if (v19)
    {
      if (![v8 count])
      {
LABEL_16:

        goto LABEL_17;
      }

      v21 = +[NSNotificationCenter defaultCenter];
      v22 = [*v3 manager];
      v23 = [v8 copy];
      [v21 postNotificationName:@"BKSeriesManagerUpdatesSeriesNotification" object:v22 userInfo:v23];
    }

    else
    {
      v21 = BCSeriesManagerUpdaterLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1E813C();
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  v24 = [*v3 onFinished];
  v25 = v24;
  if (v24)
  {
    (*(v24 + 16))(v24);
  }
}