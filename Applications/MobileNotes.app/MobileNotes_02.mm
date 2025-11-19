void sub_10003F844(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [*(a1 + 40) object];
  v5 = [v2 ic_existingObjectWithID:v3];

  v4 = [*(a1 + 48) indexer];
  *(*(*(a1 + 56) + 8) + 24) = [v4 dateHeadersAreStaleForNote:v5];
}

void sub_1000404B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000404D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained collectionViewDiffableDataSource];
  v3 = [v2 snapshot];
  v4 = [*(a1 + 32) allObjects];
  [v3 reloadItemsWithIdentifiers:v4];
}

uint64_t sub_100040A44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000412B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) collectionView];
  v5 = [v4 layoutAttributesForItemAtIndexPath:v3];

  v6 = [*(a1 + 32) collectionView];
  [v5 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [*(a1 + 32) collectionView];
  v16 = [v15 superview];
  [v6 convertRect:v16 toView:{v8, v10, v12, v14}];
  v18 = v17;

  v19 = [*(a1 + 32) collectionView];
  [v19 adjustedContentInset];
  v21 = v20;

  if (v18 >= v21)
  {
    objc_opt_class();
    v23 = [*(a1 + 32) dataSource];
    v24 = [v23 collectionViewDiffableDataSource];
    v25 = [v24 itemIdentifierForIndexPath:v3];
    v22 = ICDynamicCast();
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void sub_1000419EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "QuickNote");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004D7EF4();
    }
  }

  else
  {
    performBlockOnMainThreadAndWait();
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = v8;
    performBlockOnMainThreadAndWait();
  }
}

void sub_100041AF4(id a1)
{
  v1 = +[ICQuickNoteSessionManager sharedManager];
  v2 = [v1 isQuickNoteSessionActive];

  if (v2)
  {
    v3 = +[ICQuickNoteSessionManager sharedManager];
    [v3 endSession];
  }
}

NSString *__cdecl sub_100042BB0(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  v4 = [v3 URIRepresentation];
  v5 = [v4 absoluteString];

  return v5;
}

void sub_10004330C(uint64_t a1)
{
  v2 = [*(a1 + 32) isPrimaryContentVisible];
  v3 = [*(a1 + 40) mainSplitViewController];
  v4 = v3;
  if (v2)
  {
    [v3 showColumn:0];
  }

  else
  {
    [v3 hideColumn:0];
  }

  if ([*(a1 + 32) isTrailingContentVisible])
  {
    v5 = [*(a1 + 40) trailingSidebarViewController];
    [v5 setSidebarHidden:0];

    v6 = [*(a1 + 32) mainSplitViewPrimaryColumnWidth];

    if (v6)
    {
      v7 = [*(a1 + 32) mainSplitViewPrimaryColumnWidth];
      [v7 floatValue];
      v9 = v8;

      v10 = [*(a1 + 40) mainSplitViewController];
      [v10 setPreferredPrimaryColumnWidth:v9];

      v11 = [*(a1 + 40) mainSplitViewController];
      [v11 setMinimumPrimaryColumnWidth:v9];

      v12 = [*(a1 + 40) mainSplitViewController];
      [v12 setMaximumPrimaryColumnWidth:v9];
    }

    v13 = [*(a1 + 32) mainSplitViewSupplementaryColumnWidth];
    if (v13)
    {
      v14 = v13;
      v15 = [*(a1 + 40) mainSplitViewController];
      v16 = [v15 style];

      if (v16 == 2)
      {
        v17 = [*(a1 + 32) mainSplitViewSupplementaryColumnWidth];
        [v17 floatValue];
        v19 = v18;

        v20 = [*(a1 + 40) mainSplitViewController];
        [v20 setPreferredSupplementaryColumnWidth:v19];

        v21 = [*(a1 + 40) mainSplitViewController];
        [v21 setMinimumSupplementaryColumnWidth:v19];

        v22 = [*(a1 + 40) mainSplitViewController];
        [v22 setMaximumSupplementaryColumnWidth:v19];
      }
    }
  }

  if ([*(a1 + 40) noteContainerViewMode] == 1)
  {
    v23 = [*(a1 + 40) selectedNoteObjectID];
    if (v23)
    {

LABEL_29:
      v34 = [*(a1 + 40) mainSplitViewController];
      [v34 hideColumn:1];
      goto LABEL_30;
    }

    v24 = [*(a1 + 40) selectedInvitationObjectID];

    if (v24)
    {
      goto LABEL_29;
    }
  }

  v25 = [*(a1 + 40) supplementaryNavigationController];
  v26 = [v25 viewControllers];
  if (![v26 count])
  {
    goto LABEL_20;
  }

  if (![*(a1 + 32) isSupplementaryContentVisible])
  {
    v27 = [*(a1 + 40) selectedNoteObjectID];
    if (!v27)
    {
      v33 = [*(a1 + 40) selectedInvitationObjectID];

      if (!v33)
      {
        goto LABEL_17;
      }

LABEL_21:
      if ([*(a1 + 32) isSupplementaryContentVisible] & 1) != 0 || (objc_msgSend(*(a1 + 32), "isPrimaryContentVisible"))
      {
        return;
      }

      v28 = +[ICAppDelegate sharedInstance];
      if ([v28 isRunningPPT] && (+[UIDevice ic_isiPad](UIDevice, "ic_isiPad") & 1) != 0)
      {
        v29 = [*(a1 + 40) window];
        v30 = [v29 windowScene];
        v31 = [v30 effectiveGeometry];
        v32 = [v31 interfaceOrientation] - 3;

        if (v32 < 2)
        {
          return;
        }
      }

      else
      {
      }

      goto LABEL_29;
    }

LABEL_20:
    goto LABEL_21;
  }

LABEL_17:
  v34 = [*(a1 + 40) mainSplitViewController];
  [v34 showColumn:1];
LABEL_30:
}

void sub_10004368C(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[ICAppDelegate sharedInstance];
  v5 = [v4 isRunningPPT];

  if (!v5)
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_10004387C;
    v19 = &unk_100645BC8;
    v6 = a1[5];
    v7 = a1[4];
    v20 = v6;
    v21 = v7;
    v22 = a1[6];
    v8 = objc_retainBlock(&v16);
    v9 = [a1[4] selectedNoteBrowseContainerItemID];
    if (v9)
    {
    }

    else if (([a1[4] hasCompactWidth] & 1) == 0)
    {
      if ([a1[4] isTagSelected])
      {
        v10 = [a1[4] selectedContainerIdentifiers];
      }

      else
      {
        v11 = [v3 firstRelevantItemIdentifier];
        v10 = [NSSet ic_setFromNonNilObject:v11];
      }

      v12 = [a1[5] currentNoteContainerViewMode] == 0;
      v13 = a1[4];
      v14 = [v13 rootNoteBrowseViewController];
      v15 = +[NSSet set];
      [v13 setCurrentNoteBrowseViewController:v14 animated:0 ensurePresented:1 containerIdentifiers:v10 excludingIdentifiers:v15 ensureSelectedNote:v12 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:{v8, v16, v17, v18, v19, v20, v21}];

      goto LABEL_7;
    }

    (v8[2])(v8);
LABEL_7:

    goto LABEL_8;
  }

  [a1[4] setIsApplyingStateRestoreArchive:0];
LABEL_8:
}

void sub_10004387C(uint64_t a1)
{
  v11 = [*(a1 + 32) currentSearchTerm];
  if ([*(a1 + 40) selectionStateTrackingEnabled])
  {
    v2 = [*(a1 + 40) selectionStateController];
    v3 = [v2 activityStreamViewMode];
    v4 = [v2 activityStreamSelection];
  }

  else
  {
    v3 = [*(a1 + 32) currentActivityStreamViewMode];
    v4 = [*(a1 + 32) currentActivityStreamSelection];
  }

  if (v11)
  {
    [*(a1 + 40) ensureSearchVisibleWhenApplyingArchive];
    v5 = [*(a1 + 40) hasCompactWidth];
    v6 = *(a1 + 40);
    if (v5)
    {
      [v6 folderListViewController];
    }

    else
    {
      [v6 rootNoteBrowseViewController];
    }
    v7 = ;
    [v7 startSearchWithSearchQuery:v11 searchTokens:0 searchScope:0 becomeFirstResponder:1];
  }

  if (v3)
  {
    [*(a1 + 40) setActivityStreamSelection:v4];
    v8 = *(a1 + 40);
    v9 = [v8 selectedModernNote];
    [v8 presentActivityStreamForObject:v9 viewMode:v3 animated:0];
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }

  [*(a1 + 40) setIsApplyingStateRestoreArchive:0];
}

void sub_10004404C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

BOOL sub_100044068(id a1, id a2, BOOL *a3)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();
  if ([v4 ic_isModernFolderType])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = ICDynamicCast();
    v5 = v6 != 0;
  }

  return v5;
}

void sub_100044100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  LOBYTE(v4) = 0;
  [WeakRetained showContainerWithIdentifiers:*(a1 + 32) excludingIdentifiers:*(a1 + 40) usingRootViewController:1 deferUntilDataLoaded:0 dismissOverlayContent:0 keepEditorShowing:*(a1 + 48) animated:v4];

  v3 = objc_loadWeakRetained((a1 + 56));
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000441E4;
  v5[3] = &unk_100645C78;
  objc_copyWeak(&v6, (a1 + 56));
  [v3 updateSplitViewForCurrentViewModeWithCompletion:v5];

  objc_destroyWeak(&v6);
}

void sub_1000441E4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissPrimaryOverlayContent];
}

void sub_1000442F0(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100040A44;
  v20 = sub_100040A54;
  v21 = [ICNote noteWithIdentifier:*(a1 + 32) context:*(a1 + 40)];
  v2 = v17[5];
  v3 = os_log_create("com.apple.notes", "UI");
  v4 = v3;
  if (v2)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v17[5] ic_loggingIdentifier];
      sub_1004D7FE8(v6, buf, v5);
    }

    v7 = *(a1 + 48);
    v8 = [v17[5] objectID];
    [v7 showRecentUpdatesForNoteWithObjectID:v8 suppressSidebar:1];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D8040();
    }

    v8 = +[ICCloudContext sharedContext];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100044528;
    v11[3] = &unk_100645D18;
    v15 = &v16;
    v12 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v13 = v9;
    v14 = v10;
    [v8 syncWithReason:@"ShowNoteWithIdentifier" uploadUnsyncedChanges:0 completionHandler:v11];
  }

  _Block_object_dispose(&v16, 8);
}

void sub_100044500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100044528(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v8 = v5;
  v6 = v7;
  performBlockOnMainThread();
}

void sub_100044600(void *a1)
{
  if (a1[4])
  {
    v2 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1004D8074();
    }
  }

  else
  {
    v3 = [ICNote noteWithIdentifier:a1[5] context:a1[6]];
    v4 = *(a1[8] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(*(a1[8] + 8) + 40);
    v7 = os_log_create("com.apple.notes", "UI");
    v2 = v7;
    if (v6)
    {
      v8 = v7;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1004D80EC((a1 + 8));
      }

      v9 = a1[7];
      v2 = [*(*(a1[8] + 8) + 40) objectID];
      [v9 showRecentUpdatesForNoteWithObjectID:v2 suppressSidebar:1];
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004D8178();
    }
  }
}

void sub_100044834(uint64_t a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100040A44;
  v32 = sub_100040A54;
  v33 = [ICInlineAttachment attachmentWithIdentifier:*(a1 + 32) context:*(a1 + 40)];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100040A44;
  v26 = sub_100040A54;
  v27 = [ICNote noteWithIdentifier:*(a1 + 48) context:*(a1 + 40)];
  if (v29[5] && v23[5])
  {
    v2 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = [v29[5] ic_loggingIdentifier];
      sub_1004D81F0(v3, buf, v2);
    }

    v4 = [ICActivityStreamSelection alloc];
    v34 = v29[5];
    v5 = [NSArray arrayWithObjects:&v34 count:1];
    v6 = [v4 initWithMentions:v5];

    v7 = *(a1 + 56);
    v8 = [v29[5] note];
    v9 = [v8 objectID];
    [v7 showAttributionHighlightsForNoteWithObjectID:v9 selection:v6];
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v29[5] ic_loggingIdentifier];
      v12 = [v23[5] ic_loggingIdentifier];
      sub_1004D8248(v11, v12, buf, v10);
    }

    v6 = +[ICCloudContext sharedContext];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100044BF0;
    v17[3] = &unk_100645D90;
    v20 = &v22;
    v13 = *(a1 + 48);
    v14 = *(a1 + 40);
    v21 = &v28;
    *&v15 = *(a1 + 32);
    *(&v15 + 1) = *(a1 + 56);
    *&v16 = v13;
    *(&v16 + 1) = v14;
    v18 = v16;
    v19 = v15;
    [v6 syncWithReason:@"ShowInlineAttachmentWithIdentifier" uploadUnsyncedChanges:0 completionHandler:v17];

    v8 = v18;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

void sub_100044BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_100044BF0(id *a1, void *a2)
{
  v8 = a2;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v9 = v6;
  v10 = v5;
  v7 = v8;
  performBlockOnMainThread();
}

void sub_100044CF4(void *a1)
{
  if (!a1[4])
  {
    v7 = a1 + 9;
    v8 = *(a1[9] + 8);
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = v9;
      v11 = *(v8 + 40);
      *(v8 + 40) = v10;
    }

    else
    {
      v12 = [ICNote noteWithIdentifier:a1[5] context:a1[6]];
      v13 = *(a1[9] + 8);
      v11 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v14 = *(a1[10] + 8);
    v15 = *(v14 + 40);
    if (v15)
    {
      v16 = v15;
      v17 = *(v14 + 40);
      *(v14 + 40) = v16;
    }

    else
    {
      v18 = [ICInlineAttachment attachmentWithIdentifier:a1[7] context:a1[6]];
      v19 = *(a1[10] + 8);
      v17 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    if (*(*(a1[10] + 8) + 40))
    {
      v20 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_1004D833C((a1 + 9), (a1 + 10));
      }

      v21 = [ICActivityStreamSelection alloc];
      v30 = *(*(a1[10] + 8) + 40);
      v22 = [NSArray arrayWithObjects:&v30 count:1];
      v5 = [v21 initWithMentions:v22];

      v23 = a1[8];
      v24 = [*(*(a1[10] + 8) + 40) note];
      v25 = [v24 objectID];
      [v23 showAttributionHighlightsForNoteWithObjectID:v25 selection:v5];

      goto LABEL_17;
    }

    v26 = *(*(*v7 + 8) + 40);
    v27 = os_log_create("com.apple.notes", "UI");
    v5 = v27;
    if (!v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1004D848C();
      }

      goto LABEL_17;
    }

    v28 = v27;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D8400((a1 + 9));
    }

    v29 = a1[8];
    v5 = [*(*(a1[9] + 8) + 40) objectID];
    v6 = v29;
LABEL_6:
    [v6 showObjectWithObjectID:v5];
LABEL_17:

    return;
  }

  v2 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1004D82B8();
  }

  v3 = *(*(a1[9] + 8) + 40);
  if (v3)
  {
    v4 = a1[8];
    v5 = [v3 objectID];
    v6 = v4;
    goto LABEL_6;
  }
}

void sub_100045DD4(uint64_t a1)
{
  v2 = [[ICAttachmentPresenter alloc] initWithViewControllerManager:*(a1 + 32) attachments:*(a1 + 40) startingAtIndex:*(a1 + 72) delegate:*(a1 + 48) displayShowInNote:*(a1 + 80) editable:*(a1 + 81) presentingViewController:*(a1 + 56)];
  [*(a1 + 32) setCurrentAttachmentPresenter:v2];
  [v2 presentAttachmentWithSelectedSubAttachment:*(a1 + 64)];
}

uint64_t sub_100045E54(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D8538();
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100046834(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 5)
  {
    v3 = [*(a1 + 32) activityStreamNavigationController];
  }

  else
  {
    v4 = [*(a1 + 32) presentedActivityStreamNavigationController];
    if (v4 && (v5 = v4, [*(a1 + 32) presentedActivityStreamNavigationController], v6 = objc_claimAutoreleasedReturnValue(), v7 = (v2 != 4) ^ objc_msgSend(v6, "hasInteractiveSizing"), v6, v5, (v7 & 1) == 0))
    {
      v3 = [*(a1 + 32) presentedActivityStreamNavigationController];
    }

    else
    {
      v3 = [[ICActivityStreamNavigationController alloc] initWithCoordinator:*(a1 + 32) hasInteractiveSizing:v2 != 4];
    }
  }

  v8 = v3;
  [(ICActivityStreamNavigationController *)v3 setObject:*(a1 + 40)];
  v9 = [*(a1 + 32) selectedModernNote];
  v10 = [v9 objectID];
  v11 = [*(a1 + 40) objectID];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    v13 = [*(a1 + 32) activityStreamSelection];
    [(ICActivityStreamNavigationController *)v8 setSelection:v13];
  }

  if (*(a1 + 48) != 5)
  {
    v18 = [(ICActivityStreamNavigationController *)v8 presentingViewController];

    if (!v18)
    {
      v19 = [*(a1 + 32) presentedActivityStreamPresentingViewController];
      [v19 presentViewController:v8 animated:*(a1 + 56) completion:0];
    }

    [(ICActivityStreamNavigationController *)v8 moveToViewMode:*(a1 + 48)];
    if ([*(a1 + 32) showsPresentedActivityStreamAsModal])
    {
      goto LABEL_32;
    }

    v20 = [*(a1 + 32) noteEditorViewController];
    [v20 hideActivityStreamToolbarAnimated:*(a1 + 56)];
    goto LABEL_20;
  }

  if (![*(a1 + 32) usesSingleSplitView])
  {
    if ([*(a1 + 32) behavior] != 3)
    {
      v24 = [*(a1 + 32) trailingSidebarSplitViewController];
      v25 = [v24 displayMode];

      if (v25 != 1)
      {
        goto LABEL_33;
      }

      v26 = [*(a1 + 32) mainSplitViewController];
      v27 = [v26 displayMode];

      if (v27 == 6)
      {
        v28 = [*(a1 + 32) mainSplitViewController];
        [v28 hideColumn:0];
      }
    }

    v21 = [*(a1 + 32) trailingSidebarSplitViewController];
    v22 = [v21 shouldRenderAsOverlay];

    v23 = *(a1 + 32);
    if (!v22)
    {
      [v23 updateTrailingColumnWidth];
      v29 = [*(a1 + 32) trailingSidebarViewController];
      v30 = [v29 view];
      [v30 frame];
      v32 = v31;
      v34 = v33;

      v35 = [*(a1 + 32) mainSplitViewController];
      [v35 nonDisplacedColumnWidth];
      v37 = v32 - v36;

      v38 = [*(a1 + 32) trailingSidebarViewController];
      [v38 preferredSidebarWidth];
      v40 = v37 - v39;

      v41 = [*(a1 + 32) mainSplitViewController];
      v42 = [v41 requiresNotificationForSecondaryColumnSize:{v40, v34}];

      v43 = [*(a1 + 32) trailingSidebarViewController];
      [v43 setSidebarHidden:0];

      v44 = [*(a1 + 32) trailingSidebarSplitViewController];
      v45 = [v44 transitionCoordinator];

      if ([*(a1 + 32) behavior] != 3)
      {
        v46 = [*(a1 + 32) mainSplitViewController];
        v47 = [v46 shouldDisplaceColumn];

        if (v47)
        {
          v57[0] = _NSConcreteStackBlock;
          v57[1] = 3221225472;
          v57[2] = sub_100046D78;
          v57[3] = &unk_100645E08;
          v57[4] = *(a1 + 32);
          [v45 animateAlongsideTransition:v57 completion:0];
          v48 = [*(a1 + 32) mainSplitViewController];
          v49 = v48;
          v50 = 1;
        }

        else
        {
          v48 = [*(a1 + 32) mainSplitViewController];
          v49 = v48;
          v50 = 0;
        }

        [v48 setIsDisplacingColumn:v50];
      }

      v51 = [*(a1 + 32) noteEditorViewController];
      [v51 hideActivityStreamToolbarAnimated:*(a1 + 56)];

      if (v42)
      {
        [*(a1 + 32) sendNotificationForNoteEditorSizeChange:v45 transitionCoordinator:{v40, v34}];
      }

      goto LABEL_32;
    }

    v20 = [v23 trailingSidebarViewController];
    [v20 setSidebarHidden:0];
LABEL_20:

LABEL_32:
    v52 = _NSConcreteStackBlock;
    v53 = 3221225472;
    v54 = sub_100046DE8;
    v55 = &unk_100645E30;
    v56 = v8;
    dispatch_async(&_dispatch_main_q, &v52);
    [*(a1 + 32) updateIgnoreTextViewTaps];

    goto LABEL_33;
  }

  [(ICActivityStreamNavigationController *)v8 loadViewIfNeeded];
  v14 = [*(a1 + 32) mainSplitViewController];
  [v14 setViewController:v8 forColumn:4];

  v15 = [*(a1 + 32) mainSplitViewController];
  [v15 showColumn:4];

  v16 = [*(a1 + 32) mainSplitViewController];
  [v16 hideColumn:0];

  if (![*(a1 + 32) noteContainerViewMode])
  {
    v17 = [*(a1 + 32) mainSplitViewController];
    [v17 hideColumn:1];
  }

LABEL_33:
}

void sub_100046D78(uint64_t a1)
{
  v3 = [*(a1 + 32) mainSplitViewController];
  v2 = [*(a1 + 32) mainSplitViewController];
  [v3 hideColumn:{objc_msgSend(v2, "preferredDisplacedColumn")}];
}

void sub_100046DE8(uint64_t a1)
{
  v1 = [*(a1 + 32) activityStreamViewController];
  [v1 updateContentLayout];
}

