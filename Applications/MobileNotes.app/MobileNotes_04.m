void sub_1000E79B4(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) firstObject];
  v4 = ICDynamicCast();

  [*(a1 + 40) undoablyMoveSubFolder:v4 toIndex:*(a1 + 56)];
  v3 = [*(a1 + 48) modernManagedObjectContext];
  [v3 ic_save];
}

void sub_1000E83B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [v1 performDeleteActionWithObjects:v2 completion:0];
}

void sub_1000E8448(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 performExportArchiveActionWithObjects:v3 fromSourceView:a1[6]];
}

void sub_1000E8B28(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = [NSArray arrayWithObjects:&v4 count:1];
  [v2 performExportArchiveActionWithObjects:v3 fromSourceView:a1[6]];
}

void sub_1000E8BBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [v1 performMoveActionWithNotes:v2 completion:0];
}

void sub_1000E8C44(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [v1 performDeleteActionWithObjects:v2 completion:0];
}

void sub_1000E8F9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [v1 performMoveActionWithNotes:v2 completion:0];
}

void sub_1000E9024(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v3 count:1];
  [v1 performDeleteActionWithObjects:v2 completion:0];
}

id sub_1000E92BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained diffableDataSource];
    v7 = [v6 itemIdentifierForIndexPath:v3];

    v8 = [v5 cellForItemIdentifier:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v7 object];
      v10 = [v9 objectID];

      v7 = v10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v7;
      if ([v11 ic_isModernNoteType])
      {
        v12 = [v5 modernManagedObjectContext];
        v13 = [v12 objectWithID:v11];

        v14 = [v5 leadingSwipeActionsConfigurationForModernNote:v13 inCell:v8];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_1000E94E4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v6 = [WeakRetained diffableDataSource];
  v7 = [v6 itemIdentifierForIndexPath:v3];

  v8 = [v5 cellForItemIdentifier:v7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 object];
    v10 = [v9 objectID];

    v7 = v10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v7;
    if ([v11 ic_isModernFolderType])
    {
      v12 = [v5 modernManagedObjectContext];
      v13 = [v12 objectWithID:v11];

      if ([v13 isUnsupported])
      {
        v14 = 0;
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v16 = [v5 trailingSwipeActionsConfigurationForModernFolder:v13 inCell:v8];
    }

    else if ([v11 ic_isModernNoteType])
    {
      v15 = [v5 modernManagedObjectContext];
      v13 = [v15 objectWithID:v11];

      v16 = [v5 trailingSwipeActionsConfigurationForModernNote:v13 inCell:v8];
    }

    else if ([v11 ic_isLegacyNoteType])
    {
      v17 = [v5 legacyManagedObjectContext];
      v13 = [v17 objectWithID:v11];

      v16 = [v5 trailingSwipeActionsConfigurationForLegacyNote:v13 inCell:v8];
    }

    else
    {
      if (![v11 ic_isInvitationType])
      {
        v14 = 0;
        goto LABEL_19;
      }

      v18 = [v5 modernManagedObjectContext];
      v13 = [v18 objectWithID:v11];

      v16 = [v5 trailingSwipeActionsConfigurationForInvitation:v13 inCell:v8];
    }

    v14 = v16;
    goto LABEL_18;
  }

  v14 = 0;
LABEL_20:

LABEL_21:

  return v14;
}

void sub_1000E98FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E992C(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained performPinActionWithNote:*(a1 + 32)];

  v4[2](v4, 1);
}

void sub_1000E9BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E9C14(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [WeakRetained performDeleteActionWithObjects:v5 completion:v3];
}

void sub_1000E9CC4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [WeakRetained performMoveActionWithNotes:v5 completion:v3];
}

void sub_1000EA0B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000EA0F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [WeakRetained performDeleteActionWithObjects:v5 completion:v3];
}

void sub_1000EA1A4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [WeakRetained performMoveActionWithNotes:v5 completion:v3];
}

void sub_1000EA254(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained presentationSourceRectForCell:*(a1 + 32)];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = objc_loadWeakRetained((a1 + 48));
  [v13 performCollaborationActionWithNote:*(a1 + 40) forceShareSheet:1 sourceView:v13 sourceRect:v3 completion:{v6, v8, v10, v12}];
}

void sub_1000EA66C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000EA6B4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 32);
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [WeakRetained performDeleteActionWithObjects:v5 completion:v3];
}

void sub_1000EA764(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained performMoveActionWithFolder:*(a1 + 32) completion:v3];
}

void sub_1000EA7C4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained presentationSourceRectForCell:*(a1 + 32)];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = objc_loadWeakRetained((a1 + 48));
  [v13 performCollaborationActionWithFolder:*(a1 + 40) forceShareSheet:1 sourceView:v13 sourceRect:v3 completion:{v6, v8, v10, v12}];
}

void sub_1000EAAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000EAB10(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained performRemoveActionWithInvitation:*(a1 + 32)];

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 1);
    v4 = v5;
  }
}

void sub_1000EAB84(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained performReplyActionWithInvitation:*(a1 + 32)];

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, 1);
    v4 = v5;
  }
}

void sub_1000EB040(uint64_t a1)
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

        [*(a1 + 40) togglePinnedForNote:{*(*(&v7 + 1) + 8 * v6), v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_1000EB308(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1000EB330(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained lockNoteActivity];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000EB3F8;
  v4[3] = &unk_1006467C8;
  objc_copyWeak(&v5, (a1 + 32));
  [v3 performActivityWithCompletion:v4];

  objc_destroyWeak(&v5);
}

void sub_1000EB3F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLockNoteActivity:0];
}

void sub_1000EB43C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setLockNoteActivity:0];
}

uint64_t sub_1000EB6E4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000EB6FC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000EBC30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ICFolderListSelectionValidator alloc];
  v5 = +[ICNoteContext sharedContext];
  v6 = [v5 workerManagedObjectContext];
  v7 = +[NoteContext sharedContext];
  v8 = [v7 managedObjectContext];
  v9 = [(ICFolderListSelectionValidator *)v4 initWithModernContext:v6 htmlContext:v8];

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_1000EBD9C;
  v17 = &unk_100649970;
  v10 = v9;
  v11 = *(a1 + 32);
  v18 = v10;
  v19 = v11;
  v12 = [v3 ic_compactMap:&v14];
  [*(a1 + 32) synchronouslyRemoveItemsWithIdentifiers:{v12, v14, v15, v16, v17}];
  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, [v3 count] != 0);
  }
}

id sub_1000EBD9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) viewControllerManager];
  v6 = [v5 selectedContainerIdentifiers];
  LOBYTE(v4) = [v4 isSelectionAppropriateForObject:v3 selectedContainerIdentifiers:v6];

  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 objectID];
  }

  return v7;
}

uint64_t sub_1000EC250(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) synchronouslyRemoveItemsWithIdentifiers:*(a1 + 40)];
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_1000EC2B0(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) synchronouslyRemoveItemsWithIdentifiers:*(a1 + 40)];
  }

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_1000EC310(uint64_t a1)
{
  [*(a1 + 32) performUpdatesIfNeededAndWait];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000EC474(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) objectID];
    [v5 reloadCellAfterDelayForObjectID:v6];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }
}

uint64_t sub_1000EC7CC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000ED264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000ED28C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000ED2A4(uint64_t a1, void *a2)
{
  v16 = a2;
  v4 = [v16 representedElementCategory];
  if (*(a1 + 32))
  {
    v5 = [v16 indexPath];
    v6 = v5 == *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 40) diffableDataSource];
  v8 = [v16 indexPath];
  v9 = [v7 itemIdentifierForIndexPath:v8];

  v10 = [v9 conformsToProtocol:&OBJC_PROTOCOL___ICSectionIdentifier];
  if (!v4 && !v6 && (v10 & 1) == 0)
  {
    v11 = *(a1 + 64);
    if (v11 <= 3)
    {
      if (v11 == 1)
      {
        [v16 frame];
        if (v12 <= *(*(*(a1 + 48) + 8) + 24))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_20;
        }

        [v16 frame];
        if (v12 >= *(*(*(a1 + 48) + 8) + 24))
        {
          goto LABEL_20;
        }
      }

      v14 = v12;
      goto LABEL_19;
    }

    if (v11 == 4)
    {
      [v16 frame];
      v14 = v15;
      if (v15 <= *(*(*(a1 + 48) + 8) + 24))
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v11 == 8)
    {
      [v16 frame];
      v14 = v13;
      if (v13 < *(*(*(a1 + 48) + 8) + 24))
      {
LABEL_19:
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
        *(*(*(a1 + 48) + 8) + 24) = v14;
      }
    }
  }

LABEL_20:
}

uint64_t sub_1000ED93C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v4 count:1];
  [v1 performDeleteActionWithObjects:v2 completion:0];

  return 1;
}

uint64_t sub_1000ED9F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectID];
  v4 = [v2 cellForItemIdentifier:v3];

  [*(a1 + 32) performCollaborationActionWithFolder:*(a1 + 40) forceShareSheet:0 sourceView:v4 sourceRect:0 completion:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
  return 1;
}

uint64_t sub_1000EE0A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v4 count:1];
  [v1 performDeleteActionWithObjects:v2 completion:0];

  return 1;
}

uint64_t sub_1000EE12C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = *(a1 + 40);
  v2 = [NSArray arrayWithObjects:&v4 count:1];
  [v1 performMoveActionWithNotes:v2 completion:0];

  return 1;
}

void sub_1000EFE3C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_1000F01C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, a2, v4);
  }
}

void sub_1000F07B0(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"textChanged:" name:UITextFieldTextDidChangeNotification object:v10];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Name" value:&stru_100661CF0 table:0];
  [v10 setPlaceholder:v5];

  v6 = [*(a1 + 32) presentingViewController];
  v7 = [v6 view];
  [v10 setAutocapitalizationType:ICLocalizedCapitalizationStyleForView()];

  [v10 setClearButtonMode:1];
  [v10 setReturnKeyType:9];
  [v10 setEnablesReturnKeyAutomatically:1];
  v8 = [*(a1 + 32) folder];
  v9 = [v8 localizedTitle];
  [v10 setText:v9];

  [*(a1 + 32) setTextField:v10];
}

void sub_1000F0914(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:0];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 0, v3);
  }
}

void sub_1000F099C(uint64_t a1)
{
  v2 = [*(a1 + 32) textField];
  v3 = [v2 text];
  v4 = [v3 ic_trimmedString];

  v5 = [ICFolder stringByScrubbingStringForFolderName:v4];
  v6 = [*(a1 + 32) folder];
  v24 = 0;
  v7 = [v6 isTitleValid:v5 error:&v24];
  v8 = v24;

  if (!v7)
  {
    v17 = [v8 userInfo];
    v18 = [*(a1 + 32) presentingViewController];
    v19 = [v17 objectForKeyedSubscript:NSLocalizedDescriptionKey];
    v20 = [v17 objectForKeyedSubscript:NSLocalizedRecoverySuggestionErrorKey];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000F0C24;
    v22[3] = &unk_100646960;
    v21 = *(a1 + 40);
    v22[4] = *(a1 + 32);
    v23 = v21;
    [v18 ic_showSingleButtonAlertWithTitle:v19 message:v20 handler:v22];

    goto LABEL_5;
  }

  v9 = [*(a1 + 32) folder];
  [v9 undoablySetTitle:v5];

  v10 = [*(a1 + 32) presentingViewController];
  v11 = [v10 ic_viewControllerManager];
  v12 = [v11 noteEditorViewController];
  [v12 resetTextViewUndoManager];

  v13 = +[NSNotificationCenter defaultCenter];
  v14 = *(a1 + 32);
  v15 = [v14 textField];
  [v13 removeObserver:v14 name:UITextFieldTextDidChangeNotification object:v15];

  [*(a1 + 32) activityDidFinish:1];
  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = [*(a1 + 32) activityType];
    (*(v16 + 16))(v16, 1, v17);
LABEL_5:
  }
}

id sub_1000F0C24(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 1, v3);
  }

  v4 = *(a1 + 32);

  return [v4 performActivityWithCompletion:0];
}

void sub_1000F0CA4(uint64_t a1)
{
  v1 = [*(a1 + 32) textField];
  [v1 selectAll:0];
}

void sub_1000F0F10(id a1, NSString *a2)
{
  v2 = UIApp;
  v3 = qword_1006CB340;
  v4 = a2;
  [v2 startedTest:v3];
  [UIApp failedTest:qword_1006CB340 withFailure:v4];
}

void sub_1000F1CA4(void *a1)
{
  if (byte_1006CB370 == 1)
  {
    v1 = UIApp;
    v2 = a1;
    [v1 finishedSubTest:@"ICDelaySubTest" forTest:v2];
    byte_1006CB370 = 0;
    [UIApp startedSubTest:@"ICAnimationSubTest" forTest:v2];
  }
}

void sub_1000F1F30(id a1)
{
  if (byte_1006CB370 == 1)
  {
    [UIApp finishedSubTest:@"ICDelaySubTest" forTest:qword_1006CB340];
    byte_1006CB370 = 0;
  }

  else
  {
    [UIApp finishedSubTest:@"ICAnimationSubTest" forTest:qword_1006CB340];
  }

  v1 = UIApp;
  v2 = qword_1006CB340;
  v3 = qword_1006CB350;

  [v1 finishedTest:v2 extraResults:0 withTeardownBlock:v3];
}

void sub_1000F201C(id a1)
{
  if (byte_1006CB370 == 1)
  {
    [UIApp finishedSubTest:@"ICDelaySubTest" forTest:qword_1006CB340];
    byte_1006CB370 = 0;
  }

  else
  {
    [UIApp finishedSubTest:@"ICAnimationSubTest" forTest:qword_1006CB340];
  }

  v1 = UIApp;
  v2 = qword_1006CB340;
  v3 = qword_1006CB350;

  [v1 finishedTest:v2 extraResults:0 withTeardownBlock:v3];
}

void sub_1000F2258(id a1)
{
  [UIApp finishedSubTest:@"ICNoteEditorTypingFinishedSubTest" forTest:qword_1006CB340];
  v1 = UIApp;
  v2 = qword_1006CB340;
  v3 = qword_1006CB350;

  [v1 finishedTest:v2 extraResults:0 withTeardownBlock:v3];
}

void sub_1000F2560(uint64_t a1)
{
  [*(a1 + 32) ic_selectLocalModernAccount];
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v5 = [*(a1 + 32) ic_viewControllerManager];
    v4 = [v5 mainSplitViewController];
    [v4 hideColumn:0];
  }
}

id sub_1000F2610(uint64_t a1)
{
  byte_1006CB359 = 0;
  [UIApp startedTest:qword_1006CB340];
  [UIApp startedSubTest:@"ICDelaySubTest" forTest:qword_1006CB340];
  byte_1006CB370 = 1;
  v2 = *(a1 + 32);

  return [v2 showAccountsListAnimated:1];
}

void sub_1000F2690(void *a1, int a2)
{
  v3 = a1;
  [UIApp startedSubTest:@"ICDelaySubTest" forTest:v3];
  byte_1006CB370 = 1;
  if (a2)
  {
    v4 = UIApp;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000F8FD0;
    v5[3] = &unk_100645E30;
    v6 = v3;
    [v4 installCACommitCompletionBlock:v5];
  }
}

void sub_1000F27F0(uint64_t a1)
{
  [*(a1 + 32) showAccountsList];
  v2 = dispatch_time(0, 4000000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F28A4;
  v4[3] = &unk_100645BA0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

void sub_1000F28A4(uint64_t a1)
{
  v2 = +[ICApplicationTestingHelper sharedHelper];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F294C;
  v4[3] = &unk_100645BA0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 waitForPostLaunchTasksThenPerformBlock:v4];
}

void sub_1000F294C(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_folderListScrollView];
  [*(a1 + 32) performScrollTestForScrollView:v2 withOptions:*(a1 + 40)];
}

void sub_1000F2A38(uint64_t a1)
{
  [*(a1 + 32) showAccountsList];
  v2 = dispatch_time(0, 2000000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F2AEC;
  v5[3] = &unk_100645BA0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_after(v2, &_dispatch_main_q, v5);
}

void sub_1000F2AEC(uint64_t a1)
{
  v2 = +[ICApplicationTestingHelper sharedHelper];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F2B94;
  v5[3] = &unk_100645BA0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v3;
  v7 = v4;
  [v2 waitForPostLaunchTasksThenPerformBlock:v5];
}

id sub_1000F2B94(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"iterations"];
  v3 = [v2 intValue];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F2C50;
  v5[3] = &unk_100649BC8;
  v5[4] = *(a1 + 40);
  v6 = v3;
  return [UIApp rotateIfNeeded:1 completion:v5];
}

id sub_1000F2C50(uint64_t a1)
{
  [UIApp startedTest:qword_1006CB340];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 rotateToOrientation:4 iterationsRemaining:v3 completion:&stru_100649BA0];
}

void sub_1000F2D40(uint64_t a1)
{
  [*(a1 + 32) showAccountsList];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F2E78;
  v7[3] = &unk_100645E30;
  v7[4] = *(a1 + 32);
  v2 = objc_retainBlock(v7);
  v3 = v2;
  if (*(a1 + 40) == 1)
  {
    v4 = dispatch_time(0, 2000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000F3090;
    block[3] = &unk_100645E80;
    block[4] = *(a1 + 32);
    v6 = v3;
    dispatch_after(v4, &_dispatch_main_q, block);
  }

  else
  {
    (v2[2])(v2);
  }
}

void sub_1000F2E78(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F2F0C;
  block[3] = &unk_100645E30;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_1000F2F0C(uint64_t a1)
{
  v2 = +[ICApplicationTestingHelper sharedHelper];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F2FA0;
  v3[3] = &unk_100645E30;
  v3[4] = *(a1 + 32);
  [v2 waitForPostLaunchTasksThenPerformBlock:v3];
}

void sub_1000F2FA0(uint64_t a1)
{
  byte_1006CB359 = 0;
  [UIApp startedTest:qword_1006CB340];
  [UIApp startedSubTest:@"ICDelaySubTest" forTest:qword_1006CB340];
  byte_1006CB370 = 1;
  [*(a1 + 32) ic_selectLocalModernAccount];
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v5 = [*(a1 + 32) ic_viewControllerManager];
    v4 = [v5 mainSplitViewController];
    [v4 showColumn:1];
  }
}

void sub_1000F3090(uint64_t a1)
{
  [*(a1 + 32) ic_selectLocalModernAccount];
  v2 = dispatch_time(0, 2000000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000F3144;
  v4[3] = &unk_100645E80;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, &_dispatch_main_q, v4);
}

uint64_t sub_1000F3144(uint64_t a1)
{
  [*(a1 + 32) showAccountsList];
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = [*(a1 + 32) ic_viewControllerManager];
    v5 = [v4 mainSplitViewController];
    [v5 hideColumn:1];
  }

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void sub_1000F3410(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1 - 1;
  if (v1 != 1)
  {
    v4 = os_log_create("com.apple.notes", "Test");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DF8C4(v2, v4);
    }

    v5 = dispatch_time(0, (*(a1 + 56) * 1000000000.0));
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000F352C;
    v8[3] = &unk_100649BF0;
    v6 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v6;
    v7 = *(a1 + 56);
    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v12 = v7;
    v13 = v2;
    dispatch_after(v5, &_dispatch_main_q, v8);
  }
}

void sub_1000F37E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 ic_notesListScrollView];
  [v2 performScrollTestForScrollView:v3 withOptions:*(a1 + 40)];
}

void sub_1000F392C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 ic_notesListScrollView];
  [v2 performScrollTestForScrollView:v3 withOptions:*(a1 + 40)];
}

