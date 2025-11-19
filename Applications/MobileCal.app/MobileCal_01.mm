void sub_10009F304(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  v7 = a3 + 1;
  v8 = a1[7];
  if (a1[4] == v5)
  {
    v9 = *(a1[5] + 82);
  }

  else
  {
    v9 = [v5 isSelected];
  }

  if (v7 == v8 && (v9 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a1[4] == v6)
  {
    v10 = &OBJC_IVAR___MainWindowControlHeaderView__inboxSelected;
    goto LABEL_10;
  }

  if (a1[6] == v6)
  {
    v10 = &OBJC_IVAR___MainWindowControlHeaderView__calendarSelected;
LABEL_10:
    *(a1[5] + *v10) = v7 == v8;
  }

  v11 = a1[5];
  if (*(v11 + 40) == v6)
  {
    v12 = [v6 customView];
    v13 = [MainWindowControlHeaderView inboxImageForCount:*(a1[5] + 72) selected:*(a1[5] + 82) forToolbar:0 bold:0];
    [v12 setImage:v13 forState:0];

    [v12 sizeToFit];
  }

  else
  {
    if (*(v11 + 24) != v6)
    {
      [v6 setSelected:v7 == v8];
      goto LABEL_26;
    }

    v12 = [v6 customView];
    v14 = [MainWindowControlHeaderView badgedCalendarIcon:*(a1[5] + 81)];
    [v12 setImage:v14 forState:0];
  }

  v15 = [v6 customView];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [v15 interactions];
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v21 invalidate];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

LABEL_26:
}

void sub_10009FD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10009FD90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(UIPreviewParameters);
  v6 = [v4 preview];

  v7 = [v6 target];

  v8 = [UITargetedPreview alloc];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v8 initWithView:WeakRetained parameters:v5 target:v7];

  v11 = UIPointerLiftEffect_ptr;
  if (!*(a1 + 72))
  {
    v11 = UIPointerHighlightEffect_ptr;
  }

  v12 = [*v11 effectWithPreview:v10];
  if (*(a1 + 72))
  {
    v13 = 0;
  }

  else
  {
    v14 = [v7 container];
    v15 = [v10 view];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [v10 view];
    [v14 convertRect:v24 fromView:{v17, v19, v21, v23}];

    UIRectInset();
    v13 = [UIPointerShape shapeWithRoundedRect:?];
  }

  v25 = [UIPointerStyle styleWithEffect:v12 shape:v13];

  return v25;
}

id sub_1000A06B4(uint64_t a1)
{
  v2 = [*(a1 + 32) application];
  [v2 startedTest:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _mainLoop];
}

void sub_1000A0CB8(id a1, CalendarMessageCell *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    [(CalendarMessageCell *)v4 updateSelectedResponseButton];
  }
}

void sub_1000A0F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A0F80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000A0F98(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = [*(a1 + 40) objectID];
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000A100C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 72);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1168;
  block[3] = &unk_1002100B0;
  v14 = *(a1 + 56);
  block[4] = v3;
  v13 = v2;
  dispatch_sync(v4, block);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v5 = [*(a1 + 48) scanForConflicts];
    if (v5)
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(v7 + 72);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000A11DC;
      v9[3] = &unk_10020F2E0;
      v9[4] = v7;
      v10 = v6;
      v11 = v5;
      dispatch_sync(v8, v9);
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
    }
  }
}

void sub_1000A1168(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = [*(a1 + 40) objectID];
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000A11DC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(*(a1 + 32) + 48);
  v3 = [*(a1 + 40) objectID];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

void sub_1000A12E4(uint64_t a1)
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
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) notification];
        if (![v7 type] || objc_msgSend(v7, "type") == 1)
        {
          v8 = [*(a1 + 40) conflictInfoForNotification:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1000A148C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) count];
  if (v2)
  {
    if (*(a1 + 40) < v2)
    {
      v3 = [*(*(a1 + 32) + 24) objectAtIndex:?];
      v4 = [v3 notification];

      v5 = CUIKDisplayStringForNotificationIdentity();
      v6 = *(a1 + 32);
      v7 = *(v6 + 96);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000A1598;
      block[3] = &unk_10020F2E0;
      block[4] = v6;
      v11 = v4;
      v12 = v5;
      v8 = v5;
      v9 = v4;
      dispatch_sync(v7, block);
    }
  }
}

void sub_1000A1598(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(*(a1 + 32) + 56);
  v3 = [*(a1 + 40) objectID];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

id sub_1000A18E4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a2 notification];
  v8 = [v7 URL];
  [v6 removeObject:v8];

  result = [*(a1 + 32) count];
  if (!result)
  {
    *a4 = 1;
  }

  return result;
}

void sub_1000A2000(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v6 = [*(a1 + 40) objectID];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1000A2074(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A211C;
  block[3] = &unk_1002103F0;
  objc_copyWeak(&v7, (a1 + 48));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v7);
}

void sub_1000A211C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] indexOfObject:*(a1 + 32)];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000A21D0;
      v5[3] = &unk_10020EE00;
      v5[4] = *(a1 + 40);
      v5[5] = v4;
      [UIView performWithoutAnimation:v5];
    }
  }
}

void sub_1000A21D0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 inboxTableViewGroupController:*(a1 + 32) requestsReloadOfRow:*(a1 + 40)];
}

void sub_1000A2224(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v6 = [*(a1 + 40) objectID];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t sub_1000A2ACC(uint64_t a1, void *a2)
{
  v10 = [a2 notification];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v10;
  if (isKindOfClass)
  {
    v5 = v10;
    v6 = *(*(a1 + 32) + 40);
    v7 = [v5 URL];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      [*(a1 + 32) _saveStatus:3 forEventInvitationNotification:v5 commit:1];
    }

    v4 = v10;
  }

  return _objc_release_x1(isKindOfClass, v4);
}

void sub_1000A3BC4(uint64_t a1)
{
  [*(a1 + 32) _saveStatus:*(a1 + 64) forEventInvitationNotification:*(a1 + 40) commit:0];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [*(a1 + 48) conflictingDates];
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v23;
    while (2)
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v22 + 1) + 8 * v7);
        v10 = [*(*(a1 + 32) + 8) eventStore];
        v11 = [*(a1 + 56) objectID];
        v12 = [v10 eventForObjectID:v11 occurrenceDate:v9 checkValid:0];

        [v12 setParticipationStatus:1];
        v13 = [v12 eventStore];
        v21 = v8;
        LOBYTE(v11) = [v13 saveEvent:v12 span:0 commit:0 error:&v21];
        v5 = v21;

        if ((v11 & 1) == 0)
        {
          v14 = kCalUILogInboxHandle;
          if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v5;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error saving invitation status: %@.", buf, 0xCu);
          }

          v15 = [*(a1 + 56) eventStore];
          [v15 rollback];

          goto LABEL_17;
        }

        v7 = v7 + 1;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;

  v17 = [*(*(a1 + 32) + 8) eventStore];
  v20 = v5;
  v18 = [v17 commitWithRollback:&v20];
  v5 = v20;

  if ((v18 & 1) == 0)
  {
    v19 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error committing to event store: %@.", buf, 0xCu);
    }
  }

LABEL_17:
}

uint64_t sub_1000A3EA4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000A56D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 192));
  _Unwind_Resume(a1);
}

void sub_1000A56FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v7 = 0;
  v4 = [v3 saveEvent:a2 span:a3 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error clearing attendee change flags: %@", buf, 0xCu);
    }
  }
}

void sub_1000A57CC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!*(*(a1 + 32) + 32))
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;
  }

  v7 = [v3 URL];
  [*(*(a1 + 32) + 32) addObject:v7];
  v8 = *(*(a1 + 32) + 24);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A592C;
  v14[3] = &unk_1002104F8;
  v9 = v3;
  v15 = v9;
  v10 = [v8 indexOfObjectPassingTest:v14];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(*(a1 + 32) + 24) removeObjectAtIndex:v10];
    v11 = [*(a1 + 32) delegate];
    [v11 inboxTableViewGroupController:*(a1 + 32) addedRows:0 removedRows:0 updatedRows:0];

    v12 = *(*(a1 + 32) + 8);
    v13 = [v9 objectID];
    [v12 addRespondedNotificationObjectID:v13];
  }
}

BOOL sub_1000A592C(uint64_t a1, void *a2)
{
  v3 = [a2 notification];
  v4 = v3 == *(a1 + 32);

  return v4;
}

uint64_t sub_1000A596C(uint64_t a1)
{
  [*(a1 + 32) setIsJunk:1];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1000A59B4(uint64_t a1, uint64_t a2)
{
  if ((a2 - 3) >= 3)
  {
    (*(*(a1 + 48) + 16))();
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = 0;
}

void sub_1000A5A1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained viewController];
    v3 = [v2 presentingViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v4;
  }
}

void sub_1000A5A90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  [*(*(a1 + 32) + 32) removeObject:*(a1 + 40)];
  if (v5)
  {
    v6 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error responding to shared calendar invitation: %@", &v7, 0xCu);
    }
  }
}

id sub_1000A5DF8(uint64_t a1)
{
  *(*(a1 + 32) + 112) = 1;
  result = [*(a1 + 32) visible];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 refreshIfNeeded];
  }

  return result;
}

id sub_1000A5F60(uint64_t a1)
{
  *(*(a1 + 32) + 112) = 1;
  result = [*(a1 + 32) visible];
  if (result)
  {
    v3 = kCalUILogInboxHandle;
    if (os_log_type_enabled(kCalUILogInboxHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138543362;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Will refresh inbox notifications group controller if needed. Inbox notifications group controller: %{public}@.", &v5, 0xCu);
    }

    return [*(a1 + 32) refreshIfNeeded];
  }

  return result;
}

id sub_1000A6A84(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isExecuting];
    if ((result & 1) == 0)
    {
      result = [*(a1 + 32) isFinished];
      if ((result & 1) == 0)
      {
        v3 = *(a1 + 32);

        return [v3 main];
      }
    }
  }

  return result;
}

void sub_1000A6CD8(id a1)
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v3 count:2];
  v2 = qword_100251A28;
  qword_100251A28 = v1;
}

void sub_1000A6EAC(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = v4;
    *buf = 138412546;
    v21 = v4;
    v22 = 2112;
    v23 = objc_opt_class();
    v6 = v23;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ operation instructing %@ to dismiss presented view controller.", buf, 0x16u);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000A71C4;
  v19[3] = &unk_10020EB00;
  v19[4] = *(a1 + 32);
  v7 = objc_retainBlock(v19);
  v8 = [*(*(a1 + 32) + 8) presentedViewController];
  v9 = [v8 presentingViewController];
  if (v9 == *(*(a1 + 32) + 8))
  {
    v10 = 0;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = [v8 isBeingDismissed];
    if (!v8)
    {
LABEL_10:
      if (!v8)
      {
        v15 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          v16 = v15;
          v17 = objc_opt_class();
          *buf = 138412290;
          v21 = v17;
          v18 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Not dismissing. %@ has no presentation", buf, 0xCu);
        }

        goto LABEL_16;
      }

LABEL_11:
      if (v10)
      {
        v13 = kCalUILogHandle;
        if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(*(a1 + 32) + 8);
          *buf = 138412802;
          v21 = v14;
          v22 = 2112;
          v23 = v8;
          v24 = 2112;
          v25 = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Not dismissing. %@'s presentation already being dismissed (%@ presented by %@)", buf, 0x20u);
        }
      }

LABEL_16:
      (v7[2])(v7);
      goto LABEL_17;
    }
  }

  if (v10)
  {
    goto LABEL_10;
  }

  v11 = +[DismissPresentedViewControllerOperation blacklistedDismissalClasses];
  v12 = [v11 containsObject:objc_opt_class()];

  if (v12)
  {
    goto LABEL_11;
  }

  [*(*(a1 + 32) + 8) dismissViewControllerWithoutEnqueuingWithTransition:*(*(a1 + 32) + 16) completion:v7];
LABEL_17:
}

void sub_1000A71C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {
    (*(v3 + 16))();
    v2 = *(a1 + 32);
    v4 = *(v2 + 24);
  }

  else
  {
    v4 = 0;
  }

  *(v2 + 24) = 0;

  v5 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A728C;
  block[3] = &unk_10020EB00;
  block[4] = *(a1 + 32);
  dispatch_async(v5, block);
}

void sub_1000A7D80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 model];
  v4 = [v3 selectedDate];
  v5 = [v4 calendarDateForYear];
  [v2 reinitializeAllViewsWithCalendarDate:v5];

  v6 = [*(a1 + 32) view];
  [v6 setNeedsLayout];
}

id sub_1000A7E24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = CompactYearViewController;
  return objc_msgSendSuper2(&v3, "viewWillTransitionToSize:withTransitionCoordinator:", v1, *(a1 + 48), *(a1 + 56));
}

id sub_1000A7E64(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 transitionToSizeDidEnd];
}

void sub_1000A9B34(uint64_t a1)
{
  [*(*(a1 + 32) + 112) setSplitStateOpen:1];
  v2 = [*(*(a1 + 32) + 112) view];
  [v2 setAlpha:0.0];

  [*(a1 + 32) weekDayInitialsDay];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(*(a1 + 32) + 120) dayInitialsHeaderView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [*(*(a1 + 32) + 120) animatableDateLabel];
  [v12 setAlpha:0.0];
}

id sub_1000A9C28(uint64_t a1)
{
  [*(*(a1 + 32) + 128) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 136);

  return [v2 setAlpha:1.0];
}

void sub_1000AA2C0(uint64_t a1)
{
  [*(*(a1 + 32) + 112) setSplitStateOpen:0];
  v2 = [*(*(a1 + 32) + 112) view];
  [v2 setAlpha:1.0];

  [*(a1 + 32) weekDayInitialsMonth];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(*(a1 + 32) + 120) dayInitialsHeaderView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [*(*(a1 + 32) + 120) animatableDateLabel];
  [v12 setAlpha:1.0];
}

void sub_1000AA3B4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 120) dateLabel];
  [v2 setHidden:0];

  v3 = [*(*(a1 + 32) + 120) animatableDateLabel];
  [v3 setAlpha:0.0];
}

id sub_1000AA43C(uint64_t a1)
{
  [*(*(a1 + 32) + 128) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 136);

  return [v2 setAlpha:0.0];
}

void sub_1000AA6EC()
{
  v0 = springAnimateViewAlpha();
  preferredNavigationAnimationFrameRateRange();
  [v0 setPreferredFrameRateRange:?];
}

void sub_1000AC0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000AC0D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000AC0EC(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = [v5 shownViewController];
    [v3 addObject:v4];
  }
}

void sub_1000AC2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000AC2DC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000AD01C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_1000AD058(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained viewControllers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 viewControllers];
      v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 count]);
      v14 = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ removing %@ stack view controllers.", &v14, 0x16u);
    }

    v12 = objc_loadWeakRetained((a1 + 48));
    [v12 setViewControllers:&__NSArray0__struct animated:0];

    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))();
    }
  }
}

void sub_1000AD1DC(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 57) == 1)
  {
    v2 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v3 = v2;
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v5 = objc_opt_class();
      v6 = v5;
      v7 = objc_loadWeakRetained((a1 + 48));
      v8 = [v7 presentedViewController];
      *buf = 138412546;
      v28 = v5;
      v29 = 2112;
      v30 = objc_opt_class();
      v9 = v30;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%@ dismissing presented view controller %@.", buf, 0x16u);
    }

    v10 = *(a1 + 32);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000AD4EC;
    v24[3] = &unk_100210728;
    objc_copyWeak(&v26, (a1 + 48));
    v25 = *(a1 + 40);
    [v10 dismissViewControllerWithTransition:0 completion:v24];

    objc_destroyWeak(&v26);
  }

  else
  {
    v11 = objc_loadWeakRetained((a1 + 48));
    v12 = [v11 viewControllers];
    v13 = [v12 count];

    if (v13)
    {
      v14 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
      {
        v15 = v14;
        v16 = objc_loadWeakRetained((a1 + 48));
        v17 = objc_opt_class();
        v18 = v17;
        v19 = objc_loadWeakRetained((a1 + 48));
        v20 = [v19 viewControllers];
        v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 count]);
        *buf = 138412546;
        v28 = v17;
        v29 = 2112;
        v30 = v21;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@ removing %@ stack view controllers.", buf, 0x16u);
      }

      v22 = objc_loadWeakRetained((a1 + 48));
      [v22 setViewControllers:&__NSArray0__struct animated:0];

      v23 = *(a1 + 40);
      if (v23)
      {
        (*(v23 + 16))();
      }
    }
  }
}

void sub_1000AD4EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained viewControllers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      v7 = objc_loadWeakRetained((a1 + 40));
      v8 = objc_opt_class();
      v9 = v8;
      v10 = objc_loadWeakRetained((a1 + 40));
      v11 = [v10 viewControllers];
      v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 count]);
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%@ removing %@ stack view controllers after dismissing presented vc completed.", &v15, 0x16u);
    }

    v13 = objc_loadWeakRetained((a1 + 40));
    [v13 setViewControllers:&__NSArray0__struct animated:0];

    v14 = *(a1 + 32);
    if (v14)
    {
      (*(v14 + 16))();
    }
  }
}

void sub_1000AD84C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AD8DC;
  block[3] = &unk_100210778;
  v2 = *(a1 + 32);
  v1 = v2;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1000AD8DC(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%@ executing block operation.", &v5, 0xCu);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1000AE524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000AE550(void *a1, void *a2)
{
  result = [a2 setFrame:{*(*(a1[4] + 8) + 32), *(*(a1[4] + 8) + 40), *(*(a1[4] + 8) + 48), *(*(a1[4] + 8) + 56)}];
  if (++*(*(a1[5] + 8) + 24) <= a1[6])
  {
    CGRectGetMaxX(*(*(a1[4] + 8) + 32));
    result = CalRoundToScreenScale();
    *(*(a1[4] + 8) + 32) = v4;
  }

  return result;
}

void sub_1000B149C(uint64_t a1)
{
  v2 = +[CUIKPreferences sharedPreferences];
  v12 = [v2 lastViewedOccurrenceUID];

  v3 = +[CUIKPreferences sharedPreferences];
  v4 = [v3 lastViewedOccurrenceDate];

  if (v12)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = [*(*(a1 + 32) + 288) eventStore];
    v7 = [v6 allEventsWithUniqueId:v12 occurrenceDate:v4];

    if ([v7 count] == 1 && (objc_msgSend(v7, "firstObject"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      [*(a1 + 32) showEvent:v8 animated:0 showMode:1 context:0];
    }

    else
    {
      if (!CalDraftUIEnabled())
      {
        goto LABEL_12;
      }

      v10 = [*(*(a1 + 32) + 288) eventStore];
      v9 = [v10 loadDraftOfEventWithOccurrenceID:v12];

      if (!v9)
      {
        goto LABEL_12;
      }

      v11 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:v9 model:*(*(a1 + 32) + 288) creationMethod:0 viewStart:4 eventEditViewDelegate:?];
      [*(a1 + 32) presentModalViewController:v11 withTransition:8];
    }

LABEL_12:
  }
}

void sub_1000B162C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setHorizontalSizeClass:{objc_msgSend(v2, "activeWidthSizeClass")}];
}

void sub_1000B1C30(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = [*(a1 + 40) topMainViewControllerContainer];
  v4 = [v3 currentChildViewController];
  if ((*(*(a1 + 40) + 199) & 1) == 0 && (!*(a1 + 32) || [v2 isEqualToString:CUIKCalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification] && !objc_msgSend(v4, "handlesNotifyOnExtendedLaunchCompletion") || objc_msgSend(v2, "isEqualToString:", @"MainViewControllerDidCompleteExtendedLaunchNotification")))
  {
    *(*(a1 + 40) + 199) = 1;
    if (*(*(a1 + 40) + 199) == 1)
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 removeObserver:*(a1 + 40) name:CUIKCalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification object:*(*(a1 + 40) + 288)];

      v6 = +[NSNotificationCenter defaultCenter];
      [v6 removeObserver:*(a1 + 40) name:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:0];

      [*(a1 + 40) _updateCalendarButtonAccessory];
      [*(a1 + 40) refreshErrors];
      [*(a1 + 40) _updateUserActivity];
      v7 = dispatch_time(0, 300000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B1DFC;
      block[3] = &unk_10020EB00;
      block[4] = *(a1 + 40);
      dispatch_after(v7, &_dispatch_main_q, block);
    }
  }
}

id sub_1000B1DFC(uint64_t a1)
{
  [*(a1 + 32) updateSelectedDateForJumpToTodayTip];
  v2 = *(a1 + 32);

  return [v2 updateShouldDisplayJumpToTodayTip];
}

void sub_1000B2B70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[29];
    WeakRetained[29] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

id sub_1000B2CA4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegatesMenu];

  return v2;
}

void sub_1000B4EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained topMainViewControllerContainer];
  v8 = [v7 currentChildViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [WeakRetained topMainViewControllerContainer];
    v11 = [v10 currentChildViewController];

    [v11 animateToMonthWeekSize:a2 divided:a3];
    [*(a1 + 32) updateDividedMonthBarButtonItemAnimated:1];
  }

  if (CalSolariumEnabled())
  {
    v12 = [WeakRetained _compactMonthDividedListSwitchBarButtonItem];
    v19 = v12;
    v13 = [NSArray arrayWithObjects:&v19 count:1];
  }

  else
  {
    v12 = [WeakRetained addEventBarButtonItem];
    v18[0] = v12;
    v14 = [WeakRetained searchBarButtonItem];
    v18[1] = v14;
    v15 = [WeakRetained _compactMonthDividedListSwitchBarButtonItem];
    v18[2] = v15;
    v13 = [NSArray arrayWithObjects:v18 count:3];
  }

  v16 = [WeakRetained topViewController];
  v17 = [v16 navigationItem];
  [v17 setRightBarButtonItems:v13 animated:0];
}

void sub_1000B50E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[CUIKPreferences sharedPreferences];
  (*(v1 + 16))(v1, [v2 monthViewEventScaleSize], 0);
}

