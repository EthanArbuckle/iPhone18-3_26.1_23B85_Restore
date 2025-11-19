void sub_100181E90(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 sender];
    [WeakRetained _selectAllButtonPressed:v4];
  }
}

void sub_100182020(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 didDismissSearchController:*(a1 + 32)];
}

void sub_100182684(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MessageListViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(NSError *)v2 ef_publicDescription];
    sub_10048A490(v4, v5, v3);
  }
}

void sub_1001828E4(_Unwind_Exception *a1)
{
  if (v1)
  {
  }

  _Unwind_Resume(a1);
}

void sub_100182B5C(uint64_t a1)
{
  v2 = [*(a1 + 32) scene];
  v3 = [v2 isInExpandedEnvironment];

  if (v3)
  {
    v4 = [*(a1 + 40) messageListItemSelection];
    v5 = [v4 messageListItems];
    v6 = [v5 ef_map:&stru_100652A10];

    [*(a1 + 32) _selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:v6 showConversationView:1];
  }
}

id sub_100182C48(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 itemID];

  return v2;
}

void sub_100182E54(uint64_t a1)
{
  v2 = [*(a1 + 32) scene];
  v3 = [v2 isInExpandedEnvironment];

  if (v3)
  {
    v4 = [*(a1 + 40) messageListItemSelection];
    v5 = [v4 messageListItems];
    v6 = [v5 ef_map:&stru_100652A30];

    [*(a1 + 32) _selectNextMessageAfterRemovingAllVisibleMessageListItemsWithItemIDs:v6 showConversationView:1];
  }
}

id sub_100182F40(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 itemID];

  return v2;
}

id sub_100183B48(uint64_t a1, uint64_t a2)
{
  v4 = +[MessageListViewController signpostLog];
  v5 = [*(a1 + 32) signpostID];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = *(a1 + 56);
    v13 = 67109120;
    LODWORD(v14) = v6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_EVENT, v5, "MessageListViewController Delete", "The user has selected to Trash messages, with deleteAllMessages:%{BOOL}d", &v13, 8u);
  }

  v7 = +[NSDate now];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:EMUserDefaultLogMassDeletionAll];

  [*(a1 + 48) addObject:*(a1 + 40)];
  v8 = +[NSUserDefaults em_userDefaults];
  v9 = [*(a1 + 48) copy];
  [v8 setObject:v9 forKey:EMUserDefaultLogMassDeletion];

  v10 = MFLogGeneral();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = NSStringFromMSDeleteOrArchive();
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "User confirm %@", &v13, 0xCu);
  }

  return [*(a1 + 32) _deleteMessagesWithPreference:a2];
}

uint64_t sub_100183D60(uint64_t a1)
{
  v2 = +[MessageListViewController signpostLog];
  v3 = [*(a1 + 32) signpostID];
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v4 = *(a1 + 56);
    v7[0] = 67109120;
    v7[1] = v4;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, v3, "MessageListViewController Delete", "The user has selected to delete messages, with deleteAllMessages:%d", v7, 8u);
  }

  v5 = +[NSDate now];
  [*(a1 + 40) setObject:v5 forKeyedSubscript:EMUserDefaultLogMassDeletionAlertOption];

  return (*(*(a1 + 48) + 16))();
}

uint64_t sub_100183EA4(uint64_t a1)
{
  v2 = +[NSDate now];
  [*(a1 + 32) setObject:v2 forKeyedSubscript:EMUserDefaultLogMassDeletionAlertOption];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_100183F24(uint64_t a1)
{
  v3 = +[NSDate now];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];

  [*(a1 + 40) addObject:*(a1 + 32)];
  v4 = +[NSUserDefaults em_userDefaults];
  v2 = [*(a1 + 40) copy];
  [v4 setObject:v2 forKey:EMUserDefaultLogMassDeletion];
}

void sub_100183FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_100184494(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 messageListSelectionModel];
    if ([v4 isSelectAll])
    {
      v5 = [a1 collectionView];
      v6 = [v5 indexPathsForSelectedItems];
      v7 = [v5 indexPathsForSelectedItems];
      v8 = [v7 count];

      if (v8 >= 3)
      {
        v9 = 3;
      }

      else
      {
        v9 = v8;
      }

      v10 = [v6 subarrayWithRange:{0, v9}];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1001848D4;
      v25[3] = &unk_100652218;
      v25[4] = a1;
      v11 = [v10 ef_map:v25];

      v12 = [a1 selectionModel:v4 messageListItemsForItemIDs:v11];
      v13 = [v12 ef_mapSelector:"result"];

      [a1 _showTransferPickerForNonPredictiveMoveOfMessages:v13];
      v14 = +[MessageListViewController signpostLog];
      v15 = [a1 signpostID];
      if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
      {
        v16 = [v4 predictedMoveMailbox];
        sub_10048A524(v16, location, v14, v15);
      }
    }

    else
    {
      if ([v4 count] < 1)
      {
LABEL_13:

        goto LABEL_14;
      }

      v17 = [v4 currentMessageListItemSelection];
      v18 = [v17 messageListItems];
      v13 = [v18 ef_filter:EFIsNotNull];

      v5 = [v4 predictedMoveMailbox];
      v19 = [a1 scene];
      v20 = [v19 mf_rootViewController];

      v21 = [a1 undoManager];
      v22 = [MFMoveToPredictionTriageInteraction interactionWithMessageListItems:v13 undoManager:v21 origin:2 actor:2 presentationSource:v3 delegate:a1 presentingViewController:v20 predictedMailbox:v5];

      objc_initWeak(location, a1);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10018495C;
      v23[3] = &unk_10064D6F8;
      objc_copyWeak(&v24, location);
      [v22 performInteractionWithCompletion:v23];
      objc_destroyWeak(&v24);
      objc_destroyWeak(location);
    }

    goto LABEL_13;
  }

LABEL_14:
}

id sub_1001848D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 itemIdentifierForIndexPath:v3];

  return v5;
}

void sub_10018495C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setEditing:0 animated:1];
  }
}

void sub_100184C94(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v10 = +[MessageListViewController log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = *(a1 + 32);
      *buf = 138412546;
      v30 = v12;
      v31 = 2048;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<%@: %p> Ignoring move action, target mailbox is nil", buf, 0x16u);
    }

    goto LABEL_12;
  }

  if (*(a1 + 56) == 1)
  {
    v8 = [*(a1 + 32) flattenedMailboxesFuture];
    v9 = [v8 result];
  }

  else
  {
    v9 = 0;
  }

  v14 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    v28 = v7;
    v15 = [*(a1 + 32) dataSource];
    v16 = [*(a1 + 48) itemIDs];
    v17 = [v15 messageListItemsForItemIDs:v16];
    v18 = [EFFuture combine:v17];
    v19 = [v18 result];
    v20 = [v19 ef_filter:EFIsNotNull];

    v14 = v20;
    v7 = v28;
  }

  v21 = [*(a1 + 48) selectionWithMessageListItems:v14 mailboxes:v9];
  if (v21)
  {
    v22 = [*(a1 + 32) undoManager];
    v23 = [(MFTriageInteraction *)MFMoveMessageTriageInteraction interactionWithMessageListItemSelection:v21 undoManager:v22 origin:2 actor:2];

    [v23 setTargetMailbox:v6];
    [v23 setDelegate:*(a1 + 32)];
    [v23 performInteraction];

LABEL_12:
    sub_10018508C(*(a1 + 32), 0);
    goto LABEL_16;
  }

  v24 = +[MessageListViewController log];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = *(a1 + 32);
    *buf = 138413058;
    v30 = v26;
    v31 = 2048;
    v32 = v27;
    v33 = 2112;
    v34 = v14;
    v35 = 2112;
    v36 = v9;
    _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "<%@: %p> bulk transfer of messages messageListItemSelection is nil for messageListItems %@ and mailboxes %@", buf, 0x2Au);
  }

LABEL_16:
}

void sub_10018508C(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 scene];
    v5 = [a1 transferController];
    v6 = [v5 stackViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001855DC;
    v8[3] = &unk_10064C6B0;
    v9 = v3;
    v10 = a1;
    v7 = v4;
    v11 = v7;
    [v6 removeStackedViewsAnimated:1 completion:v8];
  }
}

id sub_1001851C8(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
  v2 = *(a1 + 40);

  return [v2 setEditing:0 animated:0];
}

id sub_100185410(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) itemIdentifierForIndexPath:a2];

  return v2;
}

void sub_100185584(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_1001855DC(uint64_t a1)
{
  if (*(a1 + 32) && ([*(a1 + 40) _inMultiSelectionMode] & 1) == 0)
  {
    [*(a1 + 40) setEditing:1 animated:0];
  }

  else
  {
    [*(a1 + 40) exitEditMode];
  }

  v2 = [*(a1 + 48) mf_rootViewController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001856D8;
  v5[3] = &unk_10064C660;
  v4 = *(a1 + 32);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  [v2 dismissViewControllerAnimated:1 completion:v5];
}

id sub_1001856D8(uint64_t a1)
{
  [*(a1 + 32) setTransferController:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 296);
  *(v2 + 296) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _applySelectionModel:v5];
}

id sub_100185BC0(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

id sub_1001860C0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a2 <= 14)
  {
    if (a2 == 2)
    {
      v12 = *(a1 + 32);
      v13 = [*(a1 + 40) undoManager];
      v6 = [(MFFlagChangeTriageInteraction *)MFReadTriageInteraction interactionWithMessageListItemSelection:v12 undoManager:v13 origin:2 actor:2 reason:4];

      if (*(a1 + 56) == 1)
      {
        v14 = [*(a1 + 40) messageTriageInteractionHelper];
        [v6 setDelegate:v14];
      }

      [v6 setTitleIncludesCount:0];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1001863F0;
      v20[3] = &unk_10064D720;
      v15 = *(a1 + 48);
      v20[4] = *(a1 + 40);
      v8 = [v6 menuActionWithPreparation:v15 completion:v20];
    }

    else
    {
      if (a2 != 6)
      {
        goto LABEL_16;
      }

      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) undoManager];
      v6 = [(MFFlagChangeTriageInteraction *)MFFlagTriageInteraction interactionWithMessageListItemSelection:v4 undoManager:v5 origin:2 actor:2 reason:4];

      v7 = [*(a1 + 40) messageTriageInteractionHelper];
      [v6 setDelegate:v7];

      [v6 setTitleIncludesCount:0];
      v8 = [v6 menuActionWithPreparation:*(a1 + 48) completion:0];
    }

    goto LABEL_15;
  }

  if (a2 == 15)
  {
    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) undoManager];
    v6 = [(MFFlagChangeTriageInteraction *)MFJunkTriageInteraction interactionWithMessageListItemSelection:v16 undoManager:v17 origin:2 actor:2 reason:4];

    if (*(a1 + 56) == 1)
    {
      v18 = [*(a1 + 40) messageTriageInteractionHelper];
      [v6 setDelegate:v18];
    }

    [v6 setTitleIncludesCount:0];
    v8 = [v6 menuActionWithPreparation:*(a1 + 48) completion:0];
    goto LABEL_15;
  }

  if (a2 != 20)
  {
    goto LABEL_16;
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) messageListItems];
  LODWORD(v9) = sub_100186528(v9, v10);

  if (v9)
  {
    v11 = [*(a1 + 32) messageListItems];
    v6 = [MFUnsubscribeTriageInteraction interactionWithReferenceMessageListItems:v11 origin:2 actor:2];

    v8 = [v6 menuActionWithPreparation:*(a1 + 48) completion:0];
LABEL_15:
    v3 = v8;

    goto LABEL_16;
  }

  v3 = 0;
LABEL_16:

  return v3;
}

void sub_1001863F0(uint64_t a1, void *a2, int a3)
{
  v10 = a2;
  [*(a1 + 32) _reportReadTriageInteraction:? didPerform:?];
  if (a3)
  {
    v5 = +[UIApplication sharedApplication];
    v6 = [v5 appStoreReviewManager];
    [v6 notifyCriterionMet:5];

    v7 = [*(a1 + 32) scene];
    if (v7)
    {
      v8 = +[UIApplication sharedApplication];
      v9 = [v8 appStoreReviewManager];
      [v9 attemptToShowPromptIn:v7 reason:5];
    }
  }
}

void sub_1001864CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

id sub_100186528(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 count])
    {
      a1 = [v4 ef_all:&stru_100652D98];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

BOOL sub_100186594(id a1, EMMessageListItem *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL sub_1001866D0(void *a1)
{
  v1 = a1;
  if (a1)
  {
    if ([a1 isFilterButtonEnabled])
    {
      return 0;
    }

    v2 = [v1 mailboxes];
    v3 = [EMMailbox supportsSelectAllForMailboxes:v2];

    if (!v3 || ([v1 _shouldDisplaySearchButtons] & 1) != 0 || (objc_msgSend(v1, "isSearchSuggestionsVisible") & 1) != 0)
    {
      return 0;
    }

    else
    {
      v5 = [v1 senderSpecificMessageListItem];
      if (v5)
      {
        v1 = 0;
      }

      else
      {
        v1 = ([v1 isBucketBarHidden] & 1) != 0 || objc_msgSend(v1, "selectedBucket") == 5;
      }
    }
  }

  return v1;
}

void sub_100187A18(id *a1, void *a2, void *a3)
{
  if (a1)
  {
    v13 = a1[52];
    v6 = [a1 isEditing];
    if (v13)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7 == 1)
    {
      v8 = [a1 dataSource];
      v9 = [v8 messageListItemForItemID:v13];
      v10 = [v9 result];
    }

    else
    {
      v11 = [a1 conversationViewController];
      v10 = [v11 referenceMessageListItem];

      [v10 itemID];
      v13 = v8 = v13;
    }

    if (a2)
    {
      *a2 = v13;
    }

    if (a3)
    {
      v12 = v10;
      *a3 = v10;
    }
  }
}

void sub_100188204(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void sub_100188520(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_100189328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v22 - 88));
  _Unwind_Resume(a1);
}

void sub_10018938C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained refreshControl];
    [v2 endRefreshing];

    v3 = [v4 isRefreshing];
    [v3 setObject:&__kCFBooleanFalse];

    WeakRetained = v4;
  }
}

void sub_100189408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id sub_100189C14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 itemIdentifierForIndexPath:v3];

  return v5;
}

void sub_10018A6FC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = +[MessageListViewController log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v11 = 138413314;
      v12 = v8;
      v13 = 2048;
      v14 = a1;
      v15 = 2080;
      v16 = "[MessageListViewController _scrollToMessageAtIndexPath:atScrollPosition:]";
      v17 = 2112;
      v18 = v5;
      v19 = 2048;
      v20 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "<%@: %p> %s: Scrolled to %@ : %ld", &v11, 0x34u);
    }

    v9 = [a1 collectionView];
    [v9 scrollToItemAtIndexPath:v5 atScrollPosition:a3 animated:1];

    v10 = [a1 messageListPositionHelper];
    [v10 recalculateFirstVisibleIndex];
  }
}

void sub_10018B748(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v7)
  {
    v10 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10018B880;
    v12[3] = &unk_10064C660;
    v13 = v10;
    v14 = v7;
    [v9 _prepareForMoveOrDestructiveInteraction:v13 completion:v12];

    v11 = 0;
    v9 = *(a1 + 32);
  }

  else if (a2)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 48);
  }

  sub_10018508C(v9, v11);
  if (v7)
  {
    [*(a1 + 32) _didPerformMoveOrDestructiveInteraction:*(a1 + 40)];
  }
}

id sub_10018B88C(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
  v2 = *(a1 + 40);

  return [v2 setEditing:0 animated:0];
}

void sub_10018BC1C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

EFFuture *__cdecl sub_10018BC54(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 displayMessage];

  return v2;
}

void sub_10018DCB0(id a1)
{
  v3[0] = MessageListSectionHelpMailLearn;
  v3[1] = MessageListSectionOnboardingTip;
  v3[2] = MessageListSectionInstantAnswers;
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = qword_1006DD370;
  qword_1006DD370 = v1;
}

id sub_10018DF24(uint64_t a1)
{
  [*(a1 + 32) setEditing:1];
  v2 = *(a1 + 32);

  return [v2 setEditing:0];
}

id sub_10018E240(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 itemID];

  return v2;
}

id sub_10018E270(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 itemIdentifierForIndexPath:v3];

  return v5;
}

id sub_10018E464(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 itemID];

  return v2;
}

void sub_10018F31C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018F3DC;
  v8[3] = &unk_10064C7E8;
  v9 = v5;
  v7 = v5;
  [v6 _prepareForMoveOrDestructiveInteraction:a2 completion:v8];
}

void sub_10018F3E4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) _didPerformMoveOrDestructiveInteraction:v5];
  }
}

void sub_10018F450(void *a1, void *a2)
{
  v3 = a2;
  v4 = [MSTriageChangeAction mf_indicatorPreviewChangeWithAction:a1[6] interaction:v3];
  v5 = a1 + 4;
  v6 = [a1[4] collectionView];
  v7 = [v6 cellForItemAtIndexPath:a1[5]];

  if (v7)
  {
    v8 = +[MessageListViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = *v5;
      v12 = [v4 ef_publicDescription];
      v15 = 138413058;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<%@: %p> Applying %{public}@ to cell: %p", &v15, 0x2Au);
    }

    [v7 applyIndicatorPreviewChangeAction:v4];
  }

  else
  {
    v13 = +[MessageListViewController log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      NSStringFromClass(v14);
      objc_claimAutoreleasedReturnValue();
      sub_10048A738();
    }
  }
}

void sub_10018F66C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _reportReadTriageInteraction:v5 didPerform:a3];
}

void sub_10018F6F0(uint64_t a1, void *a2, int a3)
{
  v10 = a2;
  (*(*(a1 + 40) + 16))();
  if (a3 && (*(a1 + 48) & 1) == 0)
  {
    v5 = +[UIApplication sharedApplication];
    v6 = [v5 appStoreReviewManager];
    [v6 notifyCriterionMet:0];

    v7 = [*(a1 + 32) scene];
    if (v7)
    {
      v8 = +[UIApplication sharedApplication];
      v9 = [v8 appStoreReviewManager];
      [v9 attemptToShowPromptIn:v7 reason:3];
    }
  }
}

void sub_10018F7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_10018F838(uint64_t a1, void *a2, int a3)
{
  v10 = a2;
  (*(*(a1 + 40) + 16))();
  if (a3)
  {
    v5 = +[UIApplication sharedApplication];
    v6 = [v5 appStoreReviewManager];
    [v6 notifyCriterionMet:7];

    v7 = [*(a1 + 32) scene];
    if (v7)
    {
      v8 = +[UIApplication sharedApplication];
      v9 = [v8 appStoreReviewManager];
      [v9 attemptToShowPromptIn:v7 reason:7];
    }
  }
}

void sub_10018F91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_100190838(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
    [*(a1 + 40) setShouldIgnoreNextFocusUpdate:1];
  }
}

void sub_100190D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_1001918A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 itemIdentifierForIndexPath:v3];

  [*(a1 + 32) reportEngagementAction:1 onItemID:v5 atIndexPath:v3];

  return v5;
}

id sub_100191948(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[MessageListViewController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "configurationWithIdentifier:previewProvider:actionProvider: -%@", &v4, 0xCu);
  }

  return WeakRetained;
}

id sub_100191A28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([*(a1 + 32) count] < 2)
  {
    v3 = &stru_100662A88;
  }

  else
  {
    v3 = [WeakRetained _menuTitleForSelection];
  }

  v4 = [WeakRetained _previewActionsForItemIDs:*(a1 + 40) orbedItem:*(a1 + 48)];
  v5 = [UIMenu menuWithTitle:v3 children:v4];

  return v5;
}

void sub_100191ADC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_100191D38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained isEditing];
  v3 = *(a1 + 32);
  if (v2)
  {
    [WeakRetained _updateSelectionModelDidSelectItemID:v3];
  }

  else
  {
    [WeakRetained _handleDidSelectItemID:v3 referenceItem:0 scrollToVisible:1 userInitiated:1 animated:0];
  }
}

void sub_100192B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38, uint64_t a39, id a40, id a41)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

id sub_100192D60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 indexPathForItemIdentifier:v3];

  v6 = [*(a1 + 32) collectionView];
  v7 = [v6 cellForItemAtIndexPath:v5];

  return v7;
}

id sub_100192E28(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) messageTriageInteractionHelper];
  LOBYTE(v12) = 1;
  v10 = [v9 triageInteractionForTriageAction:a2 withMessageListItems:v7 presentationSource:v8 presentingViewController:*(a1 + 32) moveInteractionDelegate:*(a1 + 32) filterInteractionDelegate:*(a1 + 32) forPreview:v12 origin:2];

  return v10;
}

id sub_100192EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(a1 + 48) + 16))();
  [v8 setIncludeTitleInMenuAction:a5];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100193020;
  v12[3] = &unk_100652D00;
  v16 = a2;
  v13 = *(a1 + 32);
  v9 = *(a1 + 56);
  v14 = *(a1 + 40);
  v15 = v9;
  v10 = [v8 menuActionWithPreparation:0 completion:v12];

  return v10;
}