uint64_t sub_1000471F8(uint64_t a1)
{
  [*(a1 + 32) updateIgnoreTextViewTaps];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_10004724C(uint64_t a1)
{
  v2 = [*(a1 + 32) mainSplitViewController];
  [v2 setViewController:0 forColumn:4];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000472B8(uint64_t a1)
{
  v3 = [*(a1 + 32) mainSplitViewController];
  v2 = [*(a1 + 32) mainSplitViewController];
  [v3 showColumn:{objc_msgSend(v2, "preferredDisplacedColumn")}];
}

void sub_1000477B4(uint64_t a1)
{
  v2 = [*(a1 + 32) modernManagedObjectContext];
  v3 = [v2 objectWithID:*(a1 + 40)];

  v4 = [*(a1 + 32) trailingSidebarViewController];
  v5 = [v4 isSidebarHidden];

  v6 = *(a1 + 32);
  if (!v5)
  {
    if ([v6 isTrailingContentVisible])
    {
      [*(a1 + 32) setActivityStreamSelection:*(a1 + 48)];
      v13 = 4;
LABEL_47:
      v37 = [[ICActivityStreamDigest alloc] initWithObject:v3];
      v38 = [v37 hasRecentUpdates];
      v39 = [v37 isCurrentUserMentionedInRecentSummary];
      v40 = *(a1 + 48);
      if (v40)
      {
        v41 = [v40 filter];
        v42 = [v37 recentUpdatesFilter];
        v43 = [v41 fromDate];
        [v43 timeIntervalSince1970];
        v45 = v44;
        v46 = [v42 fromDate];
        [v46 timeIntervalSince1970];
        if (v45 >= v47)
        {
          [v41 toDate];
          v59 = v13;
          v49 = v48 = v3;
          [v49 timeIntervalSince1970];
          v51 = v50;
          v52 = [v42 toDate];
          [v52 timeIntervalSince1970];
          v38 = v51 <= v53;

          v3 = v48;
          v13 = v59;
        }

        else
        {
          v38 = 0;
        }

        v39 = [v37 isCurrentUserMentionedInFilter:v42];
      }

      v54 = [*(a1 + 32) eventReporter];
      [v54 submitCollabActivityBrowseEventForObject:v3 contextPath:0 clickContext:5 mode:v13 isCurrentUserMentioned:v39 hasRecentUpdates:v38];

      goto LABEL_53;
    }

    v15 = [*(a1 + 32) trailingSidebarSplitViewController];
    if ([v15 shouldRenderAsOverlay] & 1) != 0 || (*(a1 + 56))
    {
    }

    else
    {
      v25 = [*(a1 + 32) showsPresentedActivityStreamAsModal];

      if ((v25 & 1) == 0)
      {
        v26 = _UISolariumEnabled();
        v27 = *(a1 + 32);
        if (v26)
        {
          [v27 showActivityStreamForObjectWithObjectID:*(a1 + 40)];
          [*(a1 + 32) setActivityStreamSelection:*(a1 + 48)];
          v28 = [*(a1 + 32) presentedActivityStreamNavigationController];
          v29 = [v28 viewMode];

          v30 = [*(a1 + 32) presentedActivityStreamNavigationController];
          v31 = [v30 view];
          v32 = [v31 window];

          v33 = 3;
          if (v29 != 2)
          {
            v33 = 0;
          }

          if (v29 == 3)
          {
            v33 = 2;
          }

          if (v32)
          {
            v13 = v33;
          }

          else
          {
            v13 = 0;
          }

          if ((*(a1 + 56) & 1) != 0 || *(a1 + 48) && v29 == 3)
          {
            v34 = [*(a1 + 32) presentedActivityStreamNavigationController];
            [v34 moveToViewMode:1];
          }
        }

        else
        {
          v56 = [v27 trailingSidebarSplitViewController];
          v57 = [v56 displayMode];

          if (v57 == 1)
          {
            [*(a1 + 32) showActivityStreamForObjectWithObjectID:*(a1 + 40)];
            v13 = 0;
          }

          else
          {
            v13 = 4;
          }
        }

        v58 = [*(a1 + 32) outerSplitViewController];
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_100047E54;
        v60[3] = &unk_100645BA0;
        v60[4] = *(a1 + 32);
        v61 = *(a1 + 48);
        [v58 ic_performBlockAfterActiveTransition:v60];

        v36 = v61;
LABEL_46:

        if (!v13)
        {
          goto LABEL_53;
        }

        goto LABEL_47;
      }
    }

    if ([*(a1 + 32) behavior] == 3 && (*(a1 + 56) & 1) == 0)
    {
      v16 = [*(a1 + 32) mainSplitViewController];
      [v16 hideColumn:1];
    }

    v17 = [*(a1 + 32) trailingSidebarSplitViewController];
    v18 = [v17 displayMode];

    if (v18 == 3)
    {
      v19 = [*(a1 + 32) trailingSidebarViewController];
      [v19 setSidebarHidden:1];

      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100047DEC;
    v64[3] = &unk_100645D40;
    v64[4] = *(a1 + 32);
    v65 = v3;
    v66 = *(a1 + 48);
    v20 = objc_retainBlock(v64);
    v21 = [*(a1 + 32) showsPresentedActivityStreamAsModal];
    v22 = *(a1 + 32);
    if (v21)
    {
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_100047E44;
      v62[3] = &unk_100645CC8;
      v63 = v20;
      [v22 hidePresentedActivityStreamNavigationControllerWithCompletion:v62];
    }

    else
    {
      v23 = [*(a1 + 32) noteEditorViewController];
      v24 = [v23 activityStreamToolbar];
      if (v24)
      {
      }

      else
      {
        v35 = [*(a1 + 32) showsPresentedActivityStreamAsModal];

        if ((v35 & 1) == 0)
        {
          v55 = [*(a1 + 32) trailingSidebarViewController];
          [v55 ic_performBlockAfterActiveTransition:v20];

          goto LABEL_45;
        }
      }

      (v20[2])(v20);
    }

LABEL_45:

    v36 = v65;
    goto LABEL_46;
  }

  [v6 showActivityStreamForObjectWithObjectID:*(a1 + 40)];
  v7 = [*(a1 + 32) presentedActivityStreamNavigationController];
  v8 = [v7 viewMode];

  v9 = [*(a1 + 32) presentedActivityStreamNavigationController];
  v10 = [v9 view];
  v11 = [v10 window];

  v12 = 3;
  if (v8 != 2)
  {
    v12 = 0;
  }

  if (v8 == 3)
  {
    v12 = 2;
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  [*(a1 + 32) setActivityStreamSelection:*(a1 + 48)];
  if ((*(a1 + 56) & 1) != 0 || *(a1 + 48) && v8 == 3)
  {
    v14 = [*(a1 + 32) presentedActivityStreamNavigationController];
    [v14 moveToViewMode:1];
  }

  if (v13)
  {
    goto LABEL_47;
  }

LABEL_53:
}

id sub_100047DEC(uint64_t a1)
{
  v2 = [*(a1 + 32) noteEditorViewController];
  [v2 showActivityStreamToolbarForObject:*(a1 + 40) selection:*(a1 + 48) animated:1];

  v3 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v4 setActivityStreamSelection:v3];
}

id sub_100048760(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[ICTagAllTagsItemIdentifier archiveIdentifier];
  }

  else
  {
    objc_opt_class();
    v4 = ICDynamicCast();
    if ([v4 ic_isHashtagType])
    {
      v5 = [v4 URIRepresentation];
      v3 = [v5 absoluteString];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_100048C08(uint64_t a1)
{
  if (*(a1 + 40) == 1 && (*(a1 + 41) & 1) == 0)
  {
    v3 = [*(a1 + 32) noteEditorViewController];
    [v3 showInkPicker:0];
  }

  else if (*(a1 + 42) == 1)
  {
    v3 = [*(a1 + 32) noteEditorViewController];
    [v3 addTodoListAtEndOfNote];
  }

  else
  {
    if (*(a1 + 43) == 1)
    {
      v1 = [*(a1 + 32) noteEditorViewController];
      v3 = v1;
      v2 = 7;
    }

    else
    {
      if (*(a1 + 44) != 1)
      {
        return;
      }

      v1 = [*(a1 + 32) noteEditorViewController];
      v3 = v1;
      v2 = 4;
    }

    [v1 showInsertUIWithPreferredSourceType:v2];
  }
}

void sub_1000490B0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D85AC();
  }

  if (v2)
  {
    v4 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004D85E0(v2);
    }
  }
}

void sub_1000495C0(uint64_t a1)
{
  v2 = [*(a1 + 32) modernManagedObjectContext];
  v3 = [*(a1 + 32) selectedNoteObjectID];
  v7 = [v2 objectWithID:v3];

  v4 = [v7 title];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100049660(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyManagedObjectContext];
  v3 = [*(a1 + 32) selectedNoteObjectID];
  v7 = [v2 objectWithID:v3];

  v4 = [v7 title];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_100049700(uint64_t a1)
{
  v2 = [*(a1 + 32) modernManagedObjectContext];
  v3 = [*(a1 + 32) selectedInvitationObjectID];
  v7 = [v2 objectWithID:v3];

  v4 = [v7 title];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void sub_1000497A0(uint64_t a1)
{
  v2 = [*(a1 + 32) modernManagedObjectContext];
  v6 = [v2 objectWithID:*(a1 + 40)];

  v3 = [v6 titleForNavigationBar];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100049820(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyManagedObjectContext];
  v6 = [v2 objectWithID:*(a1 + 40)];

  v3 = [v6 titleForTableViewCell];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10004A520(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = [*(a1 + 32) folderListViewController];
    v5 = [v4 dataSource];
    v6 = [v5 firstRelevantItemIdentifier];

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = *(a1 + 32);
    if (isKindOfClass)
    {
      v9 = [NSSet ic_setFromNonNilObject:v6];
      v10 = +[NSSet set];
      [v8 selectContainerWithIdentifiers:v9 excludingIdentifiers:v10 usingRootViewController:1 deferUntilDataLoaded:0 dismissOverlayContent:1 animated:0];
    }

    else
    {
      [*(a1 + 32) validateState];
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004A6B4;
  v15[3] = &unk_100646030;
  v11 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v3;
  v17 = v11;
  v12 = v3;
  v13 = objc_retainBlock(v15);
  v14 = [*(a1 + 32) startupPresenter];
  [v14 dismissWithCompletionBlock:v13];
}

uint64_t sub_10004A6B4(uint64_t a1)
{
  [*(a1 + 32) setStartupPresenter:0];
  [*(a1 + 32) setWelcomeScreenVisible:0];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_10004AD04(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10004AD24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained setActivityStreamSelection:0];
    if (!WeakRetained[4] && [WeakRetained isSplitViewExpanded])
    {
      v2 = [WeakRetained noteEditorViewController];
      [v2 setNote:0];

      v3 = [WeakRetained legacyNoteEditorViewController];
      [v3 displayNote:0];
    }

    v4 = [WeakRetained selectedModernNote];
    v5 = [WeakRetained activityStreamNavigationController];
    [v5 setObject:v4];

    v6 = [*(a1 + 32) window];
    v7 = [v6 windowScene];
    [WeakRetained updateSceneTitle:v7];
  }
}

void sub_10004B930(uint64_t a1)
{
  v1 = [*(a1 + 32) trailingSidebarViewController];
  [v1 setSidebarHidden:1];
}

void sub_10004D260(uint64_t a1)
{
  if ([*(a1 + 32) selectionStateTrackingEnabled] && *(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) selectedNoteObjectID];
    v3 = v2;
    if (v2)
    {
      v9 = v2;
    }

    else
    {
      v4 = [*(a1 + 32) mostRecentRegularWidthSelectedNoteObjectID];
      v5 = v4;
      if (v4)
      {
        v9 = v4;
      }

      else
      {
        objc_opt_class();
        v6 = [*(a1 + 32) currentNoteBrowseViewController];
        v7 = [v6 dataSource];
        v8 = [v7 firstRelevantItemIdentifier];
        v9 = ICDynamicCast();
      }
    }

    if ([*(a1 + 32) objectAlreadyLoadedInEditorWithObjectID:v9])
    {
      if (([*(a1 + 32) isNoteEditorVisible] & 1) == 0)
      {
        [*(a1 + 32) setNoteEditorAnimated:0 ensurePresented:1 startEditing:0 showLegacy:objc_msgSend(*(a1 + 32) showLatestUpdatesIfAvailable:{"isInHTMLEditorMode"), 0}];
      }
    }

    else if ([v9 ic_isNoteType])
    {
      [*(a1 + 32) selectNoteWithObjectID:v9 scrollState:0 startEditing:0 animated:0 ensurePresented:1];
    }

    else if ([v9 ic_isInvitationType])
    {
      [*(a1 + 32) selectInvitationWithObjectID:v9 animated:0];
    }
  }
}

void sub_10004D41C(uint64_t a1)
{
  v2 = [*(a1 + 32) mainSplitViewController];
  v3 = [*(a1 + 32) activityStreamNavigationController];
  [v2 setViewController:v3 forColumn:4];

  v4 = [*(a1 + 32) mainSplitViewController];
  [v4 showColumn:4];
}

void sub_10004D7D0(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.notes.printControllerQueue", v3);
  v2 = qword_1006CB230;
  qword_1006CB230 = v1;
}

void sub_10004D834(uint64_t a1)
{
  v2 = +[UIPrintInteractionController sharedPrintController];
  [v2 setPrintFormatter:*(a1 + 32)];
  v3 = objc_alloc_init(ICPrintPageRenderer);
  v4 = +[UIColor systemBackgroundColor];
  [(ICPrintPageRenderer *)v3 setBackgroundColor:v4];

  [(ICPrintPageRenderer *)v3 addPrintFormatter:*(a1 + 32) startingAtPageAtIndex:0];
  [v2 setPrintPageRenderer:v3];
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];
  v7 = [NSString stringWithFormat:@"%@.pdf", v6];

  v8 = NSTemporaryDirectory();
  v9 = [v8 stringByAppendingPathComponent:v7];

  v10 = [NSURL fileURLWithPath:v9];
  v11 = dispatch_semaphore_create(0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004DA2C;
  v15[3] = &unk_100646130;
  v16 = v10;
  v19 = *(a1 + 48);
  v12 = *(a1 + 40);
  v17 = v11;
  v18 = v12;
  v13 = v11;
  v14 = v10;
  [v2 savePDFToURL:v14 showProgress:0 completionHandler:v15];
  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_10004DA2C(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004DB3C;
  block[3] = &unk_100646108;
  v17 = a3;
  v11 = a4;
  v12 = *(a1 + 32);
  v13 = v7;
  v16 = *(a1 + 56);
  v15 = *(a1 + 48);
  v14 = *(a1 + 40);
  v8 = v7;
  v9 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

intptr_t sub_10004DB3C(uint64_t a1)
{
  if (*(a1 + 80) == 1 && !*(a1 + 32))
  {
    v4 = [NSData dataWithContentsOfURL:*(a1 + 40)];
    v5 = [*(a1 + 48) printFormatter];
    v6 = [v5 pageCount];
    v7 = *(a1 + 72);

    v8 = *(a1 + 64);
    if (v8)
    {
      (*(v8 + 16))(v8, v4, (v7 * v6), CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);
    }
  }

  else
  {
    v2 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1004D8744();
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      (*(v3 + 16))(v3, 0, 0x7FFFFFFFFFFFFFFFLL, CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height);
    }
  }

  [*(a1 + 48) setPrintFormatter:0];
  return dispatch_semaphore_signal(*(a1 + 56));
}

void sub_10004EAD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [v2 mainSplitViewController];
  v3 = [v6 traitCollection];
  v4 = [v2 defaultDisplayModeButtonVisibilityForTraitCollection:v3];
  v5 = [*(a1 + 32) mainSplitViewController];
  [v5 setDisplayModeButtonVisibility:v4];
}

void sub_10004F23C(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionStateController];
  [v2 navigationControllerDidTransitionWithNewContainerItemID:*(a1 + 40) newTagSelection:*(a1 + 48) forgetObjectSelection:*(a1 + 56)];
}

void sub_10004F5E0(uint64_t a1)
{
  objc_opt_class();
  v4 = [*(a1 + 32) modernManagedObjectContext];
  v2 = [v4 objectWithID:*(a1 + 40)];
  v3 = ICDynamicCast();
  *(*(*(a1 + 48) + 8) + 24) = [v3 enforcedNoteContainerViewMode];
}

void sub_10004F680(uint64_t a1)
{
  objc_opt_class();
  v4 = [*(a1 + 32) legacyManagedObjectContext];
  v2 = [v4 objectWithID:*(a1 + 40)];
  v3 = ICDynamicCast();
  *(*(*(a1 + 48) + 8) + 24) = [v3 enforcedNoteContainerViewMode];
}

void sub_1000511E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100051214(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();

  v5 = [v2 managedObjectIDFromURL:v4];

  return v5;
}

id sub_100051294(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICTagAllTagsItemIdentifier archiveIdentifier];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = +[ICTagAllTagsItemIdentifier sharedItemIdentifier];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [NSURL URLWithString:v3];
    v9 = [v7 managedObjectIDFromURL:v8];

    if ([v9 ic_isHashtagType])
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_100051378(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (([*(a1 + 32) selectionStateTrackingEnabled] & 1) == 0 && objc_msgSend(v5, "ic_isModernAccountType"))
  {
    v6 = [*(a1 + 32) modernManagedObjectContext];
    v7 = [v6 ic_existingObjectWithID:v5];

    if (([v7 hasAnyCustomFoldersIncludingSystem:0] & 1) == 0)
    {
      v8 = *(a1 + 40);
      if (v8 && [v8 ic_isModernNoteType])
      {
        v9 = *(a1 + 40);
        v10 = [*(a1 + 32) modernManagedObjectContext];
        v11 = [ICNote ic_existingObjectWithID:v9 context:v10];

        v12 = [v11 folder];
        v13 = [v12 objectID];

        v5 = v12;
      }

      else
      {
        v11 = [v7 defaultFolder];
        v13 = [v11 objectID];
      }

      v5 = v13;
    }
  }

  if ([v5 ic_isContainerType])
  {
    v14 = [*(a1 + 32) rootNoteBrowseViewController];
    if (a3)
    {
      v15 = -[ICNoteBrowseViewController initWithViewMode:viewControllerManager:]([ICNoteBrowseViewController alloc], "initWithViewMode:viewControllerManager:", [*(a1 + 32) noteContainerViewMode], *(a1 + 32));

      v14 = v15;
    }

    [*(a1 + 48) addObject:v14];
    if ([*(a1 + 56) count] - 1 == a3)
    {
      if (*(a1 + 40))
      {
        v16 = 1;
LABEL_20:
        objc_initWeak(&location, *(a1 + 32));
        v17 = *(a1 + 32);
        v18 = [NSSet ic_setFromNonNilObject:v5];
        v19 = +[NSSet set];
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_100051684;
        v21[3] = &unk_1006461F0;
        v22 = *(a1 + 64);
        v23 = v5;
        objc_copyWeak(&v25, &location);
        v20 = v14;
        v24 = v20;
        [v17 setCurrentNoteBrowseViewController:v20 animated:0 ensurePresented:0 containerIdentifiers:v18 excludingIdentifiers:v19 ensureSelectedNote:v16 keepEditorShowing:0 dataIndexedBlock:0 dataRenderedBlock:v21];

        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);

        goto LABEL_21;
      }

      if (![*(a1 + 32) noteContainerViewMode] && objc_msgSend(*(a1 + 32), "isSplitViewExpanded"))
      {
        v16 = *(a1 + 72) != 1;
        goto LABEL_20;
      }
    }

    v16 = 0;
    goto LABEL_20;
  }

LABEL_21:
}

void sub_100051660(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_100051684(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) URIRepresentation];
  v14 = [v2 objectForKeyedSubscript:v3];

  v4 = v14;
  if (v14)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v6 = [WeakRetained managedObjectIDFromURL:v14];

    if (v6)
    {
      v7 = [*(a1 + 48) dataSource];
      v8 = [v7 collectionViewDiffableDataSource];
      v9 = [v8 indexPathForItemIdentifier:v6];

      if (v9)
      {
        v10 = [*(a1 + 48) collectionView];
        v11 = [v10 indexPathsForVisibleItems];
        v12 = [v11 containsObject:v9];

        if ((v12 & 1) == 0)
        {
          v13 = [*(a1 + 48) collectionView];
          [v13 scrollToItemAtIndexPath:v9 atScrollPosition:1 animated:0];
        }
      }
    }

    v4 = v14;
  }
}

void sub_1000517BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePrimaryContainerViewAppearance];
}

void sub_1000517FC(uint64_t a1)
{
  v2 = [ICViewAttachmentsActivity alloc];
  v3 = [*(a1 + 32) mainSplitViewController];
  v4 = [*(a1 + 32) eventReporter];
  v5 = [(ICViewAttachmentsActivity *)v2 initWithPresentingViewController:v3 eventReporter:v4];

  [(ICViewAttachmentsActivity *)v5 performActivityUserInitiated:0 completion:0];
}

BOOL sub_100051DB0(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  v5 = ICDynamicCast();
  if ([v5 ic_isContainerType])
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = ICDynamicCast();
    v6 = v7 != 0;
  }

  return v6;
}