void sub_1000B5668(uint64_t a1, void *a2)
{
  v3 = [a2 showSearchAnimated:1 becomeFirstResponder:0 completion:0];
  v4 = [*(a1 + 32) currentViewType];
  v7 = @"currentView";
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) currentViewTypeInt:v4]);
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  CalAnalyticsSendEvent();
}

void sub_1000B5900(uint64_t a1, void *a2)
{
  v3 = UIApp;
  v4 = a2;
  if ([v3 isRunningTest])
  {
    v5 = &stru_1002109F8;
  }

  else
  {
    v5 = 0;
  }

  [v4 showAddEventAnimated:1 completion:v5];

  v6 = [*(a1 + 32) currentViewType];
  v9[0] = @"view";
  v9[1] = @"triggerLocation";
  v10[0] = @"navigationBar";
  v10[1] = @"Button";
  v9[2] = @"currentView";
  v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) currentViewTypeInt:v6]);
  v10[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  CalAnalyticsSendEvent();
}

void sub_1000B5A38(id a1)
{
  v1 = +[NSNotificationCenter defaultCenter];
  [v1 postNotificationName:@"AddEventButton_AnimationCompleteNotification" object:0];
}

void sub_1000B5AA4(id a1, RootNavigationController *a2)
{
  v5 = a2;
  v2 = [(RootNavigationController *)v5 model];
  v3 = [v2 showDayAsList];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  [(RootNavigationController *)v5 toggleDayViewMode:v4];
}

void sub_1000B5E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B5E38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v5 = kCalUILogHandle;
    if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v9 = *(a1 + 32);
    v11 = 138543362;
    v12 = v9;
    v8 = "Suppressing %{public}@ because RootNavigationController has been deallocated.";
    goto LABEL_8;
  }

  if (([WeakRetained _isCurrentlyDraggingEvent] & 1) == 0)
  {
    v4 = [v3 presentedViewController];

    if (!v4)
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_11;
    }
  }

  v5 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v11 = 138543362;
    v12 = v7;
    v8 = "%{public}@ suppressed due to active event gestures, or presented view controller.";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v8, &v11, 0xCu);
  }

LABEL_9:
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v6);
  }

LABEL_11:
}

void sub_1000B65CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3[192] == 1 && (v3[193] & 1) == 0)
  {
    +[EKUIAccountErrorsAnalyticsTracker trackRootUIInteractedWithError];
    v4[193] = 1;
  }

  [v4 showCalendarsAnimated:1 completion:0];
  v5 = [*(a1 + 32) currentViewType];
  v8 = @"currentView";
  v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) currentViewTypeInt:v5]);
  v9 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  CalAnalyticsSendEvent();
}

void sub_1000B68AC(uint64_t a1, void *a2)
{
  v3 = [a2 showInboxAnimated:1 completion:0];
  v4 = [*(a1 + 32) currentViewType];
  v7 = @"currentView";
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) currentViewTypeInt:v4]);
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  CalAnalyticsSendEvent();
}

void sub_1000B6D14(uint64_t a1)
{
  v5 = [*(a1 + 32) topMainViewControllerContainer];
  v2 = [v5 currentChildViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [v5 invalidateManagedNavigationController];
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 48));
  }
}

BOOL sub_1000B6E8C(id a1, UIViewController *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t sub_1000B7258(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 184));
  }

  return result;
}

void sub_1000B7738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id location)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B77AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained model];
    [v2 updateSourceForSelectedIdentity:0 selectedCalendars:0];

    WeakRetained = v3;
  }
}

void sub_1000B7810(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained model];
    [v3 updateSourceForSelectedIdentity:*(a1 + 32) selectedCalendars:0];

    WeakRetained = v4;
  }
}

void sub_1000B7B5C(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) _popToViewControllerSatisfying:&stru_100210B10];
    if (v3)
    {
      v4 = [AddEventViewController alloc];
      v5 = [*(a1 + 32) model];
      v6 = [(AddEventViewController *)v4 initWithModel:v5 eventTitle:*(a1 + 40) startDate:*(a1 + 48) endDate:*(a1 + 56) location:*(a1 + 64)];

      [(AddEventViewController *)v6 setPresentedOverWholeApp:1];
      [(AddEventViewController *)v6 setAllDay:*(a1 + 104)];
      [(AddEventViewController *)v6 setExactEventStartDate:*(a1 + 72)];
      [(AddEventViewController *)v6 setSuggestionKey:*(a1 + 80)];
      [(AddEventViewController *)v6 setDelegate:*(a1 + 32)];
      [(AddEventViewController *)v6 setEventCreationMethod:2];
      v7 = [*(a1 + 32) currentViewType];
      if (v7 > 4)
      {
        v8 = 4;
      }

      else
      {
        v8 = qword_1001F8438[v7];
      }

      [(AddEventViewController *)v6 setCalendarItemCreationViewStart:v8];
      v10 = [*(a1 + 32) topViewController];
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        v12 = [*(a1 + 32) topViewController];
        -[AddEventViewController setShowEventWhenAdded:](v6, "setShowEventWhenAdded:", [v12 showEventDetailsWhenNewEventAdded]);
      }

      v13 = *(a1 + 88);
      v14 = CalSystemSolariumEnabled();
      v15 = *(a1 + 32);
      if (!v14 || v13)
      {
        v16 = *(a1 + 88);
        v17 = v16;
        if (!v16)
        {
          v17 = [*(a1 + 32) addEventBarButtonItem];
        }

        EKUIContainedControllerIdealWidth();
        v19 = v18;
        EKUIContainedControllerIdealWidth();
        v21 = v20;
        EKUIGoldenRatioPhi();
        [v15 _presentAdaptiveModalPopoverViewController:v6 relativeToBarButtonItem:v17 permittedArrowDirections:1 contentSize:*(a1 + 105) animated:*(a1 + 96) completion:{v19, v21 * v22}];
        if (!v16)
        {
        }
      }

      else
      {
        [*(a1 + 32) presentAdaptiveModalViewController:v6 animated:1 completion:*(a1 + 96)];
      }
    }

    else
    {
      v9 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "The current top view controller does not allow the add event view to be displayed above it.", v23, 2u);
      }
    }
  }
}

BOOL sub_1000B7D94(id a1, UIViewController *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1000B7F10(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 presentingViewController];
  v7 = [v6 presentedViewController];

  if (v7)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B8014;
    v11[3] = &unk_100210B60;
    v8 = v5;
    v9 = *(a1 + 40);
    v11[4] = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    [v6 dismissViewControllerAnimated:1 completion:v11];
    v10 = [*(a1 + 32) todayBarButtonItem];
    [v10 setEnabled:1];

    [*(a1 + 32) _updateCalendarsButtonTitle];
  }
}

uint64_t sub_1000B8014(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) topMainViewControllerContainer];
    (*(v2 + 16))(v2, v3);
  }

  v4 = [*(a1 + 32) topMainViewControllerContainer];
  v5 = [v4 shouldInvalidateManagedNavigationControllerOnPresentationDismissal];

  if (v5)
  {
    v6 = [*(a1 + 32) topMainViewControllerContainer];
    [v6 invalidateManagedNavigationController];
  }

  result = *(a1 + 48);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void sub_1000B87C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

void sub_1000B89E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id *sub_1000B8A00(id *result, int a2)
{
  if (a2)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_1000B8A84;
    v2[3] = &unk_100210BB0;
    return [result[4] _popToViewControllerSatisfying:v2];
  }

  return result;
}

uint64_t sub_1000B8A84(uint64_t a1, void *a2)
{
  v3 = [a2 navigationItem];
  v4 = [v3 rightBarButtonItems];
  v5 = [*(a1 + 32) searchBarButtonItem];
  *(*(*(a1 + 40) + 8) + 24) = [v4 containsObject:v5];

  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_1000B90C0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B919C;
  block[3] = &unk_100210C48;
  v10 = *(a1 + 64);
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = v3;
  *&v6 = v2;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000B919C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) becomeFirstResponder];
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
  }

  v3 = *(a1 + 48);

  return [v3 setNeedsUpdateOfSupportedInterfaceOrientations];
}

void sub_1000B98C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) topMainViewControllerContainer];
  (*(v1 + 16))(v1, v2);
}

id sub_1000B992C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) topMainViewControllerContainer];
  (*(v2 + 16))(v2, v3);

  v4 = *(a1 + 32);

  return [v4 attemptDisplayReviewPrompt];
}

void sub_1000BAC8C(uint64_t a1, void *a2)
{
  v3 = [a2 isCancelled];
  v4 = *(a1 + 32);
  if (v3)
  {
    v7 = [*(a1 + 32) disappearingViewController];
    [v4 _updatePaletteStateWithViewController:v7];
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);

    [v6 _updatePaletteStateWithViewController:v5];
  }
}

void sub_1000BB564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000BB57C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000BC5CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 topViewController];
  [v2 _updatePaletteStateWithViewController:v3];

  [*(a1 + 32) _updateLeftFixedSpaceBarButtonItemWidthWithViewController:*(a1 + 40) targetWindowSize:{*(a1 + 48), *(a1 + 56)}];
  v4 = [*(a1 + 32) navigationBar];
  [v4 setNeedsLayout];

  v5 = [*(a1 + 32) viewSwitcherLayoutHandler];

  if (v5)
  {
    v6 = [*(a1 + 32) viewSwitcherLayoutHandler];
    [v6 rootNavigationControllerRequestsLayoutOfViewSwitcher:*(a1 + 32)];
  }

  v7 = [*(a1 + 32) view];
  [v7 setNeedsLayout];
}

id sub_1000BC6A0(uint64_t a1)
{
  [*(a1 + 32) _invalidateNavBarDateStringCache];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 40) updateNavigationBarDisplayedDateString];
  }

  v2 = *(a1 + 32);

  return [v2 updateDeviceOrientationForJumpToTodayTip];
}

void sub_1000BC990(uint64_t a1, void *a2)
{
  v3 = a2;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [*(a1 + 32) topViewController];
  v5 = [v4 view];
  v6 = [v5 layer];
  v7 = [v6 sublayers];

  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [objc_opt_class() recursiveAnimationRemove:*(*(&v28 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [*(a1 + 32) navigationBar];
  v13 = [v12 superview];
  v14 = [v13 layer];
  v15 = [v14 sublayers];

  v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(a1 + 32) recursiveAnimationRemoveForSmallLayers:*(*(&v24 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  v20 = *(*(*(a1 + 40) + 8) + 40);
  v21 = [v3 containerView];
  v22 = v21;
  if (v21)
  {
    [v21 transform];
  }

  else
  {
    memset(v23, 0, sizeof(v23));
  }

  [v20 setTransform:v23];
}

BOOL sub_1000BCFDC(id a1, UIViewController *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1000BDA54(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = v4;
    *buf = 138412546;
    v19 = v4;
    v20 = 2112;
    v21 = objc_opt_class();
    v6 = v21;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Completion handler for: [%@ showViewController:%@ sender:::]", buf, 0x16u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000BDC48;
  v14[3] = &unk_10020F2B8;
  v13 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v13;
  *(&v11 + 1) = v7;
  v15 = v11;
  v16 = v10;
  v17 = *(a1 + 72);
  v12 = objc_retainBlock(v14);
  if (+[NSThread isMainThread])
  {
    (v12[2])(v12);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v12);
  }
}

void sub_1000BDC48(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  v6 = *(a1 + 40);
  if ([*(a1 + 48) prefersForcedModalShowViewController])
  {
    v3 = *(a1 + 48);

    v4 = v3;
  }

  else
  {
    v4 = v6;
  }

  v7 = v4;
  [*(a1 + 32) _replayJournal:*(a1 + 56) withRootVC:v4 topMainVC:*(a1 + 64)];
  v5 = [*(a1 + 32) window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

void sub_1000BDD00(uint64_t a1)
{
  if ([*(a1 + 32) displayType] == 1)
  {
    v2 = [*(a1 + 40) presentingViewController];
    if (v2 || (*(a1 + 72) & 1) != 0)
    {
      v3 = 1;
    }

    else
    {
      v3 = [*(a1 + 48) _viewControllerRequiresSystemPresentation:*(a1 + 56)];
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 73) == 1)
  {
    if (*(a1 + 74) == 1)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = *(a1 + 40);
      if (isKindOfClass)
      {
        v6 = v5;
      }

      else
      {
        v6 = [v5 navigationController];
      }

      v23 = v6;
      [v6 pushViewController:*(a1 + 56) animated:0];
    }

    else
    {
      if ([*(a1 + 56) modalPresentationStyle] == 7)
      {
        v14 = [*(a1 + 40) view];
        v15 = [*(a1 + 56) popoverPresentationController];
        [v15 setSourceView:v14];
      }

      v16 = *(a1 + 40);
      v17 = *(a1 + 56);
      v18 = *(a1 + 64);

      [v16 presentViewController:v17 animated:0 completion:v18];
    }
  }

  else
  {
    v7 = v3 | ~objc_opt_respondsToSelector();
    v8 = kCalUILogHandle;
    v9 = os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = v8;
        v11 = objc_opt_class();
        v12 = v11;
        *buf = 138412546;
        v25 = v11;
        v26 = 2112;
        v27 = objc_opt_class();
        v13 = v27;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Calling [%@ presentViewController:%@]", buf, 0x16u);
      }

      [*(a1 + 40) presentViewController:*(a1 + 56) animated:0 completion:*(a1 + 64)];
    }

    else
    {
      if (v9)
      {
        v19 = v8;
        v20 = objc_opt_class();
        v21 = v20;
        *buf = 138412546;
        v25 = v20;
        v26 = 2112;
        v27 = objc_opt_class();
        v22 = v27;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling [%@ showViewController:%@ sender:::]", buf, 0x16u);
      }

      [*(a1 + 40) showViewController:*(a1 + 56) sender:*(a1 + 48) animated:0 completion:*(a1 + 64)];
    }
  }
}

void sub_1000BE828(uint64_t a1)
{
  [*(a1 + 32) _setNavigationStackOfMainViewControllersForTraitsTransitionFromTraitCollection:*(a1 + 40) toNewTraitCollection:*(a1 + 48) withPreTransitionViewType:*(a1 + 64) withPreferredPostTransitionViewType:*(a1 + 72)];
  v6 = [*(a1 + 32) topMainViewControllerContainer];
  [v6 setupForViewAppearance];
  v2 = [v6 currentChildViewController];
  if (objc_opt_respondsToSelector())
  {
    [v2 setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:{objc_msgSend(*(a1 + 56), "isEmpty") ^ 1}];
  }

  v3 = [v2 viewControllerToShowFrom];
  v4 = [v3 isEqual:*(a1 + 32)];

  if ((v4 & 1) == 0)
  {
    v5 = [v2 managedNavigationController];
  }

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [*(a1 + 32) _replayJournal:*(a1 + 56) withRootVC:v2 topMainVC:v2];
  +[CATransaction commit];
}

void sub_1000BE930(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 32))
  {
    NSClassFromString(@"_UIDatePickerWheelsTimeLabel");
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [*(a1 + 32) becomeFirstResponder];
    }
  }

  if (+[ApplicationTester testingSessionStarted])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"RootNavigationController_TransitionCompletedNotification" object:*(a1 + 40)];
  }

  [*(a1 + 40) _adjustNavBarVisibilityAfterTraitCollectionChange];
}

void sub_1000BE9E0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"RootNavigationController_TransitionStartedNotification" object:*(a1 + 32)];
}

void sub_1000BF558(uint64_t a1)
{
  v2 = [*(a1 + 32) topMainViewControllerContainer];
  [v2 selectDate:*(a1 + 40) andTime:*(a1 + 48) animated:*(a1 + 49)];
}

void sub_1000BF7D4(uint64_t a1, int a2)
{
  if (a2)
  {
    v9 = [*(a1 + 32) model];
    v3 = [*(a1 + 40) calendar];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectID];
      [v9 ensureCalendarVisibleWithId:v5];
    }

    v6 = [*(a1 + 40) startCalendarDate];
    [v9 setSelectedDate:v6];
    v7 = [*(a1 + 32) _popToViewControllerSatisfying:&stru_100210DA0];
    v8 = v7;
    if (v7)
    {
      [v7 showEvent:*(a1 + 40) animated:*(a1 + 64) showMode:*(a1 + 56) context:*(a1 + 48)];
    }
  }
}

BOOL sub_1000BF8BC(id a1, UIViewController *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_1000BF9A0(uint64_t a1)
{
  v2 = +[CalContactsProvider defaultProvider];
  v3 = *(a1 + 32);
  v18[0] = CNContactGivenNameKey;
  v18[1] = CNContactFamilyNameKey;
  v4 = [NSArray arrayWithObjects:v18 count:2];
  v5 = [v2 unifiedContactWithIdentifier:v3 keysToFetch:v4];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [v5 givenName];
    [v6 setGivenName:v7];

    v8 = [v5 familyName];
    [v6 setFamilyName:v8];

    v9 = [CalPersonNameComponentsFormatter stringFromPersonNameComponents:v6];
    v10 = [*(a1 + 40) topViewController];
    v11 = [v10 navigationItem];
    v12 = [v11 rightBarButtonItems];
    v13 = [*(a1 + 40) searchBarButtonItem];
    v14 = [v12 containsObject:v13];

    if ([v9 length] && v14)
    {
      v15 = [*(a1 + 40) presentedViewController];

      if (v15)
      {
        [*(a1 + 40) dismissViewControllerAnimated:0 completion:0];
      }

      v16 = [*(a1 + 40) showSearchAnimated:1 becomeFirstResponder:0 completion:0];
      v17 = [v16 searchBar];
      [v17 setText:v9];
    }
  }
}

void sub_1000C022C(id a1)
{
  v1 = objc_opt_new();
  [v1 setAlignment:0];
  v2 = objc_opt_new();
  [v2 setAlignment:2];
  v3 = [UIFont systemFontOfSize:26.0 weight:UIFontWeightHeavy];
  v11[0] = NSFontAttributeName;
  v11[1] = NSParagraphStyleAttributeName;
  v12[0] = v3;
  v12[1] = v1;
  v4 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v5 = qword_100251A58;
  qword_100251A58 = v4;

  v9[0] = NSFontAttributeName;
  v9[1] = NSParagraphStyleAttributeName;
  v10[0] = v3;
  v10[1] = v2;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = qword_100251A60;
  qword_100251A60 = v6;

  v8 = qword_100251A68;
  qword_100251A68 = v3;
}

void sub_1000C163C(uint64_t a1)
{
  v2 = [*(a1 + 32) topMainViewControllerContainer];
  v6 = [v2 bestDateForNewEvent];

  v3 = [*(a1 + 32) window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  v4 = [*(a1 + 32) pushCalendarViewControllerWithViewType:*(a1 + 40) andDate:v6];
  [v4 viewSwitcherSwitchedToViewWithDate:v6];
  v5 = [*(a1 + 32) window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

void sub_1000C1844(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = a1[6];
  v5 = a2;
  v6 = [v3 _switcherFontOfSize:0 isSemibold:v4];
  v11 = NSFontAttributeName;
  v12 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v8 = [[NSAttributedString alloc] initWithString:v5 attributes:v7];

  [v8 boundingRectWithSize:0 options:0 context:{1.79769313e308, 1.79769313e308}];
  v10 = *(*(a1 + 5) + 8);
  if (v9 > *(v10 + 24))
  {
    *(v10 + 24) = v9;
  }
}

void sub_1000C1A20(uint64_t a1)
{
  v2 = [*(a1 + 32) topMainViewControllerContainer];
  v6 = [v2 bestDateForNewEvent];

  v3 = [*(a1 + 32) window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  v4 = [*(a1 + 32) pushCalendarViewControllerWithViewType:*(a1 + 40) andDate:v6];
  [v4 viewSwitcherSwitchedToViewWithDate:v6];
  v5 = [*(a1 + 32) window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

void sub_1000C218C(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.mobilecal.notificationCountUpdateQ", v3);
  v2 = qword_100251A78;
  qword_100251A78 = v1;
}

void sub_1000C21F0(uint64_t a1)
{
  v2 = [*(a1 + 32) eventNotificationsForCurrentIdentityCount];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C227C;
  v3[3] = &unk_10020EE00;
  v3[4] = *(a1 + 40);
  v3[5] = v2;
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_1000C227C(uint64_t a1)
{
  [*(a1 + 32) setNumberOfNotifications:*(a1 + 40)];
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Broadcasting darwin notification to update badge count", v5, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, _EKNotificationCountChangedExternallyNotification, 0, 0, 1u);
  if ([*(a1 + 32) showingOverriddenToolbarItems])
  {
    [*(a1 + 32) _updateInboxBarButtonItem];
  }

  if ([*(a1 + 32) activeWidthSizeClass] == 2 && (CalSolariumEnabled() & 1) == 0)
  {
    v4 = [*(a1 + 32) splitViewDelegate];
    [v4 updateInboxBarButtonItem];
  }
}

void sub_1000C2C64(uint64_t a1)
{
  v2 = [*(a1 + 32) showInboxAnimated:0];
  [v2 showEvent:*(a1 + 40) animated:0];
}

void sub_1000C2CC0(uint64_t a1)
{
  v2 = [*(a1 + 32) eventStore];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000C2D50;
  v3[3] = &unk_10020F460;
  v3[4] = *(a1 + 40);
  [v2 familyCalendarsWithCompletion:v3];
}

void sub_1000C2D50(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count] == 1)
  {
    v3 = [v4 firstObject];
    [*(a1 + 32) showCalendar:v3];
  }
}

void sub_1000C31DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C328C(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000C3328;
    v3[3] = &unk_10020F438;
    v3[4] = v2;
    v4 = *(a1 + 40);
    [v2 showCalendarsAnimated:1 completion:v3];
  }
}

void sub_1000C45F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C4610(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [WeakRetained topViewController];
    v4 = [v3 navigationItem];
    v5 = [v4 rightBarButtonItems];
    v6 = [v5 containsObject:v9[2]];

    v7 = [v9 presentedViewController];
    if (v7 || !v6)
    {
    }

    else
    {
      WeakRetained = [v9[2] isEnabled];
      v2 = v9;
      if (!WeakRetained)
      {
        goto LABEL_8;
      }

      WeakRetained = [v9 showAddEventAnimated:1 completion:0];
    }

    v2 = v9;
  }

LABEL_8:

  return _objc_release_x1(WeakRetained, v2);
}

void sub_1000C47C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C47E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v2 = [WeakRetained topViewController];
    v3 = [v2 navigationItem];
    v4 = [v3 rightBarButtonItems];
    v5 = [v4 containsObject:v8[3]];

    v6 = [v8 presentedViewController];

    WeakRetained = v8;
    if (!v6)
    {
      if (v5)
      {
        v7 = [v8 showSearchAnimated:1 becomeFirstResponder:1 completion:0];
        WeakRetained = v8;
      }
    }
  }
}

void sub_1000C4B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C4B94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained modifiedStartDate];
  [v5 setStartDate:v7];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 modifiedEndDate];
  [v5 setEndDateUnadjustedForLegacyClients:v9];

  v10 = [*(a1 + 32) EKUI_editor];
  [v10 saveEvent:v5 span:a3 error:0];
}