void sub_1000F3A20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F3AF8;
  v8[3] = &unk_100645E30;
  v8[4] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F3B00;
  v5[3] = &unk_100645BA0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 showNotesListWithAccountSelectionBlock:v8 readyBlock:v5];
}

void sub_1000F3B00(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"searchQuery"];
  v3 = v2;
  v4 = @"a";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [*(a1 + 40) ic_viewControllerManager];
  [v6 startSearchWithSearchQueryString:v5 becomeFirstResponder:0];

  v7 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F3C1C;
  block[3] = &unk_100645BA0;
  v9 = *(a1 + 32);
  v8 = v9.i64[0];
  v11 = vextq_s8(v9, v9, 8uLL);
  dispatch_after(v7, &_dispatch_main_q, block);
}

void sub_1000F3C1C(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_viewControllerManager];
  v5 = [v2 searchController];

  objc_opt_class();
  v3 = [v5 collectionView];
  v4 = ICCheckedDynamicCast();

  [*(a1 + 32) performScrollTestForScrollView:v4 withOptions:*(a1 + 40)];
}

id sub_1000F3DA8(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"iterations"];
  v3 = [v2 intValue];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F3E64;
  v5[3] = &unk_100649BC8;
  v5[4] = *(a1 + 40);
  v6 = v3;
  return [UIApp rotateIfNeeded:1 completion:v5];
}

id sub_1000F3E64(uint64_t a1)
{
  [UIApp startedTest:qword_1006CB340];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 rotateToOrientation:4 iterationsRemaining:v3 completion:&stru_100649C10];
}

void sub_1000F3F84(uint64_t a1)
{
  [UIApp startedTest:qword_1006CB340];
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] != 0;

  sub_1000F2690(qword_1006CB340, v3);
  v4 = *(a1 + 32);
  v5 = [v4 ic_notesListScrollView];
  v7 = 0;
  LOBYTE(v3) = [v4 selectFirstNoteInScrollView:v5 errorString:&v7];
  v6 = v7;

  if ((v3 & 1) == 0)
  {
    [UIApp failedTest:qword_1006CB340 withFailure:v6];
  }
}

void sub_1000F4110(uint64_t a1)
{
  byte_1006CB359 = 0;
  [UIApp startedTest:qword_1006CB340];
  sub_1000F2690(qword_1006CB340, 1);
  v2 = [*(a1 + 32) ic_viewControllerManager];
  v3 = [v2 showNewNoteWithApproach:2 sender:0 animated:1];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000F4204;
  v7[3] = &unk_100645E30;
  v8 = v3;
  v4 = v3;
  v5 = objc_retainBlock(v7);
  v6 = qword_1006CB350;
  qword_1006CB350 = v5;
}

void sub_1000F4204()
{
  objc_opt_class();
  v0 = ICCheckedDynamicCast();
  [ICNote purgeNote:v0];

  v1 = +[ICNoteContext sharedContext];
  [v1 saveImmediately];
}

uint64_t sub_1000F4398(uint64_t a1)
{
  [*(a1 + 32) showAccountsList];
  [*(a1 + 32) ic_selectLocalModernAccount];
  return 1;
}

id sub_1000F43CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4 ic_notesListScrollView];
  v6 = [v4 selectFirstNoteInScrollView:v5 errorString:a2];

  if (v6 && *(a1 + 40) == 1)
  {
    dispatchMainAfterDelay();
  }

  return v6;
}

void sub_1000F449C(uint64_t a1)
{
  v1 = [*(a1 + 32) ic_noteEditorViewController];
  [v1 setEditing:1 animated:0];
}

void sub_1000F44E8(uint64_t a1)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F45CC;
  v6[3] = &unk_100645E30;
  v6[4] = *(a1 + 32);
  v2 = objc_retainBlock(v6);
  v3 = v2;
  if (*(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) ic_noteEditorViewController];
    [v4 setEditing:0 animated:0];

    v5 = dispatch_time(0, 2000000000);
    dispatch_after(v5, &_dispatch_main_q, v3);
  }

  else
  {
    (v2[2])(v2);
  }
}

void sub_1000F45CC(uint64_t a1)
{
  byte_1006CB359 = 0;
  [UIApp startedTest:qword_1006CB340];
  sub_1000F2690(qword_1006CB340, 1);
  objc_opt_class();
  v2 = [*(a1 + 32) ic_noteEditorViewController];
  v3 = [v2 addNewNote];
  v4 = ICDynamicCast();

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F46E4;
  v8[3] = &unk_100645E30;
  v9 = v4;
  v5 = v4;
  v6 = objc_retainBlock(v8);
  v7 = qword_1006CB350;
  qword_1006CB350 = v6;
}

void sub_1000F46E4(uint64_t a1)
{
  [ICNote purgeNote:*(a1 + 32)];
  v1 = +[ICNoteContext sharedContext];
  [v1 saveImmediately];
}

id sub_1000F488C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4 ic_notesListScrollView];
  v6 = [v4 selectFirstNoteInScrollView:v5 errorString:a2];

  if (v6 && *(a1 + 40) == 1)
  {
    [*(a1 + 32) bringUpKeyboard];
  }

  return v6;
}

void sub_1000F4900(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_noteEditorViewController];
  v3 = [v2 textView];

  [*(a1 + 32) performScrollTestForScrollView:v3 withOptions:*(a1 + 40)];
}

id sub_1000F4A78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 ic_notesListScrollView];
  v5 = [v3 selectFirstNoteInTableView:v4 errorString:a2];

  return v5;
}

void sub_1000F4AD0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F4B7C;
  v3[3] = &unk_100645E30;
  v3[4] = *(a1 + 32);
  v1 = objc_retainBlock(v3);
  v2 = qword_1006CB350;
  qword_1006CB350 = v1;

  [UIApp startedTest:qword_1006CB340];
  sub_1000F2690(qword_1006CB340, 1);
}

void sub_1000F4B7C(uint64_t a1)
{
  v1 = [*(a1 + 32) ic_noteEditorViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

id sub_1000F4D04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 ic_notesListScrollView];
  v5 = [v3 selectFirstNoteInScrollView:v4 errorString:a2];

  return v5;
}

id sub_1000F4D5C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"iterations"];
  v3 = [v2 intValue];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F4E18;
  v5[3] = &unk_100649BC8;
  v5[4] = *(a1 + 40);
  v6 = v3;
  return [UIApp rotateIfNeeded:1 completion:v5];
}

id sub_1000F4E18(uint64_t a1)
{
  [UIApp startedTest:qword_1006CB340];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 rotateToOrientation:4 iterationsRemaining:v3 completion:&stru_100649C80];
}

id sub_1000F4FD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 ic_notesListScrollView];
  v5 = [v3 selectFirstNoteInScrollView:v4 errorString:a2];

  return v5;
}

void sub_1000F5028(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"iterations"];
  v3 = [v2 intValue];

  v4 = [*(a1 + 32) objectForKey:@"offset"];
  v5 = [v4 intValue];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 20;
  }

  v7 = [*(a1 + 40) ic_noteEditorViewController];
  [v7 runTableHorizontalScrollPerformanceTest:qword_1006CB340 iterations:v3 offset:v6];
}

id sub_1000F5224(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 ic_notesListScrollView];
  v5 = [v3 selectFirstNoteInScrollView:v4 errorString:a2];

  return v5;
}

void sub_1000F527C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"iterations"];
  v3 = [v2 intValue];

  v4 = [*(a1 + 32) objectForKey:@"offset"];
  v5 = [v4 intValue];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 20;
  }

  v7 = [*(a1 + 40) ic_noteEditorViewController];
  [v7 runScrollPerformanceTest:qword_1006CB340 iterations:v3 offset:v6];
}

void sub_1000F53E0(uint64_t a1)
{
  v2 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F5474;
  block[3] = &unk_100645E30;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_1000F5474(uint64_t a1)
{
  [UIApp startedTest:qword_1006CB340];
  sub_1000F2690(qword_1006CB340, 1);
  v2 = [*(a1 + 32) ic_viewControllerManager];
  [v2 setNoteContainerViewMode:1];
}

void sub_1000F55D4(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_notesGridScrollView];
  [*(a1 + 32) performScrollTestForScrollView:v2 withOptions:*(a1 + 40)];
}

void sub_1000F57C8(uint64_t a1)
{
  byte_1006CB359 = 0;
  [UIApp startedTest:qword_1006CB340];
  [UIApp startedSubTest:@"ICDelaySubTest" forTest:qword_1006CB340];
  byte_1006CB370 = 1;
  v2 = *(a1 + 32);
  v3 = [v2 ic_notesListScrollView];
  v6 = 0;
  v4 = [v2 selectFirstNoteInScrollView:v3 errorString:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    [UIApp failedTest:qword_1006CB340 withFailure:v5];
  }
}

id sub_1000F59D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 ic_notesListScrollView];
  v5 = [v3 selectFirstNoteInScrollView:v4 errorString:a2];

  return v5;
}

void sub_1000F5A30(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"iterations"];
  v3 = [v2 intValue];

  v4 = [*(a1 + 32) objectForKey:@"offset"];
  v5 = [v4 intValue];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = 20;
  }

  v7 = [*(a1 + 40) ic_noteEditorViewController];
  [v7 runScrollPerformanceTest:qword_1006CB340 iterations:v3 offset:v6];
}

id sub_1000F5BF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 ic_notesListScrollView];
  v5 = [v3 selectFirstNoteInScrollView:v4 errorString:a2];

  return v5;
}

id sub_1000F5C50(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F5D1C;
  v3[3] = &unk_100645E30;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000F5D24;
  v2[3] = &unk_100645E30;
  v2[4] = v4;
  return [UIApp runTestForKeyboardBringupAndDismissalWithName:qword_1006CB340 withShowKeyboardBlock:v3 withHideKeyboardBlock:v2 withExtraResultsBlock:0 withCleanupBlock:0];
}

id sub_1000F5E3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 ic_notesListScrollView];
  v5 = [v3 selectFirstNoteInScrollView:v4 errorString:a2];

  return v5;
}

id sub_1000F5E94(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F5F60;
  v3[3] = &unk_100645E30;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000F5F68;
  v2[3] = &unk_100645E30;
  v2[4] = v4;
  return [UIApp runTestForKeyboardRotationWithName:qword_1006CB340 fromOrientation:1 withShowKeyboardBlock:v3 withExtraResultsBlock:0 withCleanupBlock:v2];
}

id sub_1000F6080(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 ic_notesListScrollView];
  v5 = [v3 selectFirstNoteInScrollView:v4 errorString:a2];

  return v5;
}

id sub_1000F60D8(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F61A0;
  v3[3] = &unk_100645E30;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000F61A8;
  v2[3] = &unk_100645E30;
  v2[4] = v4;
  return [UIApp runTestForKeyboardSplitAndMergeWithName:qword_1006CB340 withShowKeyboardBlock:v3 withExtraResultsBlock:0 withCleanupBlock:v2];
}

uint64_t sub_1000F62AC(uint64_t a1)
{
  [*(a1 + 32) showAccountsList];
  [*(a1 + 32) ic_selectLocalModernAccount];
  return 1;
}

id sub_1000F62E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 ic_notesListScrollView];
  v5 = [v3 selectFirstNoteInScrollView:v4 errorString:a2];

  if (v5)
  {
    dispatchMainAfterDelay();
  }

  return v5;
}

void sub_1000F63A4(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) ic_noteEditorViewController];
  v3 = [v2 addNewNote];
  v4 = ICDynamicCast();

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F6490;
  v8[3] = &unk_100645E30;
  v9 = v4;
  v5 = v4;
  v6 = objc_retainBlock(v8);
  v7 = qword_1006CB350;
  qword_1006CB350 = v6;
}

void sub_1000F6490(uint64_t a1)
{
  [ICNote purgeNote:*(a1 + 32)];
  v1 = +[ICNoteContext sharedContext];
  [v1 saveImmediately];
}

void sub_1000F64EC(uint64_t a1)
{
  byte_1006CB359 = 0;
  [UIApp startedTest:qword_1006CB340];
  v2 = [*(a1 + 32) ic_noteEditorViewController];
  [v2 createTodoListItem:0];
}

void sub_1000F6560(id a1, NSString *a2)
{
  v2 = qword_1006CB350;
  v3 = *(qword_1006CB350 + 16);
  v6 = a2;
  v3(v2);
  v4 = qword_1006CB350;
  qword_1006CB350 = 0;

  sub_1000F0F10(v5, v6);
}

uint64_t sub_1000F66C4(uint64_t a1)
{
  [*(a1 + 32) showAccountsList];
  [*(a1 + 32) ic_selectLocalModernAccount];
  return 1;
}

id sub_1000F66F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 ic_notesListScrollView];
  v5 = [v3 selectFirstNoteInScrollView:v4 errorString:a2];

  return v5;
}

void sub_1000F6750(uint64_t a1)
{
  [UIApp startedTest:qword_1006CB340];
  sub_1000F2690(qword_1006CB340, 1);
  v2 = [*(a1 + 32) ic_noteEditorViewController];
  [v2 showInkPicker:0];
}

void sub_1000F685C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000F6934;
  v8[3] = &unk_100645E30;
  v8[4] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000F6998;
  v5[3] = &unk_100645BA0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 showNotesListWithAccountSelectionBlock:v8 readyBlock:v5];
}

void sub_1000F6934(uint64_t a1)
{
  [*(a1 + 32) showAccountsList];
  [*(a1 + 32) ic_selectLocalModernAccount];
  v2 = [*(a1 + 32) ic_viewControllerManager];
  [v2 performToggleSearch:*(a1 + 32)];
}

void sub_1000F6998(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"searchQuery"];
  v3 = v2;
  v4 = @"a";
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  [UIApp startedTest:qword_1006CB340];
  v6 = [*(a1 + 40) ic_viewControllerManager];
  [v6 startSearchWithSearchQueryString:v5 becomeFirstResponder:0];
}

uint64_t sub_1000F6B84(uint64_t a1)
{
  [*(a1 + 32) showAccountsList];
  [*(a1 + 32) ic_selectLocalModernAccount];
  return 1;
}

BOOL sub_1000F6BB8(uint64_t a1)
{
  v1 = [*(a1 + 32) ic_viewControllerManager];
  v2 = [v1 rootNoteBrowseViewController];

  v3 = [v2 noteContainer];
  v4 = [v3 noteContainerAccount];
  v5 = [v4 defaultFolder];

  v6 = +[ICApplicationTestingHelper sharedHelper];
  v7 = [v6 testNoteIdentifier];

  v8 = +[ICNoteContext sharedContext];
  v9 = [v8 managedObjectContext];
  v10 = [ICNote noteWithIdentifier:v7 includeDeleted:0 context:v9];

  v11 = +[ICNoteContext sharedContext];
  v12 = [v11 addNewNoteByCopyingNote:v10 toFolder:v5];

  if (v12)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000F6DE0;
    v18[3] = &unk_100645E30;
    v13 = v12;
    v19 = v13;
    v14 = objc_retainBlock(v18);
    v15 = qword_1006CB350;
    qword_1006CB350 = v14;

    v17 = v13;
    dispatchMainAfterDelay();
  }

  return v12 != 0;
}

void sub_1000F6DE0(uint64_t a1)
{
  [ICNote purgeNote:*(a1 + 32)];
  v1 = +[ICNoteContext sharedContext];
  [v1 saveImmediately];
}

uint64_t sub_1000F6E3C(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_viewControllerManager];
  v3 = [*(a1 + 40) objectID];
  [v2 selectNoteWithObjectID:v3 scrollState:0 startEditing:0 animated:0 ensurePresented:1];

  return dispatchMainAfterDelay();
}

id sub_1000F6F0C(uint64_t a1)
{
  [*(a1 + 32) bringUpKeyboard];
  v2 = *(a1 + 32);

  return [v2 goToBottomOfNoteInEditor];
}

void sub_1000F6F48(uint64_t a1)
{
  byte_1006CB359 = 0;
  [UIApp startedTest:qword_1006CB340];
  [UIApp startedSubTest:@"ICNoteEditorTypingSubTest" forTest:qword_1006CB340];
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"iostypingtest" withExtension:@"recap"];

  v5 = sub_1004E9FEC(v4);
  v7 = *(v6 + 64);
  v21 = 0;
  v8 = [v7 eventStreamWithFileURL:v3 error:{&v21, v5}];
  v9 = v21;
  v11 = v9;
  if (v8)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v16 = sub_1004EA010(v10);
    v18 = *(v17 + 72);
    sub_1004EA034(v16);
    v19 = objc_opt_new();
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000F70EC;
    v20[3] = &unk_100645E30;
    v20[4] = *(a1 + 32);
    [v18 playEventStream:v8 options:v19 completion:v20];
  }

  else
  {
    v13 = UIApp;
    v14 = qword_1006CB340;
    v15 = [v9 localizedDescription];
    [v13 failedTest:v14 withFailure:v15];

    v11 = v15;
  }
}

id sub_1000F70EC(uint64_t a1)
{
  [UIApp finishedSubTest:@"ICNoteEditorTypingSubTest" forTest:qword_1006CB340];
  byte_1006CB35A = 1;
  [UIApp startedSubTest:@"ICNoteEditorTypingFinishedSubTest" forTest:qword_1006CB340];
  v2 = *(a1 + 32);

  return [v2 textViewDidChange];
}

void sub_1000F7168(id a1, NSString *a2)
{
  v2 = qword_1006CB350;
  v3 = *(qword_1006CB350 + 16);
  v6 = a2;
  v3(v2);
  v4 = qword_1006CB350;
  qword_1006CB350 = 0;

  sub_1000F0F10(v5, v6);
}

uint64_t sub_1000F7304(uint64_t a1)
{
  [*(a1 + 32) showAccountsList];
  [*(a1 + 32) ic_selectLocalModernAccount];
  return 1;
}

id sub_1000F7338(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 ic_notesListScrollView];
  v5 = [v3 selectFirstNoteInScrollView:v4 errorString:a2];

  return v5;
}

void sub_1000F7390(uint64_t a1)
{
  v4 = [*(a1 + 32) ic_viewControllerManager];
  v1 = [v4 window];
  v2 = [RPTResizeTestParameters alloc];
  v3 = [v2 initWithTestName:qword_1006CB340 window:v1 completionHandler:0];
  [v3 setMinimumWindowSize:{300.0, 300.0}];
  [v3 setMaximumWindowSize:{600.0, 600.0}];
  [RPTTestRunner runTestWithParameters:v3];
}

void sub_1000F7668(uint64_t a1, int a2)
{
  v10[0] = @"iterations";
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) scrollIterationsFromDefaults]);
  v11[0] = v4;
  v10[1] = @"offset";
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) scrollOffsetFromDefaults]);
  v11[1] = v5;
  v10[2] = @"recapBased";
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) scrollTestUseRecap]);
  v11[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  LODWORD(v5) = [*(a1 + 32) scrollTestUseFlick];
  v8 = *(a1 + 32);
  v9 = [v8 ic_notesListScrollView];
  if (v5)
  {
    [v8 performFlickScrollTestForScrollView:v9 withOptions:v7];
  }

  else
  {
    [v8 performScrollTestForScrollView:v9 withOptions:v7];
  }

  notify_cancel(a2);
}

id sub_1000F7924(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [v3 ic_notesListScrollView];
  v5 = [v3 selectFirstNoteInScrollView:v4 errorString:a2];

  return v5;
}