void sub_100052438(uint64_t a1, void *a2)
{
  v3 = a2;
  v41 = v3;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v4 = [*(a1 + 32) noteEditorViewController];
    v5 = [*(a1 + 32) selectedNoteObjectID];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [*(a1 + 32) selectedInvitationObjectID];
    }

    v8 = v7;

    if ([*(a1 + 32) selectionStateTrackingEnabled])
    {
      if (v8)
      {
        v9 = v8;
        goto LABEL_8;
      }

      if ([*(a1 + 32) isAutomaticallySelectingNotes])
      {
        v23 = +[UIApplication sharedApplication];
        if ([v23 applicationState])
        {
          v24 = [*(a1 + 32) selectionStateController];
          v25 = [v24 mostRecentSelectedObjectID];

          if (v25)
          {
            v26 = *(a1 + 32);
            v27 = [v26 selectionStateController];
            v28 = [v27 mostRecentSelectedObjectID];
            LODWORD(v26) = [v26 isSelectionAppropriateForObjectID:v28];

            if (v26)
            {
              v29 = [*(a1 + 32) selectionStateController];
              v9 = [v29 mostRecentSelectedObjectID];

              if (v9)
              {
                goto LABEL_8;
              }
            }
          }
        }

        else
        {
        }

        objc_opt_class();
        v32 = [v41 firstRelevantItemIdentifier];
        v9 = ICDynamicCast();

        if (!v9)
        {
          goto LABEL_42;
        }

LABEL_8:
        if (([v9 isEqual:v8] & 1) == 0)
        {
          v10 = [*(a1 + 32) selectionStateController];
          [v10 pushAutoselectedObjectWithObjectID:v9];

LABEL_10:
          goto LABEL_54;
        }

LABEL_16:
        if ([*(a1 + 32) selectionStateTrackingEnabled] && objc_msgSend(*(a1 + 32), "objectAlreadyLoadedInEditorWithObjectID:", v9) && objc_msgSend(*(a1 + 32), "isNoteEditorTopViewController"))
        {
          v14 = *(a1 + 48);
          if (v14)
          {
            (*(v14 + 16))(v14, v41);
          }

          goto LABEL_10;
        }

        if ([v9 ic_isModernNoteType])
        {
          v15 = [*(a1 + 32) modernManagedObjectContext];
          v16 = [v15 ic_existingObjectWithID:v9];

          v17 = [*(a1 + 32) noteEditorViewController];
          [v17 setNote:v16];

          if (([*(a1 + 32) selectionStateTrackingEnabled] & 1) == 0)
          {
            [*(a1 + 32) setSelectedNoteObjectID:v9];
          }
        }

        else
        {
          if (![v9 ic_isInvitationType])
          {
            if (![v9 ic_isLegacyNoteType])
            {
              v22 = 1;
LABEL_48:
              v37 = *(a1 + 32);
              if ([v37 selectionStateTrackingEnabled])
              {
                v38 = v22 & [*(a1 + 32) isApplyingStateRestoreArchive];
              }

              else
              {
                v38 = 0;
              }

              v39 = [*(a1 + 32) legacyNoteEditorViewController];
              [v37 setNoteEditorAnimated:0 ensurePresented:v38 startEditing:0 showLegacy:v4 == v39 showLatestUpdatesIfAvailable:1];

              v3 = v41;
              goto LABEL_52;
            }

            v30 = [*(a1 + 32) legacyManagedObjectContext];
            v16 = [v30 ic_existingObjectWithID:v9];

            v31 = [*(a1 + 32) legacyNoteEditorViewController];
            [v31 displayNote:v16];

            if (([*(a1 + 32) selectionStateTrackingEnabled] & 1) == 0)
            {
              [*(a1 + 32) setSelectedNoteObjectID:v9];
            }

            v20 = [*(a1 + 32) legacyNoteEditorViewController];
            goto LABEL_28;
          }

          v18 = [*(a1 + 32) modernManagedObjectContext];
          v16 = [v18 ic_existingObjectWithID:v9];

          v19 = [*(a1 + 32) noteEditorViewController];
          [v19 setInvitation:v16];

          if (([*(a1 + 32) selectionStateTrackingEnabled] & 1) == 0)
          {
            [*(a1 + 32) setSelectedInvitationObjectID:v9];
          }
        }

        v20 = [*(a1 + 32) noteEditorViewController];
LABEL_28:
        v21 = v20;

        v22 = 1;
        v4 = v16;
LABEL_46:

        v4 = v21;
        goto LABEL_48;
      }
    }

    else
    {
      v11 = [*(a1 + 32) isSelectionAppropriateForObjectID:v8];
      v12 = [*(a1 + 32) selectedSearchResult];
      if (v12 || v11)
      {
        v9 = v8;
      }

      else
      {
        objc_opt_class();
        v13 = [v41 firstRelevantItemIdentifier];
        v9 = ICDynamicCast();
      }

      if (v9)
      {
        goto LABEL_16;
      }
    }

LABEL_42:
    if ([*(a1 + 40) ic_isModernContainerType])
    {
      v33 = [*(a1 + 32) noteEditorViewController];
      [v33 setNote:0];

      v34 = [*(a1 + 32) noteEditorViewController];
      [v34 setInvitation:0];

      v35 = [*(a1 + 32) noteEditorViewController];

      v4 = v35;
    }

    if (![*(a1 + 40) ic_isLegacyContainerType])
    {
      v22 = 0;
      v9 = 0;
      goto LABEL_48;
    }

    v36 = [*(a1 + 32) legacyNoteEditorViewController];
    [v36 displayNote:0];

    v21 = [*(a1 + 32) legacyNoteEditorViewController];
    v22 = 0;
    v9 = 0;
    goto LABEL_46;
  }

LABEL_52:
  v40 = *(a1 + 48);
  if (!v40)
  {
    goto LABEL_55;
  }

  (*(v40 + 16))(v40, v41);
LABEL_54:
  v3 = v41;
LABEL_55:
}

void sub_100052988(uint64_t a1)
{
  v2 = [*(a1 + 32) modernManagedObjectContext];
  v3 = [v2 ic_existingObjectWithID:*(a1 + 40)];

  [*(a1 + 48) setNoteContainer:v3 dataIndexedBlock:*(a1 + 56) dataRenderedBlock:*(a1 + 64)];
}

void sub_1000529F8(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyManagedObjectContext];
  v3 = [v2 ic_existingObjectWithID:*(a1 + 40)];

  [*(a1 + 48) setNoteCollection:v3 dataIndexedBlock:*(a1 + 56) dataRenderedBlock:*(a1 + 64)];
}

uint64_t sub_100052D74(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    v8 = [v6 noteContainer];
    v9 = [v8 objectID];
    if ([v9 isEqual:v7])
    {
      v10 = 0;
    }

    else
    {
      v11 = [v6 noteCollection];
      v12 = [v11 objectID];
      v10 = [v12 isEqual:v7] ^ 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void sub_100052F34(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (a3)
  {
    v5 = -[ICNoteBrowseViewController initWithViewMode:viewControllerManager:]([ICNoteBrowseViewController alloc], "initWithViewMode:viewControllerManager:", [*(a1 + 32) noteContainerViewMode], *(a1 + 32));
  }

  else
  {
    v5 = [*(a1 + 32) rootNoteBrowseViewController];
  }

  v6 = v5;
  objc_opt_class();
  v7 = [*(a1 + 32) existingManagedObjectWithObjectID:v11];
  v8 = ICDynamicCast();

  [(ICNoteBrowseViewController *)v6 setNoteContainer:v8 dataIndexedBlock:0 dataRenderedBlock:0];
  v9 = [*(a1 + 32) rootNoteBrowseViewController];

  if (v6 != v9)
  {
    v10 = [*(a1 + 32) noteBrowseNavigationController];
    [v10 pushViewController:v6 animated:0];
  }
}

void sub_100053CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_100053D38(uint64_t a1)
{
  if ([*(a1 + 32) isAutomaticallySelectingNotes])
  {
    v2 = [*(a1 + 32) selectedNoteObjectID];

    if (!v2)
    {
      LOWORD(v3) = 256;
      [*(a1 + 32) selectNoteWithObjectID:*(a1 + 40) scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:0 showLatestUpdatesIfAvailable:1 animated:v3 ensurePresented:?];
    }
  }
}

void *sub_100053DA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectID];
  HIDWORD(v62) = [v4 ic_isNoteType];

  v5 = *(a1 + 32);
  v6 = [v3 objectID];
  v7 = [v5 isSelectionAppropriateForObjectID:v6];

  v8 = [v3 changedValues];
  v9 = [v8 allKeys];

  if ([v9 containsObject:@"markedForDeletion"])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v9 containsObject:@"deletedFlag"];
  }

  v11 = v3;
  v12 = [v11 changedValues];
  v13 = [v12 allKeys];
  v14 = [v13 containsObject:@"folder"];

  if (!v14)
  {
    v41 = 0;
    goto LABEL_26;
  }

  LODWORD(v62) = v7;
  v69 = @"folder";
  v15 = [NSArray arrayWithObjects:&v69 count:1];
  v16 = [v11 committedValuesForKeys:v15];

  objc_opt_class();
  v17 = [v16 objectForKeyedSubscript:@"folder"];
  v18 = ICDynamicCast();

  objc_opt_class();
  v19 = [v11 changedValues];
  v20 = [v19 objectForKeyedSubscript:@"folder"];
  v21 = ICDynamicCast();

  v22 = [*(a1 + 32) selectedNoteObjectID];
  v23 = [v11 objectID];
  if ([v22 isEqual:v23] && v18)
  {

    if (v21)
    {
      if ([v18 isTrashFolder] && (objc_msgSend(v21, "isTrashFolder") & 1) == 0 && objc_msgSend(*(a1 + 32), "isNoteBeingRecovered"))
      {
        v24 = [v11 folder];
        v25 = [v24 objectID];
        v26 = *(*(a1 + 40) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;

        if ([v11 isSystemPaper] && +[ICAccount hidesSystemPaperNotesInCustomFolders](ICAccount, "hidesSystemPaperNotesInCustomFolders"))
        {
          v28 = +[ICAccount globalVirtualSystemPaperFolder];
          v29 = *(*(a1 + 40) + 8);
          v30 = *(v29 + 40);
          *(v29 + 40) = v28;
        }

        v7 = v62;
        if ([v11 isMathNote] && +[ICAccount hidesMathNotesInCustomFolders](ICAccount, "hidesMathNotesInCustomFolders"))
        {
          v31 = +[ICAccount globalVirtualMathNotesFolder];
          v32 = *(*(a1 + 40) + 8);
          v33 = *(v32 + 40);
          *(v32 + 40) = v31;
        }

        if ([v11 isCallNote] && +[ICAccount hidesCallNotesInCustomFolders](ICAccount, "hidesCallNotesInCustomFolders"))
        {
          v34 = +[ICAccount globalVirtualCallNotesFolder];
          v35 = *(*(a1 + 40) + 8);
          v36 = *(v35 + 40);
          *(v35 + 40) = v34;
        }

        v37 = [*(a1 + 32) overrideContainerIdentifier];

        if (v37)
        {
          v38 = [*(a1 + 32) overrideContainerIdentifier];
          v39 = *(*(a1 + 40) + 8);
          v40 = *(v39 + 40);
          *(v39 + 40) = v38;
        }
      }

      else
      {
        v59 = [v18 objectID];
        v60 = [v21 objectID];
        v61 = [v59 isEqual:v60];

        v7 = v61 & v62;
      }

      if ([v18 isTrashFolder])
      {
        v41 = 0;
      }

      else
      {
        v41 = [v21 isTrashFolder];
      }

      goto LABEL_25;
    }
  }

  else
  {
  }

  v41 = 0;
  v7 = v62;
LABEL_25:

LABEL_26:
  v42 = [v11 changedValues];
  v43 = [v42 allKeys];
  if ([v43 containsObject:@"title"])
  {
    v44 = [*(a1 + 32) selectedNoteObjectID];
    [v11 objectID];
    v45 = v11;
    v46 = v41;
    v47 = a1;
    v48 = v9;
    v49 = v10;
    v51 = v50 = v7;
    LODWORD(v62) = [v44 isEqual:v51];

    v7 = v50;
    v10 = v49;
    v9 = v48;
    a1 = v47;
    v41 = v46;
    v11 = v45;

    if (v62)
    {
      v64 = _NSConcreteStackBlock;
      v65 = 3221225472;
      v66 = sub_10005435C;
      v67 = &unk_100645E30;
      v68 = *(a1 + 32);
      performBlockOnMainThread();
    }
  }

  else
  {
  }

  v52 = [*(a1 + 32) selectedSearchResult];

  if (v52)
  {
    v53 = [*(a1 + 32) selectedNoteObjectID];
    v54 = [v11 objectID];
    v55 = [v53 isEqual:v54];
    if (!(v41 & 1 | ((v55 & 1) == 0) | v10 & 1))
    {
      v55 = [v11 isDeleted];
    }

    *(*(*(a1 + 48) + 8) + 24) = v55;
  }

  if ((v63 & (v7 ^ 1 | v10 | v41)) != 0)
  {
    v56 = v11;
  }

  else
  {
    v56 = 0;
  }

  v57 = v56;

  return v56;
}

void sub_10005435C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [v1 window];
  v2 = [v3 windowScene];
  [v1 updateSceneTitle:v2];
}

id sub_1000543C4(uint64_t a1)
{
  v2 = [*(a1 + 32) selectedNoteBrowseContainerItemID];
  if (v2 && (v3 = v2, [*(a1 + 32) selectedNoteBrowseContainerItemID], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqual:", *(*(*(a1 + 40) + 8) + 40)), v4, v3, (v5 & 1) == 0))
  {
    v8 = *(a1 + 32);
    v9 = [NSSet ic_setFromNonNilObject:*(*(*(a1 + 40) + 8) + 40)];
    v10 = +[NSSet set];
    v11 = [*(a1 + 32) rootNoteBrowseViewController];
    v12 = [*(a1 + 32) noteContainerViewMode] == 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100054584;
    v15[3] = &unk_100645C78;
    objc_copyWeak(&v16, (a1 + 48));
    BYTE1(v14) = v12;
    LOBYTE(v14) = 1;
    [v8 selectContainerWithIdentifiers:v9 excludingIdentifiers:v10 noteBrowseViewController:v11 usingRootViewController:1 deferUntilDataLoaded:0 dismissOverlayContent:&__kCFBooleanFalse animated:v14 ensurePresented:0 ensureSelectedNote:&__kCFBooleanTrue keepEditorShowing:0 dataIndexedBlock:v15 dataRenderedBlock:?];

    objc_destroyWeak(&v16);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained noteEditorViewController];
    [v7 startEditing];
  }

  return [*(a1 + 32) setIsRecoveredNoteBeingPresented:0];
}

void sub_100054584(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained noteEditorViewController];
  [v1 startEditing];
}

BOOL sub_1000545DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 changedValues];
  v5 = [NSMutableDictionary ic_dictionaryFromNonNilDictionary:v4];

  [v5 removeObjectForKey:@"serverShareData"];
  v6 = [v3 objectID];

  v7 = [*(a1 + 32) selectedNoteObjectID];
  if ([v6 isEqual:v7])
  {
    v8 = [v5 count] != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_100054710(uint64_t a1)
{
  v2 = [*(a1 + 32) folderListViewController];
  v3 = [v2 dataSource];

  [*(a1 + 32) setIsSelectingNextRelevantNoteBrowseContainer:1];
  v4 = +[NSSet set];
  v5 = +[NSSet set];
  v6 = [*(a1 + 32) selectedNoteBrowseContainerItemID];

  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 selectedNoteBrowseContainerItemID];
    v14 = v8;
    v9 = [NSArray arrayWithObjects:&v14 count:1];
    v10 = [v3 nextRelevantItemIdentifierAfter:v9];

    if ([*(a1 + 32) selectionStateTrackingEnabled])
    {
      if (!v10)
      {
LABEL_8:

        goto LABEL_9;
      }

      v11 = [NSSet setWithObject:v10];
    }

    else
    {
      [*(a1 + 32) setSelectedNoteBrowseContainerItemID:v10];
      v11 = [*(a1 + 32) selectedContainerIdentifiers];

      [*(a1 + 32) excludedContainerIdentifiers];
      v5 = v4 = v5;
    }

    v4 = v11;
    goto LABEL_8;
  }

  v12 = [v7 selectedContainerIdentifiers];

  v13 = [*(a1 + 32) excludedContainerIdentifiers];

  v5 = v13;
  v4 = v12;
LABEL_9:
  [*(a1 + 32) setIsSelectingNextRelevantNoteBrowseContainer:0];
  [*(a1 + 32) selectContainerWithIdentifiers:v4 excludingIdentifiers:v5 usingRootViewController:1 deferUntilDataLoaded:0 dismissOverlayContent:0 animated:1];
}

void sub_100054AA4(id *a1)
{
  if (([a1[4] isAutomaticallySelectingNotes] & 1) != 0 || (objc_msgSend(a1[4], "compactNavigationController"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "topViewController"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1[4], "rootNoteBrowseViewController"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v2, v3 == v4))
  {
    v5 = a1[4];
    v8 = [a1[5] copy];
    v6 = [a1[6] copy];
    LOBYTE(v7) = 1;
    [v5 showContainerWithIdentifiers:v8 excludingIdentifiers:v6 usingRootViewController:1 deferUntilDataLoaded:0 dismissOverlayContent:0 keepEditorShowing:0 animated:v7];
  }
}

void sub_100054E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100054E70(uint64_t a1)
{
  v3 = [*(a1 + 32) ic_existingObjectWithID:*(a1 + 40)];
  v2 = [v3 folder];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isTrashFolder];
}

void sub_100054EE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [NSSet setWithObject:*(a1 + 40)];
  v3 = +[NSSet set];
  v4 = [*(a1 + 32) rootNoteBrowseViewController];
  LOWORD(v5) = 0;
  [v2 selectContainerWithIdentifiers:v6 excludingIdentifiers:v3 noteBrowseViewController:v4 usingRootViewController:1 deferUntilDataLoaded:0 dismissOverlayContent:v5 animated:&__kCFBooleanFalse ensurePresented:&__kCFBooleanTrue ensureSelectedNote:0 keepEditorShowing:0 dataIndexedBlock:? dataRenderedBlock:?];
}

void sub_10005516C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055184(uint64_t a1)
{
  v3 = [*(a1 + 32) ic_existingObjectWithID:*(a1 + 40)];
  if ([v3 isSmartFolder])
  {
    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v2);
}

void sub_100055338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100055350(uint64_t a1)
{
  v2 = [*(a1 + 32) smartFolderQuery];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100055564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005557C(void *a1)
{
  v5 = [[ICQueryResultsController alloc] initWithManagedObjectContext:a1[4] query:a1[5]];
  v2 = [v5 performFetch];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100055860(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    objc_opt_class();
    v2 = ICDynamicCast();
    [*(a1 + 40) showSearchResult:v2 animated:1];
    if (!v2)
    {
      v3 = [*(a1 + 40) selectionStateTrackingEnabled];
      v4 = *(a1 + 40);
      if (v3)
      {
        v7 = [*(a1 + 40) previousSelectedNoteObjectID];
        LOWORD(v6) = 256;
        [v4 selectNoteWithObjectID:v7 scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:0 showLatestUpdatesIfAvailable:1 animated:v6 ensurePresented:?];

        return;
      }

      [*(a1 + 40) setSelectedNoteObjectID:0];
    }
  }

  else
  {
    LOWORD(v6) = 256;
    [*(a1 + 40) selectNoteWithObjectID:*(a1 + 32) scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:0 showLatestUpdatesIfAvailable:1 animated:v6 ensurePresented:?];
  }

  if (!*(a1 + 32))
  {
    v5 = *(a1 + 40);

    [v5 validateState];
  }
}

void sub_100055BF8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) mainSplitViewController];
  [v1 postNotificationName:@"ICSplitViewControllerWillBeginDisplayModeChange" object:v2];
}

void sub_100055C54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) mainSplitViewController];
  [v1 postNotificationName:@"ICSplitViewControllerDidEndDisplayModeChange" object:v2];
}

void sub_100055EE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) mainSplitViewController];
  [v2 postNotificationName:@"ICSplitViewControllerWillBeginAnimatedTransitionToStateRequest" object:v3 userInfo:*(a1 + 48)];
}

void sub_100055F4C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) mainSplitViewController];
  [v1 postNotificationName:@"ICSplitViewControllerDidEndAnimatedTransitionToStateRequest" object:v2];
}

void sub_100056234(uint64_t a1)
{
  if ([*(a1 + 32) isSplitViewExpanded] && objc_msgSend(*(a1 + 32), "behavior") != 3)
  {
    if (([*(a1 + 32) isSplitViewExpandingOrCollapsing] & 1) == 0)
    {
      if ([*(a1 + 32) noteContainerViewMode])
      {
        v2 = 2;
      }

      else
      {
        v2 = 1;
      }

      v3 = [*(a1 + 32) mainSplitViewController];
      [v3 ic_showColumn:v2 animated:*(a1 + 40)];
    }

    if (*(a1 + 41) == 1)
    {
      v4 = *(a1 + 32);

      [v4 dismissPrimaryOverlayContent];
    }
  }
}

void sub_10005678C(uint64_t a1)
{
  v3 = [*(a1 + 32) objectWithID:*(a1 + 40)];
  v2 = [*(a1 + 48) addHashtagToNoteBodyIfMissing:v3];
}

void sub_100056E30(uint64_t a1)
{
  if (([*(a1 + 32) isAutomaticallySelectingNotes] & 1) != 0 || (objc_msgSend(*(a1 + 32), "compactNavigationController"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "topViewController"), v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "rootNoteBrowseViewController"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v2, v3 == v4))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    [v5 showTagSelection:v6];
  }
}

void sub_10005726C(uint64_t a1)
{
  [*(a1 + 32) validateState];
  v2 = [*(a1 + 32) window];
  v3 = [v2 _windowHostingScene];
  v4 = [v3 session];

  v5 = os_log_create("com.apple.notes", "UI");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Refreshing Window scene after account change", buf, 2u);
    }

    v5 = +[UIApplication sharedApplication];
    [v5 requestSceneSessionRefresh:v4];
  }

  else if (v6)
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No scene session available so not refreshing window scene after account change", v7, 2u);
  }
}

void sub_100057660(uint64_t a1)
{
  v1 = [*(a1 + 32) selectionStateController];
  [v1 willDismissSearch];
}