void sub_1000C5BE4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) subtitleLabel];
  [v3 setText:v2];

  v4 = [*(a1 + 32) subtitleLabel];
  [v4 setHidden:0];

  v5 = [*(a1 + 32) titleView];
  [v5 layoutIfNeeded];
}

void sub_1000C5DAC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) subtitleLabel];
  [v3 setText:v2];

  v4 = [*(a1 + 40) length] == 0;
  v5 = [*(a1 + 32) subtitleLabel];
  [v5 setHidden:v4];

  v6 = [*(a1 + 32) titleView];
  [v6 layoutIfNeeded];
}

uint64_t sub_1000C6730()
{
  if (!qword_100251A98)
  {
    qword_100251A98 = _sl_dlopen();
  }

  return qword_100251A98;
}

uint64_t sub_1000C6800()
{
  result = _sl_dlopen();
  qword_100251A98 = result;
  return result;
}

Class sub_1000C6874(uint64_t a1)
{
  v3 = 0;
  if (!sub_1000C6730())
  {
    sub_100170600(&v3);
  }

  result = objc_getClass("CalendarDebugReportProblemViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100170584();
  }

  qword_100251AA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1000C6F68(uint64_t a1)
{
  [*(a1 + 32) setAnimatingViewTransition:0];
  [*(a1 + 40) setAnimatingViewTransition:0];
  v2 = [*(a1 + 48) transitionView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 56);

  return [v3 completeTransition:1];
}

id sub_1000C6FD0(uint64_t a1)
{
  [*(a1 + 32) setAnimatingViewTransition:0];
  [*(a1 + 40) setAnimatingViewTransition:0];
  v2 = [*(a1 + 48) transitionView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 56);

  return [v3 completeTransition:1];
}

void sub_1000C7ED4(id a1)
{
  v1 = objc_alloc_init(UILabel);
  v2 = qword_100251AA8;
  qword_100251AA8 = v1;

  v3 = objc_alloc_init(UILabel);
  v4 = qword_100251AB0;
  qword_100251AB0 = v3;

  v5 = CUIKLocalizedStringForInteger();
  [qword_100251AA8 setText:v5];

  v6 = CUIKLocalizedStringForInteger();
  [qword_100251AB0 setText:v6];
}

void sub_1000CA4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CA4D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = WeakRetained[14];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          [v8 updateDayNumber];
          [v8 updateOverlay];
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    [v2[17] hideOverlayAndNumber:1];
    if ([v2 compressedVerticalMode])
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor systemBackgroundColor];
    }
    v9 = ;
    [v2[8] setBackgroundColor:{v9, v12}];
    v10 = [v2[17] attachedTodayCircle];
    [v10 setBackgroundColor:v9];

    [v2 _forceReloadImagesForDayTypeBadges];
    v11 = [v2[20] layer];
    [v11 setNeedsDisplay];
  }
}

void sub_1000CA760(id a1)
{
  v1 = +[UIColor secondaryLabelColor];
  v2 = qword_100251AC0;
  qword_100251AC0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000CAF7C(id a1)
{
  v1 = objc_opt_new();
  v2 = __cachedCalculatedValues;
  __cachedCalculatedValues = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000CC984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_1000CCA04(uint64_t a1, void *a2, uint64_t a3)
{
  v85 = a2;
  [v85 frame];
  Width = CGRectGetWidth(v87);
  [v85 frame];
  v7 = v6;
  v8 = [v85 layer];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  EKUIScaleFactor();
  v18 = 1.0 / v17;
  v88.origin.x = v10;
  v88.origin.y = v12;
  v88.size.width = v14;
  v88.size.height = v16;
  v83 = v7;
  v84 = Width;
  v19 = v7 + (Width - CGRectGetWidth(v88)) * 0.5;
  v20 = *(a1 + 80);
  CalRoundRectToScreenScale();
  [v8 setFrame:?];
  v21 = [v85 overlay];

  if (v21)
  {
    v22 = [v85 overlay];
    [v22 frame];
    v81 = v18;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v89.origin.x = v19;
    v89.origin.y = v20;
    v89.size.width = v14;
    v89.size.height = v16;
    CGRectGetMaxY(v89);
    CalRoundToScreenScale();
    v30 = v29;
    v90.origin.x = v19;
    v90.origin.y = v20;
    v90.size.width = v14;
    v90.size.height = v16;
    CGRectGetMidX(v90);
    v91.origin.x = v24;
    v18 = v81;
    v91.origin.y = v30;
    v91.size.width = v26;
    v91.size.height = v28;
    CGRectGetWidth(v91);
    CalRoundToScreenScale();
    v32 = v31;
    v33 = [v85 overlay];
    [v33 setFrame:{v32, v30, v26, v28}];
  }

  v34 = [v85 attachedTodayCircle];

  if (v34)
  {
    v35 = [v85 attachedTodayCircle];
    [v35 setCompressed:{objc_msgSend(*(a1 + 32), "compressedVerticalMode")}];
    [v35 sizeToFit];
    v36 = objc_opt_class();
    [v35 frame];
    v80 = v38;
    v82 = v37;
    [v8 frame];
    v79 = v39;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    [v85 frame];
    v46 = v18;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = [v85 overlay];
    v78 = v48;
    v18 = v46;
    [v36 frameForDayCircleWithSize:v55 != 0 dayNumberLayerFrame:objc_msgSend(*(a1 + 32) dayNumberFrame:"compressedVerticalMode") withOverlay:objc_msgSend(*(a1 + 32) compressed:"containsFirstDayOfMonth") containsFirstDayOfMonth:{v82, v80, v79, v41, v43, v45, v78, v50, v52, v54}];
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;

    [v35 setFrame:{v57, v59, v61, v63}];
  }

  v64 = [v85 calendarDate];

  if (v64)
  {
    v65 = *(*(a1 + 40) + 8);
    if ((*(v65 + 24) & 0x8000000000000000) != 0)
    {
      *(v65 + 24) = a3;
    }

    *(*(*(a1 + 48) + 8) + 24) = a3;
    v66 = *(*(a1 + 56) + 8);
    if (v83 < *(v66 + 24))
    {
      *(v66 + 24) = v83;
    }

    v67 = *(*(a1 + 64) + 8);
    if (*(v67 + 24) == 0.0)
    {
      *(v67 + 24) = v84;
    }

    *(*(*(a1 + 72) + 8) + 24) = v84 + *(*(*(a1 + 72) + 8) + 24);
  }

  [*(a1 + 32) _layoutDayTypeBadgeForDayNumber:v85 yOffset:*(a1 + 88)];
  v68 = [*(*(a1 + 32) + 128) objectAtIndex:a3];
  CalRoundToScreenScale();
  v70 = v69;
  CalRoundToScreenScale();
  v72 = v18 + v71;
  [*(a1 + 32) frame];
  v74 = v73 - *(a1 + 96);
  +[CompactMonthWeekView verticalEventPadding:](CompactMonthWeekView, "verticalEventPadding:", [*(a1 + 32) compressedVerticalMode]);
  [v68 setFrame:{v72, v74 - v75, v70, 6.0}];
  [v68 setNeedsDisplay];
  v76 = *(a1 + 32);
  if ((*(v76 + 255) & 1) == 0)
  {
    v77 = 1.0;
    if (*(v76 + 120))
    {
      v77 = 0.0;
    }

    [v68 setAlpha:v77];
  }
}

void sub_1000CD684(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) objectAtIndex:?];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [v2 processedEventData];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 eventIdentifier];
        if (v9)
        {
          v10 = v9;
          v11 = *(a1 + 40);
          v12 = [v8 eventIdentifier];
          v13 = [v11 objectForKeyedSubscript:v12];

          if (!v13)
          {
            v14 = *(a1 + 40);
            v15 = [v8 eventIdentifier];
            [v14 setObject:v2 forKeyedSubscript:v15];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }
}

MonthViewOccurrence *sub_1000CD814(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MonthViewOccurrence alloc];
  v5 = [v3 occurrence];
  v6 = [v3 dayRange];
  v8 = -[MonthViewOccurrence initWithFrame:occurrence:forDayRange:isCompact:isLargeCompact:isMultiDay:](v4, "initWithFrame:occurrence:forDayRange:isCompact:isLargeCompact:isMultiDay:", v5, v6, v7, 1, [objc_opt_class() isLargeCompact], objc_msgSend(v3, "isMultiDay"), CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height);

  v9 = *(a1 + 32);
  [v3 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v9 convertRect:*(*(a1 + 32) + 160) fromView:{v11, v13, v15, v17}];
  [(MonthViewOccurrence *)v8 setFrame:?];
  [*(a1 + 32) addSubview:v8];

  return v8;
}

void sub_1000CD958(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a3;
  v4 = [v20 occurrence];
  v5 = [v4 eventOccurrenceID];

  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [*(*(a1 + 40) + 176) objectForKeyedSubscript:v5];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
    }

    else
    {
      v8 = objc_opt_new();
      [*(*(a1 + 40) + 176) setObject:v8 forKeyedSubscript:v5];
      v9 = (*(*(a1 + 48) + 16))();
      v10 = [v6 dataForEventID:v5];
      [v10 setAnimating:1];
      [v8 setView:v9];
      [v8 setSummary:v6];
      [v8 setEventID:v5];
      [v8 setOccurrenceView:v20];
      [v8 setSummaryData:v10];
    }

    if (*(a1 + 57) == 1)
    {
      v11 = *(a1 + 40);
      [v6 frameForEventID:v5];
      [v11 convertRect:v6 fromView:?];
      [v9 setFrame:?];
    }

    else
    {
      [v9 setDrawBackgroundWithLayer:1];
      v12 = [v8 occurrenceView];
      v13 = [v12 occurrence];
      if ([v13 isIntegrationEvent])
      {
        v14 = CUIKIntegrationEventBackgroundColor();
      }

      else
      {
        v19 = [v8 occurrenceView];
        v15 = [v19 occurrence];
        v16 = [v15 calendar];
        v14 = [v16 displayColor];
      }

      v17 = [*(a1 + 40) traitCollection];
      [v17 userInterfaceStyle];
      v18 = CUIKSummaryColorForColor();

      [v9 updateBackgroundWithEdgeInsets:v18 color:objc_msgSend(v6 alpha:"backGroundCornerMaskforEventID:" cornerMask:{v5), UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 1.0}];
    }

    [*(a1 + 32) removeObjectForKey:v5];
  }

  else
  {
    if (*(a1 + 56) != 1)
    {
      goto LABEL_15;
    }

    v8 = objc_opt_new();
    v9 = (*(*(a1 + 48) + 16))();
    [v8 setView:v9];
    [*(*(a1 + 40) + 184) addObject:v8];
  }

LABEL_15:
}

void sub_1000CDC58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 40);
  v18 = v4;
  v6 = [v4 view];
  v7 = v6;
  if (v5 == 1)
  {
    [v6 setDrawBackgroundWithLayer:1];

    v8 = [v18 occurrenceView];
    v9 = [v8 occurrence];
    if ([v9 isIntegrationEvent])
    {
      v10 = CUIKIntegrationEventBackgroundColor();
    }

    else
    {
      v11 = [v18 occurrenceView];
      v12 = [v11 occurrence];
      v13 = [v12 calendar];
      v10 = [v13 displayColor];
    }

    v14 = [*(a1 + 32) traitCollection];
    [v14 userInterfaceStyle];
    v7 = CUIKSummaryColorForColor();

    v15 = [v18 view];
    v16 = [v18 summary];
    v17 = [v18 eventID];
    [v15 updateBackgroundWithEdgeInsets:v7 color:objc_msgSend(v16 alpha:"backGroundCornerMaskforEventID:" cornerMask:{v17), UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 1.0}];
  }

  else
  {
    [v6 setDrawBackgroundWithLayer:0];
  }
}

id sub_1000CDE00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000CDEF8;
  v9[3] = &unk_100211050;
  v9[4] = v2;
  v10 = *(a1 + 40);
  [v3 enumerateObjectsUsingBlock:v9];
  v4 = *(a1 + 32);
  v5 = *(v4 + 176);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CDF68;
  v7[3] = &unk_100211028;
  v8 = *(a1 + 40);
  v7[4] = v4;
  return [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_1000CDEF8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) objectAtIndex:?];
  v4 = v2;
  v3 = 0.0;
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  [v2 setAlpha:v3];
}

void sub_1000CDF68(uint64_t a1, void *a2, void *a3)
{
  v31 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 40) == 1)
  {
    v7 = [v5 summary];
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v6 eventID];
      [v7 frameForEventID:v9];
      [v8 convertRect:v7 fromView:?];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [v6 view];
      [v18 setFrame:{v11, v13, v15, v17}];
    }

    else
    {
      v9 = [v6 view];
      [v9 setAlpha:0.0];
    }
  }

  else
  {
    v19 = [v5 occurrenceView];

    if (v19)
    {
      v20 = [v6 occurrenceView];
      [v20 setHidden:1];

      v21 = *(a1 + 32);
      v22 = [v6 occurrenceView];
      [v22 frame];
      [v21 convertRect:*(*(a1 + 32) + 160) fromView:?];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v7 = [v6 view];
      [v7 setFrame:{v24, v26, v28, v30}];
    }

    else
    {
      v7 = [v6 view];
      [v7 setAlpha:0.0];
    }
  }
}

id sub_1000CE12C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CE1CC;
  v5[3] = &unk_100211078;
  v5[4] = v2;
  [v3 enumerateObjectsUsingBlock:v5];
  return [*(*(a1 + 32) + 160) setAlpha:0.0];
}

void sub_1000CE1CC(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 occurrenceView];
  v4 = [v14 occurrenceView];
  [v4 setHidden:1];

  if (v3)
  {
    v5 = *(a1 + 32);
    [v3 frame];
    [v5 convertRect:*(*(a1 + 32) + 160) fromView:?];
    v8 = v7 + v6 * 0.5 + -3.0;
    v11 = v9 - v10;
    v12 = [v14 view];
    [v12 setFrame:{v8, v11, 6.0, 6.0}];
  }

  v13 = [v14 view];
  [v13 setAlpha:0.0];
}

id sub_1000CE2D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 184);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CE370;
  v5[3] = &unk_100211078;
  v5[4] = v2;
  [v3 enumerateObjectsUsingBlock:v5];
  return [*(*(a1 + 32) + 160) setAlpha:1.0];
}

void sub_1000CE370(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 occurrenceView];
  v4 = *(a1 + 32);
  [v3 frame];
  [v4 convertRect:*(*(a1 + 32) + 160) fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v15 view];
  [v13 setFrame:{v6, v8, v10, v12}];

  if ((*(*(a1 + 32) + 216) & 1) == 0)
  {
    v14 = [v15 view];
    [v14 setAlpha:1.0];
  }
}

id sub_1000CE464(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 184);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000CE4E0;
  v4[3] = &unk_100211078;
  v4[4] = v1;
  return [v2 enumerateObjectsUsingBlock:v4];
}

void sub_1000CE4E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = [v3 occurrenceView];
  v4 = *(a1 + 32);
  [v17 frame];
  [v4 convertRect:*(*(a1 + 32) + 160) fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v17 backgroundInsets];
  v12 = v11;
  [v17 backgroundInsets];
  v14 = v12 + v13 + 6.0;
  v15 = [v3 view];
  [v15 setFrame:{v6 + v10 * 0.5 - v14 * 0.5, v8, v14, v14}];

  v16 = [v3 view];

  [v16 setAlpha:1.0];
}

void *sub_1000CE5F4(void *result)
{
  v3 = result[4];
  if (result[5] == *(v3 + 208))
  {
    v6[7] = v1;
    v6[8] = v2;
    v4 = result;
    v5 = *(v3 + 184);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000CE6AC;
    v6[3] = &unk_100211078;
    v6[4] = v3;
    [v5 enumerateObjectsUsingBlock:v6];
    return [*(v4[4] + 160) setAlpha:1.0];
  }

  return result;
}

void sub_1000CE6AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = [v3 occurrenceView];
  v4 = *(a1 + 32);
  [v14 frame];
  [v4 convertRect:*(*(a1 + 32) + 160) fromView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v3 view];

  [v13 setFrame:{v6, v8, v10, v12}];
}

void *sub_1000CE774(void *a1)
{
  v2 = a1[6];
  result = a1[4];
  if (v2 == result[26])
  {
    [result finishAnimations];
    result = a1[5];
    if (result)
    {
      v4 = result[2];

      return v4();
    }
  }

  return result;
}

void sub_1000CE9B0(id a1, id a2, AnimationInfo *a3, BOOL *a4)
{
  v4 = a3;
  v5 = [(AnimationInfo *)v4 view];
  [v5 removeFromSuperview];

  v6 = [(AnimationInfo *)v4 summaryData];

  [v6 setAnimating:0];
}

id sub_1000CED00(uint64_t a1)
{
  [*(a1 + 32) setHidden:0];
  v2 = *(a1 + 40);

  return [v2 haltTodayPulse];
}

void sub_1000CF45C(uint64_t a1, void *a2)
{
  [a2 frame];
  v3 = [NSValue valueWithCGRect:?];
  [*(a1 + 32) addObject:v3];
}

void sub_1000CF5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CF5E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000CF5FC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 representsActualDate])
  {
    [v9 frame];
    if (CGRectContainsPoint(v11, *(a1 + 40)))
    {
      v6 = [v9 calendarDate];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      *a4 = 1;
    }
  }
}

void sub_1000CF758(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 representsActualDate])
  {
    [v7 frame];
    if (CGRectContainsPoint(v9, *(a1 + 40)))
    {
      *(*(*(a1 + 32) + 8) + 24) = a3;
      *a4 = 1;
    }
  }
}

void sub_1000CFB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CFB84(void *a1, void *a2)
{
  v18 = a2;
  v3 = [v18 representsActualDate];
  v4 = v18;
  if (v3)
  {
    v5 = [v18 calendarDate];
    if (![v5 compare:a1[4]])
    {
      [v18 frame];
      v6 = *(a1[5] + 8);
      v6[4] = v7;
      v6[5] = v8;
      v6[6] = v9;
      v6[7] = v10;
      v11 = [v18 layer];
      [v11 frame];
      v12 = *(a1[6] + 8);
      v12[4] = v13;
      v12[5] = v14;
      v12[6] = v15;
      v12[7] = v16;
    }

    v4 = v18;
  }

  return _objc_release_x1(v3, v4);
}

void sub_1000CFEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 144), 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000CFF2C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (*(*(*(a1 + 40) + 8) + 24) && *(*(a1 + 32) + 32) <= a3)
  {
    if ([*(*(*(a1 + 48) + 8) + 40) month] == *(a1 + 72))
    {
      [v9 setCalendarDate:*(*(*(a1 + 48) + 8) + 40)];
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
      ++*(*(*(a1 + 64) + 8) + 24);
      if ((a3 + 1) < *(a1 + 80))
      {
        v6 = [*(*(*(a1 + 48) + 8) + 40) calendarDateByAddingDays:1];
        v7 = *(*(a1 + 48) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;
      }
    }

    else
    {
      [v9 setCalendarDate:0];
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {
    [v5 setCalendarDate:0];
  }
}

void sub_1000D0370(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 calendarDate];
  v4 = [v6 date];
  v5 = [EKCalendarDate calendarDateWithDate:v4 timeZone:*(a1 + 32)];
  [v3 setCalendarDate:v5];
}

uint64_t sub_1000D0700(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = a2;
  v7 = [v24 representsActualDate];
  v8 = v24;
  if (v7)
  {
    v9 = [v24 calendarDate];
    v10 = [v9 calendarDateForDay];
    v11 = [v10 date];

    v12 = [v9 calendarDateForEndOfDay];
    v13 = [v12 date];

    if ([v11 compare:*(a1 + 32)] != 1 && objc_msgSend(v13, "compare:", *(a1 + 32)) != -1)
    {
      v14 = *(a1 + 40);
      if (v14[17] != v24)
      {
        [v14 _clearTodayHighlight];
        v15 = [*(a1 + 40) makeDayCircleForDate:v9 isToday:1];
        [*(a1 + 40) addSubview:v15];
        v16 = [v24 attachedTodayCircle];
        [v16 removeFromSuperview];

        [v24 setAttachedTodayCircle:v15];
        objc_storeStrong((*(a1 + 40) + 136), a2);
        [*(*(a1 + 40) + 136) hideOverlayAndNumber:1];
        v17 = [v24 dayTypeBadge];
        v18 = [v17 superlayer];

        if (v18)
        {
          v19 = [v24 dayTypeBadge];
          v20 = [v19 superlayer];

          v21 = [v24 dayTypeBadge];
          [v21 removeFromSuperlayer];

          v22 = [v24 dayTypeBadge];
          [v20 addSublayer:v22];
        }
      }

      *a4 = 1;
    }

    v8 = v24;
  }

  return _objc_release_x1(v7, v8);
}

void sub_1000D0EA8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 calendarDate];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_1000D0F04(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a2;
  v5 = *(*(*(a1 + 40) + 8) + 24) + a3;
  if (v5 < [*(*(a1 + 32) + 112) count])
  {
    v6 = [*(*(a1 + 32) + 112) objectAtIndexedSubscript:v5];
    v7 = *(a1 + 32);
    v8 = [v16 dayType];
    v9 = [v16 dayTypeBadgeColor];
    v10 = [v16 dayTypeBadgeLocale];
    [v7 _updateDayTypeBadgeForDayNumber:v6 withDayType:v8 color:v9 locale:v10 forceImageUpdate:0];

    v11 = [v6 calendarDate];
    v12 = [v11 date];

    v13 = [v6 calendar];
    v14 = *(a1 + 32);
    v15 = [v16 eventSummaryData];
    [v14 _updateSingleDaySummaryForDayIndex:v5 withData:v15 date:v12 calendar:v13];
  }
}