void sub_1000F797C(uint64_t a1, int a2)
{
  v12[0] = @"iterations";
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) scrollIterationsFromDefaults]);
  v13[0] = v4;
  v12[1] = @"offset";
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) scrollOffsetFromDefaults]);
  v13[1] = v5;
  v12[2] = @"recapBased";
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) scrollTestUseRecap]);
  v13[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];

  v8 = [*(a1 + 32) ic_noteEditorViewController];
  v9 = [v8 textView];

  v10 = [*(a1 + 32) scrollTestUseFlick];
  v11 = *(a1 + 32);
  if (v10)
  {
    [v11 performFlickScrollTestForScrollView:v9 withOptions:v7];
  }

  else
  {
    [v11 performScrollTestForScrollView:v9 withOptions:v7];
  }

  notify_cancel(a2);
}

uint64_t sub_1000F7CB4(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Test");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DF980(a1);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000F7D2C(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Test");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DF980(a1);
  }

  [*(a1 + 40) setDisabled:1];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000F7FB8(id *a1)
{
  [a1[4] showAccountsList];
  v2 = dispatch_time(0, 500000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F807C;
  v3[3] = &unk_100649D58;
  v4 = a1[5];
  v5 = a1[6];
  dispatch_after(v2, &_dispatch_main_q, v3);
}

void sub_1000F807C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F8138;
  block[3] = &unk_100645CC8;
  v5 = *(a1 + 40);
  dispatch_after(v3, &_dispatch_main_q, block);
}

void sub_1000F8138(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[ICApplicationTestingHelper sharedHelper];
    [v2 waitForPostLaunchTasksThenPerformBlock:*(a1 + 32)];
  }
}

void sub_1000F8240(uint64_t a1)
{
  v2 = [*(a1 + 32) ic_viewControllerManager];
  [v2 setNoteContainerViewMode:1];

  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = [*(a1 + 32) ic_viewControllerManager];
    v6 = [v5 mainSplitViewController];
    [v6 hideColumn:0];
  }

  v7 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F8360;
  block[3] = &unk_100645CC8;
  v9 = *(a1 + 40);
  dispatch_after(v7, &_dispatch_main_q, block);
}

void sub_1000F8360(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[ICApplicationTestingHelper sharedHelper];
    [v2 waitForPostLaunchTasksThenPerformBlock:*(a1 + 32)];
  }
}

void sub_1000F84D4(id *a1)
{
  [a1[4] showAccountsList];
  v2 = dispatch_time(0, 500000000);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F85E0;
  v9[3] = &unk_100649DA8;
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v10 = v8;
  v11 = v7;
  dispatch_after(v2, &_dispatch_main_q, v9);
}

void sub_1000F85E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_6;
  }

  v11 = 0;
  v3 = (*(v2 + 16))(v2, &v11);
  v4 = v11;
  if ((v3 & 1) != 0 || (v5 = *(a1 + 40)) == 0)
  {

LABEL_6:
    v6 = dispatch_time(0, 2000000000);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F8708;
    v7[3] = &unk_100649D80;
    v8 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    dispatch_after(v6, &_dispatch_main_q, v7);

    v4 = v8;
    goto LABEL_7;
  }

  (*(v5 + 16))(v5, v4);
LABEL_7:
}

void sub_1000F8708(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v3 = (*(v2 + 16))(v2, &v9);
  v4 = v9;
  if ((v3 & 1) != 0 || (v5 = *(a1 + 40)) == 0)
  {

LABEL_6:
    v6 = dispatch_time(0, 2000000000);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F8808;
    v7[3] = &unk_100645CC8;
    v8 = *(a1 + 48);
    dispatch_after(v6, &_dispatch_main_q, v7);
    v4 = v8;
    goto LABEL_7;
  }

  (*(v5 + 16))(v5, v4);
LABEL_7:
}

void sub_1000F8808(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[ICApplicationTestingHelper sharedHelper];
    [v2 waitForPostLaunchTasksThenPerformBlock:*(a1 + 32)];
  }
}

void sub_1000F8D84(id a1)
{
  v1 = [[NSSet alloc] initWithObjects:{@"ICScrollAccountsList", @"ICScrollAccountsListRecap", @"ICScrollNotesList", @"ICScrollEnglishNotesListRecap", @"ICScrollNote", @"ICScrollNoteRecap", @"ICScrollTableHorizontally", @"ICScrollTableVertically", @"ICScrollNotesGrid", @"ICScrollNotesGridRecap", 0}];
  v2 = qword_1006CB360;
  qword_1006CB360 = v1;
}

void sub_1000F8F14(uint64_t a1)
{
  v1 = 4;
  if (*(a1 + 48) != 1)
  {
    v1 = 1;
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000F8FB8;
  v3[3] = &unk_100649E18;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v5 = v1;
  v6 = *(a1 + 56);
  v4 = v2;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_1000F9518(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    [*(a1 + 32) setEditing:0 animated:1];
    v6 = *(a1 + 40);
    v7 = [v10 objectID];
    [v6 selectContainerWithIdentifier:v7 usingRootViewController:1 deferUntilDataLoaded:0 animated:0];
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = [*(a1 + 48) activityType];
    (*(v8 + 16))(v8, v10 != 0, v9);
  }
}

void sub_1000F9B30(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 1, v3);
  }
}

void sub_1000F9DAC(uint64_t a1)
{
  v1 = [ICAccount allActiveCloudKitAccountsInContext:*(a1 + 32)];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
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

        [ICHashtag dedupeHashtagsInAccount:*(*(&v6 + 1) + 8 * v5)];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_1000FB040(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 32) collectionView];
  [v3 browseAttachmentsCollectionView:v2 didSelectAttachment:*(a1 + 40) indexPath:*(a1 + 48)];
}

void sub_1000FB260(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) changesFromFetchedResultsController];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 type];
        if (v8 > 2)
        {
          if (v8 == 3)
          {
            v9 = [*(a1 + 32) collectionView];
            v10 = [v7 indexPath];
            v11 = [v7 theNewIndexPath];
            [v9 moveItemAtIndexPath:v10 toIndexPath:v11];
          }

          else
          {
            if (v8 != 4)
            {
              continue;
            }

            v9 = [*(a1 + 32) collectionView];
            v10 = [v7 indexPath];
            v17 = v10;
            v11 = [NSArray arrayWithObjects:&v17 count:1];
            [v9 reloadItemsAtIndexPaths:v11];
          }
        }

        else if (v8 == 1)
        {
          v9 = [*(a1 + 32) collectionView];
          v10 = [v7 theNewIndexPath];
          v18 = v10;
          v11 = [NSArray arrayWithObjects:&v18 count:1];
          [v9 insertItemsAtIndexPaths:v11];
        }

        else
        {
          if (v8 != 2)
          {
            continue;
          }

          v9 = [*(a1 + 32) collectionView];
          v10 = [v7 indexPath];
          v19 = v10;
          v11 = [NSArray arrayWithObjects:&v19 count:1];
          [v9 deleteItemsAtIndexPaths:v11];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v4);
  }

  v12 = [*(a1 + 32) changesFromFetchedResultsController];
  [v12 removeAllObjects];
}

id sub_1000FB4DC(uint64_t a1)
{
  [*(a1 + 32) setPerformingBatchUpdatesFromFetchedResultsController:0];
  result = [*(a1 + 32) reloadDataAfterBatchUpdates];
  if (result)
  {
    v3 = [*(a1 + 32) collectionView];
    [v3 reloadData];

    v4 = *(a1 + 32);

    return [v4 setReloadDataAfterBatchUpdates:0];
  }

  return result;
}

void sub_1000FBD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000FBDB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained thumbnailLayout];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [v2 collectionView];
    v5 = [v4 visibleCells];

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

          [*(*(&v11 + 1) + 8 * v9) setThumbnailLayout:v3];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    v10 = [v2 contextInteraction];
    [v10 dismissMenu];
  }
}

void sub_1000FC9F8(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 ic_save];
}

void sub_1000FD448(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 ic_save];
}

void sub_1000FEBE4(uint64_t a1)
{
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 loadNibNamed:v8 owner:*(a1 + 32) options:0];

  objc_opt_class();
  v5 = [v4 firstObject];
  v6 = ICDynamicCast();
  v7 = qword_1006CB378;
  qword_1006CB378 = v6;

  [qword_1006CB378 setTranslatesAutoresizingMaskIntoConstraints:0];
}

void sub_1000FF4D8(uint64_t a1)
{
  v2 = +[ICCollaborationController sharedInstance];
  v3 = [v2 objectForShare:*(a1 + 32) accountID:*(a1 + 40) context:*(a1 + 48)];

  if (v3 && ([v3 cloudAccount], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [*(a1 + 32) URL];
    v6 = [v3 cloudAccount];
    v7 = [ICInvitation makeInvitationIfNeededWithShareURL:v5 account:v6 context:*(a1 + 48)];

    [v7 setRootObject:v3];
    [v7 updateFromShare:*(a1 + 32)];
    v8 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DFD98((a1 + 32), v3, v8);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [v3 associatedNoteParticipants];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(a1 + 48) deleteObject:*(*(&v14 + 1) + 8 * v13)];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    [*(a1 + 48) ic_save];
  }

  else
  {
    v7 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004DFE60((a1 + 32));
    }
  }
}

void sub_10010057C(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = [*(a1 + 32) presentingViewController];
    v4 = [v3 ic_viewControllerManager];

    v5 = [v8 objectID];
    [v4 selectContainerWithIdentifier:v5 usingRootViewController:1 deferUntilDataLoaded:1 animated:1];
  }

  [*(a1 + 32) activityDidFinish:1];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [*(a1 + 32) activityType];
    (*(v6 + 16))(v6, 1, v7);
  }
}

NSString *__cdecl sub_100100884(id a1, unint64_t a2, unint64_t a3)
{
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Archiving %lu of %lu Notes" value:&stru_100661CF0 table:0];
  v7 = [NSString localizedStringWithFormat:v6, a2, a3];

  return v7;
}

void sub_100100B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100100B30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100100B48(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 archiveExporter];
  v6 = a1[5];
  v7 = *(a1[7] + 8);
  obj = *(v7 + 40);
  v8 = [v5 createArchiveForObjects:v6 progress:v4 error:&obj];

  objc_storeStrong((v7 + 40), obj);
  v9 = *(a1[6] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t sub_100100BEC(uint64_t a1, void *a2)
{
  if (([a2 isCancelled] & 1) == 0)
  {
    [*(a1 + 32) showResultForArchiveURL:*(*(*(a1 + 48) + 8) + 40) andError:*(*(*(a1 + 56) + 8) + 40)];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_100100F54(uint64_t a1)
{
  v2 = [*(a1 + 32) archiveExporter];
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 removeArchiveAt:v3 error:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    NSLog(@"Error removing archive: %@", v5);
  }
}

void sub_100101A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100101AA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100101CB0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) collectionView];
    v3 = [v2 indexPathsForVisibleSupplementaryElementsOfKind:UICollectionElementKindSectionHeader];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = [*(a1 + 32) collectionView];
          v11 = [v10 supplementaryViewForElementKind:UICollectionElementKindSectionHeader atIndexPath:v9];

          objc_opt_class();
          v12 = ICDynamicCast();
          [*(a1 + 32) updateHeaderView:v12 forIndexPath:v9 usingSnapshot:*(a1 + 40)];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }
}

uint64_t sub_100101E44(uint64_t a1)
{
  v2 = [*(a1 + 32) diffableDataSource];
  [v2 applySnapshot:*(a1 + 40) animatingDifferences:1];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

uint64_t sub_100101EA0(uint64_t a1)
{
  v2 = [*(a1 + 32) diffableDataSource];
  [v2 applySnapshotUsingReloadData:*(a1 + 40)];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_10010263C(uint64_t a1, void *a2)
{
  v3 = a2;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100102884;
  v24[3] = &unk_100645BA0;
  v24[4] = *(a1 + 32);
  v4 = v3;
  v25 = v4;
  v5 = objc_retainBlock(v24);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100102948;
  v22[3] = &unk_100645BA0;
  v22[4] = *(a1 + 32);
  v6 = v4;
  v23 = v6;
  v7 = objc_retainBlock(v22);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100102AA8;
  v20[3] = &unk_100645BA0;
  v20[4] = *(a1 + 32);
  v8 = v6;
  v21 = v8;
  v9 = objc_retainBlock(v20);
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100102B28;
  v17 = &unk_100645BA0;
  v18 = *(a1 + 32);
  v10 = v8;
  v19 = v10;
  v11 = objc_retainBlock(&v14);
  [v10 deleteAllItems];
  v12 = *(a1 + 40);
  v13 = v5;
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = v5;
  if (v12 == 2)
  {
    goto LABEL_5;
  }

  if (v12 == 1)
  {
    (v5[2])(v5);
    v13 = v7;
LABEL_5:
    (v13[2])();
    (v9[2])(v9);
    (v11[2])(v11);
  }
}

void sub_100102884(uint64_t a1)
{
  v2 = [*(a1 + 32) searchResults];
  v3 = [v2 topHitResults];
  v4 = [v3 count];

  if (v4)
  {
    v5 = *(a1 + 32);
    v7 = [v5 searchResults];
    v6 = [v7 topHitResults];
    [v5 insertItems:v6 intoSection:@"ICNoteSearchDataSourceTopHitsSectionIdentifier" snapshot:*(a1 + 40)];
  }
}

void sub_100102948(uint64_t a1)
{
  if ([*(a1 + 32) integratesSuggestions] && (objc_msgSend(*(a1 + 32), "searchResults"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "suggestions"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v2, v4))
  {
    v5 = *(a1 + 32);
    v9 = [v5 searchResults];
    v6 = [v9 suggestions];
    [v5 insertItems:v6 intoSection:@"ICNoteSearchDataSourceSuggestionsSectionIdentifier" snapshot:*(a1 + 40)];
  }

  else
  {
    v7 = [*(a1 + 32) currentSnapshot];
    v10 = @"ICNoteSearchDataSourceSuggestionsSectionIdentifier";
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    [v7 deleteSectionsWithIdentifiers:v8];
  }
}

void sub_100102AA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 searchResults];
  v3 = [v4 noteResults];
  [v2 insertItems:v3 intoSection:@"ICNoteSearchDataSourceNoteSectionIdentifier" snapshot:*(a1 + 40)];
}

void sub_100102B28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [v2 searchResults];
  v3 = [v4 attachmentResults];
  [v2 insertItems:v3 intoSection:@"ICNoteSearchDataSourceAttachmentSectionIdentifier" snapshot:*(a1 + 40)];
}

id sub_100103D28(uint64_t a1, char a2)
{
  if (a2)
  {
    return [*(a1 + 32) convertToSmartFolderWithCompletion:*(a1 + 40)];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 2))(result, 0, 0);
  }

  return result;
}

uint64_t sub_100103D58(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t sub_10010471C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t sub_100104738(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_100104754(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 presentViewController:*(a1 + 40) animated:1 completion:0];
}

void sub_1001056F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  [v2 addObject:v3];
}

void sub_1001058B0(uint64_t a1)
{
  v2 = [*(a1 + 32) modernViewContext];
  v3 = [*(a1 + 40) userInfo];
  v4 = [v3 objectForKeyedSubscript:ICThumbnailCacheObjectIDKey];
  v9 = [v2 objectWithID:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v9 note];
    v6 = [v5 objectID];

    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_6:
    v7 = *(a1 + 32);
    v8 = [NSSet setWithObject:v6];
    [v7 updateCellsForManagedObjectIDs:v8 updateTextAndStatus:1 updateThumbnails:1];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v9 objectID];
    if (v6)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

id sub_100105C04(uint64_t a1)
{
  [*(a1 + 32) updatePreparedCells];
  v2 = *(a1 + 32);

  return [v2 dismissContextMenu];
}

BOOL sub_100105DFC(id a1, UIInteraction *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_100106328(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DFF08(v2);
  }

  v3 = +[ICMedia predicateForVisibleObjects];
  [ICMedia ic_enumerateObjectsMatchingPredicate:v3 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 context:*(a1 + 32) batchSize:10 saveAfterBatch:1 usingBlock:&stru_10064A0B8];
}

void sub_1001063D4(id a1, ICMedia *a2, BOOL *a3)
{
  v3 = a2;
  if (([(ICMedia *)v3 isUnsupported]& 1) == 0 && ([(ICMedia *)v3 hasFile]& 1) == 0)
  {
    v4 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DFF4C(v3, v4);
    }

    [(ICMedia *)v3 setNeedsToBeFetchedFromCloud:1];
    [(ICMedia *)v3 clearServerRecords];
  }
}

void sub_100106AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100106AC4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100106ADC(void *a1, void *a2)
{
  v3 = a1[4];
  v11 = a1[5];
  v4 = a2;
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v6 = *(a1[7] + 8);
  obj = *(v6 + 40);
  v7 = [v3 createArchiveForObjects:v5 progress:v4 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100106BC4(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    v3 = *(*(a1 + 40) + 8);
    obj = *(v3 + 40);
    v4 = [v2 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&obj];
    objc_storeStrong((v3 + 40), obj);
    if (v4)
    {
      v5 = [[NSUserActivity alloc] initWithActivityType:@"com.apple.Pages.NoteImport"];
      v18 = @"archive_bookmark";
      v19 = v4;
      v6 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
      [v5 setUserInfo:v6];

      v7 = [LSApplicationRecord alloc];
      v8 = +[ICPagesHandoffManager bundleIdentifierForPages];
      v9 = *(*(a1 + 40) + 8);
      v16 = *(v9 + 40);
      v10 = [v7 initWithBundleIdentifier:v8 allowPlaceholder:0 error:&v16];
      objc_storeStrong((v9 + 40), v16);

      if (v10 || (v11 = [LSApplicationRecord alloc], +[ICPagesHandoffManager deprecatedBundleIdentifierForPages](ICPagesHandoffManager, "deprecatedBundleIdentifierForPages"), v12 = objc_claimAutoreleasedReturnValue(), v13 = *(*(a1 + 40) + 8), v15 = *(v13 + 40), v10 = [v11 initWithBundleIdentifier:v12 allowPlaceholder:0 error:&v15], objc_storeStrong((v13 + 40), v15), v12, v10))
      {
        v14 = +[LSApplicationWorkspace defaultWorkspace];
        [v14 openUserActivity:v5 usingApplicationRecord:v10 configuration:0 completionHandler:0];
      }
    }
  }
}

id sub_100107414(uint64_t a1)
{
  [ICMedia enumerateMediaInContext:*(a1 + 32) batchSize:10 saveAfterBatch:0 usingBlock:&stru_10064A160];
  v2 = *(a1 + 32);

  return [ICAttachmentPreviewImage enumerateAttachmentPreviewImagesInContext:v2 batchSize:10 saveAfterBatch:0 usingBlock:&stru_10064A1A0];
}

UIColor *__cdecl sub_100107764(id a1, UITraitCollection *a2)
{
  if (([(UITraitCollection *)a2 ic_isDark]& 1) != 0)
  {
    +[UIColor secondarySystemBackgroundColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v2 = ;

  return v2;
}

void sub_10010796C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v3 = v4;
  performBlockOnMainThreadAndWait();
}

void sub_100107A00(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2 && [v2 code] == 7)
  {
    if (*v3)
    {
      v4 = os_log_create("com.apple.notes", "QuickNote");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1004E0184(v3, v4);
      }
    }

    v5 = [*(a1 + 40) launchBlock];
    v5[2](v5, 2);
  }

  else
  {
    v6 = +[ICQuickNoteSessionManager sharedManager];
    v7 = [v6 isQuickNoteSessionActive];

    if (v7)
    {
      v8 = +[ICQuickNoteSessionManager sharedManager];
      [v8 endSession];
    }

    v9 = [*(a1 + 40) launchBlock];
    v9[2](v9, 1);
  }
}

