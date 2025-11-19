BOOL sub_1001395F4(uint64_t a1, uint64_t a2)
{
  v3 = [EKUIContextMenuActions statusButtonsActionFromContextMenuAction:a2];
  v4 = v3 & 7;
  if ((v3 & 7) != 0)
  {
    v5 = v3;
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) tableView];
    [v6 eventStatusButtonsView:0 didSelectAction:v5 sourceView:v7 sourceRect:0 appliesToAll:0 ifCancelled:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }

  return v4 != 0;
}

id *sub_100139680(id *result, uint64_t a2)
{
  if (a2 == 8)
  {
    return [result[4] attemptDisplayReviewPrompt];
  }

  return result;
}

void sub_100139974(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100139A08;
  v2[3] = &unk_10020EC68;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  [UIView performWithoutAnimation:v2];
}

void sub_100139A08(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 104));
  [WeakRetained inboxNewSectionViewController:*(a1 + 32) inspectEvent:*(a1 + 40)];
}

void sub_10013A000(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSIndexPath indexPathForRow:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

void sub_10013A064(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSIndexPath indexPathForRow:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

void sub_10013A0C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSIndexPath indexPathForRow:a2 inSection:*(a1 + 40)];
  [v2 addObject:v3];
}

void sub_10013AFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10013B01C(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTodayButtonPosition];

  if ([v5 horizontalSizeClass] == 2)
  {
    v7 = [v18 traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (v8 == 1)
    {
      v9 = objc_loadWeakRetained((a1 + 32));
      v10 = [v9 viewControllers];
      v11 = [v10 count];

      if (v11 < 2)
      {
        goto LABEL_10;
      }

      v12 = objc_loadWeakRetained((a1 + 32));
      [v12 _hideSearchBar];
      goto LABEL_9;
    }
  }

  if ([v5 horizontalSizeClass] == 1)
  {
    v13 = [v18 traitCollection];
    v14 = [v13 horizontalSizeClass];

    if (v14 == 2)
    {
      v15 = objc_loadWeakRetained((a1 + 32));
      v16 = [v15 viewControllers];
      v17 = [v16 count];

      if (v17 >= 2)
      {
        v12 = objc_loadWeakRetained((a1 + 32));
        [v12 _showSearchBar];
LABEL_9:
      }
    }
  }

LABEL_10:
}

void sub_10013B3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013B3F0(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 48) = *(a1 + 48);
  v2 = [*(a1 + 32) view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();

  if (IsRegularInViewHierarchy)
  {
    *(*(*(a1 + 40) + 8) + 32) = 0;
    v4 = [*(a1 + 32) searchBar];
    [v4 setFrame:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];

    v5 = [*(a1 + 32) searchResultsViewController];
    v6 = [*(a1 + 32) searchBar];
    v7 = [*(a1 + 32) searchBar];
    [v7 frame];
    [v5 _searchBar:v6 proposedSearchFieldFrame:?];
    v9 = v8;
    v11 = v10;

    v12 = [*(a1 + 32) searchBar];
    v13 = [v12 searchField];
    [v13 frame];
    v15 = v14;

    v16 = [*(a1 + 32) searchBar];
    v17 = [v16 searchField];
    [v17 setFrame:{v9, 8.0, v11, v15}];

    v18 = [*(a1 + 32) view];
    EKUIApplicationFrame();
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = *(a1 + 72);
    v26 = [*(a1 + 32) searchBar];
    v27 = [v26 searchField];
    v28 = [v27 superview];
    [v28 setFrame:{v20, v22, v24, v25}];

    v29 = *(a1 + 72);
    v30 = *(a1 + 56) - v29 + -20.0;
    v31 = v29 + 1.0;
    EKUIWidthForWindowSizeParadigm();
    v33 = v32;
    v34 = [*(a1 + 32) parentViewController];
    v35 = [v34 view];
    [v35 frame];
    Width = CGRectGetWidth(v49);

    v37 = *(a1 + 32);
    if (Width <= v33)
    {
      v47 = [v37 parentViewController];
      v45 = [v47 view];
      v46 = [v45 superview];
      [v46 setFrame:{v9, v31, v11, v30}];
    }

    else
    {
      v38 = [v37 view];
      [v38 setFrame:{v9, v31, v11, v30}];

      v39 = [*(a1 + 32) view];
      v40 = [v39 layer];
      [v40 setMasksToBounds:1];

      v41 = [*(a1 + 32) view];
      v42 = [v41 layer];
      [v42 setCornerRadius:4.0];

      v47 = [*(a1 + 32) view];
      [v47 setNeedsDisplay];
    }
  }

  else
  {
    v43 = [*(a1 + 32) view];
    v44 = [*(a1 + 32) view];
    EKUIApplicationFrame();
    [v43 setFrame:?];

    v47 = [*(a1 + 32) searchBar];
    [v47 setFrame:{*(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 40) + 8) + 48), *(*(*(a1 + 40) + 8) + 56)}];
  }
}

void sub_10013BBD4(uint64_t a1)
{
  v1 = [*(a1 + 32) searchBar];
  [v1 setHidden:1];
}

uint64_t sub_10013BD70(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10013BF60(uint64_t a1)
{
  v2 = [*(a1 + 32) searchBar];
  [v2 setHidden:0];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [*(a1 + 32) searchBar];
  [v7 setFrame:{v3, v4, v5, v6}];
}

void sub_10013C348(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy();

  v4 = *(a1 + 32);
  if (IsRegularInViewHierarchy)
  {
    v5 = [v4 searchBar];
    v6 = [v5 _leftButton];

    [v6 setEnabled:*(a1 + 40)];
    if (*(a1 + 40))
    {
      CalendarAppTintColor();
    }

    else
    {
      +[UIColor lightGrayColor];
    }
    v7 = ;
    [v6 setTitleColor:v7 forState:0];
  }

  else
  {
    v6 = [v4 searchResultsViewController];
    v7 = [v6 toolbarItems];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10013C4E8;
    v14[3] = &unk_100212260;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 40);
    [v7 enumerateObjectsUsingBlock:v14];
  }

  v8 = [*(a1 + 32) searchBar];
  v9 = [v8 searchField];
  [v9 setUserInteractionEnabled:*(a1 + 40)];

  v10 = [*(a1 + 32) searchBar];
  v11 = [v10 searchField];
  v12 = v11;
  v13 = 0.35;
  if (*(a1 + 40))
  {
    v13 = 1.0;
  }

  [v11 setAlpha:v13];
}

void sub_10013C4E8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 title];
  v4 = [objc_opt_class() _todayLocalizedString];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    [v6 setEnabled:*(a1 + 40)];
  }
}

void sub_10013CDD8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251D98;
  qword_100251D98 = v1;

  v3 = qword_100251D98;

  [v3 addAnchoredValue:2 forWindowSizeWidth:7.5];
}

void sub_10013CE80(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251DA8;
  qword_100251DA8 = v1;

  v3 = qword_100251DA8;

  [v3 addAnchoredValue:2 forWindowSizeWidth:55.0];
}

void sub_10013CF2C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251DB8;
  qword_100251DB8 = v1;

  v3 = qword_100251DB8;

  [v3 addAnchoredValue:2 forWindowSizeWidth:0.0];
}

void sub_10013CFDC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251DC8;
  qword_100251DC8 = v1;

  v3 = qword_100251DC8;

  [v3 addAnchoredValue:2 forWindowSizeWidth:4.0];
}

void sub_10013D0E8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251DD8;
  qword_100251DD8 = v1;

  v3 = qword_100251DD8;

  [v3 addAnchoredValue:2 forWindowSizeWidth:36.0];
}

void sub_10013D1A8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251DF0;
  qword_100251DF0 = v1;

  v3 = qword_100251DF0;

  [v3 addAnchoredValue:2 forWindowSizeWidth:17.0];
}

void sub_10013D2B8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251E00;
  qword_100251E00 = v1;

  v3 = qword_100251E00;

  [v3 addAnchoredValue:2 forWindowSizeWidth:8.0];
}

void sub_10013D370(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251E10;
  qword_100251E10 = v1;

  v3 = qword_100251E10;

  [v3 addAnchoredValue:2 forWindowSizeWidth:12.0];
}

void sub_10013D5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10013D5FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTableAlpha:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _setContentInsets];
}

void sub_10013DF98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_10013DFB4(uint64_t a1)
{
  if ((CalSolariumEnabled() & 1) == 0)
  {
    v2 = (a1 + 40);
    v3 = objc_loadWeakRetained((a1 + 40));
    v4 = [v3 tableView];
    if ([v3 numberOfSectionsInTableView:v4] < 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v6 = [WeakRetained searchBar];
      v7 = [v6 text];
      v8 = [v7 length];

      if (!v8)
      {
        v9 = 0.0;
        if ([*(a1 + 32) destination] == 2)
        {
          return;
        }

        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  v2 = (a1 + 40);
  v9 = 1.0;
LABEL_6:
  v11 = objc_loadWeakRetained(v2);
  v10 = [v11 view];
  [v10 setAlpha:v9];
}

void sub_10013E6A4(uint64_t a1)
{
  v2 = [*(a1 + 32) searchResultsDelegate];

  if (v2)
  {
    v3 = [*(a1 + 32) searchResultsDelegate];
    [v3 searchResultsViewController:*(a1 + 32) didSelectEvent:*(a1 + 40)];
  }
}

void sub_10013E8A0(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10013E934;
  v2[3] = &unk_10020EC68;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  [UIView performWithoutAnimation:v2];
}

id sub_10013F7C4(uint64_t a1)
{
  [NSThread sleepForTimeInterval:2.0];
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:"_searchViewDidAppear" name:@"ListViewController_ViewDidAppearNotification" object:0];

  v3 = [*(a1 + 32) application];
  [v3 startedTest:*(a1 + 40)];

  v4 = *(*(a1 + 32) + 56);

  return [v4 toggleDayViewMode:2];
}

id sub_10013F86C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) presentedViewController];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 56);

    return [v4 dismissViewControllerAnimated:1 completion:v3];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }
}

id sub_10013F9B8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32)];

  v3 = *(*(a1 + 32) + 56);

  return [v3 toggleDayViewMode:0];
}

void sub_10013FBAC(uint64_t a1)
{
  v4 = [*(a1 + 32) presentedViewController];
  v2 = [v4 _eventEditorForTestingOnly];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 40) selector:"handleDidBeginAutocompleteSearchNotification:" name:_EventKitUI_EventEditorDidBeginAutocompleteSearchNotification object:0];
  [v3 addObserver:*(a1 + 40) selector:"handleDidShowAutocompleteResultsNotification:" name:_EventKitUI_EventEditorDidShowAutocompleteResultsNotification object:0];
  [*(a1 + 48) startedTest:*(a1 + 56)];
  [*(a1 + 48) startedSubTest:@"SearchThrottleDelay" forTest:*(a1 + 56)];
  [v2 _setEventTitleForTestingAutocomplete:*(a1 + 64)];
}

void sub_10013FE28(uint64_t a1)
{
  v2 = [*(a1 + 32) application];
  [v2 finishedSubTest:@"CellDisplay" forTest:*(a1 + 40)];

  v3 = [*(a1 + 32) application];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013FEE0;
  v5[3] = &unk_10020EB00;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  [v3 finishedTest:v4 extraResults:0 withTeardownBlock:v5];
}

void sub_10013FEE0(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(a1 + 32)];
}

void sub_1001404E4(id a1)
{
  v1 = +[UIColor labelColor];
  v2 = qword_100251E58;
  qword_100251E58 = v1;

  v3 = +[UIColor secondaryLabelColor];
  v4 = qword_100251E60;
  qword_100251E60 = v3;

  v5 = +[UIColor tertiaryLabelColor];
  v6 = qword_100251E68;
  qword_100251E68 = v5;

  v7 = [UIColor colorWithWhite:1.0 alpha:0.75];
  v8 = qword_100251E70;
  qword_100251E70 = v7;

  _objc_release_x1(v7, v8);
}

void sub_100140770(id a1)
{
  v1 = +[UIColor secondaryLabelColor];
  v2 = qword_100251E80;
  qword_100251E80 = v1;

  v3 = +[UIColor tertiaryLabelColor];
  v4 = qword_100251E88;
  qword_100251E88 = v3;

  v5 = +[UIColor tertiaryLabelColor];
  v6 = qword_100251E90;
  qword_100251E90 = v5;

  _objc_release_x1(v5, v6);
}

void sub_100140868(id a1)
{
  v1 = [UIColor colorWithWhite:0.0 alpha:0.2];
  v2 = qword_100251EA0;
  qword_100251EA0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1001417F0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251EB0;
  qword_100251EB0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10014184C(uint64_t a1)
{
  [*(a1 + 32) setFill];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);

  UIRectFill(*&v2);
}

void sub_100141D2C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251ED0;
  qword_100251ED0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100141D88(uint64_t a1)
{
  [*(a1 + 32) setFill];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);

  UIRectFill(*&v2);
}

void sub_100144A28(id a1)
{
  v1 = [UIColor colorWithWhite:0.831372549 alpha:1.0];
  v2 = qword_100251EF0;
  qword_100251EF0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100146CE4(uint64_t a1)
{
  *(*(a1 + 32) + 25) = 0;
  v3 = +[CarplayUtilities dateForSection:](CarplayUtilities, "dateForSection:", [*(a1 + 40) section]);
  v2 = [*(a1 + 32) cellForRow:objc_msgSend(*(a1 + 40) underDate:"row") inTableView:{v3, *(a1 + 48)}];
  [*(a1 + 56) crossfadeToCell:v2];
  [*(a1 + 48) insertRowsAtIndexPaths:*(a1 + 64) withRowAnimation:3];
}

BOOL sub_1001471E8(id a1, EKEvent *a2, NSDictionary *a3)
{
  v3 = [(EKEvent *)a2 calendar];
  v4 = [v3 source];
  v5 = [v4 sourceType] == 5;

  return v5;
}

void sub_100147BD8(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251F00;
  qword_100251F00 = v1;

  [qword_100251F00 setCalculationType:1];
  v3 = qword_100251F00;
  EKUIWidthForWindowSizeParadigm();
  [v3 addAnchoredValue:223.0 forSize:v4 * 0.5];
  [qword_100251F00 addAnchoredValue:512 forWindowSizeWidth:159.0];
  [qword_100251F00 addAnchoredValue:2048 forWindowSizeWidth:215.5];
  [qword_100251F00 addAnchoredValue:4096 forWindowSizeWidth:208.5];
  [qword_100251F00 addAnchoredValue:0x8000 forWindowSizeWidth:237.0];
  [qword_100251F00 addAnchoredValue:0x10000 forWindowSizeWidth:218.0];
  v5 = qword_100251F00;

  [v5 addAnchoredValue:0x4000 forWindowSizeWidth:290.0];
}

void sub_100147D60(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251F10;
  qword_100251F10 = v1;

  [qword_100251F10 addAnchoredValue:2048 forWindowSizeWidth:5.0];
  v3 = qword_100251F10;

  [v3 addAnchoredValue:4096 forWindowSizeWidth:5.0];
}

uint64_t sub_100147EC0(uint64_t a1)
{
  [*(a1 + 32) headerFontMaxSize];
  v1 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
  v2 = qword_100251F20;
  qword_100251F20 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100148168(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251F40;
  qword_100251F40 = v1;

  [qword_100251F40 setCalculationType:0];
  v3 = qword_100251F40;
  EKUIWidthForWindowSizeParadigm();
  [v3 addAnchoredValue:14.0 forSize:v4 * 0.5];
  [qword_100251F40 addAnchoredValue:512 forWindowSizeWidth:10.0];
  [qword_100251F40 addAnchoredValue:2048 forWindowSizeWidth:12.0];
  [qword_100251F40 addAnchoredValue:4096 forWindowSizeWidth:12.0];
  [qword_100251F40 addAnchoredValue:0x8000 forWindowSizeWidth:13.0];
  [qword_100251F40 addAnchoredValue:0x10000 forWindowSizeWidth:13.0];
  [qword_100251F40 addAnchoredValue:0x4000 forWindowSizeWidth:16.0];
  v5 = qword_100251F40;

  [v5 addAnchoredValue:0x40000000 forWindowSizeWidth:15.5];
}

void sub_100148304(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251F50;
  qword_100251F50 = v1;

  [qword_100251F50 setCalculationType:0];
  v3 = qword_100251F50;
  EKUIWidthForWindowSizeParadigm();
  [v3 addAnchoredValue:16.0 forSize:v4 * 0.5];
  [qword_100251F50 addAnchoredValue:512 forWindowSizeWidth:11.0];
  [qword_100251F50 addAnchoredValue:2048 forWindowSizeWidth:14.0];
  [qword_100251F50 addAnchoredValue:4096 forWindowSizeWidth:14.0];
  [qword_100251F50 addAnchoredValue:0x8000 forWindowSizeWidth:14.0];
  [qword_100251F50 addAnchoredValue:0x10000 forWindowSizeWidth:14.0];
  [qword_100251F50 addAnchoredValue:0x4000 forWindowSizeWidth:16.0];
  v5 = qword_100251F50;

  [v5 addAnchoredValue:0x40000000 forWindowSizeWidth:15.5];
}

void sub_100148488(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251F60;
  qword_100251F60 = v1;

  [qword_100251F60 setCalculationType:0];
  v3 = qword_100251F60;
  EKUIWidthForWindowSizeParadigm();
  [v3 addAnchoredValue:28.0 forSize:v4 * 0.5];
  [qword_100251F60 addAnchoredValue:512 forWindowSizeWidth:16.0];
  [qword_100251F60 addAnchoredValue:2048 forWindowSizeWidth:24.0];
  [qword_100251F60 addAnchoredValue:4096 forWindowSizeWidth:24.0];
  [qword_100251F60 addAnchoredValue:0x8000 forWindowSizeWidth:24.0];
  [qword_100251F60 addAnchoredValue:0x10000 forWindowSizeWidth:24.0];
  [qword_100251F60 addAnchoredValue:0x4000 forWindowSizeWidth:28.0];
  v5 = qword_100251F60;

  [v5 addAnchoredValue:0x40000000 forWindowSizeWidth:27.5];
}

void sub_1001486A4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251F70;
  qword_100251F70 = v1;

  [qword_100251F70 setCalculationType:0];
  v3 = qword_100251F70;
  EKUIWidthForWindowSizeParadigm();
  [v3 addAnchoredValue:1.0 forSize:v4 * 0.5];
  [qword_100251F70 addAnchoredValue:512 forWindowSizeWidth:-1.5];
  [qword_100251F70 addAnchoredValue:2048 forWindowSizeWidth:0.0];
  [qword_100251F70 addAnchoredValue:4096 forWindowSizeWidth:0.0];
  [qword_100251F70 addAnchoredValue:0x4000 forWindowSizeWidth:-2.0];
  v5 = qword_100251F70;

  [v5 addAnchoredValue:0x40000000 forWindowSizeWidth:-1.5];
}

void sub_100148840(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251F80;
  qword_100251F80 = v1;

  [qword_100251F80 setCalculationType:1];
  [qword_100251F80 addAnchoredValue:512 forWindowSizeWidth:48.0];
  [qword_100251F80 addAnchoredValue:2048 forWindowSizeWidth:59.5];
  [qword_100251F80 addAnchoredValue:4096 forWindowSizeWidth:59.5];
  [qword_100251F80 addAnchoredValue:0x200000 forWindowSizeWidth:59.5];
  v3 = qword_100251F80;

  [v3 addAnchoredValue:0x4000 forWindowSizeWidth:75.0];
}

void sub_1001489AC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251F90;
  qword_100251F90 = v1;

  v3 = qword_100251F90;
  EKUIWidthForWindowSizeParadigm();
  [v3 addAnchoredValue:24.0 forSize:v4 * 0.5];
  [qword_100251F90 addAnchoredValue:512 forWindowSizeWidth:24.0];
  [qword_100251F90 addAnchoredValue:2048 forWindowSizeWidth:24.0];
  v5 = qword_100251F90;

  [v5 addAnchoredValue:4096 forWindowSizeWidth:24.0];
}