void sub_1000D15F8(uint64_t a1)
{
  v1 = [*(a1 + 32) attachedTodayCircle];
  [v1 setAlpha:1.0];
}

void sub_1000D1FD8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 calendarDate];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_1000D2034(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = *(*(*(a1 + 40) + 8) + 24) + a3;
  if (v5 < [*(*(a1 + 32) + 112) count])
  {
    v6 = [*(*(a1 + 32) + 112) objectAtIndexedSubscript:v5];
    v7 = *(a1 + 32);
    v8 = [v11 dayType];
    v9 = [v11 dayTypeBadgeColor];
    v10 = [v11 dayTypeBadgeLocale];
    [v7 _updateDayTypeBadgeForDayNumber:v6 withDayType:v8 color:v9 locale:v10 forceImageUpdate:1];
  }
}

void sub_1000D21F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 cgColor];
  v5 = [v3 dayTypeBadge];

  [v5 setBackgroundColor:v4];
}

id sub_1000D3214(uint64_t a1)
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v2 = [*(a1 + 32) layer];
  [v2 setHidden:0];

  v3 = [*(a1 + 32) overlay];
  v4 = [v3 layer];
  [v4 setHidden:0];

  return +[CATransaction commit];
}

void sub_1000D37B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D37CC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 calendarDate];

  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void sub_1000D4030(id a1)
{
  v1 = [UIColor colorWithWhite:0.0 alpha:0.05];
  v2 = qword_100251AD8;
  qword_100251AD8 = v1;

  v3 = [UIColor colorWithWhite:1.0 alpha:0.1];
  v4 = qword_100251AE0;
  qword_100251AE0 = v3;

  _objc_release_x1(v3, v4);
}

int64_t sub_1000D4DA0(id a1, EventSummaryData *a2, EventSummaryData *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(EventSummaryData *)v4 startDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v9 = [(EventSummaryData *)v5 startDate];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  if ([(EventSummaryData *)v4 isAllDay]&& ![(EventSummaryData *)v5 isAllDay])
  {
    v12 = -1;
  }

  else if ([(EventSummaryData *)v4 isAllDay]|| ![(EventSummaryData *)v5 isAllDay])
  {
    if ([(EventSummaryData *)v4 isAllDay]&& [(EventSummaryData *)v5 isAllDay])
    {
      v12 = 0;
    }

    else if (vabdd_f64(v8, v11) >= 2.22044605e-16)
    {
      if (v8 >= v11)
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }
    }

    else
    {
      v13 = [(EventSummaryData *)v4 endDate];
      [v13 timeIntervalSinceReferenceDate];
      v15 = v14 - v8;

      v16 = [(EventSummaryData *)v5 endDate];
      [v16 timeIntervalSinceReferenceDate];
      v18 = v17 - v11;

      v19 = vabdd_f64(v15, v18);
      v20 = -1;
      if (v15 >= v18)
      {
        v20 = 1;
      }

      if (v19 >= 2.22044605e-16)
      {
        v12 = v20;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

uint64_t sub_1000D4F00(uint64_t a1, void *a2, void *a3)
{
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v5 = a3;
  v6 = [a2 color];
  [v6 getHue:&v17 saturation:&v16 brightness:&v15 alpha:0];

  v7 = [v5 color];

  [v7 getHue:&v14 saturation:&v13 brightness:&v12 alpha:0];
  v8 = *(a1 + 32);
  v9 = v8 * floor(v17 / v8);
  v10 = v8 * floor(v14 / v8);
  if (vabdd_f64(v9, v10) >= 2.22044605e-16)
  {
    if (v9 < v10)
    {
      return -1;
    }

    if (v9 > v10)
    {
      return 1;
    }
  }

  if (v16 < v13)
  {
    return -1;
  }

  if (v16 <= v13)
  {
    if (v15 >= v12)
    {
      return v15 > v12;
    }

    return -1;
  }

  return 1;
}

void sub_1000D6368(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D63F8;
  block[3] = &unk_10020EB00;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_1000D70B0(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_100251B10;
  qword_100251B10 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000D7250(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  v2 = qword_100251B20;
  qword_100251B20 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000D8AFC(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_listViewDidAppear" name:@"ListViewController_ViewDidAppearNotification" object:0];

  v3 = *(a1 + 40);
  v6 = [*(a1 + 32) model];
  v4 = [v6 selectedDate];
  v5 = [v3 pushCalendarViewControllerWithViewType:4 andDate:v4];
}

void sub_1000D8C68(uint64_t a1)
{
  v2 = [objc_opt_class() testName];
  v3 = [*(a1 + 32) application];
  [v3 startedTest:v2];

  v4 = [*(a1 + 32) application];
  v5 = [v4 rootNavigationController];

  v6 = [v5 topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 currentChildViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 tableViewForTesting];
      v9 = *(a1 + 32);
      v10 = *(v9 + 40);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000D8E18;
      v13[3] = &unk_10020EB00;
      v13[4] = v9;
      [v10 scrollView:v8 completionBlock:v13];
    }

    else
    {
      v12 = [*(a1 + 32) application];
      [v12 failedTest:v2 withResults:0];
    }
  }

  else
  {
    v11 = [*(a1 + 32) application];
    [v11 failedTest:v2 withResults:0];
  }
}

void sub_1000D8E18(uint64_t a1)
{
  v1 = [*(a1 + 32) model];
  [v1 setShowDayAsList:0];
}

void sub_1000D9468(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    [v2 setViewControllers:&__NSArray0__struct animated:0];
    [*(*(a1 + 32) + 16) removeFromParentViewController];
    v3 = [*(*(a1 + 32) + 16) view];
    [v3 removeFromSuperview];

    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;
  }
}

void sub_1000D99AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D99C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000D99DC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void sub_1000D9BF0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"MainViewControllerDidAppearNotification" object:*(a1 + 32)];
}

id sub_1000D9FF4(uint64_t a1)
{
  result = [*(a1 + 32) disableRotationTimings];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 transitionToSizeDidEnd];
  }

  return result;
}

void sub_1000DA10C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:*(a1 + 40)];
}

void sub_1000DAAD0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  if (a2 > 3)
  {
    if ((a2 - 4) < 2)
    {
      return;
    }

    goto LABEL_9;
  }

  if (a2 == 1 || a2 == 2)
  {
    v3 = a2;
LABEL_9:
    [*(a1 + 32) _applyAndSavePointerTargetedOccurrences:*(a1 + 40) startTimeAdjustment:*(a1 + 48) span:v3];
    goto LABEL_10;
  }

  if (a2 != 3)
  {
    goto LABEL_9;
  }

LABEL_10:
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

void sub_1000DB450(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251B40;
  qword_100251B40 = v1;

  [qword_100251B40 addAnchoredValue:2 forWindowSizeWidth:7.5];
  [qword_100251B40 addAnchoredValue:16 forWindowSizeWidth:1.0];
  v3 = qword_100251B40;

  [v3 addAnchoredValue:32 forWindowSizeWidth:17.67];
}

void sub_1000DB51C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251B50;
  qword_100251B50 = v1;

  [qword_100251B50 addAnchoredValue:2 forWindowSizeWidth:41.0];
  [qword_100251B50 addAnchoredValue:16 forWindowSizeWidth:59.0];
  [qword_100251B50 addAnchoredValue:32 forWindowSizeWidth:59.0];
  v3 = qword_100251B50;

  [v3 addAnchoredValue:0x20000 forWindowSizeWidth:59.0];
}

void sub_1000DB630(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251B60;
  qword_100251B60 = v1;

  [qword_100251B60 addAnchoredValue:2 forWindowSizeWidth:7.5];
  [qword_100251B60 addAnchoredValue:16 forWindowSizeWidth:-6.5];
  [qword_100251B60 addAnchoredValue:32 forWindowSizeWidth:0.0];
  v3 = qword_100251B60;

  [v3 addAnchoredValue:0x20000 forWindowSizeWidth:0.0];
}

void sub_1000DB730(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251B70;
  qword_100251B70 = v1;

  [qword_100251B70 addAnchoredValue:2 forWindowSizeWidth:1.0];
  [qword_100251B70 addAnchoredValue:16 forWindowSizeWidth:1.5];
  v3 = qword_100251B70;

  [v3 addAnchoredValue:32 forWindowSizeWidth:1.33];
}

void sub_1000DDE98(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DDF10;
  block[3] = &unk_10020EB00;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000DDF10(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = MonthViewLandscapeScrollTest;
  return objc_msgSendSuper2(&v2, "runTest");
}

uint64_t sub_1000DE064()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = qword_100251B88;
  qword_100251B88 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1000DF218(id a1, UITraitEnvironment *a2, UITraitCollection *a3)
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:CUIKSizeClassChangedNotification object:0];
}

void sub_1000E0D0C(uint64_t a1)
{
  v2 = dispatch_time(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E0D9C;
  block[3] = &unk_10020EB00;
  block[4] = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

id sub_1000E0D9C(uint64_t a1)
{
  [*(*(a1 + 32) + 48) finishedTest:*(*(a1 + 32) + 56)];
  v2 = *(a1 + 32);

  return [v2 _callCompletionIfExists];
}

void sub_1000E1614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E1640(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateBadge];
}

void sub_1000E181C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1000E1854(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2)
  {
    [WeakRetained dayNavigationCellTouchUpOccurred:v2];
  }
}

id sub_1000E224C(uint64_t a1)
{
  [*(*(a1 + 32) + 112) setAlpha:0.0];
  [*(*(a1 + 32) + 112) setText:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 112);

  return [v2 setAlpha:1.0];
}

void sub_1000E2980(uint64_t a1)
{
  [*(*(a1 + 32) + 88) setHidden:0];
  [*(*(a1 + 32) + 168) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  *(v2 + 168) = 0;
}

void sub_1000E63A8(uint64_t a1)
{
  v2 = [*(a1 + 32) scrollView];
  [*(*(a1 + 32) + 40) scrollView:v2 completionBlock:0];
}

void sub_1000E6A20(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"LargeWeekViewController_RotationAnimationStartedNotification" object:*(a1 + 32)];
}

void sub_1000E6A80(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  EKUIPushFallbackSizingContextWithViewHierarchy();

  [*(a1 + 32) _resizeInterfaceForWindowSize:{*(a1 + 40), *(a1 + 48)}];
  v3 = [*(a1 + 32) window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

void sub_1000E6AF4(uint64_t a1)
{
  [*(a1 + 32) setRotatingToPortrait:0];
  [*(a1 + 32) setRotatingToLandscape:0];
  *(*(a1 + 32) + 432) = 0;
  [*(a1 + 32) updateVisibleRects];
  if (+[ApplicationTester testingSessionStarted])
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 postNotificationName:@"LargeWeekViewController_RotationAnimationCompletedNotification" object:*(a1 + 32)];
  }
}

void sub_1000E6F14(uint64_t a1)
{
  v2 = [*(a1 + 32) _selectedOccurrenceViews];
  v3 = [v2 count];

  if (v3)
  {
    v4 = +[NSMutableArray array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [*(a1 + 32) _selectedOccurrenceViews];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v24 + 1) + 8 * i) occurrence];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    goto LABEL_12;
  }

  v11 = [*(a1 + 32) eventGestureController];
  v12 = [v11 draggingView];

  if (v12)
  {
    v5 = [*(a1 + 32) eventGestureController];
    v13 = [v5 event];
    v28 = v13;
    v4 = [NSArray arrayWithObjects:&v28 count:1];

LABEL_12:
    goto LABEL_13;
  }

  v4 = 0;
LABEL_13:
  [*(a1 + 32) _setSelectedEvents:v4];
  v14 = [*(a1 + 32) _selectedOccurrenceViews];
  v15 = [v14 count];

  if (v15 == 1)
  {
    v16 = [*(a1 + 32) presentedViewController];
    v17 = [v16 popoverPresentationController];
    v18 = [*(a1 + 32) _selectedOccurrenceViews];
    v19 = [v18 firstObject];
    [v17 setSourceView:v19];

    v20 = [*(a1 + 32) presentedViewController];
    v21 = [v20 popoverPresentationController];
    v22 = [*(a1 + 32) _selectedOccurrenceViews];
    v23 = [v22 firstObject];
    [v23 bounds];
    [v21 setSourceRect:?];
  }

  *(*(a1 + 32) + 426) = 0;
}

uint64_t sub_1000E7BDC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000E7BF4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000E7C8C;
  v3[3] = &unk_10020EDB0;
  v4 = *(a1 + 48);
  [v1 scrollEventIntoView:v2 animateWithDuration:v3 completion:0.3];
}

void sub_1000E88B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1000E88D4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8964;
  block[3] = &unk_100210850;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_1000E8964(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = [WeakRetained navigationThrottleOperation];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "#NavigationThrottle Finished navigation throttle operation: %@", &v7, 0xCu);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setNavigationThrottleOperation:0];
}

void sub_1000E8A54(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 occurrence];
    v6 = [v5 title];
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#ShowEvent Finished showing event: %@", buf, 0xCu);
  }

  if (*(a1 + 56) == 1)
  {
    v7 = [TimerOperation operationWithTimeInterval:0.2];
    objc_initWeak(&location, v7);
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000E8D08;
    v18 = &unk_100211460;
    objc_copyWeak(&v23, &location);
    v8 = v7;
    v19 = v8;
    v20 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v21 = v9;
    v22 = v10;
    [v8 setCompletionBlock:&v15];
    v11 = [*(a1 + 48) showEventDetailsOperationQueue];
    [v11 addOperation:v8];

    v12 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "#ShowDetails Added show event details timer operation: %@", buf, 0xCu);
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [*(a1 + 48) model];
    [v13 setSelectedOccurrenceSelectionSource:1];

    v14 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "#ShowDetails Not adding timer operation due to pointer-selected event.", buf, 2u);
    }
  }
}

void sub_1000E8CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E8D08(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8DFC;
  block[3] = &unk_100211460;
  objc_copyWeak(&v9, (a1 + 64));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *&v4 = *(a1 + 48);
  *(&v4 + 1) = *(a1 + 56);
  *&v5 = v2;
  *(&v5 + 1) = v3;
  v7 = v5;
  v8 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
}

void sub_1000E8DFC(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    *buf = 138412290;
    v12 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "#ShowDetails Finished show event details timer operation: %@", buf, 0xCu);
  }

  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v5 = [*(a1 + 40) occurrence];
    v6 = [v5 isEqual:*(a1 + 48)];

    if (v6)
    {
      v7 = *(a1 + 56);
      v8 = [*(a1 + 40) occurrence];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000E8F80;
      v9[3] = &unk_10020EB00;
      v10 = *(a1 + 40);
      [v7 showEvent:v8 animated:1 showMode:1 context:0 completion:v9];
    }
  }
}

void sub_1000E8F80(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 occurrence];
    v6 = [v5 title];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "#ShowDetails Showed details for event: %@", &v7, 0xCu);
  }
}

void sub_1000E9B40(uint64_t a1)
{
  v2 = [*(a1 + 32) model];
  v3 = [v2 selectedOccurrence];

  v4 = *(a1 + 32);
  if (v3)
  {
    if ((v4[428] & 1) == 0)
    {
      if (v4[429])
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      [v4 showEvent:v3 animated:1 showMode:v5 context:0];
      v4 = *(a1 + 32);
    }

    [v4 setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:0];
    *(*(a1 + 32) + 429) = 0;
    v6 = *(a1 + 32);
    if (v6[428] == 1)
    {
      objc_initWeak(&location, v6);
      v7 = *(a1 + 32);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000E9CB4;
      v8[3] = &unk_100210598;
      objc_copyWeak(&v9, &location);
      [v7 scrollEventIntoView:v3 animated:0 completion:v8];
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [v4 setIsWaitingForBackgroundLoadingOfSelectedEventOccurrenceView:0];
    *(*(a1 + 32) + 429) = 0;
  }
}

void sub_1000E9C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000E9CB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  WeakRetained[428] = 0;
  v1 = [WeakRetained managedNavigationController];
  [v1 sourceViewController:WeakRetained notifiesReadinessForPresentation:1];
}

void sub_1000EA1B0(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  EKUIPushFallbackSizingContextWithViewHierarchy();
  [*(a1 + 32) invalidateManagedNavigationController];
  [*(a1 + 32) _presentDetailViewControllerAsPageSheet:*(a1 + 40)];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

void sub_1000EA5BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) context];
  [v1 showEvent:v2 animated:1 showMode:1 context:v3];
}

void sub_1000EA6FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) context];
  [v1 showEvent:v2 animated:1 showMode:1 context:v3];
}

void sub_1000EA82C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) context];
  [v1 showEvent:v2 animated:1 showMode:1 context:v3];
}

void sub_1000EAA34(uint64_t a1)
{
  [*(a1 + 32) invalidateManagedNavigationController];
  v4 = [*(a1 + 32) augmentEventDetailsContext:0];
  v2 = [*(a1 + 40) event];
  v3 = [EKEventViewController eventDetailViewControllerWithEvent:v2 delegate:*(a1 + 32) context:v4 canvasView:1];

  [*(a1 + 32) _presentDetailViewControllerAsPageSheet:v3];
}

id sub_1000EAED8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setNeedsUpdateOfSupportedInterfaceOrientations];
}

uint64_t sub_1000EAF20(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 activationState];

  if (v5 != 2)
  {
    [*(a1 + 32) invalidateManagedNavigationController];
  }

  result = (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 430) = 0;
  *(*(a1 + 32) + 431) = 0;
  return result;
}

void sub_1000EAFCC(uint64_t a1)
{
  v1 = [*(a1 + 32) containerView];
  [v1 setAlpha:0.0];
}

void sub_1000EB014(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000EB0C8;
  v3[3] = &unk_1002114B0;
  v3[4] = v2;
  v4 = *(a1 + 40);
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  [v2 dismissViewControllerAnimated:0 completion:v3];
}

uint64_t sub_1000EB0C8(uint64_t a1)
{
  [*(a1 + 32) _presentationControllerDidDismissPopover:*(a1 + 40) cleanSelectionState:*(a1 + 56)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_1000EB2F4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v4 = [*(a1 + 32) view];
  v3 = [v4 window];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

void sub_1000EB368(uint64_t a1)
{
  if ((*(*(a1 + 32) + 426) & 1) == 0 && *(a1 + 40))
  {
    v2 = [*(a1 + 48) layer];
    v3 = [v2 mask];
    v4 = *(a1 + 48);
    if (v3)
    {
      v5 = [v4 layer];
      v6 = [v5 mask];
      [v6 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
    }

    else
    {
      [v4 bounds];
      v8 = v15;
      v10 = v16;
      v12 = v17;
      v14 = v18;
    }

    if (!*(a1 + 48) || (v41.origin.x = v8, v41.origin.y = v10, v41.size.width = v12, v41.size.height = v14, CGRectIsEmpty(v41)))
    {
      v19 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        *buf = 138412546;
        v38 = objc_opt_class();
        v39 = 2080;
        v40 = "[LargeWeekViewController _presentEventViewController:forOccurrenceView:animated:showComments:completion:]_block_invoke_2";
        v21 = v38;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@ [%s] Invalid occurrence view source for popover.", buf, 0x16u);
      }
    }

    v22 = [*(a1 + 32) viewControllerToShowFrom];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();
    objc_opt_class();
    [v22 setNavigationBarHidden:((isKindOfClass | v24) | objc_opt_isKindOfClass()) & 1 animated:0];
    v25 = [*(a1 + 32) view];
    v26 = [v25 window];
    EKUIPushFallbackSizingContextWithViewHierarchy();

    v28 = *(a1 + 32);
    v27 = *(a1 + 40);
    v29 = *(a1 + 65);
    v30 = *(a1 + 64) & ~v29;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000EB664;
    v32[3] = &unk_100211500;
    v36 = v29;
    v33 = v27;
    v31 = *(a1 + 56);
    v34 = *(a1 + 32);
    v35 = v31;
    [v22 showViewController:v33 sender:v28 animated:v30 & 1 completion:v32];
  }
}

void sub_1000EB664(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000EB714;
  v3[3] = &unk_100211500;
  v7 = *(a1 + 56);
  v4 = *(a1 + 32);
  v2 = *(a1 + 48);
  v5 = *(a1 + 40);
  v6 = v2;
  dispatch_async(&_dispatch_main_q, v3);
}

id sub_1000EB714(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) openAttendeesDetailItem];
    }
  }

  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  return [v2 setNeedsUpdateOfSupportedInterfaceOrientations];
}

uint64_t sub_1000EBC20(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000EC064(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000EC07C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(a1 + 32) + 434) = 0;
  return result;
}

void sub_1000EC0C0(uint64_t a1)
{
  if (([*(a1 + 32) isNew] & 1) != 0 || *(a1 + 80) == 1)
  {
    v2 = [*(a1 + 40) view];
    *(*(a1 + 40) + 430) = EKUICurrentWindowInterfaceParadigm_SupportsPopoversForEventEditing() ^ 1;

    v3 = [AddEventViewController editOrAddViewControllerForEventOrIntegrationWithEvent:*(a1 + 32) model:*(*(a1 + 40) + 8) creationMethod:*(a1 + 72) viewStart:1 eventEditViewDelegate:?];
  }

  else
  {
    v4 = [*(a1 + 40) augmentEventDetailsContext:*(a1 + 48)];
    v5 = [NSMutableDictionary dictionaryWithDictionary:v4];
    [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:EKUIEventDetailsContext_AllowsCalendarPreview];
    [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:EKUIEventDetailsContext_CalendarPreviewIsInlineDayView];
    v6 = [*(a1 + 40) view];
    v7 = [NSNumber numberWithInt:EKUICurrentWindowInterfaceParadigm() == 8];
    [v5 setObject:v7 forKeyedSubscript:EKUIEventDetailsContext_MinimalMode];

    [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:EKUIEventDetailsContext_ShowsDoneButton];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [v9 view];
    LOBYTE(v11) = EKUICurrentWindowInterfaceParadigm() == 8;
    v12 = [EKEventViewController eventDetailViewControllerWithEvent:v8 delegate:v9 context:v5 canvasView:1 allowInlinePreview:0 previewInline:0 minimalMode:v11];

    v3 = v12;
  }

  v13 = v3;
  [*(a1 + 40) _presentEventViewController:v3 forOccurrenceView:*(a1 + 56) animated:1 showComments:*(a1 + 81) completion:*(a1 + 64)];
}