void sub_100107F70(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v13;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v12 + 1) + 8 * i);
      if ([v8 ic_isNotesMigrated])
      {
        v9 = [v8 identifier];
        v10 = [*(a1 + 40) workerContext];
        v11 = [ICAccount accountWithIdentifier:v9 context:v10];

        if (v11 && (![v11 didChooseToMigrate] || !objc_msgSend(v11, "didFinishMigration") || (objc_msgSend(v11, "didMigrateOnMac") & 1) == 0))
        {
          v5 = 1;
          [v11 setDidChooseToMigrate:1];
          [v11 setDidFinishMigration:1];
          [v11 setDidMigrateOnMac:1];
        }
      }
    }

    v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  }

  while (v4);

  if (v5)
  {
    v2 = [*(a1 + 40) workerContext];
    [v2 ic_saveWithLogDescription:@"Fixing hidden iCloud CloudKit account(s)"];
LABEL_17:
  }
}

id sub_100108374(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) note];
  [v4 updateAttachmentViewTypeAndPropagateToAttachments:a2];

  v5 = [*(a1 + 32) note];
  v6 = [v5 managedObjectContext];
  [v6 ic_save];

  v7 = *(a1 + 32);

  return [v7 activityDidFinish:1];
}

void sub_1001085D4(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Note context background task %@ ran out of time to finish in background", &v4, 0xCu);
  }
}

void sub_100108958(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 1, v3);
  }

  if (*(a1 + 48) == 1)
  {
    v4 = [*(a1 + 32) eventReporter];
    [v4 submitAttachmentBrowserTapEvent];
  }
}

void sub_100108C70(uint64_t a1)
{
  v2 = [*(a1 + 32) shareURL];
  v3 = [v2 absoluteString];
  v5 = [v3 dataUsingEncoding:4];

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v5, 0);
  }
}

void sub_1001091D8(uint64_t a1)
{
  v2 = [*(a1 + 32) collaborationUIController];
  v3 = [*(a1 + 32) note];
  v4 = [*(a1 + 32) presentingViewController];
  v5 = [*(a1 + 32) presentingBarButtonItem];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100109318;
  v9[3] = &unk_100645E30;
  v6 = *(a1 + 40);
  v10 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100109384;
  v7[3] = &unk_100645E80;
  v7[4] = v10;
  v8 = v6;
  [v2 showCloudSharingControllerForNote:v3 presentingViewController:v4 popoverBarButtonItem:v5 presented:v9 dismissed:v7];
}

void sub_100109318(uint64_t a1)
{
  if ([*(a1 + 32) contextPathEnum])
  {
    v2 = [*(a1 + 32) eventReporter];
    [v2 popContextPathData];
  }
}

void sub_100109384(uint64_t a1)
{
  [*(a1 + 32) activityDidFinish:1];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) activityType];
    (*(v2 + 16))(v2, 1, v3);
  }
}

void sub_100109B1C(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0288(v2);
  }

  v3 = +[ICAttachment predicateForVisibleObjects];
  v9[0] = v3;
  v4 = +[ICAttachment predicateForAllPaperKitBackedAttachments];
  v9[1] = v4;
  v5 = [NSArray arrayWithObjects:v9 count:2];
  v6 = [NSCompoundPredicate andPredicateWithSubpredicates:v5];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100109C94;
  v8[3] = &unk_10064A260;
  v7 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  [ICAttachment ic_enumerateObjectsMatchingPredicate:v6 sortDescriptors:0 relationshipKeyPathsForPrefetching:0 context:v7 batchSize:10 saveAfterBatch:1 usingBlock:v8];
}

void sub_100109C94(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isUnsupported] & 1) == 0)
  {
    v4 = [v3 paperBundleModel];
    v5 = [v4 paperBundleURL];

    if (v5 && (([*(a1 + 32) paperBundleIsMissing:v5] & 1) != 0 || objc_msgSend(*(a1 + 32), "paperBundleIsEmpty:", v5)))
    {
      v6 = os_log_create("com.apple.notes", "LaunchTask");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_1004E02CC(v3, v6);
      }

      v7 = +[NSFileManager defaultManager];
      [v7 removeItemAtURL:v5 error:0];

      [v3 setNeedsToBeFetchedFromCloud:1];
      [v3 clearServerRecords];
    }
  }
}

void sub_100109E7C(id a1)
{
  v1 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody scale:3];
  v2 = qword_1006CB3A0;
  qword_1006CB3A0 = v1;
}

void sub_100109F6C(uint64_t a1)
{
  v3 = [*(a1 + 32) selectionImageConfiguration];
  v1 = [UIImage systemImageNamed:@"circle.fill" withConfiguration:v3];
  v2 = qword_1006CB3B0;
  qword_1006CB3B0 = v1;
}

void sub_10010A084(uint64_t a1)
{
  v3 = [*(a1 + 32) selectionImageConfiguration];
  v1 = [UIImage systemImageNamed:@"checkmark.circle" withConfiguration:v3];
  v2 = qword_1006CB3C0;
  qword_1006CB3C0 = v1;
}

void sub_10010A19C(uint64_t a1)
{
  v3 = [*(a1 + 32) selectionImageConfiguration];
  v1 = [UIImage systemImageNamed:@"circle" withConfiguration:v3];
  v2 = qword_1006CB3D0;
  qword_1006CB3D0 = v1;
}

void sub_10010A9FC(uint64_t a1)
{
  v2 = dispatch_time(0, 3000000000);
  dispatch_after(v2, &_dispatch_main_q, *(a1 + 40));
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:*(a1 + 32) name:@"NotesLaunchPostTasksCompleted" object:0];
}

BOOL sub_10010ADE4(unint64_t a1, BOOL *a2)
{
  v2 = vcvtmd_u64_f64(NoteObjectMaximumImapSyncableSize * 0.98);
  if (a2)
  {
    *a2 = vabdd_f64(a1, v2) < 1000000.0;
  }

  return v2 > a1;
}

void sub_10010B0F0(uint64_t a1)
{
  v1 = [*(a1 + 32) dimmingView];
  [v1 setAlpha:1.0];
}

void sub_10010B220(uint64_t a1)
{
  [*(a1 + 32) frameOfPresentedViewInContainerView];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) presentedView];
  [v10 setFrame:{v3, v5, v7, v9}];
}

void sub_10010B36C(uint64_t a1)
{
  v1 = [*(a1 + 32) dimmingView];
  [v1 setAlpha:0.0];
}

id sub_10010B6D8(uint64_t a1)
{
  [*(a1 + 32) frame];
  v2 = *(a1 + 32);

  return [v2 setFrame:?];
}

void sub_10010BF70(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = +[NSDate date];
    [*(a1 + 32) setProgressIndicatorStartDate:v2];

    v3 = [*(a1 + 32) delegate];
    [v3 progressIndicatorTrackerStartAnimation];
  }

  else
  {
    v3 = [*(a1 + 32) delegate];
    [v3 progressIndicatorTrackerStopAnimation];
  }
}

void sub_10010C338(void *a1)
{
  v1 = [a1 statusBarManager];
  [v1 statusBarFrame];
}

void sub_10010F3C8(uint64_t a1)
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v27;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v26 + 1) + 8 * i) layer];
        LODWORD(v8) = 1.0;
        [v7 setOpacity:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v22 + 1) + 8 * j) layer];
        [v14 setOpacity:0.0];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v11);
  }

  if ([*(a1 + 48) isPresenting])
  {
    if (*(a1 + 176))
    {
      [*(a1 + 56) setFrame:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
    }

    v15 = *(a1 + 64);
    if (v15)
    {
      v16 = 96;
      v17 = 88;
      v18 = 80;
      v19 = 72;
LABEL_24:
      [v15 setFrame:{*(a1 + v19), *(a1 + v18), *(a1 + v17), *(a1 + v16), v22}];
      v20 = *(a1 + 104);
      v21 = [*(a1 + 64) layer];
      [v21 setCornerRadius:v20];
    }
  }

  else
  {
    if (*(a1 + 176))
    {
      [*(a1 + 56) setFrame:{*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136)}];
    }

    v15 = *(a1 + 64);
    if (v15)
    {
      v16 = 168;
      v17 = 160;
      v18 = 152;
      v19 = 144;
      goto LABEL_24;
    }
  }
}

void sub_10010F61C(uint64_t a1)
{
  [*(a1 + 32) completeTransition:{objc_msgSend(*(a1 + 32), "transitionWasCancelled") ^ 1}];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v42;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v42 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v41 + 1) + 8 * i) layer];
        LODWORD(v8) = 1.0;
        [v7 setOpacity:v8];
      }

      v4 = [v2 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v4);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = *(a1 + 48);
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v37 + 1) + 8 * j) layer];
        [v14 setOpacity:0.0];
      }

      v11 = [v9 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v11);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v15 = *(a1 + 56);
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      for (k = 0; k != v17; k = k + 1)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v33 + 1) + 8 * k) removeFromSuperview];
      }

      v17 = [v15 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v17);
  }

  v20 = [*(a1 + 64) pageViewController];
  v21 = [v20 view];
  [v21 setAlpha:1.0];

  if ([*(a1 + 72) isPresenting])
  {
    if (*(a1 + 232))
    {
      [*(a1 + 80) setFrame:{*(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152)}];
    }

    v22 = *(a1 + 88);
    if (v22)
    {
      v23 = 152;
      v24 = 144;
      v25 = 136;
      v26 = 128;
LABEL_31:
      [v22 setFrame:{*(a1 + v26), *(a1 + v25), *(a1 + v24), *(a1 + v23)}];
      v27 = *(a1 + 160);
      v28 = [*(a1 + 88) layer];
      [v28 setCornerRadius:v27];
    }
  }

  else
  {
    if (*(a1 + 232))
    {
      [*(a1 + 80) setFrame:{*(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192)}];
    }

    v22 = *(a1 + 88);
    if (v22)
    {
      v23 = 224;
      v24 = 216;
      v25 = 208;
      v26 = 200;
      goto LABEL_31;
    }
  }

  [*(a1 + 96) setAlpha:1.0];
  [*(a1 + 104) setAlpha:1.0];
  [*(a1 + 112) setAlpha:1.0];
  if ([*(a1 + 120) count])
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10010FA38;
    v31[3] = &unk_100645E30;
    v32 = *(a1 + 120);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10010FB38;
    v29[3] = &unk_1006469F0;
    v30 = *(a1 + 120);
    [UIView animateWithDuration:v31 animations:v29 completion:0.1];
  }
}

void sub_10010FA38(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) layer];
        [v6 setOpacity:0.0];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void sub_10010FB38(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
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

        [*(*(&v6 + 1) + 8 * v5) removeFromSuperview];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_10010FD7C(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

void sub_10010FDC4(uint64_t a1)
{
  [*(a1 + 32) completeTransition:{objc_msgSend(*(a1 + 32), "transitionWasCancelled") ^ 1}];
  v2 = [*(a1 + 40) view];
  [v2 setAlpha:0.0];
}

void sub_10010FF50(id a1)
{
  if (!qword_1006CB3E8)
  {
    v1 = objc_alloc_init(ICAttachmentPreviewImageCache);
    v2 = qword_1006CB3E8;
    qword_1006CB3E8 = v1;
  }
}

void sub_1001104AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001104E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained attachment];
    v7 = [v6 identifier];
    v8 = [v7 isEqualToString:*(a1 + 32)];

    if (v8)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1001105E4;
      v9[3] = &unk_100645BA0;
      v10 = v5;
      v11 = v3;
      [UIView performWithoutAnimation:v9];
    }
  }
}

void sub_1001105E4(uint64_t a1)
{
  v2 = [*(a1 + 32) thumbnailView];
  [v2 setImage:*(a1 + 40)];
}

id sub_100110638(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 size];
  if (v4 <= 0.0 || ([v3 size], v5 <= 0.0))
  {
    v15 = v3;
  }

  else
  {
    v6 = *(a1 + 32);
    [v3 size];
    v7 = *(a1 + 40);
    v9 = v6 / v8;
    [v3 size];
    if (v9 >= v7 / v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7 / v10;
    }

    [v3 size];
    v13 = ceil(v12 * v11);
    [v3 size];
    v15 = [v3 ic_scaledImageWithSize:v13 scale:{ceil(v14 * v11), 1.0}];
  }

  v16 = v15;

  return v16;
}

id sub_10011094C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained diffableDataSource];
    v9 = [v8 snapshot];
    v10 = [v9 sectionIdentifiers];
    v11 = [v10 objectAtIndexedSubscript:a2];

    if ([v7 hasGroupInset])
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    v13 = [[_UICollectionViewListLayoutSectionConfiguration alloc] initWithAppearanceStyle:v12 layoutEnvironment:v5];
    objc_opt_class();
    v14 = ICDynamicCast();
    [v13 setStylesFirstItemAsHeader:{objc_msgSend(v14, "hasHeader")}];
    if ([v14 sectionType] == 8)
    {
      [v13 setSeparatorStyle:0];
    }

    else
    {
      [v13 setSeparatorStyle:{objc_msgSend(v7, "hasGroupInset")}];
      if ([*(a1 + 32) hasSwipeActions])
      {
        v16 = [v7 leadingSwipeActionsConfigurationProvider];
        [v13 setLeadingSwipeActionsConfigurationProvider:v16];

        v17 = [v7 trailingSwipeActionsConfigurationProvider];
        [v13 setTrailingSwipeActionsConfigurationProvider:v17];
      }
    }

    v15 = [[_UICollectionViewListLayoutSection alloc] initWithConfiguration:v13 layoutEnvironment:v5];
    if (+[UIDevice ic_isVision](UIDevice, "ic_isVision") && ([v7 shouldShowMoveHeader] & 1) == 0)
    {
      [v15 contentInsets];
      [v15 setContentInsets:?];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_100111088(uint64_t a1)
{
  v2 = [NSPredicate predicateWithFormat:@"media != nil && markedForDeletion != media.markedForDeletion"];
  v16[0] = v2;
  v3 = [NSPredicate predicateWithFormat:@"markedForDeletion == NO && parentAttachment.markedForDeletion == YES"];
  v16[1] = v3;
  v4 = [NSPredicate predicateWithFormat:@"parentAttachment == nil && note.markedForDeletion != markedForDeletion"];
  v16[2] = v4;
  v5 = [NSArray arrayWithObjects:v16 count:3];
  v6 = [NSCompoundPredicate orPredicateWithSubpredicates:v5];

  v7 = [ICAttachment attachmentsMatchingPredicate:v6 context:*(a1 + 32)];
  v8 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E04C0(v7);
  }

  [*(a1 + 40) resolveInconsistencies:v7 context:*(a1 + 32)];
  v9 = [NSPredicate predicateWithFormat:@"parentAttachment != nil && parentAttachment.markedForDeletion != markedForDeletion"];
  v10 = [NSPredicate predicateWithFormat:@"parentAttachment == nil && note.markedForDeletion != markedForDeletion", v9];
  v15[1] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:2];
  v12 = [NSCompoundPredicate orPredicateWithSubpredicates:v11];

  v13 = [ICInlineAttachment attachmentsMatchingPredicate:v12 context:*(a1 + 32)];
  v14 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0544(v13);
  }

  [*(a1 + 40) resolveInconsistencies:v13 context:*(a1 + 32)];
}

void sub_1001118D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001118FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(result + 32) == a2)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_100111A30(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICDynamicCast();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = [v4 parentAttachment];

  if ((isKindOfClass & 1) == 0 || !v6)
  {
    v7 = *(a1 + 32);
    v8 = [v3 objectID];
    [v7 ic_addNonNilObject:v8];

    if ([v3 markedForDeletion])
    {
      v9 = os_log_create("com.apple.notes", "LaunchTask");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1004E0638(a1, v3);
      }

      [v3 unmarkForDeletion];
    }
  }
}

void sub_100111C4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 objectID];
  [v4 ic_addNonNilObject:v5];

  if (([v3 markedForDeletion] & 1) == 0)
  {
    v6 = os_log_create("com.apple.notes", "LaunchTask");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 40) ic_loggingIdentifier];
      v8 = [v3 shortLoggingDescription];
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Resolving inconsistency of (%@) by deleting: %@", &v9, 0x16u);
    }

    [v3 markForDeletion];
  }
}

void sub_10011529C(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  performBlockOnMainThread();
}

void sub_100115330(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 uniqueKey];
  v4 = [*(a1 + 40) currentThumbnailConfigurationUniqueKey];
  v5 = [v3 isEqual:v4];

  if (!v5)
  {
    return;
  }

  v6 = [*(a1 + 32) image];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 40) isThumbnailPresent];

    if (v8)
    {
      v9 = [*(a1 + 32) image];
      v10 = [*(a1 + 40) thumbnailImageView];
      [v10 setImage:v9];

      if (+[UIDevice ic_isVision])
      {
        +[UIColor ic_noteEditorBackgroundColor];
      }

      else
      {
        +[UIColor secondarySystemGroupedBackgroundColor];
      }
      v16 = ;
      v17 = [*(a1 + 40) thumbnailImageView];
      [v17 setBackgroundColor:v16];

      [*(a1 + 40) ic_hairlineWidth];
      v19 = v18;
      v20 = [*(a1 + 40) thumbnailImageView];
      v21 = [v20 layer];
      [v21 setBorderWidth:v19];

      v22 = [*(a1 + 40) thumbnailImageView];
      [v22 setHidden:0];

      v23 = [*(a1 + 40) thumbnailImageView];
      v24 = [v23 contentMode];
      v25 = [*(a1 + 32) preferredContentMode];

      if (v24 == v25)
      {
        return;
      }

      v26 = [*(a1 + 32) preferredContentMode];
      v27 = [*(a1 + 40) thumbnailImageView];
      [v27 setContentMode:v26];
LABEL_14:

      return;
    }
  }

  v11 = [*(a1 + 40) thumbnailImageView];
  v12 = [v11 image];

  if (v12)
  {
    v13 = [*(a1 + 40) thumbnailImageView];
    [v13 setImage:0];
  }

  v14 = [*(a1 + 40) thumbnailImageView];
  v15 = [v14 isHidden];

  if ((v15 & 1) == 0)
  {
    v27 = [*(a1 + 40) thumbnailImageView];
    [v27 setHidden:1];
    goto LABEL_14;
  }
}

void sub_100115738(id a1, ICNoteResultsListCollectionViewCell *a2, UITraitCollection *a3)
{
  v3 = a2;
  v8 = +[UIColor quaternaryLabelColor];
  v4 = v8;
  v5 = [v8 CGColor];
  v6 = [(ICNoteResultsListCollectionViewCell *)v3 thumbnailImageView];

  v7 = [v6 layer];
  [v7 setBorderColor:v5];
}

void sub_100115E84(id a1)
{
  v3 = [[NoteContext alloc] initWithPrivateQueue];
  v1 = [v3 managedObjectContext];
  v2 = qword_1006CB400;
  qword_1006CB400 = v1;
}

void sub_100115F24(id a1)
{
  v3 = +[ICNoteContext sharedContext];
  v1 = [v3 workerManagedObjectContext];
  v2 = qword_1006CB410;
  qword_1006CB410 = v1;
}

void sub_100115FC4(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_queue_create("com.apple.notes.load-data-queue", attr);
  v3 = qword_1006CB420;
  qword_1006CB420 = v2;
}