void sub_1000576A4(uint64_t a1)
{
  v3 = [*(a1 + 32) folderListViewController];
  v2 = [*(a1 + 40) objectID];
  [v3 scrollToContainerWithObjectID:v2];
}

void sub_1000580AC(uint64_t a1)
{
  v2 = [*(a1 + 32) modernManagedObjectContext];
  v14 = [v2 objectWithID:*(a1 + 40)];

  v3 = [v14 folder];
  v4 = [v3 account];

  v5 = [v4 hasAnyCustomFoldersIncludingSystem:0];
  v6 = [v14 folder];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 account];
    v9 = [v8 objectID];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = [v6 objectID];
    v13 = *(*(a1 + 48) + 8);
    v8 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_1000581A8(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyManagedObjectContext];
  v14 = [v2 objectWithID:*(a1 + 40)];

  v3 = [v14 store];
  v4 = [v3 account];
  v5 = [v4 hasAnyCustomFolders];

  v6 = [v14 store];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 account];
    v9 = [v8 objectID];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    v12 = [v6 objectID];
    v13 = *(*(a1 + 48) + 8);
    v8 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_10005829C(uint64_t a1)
{
  v6 = [ICAccount defaultAccountInContext:*(a1 + 32)];
  v2 = [v6 defaultFolder];
  v3 = [v2 objectID];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100058968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005898C(uint64_t a1)
{
  v7 = [*(a1 + 32) objectWithID:*(*(*(a1 + 40) + 8) + 40)];
  if ([v7 isSmartFolder])
  {
    v2 = [v7 account];
    v3 = [v2 defaultFolder];
    v4 = [v3 objectID];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_1000593B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000593D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) objectID];
  BYTE1(v4) = 1;
  LOBYTE(v4) = *(a1 + 58);
  [WeakRetained selectNoteWithObjectID:v2 scrollState:0 startEditing:*(a1 + 56) showInkPicker:*(a1 + 57) dismissOverlayContent:1 showLatestUpdatesIfAvailable:1 animated:v4 ensurePresented:?];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

void sub_1000595E4(uint64_t a1)
{
  if ([*(a1 + 32) noteContainerViewMode] == 1 && *(a1 + 48) == 1 && +[ICFeatureFlags uniquelyiPadFluidTransitionsEnabled](_TtC11MobileNotes14ICFeatureFlags, "uniquelyiPadFluidTransitionsEnabled") && *(a1 + 49) == 1)
  {
    objc_initWeak(&location, *(a1 + 32));
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100059B88;
    v32[3] = &unk_1006464F0;
    objc_copyWeak(&v33, &location);
    v2 = objc_retainBlock(v32);
    v3 = objc_alloc_init(UIZoomTransitionOptions);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100059CC4;
    v30[3] = &unk_100646518;
    objc_copyWeak(&v31, &location);
    [v3 setInteractiveDismissShouldBegin:v30];
    v4 = [UIViewControllerTransition zoomWithOptions:v3 sourceViewProvider:v2];
    [*(a1 + 40) setPreferredTransition:v4];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  else
  {
    [*(a1 + 40) setPreferredTransition:0];
  }

  if (![*(a1 + 32) isSplitViewExpanded] || objc_msgSend(*(a1 + 32), "hasCompactWidth") && objc_msgSend(*(a1 + 32), "behavior") == 3)
  {
    if (*(a1 + 48) == 1)
    {
      v5 = [*(a1 + 32) compactNavigationController];
      v6 = [v5 viewControllers];
      v7 = [v6 containsObject:*(a1 + 40)];

      if ((v7 & 1) == 0)
      {
        v8 = [*(a1 + 32) compactNavigationController];
        [v8 pushViewController:*(a1 + 40) animated:*(a1 + 50)];
LABEL_24:
      }
    }
  }

  else if ([*(a1 + 32) noteContainerViewMode])
  {
    if ([*(a1 + 32) noteContainerViewMode] == 1 && *(a1 + 48) == 1)
    {
      v9 = [*(a1 + 32) secondaryNavigationController];
      v10 = [v9 viewControllers];
      v11 = [v10 containsObject:*(a1 + 40)];

      if ((v11 & 1) == 0)
      {
        if (*(a1 + 50) == 1)
        {
          v12 = [*(a1 + 32) isNoteEditorVisible] ^ 1;
        }

        else
        {
          v12 = 0;
        }

        v8 = [*(a1 + 32) secondaryNavigationController];
        [v8 pushViewController:*(a1 + 40) animated:v12];
        goto LABEL_24;
      }
    }
  }

  else if (*(a1 + 40))
  {
    v13 = [*(a1 + 32) secondaryNavigationController];
    v14 = [v13 viewControllers];
    v36 = *(a1 + 40);
    v15 = [NSArray arrayWithObjects:&v36 count:1];
    v16 = [v14 isEqualToArray:v15];

    if ((v16 & 1) == 0)
    {
      v35 = *(a1 + 40);
      v8 = [NSArray arrayWithObjects:&v35 count:1];
      v17 = [*(a1 + 32) secondaryNavigationController];
      [v17 setViewControllers:v8];

      goto LABEL_24;
    }
  }

  if (*(a1 + 51) == 1)
  {
    v18 = +[ICAppDelegate sharedInstance];
    v19 = [v18 shouldShowMigrationScreen];

    if ((v19 & 1) == 0)
    {
      v20 = [*(a1 + 32) noteEditorViewController];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100059D88;
      v28[3] = &unk_100646080;
      v29 = *(a1 + 52);
      v28[4] = *(a1 + 32);
      [v20 ic_performBlockAfterActiveTransition:v28];
    }
  }

  objc_opt_class();
  v21 = [*(a1 + 32) modernManagedObjectContext];
  v22 = [*(a1 + 32) selectedNoteObjectID];
  v23 = [v21 ic_existingObjectWithID:v22];
  v24 = ICDynamicCast();

  if (v24 && *(a1 + 53) == 1 && [v24 isSharedViaICloud])
  {
    v25 = [[ICActivityStreamDigest alloc] initWithObject:v24];
    if ([v25 hasUnseenHighlights])
    {
      [v24 markActivitySummaryViewed];
      v26 = [*(a1 + 32) noteEditorViewController];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100059DF0;
      v27[3] = &unk_100645E30;
      v27[4] = *(a1 + 32);
      [v26 ic_performBlockAfterActiveTransition:v27];
    }
  }
}

void sub_100059B44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

id sub_100059B88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isSearchActive])
  {
    [WeakRetained selectedSearchResult];
  }

  else
  {
    [WeakRetained selectedNoteObjectID];
  }
  v2 = ;
  if ([WeakRetained isSearchActive])
  {
    [WeakRetained searchController];
  }

  else
  {
    [WeakRetained currentNoteBrowseViewController];
  }
  v3 = ;
  v4 = [v3 collectionView];
  v5 = [v4 cellForItemIdentifier:v2];
  if (v5)
  {
    v6 = [v3 view];
    [v6 layoutIfNeeded];

    v7 = ICProtocolCast();
    v8 = [v7 contextMenuInteractionPreview];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v11 = v10;
  }

  else
  {
    v11 = v4;
  }

  return v11;
}

uint64_t sub_100059CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 willBegin];

  if (v5)
  {
    v6 = [WeakRetained noteEditorViewController];
    if ([v6 isInkPickerShowing])
    {
      v5 = 0;
    }

    else
    {
      v7 = [WeakRetained noteEditorViewController];
      if ([v7 userWantsToSeeDateLabel])
      {
        v5 = 1;
      }

      else
      {
        v8 = [WeakRetained noteEditorViewController];
        v5 = [v8 isPasswordEntryShowing];
      }
    }
  }

  return v5;
}

void sub_100059D88(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1)
  {
    v3 = [v2 legacyNoteEditorViewController];
    [v3 setEditing:1 animated:1];
  }

  else
  {
    v3 = [v2 noteEditorViewController];
    [v3 startEditing];
  }
}

void sub_100059DF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 selectedNoteObjectID];
  [v1 showRecentUpdatesForNoteWithObjectID:v2 suppressSidebar:1];
}

uint64_t sub_100059F78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[ICTagAllTagsItemIdentifier archiveIdentifier];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) managedObjectIDFromURL:v3];
    v8 = [*(a1 + 32) existingManagedObjectWithObjectID:v7];
    v9 = v8;
    if (v8 && ([v8 isDeleted] & 1) == 0)
    {
      objc_opt_class();
      v10 = ICDynamicCast();
      if ([v10 markedForDeletion])
      {
        v6 = 1;
      }

      else
      {
        objc_opt_class();
        v11 = ICDynamicCast();
        v6 = [v11 isMarkedForDeletion];
      }
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

NSString *__cdecl sub_10005A9D8(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  v4 = [v3 URIRepresentation];
  v5 = [v4 absoluteString];

  return v5;
}

void sub_10005ADA4(uint64_t a1)
{
  v2 = [*(a1 + 32) modernManagedObjectContext];
  v4 = [v2 ic_existingObjectWithID:*(a1 + 40)];

  if (v4 && [v4 isEmpty])
  {
    [ICNote deleteEmptyNote:v4];
    v3 = [v4 managedObjectContext];
    [v3 ic_save];
  }
}

void sub_10005AE40(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyManagedObjectContext];
  v9 = [v2 ic_existingObjectWithID:*(a1 + 40)];

  v3 = [v9 content];
  if ([v3 ic_containsNonWhitespaceCharacters])
  {
    goto LABEL_5;
  }

  v4 = [v9 attachments];
  v5 = [v4 count];

  v6 = v9;
  if (v9 && !v5)
  {
    v7 = +[NotesApp sharedNotesApp];
    v8 = [v7 noteContext];
    [v8 deleteNote:v9];

    v3 = [*(a1 + 32) legacyManagedObjectContext];
    [v3 ic_save];
LABEL_5:

    v6 = v9;
  }
}

void sub_10005C3F0(uint64_t a1)
{
  v5 = [*(a1 + 32) searchController];
  if (([v5 isFirstResponder] & 1) != 0 || (objc_msgSend(v5, "searchBar"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isFirstResponder"), v2, v3))
  {
    [v5 cancelSearch];
  }

  else
  {
    v4 = [*(a1 + 32) currentSearchBarViewController];
    [v4 startSearchBecomeFirstResponder:1];
  }
}

id sub_10005C7F4(uint64_t a1)
{
  result = [*(a1 + 32) canUserChangeNoteContainerViewMode];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 setNoteContainerViewMode:0];
  }

  return result;
}

id sub_10005C8B0(uint64_t a1)
{
  result = [*(a1 + 32) canUserChangeNoteContainerViewMode];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 setNoteContainerViewMode:1];
  }

  return result;
}

void sub_10005D280(uint64_t a1)
{
  v2 = [*(a1 + 32) mainSplitViewController];
  [v2 showColumn:1];

  if ([*(a1 + 32) noteContainerViewMode] == 1 || (objc_msgSend(*(a1 + 32), "isSplitViewExpanded") & 1) == 0)
  {
    v3 = [*(a1 + 32) activeEditorController];
    if ([v3 ic_isViewVisible])
    {
      v4 = *(a1 + 40);

      if (v4)
      {
        goto LABEL_7;
      }

      v3 = [*(a1 + 32) activeEditorController];
      v5 = [v3 navigationController];
      v6 = [v5 popViewControllerAnimated:1];
    }
  }

LABEL_7:
  v7 = [*(a1 + 32) currentNoteBrowseViewController];
  [v7 becomeFirstResponder];
}

id sub_10005E7C4(id a1, ICNote *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  return v3;
}

void sub_10005F39C(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 32);
    v4 = [v6 objectID];
    LOWORD(v5) = 257;
    [v3 selectNoteWithObjectID:v4 scrollState:0 startEditing:0 showInkPicker:0 dismissOverlayContent:1 showLatestUpdatesIfAvailable:1 animated:v5 ensurePresented:?];
  }
}

void sub_1000602C8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) shareButtonPressedWithSender:*(a1 + 40)];
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [ICAttachment attachmentWithIdentifier:v2 context:*(a1 + 56)];
    [*(a1 + 32) presentAttachment:v3];
  }
}

void sub_100060354(uint64_t a1)
{
  v2 = [ICAppURLUtilities attachmentForTranscriptionDonationURL:*(a1 + 32) managedObjectContext:*(a1 + 40)];
  if ([v2 isAudio])
  {
    if (v2)
    {
      v3 = [NSArray arrayWithObject:v2];
      v4 = [*(a1 + 48) noteEditorViewController];
      v5 = [v4 ic_window];
      v6 = [*(a1 + 48) noteEditorViewController];
      v7 = [v6 presentingViewController];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100060504;
      v10[3] = &unk_100646730;
      v8 = v2;
      v9 = *(a1 + 48);
      v11 = v8;
      v12 = v9;
      v13 = *(a1 + 56);
      [ICDocCamPDFGenerator generatePDFsIfNecessaryForGalleryAttachments:v3 displayWindow:v5 presentingViewController:v7 completionHandler:v10];
    }

    else
    {
      v3 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1004D8D28();
      }
    }
  }

  else
  {
    v3 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1004D8CEC();
    }
  }
}

void sub_100060504(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) media];
    v10 = [v3 mediaURL];

    objc_opt_class();
    v4 = [*(a1 + 32) attachmentModel];
    v5 = ICDynamicCast();

    v6 = [v5 audioDocument];
    v7 = [v6 transcriptAsPlainText];

    v8 = [*(a1 + 32) creationDate];
    [*(a1 + 40) showAudioDonationDialog:*(a1 + 48) mediaURL:v10 transcript:v7 date:v8];
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1004D8D64();
    }
  }
}

void sub_100060640(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v8 = +[UIApplication sharedApplication];
    [v8 openURL:*(a1 + 48) options:&__NSDictionary0__struct completionHandler:0];
  }

  else if (a2 == 1)
  {
    v8 = +[NSBundle mainBundle];
    v4 = [v8 localizedStringForKey:@"Note Unavailable" value:&stru_100661CF0 table:0];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"This could be because the note was deleted value:exists on a different device or account table:{or is not shared with you.", &stru_100661CF0, 0}];
    v7 = [*(a1 + 32) mainSplitViewController];
    [UIAlertController ic_showAlertWithTitle:v4 message:v6 viewController:v7];
  }

  else
  {
    if (a2)
    {
      return;
    }

    v3 = *(a1 + 40);
    v8 = [*(a1 + 32) noteEditorViewController];
    [v8 setNoteViewEventSourceObjectID:v3];
  }
}

void sub_100061494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000614B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained eventReporter];
  [v5 submitNoteActionMenuEventForNoteEditorWithUsageType:3 activityType:v4];
}

void sub_10006208C(uint64_t a1)
{
  v2 = [*(a1 + 32) modernManagedObjectContext];
  v3 = [v2 objectWithID:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = [v3 isEmpty];
}

void sub_100062100(uint64_t a1)
{
  v2 = [*(a1 + 32) legacyManagedObjectContext];
  v4 = [v2 objectWithID:*(a1 + 40)];

  v3 = [v4 content];
  *(*(*(a1 + 48) + 8) + 24) = [v3 length] == 0;
}

void sub_100062570(id *a1)
{
  v65 = [a1[4] containerSelectionOptions];
  v2 = [a1[4] tagSelection];
  if (v2)
  {
    v3 = [a1[4] tagSelection];
    if ([v3 isNonEmpty])
    {
      if ([v65 forceApply])
      {
        v4 = 1;
      }

      else
      {
        v5 = [a1[5] tagSelection];
        v6 = [a1[4] tagSelection];
        v4 = [v5 isEqual:v6] ^ 1;
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

  v7 = a1[4];
  v8 = [a1[5] selectedNoteBrowseContainerItemID];
  v9 = [v7 selectedContainerEqualTo:v8];

  v10 = [a1[4] selectedNoteBrowseContainerItemID];
  if (v10)
  {
    v11 = [v65 forceApply] | v9 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1[4] currentSelectedSearchResult];
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = [a1[5] currentSelectedSearchResult];
    v13 = v14 != 0;
  }

  v15 = [v65 usingRootViewController];
  if (!v4)
  {
    if (((v11 | v13) & 1) == 0)
    {
      goto LABEL_39;
    }

    v18 = v15;
    v19 = [a1[4] selectedNoteBrowseContainerItemID];
    v17 = [NSSet ic_setFromNonNilObject:v19];

    objc_opt_class();
    v20 = [a1[4] selectedNoteBrowseContainerItemID];
    v21 = ICDynamicCast();

    v64 = v21;
    v22 = [v21 type];
    v23 = v22 != ICVirtualSmartFolderItemIdentifierTypeRecentlyDeletedMathNotes;

    v24 = [v65 dismissOverlayContent];
    objc_opt_class();
    v25 = [a1[5] selectedNoteBrowseContainerItemID];
    v26 = ICDynamicCast();

    v27 = [v26 type];
    v28 = ICVirtualSmartFolderItemIdentifierTypeMathNotes;

    if (v27 == v28)
    {

      v29 = &__kCFBooleanTrue;
    }

    else
    {
      v29 = v24;
      if ((v24 != 0) | v9 & 1 || !v13)
      {
        v30 = v65;
        if (!v24)
        {
          v53 = a1[6];
          v29 = +[NSSet set];
          v54 = [v65 deferUntilDataLoaded];
          v36 = [v65 keepEditorShowing];
          [v53 showContainerWithIdentifiers:v17 excludingIdentifiers:v29 usingRootViewController:v23 & v18 deferUntilDataLoaded:v54 keepEditorShowing:v36 animated:{objc_msgSend(v65, "animated")}];
LABEL_37:

          goto LABEL_38;
        }

LABEL_25:
        v31 = [v30 completionBlocks];

        if (v31)
        {
          v32 = [v65 ensurePresented];
          v33 = [v65 ensureSelectedNote];

          v61 = v26;
          v62 = v29;
          v63 = v32;
          if (v33)
          {
            v34 = [v65 ensureSelectedNote];
            v60 = [v34 BOOLValue];
          }

          else
          {
            if ([a1[6] hasCompactWidth] && (objc_msgSend(a1[4], "objectSelectionHasChangedComparedToModel:", a1[5]) & 1) != 0)
            {
              v63 = 0;
              v40 = 1;
            }

            else
            {
              v41 = a1[6];
              v42 = [a1[4] selectedNoteBrowseContainerItemID];
              v43 = [v41 enforcedNoteContainerViewModeForContainerItemID:v42];

              v44 = [a1[6] isAutomaticallySelectingNotes];
              if (v43 == 1)
              {
                v40 = 0;
              }

              else
              {
                v40 = v44;
              }
            }

            v60 = v40;
          }

          v59 = a1[6];
          v36 = +[NSSet set];
          v58 = [v65 noteBrowseViewController];
          v57 = [v65 usingRootViewController];
          v56 = [v65 deferUntilDataLoaded];
          v45 = [v65 dismissOverlayContent];
          v46 = [v45 BOOLValue];
          v47 = [v65 animated];
          v48 = [v65 keepEditorShowing];
          v49 = [v65 completionBlocks];
          v50 = [v49 dataIndexedBlock];
          v51 = [v65 completionBlocks];
          v52 = [v51 dataRenderedBlock];
          BYTE2(v55) = v60;
          BYTE1(v55) = v63;
          LOBYTE(v55) = v47;
          [v59 showContainerWithIdentifiers:v17 excludingIdentifiers:v36 noteBrowseViewController:v58 usingRootViewController:v57 deferUntilDataLoaded:v56 dismissOverlayContent:v46 animated:v55 ensurePresented:v48 ensureSelectedNote:v50 keepEditorShowing:v52 dataIndexedBlock:? dataRenderedBlock:?];

          v26 = v61;
          v29 = v62;
        }

        else
        {
          v35 = a1[6];
          v36 = +[NSSet set];
          v37 = [v65 deferUntilDataLoaded];
          v38 = [v29 BOOLValue];
          v39 = [v65 keepEditorShowing];
          LOBYTE(v55) = [v65 animated];
          [v35 showContainerWithIdentifiers:v17 excludingIdentifiers:v36 usingRootViewController:v23 & v18 deferUntilDataLoaded:v37 dismissOverlayContent:v38 keepEditorShowing:v39 animated:v55];
        }

        goto LABEL_37;
      }

      v29 = &__kCFBooleanFalse;
    }

    v30 = v65;
    goto LABEL_25;
  }

  v16 = a1[6];
  v17 = [a1[4] tagSelection];
  [v16 showTagSelection:v17];
LABEL_38:

LABEL_39:
}

void sub_100062C04(uint64_t a1)
{
  v43 = [*(a1 + 32) selectedObjectID];
  v2 = [*(a1 + 32) objectSelectionOptions];
  if ([*(a1 + 40) isAutomaticallySelectingNotes] && !objc_msgSend(*(a1 + 40), "isNoteEditorVisible") || !objc_msgSend(*(a1 + 40), "objectAlreadyLoadedInEditorWithObjectID:", v43))
  {
    goto LABEL_7;
  }

  v3 = [*(a1 + 40) currentAttachmentPresenter];
  if (v3 || [*(a1 + 32) objectSelectionHasChangedComparedToModel:*(a1 + 48)])
  {

    goto LABEL_7;
  }

  v32 = [*(a1 + 32) currentSelectedSearchResult];

  if (v32)
  {
LABEL_7:
    v4 = [*(a1 + 48) selectedNoteObjectID];

    if (v4)
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 48) selectedNoteObjectID];
      [v5 deleteEmptyNoteIfNeeded:v6];
    }

    v7 = [*(a1 + 32) selectedNoteObjectID];

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) selectedNoteObjectID];
      v10 = [*(a1 + 32) scrollState];
      v11 = [v2 startEditing];
      v12 = [v2 showInkPicker];
      v13 = [v2 dismissOverlayContent];
      v14 = [v2 showLatestUpdatesIfAvailable];
      v15 = [v2 animated];
      BYTE1(v42) = [v2 ensurePresented];
      LOBYTE(v42) = v15;
      [v8 showNoteWithObjectID:v9 scrollState:v10 startEditing:v11 showInkPicker:v12 dismissOverlayContent:v13 showLatestUpdatesIfAvailable:v14 animated:v42 ensurePresented:?];
    }

    else
    {
      v16 = [*(a1 + 32) selectedInvitationObjectID];

      v17 = *(a1 + 40);
      if (v16)
      {
        v9 = [*(a1 + 32) selectedInvitationObjectID];
        [v17 showInvitationWithObjectID:v9 animated:{objc_msgSend(v2, "animated")}];
      }

      else
      {
        v28 = [*(a1 + 40) isSplitViewExpanded];
        v29 = *(a1 + 40);
        if (v28)
        {
          v30 = [v29 noteEditorViewController];
          [v30 setNote:0];

          v31 = [*(a1 + 40) legacyNoteEditorViewController];
          [v31 displayNote:0];

          if ([*(a1 + 40) isSplitViewExpandingOrCollapsing])
          {
LABEL_14:
            v18 = [*(a1 + 40) selectedModernNote];
            v19 = [*(a1 + 40) activityStreamNavigationController];
            [v19 setObject:v18];

            v20 = *(a1 + 40);
            v21 = [v20 window];
            v22 = [v21 windowScene];
            [v20 updateSceneTitle:v22];

            v23 = [*(a1 + 32) activityStreamSelection];
            [*(a1 + 40) setActivityStreamSelection:v23];

            v24 = [*(a1 + 32) activityStreamViewMode];
            v25 = *(a1 + 40);
            if (v24)
            {
              v26 = [*(a1 + 40) selectedModernNote];
              [v25 presentActivityStreamForObject:v26 viewMode:objc_msgSend(*(a1 + 32) animated:{"activityStreamViewMode"), 0}];
            }

            else
            {
              [*(a1 + 40) hideActivityStreamWithCompletion:0];
            }

            goto LABEL_17;
          }

          v9 = [*(a1 + 40) mainSplitViewController];
          [v9 showColumn:1];
        }

        else
        {
          v34 = [v29 activeEditorController];
          if (!v34)
          {
            goto LABEL_14;
          }

          v35 = v34;
          v36 = [*(a1 + 40) compactNavigationController];
          v37 = [v36 viewControllers];
          v38 = [v37 lastObject];
          v39 = [*(a1 + 40) activeEditorController];
          v40 = [v38 isEqual:v39];

          if (!v40)
          {
            goto LABEL_14;
          }

          v9 = [*(a1 + 40) compactNavigationController];
          v41 = [v9 popViewControllerAnimated:1];
        }
      }
    }

    goto LABEL_14;
  }

  v33 = [*(a1 + 32) currentSelectedSearchResult];

  if (v33)
  {
    [*(a1 + 40) dismissOverlayContent];
  }