void sub_1000ECE74(uint64_t a1)
{
  *(*(a1 + 32) + 428) = 0;
  v2 = [*(a1 + 32) managedNavigationController];
  [v2 sourceViewController:*(a1 + 32) notifiesReadinessForPresentation:1];
}

void sub_1000EE1B8(uint64_t a1)
{
  v2 = [*(a1 + 32) eventGestureController];
  v3 = [v2 draggingView];
  [v3 setDrawsResizeHandles:0];

  v5 = [*(a1 + 32) eventGestureController];
  v4 = [v5 draggingView];
  [v4 setAlpha:0.0];
}

uint64_t sub_1000EE25C(uint64_t a1)
{
  [*(a1 + 32) editorDidCancelEditingEvent:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

id sub_1000EE2B0(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 attemptDisplayReviewPrompt];
}

void sub_1000EECB8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 frame];
  [v4 showOverlayMonthInCellAtOffset:*(a1 + 40) animated:v3 - CGRectGetMinX(v6)];
}

void sub_1000EF2B0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251B98;
  qword_100251B98 = v1;

  [qword_100251B98 setCalculationType:1];
  [qword_100251B98 addAnchoredValue:2048 forWindowSizeWidth:72.0];
  v3 = qword_100251B98;

  [v3 addAnchoredValue:4096 forWindowSizeWidth:78.0];
}

void sub_1000EF3CC(uint64_t a1)
{
  v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline];
  [*(a1 + 32) _yearNumberFontSize];
  v2 = [UIFont fontWithDescriptor:v4 size:?];
  v3 = qword_100251BA8;
  qword_100251BA8 = v2;
}

void sub_1000EF4D0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251BB8;
  qword_100251BB8 = v1;

  [qword_100251BB8 setCalculationType:1];
  [qword_100251BB8 addAnchoredValue:2048 forWindowSizeWidth:50.0];
  v3 = qword_100251BB8;

  [v3 addAnchoredValue:4096 forWindowSizeWidth:50.0];
}

void sub_1000EF950(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251BD0;
  qword_100251BD0 = v1;

  [qword_100251BD0 addAnchoredValue:2 forWindowSizeWidth:92.5];
  [qword_100251BD0 addAnchoredValue:16 forWindowSizeWidth:105.0];
  [qword_100251BD0 addAnchoredValue:32 forWindowSizeWidth:119.0];
  v3 = qword_100251BD0;

  [v3 addAnchoredValue:128 forWindowSizeWidth:147.0];
}

void sub_1000EFAE0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251BE0;
  qword_100251BE0 = v1;

  [qword_100251BE0 addAnchoredValue:2 forWindowSizeWidth:108.0];
  [qword_100251BE0 addAnchoredValue:16 forWindowSizeWidth:126.5];
  [qword_100251BE0 addAnchoredValue:32 forWindowSizeWidth:138.0];
  v3 = qword_100251BE0;

  [v3 addAnchoredValue:128 forWindowSizeWidth:141.0];
}

void sub_1000EFCF0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251BF0;
  qword_100251BF0 = v1;

  [qword_100251BF0 addAnchoredValue:2 forWindowSizeWidth:-1.0];
  [qword_100251BF0 addAnchoredValue:16 forWindowSizeWidth:0.0];
  v3 = qword_100251BF0;

  [v3 addAnchoredValue:32 forWindowSizeWidth:0.0];
}

void sub_1000EFDC0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251C00;
  qword_100251C00 = v1;

  [qword_100251C00 addAnchoredValue:2 forWindowSizeWidth:2.0];
  [qword_100251C00 addAnchoredValue:16 forWindowSizeWidth:4.0];
  v3 = qword_100251C00;

  [v3 addAnchoredValue:32 forWindowSizeWidth:6.0];
}

void sub_1000EFE90(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251C10;
  qword_100251C10 = v1;

  [qword_100251C10 addAnchoredValue:2 forWindowSizeWidth:5.5];
  [qword_100251C10 addAnchoredValue:16 forWindowSizeWidth:5.0];
  [qword_100251C10 addAnchoredValue:32 forWindowSizeWidth:5.0];
  v3 = qword_100251C10;

  [v3 addAnchoredValue:128 forWindowSizeWidth:5.0];
}

void sub_1000F039C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251C38;
  qword_100251C38 = v1;

  v3 = +[NSLocale currentLocale];
  v12 = [v3 objectForKey:NSLocaleLanguageCode];

  v4 = CUIKLocalizedStringForInteger();
  v5 = [v4 isEqual:@"൧"];

  v6 = CUIKLocalizedStringForInteger();
  v7 = [v6 isEqual:@"௧"];

  v8 = 9.0;
  v9 = 6.0;
  v10 = 5.0;
  v11 = 7.666;
  if ((![v12 isEqual:@"ml"] || (v5 & 1) == 0) && (objc_msgSend(v12, "isEqual:", @"ta") & v7 & 1) == 0)
  {
    v8 = 12.0;
    v9 = 9.0;
    v10 = 8.0;
    v11 = 10.6666667;
  }

  [qword_100251C38 addAnchoredValue:2 forWindowSizeWidth:v10];
  [qword_100251C38 addAnchoredValue:16 forWindowSizeWidth:v9];
  [qword_100251C38 addAnchoredValue:32 forWindowSizeWidth:v11];
  [qword_100251C38 addAnchoredValue:128 forWindowSizeWidth:v8];
}

void sub_1000F0574(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251C48;
  qword_100251C48 = v1;

  [qword_100251C48 addAnchoredValue:2 forWindowSizeWidth:13.0];
  [qword_100251C48 addAnchoredValue:16 forWindowSizeWidth:14.0];
  v3 = qword_100251C48;

  [v3 addAnchoredValue:32 forWindowSizeWidth:16.0];
}

void sub_1000F0684(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251C58;
  qword_100251C58 = v1;

  [qword_100251C58 addAnchoredValue:2 forWindowSizeWidth:24.0];
  [qword_100251C58 addAnchoredValue:16 forWindowSizeWidth:25.0];
  [qword_100251C58 addAnchoredValue:32 forWindowSizeWidth:26.5];
  v3 = qword_100251C58;

  [v3 addAnchoredValue:128 forWindowSizeWidth:27.0];
}

void sub_1000F0768(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251C68;
  qword_100251C68 = v1;

  [qword_100251C68 addAnchoredValue:2 forWindowSizeWidth:13.0];
  [qword_100251C68 addAnchoredValue:16 forWindowSizeWidth:15.0];
  [qword_100251C68 addAnchoredValue:32 forWindowSizeWidth:17.0];
  v3 = qword_100251C68;

  [v3 addAnchoredValue:128 forWindowSizeWidth:20.0];
}

void sub_1000F0848(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251C78;
  qword_100251C78 = v1;

  [qword_100251C78 addAnchoredValue:2 forWindowSizeWidth:14.0];
  [qword_100251C78 addAnchoredValue:16 forWindowSizeWidth:17.0];
  [qword_100251C78 addAnchoredValue:32 forWindowSizeWidth:18.0];
  v3 = qword_100251C78;

  [v3 addAnchoredValue:128 forWindowSizeWidth:18.5];
}

void sub_1000F092C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251C88;
  qword_100251C88 = v1;

  [qword_100251C88 setCalculationType:1];
  [qword_100251C88 addAnchoredValue:2 forWindowSizeWidth:0.0];
  [qword_100251C88 addAnchoredValue:16 forWindowSizeWidth:0.0];
  [qword_100251C88 addAnchoredValue:32 forWindowSizeWidth:-0.25];
  v3 = qword_100251C88;

  [v3 addAnchoredValue:128 forWindowSizeWidth:-0.25];
}

void sub_1000F0A18(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251C98;
  qword_100251C98 = v1;

  [qword_100251C98 setCalculationType:1];
  [qword_100251C98 addAnchoredValue:2 forWindowSizeWidth:0.0];
  [qword_100251C98 addAnchoredValue:16 forWindowSizeWidth:0.0];
  [qword_100251C98 addAnchoredValue:32 forWindowSizeWidth:-0.25];
  v3 = qword_100251C98;

  [v3 addAnchoredValue:128 forWindowSizeWidth:-0.25];
}

void sub_1000F0B24(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251CA8;
  qword_100251CA8 = v1;

  [qword_100251CA8 addAnchoredValue:2 forWindowSizeWidth:-1.0];
  [qword_100251CA8 addAnchoredValue:16 forWindowSizeWidth:-1.0];
  [qword_100251CA8 addAnchoredValue:32 forWindowSizeWidth:-1.33333333];
  v3 = qword_100251CA8;

  [v3 addAnchoredValue:128 forWindowSizeWidth:-2.0];
}

void sub_1000F0EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000F0EEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && !*(WeakRetained + 146))
  {
    v2 = WeakRetained;
    [WeakRetained _configureSidebarConfigurationOfManagedNavigationController];
    WeakRetained = v2;
  }
}

void sub_1000F23F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_1000F2448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained setModelSelectedEvent:0];
    [v5 _selectEvent:0 animated:1 context:1];
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = [v3 presentingViewController];
    [v4 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v5;
  }
}

void sub_1000F2DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000F2E1C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 occurrence];
  v7 = [*(a1 + 32) occurrence];
  *(*(*(a1 + 40) + 8) + 24) = [v6 isEqual:v7];

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void sub_1000F2F7C(id a1)
{
  v20 = objc_opt_class();
  v1 = [NSArray arrayWithObjects:&v20 count:1];
  v2 = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:v1];
  v3 = +[UIColor systemBackgroundColor];
  [v2 setBarTintColor:v3];

  v19 = objc_opt_class();
  v4 = [NSArray arrayWithObjects:&v19 count:1];
  v5 = [UIToolbar appearanceWhenContainedInInstancesOfClasses:v4];
  v6 = +[UIColor systemBackgroundColor];
  [v5 setBarTintColor:v6];

  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v18 count:2];
  v8 = [UITableView appearanceWhenContainedInInstancesOfClasses:v7];
  v9 = +[UIColor systemGroupedBackgroundColor];
  [v8 setEditorBackgroundColor:v9];

  v17 = objc_opt_class();
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  v11 = [UITableView appearanceWhenContainedInInstancesOfClasses:v10];
  v12 = +[UIColor systemGroupedBackgroundColor];
  [v11 setEditorBackgroundColor:v12];

  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v16[2] = objc_opt_class();
  v13 = [NSArray arrayWithObjects:v16 count:3];
  v14 = [UILabel appearanceWhenContainedInInstancesOfClasses:v13];
  v15 = +[UIColor clearColor];
  [v14 setEditorBackgroundColor:v15];
}

void sub_1000F4ED0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1000F4EF4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[132] = 0;
    v6 = WeakRetained;
    v2 = [WeakRetained shownEventViewController];
    if (v2 || ([v6 shownEventEditViewController], (v2 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v6, "shownContactViewController"), (v2 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v6, "shownExpandedReminderStackViewController"), (v2 = objc_claimAutoreleasedReturnValue()) != 0))
    {

LABEL_7:
      WeakRetained = v6;
      goto LABEL_8;
    }

    v3 = [v6 managedNavigationController];
    v4 = [v3 enqueuedViewControllers];
    v5 = [v4 count];

    WeakRetained = v6;
    if (!v5)
    {
      [v6 updateNoContentConfiguration];
      goto LABEL_7;
    }
  }

LABEL_8:
}

uint64_t sub_1000F541C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_1000F543C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000F6364(uint64_t a1)
{
  v2 = [*(a1 + 32) day];
  v3 = [v2 dayComponents];
  v4 = [*(a1 + 32) dayView];
  v5 = [v4 currentDayView];
  v6 = [v5 displayDate];
  v7 = [v3 CalIsSameDayAsComponents:v6];

  if (v7)
  {
    v8 = *(a1 + 32);

    [v8 _resetSplitView];
  }
}

void sub_1000F666C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F6684(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000F669C(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isSelectedCopyView])
  {
    if (os_variant_has_internal_ui())
    {
      v4 = *(*(*(a1 + 40) + 8) + 40);
      if (v4)
      {
        v5 = [v4 tag];
        if (v5 != [v6 tag])
        {
          sub_100170AF0(a1);
        }
      }
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void sub_1000F8D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1000F8D48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained shownEventViewController];
  [v3 setEditorShowTransition:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 shownEventViewController];
  [v5 editButtonTapped];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 shownEventViewController];
  [v7 setEditorShowTransition:6];

  v8 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v7) = [v8 isHidden];

  if (v7)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 managedNavigationController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000F8EA0;
    v11[3] = &unk_100210850;
    objc_copyWeak(&v12, (a1 + 40));
    [v10 enqueueBlock:v11];

    objc_destroyWeak(&v12);
  }
}

void sub_1000F8EA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHidden:0];
}

void sub_1000FB2BC(uint64_t a1)
{
  [*(a1 + 32) firstDayCellInset];
  v3 = v2;
  [*(a1 + 32) dayCellSize];
  v5 = v4;
  v7 = v6;
  v8 = EKUIWidthSizeClassForViewHierarchy();
  if (![*(*(a1 + 32) + 8) count])
  {
    goto LABEL_9;
  }

  v9 = 0;
  Width = -1.0;
  do
  {
    v11 = [*(*(a1 + 32) + 8) objectAtIndex:v9];
    [v11 setFrame:{v3, 0.0, v5, v7}];
    [v11 setAlpha:1.0];
    if (([*(a1 + 32) monthBreakIndex] & 0x8000000000000000) == 0 && v9 <= objc_msgSend(*(a1 + 32), "monthBreakIndex"))
    {
      Width = v5 + v3;
    }

    [*(a1 + 32) dayCellSize];
    v13 = v12;
    [CompactDayNavigationViewCell standardCircleDiameterForSizeClass:v8];
    v15 = v14;
    [CompactDayNavigationViewCell overlayCircleDiameterForSizeClass:v8];
    v17 = v16;
    [CompactDayNavigationViewCell largeOverlayCircleDiameterForSizeClass:v8];
    [v11 setCircleDiameter:v15 overlayDiameter:v17 largeOverlayDiameter:v18];
    [v11 setMonthAnimationState:0];
    [v11 setApplyMonthAnimationStateAdjustments:0];
    [v11 layoutIfNeeded];

    v19 = [*(*(a1 + 32) + 8) count];
    if (v9 > 5)
    {
      break;
    }

    v3 = v3 + v13;
    ++v9;
  }

  while (v9 < v19);
  if (Width < 0.0)
  {
LABEL_9:
    [*(a1 + 32) monthFrame];
    Width = CGRectGetWidth(v74);
  }

  v20 = 0.0;
  [*(*(a1 + 32) + 16) setAlpha:0.0];
  v21 = [*(a1 + 32) monthBreakIndex];
  v22 = *(a1 + 32);
  if ((v21 & 0x8000000000000000) == 0 && *(v22 + 56) > *(v22 + 112))
  {
    [v22 monthFrame];
    v20 = Width;
    Width = CGRectGetWidth(v75) - Width;
    v22 = *(a1 + 32);
  }

  [*(v22 + 16) setFrame:{v20, 0.0, Width, 1.0}];
  v23 = *(a1 + 32);
  if (*(v23 + 25) == 1)
  {
    [*(v23 + 32) sizeToFit];
    [*(*(a1 + 32) + 32) frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    if (CalTimeDirectionIsLeftToRight())
    {
      [*(*(a1 + 32) + 16) frame];
      CGRectGetMinX(v76);
      v77.origin.x = v25;
      v77.origin.y = v27;
      v77.size.width = v29;
      v77.size.height = v31;
      CGRectGetWidth(v77);
    }

    else
    {
      [*(*(a1 + 32) + 16) frame];
      CGRectGetMaxX(v78);
    }

    +[CompactMonthWeekView weekNumberDistanceFromGrayLine];
    CalRoundToScreenScale();
    v33 = v32;
    [*(*(a1 + 32) + 16) frame];
    MinY = CGRectGetMinY(v79);
    v80.origin.x = v33;
    v80.origin.y = v27;
    v80.size.width = v29;
    v80.size.height = v31;
    [*(*(a1 + 32) + 32) setFrame:{v33, MinY + CGRectGetHeight(v80) * -0.5, v29, v31}];
    [*(*(a1 + 32) + 32) setAlpha:0.0];
    v23 = *(a1 + 32);
  }

  if (*(v23 + 64) == *(v23 + 56))
  {
    v35 = [v23 _todayCell];
    [CompactDayNavigationViewCell standardCircleDiameterForSizeClass:v8];
    v37 = v36;
    [CompactDayNavigationViewCell overlayCircleDiameterForSizeClass:v8];
    v39 = v38;
    [CompactDayNavigationViewCell largeOverlayCircleDiameterForSizeClass:v8];
    [v35 setCircleDiameter:v37 overlayDiameter:v39 largeOverlayDiameter:v40];

    v41 = [*(a1 + 32) _todayCell];
    [v41 layoutIfNeeded];

    v23 = *(a1 + 32);
  }

  v42 = [v23 monthOccurrencesSnapshot];

  if (v42)
  {
    v43 = [*(a1 + 32) monthOccurrencesSnapshot];
    [v43 setAlpha:0.0];

    [*(a1 + 32) monthOccurrencesFrame];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = [*(a1 + 32) monthOccurrencesSnapshot];
    [v52 setFrame:{v45, v47, v49, v51}];
  }

  v53 = [*(a1 + 32) monthSummarySnapshots];
  v54 = [v53 count];
  v55 = [*(a1 + 32) monthSummaryFrames];
  v56 = [v55 count];

  if (v54 == v56)
  {
    v57 = [*(a1 + 32) monthSummarySnapshots];
    v58 = [v57 count];

    if (v58 >= 1)
    {
      v59 = 0;
      do
      {
        v60 = [*(a1 + 32) monthSummarySnapshots];
        v61 = [v60 objectAtIndexedSubscript:v59];

        v62 = [*(a1 + 32) monthSummaryFrames];
        v63 = [v62 objectAtIndexedSubscript:v59];
        [v63 CGRectValue];
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v71 = v70;

        [v61 setAlpha:0.0];
        [v61 setFrame:{v65, v67, v69, v71}];

        ++v59;
        v72 = [*(a1 + 32) monthSummarySnapshots];
        v73 = [v72 count];
      }

      while (v59 < v73);
    }
  }
}

void sub_1000FB800(uint64_t a1)
{
  v2 = [*(a1 + 32) _todayCell];
  [v2 setCircled:*(*(a1 + 32) + 56) == *(*(a1 + 32) + 64) animated:*(a1 + 40)];
}

void sub_1000FB878(uint64_t a1)
{
  v2 = [*(a1 + 32) _selectedCell];
  [v2 setCircled:1 animated:*(a1 + 40)];
}

void sub_1000FBEDC(uint64_t a1)
{
  [*(a1 + 32) dayCellSize];
  if (([*(a1 + 32) monthBreakIndex] & 0x8000000000000000) != 0)
  {
    v3 = 1.0;
  }

  else
  {
    v2 = [*(a1 + 32) monthBreakIndex];
    if (v2 >= [*(a1 + 32) selectedIndex])
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }
  }

  if (![*(*(a1 + 32) + 8) count])
  {
    goto LABEL_33;
  }

  v118 = 0;
  v4 = 0;
  v5 = 6;
  v6 = 0.0;
  do
  {
    v7 = [*(*(a1 + 32) + 8) objectAtIndex:v4];
    v8 = v4 - [*(a1 + 32) firstMonthCellIndex];
    if (!CalTimeDirectionIsLeftToRight())
    {
      v8 = v5;
    }

    if (v8 < 0 || ([*(a1 + 32) monthCellFrames], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8 >= v10))
    {
      [*(a1 + 32) dayCellSize];
      v15 = v18;
      v17 = v19;
    }

    else
    {
      v11 = [*(a1 + 32) monthCellFrames];
      v12 = [v11 objectAtIndex:v8];

      [v12 CGRectValue];
      v6 = v13;
      v15 = v14;
      [*(a1 + 32) dayCellSize];
      v17 = v16;
    }

    if (([*(a1 + 32) monthBreakIndex] & 0x8000000000000000) == 0 && v4 <= objc_msgSend(*(a1 + 32), "monthBreakIndex"))
    {
      v20 = v7;

      v118 = v20;
    }

    v21 = *(a1 + 32);
    v22 = v4 == v21[8] || v4 == v21[7];
    [v21 _yOffsetForMonthCells:v22];
    [v7 setFrame:{v6, v23, v15, v17}];
    [v7 setAlpha:v3];
    if (v4 == [*(a1 + 32) monthBreakIndex])
    {
      v24 = [*(a1 + 32) monthBreakIndex];
      if (v24 >= [*(a1 + 32) selectedIndex])
      {
        v3 = 0.0;
      }

      else
      {
        v3 = 1.0;
      }
    }

    if (v4 == *(*(a1 + 32) + 64))
    {
      [v7 setApplyMonthAnimationStateAdjustments:1];
    }

    else
    {
      [v7 setMonthAnimationState:1];
    }

    if (*(*(a1 + 32) + 40) == 1)
    {
      +[CompactMonthWeekView circleDiameterCompressed];
    }

    else
    {
      +[CompactMonthWeekView circleDiameter];
    }

    v26 = v25;
    +[CompactMonthWeekView circleDiameterWithOverlay];
    v28 = v27;
    +[CompactMonthWeekView circleDiameterWithOverlayLarge];
    [v7 setCircleDiameter:v26 overlayDiameter:v28 largeOverlayDiameter:v29];
    [v7 layoutIfNeeded];

    v30 = [*(*(a1 + 32) + 8) count];
    if (v4 > 5)
    {
      break;
    }

    v6 = v6 + v15;
    ++v4;
    --v5;
  }

  while (v4 < v30);
  if (!v118)
  {
LABEL_33:
    v118 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:6];
  }

  [*(*(a1 + 32) + 16) setAlpha:1.0];
  if (([*(a1 + 32) monthBreakIndex] & 0x8000000000000000) == 0)
  {
    v31 = *(a1 + 32);
    if (v31[7] > v31[14])
    {
      [v31 monthFrame];
      Width = CGRectGetWidth(v120);
      [v118 frame];
      v33 = Width - CGRectGetMaxX(v121);
      if (*(*(a1 + 32) + 25) == 1 && (CalTimeDirectionIsLeftToRight() & 1) == 0)
      {
        v34 = [*(a1 + 32) monthCellFrames];
        v35 = [v34 firstObject];

        if (v35)
        {
          [*(a1 + 32) monthFrame];
          MaxX = CGRectGetMaxX(v122);
          +[CompactMonthWeekView twoDigitWeekNumberWidth];
          v38 = MaxX - v37;
          +[CompactMonthWeekView weekNumberDistanceFromGrayLine];
          v40 = v38 - v39;
          [v118 frame];
          v33 = v40 - CGRectGetMaxX(v123);
        }
      }

      [v118 frame];
      v41 = CGRectGetMaxX(v124);
      goto LABEL_50;
    }
  }

  [v118 frame];
  v33 = CGRectGetMaxX(v125);
  v42 = *(a1 + 32);
  v41 = 0.0;
  if (*(v42 + 25) != 1)
  {
    goto LABEL_51;
  }

  v43 = [v42 monthCellFrames];
  v44 = [v43 firstObject];

  if (v44)
  {
    if (CalTimeDirectionIsLeftToRight())
    {
      +[CompactMonthWeekView twoDigitWeekNumberWidth];
      v46 = v45;
      +[CompactMonthWeekView weekNumberDistanceFromGrayLine];
      v48 = v46 + v47 * 2.0;
      v41 = v48 + 0.0;
LABEL_48:
      v33 = v33 - v48;
      goto LABEL_49;
    }

    v49 = [*(*(a1 + 32) + 8) objectAtIndexedSubscript:6];

    if (v118 == v49)
    {
      [*(a1 + 32) monthFrame];
      v50 = CGRectGetMaxX(v126);
      +[CompactMonthWeekView twoDigitWeekNumberWidth];
      v33 = v50 - v51;
      +[CompactMonthWeekView weekNumberDistanceFromGrayLine];
      goto LABEL_48;
    }
  }