void sub_100193020(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a1 + 56);
    if (v6 <= 0xB)
    {
      if (((1 << v6) & 0xC44) != 0)
      {
        v7 = [MSTriageChangeAction mf_indicatorPreviewChangeWithAction:"mf_indicatorPreviewChangeWithAction:interaction:" interaction:?];
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v8 = *(a1 + 32);
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          v10 = *v14;
          do
          {
            v11 = 0;
            do
            {
              if (*v14 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = (*(*(a1 + 48) + 16))(*(a1 + 48));
              [v12 applyIndicatorPreviewChangeAction:{v7, v13}];

              ++v11;
            }

            while (v9 != v11);
            v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
          }

          while (v9);
        }
      }

      else if (((1 << v6) & 0x380) != 0)
      {
        [*(a1 + 40) _prepareForMoveOrDestructiveInteraction:v5 completion:0];
      }
    }
  }
}

id sub_1001931F8(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

void sub_100193234(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void sub_100193410(uint64_t a1, int a2)
{
  if (a2)
  {
    v8 = +[UIApplication sharedApplication];
    v3 = [v8 appStoreReviewManager];
    [v3 notifyCriterionMet:2];

    v4 = [*(a1 + 32) scene];
    if (v4)
    {
      v9 = v4;
      v5 = +[UIApplication sharedApplication];
      v6 = [v5 appStoreReviewManager];
      [v6 attemptToShowPromptIn:v9 reason:2];

      v4 = v9;
    }
  }

  else
  {
    v7 = +[MessageListViewController log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004844BC();
    }
  }
}

void sub_100193514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_10019373C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100193780(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[MessageListViewController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10048A848();
  }

  v4 = [WeakRetained mailboxesPendingOldestItemsUpdates];
  [v4 removeObject:*(a1 + 32)];
}

void sub_100193C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, ...)
{
  va_start(va, a16);

  objc_destroyWeak(va);
  objc_destroyWeak((v21 - 112));

  _Unwind_Resume(a1);
}

void sub_100193C88(id *a1, void *a2, int a3)
{
  v13 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (!a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_12;
    }

    v6 = v13;
    v7 = [WeakRetained didDismissHandler];
    [v6 setDidDismissHandler:v7];

    [WeakRetained setDidDismissHandler:0];
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1[4] _didPerformMoveOrDestructiveInteraction:v13];
LABEL_10:
    v11 = [a1[4] triageInteractionTarget];
    v12 = [v11 primaryMessageContentRequest];
    [v12 cancel];

    v6 = [WeakRetained presentingViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
LABEL_11:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MSTriageChangeAction mf_indicatorPreviewChangeWithAction:2 interaction:v13];
    [a1[5] applyIndicatorPreviewChangeAction:v8];
    [a1[4] _reportReadTriageInteraction:v13 didPerform:1];

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = [MSTriageChangeAction mf_indicatorPreviewChangeWithAction:6 interaction:v13];
  [a1[5] applyIndicatorPreviewChangeAction:v10];

  if (isKindOfClass)
  {
    goto LABEL_10;
  }

LABEL_12:
}

void sub_100193ED4(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) scene];
  [v13 setScene:v3];

  [v13 setDelegate:*(a1 + 32)];
  v4 = [*(a1 + 32) messageTriageInteractionHelper];
  [v13 setFlagChangeInteractionDelegate:v4];

  v5 = [*(a1 + 40) navigationController];
  v6 = [v5 popoverPresentationController];
  v7 = [v6 sourceItem];
  [v13 setPresentationSource:v7];

  v8 = [*(a1 + 32) triageInteractionTarget];
  [v13 setTarget:v8];

  [v13 setCompletion:*(a1 + 64)];
  [v13 setPredictedMailbox:*(a1 + 48)];
  [v13 setMoveToPredictionTriageInteractionDelegate:*(a1 + 32)];
  [v13 setPresentingViewControllerForTransferUI:*(a1 + 32)];
  [v13 setIncludeReadLaterAction:{objc_msgSend(*(a1 + 32), "_allowReadLaterActions")}];
  [v13 setOrigin:2];
  v9 = [*(a1 + 32) isBucketBarHidden];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v8 = [*(a1 + 56) senderList];
    v10 = [v8 count] == 1;
  }

  [v13 setIncludeCategorizationAction:v10];
  if ((v9 & 1) == 0)
  {
  }

  v11 = [*(a1 + 32) isBucketBarHidden];
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v8 = [*(a1 + 56) senderList];
    v12 = [v8 count] == 1;
  }

  [v13 setIncludeICloudUnsubscribeAction:v12];
  if ((v11 & 1) == 0)
  {
  }
}

void sub_100194408(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001948EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, id location, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_100194A30(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) primaryMessageContentRequest];
  [v14 setMessageContentRequest:v3];

  v4 = [*(a1 + 32) primaryMessage];
  v5 = [v4 senderList];
  [v14 setSenderList:v5];

  v6 = [*(a1 + 32) primaryMessage];
  v7 = [v6 summary];
  [v14 setSummary:v7];

  v8 = [*(a1 + 32) primaryMessage];
  v9 = [v8 generatedSummary];
  [v14 setGeneratedSummary:v9];

  v10 = [MUIAvatarImageContext alloc];
  v11 = [*(a1 + 32) primaryMessage];
  v12 = [v10 initWithMessageListItem:v11];
  [v14 setAvatarContext:v12];

  v13 = [*(a1 + 40) avatarGenerator];
  [v14 setAvatarGenerator:v13];
}

void sub_100194BDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTriageInteractionTarget:0];
  (*(*(a1 + 32) + 16))();
}

void sub_100194E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v23 = v20;

  _Unwind_Resume(a1);
}

double sub_100194EA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _containerTraitCollection];
  v5 = [v4 verticalSizeClass];

  if (v5 == 1)
  {
    v6 = _UISheetDetentInactive;
  }

  else
  {
    [*(a1 + 32) approximateHeightNeededForAccessibilityContentSizeCategory];
    v8 = v7;
    [v3 _containerBounds];
    Height = CGRectGetHeight(v15);
    [*(a1 + 40) mailActionCardMaximumContainerViewHeightForLargerMediumDetent];
    v10 = *(a1 + 40);
    if (Height <= v11)
    {
      [v10 mailActionCardLargerMediumDetentCoverage];
    }

    else
    {
      [v10 mailActionCardSmallerMediumDetentCoverage];
    }

    [v3 _containerSafeAreaInsets];
    v12 = [*(a1 + 32) view];
    UIRoundToViewScale();
    v6 = fmax(v13, v8);
  }

  return v6;
}

void sub_100194F8C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_10019514C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if ([v4 modalPresentationStyle] == 7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = [v5 topViewController];

        v5 = v2;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) != 0 && ([v5 delegate], v2 = objc_claimAutoreleasedReturnValue(), v2 == a1))
      {
        a1 = 1;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [a1 transferController];
          a1 = v7 == v5;

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          a1 = 0;
          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
      a1 = 0;
    }
  }

LABEL_15:

  return a1;
}

void sub_10019525C(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

id sub_10019527C(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 presentedViewController];
    if (v2)
    {
      v1 = v1;
    }

    else
    {
      v3 = [v1 scene];
      v1 = [v3 mf_rootViewController];
    }
  }

  return v1;
}

void sub_100195410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v21 = v20;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_100195440(uint64_t a1)
{
  v2 = [*(a1 + 32) isThreaded];
  v3 = *(*(a1 + 40) + 8);
  v4 = @"messagelist-simple";
  v5 = *(v3 + 40);
  if (v2)
  {
    v4 = @"messagelist-threaded";
  }

  *(v3 + 40) = v4;
}

void sub_1001955C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1001955F4(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSource];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100195AB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  if (v4)
  {
    [v3 reportMessageResultEngaged:v4 engagementAction:*(a1 + 56)];
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [*(a1 + 48) bodyCardSectionID];
      [v7 reportInstantAnswerCardSelected:v5 cardSectionID:v6];
    }
  }
}

void sub_100195D08(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1001960D8(uint64_t a1)
{
  [*(a1 + 32) setFilterController:0];
  v2 = [*(a1 + 32) mailboxes];

  if (v2)
  {
    v3 = *(a1 + 32);
    v9 = [v3 mailboxes];
    [v3 updateFilterContextForMailboxes:? focus:? applyFilters:?];

    [*(a1 + 32) _disableFocusFilter:0];
    [*(a1 + 32) updateFilters];
    v4 = [*(a1 + 32) _observedMailboxesAndSmartMailboxPredicate];
    v5 = *(a1 + 32);
    v10 = v4;
    v6 = [v4 first];
    v7 = [v10 second];
    [v5 _startObservationForStatusBarBadgeCountWithObservedMailboxes:v6 smartMailboxPredicate:v7];

    [*(a1 + 32) _updateUnseenCountQueries];
  }

  else
  {
    v8 = +[MessageListViewController log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10048A8C0();
    }
  }
}

id sub_100196648(id a1)
{
  if (a1)
  {
    v1 = a1;
    if (pthread_main_np() != 1)
    {
      v7 = +[NSAssertionHandler currentHandler];
      [v7 handleFailureInMethod:"navBarPalette" object:v1 file:@"MessageListViewController.m" lineNumber:7464 description:@"Current thread must be main"];
    }

    v2 = *(v1 + 70);
    if (!v2)
    {
      v3 = objc_alloc_init(UIStackView);
      [v3 setAxis:1];
      objc_storeStrong(v1 + 67, v3);
      v4 = [[_UINavigationBarPalette alloc] initWithContentView:v3];
      v5 = *(v1 + 70);
      *(v1 + 70) = v4;

      v2 = *(v1 + 70);
    }

    a1 = v2;
  }

  return a1;
}

id sub_1001976E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 sectionAtIndex:{objc_msgSend(v3, "section")}];

  v6 = [*(a1 + 32) dataSource];
  v7 = [v6 isMessagesSection:v5];

  return v7;
}

void sub_1001978A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1001978E4(id *a1)
{
  v2 = [a1[4] messageListSelectionModel];
  [v2 setPerformingDataSourceUpdates:0];

  if (([a1[5] isCleanSnapshot] & 1) == 0)
  {
    v3 = [a1[6] visibleMessageListSections];
    v4 = [a1[7] section];
    v5 = [v3 containsObject:v4];

    if (v5)
    {
      v6 = [a1[4] configuredSections];
      v7 = [a1[7] section];
      v8 = [v6 containsObject:v7];

      if ((v8 & 1) == 0)
      {
        v9 = [a1[7] section];
        [v6 addObject:v9];

        v10 = a1[4];
        v11 = [a1[7] messageList];
        v12 = [v11 objectID];
        [v10 _checkMessageListLoadingCompleted:v12];
      }
    }
  }

  v13 = [a1[4] dataSource];
  v14 = [a1[7] section];
  v15 = [v13 isMessagesSection:v14];

  if (v15)
  {
    if (sub_10001C994(a1[4]) && [a1[4] suppressNoContentView])
    {
      [a1[4] setSuppressNoContentView:0];
    }

    v16 = a1[4];

    [v16 updateNoContentViewAnimated:1];
  }
}

void sub_10019859C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MessageListViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ %@", &v6, 0x16u);
  }

  [*(a1 + 40) selectRowOfItemID:*(a1 + 32) scrollToVisible:1 scrollPosition:1 animated:1];
}

BOOL sub_10019869C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 indexPathForItemIdentifier:v3];

  v6 = [v5 section] == *(a1 + 40);
  return v6;
}

void sub_100198738(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 itemID];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001987CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MessageListViewController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = [v3 ef_publicDescription];
    sub_10048A8FC(v5, v6, &v7, v4);
  }
}

void sub_1001994A8(id *a1)
{
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100199614;
  v13 = &unk_100652EB0;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v14 = v7;
  v15 = v6;
  v8 = [MSRadarURLBuilder radarURLWithBuilder:&v10];
  v9 = [UIApplication sharedApplication:v10];
  [v9 openURL:v8 withCompletionHandler:&stru_100652ED0];
}

void sub_1001995CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16)
{
  v18 = v17;

  _Unwind_Resume(a1);
}

void sub_100199614(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 setPrependSystemVersionToTitle:0];
  [v8 setAppendStandardDisclaimerToDescription:0];
  v3 = [NSString stringWithFormat:@"[Blank Cell] %@", *(a1 + 32)];
  [v8 setTitle:v3];

  v4 = *(a1 + 32);
  v5 = [NSDateFormatter ef_formatterForStyle:5];
  v6 = [v5 stringFromDate:*(a1 + 40)];
  v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Blank Cell Detected - %@ \n\nTimestamp: %@\n\nItemID: %@\nIndexPath: (%ld, %ld)\n\n", v4, v6, *(a1 + 48), [*(a1 + 56) section], objc_msgSend(*(a1 + 56), "item"));
  [v8 setRadarDescription:v7];

  [v8 setComponent:25];
  [v8 setReproducibility:5];
  [v8 setClassification:5];
}

void sub_100199798(id a1, BOOL a2)
{
  if (!a2)
  {
    v2 = +[MessageListViewController log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10048A958();
    }
  }
}

uint64_t sub_1001998F0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && [v5 count])
  {
    v17 = [a1 dataSource];
    v7 = [v17 messageListItemsForItemIDs:v5];
    v8 = [v7 ef_compactMap:&stru_100652FE0];

    v9 = [v5 count];
    if (v9 == [v8 count])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = 0;
        v13 = *v19;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            if (v6[2](v6, v15))
            {
              v12 += [v15 count];
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
        goto LABEL_18;
      }
    }

    else
    {
      v10 = +[MessageListViewController log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        v24 = [v5 count];
        v25 = 2048;
        v26 = [v8 count];
        v27 = 2112;
        v28 = v5;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[MessageListViewController _countOfMessageItemIDs:satisfying:] unexpectedly converted %lu itemIDs to %lu messageListItems. itemIDs: %@", buf, 0x20u);
      }
    }

    v12 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

void sub_100199D18(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id sub_100199F78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = [v4 objectIDForItemID:v3];

  return v5;
}

id sub_10019A0C0(id a1, EFFuture *a2)
{
  v2 = [(EFFuture *)a2 result];

  return v2;
}

void sub_10019ACD0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10019B20C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10019B2A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10019B40C(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_10019B624(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) senderList];
  [v6 setSenderList:v3];

  [v6 setSummary:*(a1 + 40)];
  v4 = [[MUIAvatarImageContext alloc] initWithMessageListItem:*(a1 + 32)];
  [v6 setAvatarContext:v4];

  v5 = [*(a1 + 48) avatarGenerator];
  [v6 setAvatarGenerator:v5];
}

void sub_10019CE38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 contentURL];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v4 _prepareWithActivityItems:v6];
}

void *sub_10019D348(void *result, uint64_t a2)
{
  v2 = result[4];
  if ((*(v2 + 8) & a2) != 0)
  {
    v3 = *(result[5] + 8);
    v4 = *(v3 + 24);
    if (v4 >= result[6])
    {
      *(v2 + 24) |= a2;
    }

    else
    {
      *(v3 + 24) = v4 + 1;
    }
  }

  return result;
}

void sub_10019DCA8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD390;
  qword_1006DD390 = v1;
}

void sub_10019DE38(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_10019E9C8(void *a1)
{
  v2 = a1[4];
  v5 = a1[5];
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4 = [v2 triageInteractionForTriageAction:9 withMessageListItems:v3 presentationSource:a1[6] presentingViewController:a1[7] moveInteractionDelegate:0 forPreview:0 origin:3];

  [v4 performInteractionWithCompletion:a1[8]];
}

void sub_10019EAAC(void *a1)
{
  v2 = a1[4];
  v5 = a1[5];
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  v4 = [v2 triageInteractionForTriageAction:8 withMessageListItems:v3 presentationSource:a1[6] presentingViewController:a1[7] moveInteractionDelegate:0 forPreview:0 origin:3];

  [v4 performInteractionWithCompletion:a1[8]];
}

id sub_10019F5C8(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) displayMessage];
  v5 = [v4 result];

  if (!v5)
  {
    v6 = +[MessageTriageInteractionHelper log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) itemID];
      objc_claimAutoreleasedReturnValue();
      sub_10048AB10();
    }

    goto LABEL_10;
  }

  v6 = [*(a1 + 40) messageContentRepresentationRequestForMessageTriageInteractionHelper:*(a1 + 48) message:v5];
  if (!v6)
  {
    v8 = +[MessageTriageInteractionHelper log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) itemID];
      objc_claimAutoreleasedReturnValue();
      sub_10048AACC();
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = [a2 interactionWithContentRequest:v6 scene:*(a1 + 56)];
  [v7 setPresentationSource:*(a1 + 64)];
  if (*(a1 + 72) == 1)
  {
    [v7 setShouldPromptToLoadRestOfMessage:0];
    [v7 setAttachmentPolicy:3];
  }

LABEL_11:

  return v7;
}

BOOL sub_10019FD3C(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 flags];
  v3 = [v2 read];

  return v3;
}

void sub_1001A041C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD3A0;
  qword_1006DD3A0 = v1;
}

uint64_t sub_1001A084C(uint64_t a1, int a2)
{
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) account];
    v6 = [v5 ef_publicDescription];
    v7 = v6;
    v8 = @"failed";
    if (a2)
    {
      v8 = @"completed";
    }

    v10 = 138543618;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Credential renewal for account %{public}@  %@", &v10, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1001A0B74(uint64_t a1)
{
  v2 = [*(a1 + 32) validationInvocation];
  [v2 invoke];

  if ([*(a1 + 32) accountIsValid])
  {
    v3 = [*(a1 + 40) account];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v5 = *(a1 + 40);
    v6 = [v5 account];
    if (isKindOfClass)
    {
      [v5 _overwriteAccount:v6 withAlternateAccount:*(a1 + 48)];

      v7 = +[MFAccountHealer log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 40) account];
        v9 = [v8 hostname];
        v10 = [*(a1 + 40) account];
        v11 = [v10 portNumber];
        v12 = [*(a1 + 40) account];
        *buf = 138412802;
        v35 = v9;
        v36 = 1024;
        v37 = v11;
        v38 = 1024;
        v39 = [v12 usesSSL];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "User allow us to heal their account to: %@:%i %i", buf, 0x18u);
      }

      v13 = 1;
LABEL_16:

      goto LABEL_17;
    }

    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      v7 = [*(a1 + 40) account];
      v15 = [*(a1 + 40) _getMailAccountFromDeliveryAccount:v7];
      v13 = v15 != 0;
      if (v15)
      {
        [*(a1 + 40) _overwriteAccount:v7 withAlternateAccount:*(a1 + 48)];
        v16 = +[MFAccountHealer log];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [*(a1 + 40) account];
          v18 = [v17 hostname];
          v19 = [*(a1 + 40) account];
          v20 = [v19 portNumber];
          v21 = [*(a1 + 40) account];
          *buf = 138412802;
          v35 = v18;
          v36 = 1024;
          v37 = v20;
          v38 = 1024;
          v39 = [v21 usesSSL];
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "User allow us to heal their account to: %@:%i %i", buf, 0x18u);
        }

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, MFMailDefaultSendingAccountDidChange, 0, 0, 1u);
      }

      else
      {
        v23 = +[MFAccountHealer log];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [*(a1 + 40) account];
          v25 = [v24 hostname];
          v26 = [*(a1 + 40) account];
          v27 = [v26 portNumber];
          v28 = [*(a1 + 40) account];
          *buf = 138412802;
          v35 = v25;
          v36 = 1024;
          v37 = v27;
          v38 = 1024;
          v39 = [v28 usesSSL];
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Unable to find account that is related to this SMTP server: %@:%i %i", buf, 0x18u);
        }
      }

      goto LABEL_16;
    }
  }

  v13 = 0;
LABEL_17:
  v29 = +[EFScheduler mainThreadScheduler];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1001A10BC;
  v31[3] = &unk_100653108;
  v30 = *(a1 + 56);
  v33 = v13;
  v31[4] = *(a1 + 40);
  v32 = v30;
  [v29 performBlock:v31];
}

void sub_1001A17E8(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

id sub_1001A1A84(uint64_t a1, void *a2)
{
  v3 = [a2 deliveryAccount];
  v4 = [v3 identifier];
  v5 = [*(a1 + 32) identifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

void sub_1001A1AF8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001A1C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1001A1DCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
LABEL_6:
    (*(*(a1 + 32) + 16))();
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Warning credential renewal failed: %@", &v7, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
}

void sub_1001A2214(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  v5 = 0;
  if (v4)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isActive])
        {
          v9 = [v8 statisticsKind];
          if (v9)
          {
            v10 = [v2 valueForKey:v9];
            v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 intValue] + 1);

            [v2 setValue:v11 forKey:v9];
            v5 = (v5 + 1);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v12 = [NSNumber numberWithInt:v5];
  [v2 setObject:v12 forKeyedSubscript:@"totalCount"];

  v13 = v2;
  AnalyticsSendEventLazy();
  AnalyticsSendEventLazy();
}