LABEL_17:
  v27 = *(a1 + 56);
  if (v27)
  {
    (*(v27 + 16))();
  }
}

void sub_100063174(id *a1)
{
  if ([a1[4] isSearchActive] && (objc_msgSend(a1[5], "currentSelectedSearchResult"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
  {
    v19 = [a1[6] selectedObjectID];
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v21 = [a1[5] selectedObjectID];
      v20 = v21 != 0;
    }

    v22 = [a1[6] selectedObjectID];
    if (v22)
    {
      v23 = [a1[5] selectedObjectID];
      v24 = v23 == 0;
    }

    else
    {
      v24 = 0;
    }

    v3 = v20 || v24;
  }

  else
  {
    v3 = 0;
  }

  v4 = [a1[5] currentSelectedSearchResult];

  if (v4)
  {
    v5 = [a1[4] noteEditorViewController];
    v6 = [a1[5] currentSelectedSearchResult];
    v7 = [v6 highlightPatternRegexFinder];
    [v5 highlightSearchMatchesForRegexFinder:v7];
  }

  else if (!v3)
  {
    v8 = +[UIApplication sharedApplication];
    v9 = [v8 applicationState];

    if (!v9)
    {
      v10 = [a1[4] currentNoteBrowseViewController];
      v11 = [v10 navigationItem];
      v12 = [v11 searchController];
      v13 = [v12 isActive];

      if (v13)
      {
        v14 = [a1[4] currentNoteBrowseViewController];
        v15 = [v14 navigationItem];
        v16 = [v15 searchController];
        [v16 setActive:0];
      }

      v17 = [a1[4] noteEditorViewController];
      [v17 highlightSearchMatchesForRegexFinder:0];

      [a1[4] setIsSearchActiveWithQuery:0];
    }
  }

  [a1[4] setIsSelectedNoteTogglingLock:0];
  v18 = a1[4];
  v25 = [v18 mainSplitViewController];
  [v18 updateNoteEditorBezelsIfNeededWithDisplayMode:objc_msgSend(v25 force:{"displayMode"), 0}];
}

id sub_1000633C0(uint64_t a1)
{
  [*(a1 + 32) didUpdateModelForSelectionStateController:*(a1 + 40)];
  [*(a1 + 32) adoptContainerFromSelectionStateController:*(a1 + 40) oldModel:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 adoptObjectFromSelectionStateController:v3 oldModel:v4 completion:v5];
}

id sub_1000634FC(uint64_t a1)
{
  [*(a1 + 32) didUpdateModelForSelectionStateController:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 setupViewsFromWindowStateArchive:v4 systemPaperShowModernAccountAlert:v3 completion:v5];
}

void sub_100063764(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) propertiesToUpdate];
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

        [*(a1 + 32) willChangeValueForKey:*(*(&v7 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100063918(id *a1)
{
  [a1[4] didUpdateModelForSelectionStateController:a1[5]];
  v2 = [a1[4] noteEditorViewController];
  v3 = [v2 note];

  v4 = [v3 objectID];
  v5 = [a1[5] selectedNoteObjectID];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [a1[4] noteEditorViewController];
    [v7 loadViewIfNeeded];

    v8 = [a1[6] scrollStateForNote:v3];
    v9 = [a1[4] noteEditorViewController];
    [v9 applyScrollStateFromArchive:v8];
  }

  else
  {
    v10 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Restore Quicknote UI editor state skipping because Note ID doesn't match", v11, 2u);
    }
  }
}

void sub_100063AC8(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) propertiesToUpdate];
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

        [*(a1 + 32) didChangeValueForKey:*(*(&v7 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100063C50(uint64_t a1)
{
  if ([*(a1 + 32) behavior] == 3)
  {
    v5 = [*(a1 + 32) noteEditorViewController];
    [v5 updateBarButtons];
  }

  else
  {
    v2 = [*(a1 + 40) currentSelectedSearchResult];

    if (v2)
    {
      [*(a1 + 32) dismissOverlayContent];
    }

    v3 = [*(a1 + 32) currentAttachmentPresenter];

    if (v3)
    {
      v4 = *(a1 + 32);

      [v4 dismissAnyPresentedViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_100064B08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = ICDynamicCast();
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    v9 = -1;
  }

  else
  {
    objc_opt_class();
    v10 = ICDynamicCast();
    v11 = [v10 isEqualToString:*(a1 + 32)];

    if (v11)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v5 compare:v6];
    }
  }

  return v9;
}

id sub_100064C88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100064D6C;
  v8[3] = &unk_100646870;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v5 = v3;
  v6 = [UIAction ic_actionWithTitle:v4 subtitle:0 imageName:0 handler:v8];

  return v6;
}

void sub_100064D6C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 noteContainer];
  [v1 promptToAddFolderToAccount:v2 allowsSmartFolder:1 showFilters:0 noteContainer:v3 completionHandler:0];
}

void sub_100064F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100064FA8(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [v3 smartFolderQuery];
  [v3 createFolderInAccount:v4 noteContainer:v5 smartFolderQuery:v7 folderTitle:v6 completionHandler:a1[7]];
}

void sub_100065034(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setFilterSelection:v5];
  if (v5 && ([v5 isEmpty] & 1) == 0)
  {
    v7 = [ICQuery queryForNotesMatchingFilterSelection:v5];
  }

  else
  {
    v7 = 0;
  }

  [WeakRetained createFolderInAccount:*(a1 + 32) noteContainer:*(a1 + 40) smartFolderQuery:v7 folderTitle:v8 completionHandler:*(a1 + 48)];
}

void sub_100065984(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Name" value:&stru_100661CF0 table:0];
  [v7 setPlaceholder:v4];

  v5 = [*(a1 + 32) viewController];
  v6 = [v5 view];
  [v7 setAutocapitalizationType:ICLocalizedCapitalizationStyleForView()];

  [v7 setClearButtonMode:1];
  [v7 addTarget:*(a1 + 32) action:"editTitleTextFieldChanged:" forControlEvents:0x20000];
}

uint64_t sub_100065A74(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100065A90(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v6 = [v2 firstObject];

  v3 = [v6 text];
  v4 = [v3 copy];

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v4);
  }
}

void sub_100065B2C(uint64_t a1)
{
  v1 = [*(a1 + 32) textFields];
  v2 = [v1 firstObject];

  [v2 becomeFirstResponder];
}

uint64_t sub_10006709C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000670B4(uint64_t a1)
{
  v6 = [ICAccount allActiveAccountsInContext:*(a1 + 32)];
  v2 = NSStringFromSelector("identifier");
  v3 = [v6 valueForKey:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100067724(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = os_log_create("com.apple.notes", "Cloud");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      sub_1004D8EE0();
    }
  }

  else
  {
    if (v4)
    {
      sub_1004D8E4C();
    }

    [*(a1 + 32) setShouldResumeSyncOnForeground:1];
    [*(a1 + 32) cancelEverythingWithCompletionHandler:0];
    v3 = +[ICBackgroundTaskScheduler sharedScheduler];
    [v3 scheduleTask:objc_opt_class() completion:&stru_1006469A0];
  }

  v5 = +[UIApplication sharedApplication];
  [v5 endBackgroundTask:qword_1006CB240];

  qword_1006CB240 = UIBackgroundTaskInvalid;
}

void sub_100067830(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D8F74(a2, v4, v5);
  }
}

void sub_1000678A0(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D9014();
  }

  v3 = +[ICNoteContext sharedContext];
  [v3 save];

  [*(a1 + 32) setSyncOnlyIfReachable:*(a1 + 40)];
  v4 = +[UIApplication sharedApplication];
  [v4 endBackgroundTask:qword_1006CB240];

  qword_1006CB240 = UIBackgroundTaskInvalid;
}

id sub_100067A5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100067ACC;
  v3[3] = &unk_1006469F0;
  v3[4] = v1;
  return [v1 updateCloudContextStateWithCompletion:v3];
}

id sub_100067B40(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0 && [*(a1 + 32) shouldResumeSyncOnForeground])
  {
    [*(a1 + 32) syncWithReason:@"ResumeSyncAfterBackgroundTaskExpiry" completionHandler:0];
  }

  v2 = *(a1 + 32);

  return [v2 setShouldResumeSyncOnForeground:0];
}

void sub_100067C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100067C5C(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 applicationState];

  if (v3 <= 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0x101u >> (8 * v3);
  }
}

void sub_1000682D4(uint64_t a1)
{
  if ([*(a1 + 32) contextPathEnum])
  {
    v2 = [*(a1 + 32) eventReporter];
    [v2 popContextPathData];
  }

  [*(a1 + 32) activityDidFinish:1];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [*(a1 + 32) activityType];
    (*(v3 + 16))(v3, 1, v4);
  }
}

void sub_100068380(uint64_t a1)
{
  if ([*(a1 + 32) contextPathEnum])
  {
    v2 = [*(a1 + 32) eventReporter];
    [v2 popContextPathData];
  }
}

void sub_1000683EC(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 1, v3);
  }
}

void sub_100068BA8(uint64_t a1, void *a2, void *a3)
{
  v36 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v36 ic_isModernFolderType])
  {
    v7 = [WeakRetained modernViewContext];
    v8 = [v7 ic_existingObjectWithID:v36];

    LODWORD(v7) = [v8 isSmartFolder];
    v9 = +[NSBundle mainBundle];
    v10 = v9;
    if (v7)
    {
      v11 = [v9 localizedStringForKey:@"Unsupported Smart Folder" value:&stru_100661CF0 table:0];

      if (+[UIDevice ic_isiPad])
      {
        v12 = +[NSBundle mainBundle];
        v13 = v12;
        v14 = @"This smart folder uses unsupported features. To view or edit it, upgrade to the latest version of iPadOS.";
LABEL_15:
        v17 = [v12 localizedStringForKey:v14 value:&stru_100661CF0 table:0];

        v18 = [WeakRetained viewControllerManager];
        v19 = [v18 hasCompactWidth];

        v20 = [UIAlertController alertControllerWithTitle:v11 message:v17 preferredStyle:v19];
        v21 = +[NSBundle mainBundle];
        v22 = [v21 localizedStringForKey:@"OK" value:&stru_100661CF0 table:0];
        v23 = [UIAlertAction actionWithTitle:v22 style:0 handler:0];

        [v20 addAction:v23];
        if (+[UIDevice ic_isVision])
        {
          v24 = -2;
        }

        else
        {
          v24 = 7;
        }

        [v20 setModalPresentationStyle:v24];
        v25 = [v20 popoverPresentationController];
        [v25 setSourceView:v5];

        [v5 bounds];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v34 = [v20 popoverPresentationController];
        [v34 setSourceRect:{v27, v29, v31, v33}];

        v35 = [v20 popoverPresentationController];
        [v35 setPermittedArrowDirections:12];

        [WeakRetained presentViewController:v20 animated:1 completion:0];
        goto LABEL_19;
      }

      v15 = +[UIDevice ic_isVision];
      v13 = +[NSBundle mainBundle];
      if (v15)
      {
        v14 = @"This smart folder uses unsupported features. To view or edit it, upgrade to the latest version of visionOS.";
      }

      else
      {
        v14 = @"This smart folder uses unsupported features. To view or edit it, upgrade to the latest version of iOS.";
      }
    }

    else
    {
      v11 = [v9 localizedStringForKey:@"Unsupported Folder" value:&stru_100661CF0 table:0];

      if (+[UIDevice ic_isiPad])
      {
        v12 = +[NSBundle mainBundle];
        v13 = v12;
        v14 = @"This folder uses unsupported features. To view or edit it, upgrade to the latest version of iPadOS.";
        goto LABEL_15;
      }

      v16 = +[UIDevice ic_isVision];
      v13 = +[NSBundle mainBundle];
      if (v16)
      {
        v14 = @"This folder uses unsupported features. To view or edit it, upgrade to the latest version of visionOS.";
      }

      else
      {
        v14 = @"This folder uses unsupported features. To view or edit it, upgrade to the latest version of iOS.";
      }
    }

    v12 = v13;
    goto LABEL_15;
  }

LABEL_19:
}

void sub_10006A08C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [ICAccount accountWithIdentifier:*(a1 + 32) context:*(a1 + 40)];
  v4 = [v3 allChildObjects];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if ([v9 isDeletable])
        {
          [*(a1 + 48) deleteCloudObjectIfFullyPushed:v9];
        }

        else
        {
          [v9 clearServerRecords];
          [v9 setInCloud:0];
          [v9 updateChangeCountWithReason:@"User deleted record zone"];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v10 = [v3 defaultFolder];

  if (!v10)
  {
    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004D907C((a1 + 32), v11);
    }
  }

  if ([*(a1 + 40) hasChanges])
  {
    v12 = *(a1 + 40);
    v16 = 0;
    v13 = [v12 save:&v16];
    v14 = v16;
    if ((v13 & 1) == 0)
    {
      v15 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1004D90F8(v2, v14, v15);
      }
    }
  }
}

void sub_10006A2AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) managedObjectContext];
  v3 = [ICAccount accountWithIdentifier:v1 context:v2];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 deviceMigrationStates];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v20 + 1) + 8 * v9) deleteFromLocalDatabase];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v3 legacyTombstones];
  v11 = [v10 copy];

  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15) deleteFromLocalDatabase];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }

  [ICNoteContext setLegacyNotesDisabled:0];
  [v3 setNeedsToBeFetchedFromCloud:1];
}

void sub_10006A774(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [ICAccount accountWithIdentifier:v2 context:v3];

  v5 = *(a1 + 48);
  v6 = +[ICCloudContext notesZoneID];
  LODWORD(v5) = [v5 isEqual:v6];

  v26 = v4;
  if (v5)
  {
    v7 = [v4 allChildObjects];
  }

  else
  {
    v8 = *(a1 + 48);
    v9 = +[ICCloudContext metadataZoneID];
    LODWORD(v8) = [v8 isEqual:v9];

    if (v8)
    {
      v7 = +[NSMutableArray array];
      v10 = [v4 deviceMigrationStates];
      v11 = [v10 allObjects];
      [v7 addObjectsFromArray:v11];

      v12 = [v4 legacyTombstones];
      v13 = [v12 allObjects];
      [v7 addObjectsFromArray:v13];
    }

    else
    {
      v7 = 0;
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        if ([v19 isSharedViaICloud] && (objc_msgSend(v19, "isOwnedByCurrentUser") & 1) == 0)
        {
          v24 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v19 shortLoggingDescription];
            *buf = 138412290;
            v34 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Deleting shared-to-me record (%@) after zone reset", buf, 0xCu);
          }

          [v19 markForDeletion];
          [v19 deleteFromLocalDatabase];
        }

        else
        {
          [v19 setInCloud:0];
          [v19 setServerShare:0];
          [v19 clearServerRecords];
          v20 = [v19 markedForDeletion];
          v21 = os_log_create("com.apple.notes", "Cloud");
          v22 = v21;
          if (v20)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v19 shortLoggingDescription];
              *buf = 138412290;
              v34 = v23;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Not re-uploading deleted record (%@) after zone reset", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              sub_1004D92E4(v31, v19, &v32, v22);
            }

            if ([v19 wantsUserSpecificRecord])
            {
              [v19 updateUserSpecificChangeCountWithReason:@"Did not find record zone"];
            }

            [v19 updateChangeCountWithReason:@"Did not find record zone"];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }
}

void sub_10006AD04(uint64_t a1)
{
  v2 = [*(a1 + 32) ownerName];
  v3 = [NSPredicate predicateWithFormat:@"zoneOwnerName == %@", v2];

  v25 = v3;
  v4 = [ICCloudSyncingObject ic_objectsMatchingPredicate:v3 context:*(a1 + 40)];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v27 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v27)
  {
    v5 = "com.apple.notes";
    v6 = "Cloud";
    v7 = *v29;
    v26 = *v29;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [v9 recordID];
        v11 = [v10 zoneID];
        v12 = [v11 isEqual:*(a1 + 32)];

        v13 = os_log_create(v5, v6);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v14)
          {
            v15 = [v9 shortLoggingDescription];
            v16 = *(a1 + 48);
            *buf = 138412546;
            v33 = v15;
            v34 = 2112;
            v35 = v16;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Deleting shared %@ for accountID %@", buf, 0x16u);
          }

          [v9 deleteFromLocalDatabase];
        }

        else
        {
          if (v14)
          {
            v17 = [v9 shortLoggingDescription];
            v18 = [v9 recordID];
            v19 = [v18 zoneID];
            [v19 ic_loggingDescription];
            v20 = v6;
            v21 = v5;
            v23 = v22 = v4;
            v24 = *(a1 + 48);
            *buf = 138412802;
            v33 = v17;
            v34 = 2112;
            v35 = v23;
            v36 = 2112;
            v37 = v24;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not deleting shared %@ in wrong zone %@ for account ID %@", buf, 0x20u);

            v4 = v22;
            v5 = v21;
            v6 = v20;
            v7 = v26;
          }
        }
      }

      v27 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v27);
  }

  [*(a1 + 40) ic_save];
}

void sub_10006B0FC(void **a1)
{
  v2 = a1 + 4;
  v3 = [ICAccount accountWithIdentifier:a1[4] context:a1[5]];
  v4 = [a1[6] recordID];
  if (v3)
  {
    v5 = [v3 userRecordName];

    if (v5)
    {
      v6 = [v3 userRecordName];
      v7 = [v4 recordName];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
LABEL_14:
        [v3 objectWasFetchedFromCloudWithRecord:a1[6] accountID:a1[4]];
        goto LABEL_15;
      }

      v9 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v4 recordName];
        v11 = [v3 userRecordName];
        v12 = *v2;
        v16 = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "The cloud context fetched a user record ID (%@) different from our CloudKit account's user record ID (%@) for account ID %@", &v16, 0x20u);
      }
    }

    else
    {
      v15 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1004D935C(v4);
      }

      v9 = [v4 recordName];
      [v3 setUserRecordName:v9];
    }

    goto LABEL_14;
  }

  v13 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *v2;
    v16 = 138412290;
    v17 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cloud context fetched the user record, but we don't have a CloudKit account (account ID %@). Why not?", &v16, 0xCu);
  }

LABEL_15:
  [a1[5] ic_saveWithLogDescription:@"Fetching user record"];
}

void sub_10006B5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006B5C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006B5DC(uint64_t a1)
{
  v2 = [ICAccount allCloudKitAccountsInContext:*(a1 + 32)];
  if ([v2 count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(*(a1 + 40) + 8) + 40);
          v9 = [*(*(&v10 + 1) + 8 * v7) identifier];
          [v8 ic_addNonNilObject:v9];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

void sub_10006BAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006BB10(uint64_t a1)
{
  result = +[ICAccount isCloudKitAccountAvailable];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10006BB48(id a1, CKRecord *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(CKRecord *)v4 objectForKeyedSubscript:ICCloudSyncingObjectRecordKeyCryptoSalt];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(CKRecord *)v4 objectForKeyedSubscript:ICCloudSyncingObjectRecordKeyCryptoIterationCount];
    v7 = v8 != 0;
  }

  v9 = os_log_create("com.apple.notes", "Cloud");
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1004D94E0();
    }