void sub_100148AEC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251FA0;
  qword_100251FA0 = v1;

  [qword_100251FA0 setCalculationType:1];
  v3 = qword_100251FA0;
  EKUIWidthForWindowSizeParadigm();
  [v3 addAnchoredValue:24.0 forSize:v4 * 0.5];
  [qword_100251FA0 addAnchoredValue:512 forWindowSizeWidth:17.0];
  [qword_100251FA0 addAnchoredValue:2048 forWindowSizeWidth:22.0];
  [qword_100251FA0 addAnchoredValue:4096 forWindowSizeWidth:22.0];
  [qword_100251FA0 addAnchoredValue:0x8000 forWindowSizeWidth:26.0];
  [qword_100251FA0 addAnchoredValue:0x10000 forWindowSizeWidth:26.0];
  v5 = qword_100251FA0;

  [v5 addAnchoredValue:0x4000 forWindowSizeWidth:30.0];
}

void sub_100148CB0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251FB0;
  qword_100251FB0 = v1;

  [qword_100251FB0 setCalculationType:1];
  v3 = qword_100251FB0;
  EKUIWidthForWindowSizeParadigm();
  [v3 addAnchoredValue:12.0 forSize:v4 * 0.5];
  [qword_100251FB0 addAnchoredValue:512 forWindowSizeWidth:11.0];
  v5 = qword_100251FB0;

  [v5 addAnchoredValue:2048 forWindowSizeWidth:12.0];
}

void sub_100148DF0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100251FC0;
  qword_100251FC0 = v1;

  [qword_100251FC0 setCalculationType:1];
  [qword_100251FC0 addAnchoredValue:512 forWindowSizeWidth:31.0];
  [qword_100251FC0 addAnchoredValue:2048 forWindowSizeWidth:38.0];
  [qword_100251FC0 addAnchoredValue:4096 forWindowSizeWidth:38.0];
  [qword_100251FC0 addAnchoredValue:0x8000 forWindowSizeWidth:38.0];
  [qword_100251FC0 addAnchoredValue:0x10000 forWindowSizeWidth:38.0];
  [qword_100251FC0 addAnchoredValue:0x200000 forWindowSizeWidth:38.0];
  v3 = qword_100251FC0;

  [v3 addAnchoredValue:0x4000 forWindowSizeWidth:50.0];
}

void sub_10014A500(id *a1)
{
  [a1[4] setAnimatingViewTransition:0];
  [a1[5] setAnimatingViewTransition:0];
  v2 = [a1[6] transitionView];
  [v2 removeFromSuperview];

  [a1[7] completeTransition:1];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PhoneMonthDayAnimator_DayToMonthAnimationCompleteNotification" object:0];
}

void sub_10014A59C(id *a1)
{
  [a1[4] setAnimatingViewTransition:0];
  [a1[5] setAnimatingViewTransition:0];
  v2 = [a1[6] transitionView];
  [v2 removeFromSuperview];

  [a1[7] completeTransition:1];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"PhoneMonthDayAnimator_MonthToDayAnimationCompleteNotification" object:0];
}

void sub_10014C63C(uint64_t a1)
{
  if ([*(a1 + 32) isHighlighted])
  {
    v10 = +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    v2 = [*(a1 + 32) event];
    [v2 status];

    v3 = [*(a1 + 32) event];
    CUIKEventDisplaysAsDeclined();

    v4 = [*(a1 + 32) event];
    v5 = [v4 calendar];
    v6 = [v5 displayColor];
    v7 = [*(a1 + 32) traitCollection];
    [v7 userInterfaceStyle];
    v8 = [*(a1 + 32) event];
    [v8 needsResponse];
    v9 = [*(a1 + 32) event];
    [v9 isReminderIntegrationEvent];
    [*(a1 + 32) isSelected];
    v10 = CUIKColorBarColor();
  }

  [*(*(a1 + 32) + 80) setBackgroundColor:v10];
}

void sub_10014D1B8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014D2B4;
  block[3] = &unk_10020EC68;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v7 = v2;
  v8 = v3;
  dispatch_async(&_dispatch_main_q, block);
  v4 = [*(a1 + 40) queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014D32C;
  v5[3] = &unk_10020EB00;
  v5[4] = *(a1 + 40);
  dispatch_async(v4, v5);
}

uint64_t sub_10014D2B4(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(v4 + 32);
    v6 = *(v4 + 24);
    v7 = *(v4 + 11);

    return [v3 navigationController:v5 didShowViewController:v6 animated:v7];
  }

  return result;
}

id sub_10014D3BC(uint64_t a1)
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

void sub_10014D564(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[10] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = kCalUILogHandle;
      if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
        v5 = objc_opt_class();
        v6 = v5;
        v7 = objc_opt_class();
        v8 = v7;
        *buf = 138412802;
        v13 = v5;
        v14 = 2112;
        v15 = v7;
        v16 = 2112;
        v17 = objc_opt_class();
        v9 = v17;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ operation instructing %@ to push %@.", buf, 0x20u);
      }

      [*(*(a1 + 32) + 32) pushViewController:*(*(a1 + 32) + 24) animated:*(*(a1 + 32) + 11)];
      v10 = [*(a1 + 32) queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10014D7B8;
      block[3] = &unk_10020EB00;
      block[4] = *(a1 + 32);
      dispatch_async(v10, block);

      return;
    }

    v2 = *(a1 + 32);
  }

  [v2 doInternalPresentation];
}

void sub_10014E358(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  v4 = [*(v2 + 8) selectedOccurrence];
  LOBYTE(v3) = [v3 isEqual:v4];

  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 112);
    *(v5 + 112) = 0;

    v7 = [*(a1 + 32) tableView];
    v8 = [*(a1 + 32) tableView];
    v9 = [v8 indexPathForSelectedRow];
    [v7 deselectRowAtIndexPath:v9 animated:1];
  }

  [*(*(a1 + 32) + 120) invalidate];
  v10 = *(a1 + 32);
  v11 = *(v10 + 120);
  *(v10 + 120) = 0;
}

void sub_10014E8AC(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        if (([*(a1 + 40) isFocusBannerSection:{objc_msgSend(v7, "section")}] & 1) == 0)
        {
          v8 = [*(a1 + 40) _notificationForIndexPath:v7 cache:*(a1 + 48)];
          v9 = v8;
          if (v8)
          {
            v10 = *(a1 + 40);
            v11 = *(v10 + 80);
            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_10014EA60;
            v12[3] = &unk_10020EC68;
            v12[4] = v10;
            v13 = v8;
            dispatch_sync(v11, v12);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

void sub_10014EA60(uint64_t a1)
{
  v5 = CUIKDisplayStringForNotificationIdentity();
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 64);
  v4 = [v2 objectID];
  [v3 setObject:v5 forKeyedSubscript:v4];
}

id sub_10014EFE4(uint64_t a1)
{
  v1 = [[EKUIReadonlyEventViewController alloc] initWithEvent:*(a1 + 32)];
  [v1 setAllowsCalendarPreview:1];
  [v1 setInlineDayViewRespectsSelectedCalendarsFilter:0];
  [v1 setCalendarPreviewIsInlineDayView:1];

  return v1;
}

id sub_10014F050(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 cellForRowAtIndexPath:*(a1 + 40)];

  v15 = *(a1 + 48);
  v4 = [NSArray arrayWithObjects:&v15 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014F1AC;
  v10[3] = &unk_1002121C0;
  v5 = *(a1 + 32);
  v11 = v3;
  v12 = v5;
  v6 = *(a1 + 72);
  v13 = *(a1 + 56);
  v14 = v6;
  v7 = v3;
  v8 = [EKUIContextMenuActions menuForEvents:v4 presentationController:v5 isEditMenu:0 overrideActionBlock:v10 completionBlock:0];

  return v8;
}

BOOL sub_10014F1AC(uint64_t a1, uint64_t a2)
{
  v3 = [EKUIContextMenuActions statusButtonsActionFromContextMenuAction:a2];
  v4 = v3 & 7;
  if ((v3 & 7) != 0)
  {
    v5 = v3;
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) tableView];
    [v6 eventStatusButtonsView:0 didSelectAction:v5 sourceView:v7 sourceRect:0 appliesToAll:0 ifCancelled:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }

  return v4 != 0;
}

void sub_10014F518(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10014F5AC;
  v2[3] = &unk_10020EC68;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  [UIView performWithoutAnimation:v2];
}

void sub_10014F5AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 160));
  [WeakRetained inboxRepliedSectionViewController:*(a1 + 32) inspectEvent:*(a1 + 40)];
}

void sub_10014FB00(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  v5 = +[NSNull null];

  v6 = v14;
  if (v5 != v14)
  {
    v7 = [v14 notification];
    v8 = v7;
    if (v7)
    {
      v9 = *(*(a1 + 32) + 56);
      v10 = [v7 URL];
      v11 = [v9 objectForKeyedSubscript:v10];

      if (v11)
      {
        v12 = *(a1 + 32);
        v13 = [NSIndexPath indexPathForRow:a3 inSection:*(a1 + 40)];
        [v12 _saveStatus:3 forItemAtIndexPath:v13];
      }
    }

    v6 = v14;
  }
}

_BYTE *sub_100150174(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  result = *(a1 + 32);
  if (result[40] == 1)
  {
    return [result _refreshIfNeeded];
  }

  return result;
}

_BYTE *sub_1001502C4(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  result = *(a1 + 32);
  if (result[40] == 1)
  {
    return [result _refreshIfNeeded];
  }

  return result;
}

_BYTE *sub_100150414(uint64_t a1)
{
  *(*(a1 + 32) + 144) = 1;
  result = *(a1 + 32);
  if (result[40] == 1)
  {
    return [result _refreshIfNeeded];
  }

  return result;
}

id sub_100150828(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _eventForOccurrenceInfo:a2];
  if ([*(*(a1 + 32) + 8) focusFilterMode] == 1 && (objc_msgSend(*(*(a1 + 32) + 8), "unselectedCalendarsForFocusMode"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "calendar"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "containsObject:", v5), v5, v4, (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v8 = [*(*(a1 + 32) + 8) sourceForSelectedIdentity];

    v9 = [v3 calendar];
    v10 = [v9 source];
    v11 = v10;
    if (v8)
    {
      v12 = [v10 sourceIdentifier];
      v13 = [*(*(a1 + 32) + 8) sourceForSelectedIdentity];
      v14 = [v13 sourceIdentifier];
      v7 = [v12 isEqualToString:v14];
    }

    else
    {
      v7 = ([v10 isDelegate] ^ 1);
    }
  }

  return v7;
}

void sub_100150C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100150CA8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100150CC0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v6 = [*(a1 + 40) objectID];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_10015127C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10015129C(uint64_t a1)
{
  v2 = [*(a1 + 32) notification];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

id sub_10015307C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setDesiredPaddingDays:1];
  [*(*(a1 + 32) + 8) setComponentForExpandingPadding:16];
  v2 = *(*(a1 + 32) + 72);

  return [v2 setPreloadExtraDays:1];
}

void sub_1001536B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001536D0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained presentedViewController];
  if (!v2 || (v3 = v2, [WeakRetained presentedViewController], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isMemberOfClass:", objc_opt_class()), v4, v3, v5))
  {
    if ([WeakRetained didSelectEvent:*(a1 + 32) userInitiated:*(a1 + 48)])
    {
      [WeakRetained _showDetailForEvent:*(a1 + 32) animated:*(a1 + 49) context:0];
    }
  }
}

void sub_100153894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001538B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained presentedViewController];

  if (!v2 && [WeakRetained didSelectEvents:*(a1 + 32) userInitiated:*(a1 + 48)])
  {
    [WeakRetained _showDetailForEvents:*(a1 + 32) animated:*(a1 + 49)];
  }
}

uint64_t sub_10015551C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_100157180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100157198(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001571B0(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isSelectedCopyView])
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    if (!v3)
    {
      v4 = +[NSMutableArray array];
      v5 = *(*(a1 + 32) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      v3 = *(*(*(a1 + 32) + 8) + 40);
    }

    [v3 addObject:v7];
  }
}

id sub_10015744C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 occurrence];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_10015817C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = kCalUILogCarplayHandle;
  if (os_log_type_enabled(kCalUILogCarplayHandle, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "cellWasTapped on location cell completion handler called with success %d", v4, 8u);
  }
}