NSDictionary *__cdecl sub_1001A24CC(id a1)
{
  v1 = [NSNumber numberWithInt:PCSettingsGetClassPollInterval()];
  v2 = [NSNumber numberWithBool:PCSettingsGetClassPushEnabled() == 0];
  v5[0] = @"fetchInterval";
  v5[1] = @"pushDisabled";
  v6[0] = v1;
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

void sub_1001A27CC(uint64_t a1)
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:*(a1 + 32) forKeyedSubscript:@"oldFocus"];
  [v3 setObject:*(a1 + 40) forKeyedSubscript:@"newFocus"];
  [*(a1 + 48) resetAccountsSynchronouslyOnMainThread];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MFFocusDidChangeNotification" object:*(a1 + 48) userInfo:v3];
}

void sub_1001A2C18(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD3C0;
  qword_1006DD3C0 = v1;
}

void sub_1001A2E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFApplicationShortcutProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001A35CC(uint64_t a1)
{
  v2 = [*(a1 + 32) specialMailboxFavoriteItem];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) specialMailboxFavoriteItem];
    v5 = [*(a1 + 32) specialMailboxFavoriteItem];
    v6 = [v5 badgeCountString];
    v7 = [EFPair pairWithFirst:v4 second:v6];
    [v3 addObject:v7];
  }

  v8 = [*(a1 + 32) mailboxFavoriteItem];

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 32) mailboxFavoriteItem];
    v11 = [*(a1 + 32) mailboxFavoriteItem];
    v12 = [v11 badgeCountString];
    v13 = [EFPair pairWithFirst:v10 second:v12];
    [v9 addObject:v13];
  }

  v14 = [*(a1 + 32) fixedShortcutItems];
  v15 = [v14 mutableCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = *(a1 + 40);
  v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v17)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        v21 = *(a1 + 32);
        v22 = [v20 first];
        v23 = [v20 second];
        v24 = [v21 _applicationShortcutForFavoriteItem:v22 badgeCountString:v23];
        [v15 addObject:v24];
      }

      v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  [*(a1 + 32) setShortcutItems:v15];
}

void sub_1001A3A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A3A38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateApplicationShortcuts];
}

void sub_1001A3DE4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1001A4480(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1001A45FC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

NSString *__cdecl sub_1001A4634(id a1, SBSApplicationShortcutItem *a2)
{
  v2 = a2;
  v3 = [(SBSApplicationShortcutItem *)v2 localizedTitle];
  v4 = [(SBSApplicationShortcutItem *)v2 localizedSubtitle];
  v5 = v4;
  v6 = &stru_100662A88;
  if (v4)
  {
    v6 = v4;
  }

  v7 = [NSString stringWithFormat:@"Name: %@ Subtitle: %@", v3, v6];

  return v7;
}

void sub_1001A4C1C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setBadgeCount:?];
  (*(*(a1 + 40) + 16))();
}

void sub_1001A4D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1001A5300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

uint64_t sub_1001A537C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mailboxes];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

void sub_1001A5644(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_1001A567C(int a1)
{
  if (a1 != -1 && a1 != 1)
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"UIImage *_imageForButtonDirection(BrowseDirection)"];
    [v2 handleFailureInFunction:v3 file:@"MFArrowControlsView.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"direction == BrowseDirectionUp || direction == BrowseDirectionDown"}];
  }

  v4 = &MFImageGlyphUpArrow;
  if (a1 != -1)
  {
    v4 = &MFImageGlyphDownArrow;
  }

  v5 = [UIImage mf_systemImageNamed:*v4 textStyle:UIFontTextStyleTitle3 scale:3];

  return v5;
}

void sub_1001A5D18(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1001A5E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFAttachmentShowcase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001A6CD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#Warning Failed to queue %@ (%@)", &v10, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v6);
  }
}

id sub_1001A6DE8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1006DD3D8;
  v7 = qword_1006DD3D8;
  if (!qword_1006DD3D8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001A83E8;
    v3[3] = &unk_100650760;
    v3[4] = &v4;
    sub_1001A83E8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1001A6EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001A6EC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Warning Failed to open workout file (%@)", &v7, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }
}

void sub_1001A6FB8(uint64_t a1)
{
  v24 = [*(a1 + 32) contactStoreForAttachmentShowcase:*(a1 + 40)];
  v23 = [*(a1 + 32) contentItemHandlingDelegateForAttachmentShowcase:*(a1 + 40)];
  v2 = [*(a1 + 48) message];
  v22 = [v2 senderDisplayNameUsingContactStore:v24];
  v3 = [v2 shouldShowReplyAll];
  v4 = sub_1001A7244(*(a1 + 40), *(a1 + 56));
  v5 = *(a1 + 64);
  v21 = [v2 objectID];
  v20 = [*(a1 + 48) mailboxObjectID];
  v19 = [v2 subject];
  v6 = [v19 subjectString];
  v7 = [*(a1 + 48) originView];
  [*(a1 + 48) originRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [*(a1 + 56) assetViewerManager];
  LOBYTE(v18) = v4;
  v17 = [MessageAttachmentActionGenerator quicklookActionForURL:v5 messageObjectID:v21 mailboxObjectID:v20 subject:v6 senderDisplayName:v22 shouldShowReplyAll:v3 originView:v9 attachmentRect:v11 useFullScreenPresentation:v13 contentRepresentationHandlingDelegate:v15 assetViewerManager:v7, v18, v23, v16];

  [v17 performWithSender:*(a1 + 40) target:0];
}

uint64_t sub_1001A7244(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    a1 = [v3 _enhancedWindowingEnabled] ^ 1;
  }

  return a1;
}

uint64_t sub_1001A7294(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(v2 + 32) lastPathComponent];
      v5 = [EFPrivacy partiallyRedactedStringForString:v4];
      v6 = [*(v2 + 40) ef_publicDescription];
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "operationToOpenResource failed to open content at URL %{public}@: %{public}@", &v7, 0x16u);
    }

    return (*(*(v2 + 48) + 16))();
  }

  return result;
}

Class sub_1001A83E8(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_1006DD3E0)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_1001A8610;
    v7[4] = &unk_10064C4F8;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/PrivateFrameworks/WorkoutKitServices.framework/WorkoutKitServices";
    qword_1006DD3E0 = _sl_dlopen();
  }

  if (!qword_1006DD3E0)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *WorkoutKitServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MFAttachmentShowcase.m" lineNumber:38 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("WorkoutKitXPCServiceHelper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getWorkoutKitXPCServiceHelperClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MFAttachmentShowcase.m" lineNumber:39 description:{@"Unable to find class %s", "WorkoutKitXPCServiceHelper"}];

LABEL_10:
    __break(1u);
  }

  qword_1006DD3D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001A8610()
{
  result = _sl_dlopen();
  qword_1006DD3E0 = result;
  return result;
}

void sub_1001A871C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD3E8;
  qword_1006DD3E8 = v1;
}

id sub_1001A89F8(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) contactForContext:*(a1 + 40) handler:a2];

  return v2;
}

void sub_1001A8BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1001A8C24(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001A8D38;
  v6[3] = &unk_1006506B0;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = *(a1 + 32);
  v4 = v3;
  v8 = v4;
  v5 = +[EFScheduler mainThreadScheduler];
  [v5 performBlock:v6];

  objc_destroyWeak(&v9);
}

void sub_1001A8D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v18 = v16;

  objc_destroyWeak((v17 + 48));
  _Unwind_Resume(a1);
}

void sub_1001A8D38(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = +[MFAvatarView log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [a1[4] emailAddress];
    v5 = [v4 emailAddressValue];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 ef_publicDescription];
    }

    else
    {
      v8 = [v4 stringValue];
      v7 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v8];
    }

    v17 = 138543362;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating avatar for %{public}@", &v17, 0xCu);
  }

  v9 = [a1[5] image];
  v10 = [WeakRetained avatarView];
  [v10 setImage:v9];

  v11 = a1[5];
  v12 = [WeakRetained avatarView];
  v13 = [v12 traitCollection];
  v14 = [v11 needsBorderFor:{objc_msgSend(v13, "userInterfaceStyle")}];

  v15 = [WeakRetained avatarView];
  [WeakRetained frame];
  [MUIAvatarImageGenerator roundAvatarView:v15 withBorder:v14 size:v16];
}

void sub_1001A9380(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v3;
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6 = [WeakRetained contactAvatarView];
  [v6 setContacts:v5];

  [WeakRetained setHidden:0];
}

void sub_1001A9444(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1001A947C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHidden:1];
}

void sub_1001A96BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFAvatarView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001A98DC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD3F8;
  qword_1006DD3F8 = v1;
}

id sub_1001A9AD4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = [MFBayAdoption openMessageInNewWindowConfigurationWithMessageListItem:a1[4] messageList:a1[5]];
  v6 = a1[7];
  if (v6)
  {
    (*(v6 + 16))();
  }

  return v5;
}

void sub_1001A9D40(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1001A9DA0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MFBayAdoption log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(NSError *)v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10048AE80();
  }
}

void sub_1001A9E64(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MFBayAdoption log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(NSError *)v2 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    sub_10048AEC4();
  }
}

void sub_1001AA5AC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setReferenceMessageListItem:*(a1 + 32)];
  [v3 setReferenceMessageList:*(a1 + 40)];
  [v3 setShowAsConversation:{objc_msgSend(*(a1 + 32), "count") > 1}];
}

void sub_1001AAA10(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  v3 = *(a1 + 48);

  dispatch_group_leave(v3);
}

void sub_1001AAA50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_self();
  sub_1001AAC38(v8, v9, v6, 1, v7);
}

uint64_t sub_1001AAAF4(uint64_t a1)
{
  v2 = +[MFBayAdoption log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    if (v3)
    {
      v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (%lu drafts failed)", [*(a1 + 32) count]);
    }

    else
    {
      v4 = &stru_100662A88;
    }

    *buf = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Draft migration completed%{public}@", buf, 0xCu);
    if (v3)
    {
    }
  }

  v5 = *(a1 + 40);
  if ([*(a1 + 32) count])
  {
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  return (*(v5 + 16))(v5, v6);
}

void sub_1001AAC38(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  objc_opt_self();
  v11 = [v8 targetContentIdentifier];

  if (!v11)
  {
    v12 = [v8 userInfo];
    v13 = [v12 objectForKeyedSubscript:MSMailActivityHandoffComposeKeyAutosaveID];

    if (!v13)
    {
      v14 = +[NSUUID UUID];
      v13 = [v14 UUIDString];

      v15 = +[MFBayAdoption log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10048AFF0(v15);
      }
    }

    v16 = MSMailComposeWindowTargetContentIdentifierWithIdentifier();
    [v8 setTargetContentIdentifier:v16];
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001AAE64;
  v20[3] = &unk_1006534D0;
  v17 = v8;
  v21 = v17;
  v24 = a4;
  v18 = v9;
  v22 = v18;
  v19 = v10;
  v23 = v19;
  [v17 _createUserActivityDataWithOptions:0 completionHandler:v20];
}

void sub_1001AAE64(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001AAFCC;
  v10[3] = &unk_1006534A8;
  v7 = v5;
  v11 = v7;
  v12 = *(a1 + 32);
  v16 = *(a1 + 56);
  v13 = *(a1 + 40);
  v15 = *(a1 + 48);
  v8 = v6;
  v14 = v8;
  v9 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v9 performBlock:v10];
}

void sub_1001AAF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_1001AAFCC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [NSMutableDictionary dictionaryWithCapacity:4];
    [v2 setObject:*(a1 + 32) forKeyedSubscript:&off_1006742E8];
    v3 = [*(a1 + 40) activityType];
    [v2 setObject:v3 forKeyedSubscript:&off_100674300];

    v4 = [*(a1 + 40) activityType];
    [v2 setObject:v4 forKeyedSubscript:&off_100674318];

    v5 = +[NSDate date];
    [v2 setObject:v5 forKeyedSubscript:&off_100674330];

    v6 = [[UIActivityContinuationAction alloc] initWithSettings:v2];
    v20[0] = SBSOpenApplicationLayoutRoleCenter;
    v19[0] = SBSOpenApplicationOptionKeyLayoutRole;
    v19[1] = FBSOpenApplicationOptionKeyActions;
    v18 = v6;
    v7 = [NSArray arrayWithObjects:&v18 count:1];
    v20[1] = v7;
    v19[2] = FBSOpenApplicationOptionKeyActivateSuspended;
    v8 = [NSNumber numberWithBool:*(a1 + 72)];
    v20[2] = v8;
    v20[3] = &__kCFBooleanTrue;
    v19[3] = SBSOpenApplicationOptionKeyMigrateContentToScene;
    v19[4] = FBSOpenApplicationWithNewScene;
    v20[4] = &__kCFBooleanTrue;
    v19[5] = UISOpenApplicationOptionKeyTargetContentIdentifier;
    v9 = [*(a1 + 40) targetContentIdentifier];
    v20[5] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:6];
    v11 = [FBSOpenApplicationOptions optionsWithDictionary:v10];

    v12 = *(a1 + 48);
    v13 = kMFMobileMailBundleIdentifier;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001AB384;
    v16[3] = &unk_100653480;
    v17 = *(a1 + 64);
    [v12 openApplication:v13 withOptions:v11 completion:v16];
  }

  else
  {
    v14 = +[MFBayAdoption log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 56) ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10048B034();
    }

    v15 = *(a1 + 64);
    if (v15)
    {
      (*(v15 + 16))(v15, 0);
    }
  }
}

void sub_1001AB384(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (!v8)
  {
    v10 = +[MFBayAdoption log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [v7 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      sub_10048B078();
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }
}

void sub_1001AB590(uint64_t a1, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001AB654;
  v4[3] = &unk_1006534F8;
  v5 = *(a1 + 32);
  v6 = a2;
  v3 = [EFScheduler mainThreadScheduler:_NSConcreteStackBlock];
  [v3 performBlock:v4];
}

void sub_1001AB7C4(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD408;
  qword_1006DD408 = v1;
}

void sub_1001ABAC0(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) performInteractionWithType:objc_msgSend(v3 completion:{"selectedFeedbackType"), *(a1 + 40)}];
}

void sub_1001ABF00(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MFCatchUpFeedbackTriageInteraction log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 ef_publicDescription];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found message for feedback triage interaction %{public}@", &v6, 0xCu);
  }

  [MUICatchUpFeedbackController provideAutomaticSummaryFeedbackWithType:*(a1 + 40) message:v3 sourceViewController:*(a1 + 32)];
}

void sub_1001AC010(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MFCatchUpFeedbackTriageInteraction log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = [v3 ef_publicDescription];
    sub_10048B114(v5, v6, v7, v4);
  }
}

void sub_1001ACBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40)
{
  *(v42 - 240) = a1;

  _Unwind_Resume(*(v42 - 240));
}

void sub_1001AD08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001AD0D8(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained view];
    v7 = [v6 window];
    v8 = [v7 traitCollection];
    v9 = [v8 mf_supportsPopoverPresentation];
    v10 = [v12 mf_supportsPopoverPresentation];

    if (v9 != v10)
    {
      v11 = [v5 cancelActionHandler];
      v11[2](v11, 0);
    }
  }
}

void sub_1001AD510(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

double sub_1001AD550(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 view];
  [v2 frame];
  [v1 preferredHeightForWidth:v3];
  v5 = v4;

  return v5;
}

void sub_1001AD840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v17 = v15;

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001AD8A0(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v6 image];
    v5 = [WeakRetained avatarImageView];
    [v5 setImage:v4];
  }
}

void sub_1001AD930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1001ADC78(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD418;
  qword_1006DD418 = v1;
}

id sub_1001ADF14(uint64_t a1, uint64_t a2)
{
  v4 = MUILocalizedStringFromBucket();
  v5 = MUIImageNameForBucket();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001AE05C;
  v9[3] = &unk_100653620;
  v6 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v11 = a2;
  v10 = v6;
  v7 = [MFRecategorizationCardAction cardActionWithTitle:v4 shortTitle:0 imageName:v5 tintColor:0 handler:v9];

  [v7 setCategoryType:a2];

  return v7;
}

id sub_1001AE05C(uint64_t a1)
{
  [*(a1 + 32) setBucket:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 performInteractionWithCompletion:v3];
}

void sub_1001AE09C(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:?];
}

void sub_1001AE470(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 displayMessageObjectID];
  v5 = [v4 globalMessageID];

  v6 = +[MFCategoryTriageInteraction log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [v3 category];
    [v8 subtype];
    v9 = EMStringFromSubtype();
    v10 = [v3 category];
    v11 = [v10 isHighImpact];
    v12 = MUIStringFromBucket();
    v13 = [*(a1 + 40) extraLogging];
    v14 = v13;
    v15 = &stru_100662A88;
    v16 = 138413570;
    if (v13)
    {
      v15 = v13;
    }

    v17 = v7;
    v18 = 2048;
    v19 = v5;
    v20 = 2112;
    v21 = v9;
    v22 = 1024;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Recategorization metadata for %@ ID:%lld Predicted_Category:%@ High_Impact: %d Feedback_Category:%@%@", &v16, 0x3Au);
  }
}

void sub_1001AE67C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:*(a1 + 32)];
  [v3 setRadarDescription:*(a1 + 40)];
  [v3 setComponent:29];
  [v3 setClassification:8];
  [v3 setReproducibility:5];
  [v3 setCustomFooter:1];
}

void sub_1001AEC94(_Unwind_Exception *a1)
{
  v10 = v8;

  _Unwind_Resume(a1);
}

void sub_1001AEE14(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD428;
  qword_1006DD428 = v1;
}

id sub_1001AF60C(uint64_t a1)
{
  [*(a1 + 32) setShouldAskForConfirmation:0];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

id sub_1001AF668(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

void sub_1001AF6B8(id *a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_1001AF82C;
  v9 = &unk_1006536E8;
  v10 = a1[5];
  v11 = a1[6];
  v4 = [UISheetPresentationControllerDetent customDetentWithIdentifier:v3 resolver:&v6];
  v12 = v4;
  v5 = [NSArray arrayWithObjects:&v12 count:1, v6, v7, v8, v9];
  [a1[7] setDetents:v5];
}

double sub_1001AF82C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) view];
  [v2 frame];
  [v1 preferredHeightForWidth:v3];
  v5 = v4;

  return v5;
}

void sub_1001AFB34(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  [*(a1 + 32) setPresentationSource:v7];
  [*(a1 + 32) setContextualActionHandlerCompletion:v6];
}

id sub_1001AFEEC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 32);
  v4.super_class = MFCategorizationTriageInteraction;
  return objc_msgSendSuper2(&v4, "_performInteractionAfterPreparation:completion:", v1, v2);
}

id sub_1001AFF2C(uint64_t a1)
{
  [*(a1 + 32) setShouldFileRadar:1];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5.receiver = *(a1 + 32);
  v5.super_class = MFCategorizationTriageInteraction;
  return objc_msgSendSuper2(&v5, "_performInteractionAfterPreparation:completion:", v2, v3);
}

void sub_1001B0440(uint64_t a1, uint64_t a2)
{
  v4 = MUILocalizedStringFromBucket();
  v5 = MUIImageNameForBucket();
  v6 = [UIImage systemImageNamed:v5];
  v7 = *(a1 + 40);
  v14 = @"MailKBCategorizationPlistKey";
  v8 = [NSNumber numberWithInteger:a2];
  v15 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v10 = [UICommand commandWithTitle:v4 image:v6 action:v7 propertyList:v9];

  v11 = *(a1 + 32);
  if (a2)
  {
    v12 = 30;
  }

  else
  {
    v12 = 29;
  }

  v13 = [MFMailMenuCommand shortcutWithCommand:v10 menu:v12];
  [v11 addObject:v13];
}

BOOL sub_1001B0C44(id a1, EMMessageListItem *a2)
{
  v2 = [(EMMessageListItem *)a2 category];
  v3 = [v2 isHighImpact];

  return v3;
}

id sub_1001B0F24(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = MFCategoryHighImpactFeedbackTriageInteraction;
  return objc_msgSendSuper2(&v3, "performInteractionWithCompletion:", v1);
}

id *sub_1001B1C90(id *result, double a2)
{
  if (*(result + 64) == 1)
  {
    v4 = result;
    [result[4] frame];
    Height = CGRectGetHeight(v12);
    v6 = *(v4 + 7);
    v7 = Height < v6;
    v8 = 2.0;
    if (v7)
    {
      v8 = 1.0;
    }

    v9 = a2 + v6 * v8;
    v10 = v4[5];
    v11 = v4[6];

    return [v10 _layoutLabelBetweenViews:v11 leading:0 trailing:0 baseline:1 fillWidth:v9];
  }

  return result;
}

void sub_1001B24B0(uint64_t a1, void *a2)
{
  v10 = a2;
  [v10 frame];
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  CGRectGetWidth(v12);
  UIRoundToViewScale();
  x = v13.origin.x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetHeight(v13);
  UIRoundToViewScale();
  [v10 setFrame:{x, v7, width, height}];
  v8 = [v10 superview];

  if (!v8)
  {
    v9 = [*(a1 + 32) contentView];
    [v9 addSubview:v10];
  }
}