LABEL_49:

LABEL_50:
  v42 = *(a1 + 32);
LABEL_51:
  [*(v42 + 16) setFrame:{v41, 0.0, v33, 1.0}];
  v52 = *(a1 + 32);
  if (*(v52 + 25) == 1)
  {
    [*(v52 + 32) sizeToFit];
    [*(*(a1 + 32) + 32) frame];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v60 = v59;
    if (CalTimeDirectionIsLeftToRight())
    {
      [*(*(a1 + 32) + 16) frame];
      CGRectGetMinX(v127);
      v128.origin.x = v54;
      v128.origin.y = v56;
      v128.size.width = v58;
      v128.size.height = v60;
      CGRectGetWidth(v128);
    }

    else
    {
      [*(*(a1 + 32) + 16) frame];
      CGRectGetMaxX(v129);
    }

    +[CompactMonthWeekView weekNumberDistanceFromGrayLine];
    CalRoundToScreenScale();
    v62 = v61;
    [*(*(a1 + 32) + 16) frame];
    CGRectGetMinY(v130);
    v131.origin.x = v62;
    v131.origin.y = v56;
    v131.size.width = v58;
    v131.size.height = v60;
    CGRectGetHeight(v131);
    CalRoundToScreenScale();
    [*(*(a1 + 32) + 32) setFrame:{v62, v63, v58, v60}];
    [*(*(a1 + 32) + 32) setAlpha:1.0];
    v52 = *(a1 + 32);
  }

  v64 = [v52 _todayCell];
  if (v64)
  {
  }

  else
  {
    v65 = [*(a1 + 32) _selectedCell];

    if (!v65)
    {
      goto LABEL_63;
    }
  }

  v66 = *(a1 + 32);
  v67 = v66[40];
  v68 = [v66 _todayCell];
  if (v67 == 1)
  {
    +[CompactMonthWeekView circleDiameterCompressed];
    v70 = v69;
    +[CompactMonthWeekView circleDiameterWithOverlay];
    v72 = v71;
    +[CompactMonthWeekView circleDiameterWithOverlayLarge];
    [v68 setCircleDiameter:v70 overlayDiameter:v72 largeOverlayDiameter:v73];

    v74 = [*(a1 + 32) _selectedCell];
    +[CompactMonthWeekView circleDiameterCompressed];
    v76 = v75;
    +[CompactMonthWeekView circleDiameterWithOverlay];
    v78 = v77;
    +[CompactMonthWeekView circleDiameterWithOverlayLarge];
    [v74 setCircleDiameter:v76 overlayDiameter:v78 largeOverlayDiameter:v79];

    v68 = [*(a1 + 32) _selectedCell];
    [v68 layoutIfNeeded];
  }

  else
  {
    +[CompactMonthWeekView circleDiameter];
    v81 = v80;
    +[CompactMonthWeekView circleDiameterWithOverlay];
    v83 = v82;
    +[CompactMonthWeekView circleDiameterWithOverlayLarge];
    [v68 setCircleDiameter:v81 overlayDiameter:v83 largeOverlayDiameter:v84];
  }

  v85 = [*(a1 + 32) _todayCell];
  [v85 layoutIfNeeded];

LABEL_63:
  v86 = [*(a1 + 32) monthOccurrencesSnapshot];

  if (v86)
  {
    v87 = [*(a1 + 32) monthOccurrencesSnapshot];
    [v87 setAlpha:1.0];

    [*(a1 + 32) monthOccurrencesFrame];
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = [*(a1 + 32) monthOccurrencesSnapshot];
    [v96 setFrame:{v89, v91, v93, v95}];
  }

  v97 = [*(a1 + 32) monthSummarySnapshots];
  v98 = [v97 count];
  v99 = [*(a1 + 32) monthSummaryFrames];
  v100 = [v99 count];

  if (v98 == v100)
  {
    v101 = [*(a1 + 32) monthSummarySnapshots];
    v102 = [v101 count];

    if (v102 >= 1)
    {
      v103 = 0;
      do
      {
        v104 = [*(a1 + 32) monthSummarySnapshots];
        v105 = [v104 objectAtIndexedSubscript:v103];

        v106 = [*(a1 + 32) monthSummaryFrames];
        v107 = [v106 objectAtIndexedSubscript:v103];
        [v107 CGRectValue];
        v109 = v108;
        v111 = v110;
        v113 = v112;
        v115 = v114;

        [v105 setAlpha:1.0];
        [v105 setFrame:{v109, v111, v113, v115}];

        ++v103;
        v116 = [*(a1 + 32) monthSummarySnapshots];
        v117 = [v116 count];
      }

      while (v103 < v117);
    }
  }
}

void sub_1000FC7B4(uint64_t a1)
{
  v2 = [*(a1 + 32) _todayCell];
  [v2 setCircled:*(*(a1 + 32) + 56) == *(*(a1 + 32) + 64) animated:*(a1 + 40)];
}

void sub_1000FC82C(uint64_t a1)
{
  v2 = [*(a1 + 32) _selectedCell];
  [v2 setCircled:1 animated:*(a1 + 40)];
}

void sub_1000FC884(uint64_t a1)
{
  v2 = [*(a1 + 32) _todayCell];
  [v2 setCircled:1 animated:*(a1 + 40)];
}

void sub_1000FC8DC(uint64_t a1)
{
  v2 = [*(a1 + 32) _selectedCell];
  [v2 setCircled:*(a1 + 40) ^ 1u animated:?];
}

id sub_1000FCB5C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  [*(a1 + 32) frame];
  v5 = v4;
  [*(a1 + 32) frame];
  v6 = *(a1 + 32);

  return [v6 setFrame:{v2, v3, v5}];
}

id paletteTitleFont(void *a1, void *a2)
{
  v3 = a1;
  v4 = UIFontTextStyleLargeTitle;
  if (![a2 userInterfaceIdiom] && objc_msgSend(v3, "interfaceOrientation") - 3 <= 1)
  {
    v5 = UIFontTextStyleTitle2;

    v4 = v5;
  }

  v6 = [UIFont _preferredFontForTextStyle:v4 maximumContentSizeCategory:UIContentSizeCategoryMedium];
  v7 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v4 addingSymbolicTraits:2 options:0];
  [v6 pointSize];
  v8 = [UIFont fontWithDescriptor:v7 size:?];

  return v8;
}

id contactForSource(void *a1)
{
  v1 = a1;
  v2 = [v1 preferredOwnerAddress];
  v3 = v2;
  if (v2)
  {
    if ([v2 hasMailto])
    {
      v4 = [v3 stringRemovingMailto];
LABEL_6:
      v5 = v4;
      goto LABEL_22;
    }

    if ([v3 hasTel])
    {
      v4 = [v3 stringRemovingTel];
      goto LABEL_6;
    }
  }

  v6 = [v1 ownerAddresses];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *v18;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v18 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v17 + 1) + 8 * i);
      if ([v11 hasMailto])
      {
        v12 = [v11 stringRemovingMailto];
LABEL_20:
        v5 = v12;
        goto LABEL_21;
      }

      if ([v11 hasTel])
      {
        v12 = [v11 stringRemovingTel];
        goto LABEL_20;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    v5 = 0;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_21:

LABEL_22:
  v13 = CUIKDisplayedTitleForSource();
  v14 = +[EKUILabeledAvatarView contactKeysToFetch];
  v15 = [ContactsUtils contactForAddress:v5 fullName:v13 firstName:0 lastName:0 keysToFetch:v14];

  return v15;
}

void sub_1000FF670(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000FF6F8;
  v2[3] = &unk_10020EC68;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1000FF704(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) & 1) != 0 || (v4 = *(a1 + 32), *(v4 + 88)) && (v6[0] = _NSConcreteStackBlock, v6[1] = 3221225472, v6[2] = sub_1000FF7F8, v6[3] = &unk_10020EB00, v6[4] = v4, [UIView performWithoutAnimation:v6], (*(a1 + 48)))
  {
    if (*(a1 + 49) == 1 && (*(a1 + 50) & 1) == 0)
    {
      v5 = *(a1 + 32);
      if (v5[11])
      {
        [v5 setCurrentSidebarState:*(*(*(a1 + 40) + 8) + 24)];
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }
  }
}

id sub_1000FF7F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000FF878;
  v4[3] = &unk_10020F370;
  v4[4] = v1;
  return [v2 showCalendarsAnimated:0 completion:v4];
}

void sub_1000FF878(uint64_t a1, void *a2)
{
  [a2 restorePreservedState:*(*(a1 + 32) + 88)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = 0;
}

void sub_1000FF8CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 becomeFirstResponder];
  }

  v5 = *(a1 + 56);
  v6 = *(v5 + 8);
  v7 = *(v6 + 24);
  v8 = v7 == 0;
  if (!v7)
  {
    if (!*(*(a1 + 40) + 88) || *(a1 + 64) != 1)
    {
      v8 = 0;
      goto LABEL_12;
    }

    *(v6 + 24) = 1;
    v5 = *(a1 + 56);
    v7 = *(*(v5 + 8) + 24);
  }

  if (v7 == 2)
  {
    if (*(a1 + 48))
    {
      v9 = [*(a1 + 40) splitBehavior];
      v5 = *(a1 + 56);
      if (v9 == 2)
      {
        *(*(v5 + 8) + 24) = 0;
        v5 = *(a1 + 56);
      }
    }
  }

LABEL_12:
  v10 = *(*(v5 + 8) + 24);
  if (v10)
  {
    v11 = *(a1 + 40);
    if (v10 != *(v11 + 152) || *(v11 + 88))
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000FFAD8;
      v18[3] = &unk_10020F3C0;
      v18[4] = v11;
      v18[5] = v5;
      v12 = objc_retainBlock(v18);
      v13 = v12;
      if (v8)
      {
        v14 = dispatch_time(0, 0);
        dispatch_after(v14, &_dispatch_main_q, v13);
      }

      else
      {
        (v12[2])(v12);
      }
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000FFB64;
    v16[3] = &unk_10020EC68;
    v16[4] = *(a1 + 40);
    v17 = v15;
    [UIView performWithoutAnimation:v16];
  }
}

id sub_1000FFAD8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000FFB54;
  v2[3] = &unk_10020F3C0;
  v3 = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void sub_1000FFFA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) model];
  v5 = [v4 eventStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100100078;
  v7[3] = &unk_10020F460;
  v8 = v3;
  v6 = v3;
  [v5 familyCalendarsWithCompletion:v7];
}

void sub_100100078(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count] == 1)
  {
    v3 = [v4 firstObject];
    [*(a1 + 32) showCalendar:v3 enableDoneInitially:0];
  }
}

void sub_100100C1C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setAvatarViewVisible:0];
  v2 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:0];
  v3 = [*(*(a1 + 32) + 8) paletteView];
  [v3 setShouldHideInlineFocusBanner:v2];
}

void sub_100100CB8(uint64_t a1)
{
  v2 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 8) paletteView];
  [v3 setShouldHideInlineFocusBanner:v2];
}

uint64_t sub_100100D2C(uint64_t a1, void *a2)
{
  isKindOfClass = a2;
  v4 = isKindOfClass;
  if (*(*(a1 + 32) + 88))
  {
    v8 = isKindOfClass;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v8;
    if (isKindOfClass)
    {
      [*(a1 + 40) restorePreservedState:*(*(a1 + 32) + 88)];
      v5 = *(a1 + 32);
      v6 = *(v5 + 88);
      *(v5 + 88) = 0;

      v4 = v8;
    }
  }

  return _objc_release_x1(isKindOfClass, v4);
}

void sub_100100ECC(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4, v5);
  }
}

void sub_100101050(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4, v5);
  }
}

void sub_1001011D4(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4, v5);
  }
}

void sub_100101B28(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v4 = CUIKCalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification;
  v5 = [*(v3 + 8) model];
  [v2 removeObserver:v3 name:v4 object:v5];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:*(a1 + 32) name:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:0];
}

void sub_1001048F4(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = *(a1 + 32);
    if (isKindOfClass)
    {
      v4 = [*(a1 + 32) topViewController];
    }

    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[83058884] CalendarVC restoring presented vc %@", buf, 0xCu);
    if (isKindOfClass)
    {
    }
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100104A78;
  v10[3] = &unk_10020FC18;
  v7 = *(a1 + 56);
  v10[4] = *(a1 + 48);
  v8 = v7;
  v9 = *(a1 + 64);
  v11 = v8;
  v13 = v9;
  v12 = *(a1 + 32);
  [v5 presentViewController:v6 animated:0 completion:v10];
}

void sub_100104E08(id *a1)
{
  v2 = [a1[4] application];
  v3 = [v2 rootNavigationController];
  v4 = [v3 resetToYearView];

  v5 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104F20;
  block[3] = &unk_10020F290;
  v10 = *(a1 + 2);
  v6 = *(&v10 + 1);
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  dispatch_after(v5, &_dispatch_main_q, block);
}

void sub_100104F20(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104FE8;
  block[3] = &unk_10020F290;
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

void sub_100104FE8(uint64_t a1)
{
  v3 = [objc_opt_class() testName];
  [*(a1 + 40) startedTest:v3];
  v2 = [*(a1 + 48) pushCalendarViewControllerWithViewType:objc_msgSend(*(a1 + 32) andDate:{"_viewType"), *(a1 + 56)}];
}

void sub_100105120(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32)];
}

void sub_10010714C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) & 1) != 0 || (v4 = *(a1 + 32), *(v4 + 120)) && (v6[0] = _NSConcreteStackBlock, v6[1] = 3221225472, v6[2] = sub_100107240, v6[3] = &unk_10020EB00, v6[4] = v4, [UIView performWithoutAnimation:v6], (*(a1 + 48)))
  {
    if (*(a1 + 49) == 1 && (*(a1 + 50) & 1) == 0)
    {
      v5 = *(a1 + 32);
      if (v5[15])
      {
        [v5 setCurrentSidebarState:*(*(*(a1 + 40) + 8) + 24)];
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }
  }
}

id sub_100107240(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001072C0;
  v4[3] = &unk_10020F370;
  v4[4] = v1;
  return [v2 showCalendarsAnimated:0 completion:v4];
}

void sub_1001072C0(uint64_t a1, void *a2)
{
  [a2 restorePreservedState:*(*(a1 + 32) + 120)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = 0;
}

void sub_100107314(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 becomeFirstResponder];
  }

  [*(*(a1 + 40) + 16) setOverrideTraitCollection:*(a1 + 48) forChildViewController:*(*(a1 + 40) + 24)];
  [*(a1 + 40) layoutSearchControl];
  v5 = *(a1 + 64);
  v6 = *(v5 + 8);
  v7 = *(v6 + 24);
  v8 = v7 == 0;
  if (!v7)
  {
    if (!*(*(a1 + 40) + 120) || *(a1 + 72) != 1)
    {
      v8 = 0;
      goto LABEL_12;
    }

    *(v6 + 24) = 1;
    v5 = *(a1 + 64);
    v7 = *(*(v5 + 8) + 24);
  }

  if (v7 == 2)
  {
    if (*(a1 + 56))
    {
      v9 = [*(*(a1 + 40) + 16) splitBehavior];
      v5 = *(a1 + 64);
      if (v9 == 2)
      {
        *(*(v5 + 8) + 24) = 0;
        v5 = *(a1 + 64);
      }
    }
  }

LABEL_12:
  v10 = *(*(v5 + 8) + 24);
  if (v10)
  {
    v11 = *(a1 + 40);
    if (v10 != *(v11 + 144) || *(v11 + 120))
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10010754C;
      v18[3] = &unk_10020F3C0;
      v18[4] = v11;
      v18[5] = v5;
      v12 = objc_retainBlock(v18);
      v13 = v12;
      if (v8)
      {
        v14 = dispatch_time(0, 0);
        dispatch_after(v14, &_dispatch_main_q, v13);
      }

      else
      {
        (v12[2])(v12);
      }
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1001075D8;
    v16[3] = &unk_10020EC68;
    v16[4] = *(a1 + 40);
    v17 = v15;
    [UIView performWithoutAnimation:v16];
  }
}

id sub_10010754C(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1001075C8;
  v2[3] = &unk_10020F3C0;
  v3 = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void sub_1001078E4(uint64_t a1)
{
  if (*(a1 + 48) != 1 || fabs(*(a1 + 40)) != 180.0)
  {
    v2 = *(a1 + 32);
    v3 = [v2 traitCollection];
    [v2 setupSearchControlForTraitCollection:v3];

    [*(a1 + 32) layoutSearchControl];
  }

  [*(a1 + 32) updatePrimaryViewControllerToolbar];
  v4 = *(a1 + 32);
  v5 = v4[5];
  v7 = [v4 view];
  [v7 bounds];
  [v5 layoutForWidth:v6];
}

void sub_100107BA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 traitCollection];
  [v3 setAvatarViewVisible:{objc_msgSend(v2, "canShowAvatarViewWithTraitCollection:", v4)}];

  v5 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:0];
  v6 = [*(*(a1 + 32) + 8) paletteView];
  [v6 setShouldHideInlineFocusBanner:v5];
}

void sub_10010825C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8) model];
  v5 = [v4 eventStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010832C;
  v7[3] = &unk_10020F460;
  v8 = v3;
  v6 = v3;
  [v5 familyCalendarsWithCompletion:v7];
}

void sub_10010832C(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 count] == 1)
  {
    v3 = [v4 firstObject];
    [*(a1 + 32) showCalendar:v3 enableDoneInitially:0];
  }
}

id sub_100108C88(uint64_t a1)
{
  [*(*(a1 + 32) + 64) becomeFirstResponder];
  v2 = *(a1 + 32);

  return [v2 setNeedsUpdateOfSupportedInterfaceOrientations];
}

void sub_100109818(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) splitBehavior] == 1)
  {
    v2 = *(a1 + 32);
    v3 = v2[1];
    v4 = [v2 traitCollection];
    [v3 setAvatarViewVisible:{objc_msgSend(v2, "canShowAvatarViewWithTraitCollection:", v4)}];
  }

  v5 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:0];
  v6 = [*(*(a1 + 32) + 8) paletteView];
  [v6 setShouldHideInlineFocusBanner:v5];
}

void sub_100109900(uint64_t a1)
{
  [*(*(a1 + 32) + 32) cancelSearch];
  v2 = *(a1 + 32);
  if (*(v2 + 105) == 1)
  {
    [*(v2 + 8) setAvatarViewVisible:0];
  }

  v3 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 8) paletteView];
  [v4 setShouldHideInlineFocusBanner:v3];
}

uint64_t sub_1001099B8(uint64_t a1, void *a2)
{
  isKindOfClass = a2;
  v4 = isKindOfClass;
  if (*(*(a1 + 32) + 120))
  {
    v8 = isKindOfClass;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v4 = v8;
    if (isKindOfClass)
    {
      [*(a1 + 40) restorePreservedState:*(*(a1 + 32) + 120)];
      v5 = *(a1 + 32);
      v6 = *(v5 + 120);
      *(v5 + 120) = 0;

      v4 = v8;
    }
  }

  return _objc_release_x1(isKindOfClass, v4);
}

void sub_100109B58(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4, v5);
  }
}

void sub_100109DBC(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4, v5);
  }
}

void sub_10010A020(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v6;
    if ((isKindOfClass & 1) == 0)
    {
      v5 = 0;
    }

    (*(v4 + 16))(v4, v5);
  }
}

id sub_10010A55C(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 addSubview:*(*(a1 + 32) + 72)];

  v3 = *(*(a1 + 32) + 72);

  return [v3 setAlpha:0.0];
}

id sub_10010A5C8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10010A648;
  v2[3] = &unk_10020EB00;
  v2[4] = *(a1 + 32);
  return [UIView animateWithDuration:v2 animations:0.25];
}