LABEL_11:
    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device has been upgraded and the user created a password-protected note on a different device. Deleting server records and change tokens, and performing a full sync.", &v13, 2u);
    }

    v12 = +[ICCloudContext sharedContext];
    [v12 cancelEverythingWithCompletionHandler:&stru_100646AE8];
    goto LABEL_14;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Fetched user record when checking for re-sync: %@", &v13, 0xCu);
  }

  if (v7)
  {
    goto LABEL_11;
  }

  v12 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D9554();
  }

LABEL_14:
}

void sub_10006BD38(id a1)
{
  v1 = +[ICNoteContext sharedContext];
  v2 = [v1 snapshotManagedObjectContext];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006BDE4;
  v4[3] = &unk_100645E30;
  v5 = v2;
  v3 = v2;
  [v3 performBlock:v4];
}

void sub_10006BDE4(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "clearing server records", v6, 2u);
  }

  v3 = +[ICCloudContext sharedContext];
  [v3 enumerateAllCloudObjectsInContext:*(a1 + 32) batchSize:10 saveAfterBatch:1 usingBlock:&stru_100646B28];

  v4 = +[ICCloudContext sharedContext];
  [v4 deleteAllServerChangeTokens];

  v5 = +[ICCloudContext sharedContext];
  [v5 syncWithReason:@"FixingPasswordProtectedNotes" completionHandler:0];
}

void sub_10006BED0(id a1, ICCloudObject *a2, BOOL *a3)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();

  [v4 clearServerRecords];
}

void sub_10006C20C(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = os_log_create("com.apple.notes", "Cloud");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412802;
      v10 = v8;
      v11 = 1024;
      v12 = a2;
      v13 = 2112;
      v14 = v5;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error updating account bag for %@ authenticated=%d: %@", &v9, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D95F0(a1, v7);
  }
}

void sub_10006C4D4(uint64_t a1)
{
  v10 = [NSPredicate predicateWithFormat:@"%K == %@", @"typeUTI", ICAttachmentUTTypeGallery];
  [ICAttachment attachmentsMatchingPredicate:"attachmentsMatchingPredicate:context:" context:?];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v18 = 0u;
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        objc_opt_class();
        v8 = [v6 attachmentModel];
        v9 = ICCheckedDynamicCast();

        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10006C6EC;
        v12[3] = &unk_100646B78;
        v13 = *(a1 + 32);
        v14 = v6;
        [v9 enumerateSubAttachmentsWithBlock:v12];

        objc_autoreleasePoolPop(v7);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  [*(a1 + 32) ic_save];
}

void sub_10006C6EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = [ICAttachment attachmentWithIdentifier:v6 includeDeleted:1 context:*(a1 + 32)];
    if (!v7)
    {
      goto LABEL_12;
    }

    v5 = v7;
  }

  v8 = [v5 parentAttachment];
  v10 = *(a1 + 40);
  v9 = (a1 + 40);

  v11 = os_log_create("com.apple.notes", "Cloud");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v8 == v10)
  {
    if (v12)
    {
      sub_1004D9780(v5);
    }
  }

  else
  {
    if (v12)
    {
      sub_1004D96D4(v5, v9);
    }

    [v5 setNeedsToBeFetchedFromCloud:1];
  }

LABEL_12:
}

id sub_10006C998(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D9840();
  }

  return [*(a1 + 32) updateCloudContextState];
}

void sub_10006E0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak((v39 + 32));
  objc_destroyWeak(&a29);
  objc_destroyWeak(&a34);
  objc_destroyWeak(&a39);
  objc_destroyWeak((v40 - 232));
  _Unwind_Resume(a1);
}

void sub_10006E14C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained startupNavigationController];
  [v3 upgradeAction];

  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 startupNavigationController];
  [v4 dismiss];
}

void sub_10006E1D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained startupNavigationController];
  [v1 continueAction];
}

void sub_10006E22C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained startupNavigationController];
  [v1 dismiss];
}

void sub_10006E284(id *a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Upgrade Notes" value:&stru_100661CF0 table:0];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"To enable these features value:your notes will be upgraded. To sync notes with other devices table:{they must be running OS X v10.11 or iOS 9 or later.", &stru_100661CF0, 0}];
  v6 = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Not Now" value:&stru_100661CF0 table:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10006E4F0;
  v18[3] = &unk_100646938;
  v19 = a1[5];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:v18];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Upgrade Notes" value:&stru_100661CF0 table:0];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10006E500;
  v16 = &unk_100646938;
  v17 = a1[6];
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:&v13];

  [v6 addAction:{v12, v13, v14, v15, v16}];
  [v6 addAction:v9];
  [a1[4] presentViewController:v6 animated:1 completion:0];
}

void sub_10006E510(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained startupNavigationController];
  [v3 upgradeAction];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 startupNavigationController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E5FC;
  v6[3] = &unk_100645C78;
  objc_copyWeak(&v7, (a1 + 32));
  [v5 dismissWithCompletionBlock:v6];

  objc_destroyWeak(&v7);
}

void sub_10006E5FC(uint64_t a1)
{
  if (!+[ICStartupController shouldBypassICloudAlert])
  {
    v2 = +[NSBundle mainBundle];
    v3 = [v2 localizedStringForKey:@"Turn On iCloud" value:&stru_100661CF0 table:0];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"To access your notes from all your devices value:turn on iCloud for Notes." table:{&stru_100661CF0, 0}];
    v16 = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Not Now" value:&stru_100661CF0 table:0];
    v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Go to Settings" value:&stru_100661CF0 table:0];
    v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:&stru_100646C20];

    [v16 addAction:v11];
    [v16 addAction:v8];
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained startupNavigationController];
    v14 = [v13 presentingWindow];
    v15 = [v14 rootViewController];
    [v15 presentViewController:v16 animated:1 completion:0];
  }
}

void sub_10006E834(id a1, UIAlertAction *a2)
{
  v4 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT"];
  v2 = +[ICAppDelegate sharedInstance];
  [v2 openWelcomeScreenWhenLoggingInToUnmigratedICloudAccount];

  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

int64_t sub_10006F044(id a1, ICSEFolderListItem *a2, ICSEFolderListItem *a3)
{
  v4 = a3;
  v5 = [(ICSEFolderListItem *)a2 folderListItemAccountType];
  v6 = [(ICSEFolderListItem *)v4 folderListItemAccountType];

  return v5 > v6;
}

void sub_10007002C(uint64_t a1)
{
  v2 = [NSPredicate predicateWithFormat:@"needsTranscription == YES"];
  v27[0] = v2;
  v3 = +[ICCloudSyncingObject predicateForUnmarkedForDeletionObjects];
  v27[1] = v3;
  v4 = [NSArray arrayWithObjects:v27 count:2];
  v5 = [NSCompoundPredicate andPredicateWithSubpredicates:v4];

  v6 = [*(a1 + 32) workerContext];
  v21 = v5;
  v7 = [ICAttachment attachmentsMatchingPredicate:v5 context:v6];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 audioModel];
        if (v14 && (v15 = v14, [v13 audioModel], v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "audioDocument"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isCallRecording"), v17, v16, v15, v18))
        {
          v19 = +[ICBackgroundTranscriptionHelper sharedInstance];
          v20 = [v13 objectID];
          [v19 addCallRecordingTranscriptionTaskToQueueOnLaunch:v20];
        }

        else
        {
          v19 = +[ICBackgroundTranscriptionHelper sharedInstance];
          v20 = [v13 objectID];
          [v19 addAudioTranscriptionTaskToQueueWithIdentifier:v20];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }
}

void sub_10007031C(uint64_t a1)
{
  v1 = [*(a1 + 32) workerContext];
  [ICHashtag regenerateStandardizedContentForAllHashtagsInContext:v1 hasChanges:0];
}

uint64_t sub_100070704(uint64_t a1)
{
  if ([*(a1 + 32) ic_isViewVisible])
  {
    [*(a1 + 32) updateToolbarAnimated:0];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100070B74(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 ic_deselectAllItemsAnimated:1];

  v3 = [*(a1 + 32) collectionView];
  [v3 deselectAllTagsAnimated:1];

  v4 = [*(a1 + 32) noteSearchViewController];
  v5 = [v4 collectionView];
  [v5 ic_deselectAllItemsAnimated:1];

  v6 = [*(a1 + 32) dataSource];
  v7 = [v6 collectionViewDiffableDataSource];
  v8 = +[ICTagContainerItemIdentifier sharedItemIdentifier];
  v11 = [v7 indexPathForItemIdentifier:v8];

  if (v11)
  {
    v9 = [*(a1 + 32) collectionView];
    v10 = [v9 collectionViewLayout];
    [v10 invalidateLayout];
  }
}

uint64_t sub_100070C9C(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if ((result & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 16);

    return v4();
  }

  return result;
}

void sub_1000713F8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 3;
  }

  else
  {
    v1 = 0;
  }

  v2 = [*(a1 + 32) folderDataSource];
  [v2 setAutoExpandMode:v1];
}

void sub_100072628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100072674(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (![v9 _splitViewControllerContext] || (objc_msgSend(WeakRetained, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "_splitViewControllerContext"), v5, !v6))
    {
      [WeakRetained updateAppearanceStyle];
      v7 = [WeakRetained folderDataSource];
      [v7 reloadDataAnimated:0];
    }

    [WeakRetained updateContainerSelection];
    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 updateNavigationBar];
  }
}

void sub_100072740(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateNavigationBar];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 updateToolbarAnimated:1];
}

void *sub_1000727A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained legacyViewContext];
    v7 = [v6 ic_existingObjectWithID:v3];

    v8 = [v7 accountIdentifier];
    v9 = [v5 modernViewContext];
    v10 = [ICAccount accountWithIdentifier:v8 context:v9];

    objc_opt_class();
    v11 = +[ICMigrationController legacyAccountForPrimaryICloudAccount];
    v12 = ICCheckedDynamicCast();

    v13 = [v7 accountIdentifier];
    v14 = [v12 accountIdentifier];
    v15 = [v13 isEqualToString:v14];

    if (v15 && ([v10 didChooseToMigrate] & 1) == 0)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100072990;
      v18[3] = &unk_100646C90;
      objc_copyWeak(&v19, (a1 + 32));
      v16 = objc_retainBlock(v18);
      objc_destroyWeak(&v19);
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

  return v16;
}

void sub_100072990(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained viewControllerManager];
  [v1 showStartupWithForceWelcomeScreen:1 completion:0];
}

void sub_1000729F0(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained viewControllerManager];
    if (([v5 hasCompactWidth] & 1) == 0)
    {

      goto LABEL_6;
    }

    v6 = [v4 transitionCoordinator];
    if (v6)
    {

LABEL_7:
      goto LABEL_8;
    }

    v7 = [v4 navigationController];
    v8 = [v7 topViewController];

    if (v4 == v8)
    {
LABEL_6:
      v5 = [v4 viewControllerManager];
      [v5 selectTagSelection:v9];
      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_100072AD4(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  [v2 setBool:1 forKey:@"DidDismissAllowNotificationsView"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained collectionView];
  [v3 setShouldShowAllowNotificationsView:0];
}

void sub_100072B5C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100072BEC;
  block[3] = &unk_100645C78;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100072BEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateContainerSelection];
}

uint64_t sub_100072E3C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100072E54(uint64_t a1)
{
  v5 = [*(a1 + 32) modernViewContext];
  v2 = [v5 objectWithID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100072EC0(uint64_t a1)
{
  v5 = [*(a1 + 32) legacyViewContext];
  v2 = [v5 objectWithID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10007407C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000740A0(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = +[ICAppDelegate sharedInstance];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000741D0;
    v6[3] = &unk_100646D08;
    v4 = &v7;
    objc_copyWeak(&v7, (a1 + 32));
    [v3 checkIfHasSharedNotesOrFolders:v6];
  }

  else
  {
    v4 = &v5;
    objc_copyWeak(&v5, (a1 + 32));
    performBlockOnMainThread();
  }

  objc_destroyWeak(v4);
}

void sub_1000741D0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000742D4;
    v3[4] = &unk_100645C78;
    v2 = &v4;
    objc_copyWeak(&v4, (a1 + 32));
    performBlockOnMainThread();
  }

  else
  {
    v2 = v3;
    objc_copyWeak(v3, (a1 + 32));
    performBlockOnMainThread();
  }

  objc_destroyWeak(v2);
}

void sub_1000742D4(uint64_t a1)
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DidDismissAllowNotificationsView"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained collectionView];
  [v4 setShouldShowAllowNotificationsView:v3 ^ 1];
}

void sub_100074364(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained collectionView];
  [v1 setShouldShowAllowNotificationsView:0];
}

void sub_1000743C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained collectionView];
  [v1 setShouldShowAllowNotificationsView:0];
}

BOOL sub_100074604(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  v5 = ICDynamicCast();

  LOBYTE(v4) = [v5 sectionType] == 8;
  return v4;
}

void sub_100075CB0(uint64_t a1)
{
  v2 = +[ICCloudContext sharedContext];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100075D60;
  v4[3] = &unk_100646D78;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v2 deleteSharesForObjects:v3 completionHandler:v4];
}

void sub_100075D60(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100075E10;
  v4[3] = &unk_100645E80;
  v5 = a2;
  v6 = *(a1 + 32);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

uint64_t sub_100075E10(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = os_log_create("com.apple.notes", "Move");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1004D9930(v2, v3);
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      v5 = *(result + 16);

      return v5();
    }
  }

  return result;
}

uint64_t sub_100075ECC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1000760A4(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100076138;
  v2[3] = &unk_100646D78;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [ICDeleteDecisionController deleteSharesInFolder:v1 completion:v2];
}

void sub_100076138(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000761E8;
  v4[3] = &unk_100645E80;
  v5 = a2;
  v6 = *(a1 + 32);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

uint64_t sub_1000761E8(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = os_log_create("com.apple.notes", "Move");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1004D99AC(v2, v3);
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0);
    }
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      v5 = *(result + 16);

      return v5();
    }
  }

  return result;
}

uint64_t sub_1000762A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_1000764BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000764E4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();
  objc_opt_class();
  v5 = ICDynamicCast();

  if ([v4 ic_isModernContainerType])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained moveViewController];
    v8 = [v7 modernViewContext];
  }

  else
  {
    if (![v4 ic_isLegacyContainerType])
    {
      if (!v5)
      {
        if (v3)
        {
          [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICMoveDecisionController performDecisionWithCompletion:]_block_invoke_2" simulateCrash:1 showAlert:0 format:@"Destination object ID doesn't belong to a known managed object context"];
        }

        goto LABEL_6;
      }

      v10 = v5;
LABEL_10:
      v15 = objc_loadWeakRetained((a1 + 48));
      v16 = [v15 presentingViewController];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000767A0;
      v22[3] = &unk_100645BC8;
      v17 = *(a1 + 40);
      v22[4] = *(a1 + 32);
      v23 = v10;
      v24 = v17;
      v18 = v10;
      [v16 dismissViewControllerAnimated:1 completion:v22];

      goto LABEL_11;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = [WeakRetained moveViewController];
    v8 = [v7 legacyViewContext];
  }

  v9 = v8;

  v10 = [v9 objectWithID:v4];

  if (v10)
  {
    goto LABEL_10;
  }

LABEL_6:
  v11 = objc_loadWeakRetained((a1 + 48));
  v12 = [v11 presentingViewController];

  if (v12)
  {
    v13 = objc_loadWeakRetained((a1 + 48));
    v14 = [v13 presentingViewController];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000767B0;
    v20[3] = &unk_100645CC8;
    v21 = *(a1 + 40);
    [v14 dismissViewControllerAnimated:1 completion:v20];
  }

  else
  {
    v19 = *(a1 + 40);
    if (v19)
    {
      (*(v19 + 16))(v19, &__NSArray0__struct);
    }
  }

LABEL_11:
}

uint64_t sub_1000767B0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, &__NSArray0__struct);
  }

  return result;
}

uint64_t sub_1000770F0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, &__NSArray0__struct);
  }

  return result;
}

uint64_t sub_100077110(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, &__NSArray0__struct);
  }

  return result;
}

uint64_t sub_100077130(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, &__NSArray0__struct);
  }

  return result;
}

uint64_t sub_100077150(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, &__NSArray0__struct);
  }

  return result;
}

uint64_t sub_100077170(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, &__NSArray0__struct);
  }

  return result;
}

void sub_100077190(uint64_t a1)
{
  v2 = [ICCloudSyncingObjectMoveAction alloc];
  v3 = [*(a1 + 32) sourceFolder];
  v4 = [(ICCloudSyncingObjectMoveAction *)v2 initWithFolder:v3 toParentObject:*(a1 + 40) isCopy:0];

  objc_opt_class();
  v5 = ICClassAndProtocolCast();
  if (v5)
  {
    v6 = [*(a1 + 32) sourceFolder];
    v7 = [v5 noteContainerAccount];
    v8 = [ICFolder undoablyMoveFolder:v6 toNoteContainer:v5 toAccount:v7 moveAction:v4 noteMovedBlock:0];

    [*(a1 + 32) announceMoveToDestination:*(a1 + 40) delay:2.5];
    v9 = *(a1 + 48);
    if (v9)
    {
      v12 = v8;
      v10 = [NSArray arrayWithObjects:&v12 count:1];
      (*(v9 + 16))(v9, v10);
    }
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICMoveDecisionController moveSourceObjectsToDestination:completionHandler:]_block_invoke_6" simulateCrash:1 showAlert:0 format:@"Trying to move folder to unknown destination", &OBJC_PROTOCOL___ICNoteContainer];
    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, &__NSArray0__struct);
    }
  }
}

void sub_100077360(uint64_t a1)
{
  v2 = [*(a1 + 32) moveDecision];
  v3 = [v2 modernSourceObjects];
  v4 = [v3 count];

  if (v4)
  {
    v5 = ICProtocolCast();
    objc_opt_class();
    v6 = ICDynamicCast();
    v7 = v6;
    if (v5)
    {
      v8 = +[ICNoteContext sharedContext];
      v9 = [*(a1 + 32) sourceObjects];
      v10 = [*(a1 + 32) workerContext];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000776C0;
      v28[3] = &unk_100646E08;
      v11 = *(a1 + 40);
      v28[4] = *(a1 + 32);
      v29 = v11;
      v30 = *(a1 + 48);
      [v8 undoablyMoveNotes:v9 toNoteContainer:v5 actionName:0 workerContext:v10 completionHandler:v28];

      v12 = v29;
    }

    else
    {
      if (!v6)
      {
        [ICAssert handleFailedAssertWithCondition:"__objc_no" functionName:"[ICMoveDecisionController moveSourceObjectsToDestination:completionHandler:]_block_invoke_7" simulateCrash:1 showAlert:0 format:@"Trying to move notes to unknown destination"];
        v23 = *(a1 + 48);
        if (v23)
        {
          (*(v23 + 16))(v23, &__NSArray0__struct);
        }

        goto LABEL_12;
      }

      v19 = +[ICNoteContext sharedContext];
      v20 = [*(a1 + 32) sourceObjects];
      v21 = [*(a1 + 32) workerContext];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100077728;
      v25[3] = &unk_100646E08;
      v22 = *(a1 + 40);
      v25[4] = *(a1 + 32);
      v26 = v22;
      v27 = *(a1 + 48);
      [v19 undoablyMoveNotes:v20 toVirtualSmartFolder:v7 actionName:0 workerContext:v21 completionHandler:v25];

      v12 = v26;
    }

LABEL_12:
    return;
  }

  v13 = [*(a1 + 32) moveDecision];
  v14 = [v13 htmlSourceObjects];
  v15 = [v14 count];

  if (v15)
  {
    v16 = +[ICLegacyImportManager sharedLegacyImportManager];
    v17 = [*(a1 + 32) sourceObjects];
    [v16 moveLegacyNotes:v17 toFolder:*(a1 + 40)];

    [*(a1 + 32) announceMoveToDestination:*(a1 + 40) delay:2.5];
    v18 = *(a1 + 48);
    if (v18)
    {
      v24 = [*(a1 + 32) sourceObjects];
      (*(v18 + 16))(v18, v24);
    }
  }
}

void sub_1000776C0(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) announceMoveToDestination:*(a1 + 40) delay:2.5];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

void sub_100077728(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) announceMoveToDestination:*(a1 + 40) delay:2.5];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

uint64_t sub_100077790(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, &__NSArray0__struct);
  }

  return result;
}

uint64_t sub_1000777C4(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, &__NSArray0__struct);
  }

  return result;
}

void sub_1000779DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000779F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  v1 = ICDynamicCast();
  v2 = [v1 localizedTitle];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    objc_opt_class();
    v5 = ICDynamicCast();
    v6 = [v5 localizedName];
    v7 = v6;
    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v8 = ICProtocolCast();
      v9 = [v8 name];
      v10 = v9;
      if (v9)
      {
        v4 = v9;
      }

      else
      {
        v11 = ICProtocolCast();
        v12 = [v11 name];
        v13 = v12;
        if (v12)
        {
          v4 = v12;
        }

        else
        {
          objc_opt_class();
          v14 = ICDynamicCast();
          v4 = [v14 title];
        }
      }
    }
  }

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Moved a note to %@" value:&stru_100661CF0 table:0];

  v17 = [NSString localizedStringWithFormat:v16, v4];
  ICAccessibilityPostAnnouncementNotification();
}

void sub_1000780B4(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 1, v3);
  }
}

void sub_100079A48(uint64_t a1)
{
  v3 = [*(a1 + 32) thumbnailImageView];
  v1 = [v3 layer];
  LODWORD(v2) = 1.0;
  [v1 setOpacity:v2];
}

void sub_100079CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