void sub_1001B2AE8(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = a2;
  [v19 frame];
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if (a3)
  {
    CGRectGetMidX(*(*(*(a1 + 40) + 8) + 32));
    v5 = v9;
    v6 = v10;
    v7 = v11;
    v8 = v12;
  }

  CGRectGetWidth(*&v5);
  UIRoundToViewScale();
  x = v21.origin.x;
  v21.origin.y = v10;
  v21.size.width = v11;
  v21.size.height = v12;
  CGRectGetHeight(v21);
  UIRoundToViewScale();
  v15 = v14;
  [v19 setFrame:{x, v14, v11, v12}];
  v16 = [v19 superview];

  if (!v16)
  {
    v17 = [*(a1 + 32) contentView];
    [v17 addSubview:v19];
  }

  v18 = *(*(a1 + 40) + 8);
  v18[4] = x;
  v18[5] = v15;
  v18[6] = v11;
  v18[7] = v12;
}

void sub_1001B2FA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  [v5 setFont:v4];
  [v5 set_fontForShortcutBaselineCalculation:v4];
}

double sub_1001B3888(uint64_t a1)
{
  v2 = [*(a1 + 32) text];
  [*(a1 + 32) setText:@"This is a long template string that is long enough to fill up two rows of collapsed message cells summary view."];
  v3 = *(a1 + 32);
  [*(a1 + 40) bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  [*(a1 + 32) setText:v2];

  return v7;
}

void sub_1001B46D8(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 32) setContentOffset:{0.0, *(a1 + 40)}];
  if (*(a1 + 48) == 1)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001B47CC;
    v10[3] = &unk_1006538F8;
    v12 = v3;
    v13 = v5;
    v14 = v7;
    v15 = v9;
    v11 = *(a1 + 32);
    [UIView performWithoutAnimation:v10];
  }
}

id sub_1001B47CC(uint64_t a1)
{
  MinY = CGRectGetMinY(*(a1 + 40));
  v3 = MinY - CGRectGetHeight(*(a1 + 40));
  Width = CGRectGetWidth(*(a1 + 40));
  Height = CGRectGetHeight(*(a1 + 40));
  v6 = *(a1 + 32);

  return [v6 _ensureViewsAreLoadedInRect:{0.0, v3, Width, Height + Height}];
}

uint64_t sub_1001B4854(uint64_t a1)
{
  [*(a1 + 32) setAnimatingScroll:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1001B4AE8(uint64_t a1, int a2)
{
  if (a2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1001B4C04;
    v4[3] = &unk_10064DE08;
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1001B4C14;
    v3[3] = &unk_10064C570;
    v3[4] = *(a1 + 40);
    [UIView animateWithDuration:0 delay:v4 usingSpringWithDamping:v3 initialSpringVelocity:0.5 options:0.0 animations:0.8 completion:10.0];
  }
}

id sub_1001B4EE8(uint64_t a1)
{
  [*(a1 + 32) setDocked:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 setNeedsLayout];
}

void sub_1001B53FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001B54AC;
  v3[3] = &unk_10064C7E8;
  v4 = *(a1 + 48);
  [v1 showComposeWithContext:v2 animated:1 initialTitle:0 presentationSource:0 completionBlock:v3];
}

void sub_1001B54AC(uint64_t a1)
{
  v1 = [*(a1 + 32) errorOnlyCompletionHandlerAdapter];
  v1[2](v1, 0);
}

void sub_1001B60F0(id a1)
{
  v1 = [MUISearchSuggestionCategory alloc];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SEARCH_SUGGESTION_CATEGORY_PEOPLE" value:&stru_100662A88 table:0];
  v4 = [v1 initWithDisplayName:v3];
  v5 = qword_1006DD438;
  qword_1006DD438 = v4;

  [qword_1006DD438 setParsecCategory:MSSearchSuggestionCategoryPeople];
  v6 = +[EFScheduler mainThreadScheduler];
  [v6 performBlock:&stru_100653960];

  v7 = +[MUISearchSuggestionCategoryScope genericSpotlightScope];
  v9 = v7;
  v8 = [NSArray arrayWithObjects:&v9 count:1];
  [qword_1006DD438 setScopes:v8];
}

void sub_1001B6270(id a1)
{
  v1 = [UIImage mui_imageWithSystemSymbolName:MFImageGlyphSearchPersonCompletion];
  [qword_1006DD438 setAtomImage:?];
}

void sub_1001B638C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD448;
  qword_1006DD448 = v1;
}

void sub_1001B655C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFConversationAssistantContextProvider;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

NSArray *__cdecl sub_1001B6C94(id a1, EMMailbox *a2)
{
  v2 = [(EMMailbox *)a2 account];
  v3 = [v2 emailAddresses];

  return v3;
}

NSString *__cdecl sub_1001B6CF4(id a1, ECEmailAddress *a2)
{
  v2 = [(ECEmailAddress *)a2 simpleAddress];

  return v2;
}

void sub_1001B7104(uint64_t a1)
{
  sub_1001B71E8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SAEmailEmail");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1006DD458 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getSAEmailEmailClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFConversationAssistantContextProvider.m" lineNumber:25 description:{@"Unable to find class %s", "SAEmailEmail"}];

    __break(1u);
  }
}

void sub_1001B71E8()
{
  v3[0] = 0;
  if (!qword_1006DD460)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1001B735C;
    v3[4] = &unk_10064C4F8;
    v3[5] = v3;
    v3[7] = 0;
    v3[8] = 0;
    v3[6] = "/System/Library/PrivateFrameworks/SAObjects.framework/SAObjects";
    qword_1006DD460 = _sl_dlopen();
  }

  if (!qword_1006DD460)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *SAObjectsLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"MFConversationAssistantContextProvider.m" lineNumber:23 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1001B735C()
{
  result = _sl_dlopen();
  qword_1006DD460 = result;
  return result;
}

void sub_1001B73C8(uint64_t a1)
{
  sub_1001B71E8();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SAPersonAttribute");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1006DD468 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getSAPersonAttributeClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MFConversationAssistantContextProvider.m" lineNumber:24 description:{@"Unable to find class %s", "SAPersonAttribute"}];

    __break(1u);
  }
}

void sub_1001B754C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD470;
  qword_1006DD470 = v1;
}

void sub_1001B7BE4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [*(a1 + 32) itemID];
  v6 = [v3 itemID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = +[MFConversationCellConfigurator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = [WeakRetained collectionView];
      v12 = [v11 indexPathForCell:*(a1 + 32)];
      v13 = [*(a1 + 32) itemID];
      v14 = *(a1 + 48);
      *buf = 138413314;
      v31 = v10;
      v32 = 2048;
      v33 = v9;
      v34 = 2112;
      v35 = v12;
      v36 = 2114;
      v37 = v13;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting viewModel configuration in oldIndexPath:%@ cell:%p currentIndexPath:%@ itemID: %{public}@ contentRequest: %@", buf, 0x34u);
    }

    v15 = [ConversationCellViewModel alloc];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001B7FE0;
    v26[3] = &unk_10064D108;
    v27 = v3;
    v28 = *(a1 + 48);
    v29 = WeakRetained;
    v16 = [(ConversationCellViewModel *)v15 initWithBuilder:v26];
    [*(a1 + 32) setViewModel:v16];

    v17 = [WeakRetained delegate];
    [v17 cellConfigurator:WeakRetained didConfigureCell:*(a1 + 32) atIndexPath:*(a1 + 40)];

    v18 = v27;
  }

  else
  {
    v18 = +[MFConversationCellConfigurator log];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v25 = [v3 itemID];
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      v21 = [WeakRetained collectionView];
      v22 = [v21 indexPathForCell:*(a1 + 32)];
      v23 = [*(a1 + 32) itemID];
      v24 = *(a1 + 48);
      *buf = 138544642;
      v31 = v25;
      v32 = 2112;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      v36 = 2112;
      v37 = v22;
      v38 = 2114;
      v39 = v23;
      v40 = 2112;
      v41 = v24;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Skipping viewModel configuration in cell itemID: %{public}@ oldIndexPath:%@ does not match the cell:%p currentIndexPath:%@ itemID: %{public}@, contentRequest: %@", buf, 0x3Eu);
    }
  }
}

void sub_1001B7FE0(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) flags];
  [v12 setMessageContentRequest:*(a1 + 40)];
  [v12 setRead:{objc_msgSend(v3, "read")}];
  [v12 setFlagged:{objc_msgSend(v3, "flagged")}];
  v4 = [*(a1 + 32) flagColors];
  [v12 setFlagColors:v4];

  [v12 setReplied:{objc_msgSend(v3, "replied")}];
  [v12 setForwarded:{objc_msgSend(v3, "forwarded")}];
  [v12 setRedirected:{objc_msgSend(v3, "redirected")}];
  [v12 setJunk:{objc_msgSend(v3, "isJunk")}];
  [v12 setVIP:{objc_msgSend(*(a1 + 32), "isVIP")}];
  [v12 setNotify:{objc_msgSend(*(a1 + 32), "conversationNotificationLevel") == 2}];
  [v12 setMute:{objc_msgSend(*(a1 + 32), "conversationNotificationLevel") == 1}];
  [v12 setBlockedSender:{objc_msgSend(*(a1 + 32), "isBlocked")}];
  [v12 setUnsubscribeType:{objc_msgSend(*(a1 + 32), "unsubscribeType")}];
  [v12 setHasAttachments:{objc_msgSend(*(a1 + 32), "hasAttachments")}];
  v5 = [*(a1 + 32) date];
  [v12 setDate:v5];

  v6 = [*(a1 + 32) senderList];
  [v12 setSenderList:v6];

  v7 = [*(a1 + 32) subject];
  [v12 setSubject:v7];

  v8 = [*(a1 + 32) summary];
  [v12 setSummary:v8];

  v9 = [*(a1 + 32) generatedSummary];
  [v12 setGeneratedSummary:v9];

  v10 = [[MUIAvatarImageContext alloc] initWithMessageListItem:*(a1 + 32) reducePlaceholderImage:1];
  [v12 setAvatarContext:v10];

  v11 = [*(a1 + 48) avatarGenerator];
  [v12 setAvatarGenerator:v11];
}

void sub_1001B8298(uint64_t a1)
{
  v2 = +[MFConversationCellConfigurator log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) itemID];
    sub_10048B2E4(v3, v4, v2);
  }
}

void sub_1001B8CD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) indexPathForCell:v3];
  if ([v4 item] >= *(a1 + 48))
  {
    v5 = +[MFConversationCellConfigurator log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = 138412546;
      v8 = v4;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "enumerateVisibleCellsWithBlock attempted to examine cell indexpath:%@ but only have %lu items", &v7, 0x16u);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001B8ED0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 expanded])
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1001B9028(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 expanded] & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }
}

id sub_1001B9364(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    CGAffineTransformMakeScale(&v7, 0.98, 0.98);
    v2 = *&v7.a;
    v3 = *&v7.c;
    v4 = *&v7.tx;
  }

  else
  {
    v2 = *&CGAffineTransformIdentity.a;
    v3 = *&CGAffineTransformIdentity.c;
    v4 = *&CGAffineTransformIdentity.tx;
  }

  v5 = *(a1 + 32);
  *&v7.a = v2;
  *&v7.c = v3;
  *&v7.tx = v4;
  [v5 setTransform:&v7];
  return [*(a1 + 32) setHighlighted:*(a1 + 40)];
}

void sub_1001B9964(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!a2)
  {
    [*(a1 + 32) setExpandingIndexPath:0];
    [WeakRetained setAnimatingHeightChange:0];
  }
}

void sub_1001B99E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 32) invalidateLayout];
  v6 = *(a1 + 40);
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 cellConfigurator:WeakRetained wantsToReloadCellAtIndexPaths:v4 animated:*(a1 + 64)];

  v5 = +[NSDate date];
  [WeakRetained setLastAnimatedExpansionTimestamp:v5];
}

void sub_1001B9AF8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained heightChangeAnimator];
  [v1 startAnimation];
}

void sub_1001B9E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  v16 = v14;
  objc_destroyWeak((v15 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B9EE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 cellConfigurator:WeakRetained wantsToReloadCellAtIndexPaths:&__NSArray0__struct animated:1];
}

void sub_1001BA5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1001BA634(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 frame];
  v7 = v6;
  [v5 frame];
  if (v7 >= v8)
  {
    if (v7 <= v8)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v9 = *(a1 + 32) == 0;
    v10 = -1;
  }

  else
  {
    v9 = *(a1 + 32) == 0;
    v10 = 1;
  }

  if (v9)
  {
    v11 = -v10;
  }

  else
  {
    v11 = v10;
  }

LABEL_9:

  return v11;
}

uint64_t sub_1001BA6D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001BA6F0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  [v10 frame];
  v13 = CGRectIntersection(v12, *(a1 + 48));
  height = v13.size.height;
  [v10 frame];
  v9 = height / v8;
  if (v9 > *(*(*(a1 + 32) + 8) + 24))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *(*(*(a1 + 32) + 8) + 24) = v9;
  }

  if (v9 >= 1.0)
  {
    *a4 = 1;
  }
}

void sub_1001BA8E8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1001BAC2C(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD480;
  qword_1006DD480 = v1;
}

void sub_1001BAEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v23 + 56));

  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v24 - 72));

  _Unwind_Resume(a1);
}

void sub_1001BAF50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = +[EFScheduler mainThreadScheduler];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001BB0A0;
  v8[3] = &unk_100653B88;
  objc_copyWeak(&v11, (a1 + 48));
  v9 = *(a1 + 40);
  v6 = v3;
  v10 = v6;
  objc_copyWeak(&v12, (a1 + 56));
  v13 = *(a1 + 64);
  v7 = [v4 onScheduler:v5 addLoadObserver:v8];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
}

void sub_1001BB064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  objc_destroyWeak((v17 + 56));

  objc_destroyWeak((v17 + 48));
  _Unwind_Resume(a1);
}

void sub_1001BB0A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _updateUserActivity:*(a1 + 32) withSearchableItemAttributeSetForMessage:*(a1 + 40)];
  if (v5)
  {
    [WeakRetained _updateUserActivity:*(a1 + 32) withHandoffAvailabilityForContentRepresentation:v5 message:*(a1 + 40)];
  }

  else
  {
    v8 = +[MFConversationHandoffCoordinator log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 40) ef_publicDescription];
      v10 = [v6 ef_publicDescription];
      sub_10048B3B4(v9, v10, buf, v8);
    }
  }

  [*(a1 + 32) setEligibleForPrediction:0];
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001BB29C;
  v13[3] = &unk_100653B60;
  objc_copyWeak(&v15, (a1 + 56));
  v14 = *(a1 + 32);
  v16 = *(a1 + 64);
  [WeakRetained _updateUserActivity:v11 withPersistentIDForMessage:v12 completion:v13];

  objc_destroyWeak(&v15);
}

void sub_1001BB29C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setUserActivity:*(a1 + 32)];
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) becomeCurrent];
  }
}

void sub_1001BB314(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MFConversationHandoffCoordinator log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(NSError *)v2 ef_publicDescription];
    sub_10048B424(v4, v5, v3);
  }
}

void sub_1001BBB90(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 stringValue];
  [*(a1 + 32) set_syRelatedUniqueIdentifier:v3];

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1001BBC20(uint64_t a1)
{
  v2 = +[MFConversationHandoffCoordinator log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) objectID];
    sub_10048B47C(v3, v5, v2);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1001BBE18(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD490;
  qword_1006DD490 = v1;
}

void sub_1001BBFDC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001BEDDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_1001BF198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v10;

  _Unwind_Resume(a1);
}

void sub_1001BF4A4(id a1, UIAction *a2)
{
  v5 = +[UIApplication sharedApplication];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"BIMI_KB_LINK" value:&stru_100662A88 table:@"Main"];
  v4 = [NSURL URLWithString:v3];
  [v5 openURL:v4 options:&__NSDictionary0__struct completionHandler:0];
}

void sub_1001BF570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1001BFD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v21 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001BFE14(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateStatusIndicators:v4];
  [WeakRetained _updateHorizontalStatusIndicators:v4];
}

void sub_1001C0148(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, ...)
{
  va_start(va, a13);

  objc_destroyWeak(va);
  objc_destroyWeak((v20 - 88));

  _Unwind_Resume(a1);
}

id sub_1001C0208(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001C0320;
  v9[3] = &unk_100653CB0;
  objc_copyWeak(&v12, (a1 + 48));
  v10 = *(a1 + 40);
  v11 = v3;
  v6 = v3;
  v7 = [v4 contactForContext:v5 handler:v9];

  objc_destroyWeak(&v12);

  return v7;
}

void sub_1001C0320(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5 && [v5 avatarType] == 3)
  {
    v10 = [WeakRetained delegate];
    v11 = [v10 actualSenderFutureForConversationItemHeader:WeakRetained];
    v12 = +[EFScheduler mainThreadScheduler];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001C04A8;
    v13[3] = &unk_100653C88;
    v13[4] = WeakRetained;
    v14 = *(a1 + 32);
    [v11 onScheduler:v12 addSuccessBlock:v13];
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v6, v7, v8);
}

void sub_1001C04A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 emailAddressValue];
  v5 = [v4 domain];

  if ([*(a1 + 32) showsBIMILearnMoreButton])
  {
    v6 = [*(a1 + 32) bimiLearnMoreButton];

    if (!v6)
    {
      if (v5)
      {
        v7 = +[MFConversationItemHeaderBlock log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [EFPrivacy fullyOrPartiallyRedactedStringForString:v5];
          v9 = *(a1 + 40);
          v10 = 138543618;
          v11 = v8;
          v12 = 2114;
          v13 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Adding BIMI learn more button with domain %{public}@ for context: %{public}@", &v10, 0x16u);
        }

        [*(a1 + 32) _addBIMILearnMoreButtonWithSenderDomain:v5];
      }
    }
  }
}

void sub_1001C0630(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v6 setAddressAtomTarget:WeakRetained action:"_primaryAddressAtomWasTapped:"];
  v4 = [WeakRetained primaryAtomList];
  v5 = [v4 addressAtoms];
  [v6 setAddressAtomSeparatorStyle:{2 * (objc_msgSend(v5, "count") < 2)}];

  [v6 setAddressAtomsArePrimary:1];
}

void sub_1001C0D20(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_1001C0D90(uint64_t a1, void *a2)
{
  v9 = a2;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v9 frame];
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  CGRectGetWidth(v11);
  UIRoundToViewScale();
  x = v12.origin.x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetHeight(v12);
  UIRoundToViewScale();
  [v9 setFrame:{x, v7, width, height}];
  v8 = [v9 superview];

  if (!v8)
  {
    [*(a1 + 32) addSubview:v9];
  }
}

void sub_1001C109C(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = a2;
  v5 = [v18 superview];

  if (!v5)
  {
    [*(a1 + 32) addSubview:v18];
  }

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1148846080;
  [v18 setContentHuggingPriority:0 forAxis:v6];
  v7 = objc_opt_new();
  if (a3)
  {
    v8 = [*(a1 + 40) objectAtIndexedSubscript:a3 - 1];
    v9 = [v18 centerXAnchor];
    v10 = [v8 centerXAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:*(a1 + 48)];
    [v7 addObject:v11];
  }

  else
  {
    v8 = [v18 leadingAnchor];
    v9 = [*(a1 + 32) leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    [v7 addObject:v10];
  }

  if ([*(a1 + 40) count] - 1 == a3)
  {
    v12 = [v18 trailingAnchor];
    v13 = [*(a1 + 32) trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v7 addObject:v14];
  }

  v15 = [v18 firstBaselineAnchor];
  v16 = [*(a1 + 32) firstBaselineAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  [v7 addObject:v17];

  [NSLayoutConstraint activateConstraints:v7];
}

void sub_1001C1A2C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 144), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1001C1B04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001C1B1C(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1001C1B7C(uint64_t a1, void *a2)
{
  v3 = [a2 localizedDescription];
  NSLog(@"Retrieving future attachment data failed with error: %@", v3);

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = *(a1 + 32);

  dispatch_group_leave(v6);
}

void sub_1001C1C00(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_1001C1C60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MFConversationItemHeaderBlock log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 localizedDescription];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Retrieving future rich link data failed with error: %@", &v8, 0xCu);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  dispatch_group_leave(*(a1 + 32));
}

void sub_1001C1D74(uint64_t a1)
{
  v2 = [*(a1 + 32) numberOfMessagesInConversationForConversationItemHeaderBlock:*(a1 + 40)];
  v3 = [MFMessageInfoViewController alloc];
  v9 = [*(a1 + 40) viewModel];
  v4 = [*(a1 + 40) contactStore];
  v5 = [(MFMessageInfoViewController *)v3 initWithViewModel:v9 contactsStore:v4 attachmentURLs:*(*(*(a1 + 56) + 8) + 40) richLinkURLs:*(*(*(a1 + 64) + 8) + 40) numberOfMessagesInConversation:v2];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v10 = [*(*(*(a1 + 48) + 8) + 40) view];
  [v10 frame];
  [*(*(*(a1 + 48) + 8) + 40) setPreferredContentSize:{320.0, v8}];

  v11 = [*(a1 + 40) delegate];
  [v11 conversationItemHeader:*(a1 + 40) presentViewController:*(*(*(a1 + 48) + 8) + 40)];
}

void sub_1001C24B0(uint64_t a1)
{
  if ([*(a1 + 32) _hasConversationLayout])
  {
    v2 = [*(a1 + 32) usingLargeTextLayout];
    v3 = *(a1 + 40);
    if (v2)
    {
      v8 = [*(a1 + 32) primaryStackView];
      v4 = *(a1 + 32);
      if (v3)
      {
        v5 = [v4 timestampLabel];
        [v8 removeArrangedSubview:v5];

        v9 = [*(a1 + 32) timestampLabel];
        [v9 removeFromSuperview];
      }

      else
      {
        v7 = [v4 timestampLabel];
        [v8 insertArrangedSubview:v7 atIndex:2];
      }
    }

    else
    {
      if (*(a1 + 40))
      {
        v6 = 0.0;
      }

      else
      {
        v6 = 1.0;
      }

      v10 = [*(a1 + 32) timestampLabel];
      [v10 setAlpha:v6];
    }
  }

  [*(a1 + 32) setNeedsUpdateConstraints];
  [*(a1 + 32) updateConstraintsIfNeeded];
  [*(a1 + 32) _updateStackViewSpacing];
  v11 = [*(a1 + 32) superview];
  [v11 layoutIfNeeded];
}

NSString *__cdecl sub_1001C2A54(id a1, NSString *a2)
{
  v2 = a2;
  v3 = [(NSString *)v2 emailAddressValue];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 displayName];
    v6 = [v5 emailAddressValue];

    if (v6 && ([v6 stringValue], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "simpleAddress"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, (v9 & 1) == 0))
    {
      v10 = [v4 simpleAddress];
    }

    else
    {
      v10 = [v4 stringValue];
    }

    v11 = v10;
  }

  else
  {
    v11 = [(NSString *)v2 stringValue];
  }

  return v11;
}