void sub_10010ADC0(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) model];
  v3 = [v2 defaultCalendarForNewEvents];
  *(*(*(a1 + 40) + 8) + 24) = v3 != 0;

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010AE84;
  v4[3] = &unk_10020F3C0;
  v5 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v4);
}

void sub_10010AE84(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 24);
  v2 = [*(*(a1 + 32) + 40) newEventBarButtonItem];
  [v2 setEnabled:v1];
}

void sub_10010AF8C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) model];
  v3 = [v2 eventNotificationsForCurrentIdentityCount];

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010B040;
  v4[3] = &unk_10020EE00;
  v4[4] = *(a1 + 32);
  v4[5] = v3;
  dispatch_async(&_dispatch_main_q, v4);
}

id sub_10010B2A8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = *(a1 + 32);
  v4 = CUIKCalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification;
  v5 = [*(v3 + 8) model];
  [v2 removeObserver:v3 name:v4 object:v5];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:*(a1 + 32) name:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:0];

  v7 = *(a1 + 32);

  return [v7 updateErrorState];
}

void sub_10010D3BC(uint64_t a1)
{
  v2 = [*(a1 + 32) _getEvent];
  v3 = [objc_opt_class() testName];
  v4 = [*(a1 + 32) controller];
  [v4 showEvent:v2 animated:0 showMode:1 context:0];

  v5 = dispatch_time(0, 2000000000);
  v6 = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10010D500;
  v10[3] = &unk_10020F290;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v2;
  v12 = v7;
  v13 = v3;
  v8 = v3;
  v9 = v2;
  dispatch_after(v5, v6, v10);
}

void sub_10010D500(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010D5C8;
  block[3] = &unk_10020F290;
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

void sub_10010D5C8(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] controller];
  v4 = [v3 shownEventViewController];
  [v4 doneButtonTapped];

  v5 = dispatch_time(0, 2000000000);
  v6 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10010D6F8;
  v11[3] = &unk_10020F290;
  v7 = a1[5];
  v8 = a1[6];
  *&v9 = a1[7];
  *(&v9 + 1) = *v2;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  dispatch_after(v5, v6, v11);
}

void sub_10010D6F8(id *a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010D7CC;
  v7[3] = &unk_10020F290;
  v2 = a1 + 7;
  v3 = a1[4];
  v4 = a1[5];
  *&v5 = a1[6];
  *(&v5 + 1) = *v2;
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_10010D7CC(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v3)
  {
    [v2 startedTest:v4];
    v5 = [*(a1 + 56) controller];
    [v5 showEvent:*(a1 + 32) animated:0 showMode:1 context:0];

    v6 = UIApp;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10010D900;
    v10[3] = &unk_10020F2E0;
    v11 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v12 = v7;
    v13 = v8;
    [v6 installCACommitCompletionBlock:v10];
  }

  else
  {
    [v2 failedTest:v4 withFailure:@"No Events Loaded"];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 removeObserver:*(a1 + 56)];
  }
}

id sub_10010D900(uint64_t a1)
{
  [*(a1 + 32) finishedTest:*(a1 + 40)];
  v2 = *(a1 + 48);

  return [v2 cleanUp];
}

void sub_10010DFB0(uint64_t a1)
{
  v2 = [*(a1 + 32) _getEvent];
  v3 = [objc_opt_class() testName];
  if ([v2 isNew])
  {
    [*(a1 + 40) failedTest:v3 withFailure:@"Event failed to save"];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:*(a1 + 32)];
  }

  v5 = *(*(a1 + 32) + 56);
  v6 = [v2 startDate];
  v7 = [*(a1 + 32) model];
  v8 = [v7 eventStore];
  v9 = [v8 timeZone];
  v10 = [EKCalendarDate calendarDateWithDate:v6 timeZone:v9];
  [v5 selectDate:v10 animated:0];

  v11 = dispatch_time(0, 2000000000);
  v12 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10010E1B0;
  v15[3] = &unk_10020F290;
  v16 = v2;
  v17 = *(a1 + 40);
  v18 = v3;
  v19 = *(a1 + 32);
  v13 = v3;
  v14 = v2;
  dispatch_after(v11, v12, v15);
}

void sub_10010E1B0(id *a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010E284;
  v7[3] = &unk_10020F290;
  v2 = a1 + 7;
  v3 = a1[4];
  v4 = a1[5];
  *&v5 = a1[6];
  *(&v5 + 1) = *v2;
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_10010E284(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  v3 = dispatch_get_global_queue(0, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010E38C;
  v8[3] = &unk_10020F290;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = *(a1 + 56);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_after(v2, v3, v8);
}

void sub_10010E38C(id *a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010E460;
  v7[3] = &unk_10020F290;
  v2 = a1 + 7;
  v3 = a1[4];
  v4 = a1[5];
  *&v5 = a1[6];
  *(&v5 + 1) = *v2;
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, v7);
}

void sub_10010E460(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 addObserver:*(a1 + 56) selector:"_detailsDidAppear:" name:EKEventViewControllerDidAppearNotification object:0];

    if ([*(a1 + 56) shouldWaitForAttendeeLoad])
    {
      v3 = +[NSNotificationCenter defaultCenter];
      [v3 addObserver:*(a1 + 56) selector:"_attendeesDidFinishLoading:" name:EKEventDetailsDidFinishLoadingAttendeesNotification object:0];
    }

    [*(a1 + 40) startedTest:*(a1 + 48)];
    if ([*(a1 + 56) shouldWaitForAttendeeLoad])
    {
      v4 = *(a1 + 40);
      v5 = [*(a1 + 56) eventDetailsDidShowSubtestName];
      [v4 startedSubTest:v5 forTest:*(a1 + 48)];
    }

    v6 = [*(a1 + 56) controller];
    [v6 showEvent:*(a1 + 32) animated:0 showMode:1 context:0];
  }

  else
  {
    [*(a1 + 40) failedTest:*(a1 + 48) withFailure:@"No Events Loaded"];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:*(a1 + 56)];
  }
}

void sub_10010EAF8(uint64_t a1, double a2, double a3, double a4)
{
  UIRectInsetEdges();
  v7 = *(*(a1 + 40) + 8);
  v7[4] = v8;
  v7[5] = v9;
  v7[6] = v10;
  v7[7] = v11;
  v12 = *(a1 + 48);
  [*(a1 + 32) bounds];
  if (v12 == 1)
  {
    MinX = CGRectGetMinX(*&v13);
    [*(a1 + 32) paletteSafeAreaInsets];
    v19 = a2 + MinX + v18;
    v20 = [*(a1 + 32) traitCollection];
    v21 = EKUIPrefersLargerTextThanDefault();

    if (!v21)
    {
      v19 = v19 + 20.0;
    }

    v22 = v19 - CGRectGetMinX(*(*(*(a1 + 40) + 8) + 32));
    if (v22 > 0.0)
    {
      *(*(*(a1 + 40) + 8) + 32) = v22 + *(*(*(a1 + 40) + 8) + 32);
      if (v22 > a4)
      {
        *(*(*(a1 + 40) + 8) + 48) = *(*(*(a1 + 40) + 8) + 48) - (v22 - a4);
LABEL_11:
        UIRectInsetEdges();
        v29 = *(*(a1 + 40) + 8);
        v29[4] = v30;
        v29[5] = v31;
        v29[6] = v32;
        v29[7] = v33;
      }
    }
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v13);
    [*(a1 + 32) paletteSafeAreaInsets];
    v25 = MaxX - v24 - a2;
    v26 = [*(a1 + 32) traitCollection];
    v27 = EKUIPrefersLargerTextThanDefault();

    if (!v27)
    {
      v25 = v25 + -20.0;
    }

    v28 = CGRectGetMaxX(*(*(*(a1 + 40) + 8) + 32)) - v25;
    if (v28 > 0.0)
    {
      *(*(*(a1 + 40) + 8) + 32) = *(*(*(a1 + 40) + 8) + 32) - v28;
      if (v28 > a4)
      {
        goto LABEL_11;
      }
    }
  }
}

void sub_100110808(uint64_t a1, void *a2)
{
  [a2 CGRectValue];
  [*(a1 + 32) convertRect:*(*(a1 + 32) + 128) toView:?];
  CalRoundRectToScreenScale();
  v3 = *(a1 + 40);
  v4 = [NSValue valueWithCGRect:?];
  [v3 addObject:v4];
}

id sub_100110C50(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) todayButtonFont];
  [v3 setObject:v4 forKeyedSubscript:NSFontAttributeName];

  return v3;
}

void sub_100111644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10011165C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100111674(uint64_t a1)
{
  v2 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100111734;
  block[3] = &unk_1002119A8;
  block[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_100111734(uint64_t a1)
{
  v2 = [objc_opt_class() testName];
  v3 = [*(a1 + 32) application];
  [v3 startedTest:v2];

  v4 = [*(*(*(a1 + 48) + 8) + 40) switcherViewController];
  v5 = [v4 showRepliedSection];

  v6 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100111838;
  v8[3] = &unk_10020EC68;
  v9 = v6;
  v10 = v2;
  v7 = v2;
  [v9 installCACommitCompletionBlock:v8];
}

void sub_100111BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100111C10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100111CB8;
  v6[3] = &unk_10020ED60;
  v7 = v3;
  v5 = v3;
  [WeakRetained enumerateScrollViewSubviews:v6];
}

void sub_100113334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10011334C(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 maximumNumberOfMonths];
  if (result != *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_100113528(uint64_t a1)
{
  v2 = [*(a1 + 32) window];
  EKUIPushFallbackSizingContextWithViewHierarchy();
  [*(a1 + 32) _reloadAllViews];
  [*(a1 + 32) localeDidChange];
  [*(a1 + 32) enumerateScrollViewSubviews:&stru_100211A40];
  EKUIPopFallbackSizingContextWithViewHierarchy();
}

id sub_100113FFC(uint64_t a1)
{
  [*(*(a1 + 32) + 120) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  [*(a1 + 32) _updateBackButtonToSelectedDate];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = [v5 shouldAnimateTransitionsToMonthView];

  return [v5 _pushMonthViewControllerWithDate:v4 animated:v6];
}

id sub_100115964(uint64_t a1)
{
  result = [*(a1 + 32) setContentOffset:{*(*(a1 + 32) + 64), 0.0}];
  *(*(a1 + 32) + 144) = 1;
  *(*(a1 + 32) + 145) = 0;
  return result;
}

id sub_1001159C0(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  result = [*(a1 + 32) _didFinishDecelerating];
  *(*(a1 + 32) + 144) = 0;
  return result;
}

void sub_100116C90(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251CE8;
  qword_100251CE8 = v1;

  [qword_100251CE8 setCalculationType:0];
  [qword_100251CE8 addAnchoredValue:512 forWindowSizeWidth:109.0];
  [qword_100251CE8 addAnchoredValue:1024 forWindowSizeWidth:109.0];
  [qword_100251CE8 addAnchoredValue:2048 forWindowSizeWidth:109.0];
  v3 = qword_100251CE8;

  [v3 addAnchoredValue:4096 forWindowSizeWidth:146.0];
}

id sub_100117D4C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100117DD8;
  v3[3] = &unk_100211AA0;
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void sub_100117DD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 48) != 1)
  {
    goto LABEL_5;
  }

  [v3 frame];
  v4 = 0.0;
  if (CGRectGetMidX(v8) < *(a1 + 32))
  {
    v3 = v6;
    goto LABEL_6;
  }

  [v6 frame];
  MidX = CGRectGetMidX(v9);
  v3 = v6;
  if (MidX < *(a1 + 40))
  {
LABEL_5:
    v4 = 1.0;
  }

LABEL_6:
  [v3 setAlpha:v4];
}

void sub_100118790(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) date];
  [v2 setSelectedDate:v3 animated:1];

  v6 = [*(a1 + 32) navDelegate];
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) date];
  [v6 dayNavigationWeekScrollView:v4 selectedDateChanged:v5];
}

void sub_100118FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100119734(uint64_t a1)
{
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(*(a1 + 32) + 32) currentViewType]);
  v4 = [NSDictionary dictionaryWithObject:v2 forKey:@"_CalendarSceneManagerDidChangeDisplayedOccurrencesForTheFirstTimeNotification_CalendarContentViewType_Key"];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"_CalendarSceneManagerDidChangeDisplayedOccurrencesForTheFirstTimeNotification" object:*(a1 + 32) userInfo:v4];
}

void sub_100119A18(uint64_t a1)
{
  v2 = [*(a1 + 32) eventStore];
  v1 = [v2 refreshEverythingIfNecessary:0];
}

void *sub_10011ABC0(void *result)
{
  v1 = result[4];
  if (*(v1 + 45) == 1)
  {
    v2 = result;
    *(v1 + 45) = 0;
    v3 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[5];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CalendarSceneManager calling _completeStateRestoration (5 second timeout expired) for scene: %@", &v5, 0xCu);
    }

    return [v2[5] _completeStateRestoration];
  }

  return result;
}

id sub_10011AC84(uint64_t a1)
{
  +[CalMCSignpost endLaunchToView:extended:](CalMCSignpost, "endLaunchToView:extended:", [*(a1 + 32) currentViewType], 0);

  return [CalMCSignpost beginLaunch:1];
}

void sub_10011B718(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) eventStore];
  [v1 requestIntegrationCatchupSync];
}

void sub_10011D520(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_10011D54C(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[CalendarSceneManager _continueUserActivity:restoreSelectedOccurrence:restoreSelectedDate:restorationHandler:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Running delayed execution of [%s] that was previously requested at [%@] in the system time.", &v5, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _continueUserActivity:*(a1 + 40) restoreSelectedOccurrence:*(a1 + 64) restoreSelectedDate:*(a1 + 65) restorationHandler:*(a1 + 48)];
}

void sub_10011DE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011DEAC(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[CalendarSceneManager _openURL:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Running delayed execution of [%s] with URL [%@] that was previously requested at [%@] in the system time.", &v6, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _openURL:*(a1 + 32)];
}

uint64_t sub_10011DF88(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10011DFA0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v7 = EKUIEventDetailsFromTravelAdvisoryContextKey;
  v4 = [NSNumber numberWithBool:*(a1 + 56)];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [WeakRetained handleURL:v3 context:v5];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

void sub_10011E2D0(id a1)
{
  v1 = +[NSCharacterSet URLFragmentAllowedCharacterSet];
  v4 = [v1 mutableCopy];

  [v4 removeCharactersInString:{@"/?&:$+, ;=@"}];
  v2 = [v4 copy];
  v3 = qword_100251D20;
  qword_100251D20 = v2;
}

void sub_10011E794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10011E7C0(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[CalendarSceneManager windowScene:performActionForShortcutItem:completionHandler:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Running delayed execution of [%s] with shortcut item [%@] that was previously requested at [%@] in the system time.", &v6, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained windowScene:*(a1 + 48) performActionForShortcutItem:*(a1 + 32) completionHandler:*(a1 + 56)];
}

void sub_10011EAEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 - 104));
  _Unwind_Resume(a1);
}

void sub_10011EB34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v8 = kCalUILogHandle;
    if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v9 = "Will not dismiss the splash screen view controller because 'strongSelf' is nil.";
    v10 = v8;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, buf, 2u);
    goto LABEL_11;
  }

  v4 = kCalUILogHandle;
  if (!v3)
  {
    if (!os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v9 = "Will not dismiss the splash screen view controller because 'strongSplashScreenViewController' is nil.";
    v10 = v4;
    goto LABEL_10;
  }

  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Dismissing the splash screen view controller: [%@]", buf, 0xCu);
  }

  v5 = [v3 presentingViewController];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011ECF4;
  v11[3] = &unk_10020F2E0;
  v6 = v3;
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v14 = WeakRetained;
  [v5 dismissViewControllerAnimated:1 completion:v11];

LABEL_11:
}

id sub_10011ECF4(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Completed dismissal of the splash screen view controller: [%@]", &v6, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:*(a1 + 40) name:@"_CalendarSceneManagerDidCompleteSplashScreenNotification" object:0];

  return [*(a1 + 48) _splashScreenDidDismissShouldNotify:1];
}

uint64_t sub_10011EDD4(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = 138412290;
    v7 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Completed presentation of the splash screen view controller: [%@]", &v6, 0xCu);
  }

  return EKUIPopFallbackSizingContextWithViewHierarchy();
}

id sub_10011F088(uint64_t a1)
{
  v2 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Completed dismissal of splash screen view controller.", v4, 2u);
  }

  return [*(a1 + 32) _splashScreenDidDismissShouldNotify:0];
}

void sub_10011F194(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSNumber numberWithUnsignedChar:CalDefaultTimeZoneSettingIsAutomatic()];
  [v3 setObject:v4 forKeyedSubscript:@"timezoneSupportIsEnabled"];

  v5 = +[CDBPreferences shared];
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 get_kCalPreferredDaysToSyncKey]);
  [v3 setObject:v6 forKeyedSubscript:@"numberOfDaysToSync"];

  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) currentViewType]);
  [v3 setObject:v7 forKeyedSubscript:@"viewType"];
}

uint64_t sub_10011F368()
{
  if (!qword_100251D30)
  {
    qword_100251D30 = _sl_dlopen();
  }

  return qword_100251D30;
}

uint64_t sub_10011F438()
{
  result = _sl_dlopen();
  qword_100251D30 = result;
  return result;
}

Class sub_10011F4AC(uint64_t a1)
{
  v3 = 0;
  if (!sub_10011F368())
  {
    sub_100170C94(&v3);
  }

  result = objc_getClass("CalendarDiagnosticsUIViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100170C18();
  }

  qword_100251D38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10011FE8C(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  v3 = [v2 view];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) monthViewController];
  v5 = [v4 view];
  [v5 frame];
  v7 = v6;

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = [*(a1 + 32) monthViewController];
  v12 = [v11 view];
  [v12 setFrame:{v8, v9, v7, v10}];

  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = [*(a1 + 32) scrubber];
  [v17 setFrame:{v13, v14, v15, v16}];

  v19 = +[CompactMonthViewController dividedModeBackgroundColor];
  v18 = [*(a1 + 32) scrubber];
  [v18 setBackgroundColor:v19];
}

void sub_10011FFD8(uint64_t a1)
{
  v1 = [*(a1 + 32) scrubber];
  [v1 removeFromSuperview];
}

void sub_10012001C(uint64_t a1)
{
  [*(a1 + 32) weekDayInitialsMonth];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) paletteView];
  v11 = [v10 dayInitialsHeaderView];
  [v11 setFrame:{v3, v5, v7, v9}];

  v13 = [*(a1 + 32) paletteView];
  v12 = [v13 dateLabel];
  [v12 setAlpha:1.0];
}

void sub_100120104(uint64_t a1)
{
  v1 = [*(a1 + 32) allDayView];
  [v1 setAlpha:0.0];
}

void sub_100120A4C(uint64_t a1)
{
  v2 = [*(a1 + 32) scrubber];
  v1 = [objc_opt_class() dividedMonthPaletteBackgroundColor];
  [v2 setBackgroundColor:v1];
}

void sub_100120ABC(uint64_t a1)
{
  [*(a1 + 32) weekDayInitialsDay];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) paletteView];
  v11 = [v10 dayInitialsHeaderView];
  [v11 setFrame:{v3, v5, v7, v9}];

  v13 = [*(a1 + 32) paletteView];
  v12 = [v13 animatableDateLabel];
  [v12 setAlpha:0.0];
}

void sub_100120B88(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  v3 = [v2 view];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) monthViewController];
  v5 = [v4 view];
  [v5 frame];
  v7 = v6;

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = [*(a1 + 32) monthViewController];
  v11 = [v12 view];
  [v11 setFrame:{v8, v9, v7, v10}];
}

void sub_100120C70(uint64_t a1)
{
  v2 = [*(a1 + 32) monthViewController];
  v3 = [v2 view];
  [v3 frame];
  v5 = v4;

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = [*(a1 + 32) monthViewController];
  v9 = [v10 view];
  [v9 setFrame:{v6, v7, v5, v8}];
}

void sub_100120D2C(uint64_t a1)
{
  v2 = [*(a1 + 32) bottomView];
  v3 = [v2 layer];
  v4 = *&CATransform3DIdentity.m33;
  v19[4] = *&CATransform3DIdentity.m31;
  v19[5] = v4;
  v5 = *&CATransform3DIdentity.m43;
  v19[6] = *&CATransform3DIdentity.m41;
  v19[7] = v5;
  v6 = *&CATransform3DIdentity.m13;
  v19[0] = *&CATransform3DIdentity.m11;
  v19[1] = v6;
  v7 = *&CATransform3DIdentity.m23;
  v19[2] = *&CATransform3DIdentity.m21;
  v19[3] = v7;
  [v3 setTransform:v19];

  v8 = [*(a1 + 32) bottomView];
  [v8 frame];
  v10 = v9;
  v12 = v11;

  [*(a1 + 32) dayViewDayLocation];
  v14 = v13;
  v16 = v15;
  v17 = [*(a1 + 32) bottomView];
  [v17 setFrame:{v14, v16, v10, v12}];

  v18 = [*(a1 + 32) bottomView];
  [v18 setAlpha:1.0];
}

void sub_10012175C(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_queue_create("dayNavigationViewController.loadOccurrenceCacheQueue", attr);
  v3 = qword_100251D40;
  qword_100251D40 = v2;
}

void sub_1001217E0(uint64_t a1)
{
  [*(*(a1 + 32) + 8) numberOfDaysWithCachedOccurrences];
  [*(*(a1 + 32) + 8) fetchDaysStartingFromSection:objc_msgSend(*(*(a1 + 32) + 8) sectionsToLoadInBothDirections:{"sectionForCachedOccurrencesOnDate:", *(a1 + 40)), 8}];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100121898;
  block[3] = &unk_10020EB00;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100121898(uint64_t a1)
{
  *(*(a1 + 32) + 25) = 0;
  v1 = [*(*(a1 + 32) + 16) weekScrollView];
  [v1 updateDayBadges];
}

void sub_10012196C(uint64_t a1)
{
  v2 = [*(a1 + 32) cellFactory];
  [v2 localeChanged];

  v3 = [*(*(a1 + 32) + 8) calendar];
  [*(*(a1 + 32) + 16) setCalendar:v3];
}

void sub_100122470(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  [v2 setToolbarHidden:objc_msgSend(*(a1 + 32) animated:{"allowsOverriddenToolbarItems") ^ 1, 1}];

  v3 = [*(a1 + 32) view];
  [v3 setNeedsLayout];
}

void sub_1001229E8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251D50;
  qword_100251D50 = v1;

  [qword_100251D50 setCalculationType:1];
  [qword_100251D50 setRoundingType:4];
  [qword_100251D50 addAnchoredValue:2048 forWindowSizeWidth:3.0];
  [qword_100251D50 addAnchoredValue:4096 forWindowSizeWidth:4.0];
  v3 = qword_100251D50;

  [v3 addAnchoredValue:0x40000000 forWindowSizeWidth:6.0];
}