void sub_10011666C(uint64_t a1)
{
  v3 = [*(a1 + 32) note];
  v4 = [v3 isModernNote];
  if ((v4 & 1) != 0 || ([*(a1 + 32) invitation], (v1 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [objc_opt_class() modernBackgroundContext];
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = [objc_opt_class() legacyBackgroundContext];
  }

LABEL_7:
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100116784;
  v8[3] = &unk_100645BC8;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [v7 performBlock:v8];
}

uint64_t sub_100116784(uint64_t a1)
{
  [*(a1 + 32) loadDataWithContext:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100118E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45)
{
  objc_destroyWeak(&a40);
  objc_destroyWeak(&a45);
  objc_destroyWeak((v45 - 176));
  objc_destroyWeak((v45 - 184));
  objc_destroyWeak((v45 - 128));
  objc_destroyWeak((v45 - 136));
  objc_destroyWeak((v45 - 120));
  objc_destroyWeak((v45 - 112));
  _Unwind_Resume(a1);
}

void sub_100118F04(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v14 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_opt_class();
    v8 = ICDynamicCast();
    v9 = [[ICNoteResultsCellConfiguration alloc] initWithSearchResult:v8];
    v10 = [WeakRetained viewControllerManager];
    if ([v10 countOfAllVisibleAccounts] <= 1)
    {
      [(ICNoteResultsCellConfiguration *)v9 setShowAccountName:0];
    }

    else
    {
      v11 = [WeakRetained accountIdentifier];
      [(ICNoteResultsCellConfiguration *)v9 setShowAccountName:v11 == 0];
    }

    [(ICNoteResultsCellConfiguration *)v9 setShowFolderName:1];
    v12 = [WeakRetained collectionView];
    [v14 setConfiguration:v9 synchronously:{objc_msgSend(v12, "ic_shouldOptimizeForScrolling") ^ 1}];

    v13 = objc_loadWeakRetained((a1 + 40));
    [v14 setAccessibilityCustomActionsDelegate:v13];
  }
}

void sub_100119064(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_opt_class();
    v8 = ICDynamicCast();
    v9 = [v8 object];
    v10 = [v9 objectID];

    if ([v10 ic_isEntityOfClass:objc_opt_class()])
    {
      v11 = [WeakRetained modernViewContext];
      v12 = [v11 objectWithID:v10];

      v13 = [[ICNoteResultsCellConfiguration alloc] initWithNote:v12];
      v14 = [WeakRetained viewControllerManager];
      if ([v14 countOfAllVisibleAccounts] <= 1)
      {
        [(ICNoteResultsCellConfiguration *)v13 setShowAccountName:0];
      }

      else
      {
        v15 = [WeakRetained accountIdentifier];
        [(ICNoteResultsCellConfiguration *)v13 setShowAccountName:v15 == 0];
      }

      [(ICNoteResultsCellConfiguration *)v13 setShowFolderName:1];
      v16 = [WeakRetained collectionView];
      [v18 setConfiguration:v13 synchronously:{objc_msgSend(v16, "ic_shouldOptimizeForScrolling") ^ 1}];

      v17 = objc_loadWeakRetained((a1 + 40));
      [v18 setAccessibilityCustomActionsDelegate:v17];
    }
  }
}

void sub_100119230(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_opt_class();
    v8 = ICDynamicCast();
    v9 = [v8 object];
    v10 = [v9 objectID];

    if ([v10 ic_isEntityOfClass:objc_opt_class()])
    {
      v11 = [WeakRetained modernViewContext];
      v12 = [v11 objectWithID:v10];

      [v13 setHighlightSelection:{objc_msgSend(WeakRetained, "noteContainerViewMode") == 0}];
      [v13 setAttachment:v12 searchResult:v8];
    }
  }
}

void sub_100119354(id a1, UICollectionViewListCell *a2, NSIndexPath *a3, id a4)
{
  v5 = a4;
  v6 = a2;
  objc_opt_class();
  v12 = ICDynamicCast();

  v7 = [(UICollectionViewListCell *)v6 defaultContentConfiguration];
  v8 = [v12 suggestionItemTitle];
  [v7 setText:v8];

  v9 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody];
  v10 = [v7 imageProperties];
  [v10 setPreferredSymbolConfiguration:v9];

  v11 = [v12 iconImage];
  [v7 setImage:v11];

  [(UICollectionViewListCell *)v6 setContentConfiguration:v7];
}

void sub_100119470(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v10 = a2;
  v6 = a4;
  v7 = [v10 ic_behavior];
  if (v7 == 1)
  {
    [v10 setStyleForCalculator:1];
  }

  else if (v7 == 3)
  {
    [v10 setHorizontalInsetsOverride:0.0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained snapshot];
  [v9 updateHeaderView:v10 forIndexPath:v6];
}

id sub_10011952C(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  if (!WeakRetained)
  {
    v12 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = a1[4];
    if (!v11)
    {
LABEL_11:
      v16 = [WeakRetained noteContainerViewMode];
      v17 = 7;
      if (!v16)
      {
        v17 = 6;
      }

      v11 = a1[v17];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    objc_opt_class();
    v13 = ICDynamicCast();
    v14 = [v13 object];
    v15 = [v14 objectID];

    v11 = [v15 ic_isEntityOfClass:objc_opt_class()] ? a1[5] : 0;
    if (!v11)
    {
      goto LABEL_11;
    }
  }

  v12 = [v7 dequeueConfiguredReusableCellWithRegistration:v11 forIndexPath:v8 item:v9];

LABEL_15:

  return v12;
}

id sub_1001196C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained dequeueConfiguredReusableSupplementaryViewWithRegistration:*(a1 + 32) forIndexPath:v5];

  return v7;
}

void sub_1001199EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL sub_100119A10(id a1, ICSearchToken *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(ICSearchToken *)a2 csToken:a3];
  v5 = v4 == 0;

  return v5;
}

void sub_100119A48(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setUncompletedSearchStartTime:-1.0];
  v5 = *(a1 + 48);
  v6 = [WeakRetained snapshot];
  [v6 setBehavior:v5];

  v7 = [WeakRetained snapshot];
  [v7 updateWithResults:v3];

  performBlockOnMainThread();
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

void sub_100119B44(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionViewDiffableDataSource];
  v9 = [v2 snapshot];

  v3 = [objc_opt_class() numberOfItemsInSection:@"ICNoteSearchDataSourceTopHitsSectionIdentifier" forSnapshot:v9];
  v4 = [objc_opt_class() numberOfItemsInSection:@"ICNoteSearchDataSourceNoteSectionIdentifier" forSnapshot:v9];
  v5 = [objc_opt_class() numberOfItemsInSection:@"ICNoteSearchDataSourceAttachmentSectionIdentifier" forSnapshot:v9];
  v6 = [*(a1 + 32) viewControllerManager];
  v7 = [v6 searchController];

  v8 = [v7 searchResultExposureReporter];
  [v8 updateWithTopHitResultCount:v3 nonTopHitResultCount:&v4[v5] attachmentSectionCount:v5];
}

id sub_10011A144(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  v4 = [v3 object];
  v5 = [v4 objectID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[NSNull null];
  }

  v8 = v7;

  return v8;
}

id sub_10011A30C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = ICDynamicCast();
    v5 = [*(a1 + 32) collectionViewDiffableDataSource];
    v6 = [v5 indexPathForItemIdentifier:v4];

    if (v6 && (v7 = *(a1 + 40), [v4 object], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectID"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(v7) = objc_msgSend(v7, "containsObject:", v9), v9, v8, v7))
    {
      v10 = [*(a1 + 32) collectionView];
      v11 = [v10 cellForItemAtIndexPath:v6];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_10011A554(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 objectID];
  v4 = [v3 ic_isNoteType];

  v5 = v13;
  if (v4)
  {
    v6 = [v13 changedValues];
    v7 = [v6 allKeys];

    if ([v7 containsObject:@"markedForDeletion"])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v7 containsObject:@"deletedFlag"];
    }

    objc_opt_class();
    v9 = ICDynamicCast();
    v10 = v9;
    if (v9)
    {
      LODWORD(v9) = [v7 containsObject:@"folder"];
      if (v9)
      {
        LODWORD(v9) = [v10 isDeletedOrInTrash];
      }
    }

    if (((v8 | v9) & 1) != 0 || [v13 isDeleted])
    {
      v11 = *(a1 + 32);
      v12 = [v13 objectID];
      [v11 addObject:v12];
    }

    v5 = v13;
  }
}

void sub_10011A73C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 itemIdentifiers];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10011A810;
  v6[3] = &unk_10064A6A0;
  v7 = *(a1 + 32);
  v5 = [v4 ic_objectsPassingTest:v6];

  if ([v5 count])
  {
    [v3 deleteItemsWithIdentifiers:v5];
  }
}

id sub_10011A810(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = ICDynamicCast();
    v5 = *(a1 + 32);
    v6 = [v4 object];
    v7 = [v6 objectID];
    v8 = [v5 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10011AA70(uint64_t a1, void *a2)
{
  v25 = a2;
  [v25 itemIdentifiers];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10011AE04;
  v31 = sub_10011AE14;
  v24 = v32 = 0;
  v26 = *(a1 + 32);
  performBlockOnMainThreadAndWait();
  if (v28[5])
  {
    v4 = [*(a1 + 32) note];
    v5 = [v4 isPasswordProtected];
    if ((v5 & 1) != 0 || ([*(a1 + 32) updatedNote], v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v2, "isPasswordProtected") & 1) == 0))
    {
      v6 = [v28[5] configuration];
      v23 = [v6 foundAttachmentObjectID];

      if (v5)
      {
LABEL_7:

        v7 = [ICSearchResultConfiguration alloc];
        v8 = [v28[5] configuration];
        v9 = [v8 searchString];
        v10 = [v28[5] configuration];
        v11 = [v10 searchSuggestionType];
        v12 = [v28[5] configuration];
        v13 = [v12 isTopHit];
        v14 = [v28[5] configuration];
        v15 = [v14 sortableSearchableItem];
        v16 = [v7 initWithSearchString:v9 searchSuggestionType:v11 isTopHit:v13 foundAttachmentObjectID:v23 sortableSearchableItem:v15];

        v17 = [ICSearchResult alloc];
        v18 = [*(a1 + 32) updatedNote];
        v19 = [v17 initWithObject:v18 configuration:v16];

        v20 = [*(a1 + 32) updatedNote];
        [v19 setMathNote:{objc_msgSend(v20, "isMathNote")}];

        v34 = v19;
        v21 = [NSArray arrayWithObjects:&v34 count:1];
        [v25 insertItemsWithIdentifiers:v21 afterItemWithIdentifier:v28[5]];

        v33 = v28[5];
        v22 = [NSArray arrayWithObjects:&v33 count:1];
        [v25 deleteItemsWithIdentifiers:v22];

        goto LABEL_8;
      }
    }

    else
    {
      v23 = 0;
    }

    goto LABEL_7;
  }

LABEL_8:

  _Block_object_dispose(&v27, 8);
}

void sub_10011ADD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011AE04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10011AE1C(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v6 = ICDynamicCast();
        v7 = v6;
        if (v6)
        {
          v8 = [v6 object];
          v9 = [v8 objectID];
          v10 = [*(a1 + 40) note];
          v11 = [v10 objectID];
          v12 = [v9 isEqual:v11];

          if (v12)
          {
            v13 = *(*(a1 + 48) + 8);
            v14 = *(v13 + 40);
            *(v13 + 40) = v7;

            goto LABEL_12;
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

void sub_10011B58C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performToggleEditorCallouts:v7];
  }
}

void sub_10011B61C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performToggleNoteActivity:v7];
  }
}

void sub_10011B6AC(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performToggleFolderActivity:v7];
  }
}

void sub_10011B73C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performDeleteKey:v7];
  }
}

void sub_10011B7CC(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performDeleteQuickNoteKey:v7];
  }
}

void sub_10011B85C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 systemPaperNavigateLeft:v7];
  }
}

void sub_10011B8EC(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 systemPaperNavigateRight:v7];
  }
}

void sub_10011B97C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 systemPaperShowInNotes:v7];
  }
}

void sub_10011BA0C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performRecordAudio:v7];
  }
}

void sub_10011BA9C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performRenameAttachment:v7];
  }
}

void sub_10011BB2C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performEnclosingFolderKey:v7];
  }
}

void sub_10011BCDC(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performExpandSection:v7];
  }
}

void sub_10011BD6C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performExpandAllSections:v7];
  }
}

void sub_10011BDFC(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performCollapseSection:v7];
  }
}

void sub_10011BE8C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performCollapseAllSections:v7];
  }
}

void sub_10011BF1C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performAttachFile:v7];
  }
}

void sub_10011C03C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performShareFolderAction:v7];
  }
}

void sub_10011C0CC(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performImportMarkdownAction:v7];
  }
}

void sub_10011C15C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performExportMarkdownAction:v7];
  }
}

void sub_10011C1EC(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performPagesHandoff:v7];
  }
}

void sub_10011C30C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performConvertToSmartFolderAction:v7];
  }
}

void sub_10011C39C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performCreateSmartFolderFromSelectedTags:v7];
  }
}

void sub_10011C42C(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performShowAccountsSettings:v7];
  }
}

void sub_10011C4BC(ICKeyboardHandler *self, SEL a2, id a3)
{
  v7 = a3;
  v4 = [(ICKeyboardHandler *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICKeyboardHandler *)self delegate];
    [v6 performShowInNote:v7];
  }
}

void sub_10011CD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011CD68(uint64_t a1, void *a2)
{
  if (![a2 numberOfItems])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained primarySummaryView];
    [v4 setHidden:1];

    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 splitViewController];
    v7 = [v6 isCollapsed];

    if ((v7 & 1) == 0)
    {
      v8 = objc_loadWeakRetained((a1 + 32));
      v9 = [v8 navigationController];
      [v9 setToolbarHidden:1 animated:0];
    }

    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 navigationController];
    v12 = [v11 isToolbarHidden];

    if (v12)
    {
      v13 = objc_loadWeakRetained((a1 + 32));
      [v13 setNeedsUpdateContentUnavailableConfiguration];
    }
  }
}

void sub_10011D7C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10011D800(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 applicationState];

  if (v3)
  {
    v4 = 0;
    goto LABEL_16;
  }

  v5 = [WeakRetained noteContainer];

  if (v5)
  {
    objc_opt_class();
    v6 = [WeakRetained noteContainer];
    v4 = ICDynamicCast();

    objc_opt_class();
    v7 = [WeakRetained noteContainer];
    v8 = ICDynamicCast();

    if (v4)
    {
      if ([v4 isTrashFolder])
      {
        v9 = [v4 account];
        v10 = [v9 defaultFolder];
LABEL_11:
        v13 = v10;

        v4 = v13;
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v14 = [v8 defaultFolder];
LABEL_14:
    v4 = v14;
    goto LABEL_15;
  }

  v4 = [WeakRetained noteCollection];

  if (!v4)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  v11 = [WeakRetained noteCollection];
  v4 = ICDynamicCast();

  objc_opt_class();
  v12 = [WeakRetained noteCollection];
  v8 = ICDynamicCast();

  if (!v4)
  {
    v14 = [v8 defaultStore];
    goto LABEL_14;
  }

  if ([v4 isTrashFolder])
  {
    v9 = [v4 account];
    v10 = [v9 defaultStore];
    goto LABEL_11;
  }

LABEL_15:

LABEL_16:

  return v4;
}

uint64_t sub_10011E324(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) noteDataSource];
    v4 = [v3 indexer];
    (*(v2 + 16))(v2, v4);
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

id sub_10011E3BC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) noteDataSource];
  [v3 setNoteContainer:v2];

  v4 = *(a1 + 32);

  return [v4 resetBarButtonItemsAnimated:0];
}

uint64_t sub_10011E674(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) noteDataSource];
    v4 = [v3 indexer];
    (*(v2 + 16))(v2, v4);
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_10011E70C(uint64_t a1)
{
  if ([*(a1 + 32) noteContainerViewMode] == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 40);
  }

  v3 = [*(a1 + 32) noteDataSource];
  [v3 setNoteCollection:v2];
}

uint64_t sub_10011E9CC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) noteDataSource];
    v4 = [v3 indexer];
    (*(v2 + 16))(v2, v4);
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_10011EA64(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) noteDataSource];
  [v2 setNoteQuery:v1];
}

uint64_t sub_10011ED84(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) noteDataSource];
    v4 = [v3 indexer];
    (*(v2 + 16))(v2, v4);
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_10011EE1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) noteDataSource];
  [v2 setVirtualSmartFolder:v1];
}

uint64_t sub_10011F03C(uint64_t a1)
{
  [*(a1 + 32) updateContainerSelection];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10011F090(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = [ICQuery queryForNotesMatchingTagSelection:v2];
  }

  else
  {
    v4 = 0;
  }

  v3 = [*(a1 + 32) noteDataSource];
  [v3 setNoteQuery:v4];

  if (v2)
  {
  }
}

id sub_10011F410(uint64_t a1)
{
  result = [*(a1 + 32) isEditing];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) updateNoteSelectionAnimated:1];
    v3 = *(a1 + 32);

    return [v3 updateContainerSelection];
  }

  return result;
}

void sub_10011F468(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) collectionView];
  [v2 setEditing:v1];
}

void sub_10011F710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011F738(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (a2)
  {
    v6 = [WeakRetained noteDataSource];
    v7 = *(a1 + 48);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10011F818;
    v8[3] = &unk_100646080;
    v8[4] = *(a1 + 32);
    v9 = v7;
    [v6 reloadDataAnimated:(v7 & 1) == 0 dataIndexedBlock:0 dataRenderedBlock:v8];
  }

  else
  {
    [*(a1 + 32) setShouldAvoidEditingChanges:0];
  }

  [v5 setNeedsToConfirmDeletion:0];
}

id sub_10011F818(uint64_t a1)
{
  [*(a1 + 32) setShouldAvoidEditingChanges:0];
  v2 = *(a1 + 32);
  v3 = (*(a1 + 40) & 1) == 0;

  return [v2 setEditing:0 animated:v3];
}

void sub_10011F93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011F960(uint64_t a1, void *a2)
{
  if ([a2 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setEditing:0 animated:1];
    v3 = [WeakRetained noteDataSource];
    [v3 reloadDataAnimated:1];
  }
}

void sub_1001203CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100120428(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001204AC;
  v2[3] = &unk_100645E30;
  v2[4] = WeakRetained;
  [WeakRetained ic_performBlockAfterActiveTransition:v2];
}

void sub_1001204AC(uint64_t a1)
{
  v2 = [*(a1 + 32) collectionView];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) collectionView];
  [v3 layoutIfNeeded];
}

void sub_100120514(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained updateFolderSectionVisibility] & 1) != 0 || objc_msgSend(WeakRetained, "updateTagSectionVisibility"))
  {
    [WeakRetained reloadDataSourceAnimated:0 dataIndexedBlock:0 dataRenderedBlock:0];
  }

  [WeakRetained updateBarButtonItemsAnimated:1];
}

id sub_1001207A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  [*(a1 + 32) setShouldAvoidEditingChanges:0];
  v3 = *(a1 + 32);

  return [v3 setEditing:0];
}

void sub_1001209B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001209DC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained viewControllerManager];
  [v4 selectTagSelection:v3];
}

void sub_100120B7C(uint64_t a1, void *a2)
{
  v19 = a2;
  if ([*(a1 + 32) ic_isViewVisible])
  {
    [*(a1 + 32) updateBarButtonItemsAnimated:*(a1 + 48)];
  }

  [*(a1 + 32) updateNavigationTitle];
  if ([*(a1 + 32) ic_isViewVisible])
  {
    v3 = [*(a1 + 32) isTrashFolder];
  }

  else
  {
    v3 = 0;
  }

  v4 = [*(a1 + 32) collectionView];
  [v4 setShouldShowRecentlyDeletedHeader:v3];

  [*(a1 + 32) updateFocusedNoteIfNeeded];
  v5 = [*(a1 + 32) virtualSmartFolder];
  v6 = [v5 type];
  v7 = [v6 isEqual:ICVirtualSmartFolderItemIdentifierTypeSharedWithYou];
  v8 = [*(a1 + 32) collectionView];
  [v8 setShouldShowCellParticipantsInfo:v7];

  objc_opt_class();
  v9 = [*(a1 + 32) noteDataSource];
  v10 = [v9 firstRelevantItemIdentifier];
  v11 = ICDynamicCast();

  v12 = [*(a1 + 32) noteDataSource];
  v13 = [v12 emptyConfigurationForNoteWithObjectID:v11];

  v14 = [v13 showFolderName];
  v15 = [*(a1 + 32) collectionView];
  [v15 setShouldShowFolderName:v14];

  v16 = [v13 showAccountName];
  v17 = [*(a1 + 32) collectionView];
  [v17 setShouldShowAccountName:v16];

  v18 = *(a1 + 40);
  if (v18)
  {
    (*(v18 + 16))(v18, v19);
  }
}