_BYTE *sub_100079CFC(_BYTE *result, void *a2)
{
  if (result[32] == 1)
  {
    return [a2 setUserInterfaceStyle:1];
  }

  return result;
}

void sub_100079D18(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(v5, (a1 + 40));
  v4 = v3;
  v5[1] = *(a1 + 48);
  performBlockOnMainThread();

  objc_destroyWeak(v5);
}

void sub_100079DE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 associatedObjectIdentifier];
  v4 = [WeakRetained noteIdentifier];
  v5 = [v3 isEqualToString:v4];

  if (WeakRetained && v5)
  {
    v6 = [WeakRetained thumbnailImageView];
    v7 = [v6 image];

    v8 = [*(a1 + 32) image];
    v9 = [WeakRetained thumbnailImageView];
    [v9 setImage:v8];

    v10 = [*(a1 + 40) ic_enclosingScrollView];
    v11 = [v10 ic_shouldOptimizeForScrolling];
    v12 = *(a1 + 56);
    v13 = +[UIApplication sharedApplication];
    v14 = [v13 applicationState];

    if ((v11 & 1) != 0 || ([*(a1 + 32) fetchDuration], v15 >= 0.3) && !v7 && v12 == v14)
    {
      [WeakRetained animateThumbnailImageView];
    }
  }
}

void sub_10007AA4C(uint64_t a1)
{
  v2 = [*(a1 + 32) viewControllerManager];
  v5 = [v2 noteEditorViewController];

  if (*(a1 + 56) == 1)
  {
    [v5 hideActivityStreamToolbarAnimated:0];
  }

  else if (*(a1 + 40))
  {
    v3 = [*(a1 + 32) viewControllerManager];
    v4 = [v3 selectedModernNote];
    [v5 showActivityStreamToolbarForObject:v4 selection:*(a1 + 40) animated:0];
  }

  if (*(a1 + 57) == 1)
  {
    [*(a1 + 48) showColumn:0];
  }
}

id sub_10007AB24(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = [v2 BOOLValue];
    v4 = a1[5];
    if (v3)
    {
      [v4 showColumn:0];
    }

    else
    {
      [v4 hideColumn:0];
    }
  }

  result = a1[6];
  if (result)
  {
    v6 = [result BOOLValue];
    v7 = a1[5];
    if (v6)
    {

      return [v7 showColumn:1];
    }

    else
    {

      return [v7 hideColumn:1];
    }
  }

  return result;
}

void sub_10007B258(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 allowedContentTypes];
  [v2 addObjectsFromArray:v3];
}

uint64_t sub_10007B698(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007B6B0(uint64_t a1)
{
  v6 = [*(a1 + 32) objectID];
  v2 = [*(a1 + 40) managedObjectContext];
  v3 = [ICAccount ic_existingObjectWithID:v6 context:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10007B748(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(ICImportFolder);
    [WeakRetained addURLs:*(a1 + 32) toImportFolder:v3 shouldPreserveFolders:*(a1 + 64)];
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Imported Notes" value:&stru_100661CF0 table:0];

    v6 = [*(a1 + 40) newFolderWithTitle:v5 parentFolder:0 forAccount:*(*(*(a1 + 48) + 8) + 40)];
    [(ICImportFolder *)v3 setFolder:v6];
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007B8D4;
    v10[3] = &unk_100646F38;
    v11 = WeakRetained;
    v12 = v3;
    v13 = v6;
    v14 = *(a1 + 40);
    v8 = v6;
    v9 = v3;
    [v11 traverseImportFolder:v9 forAccount:v7 shouldImportNotes:0 completionBlock:v10];
  }
}

void sub_10007B8D4(uint64_t a1)
{
  [*(a1 + 32) setState:2];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007B9A8;
  v7[3] = &unk_100645D40;
  v8 = v2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  [v8 traverseImportFolder:v3 forAccount:v4 shouldImportNotes:1 completionBlock:v7];
}

void sub_10007B9A8(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007BB10;
  v12[3] = &unk_100645E30;
  v13 = *(a1 + 40);
  [v2 performBlockAndWait:v12];

  v3 = [*(a1 + 32) managedObjectContext];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10007BBB8;
  v10 = &unk_100645E30;
  v11 = *(a1 + 32);
  [v3 performBlockAndWait:&v7];

  [*(a1 + 32) setState:{0, v7, v8, v9, v10}];
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 importCompletedForNoteProcessor:*(a1 + 48) destinationFolder:*(a1 + 40)];
  }
}

void sub_10007BB10(uint64_t a1)
{
  v4 = [*(a1 + 32) visibleSubFolders];
  if ([v4 count])
  {
  }

  else
  {
    v2 = [*(a1 + 32) visibleNotesCount];

    if (!v2)
    {
      v3 = *(a1 + 32);

      [ICFolder deleteFolder:v3];
    }
  }
}

void sub_10007BBB8(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  v4 = 0;
  [v1 save:&v4];
  v2 = v4;

  if (v2)
  {
    v3 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1004D9B48(v2);
    }
  }
}

void sub_10007BF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007BFB0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 canHandleFileURL:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10007D058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, char a62, uint64_t a63)
{
  objc_destroyWeak((v70 + 56));
  objc_destroyWeak(&a54);
  objc_destroyWeak(&a61);
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x300], 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

intptr_t sub_10007D0E0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTotalNoteFound:{objc_msgSend(WeakRetained, "totalNoteFound") + a2}];

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

id sub_10007D140(id *a1)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_10007B698;
  v18[4] = sub_10007B6A8;
  v19 = [a1[4] folder];
  v2 = [a1[4] folder];

  if (!v2)
  {
    v3 = [a1[5] managedObjectContext];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10007D380;
    v15[3] = &unk_1006463C8;
    v17 = v18;
    v16 = a1[5];
    [v3 performBlockAndWait:v15];
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10007B698;
  v13 = sub_10007B6A8;
  v14 = 0;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [WeakRetained managedObjectContext];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007D3CC;
  v8[3] = &unk_100646FD8;
  v8[4] = &v9;
  v8[5] = v18;
  [v5 performBlockAndWait:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(v18, 8);

  return v6;
}

void sub_10007D380(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultFolder];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_10007D3CC(uint64_t a1)
{
  v2 = [ICNote newEmptyNoteInFolder:*(*(*(a1 + 40) + 8) + 40)];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 32) + 8) + 40);

  return [v5 setNeedsInitialFetchFromCloud:1];
}

void sub_10007D438(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 managedObjectContext];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10007D5E4;
  v17[3] = &unk_100645E30;
  v5 = v3;
  v18 = v5;
  [v4 performBlockAndWait:v17];

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained setTotalNoteImported:{objc_msgSend(WeakRetained, "totalNoteImported") + 1}];
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  if ([WeakRetained totalNoteImported] && 0xCCCCCCCCCCCCCCCDLL * objc_msgSend(WeakRetained, "totalNoteImported") <= 0x3333333333333333)
  {
    v7 = [WeakRetained managedObjectContext];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10007D63C;
    v13 = &unk_100647028;
    v8 = WeakRetained;
    v9 = *(a1 + 32);
    v14 = v8;
    v15 = v9;
    v16 = *(a1 + 48);
    [v7 performBlockAndWait:&v10];
  }

  [WeakRetained updateImportProgress];
}

id sub_10007D5E4(uint64_t a1)
{
  [*(a1 + 32) setNeedsInitialFetchFromCloud:0];
  [*(a1 + 32) regenerateTitle:1 snippet:1];
  v2 = *(a1 + 32);

  return [v2 updateChangeCountWithReason:@"Imported note"];
}

void sub_10007D63C(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v5 = 0;
  [v2 save:&v5];
  v3 = v5;

  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Import");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1004D9B48(v3);
    }

    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *(*(*(a1 + 48) + 8) + 24) = 0;
    }
  }
}

void sub_10007D704(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained currentErrorFileURLs];
  [v3 addObject:*(a1 + 32)];

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void sub_10007D8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007D900(void *a1)
{
  if (a1[4])
  {
    v2 = [ICFolder newFolderInParentFolder:?];
  }

  else
  {
    if (!a1[5])
    {
      goto LABEL_6;
    }

    v2 = [ICFolder newFolderInAccount:?];
  }

  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

LABEL_6:
  v5 = +[NSDate date];
  [*(*(a1[7] + 8) + 40) setDateForLastTitleModification:v5];

  v6 = a1[6];
  v7 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];
  v10 = [ICFolder stringByScrubbingStringForFolderName:v8];

  v9 = [ICFolder deduplicatingTitle:v10 forFolder:*(*(a1[7] + 8) + 40) ofAccount:a1[5]];
  [*(*(a1[7] + 8) + 40) setTitle:v9];
  [*(*(a1[7] + 8) + 40) updateChangeCountWithReason:@"Imported folder"];
}

void sub_10007DE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007DE8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isActive];

  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D9D7C(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 searchDataSource];
    [v13 cancelSearchQuery];

    v14 = objc_loadWeakRetained((a1 + 32));
    v15 = [v14 searchController];
    [v14 updateSearchResultsForSearchController:v15];
  }
}

void sub_10007ED80(uint64_t a1, void *a2)
{
  v5 = [a2 representedObject];
  objc_opt_class();
  v4 = ICDynamicCast();
  if (a2)
  {
    [*(a1 + 32) addObject:v4];
  }
}

void sub_10007FC2C(uint64_t a1)
{
  v2 = [*(a1 + 32) searchController];
  v3 = [v2 isActive];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) searchController];
    [v4 setActive:1];
  }

  if (*(a1 + 40) == 1)
  {
    dispatchMainAfterDelay();
  }
}

void sub_10007FD00(uint64_t a1)
{
  v1 = [*(a1 + 32) searchBar];
  [v1 becomeFirstResponder];
}

id sub_100080068(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) indexOfSectionIdentifier:v3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) numberOfItemsInSection:v3];
  }

  return v4;
}

BOOL sub_1000805A4(id a1, UISearchToken *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(UISearchToken *)v4 representedObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(UISearchToken *)v4 representedObject];
    v8 = [v7 csToken];
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

UISearchToken *__cdecl sub_100080638(id a1, _CSSuggestionToken *a2)
{
  v2 = a2;
  v3 = [[ICSearchToken alloc] initWithCSSuggestionToken:v2];

  v4 = [ICSearchSuggestion iconImageForToken:v3];
  v5 = [v3 title];
  v6 = [UISearchToken tokenWithIcon:v4 text:v5];

  [v6 setRepresentedObject:v3];

  return v6;
}

void sub_1000814A0(uint64_t a1)
{
  v6 = [*(a1 + 32) note];
  v2 = [*(a1 + 40) date];
  [v6 setModificationDate:v2];
  v3 = [v6 creationDate];
  v4 = [v3 ic_isLaterThanDate:v2];

  if (v4)
  {
    [v6 setCreationDate:v2];
  }

  v5 = [v6 managedObjectContext];
  [v5 ic_save];
}

void sub_10008155C(uint64_t a1)
{
  v6 = [*(a1 + 32) note];
  v2 = [*(a1 + 40) date];
  [v6 setCreationDate:v2];
  v3 = [v6 modificationDate];
  v4 = [v3 ic_isEarlierThanDate:v2];

  if (v4)
  {
    [v6 setModificationDate:v2];
  }

  v5 = [v6 managedObjectContext];
  [v5 ic_save];
}

void sub_100081618(uint64_t a1)
{
  v4 = [*(a1 + 32) note];
  v1 = +[NSDate distantPast];
  [v4 setCreationDate:v1];

  v2 = +[NSDate distantPast];
  [v4 setModificationDate:v2];

  v3 = [v4 managedObjectContext];
  [v3 ic_save];
}

void sub_100081858(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 1, v3);
  }
}

void sub_1000827D0(uint64_t a1)
{
  v2 = [*(a1 + 32) viewControllerManager];
  [v2 setNoteContainerViewMode:{objc_msgSend(*(a1 + 32), "targetNoteViewMode")}];

  [*(a1 + 32) activityDidFinish:1];
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [*(a1 + 32) activityType];
    (*(v3 + 16))(v3, 1, v4);
  }
}

void sub_100083484(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v2 = [[NSFetchRequest alloc] initWithEntityName:@"NoteAttachment"];
  v3 = [NSPredicate predicateWithFormat:@"note.store == nil"];
  v42 = [NSPredicate predicateWithFormat:@"note.store.account == nil"];
  v43 = v3;
  v60[0] = v3;
  v60[1] = v42;
  v4 = [NSArray arrayWithObjects:v60 count:2];
  v5 = [NSCompoundPredicate orPredicateWithSubpredicates:v4];

  v41 = v5;
  [v2 setPredicate:v5];
  v44 = v2;
  v6 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  [v6 setResultType:1];
  v7 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DA0D8(v7);
  }

  v8 = *(a1 + 32);
  v55 = 0;
  v9 = [v8 executeRequest:v6 error:&v55];
  v10 = v55;
  v40 = v6;
  if (v10)
  {
    v11 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1004DA11C(v10, v11);
    }

LABEL_6:

    goto LABEL_7;
  }

  v36 = [v9 result];
  v37 = [v36 count];

  if (v37)
  {
    v11 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v59 = v37;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Successfully deleted %ld orphaned HTML attachments", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  v47 = a1;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [v9 result];
  v12 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    do
    {
      v15 = 0;
      do
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v51 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        v50 = v10;
        v18 = [NoteAttachmentObject attachmentDirectoryURLForAttachmentObjectID:v16 error:&v50];
        v19 = v50;

        if (v19)
        {
          v20 = os_log_create("com.apple.notes", "LaunchTask");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = v19;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error getting file directory URL for attachment: %@", buf, 0xCu);
          }
        }

        if (v18)
        {
          v21 = *(v47 + 40);
          v49 = v19;
          v22 = [v21 removeItemAtURL:v18 error:&v49];
          v10 = v49;

          v23 = os_log_create("com.apple.notes", "LaunchTask");
          v24 = v23;
          if (v22)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v59 = v18;
              _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Successfully deleted attachment file: %@", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = v10;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Error removing attachment file: %@", buf, 0xCu);
          }
        }

        else
        {
          v24 = os_log_create("com.apple.notes", "LaunchTask");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v59 = v16;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to get attachment folder URL for object ID: %@", buf, 0xCu);
          }

          v10 = v19;
        }

        objc_autoreleasePoolPop(v17);
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v13);
  }

  objc_autoreleasePoolPop(context);
  v25 = [[NSFetchRequest alloc] initWithEntityName:@"Note"];
  v26 = [NSPredicate predicateWithFormat:@"store == nil"];
  v27 = [NSPredicate predicateWithFormat:@"store.account == nil"];
  v56[0] = v26;
  v56[1] = v27;
  v28 = [NSArray arrayWithObjects:v56 count:2];
  v29 = [NSCompoundPredicate orPredicateWithSubpredicates:v28];

  [v25 setPredicate:v29];
  v30 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v25];
  [v30 setResultType:2];
  v31 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DA194(v31);
  }

  v32 = *(v47 + 32);
  v48 = v10;
  v33 = [v32 executeRequest:v30 error:&v48];
  v34 = v48;

  if (v34)
  {
    v35 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1004DA1D8(v34, v35);
    }
  }

  else
  {
    v38 = [v33 result];
    v39 = [v38 unsignedIntegerValue];

    if (!v39)
    {
      goto LABEL_33;
    }

    v35 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v59 = v39;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "Successfully deleted %ld orphaned HTML notes", buf, 0xCu);
    }
  }

LABEL_33:
  [*(v47 + 32) ic_saveWithLogDescription:@"Deleting orphaned HTML notes and attachments"];
}

uint64_t sub_1000840C0(uint64_t a1)
{
  [*(a1 + 32) setDidPerformAction:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_10008410C(uint64_t a1)
{
  [*(a1 + 32) setDidPerformAction:1];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100084BA0(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 1, v3);
  }
}

void sub_1000854F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = a4 == 0;
    v6 = [*(a1 + 32) activityType];
    (*(v4 + 16))(v4, v5, v6);
  }
}

void sub_100085F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100085F54(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = @"Top Hit Query";
  v55 = a3;
  if (a3)
  {
    v7 = @"Primary Query";
  }

  v8 = [NSString stringWithFormat:@"queryOperation foundItemsHandler start for %@", v7];
  [ICSearchProfiler logProfilingWithMessage:v8 searchQueryOperation:WeakRetained];

  v65 = a1;
  v56 = WeakRetained;
  if ((*(*(a1 + 40) + 16))() && [v5 count])
  {
    v9 = [WeakRetained searchTokens];
    v53 = [ICSearchToken suggestionTypeOfFirstItemInTokens:v9];

    [ICSearchProfiler logProfilingWithMessage:@"queryOperation foundItemsHandler start obtaining background context" searchQueryOperation:WeakRetained];
    v10 = +[ICSearchIndexer sharedIndexer];
    v54 = [v10 newContextsForAllDataSources];
    [ICSearchProfiler logProfilingWithMessage:@"queryOperation foundItemsHandler finish obtaining background context" searchQueryOperation:WeakRetained];
    v92[0] = 0;
    v92[1] = v92;
    v92[2] = 0x3032000000;
    v92[3] = sub_100086820;
    v92[4] = sub_100086830;
    v93 = objc_alloc_init(NSMutableArray);
    v57 = [[NSMutableArray alloc] initWithCapacity:12];
    v48 = &v90;
    v49 = &v89;
    v47 = v80;
    v59 = 0;
    v52 = v5;
    do
    {
      if (v59 >= [v5 count] || !(*(v65[5] + 16))())
      {
        break;
      }

      v11 = [v5 count];
      v12 = 12;
      if (!v59)
      {
        v12 = 2;
      }

      v13 = v59 + v12 - 1;
      v14 = v11 - 1;
      if (v13 < (v11 - 1))
      {
        v14 = v13;
      }

      v58 = v14;
      v15 = [NSIndexSet indexSetWithIndexesInRange:?];
      v16 = [v5 objectsAtIndexes:v15];

      v17 = [ICSearchQueryOperation searchableItemsFromSortableItems:v16];
      v18 = [NSString stringWithFormat:@"queryOperation foundItemsHandler start obtaining objects for batch starting from index %lu to index %lu", v59, v58, v47, v48, v49];
      [ICSearchProfiler logProfilingWithMessage:v18 searchQueryOperation:v56];

      v61 = [v10 objectsDictionaryForSearchableItems:v17 inContexts:v54];
      v86 = 0;
      v87 = &v86;
      v88 = 0x3032000000;
      v89 = sub_100086820;
      v90 = sub_100086830;
      v91 = 0;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      v80[0] = sub_100086838;
      v80[1] = &unk_1006472E8;
      v84 = v92;
      v63 = v56;
      v81 = v63;
      v51 = v10;
      v82 = v51;
      v85 = &v86;
      v50 = v17;
      v83 = v50;
      dispatch_sync(&_dispatch_main_q, block);
      v19 = [NSString stringWithFormat:@"queryOperation foundItemsHandler finish obtaining objects for batch starting from index %lu to index %lu", v59, v58];
      [ICSearchProfiler logProfilingWithMessage:v19 searchQueryOperation:v63];

      v20 = 0;
      v62 = v16;
      while (v20 < [v16 count] && ((*(v65[5] + 16))() & 1) != 0)
      {
        v64 = v20;
        v21 = [v16 objectAtIndexedSubscript:v20];
        v22 = v10;
        v23 = [v21 searchableItem];
        v24 = v23;
        if (!v65[4] || ([v23 attributeSet], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "domainIdentifier"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", v65[4]), v26, v25, (v27 & 1) != 0))
        {
          v28 = [v24 uniqueIdentifier];
          v29 = [v61 objectForKeyedSubscript:v28];

          v30 = v87[5];
          v31 = [v24 uniqueIdentifier];
          v32 = [v30 objectForKeyedSubscript:v31];

          if (v29 && v32)
          {
            v75 = 0;
            v76 = &v75;
            v77 = 0x2020000000;
            v78 = 0;
            v71 = 0;
            v72 = &v71;
            v73 = 0x2020000000;
            v74 = 0;
            v33 = [v29 managedObjectContext];
            v66[0] = _NSConcreteStackBlock;
            v66[1] = 3221225472;
            v66[2] = sub_1000869F4;
            v66[3] = &unk_100647310;
            v69 = &v75;
            v34 = v29;
            v67 = v34;
            v70 = &v71;
            v35 = v63;
            v68 = v35;
            [v33 performBlockAndWait:v66];

            if ((v76[3] & 1) == 0)
            {
              v36 = [v21 attachmentUniqueIdentifiers];
              v37 = [v36 firstObject];

              if (v37)
              {
                v38 = [v51 objectForManagedObjectIDURI:v37 inContexts:v54];
                v60 = [v38 objectID];
              }

              else
              {
                v60 = 0;
              }

              v39 = [ICSearchResultConfiguration alloc];
              v40 = [v35 searchString];
              v41 = [v39 initWithSearchString:v40 searchSuggestionType:v53 isTopHit:v55 foundAttachmentObjectID:v60 sortableSearchableItem:v21];

              v42 = [[ICSearchResult alloc] initWithMainContextObject:v32 currentContextObject:v34 configuration:v41];
              [v42 setMathNote:*(v72 + 24)];
              [v57 addObject:v42];

              v5 = v52;
            }

            _Block_object_dispose(&v71, 8);
            _Block_object_dispose(&v75, 8);
          }
        }

        v20 = v64 + 1;
        v10 = v22;
        v16 = v62;
      }

      v43 = [NSString stringWithFormat:@"queryOperation foundItemsHandler finish creating search results for batch starting from index %lu to index %lu", v59, v58];
      [ICSearchProfiler logProfilingWithMessage:v43 searchQueryOperation:v63];

      if ((*(v65[5] + 16))())
      {
        v44 = v65[6];
        v45 = [v57 copy];
        (*(v44 + 16))(v44, v45);

        [v57 removeAllObjects];
      }

      v46 = (*(v65[5] + 16))();
      v59 = (v58 + 1);

      _Block_object_dispose(&v86, 8);
    }

    while ((v46 & 1) != 0);

    _Block_object_dispose(v92, 8);
  }

  else if (![v5 count])
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_100086820(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100086838(uint64_t a1)
{
  if (![*(*(*(a1 + 56) + 8) + 40) count])
  {
    [ICSearchProfiler logProfilingWithMessage:@"queryOperation foundItemsHandler start obtaining main context" searchQueryOperation:*(a1 + 32)];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = [*(a1 + 40) dataSources];
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      do
      {
        v6 = 0;
        do
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v14 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            v8 = *(*(*(a1 + 56) + 8) + 40);
            v9 = v7;
            v10 = [v9 mainThreadContext];
            [v8 addObject:v10];
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v4);
    }

    [ICSearchProfiler logProfilingWithMessage:@"queryOperation foundItemsHandler finish obtaining main context" searchQueryOperation:*(a1 + 32)];
  }

  v11 = [*(a1 + 40) objectsDictionaryForSearchableItems:*(a1 + 48) inContexts:*(*(*(a1 + 56) + 8) + 40)];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_1000869F4(uint64_t a1)
{
  v2 = (a1 + 32);
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) isHiddenFromSearch];
  objc_opt_class();
  v3 = ICDynamicCast();
  if ([v3 isMathNote])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    objc_opt_class();
    v4 = ICDynamicCast();
    v5 = [v4 note];
    *(*(*(a1 + 56) + 8) + 24) = [v5 isMathNote];
  }

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1004DA41C(a1, v2, v6);
    }
  }
}