void sub_1001C3830(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD4A8;
  qword_1006DD4A8 = v1;
}

void sub_1001C4238(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_1001C4294(id a1)
{
  v1 = +[NSUserDefaults em_userDefaults];
  byte_1006DD4B8 = [v1 BOOLForKey:@"ShowConversationCellBorders"];
}

void sub_1001C49F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1001C4C90(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD4C8;
  qword_1006DD4C8 = v1;
}

void sub_1001C5C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

uint64_t sub_1001C5CB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 mailboxes];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

void sub_1001C62AC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 0;
  v3 = [v2 _retrieveFreeSpaceStatus:&v7];
  v4 = v7;
  v5 = *(a1 + 40);
  if (v5)
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4;
    }

    (*(v5 + 16))(v5, v3, v6);
  }
}

NSArray *__cdecl sub_1001C69DC(id a1, MailAccount *a2)
{
  v2 = [(MailAccount *)a2 allMailboxUids];
  v3 = [v2 ef_map:&stru_100653F48];

  return v3;
}

id sub_1001C6A44(id a1, MFMailboxUid *a2)
{
  v2 = [(MFMailboxUid *)a2 fullPath];

  return v2;
}

uint64_t sub_1001C6A74(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 40) + 16))();
  *(*(*(a1 + 48) + 8) + 24) = *a4;
  return result;
}

void sub_1001C6E6C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1001C70A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v33 - 128), 8);
  _Block_object_dispose((v33 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1001C710C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 objectForKey:NSFileSize];
  v8 = [v7 integerValue];

  *(*(*(a1 + 32) + 8) + 24) += v8;
  if ([v11 rangeOfString:@"/Attachments/"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v11 rangeOfString:@"/Messages/"];
    v10 = 48;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 56;
    }
  }

  else
  {
    v10 = 40;
  }

  *(*(*(a1 + v10) + 8) + 24) += v8;
}

void sub_1001C72C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C72DC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 objectForKeyedSubscript:NSFileReferenceCount];
  v5 = [v4 integerValue];

  if (v5 == 1)
  {
    v6 = [v7 fileSize];
  }

  else
  {
    v6 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) += v6;
}

void sub_1001C7510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C7570(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 fileCreationDate];
  if ([v6 ef_isEarlierThanDate:*(a1 + 32)])
  {
    v7 = [v5 objectForKeyedSubscript:NSFileSize];
    *(*(*(a1 + 48) + 8) + 24) += [v7 longLongValue];

    [*(a1 + 40) removeItemAtPath:v8 error:0];
  }
}

void sub_1001C7704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C771C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:NSFileReferenceCount];
  v7 = [v6 integerValue];

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 removeItemAtPath:v12 error:0];

  if (v7 == 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 == 1)
  {
    v11 = [v5 fileSize];
  }

  else
  {
    v11 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) += v11;
}

void sub_1001C7A20(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 fileModificationDate];
  v7 = [v6 ef_isEarlierThanDate:*(a1 + 32)];

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1001C7B14(id a1, NSFileManager *a2, NSString *a3, NSDictionary *a4, BOOL *a5)
{
  v7 = a2;
  v6 = a3;
  if ([(NSString *)v6 hasSuffix:@"/Messages"])
  {
    [(NSFileManager *)v7 removeItemAtPath:v6 error:0];
  }
}

void sub_1001C7E00(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1001C8194(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1001C8224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFExpandableCaptionView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001C8C18(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _atomListLineSpacing];
  [v3 setLineSpacing:?];
}

id sub_1001C943C(uint64_t a1)
{
  [*(a1 + 32) _reattachBottomConstraint];
  [*(a1 + 32) updateConstraintsIfNeeded];
  if (*(a1 + 48))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  v3 = [*(a1 + 32) captionLabel];
  [v3 setAlpha:v2];

  if (*(a1 + 48))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) atomListStackView];
  [v5 setAlpha:v4];

  v6 = *(a1 + 40);

  return [v6 playAnimations];
}

id sub_1001C94FC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) _setRecipientDetailsVisible:0];
  }

  v4 = *(a1 + 40);

  return [v4 playCompletions:a2];
}

void sub_1001CA748(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) isEqualToString:@"FromAtomsKey"];
  v4 = [*(a1 + 32) isEqualToString:@"ReplyToAtomsKey"];
  v5 = "_recipientAtomPressed:";
  if (v3)
  {
    v5 = "_senderAtomPressed:";
  }

  if (v4)
  {
    v6 = "_replyToAtomPressed:";
  }

  else
  {
    v6 = v5;
  }

  [v11 setAddressAtomTarget:*(a1 + 40) action:v6];
  v7 = [*(a1 + 40) font];

  if (v7)
  {
    v8 = [*(a1 + 40) font];
    [v11 setOverrideFont:v8];
  }

  if (+[UIDevice mf_isPadIdiom])
  {
    v9 = [*(a1 + 40) delegate];
    v10 = [v9 popoverManagerForExpandableCaptionView:*(a1 + 40)];

    [v10 addPassthroughViewProvider:v11];
  }
}

void sub_1001CA868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_1001CB28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1001CBCBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001CBD6C;
  v3[3] = &unk_10064C7E8;
  v4 = *(a1 + 48);
  [v1 showComposeWithContext:v2 animated:1 initialTitle:0 presentationSource:0 completionBlock:v3];
}

void sub_1001CBD6C(uint64_t a1)
{
  v1 = [*(a1 + 32) errorOnlyCompletionHandlerAdapter];
  v1[2](v1, 0);
}

void sub_1001CD4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (v17)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1001CD54C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 flagColor];
  [*(a1 + 32) setFlagColor:v3];

  v4 = [*(a1 + 32) flagColor];

  if (v4)
  {
    v5 = [*(a1 + 32) flagColor];
    +[MFFlagTriageInteraction setDefaultColor:](MFFlagTriageInteraction, "setDefaultColor:", [v5 unsignedIntegerValue]);
  }

  [*(a1 + 32) performInteractionWithCompletion:*(a1 + 40)];
}

void sub_1001CD784(uint64_t a1, uint64_t a2)
{
  v4 = [MFFlagColorTriageInteraction _localizedColorNameFromFlagColor:a2];
  v5 = [UIColor mf_colorFromFlagColor:a2];
  v19 = v5;
  v6 = [NSArray arrayWithObjects:&v19 count:1];
  v7 = [UIImageSymbolConfiguration configurationWithPaletteColors:v6];

  v8 = +[EFDevice currentDevice];
  if ([v8 isPad])
  {
    v9 = [UIImage systemImageNamed:MFImageGlyphColorPicker];
    v10 = [v9 imageByApplyingSymbolConfiguration:v7];
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 40);
  v12 = [NSNumber numberWithUnsignedInteger:a2, @"MailKBFlagColorPlistKey"];
  v18 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v14 = [UICommand commandWithTitle:v4 image:v10 action:v11 propertyList:v13];

  v15 = *(a1 + 32);
  v16 = [MFMailMenuCommand shortcutWithCommand:v14 menu:26];
  [v15 addObject:v16];
}

id sub_1001CE0B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v9.receiver = v2;
  v9.super_class = MFGeneratedSummaryCollectionItemID;
  v4 = objc_msgSendSuper2(&v9, "initWithCoder:", v3);
  if (v4)
  {
    v5 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_anchorMessageItemID"];
    v6 = *(a1 + 40);
    v7 = *(v6 + 8);
    *(v6 + 8) = v5;
  }

  return v4;
}

void sub_1001CE228(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5.receiver = *(a1 + 40);
  v5.super_class = MFGeneratedSummaryCollectionItemID;
  objc_msgSendSuper2(&v5, "encodeWithCoder:", v2);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) anchorMessageItemID];
  [v3 encodeObject:v4 forKey:@"EFPropertyKey_anchorMessageItemID"];
}

void sub_1001CE310(id a1)
{
  v1 = [MUISearchSuggestionCategory alloc];
  v2 = +[MUISearchSuggestionCategory suggestedSearchCategory];
  v3 = [v1 initWithDisplayName:0 groupingCategory:v2];
  v4 = qword_1006DD4E8;
  qword_1006DD4E8 = v3;

  [qword_1006DD4E8 setParsecCategory:MSSearchSuggestionCategoryFreeText];
  v5 = +[MUISearchSuggestionCategoryScope genericSpotlightScope];
  v7 = v5;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [qword_1006DD4E8 setScopes:v6];
}

void sub_1001CE408(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1001CF300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17)
{
  v22 = v21;

  _Unwind_Resume(a1);
}

id sub_1001CF34C(uint64_t a1)
{
  v2 = [*(a1 + 40) _alertTitleForDisplayName:*(a1 + 48) selectedBucket:*(a1 + 72) categoryMessageCount:*(a1 + 80) totalMessageCount:*(a1 + 88)];
  [*(a1 + 32) setTitle:v2];

  v3 = [*(a1 + 40) _alertMessageForDisplayName:*(a1 + 48) selectedBucket:*(a1 + 72) categoryMessageCount:*(a1 + 80) totalMessageCount:*(a1 + 88)];
  [*(a1 + 32) setMessage:v3];

  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 80);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);

  return [v4 _addMessageDeletionActionsForAlertController:v5 triageInteraction:v7 categoryMessageCount:v6 continuation:v8];
}

uint64_t sub_1001CF570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = [v6 displayName];
  [v6 _updateAlertController:v7 triageInteraction:v6 displayName:v8 selectedBucket:objc_msgSend(*(a1 + 32) categoryMessageCount:"selectedBucket") totalMessageCount:a3 continuation:{a2, *(a1 + 48)}];

  v9 = *(*(a1 + 56) + 16);

  return v9();
}

void sub_1001CFC60(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = qword_1006DD4F8;
  qword_1006DD4F8 = v1;
}

void sub_1001CFCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFKeyboardAvoidance;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001D01F0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1001D0254(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 8) allObjects];
  if ([v4 count])
  {
  }

  else
  {
    v2 = *(*(a1 + 32) + 24);

    if (v2 == 1)
    {
      v3 = *(a1 + 32);

      [v3 _unregisterForKeyboardNotifications];
    }
  }
}

void sub_1001D06C8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t sub_1001D0934(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v11 = 138543874;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#keyboard adjust avoidable <%{public}@:%p> with overlap %g", &v11, 0x20u);
  }

  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = *(a1 + 32);
    v9 = NSStringFromCGRect(*(a1 + 56));
    v11 = 138543874;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#keyboard adjust avoidable <%{public}@:%p> with frame overlap %@", &v11, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    return [*(a1 + 32) keyboardAvoidance:*(a1 + 40) adjustForFrameOverlap:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    return [*(a1 + 32) keyboardAvoidance:*(a1 + 40) adjustForOverlap:*(a1 + 48)];
  }

  return result;
}

void sub_1001D1378(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD508;
  qword_1006DD508 = v1;
}

void sub_1001D14F4(uint64_t a1)
{
  v4 = [*(a1 + 32) _createConfirmationViewController];
  v2 = [*(a1 + 32) suggestion];
  v3 = [v2 suggestionDelegate];
  [v3 presentViewController:v4];
}

void sub_1001D156C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1001D1A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1001D1ACC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained unsubscribe];
}

void sub_1001D1BCC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[MFListUnsubscribeSuggestion_iOS log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      NSStringFromClass(v5);
      objc_claimAutoreleasedReturnValue();
      sub_10048B6B0();
    }

    [*(a1 + 32) _showErrorAlert:v3];
  }

  else
  {
    v6 = +[MFListUnsubscribeSuggestion_iOS log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) listUnsubscribeCommand];
      sub_10048B6F4([v7 isMailtoOperation], buf, v6, v7);
    }

    v16.receiver = *(a1 + 32);
    v16.super_class = MFListUnsubscribeSuggestion_iOS;
    objc_msgSendSuper2(&v16, "unsubscribe");
    if ([*(a1 + 32) shouldShowICloudUnsubscribe])
    {
      v8 = +[UIApplication sharedApplication];
      v9 = [v8 getiCloudMailCleanupService];
      v10 = [*(a1 + 32) listUnsubscribeCommand];
      v11 = [v10 sender];
      v12 = [v11 emailAddressValue];
      v13 = [v12 simpleAddress];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001D1E6C;
      v14[3] = &unk_10064DD80;
      v14[4] = *(a1 + 32);
      v15 = 0;
      [v9 blockSenderWithSenderEmailAddress:v13 entryPoint:@"/mail/group_by_sender_view/banner" completionHandler:v14];
    }
  }
}

id *sub_1001D1E6C(id *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = +[MFListUnsubscribeSuggestion_iOS log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      NSStringFromClass(v4);
      objc_claimAutoreleasedReturnValue();
      sub_10048B764();
    }

    return [v2[4] _showErrorAlert:v2[5]];
  }

  return result;
}

void sub_1001D1FF0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[MFListUnsubscribeSuggestion_iOS log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      NSStringFromClass(v4);
      objc_claimAutoreleasedReturnValue();
      sub_10048B7BC();
    }
  }
}

void sub_1001D2168(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"ALERT_UNSUBSCRIBE_ERROR_TITLE" value:&stru_100662A88 table:@"Main"];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"ALERT_UNSUBSCRIBE_ERROR" value:&stru_100662A88 table:@"Main"];
  v11 = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_100662A88 table:@"Main"];
  v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

  [v11 addAction:v8];
  v9 = [*(a1 + 32) suggestion];
  v10 = [v9 suggestionDelegate];
  [v10 presentViewController:v11];
}

void sub_1001D2480(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_1001D24AC(id a1, EDAccount *a2)
{
  v2 = a2;
  if ([(EDAccount *)v2 conformsToProtocol:&OBJC_PROTOCOL___EDReceivingAccount])
  {
    v3 = [(EDAccount *)v2 emailAddresses];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1001D2620(uint64_t a1)
{
  [*(a1 + 32) setMailAccounts:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [v2 mailAccounts];
  v4 = [v2 _activeNonLocalAccountsWithMailAccounts:v3];
  [*(a1 + 32) setDisplayedAccounts:v4];

  [*(a1 + 32) setOrderedAccounts:0];
  [*(a1 + 32) setFocusedAccounts:0];
  v5 = [*(a1 + 48) focusedAccountIdentifiers];
  if ([v5 count])
  {
    v6 = [*(a1 + 32) displayedAccounts];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001D27A8;
    v8[3] = &unk_100653130;
    v9 = v5;
    v7 = [v6 ef_filter:v8];
    [*(a1 + 32) setFocusedAccounts:v7];
  }

  [MailAccount performOnAccounts:*(a1 + 40) accountBlock:&stru_1006542B8];
}

id sub_1001D27A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

BOOL sub_1001D2800(id a1, MailAccount *a2)
{
  v2 = a2;
  if ([(MailAccount *)v2 isActive])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [(MailAccount *)v2 accountConduit];
    }

    v4 = [(MailAccount *)v2 resetSpecialMailboxesCanPostNotifications:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id sub_1001D29B8(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id sub_1001D2E40(id a1, MailAccount *a2)
{
  v2 = [(MailAccount *)a2 uniqueID];

  return v2;
}

uint64_t sub_1001D3048(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [FavoriteItem itemForAccount:a2];
  v7 = [FavoriteItem itemForAccount:v5];
  v8 = *(a1 + 32);
  v9 = [v6 account];
  v10 = [v9 uniqueID];
  v11 = [v8 indexOfObject:v10];

  v12 = *(a1 + 32);
  v13 = [v7 account];
  v14 = [v13 uniqueID];
  v15 = [v12 indexOfObject:v14];

  if (v11 < v15)
  {
    v16 = -1;
  }

  else
  {
    v16 = v11 > v15;
  }

  return v16;
}

BOOL sub_1001D31F4(id a1, MailAccount *a2)
{
  v2 = a2;
  [(MailAccount *)v2 uniqueIdForPersistentConnection];
  v3 = PCSettingsGetPollInterval() != -1;

  return v3;
}

void sub_1001D33D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001D372C(id a1)
{
  v4.width = 36.0;
  v4.height = 36.0;
  UIGraphicsBeginImageContextWithOptions(v4, 0, 0.0);
  v1 = UIGraphicsGetImageFromCurrentImageContext();
  v2 = qword_1006DD518;
  qword_1006DD518 = v1;

  UIGraphicsEndImageContext();
}

void sub_1001D4158(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1001D4268(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1001D4E08(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 imageProperties];
  [v3 setTintColor:v2];
}

void sub_1001D595C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFMailboxFilterPickerControl;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001D6DB4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1001D7048(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id sub_1001D7380(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) indexPathForFilter:a2];

  return v2;
}

BOOL sub_1001D74D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 section];
  v5 = v4 == [*(a1 + 32) section];

  return v5;
}

id sub_1001D7A64(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) filterAtIndexPath:a2];

  return v2;
}

id sub_1001D7E4C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) filterMatchingCriterion:a2];

  return v2;
}

id sub_1001D7F0C(id a1, NSString *a2)
{
  v2 = [MailAccount accountWithUniqueId:a2];
  if (v2)
  {
    v3 = [MFMessageCriterion criterionForAccount:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001D8070(id a1, MFMessageCriterion *a2)
{
  v2 = a2;
  v3 = [MFMailboxFilter alloc];
  v4 = [(MFMessageCriterion *)v2 name];
  v5 = [(MFMailboxFilter *)v3 initWithType:8 name:v4 description:0 criterion:v2];

  return v5;
}

void sub_1001D86FC()
{
  v0 = +[MFURLRoutingRequest log];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_10048B814();
  }
}

id sub_1001D8A34(uint64_t a1, void *a2)
{
  v3 = [a2 emailAddresses];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

void sub_1001D8CC8(uint64_t a1)
{
  v4 = [*(a1 + 32) scene];
  v2 = [v4 mailboxPickerController];
  [v2 selectCombinedMailbox:*(a1 + 40)];

  v3 = *(a1 + 48);
  v5 = +[NSNull null];
  [v3 finishWithResult:?];
}

void sub_1001D9254(uint64_t a1)
{
  v6 = [*(a1 + 32) scene];
  v2 = [v6 mailboxPickerController];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) queryItems];
  [v2 selectMailbox:v3 urlQueryItems:v4];

  v5 = *(a1 + 56);
  v7 = +[NSNull null];
  [v5 finishWithResult:?];
}

void sub_1001D937C(id a1)
{
  v3[0] = MFCombinedMailboxAllInbox;
  v3[1] = MFCombinedMailboxAllDrafts;
  v3[2] = MFCombinedMailboxAllSent;
  v3[3] = MFCombinedMailboxAllArchive;
  v3[4] = MFCombinedMailboxAllTrash;
  v3[5] = MFCombinedMailboxAllJunk;
  v3[6] = MFCombinedMailboxFlagged;
  v3[7] = MFCombinedMailboxUnread;
  v3[8] = MFCombinedMailboxToday;
  v3[9] = MFCombinedMailboxToCC;
  v3[10] = MFCombinedMailboxAttachments;
  v3[11] = MFCombinedMailboxThreadNotifications;
  v3[12] = MFCombinedMailboxMutedThreads;
  v3[13] = MFCombinedMailboxVIP;
  v1 = [NSArray arrayWithObjects:v3 count:14];
  v2 = qword_1006DD528;
  qword_1006DD528 = v1;
}

void sub_1001D95E4(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD538;
  qword_1006DD538 = v1;
}

void sub_1001D9708(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = qword_1006DD548;
  qword_1006DD548 = v1;
}

void sub_1001DA138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16)
{
  v20 = v18;

  _Unwind_Resume(a1);
}