uint64_t sub_100120D64(uint64_t a1)
{
  [*(a1 + 32) updateNoteSelection];
  [*(a1 + 32) updateContainerSelection];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100121088(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100121114(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  *(v2 + 176) = 0;

  v4 = *(a1 + 32);

  return [v4 updateBarButtonItemsAnimated:1];
}

void sub_1001212D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001212F4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained showSharedFolderActions:0];
}

id sub_100121338(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v4 = v3;
  if ([v4 ic_isEntityOfClass:objc_opt_class()])
  {
    v5 = [*(a1 + 32) modernViewContext];
  }

  else
  {
    if (![v4 ic_isEntityOfClass:objc_opt_class()])
    {
      v6 = 0;
      goto LABEL_9;
    }

    v5 = [*(a1 + 32) legacyViewContext];
  }

  v7 = v5;
  v6 = [v5 objectWithID:v4];

LABEL_9:
LABEL_10:

  return v6;
}

void sub_100121424(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001214B4;
  block[3] = &unk_100645C78;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_1001214B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateNoteSelection];
}

id sub_100121548(id a1, ICSearchIndexableNote *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  return v3;
}

id sub_100122190(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = [*(a1 + 32) noteDataSource];
  v5 = [v4 collectionViewDiffableDataSource];
  v6 = [v5 itemIdentifierForIndexPath:v3];

  v7 = ICDynamicCast();

  return v7;
}

id sub_100122240(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 ic_isEntityOfClass:objc_opt_class()])
  {
    v4 = [*(a1 + 32) modernViewContext];
LABEL_5:
    v5 = v4;
    v6 = [v4 objectWithID:v3];

    goto LABEL_7;
  }

  if ([v3 ic_isEntityOfClass:objc_opt_class()])
  {
    v4 = [*(a1 + 32) legacyViewContext];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

BOOL sub_100122820(id a1, ICSearchIndexableNote *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if ([(ICSearchIndexableNote *)v4 isModernNote]&& ([(ICSearchIndexableNote *)v4 isPasswordProtected]& 1) == 0)
  {
    v5 = [(ICSearchIndexableNote *)v4 isSharedReadOnly]^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

void sub_100122DB0(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) noteContainer];
  v12 = ICDynamicCast();

  v3 = [v12 visibleNotesInFolder];
  v4 = [v3 ic_compactMap:&stru_10064A938];
  v5 = [*(a1 + 32) viewControllerManager];
  v6 = [v5 selectedNoteObjectID];
  v7 = [v4 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    objc_opt_class();
    v8 = [*(a1 + 32) noteDataSource];
    v9 = [v8 firstRelevantItemIdentifier];
    v10 = ICDynamicCast();

    if (v10)
    {
      v11 = [*(a1 + 32) viewControllerManager];
      [v11 selectNoteWithObjectID:v10 scrollState:0 startEditing:0 animated:0 ensurePresented:0];
    }
  }
}

void sub_10012374C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak(v19 + 7);
  objc_destroyWeak(v19 + 6);
  objc_destroyWeak(v19 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  objc_destroyWeak((v20 - 72));
  _Unwind_Resume(a1);
}

void sub_100123790(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = [WeakRetained noteContainerViewMode];

  if (v3 == 1)
  {
    v7 = objc_loadWeakRetained(a1 + 5);
    v4 = objc_loadWeakRetained(a1 + 6);
    v5 = objc_loadWeakRetained(a1 + 7);
    v6 = [v7 noteBrowseNavigationItemConfigurationNoteContainerActionMenu:v4 actionBarButtonItem:v5];
    [a1[4] setMenu:v6];
  }
}

void sub_100123A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak(v19 + 7);
  objc_destroyWeak(v19 + 6);
  objc_destroyWeak(v19 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  objc_destroyWeak((v20 - 72));
  _Unwind_Resume(a1);
}

void sub_100123A70(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = [WeakRetained noteContainerViewMode];

  if (v3 == 1)
  {
    v7 = objc_loadWeakRetained(a1 + 5);
    v4 = objc_loadWeakRetained(a1 + 6);
    v5 = objc_loadWeakRetained(a1 + 7);
    v6 = [v7 noteBrowseNavigationItemConfigurationQueryActionMenu:v4 actionBarButtonItem:v5];
    [a1[4] setMenu:v6];
  }
}

void sub_100123CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak(v19 + 7);
  objc_destroyWeak(v19 + 6);
  objc_destroyWeak(v19 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  objc_destroyWeak((v20 - 72));
  _Unwind_Resume(a1);
}

void sub_100123D34(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = [WeakRetained noteContainerViewMode];

  if (v3 == 1)
  {
    v7 = objc_loadWeakRetained(a1 + 5);
    v4 = objc_loadWeakRetained(a1 + 6);
    v5 = objc_loadWeakRetained(a1 + 7);
    v6 = [v7 noteBrowseNavigationItemConfigurationVirtualSmartFolderActionMenu:v4 actionBarButtonItem:v5];
    [a1[4] setMenu:v6];
  }
}

void sub_10012401C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100124044(id a1, ICSearchIndexableNote *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = ICDynamicCast();

  return v3;
}

void sub_1001240A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEditing:0 animated:1];
}

void sub_100124288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001242B0(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    v3 = [v4 allNotes];
    [v4 deleteNotes:v3 sender:*(a1 + 32)];
  }
}

void sub_100124714(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1001247BC(uint64_t a1)
{
  v1 = [*(a1 + 32) workerContext];
  [ICNote enumerateNotesInContext:v1 batchSize:10 visibleOnly:1 saveAfterBatch:1 usingBlock:&stru_10064A9E8];
}

void sub_10012482C(id a1, ICNote *a2, BOOL *a3)
{
  v5 = a2;
  if ([(ICNote *)v5 isPasswordProtected])
  {
    [(ICNote *)v5 setWidgetSnippet:0];
  }

  else
  {
    v3 = [(ICNote *)v5 identifier];
    v4 = [v3 length];

    if (v4)
    {
      [(ICNote *)v5 regenerateTitle:1 snippet:1];
    }
  }
}

void sub_100125558(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  if ([v5 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  }

  v10 = v7;
  [v6 setNote:v7];
  v8 = [*(a1 + 40) isCompact];
  v9 = 6.0;
  if (v8)
  {
    v9 = 4.0;
  }

  [v6 setCornerRadius:v9];
}

id sub_1001265D4(uint64_t a1)
{
  [*(a1 + 32) fixNotesWithNilFolderWithContext:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 fixNotesWithPlaceholderFoldersWithContext:v3];
}

void sub_1001272E0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8 && (*(a1 + 40) & 1) == 0)
  {
    v6 = [*(a1 + 32) notesToDelete];
    [v6 addObject:v8];
  }

  if (v5)
  {
    v7 = [*(a1 + 32) createdLegacyNotes];
    [v7 addObject:v5];
  }
}

intptr_t sub_10012756C(uint64_t a1)
{
  v2 = [*(a1 + 32) operationQueue];
  [v2 waitUntilAllOperationsAreFinished];

  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_100127658(uint64_t a1)
{
  v2 = [*(a1 + 32) operationQueue];
  [v2 waitUntilAllOperationsAreFinished];

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001276FC;
  v3[3] = &unk_100646080;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_1001281B8(uint64_t a1)
{
  v30 = ICAttachmentUTTypeGallery;
  v2 = [NSPredicate predicateWithFormat:@"typeUTI == %@ AND             subAttachments.@count > 1 AND userTitle != nil AND             SUBQUERY(subAttachments, $sa, $sa.ocrSummary != nil).@count > 0", ICAttachmentUTTypeGallery];
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"modificationDate" ascending:0];
  v48 = v3;
  v4 = [NSArray arrayWithObjects:&v48 count:1];

  v31 = v4;
  v32 = v2;
  v5 = [ICAttachment ic_objectIDsMatchingPredicate:v2 sortDescriptors:v4 context:*(a1 + 32)];
  v6 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0C5C(v5);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    do
    {
      v10 = 0;
      do
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v41 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [*(a1 + 32) objectWithID:v11];
        objc_opt_class();
        v14 = [v13 attachmentModel];
        v15 = ICDynamicCast();

        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10012865C;
        v38[3] = &unk_100646B78;
        v39 = v13;
        v40 = *(a1 + 32);
        v16 = v13;
        [v15 enumerateSubAttachmentsWithBlock:v38];

        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v8);
  }

  v17 = [NSPredicate predicateWithFormat:@"SUBQUERY(attachments, $a, $a.typeUTI == %@ AND $a.userTitle == nil).@count > 0", v30];
  v18 = [NSSortDescriptor sortDescriptorWithKey:@"modificationDate" ascending:0];
  v46 = v18;
  v19 = [NSArray arrayWithObjects:&v46 count:1];

  v20 = [ICNote ic_objectIDsMatchingPredicate:v17 sortDescriptors:v19 context:*(a1 + 32)];
  v21 = os_log_create("com.apple.notes", "LaunchTask");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E0CD8(v20);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      v26 = 0;
      do
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v34 + 1) + 8 * v26);
        v28 = objc_autoreleasePoolPush();
        v29 = [*(a1 + 32) objectWithID:v27];
        if ([v29 regenerateTitle:1 snippet:1])
        {
          [v29 markShareDirtyIfNeededWithReason:@"Regenerated gallery note title"];
          [v29 updateChangeCountWithReason:@"Regenerated gallery note title"];
          [*(a1 + 32) ic_save];
        }

        [*(a1 + 32) ic_refreshObject:v29 mergeChanges:0];

        objc_autoreleasePoolPop(v28);
        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v34 objects:v45 count:16];
    }

    while (v24);
  }
}

void sub_10012865C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = a2;
  v8 = [*(a1 + 32) userTitle];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 ocrSummary];
    v11 = [*(a1 + 32) userTitle];
    v12 = [v10 containsString:v11];

    if (v12)
    {
      v13 = os_log_create("com.apple.notes", "LaunchTask");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1004E0D54((a1 + 32));
      }

      [*(a1 + 32) setUserTitle:0];
      [*(a1 + 40) ic_save];
      [*(a1 + 40) ic_refreshObject:*(a1 + 32) mergeChanges:0];
      *a5 = 1;
    }
  }
}

void sub_100129814(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) activityType];
    (*(v1 + 16))(v1, 1, v2);
  }
}

void sub_100129C90(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) noteContainer];
  v3 = ICDynamicCast();

  if (v3)
  {
    v4 = [v3 managedObjectContext];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100129DBC;
    v13 = &unk_1006476B0;
    v5 = v3;
    v6 = *(a1 + 48);
    v14 = v5;
    v15 = v6;
    [v4 performBlockAndWait:&v10];
  }

  else
  {
    v7 = [*(a1 + 32) virtualSmartFolder];

    if (v7)
    {
      v8 = *(a1 + 48);
      v9 = [*(a1 + 32) virtualSmartFolder];
      [v9 setDateHeadersType:v8];
    }
  }

  [*(a1 + 32) performActivityWithCompletion:{*(a1 + 40), v10, v11, v12, v13}];
}

void sub_100129DBC(uint64_t a1)
{
  [*(a1 + 32) applyDateHeadersType:*(a1 + 40)];
  v2 = [*(a1 + 32) managedObjectContext];
  [v2 ic_save];
}

void sub_10012A500(uint64_t a1)
{
  v2 = [*(a1 + 32) alertTextField];
  [v2 selectAll:0];

  [*(a1 + 40) activityDidFinish:1];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = [*(a1 + 40) activityType];
    (*(v3 + 16))(v3, 1, v4);
  }
}

void sub_10012A7A4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if (v6)
  {
    v8 = +[ICAccount accountUtilities];
    v9 = [*(a1 + 40) accountId];
    v10 = [v8 temporaryDirectoryURLForAccountIdentifier:v9];

    if (!v10)
    {
      [ICAssert handleFailedAssertWithCondition:"((tempDirectoryURL) != nil)" functionName:"[ICSharingExtensionItemExtractor extractMediaFileURLWithProvider:contentType:completion:]_block_invoke_2" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "tempDirectoryURL"];
    }

    v11 = +[NSUUID UUID];
    v12 = [v11 UUIDString];
    v13 = [v10 URLByAppendingPathComponent:v12 isDirectory:1];

    v14 = +[NSFileManager defaultManager];
    [v14 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:0];

    v15 = [v6 lastPathComponent];
    v16 = [v13 URLByAppendingPathComponent:v15];

    v17 = +[NSFileManager defaultManager];
    LOBYTE(v12) = [v17 linkItemAtURL:v6 toURL:v16 error:0];

    if ((v12 & 1) == 0)
    {
      v18 = +[NSFileManager defaultManager];
      v25[0] = 0;
      v19 = [v18 copyItemAtURL:v6 toURL:v16 error:v25];
      v20 = v25[0];

      if ((v19 & 1) == 0)
      {
        [ICAssert handleFailedAssertWithCondition:"[[NSFileManager defaultManager] copyItemAtURL:url toURL:tempFileURL error:&copyError]" functionName:"[ICSharingExtensionItemExtractor extractMediaFileURLWithProvider:contentType:completion:]_block_invoke_2" simulateCrash:1 showAlert:0 format:@"Extracting media file: Failed to create temporary file copy: %@", v20];
      }
    }

    v21 = [[ICAddAttachmentsManagerAttachmentInfo alloc] initWithFileURL:v16];
    [v21 setUsesTemporaryFile:1];
    v24 = *(a1 + 48);
    v22 = v21;
    performBlockOnMainThread();
  }

  else
  {
    v23 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1004E0F1C(a1, v7, v23);
    }

    v25[1] = _NSConcreteStackBlock;
    v25[2] = 3221225472;
    v25[3] = sub_10012AAEC;
    v25[4] = &unk_100645CC8;
    v26 = *(a1 + 48);
    performBlockOnMainThread();
    v13 = v26;
  }
}

void sub_10012AC54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v6 = v8;
  v7 = v5;
  performBlockOnMainThreadAndWait();
}

void sub_10012AD24(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [[ICAddAttachmentsManagerAttachmentInfo alloc] initWithFileURL:*(a1 + 32)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v2 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1004E0FA8(a1, v2);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void sub_10012AF14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v12 = a3;
  v6 = *(a1 + 56);
  v13 = v5;
  v11 = *(a1 + 32);
  v7 = *(&v11 + 1);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v6;
  v14 = v8;
  v9 = v5;
  v10 = v12;
  performBlockOnMainThreadAndWait();
}

void sub_10012B02C(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1004E1068(v2, v3);
    }

LABEL_5:
    (*(*(a1 + 72) + 16))();
    return;
  }

  if (!*(a1 + 40))
  {
    v7 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004E1180(v7);
    }

    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 40) isFileURL])
  {
    v22 = [[ICAddAttachmentsManagerAttachmentInfo alloc] initWithFileURL:*(a1 + 40)];
    (*(*(a1 + 72) + 16))();
LABEL_12:

    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 80);
    v6 = *(a1 + 40);
    v22 = [v4 getAttachmentInfoWithImage:v6 useTempFile:v5];
    (*(*(a1 + 72) + 16))();

    goto LABEL_12;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [*(a1 + 56) registeredTypeIdentifiers];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
LABEL_20:
    v12 = 0;
    while (1)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v23 + 1) + 8 * v12);
      v14 = [ICUTType typeWithIdentifier:v13];
      v15 = [ICUTType typeWithIdentifier:*(a1 + 64)];
      v16 = [v14 conformsToType:v15];

      if (v16)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          goto LABEL_20;
        }

        goto LABEL_26;
      }
    }

    v18 = [ICUTType typeWithIdentifier:v13];
    v19 = [v18 preferredFilenameExtension];

    v17 = v13;
    if (!v19)
    {
      goto LABEL_29;
    }

    v20 = objc_opt_new();
    [v20 setMediaUTI:v17];
    [v20 setMediaData:*(a1 + 40)];
    [v20 setMediaFilenameExtension:v19];
    (*(*(a1 + 72) + 16))();
  }

  else
  {
LABEL_26:

    v17 = 0;
LABEL_29:
    v21 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1004E10E4((a1 + 56), v21);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_10012BDE8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateBarButtonItemsAnimated:1];
  [WeakRetained updateBarsVisibilityAnimated:1];
}

id sub_10012CCB4(uint64_t a1, void *a2)
{
  v3 = [a2 contentID];
  v4 = [*(a1 + 32) contentID];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

BOOL sub_10012D790(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = [a2 presentation];
  v5 = [v4 sourceIsManaged];

  return v5 ^ 1;
}

id sub_10012E478(uint64_t a1)
{
  [*(a1 + 32) refreshAttachmentPresentations];
  v2 = [*(a1 + 32) contentLayer];
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) note];
  v6 = [v5 attachments];
  v7 = [v6 allObjects];
  [v2 setContent:v4 isPlainText:v3 attachments:v7];

  [*(a1 + 32) prepareForPresentation];
  [*(a1 + 32) setDelayingSetContent:0];
  v8 = *(a1 + 32);

  return [v8 updateBarButtonItemsAnimated:0];
}

void sub_10012F184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10012F1B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[UIApplication sharedApplication];
  v3 = [v2 applicationState];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [WeakRetained note];
    v6 = [v5 store];
    v7 = [v6 isTrashFolder];

    v8 = [WeakRetained note];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 account];
      v4 = [v10 defaultFolder];
    }

    else
    {
      v4 = [v8 store];
    }
  }

  return v4;
}

id sub_10012F8AC(uint64_t a1, void *a2)
{
  result = [a2 isCancelled];
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 updateForceLightContentIfNecessary];
  }

  return result;
}

void sub_100130B4C(uint64_t a1)
{
  v1 = *(a1 + 40);
  performBlockOnMainThread();
}