id sub_1000881B4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  objc_initWeak(&location, *(a1 + 32));
  v9 = [UIImage ic_systemImageNamed:v8];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100088344;
  v14[3] = &unk_100647378;
  objc_copyWeak(v15, &location);
  v15[1] = a4;
  v10 = [UIAction actionWithTitle:v7 image:v9 identifier:0 handler:v14];

  [v10 setState:a4 == 2];
  if (a4 == 1)
  {
    v11 = +[ICDeviceManagementRestrictionsManager sharedManager];
    v12 = [v11 isCalculatorModeScientificAllowed];

    if ((v12 & 1) == 0)
    {
      [v10 setAttributes:1];
    }
  }

  objc_destroyWeak(v15);
  objc_destroyWeak(&location);

  return v10;
}

void sub_10008831C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100088344(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained presentingViewController];
  [v2 ic_hostedNotesUpdateCalculatorMode:*(a1 + 40)];
}

uint64_t sub_10008A5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  if (!a1)
  {
    return 1;
  }

  v9 = a1;
  result = 1;
  do
  {
    result = v9 - result + 32 * result;
    v11 = v12;
    v12 += 8;
    v9 = *v11;
  }

  while (v9);
  return result;
}

void sub_10008AC44(uint64_t a1)
{
  v17 = [*(a1 + 32) fetchPasswordProtectedNotesInSharedFolders];
  v1 = [v17 ic_objectsPassingTest:&stru_1006473C0];
  v2 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DA4D0(v1, v2);
  }

  v3 = +[NSMutableSet set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v1;
  v4 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = os_log_create("com.apple.notes", "LaunchTask");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_1004DA57C(v23, v8, &v24, v9);
        }

        v10 = [v8 account];
        v11 = [v10 defaultFolder];
        [v8 setFolder:v11];

        v12 = +[NSDate date];
        [v8 setFolderModificationDate:v12];

        [v8 updateChangeCountWithReason:@"Moved to default folder"];
        v13 = [v8 objectID];
        [v3 addObject:v13];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v5);
  }

  v14 = [v3 copy];
  [*(a1 + 32) setMovedNoteObjectIDs:v14];

  v15 = [*(a1 + 32) workerContext];
  [v15 ic_save];
}

void sub_10008B33C(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DA5F4(v2);
  }

  v3 = +[ICFolder predicateForVisibleObjects];
  v25[0] = v3;
  v4 = [NSPredicate predicateWithFormat:@"serverShareData != nil"];
  v25[1] = v4;
  v5 = [NSArray arrayWithObjects:v25 count:2];

  v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];
  v7 = [ICFolder ic_objectsMatchingPredicate:v6 context:*(a1 + 32)];

  v8 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DA638(v7, v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          sub_1004DA6C4(v22, v14, &v23, v15);
        }

        [v14 resetToIntrinsicNotesVersionAndPropagateToChildObjects];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v11);
  }

  v16 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Completed fixing minimum supported version for shared folders", v17, 2u);
  }
}

BOOL sub_10008BB04(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = ICCheckedDynamicCast();

  if (v2)
  {
    objc_opt_class();
    v3 = [v2 store];
    v4 = ICCheckedDynamicCast();

    if (v4)
    {
      objc_opt_class();
      v5 = [v4 account];
      v6 = ICCheckedDynamicCast();

      if (v6)
      {
        v7 = [v6 accountType] == 2;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10008BC10(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = ICCheckedDynamicCast();

  if (v2)
  {
    objc_opt_class();
    v3 = [v2 store];
    v4 = ICCheckedDynamicCast();

    if (v4)
    {
      v5 = [v4 externalIdentifier];
      v6 = [v5 isEqualToString:kLocalStoreIdentifier] ^ 1;
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

id sub_10008BCE4(void *a1, int a2)
{
  v3 = a1;
  v4 = [XMLStringSimplifier simplifiedStringFromString:v3 isXML:a2 ^ 1u];
  v5 = v4;
  if (!v4)
  {
    v4 = v3;
  }

  v6 = sub_10008BD68(v4);

  return v6;
}

id sub_10008BD68(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];
  [v1 bytes];
  [v1 length];
  CCDigest();
  v2 = [NSData dataWithBytes:v4 length:20];

  return v2;
}

void sub_10008BE24(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = +[NSMutableSet set];
  v7 = [v3 contentHash];

  if (v7)
  {
    v8 = [v3 contentHash];
    [v5 setObject:v8 forKeyedSubscript:@"sha1"];

    [v6 addObject:@"sha1"];
    v9 = 0;
  }

  else
  {
    v22 = [v3 noteID];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10008C0F4;
    v23[3] = &unk_1006473E8;
    v20 = v5;
    v24 = v20;
    v10 = objc_retainBlock(v23);
    v11 = [v3 modificationDate];
    v12 = +[NSDate ic_modificationDateForNoteBeingEdited];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
      v14 = +[NSDate date];

      v11 = v14;
    }

    (v10[2])(v10, v11, @"m");
    v15 = [v22 length];
    v9 = v15 != 0;
    if (v15)
    {
      v16 = @"uuid";
      [v20 setObject:v22 forKeyedSubscript:@"uuid"];
    }

    else
    {
      v21 = [v3 creationDate];
      v16 = @"c";
      (v10[2])(v10, v21, @"c");
    }

    [v6 addObject:v16];
  }

  if ([v3 isEditing])
  {
    [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"e"];
  }

  [v4 setUserInfo:v5];
  v17 = [v3 title];
  v18 = [v17 localizeForLanguage:0];
  [v4 setTitle:v18];

  v19 = [v6 copy];
  [v4 setRequiredUserInfoKeys:v19];

  [v4 _setEligibleForPrediction:v9];
}

void sub_10008C0F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 timeIntervalSinceReferenceDate];
  v6 = [NSNumber numberWithDouble:?];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

id sub_10008C178(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_10008C788;
  v60[3] = &unk_100647410;
  v62 = a3;
  v7 = v5;
  v61 = v7;
  v8 = objc_retainBlock(v60);
  v9 = [v7 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"sha1"];

  if (v10)
  {
    v11 = [v7 title];
    v12 = [NSPredicate predicateWithFormat:@"title == %@", v11];
    v13 = [v6 allVisibleNotesMatchingPredicate:v12 sorted:1];
    if (v13)
    {
      v48 = v11;
      v49 = v6;
      v52 = v8;
      v54 = v7;
      v51 = v9;
      v14 = [v9 objectForKeyedSubscript:@"sha1"];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v57;
LABEL_5:
        v19 = 0;
        while (1)
        {
          if (*v57 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v56 + 1) + 8 * v19);
          v21 = [v20 content];
          v22 = sub_10008BCE4(v21, [v20 isPlainText]);

          if ([v22 isEqual:v14])
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v15 countByEnumeratingWithState:&v56 objects:v65 count:16];
            if (v17)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        v64 = v20;
        v31 = [NSArray arrayWithObjects:&v64 count:1];

        if (v31)
        {
          goto LABEL_17;
        }
      }

      else
      {
LABEL_11:
      }

      v31 = &__NSArray0__struct;
LABEL_17:

      v6 = v49;
      v9 = v51;
      v8 = v52;
      v7 = v54;
      v11 = v48;
    }

    else
    {
      v31 = 0;
    }

    goto LABEL_20;
  }

  v23 = [v7 userInfo];
  v24 = [v23 objectForKeyedSubscript:@"m"];

  if (!v24)
  {
    (v8[2])(v8, @"missing modification date", 201);
    v31 = 0;
    goto LABEL_38;
  }

  v53 = v8;
  [v24 doubleValue];
  v26 = [NSDate dateWithTimeIntervalSinceReferenceDate:floor(v25)];
  v27 = [NSPredicate predicateWithFormat:@"modificationDate >= %@", v26];
  v28 = [v7 userInfo];
  v29 = [v28 objectForKeyedSubscript:@"uuid"];

  v55 = v7;
  if ([v29 length])
  {
    v50 = v26;
    v30 = [NSPredicate predicateWithFormat:@"guid == %@", v29];
LABEL_29:
    v63[0] = v30;
    v63[1] = v27;
    v40 = [NSArray arrayWithObjects:v63 count:2];
    v41 = [NSCompoundPredicate andPredicateWithSubpredicates:v40];

    v42 = 1;
    v31 = [v6 allVisibleNotesMatchingPredicate:v41 sorted:1];
    if ([v31 count] < 2)
    {
      v8 = v53;
    }

    else
    {
      v43 = [v55 title];
      v44 = [NSPredicate predicateWithFormat:@"title == %@", v43];
      v45 = [v31 filteredArrayUsingPredicate:v44];

      if ([v45 count])
      {
        v46 = v45;

        v31 = v46;
      }

      v8 = v53;

      v42 = 1;
    }

    v26 = v50;
    goto LABEL_35;
  }

  v35 = [v7 userInfo];
  v31 = [v35 objectForKeyedSubscript:@"c"];

  if (v31)
  {
    v50 = v26;
    [v31 doubleValue];
    v37 = [NSDate dateWithTimeIntervalSinceReferenceDate:floor(v36)];
    [v31 doubleValue];
    v39 = [NSDate dateWithTimeIntervalSinceReferenceDate:floor(v38 + 1.0)];
    v30 = [NSPredicate predicateWithFormat:@"creationDate >= %@ && creationDate < %@", v37, v39];

    goto LABEL_29;
  }

  (v8[2])(v8, @"missing uuid and creation date", 201);
  v41 = 0;
  v42 = 0;
LABEL_35:

  if (v42)
  {
    v7 = v55;
LABEL_20:
    if ([v31 count])
    {
      v24 = [v31 lastObject];
    }

    else
    {
      if (v31)
      {
        v32 = @"No note matching criteria";
        v33 = v8;
        v34 = 200;
      }

      else
      {
        v32 = @"Error while fetching";
        v33 = v8;
        v34 = 201;
      }

      (v8[2])(v33, v32, v34);
      v24 = 0;
    }

    goto LABEL_38;
  }

  v24 = 0;
  v7 = v55;
LABEL_38:

  return v24;
}

void sub_10008C788(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 40))
  {
    v5 = NotesErrorDomain;
    v14 = NotesErrorFailureReasonKey;
    v6 = *(a1 + 32);
    v7 = a2;
    v8 = [v6 userInfo];
    v9 = [v8 description];
    v10 = v9;
    v11 = &stru_100661CF0;
    if (v7)
    {
      v11 = v7;
    }

    v12 = [NSString stringWithFormat:@"Can't find note with userInfo: %@, %@", v9, v11];

    v15 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    **(a1 + 40) = [NSError errorWithDomain:v5 code:a3 userInfo:v13];
  }
}

id sub_10008C96C(uint64_t a1)
{
  [ICNoteContext markOldTrashedNotesForDeletionInContext:*(a1 + 32)];
  v2 = *(a1 + 32);

  return [v2 ic_save];
}

BOOL sub_10008EEF4(id a1, NoteAccountObject *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if (([(NoteAccountObject *)v4 isDeleted]& 1) != 0)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [(NoteAccountObject *)v4 didChooseToMigrate]^ 1;
  }

  return v5;
}

void sub_10008F254(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 1, v3);
  }
}

id sub_10008F4B0(void *a1, uint64_t a2)
{
  if (a1[4] != a2)
  {
    [ICFolderCustomNoteSortType setQuerySortType:a2];
  }

  v3 = a1[5];
  v4 = a1[6];

  return [v3 performActivityWithCompletion:v4];
}

void sub_100090554(uint64_t a1)
{
  v2 = +[ICNoteContext sharedContext];
  v3 = [v2 workerManagedObjectContext];

  v4 = [[ICServerSideUpdateTaskController alloc] initWithWorkerContext:v3];
  [*(a1 + 32) setServerSideUpgradeTaskController:v4];

  v5 = [*(a1 + 32) serverSideUpgradeTaskController];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000908C8;
  v26[3] = &unk_100645E30;
  v26[4] = *(a1 + 32);
  [v5 runServerSideTasksIfNeeded:v26];

  v6 = [*(a1 + 32) cloudContextDelegate];
  [v6 fixGallerySubAttachmentsIfNecessary];

  v7 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v7 generatePreviewsIfNeeded];

  v8 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [v8 generateMissingOrOutdatedAttachmentMetaDataIfNeededInContext:v3];

  +[ICQuickNoteSessionSettings disableNotesOnLockScreenIfNecessary];
  +[UIApplication sharedApplication];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000908D4;
  v9 = v23[3] = &unk_100647608;
  v10 = *(a1 + 32);
  v24 = v9;
  v25 = v10;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100090A1C;
  v21[3] = &unk_100647608;
  v21[4] = v10;
  v11 = v9;
  v22 = v11;
  [ICDatabaseVacuum startDatabaseVacuumPolicyWithPreVacuumHandler:v23 postVacuumHandler:v21];
  v12 = +[ICDrawingPencilKitConverter sharedConverter];
  [v12 convertAllDrawingsIfNeeded];

  [*(a1 + 32) cleanUpTemporaryFiles];
  v13 = [ICParticipantUpdater alloc];
  v14 = +[ICNoteContext sharedContext];
  v15 = [v14 workerManagedObjectContext];
  v16 = [v13 initWithManagedObjectContext:v15];

  [v16 updateWithCompletion:0];
  v17 = +[NSUserDefaults standardUserDefaults];
  LODWORD(v15) = [v17 BOOLForKey:kICInternalSettingsLogStateOnLaunchDefaultsKey];

  if (v15)
  {
    v18 = os_log_create("com.apple.notes", "Application");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1004DA8B4(v18);
    }
  }

  v19 = +[ICApplicationTestingHelper sharedHelper];
  [v19 didFinishPostLaunchTasks];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100090AC8;
  v20[3] = &unk_100645E30;
  v20[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v20);
}

void sub_1000908D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 UUIDString];
  v7 = [NSString stringWithFormat:@"Database Vacuum %@", v4];

  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) beginBackgroundTaskWithName:v7 expirationHandler:&stru_1006475E0]);
  v6 = [*(a1 + 40) backgroundTasks];
  [v6 setObject:v5 forKeyedSubscript:v3];
}

void sub_1000909A8(id a1)
{
  v1 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Database vacuum took too long when moving to the background", v2, 2u);
  }
}

void sub_100090A1C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) backgroundTasks];
  v4 = [v3 objectForKeyedSubscript:v6];

  if (v4)
  {
    [*(a1 + 40) endBackgroundTask:{objc_msgSend(v4, "unsignedIntegerValue")}];
    v5 = [*(a1 + 32) backgroundTasks];
    [v5 removeObjectForKey:v6];
  }
}

void sub_100090AC8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"ICAppDelegateDidRunDelayedLaunchTasks" object:*(a1 + 32)];
}

void sub_100090B28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && (WeakRetained[19] & 1) == 0)
  {
    v2 = WeakRetained;
    [WeakRetained runDelayedLaunchTasks];
    WeakRetained = v2;
  }
}

void sub_100090DB4(id a1)
{
  [objc_opt_class() updatePagesInstallationStatus];
  +[ICLocalAuthentication refreshBiometricsContext];

  +[ICLocalAuthentication refreshHasPasscode];
}

void sub_100090E00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained requestedAuthorizationToShowUserNotifications];

  if ((v3 & 1) == 0)
  {
    v4 = +[ICCloudConfiguration sharedConfiguration];
    v5 = [v4 requestUserNotificationAuthorizationAtLaunch];

    if (v5)
    {
      v9[1] = _NSConcreteStackBlock;
      v9[2] = 3221225472;
      v9[3] = sub_100090F60;
      v9[4] = &unk_100645C78;
      v6 = &v10;
      objc_copyWeak(&v10, (a1 + 32));
      performBlockOnMainThread();
    }

    else
    {
      v7 = objc_loadWeakRetained((a1 + 32));
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100090FC8;
      v8[3] = &unk_100646D08;
      v6 = v9;
      objc_copyWeak(v9, (a1 + 32));
      [v7 checkIfHasSharedNotesOrFolders:v8];
    }

    objc_destroyWeak(v6);
  }
}

void sub_100090F60(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DA950();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained requestAuthorizationToShowUserNotificationsIfNecessary];
}

void sub_100090FC8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_copyWeak(&v2, (a1 + 32));
    performBlockOnMainThread();
    objc_destroyWeak(&v2);
  }
}

void sub_100091054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

void sub_10009106C(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Notifications");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DA98C();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained requestAuthorizationToShowUserNotificationsIfNecessary];
}

void sub_1000914E4(id a1)
{
  v1 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Timed out waiting for removeAllCloudSyncingObjectActivityEventsForUnsharedObjectsInContext in background", v2, 2u);
  }
}

void sub_100091D6C(id a1)
{
  v1 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Took too long to finish indexing when moving to the background", v3, 2u);
  }

  v2 = +[ICSearchIndexer sharedIndexer];
  [v2 cancelIndexingOperationsWithCompletionHandler:0];
}

void sub_100091E00(id a1)
{
  v1 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Took too long to save when moving to the background", v2, 2u);
  }
}

id sub_100091E80(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DA9C8();
  }

  return [*(a1 + 32) lockAllNotes];
}

void sub_100091FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_10009201C(uint64_t a1)
{
  v2 = [*(a1 + 32) windows];
  *(*(*(a1 + 40) + 8) + 24) = [v2 ic_containsObjectPassingTest:&stru_1006476F0];
  *(*(*(a1 + 48) + 8) + 24) = [v2 ic_containsObjectPassingTest:&stru_100647710];
  *(*(*(a1 + 56) + 8) + 24) = [v2 ic_containsObjectPassingTest:&stru_100647730];
}

BOOL sub_1000920B8(id a1, UIWindow *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(UIWindow *)a2 ic_viewControllerManager:a3];
  v5 = [v4 currentAttachmentPresenter];
  v6 = v5 != 0;

  return v6;
}

BOOL sub_100092100(id a1, UIWindow *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(UIWindow *)a2 ic_viewControllerManager:a3];
  v5 = [v4 currentAttachmentPresenter];
  v6 = [v5 galleryAttachmentEditorController];
  v7 = [v6 extractedDocumentController];
  v8 = v7 != 0;

  return v8;
}

BOOL sub_100092170(id a1, UIWindow *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(UIWindow *)a2 ic_viewControllerManager:a3];
  v5 = [v4 window];
  v6 = [v5 ic_topmostPresentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id sub_1000923A0(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 endBackgroundTask:{objc_msgSend(*(a1 + 32), "delayedLockProtectedNotesTask")}];

  v3 = *(a1 + 32);

  return [v3 setDelayedLockProtectedNotesTask:UIBackgroundTaskInvalid];
}

void sub_100092AA8(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_100092C44(id a1)
{
  v1 = os_log_create("com.apple.notes", "Application");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DABA0();
  }

  v2 = +[UIApplication sharedApplication];
  [v2 registerForRemoteNotifications];
}

void sub_100093038(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) object];
  v3 = ICDynamicCast();

  if (!v3)
  {
    [ICAssert handleFailedAssertWithCondition:"uuid" functionName:"[ICAppDelegate mentionNotificationWillSend:]_block_invoke" simulateCrash:1 showAlert:0 format:@"Notification did not contain a mention UUID"];
  }

  v4 = [*(a1 + 40) backgroundTasks];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    [ICAssert handleFailedAssertWithCondition:"self.backgroundTasks[uuid] == ((void*)0)" functionName:"[ICAppDelegate mentionNotificationWillSend:]_block_invoke" simulateCrash:1 showAlert:0 format:@"A mention notification (%@) was sent while previous one inflight", v3];
  }

  v6 = +[UIApplication sharedApplication];
  v7 = [NSString stringWithFormat:@"MentionNotificationTask-%@", v3];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100093250;
  v13[3] = &unk_100645E30;
  v8 = v3;
  v14 = v8;
  v9 = [v6 beginBackgroundTaskWithName:v7 expirationHandler:v13];

  v10 = os_log_create("com.apple.notes", "Mentions");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DAC54();
  }

  v11 = [NSNumber numberWithUnsignedInteger:v9];
  v12 = [*(a1 + 40) backgroundTasks];
  [v12 setObject:v11 forKeyedSubscript:v8];
}