void sub_1001DA18C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) daemonInterface];
    v2 = [v3 outgoingMessageRepository];
    [v2 deleteDraftsInMailbox:0 documentID:0 previousDraftObjectID:*(a1 + 32)];
  }

  if (*(a1 + 48))
  {
    v4 = +[MSAutosave autosave];
    [v4 removeAutosavedMessageWithIdentifier:*(a1 + 48)];
  }
}

uint64_t sub_1001DA544(uint64_t a1)
{
  v2 = +[MFMailComposeControllerViewDelegateHandler signpostLog];
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "MFMailComposeControllerViewDelegateHandlerShouldSendMail", "", v6, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1001DA760(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD558;
  qword_1006DD558 = v1;
}

void sub_1001DAAF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFMailComposeDeliveryController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001DABF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DAD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 40));

  _Unwind_Resume(a1);
}

void sub_1001DAD48(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  atomic_store(0, WeakRetained + 56);
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }
}

void sub_1001DBC54(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained[14])
  {
    v3 = WeakRetained;
    v2 = +[MSAutosave autosave];
    [v2 removeAutosavedMessageWithIdentifier:v3[3]];

    WeakRetained = v3;
  }
}

void sub_1001DBCE8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) messageData];
  [v4 setMessageData:v3];

  [v4 setAction:{objc_msgSend(*(*(a1 + 40) + 8), "action")}];
  [v4 setOriginalMessageID:*(a1 + 48)];
  [v4 setShouldSign:*(a1 + 64)];
  [v4 setShouldEncrypt:*(a1 + 65)];
  [v4 setConversationNotificationLevel:*(a1 + 56)];
}

uint64_t sub_1001DBDB4(void *a1)
{
  v2 = +[MFMailComposeDeliveryController log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Saving send later message completed.", v9, 2u);
  }

  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = *(v5 + 32);
  v7 = [*(v5 + 120) objectID];
  [v3 deleteDraftsInMailbox:v4 documentID:v6 previousDraftObjectID:v7];

  return (*(a1[7] + 16))();
}

void sub_1001DBE90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MFMailComposeDeliveryController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [v3 ef_publicDescription];
    sub_10048BA94(v5, &v6, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1001DBF70(uint64_t a1, void *a2)
{
  v59 = a2;
  v3 = +[MFActivityMonitor currentMonitor];
  [v3 reset];

  v4 = [v59 status];
  v5 = v4;
  if (v4 == 4)
  {
    v15 = +[MFMailComposeDeliveryController log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138412290;
      v63 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Delivery cancelled for draft message: %@", buf, 0xCu);
    }

    v18 = *(a1 + 32);
    v17 = *(a1 + 40);
    v19 = *(a1 + 56);
    v20 = [*(*(a1 + 48) + 120) objectID];
    v13 = [v17 saveDraftMessage:v19 mailboxObjectID:v18 previousDraftObjectID:v20];

    v21 = +[EFScheduler mainThreadScheduler];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1001DC7E4;
    v60[3] = &unk_100654578;
    v60[4] = *(a1 + 48);
    v61 = *(a1 + 32);
    [v13 onScheduler:v21 addSuccessBlock:v60];

    [v13 addFailureBlock:&stru_100654598];
    goto LABEL_23;
  }

  if (v4)
  {
    v22 = [v59 error];
    v13 = v22;
    if (v22)
    {
      v23 = [v22 userInfo];
      v24 = [v23 objectForKeyedSubscript:NSUnderlyingErrorKey];
      v25 = v24;
      if (v24)
      {
        v26 = v24;

        v13 = v26;
      }

      v27 = [MFError alloc];
      v28 = [v13 domain];
      v29 = [v13 code];
      v30 = [v13 userInfo];
      v31 = [v27 initWithDomain:v28 code:v29 userInfo:v30];

      v32 = [v13 localizedDescription];
      [v31 setLocalizedDescription:v32];
    }

    else
    {
      v31 = 0;
    }

    v33 = +[MFActivityMonitor currentMonitor];
    [v33 setShouldCancel:0];

    if (!v31)
    {
      v34 = MFLookupLocalizedString();
      v35 = [*(*(a1 + 48) + 8) account];
      v36 = [v35 hostname];
      v37 = [NSString stringWithFormat:v34, v36];

      v38 = [*(*(a1 + 48) + 48) domain];
      v39 = [*(*(a1 + 48) + 48) code];
      v40 = MFLookupLocalizedString();
      v31 = [MFError errorWithDomain:v38 code:v39 localizedDescription:v37 title:v40 userInfo:0];
    }

    v41 = +[MFMailComposeDeliveryController log];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(a1 + 32);
      v43 = [v31 ef_publicDescription];
      *buf = 138412546;
      v63 = v42;
      v64 = 2112;
      v65 = v43;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Delivery failed for draft message: %@ due to error: %@", buf, 0x16u);
    }

    if (v5 == 6)
    {
      v45 = *(a1 + 32);
      v44 = *(a1 + 40);
      v46 = *(a1 + 48);
      v47 = *(v46 + 32);
      v48 = [*(v46 + 120) objectID];
      [v44 deleteDraftsInMailbox:v45 documentID:v47 previousDraftObjectID:v48];

      v49 = [NSBundle bundleForClass:objc_opt_class()];
      v50 = [v49 localizedStringForKey:@"SAVED_TO_OUTBOX" value:&stru_100662A88 table:@"Main"];
      v51 = [v13 localizedDescription];
      v52 = [v50 stringByAppendingFormat:@" %@", v51];
      [v31 setLocalizedDescription:v52];

      v53 = +[MFMailComposeDeliveryController log];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = *(a1 + 32);
        *buf = 138412290;
        v63 = v54;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Queuing the draft message: %@ for future delivery attempt in outbox", buf, 0xCu);
      }
    }

    v55 = *(a1 + 48);
    v56 = *(v55 + 48);
    *(v55 + 48) = v31;

LABEL_23:
    v14 = 0;
    goto LABEL_24;
  }

  v6 = +[MFMailComposeDeliveryController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    *buf = 138412290;
    v63 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Delivered successfully, deleting draft message: %@", buf, 0xCu);
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(v10 + 32);
  v12 = [*(v10 + 120) objectID];
  [v8 deleteDraftsInMailbox:v9 documentID:v11 previousDraftObjectID:v12];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 postNotificationName:@"MailComposeControllerDidSendMail" object:*(a1 + 48)];
  v14 = 1;
LABEL_24:

  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 64) mailComposeDeliveryControllerDidAttemptToSend:*(a1 + 48) outgoingMessageDelivery:*(*(a1 + 48) + 8) result:v59];
  }

  if (v14)
  {
    v57 = *(a1 + 48);
    v58 = *(v57 + 104);
    if ((v58 - 4) >= 2)
    {
      if (v58 == 6)
      {
        [*(v57 + 96) markAsViewed];
        [*(*(a1 + 48) + 96) markAsForwarded];
      }
    }

    else
    {
      [*(v57 + 96) markAsViewed];
      [*(*(a1 + 48) + 96) markAsReplied];
    }
  }

  (*(*(a1 + 72) + 16))();
  (*(*(a1 + 80) + 16))();
}

void sub_1001DC7E4(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) delegate];
  [v3 mailComposeDeliveryController:*(a1 + 32) didMoveCancelledMessageToDrafts:v4 draftMailboxObjectID:*(a1 + 40)];
}

void sub_1001DC868(id a1, NSError *a2)
{
  v2 = a2;
  v3 = +[MFMailComposeDeliveryController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [(NSError *)v2 ef_publicDescription];
    sub_10048BAE0(v4, &v5, v3);
  }
}

void sub_1001DC9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

Class sub_1001DCBE4(uint64_t a1)
{
  v7[0] = 0;
  if (!qword_1006DD570)
  {
    v7[1] = _NSConcreteStackBlock;
    v7[2] = 3221225472;
    v7[3] = sub_1001DCE0C;
    v7[4] = &unk_10064C4F8;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/PrivateFrameworks/CoreRecents.framework/CoreRecents";
    qword_1006DD570 = _sl_dlopen();
  }

  if (!qword_1006DD570)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *CoreRecentsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MFMailComposeDeliveryController.m" lineNumber:40 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("CRRecentContactsLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = +[NSAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"Class getCRRecentContactsLibraryClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"MFMailComposeDeliveryController.m" lineNumber:41 description:{@"Unable to find class %s", "CRRecentContactsLibrary"}];

LABEL_10:
    __break(1u);
  }

  qword_1006DD568 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1001DCE0C()
{
  result = _sl_dlopen();
  qword_1006DD570 = result;
  return result;
}

void sub_1001DD400(id a1, unint64_t a2, BOOL a3)
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  [v4 setIdleTimerDisabled:v3];
}

void sub_1001DD5CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001DDAF8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [[EDSearchableIndexDiagnosticsSnapshot alloc] initWithDictionary:v4];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_1001DDE2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001DDE70(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v36 = v3;
    v38 = WeakRetained;
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1001DEAD4;
    v60[3] = &unk_100654650;
    v35 = objc_alloc_init(NSMutableDictionary);
    v61 = v35;
    v6 = objc_retainBlock(v60);
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_1001DEC90;
    v56[3] = &unk_100654678;
    v7 = v3;
    v57 = v7;
    v58 = v5;
    v8 = v6;
    v59 = v8;
    v9 = objc_retainBlock(v56);
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 3221225472;
    v52[2] = sub_1001DEDC4;
    v52[3] = &unk_1006546A0;
    v10 = v7;
    v53 = v10;
    v54 = v5;
    v11 = v8;
    v55 = v11;
    v40 = objc_retainBlock(v52);
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1001DEF18;
    v50[3] = &unk_1006546C8;
    v50[4] = v5;
    v12 = v11;
    v51 = v12;
    v13 = objc_retainBlock(v50);
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1001DF0A8;
    v48[3] = &unk_1006546C8;
    v48[4] = v5;
    v14 = v12;
    v49 = v14;
    v15 = objc_retainBlock(v48);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1001DF238;
    v45[3] = &unk_1006546F0;
    v16 = v10;
    v46 = v16;
    v17 = v14;
    v47 = v17;
    v39 = objc_retainBlock(v45);
    (v17[2])(v17, 0, @"Turbo mode", 0, 0);
    (v9[2])(v9, @"Total local messages", EMPersistenceStatisticsKeyMessages);
    (v9[2])(v9, @"Local indexable messages", EMPersistenceStatisticsKeyIndexableMessages);
    v18 = EMPersistenceStatisticsKeyMessagesIndexed;
    (v9[2])(v9, @"Local messages indexed", EMPersistenceStatisticsKeyMessagesIndexed);
    (v9[2])(v9, @"Local message bodies indexed", EMPersistenceStatisticsKeyMessageBodiesIndexed);
    (v39[2])(v39, @"Unindexed bodies in frecent mailboxes", @"% in frecent mailboxes", EMPersistenceStatisticsKeyPercentUnindexedBodiesInFrecentMailboxes);
    (v9[2])(v9, @"Local remaining messages to index", EMPersistenceStatisticsKeyMessagesToIndex);
    (v9[2])(v9, @"Local messages to redonate", EMPersistenceStatisticsKeyMessagesToRedonate);
    (v9[2])(v9, @"Remote indexable messages", EMPersistenceStatisticsKeyIndexableRemoteMessages);
    v34 = EMPersistenceStatisticsKeyRemoteMessagesIndexed;
    (v9[2])(v9, @"Remote messages indexed");
    (v9[2])(v9, @"Remote remaining messages to index", EMPersistenceStatisticsKeyRemoteMessagesToIndex);
    (v9[2])(v9, @"Remote messages to redonate", EMPersistenceStatisticsKeyRemoteMessagesToRedonate);
    (v9[2])(v9, @"Remote messages in largest account", EMPersistenceStatisticsKeyMessagesInLargestRemoteAccount);
    (v9[2])(v9, @"Indexable attachments", EMPersistenceStatisticsKeyIndexableAttachments);
    (v9[2])(v9, @"Attachments indexed", EMPersistenceStatisticsKeyAttachmentsIndexed);
    (v9[2])(v9, @"Remaining attachments to index", EMPersistenceStatisticsKeyAttachmentsToIndex);
    (v40[2])(v40, @"Indexing paused", EMPersistenceStatisticsKeyIndexPaused, 1);
    (v40[2])(v40, @"Indexing enabled for 'Maintenance'", EMPersistenceStatisticsKeyIndexingEnabledForMaintenance, 1);
    (v40[2])(v40, @"Indexing enabled for 'Budgeted'", EMPersistenceStatisticsKeyIndexingEnabledForBudgeted, 1);
    (v40[2])(v40, @"Indexing enabled for 'FastPass'", EMPersistenceStatisticsKeyIndexingEnabledForFastPass, 1);
    (v39[2])(v39, @"Messages received in the last 2 days", @"% Indexed", EMPersistenceStatisticsKeyPercentIndexedLastTwoDays);
    (v39[2])(v39, @"Messages received in the last month", @"% Indexed", EMPersistenceStatisticsKeyPercentIndexedLastMonth);
    v19 = [v16 objectForKeyedSubscript:v18];
    v33 = v16;
    v20 = [v19 integerValue];

    v21 = [v5 _calculateIndexingSpeedWithMessagesIndexed:v20];
    if (v21)
    {
      v22 = [NSString alloc];
      v23 = [v38 numberFormatter];
      v24 = v21;
      v25 = [v23 stringFromNumber:v21];
      v37 = [v22 initWithFormat:@"%@ per min", v25];

      v21 = v24;
    }

    else
    {
      v37 = @"Calculating...";
    }

    (v17[2])(v17, 3, @"View chart", 0, 0);
    (v17[2])(v17, 3, @"Now (~5s sample)", 0, v37);
    (v13[2])(v13, @"Last 15 mins", v20, 900.0);
    (v13[2])(v13, @"Last 30 mins", v20, 1800.0);
    (v13[2])(v13, @"Last 1 hour", v20, 3600.0);
    (v13[2])(v13, @"Last 2 hours", v20, 7200.0);
    (v13[2])(v13, @"Last 3 hours", v20, 10800.0);
    (v13[2])(v13, @"Last 6 hours", v20, 21600.0);
    (v13[2])(v13, @"Last 9 hours", v20, 32400.0);
    (v13[2])(v13, @"Last 1 day", v20, 86400.0);
    (v13[2])(v13, @"Last 7 days", v20, 604800.0);
    (v17[2])(v17, 3, @"Reset speed statistics", 0, 0);
    v26 = [v33 objectForKeyedSubscript:v34];
    v27 = [v26 integerValue];

    (v17[2])(v17, 4, @"View chart", 0, 0);
    (v15[2])(v15, @"Last 12 hours", v27, 43200.0);
    (v15[2])(v15, @"Last 1 day", v27, 86400.0);
    (v15[2])(v15, @"Last 2 days", v27, 172800.0);
    (v15[2])(v15, @"Last 3 days", v27, 259200.0);
    (v15[2])(v15, @"Last 4 days", v27, 345600.0);
    (v15[2])(v15, @"Last 5 days", v27, 432000.0);
    (v15[2])(v15, @"Last 6 days", v27, 518400.0);
    (v15[2])(v15, @"Last 7 days", v27, 604800.0);
    (v15[2])(v15, @"Last 8 days", v27, 691200.0);
    (v15[2])(v15, @"Last 9 days", v27, 777600.0);
    (v15[2])(v15, @"Last 10 days", v27, 864000.0);
    (v17[2])(v17, 4, @"Reset speed statistics", 0, 0);
    v28 = [v38 _reindexReasonsCache];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1001DF330;
    v43[3] = &unk_100654718;
    v43[4] = v38;
    v29 = v17;
    v44 = v29;
    [v28 enumerateObjectsWithOptions:2 usingBlock:v43];
    v30 = v21;
    (v17[2])(v29, 5, @"Reset reindexing reasons", 0, 0);
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1001DF488;
    v41[3] = &unk_10064C660;
    v41[4] = v38;
    v31 = v35;
    v42 = v31;
    v32 = +[EFScheduler mainThreadScheduler];
    [v32 performBlock:v41];

    v3 = v36;
    v5 = v38;
  }
}

void sub_1001DEAD4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v21 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(a1 + 32);
  v12 = [NSNumber numberWithInteger:a2];
  v13 = [v11 objectForKeyedSubscript:v12];

  if (!v13)
  {
    v14 = objc_alloc_init(NSMutableArray);
    v15 = *(a1 + 32);
    v16 = [NSNumber numberWithInteger:a2];
    [v15 setObject:v14 forKeyedSubscript:v16];
  }

  v17 = *(a1 + 32);
  v18 = [NSNumber numberWithInteger:a2];
  v19 = [v17 objectForKeyedSubscript:v18];
  v20 = [[MFMailDebugIndexStatusData alloc] initWithPrimaryText:v21 secondaryText:v9 labelText:v10];
  [v19 addObject:v20];
}

void sub_1001DEC90(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6 || ([*(a1 + 40) numberFormatter], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "objectForKeyedSubscript:", v5), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "stringFromNumber:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, !v9))
  {
    v9 = @"?";
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1001DEDC4(uint64_t a1, void *a2, void *a3, int a4)
{
  v13 = a2;
  v7 = a3;
  if (a4)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
    v9 = [v8 isEqual:&off_100674348];
    v10 = @"No";
    if (v9)
    {
      v10 = @"Yes";
    }

    v11 = v10;
  }

  else
  {
    v8 = [*(a1 + 40) numberFormatter];
    v12 = [*(a1 + 32) objectForKeyedSubscript:v7];
    v11 = [v8 stringFromNumber:v12];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1001DEF18(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v15 = a2;
  v7 = [*(a1 + 32) localIndexDiagnosticsSnapshotsCache];
  v8 = v7;
  if (!v7)
  {
    v8 = [*(a1 + 32) _loadCacheForKey:EDSearchableIndexDefaultsKeyLocalIndexSnapshots];
  }

  [*(a1 + 32) setLocalIndexDiagnosticsSnapshotsCache:v8];
  if (!v7)
  {
  }

  v9 = *(a1 + 32);
  v10 = [v9 localIndexDiagnosticsSnapshotsCache];
  v11 = [v9 _messagesIndexedInTimeInterval:v10 snapshots:a3 currentMessagesIndexed:a4];

  if (v11)
  {
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) numberFormatter];
    v14 = [v13 stringFromNumber:v11];
    (*(v12 + 16))(v12, 3, v15, 0, v14);
  }
}

void sub_1001DF0A8(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v15 = a2;
  v7 = [*(a1 + 32) remoteIndexDiagnosticsSnapshotsCache];
  v8 = v7;
  if (!v7)
  {
    v8 = [*(a1 + 32) _loadCacheForKey:EDSearchableIndexDefaultsKeyRemoteIndexSnapsnots];
  }

  [*(a1 + 32) setRemoteIndexDiagnosticsSnapshotsCache:v8];
  if (!v7)
  {
  }

  v9 = *(a1 + 32);
  v10 = [v9 remoteIndexDiagnosticsSnapshotsCache];
  v11 = [v9 _messagesIndexedInTimeInterval:v10 snapshots:a3 currentMessagesIndexed:a4];

  if (v11)
  {
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) numberFormatter];
    v14 = [v13 stringFromNumber:v11];
    (*(v12 + 16))(v12, 4, v15, 0, v14);
  }
}

void sub_1001DF238(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) objectForKeyedSubscript:a4];
  if (v8)
  {
    v9 = [NSString stringWithFormat:@"%@%%", v8];
  }

  else
  {
    v9 = @"N/A";
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001DF330(uint64_t a1, void *a2)
{
  v9 = [a2 componentsSeparatedByString:@": "];
  if ([v9 count] >= 2)
  {
    v3 = [v9 objectAtIndexedSubscript:0];
    v4 = [NSDate mf_copyDateInCommonFormatsWithString:v3];

    v5 = [*(a1 + 32) reindexDateFormatter];
    v6 = [v5 stringFromDate:v4];

    v7 = *(a1 + 40);
    v8 = [v9 objectAtIndexedSubscript:1];
    (*(v7 + 16))(v7, 5, v8, v6, 0);
  }
}

void sub_1001DF430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_1001DF488(uint64_t a1)
{
  [*(a1 + 32) setItems:*(a1 + 40)];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

void sub_1001DF620(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001DFB30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) section] == 3)
  {
    v2 = [WeakRetained localIndexDiagnosticsSnapshotsCache];
    v3 = [_TtC10MobileMail24IndexingSpeedViewFactory createWithData:v2 type:0];
    [WeakRetained presentViewController:v3 animated:1 completion:0];
  }

  else
  {
    if ([*(a1 + 32) section] != 4)
    {
      goto LABEL_6;
    }

    v2 = [WeakRetained remoteIndexDiagnosticsSnapshotsCache];
    v3 = [_TtC10MobileMail24IndexingSpeedViewFactory createWithData:v2 type:1];
    [WeakRetained presentViewController:v3 animated:1 completion:0];
  }

LABEL_6:
}