void sub_100130BF4(uint64_t a1)
{
  v2 = [*(a1 + 32) contentLayer];
  [v2 resignFirstResponder];

  if (+[UIDevice ic_isVision])
  {
    v3 = -2;
  }

  else
  {
    v3 = 7;
  }

  [*(a1 + 40) setModalPresentationStyle:v3];
  [*(a1 + 32) presentViewController:*(a1 + 40) animated:1 completion:0];
  v5 = [*(a1 + 40) popoverPresentationController];
  [v5 setDelegate:*(a1 + 32)];
  [v5 setPermittedArrowDirections:15];
  v4 = [*(a1 + 32) contentLayer];
  [v5 setSourceView:v4];

  [v5 setSourceRect:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
}

void sub_100130D84(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  performBlockOnMainThread();
}

uint64_t sub_100130E54(uint64_t a1)
{
  MidX = *(a1 + 56);
  MidY = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v25.origin.x = CGRectZero.origin.x;
  v25.origin.y = CGRectZero.origin.y;
  v25.size.width = CGRectZero.size.width;
  v25.size.height = CGRectZero.size.height;
  v22.origin.x = MidX;
  v22.origin.y = MidY;
  v22.size.width = v4;
  v22.size.height = v5;
  if (CGRectEqualToRect(v22, v25))
  {
    v10 = [*(a1 + 32) contentLayer];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v23.origin.x = v12;
    v23.origin.y = v14;
    v23.size.width = v16;
    v23.size.height = v18;
    MidX = CGRectGetMidX(v23);
    v24.origin.x = v12;
    v24.origin.y = v14;
    v24.size.width = v16;
    v24.size.height = v18;
    MidY = CGRectGetMidY(v24);
  }

  result = *(a1 + 48);
  if (result)
  {
    if (v5 == 0.0)
    {
      v9.n128_f64[0] = 1.0;
    }

    else
    {
      v9.n128_f64[0] = v5;
    }

    if (v4 == 0.0)
    {
      v8.n128_f64[0] = 1.0;
    }

    else
    {
      v8.n128_f64[0] = v4;
    }

    v20 = *(result + 16);
    v6.n128_f64[0] = MidX;
    v7.n128_f64[0] = MidY;

    return v20(v6, v7, v8, v9);
  }

  return result;
}

uint64_t sub_100131020(uint64_t a1)
{
  [*(a1 + 32) didDismissPickerController];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10013129C(uint64_t a1)
{
  v1 = a1;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v38;
    v5 = &_s7SwiftUI4ViewPAAE5alert_11isPresented7actionsQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEtAaBRd__lFQOMQ_ptr;
    v27 = *v38;
    do
    {
      v6 = 0;
      v28 = v3;
      do
      {
        if (*v38 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v37 + 1) + 8 * v6) itemProvider];
        if (v7 && [v7 canLoadObjectOfClass:objc_opt_class()])
        {
          v8 = v5;
          v9 = [v7 registeredTypeIdentifiers];
          v10 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v43 = v9;
            _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Available type identifiers for image insertion: %@", buf, 0xCu);
          }

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v11 = v1;
          v12 = *(v1 + 40);
          v13 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v34;
LABEL_12:
            v16 = 0;
            while (1)
            {
              if (*v34 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v33 + 1) + 8 * v16);
              if ([v9 containsObject:v17])
              {
                break;
              }

              if (v14 == ++v16)
              {
                v14 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
                if (v14)
                {
                  goto LABEL_12;
                }

                goto LABEL_18;
              }
            }

            v18 = v17;
            v19 = os_log_create("com.apple.notes", "UI");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v43 = v18;
              _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Using type identifier: %@", buf, 0xCu);
            }

            v1 = v11;
            v5 = v8;
            v3 = v28;
            if (v18)
            {
              goto LABEL_25;
            }
          }

          else
          {
LABEL_18:

            v1 = v11;
            v5 = v8;
            v3 = v28;
          }

          v18 = [v9 firstObject];
          v20 = os_log_create("com.apple.notes", "UI");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v43 = v18;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Couldn't find a preferred type identifier. Falling back to first available: %@", buf, 0xCu);
          }

LABEL_25:
          v21 = [UTType typeWithIdentifier:v18];
          v22 = [v21 preferredFilenameExtension];
          v23 = [NSString stringWithFormat:@"image.%@", v22];

          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_1001316F0;
          v30[3] = &unk_10064AC10;
          v30[4] = *(v1 + 48);
          v31 = v21;
          v32 = v23;
          v24 = v23;
          v25 = v21;
          v26 = [v7 loadDataRepresentationForTypeIdentifier:v18 completionHandler:v30];

          v4 = v27;
        }

        v6 = v6 + 1;
      }

      while (v6 != v3);
      v3 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v3);
  }
}

void sub_1001316F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1004E1414(v6, v7);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100131810;
    v8[3] = &unk_100645DB8;
    v8[4] = *(a1 + 32);
    v9 = v5;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    dispatch_async(&_dispatch_main_q, v8);
  }
}

void sub_100131810(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) preferredMIMEType];
  [v2 insertAttachmentWithData:v3 mimeType:v4 preferredFilename:*(a1 + 56)];

  v5 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E148C();
  }
}

void sub_100132304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100132344(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained contentLayer];
    v4 = [v3 webArchive];
    v5 = [ICAirDropDocument legacyNoteAirDropDocumentWithWebArchive:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100132808(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  [*(a1 + 32) cleanupAfterBarSourcedPopoverPresentation];
  if (!a5 && a3 && [v10 length])
  {
    v8 = [*(a1 + 32) eventReporter];
    v9 = [*(a1 + 32) note];
    [v8 submitNoteSharrowEventForHTMLNote:v9 activityType:v10 contextPath:0];
  }
}

void sub_100132DF4(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) animateDeleteTransitionWithCompletion:0];
    v3 = [*(a1 + 32) delegate];
    [v3 noteDisplayController:*(a1 + 32) noteWasDeleted:*(a1 + 40) actionOrigin:0];
  }
}

void sub_1001330F8(uint64_t a1)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100133210;
  v11[3] = &unk_1006462D8;
  v14 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v12 = v2;
  v13 = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013327C;
  v7[3] = &unk_1006499B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  [UIView animateWithDuration:v11 animations:v7 completion:0.35];
}

void sub_100133210(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) setAlpha:0.0];
  }

  v2 = [*(a1 + 40) backgroundView];
  [v2 setContentViewVisible:1];
}

uint64_t sub_10013327C(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) setPerformingDeleteAnimation:0];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_100134048(id a1, UIAlertAction *a2)
{
  v6 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [v2 openSensitiveURL:v6 withOptions:0];

  if ((v3 & 1) == 0)
  {
    v4 = +[UIApplication sharedApplication];
    v5 = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
    [v4 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];
  }
}

void sub_1001351A8(uint64_t a1)
{
  [*(a1 + 32) setTransitioningToSize:0];
  if ([*(a1 + 32) isPickingAttachment])
  {
    v2 = [*(a1 + 32) contentLayer];
    [v2 scrollSelectionToVisible:1];
  }
}

void sub_100135320(uint64_t a1)
{
  [*(a1 + 32) setChangingTraitCollection:0];
  if (*(a1 + 40) == 1)
  {
    v3 = [*(a1 + 32) contentLayer];
    v2 = [v3 noteHTMLEditorView];
    [v2 startEditing];
  }
}

id sub_100135978(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) == 1)
  {
    v5 = [v3 traitCollectionByModifyingTraits:&stru_10064AD10];

    v4 = v5;
  }

  v6 = [*(a1 + 32) resolvedColorWithTraitCollection:v4];
  v7 = [v4 ic_appearanceInfo];
  [v7 navigationBarAlpha];
  v8 = [v6 colorWithAlphaComponent:?];

  return v8;
}

id sub_100135E70(uint64_t a1)
{
  result = [*(a1 + 32) isEditing];
  if (result)
  {
    result = [*(a1 + 32) noteCanBeSaved];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 setEditing:0 animated:1];
    }
  }

  return result;
}

void sub_1001377E8(id a1, ICBaseNoteResultsCollectionViewCell *a2, UITraitCollection *a3)
{
  v3 = a2;
  [(ICBaseNoteResultsCollectionViewCell *)v3 updateViewStateProperties];
  [(ICBaseNoteResultsCollectionViewCell *)v3 synchronouslyLoadConfigurationDataAndUpdate];
}

id sub_100138C5C(uint64_t a1)
{
  if ([*(a1 + 32) prefersLightBackground])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  [*(a1 + 32) setPreferredBackgroundType:v2];
  [*(a1 + 32) updateUserSpecificChangeCountWithReason:@"Changed preferred background type"];
  [*(a1 + 32) updateChangeCountWithReason:@"Changed preferred background type"];
  v3 = *(a1 + 40);

  return [v3 ic_save];
}

void sub_100139028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100139050(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained note];
  [v1 changePinStatusIfPossible];

  v2 = [WeakRetained note];
  v3 = [v2 managedObjectContext];
  [v3 ic_save];
}

void sub_10013975C(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E1510(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = [*(a1 + 32) updateMakingProgressDelayer];
  [v10 requestFire];
}

void sub_100139A10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100139A34(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [objc_opt_class() isMigratingICloudAccount:v3];

  objc_copyWeak(&v6, (a1 + 40));
  v7 = v5;
  performBlockOnMainThread();
  objc_destroyWeak(&v6);
}

void sub_100139B10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[ICReachability sharedReachabilityForInternetConnection];
    v4 = [v3 currentReachabilityStatus];
    v5 = v4 != 0;

    v6 = +[ICLegacyImportManager sharedLegacyImportManager];
    v7 = [v6 hasPendingOperations];

    v8 = +[ICCloudContext sharedContext];
    v9 = [v8 hasPendingOperations];

    v10 = [objc_opt_class() isMigratingLocalAccount];
    if ((v10 & 1) == 0 && ((*(a1 + 48) | v9) & 1) == 0)
    {
      v5 = 0;
    }

    v11 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 48);
      v13[0] = 67110144;
      v13[1] = v7;
      v14 = 1024;
      v15 = v12;
      v16 = 1024;
      v17 = v10;
      v18 = 1024;
      v19 = v9;
      v20 = 1024;
      v21 = v4 != 0;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Updating progress spinner. importing=%d migratingICloud=%d migratingLocal=%d syncing=%d reachable=%d", v13, 0x20u);
    }

    [WeakRetained setMakingProgress:(v5 | v7) & 1];
    [WeakRetained setIsPerformingProgressUpdate:0];
    if ([WeakRetained needsPerformingProgressUpdateAfterCurrentIsComplete])
    {
      [WeakRetained setNeedsPerformingProgressUpdateAfterCurrentIsComplete:0];
      [WeakRetained updateMakingProgress];
    }
  }
}

void sub_100139E90(uint64_t a1)
{
  v2 = [ICHashtag hashtagWithStandardizedContent:*(a1 + 32) onlyVisible:0 account:*(a1 + 40)];
  v3 = v2;
  if (*(a1 + 56) == 1)
  {
    [v2 markForDeletion];
  }

  else
  {
    [v2 unmarkForDeletion];
  }

  [*(a1 + 48) ic_save];
}

id sub_10013A768(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [ICUTType typeWithIdentifier:v2];
  v5 = [v4 conformsToType:v3];

  return v5;
}

void sub_10013AB38(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10013ABE8;
  v3[3] = &unk_100645ED0;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_10013AC88(uint64_t a1)
{
  v2 = [*(a1 + 32) importLongRunningTaskController];

  if (!v2)
  {
    v3 = objc_alloc_init(ICLongRunningTaskController);
    [*(a1 + 32) setImportLongRunningTaskController:v3];

    v4 = [*(a1 + 32) importLongRunningTaskController];
    [v4 setProgressStringBlock:&stru_10064AE48];

    v5 = +[NSDate date];
    [*(a1 + 32) setLastAccessibilityAnnouncementDate:v5];
  }

  v6 = [*(a1 + 32) importLongRunningTaskController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013AEB8;
  v8[3] = &unk_10064AE70;
  v9 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013AF34;
  v7[3] = &unk_10064AE70;
  v7[4] = v9;
  [v6 startTask:v8 completionBlock:v7];
}

NSString *__cdecl sub_10013ADD0(id a1, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Importing note %lu of %lu…" value:&stru_100661CF0 table:0];
    v7 = [NSString localizedStringWithFormat:v6, a2, a3];
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v7 = [v5 localizedStringForKey:@"Loading…" value:&stru_100661CF0 table:0];
  }

  return v7;
}

void sub_10013AEB8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setLongRunningTaskProgress:a2];
  v3 = [*(a1 + 32) longRunningTaskProgress];
  [v3 setTotalUnitCount:1];

  v4 = [*(a1 + 32) longRunningTaskProgress];
  [v4 setCompletedUnitCount:0];
}

id sub_10013AF34(uint64_t a1)
{
  [*(a1 + 32) setLongRunningTaskProgress:0];
  v2 = *(a1 + 32);

  return [v2 setImportLongRunningTaskController:0];
}

uint64_t sub_10013B108(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10013B120(uint64_t a1)
{
  v2 = [*(a1 + 40) totalNoteFound];
  v3 = [*(a1 + 32) longRunningTaskProgress];
  [v3 setTotalUnitCount:v2];

  v4 = [*(a1 + 40) totalNoteImported];
  v5 = [*(a1 + 32) longRunningTaskProgress];
  [v5 setCompletedUnitCount:v4];

  v8 = [*(a1 + 40) errorFileURLs];
  [v8 count];
  v6 = [*(a1 + 32) viewController];
  v7 = [v6 ic_viewControllerManager];

  if ([*(a1 + 40) totalNoteImported] && *(*(*(a1 + 48) + 8) + 40))
  {
    [v7 showObjectWithObjectID:?];
  }
}

void sub_10013B210(uint64_t a1)
{
  v2 = +[NSBundle mainBundle];
  v4 = [v2 localizedStringForKey:@"Successfully imported %lu notes" value:&stru_100661CF0 table:0];

  v3 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [*(a1 + 32) totalNoteFound]);
  ICAccessibilityPostHighPriorityAnnouncementNotification();
}

void sub_10013B40C(uint64_t a1)
{
  v10 = +[NSDate date];
  v2 = [*(a1 + 32) lastAccessibilityAnnouncementDate];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) lastAccessibilityAnnouncementDate];
    [v10 timeIntervalSinceDate:v4];
    v6 = v5;

    if (v6 > 3.0)
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"Import progress %lu%%" value:&stru_100661CF0 table:0];

      v9 = [NSString localizedStringWithFormat:v8, *(a1 + 40)];
      ICAccessibilityPostHighPriorityAnnouncementNotification();
      [*(a1 + 32) setLastAccessibilityAnnouncementDate:v10];
    }
  }
}

void sub_10013B52C(uint64_t a1)
{
  if ([*(a1 + 40) state] == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 100;
  }

  v3 = [*(a1 + 32) longRunningTaskProgress];
  [v3 setTotalUnitCount:v2];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) longRunningTaskProgress];
  [v5 setCompletedUnitCount:v4];
}

void sub_10013B844(id a1)
{
  v1 = objc_alloc_init(ICLegacyImportManager);
  v2 = qword_1006CB440;
  qword_1006CB440 = v1;
}

void sub_10013BC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v18 - 136));
  _Unwind_Resume(a1);
}

void sub_10013BC60(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Took too long for import background task %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained cancel];

  v5 = +[UIApplication sharedApplication];
  [v5 endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];

  *(*(*(a1 + 40) + 8) + 24) = UIBackgroundTaskInvalid;
}

void sub_10013BD68(uint64_t a1)
{
  v2 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed import operation: %@", &v6, 0xCu);
  }

  v4 = +[UIApplication sharedApplication];
  [v4 endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"ICLegacyImportManagerOperationsDidChangeNotification" object:*(a1 + 32)];
}

void sub_10013CC70(uint64_t a1)
{
  v2 = [NSPredicate predicateWithFormat:@"typeUTI == %@", AVFileTypeAppleM4A];
  v3 = [*(a1 + 32) workerContext];
  v19 = v2;
  v4 = [ICAttachment attachmentsMatchingPredicate:v2 context:v3];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 audioModel];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 audioDocument];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 transcriptVersion];
            [v15 floatValue];
            if (v16 >= 1.0)
            {
              goto LABEL_11;
            }

            v17 = [v14 transcriptVersion];

            if (v17)
            {
              v15 = +[ICBackgroundTranscriptionHelper sharedInstance];
              v18 = [v10 objectID];
              [v15 addAudioTranscriptionTaskToQueueWithIdentifier:v18];

LABEL_11:
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }
}

uint64_t sub_10013D500(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10013D518(uint64_t a1)
{
  v5 = [*(a1 + 32) destinationFolder];
  v2 = [v5 identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10013D580(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v3 = a1 + 40;
  v5 = (v3 - 8);
  v6 = [*(v3 - 8) ensureLegacyNoteIsValid:*(*(v4 + 8) + 40)];
  v7 = *(*v3 + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(*v3 + 8) + 40);
  v10 = os_log_create("com.apple.notes", "Migration");
  v11 = v10;
  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *v5;
      v23 = [*(*(*v3 + 8) + 40) identifier];
      *buf = 138412546;
      v26 = v22;
      v27 = 2112;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ found deleted legacy note: %@", buf, 0x16u);
    }

    v13 = v11;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1004E16D0((v3 - 8), v3, v11);
  }

  v12 = [*v5 destinationFolder];
  v13 = [ICNote newEmptyNoteInFolder:v12];

  v14 = *(*(*v3 + 8) + 40);
  v15 = objc_alloc_init(ICTextController);
  v16 = +[ICAttachmentPreviewGenerator sharedGenerator];
  [ICLegacyNoteUtilities copyValuesFromLegacyNote:v14 toNote:v13 styler:v15 attachmentPreviewGenerator:v16];

  [v13 updateChangeCountWithReason:@"Imported HTML note"];
  if ([*v5 deleteLegacyNotesAfterImport])
  {
    v17 = +[NSNotificationCenter defaultCenter];
    [v17 postNotificationName:@"ICImportOperationWillDeleteNoteNotification" object:*(*(*v3 + 8) + 40)];

    [*(*(*v3 + 8) + 40) markForDeletion];
    v18 = +[NotesApp sharedNotesApp];
    v19 = [v18 noteContext];
    v24 = 0;
    v20 = [v19 save:&v24];
    v11 = v24;

    if ((v20 & 1) == 0)
    {
      v21 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1004E178C(v11, v21);
      }
    }

LABEL_12:
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10013D860(uint64_t a1)
{
  v2 = +[NotesApp sharedNotesApp];
  v3 = [v2 noteContext];
  v4 = *(*(a1 + 32) + 8);
  obj = *(v4 + 40);
  [v3 save:&obj];
  objc_storeStrong((v4 + 40), obj);
}

void sub_10013DAA0(uint64_t a1)
{
  v2 = [*(a1 + 32) destinationFolder];
  v3 = [v2 isDeleted];

  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v10 = 138412290;
      v11 = v5;
      v6 = "Cancelling import operation because folder was deleted: %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, &v10, 0xCu);
    }
  }

  else
  {
    v7 = [*(a1 + 32) destinationFolder];
    v8 = [v7 markedForDeletion];

    if (!v8)
    {
      return;
    }

    v4 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      v6 = "Cancelling import operation because folder was marked for deletion: %@";
      goto LABEL_7;
    }
  }

  [*(a1 + 32) cancel];
}

void sub_10013DD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013DD3C(uint64_t a1)
{
  v6 = [*(a1 + 32) legacyManagedObjectContext];
  v2 = [*(a1 + 40) objectID];
  v3 = [v6 objectWithID:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10013DEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013DEC0(uint64_t a1)
{
  v6 = +[NotesApp sharedNotesApp];
  v2 = [v6 noteContext];
  v3 = [v2 managedObjectContext];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10013E0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013E0BC(uint64_t a1)
{
  v5 = [*(a1 + 32) destinationFolder];
  v2 = [v5 identifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_10013E2A4(uint64_t a1)
{
  v2 = [NSPredicate predicateWithFormat:@"needsToUpdateUserSpecificRecordReferenceActions == YES"];
  v3 = [ICCloudSyncingObject ic_objectsMatchingPredicate:v2 context:*(a1 + 32)];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 updateNeedsToSaveUserSpecificRecordToUpdateReferenceActionsIfNeeded];
        [v8 setNeedsToUpdateUserSpecificRecordReferenceActions:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(a1 + 32) ic_save];
}

void sub_10013EDA4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) accountsFetchedResultsController];

  if (v2 != v3)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) storesFetchedResultsController];

    if (v4 != v5 || (*(a1 + 48) - 1) > 1)
    {
      return;
    }

    goto LABEL_9;
  }

  v6 = *(a1 + 48);
  v7 = v6 > 4;
  v8 = (1 << v6) & 0x16;
  if (!v7 && v8 != 0)
  {
LABEL_9:
    v10 = *(a1 + 40);

    [v10 setAccountsListNeedsUpdate:1];
  }
}