void sub_100158A4C(void *a1)
{
  v3 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_creationModule;
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_initialDateComponents;
  v6 = type metadata accessor for DateComponents();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_ignoreUnsavedChanges] = 0;
  v7 = [a1 undoManager];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 systemUndoManager];

    if (v9)
    {
      *&v1[OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_undoManager] = v9;
      *&v1[OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_model] = a1;
      v10.receiver = v1;
      v10.super_class = type metadata accessor for AddReminderViewControllerManager();
      objc_msgSendSuper2(&v10, "init");
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100159090(void *a1)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v37 - v7;
  v8 = sub_10015E0CC(&qword_100250F10);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for RemindersInCalendarEditingReminderProperties();
  __chkstk_darwin(v11 - 8);
  v37 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration();
  v39 = *(v13 - 8);
  v40 = v13;
  __chkstk_darwin(v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10015E0CC(&qword_100250F30);
  v17 = __chkstk_darwin(v16 - 8);
  v43 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v38 = &v37 - v20;
  __chkstk_darwin(v19);
  v22 = &v37 - v21;
  v23 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_creationModule;
  swift_beginAccess();
  sub_10015F168(v1 + v23, v22, &qword_100250F30);
  v24 = *(v4 + 48);
  v46 = v3;
  v42 = v24;
  LODWORD(v3) = v24(v22, 1, v3);
  sub_10015EE80(v22, &qword_100250F30);
  if (v3 == 1)
  {
    RemindersInCalendarUtilities.ReminderCreationConfiguration.init()();
    [objc_opt_self() newObjectID];
    RemindersInCalendarUtilities.ReminderCreationConfiguration.reminderID.setter();
    v25 = [v44 addItemState];
    v26 = type metadata accessor for DateComponents();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    sub_100159744(v25, v10, 0);

    sub_10015EE80(v10, &qword_100250F10);
    RemindersInCalendarUtilities.ReminderCreationConfiguration.initialProperties.setter();
    v27 = *(v1 + OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_undoManager);
    RemindersInCalendarUtilities.ReminderCreationConfiguration.undoManager.setter();
    CalRemindersSolariumEnabled();
    RemindersInCalendarUtilities.ReminderCreationConfiguration.newUserInterfaceStyleEnabled.setter();
    v28 = v41;
    static RemindersInCalendarUtilities.makeReminderCreationModule(configuration:)();
    RemindersInCalendarUtilities.ReminderCreationModule.moduleInterface.getter();
    swift_getObjectType();
    sub_10015F240(&qword_100250F78, type metadata accessor for AddReminderViewControllerManager);
    swift_unknownObjectRetain();
    dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.moduleDelegate.setter();
    swift_unknownObjectRelease();
    v29 = v38;
    v30 = v46;
    (*(v4 + 16))(v38, v28, v46);
    (*(v4 + 56))(v29, 0, 1, v30);
    swift_beginAccess();
    sub_10015F288(v29, v2 + v23, &qword_100250F30);
    swift_endAccess();
    v31 = [v44 addItemState];
    sub_10015A604(v31);

    (*(v4 + 8))(v28, v30);
    (*(v39 + 8))(v15, v40);
  }

  v32 = v43;
  sub_10015F168(v2 + v23, v43, &qword_100250F30);
  v33 = v46;
  if (v42(v32, 1, v46) == 1)
  {
    sub_10015EE80(v32, &qword_100250F30);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v34 = v45;
    (*(v4 + 32))(v45, v32, v33);
    v35 = RemindersInCalendarUtilities.ReminderCreationModule.viewController.getter();
    (*(v4 + 8))(v34, v33);
    return v35;
  }

  return result;
}

void sub_100159744(void *a1, uint64_t a2, void *a3)
{
  v70 = a3;
  v67 = a2;
  v4 = type metadata accessor for Date();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = __chkstk_darwin(v4);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v61 = &v61 - v8;
  __chkstk_darwin(v7);
  v63 = &v61 - v9;
  v71 = type metadata accessor for DateComponents();
  v10 = *(v71 - 8);
  __chkstk_darwin(v71);
  v64 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10015E0CC(&qword_100250F10);
  v13 = __chkstk_darwin(v12 - 8);
  v69 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v68 = &v61 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v61 - v18;
  __chkstk_darwin(v17);
  v21 = &v61 - v20;
  v22 = sub_10015E0CC(&qword_100250F60);
  __chkstk_darwin(v22 - 8);
  v24 = &v61 - v23;
  RemindersInCalendarEditingReminderProperties.init()();
  v25 = a1;
  v26 = [a1 event];
  v27 = [v26 title];
  if (v27)
  {
    v28 = v27;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  RemindersInCalendarEditingReminderProperties.title.setter();
  v29 = [v26 notes];
  if (v29)
  {
    v30 = v29;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v31 = v72;
  RemindersInCalendarEditingReminderProperties.notes.setter();
  v32 = [v26 URL];
  if (v32)
  {
    v33 = v32;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = type metadata accessor for URL();
    (*(*(v34 - 8) + 56))(v24, 0, 1, v34);
  }

  else
  {
    v35 = type metadata accessor for URL();
    (*(*(v35 - 8) + 56))(v24, 1, 1, v35);
  }

  RemindersInCalendarEditingReminderProperties.url.setter();
  if ([v25 explicitTime])
  {
    v36 = [v26 startDateComponents];
    if (v36)
    {
      v37 = v36;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v48 = v71;
    (*(v10 + 56))(v21, v38, 1, v71);
    v39 = v48;
    RemindersInCalendarEditingReminderProperties.dueDateComponents.setter();
  }

  else
  {
    sub_10015F168(v67, v19, &qword_100250F10);
    v39 = v71;
    if ((*(v10 + 48))(v19, 1, v71) == 1)
    {
      sub_10015EE80(v19, &qword_100250F10);
      v40 = [v26 startDate];
      if (v40)
      {
        v41 = v61;
        v42 = v40;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v43.super.isa = Date._bridgeToObjectiveC()().super.isa;
        v45 = v65;
        v44 = v66;
        (*(v65 + 8))(v41, v66);
      }

      else
      {
        v43.super.isa = 0;
        v45 = v65;
        v44 = v66;
      }

      v49 = CUIKDateForNewCalendarItemOnDay();

      if (!v49)
      {
        __break(1u);
        return;
      }

      v50 = v62;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = v63;
      (*(v45 + 32))(v63, v50, v44);
      v52 = v68;
      sub_100159FA8(v51, 0, v68);
      (*(v10 + 56))(v52, 0, 1, v39);
      RemindersInCalendarEditingReminderProperties.dueDateComponents.setter();
      (*(v45 + 8))(v51, v44);
    }

    else
    {
      v46 = v64;
      (*(v10 + 32))(v64, v19, v39);
      v47 = v68;
      (*(v10 + 16))(v68, v46, v39);
      (*(v10 + 56))(v47, 0, 1, v39);
      RemindersInCalendarEditingReminderProperties.dueDateComponents.setter();
      (*(v10 + 8))(v46, v39);
    }
  }

  v53 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_initialDateComponents;
  swift_beginAccess();
  v54 = v69;
  sub_10015F168(v31 + v53, v69, &qword_100250F10);
  v55 = (*(v10 + 48))(v54, 1, v39);
  sub_10015EE80(v54, &qword_100250F10);
  if (v55 == 1)
  {
    v56 = v68;
    RemindersInCalendarEditingReminderProperties.dueDateComponents.getter();
    swift_beginAccess();
    sub_10015F288(v56, v31 + v53, &qword_100250F10);
    swift_endAccess();
  }

  v57 = v26;
  if (v70)
  {
    v57 = v70;
    v58 = [v26 recurrenceRules];

    if (v58)
    {
      sub_10000376C(0, &qword_100250F70);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000376C(0, &qword_100250F68);
    v59 = [v57 accountID];
    v60 = [v57 objectID];
    static REMRecurrenceRule.convert(_:account:reminder:)();

    RemindersInCalendarEditingReminderProperties.recurrenceRules.setter();
  }
}

id sub_100159FA8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v31 = a1;
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  result = CUIKCalendar();
  if (result)
  {
    v12 = result;
    static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = *(v5 + 32);
    v29 = v4;
    v13(v10, v8, v4);
    sub_10015E0CC(&qword_100250F40);
    v14 = type metadata accessor for Calendar.Component();
    v15 = *(v14 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = (v15 + 104);
    v19 = 2 * v16;
    v20 = 3 * v16;
    v28 = 4 * v16;
    if (a2)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1001F8800;
      v22 = v21 + v17;
      v23 = *v18;
      (*v18)(v22, enum case for Calendar.Component.era(_:), v14);
      v23(v22 + v16, enum case for Calendar.Component.year(_:), v14);
      v23(v22 + v19, enum case for Calendar.Component.month(_:), v14);
      v23(v22 + v20, enum case for Calendar.Component.day(_:), v14);
      v23(v22 + v28, enum case for Calendar.Component.timeZone(_:), v14);
    }

    else
    {
      v27 = 8 * v16;
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1001F87F0;
      v24 = v21 + v17;
      v25 = *v18;
      (*v18)(v24, enum case for Calendar.Component.era(_:), v14);
      v25(v24 + v16, enum case for Calendar.Component.year(_:), v14);
      v25(v24 + v19, enum case for Calendar.Component.month(_:), v14);
      v25(v24 + v20, enum case for Calendar.Component.day(_:), v14);
      v25(v24 + v28, enum case for Calendar.Component.hour(_:), v14);
      v25(v24 + 5 * v16, enum case for Calendar.Component.minute(_:), v14);
      v25(v24 + 6 * v16, enum case for Calendar.Component.second(_:), v14);
      v25(v24 + v27 - v16, enum case for Calendar.Component.timeZone(_:), v14);
    }

    sub_10015E824(v21);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    Calendar.dateComponents(_:from:)();

    return (*(v5 + 8))(v10, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015A43C()
{
  v1 = sub_10015E0CC(&qword_100250F30);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_creationModule;
  swift_beginAccess();
  sub_10015F168(v0 + v8, v3, &qword_100250F30);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10015EE80(v3, &qword_100250F30);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v10 = RemindersInCalendarUtilities.ReminderCreationModule.viewController.getter();
    (*(v5 + 8))(v7, v4);
    return v10;
  }
}

uint64_t sub_10015A604(void *a1)
{
  v31 = a1;
  v2 = sub_10015E0CC(&qword_100250F10);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v28 = v27 - v6;
  v7 = type metadata accessor for RemindersInCalendarEditingReminderProperties();
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10015E0CC(&qword_100250F30);
  __chkstk_darwin(v10 - 8);
  v12 = v27 - v11;
  v13 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_creationModule;
  swift_beginAccess();
  sub_10015F168(v1 + v17, v12, &qword_100250F30);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_10015EE80(v12, &qword_100250F30);
  }

  v27[2] = v1;
  (*(v14 + 32))(v16, v12, v13);
  RemindersInCalendarUtilities.ReminderCreationModule.moduleInterface.getter();
  v27[1] = v19;
  RemindersInCalendarUtilities.ReminderCreationModule.moduleInterface.getter();
  swift_getObjectType();
  v20 = dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.reminder.getter();
  swift_unknownObjectRelease();
  if (v20)
  {
    v21 = [v20 dueDateComponents];

    v22 = v28;
    if (v21)
    {
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v25 = type metadata accessor for DateComponents();
    (*(*(v25 - 8) + 56))(v5, v23, 1, v25);
    sub_10015F1D0(v5, v22);
  }

  else
  {
    v24 = type metadata accessor for DateComponents();
    v22 = v28;
    (*(*(v24 - 8) + 56))(v28, 1, 1, v24);
  }

  swift_getObjectType();
  RemindersInCalendarUtilities.ReminderCreationModule.moduleInterface.getter();
  swift_getObjectType();
  v26 = dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.reminder.getter();
  swift_unknownObjectRelease();
  sub_100159744(v31, v22, v26);

  sub_10015EE80(v22, &qword_100250F10);
  dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.editReminder(with:)();
  swift_unknownObjectRelease();
  (*(v29 + 8))(v9, v30);
  return (*(v14 + 8))(v16, v13);
}

void sub_10015AAC8(void *a1)
{
  v2 = v1;
  v4 = sub_10015E0CC(&qword_100250F10);
  __chkstk_darwin(v4 - 8);
  v80 = &v77 - v5;
  v83 = type metadata accessor for DateComponents();
  v81 = *(v83 - 8);
  v6 = __chkstk_darwin(v83);
  v79 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v77 - v9;
  __chkstk_darwin(v8);
  v82 = &v77 - v11;
  v12 = sub_10015E0CC(&qword_100250F30);
  __chkstk_darwin(v12 - 8);
  v14 = &v77 - v13;
  v15 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  v19 = [a1 event];
  v20 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_creationModule;
  swift_beginAccess();
  v21 = v2 + v20;
  v22 = v15;
  v23 = v16;
  sub_10015F168(v21, v14, &qword_100250F30);
  if ((*(v16 + 48))(v14, 1, v22) == 1)
  {

    sub_10015EE80(v14, &qword_100250F30);
    return;
  }

  (*(v16 + 32))(v18, v14, v22);
  RemindersInCalendarUtilities.ReminderCreationModule.moduleInterface.getter();
  swift_getObjectType();
  v24 = dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.reminder.getter();
  swift_unknownObjectRelease();
  if (!v24)
  {
    (*(v16 + 8))(v18, v22);

    return;
  }

  v77 = v22;
  v78 = v18;
  v25 = [v24 dueDateComponents];
  v26 = v19;
  if (v25)
  {
    v27 = v25;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = v81;
    v29 = v82;
    v30 = *(v81 + 32);
    v31 = v10;
    v32 = v83;
    v30(v82, v31, v83);
    v33 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_initialDateComponents;
    swift_beginAccess();
    v34 = v2 + v33;
    v35 = v80;
    sub_10015F168(v34, v80, &qword_100250F10);
    if ((*(v28 + 48))(v35, 1, v32) == 1)
    {
      (*(v28 + 8))(v29, v32);
      sub_10015EE80(v35, &qword_100250F10);
      v26 = v19;
      goto LABEL_43;
    }

    v36 = v79;
    v30(v79, v35, v32);
    v37 = v36;
    v38 = DateComponents.era.getter();
    v40 = v39;
    v41 = DateComponents.era.getter();
    v26 = v19;
    if (v40)
    {
      v43 = v81;
      if ((v42 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v43 = v81;
      if ((v42 & 1) != 0 || v38 != v41)
      {
        goto LABEL_41;
      }
    }

    v44 = DateComponents.year.getter();
    v46 = v45;
    v47 = DateComponents.year.getter();
    if (v46)
    {
      if ((v48 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if ((v48 & 1) != 0 || v44 != v47)
    {
      goto LABEL_41;
    }

    v49 = DateComponents.month.getter();
    v51 = v50;
    v52 = DateComponents.month.getter();
    if (v51)
    {
      if ((v53 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if ((v53 & 1) != 0 || v49 != v52)
    {
      goto LABEL_41;
    }

    v54 = DateComponents.day.getter();
    v56 = v55;
    v57 = DateComponents.day.getter();
    if (v56)
    {
      if ((v58 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if ((v58 & 1) != 0 || v54 != v57)
    {
      goto LABEL_41;
    }

    v59 = DateComponents.hour.getter();
    v61 = v60;
    v62 = DateComponents.hour.getter();
    if (v61)
    {
      if ((v63 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if ((v63 & 1) != 0 || v59 != v62)
    {
      goto LABEL_41;
    }

    v64 = DateComponents.minute.getter();
    v66 = v65;
    v67 = DateComponents.minute.getter();
    if ((v66 & 1) == 0)
    {
      if ((v68 & 1) != 0 || v64 != v67)
      {
        goto LABEL_41;
      }

LABEL_38:
      v81 = DateComponents.second.getter();
      v70 = v69;
      v71 = DateComponents.second.getter();
      v73 = v72;
      v74 = *(v43 + 8);
      v74(v37, v83);
      if (v70)
      {
        if ((v73 & 1) == 0)
        {
LABEL_48:
          v75 = v83;
          goto LABEL_42;
        }
      }

      else if ((v73 & 1) != 0 || v81 != v71)
      {
        goto LABEL_48;
      }

      v74(v82, v83);
      goto LABEL_43;
    }

    if (v68)
    {
      goto LABEL_38;
    }

LABEL_41:
    v74 = *(v43 + 8);
    v75 = v83;
    v74(v37, v83);
LABEL_42:
    [v84 setExplicitTime:1];
    v74(v82, v75);
  }

LABEL_43:
  v85[3] = sub_10000376C(0, &qword_100250F38);
  v85[4] = &protocol witness table for REMReminderChangeItem;
  v85[0] = v24;
  v76 = v24;
  [v84 explicitTime];
  EKEvent.update(from:updateDates:forSavingIntegrationEvent:)();

  (*(v23 + 8))(v78, v77);
  sub_10015F11C(v85);
}

uint64_t sub_10015B1E0()
{
  v1 = v0;
  v2 = sub_10015E0CC(&qword_100250F30);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v8 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v22 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_creationModule;
  swift_beginAccess();
  sub_10015F168(v1 + v14, v7, &qword_100250F30);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_10015EE80(v7, &qword_100250F30);
  }

  else
  {
    (*(v9 + 32))(v13, v7, v8);
    v16 = RemindersInCalendarUtilities.ReminderCreationModule.viewController.getter();
    (*(v9 + 8))(v13, v8);
    v17 = [v16 isModalInPresentation];

    if (v17)
    {
      v18 = 0;
      return v18 & 1;
    }
  }

  sub_10015F168(v1 + v14, v5, &qword_100250F30);
  if (v15(v5, 1, v8) == 1)
  {
    sub_10015EE80(v5, &qword_100250F30);
    v18 = 1;
  }

  else
  {
    v19 = v22;
    (*(v9 + 32))(v22, v5, v8);
    RemindersInCalendarUtilities.ReminderCreationModule.moduleInterface.getter();
    swift_getObjectType();
    v20 = dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.requiresUserConfirmationForCancelingEditing.getter();
    swift_unknownObjectRelease();
    (*(v9 + 8))(v19, v8);
    v18 = v20 ^ 1;
  }

  return v18 & 1;
}

id sub_10015B518()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for LocalizedStringResource();
  v53 = *(v57 - 8);
  v10 = v53;
  v11 = __chkstk_darwin(v57);
  v54 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v47 = v44 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = v44 - v16;
  __chkstk_darwin(v15);
  v19 = v44 - v18;
  v44[1] = v9;
  String.LocalizationValue.init(stringLiteral:)();
  v56 = v6;
  static Locale.current.getter();
  v58 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v1 + 104);
  v45 = v3;
  v48 = v0;
  v20(v3);
  v49 = v20;
  v50 = v1 + 104;
  v55 = v19;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v46 = *(v10 + 16);
  v21 = v57;
  v46(v17, v19, v57);
  String.init(localized:)();
  v22 = String._bridgeToObjectiveC()();

  v23 = [objc_opt_self() alertControllerWithTitle:0 message:v22 preferredStyle:0];

  [v23 setProhibitsRotation:1];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = v45;
  (v20)(v45, v58, v0);
  v51 = v17;
  v25 = v24;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = v46;
  v27 = v47;
  v46(v47, v17, v21);
  v28 = v23;
  v29 = v27;
  String.init(localized:)();
  v30 = swift_allocObject();
  v31 = v52;
  *(v30 + 16) = v52;
  v32 = v31;
  v33 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10015F114;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10015BD68;
  aBlock[3] = &unk_100212978;
  v34 = _Block_copy(aBlock);

  v35 = objc_opt_self();
  v36 = [v35 actionWithTitle:v33 style:2 handler:v34];
  _Block_release(v34);

  [v28 addAction:v36];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v49)(v25, v58, v48);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v37 = v29;
  v38 = v29;
  v39 = v57;
  v26(v54, v37, v57);
  String.init(localized:)();
  v40 = String._bridgeToObjectiveC()();

  v41 = [v35 actionWithTitle:v40 style:1 handler:0];

  [v28 addAction:v41];
  v42 = *(v53 + 8);
  v42(v38, v39);
  v42(v51, v39);
  v42(v55, v39);
  return v28;
}

uint64_t sub_10015BB84(uint64_t a1, uint64_t a2)
{
  v3 = sub_10015E0CC(&qword_100250F30);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_creationModule;
  swift_beginAccess();
  sub_10015F168(a2 + v10, v5, &qword_100250F30);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10015EE80(v5, &qword_100250F30);
  }

  (*(v7 + 32))(v9, v5, v6);
  RemindersInCalendarUtilities.ReminderCreationModule.moduleInterface.getter();
  swift_getObjectType();
  dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.cancelEditing(canShowUserConfirmation:)();
  swift_unknownObjectRelease();
  return (*(v7 + 8))(v9, v6);
}

void sub_10015BD68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10015BE84()
{
  v1 = sub_10015E0CC(&qword_100250F30);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_creationModule;
  swift_beginAccess();
  sub_10015F168(v0 + v8, v3, &qword_100250F30);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10015EE80(v3, &qword_100250F30);
    v9 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    RemindersInCalendarUtilities.ReminderCreationModule.moduleInterface.getter();
    swift_getObjectType();
    v9 = dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.hasUncommittedChanges.getter();
    swift_unknownObjectRelease();
    (*(v5 + 8))(v7, v4);
  }

  return v9 & 1;
}

uint64_t sub_10015C0A0()
{
  v1 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015E0CC(&qword_100250F30);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_creationModule;
  swift_beginAccess();
  sub_10015F168(v0 + v8, v7, &qword_100250F30);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_10015EE80(v7, &qword_100250F30);
    v9 = 0;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_10015EE80(v7, &qword_100250F30);
    RemindersInCalendarUtilities.ReminderCreationModule.moduleInterface.getter();
    (*(v2 + 8))(v4, v1);
    swift_getObjectType();
    v9 = dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.requiresUserConfirmationForCommittingEditing.getter();
    swift_unknownObjectRelease();
  }

  return v9 & 1;
}

uint64_t sub_10015C2D0(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v35 = a1;
  v3 = sub_10015E0CC(&qword_100251560);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_10015E0CC(&qword_100250F30);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_creationModule;
  swift_beginAccess();
  sub_10015F168(v2 + v15, v8, &qword_100250F30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_10015EE80(v8, &qword_100250F30);
    v17 = v35;
    if (v35)
    {

      v17(v18);
      return sub_10015F010(v17);
    }
  }

  else
  {
    v19 = *(v10 + 32);
    v31 = v14;
    v32 = v19;
    v20 = v14;
    v19(v14, v8, v9);
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v22 = v33;
    (*(v10 + 16))(v33, v20, v9);
    type metadata accessor for MainActor();
    v23 = v35;
    v30 = v5;
    v24 = v34;
    sub_10015F020(v35);
    v25 = static MainActor.shared.getter();
    v26 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = &protocol witness table for MainActor;
    v32(v27 + v26, v22, v9);
    v28 = (v27 + ((v11 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = v23;
    v28[1] = v24;
    sub_100167F80(0, 0, v30, &unk_1001F89B0, v27);

    return (*(v10 + 8))(v31, v9);
  }

  return result;
}

uint64_t sub_10015C650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for RemindersInCalendarEditingResult();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[10] = v9;
  v6[11] = v8;

  return _swift_task_switch(sub_10015C754, v9, v8);
}

uint64_t sub_10015C754()
{
  v1 = RemindersInCalendarUtilities.ReminderCreationModule.viewController.getter();
  v2 = [v1 view];

  if (v2)
  {
    [v2 endEditing:1];

    v7 = RemindersInCalendarUtilities.ReminderCreationModule.moduleInterface.getter();
    v9 = v8;
    v0[12] = v7;
    ObjectType = swift_getObjectType();
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_10015C864;
    v3 = v0[8];
    v4 = 1;
    v5 = ObjectType;
    v6 = v9;
  }

  else
  {
    __break(1u);
  }

  return dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.commitEditing(allowingUserConfirmation:)(v3, v4, v5, v6);
}

uint64_t sub_10015C864()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_10015C9A8, v3, v2);
}

uint64_t sub_10015C9A8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];

  (*(v2 + 104))(v1, enum case for RemindersInCalendarEditingResult.performed(_:), v3);
  v5 = static RemindersInCalendarEditingResult.== infix(_:_:)();
  v6 = *(v2 + 8);
  v6(v1, v3);
  if ((v5 & 1) != 0 && v4)
  {
    v7 = v0[3];

    v7(v8);
    sub_10015F010(v7);
  }

  v6(v0[8], v0[5]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10015CB9C()
{
  v1 = v0;
  v2 = sub_10015E0CC(&qword_100250F30);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_creationModule;
  swift_beginAccess();
  sub_10015F168(v1 + v9, v4, &qword_100250F30);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10015EE80(v4, &qword_100250F30);
  }

  (*(v6 + 32))(v8, v4, v5);
  RemindersInCalendarUtilities.ReminderCreationModule.moduleInterface.getter();
  swift_getObjectType();
  dispatch thunk of RemindersInCalendarReminderCreationModuleInterface.cancelEditing(canShowUserConfirmation:)();
  swift_unknownObjectRelease();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10015CDD8()
{
  v1 = sub_10015E0CC(&qword_100251560);
  __chkstk_darwin(v1 - 8);
  v24 = &v22 - v2;
  v3 = sub_10015E0CC(&qword_100250F30);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v22 - v11;
  v13 = OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_creationModule;
  swift_beginAccess();
  sub_10015F168(v0 + v13, v5, &qword_100250F30);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10015EE80(v5, &qword_100250F30);
  }

  v23 = *(v7 + 32);
  v23(v12, v5, v6);
  v15 = type metadata accessor for TaskPriority();
  v16 = v24;
  (*(*(v15 - 8) + 56))(v24, 1, 1, v15);
  (*(v7 + 16))(v10, v12, v6);
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = &protocol witness table for MainActor;
  v23((v20 + v18), v10, v6);
  v21 = (v20 + v19);
  *v21 = 0;
  v21[1] = 0;
  sub_100167F80(0, 0, v16, &unk_1001F89A8, v20);

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_10015D154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10015D1EC;

  return static RemindersInCalendarUtilities.checkAndRequestAuthorizationIfNeeded(presentingWith:)(a4);
}

uint64_t sub_10015D1EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10015D3E8(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015E0CC(&qword_100250F10);
  __chkstk_darwin(v7 - 8);
  v9 = &v61 - v8;
  v10 = [a1 dueDateComponents];
  if (!v10)
  {
    v36 = type metadata accessor for DateComponents();
    (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
    sub_10015EE80(v9, &qword_100250F10);
    if (qword_100250DA0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000F8DC(v37, qword_1002525F0);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_18;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Created reminder has no due date and won't be visible in Calendar";
    goto LABEL_17;
  }

  v11 = v10;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = type metadata accessor for DateComponents();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  sub_10015EE80(v9, &qword_100250F10);
  v13 = *(v1 + OBJC_IVAR____TtC9MobileCal32AddReminderViewControllerManager_model);
  v14 = [v13 eventStore];
  if (!v14)
  {
    if (qword_100250DA0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000F8DC(v42, qword_1002525F0);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_18;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "No event store";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v38, v39, v41, v40, 2u);

LABEL_18:

    return;
  }

  v15 = v14;
  v16 = [objc_opt_self() eventWithEventStore:v14];
  v17 = [v13 reminderCalendar];
  if (v17)
  {
    v18 = v17;
    v64 = v13;
    v65 = v15;
    v19 = v16;
    [v19 setCalendar:v18];
    v20 = [a1 objectID];
    v21 = [v20 urlRepresentation];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    URL.absoluteString.getter();
    (*(v4 + 8))(v6, v3);
    v22 = String._bridgeToObjectiveC()();

    [v19 setUniqueID:v22];

    v23 = [objc_allocWithZone(AddItemState) initWithEvent:v19];
    [v23 setExplicitTime:1];
    v62 = v23;
    sub_10015AAC8(v23);
    if (qword_100250DA0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000F8DC(v24, qword_1002525F0);
    v25 = v19;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v63 = v18;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v66 = v30;
      *v29 = 136315138;
      v31 = [v25 uniqueID];

      if (!v31)
      {
        __break(1u);
        goto LABEL_33;
      }

      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = sub_10015E27C(v32, v34, &v66);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "Saving temporary event for reminder %s", v29, 0xCu);
      sub_10015F11C(v30);
    }

    else
    {
    }

    v47 = v64;
    v48 = v65;
    v66 = 0;
    if ([v65 saveEvent:v25 span:0 commit:0 error:&v66])
    {
      v49 = v66;
      v50 = [v47 pendingReminderTracker];
      if (v50)
      {
        v51 = v50;
        [v50 setOptimisticReminder:a1 forEvent:v25 sequenceNumber:{objc_msgSend(v25, "sequenceNumber")}];

        v52 = [v47 pendingReminderTracker];
        if (v52)
        {
          v53 = v52;
          v54 = [v25 sequenceNumber];

          [v53 addPendingEvent:v25 sequenceNumber:v54];
          return;
        }

        goto LABEL_34;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v55 = v66;

    _convertNSErrorToError(_:)();
    swift_willThrow();
    swift_errorRetain();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *v58 = 138412290;
      swift_errorRetain();
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 4) = v60;
      *v59 = v60;
      _os_log_impl(&_mh_execute_header, v56, v57, "Error saving event for new reminder %@", v58, 0xCu);
      sub_10015EE80(v59, &qword_100250F18);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100250DA0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000F8DC(v43, qword_1002525F0);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "No calendar", v46, 2u);
    }
  }
}

id sub_10015DD34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddReminderViewControllerManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10015DE0C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result addItemViewControllerManager:v0 didCompleteWithAction:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t variable initialization expression of RootNavigationErrorDisplayManager.timerQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_10000376C(0, &qword_100250DC0);
  static DispatchQoS.unspecified.getter();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_10015F240(&qword_100250DC8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10015E0CC(&qword_100250DD0);
  sub_10015E114();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_10015E0CC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10015E114()
{
  result = qword_100250DD8;
  if (!qword_100250DD8)
  {
    sub_10015E178(&qword_100250DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100250DD8);
  }

  return result;
}

uint64_t sub_10015E178(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of RootNavigationErrorDisplayManager.timerStartTime@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void *sub_10015E26C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_10015E27C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10015E348(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10015EE20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10015F11C(v11);
  return v7;
}

unint64_t sub_10015E348(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10015E454(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10015E454(uint64_t a1, unint64_t a2)
{
  v3 = sub_10015E4A0(a1, a2);
  sub_10015E5D0(&off_1002128B8);
  return v3;
}

char *sub_10015E4A0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10015E6BC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10015E6BC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10015E5D0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10015E730(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10015E6BC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10015E0CC(&unk_100250F20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10015E730(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10015E0CC(&unk_100250F20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_10015E824(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = (__chkstk_darwin)();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10015E0CC(&qword_100250F48);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10015F240(&qword_100250F50, &type metadata accessor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10015F240(&qword_100250F58, &type metadata accessor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10015EB44(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_10015D3E8(a1);
    if (v5)
    {
      v6 = v5;
      [v4 replaceSavedEvent:v5];
      [v4 addItemViewControllerManager:v1 didCompleteWithAction:1];
    }

    else
    {
      [v4 addItemViewControllerManager:v1 didCompleteWithAction:0];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata accessor for AddReminderViewControllerManager()
{
  result = qword_100250E88;
  if (!qword_100250E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10015EC58()
{
  sub_10015ED7C(319, &qword_100250E98, &type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule);
  if (v0 <= 0x3F)
  {
    sub_10015ED7C(319, &qword_100250EA0, &type metadata accessor for DateComponents);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10015ED7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for EKAccountError()
{
  if (!qword_100250EA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100250EA8);
    }
  }
}

uint64_t sub_10015EE20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10015EE80(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10015E0CC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10015EEE0(uint64_t a1)
{
  v4 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10015F3D8;

  return sub_10015C650(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10015F010(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10015F020(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10015F030()
{
  v1 = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationModule();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10015F11C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10015F168(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10015E0CC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015F1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015E0CC(&qword_100250F10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015F240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015F288(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10015E0CC(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015F2F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10015D1EC;

  return sub_10015D154(a1, v4, v5, v6);
}

char *sub_10015F660()
{
  v1 = v0;
  v110 = type metadata accessor for UIButton.Configuration.Size();
  v106 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v101 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v103 = *(v3 - 1);
  v104 = v3;
  __chkstk_darwin(v3);
  v101 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIButton.Configuration();
  v108 = *(v5 - 8);
  v109 = v5;
  v6 = __chkstk_darwin(v5);
  v102 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v107 = &v101 - v8;
  *&v0[OBJC_IVAR____TtC9MobileCal15DockedEventView_event] = 0;
  *&v0[OBJC_IVAR____TtC9MobileCal15DockedEventView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC9MobileCal15DockedEventView_titleLabel;
  *&v0[OBJC_IVAR____TtC9MobileCal15DockedEventView_titleLabel] = v9;
  v11 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v12 = [v11 fontDescriptorWithSymbolicTraits:2];

  if (v12)
  {
    v13 = *&v1[v10];
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 fontWithDescriptor:v12 size:0.0];
    [v15 setFont:v16];
  }

  v17 = *&v1[v10];
  v18 = String._bridgeToObjectiveC()();
  [v17 setText:v18];

  [*&v1[v10] setNumberOfLines:1];
  [*&v1[v10] setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = [objc_allocWithZone(UILabel) init];
  v20 = OBJC_IVAR____TtC9MobileCal15DockedEventView_timeLabel;
  *&v1[OBJC_IVAR____TtC9MobileCal15DockedEventView_timeLabel] = v19;
  v21 = v19;
  v22 = String._bridgeToObjectiveC()();
  [v21 setText:v22];

  v23 = *&v1[v20];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v25 setFont:v26];

  v27 = *&v1[v20];
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 secondaryLabelColor];
  [v29 setTextColor:v30];

  [*&v1[v20] setNumberOfLines:1];
  [*&v1[v20] setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [objc_allocWithZone(UIView) init];
  v32 = OBJC_IVAR____TtC9MobileCal15DockedEventView_calendarBar;
  *&v1[OBJC_IVAR____TtC9MobileCal15DockedEventView_calendarBar] = v31;
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [*&v1[v32] layer];
  [v33 setCornerRadius:3.0];

  v34 = v107;
  static UIButton.Configuration._glass()();
  v35 = [objc_opt_self() configurationWithScale:3];
  v36 = String._bridgeToObjectiveC()();
  v37 = [objc_opt_self() systemImageNamed:v36 withConfiguration:v35];

  UIButton.Configuration.image.setter();
  (*(v103 + 104))(v101, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v104);
  UIButton.Configuration.cornerStyle.setter();
  (*(v106 + 104))(v105, enum case for UIButton.Configuration.Size.large(_:), v110);
  UIButton.Configuration.buttonSize.setter();
  sub_10000376C(0, &unk_100251200);
  (*(v108 + 16))(v102, v34, v109);
  v38 = UIButton.init(configuration:primaryAction:)();
  *&v1[OBJC_IVAR____TtC9MobileCal15DockedEventView_actionButton] = v38;
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = type metadata accessor for DockedEventView();
  v111.receiver = v1;
  v111.super_class = v39;
  v40 = objc_msgSendSuper2(&v111, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v41 = *&v40[OBJC_IVAR____TtC9MobileCal15DockedEventView_actionButton];
  v42 = OBJC_IVAR____TtC9MobileCal15DockedEventView_actionButton;
  v110 = OBJC_IVAR____TtC9MobileCal15DockedEventView_actionButton;
  v43 = v40;
  v44 = v40;
  v105 = v40;
  v45 = v43;
  v101 = v43;
  [v41 addTarget:v43 action:"actionButtonTapped" forControlEvents:64];
  v46 = OBJC_IVAR____TtC9MobileCal15DockedEventView_titleLabel;
  v47 = *&v45[OBJC_IVAR____TtC9MobileCal15DockedEventView_titleLabel];
  v102 = OBJC_IVAR____TtC9MobileCal15DockedEventView_titleLabel;
  v48 = v45;
  [v48 addSubview:v47];
  v49 = OBJC_IVAR____TtC9MobileCal15DockedEventView_timeLabel;
  v50 = *&v48[OBJC_IVAR____TtC9MobileCal15DockedEventView_timeLabel];
  v103 = OBJC_IVAR____TtC9MobileCal15DockedEventView_timeLabel;
  [v48 addSubview:v50];
  v51 = OBJC_IVAR____TtC9MobileCal15DockedEventView_calendarBar;
  [v48 addSubview:*&v48[OBJC_IVAR____TtC9MobileCal15DockedEventView_calendarBar]];
  [v48 addSubview:*&v44[v42]];
  v104 = objc_opt_self();
  sub_10015E0CC(&qword_1002511E0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1001F89F0;
  v53 = [*&v48[v51] leadingAnchor];
  v54 = [v48 leadingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:24.0];

  *(v52 + 32) = v55;
  v56 = [*&v48[v51] widthAnchor];
  v57 = [v56 constraintEqualToConstant:6.0];

  *(v52 + 40) = v57;
  v58 = *&v48[v51];
  v106 = v51;
  v59 = [v58 topAnchor];
  v60 = v101;
  v61 = [*&v101[v46] topAnchor];
  v62 = [v59 constraintEqualToAnchor:v61];

  *(v52 + 48) = v62;
  v63 = [*&v48[v51] bottomAnchor];
  v64 = [*&v48[v49] bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v52 + 56) = v65;
  v66 = v110;
  v67 = v105;
  v68 = [*&v105[v110] trailingAnchor];
  v69 = [v48 trailingAnchor];

  v70 = [v68 constraintEqualToAnchor:v69 constant:-16.0];
  *(v52 + 64) = v70;
  v71 = [*&v67[v66] centerYAnchor];
  v72 = [v48 centerYAnchor];

  v73 = [v71 constraintEqualToAnchor:v72];
  *(v52 + 72) = v73;
  v74 = [*&v67[v66] widthAnchor];
  v75 = [v74 constraintEqualToConstant:44.0];

  *(v52 + 80) = v75;
  v76 = [*&v67[v66] heightAnchor];
  v77 = [v76 constraintEqualToConstant:44.0];

  *(v52 + 88) = v77;
  v78 = v102;
  v79 = [*&v102[v60] leadingAnchor];
  v80 = [*&v48[v106] trailingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:10.0];

  *(v52 + 96) = v81;
  v82 = [*&v78[v60] trailingAnchor];
  v83 = v105;
  v84 = [*&v105[v110] leadingAnchor];
  v85 = [v82 constraintEqualToAnchor:v84 constant:10.0];

  *(v52 + 104) = v85;
  v86 = [*&v78[v60] topAnchor];
  v87 = [v48 topAnchor];

  v88 = [v86 constraintEqualToAnchor:v87 constant:15.0];
  *(v52 + 112) = v88;
  v89 = v103;
  v90 = [*&v48[v103] bottomAnchor];
  v91 = [v48 bottomAnchor];

  v92 = [v90 constraintEqualToAnchor:v91 constant:-15.0];
  *(v52 + 120) = v92;
  v93 = [*&v48[v89] leadingAnchor];
  v94 = [*&v48[v106] trailingAnchor];
  v95 = [v93 constraintEqualToAnchor:v94 constant:10.0];

  *(v52 + 128) = v95;
  v96 = [*&v48[v89] trailingAnchor];
  v97 = [*&v83[v110] leadingAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:10.0];

  *(v52 + 136) = v98;
  sub_10000376C(0, &qword_1002511E8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v104 activateConstraints:isa];

  (*(v108 + 8))(v107, v109);
  return v48;
}

void sub_100160478(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49 = a2;
  v50 = a3;
  v6 = sub_10015E0CC(&qword_1002511F8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  v12 = type metadata accessor for Date();
  v52 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v51 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v46 - v15;
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v19 = *(v4 + OBJC_IVAR____TtC9MobileCal15DockedEventView_event);
  *(v4 + OBJC_IVAR____TtC9MobileCal15DockedEventView_event) = a1;
  v20 = a1;

  if (a1)
  {
    v48 = v9;
    v21 = *(v4 + OBJC_IVAR____TtC9MobileCal15DockedEventView_titleLabel);
    v22 = v20;
    v23 = [v22 title];
    [v21 setText:v23];

    v24 = [v21 text];
    if (!v24)
    {
      goto LABEL_5;
    }

    v47 = v4;

    v25 = [v21 text];
    if (!v25)
    {
      __break(1u);
      return;
    }

    v26 = v25;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = String.count.getter();

    v4 = v47;
    if (!v27)
    {
LABEL_5:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:defaultValue:table:bundle:locale:comment:)();
      v28 = String._bridgeToObjectiveC()();

      [v21 setText:v28];
    }

    v29 = *(v4 + OBJC_IVAR____TtC9MobileCal15DockedEventView_timeLabel);
    v30 = [v22 startDate];
    if (v30)
    {
      v31 = v30;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v32.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v33 = v52;
      (*(v52 + 8))(v16, v12);
    }

    else
    {
      v32.super.isa = 0;
      v33 = v52;
    }

    v34 = [v22 endDate];
    if (v34)
    {
      v35 = v51;
      v36 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v37.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v33 + 8))(v35, v12);
    }

    else
    {
      v37.super.isa = 0;
    }

    v38 = CUIKDurationStringForDates();

    [v29 setText:v38];
    v39 = *(v4 + OBJC_IVAR____TtC9MobileCal15DockedEventView_calendarBar);
    v40 = [v22 calendar];

    v41 = [v40 uiColor];
    [v39 setBackgroundColor:v41];

    UIButton.configuration.getter();
    v42 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v42 - 8) + 48))(v11, 1, v42))
    {
      sub_100161DE0(v11, v48);
      UIButton.configuration.setter();

      sub_100161E50(v11);
    }

    else
    {
      v43 = [objc_opt_self() configurationWithScale:3];
      v44 = String._bridgeToObjectiveC()();
      v45 = [objc_opt_self() systemImageNamed:v44 withConfiguration:v43];

      UIButton.Configuration.image.setter();
      UIButton.configuration.setter();
    }
  }
}

id sub_100160B48(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_dockedEventView];
  [*(v3 + OBJC_IVAR____TtC9MobileCal15DockedEventView_titleLabel) sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v5 = v4;
  [*(v3 + OBJC_IVAR____TtC9MobileCal15DockedEventView_timeLabel) sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v7 = v6;
  result = [a2 view];
  if (*&result == 0.0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = v5 + v7 + 30.0 + 2.0;
    [result safeAreaInsets];
    v12 = v11;

    *&result = v10 - v12;
  }

  return result;
}

id sub_100160D00()
{
  v1 = *&v0[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_fullViewController];
  [v0 addChildViewController:v1];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = result;
  [v3 addSubview:result];

  result = [v0 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = result;
  v6 = *&v0[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_dockedEventView];
  [result addSubview:v6];

  result = [v1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10015E0CC(&qword_1002511E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001F8A00;
  result = [v1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = result;
  v10 = [result topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = result;
  v12 = [result topAnchor];

  v13 = [v10 constraintEqualToAnchor:v12];
  *(v8 + 32) = v13;
  result = [v1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = result;
  v15 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = result;
  v17 = [result leadingAnchor];

  v18 = [v15 constraintEqualToAnchor:v17];
  *(v8 + 40) = v18;
  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = result;
  v20 = [result trailingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v21 = result;
  v22 = [result trailingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22];
  *(v8 + 48) = v23;
  result = [v1 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24 = result;
  v25 = [result bottomAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v26 = result;
  v27 = [result bottomAnchor];

  v28 = [v25 constraintEqualToAnchor:v27];
  *(v8 + 56) = v28;
  v29 = [v6 topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v30 = result;
  v31 = [result topAnchor];

  v32 = [v29 constraintEqualToAnchor:v31];
  *(v8 + 64) = v32;
  v33 = [v6 leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v34 = result;
  v35 = [result leadingAnchor];

  v36 = [v33 constraintEqualToAnchor:v35];
  *(v8 + 72) = v36;
  v37 = [v6 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v38 = result;
  v39 = [result trailingAnchor];

  v40 = [v37 constraintEqualToAnchor:v39];
  *(v8 + 80) = v40;
  v41 = [v6 bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v42 = result;
  v43 = objc_opt_self();
  v44 = [v42 bottomAnchor];

  v45 = [v41 constraintEqualToAnchor:v44];
  *(v8 + 88) = v45;
  sub_10000376C(0, &qword_1002511E8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:isa];

  return [v1 didMoveToParentViewController:v0];
}

void sub_10016143C()
{
  v1 = v0;
  v30.receiver = v0;
  v30.super_class = type metadata accessor for DockableEventContainerController();
  objc_msgSendSuper2(&v30, "viewDidLayoutSubviews");
  if (([v0 isBeingDismissed] & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_dockedEventView];
    v3 = *&v1[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_fullViewController];
    v4 = [v3 eventForDockedView];
    v5 = [v3 actionButtonSymbol];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    sub_100160478(v4, v6, v8);

    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v31.origin.x = v12;
      v31.origin.y = v14;
      v31.size.width = v16;
      v31.size.height = v18;
      Height = CGRectGetHeight(v31);
      [*&v2[OBJC_IVAR____TtC9MobileCal15DockedEventView_titleLabel] sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v21 = v20;
      [*&v2[OBJC_IVAR____TtC9MobileCal15DockedEventView_timeLabel] sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v23 = v21 + v22 + 30.0 + 2.0;
      v24 = v23 < Height;
      v25 = OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_isShowingFull;
      v26 = v1[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_isShowingFull];
      v1[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_isShowingFull] = v24;
      if (v26 == v24)
      {
        return;
      }

      if (v23 < Height)
      {
        v27 = v2;
LABEL_8:
        v29 = [v3 view];
        if (v29)
        {
LABEL_11:
          [v29 setHidden:0];
          [objc_opt_self() transitionFromView:v27 toView:v29 duration:5243136 options:0 completion:0.3];

          return;
        }

        __break(1u);
LABEL_10:
        v29 = v2;
        goto LABEL_11;
      }

      v28 = [v3 view];
      if (v28)
      {
        v27 = v28;
        if (v1[v25] != 1)
        {
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100161710(void *a1)
{
  v2 = [a1 selectedDetentIdentifier];
  if (!v2)
  {
    v10 = (v1 + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_isShowingFull);
    v11 = *(v1 + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_isShowingFull);
    *(v1 + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_isShowingFull) = 0;
    if ((v11 & 1) == 0)
    {
      return;
    }

    goto LABEL_14;
  }

  v3 = v2;
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

  v10 = (v1 + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_isShowingFull);
  v12 = *(v1 + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_isShowingFull);
  *(v1 + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_isShowingFull) = v9 & 1;
  if ((v9 & 1) != v12)
  {
    if (v9)
    {
      v13 = *(v1 + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_dockedEventView);
LABEL_16:
      v15 = [*(v1 + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_fullViewController) view];
      if (v15)
      {
LABEL_19:
        v16 = v15;
        [v15 setHidden:0];
        [objc_opt_self() transitionFromView:v13 toView:v16 duration:5243136 options:0 completion:0.3];

        return;
      }

      __break(1u);
LABEL_18:
      v15 = *(v1 + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_dockedEventView);
      goto LABEL_19;
    }

LABEL_14:
    v14 = [*(v1 + OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_fullViewController) view];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v13 = v14;
    if (*v10 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }
}

id sub_1001619D8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_100161A80(void *a1)
{
  v3 = OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_dockedEventView;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for DockedEventView()) init];
  v1[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_dockable] = 1;
  v1[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_isShowingFull] = 1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    *&v1[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_fullViewController] = a1;
    v5 = a1;
  }

  else
  {
    v6 = type metadata accessor for DockableEventContainerNavigationWrapper();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC9MobileCal39DockableEventContainerNavigationWrapper_fullViewController] = a1;
    v21.receiver = v7;
    v21.super_class = v6;
    *&v1[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_fullViewController] = objc_msgSendSuper2(&v21, "initWithRootViewController:", a1);
  }

  v20.receiver = v1;
  v20.super_class = type metadata accessor for DockableEventContainerController();
  v8 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", 0, 0);
  sub_100160D00();
  v9 = OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_dockedEventView;
  [*&v8[OBJC_IVAR____TtC9MobileCal32DockableEventContainerController_dockedEventView] setHidden:1];
  *(*&v8[v9] + OBJC_IVAR____TtC9MobileCal15DockedEventView_delegate + 8) = &off_1002129F0;
  swift_unknownObjectWeakAssign();
  [v8 setModalPresentationStyle:1];
  v10 = [v8 sheetPresentationController];

  if (v10)
  {
    sub_10000376C(0, &qword_1002511F0);
    *(swift_allocObject() + 16) = v8;
    v11 = v8;
    v12 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

    [v10 setDelegate:v11];
    sub_10015E0CC(&qword_1002511E0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001F8A10;
    *(v13 + 32) = [objc_opt_self() largeDetent];
    *(v13 + 40) = v12;
    v14 = v12;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setDetents:isa];

    [v10 setSelectedDetentIdentifier:UISheetPresentationControllerDetentIdentifierLarge];
    [v10 setPrefersGrabberVisible:1];
    v16 = [v14 identifier];
    [v10 setLargestUndimmedDetentIdentifier:v16];
  }

  v17 = [v8 presentationController];
  if (v17)
  {
    v18 = v17;
    [v17 setDelegate:v8];
  }

  return v8;
}

uint64_t sub_100161DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015E0CC(&qword_1002511F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161E50(uint64_t a1)
{
  v2 = sub_10015E0CC(&qword_1002511F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_100161ED0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100161F44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t Application.open(view:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CalendarAppView();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10016208C, v5, v4);
}

uint64_t sub_10016208C()
{
  v1 = [*(v0 + 24) allSceneManagers];
  sub_10000376C(0, &qword_100251330);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_29:

    sub_1001623D4();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();

    v14 = *(v0 + 8);
    goto LABEL_30;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    goto LABEL_29;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _diagnoseUnexpectedEnumCase<A>(type:)(v4, v3);
    }

    v5 = *(v2 + 32);
  }

  v6 = v5;
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  v11 = [v6 rootViewController];
  (*(v8 + 16))(v7, v10, v9);
  v12 = (*(v8 + 88))(v7, v9);
  if (v12 != enum case for CalendarAppView.day(_:))
  {
    if (v12 == enum case for CalendarAppView.week(_:))
    {
      v13 = &selRef_showWeekView;
      goto LABEL_24;
    }

    if (v12 == enum case for CalendarAppView.month(_:))
    {
      v13 = &selRef_showMonthView;
      goto LABEL_24;
    }

    if (v12 == enum case for CalendarAppView.splitMonth(_:))
    {
      v13 = &selRef_showSplitMonthView;
      goto LABEL_24;
    }

    if (v12 == enum case for CalendarAppView.year(_:))
    {
      v13 = &selRef_showYearView;
      goto LABEL_24;
    }

    if (v12 == enum case for CalendarAppView.list(_:))
    {
      v13 = &selRef_showListView;
      goto LABEL_24;
    }

    if (v12 == enum case for CalendarAppView.search(_:))
    {
      v13 = &selRef_showSearchView;
      goto LABEL_24;
    }

    if (v12 == enum case for CalendarAppView.calendars(_:))
    {
      v13 = &selRef_showCalendarsView;
      goto LABEL_24;
    }

    if (v12 == enum case for CalendarAppView.inbox(_:))
    {
      v13 = &selRef_showInboxView;
      goto LABEL_24;
    }

    v4 = *(v0 + 32);
    v3 = v4;

    return _diagnoseUnexpectedEnumCase<A>(type:)(v4, v3);
  }

  v13 = &selRef_showDayView;
LABEL_24:

  [v11 *v13];

  v14 = *(v0 + 8);
LABEL_30:

  return v14();
}

unint64_t sub_1001623D4()
{
  result = qword_100251210;
  if (!qword_100251210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100251210);
  }

  return result;
}

uint64_t Application.open(date:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10015E0CC(&qword_100251218);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  sub_10015E0CC(&qword_100251220);
  v2[6] = swift_task_alloc();
  sub_10015E0CC(&qword_100251228);
  v2[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100162574, v4, v3);
}

uint64_t sub_100162574()
{
  v1 = [*(v0 + 24) allSceneManagers];
  sub_10000376C(0, &qword_100251330);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:

    sub_1001623D4();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    goto LABEL_14;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);

  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, v7, v8);
  v10 = 1;
  (*(v9 + 56))(v6, 0, 1, v8);
  v11 = [v5 model];
  v12 = [v11 calendar];
  if (v12)
  {
    v13 = v12;
    static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = 0;
  }

  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v16 = type metadata accessor for Calendar();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, v10, 1, v16);
  sub_1001629C4(v15, v14);
  result = (*(v17 + 48))(v14, 1, v16);
  if (result == 1)
  {
    goto LABEL_20;
  }

  v18 = *(v0 + 56);
  v20 = *(v0 + 40);
  v19 = *(v0 + 48);

  sub_10000376C(0, &qword_100251230);
  Calendar.timeZone.getter();
  (*(v17 + 8))(v20, v16);
  v21 = type metadata accessor for TimeZone();
  (*(*(v21 - 8) + 56))(v19, 0, 1, v21);
  v22 = sub_100162A34(v18, v19);
  if (!v22)
  {
    sub_1001623D4();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();

LABEL_14:

    v25 = *(v0 + 8);
    goto LABEL_15;
  }

  v23 = v22;
  v24 = [v5 rootNavigationController];
  [v24 showDate:v23 animated:1];

  v25 = *(v0 + 8);
LABEL_15:

  return v25();
}

uint64_t sub_1001629C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015E0CC(&qword_100251218);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100162A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  isa = 0;
  if ((*(v5 + 48))(a1, 1, v4) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(a1, v4);
  }

  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(a2, 1, v7) != 1)
  {
    v9 = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(a2, v7);
  }

  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDate:isa timeZone:v9];

  return v10;
}

uint64_t Application.open(event:withIdiom:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for OpenIdiom();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100162CC8, v6, v5);
}

uint64_t sub_100162CC8()
{
  v1 = [*(v0 + 32) eventStore];
  if (!v1)
  {

    v17 = type metadata accessor for CalendarLinkError();
    sub_1001630A8();
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, enum case for CalendarLinkError.failedToCreateEventStore(_:), v17);
    swift_willThrow();
LABEL_21:

    v22 = *(v0 + 8);
    goto LABEL_22;
  }

  v2 = v1;
  EventEntity.id.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 eventWithAppEntityIdentifier:v3];

  if (!v4)
  {

    v19 = type metadata accessor for CalendarLinkError();
    sub_1001630A8();
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for CalendarLinkError.eventNotFound(_:), v19);
    swift_willThrow();
LABEL_20:

    goto LABEL_21;
  }

  v5 = [*(v0 + 32) allSceneManagers];
  sub_10000376C(0, &qword_100251330);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
LABEL_19:

    sub_1001623D4();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

    goto LABEL_20;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _diagnoseUnexpectedEnumCase<A>(type:)(v8, v7);
    }

    v9 = *(v6 + 32);
  }

  v10 = v9;
  v12 = *(v0 + 48);
  v11 = *(v0 + 56);
  v13 = *(v0 + 40);
  v14 = *(v0 + 24);

  (*(v12 + 16))(v11, v14, v13);
  v15 = (*(v12 + 88))(v11, v13);
  if (v15 != enum case for OpenIdiom.viewer(_:))
  {
    if (v15 == enum case for OpenIdiom.editor(_:))
    {
      v16 = 3;
      goto LABEL_14;
    }

    v8 = *(v0 + 40);
    v7 = v8;

    return _diagnoseUnexpectedEnumCase<A>(type:)(v8, v7);
  }

  v16 = 1;
LABEL_14:

  v21 = [v10 rootNavigationController];
  [v21 showEvent:v4 animated:1 showMode:v16 context:0];

  v22 = *(v0 + 8);
LABEL_22:

  return v22();
}

unint64_t sub_1001630A8()
{
  result = qword_100251238;
  if (!qword_100251238)
  {
    type metadata accessor for CalendarLinkError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100251238);
  }

  return result;
}

uint64_t Application.open(calendar:enableDoneInitially:)(uint64_t a1, char a2)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  type metadata accessor for MainActor();
  *(v3 + 32) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10016319C, v5, v4);
}

uint64_t sub_10016319C()
{
  v1 = *(v0 + 24);

  v2 = [v1 allSceneManagers];
  sub_10000376C(0, &qword_100251330);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_1001623D4();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v10 = *(v0 + 8);
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  v9 = [v6 rootViewController];
  [v9 showInspectorForCalendar:v8 enableDoneInitially:v7];

  v10 = *(v0 + 8);
LABEL_9:

  return v10();
}

uint64_t Application.highlight(event:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001633D4, v4, v3);
}

uint64_t sub_1001633D4()
{
  v1 = v0[3];

  v2 = [v1 allSceneManagers];
  sub_10000376C(0, &qword_100251330);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_1001623D4();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v9 = v0[1];
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;
  v7 = v0[2];

  v8 = [v6 rootViewController];
  [v8 showEventAndCloseSidebarIfNeeded:v7 animated:1 showMode:0];

  v9 = v0[1];
LABEL_9:

  return v9();
}

uint64_t Application.composeEmail(event:recipients:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v3[29] = swift_getObjectType();
  type metadata accessor for MainActor();
  v3[30] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[31] = v5;
  v3[32] = v4;

  return _swift_task_switch(sub_100163628, v5, v4);
}

uint64_t sub_100163628()
{
  v1 = *(v0 + 208);
  v2 = objc_opt_self();
  sub_10000376C(0, &qword_100251240);
  isa = Array._bridgeToObjectiveC()().super.isa;
  LODWORD(v1) = [v2 canShowViewControllerForEvent:v1 withParticipantRecipients:isa];

  if (!v1)
  {

    v16 = type metadata accessor for CalendarLinkError();
    sub_1001630A8();
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, enum case for CalendarLinkError.cannotSendMailDueToAccountManagement(_:), v16);
LABEL_15:
    swift_willThrow();
    goto LABEL_16;
  }

  v4 = [*(v0 + 224) allSceneManagers];
  sub_10000376C(0, &qword_100251330);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_14:

    sub_1001623D4();
    swift_allocError();
    *v20 = 0;
    goto LABEL_15;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_continuation_await(v6);
    }

    v7 = *(v5 + 32);
  }

  v8 = v7;
  *(v0 + 264) = v7;
  v9 = *(v0 + 208);

  v10 = objc_allocWithZone(EKUIEmailCompositionManager);
  v11 = Array._bridgeToObjectiveC()().super.isa;
  v12 = [v10 initWithEvent:v9 participantRecipients:v11 subjectPrefix:0 bodyPrefix:0];
  *(v0 + 272) = v12;

  v13 = [v12 viewController];
  *(v0 + 280) = v13;
  if (v13)
  {
    v14 = [v8 rootViewController];
    *(v0 + 288) = v14;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 304;
    *(v0 + 24) = sub_100163A60;
    v15 = swift_continuation_init();
    *(v0 + 200) = sub_10015E0CC(&qword_100251248);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100163F70;
    *(v0 + 168) = &unk_100212A28;
    *(v0 + 176) = v15;
    [v14 dismissPresentedViewControllerAnimated:0 completion:v0 + 144];
    v6 = v0 + 16;

    return _swift_continuation_await(v6);
  }

  v18 = type metadata accessor for CalendarLinkError();
  sub_1001630A8();
  swift_allocError();
  (*(*(v18 - 8) + 104))(v19, enum case for CalendarLinkError.cannotSendMailForUnknownReason(_:), v18);
  swift_willThrow();

LABEL_16:
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100163A60()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return _swift_task_switch(sub_100163B68, v2, v1);
}

uint64_t sub_100163B68()
{
  v13 = v0;

  if (qword_100250D90 != -1)
  {
    swift_once();
  }

  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[29];
  swift_beginAccess();
  v5 = v2;
  sub_1001645F0(&v12, v5);
  swift_endAccess();

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v0[22] = sub_100164828;
  v0[23] = v7;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001640E0;
  v0[21] = &unk_100212AA0;
  v8 = _Block_copy(v0 + 18);

  [v5 setMessageSendingComplete:v8];
  _Block_release(v8);
  v9 = [v3 rootViewController];
  v0[37] = v9;
  v0[10] = v0;
  v0[11] = sub_100163DDC;
  v10 = swift_continuation_init();
  v0[25] = sub_10015E0CC(&qword_100251250);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100164134;
  v0[21] = &unk_100212AC8;
  v0[22] = v10;
  [v9 presentViewController:v1 animated:1 completion:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100163DDC()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return _swift_task_switch(sub_100163EE4, v2, v1);
}

uint64_t sub_100163EE4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100163F70(uint64_t a1, char a2)
{
  v3 = *sub_100164A14((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

void sub_100163FCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong viewController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 presentingViewController];

      if (v4)
      {
        [v4 dismissViewControllerAnimated:1 completion:0];
      }
    }

    if (qword_100250D90 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v5 = sub_1001653C8(v1);
    swift_endAccess();
  }
}

uint64_t sub_1001640E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100164134(uint64_t a1)
{
  v1 = *sub_100164A14((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100164168(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10015F3D8;

  return Application.open(view:)(a1);
}

uint64_t sub_100164200(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10015F3D8;

  return Application.open(date:)(a1);
}

uint64_t sub_100164298(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10015F3D8;

  return Application.open(event:withIdiom:)(a1, a2);
}

uint64_t sub_100164340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10015F3D8;

  return CalendarViewOpener.list(description:events:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100164408(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10015F3D8;

  return Application.open(calendar:enableDoneInitially:)(a1, a2);
}

uint64_t sub_1001644B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10015F3D8;

  return Application.highlight(event:)(a1);
}

uint64_t sub_100164548(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10015D1EC;

  return Application.composeEmail(event:recipients:)(a1, a2);
}

uint64_t sub_1001645F0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10000376C(0, &qword_100251260);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100164A58(v7, result + 1);
    if (v19[3] <= v19[2])
    {
      sub_100164C48();
    }

    v18 = v8;
    sub_100164E70(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10000376C(0, &qword_100251260);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_100164EF4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}

uint64_t sub_100164830(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for OpenViewError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OpenViewError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001649C0()
{
  result = qword_100251258;
  if (!qword_100251258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100251258);
  }

  return result;
}

void *sub_100164A14(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

Swift::Int sub_100164A58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10015E0CC(&qword_100251268);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_10000376C(0, &qword_100251260);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_100164C48();
        }

        v2 = v14;
        result = NSObject._rawHashValue(seed:)(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100164C48()
{
  v1 = v0;
  v2 = *v0;
  sub_10015E0CC(&qword_100251268);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

unint64_t sub_100164E70(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_100164EF4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100164C48();
  }

  else
  {
    if (v7 > v6)
    {
      sub_100165064();
      goto LABEL_12;
    }

    sub_1001651B4();
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000376C(0, &qword_100251260);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100165064()
{
  v1 = v0;
  sub_10015E0CC(&qword_100251268);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001651B4()
{
  v1 = v0;
  v2 = *v0;
  sub_10015E0CC(&qword_100251268);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(v4 + 40);
      v16 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(v15);
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v16;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v24;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001653C8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100165560();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_10000376C(0, &qword_100251260);
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100165064();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1001656C8(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_100165560()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_100164A58(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_10000376C(0, &qword_100251260);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_1001656C8(v8);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001656C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_100165870(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_100167A00(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t RootNavigationErrorDisplayManager.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*RootNavigationErrorDisplayManager.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_100165AE8;
}

void sub_100165AE8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id RootNavigationErrorDisplayManager.__allocating_init(delegate:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_100004178(a1);
  swift_unknownObjectRelease();
  return v4;
}

id RootNavigationErrorDisplayManager.init(delegate:)(uint64_t a1)
{
  v1 = sub_100004178(a1);
  swift_unknownObjectRelease();
  return v1;
}

id RootNavigationErrorDisplayManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_isObserving;
  if (v0[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_isObserving] == 1)
  {
    v2 = objc_opt_self();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v0 name:UIApplicationDidEnterBackgroundNotification object:0];

    v4 = [v2 defaultCenter];
    [v4 removeObserver:v0 name:UIApplicationDidBecomeActiveNotification object:0];

    v0[v1] = 0;
  }

  sub_100011DC8(0);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for RootNavigationErrorDisplayManager();
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t sub_100165E4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v27 = *(v13 - 8);
  v28 = v13;
  __chkstk_darwin();
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v16 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_displayTimer;
    [*&v5[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_displayTimer] invalidate];
    v17 = *&v5[v16];
    *&v5[v16] = 0;
  }

  v18 = &v5[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_currentlyDisplayedAccount];
  *v18 = a1;
  v18[1] = a2;

  v19 = &v5[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_currentlyDisplayedError];
  *v19 = a3;
  v19[8] = 0;
  swift_beginAccess();
  sub_1001674D8(a1, a2);
  swift_endAccess();
  v20 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_pastContentDict;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *&v5[v20];
  *&v5[v20] = 0x8000000000000000;
  sub_100167734(a3, a1, a2, isUniquelyReferenced_nonNull_native);
  *&v5[v20] = v31;
  swift_endAccess();
  sub_10000376C(0, &qword_100250DC0);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  v23[2] = v5;
  v23[3] = a1;
  v23[4] = a2;
  v23[5] = a3;
  aBlock[4] = sub_100167C10;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A3F0;
  aBlock[3] = &unk_100212E28;
  v24 = _Block_copy(aBlock);

  v25 = v5;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100004530(&qword_100251288, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015E0CC(&qword_100251290);
  sub_100005EF8(&qword_100251298, &qword_100251290);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v29 + 8))(v12, v10);
  (*(v27 + 8))(v15, v28);
  *&v25[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_secondsRemaining] = 0x402E000000000000;
  return sub_100166994();
}

uint64_t sub_100166250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = String._bridgeToObjectiveC()();
    [v6 updateLabelWithAccountIdentifier:v7 error:a4];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10016631C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin();
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_timerQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A3F0;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_100004530(&qword_100251288, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015E0CC(&qword_100251290);
  sub_100005EF8(&qword_100251298, &qword_100251290);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_1001665C8(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v10 = sub_100165870(v9);
  v12 = v11;
  v14 = v13;

  if (v12)
  {
    sub_100165E4C(v10, v12, v14, 0);
  }

  else
  {
    v16 = &a1[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_currentlyDisplayedAccount];
    *v16 = 0;
    *(v16 + 1) = 0;

    v17 = &a1[OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_currentlyDisplayedError];
    *v17 = 0;
    v17[8] = 1;
    sub_100011DC8(0);
    sub_10000376C(0, &qword_100250DC0);
    v23 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    aBlock[4] = sub_100167C4C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000A3F0;
    aBlock[3] = &unk_100212DD8;
    v19 = _Block_copy(aBlock);
    v20 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_100004530(&qword_100251288, &type metadata accessor for DispatchWorkItemFlags);
    sub_10015E0CC(&qword_100251290);
    sub_100005EF8(&qword_100251298, &qword_100251290);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v23;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v3 + 8))(v5, v2);
    return (*(v24 + 8))(v8, v6);
  }
}

void sub_1001669BC(uint64_t a1)
{
  sub_10015E0CC(&qword_100251228);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_displayTimer;
  [*(a1 + OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_displayTimer) invalidate];
  v5 = *(a1 + v4);
  *(a1 + v4) = 0;

  v6 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_isObserving;
  if ((*(a1 + OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_isObserving) & 1) == 0)
  {
    v7 = objc_opt_self();
    v8 = [v7 defaultCenter];
    [v8 addObserver:a1 selector:"appDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

    v9 = [v7 defaultCenter];
    [v9 addObserver:a1 selector:"appDidBecomeActive" name:UIApplicationDidBecomeActiveNotification object:0];

    *(a1 + v6) = 1;
  }

  Date.init()();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  v11 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_timerStartTime;
  swift_beginAccess();
  sub_100167B98(v3, a1 + v11);
  swift_endAccess();
  v12 = [objc_opt_self() timerWithTimeInterval:a1 target:"showNextItem" selector:0 userInfo:0 repeats:*(a1 + OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_secondsRemaining)];
  v13 = *(a1 + v4);
  *(a1 + v4) = v12;

  v14 = [objc_opt_self() mainRunLoop];
  v15 = *(a1 + v4);
  if (v15)
  {
    v16 = v14;
    [v14 addTimer:v15 forMode:NSRunLoopCommonModes];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100166C60(uint64_t a1)
{
  v2 = sub_10015E0CC(&qword_100251228);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_timerStartTime;
  swift_beginAccess();
  sub_100167AB8(a1 + v12, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100167B28(v4);
  }

  (*(v6 + 32))(v11, v4, v5);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v9, v5);
  v17 = *(a1 + OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_secondsRemaining) - v15;
  if (v17 < 0.0)
  {
    v17 = 0.0;
  }

  *(a1 + OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_secondsRemaining) = v17;
  v18 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_displayTimer;
  [*(a1 + OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_displayTimer) invalidate];
  v19 = *(a1 + v18);
  *(a1 + v18) = 0;

  return (v16)(v11, v5);
}

uint64_t sub_100166F00(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_secondsRemaining) > 0.0 && *(result + OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_currentlyDisplayedAccount + 8) && (*(result + OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_currentlyDisplayedError + 8) & 1) == 0)
  {
    return sub_100166994();
  }

  return result;
}

void sub_100166FAC()
{
  v1 = OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_isObserving;
  if (*(v0 + OBJC_IVAR____TtC9MobileCal33RootNavigationErrorDisplayManager_isObserving) == 1)
  {
    v2 = objc_opt_self();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v0 name:UIApplicationDidEnterBackgroundNotification object:0];

    v4 = [v2 defaultCenter];
    [v4 removeObserver:v0 name:UIApplicationDidBecomeActiveNotification object:0];

    *(v0 + v1) = 0;
  }
}

id RootNavigationErrorDisplayManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_100167108(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100167180(a1, a2, v4);
}

unint64_t sub_100167180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100167238(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10015E0CC(&unk_100250F80);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1001674D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_100167108(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100167898();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_100167584(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_100167584(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100167734(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100167108(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100167238(v16, a4 & 1);
      result = sub_100167108(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100167898();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_100167898()
{
  v1 = v0;
  sub_10015E0CC(&unk_100250F80);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100167A00(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100167AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015E0CC(&qword_100251228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100167B28(uint64_t a1)
{
  v2 = sub_10015E0CC(&qword_100251228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100167B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015E0CC(&qword_100251228);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

EKEventStore_optional __swiftcall Application.eventStore()()
{
  swift_getObjectType();
  v1 = [v0 allSceneManagers];
  sub_100167D94();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    v7 = [swift_getObjCClassFromMetadata() createNewCalendarModel];
    goto LABEL_9;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_12;
    }

    v5 = *(v2 + 32);
  }

  v6 = v5;

  v7 = [v6 model];

LABEL_9:
  v8 = [v7 eventStore];

  v4 = v8;
LABEL_12:
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

unint64_t sub_100167D94()
{
  result = qword_100251330;
  if (!qword_100251330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100251330);
  }

  return result;
}

id sub_100167E24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  a2[3] = sub_10000376C(0, &qword_100251368);
  a2[4] = sub_100167F18();
  *a2 = a1;

  return a1;
}

id sub_100167E94@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

id sub_100167EA0@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(CalLinkREMStoreWrapper) init];
  *a1 = result;
  return result;
}

id sub_100167EDC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(CNContactStore) init];
  *a1 = result;
  return result;
}

unint64_t sub_100167F18()
{
  result = qword_100251370;
  if (!qword_100251370)
  {
    sub_10000376C(255, &qword_100251368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100251370);
  }

  return result;
}

uint64_t sub_100167F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10015E0CC(&qword_100251560);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10016A9F0(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10015EE80(v11, &qword_100251560);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10015EE80(a3, &qword_100251560);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10015EE80(a3, &qword_100251560);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_100168270()
{
  result = [objc_allocWithZone(type metadata accessor for TipsManager()) init];
  static TipsManager.shared = result;
  return result;
}

uint64_t *TipsManager.shared.unsafeMutableAddressor()
{
  if (qword_100250D98 != -1)
  {
    swift_once();
  }

  return &static TipsManager.shared;
}

id static TipsManager.shared.getter()
{
  if (qword_100250D98 != -1)
  {
    swift_once();
  }

  v1 = static TipsManager.shared;

  return v1;
}

void sub_1001683A8()
{
  if (*(v0 + OBJC_IVAR____TtC9MobileCal11TipsManager____lazy_storage___jumpToTodayTip) == 1)
  {
    *(v0 + OBJC_IVAR____TtC9MobileCal11TipsManager____lazy_storage___jumpToTodayTip) = 0;
  }
}

Swift::Void __swiftcall TipsManager.addTipObservers(for:todayButton:)(UIViewController a1, UIBarButtonItem todayButton)
{
  v3 = sub_10015E0CC(&qword_100251560);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC9MobileCal11TipsManager_tipObservationTask;
  if (!*&v2[OBJC_IVAR____TtC9MobileCal11TipsManager_tipObservationTask])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong || (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
    {
    }

    else
    {
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();
      v8 = type metadata accessor for TaskPriority();
      (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
      type metadata accessor for MainActor();
      v9 = v2;
      v10 = v2;
      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = v9;
      *&v10[v6] = sub_100167F80(0, 0, v5, &unk_1001F8DA8, v12);
    }
  }
}

uint64_t sub_100168598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  sub_10015E0CC(&qword_100251408);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for Tips.Status();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = sub_10015E0CC(&qword_100251410);
  v4[18] = swift_task_alloc();
  v4[19] = sub_10015E0CC(&qword_100251418);
  v4[20] = swift_task_alloc();
  v6 = sub_10015E0CC(&qword_100251420);
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = sub_10015E0CC(&qword_100251428);
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = type metadata accessor for MainActor();
  v4[28] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[29] = v9;
  v4[30] = v8;

  return _swift_task_switch(sub_100168810, v9, v8);
}

uint64_t sub_100168810()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  sub_1001683A8();
  sub_10016A73C();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_1000102B0(&qword_100251430, &qword_100251410);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v0[31] = OBJC_IVAR____TtC9MobileCal11TipsManager_tipPopoverController;
  v4 = static MainActor.shared.getter();
  v0[32] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[33] = v5;
  v0[34] = v7;

  return _swift_task_switch(sub_1001689AC, v5, v7);
}

uint64_t sub_1001689AC()
{
  v1 = v0[32];
  v0[35] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_1000102B0(&qword_100251438, &qword_100251418);
  v2 = swift_task_alloc();
  v0[36] = v2;
  *v2 = v0;
  v2[1] = sub_100013F28;
  v3 = v0[13];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v3, v1, &protocol witness table for MainActor);
}

uint64_t sub_100168AB0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10015EE80(v3, &qword_100251408);
    v4 = v0[29];
    v5 = v0[30];

    return _swift_task_switch(sub_100169050, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[16], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[37] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[38] = v8;
    *v8 = v0;
    v8[1] = sub_100168C88;
    v9 = v0[16];

    return (v11)(v0 + 39, v9);
  }
}

uint64_t sub_100168C88()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);

  (*(v3 + 8))(v2, v4);
  *(v1 + 313) = *(v1 + 312);
  v5 = *(v1 + 272);
  v6 = *(v1 + 264);

  return _swift_task_switch(sub_100168E34, v6, v5);
}

uint64_t sub_100168E34()
{

  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_100168E98, v1, v2);
}

uint64_t sub_100168E98()
{
  if (*(v0 + 313))
  {
    sub_1001692D0();
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      v4[2] = nullsub_4;
      v4[3] = 0;
      v4[4] = v3;
      v0[6] = sub_10016AC24;
      v0[7] = v4;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_10000A3F0;
      v0[5] = &unk_100213120;
      v5 = _Block_copy(v0 + 2);

      [v2 dismissViewControllerAnimated:1 completion:v5];
      _Block_release(v5);
    }
  }

  v6 = static MainActor.shared.getter();
  v0[32] = v6;
  if (v6)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v0[33] = v7;
  v0[34] = v9;

  return _swift_task_switch(sub_1001689AC, v7, v9);
}

uint64_t sub_100169050()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

Swift::Void __swiftcall TipsManager.updatePresentedController(_:)(UIViewController a1)
{
  if (byte_100251380 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {

      swift_unknownObjectWeakAssign();
    }
  }
}

void sub_1001692D0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v1 = swift_unknownObjectWeakLoadStrong();
    if (!v1)
    {
      return;
    }

    v2 = v1;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      Strong = v2;
      goto LABEL_2;
    }

    v4 = v3;
    sub_1001683A8();
    sub_10016A73C();
    if ([v4 view])
    {
      type metadata accessor for TipUIPopoverViewController();
      v33 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
      v5 = [v4 traitCollection];
      v6 = [v5 horizontalSizeClass];

      if (v6 == 1)
      {
        v7 = [v4 view];
        if (!v7)
        {
LABEL_26:
          __break(1u);
          return;
        }

        v8 = v7;
        [v7 bounds];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v35.origin.x = v10;
        v35.origin.y = v12;
        v35.size.width = v14;
        v35.size.height = v16;
        Width = CGRectGetWidth(v35);
      }

      else
      {
        Width = UILayoutFittingCompressedSize.width;
      }

      [v33 setPreferredContentSize:{Width, UILayoutFittingCompressedSize.height}];
      v18 = TipUIPopoverViewController.popoverPresentationController.getter();
      if (v18)
      {
        v19 = v18;
        [v18 setPermittedArrowDirections:2];
      }

      v20 = TipUIPopoverViewController.popoverPresentationController.getter();
      if (v20)
      {
        v21 = v20;
        v22 = [v4 view];
        [v21 setSourceView:v22];
      }

      v23 = TipUIPopoverViewController.popoverPresentationController.getter();
      if (v23)
      {
        v24 = v23;
        [v23 setBarButtonItem:v2];
      }

      v25 = TipUIPopoverViewController.popoverPresentationController.getter();
      if (!v25)
      {
        goto LABEL_23;
      }

      v26 = v25;
      v27 = [v4 view];
      sub_100169680(v27);

      v28 = [v4 view];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 subviews];

        sub_10000376C(0, &qword_1002513E8);
        v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10016A284(v31);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v26 setPassthroughViews:isa];

LABEL_23:
        [v4 presentViewController:v33 animated:1 completion:0];

        swift_unknownObjectWeakAssign();
        Strong = v33;
        goto LABEL_2;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

LABEL_2:
}

double sub_100169680(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 superview];
    if (v2)
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      if (ObjectType != sub_10000376C(0, &qword_100251400))
      {
        v5 = v3;
        sub_100169680(v3);

        sub_10015E0CC(&qword_1002511E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1001F8D80;
        *(inited + 32) = v1;
        v7 = v1;
        sub_10016A284(inited);

        return result;
      }
    }

    sub_10015E0CC(&qword_1002511E0);
    v9 = swift_allocObject();
    *&result = 1;
    *(v9 + 16) = xmmword_1001F8D80;
    *(v9 + 32) = v1;
  }

  return result;
}

void sub_1001697AC(void (*a1)(void))
{
  a1();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_unknownObjectWeakAssign();
  }
}

void TipsManager.dismissTipIfPresentedWithCompletionBlock(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = sub_10016A704;
    v8[3] = v4;
    v8[4] = v7;
    aBlock[4] = sub_10016A70C;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000A3F0;
    aBlock[3] = &unk_100212FE0;
    v9 = _Block_copy(aBlock);

    [v6 dismissViewControllerAnimated:0 completion:v9];

    _Block_release(v9);
  }

  else
  {
    v10 = qword_100250DA8;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_10015E0CC(&qword_1002513A8);
    sub_10000F8DC(v11, qword_100252608);
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    v12 = swift_endAccess();
    a1(v12);
  }
}

uint64_t sub_100169A2C(uint64_t (*a1)(uint64_t))
{
  if (qword_100250DA8 != -1)
  {
    swift_once();
  }

  v2 = sub_10015E0CC(&qword_1002513A8);
  sub_10000F8DC(v2, qword_100252608);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  v3 = swift_endAccess();
  return a1(v3);
}

id TipsManager.init()()
{
  *&v0[OBJC_IVAR____TtC9MobileCal11TipsManager_tipObservationTask] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC9MobileCal11TipsManager____lazy_storage___jumpToTodayTip] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsManager();
  return objc_msgSendSuper2(&v2, "init");
}

id TipsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall TipsManager.jumpToTodayActionPerformed()()
{
  v0 = type metadata accessor for Tips.InvalidationReason();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001683A8();
  (*(v1 + 104))(v3, enum case for Tips.InvalidationReason.actionPerformed(_:), v0);
  sub_10016A73C();
  Tip.invalidate(reason:)();
  (*(v1 + 8))(v3, v0);
}

uint64_t sub_100169FD0(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v4 = sub_10015E0CC(&qword_1002513A8);
  sub_10000F8DC(v4, a3);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_10016A094(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10016A18C;

  return v6(a1);
}

uint64_t sub_10016A18C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10016A284(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10016A374(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10016A414(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10016A374(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_10016A414(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1000102B0(&qword_1002513F8, &qword_1002513F0);
          for (i = 0; i != v6; ++i)
          {
            sub_10015E0CC(&qword_1002513F0);
            v9 = sub_10016A5C8(v13, i, a3);
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
        sub_10000376C(0, &qword_1002513E8);
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

void (*sub_10016A5C8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_10016A648;
  }

  __break(1u);
  return result;
}

uint64_t sub_10016A650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10015D1EC;

  return sub_100168598(a1, v4, v5, v6);
}

unint64_t sub_10016A73C()
{
  result = qword_1002513B8;
  if (!qword_1002513B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002513B8);
  }

  return result;
}

void sub_10016A790(uint64_t a1, void (**a2)(void))
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_10015F3A4;
  *(v4 + 24) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = sub_10016AC18;
    v8[3] = v4;
    v8[4] = v7;
    aBlock[4] = sub_10016AC24;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000A3F0;
    aBlock[3] = &unk_100213080;
    v9 = _Block_copy(aBlock);
    _Block_copy(a2);

    [v6 dismissViewControllerAnimated:0 completion:v9];

    _Block_release(v9);
  }

  else
  {
    _Block_copy(a2);
    v10 = qword_100250DA8;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_10015E0CC(&qword_1002513A8);
    sub_10000F8DC(v11, qword_100252608);
    v13 = 0;
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();
    a2[2](a2);
  }
}

uint64_t sub_10016A9F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015E0CC(&qword_100251560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016AA60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10015F3D8;

  return sub_10016A094(a1, v4);
}

uint64_t sub_10016AB18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10015D1EC;

  return sub_10016A094(a1, v4);
}

uint64_t sub_10016ABD0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10016AC90(void *a1)
{
  v2 = sub_10015E0CC(&qword_100251458);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for AppEntityID();
  v23 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for ViewLocation();
  __chkstk_darwin(v12 - 8);
  v13 = [a1 event];
  v14 = EKEvent.entityIdentifier.getter();
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    if (([v13 isIntegrationEvent] & 1) == 0)
    {
      [a1 rect];
      ViewLocation.init(x:y:z:width:height:depth:)();
      sub_10016B2B4([a1 state]);
      type metadata accessor for EventEntity();
      v24 = v16;
      v25 = v17;
      type metadata accessor for _RepresentedEntityElement();
      swift_allocObject();
      sub_10016BC10(&qword_100251460, &type metadata accessor for EventEntity);
      v19 = _RepresentedEntityElement.init<A>(appEntityType:identifier:geometry:state:subelements:)();

      return v19;
    }

    if ([v13 isReminderIntegrationEvent])
    {
      AppEntityID.init(entityIdentifierString:)();
      v18 = v23;
      if ((*(v23 + 48))(v4, 1, v5) != 1)
      {
        (*(v18 + 32))(v10, v4, v5);
        (*(v18 + 16))(v8, v10, v5);
        [a1 rect];
        ViewLocation.init(x:y:z:width:height:depth:)();
        sub_10016B2B4([a1 state]);
        type metadata accessor for ReminderEntity();
        type metadata accessor for _RepresentedEntityElement();
        swift_allocObject();
        sub_10016BC10(&qword_100251468, &type metadata accessor for ReminderEntity);
        v21 = _RepresentedEntityElement.init<A>(appEntityType:identifier:geometry:state:subelements:)();

        (*(v18 + 8))(v10, v5);
        return v21;
      }

      sub_10016B850(v4);
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

void *sub_10016B108(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = &_swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v11 = &_swiftEmptyArrayStorage;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10016B2B4(char a1)
{
  v2 = type metadata accessor for AppEntityVisualState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v16 - v7;
  v16[1] = &_swiftEmptyArrayStorage;
  sub_10016BC10(&qword_100251470, &type metadata accessor for AppEntityVisualState);
  sub_10015E0CC(&qword_100251478);
  sub_10016B8B8();
  result = dispatch thunk of SetAlgebra.init<A>(_:)();
  if (a1)
  {
    static AppEntityVisualState.selected.getter();
    sub_10016B91C(v8, v6);
    v11 = *(v3 + 8);
    v11(v6, v2);
    result = (v11)(v8, v2);
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  static AppEntityVisualState.highlighted.getter();
  sub_10016B91C(v8, v6);
  v12 = *(v3 + 8);
  v12(v6, v2);
  result = (v12)(v8, v2);
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  static AppEntityVisualState.focused.getter();
  sub_10016B91C(v8, v6);
  v13 = *(v3 + 8);
  v13(v6, v2);
  result = (v13)(v8, v2);
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  static AppEntityVisualState.disabled.getter();
  sub_10016B91C(v8, v6);
  v14 = *(v3 + 8);
  v14(v6, v2);
  result = (v14)(v8, v2);
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  static AppEntityVisualState.editing.getter();
  sub_10016B91C(v8, v6);
  v15 = *(v3 + 8);
  v15(v6, v2);
  result = (v15)(v8, v2);
  if ((a1 & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  static AppEntityVisualState.primary.getter();
  sub_10016B91C(v8, v6);
  v10 = *(v3 + 8);
  v10(v6, v2);
  return (v10)(v8, v2);
}

void *sub_10016B5EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong annotatedEntities];
    if (v2)
    {
      v3 = v2;
      sub_10016B7C4();
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v5);
      v8[2] = v0;
      v6 = sub_10016B108(sub_10016B810, v8, v4);

      swift_unknownObjectRelease();
      return v6;
    }

    swift_unknownObjectRelease();
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10016B6E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016B708(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_10016B740()
{
  result = qword_100251448;
  if (!qword_100251448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100251448);
  }

  return result;
}

unint64_t sub_10016B7C4()
{
  result = qword_100251450;
  if (!qword_100251450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100251450);
  }

  return result;
}

uint64_t sub_10016B810@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10016AC90(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10016B850(uint64_t a1)
{
  v2 = sub_10015E0CC(&qword_100251458);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10016B8B8()
{
  result = qword_100251480;
  if (!qword_100251480)
  {
    sub_10015E178(&qword_100251478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100251480);
  }

  return result;
}

uint64_t sub_10016B91C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = sub_10015E0CC(&qword_100251488);
  v4 = __chkstk_darwin(v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = type metadata accessor for AppEntityVisualState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_10016BC10(&qword_100251470, &type metadata accessor for AppEntityVisualState);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v16 = v26;
  sub_10016BC10(&unk_100251490, &type metadata accessor for AppEntityVisualState);
  v24 = a2;
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    dispatch thunk of SetAlgebra.formUnion(_:)();
  }

  v20 = v27;
  sub_10016BC58(v7, v27);
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

uint64_t sub_10016BC10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016BC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015E0CC(&qword_100251488);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016BF5C()
{
  v1 = v0;
  v2 = sub_10015E0CC(&qword_100251568);
  __chkstk_darwin(v2 - 8);
  v50 = &v46 - v3;
  v4 = sub_10015E0CC(&qword_100250F10);
  v5 = __chkstk_darwin(v4 - 8);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v46 - v7;
  v8 = type metadata accessor for RemindersInCalendarEditingReminderProperties();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10015E0CC(&qword_100251578);
  __chkstk_darwin(v15 - 8);
  v17 = (&v46 - v16);
  v18 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v46 - v23;
  v58 = OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_event;
  v25 = *&v0[OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_event];
  v26 = v25;
  sub_10016C6E8(v25, v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_10015EE80(v17, &qword_100251578);
  }

  (*(v19 + 32))(v24, v17, v18);
  (*(v19 + 16))(v22, v24, v18);
  RemindersInCalendarUtilities.ReminderEditingConfiguration.init(reminderSpecifier:)();
  v28 = *&v1[OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_model];
  v47 = v24;
  if (v28)
  {
    v29 = [v28 undoManager];
  }

  v30 = v54;
  v31 = v48;
  RemindersInCalendarUtilities.ReminderEditingConfiguration.undoManager.setter();
  CalRemindersSolariumEnabled();
  RemindersInCalendarUtilities.ReminderEditingConfiguration.newUserInterfaceStyleEnabled.setter();
  static RemindersInCalendarUtilities.makeReminderEditingModule(configuration:)();
  RemindersInCalendarEditingReminderProperties.init()();
  v32 = *&v1[v58];
  if (v32)
  {
    v33 = [v32 startDateComponents];
    if (v33)
    {
      v34 = v33;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v37 = type metadata accessor for DateComponents();
    (*(*(v37 - 8) + 56))(v31, v35, 1, v37);
    sub_10015F1D0(v31, v49);
  }

  else
  {
    v36 = type metadata accessor for DateComponents();
    (*(*(v36 - 8) + 56))(v49, 1, 1, v36);
  }

  RemindersInCalendarEditingReminderProperties.dueDateComponents.setter();
  RemindersInCalendarUtilities.ReminderEditingModule.moduleInterface.getter();
  swift_getObjectType();
  dispatch thunk of RemindersInCalendarReminderEditingModuleInterface.editReminder(with:)();
  swift_unknownObjectRelease();
  RemindersInCalendarUtilities.ReminderEditingModule.moduleInterface.getter();
  swift_getObjectType();
  sub_10016F308();
  swift_unknownObjectRetain();
  dispatch thunk of RemindersInCalendarReminderEditingModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  v38 = v53;
  v39 = v50;
  v40 = v55;
  (*(v53 + 16))(v50, v11, v55);
  (*(v38 + 56))(v39, 0, 1, v40);
  v41 = OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_currentModule;
  swift_beginAccess();
  sub_10016F360(v39, &v1[v41]);
  swift_endAccess();
  sub_10015E0CC(&qword_1002511E0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1001F8D80;
  *(v42 + 32) = RemindersInCalendarUtilities.ReminderEditingModule.viewController.getter();
  sub_10000376C(0, &unk_100251590);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setViewControllers:isa animated:0];

  v44 = RemindersInCalendarUtilities.ReminderEditingModule.viewController.getter();
  v45 = [v44 view];

  if (v45)
  {
    [v45 annotateWithEvent:*&v1[v58]];
    [v45 updateEntityAnnotationStateWithIsSelected:1 isHighlighted:0 isFocused:0 isDisabled:0 isEditing:1 isPrimary:1];
  }

  (*(v56 + 8))(v30, v57);
  (*(v38 + 8))(v11, v40);
  (*(v51 + 8))(v14, v52);
  return (*(v19 + 8))(v47, v18);
}

uint64_t sub_10016C6E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10015E0CC(&qword_100250F10);
  __chkstk_darwin(v5 - 8);
  v6 = sub_10015E0CC(&qword_100250F60);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v27 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier();
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a2;
    v25 = 1;
    goto LABEL_7;
  }

  v13 = *(v2 + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_model);
  if (!v13)
  {
    v29 = a1;
    goto LABEL_12;
  }

  v14 = a1;
  v15 = v13;
  v16 = [v15 pendingReminderTracker];
  if (!v16)
  {

LABEL_12:
    v30 = [a1 uniqueID];
    if (v30)
    {
      v31 = v30;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(string:)();

      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {

        sub_10015EE80(v8, &qword_100250F60);
LABEL_19:
        v39 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier();
        return (*(*(v39 - 8) + 56))(a2, 1, 1, v39);
      }

      (*(v10 + 32))(v12, v8, v9);
      URL._bridgeToObjectiveC()(v32);
      v34 = v33;
      v35 = [objc_opt_self() objectIDWithURL:v33];

      if (v35)
      {
        EKEvent.recurrentReminderOccurrenceDate.getter();
        RemindersInCalendarUtilities.ReminderSpecifier.init(reminderID:dueDateOfRecurrentInstance:)();

        (*(v10 + 8))(v12, v9);
        v36 = enum case for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier.reminder(_:);
        v37 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier();
        v38 = *(v37 - 8);
        (*(v38 + 104))(a2, v36, v37);
        return (*(v38 + 56))(a2, 0, 1, v37);
      }

      (*(v10 + 8))(v12, v9);
    }

    goto LABEL_19;
  }

  v17 = v10;
  v18 = a2;
  v19 = v16;
  v41 = v14;
  v20 = [v16 optimisticReminderForEvent:v14];

  a2 = v18;
  v10 = v17;

  if (!v20)
  {
    goto LABEL_12;
  }

  *a2 = v20;
  v21 = enum case for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier.optimisticReminder(_:);
  v22 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier();
  v41 = *(v22 - 8);
  (*(v41 + 13))(a2, v21, v22);
  v23 = *(v41 + 7);
  v24 = a2;
  v25 = 0;
  v26 = v22;
LABEL_7:

  return v23(v24, v25, 1, v26);
}

uint64_t sub_10016CBCC()
{
  v1 = sub_10015E0CC(&qword_100250F10);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for RemindersInCalendarEditingReminderProperties();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015E0CC(&qword_100251568);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_currentModule;
  swift_beginAccess();
  sub_10016EFB0(v0 + v15, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10015EE80(v10, &qword_100251568);
  }

  (*(v12 + 32))(v14, v10, v11);
  v17 = *(v0 + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_event);
  if (v17)
  {
    v18 = v17;
    RemindersInCalendarEditingReminderProperties.init()();
    v19 = [v18 startDateComponents];
    if (v19)
    {
      v20 = v19;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = type metadata accessor for DateComponents();
    (*(*(v22 - 8) + 56))(v3, v21, 1, v22);
    RemindersInCalendarEditingReminderProperties.dueDateComponents.setter();
    RemindersInCalendarUtilities.ReminderEditingModule.moduleInterface.getter();
    swift_getObjectType();
    dispatch thunk of RemindersInCalendarReminderEditingModuleInterface.editReminder(with:)();

    swift_unknownObjectRelease();
    (*(v5 + 8))(v7, v4);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10016D024()
{
  v1 = sub_10015E0CC(&qword_100251568);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_currentModule;
  swift_beginAccess();
  sub_10016EFB0(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10015EE80(v3, &qword_100251568);
    v9 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    RemindersInCalendarUtilities.ReminderEditingModule.moduleInterface.getter();
    swift_getObjectType();
    v9 = dispatch thunk of RemindersInCalendarReminderEditingModuleInterface.hasUncommittedChanges.getter();
    swift_unknownObjectRelease();
    (*(v5 + 8))(v7, v4);
  }

  return v9 & 1;
}

uint64_t sub_10016D228()
{
  v1 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015E0CC(&qword_100251568);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_currentModule;
  swift_beginAccess();
  sub_10016EFB0(v0 + v8, v7);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_10015EE80(v7, &qword_100251568);
    v9 = 0;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_10015EE80(v7, &qword_100251568);
    RemindersInCalendarUtilities.ReminderEditingModule.moduleInterface.getter();
    (*(v2 + 8))(v4, v1);
    swift_getObjectType();
    v9 = dispatch thunk of RemindersInCalendarReminderEditingModuleInterface.requiresUserConfirmationForCommittingEditing.getter();
    swift_unknownObjectRelease();
  }

  return v9 & 1;
}

uint64_t sub_10016D440(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v5 = sub_10015E0CC(&qword_100251560);
  __chkstk_darwin(v5 - 8);
  v29 = &v27 - v6;
  v7 = sub_10015E0CC(&qword_100251568);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  v17 = OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_currentModule;
  swift_beginAccess();
  sub_10016EFB0(v2 + v17, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_10015EE80(v9, &qword_100251568);
    if (a1)
    {

      a1(v19);
      return sub_10015F010(a1);
    }
  }

  else
  {
    v28 = *(v11 + 32);
    v28(v16, v9, v10);
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v29, 1, 1, v20);
    (*(v11 + 16))(v14, v16, v10);
    type metadata accessor for MainActor();
    sub_10015F020(a1);
    v21 = static MainActor.shared.getter();
    v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v27 = a2;
    v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    *(v24 + 24) = &protocol witness table for MainActor;
    v28((v24 + v22), v14, v10);
    v25 = (v24 + v23);
    v26 = v27;
    *v25 = a1;
    v25[1] = v26;
    sub_100167F80(0, 0, v29, &unk_1001F8FB8, v24);

    return (*(v11 + 8))(v16, v10);
  }

  return result;
}

uint64_t sub_10016D7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for RemindersInCalendarEditingResult();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[10] = v9;
  v6[11] = v8;

  return _swift_task_switch(sub_10016D8A4, v9, v8);
}

uint64_t sub_10016D8A4()
{
  v1 = RemindersInCalendarUtilities.ReminderEditingModule.viewController.getter();
  v2 = [v1 view];

  if (v2)
  {
    [v2 endEditing:1];

    v7 = RemindersInCalendarUtilities.ReminderEditingModule.moduleInterface.getter();
    v9 = v8;
    v0[12] = v7;
    ObjectType = swift_getObjectType();
    v11 = swift_task_alloc();
    v0[13] = v11;
    *v11 = v0;
    v11[1] = sub_10015C864;
    v3 = v0[8];
    v4 = 1;
    v5 = ObjectType;
    v6 = v9;
  }

  else
  {
    __break(1u);
  }

  return dispatch thunk of RemindersInCalendarReminderEditingModuleInterface.commitEditing(allowingUserConfirmation:)(v3, v4, v5, v6);
}

uint64_t sub_10016DA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_10015E0CC(&qword_100251568);
  v4[9] = swift_task_alloc();
  sub_10015E0CC(&qword_100251570);
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[12] = v7;
  v4[13] = v6;

  return _swift_task_switch(sub_10016DBF0, v7, v6);
}

uint64_t sub_10016DBF0()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_currentModule;
  swift_beginAccess();
  sub_10016EFB0(v4 + v5, v1);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    v6 = v0[9];

    sub_10015EE80(v6, &qword_100251568);
    v7 = v0[10];
    v8 = type metadata accessor for RemindersInCalendarEditingResult();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_10015EE80(v7, &qword_100251570);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[6];
    v14 = v0[7];
    v15 = v0[5];
    (*(v14 + 16))(v11, v12, v13);
    sub_10015EE80(v12, &qword_100251568);
    v16 = RemindersInCalendarUtilities.ReminderEditingModule.moduleInterface.getter();
    v18 = v17;
    v0[14] = v16;
    (*(v14 + 8))(v11, v13);
    ObjectType = swift_getObjectType();
    v20 = *(v15 + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_ignoreUnsavedChanges);
    v21 = swift_task_alloc();
    v0[15] = v21;
    *v21 = v0;
    v21[1] = sub_10016DE64;
    v22 = v0[10];

    return dispatch thunk of RemindersInCalendarReminderEditingModuleInterface.cancelEditing(allowingUserConfirmation:)(v22, (v20 & 1) == 0, ObjectType, v18);
  }
}

uint64_t sub_10016DE64()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_10016DFA8, v3, v2);
}

uint64_t sub_10016DFA8()
{

  v1 = *(v0 + 80);
  v2 = type metadata accessor for RemindersInCalendarEditingResult();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10015EE80(v1, &qword_100251570);

  v3 = *(v0 + 8);

  return v3();
}

void sub_10016E1FC(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EKReminderEditViewController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v3 = [v1 presentationController];
  v4 = [v3 delegate];

  if (v4)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = [v1 presentationController];
    if (v5)
    {
      v6 = v5;
      [v5 setDelegate:v1];
    }
  }
}

uint64_t sub_10016E494(void *a1)
{
  v2 = sub_10015E0CC(&qword_100251560);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v7 = a1;
  sub_100167F80(0, 0, v4, &unk_1001F8FA0, v6);
}

id sub_10016E63C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EKReminderEditViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EKReminderEditViewController()
{
  result = qword_1002514D8;
  if (!qword_1002514D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016E744()
{
  sub_10016E7F4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10016E7F4()
{
  if (!qword_1002514E8)
  {
    type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002514E8);
    }
  }
}

uint64_t sub_10016E858()
{
  v1 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015E0CC(&qword_100251568);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_currentModule;
  swift_beginAccess();
  sub_10016EFB0(v0 + v8, v7);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_10015EE80(v7, &qword_100251568);
    v9 = 1;
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_10015EE80(v7, &qword_100251568);
    RemindersInCalendarUtilities.ReminderEditingModule.moduleInterface.getter();
    (*(v2 + 8))(v4, v1);
    swift_getObjectType();
    v10 = dispatch thunk of RemindersInCalendarReminderEditingModuleInterface.requiresUserConfirmationForCancelingEditing.getter();
    swift_unknownObjectRelease();
    v9 = v10 ^ 1;
  }

  return v9 & 1;
}

void *sub_10016EA40()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_event);
  if (v1)
  {
    [v1 rollback];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result eventEditViewController:v0 didCompleteWithAction:0 completionHandler:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10016EAC8(void *a1, void *a2, void *a3)
{
  v19[3] = sub_10000376C(0, &unk_100251550);
  v19[4] = &protocol witness table for REMReminder;
  v19[0] = a2;
  v6 = a2;
  EKEvent.update(from:updateDates:forSavingIntegrationEvent:)();
  sub_10015F11C(v19);
  if ([a1 completed])
  {
    [a1 setRecurrenceRules:0];
  }

  v7 = [a1 eventStore];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  v9 = static EKSpan.automaticChange.getter();
  v19[0] = 0;
  v10 = [v8 saveEvent:a1 span:v9 commit:0 error:v19];

  if (v10)
  {
    v11 = v19[0];
    [a3 setOptimisticReminder:v6 forEvent:a1 sequenceNumber:{objc_msgSend(a1, "sequenceNumber")}];
    [a3 addPendingEvent:a1 sequenceNumber:{objc_msgSend(a1, "sequenceNumber")}];
  }

  else
  {
    v12 = v19[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100250DA0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F8DC(v13, qword_1002525F0);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error saving reminder changes onto event %@", v16, 0xCu);
      sub_10015EE80(v17, &qword_100250F18);
    }

    else
    {
    }
  }
}

uint64_t sub_10016EDAC(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(v1 + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_model);
    if (v5)
    {
      v6 = v5;
      v7 = [v6 pendingReminderTracker];
      if (v7)
      {
        v8 = v7;
        v9 = *(v1 + OBJC_IVAR____TtC9MobileCal28EKReminderEditViewController_event);
        if (v9)
        {
          v10 = v9;
          sub_10016EAC8(v10, a1, v8);

          v6 = v8;
          v8 = v10;
        }

        v6 = v8;
      }
    }

    v12[4] = sub_10016E494;
    v12[5] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10015BD68;
    v12[3] = &unk_1002131C8;
    v11 = _Block_copy(v12);
    [v4 eventEditViewController:v1 didCompleteWithAction:1 completionHandler:v11];
    _Block_release(v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10016EEFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10015F3D8;

  return sub_10015D154(a1, v4, v5, v6);
}

uint64_t sub_10016EFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015E0CC(&qword_100251568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016F020(uint64_t a1)
{
  v4 = *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingModule() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10015F3D8;

  return sub_10016D7A0(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10016F150(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10015F3D8;

  return sub_10016DA8C(a1, v4, v5, v6);
}

uint64_t sub_10016F204()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10016F244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10015D1EC;

  return sub_10016DA8C(a1, v4, v5, v6);
}

unint64_t sub_10016F308()
{
  result = qword_100251580;
  if (!qword_100251580)
  {
    type metadata accessor for EKReminderEditViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100251580);
  }

  return result;
}

uint64_t sub_10016F360(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015E0CC(&qword_100251568);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016F3D0()
{
  v0 = type metadata accessor for Logger();
  sub_10016F444(v0, qword_1002525F0);
  sub_10000F8DC(v0, qword_1002525F0);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_10016F444(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10016F52C()
{
  result = qword_1002515A0;
  if (!qword_1002515A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002515A0);
  }

  return result;
}

uint64_t sub_10016F580()
{
  v0 = sub_10015E0CC(&qword_1002513A8);
  sub_10016F444(v0, qword_100252608);
  sub_10000F8DC(v0, qword_100252608);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10016F634()
{
  v0 = sub_10015E0CC(&qword_1002513A8);
  sub_10016F444(v0, qword_100252620);
  sub_10000F8DC(v0, qword_100252620);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10016F6E8()
{
  v0 = sub_10015E0CC(&qword_1002513A8);
  sub_10016F444(v0, qword_100252638);
  sub_10000F8DC(v0, qword_100252638);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

void sub_10016F808(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CompactDayNavigationViewCell.m" lineNumber:636 description:@"Should not have tried to get the circle diameter for a rounded rect."];
}

void sub_10016F9FC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"InboxViewController.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"model != nil"}];
}

void sub_10016FD8C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ManagedNavigationController.m" lineNumber:214 description:@"Can't present self without a modal presentation delegate."];
}

void sub_100170048()
{
  sub_10007FD08();
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"YearViewYearHeader.m" lineNumber:40 description:@"'calendarDate' must not be nil"];
}

void sub_1001700BC(id *a1, uint64_t a2, uint64_t a3)
{
  v7 = +[NSAssertionHandler currentHandler];
  v6 = [*a1 sourceViewController];
  [v7 handleFailureInMethod:a2 object:a3 file:@"DeferredPopoverPresentationOperation.m" lineNumber:53 description:{@"Fatal: source view controller %@ does not support popover presentations.", v6}];
}

void sub_1001701C8()
{
  sub_10007FD08();
  v0 = +[NSAssertionHandler currentHandler];
  sub_1000912FC();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100170224()
{
  sub_10007FD08();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000912FC();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100170290()
{
  sub_10007FD08();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000912FC();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1001702FC()
{
  sub_10007FD08();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000912FC();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1001703DC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Initializing a reminder editor without a calendar model. The editor won't be able to update values in the app and there will be a syncing delay before changes are visible. (delegate = %@)", &v2, 0xCu);
}

void sub_1001704CC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ApplicationTester.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"_model != nil"}];
}

void sub_100170584()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getCalendarDebugReportProblemViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"RootNavigationController.m" lineNumber:14 description:{@"Unable to find class %s", "CalendarDebugReportProblemViewController"}];

  __break(1u);
}

void sub_100170600(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *CalendarDiagnosticsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"RootNavigationController.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void sub_10017094C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"LargeWeekViewController.m" lineNumber:1452 description:@"No source view for popover"];
}

void sub_100170AF0(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  [v2 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"LargeDayViewController.m" lineNumber:1493 description:@"There shouldn't be more than one selectedOccurrenceFrontmostClonedView."];
}

void sub_100170C18()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getCalendarDiagnosticsUIViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CalendarSceneManager.m" lineNumber:43 description:{@"Unable to find class %s", "CalendarDiagnosticsUIViewController"}];

  __break(1u);
}

void sub_100170C94(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *CalendarDiagnosticsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"CalendarSceneManager.m" lineNumber:42 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100170F58(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"InboxRepliedSectionViewController.m" lineNumber:565 description:@"Applies to all should not ever be enabled for the replied section"];
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}