id sub_10012320C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  *(v2 + 232) = 0;

  v4 = *(a1 + 32);

  return [v4 _updateYearNumbersAnimated:0 withForce:1];
}

void sub_100123420(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 232);
  v7 = a2;
  v4 = [v7 calendarDate];
  v5 = [v3 compare:v4];

  v6 = *(a1 + 40);
  if (v5)
  {
    [v7 showYearNumberAnimated:v6];
  }

  else
  {
    [v7 hideYearNumberAnimated:v6];
  }
}

void sub_100123E58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained selectSegmentIndex:*(a1 + 40)];
}

void sub_100126744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100126770(uint64_t a1, void *a2)
{
  v8 = [a2 traitCollection];
  v4 = [v8 verticalSizeClass];
  if (v4 == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [objc_opt_class() dividedModeBackgroundColor];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v5 = ;
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = [v6 scrollView];
  [v7 setBackgroundColor:v5];

  if (v4 == 1)
  {

    v5 = WeakRetained;
  }
}

id sub_100128260(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 344) == 1)
  {
    *(v1 + 344) = 0;
    return [*(result + 4) _loadEventsForAllSubviews];
  }

  return result;
}

void sub_100128920(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [v4[1] selectedDate];
  v9 = [v4 subviewForDate:v5];

  v6 = *(a1 + 32);
  v7 = [v6[1] selectedDate];
  [v6 _setSelectedDay:v7 onMonthWeekView:v9 animated:1];

  if ([*(a1 + 32) _viewingEventDetailsColumn] && (objc_msgSend(*(a1 + 32), "_shouldDisplayThreeColumns") & 1) == 0)
  {
    [*(a1 + 32) _autoSelectEvent];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, a2);
  }
}

void sub_100128BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100128BF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100128C10(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  [*(a1 + 32) locationInView:v11];
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 bounds];
    v13.x = v8;
    v13.y = v10;
    if (CGRectContainsPoint(v14, v13) && ([v11 isHidden] & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_100128E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100128E98(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  [*(a1 + 32) locationInView:v11];
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v11 bounds];
    v13.x = v8;
    v13.y = v10;
    if (CGRectContainsPoint(v14, v13))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_1001291A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001291C0(uint64_t a1, void *a2, _BYTE *a3)
{
  v23 = a2;
  v6 = [*(a1 + 32) scrollView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [*(a1 + 32) scrollView];
  [v11 contentOffset];
  v13 = v12;
  v14 = [*(a1 + 32) scrollView];
  [v14 safeAreaInsets];
  v16 = v13 + v15;

  v17 = [*(a1 + 32) view];
  [v17 frame];
  v19 = v18;
  v20 = [*(a1 + 32) scrollView];
  [v20 safeAreaInsets];
  v22 = v19 - v21;

  v25.origin.x = v8;
  v25.origin.y = v16;
  v25.size.width = v10;
  v25.size.height = v22;
  if (CGRectContainsPoint(v25, *(a1 + 48)))
  {
    [v23 frame];
    if (CGRectContainsPoint(v26, *(a1 + 48)))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a3 = 1;
    }
  }
}

void sub_100129EA8(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 calendarDate];
  [v3 absoluteTime];
  v5 = v4;

  v6 = [v13 endCalendarDate];
  [v6 absoluteTime];
  v8 = v7;

  if (v5 <= *(a1 + 40) && v8 >= *(a1 + 48))
  {
    v9 = *(a1 + 32);
    v10 = [v13 calendarDate];
    v11 = [v13 endCalendarDate];
    v12 = [v9 _loadEventsForStartDate:v10 endDate:v11];

    if (v12)
    {
      [v13 setEventData:v12 animated:{objc_msgSend(*(a1 + 32), "_shouldAnimateDots")}];
    }
  }
}

void sub_10012A0A8(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = [v7 calendarDate];
  v5 = [v7 endCalendarDate];
  v6 = [v3 _loadEventsForStartDate:v4 endDate:v5];

  if (v6)
  {
    [v7 setEventData:v6 animated:{objc_msgSend(*(a1 + 32), "_shouldAnimateDots")}];
  }
}

void sub_10012A9C8(uint64_t a1)
{
  [*(*(a1 + 32) + 8) numberOfDaysWithCachedOccurrences];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012AA64;
  block[3] = &unk_10020EB00;
  block[4] = *(a1 + 32);
  dispatch_sync(&_dispatch_main_q, block);
}

void sub_10012B260(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 297);
  v3 = [*(a1 + 40) event];
  [v2 selectEvent:v3 animated:*(a1 + 48)];
}

id sub_10012B2C8(uint64_t a1)
{
  if (([*(a1 + 32) _shouldDisplayThreeColumns] & 1) == 0)
  {
    [*(a1 + 32) _setPaletteDisplaced];
    [*(*(a1 + 32) + 361) setAlpha:1.0];
  }

  v2 = *(a1 + 32);

  return [v2 viewWillLayoutSubviews];
}

id sub_10012B490(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 _setPaletteDisplaced];
    v4 = 1.0;
  }

  else
  {
    [v3 _resetPaletteState];
    v4 = 0.0;
  }

  v5 = *(*(a1 + 32) + 361);

  return [v5 setAlpha:v4];
}

void *sub_10012B4F4(void *result)
{
  if ((result[5] & 1) == 0)
  {
    return [*(result[4] + 361) setHidden:1];
  }

  return result;
}

id sub_10012B6F4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 377) presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    [*(*(a1 + 32) + 377) dismissViewControllerWithTransition:0 completion:0];
  }

  return [*(*(a1 + 32) + 377) popToRootViewControllerAnimated:0];
}

void sub_10012C8A4(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 297) defaultEventForSelectedDate];
  [*(*(a1 + 32) + 8) setSelectedOccurrence:v4];
  if (v4)
  {
    [*(*(a1 + 32) + 297) scrollToSelectedDateAnimated:0];
    v2 = [*(a1 + 32) augmentEventDetailsContext:0];
    v3 = [EKEventViewController eventDetailViewControllerWithEvent:v4 delegate:*(a1 + 32) context:v2 canvasView:2];
    [*(a1 + 32) _slideToShowEventDetails:v3 animated:0];
  }
}

void sub_10012CB08(id *a1)
{
  [a1[4] invalidateManagedNavigationController];
  [a1[5] setDelegate:0];
  v2 = [a1[6] startCalendarDate];
  [*(a1[4] + 1) setSelectedDate:v2];

  v3 = a1[4];
  v4 = [a1[6] startDate];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012CC48;
  v11[3] = &unk_100211E98;
  v10 = a1[4];
  v5 = a1[6];
  v6 = a1[5];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v10;
  *(&v9 + 1) = v5;
  v12 = v9;
  v13 = v8;
  [v3 showDate:v4 animated:1 completionBlock:v11];
}

id sub_10012CC48(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) context];
    [v3 _showDetailsForEvent:v4 animated:1 showMode:1 context:v5];
  }

  v6 = *(a1 + 56);

  return [v6 setDisableTodayPulse:0];
}

void sub_10012CF24(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012CFBC;
  block[3] = &unk_100211EC0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = v3;
  v5 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_10012CFBC(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setEditorShowTransition:6];
    v2 = *(a1 + 48);
    if (v2 == 3)
    {
      *(*(a1 + 40) + 354) = 1;
      [*(a1 + 32) editButtonTapped];
    }

    else if (v2 == 2)
    {
      [*(a1 + 32) openAttendeesDetailItem];
    }
  }

  v3 = *(*(a1 + 40) + 289);

  return [v3 deselectAllRowsAnimated:0];
}

id sub_10012D12C(uint64_t a1)
{
  [*(a1 + 32) invalidateManagedNavigationController];
  [*(a1 + 40) setDelegate:0];
  v2 = *(*(a1 + 32) + 8);

  return [v2 setSelectedOccurrence:0];
}

void sub_10012D504(uint64_t a1)
{
  [*(a1 + 32) setDisableTodayPulse:0];
  v2 = [*(a1 + 40) model];
  [v2 setSelectedDate:*(a1 + 48)];

  byte_100251D70 = 0;
}

uint64_t sub_10012F8B8(uint64_t a1)
{
  [*(a1 + 32) _animationComplete];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_10012FA24(uint64_t a1)
{
  [*(a1 + 32) _animationComplete];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100130510(uint64_t a1)
{
  [*(*(a1 + 32) + 80) frame];
  v3 = v2;
  [*(*(a1 + 32) + 80) frame];
  v5 = v4;
  [*(*(a1 + 32) + 80) frame];
  [*(*(a1 + 32) + 80) setFrame:{v3, v5}];
  [*(*(a1 + 32) + 80) layoutSubviews];
  v6 = [*(*(a1 + 32) + 80) containingPalette];
  [v6 frame];
  v8 = v7;
  v9 = [*(*(a1 + 32) + 80) containingPalette];
  [v9 frame];
  v11 = v10;
  [*(*(a1 + 32) + 80) frame];
  v13 = v12;
  [*(*(a1 + 32) + 80) frame];
  v15 = v14;
  v16 = [*(*(a1 + 32) + 80) containingPalette];
  [v16 setFrame:{v8, v11, v13, v15}];

  [*(*(a1 + 32) + 80) frame];
  v18 = v17;
  v19 = [*(*(a1 + 32) + 80) containingPalette];
  [v19 setPreferredHeight:v18];

  [*(*(a1 + 32) + 80) setAlpha:0.0];
  v20 = [*(*(a1 + 32) + 80) dateLabel];
  [v20 setAlpha:0.0];

  v21 = [*(*(a1 + 32) + 80) dayInitialsHeaderView];
  [v21 setAlpha:0.0];
}

id sub_1001306FC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) view];
  [*(a1 + 32) _calculateYearFrameForYearViewZoom];
  scaleViewToFrame();

  scaleViewToFrame();
  scaleViewToFrame();
  v3 = [*(*(a1 + 32) + 64) view];
  [v3 setAlpha:1.0];

  v4 = *(a1 + 32);
  if (*(v4 + 32))
  {
    v5 = *(v4 + 168);
    v6 = -*(v4 + 192);
    [*(v4 + 32) frame];
    [*(*(a1 + 32) + 32) setFrame:{v5, v6}];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 40))
  {
    v7 = *(v4 + 200);
    [v4 bounds];
    v9 = v8;
    [*(*(a1 + 32) + 40) frame];
    [*(*(a1 + 32) + 40) setFrame:{v7, v9}];
    v4 = *(a1 + 32);
  }

  if (*(v4 + 48))
  {
    v10 = *(v4 + 232);
    [v4 bounds];
    v11 = *(a1 + 32);
    v13 = v12 + *(v11 + 224);
    [*(v11 + 48) frame];
    [*(*(a1 + 32) + 48) setFrame:{v10, v13}];
    v4 = *(a1 + 32);
  }

  result = *(v4 + 320);
  if (result)
  {
    [result frame];
    v15 = *(*(a1 + 32) + 320);
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);

    return [v15 setFrame:{v16, v17}];
  }

  return result;
}

id sub_1001308F0(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setAlpha:1.0];
  [*(*(a1 + 32) + 24) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 8);

  return [v2 setAlpha:0.0];
}

void sub_100130D0C(uint64_t a1)
{
  [*(*(a1 + 32) + 72) updatePalette:*(*(a1 + 32) + 80)];
  [*(*(a1 + 32) + 80) sizeToFit];
  [*(*(a1 + 32) + 80) layoutSubviews];
  v2 = [*(*(a1 + 32) + 80) containingPalette];
  [v2 frame];
  v4 = v3;
  v5 = [*(*(a1 + 32) + 80) containingPalette];
  [v5 frame];
  v7 = v6;
  [*(*(a1 + 32) + 80) frame];
  v9 = v8;
  [*(*(a1 + 32) + 80) frame];
  v11 = v10;
  v12 = [*(*(a1 + 32) + 80) containingPalette];
  [v12 setFrame:{v4, v7, v9, v11}];

  [*(*(a1 + 32) + 80) frame];
  v14 = v13;
  v15 = [*(*(a1 + 32) + 80) containingPalette];
  [v15 setPreferredHeight:v14];

  [*(*(a1 + 32) + 80) setAlpha:1.0];
  v16 = [*(*(a1 + 32) + 80) dateLabel];
  [v16 setAlpha:1.0];

  v17 = [*(*(a1 + 32) + 80) dayInitialsHeaderView];
  [v17 setAlpha:1.0];
}

id sub_100130ED8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) view];
  [*(a1 + 32) _calculateMonthFrameForYearViewZoom];
  scaleViewToFrame();

  scaleViewToFrame();
  scaleViewToFrame();
  v3 = [*(*(a1 + 32) + 64) view];
  [v3 setAlpha:0.0];

  v4 = *(a1 + 32);
  if (v4[4])
  {
    scaleViewToFrame();
    [*(*(a1 + 32) + 32) setAlpha:1.0];
    v4 = *(a1 + 32);
  }

  if (v4[5])
  {
    scaleViewToFrame();
    [*(*(a1 + 32) + 40) setAlpha:1.0];
    v4 = *(a1 + 32);
  }

  result = v4[6];
  if (result)
  {
    scaleViewToFrame();
    v6 = *(*(a1 + 32) + 48);

    return [v6 setAlpha:1.0];
  }

  return result;
}

id sub_100131068(double *a1)
{
  result = *(*(a1 + 4) + 320);
  if (result)
  {
    [result frame];
    v3 = *(*(a1 + 4) + 320);
    v4 = a1[5];
    v5 = a1[6];

    return [v3 setFrame:{v4, v5}];
  }

  return result;
}

id sub_1001310C8(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setAlpha:0.0];
  [*(*(a1 + 32) + 24) setAlpha:1.0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 328);
  v4 = *(v2 + 8);

  return [v4 setAlpha:v3];
}

id sub_100134EB0(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [v3 indexOfObjectPassingTest:&stru_100211F00];
  if (v6)
  {
    v7 = v6;
    v8 = [v3 objectAtIndexedSubscript:v6];
    v18 = a1[4];
    v9 = [NSArray arrayWithObjects:&v18 count:1];
    v10 = [v8 menuByReplacingChildren:v9];

    [v4 setObject:v10 atIndexedSubscript:v7];
  }

  else
  {
    [v5 addObject:a1[4]];
  }

  [v5 addObject:a1[5]];
  [v5 addObject:a1[6]];
  v11 = [v3 indexOfObjectPassingTest:&stru_100211F20];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 addObject:a1[7]];
    [v5 addObject:a1[8]];
  }

  else
  {
    v12 = [v3 objectAtIndexedSubscript:v11];
    v13 = [v12 children];
    v14 = [v13 mutableCopy];

    [v14 addObject:a1[7]];
    [v14 addObject:a1[8]];
    [v14 addObject:a1[9]];
    [v14 addObject:a1[10]];
    [v14 addObject:a1[11]];
    [v14 addObject:a1[12]];
    v15 = [v12 menuByReplacingChildren:v14];
    [v4 setObject:v15 atIndexedSubscript:v11];
  }

  v16 = [UIMenu menuWithTitle:&stru_1002133B8 image:0 identifier:@"com.apple.mobilecal.edit" options:1 children:v5];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 addObject:v16];
  }

  else
  {
    [v4 insertObject:v16 atIndex:v11 + 1];
  }

  return v4;
}

BOOL sub_100135140(id a1, UIMenuElement *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIMenuElement *)v4 identifier];
    v6 = [v5 isEqualToString:UIMenuFind];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL sub_1001351C0(id a1, UIMenuElement *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UIMenuElement *)v4 identifier];
    v6 = [v5 isEqualToString:UIMenuStandardEdit];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_100135240(uint64_t a1)
{
  v39 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained allSceneManagers];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v3;
  v34 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v34)
  {
    v4 = 0;
    v33 = *v46;
    do
    {
      v5 = 0;
      do
      {
        if (*v46 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v5;
        v36 = v4;
        v6 = *(*(&v45 + 1) + 8 * v5);
        v7 = [NSString stringWithFormat:@"Scene #%ld", v4];
        v8 = +[NSMutableDictionary dictionary];
        v40 = v7;
        [v39 setObject:v8 forKeyedSubscript:v7];

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v9 = [v6 model];
        v10 = [v9 selectedCalendars];

        v37 = v10;
        v11 = [v10 countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v11)
        {
          v12 = v11;
          v38 = *v42;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v42 != v38)
              {
                objc_enumerationMutation(v37);
              }

              v14 = *(*(&v41 + 1) + 8 * i);
              v49[0] = @"calendarIdentifier";
              v15 = [v14 calendarIdentifier];
              v16 = v15;
              if (v15)
              {
                v17 = v15;
              }

              else
              {
                v17 = &stru_1002133B8;
              }

              v50[0] = v17;
              v49[1] = @"isIgnoringEventAlerts";
              if ([v14 isIgnoringEventAlerts])
              {
                v18 = @"YES";
              }

              else
              {
                v18 = @"NO";
              }

              v50[1] = v18;
              v49[2] = @"type";
              v19 = +[EKCalendar typeDescription:](EKCalendar, "typeDescription:", [v14 type]);
              v50[2] = v19;
              v49[3] = @"color";
              v20 = [v14 colorString];
              v21 = v20;
              if (v20)
              {
                v22 = v20;
              }

              else
              {
                v22 = &stru_1002133B8;
              }

              v50[3] = v22;
              v49[4] = @"allowsModify";
              if ([v14 allowsContentModifications])
              {
                v23 = @"YES";
              }

              else
              {
                v23 = @"NO";
              }

              v50[4] = v23;
              v49[5] = @"sourceIdentifier";
              v24 = [v14 source];
              v25 = [v24 sourceIdentifier];
              v26 = v25;
              if (v25)
              {
                v27 = v25;
              }

              else
              {
                v27 = &stru_1002133B8;
              }

              v50[5] = v27;
              v28 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:6];
              v29 = [v39 objectForKeyedSubscript:v40];
              v30 = [v14 calendarIdentifier];
              [v29 setObject:v28 forKeyedSubscript:v30];
            }

            v12 = [v37 countByEnumeratingWithState:&v41 objects:v51 count:16];
          }

          while (v12);
        }

        v4 = v36 + 1;
        v5 = v35 + 1;
      }

      while ((v35 + 1) != v34);
      v34 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v34);
  }

  return v39;
}

uint64_t sub_100135620(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:CUIKStateCaptureNotification object:*(a1 + 32) userInfo:0];

  return 0;
}

uint64_t sub_100136404(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10013641C(uint64_t a1, uint64_t a2)
{
  v4 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Finished updating snapshot for scene %@ with result: %d", &v9, 0x12u);
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:*(*(*(a1 + 48) + 8) + 40)];
  }

  if (!a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  dispatch_group_leave(*(a1 + 40));
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void sub_100136540(void *a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v4 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v5 = a1[4];
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Got occurrences changed notification before the timeout for scene %@", &v6, 0xCu);
    }

    *(*(a1[7] + 8) + 24) = 1;
    (*(a1[5] + 16))();
  }
}

uint64_t sub_100136630(uint64_t result)
{
  if ((*(*(*(result + 48) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = kCalUILogHandle;
    if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEBUG))
    {
      v3 = v1[4];
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Timed out before we got the occurrences change notification for scene %@", &v4, 0xCu);
    }

    *(*(v1[7] + 8) + 24) = 1;
    return (*(v1[5] + 16))();
  }

  return result;
}

uint64_t sub_10013670C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24));
  }

  return result;
}

void sub_100136B28(uint64_t a1)
{
  v2 = [*(a1 + 32) eventStore];
  v1 = [v2 refreshEverythingIfNecessary:0];
}

void sub_100137730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100137754(uint64_t a1)
{
  +[EKUILargeTextUtilities clearCache];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained tableView];
  [v2 reloadData];
}

void sub_1001379C8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 refreshIfNeeded];
  if ([v3 hasRows])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_100138478(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  v4 = [*(v2 + 8) selectedOccurrence];
  LOBYTE(v3) = [v3 isEqual:v4];

  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = 0;

    v7 = [*(a1 + 32) tableView];
    v8 = [*(a1 + 32) tableView];
    v9 = [v8 indexPathForSelectedRow];
    [v7 deselectRowAtIndexPath:v9 animated:1];
  }

  [*(*(a1 + 32) + 72) invalidate];
  v10 = *(a1 + 32);
  v11 = *(v10 + 72);
  *(v10 + 72) = 0;
}

id sub_1001393EC(uint64_t a1)
{
  v1 = [[EKUIReadonlyEventViewController alloc] initWithEvent:*(a1 + 32)];
  [v1 setAllowsCalendarPreview:1];
  [v1 setInlineDayViewRespectsSelectedCalendarsFilter:0];
  [v1 setCalendarPreviewIsInlineDayView:1];

  return v1;
}

id sub_100139458(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 cellForRowAtIndexPath:*(a1 + 40)];

  v16 = *(a1 + 48);
  v4 = [NSArray arrayWithObjects:&v16 count:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001395F4;
  v11[3] = &unk_1002121C0;
  v5 = *(a1 + 32);
  v12 = v3;
  v13 = v5;
  v6 = *(a1 + 72);
  v14 = *(a1 + 56);
  v15 = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100139680;
  v10[3] = &unk_10020EC18;
  v10[4] = v5;
  v7 = v3;
  v8 = [EKUIContextMenuActions menuForEvents:v4 presentationController:v5 isEditMenu:0 overrideActionBlock:v11 completionBlock:v10];

  return v8;
}