id sub_1001DFC68(uint64_t a1)
{
  result = [*(a1 + 32) section];
  if (result == 4)
  {
    v5 = +[NSUserDefaults em_userDefaults];
    [v5 removeObjectForKey:EDSearchableIndexDefaultsKeyRemoteIndexSnapsnots];

    v6 = *(a1 + 40);

    return [v6 setRemoteIndexDiagnosticsSnapshotsCache:0];
  }

  else if (result == 3)
  {
    v3 = +[NSUserDefaults em_userDefaults];
    [v3 removeObjectForKey:EDSearchableIndexDefaultsKeyLocalIndexSnapshots];

    v4 = *(a1 + 40);

    return [v4 setLocalIndexDiagnosticsSnapshotsCache:0];
  }

  return result;
}

id sub_1001DFD4C(uint64_t a1)
{
  v2 = +[NSUserDefaults em_userDefaults];
  [v2 removeObjectForKey:EDSearchableIndexDefaultsKeyLastKnownReindexReasons];

  v3 = *(a1 + 32);

  return [v3 setReindexReasonsCache:0];
}

void sub_1001DFE34(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001E1328(id a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v1 = mf_defaultsKeyForFeature();
  [v2 postNotificationName:v1 object:0];
}

void sub_1001E1504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E1540(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained scene];
    v3 = [v2 daemonInterface];
    v4 = [v3 messageRepository];
    [v4 resetAllPrecomputedThreadScopes];

    WeakRetained = v5;
  }
}

void sub_1001E15C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1001E16E4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1001E1908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v21 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E1974(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained dismissViewControllerAnimated:1 completion:0];
    v3 = dispatch_time(0, 250000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001E1A34;
    block[3] = &unk_10064C7E8;
    block[4] = v2;
    dispatch_after(v3, &_dispatch_main_q, block);
  }
}

void sub_1001E1A34(uint64_t a1)
{
  EFContentProtectionSimulateState();
  v2 = [*(a1 + 32) scene];
  v3 = [v2 daemonInterface];
  v4 = [v3 clientState];
  [v4 exitDaemon];

  v5 = dispatch_time(0, 100000000);

  dispatch_after(v5, &_dispatch_main_q, &stru_100654790);
}

void sub_1001E1ACC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001E1F4C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1001E21D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v20 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001E2274(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained scene];
    v3 = [v2 daemonInterface];
    v4 = [v3 clientState];
    [v4 exitDaemon];

    v5 = +[UIApplication sharedApplication];
    [v5 terminateWithSuccess];

    WeakRetained = v6;
  }
}

void sub_1001E27D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 localizedDescription];
  v5 = [NSString stringWithFormat:@"An error occurred while clearing the restoration state: %@", v4];

  [UIAlertController alertControllerWithTitle:@"Failed to Clear State" message:v5 preferredStyle:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001E2960;
  v6 = v8[3] = &unk_10064FCC0;
  v9 = v6;
  v7 = [UIAlertAction actionWithTitle:@"Bummer." style:0 handler:v8];
  [v6 addAction:v7];

  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

void sub_1001E3028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

void sub_1001E3118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1001E329C(uint64_t a1)
{
  v2 = [*(a1 + 32) scene];
  v1 = [v2 daemonInterface];
  [v1 repopulateBusinessesTables];
}

void sub_1001E3404(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1001E37D4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:@"Mail TTR - <description title>"];
  [v3 setRadarDescription:*(a1 + 32)];
  [v3 setClassification:6];
  [v3 setReproducibility:5];
  [v3 setComponent:25];
}

void sub_1001E39CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001E39F8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 32) >= 1)
  {
    v3 = 0;
    do
    {
      Mutable = CGPathCreateMutable();
      CGPathMoveToPoint(Mutable, 0, *(a1 + 40) * v3, *(a1 + 40));
      CGPathAddLineToPoint(Mutable, 0, *(a1 + 40) * 0.5 + *(a1 + 40) * v3, *(a1 + 40));
      CGPathAddLineToPoint(Mutable, 0, *(a1 + 40) + *(a1 + 40) * v3, 0.0);
      CGPathAddLineToPoint(Mutable, 0, *(a1 + 40) * 0.5 + *(a1 + 40) * v3, 0.0);
      CGPathCloseSubpath(Mutable);
      CGContextAddPath([v5 CGContext], Mutable);
      CGContextSetAlpha([v5 CGContext], 0.5);
      CGContextDrawPath([v5 CGContext], kCGPathFill);
      CGPathRelease(Mutable);
      ++v3;
    }

    while (v3 < *(a1 + 32));
  }
}

void sub_1001E3FB0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained textView];
  v4 = +[MailAccount mailAccounts];
  v5 = [WeakRetained _accountInformationFromAccounts:v4];
  if (v5)
  {
    [*(a1 + 32) appendFormat:@"%@\n\n", v5];
  }

  v6 = [WeakRetained _accountUnreadCountFromAccounts:v4];

  if (v6)
  {
    [*(a1 + 32) appendFormat:@"%@", v6];
  }

  v7 = [WeakRetained _mailboxUnreadCountInformations];

  if (v7)
  {
    [*(a1 + 32) appendFormat:@"%@", v7];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001E41A8;
  v10[3] = &unk_10064C660;
  v8 = v3;
  v11 = v8;
  v12 = *(a1 + 32);
  v9 = +[EFScheduler mainThreadScheduler];
  [v9 performBlock:v10];
}

void sub_1001E5264(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 mf_sizeForDirectoryAtURL:v3 error:&v9];
  v6 = v9;

  if ((v5 & 0x8000000000000000) != 0)
  {
    if ([v6 code] != 2)
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v6 ef_publicDescription];
        sub_10048BB2C(v3, v8, buf, v7);
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) += v5;
  }
}

void sub_1001E5444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = MFMailPurgeableStorageMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001E55BC(id a1, OS_xpc_object *a2)
{
  xdict = a2;
  xpc_dictionary_set_int64(xdict, XPC_ACTIVITY_INTERVAL, XPC_ACTIVITY_INTERVAL_1_HOUR);
  xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRE_SCREEN_SLEEP, 1);
}

void sub_1001E59B8(uint64_t a1)
{
  v2 = [*(a1 + 32) purgeableStorage];
  *(*(*(a1 + 40) + 8) + 24) = [v2 nonPurgeableSpace];
}

void sub_1001E5AFC(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD588;
  qword_1006DD588 = v1;
}

void sub_1001E6630(uint64_t a1)
{
  v1 = [*(a1 + 32) future];
  [v1 cancel];
}

void sub_1001E6AC4(uint64_t a1)
{
  v1 = [*(a1 + 32) future];
  [v1 cancel];
}

id sub_1001E6D58(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 BOOLValue])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [*(a1 + 32) setPromptForAttachmentsResult:v4];
  v5 = [*(a1 + 32) _confirmLoadingRestOfMessage];

  return v5;
}

id sub_1001E6DD0(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setLoadRestOfMessage:{objc_msgSend(v3, "BOOLValue")}];
  v4 = +[EFFuture nullFuture];

  return v4;
}

id sub_1001E6E44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001E6EBC;
  v4[3] = &unk_10064C7E8;
  v4[4] = v2;
  return [v2 _performInteractionBoilerplateWithBlock:v4 completion:v1];
}

void sub_1001E6EBC(uint64_t a1)
{
  v2 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E6F50;
  block[3] = &unk_10064C7E8;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_1001E6F50(uint64_t a1)
{
  v2 = [*(a1 + 32) emailMessage];

  if (v2)
  {
    v24 = [*(a1 + 32) emailMessage];
    v3 = +[UIApplication sharedApplication];
    v4 = [v3 mailboxProvider];

    v5 = [*(a1 + 32) messageSourceMailboxes];
    v6 = [v5 ef_compactMapSelector:"objectID"];

    if (v4 && [v6 count])
    {
      v7 = [v24 mailboxObjectIDs];
      v8 = [v7 firstObjectCommonWithArray:v6];

      if (v8)
      {
        v9 = [v4 legacyMailboxForObjectID:v8];
      }

      else
      {
        v10 = [v24 mailboxObjectIDs];
        v11 = [v10 firstObject];
        v9 = [v4 legacyMailboxForObjectID:v11];
      }

      [*(a1 + 32) setMailboxObjectID:v8];
    }

    else
    {
      v9 = 0;
    }

    if ([*(a1 + 32) _hasIncompleteAttachments])
    {
      v12 = [*(a1 + 32) loadRestOfMessage] ^ 1;
    }

    else
    {
      v12 = 0;
    }

    v13 = [*(a1 + 32) emailMessage];
    v14 = [MFComposeMailMessage legacyMessageWithMessage:v13 mailboxUid:v9 skipAttachmentDownload:v12];
    [*(a1 + 32) setMessage:v14];

    v15 = [MFMessageLoadingContext alloc];
    v16 = [*(a1 + 32) message];
    v17 = [v15 initWithMessage:v16 attachmentManager:0];
    [*(a1 + 32) setLoadingContext:v17];

    v18 = MFComposeLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 32) loadingContext];
      v20 = [*(a1 + 32) emailMessage];
      v21 = [v20 ef_publicDescription];
      v22 = [*(a1 + 32) message];
      v23 = [v22 ef_publicDescription];
      *buf = 134218498;
      v27 = v19;
      v28 = 2114;
      v29 = v21;
      v30 = 2114;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Created loading context %p for compose triage with message: %{public}@ : %{public}@", buf, 0x20u);
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E73A8;
  block[3] = &unk_10064C7E8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001E7A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MFMessageConversationViewCell;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001E7B24(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRead:*(a1 + 32) & 1];
  [v3 setFlagged:(*(a1 + 32) >> 4) & 1];
  [v3 setReplied:(*(a1 + 32) >> 2) & 1];
  [v3 setForwarded:(*(a1 + 32) >> 8) & 1];
  [v3 setRedirected:(*(a1 + 32) >> 9) & 1];
  [v3 setJunk:(*(a1 + 32) >> 21) & 1];
  [v3 setVIP:(*(a1 + 32) >> 24) & 1];
  [v3 setNotify:*(a1 + 40) == 2];
  [v3 setMute:*(a1 + 40) == 1];
}

void sub_1001E8448(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_1001E8480(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MFMessageCriterion alloc] initWithType:*(a1 + 32) qualifier:8 expression:v3];

  return v4;
}

void sub_1001E8628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1001E864C(id a1)
{
  v1 = [NSSet alloc];
  v2 = [v1 initWithObjects:{MFMessageHasAttachments, MFMessageConversationIsVIP, MFMessageConversationIsMuted, MessageIsJournaled, 0}];
  v3 = qword_1006DD598;
  qword_1006DD598 = v2;
}

id sub_1001E86CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v5 = MFLogGeneral();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 ef_publicDescription];
      v24 = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#Warning Unsupported criterion during server-side searchability determination (failing transformation) : %@", &v24, 0xCu);
    }

    goto LABEL_16;
  }

  v7 = [v3 criterionType];
  v5 = [v4 expression];
  v8 = v4;
  v9 = v8;
  if (v7 <= 26)
  {
    if (v7 <= 22)
    {
      if ((v7 - 11) >= 2)
      {
        if (v7 != 1 && v7 != 9)
        {
          goto LABEL_31;
        }

LABEL_34:
        *(*(*(a1 + 48) + 8) + 24) = 1;
        goto LABEL_17;
      }

      [v5 doubleValue];
      v11 = [NSDate dateWithTimeIntervalSince1970:?];
      v12 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
      v13 = [v12 components:96 fromDate:v11];
      if ([v13 hour] || objc_msgSend(v13, "minute"))
      {

        v9 = 0;
      }

      *(*(*(a1 + 48) + 8) + 24) |= v9 != 0;

      goto LABEL_38;
    }

    if ((v7 - 23) < 2)
    {
LABEL_15:

LABEL_16:
      v9 = 0;
      goto LABEL_17;
    }

    if (v7 == 26)
    {
      v14 = [v8 criteria];
      v15 = [v14 firstObject];
      v11 = [v15 mailServerSideCriterion];

      if (v11)
      {
        v16 = [MFMessageCriterion notCriterionWithCriterion:v11];

        *(*(*(a1 + 48) + 8) + 24) = 1;
        v9 = v16;
      }

      else
      {

        v9 = 0;
      }

LABEL_38:

      goto LABEL_17;
    }

LABEL_31:
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v9 ef_publicDescription];
      v24 = 138412290;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#Warning unexpected criterion during server-side searchability determination (assuming YES) : %@", &v24, 0xCu);
    }

    goto LABEL_34;
  }

  if (v7 <= 0x31)
  {
    if (((1 << v7) & 0x348400000000) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << v7) & 0x2400000000000) != 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      goto LABEL_15;
    }

    if (v7 == 35)
    {
      goto LABEL_34;
    }
  }

  if (v7 == 27)
  {
    if ([MFMessageSenderIsVIP isEqualToString:v5])
    {
      v20 = +[VIPManager defaultInstance];
      v21 = [v20 allVIPEmailAddressesCriterion];

      v9 = v21;
    }

    else
    {
      if ([MFMessageToOrCcContainsAccountAddress isEqualToString:v5])
      {
        v22 = [*(a1 + 32) myEmailAddressesCriterionWithType:9];
      }

      else if ([MFMessageToContainsAccountAddress isEqualToString:v5])
      {
        v22 = [*(a1 + 32) myEmailAddressesCriterionWithType:40];
      }

      else
      {
        if (![MFMessageCcContainsAccountAddress isEqualToString:v5])
        {
          if ([qword_1006DD598 containsObject:v5])
          {

            v9 = 0;
            *(*(*(a1 + 40) + 8) + 24) = 1;
          }

          goto LABEL_46;
        }

        v22 = [*(a1 + 32) myEmailAddressesCriterionWithType:41];
      }

      v23 = v22;

      v9 = v23;
    }

LABEL_46:
    v17 = v9 != 0;
    goto LABEL_47;
  }

  if (v7 != 33)
  {
    goto LABEL_31;
  }

  v17 = [v5 length]> 1;
LABEL_47:
  *(*(*(a1 + 48) + 8) + 24) |= v17;
LABEL_17:

  return v9;
}

id sub_1001E8CDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 criterionType] == 23)
  {
    v4 = [v3 expression];
    if (v4)
    {
      [*(a1 + 32) addObject:v4];
    }
  }

  return v3;
}

id sub_1001E8D70(id a1, NSString *a2)
{
  v2 = [MailAccount mailboxUidFromActiveAccountsForURL:a2];

  return v2;
}

id sub_1001E8E78(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 criterionType] == 34)
  {
    v4 = [v3 expression];
    v5 = [NSScanner scannerWithString:v4];
    v6 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v7 = +[NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
    [v7 addCharactersInString:{@", "}];
    while (([v5 isAtEnd] & 1) == 0)
    {
      [v5 scanCharactersFromSet:v6 intoString:0];
      v9 = 0xAAAAAAAAAAAAAAAALL;
      if ([v5 scanLongLong:&v9])
      {
        [*(a1 + 32) addIndex:v9];
      }

      [v5 scanCharactersFromSet:v7 intoString:0];
    }
  }

  return v3;
}

void sub_1001E9838(uint64_t a1)
{
  v1 = [*(a1 + 32) actionHandler];
  [v1 prewarmWebViewIfNeeded];
}

id sub_1001E9898(uint64_t a1, uint64_t a2)
{
  v3 = [EMMessage predicateForMessageWithObjectID:a2];
  v4 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v3 sortDescriptors:&__NSArray0__struct queryOptions:8 label:@"MFMessageDisplayURLRoute"];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) daemonInterface];
  v7 = [v6 messageRepository];
  v8 = [v5 _configureMessageListAndPromiseForQuery:v4 repository:v7];

  v9 = [v8 future];

  return v9;
}

void sub_1001E998C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1001E99D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[MessageDisplayRequest alloc] initWithMessage:v3];
  v5 = [(MessageDisplayRequest *)v4 finishFuture];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001E9BD8;
  v19[3] = &unk_100654AB0;
  v21 = *(a1 + 56);
  v6 = v3;
  v20 = v6;
  [v5 addSuccessBlock:v19];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1001E9CF4;
  v16[3] = &unk_100654AD8;
  v18 = *(a1 + 56);
  v7 = v6;
  v17 = v7;
  [v5 addFailureBlock:v16];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_1001E9E3C;
  v13 = &unk_10064C660;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v8;
  v15 = v9;
  [v5 always:&v10];
  [*(a1 + 48) displayMessage:{v4, v10, v11, v12, v13}];
}

void sub_1001E9BD8(uint64_t a1)
{
  v2 = MFMessageLoadingSignpostLog();
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 32) objectID];
    v6 = 134349568;
    v7 = [v5 hash];
    v8 = 2050;
    v9 = 0;
    v10 = 1026;
    v11 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_END, v4, "LaunchMessageURLDisplay", "Message=%{public, name=objectIdHash}lu Status=%{public, signpost.telemetry:number1}ld TimedOut=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", &v6, 0x1Cu);
  }
}

void sub_1001E9CF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MFMessageLoadingSignpostLog();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = [*(a1 + 32) objectID];
    v8 = 134349568;
    v9 = [v7 hash];
    v10 = 2050;
    v11 = [v3 code];
    v12 = 1026;
    v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "LaunchMessageURLDisplay", "Message=%{public, name=objectIdHash}lu Status=%{public, signpost.telemetry:number1}ld TimedOut=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", &v8, 0x1Cu);
  }
}

id sub_1001E9E3C(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 _resetMessageListAndPromise];
}

void sub_1001E9E78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MFMessageLoadingSignpostLog();
  v5 = v4;
  v6 = *(a1 + 64);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v11 = 134349312;
    v12 = [v3 code];
    v13 = 1026;
    LODWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "LaunchMessageURLDisplay", "Status=%{public, signpost.telemetry:number1}ld TimedOut=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", &v11, 0x12u);
  }

  v7 = +[MFURLRoutingRequest log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) ef_publicDescription];
    v10 = [v3 ef_publicDescription];
    v11 = 134218498;
    v12 = v8;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%p: failed to process message display for request:%{public}@ error:%{public}@", &v11, 0x20u);
  }

  [*(a1 + 48) invalidate];
  [*(a1 + 56) _resetMessageListAndPromise];
}

id sub_1001EA054(uint64_t a1)
{
  result = [*(a1 + 32) isFinished];
  if ((result & 1) == 0)
  {
    EFSaveTailspin();
    v3 = MFMessageLoadingSignpostLog();
    v4 = v3;
    v5 = *(a1 + 64);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      v10 = 134349312;
      v11 = 0;
      v12 = 1026;
      v13 = 1;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v5, "LaunchMessageURLDisplay", "Request timed out Status=%{public, signpost.telemetry:number1}ld TimedOut=%{public, signpost.telemetry:number2}d enableTelemetry=YES ", &v10, 0x12u);
    }

    v6 = +[MFURLRoutingRequest log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) ef_publicDescription];
      sub_10048BBE4(v7, v8, &v10, v6);
    }

    [*(a1 + 48) invalidate];
    v9 = [*(a1 + 56) messageDisplayPromise];
    [v9 cancel];

    return [*(a1 + 32) cancel];
  }

  return result;
}

EFFuture *__cdecl sub_1001EA1D0(id a1, id a2)
{
  v2 = +[EFFuture nullFuture];

  return v2;
}

id sub_1001EA204(uint64_t a1, uint64_t a2)
{
  v2 = [NSError mf_routingErrorWithUnderlyingError:a2 request:*(a1 + 32) allowFallbackRouting:0];
  v3 = [EFFuture futureWithError:v2];

  return v3;
}

void sub_1001EA590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_1001EB130(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1001EB1F8(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = qword_1006DD5A8;
  qword_1006DD5A8 = v1;
}

void sub_1001EBDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, void *a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id location, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, void *a47, void *a48, void *a49, void *a50)
{
  objc_destroyWeak(&a35);

  objc_destroyWeak(&a40);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1001EBFFC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = a2;
  v6 = a4;
  v7 = [v18 avatarView];
  v8 = [v6 emailAddress];
  v9 = [*(a1 + 32) contactStore];
  v10 = [v7 displayPersonForEmailAddress:v8 usingContactStore:v9];

  v11 = [v6 emailAddress];
  v12 = [v11 emailAddressValue];
  v13 = [v12 displayName];

  v14 = [v18 contactLabel];
  v15 = [v6 emailAddress];
  v16 = [v15 emailAddressValue];
  if (v13)
  {
    [v16 displayName];
  }

  else
  {
    [v16 stringValue];
  }
  v17 = ;
  [v14 setText:v17];
}

void sub_1001EC188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_1001EC1F8(uint64_t a1, void *a2)
{
  v4 = [a2 subjectLabel];
  v3 = [*(a1 + 32) _subjectToDisplay];
  [v4 setText:v3];
}