void sub_10013EEEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) accountsFetchedResultsController];
  v4 = v3;
  if (v2 == v3)
  {
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) storesFetchedResultsController];

    if (v5 != v6)
    {
      return;
    }
  }

  if ([*(a1 + 40) accountsListNeedsUpdate])
  {
    [*(a1 + 40) setAccountsListNeedsUpdate:0];
    v7 = +[ICAppDelegate sharedInstance];
    [v7 legacyNotesChanged];
  }
}

void sub_10013F358(id a1)
{
  v1 = +[ICNoteContext sharedContext];
  v2 = [v1 workerManagedObjectContext];

  [ICMigrationUtilities updateAllLegacyAccountMigrationStatesInContext:v2];
}

void sub_100140268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100140288(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained closeHandler];

  if (v1)
  {
    v2 = [WeakRetained closeHandler];
    v2[2]();
  }
}

void sub_100141858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100141870(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v10 = v6;
  v8 = [v6 identifier];
  if ([v7 isEqualToString:v8])
  {
    v9 = 1;
  }

  else
  {
    v9 = [*(a1 + 40) conformsToType:v10];
  }

  *(*(*(a1 + 48) + 8) + 24) = v9;

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void sub_100141FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_100142020(void *a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    v7 = [a2 fileWrapper];
    if ([v7 isRegularFile])
    {
      v8 = [v7 regularFileContents];
      v9 = [v8 length];
    }

    else
    {
      if (![v7 isDirectory])
      {
LABEL_19:

        return;
      }

      v10 = a1[4];
      v11 = [v7 filename];
      v8 = [v10 URLByAppendingPathComponent:v11 isDirectory:1];

      v12 = +[NSFileManager defaultManager];
      v13 = [NSArray arrayWithObject:NSURLFileSizeKey];
      v14 = [v12 enumeratorAtURL:v8 includingPropertiesForKeys:v13 options:4 errorHandler:0];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v24 = v12;
        v25 = v8;
        v26 = a1;
        v27 = a5;
        v18 = 0;
        v9 = 0;
        v19 = *v30;
        do
        {
          v20 = 0;
          v21 = v18;
          do
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v22 = *(*(&v29 + 1) + 8 * v20);
            v28 = 0;
            v23 = [v22 getResourceValue:&v28 forKey:NSURLFileSizeKey error:0];
            v18 = v28;

            if (v23)
            {
              v9 = &v9[[v18 unsignedIntegerValue]];
            }

            v20 = v20 + 1;
            v21 = v18;
          }

          while (v17 != v20);
          v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v17);

        a1 = v26;
        a5 = v27;
        v12 = v24;
        v8 = v25;
      }

      else
      {
        v9 = 0;
      }
    }

    if (v9 > a1[7])
    {
      *(*(a1[5] + 8) + 24) = 1;
      *(*(a1[6] + 8) + 24) = v9;
      *a5 = 1;
    }

    goto LABEL_19;
  }
}

void sub_10014228C(uint64_t a1)
{
  v7 = [*(a1 + 32) textStorage];
  v2 = [*(a1 + 32) textStorage];
  v3 = [v2 styler];

  v4 = objc_alloc_init(ICTextController);
  [v7 setStyler:v4];

  [v7 setConvertAttributes:1];
  [v7 setWantsUndoCommands:0];
  [v7 replaceCharactersInRange:0 withAttributedString:{0, *(a1 + 40)}];
  [v7 fixupAfterEditing];
  [v7 setConvertAttributes:0];
  if (!v3)
  {
    [v7 setStyler:0];
  }

  v5 = [*(a1 + 32) textStorage];
  v6 = [*(a1 + 32) managedObjectContext];
  [v5 ic_enumerateAttachmentsInContext:v6 usingBlock:&stru_10064B028];
}

void sub_1001423C0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = (a1 + 32);
    [*(a1 + 32) setCreationDate:?];
  }

  else
  {
    v3 = +[NSDate date];
    v2 = (a1 + 32);
    [*(a1 + 32) setCreationDate:v3];
  }

  if (*(a1 + 48))
  {
    v4 = *v2;

    [v4 setModificationDate:?];
  }

  else
  {
    v5 = +[NSDate date];
    [*v2 setModificationDate:v5];
  }
}

void sub_1001428C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001428E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001428F8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_100143D98(uint64_t a1)
{
  [*(a1 + 32) contentSizeCategoryDidChange];
  [*(a1 + 32) updateHeaderViewMargins];
  v2 = *(a1 + 32);

  return [v2 updateImagesAndMoviesScrollViewContentInset];
}

id sub_1001446B4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 titleForAttachmentSection:v3];
}

uint64_t sub_10014486C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_100145940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100145970(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 name];
  v7 = [v6 intValue];

  if (v7 == 7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v5 objects];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          if ([v13 attachmentType] == 15)
          {
            [*(a1 + 32) addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v14 = 40;
    goto LABEL_14;
  }

  v15 = [v5 name];
  v16 = [v15 intValue];

  if (v16 == 6)
  {
    v14 = 48;
LABEL_14:
    *(*(*(a1 + v14) + 8) + 24) = a3;
  }
}

int64_t sub_100145AF8(id a1, id a2, id a3)
{
  v3 = a3;
  v4 = ICCheckedProtocolCast();
  v5 = ICCheckedProtocolCast();

  v6 = +[ICAttachment attachmentSectionSortOrder];
  v7 = [v4 name];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 intValue]);
  v9 = [v6 indexOfObject:v8];

  v10 = +[ICAttachment attachmentSectionSortOrder];
  v11 = [v5 name];
  v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 intValue]);
  v13 = [v10 indexOfObject:v12];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [ICAssert handleFailedAssertWithCondition:"index1 != NSNotFound && index2 != NSNotFound" functionName:"[ICBrowseAttachmentsCollectionController sortFetchedResultsSections]_block_invoke" simulateCrash:1 showAlert:0 format:@"Unknown section"];
  }

  if (v9 == v13)
  {
    [ICAssert handleFailedAssertWithCondition:"index1 != index2" functionName:"[ICBrowseAttachmentsCollectionController sortFetchedResultsSections]_block_invoke" simulateCrash:1 showAlert:0 format:@"Sections should different"];
  }

  if (v9 < v13)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

id sub_100145D20(uint64_t a1)
{
  [*(a1 + 32) sortFetchedResultsSections];
  v2 = [*(a1 + 32) collectionView];
  [v2 reloadData];

  v3 = [*(a1 + 32) collectionViewLayout];
  [v3 invalidateLayout];

  v4 = *(a1 + 32);

  return [v4 updateEmptyView];
}

id sub_1001469BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) ic_viewControllerManager];
  v4 = [*(a1 + 40) view];
  v5 = [v2 previewActionsForViewControllerManager:v3 fromView:v4];

  v6 = [UIMenu menuWithTitle:&stru_100661CF0 image:0 identifier:0 options:0 children:v5];

  return v6;
}

void sub_100146CE4(void *a1)
{
  v2 = a1[4];
  v3 = [v2 collectionView];
  [v2 browseAttachmentsCollectionView:v3 didSelectAttachment:a1[5] indexPath:a1[6]];
}

void sub_10014896C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100148990(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 didChooseToMigrate];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_100148A4C(uint64_t a1)
{
  v16 = +[ICQuickNoteSessionManager sharedManager];
  v2 = [v16 noteEditorViewController];
  v3 = [v2 note];
  if ([v16 isQuickNoteSessionActive])
  {
    v4 = [v2 presentedViewController];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [v2 presentedViewController];
      [v6 prepareForDismissal];
    }

    [v16 endSession];
  }

  if ([v3 isEmpty])
  {
    [ICNote deleteEmptyNote:v3];
    v7 = [v3 managedObjectContext];
    [v7 ic_save];
  }

  else
  {
    [v2 saveNote];
    v7 = +[ICNoteContext sharedContext];
    [v7 saveImmediately];
  }

  v8 = [*(a1 + 32) viewControllerManager];
  v9 = [v8 noteEditorViewController];
  [v9 updateInlineDrawings];

  v10 = [*(a1 + 32) viewControllerManager];
  v11 = [v10 noteEditorViewController];
  [v11 resetTextViewUndoManager];

  v12 = [*(a1 + 32) viewControllerManager];
  v13 = [v12 currentAttachmentPresenter];
  [v13 dismissAnimated:0 completion:0];

  v14 = +[ICQuickNoteSessionManager sharedManager];
  [v14 setSecureScreenShowing:0];

  v15 = [*(a1 + 32) viewControllerManager];
  [v15 dismissAnyPresentedViewControllerAnimated:0 completion:0];

  [*(a1 + 32) setIcWindow:0];
}

void sub_100148F38(uint64_t a1)
{
  [UIView setAnimationsEnabled:0];
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 view];
  [v3 layoutIfNeeded];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];

  LODWORD(v3) = [*(a1 + 40) isQuickNoteFirstLaunch];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100149188;
  v20[3] = &unk_10064B1D0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v21 = v10;
  v22 = v9;
  v23 = *(a1 + 64);
  v24 = v3;
  v25 = *(a1 + 72);
  v11 = objc_retainBlock(v20);
  v12 = v11;
  if (v3)
  {
    v13 = [ICStartupQuickNoteFirstLaunchViewController alloc];
    v14 = +[ICAppDelegate sharedInstance];
    v15 = -[ICStartupQuickNoteFirstLaunchViewController initStartedWithPencil:launchBlock:](v13, "initStartedWithPencil:launchBlock:", [v14 isLaunchingQuickNoteViaPencil], v12);

    v16 = +[ICAppDelegate sharedInstance];
    [v16 setLaunchingQuickNoteViaPencil:0];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001496C8;
    v18[3] = &unk_100645E30;
    v17 = *(a1 + 32);
    v19 = *(a1 + 40);
    [v17 presentViewController:v15 animated:1 completion:v18];
  }

  else
  {
    (v11[2])(v11, 0);
  }
}

void sub_100149188(uint64_t a1, uint64_t a2)
{
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10014948C;
  v24[3] = &unk_10064B1A8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v25 = v9;
  v26 = v8;
  v27 = *(a1 + 64);
  v28 = *(a1 + 72);
  v10 = objc_retainBlock(v24);
  v11 = v10;
  if (a2 != 1)
  {
    if (*(a1 + 73) == 1)
    {
      v12 = +[NSMutableDictionary dictionary];
      v13 = [&__kCFBooleanFalse stringValue];
      [v12 setValue:v13 forKey:ICQuickNoteURLOptionShowList];

      if (ICInternalSettingsIsSelectionStateTrackingEnabled())
      {
        v14 = [_TtC11MobileNotes25ICSelectionStateUtilities selectedNoteObjectIDFromArchive:*(a1 + 56) modernManagedObjectContext:*(a1 + 48) legacyManagedObjectContext:0];
        v15 = [ICNote ic_existingObjectWithID:v14 context:*(a1 + 48)];
        v16 = [v15 identifier];
        [v12 setValue:v16 forKey:ICQuickNoteURLOptionNoteIdentifier];
      }

      else
      {
        v17 = [*(a1 + 56) currentNoteObjectIDURL];

        if (!v17)
        {
LABEL_9:
          v21 = *(a1 + 64);
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_1001496AC;
          v22[3] = &unk_1006465D0;
          v23 = v11;
          [v21 launchNotesAppFromLockscreenWithQueryOptions:v12 completionBlock:v22];

          goto LABEL_10;
        }

        v18 = [*(a1 + 48) persistentStoreCoordinator];
        v19 = [*(a1 + 56) currentNoteObjectIDURL];
        v20 = [v18 ic_managedObjectIDForURIRepresentation:v19];
        v14 = [ICNote ic_existingObjectWithID:v20 context:*(a1 + 48)];

        v15 = [v14 identifier];
        [v12 setValue:v15 forKey:ICQuickNoteURLOptionNoteIdentifier];
      }

      goto LABEL_9;
    }

    (v10[2])(v10, 1);
  }

LABEL_10:
}

void sub_10014948C(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v3 = [*(a1 + 40) noteForSessionCreatingIfNecessaryInContext:*(a1 + 48) stateArchive:*(a1 + 56) canResume:a2 isNewlyCreated:&v13];
  [*(a1 + 32) setNote:v3];

  if (v13 == 1)
  {
    v4 = [*(a1 + 32) eventReporter];
    v5 = [*(a1 + 32) note];
    [v4 submitNoteCreateEventForModernNote:v5 createApproach:12];
  }

  [*(a1 + 40) beginSessionWithNoteEditorViewController:*(a1 + 32)];
  [*(a1 + 64) updateNoteEditorViewControllerWithStateArchive:*(a1 + 56)];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001495BC;
  v10[3] = &unk_100646080;
  v11 = *(a1 + 32);
  v12 = *(a1 + 72);
  v6 = objc_retainBlock(v10);
  (v6[2])(v6, v7, v8, v9);
}

void sub_1001495BC(uint64_t a1)
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v7 = [*(a1 + 32) note];
  if ([v7 isPasswordProtected])
  {
    v4 = [v7 isAuthenticated] ^ 1;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) showInkPicker:1 animated:0];
  }

LABEL_7:
  [UIView setAnimationsEnabled:1];
  if ((*(a1 + 40) & 1) == 0 && !v3)
  {
    v5 = [*(a1 + 32) note];
    v6 = [v5 isEmpty];

    if (v6)
    {
      [*(a1 + 32) startEditing];
    }
  }
}

uint64_t sub_1001496AC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_1001496F4(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  objc_opt_class();
  v5 = ICCheckedDynamicCast();

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001497C8;
  v7[3] = &unk_10064B260;
  v8 = v3;
  v6 = v3;
  [v5 takeScreenshotOfDisplays:0 handler:v7];
}

void sub_1001497C8(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 allValues];
  v6 = [v5 ic_map:&stru_10064B238];

  [v6 count];
  (*(*(a1 + 32) + 16))();
}

NSData *__cdecl sub_100149878(id a1, UIImage *a2)
{
  [(UIImage *)a2 ioSurface];
  v2 = UICreateCGImageFromIOSurface();
  v3 = [UIImage imageWithCGImage:CFAutorelease(v2)];
  v4 = UIImagePNGRepresentation(v3);

  return v4;
}

void sub_10014B0C8(uint64_t a1)
{
  v1 = [*(a1 + 32) eventReporter];
  [v1 startWindowSceneEventDurationTracking];
}

void sub_10014BF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, id a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, id a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak(&a32);
  objc_destroyWeak(&a45);
  objc_destroyWeak(&a54);
  objc_destroyWeak(&a60);
  objc_destroyWeak(&a66);
  objc_destroyWeak((v67 - 184));
  objc_destroyWeak((v67 - 192));
  objc_destroyWeak((v67 - 128));
  objc_destroyWeak((v67 - 120));
  objc_destroyWeak((v67 - 112));
  _Unwind_Resume(a1);
}

void sub_10014C05C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [v7 setDisplayGenericTitle:0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = [WeakRetained collectionViewDiffableDataSource];
  v12 = [v11 snapshot];
  [v7 setDisplayDisclosure:{objc_msgSend(v12, "numberOfSections") > 1}];

  objc_opt_class();
  v13 = ICDynamicCast();
  v14 = v13;
  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = [v13 accountObjectID];
    v17 = (*(v15 + 16))(v15, v16);
    [v7 setUpgradeButtonTapHandler:v17];
  }

  else
  {
    [v7 setUpgradeButtonTapHandler:0];
  }

  [v7 setFolderListSectionIdentifier:v14];
  [v7 setTagSelection:0];
  if ([v14 sectionType] == 8)
  {
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10014C2B4;
    v22 = &unk_10064B288;
    objc_copyWeak(&v24, (a1 + 48));
    v23 = *(a1 + 40);
    [v7 setTagSelectionDidChange:&v19];
    v18 = objc_loadWeakRetained((a1 + 48));
    [v7 setShouldDisplayTagSelectionOperator:{objc_msgSend(v18, "shouldDisplayTagOperatorInTagHeading", v19, v20, v21, v22)}];

    objc_destroyWeak(&v24);
  }

  else
  {
    [v7 setTagSelectionDidChange:0];
    [v7 setShouldDisplayTagSelectionOperator:0];
  }

  [v7 setUsesSidebarHeaderConfiguration:{objc_msgSend(v7, "ic_inSidebar")}];
  if (+[UIDevice ic_isVision])
  {
    [v7 setHorizontalInsetsOverride:24.0];
  }
}

void sub_10014C2B4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTagSelection:v5];

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void sub_10014C328(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained presentingViewController];
    [v6 setPresentingViewController:v10];

    [v6 setHasGroupInset:{objc_msgSend(v9, "hasGroupInset")}];
    [v6 setHasDisclosureIndicator:{objc_msgSend(v9, "hasGroupInset")}];
    [v6 setShouldIndentNoteCount:{objc_msgSend(v9, "shouldIndentNoteCount")}];
    v11 = [v9 unsupportedFolderInfoButtonTapHandler];
    [v6 setUnsupportedFolderInfoButtonTapHandler:v11];

    v12 = objc_loadWeakRetained((a1 + 40));
    [v6 setAccessibilityCustomActionsDelegate:v12];

    objc_opt_class();
    v13 = ICDynamicCast();
    LODWORD(v11) = [v13 ic_isModernContainerType];

    if (v11)
    {
      objc_opt_class();
      v14 = [v9 modernViewContext];
      v15 = [v14 objectWithID:v7];
      v16 = ICCheckedDynamicCast();
      [v6 setNoteContainer:v16];
LABEL_6:

      goto LABEL_12;
    }

    objc_opt_class();
    v17 = ICDynamicCast();
    v18 = [v17 ic_isLegacyContainerType];

    if (v18)
    {
      objc_opt_class();
      v14 = [v9 legacyViewContext];
      v15 = [v14 objectWithID:v7];
      v16 = ICCheckedDynamicCast();
      [v6 setNoteCollection:v16];
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v19 = ICCheckedDynamicCast();
      [v6 setVirtualSmartFolder:v19];
    }

    else
    {
      v19 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_1004E1C38(v7, v19);
      }
    }
  }

LABEL_12:
}

void sub_10014C5A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v7 setHasGroupInset:{objc_msgSend(WeakRetained, "hasGroupInset")}];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10014C6C4;
  v14 = &unk_10064B288;
  objc_copyWeak(&v16, (a1 + 40));
  v15 = *(a1 + 32);
  [v7 setSelectionDidChange:&v11];
  [v7 setAllowsExclusion:{1, v11, v12, v13, v14}];

  objc_destroyWeak(&v16);
}

void sub_10014C6C4(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTagSelection:v5];

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

void sub_10014C738(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10014C874;
  v16 = &unk_10064B288;
  objc_copyWeak(&v18, (a1 + 40));
  v17 = *(a1 + 32);
  [v7 setSelectionChangeHandler:&v13];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained tagSelection];
  [v7 setTagSelection:v11];

  v12 = objc_loadWeakRetained((a1 + 40));
  [v12 updateTagOperatorVisibility];

  objc_destroyWeak(&v18);
}

void sub_10014C874(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTagSelection:v5];

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v5);
  }
}

id sub_10014C8E8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = 32;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 40;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v8 = 56;
      if (isKindOfClass)
      {
        v8 = 48;
      }
    }
  }

  v10 = *(a1 + v8);
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v12 = [WeakRetained dequeueConfiguredReusableCellWithRegistration:v10 forIndexPath:v7 item:v6];

  return v12;
}