void sub_1001EC284(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [v32 nameLabel];
  v10 = [v8 attachment];
  v11 = [v10 displayName];
  [v9 setText:v11];

  v12 = [v32 dateLabel];
  v13 = [*(a1 + 32) dateFormatter];
  v14 = *(a1 + 32);
  v15 = [v8 attachment];
  v16 = [v15 url];
  v17 = [v14 _dateToDisplayForURL:v16];
  v18 = [v13 stringFromDate:v17];
  [v12 setText:v18];

  v19 = [*(a1 + 32) imageCache];
  v20 = [v8 attachment];
  v21 = [v20 url];
  v22 = [v19 objectForKey:v21];
  v23 = [v22 first];

  if (v23)
  {
    v24 = [v32 imageView];
    [v24 setImage:v23];
  }

  else
  {
    [*(a1 + 32) _generateQuickLookThumbnail:v32 indexPath:v7 item:v8];
  }

  if ([*(a1 + 32) _shouldDisplayContact])
  {
    v25 = [v32 avatarView];
    v26 = *(a1 + 32);
    v27 = [v8 attachment];
    v28 = [v27 url];
    v29 = [v26 _contactToDisplayForURL:v28];
    v30 = [*(a1 + 32) contactStore];
    v31 = [v25 displayPersonForEmailAddress:v29 usingContactStore:v30];
  }

  else
  {
    v25 = [v32 avatarView];
    [v25 setHidden:1];
  }
}

void sub_1001EC518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v18 = v12;

  _Unwind_Resume(a1);
}

void sub_1001EC5E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v19 = a2;
  v6 = a4;
  v7 = [v6 attachment];
  v8 = [v7 url];
  v9 = [NSData dataWithContentsOfURL:v8];
  v10 = [UIImage imageWithData:v9];

  v11 = [v19 imageView];
  [v11 setImage:v10];

  if ([*(a1 + 32) _shouldDisplayContact])
  {
    v12 = [v19 avatarView];
    v13 = *(a1 + 32);
    v14 = [v6 attachment];
    v15 = [v14 url];
    v16 = [v13 _contactToDisplayForURL:v15];
    v17 = [*(a1 + 32) contactStore];
    v18 = [v12 displayPersonForEmailAddress:v16 usingContactStore:v17];
  }

  else
  {
    v12 = [v19 avatarView];
    [v12 setHidden:1];
  }
}

void sub_1001EC778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v17 = v13;

  _Unwind_Resume(a1);
}

void sub_1001EC808(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a2;
  v6 = a4;
  v7 = +[UIColor tableCellGroupedBackgroundColor];
  v8 = [v9 contentView];
  [v8 setBackgroundColor:v7];

  [*(a1 + 32) _generateRichLink:v9 item:v6];
}

id sub_1001EC8D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v9 subject];
  if (v10)
  {
    v11 = _os_feature_enabled_impl();

    if (v11)
    {
      v12 = 32;
LABEL_31:
      v28 = [v7 dequeueConfiguredReusableCellWithRegistration:*(a1 + v12) forIndexPath:v8 item:v9];
      goto LABEL_32;
    }
  }

  v13 = [v9 attachment];

  if (!v13)
  {
    v29 = [v9 richLink];

    v12 = 56;
    if (!v29)
    {
      v12 = 64;
    }

    goto LABEL_31;
  }

  v14 = [v9 attachment];
  v15 = [v14 url];
  v16 = [v15 lastPathComponent];
  v17 = [v9 attachment];
  v18 = [v17 url];
  v19 = [UTType em_contentTypeForFilename:v16 fileURL:v18];

  v20 = v19 == UTTypeJPEG || v19 == UTTypePNG;
  v26 = v20 || v19 == UTTypeImage || v19 == UTTypeLivePhoto || v19 == UTTypeMP3 || v19 == UTTypeMPEG4Movie || v19 == UTTypeMovie;
  v20 = (v26 & 1) == 0;
  v27 = 48;
  if (!v20)
  {
    v27 = 40;
  }

  v28 = [v7 dequeueConfiguredReusableCellWithRegistration:*(a1 + v27) forIndexPath:v8 item:v9];

LABEL_32:

  return v28;
}

void sub_1001ECB70(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = v14;
    v9 = [WeakRetained sections];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
    v11 = [v10 sectionName];

    v12 = [v8 contentConfiguration];
    [v12 setText:v11];
    [v8 setContentConfiguration:v12];
    v13 = [v8 seeAllButton];
    [v13 setHidden:1];
  }
}

void sub_1001ECC80(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_1001ECCE0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = v15;
    v9 = [WeakRetained sections];
    v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
    v11 = [v10 sectionName];

    v12 = [v8 contentConfiguration];
    [v12 setText:v11];
    v13 = [v12 textProperties];
    [v13 setAlignment:0];

    [v8 setContentConfiguration:v12];
    v14 = [v8 seeAllButton];
    [v14 setHidden:1];
  }
}

void sub_1001ECE0C(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

id sub_1001ECE70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [*(a1 + 32) sections];
  v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v8 = [v7 identifier];
  if ([v8 isEqual:@"Documents"])
  {
    goto LABEL_4;
  }

  v18 = [*(a1 + 32) sections];
  v9 = [v18 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v10 = [v9 identifier];
  if ([v10 isEqual:@"Photos"])
  {

LABEL_4:
    v11 = 48;
    goto LABEL_7;
  }

  v17 = [*(a1 + 32) sections];
  v12 = [v17 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
  v13 = [v12 identifier];
  v14 = [v13 isEqual:@"Links"];

  v11 = 56;
  if (v14)
  {
    v11 = 48;
  }

LABEL_7:
  v15 = [*(a1 + 40) dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + v11) forIndexPath:v5];

  return v15;
}

void sub_1001ED0AC(void *a1)
{
  if (a1)
  {
    v80 = objc_alloc_init(NSMutableArray);
    v1 = objc_alloc_init(NSMutableArray);
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_1001F0A94;
    v94[3] = &unk_100654D88;
    v81 = v80;
    v95 = v81;
    v82 = v1;
    v96 = v82;
    v83 = objc_retainBlock(v94);
    if (_os_feature_enabled_impl())
    {
      v2 = [a1 viewModel];
      v3 = [v2 subject];
      v4 = [v3 subjectString];
      v5 = [v4 isEqualToString:&stru_100662A88];

      if ((v5 & 1) == 0)
      {
        v6 = [MFMessageInfoHeaderItem alloc];
        v7 = +[NSBundle mainBundle];
        v8 = [v7 localizedStringForKey:@"Subject" value:&stru_100662A88 table:0];
        v9 = [(MFMessageInfoHeaderItem *)v6 initWithName:v8 identifier:@"Subject"];
        [v81 addObject:v9];

        v10 = [MFMessageInfoItem alloc];
        v11 = [a1 viewModel];
        v12 = [v11 subject];
        v13 = [(MFMessageInfoItem *)v10 initWithSubject:v12];
        v98 = v13;
        v14 = [NSArray arrayWithObjects:&v98 count:1];
        [v82 addObject:v14];
      }
    }

    if (_os_feature_enabled_impl() && ([a1 _isConversation] & 1) != 0)
    {
      v15 = objc_alloc_init(NSMutableArray);
      v16 = [a1 viewModel];
      v17 = [v16 senderList];
      [v15 addObjectsFromArray:v17];

      v18 = [a1 viewModel];
      v19 = [v18 toList];
      [v15 addObjectsFromArray:v19];

      v20 = [a1 viewModel];
      v21 = [v20 replyToList];
      [v15 addObjectsFromArray:v21];

      v22 = [a1 viewModel];
      v23 = [v22 ccList];
      [v15 addObjectsFromArray:v23];

      v24 = [a1 viewModel];
      v25 = [v24 bccList];
      [v15 addObjectsFromArray:v25];

      v26 = [NSSet setWithArray:v15];
      v27 = [v26 allObjects];
      [a1 setParticipants:v27];

      v28 = [a1 participants];
      v29 = +[NSBundle mainBundle];
      v30 = [v29 localizedStringForKey:@"Participants" value:&stru_100662A88 table:0];
      (v83[2])(v83, v28, v30);
    }

    else
    {
      v31 = [a1 viewModel];
      v32 = [v31 senderList];
      (v83[2])(v83, v32, @"From");

      v33 = [a1 viewModel];
      v34 = [v33 toList];
      (v83[2])(v83, v34, @"To");

      v35 = [a1 viewModel];
      v36 = [v35 replyToList];
      (v83[2])(v83, v36, @"Reply To");

      v37 = [a1 viewModel];
      v38 = [v37 ccList];
      (v83[2])(v83, v38, @"CC");

      v15 = [a1 viewModel];
      v28 = [v15 bccList];
      (v83[2])(v83, v28, @"BCC");
    }

    if (_os_feature_enabled_impl())
    {
      v39 = [a1 conversationAttachmentURLs];
      v40 = v39 == 0;

      if (!v40)
      {
        v87 = objc_alloc_init(NSMutableArray);
        v88 = objc_alloc_init(NSMutableArray);
        v41 = [a1 conversationAttachmentURLs];
        v93[0] = _NSConcreteStackBlock;
        v93[1] = 3221225472;
        v93[2] = sub_1001F0C44;
        v93[3] = &unk_100654DB0;
        v93[4] = a1;
        v42 = [v41 ef_map:v93];
        [a1 setConversationAttachmentURLs:v42];

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        obj = [a1 conversationAttachmentURLs];
        v43 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
        if (v43)
        {
          v86 = *v90;
          do
          {
            for (i = 0; i != v43; i = i + 1)
            {
              if (*v90 != v86)
              {
                objc_enumerationMutation(obj);
              }

              v45 = *(*(&v89 + 1) + 8 * i);
              v46 = [v45 url];
              v47 = [v46 lastPathComponent];
              v48 = [v45 url];
              v49 = [UTType em_contentTypeForFilename:v47 fileURL:v48];

              if (v49 == UTTypeJPEG || v49 == UTTypePNG || v49 == UTTypeImage || v49 == UTTypeLivePhoto || v49 == UTTypeMP3 || v49 == UTTypeMPEG4Movie || v49 == UTTypeMovie)
              {
                v57 = v87;
              }

              else
              {
                v57 = v88;
              }

              [v57 addObject:v45];
            }

            v43 = [obj countByEnumeratingWithState:&v89 objects:v97 count:16];
          }

          while (v43);
        }

        if ([v88 count])
        {
          v58 = [MFMessageInfoHeaderItem alloc];
          v59 = +[NSBundle mainBundle];
          v60 = [v59 localizedStringForKey:@"Documents" value:&stru_100662A88 table:0];
          v61 = [(MFMessageInfoHeaderItem *)v58 initWithName:v60 identifier:@"Documents"];
          [v81 addObject:v61];

          v62 = [v88 ef_map:&stru_100654DF0];
          [v82 addObject:v62];
        }

        if ([v87 count])
        {
          v63 = [MFMessageInfoHeaderItem alloc];
          v64 = +[NSBundle mainBundle];
          v65 = [v64 localizedStringForKey:@"Photos" value:&stru_100662A88 table:0];
          v66 = [(MFMessageInfoHeaderItem *)v63 initWithName:v65 identifier:@"Photos"];
          [v81 addObject:v66];

          v67 = [v87 ef_map:&stru_100654E10];
          [v82 addObject:v67];
        }
      }
    }

    if (_os_feature_enabled_impl())
    {
      v68 = [a1 richLinkURLs];
      v69 = [v68 count] == 0;

      if (!v69)
      {
        v70 = [MFMessageInfoHeaderItem alloc];
        v71 = +[NSBundle mainBundle];
        v72 = [v71 localizedStringForKey:@"Links" value:&stru_100662A88 table:0];
        v73 = [(MFMessageInfoHeaderItem *)v70 initWithName:v72 identifier:@"Links"];
        [v81 addObject:v73];

        v74 = [NSSet alloc];
        v75 = [a1 richLinkURLs];
        v76 = [v74 initWithArray:v75];
        v77 = [v76 allObjects];
        [a1 setRichLinkURLs:v77];

        v78 = [a1 richLinkURLs];
        v79 = [v78 ef_map:&stru_100654E50];

        [v82 addObject:v79];
      }
    }

    [a1 setItems:v82];
    [a1 setSections:v81];
  }
}

id sub_1001EE048(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!_os_feature_enabled_impl())
  {
    v11 = [NSCollectionLayoutSection sectionWithListConfiguration:*(a1 + 40) layoutEnvironment:v5];
    goto LABEL_5;
  }

  v6 = [*(a1 + 32) sections];
  v7 = [v6 objectAtIndexedSubscript:a2];
  v8 = [v7 identifier];
  v9 = [v8 isEqual:@"Documents"];

  v10 = *(a1 + 32);
  if (v9)
  {
    v11 = [v10 _attachmentSectionLayout];
LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

  v14 = [v10 sections];
  v15 = [v14 objectAtIndexedSubscript:a2];
  v16 = [v15 identifier];
  v17 = [v16 isEqual:@"Photos"];

  v18 = *(a1 + 32);
  if (v17)
  {
    v11 = [v18 _photoSectionLayout];
    goto LABEL_5;
  }

  v19 = [v18 sections];
  v20 = [v19 objectAtIndexedSubscript:a2];
  v21 = [v20 identifier];
  v22 = [v21 isEqual:@"Links"];

  if (v22)
  {
    v11 = [*(a1 + 32) _linkSectionLayout];
    goto LABEL_5;
  }

  v12 = [NSCollectionLayoutSection sectionWithListConfiguration:*(a1 + 40) layoutEnvironment:v5];
  [v12 setContentInsets:{0.0, 20.0, 0.0, 20.0}];
  [v12 _setPostBoundaryPadding:20.0];
  v23 = [NSCollectionLayoutDecorationItem backgroundDecorationItemWithElementKind:@"section-background-element-kind"];
  [v23 setContentInsets:{0.0, 20.0, 0.0, 20.0}];
  v25 = v23;
  v24 = [NSArray arrayWithObjects:&v25 count:1];
  [v12 setDecorationItems:v24];

LABEL_6:

  return v12;
}

void sub_1001EE640(_Unwind_Exception *a1)
{
  v10 = v7;

  _Unwind_Resume(a1);
}

void sub_1001EEA78(_Unwind_Exception *a1)
{
  v10 = v7;

  _Unwind_Resume(a1);
}

void sub_1001EEEC0(_Unwind_Exception *a1)
{
  v10 = v7;

  _Unwind_Resume(a1);
}

void sub_1001EF660(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && ([a1[4] imageCache], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(a1[5], "attachment"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "url"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKey:", v9), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v7, !v10))
  {
    v12 = [v5 UIImage];
    v13 = [v12 imageByPreparingForDisplay];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001EF840;
    block[3] = &unk_10064E348;
    v16 = a1[6];
    v17 = a1[5];
    v18 = v13;
    v19 = a1[4];
    v14 = v13;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v11 = [v6 localizedDescription];
    NSLog(@"Thumbnail generation failed with error: %@", v11);
  }
}

void sub_1001EF840(uint64_t a1)
{
  v14 = [*(a1 + 32) nameLabel];
  v2 = [v14 text];
  v3 = [*(a1 + 40) attachment];
  v4 = [v3 displayName];

  if (v2 == v4)
  {
    [*(a1 + 48) size];
    v6 = v5;
    [*(a1 + 48) size];
    v8 = v6 / v7;
    [*(a1 + 32) setImage:*(a1 + 48) withAspectRatio:v8];
    v9 = *(a1 + 48);
    v10 = *(*(a1 + 56) + 144);
    v15 = [NSNumber numberWithDouble:v8];
    v11 = [EFPair pairWithFirst:v9 second:?];
    v12 = [*(a1 + 40) attachment];
    v13 = [v12 url];
    [v10 setObject:v11 forKey:v13];
  }
}

void sub_1001EF9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v10;

  _Unwind_Resume(a1);
}

void sub_1001EFFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v21 = v19;

  _Unwind_Resume(a1);
}

BOOL sub_1001F0068(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [v4 emailAddressValue];

  if (v5)
  {
    v6 = [v3 value];
    v7 = [v6 emailAddressValue];
    v8 = [v7 compare:*(a1 + 32)] == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1001F0A94(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if ([v12 count])
  {
    v6 = *(a1 + 32);
    v7 = [MFMessageInfoHeaderItem alloc];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:v5 value:&stru_100662A88 table:0];
    v10 = [(MFMessageInfoHeaderItem *)v7 initWithName:v9 identifier:v5];
    [v6 addObject:v10];

    v11 = [v12 ef_map:&stru_100654D60];
    [*(a1 + 40) addObject:v11];
  }
}

id sub_1001F0BE0(id a1, ECEmailAddressConvertible *a2)
{
  v2 = a2;
  v3 = [[MFMessageInfoItem alloc] initWithEmail:v2];

  return v3;
}

id sub_1001F0C44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 url];
  v6 = [v4 _URLForAttachmentURL:v5];
  v7 = [v3 displayName];
  v8 = [EMAttachmentData attachmentWithURL:v6 displayName:v7];

  return v8;
}

id sub_1001F0D28(id a1, EMAttachmentData *a2)
{
  v2 = a2;
  v3 = [[MFMessageInfoItem alloc] initWithAttachment:v2];

  return v3;
}

id sub_1001F0D8C(id a1, EMAttachmentData *a2)
{
  v2 = a2;
  v3 = [[MFMessageInfoItem alloc] initWithAttachment:v2];

  return v3;
}

id sub_1001F0DF0(id a1, NSURL *a2)
{
  v2 = a2;
  v3 = [[MFMessageInfoItem alloc] initWithRichLink:v2];

  return v3;
}

void sub_1001F128C(id a1, UIPrintInteractionController *a2, BOOL a3, NSError *a4)
{
  v5 = a4;
  if (v5 && !a3)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NSError *)v5 domain];
      v8 = 138412546;
      v9 = v7;
      v10 = 2048;
      v11 = [(NSError *)v5 code];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#Warning ERROR: Mail print job failed due to error in domain %@ with error code %lu", &v8, 0x16u);
    }
  }
}

void sub_1001F142C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFMessagePrinter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001F178C(uint64_t a1, void *a2)
{
  v12 = a2;
  if (a1)
  {
    v3 = +[UIPrintInfo printInfo];
    v4 = [*(a1 + 88) subject];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [*(a1 + 80) subject];
    }

    v7 = v6;

    v8 = [v7 length];
    if (v8)
    {
      v9 = [v7 subjectString];
      v10 = v9;
    }

    else
    {
      v10 = +[NSBundle mainBundle];
      v9 = [v10 localizedStringForKey:@"NO_SUBJECT" value:&stru_100662A88 table:@"Main"];
    }

    [v3 setJobName:v9];
    if (!v8)
    {
    }

    v11 = +[UIPrintInteractionController sharedPrintController];
    [v11 setPrintPageRenderer:a1];
    [v11 setPrintInfo:v3];
    [v11 setDelegate:a1];
    if (v12)
    {
      [v11 presentFromBarButtonItem:v12 animated:1 completionHandler:&stru_100654E90];
    }

    else
    {
      [v11 presentAnimated:1 completionHandler:&stru_100654E90];
    }
  }
}

void sub_1001F2E40(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.mobilemail", [v3 UTF8String]);
  v2 = qword_1006DD5B8;
  qword_1006DD5B8 = v1;
}

void sub_1001F3090(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [[UIImageView alloc] initWithImage:v9];
    v8 = +[UIColor mailAppBackgroundColor];
    [v7 setBackgroundColor:v8];

    v6 = v7;
    [v7 setOpaque:1];
  }

  (*(*(a1 + 32) + 16))();
}

id sub_1001F3284(uint64_t a1)
{
  [*(a1 + 32) _setUpAndAddContentViewForMessage:*(a1 + 40) configuration:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);

  return [v2 _generateScreenshotImageForMessage:v3 completion:v4];
}

void sub_1001F338C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectID];
  v3 = [v2 description];

  v4 = dispatch_semaphore_create(0);
  v5 = *(a1 + 40);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  v7 = dispatch_time(0, 120000000000);
  dispatch_semaphore_wait(*(*(a1 + 40) + 24), v7);
  kdebug_trace();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F34D0;
  block[3] = &unk_10064E320;
  v8 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v11 = v3;
  v12 = v8;
  v9 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1001F34D0(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  [v2 layoutIfNeeded];

  kdebug_trace();
  v3 = +[MFMessageScreenshotGenerator log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Generating snapshot for message - libraryid=%{public}@", buf, 0xCu);
  }

  v5 = [*(a1 + 32) contentView];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F368C;
  v7[3] = &unk_100654F08;
  v8 = *(a1 + 48);
  [v5 generateSnapshotImageWithCompletion:v7];

  v6 = [*(a1 + 32) contentView];
  [v6 removeFromSuperview];
}

void sub_1001F368C(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  (*(*(a1 + 32) + 16))();
}

void sub_1001F402C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_1001F4254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MFMessageViewController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1001F47C0(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v10 = [v2 objectForKeyedSubscript:@"sender"];

  v3 = v10;
  if (v10)
  {
    v4 = [*(a1 + 40) messageContentView];
    v5 = [v4 headerView];
    v6 = [v5 viewModel];
    v7 = [v6 senderList];
    v8 = [v7 containsObject:v10];

    v3 = v10;
    if (v8)
    {
      v9 = [*(a1 + 40) suggestionController];
      [v9 clearSuggestionsBannerAnimated:1];

      v3 = v10;
    }
  }
}