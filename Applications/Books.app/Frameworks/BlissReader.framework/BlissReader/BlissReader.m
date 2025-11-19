id sub_256C(uint64_t a1)
{
  [*(a1 + 32) p_teardownPlayerIsTransferringToExpanded:0];
  v2 = *(a1 + 32);

  return [v2 p_stopAndInvalidate];
}

void sub_286C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2888(uint64_t a1)
{
  [*(a1 + 32) setContents:0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setRemovePosterLayer:0];
}

void sub_3CBC(uint64_t a1)
{
  v2 = [*(a1 + 32) layout];
  [v2 invalidate];

  LODWORD(v2) = UIAccessibilityLayoutChangedNotification;
  v6 = [*(a1 + 32) moviePlayerViewController];
  v3 = [v6 view];
  v4 = [v3 _accessibleSubviews];
  v5 = [v4 firstObject];
  UIAccessibilityPostNotification(v2, v5);
}

void sub_3FD8(uint64_t a1)
{
  v2 = [*(a1 + 32) removePosterLayer];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2);
  }

  v4 = [*(a1 + 32) autoplayConfig];
  [v4 enabled];
}

void sub_46A4(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) moviePlayerViewController];
  v3 = [v2 view];
  v4 = [v3 subviews];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v12 + 1) + 8 * v8) setBackgroundColor:*(a1 + 40)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) moviePlayerViewController];
  v11 = [v10 view];
  [v11 setBackgroundColor:v9];
}

void sub_4C64(uint64_t a1)
{
  [*(a1 + 32) setMoviePlayerControllerIsLoaded:1];
  v2 = [*(a1 + 32) moviePlayerViewController];
  v3 = [v2 player];
  [v3 play];

  v4 = [*(a1 + 32) layout];
  [v4 invalidate];
}

id sub_B150(uint64_t a1)
{
  result = [UIApp activeInterfaceOrientation];
  *(*(a1 + 32) + 560) = result;
  return result;
}

id sub_BA24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 640);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_BAA8;
  v4[3] = &unk_45AE58;
  v5 = v1;
  return [v2 syncPerformBlock:v4];
}

id sub_BAA8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 640);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_BB2C;
  v3[3] = &unk_45AE30;
  v3[4] = *(a1 + 40);
  return [v1 enumeratePageHostsUsingBlock:v3];
}

id sub_BB2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 containerView];

  return [v3 setBackgroundColor:v2];
}

id sub_C47C(uint64_t a1)
{
  v1 = [*(a1 + 32) scrubberCallout];

  return [v1 setAlpha:0.0];
}

id sub_C570(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 640);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_C5EC;
  v5[3] = &unk_45AEA8;
  v5[4] = v2;
  v5[5] = a2;
  return [v3 syncPerformBlock:v5];
}

id sub_C5EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 640);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_C670;
  v4[3] = &unk_45AE80;
  v5 = v1;
  return [v2 enumeratePageHostsUsingBlock:v4];
}

id sub_C670(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) p_relativePageIndexForPageInfo:{objc_msgSend(a2, "pageInfo")}];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

id sub_C7B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 640);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_C834;
  v5[3] = &unk_45AEA8;
  v5[4] = v2;
  v5[5] = a2;
  return [v3 syncPerformBlock:v5];
}

id sub_C834(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 640);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_C8B8;
  v4[3] = &unk_45AE80;
  v5 = v1;
  return [v2 enumeratePageHostsUsingBlock:v4];
}

id sub_C8B8(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) p_relativePageIndexForPageInfo:{objc_msgSend(a2, "pageInfo")}];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

id sub_CF3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 640);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_CFB8;
  v5[3] = &unk_45AEA8;
  v5[4] = v2;
  v5[5] = a2;
  return [v3 syncPerformBlock:v5];
}

char *sub_CFB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 640);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_D0E8;
  v6[3] = &unk_45AE80;
  v7 = v2;
  [v3 enumeratePageHostsUsingBlock:v6];
  if ([*(a1 + 32) leftOverscrollView] && !objc_msgSend(*(a1 + 32), "currentRelativePageIndex"))
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) leftOverscrollView], -1);
  }

  result = [*(a1 + 32) rightOverscrollView];
  if (result)
  {
    v5 = [*(a1 + 32) currentRelativePageIndex];
    result = [objc_msgSend(*(a1 + 32) "activeSectionController")];
    if (v5 == result - 1)
    {
      return (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) rightOverscrollView], objc_msgSend(objc_msgSend(*(a1 + 32), "activeSectionController"), "pageCount"));
    }
  }

  return result;
}

uint64_t sub_D0E8(uint64_t a1, void *a2)
{
  [*(a1 + 32) p_relativePageIndexForPageInfo:{objc_msgSend(a2, "pageInfo")}];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_D324(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [objc_msgSend(*(a1 + 32) "documentRoot")];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v13 = *(a1 + 72);
  v14 = *(a1 + 88);
  v4 = *(a1 + 48);
  v10 = *(a1 + 32);
  v9[2] = sub_D45C;
  v9[3] = &unk_45AEF8;
  v11 = v4;
  v12 = v2;
  [v3 performRead:v9];
  if ([v2 count])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_D668;
    v6[3] = &unk_45AF20;
    v5 = *(a1 + 32);
    v6[4] = *(a1 + 64);
    v6[5] = v5;
    v6[6] = v2;
    v7 = *(a1 + 72);
    v8 = *(a1 + 88);
    dispatch_async(&_dispatch_main_q, v6);
  }
}

void sub_D45C(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "activeSectionController")];
  v5 = &v2[v4];
  if (v2 != 0x7FFFFFFFFFFFFFFFLL && v2 < v5)
  {
    v7 = v2;
    *&v3 = 134218242;
    v19 = v3;
    do
    {
      v8 = [*(a1 + 40) pageInfoForRelativePageIndex:v7 forPresentationType:{*(a1 + 48), v19}];
      if (v8)
      {
        v9 = v8;
        objc_opt_class();
        [*(a1 + 56) repForInfo:v9];
        v10 = TSUDynamicCast();
        if (v10)
        {
          v11 = [objc_msgSend(v10 "childReps")];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                objc_opt_class();
                v16 = TSUDynamicCast();
                if (v16)
                {
                  [*(a1 + 64) addObject:v16];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v13);
          }
        }
      }

      else
      {
        v17 = BCReadingStatisticsLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [*(a1 + 40) description];
          *buf = v19;
          v25 = v7;
          v26 = 2114;
          v27 = v18;
          _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Can't find pageInfo for pageIndex %lu in navigation unit %{public}@", buf, 0x16u);
        }
      }

      ++v7;
    }

    while (v7 != v5);
  }
}

id sub_D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = +[BCProgressKitController sharedController];
  [v14 activateChapterForBook:a2 chapterID:a3 title:a4 completion:0];
  if (a5)
  {
    [v14 activateSectionForBook:a2 chapterID:a3 sectionID:a5 title:a6 completion:0];
  }

  [*(a1 + 32) info];
  v15 = BUProtocolCast();
  v16 = a7;
  if (v15)
  {
    v16 = [objc_msgSend(objc_msgSend(objc_msgSend(v15 "adornmentInfo")];
    if (![v16 length])
    {
      v16 = a7;
    }
  }

  v17 = [objc_msgSend(*(a1 + 40) "documentNavigator")];
  v18 = [*(a1 + 40) currentContentNode];
  v19 = [v17 range];
  return [v14 activateWidgetForBook:a2 chapterID:a3 sectionID:a5 widgetID:a7 title:v16 trackingProvider:*(a1 + 32) cfi:objc_msgSend(v18 completion:{"cfiForRange:storageUID:includeFilename:pedantic:", v19, v20, objc_msgSend(v17, "storageUID"), 0, 1), 0}];
}

void sub_DB50(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [objc_msgSend(objc_msgSend(*(a1 + 32) "documentRoot")];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v19 = *v21;
    v18 = BCProgressContextTreeKey_uniqueID;
    v17 = BCProgressContextTreeKey_title;
    v7 = BCProgressContextTreeKey_displayOrder;
    v16 = BCProgressContextTreeKey_cfi;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [objc_msgSend(objc_msgSend(*(a1 + 32) "documentRoot")];
        v11 = [objc_msgSend(objc_msgSend(*(a1 + 32) "documentRoot")];
        v12 = objc_opt_new();
        [v12 setValue:v10 forKey:v18];
        [v12 setValue:v11 forKey:v17];
        [v12 setValue:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", v6), v7}];
        v13 = [objc_msgSend(v9 "contentNodes")];
        v14 = [v13 cfiForOffset:0 storageUID:objc_msgSend(v13 includeFilename:"nodeGUID") pedantic:{0, 1}];
        if ([v14 length])
        {
          [v12 setValue:v14 forKey:v16];
        }

        [v2 addObject:v12];

        v8 = v8 + 1;
        ++v6;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    [*(a1 + 40) buildContextTree:v2 forBook:*(a1 + 48) completion:0];
  }
}

id sub_ED24(uint64_t a1)
{
  +[CATransaction begin];
  [objc_msgSend(*(a1 + 32) "bookNavigationDelegate")];

  return +[CATransaction commit];
}

id sub_F7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  objc_opt_class();
  v7 = TSUDynamicCast();
  objc_opt_class();
  [v7 drawable];
  result = TSUDynamicCast();
  if (result)
  {
    result = [result widgetInfo];
    if (result == *(a1 + 32))
    {
      v9 = [v7 findCharIndex];
      result = [objc_msgSend(*(a1 + 40) "reflowablePaginationController")];
      if (result)
      {
        v10 = [result firstPageIndexIntersectingRange:{v9, 1}];
        v11 = [*(a1 + 40) inFlowMode];
        v12 = [objc_msgSend(*(a1 + 40) "documentRoot")];
        v13 = *(a1 + 48);
        v14 = +[THPresentationType paginatedPresentationTypeInContext:](THPresentationType, "paginatedPresentationTypeInContext:", [objc_msgSend(*(a1 + 40) "documentRoot")]);
        if (v11)
        {
          result = [v12 absolutePageIndexForContentNodeRelativePageIndex:v10 inContentNode:v13 forPresentationType:v14];
          if (result != 0x7FFFFFFFFFFFFFFFLL)
          {
            result = [objc_msgSend(*(a1 + 40) "documentNavigator")];
          }
        }

        else
        {
          result = [v12 navigationUnitRelativePageIndexForContentNodeRelativePageIndex:v10 inContentNode:v13 forPresentationType:v14];
          if (result != 0x7FFFFFFFFFFFFFFFLL)
          {
            [objc_msgSend(*(a1 + 40) "activeSectionController")];
            result = [*(a1 + 40) p_setUnscaledCanvasRect:?];
          }
        }
      }

      *a5 = 1;
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  return result;
}

void sub_11B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_132EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = +[BCProgressKitController sharedController];
  v13 = *(a1 + 32);

  return [v12 updateWidgetProgressForBook:a2 chapterID:a3 sectionID:a5 widgetID:a7 percent:v13 completion:0];
}

void sub_134B0(id a1, NSString *a2, NSString *a3, NSString *a4, NSString *a5, NSString *a6, NSString *a7)
{
  v11 = [BCProgressKitController sharedController:a3];

  [v11 resetWidgetAttemptForBook:a2 chapterID:a3 sectionID:a5 widgetID:a7 completion:0];
}

id sub_1363C(uint64_t a1)
{
  v1 = [*(a1 + 32) contentPageNumberView];

  return [v1 setAlpha:0.0];
}

id sub_13848(uint64_t a1)
{
  v1 = [*(a1 + 32) contentPageNumberView];

  return [v1 setAlpha:1.0];
}

id sub_13A48(uint64_t a1)
{
  v1 = [*(a1 + 32) contentPageNumberView];

  return [v1 setAlpha:1.0];
}

id sub_140B4(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [objc_msgSend(*(a1 + 32) canvas];
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
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

        [*(*(&v6 + 1) + 8 * v5) recursivelyPerformSelectorIfImplemented:"canvasDidScrollInFlowMode"];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

id sub_14EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 640);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_14F60;
  v5[3] = &unk_45AEA8;
  v5[4] = v2;
  v5[5] = a2;
  return [v3 syncPerformBlock:v5];
}

id sub_14F60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 640);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_14FE4;
  v4[3] = &unk_45AE80;
  v5 = v1;
  return [v2 enumeratePageHostsUsingBlock:v4];
}

id sub_14FE4(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) p_relativePageIndexForPageInfo:{objc_msgSend(a2, "pageInfo")}];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

id sub_15178(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 640);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_151F4;
  v5[3] = &unk_45AEA8;
  v5[4] = v2;
  v5[5] = a2;
  return [v3 syncPerformBlock:v5];
}

id sub_151F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 640);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_15278;
  v4[3] = &unk_45AE80;
  v5 = v1;
  return [v2 enumeratePageHostsUsingBlock:v4];
}

id sub_15278(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) p_relativePageIndexForPageInfo:{objc_msgSend(a2, "pageInfo")}];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

id sub_15404(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 640);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_15480;
  v5[3] = &unk_45AEA8;
  v5[4] = v2;
  v5[5] = a2;
  return [v3 syncPerformBlock:v5];
}

id sub_15480(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 640);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_15504;
  v4[3] = &unk_45AE80;
  v5 = v1;
  return [v2 enumeratePageHostsUsingBlock:v4];
}

id sub_15504(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) p_relativePageIndexForPageInfo:{objc_msgSend(a2, "pageInfo")}];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

id sub_15B94(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) pageViewProvider];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_15C1C;
  v6[3] = &unk_45AEA8;
  v6[4] = *(a1 + 32);
  v6[5] = a2;
  return [v4 syncPerformBlock:v6];
}

id sub_15C1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 640);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_15CA0;
  v4[3] = &unk_45AE80;
  v5 = v1;
  return [v2 enumeratePageHostsUsingBlock:v4];
}

id sub_15CA0(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) p_relativePageIndexForPageInfo:{objc_msgSend(a2, "pageInfo")}];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

id sub_15E20(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) pageViewProvider];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_15EAC;
  v8[3] = &unk_45B138;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8[5] = a2;
  v8[6] = v6;
  v8[4] = v5;
  return [v4 syncPerformBlock:v8];
}

id sub_15EAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 640);
  v3 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_15F3C;
  v5[3] = &unk_45B110;
  v7 = v3;
  v6 = v1;
  return [v2 enumeratePageHostsUsingBlock:v5];
}

id sub_15F3C(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) p_relativePageIndexForPageInfo:{objc_msgSend(a2, "pageInfo")}];
  if (result != 0x7FFFFFFFFFFFFFFFLL && result != *(a1 + 48))
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

id sub_17270(uint64_t a1)
{
  v1 = [*(a1 + 32) overscrollTransitionView];

  return [v1 setAlpha:0.0];
}

id sub_172A0(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "overscrollTransitionView")];
  [*(a1 + 32) setOverscrollTransitionView:0];
  v2 = [*(a1 + 32) canvasViewController];

  return [v2 becomeFirstResponder];
}

id sub_17494(uint64_t a1)
{
  [*(*(a1 + 32) + OBJC_IVAR___TSADocumentViewController__scrollView) frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) overscrollTransitionView];

  return [v10 setFrame:{v3, v5, v7, v9}];
}

id sub_178E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) overscrollTransitionView];

  return [v5 setFrame:{v1, v2, v3, v4}];
}

id sub_1793C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setFrame:{v2, 0.0, v3, v4}];
  [*(*(a1 + 40) + OBJC_IVAR___TSADocumentViewController__scrollView) insertSubview:*(a1 + 32) atIndex:0];
  [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 40) "interactiveCanvasController")];
  *(*(a1 + 40) + 393) = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_17A50;
  v6[3] = &unk_45AE58;
  v7 = *(a1 + 40);
  return [+[NSOperationQueue mainQueue](NSOperationQueue addOperation:"addOperation:", [NSBlockOperation blockOperationWithBlock:v6]];
}

id sub_17A50(uint64_t a1)
{
  *(*(a1 + 32) + 392) = 1;
  [objc_msgSend(*(a1 + 32) "documentNavigator")];
  [*(a1 + 32) p_verticalOverscrollSetPreviousChapterNavigationUnit:*(a1 + 40)];
  [*(a1 + 32) updateVisibleInfos];
  v2 = [*(a1 + 32) bookNavigationDelegate];
  v3 = *(a1 + 32);

  return [v2 vantageDidChangeBy:v3 reason:@"THVantageChangeReasonScrolling"];
}

id sub_17D94(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) overscrollTransitionView];

  return [v5 setFrame:{v1, v2, v3, v4}];
}

id sub_17DE8(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 32) setFrame:{v2, 0.0, v3, v4}];
  [*(*(a1 + 40) + OBJC_IVAR___TSADocumentViewController__scrollView) insertSubview:*(a1 + 32) atIndex:0];
  [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 40) "interactiveCanvasController")];
  *(*(a1 + 40) + 393) = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_17EFC;
  v6[3] = &unk_45AE58;
  v7 = *(a1 + 40);
  return [+[NSOperationQueue mainQueue](NSOperationQueue addOperation:"addOperation:", [NSBlockOperation blockOperationWithBlock:v6]];
}

id sub_17EFC(uint64_t a1)
{
  *(*(a1 + 32) + 392) = 1;
  [*(a1 + 32) setCurrentNavigationUnit:*(a1 + 40)];
  [objc_msgSend(*(a1 + 32) "documentNavigator")];
  v2 = *(a1 + 32);
  [*&v2[OBJC_IVAR___TSADocumentViewController__scrollView] bounds];
  TSDRectWithSize();
  [v2 p_setUnscaledCanvasRect:?];
  v3 = *(a1 + 32);

  return [v3 updateVisibleInfos];
}

uint64_t sub_183EC(uint64_t a1)
{
  v2 = OBJC_IVAR___TSADocumentViewController__scrollView;
  [objc_msgSend(*(*(a1 + 32) + OBJC_IVAR___TSADocumentViewController__scrollView) "layer")];
  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }

  [objc_msgSend(*(a1 + 32) "documentNavigator")];
  [objc_msgSend(*(a1 + 32) "interactiveCanvasController")];
  [objc_msgSend(objc_msgSend(objc_msgSend(*(a1 + 32) "interactiveCanvasController")];
  +[CATransaction flush];
  [*(*(a1 + 32) + v2) setUserInteractionEnabled:1];
  v4 = *(a1 + 40);
  if (v4 && *(a1 + 72) == 1)
  {
    [v4 setPreventBounceAnimation:1];
  }

  result = *(a1 + 56);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

id sub_184D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 648);
  v3 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_18560;
  v5[3] = &unk_45B270;
  v5[4] = v1;
  return [v2 animateOverscrollWithDuration:v3 enumerator:v5];
}

id sub_18560(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 640);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_185DC;
  v4[3] = &unk_45B248;
  v4[4] = a2;
  return [v2 enumeratePageHostsUsingBlock:v4];
}

id sub_186BC(uint64_t a1)
{
  *(*(a1 + 32) + 393) = 0;
  [objc_msgSend(*(a1 + 32) "view")];
  [*(*(a1 + 32) + OBJC_IVAR___TSADocumentViewController__scrollView) center];
  [objc_msgSend(*(a1 + 32) "overscrollTransitionView")];
  *(*(a1 + 32) + 392) = 1;
  [*(a1 + 32) setLastStorageAnchor:0];
  v4 = *(a1 + 32);

  return [v4 setJustUpdatedPresentationType:0];
}

id sub_18780(uint64_t a1)
{
  v2 = [*(a1 + 32) bookNavigationDelegate];
  v3 = *(a1 + 32);

  return [v2 vantageDidChangeBy:v3 reason:@"THVantageChangeReasonScrolling"];
}

id sub_18C14(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) scrubber];

  return [v2 setHidden:v1];
}

id sub_199B0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) view];

  return [v3 setUserInteractionEnabled:1];
}

id sub_1A184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = +[BCProgressKitController sharedController];
  [v14 activateChapterForBook:a2 chapterID:a3 title:a4 completion:0];
  if (a5)
  {
    [v14 activateSectionForBook:a2 chapterID:a3 sectionID:a5 title:a6 completion:0];
  }

  v15 = BUProtocolCast();
  v16 = a7;
  if (v15)
  {
    v16 = [objc_msgSend(objc_msgSend(objc_msgSend(v15 "adornmentInfo")];
    if (![v16 length])
    {
      v16 = a7;
    }
  }

  v17 = [objc_msgSend(*(a1 + 40) "documentNavigator")];
  v18 = [*(a1 + 40) currentContentNode];
  v19 = [v17 range];
  [v14 activateWidgetForBook:a2 chapterID:a3 sectionID:a5 widgetID:a7 title:v16 trackingProvider:0 cfi:objc_msgSend(v18 completion:{"cfiForRange:storageUID:includeFilename:pedantic:", v19, v20, objc_msgSend(v17, "storageUID"), 0, 1), 0}];

  return [v14 updateWidgetProgressForBook:a2 chapterID:a3 sectionID:a5 widgetID:a7 percent:&off_49CF10 completion:0];
}

void sub_1A5AC(id a1, NSString *a2, NSString *a3, NSString *a4, NSString *a5, NSString *a6, NSString *a7)
{
  v8 = [BCProgressKitController sharedController:a3];

  [v8 deactivateCurrentWidgetForBook:a2 completion:0];
}

id sub_1B1A8(uint64_t a1)
{
  v2 = [*(a1 + 32) interactiveCanvasController];
  v3 = *(a1 + 40);

  return [v2 handleHyperlinkWithURL:v3];
}

id sub_1B380(uint64_t a1)
{
  [*(a1 + 32) setHighlightedHyperlinkField:0];
  v2 = [*(a1 + 40) interactiveCanvasController];
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);

  return [v2 handleHyperlink:v3 hitRep:v4];
}

id sub_1B638(uint64_t a1)
{
  [*(a1 + 32) setHighlightedHyperlinkField:0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1B6C8;
  v4[3] = &unk_45AF70;
  v5 = *(a1 + 48);
  v2 = *(a1 + 40);
  v6 = *(a1 + 32);
  return [v2 dismissExpandedAnimatedWithCompletionBlock:v4];
}

id sub_1B6C8(uint64_t a1)
{
  v2 = [*(a1 + 32) interactiveCanvasController];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 handleHyperlink:v3 hitRep:v4];
}

id sub_1C994(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 504);
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
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

        [*(*(&v6 + 1) + 8 * v5) setAlpha:1.0];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

id sub_1CB8C(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(a1 + 32) + 504);
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
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

        [*(*(&v6 + 1) + 8 * v5) setAlpha:0.0];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

void sub_1CC80(uint64_t a1)
{
  [*(*(a1 + 32) + 504) makeObjectsPerformSelector:"removeFromSuperview"];

  *(*(a1 + 32) + 504) = 0;
  *(*(a1 + 32) + 512) = 0;
}

id sub_1CE68(uint64_t a1)
{
  v1 = [*(a1 + 32) bookNavigationDelegate];

  return [v1 closeDocument];
}

id sub_1D1CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 640);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1D254;
  v5[3] = &unk_45B3A8;
  v6 = v2;
  v7 = a2;
  return [v3 syncPerformBlock:v5];
}

id sub_1D254(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 640);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1D2E4;
  v4[3] = &unk_45B380;
  v5 = v1;
  v6 = *(a1 + 48);
  return [v2 enumeratePageHostsUsingBlock:v4];
}

id sub_1D2E4(uint64_t a1, void *a2)
{
  result = [*(a1 + 40) containsIndex:{objc_msgSend(*(a1 + 32), "p_relativePageIndexForPageInfo:", objc_msgSend(a2, "pageInfo"))}];
  if (result)
  {
    v4 = *(*(a1 + 48) + 16);

    return v4();
  }

  return result;
}

id sub_1D5AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 640);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1D634;
  v5[3] = &unk_45B3A8;
  v6 = v2;
  v7 = a2;
  return [v3 syncPerformBlock:v5];
}

id sub_1D634(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 32) + 640);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1D778;
  v7[3] = &unk_45B380;
  v8 = v2;
  v9 = *(a1 + 48);
  [v3 enumeratePageHostsUsingBlock:v7];
  v4 = [*(a1 + 32) currentRelativePageIndex];
  if ([*(a1 + 32) leftOverscrollView] && (v4 == 0x7FFFFFFFFFFFFFFFLL || !v4))
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 32) leftOverscrollView], -1);
  }

  v5 = [objc_msgSend(*(a1 + 32) "activeSectionController")];
  result = [*(a1 + 32) rightOverscrollView];
  if (result && (v4 == 0x7FFFFFFFFFFFFFFFLL || v4 == v5 - 1))
  {
    return (*(*(a1 + 48) + 16))(*(a1 + 48), [*(a1 + 32) rightOverscrollView], v5);
  }

  return result;
}

id sub_1D778(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) p_relativePageIndexForPageInfo:{objc_msgSend(a2, "pageInfo")}];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = result;
    v5 = *(a1 + 40);
    if (!v5 || (result = [v5 containsIndex:v4], result))
    {
      v6 = *(*(a1 + 48) + 16);

      return v6();
    }
  }

  return result;
}

id sub_1D9A8(uint64_t a1)
{
  *(*(a1 + 32) + 568) = [*(a1 + 32) im_isCompactHeight];
  *(*(a1 + 32) + 569) = [*(a1 + 32) im_isCompactWidth];
  result = [*(a1 + 32) interfaceOrientation];
  *(*(a1 + 32) + 560) = result;
  return result;
}

void sub_1DB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1E030(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "configuration")];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) scrubber];

  return [v10 setFrame:{v3, v5, v7, v9}];
}

id sub_1E0A4(id result, void *a2)
{
  if (*(*(*(result + 5) + 8) + 24) == 1 && *(result + 64) == 1)
  {
    v3 = *(result + 4);
    v4 = *(result + 6);
    v5 = *(result + 7);
    [a2 transitionDuration];

    return [v3 bookViewWillAnimateRotationToSize:v4 duration:{v5, v6}];
  }

  return result;
}

id sub_1E11C(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (v2 == 1)
  {
    [v3 bookViewDidRotateTransitionToSize:{v4, v5}];
  }

  else
  {
    [v3 bookViewDidTransitionToSize:{v4, v5}];
  }

  [*(a1 + 32) setLastLayoutSize:{CGSizeZero.width, CGSizeZero.height}];
  [*(a1 + 32) setIsTransitioning:0];
  v6 = [*(a1 + 32) canvasViewController];

  return [v6 repositionGlossaryIfPopoverAnimated:0];
}

void sub_1E24C(id a1, THPageLayerAndSubviewHost *a2)
{
  v2 = [(TSDRep *)[(THPageLayerAndSubviewHost *)a2 rep] layout];
  [v2 invalidatePosition];

  [v2 invalidate];
}

id sub_1E5D8(uint64_t a1)
{
  if (*(*(a1 + 32) + 224))
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  *(*(a1 + 32) + 224) = [[UIView alloc] initWithFrame:{0.0, 0.0, 1024.0, 1024.0}];
  [*(*(a1 + 32) + 224) setClipsToBounds:1];
  [objc_msgSend(*(a1 + 32) "view")];
  MidX = CGRectGetMidX(v20);
  [objc_msgSend(objc_msgSend(*(a1 + 32) "view")];
  v4 = v3;
  [*(*(a1 + 32) + 224) bounds];
  [*(*(a1 + 32) + 224) setCenter:{MidX, v4 + CGRectGetHeight(v21) * 0.5}];
  [*(*(a1 + 32) + 224) setBackgroundColor:{+[UIColor whiteColor](UIColor, "whiteColor")}];
  [objc_msgSend(*(a1 + 32) "view")];
  v5 = *(a1 + 32);
  v6 = v5[28];
  [objc_msgSend(v5 "canvasScrollView")];
  [v6 convertRect:objc_msgSend(*(a1 + 32) fromView:{"view"), v7, v8, v9, v10}];
  [objc_msgSend(*(a1 + 32) "canvasScrollView")];
  v15 = *(a1 + 32);
  v16 = v15[28];
  v17 = [v15 canvasScrollView];

  return [v16 addSubview:v17];
}

id sub_1EEBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 640);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1EF38;
  v5[3] = &unk_45AEA8;
  v5[4] = v2;
  v5[5] = a2;
  return [v3 syncPerformBlock:v5];
}

id sub_1EF38(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 640);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1EFBC;
  v3[3] = &unk_45B248;
  v3[4] = *(a1 + 40);
  return [v1 enumeratePageHostsUsingBlock:v3];
}

id sub_20170(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) definesProperty:a2];
  if ((result & 1) == 0)
  {
    v5 = [TSWPParagraphStyle boxedDefaultValueForProperty:a2];
    v6 = *(a1 + 32);

    return [v6 setBoxedValue:v5 forProperty:a2];
  }

  return result;
}

uint64_t sub_229FC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = (a2 + 88 * *(result + 40));
  v25 = *(v3 + 10);
  v22 = v3[2];
  v23 = v3[3];
  v24 = v3[4];
  v20 = *v3;
  v21 = v3[1];
  v16 = *(&TSDGPUDataBufferAttributeUpdateDataInvalid + 2);
  v17 = *(&TSDGPUDataBufferAttributeUpdateDataInvalid + 3);
  v18 = *(&TSDGPUDataBufferAttributeUpdateDataInvalid + 4);
  v19 = *(&TSDGPUDataBufferAttributeUpdateDataInvalid + 10);
  v14 = *&TSDGPUDataBufferAttributeUpdateDataInvalid;
  v15 = *(&TSDGPUDataBufferAttributeUpdateDataInvalid + 1);
  if (*(result + 112) == 1)
  {
    v4 = (a2 + 88 * *(result + 64));
    v16 = v4[2];
    v17 = v4[3];
    v18 = v4[4];
    v19 = *(v4 + 10);
    v14 = *v4;
    v15 = v4[1];
  }

  v5 = *(result + 72);
  if (v5 >= 1)
  {
    for (i = 0; i < v5; ++i)
    {
      if (v5 >= 1)
      {
        for (j = 0; j < v5; ++j)
        {
          v10 = v22;
          v11 = v23;
          v12 = v24;
          v13 = v25;
          v8 = v20;
          v9 = v21;
          TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          if (*(v2 + 112) == 1)
          {
            v10 = v16;
            v11 = v17;
            v12 = v18;
            v13 = v19;
            v8 = v14;
            v9 = v15;
            TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          }

          [*(v2 + 32) size];
          [*(v2 + 32) size];
          TSDGPUUpdateDataSetMetalPoint2DAtIndex();
          result = TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          v5 = *(v2 + 72);
        }
      }
    }
  }

  return result;
}

void sub_22E4C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 40) isMotionBlurred];
  v4 = *(a1 + 56);
  if (v4 >= 1)
  {
    v5 = 0;
    while (v4 < 1)
    {
LABEL_18:
      if (++v5 >= v4)
      {
        goto LABEL_19;
      }
    }

    v6 = 0;
    while (1)
    {
      TSDGPUUpdateDataMetalPoint2DAtIndex();
      v9 = *(a1 + 64) * v8;
      v10 = *(a1 + 72) * (1.0 - v7);
      v11 = *(a1 + 80);
      if (v11 == 11)
      {
        break;
      }

      if (v11 == 13)
      {
        v15 = -(v10 - *(a1 + 88) * 2.0) / *(a1 + 88);
LABEL_11:
        v16 = -((1.0 - v15) * *(a1 + 112) + v15 * *(a1 + 104));
        goto LABEL_14;
      }

      if (v11 == 14)
      {
        v12 = v10 / *(a1 + 88);
        v13 = *(a1 + 104);
        v14 = (1.0 - v12) * *(a1 + 112);
      }

      else
      {
        v13 = *(a1 + 104);
        v12 = -(v9 - *(a1 + 96) * 2.0) / *(a1 + 96);
        v14 = *(a1 + 112) * (1.0 - v12);
      }

      v16 = v14 + v12 * v13;
LABEL_14:
      __sincos_stret(v16);
      TSDGPUUpdateDataMetalPoint3DAtIndex();
      TSDGPUUpdateDataMetalPoint3DAtIndex();
      TSDGPUUpdateDataSetMetalPoint3DAtIndex();
      TSDGPUUpdateDataSetMetalPoint3DAtIndex();
      if ([*(a1 + 40) isMotionBlurred] && *(a1 + 128) == 1)
      {
        TSDGPUUpdateDataSetMetalPoint3DAtIndex();
      }

      ++v6;
      v4 = *(a1 + 56);
      if (v6 >= v4)
      {
        goto LABEL_18;
      }
    }

    v15 = v9 / *(a1 + 96);
    goto LABEL_11;
  }

LABEL_19:
  v17 = *(a1 + 80);
  v18 = 0.5;
  if (v17 <= 12)
  {
    if (v17 != 11)
    {
      if (v17 == 12)
      {
        TSDGPUUpdateDataMetalPoint2DAtIndex();
        v20 = v19;
        [*(a1 + 48) size];
        v22 = v21;
        TSDGPUUpdateDataMetalPoint3DAtIndex();
        v24 = v23;
LABEL_28:
        v26 = -(v24 - v20 * v22);
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    TSDGPUUpdateDataMetalPoint3DAtIndex();
    v26 = v27;
LABEL_29:
    v18 = v26 * 0.5;
    goto LABEL_30;
  }

  if (v17 == 13)
  {
    TSDGPUUpdateDataMetalPoint2DAtIndex();
    v20 = (1.0 - v28);
    [*(a1 + 48) size];
    v22 = v29;
    TSDGPUUpdateDataMetalPoint3DAtIndex();
    v24 = v30;
    goto LABEL_28;
  }

  if (v17 == 14)
  {
    TSDGPUUpdateDataMetalPoint3DAtIndex();
    v26 = v25;
    goto LABEL_29;
  }

LABEL_30:
  v31 = v18;
  v32 = *(a1 + 32) + 552;
  v33 = [*(a1 + 40) metalContext];
  *(v32 + 4 * [v33 currentBuffer]) = v31;

  *(a2 + 88 * *(*(a1 + 32) + 48) + 56) = 0;
}

uint64_t sub_236C8(uint64_t a1)
{
  TSUClamp();
  TSDGPUUpdateDataSetMetalFloatAtIndex();
  TSDGPUUpdateDataSetMetalFloatAtIndex();
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  TSUClamp();
  TSDGPUUpdateDataSetMetalFloatAtIndex();
  TSDGPUUpdateDataSetMetalFloatAtIndex();
  TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  result = TSDGPUUpdateDataSetMetalPoint2DAtIndex();
  v3 = *(a1 + 112);
  if (v3 >= 3)
  {
    v4 = 0;
    v5 = v3 - 2;
    v6 = 5;
    do
    {
      TSUClamp();
      TSUSineMap();
      TSUClamp();
      TSDGPUUpdateDataSetMetalFloatAtIndex();
      TSDGPUUpdateDataSetMetalFloatAtIndex();
      TSDGPUUpdateDataSetMetalPoint2DAtIndex();
      result = TSDGPUUpdateDataSetMetalPoint2DAtIndex();
      ++v4;
      v6 += 2;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t sub_262EC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 64);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      if (v2 >= 1)
      {
        for (j = 0; j < v2; ++j)
        {
          TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          TSDGPUUpdateDataSetMetalPoint2DAtIndex();
          result = TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          if (*(v1 + 96) == 1)
          {
            result = TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          }

          v2 = *(v1 + 64);
        }
      }
    }
  }

  return result;
}

uint64_t sub_267C8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 72);
  if (v3 >= 1)
  {
    for (i = 0; i < v3; ++i)
    {
      if (v3 >= 1)
      {
        for (j = 0; j < v3; ++j)
        {
          TSDGPUUpdateDataMetalPoint2DAtIndex();
          if (!*(v2 + 97))
          {
            v6 = 1.0 - v6;
          }

          [*(v2 + 32) fx:v6 withPercent:*(v2 + 80)];
          v8 = v7 * -3.14159265;
          TSDGPUUpdateDataMetalPoint3DAtIndex();
          __sincos_stret(v8);
          result = TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          if (*(v2 + 96) == 1 && *(v2 + 98) == 1)
          {
            result = TSDGPUUpdateDataSetMetalPoint3DAtIndex();
          }

          v3 = *(v2 + 72);
        }
      }
    }

    if (v3 >= 1)
    {
      v9 = 0;
      v44 = TSDMetalPoint3DZero[1];
      v45 = TSDMetalPoint3DZero[0];
      v43 = TSDMetalPoint3DZero[2];
      do
      {
        if (v3 >= 1)
        {
          for (k = 0; k < v3; ++k)
          {
            v11 = 0;
            v12 = v44;
            v13 = v45;
            v14 = v43;
            do
            {
              v15 = qword_349EE0[v11];
              v16 = v15 + k;
              if (v15 + k >= 0)
              {
                v17 = qword_349EC0[v11] + k;
                if (v17 >= 0)
                {
                  v18 = qword_349EA0[v11] + v9;
                  if (v18 >= 0)
                  {
                    v19 = v15 + v9;
                    if (v15 + v9 >= 0)
                    {
                      v20 = *(v2 + 72);
                      if (v19 < v20 && v18 < v20 && v16 < v20 && v17 < v20)
                      {
                        v46 = v14;
                        TSDGPUUpdateDataMetalPoint3DAtIndex();
                        v25 = v24;
                        v27 = v26;
                        v29 = v28;
                        TSDGPUUpdateDataMetalPoint3DAtIndex();
                        v31 = v30;
                        v33 = v32;
                        v35 = v34;
                        TSDGPUUpdateDataMetalPoint3DAtIndex();
                        v37 = v36 - v25;
                        v39 = v38 - v27;
                        v41 = v40 - v29;
                        v13 = v13 + (((v33 - v27) * v41) - ((v35 - v29) * v39));
                        v12 = v12 + (((v35 - v29) * v37) - ((v31 - v25) * v41));
                        v14 = v46 + (((v31 - v25) * v39) - ((v33 - v27) * v37));
                      }
                    }
                  }
                }
              }

              ++v11;
            }

            while (v11 != 4);
            result = TSDGPUUpdateDataSetMetalPoint3DAtIndex();
            v3 = *(v2 + 72);
          }
        }

        ++v9;
      }

      while (v9 < v3);
    }
  }

  *(a2 + 88 * *(v2 + 48) + 56) = 0;
  return result;
}

void *sub_29910(void *result)
{
  if (!*(result[4] + 72))
  {
    v1 = result;
    result = [KNAnimationRandomGenerator randomGeneratorFromPluginContext:?];
    *(v1[4] + 72) = result;
  }

  return result;
}

void sub_2E338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2E368(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2E380(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 selection];
    [*(a1 + 32) setInsertionPoint:{objc_msgSend(v3, "start")}];
  }

  else if (([*(a1 + 40) isFirstResponder] & 1) == 0 && objc_msgSend(*(a1 + 48), "takeFirstResponderOnTap"))
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) becomeFirstResponder];
  }
}

void sub_2E424(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(*(a1 + 48) + 8) + 40);

    [v2 endEditing];
  }

  else if (([*(a1 + 40) p_handleTapAtPoint:{*(a1 + 64), *(a1 + 72)}] & 1) == 0 && (*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v3 = [*(a1 + 40) delegate];
    v4 = TSUProtocolCast();

    if (objc_opt_respondsToSelector())
    {
      [v4 interactiveCanvasControllerWasTapped:*(a1 + 40)];
    }
  }
}

id sub_2F7A0(uint64_t a1)
{
  [*(a1 + 32) postEvent:kBETestDriverPageTurnAnimationEnd sender:*(a1 + 40)];
  v2 = kBETestDriverPageTurnEnd;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 postEvent:v2 sender:v4];
}

id sub_2F9D8(uint64_t a1)
{
  [*(a1 + 32) postEvent:kBETestDriverPageTurnAnimationEnd sender:*(a1 + 40)];
  v2 = kBETestDriverPageTurnEnd;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 postEvent:v2 sender:v4];
}

BOOL sub_2FEA4(id a1, TSDRep *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void sub_3001C(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [v2 textInputEditor];
  v4 = TSUProtocolCast();

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = OBJC_IVAR___TSDInteractiveCanvasController_mTextInputResponder;
    if (!*&v5[OBJC_IVAR___TSDInteractiveCanvasController_mTextInputResponder])
    {
      v7 = [v5 layerHost];
      v8 = [v7 canvasView];

      if (v8)
      {
        v9 = [THTextInputResponder alloc];
        v10 = [*(a1 + 40) layerHost];
        v11 = [v10 canvasView];
        v12 = [(THTextInputResponder *)v9 initWithNextResponder:v11];
        v13 = *(a1 + 40);
        v14 = *(v13 + v6);
        *(v13 + v6) = v12;
      }
    }
  }

  v15.receiver = *(a1 + 40);
  v15.super_class = THInteractiveCanvasController;
  objc_msgSendSuper2(&v15, "p_maybeSetTextResponderEditorTo:", v4);
}

void sub_32F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_32F94(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  objc_opt_class();
  v8 = TSUDynamicCast();
  v9 = *(a1 + 32);
  if (v8)
  {
    result = [v8 enumerateSubtreeUsingBlock:v9];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  else
  {
    result = (*(v9 + 16))(*(a1 + 32), a2, a3, *(*(a1 + 40) + 8) + 24);
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

int64_t sub_35B50(id a1, TSUPair *a2, TSUPair *a3)
{
  v4 = [(TSUPair *)a2 first];
  v5 = [(TSUPair *)a3 first];

  return [v4 compare:v5];
}

id sub_36D68(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 160);
  if (v2)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v2 = *(*(a1 + 32) + 160);
  }

  *(*(a1 + 32) + 160) = 0;
  v3 = *(a1 + 32);
  if (!*(v3 + 160))
  {
    *(*(a1 + 32) + 160) = -[THModelContentLoadOperation initWithDelegate:contentNode:documentRoot:applePubURL:documentEntryURI:]([THModelContentLoadOperation alloc], "initWithDelegate:contentNode:documentRoot:applePubURL:documentEntryURI:", *(a1 + 32), *(a1 + 32), [*(a1 + 32) documentRoot], *(*(a1 + 32) + 80), *(*(a1 + 32) + 72));
    [objc_msgSend(objc_msgSend(*(a1 + 32) "documentRoot")];
    v3 = *(a1 + 32);
  }

  *(v3 + 152) = 1;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v4 = *(a1 + 32);

  return [v4 p_clearFieldsForFutureLoading];
}

id sub_36ED4(uint64_t a1)
{
  *(*(a1 + 32) + 152) = 3;
  [*(a1 + 32) setPaginatedBodyStale:0];
  [*(*(a1 + 32) + 208) cancel];

  *(*(a1 + 32) + 208) = 0;
  result = [objc_msgSend(*(a1 + 32) "reflowablePaginationController")];
  *(*(a1 + 32) + 208) = result;
  return result;
}

uint64_t sub_371B8(uint64_t a1)
{
  v1 = 48;
  if (*(*(a1 + 32) + 152) == 5)
  {
    v1 = 40;
  }

  return (*(*(a1 + v1) + 16))();
}

void sub_37874(uint64_t a1)
{
  [*(a1 + 32) willModify];
  v25 = [*(a1 + 40) objectForKey:kTHModelStorageAnchorsForAnchorID];
  v22 = [*(a1 + 40) objectForKey:kTHModelStorageAnchorsForCfiFrag];
  v23 = [*(a1 + 40) objectForKey:kTHModelTextChildOffsetStorageAnchorsForCfiFrag];
  v24 = [*(a1 + 40) objectForKey:kTHModelAnchorForCfiFrag];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v27 = 0;
    v5 = *v33;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        objc_opt_class();
        v7 = TSUDynamicCast();
        if (v7)
        {
          v8 = v7;
          v9 = [*(a1 + 40) objectForKey:v7];
          if (v4 & 1 | (([v8 isFlow] & 1) == 0))
          {
            v10 = [v8 isPaginated];
            v4 |= v10;
            v11 = v27;
            if (v10)
            {
              v11 = 0;
            }

            v27 = v11;
          }

          else
          {
            v4 = 0;
            v27 = v9;
          }

          [v9 ownerRetain];
          [v9 setParent:*(a1 + 32)];
          [objc_msgSend(*(a1 + 32) "presentationContentBodies")];
          [*(a1 + 32) setPageCount:objc_msgSend(v9 forPresentationType:{"pageCount"), v8}];
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = [v9 pages];
          v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v29;
            do
            {
              for (j = 0; j != v14; j = j + 1)
              {
                if (*v29 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                [*(*(&v28 + 1) + 8 * j) setParent:*(a1 + 32)];
              }

              v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v14);
          }

          if (*(*(a1 + 32) + 168) >= 1)
          {
            v17 = 0;
            do
            {
              v18 = v9;
              ++v17;
            }

            while (v17 < *(*(a1 + 32) + 168));
          }

          [v9 ownerAutoreleasedAccess];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v3);
    v19 = (v27 == 0) | v4;
  }

  else
  {
    v19 = 1;
  }

  if ((*(*(a1 + 32) + 152) - 1) >= 2)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v20 = *(a1 + 32);
  if (v19)
  {
    *(v20 + 176) += *(v20 + 168);
    *(*(a1 + 32) + 168) = 0;
    *(*(a1 + 32) + 152) = 4;
  }

  else
  {
    *(v20 + 152) = 3;
    [*(a1 + 32) setPaginatedBodyStale:0];
    [*(*(a1 + 32) + 208) cancel];

    *(*(a1 + 32) + 208) = 0;
    *(*(a1 + 32) + 208) = [objc_msgSend(*(a1 + 32) "reflowablePaginationController")];
  }

  if (v22)
  {
    [*(a1 + 32) p_setStorageAnchorsForCfis:?];
  }

  if (v23)
  {
    [*(a1 + 32) p_setTextChildOffsetStorageAnchorsForCfis:?];
  }

  if (v24)
  {
    [*(a1 + 32) setAnchorForCfiFrag:?];
  }

  if (v25)
  {
    [*(a1 + 32) setStorageAnchorsForAnchorIDs:?];
  }

  [*(a1 + 40) removeObjectForKey:kTHModelStorageAnchorsForAnchorID];
  [*(a1 + 40) removeObjectForKey:kTHModelStorageAnchorsForCfiFrag];
  [*(a1 + 40) removeObjectForKey:kTHModelTextChildOffsetStorageAnchorsForCfiFrag];
  [*(a1 + 40) removeObjectForKey:kTHModelAnchorForCfiFrag];
  v21 = *(*(a1 + 32) + 160);
  if (*(a1 + 56) != v21)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v21 = *(*(a1 + 32) + 160);
  }

  *(*(a1 + 32) + 160) = 0;
}

uint64_t sub_3871C(uint64_t a1)
{
  [*(a1 + 32) setHidden:*(a1 + 48)];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_3877C(uint64_t a1)
{
  v1 = 1.0;
  if (*(a1 + 40))
  {
    v1 = 0.0;
  }

  return [*(a1 + 32) setAlpha:v1];
}

id sub_38798(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) layer];

  return [v3 setShouldRasterize:v2];
}

id sub_3885C(uint64_t a1)
{
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  (*(*(a1 + 32) + 16))();

  return +[CATransaction commit];
}

id sub_38BC8(uint64_t a1)
{
  MidX = CGRectGetMidX(*(a1 + 40));
  [*(*(*(a1 + 32) + 8) + 40) setCenter:{MidX, CGRectGetMidY(*(a1 + 40))}];
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = *(a1 + 88);
  v6[0] = *(a1 + 72);
  v6[1] = v4;
  v6[2] = *(a1 + 104);
  return [v3 setTransform:v6];
}

uint64_t sub_38C54(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(*(*(a1 + 40) + 8) + 40);
    v3 = *&CGAffineTransformIdentity.c;
    v5[0] = *&CGAffineTransformIdentity.a;
    v5[1] = v3;
    v5[2] = *&CGAffineTransformIdentity.tx;
    [v2 setTransform:v5];
    [*(*(*(a1 + 40) + 8) + 40) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_3A228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_3A260(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_3A650(result, a2);
    }

    sub_3A53C();
  }

  return result;
}

void sub_3A300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_3A338(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    v17 = *a1;
    v18 = ((v5 - *a1) >> 4) + 1;
    if (v18 >> 60)
    {
      sub_3A53C();
    }

    v19 = a2 - v17;
    v20 = v6 - v17;
    if (v20 >> 3 > v18)
    {
      v18 = v20 >> 3;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF0)
    {
      v21 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v18;
    }

    v22 = v19 >> 4;
    v29 = a1;
    if (v21)
    {
      sub_3A650(a1, v21);
    }

    __p = 0;
    v26 = 16 * v22;
    v27 = 16 * v22;
    v28 = 0;
    sub_3A6CC(&__p, a3);
    v3 = sub_3A7C8(a1, &__p, v3);
    if (v27 != v26)
    {
      v27 += (v26 - v27 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v5)
  {
    v23 = a3[1];
    *v5 = *a3;
    v5[1] = v23;
    *(a1 + 8) = v5 + 2;
  }

  else
  {
    v7 = *(a1 + 8);
    if (v5 >= 0x10)
    {
      v7 = v5 + 2;
      v8 = *(v5 - 1);
      *v5 = *(v5 - 2);
      v5[1] = v8;
    }

    *(a1 + 8) = v7;
    if (v5 != a2 + 2)
    {
      v9 = 0;
      do
      {
        v10 = &v5[v9 / 8];
        v11 = v5[v9 / 8 - 3];
        *(v10 - 2) = v5[v9 / 8 - 4];
        *(v10 - 1) = v11;
        v9 -= 16;
      }

      while (a2 - v5 + 16 != v9);
    }

    v12 = v7 <= a3 || a2 > a3;
    v13 = 2;
    if (v12)
    {
      v13 = 0;
    }

    v14 = &a3[v13];
    v16 = *v14;
    v15 = v14[1];
    *a2 = v16;
    a2[1] = v15;
  }

  return v3;
}

void sub_3A4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_3A554(uint64_t **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5;
      v8 = v5[1];
      v5 += 2;
      *v6 = v7;
      v6[1] = v8;
      v6 += 2;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v9 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v9;
  v10 = result[1];
  result[1] = a2[2];
  a2[2] = v10;
  v11 = result[2];
  result[2] = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

void sub_3A5C0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_3A61C(exception, a1);
}

std::logic_error *sub_3A61C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_3A650(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_3A698();
}

void sub_3A698()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_3A6CC(void *result, uint64_t *a2)
{
  v2 = result[2];
  v3 = v2;
  if (v2 == result[3])
  {
    v4 = result[1];
    if (v4 <= *result)
    {
      v9 = v2 - *result;
      v8 = v9 == 0;
      v10 = v9 >> 3;
      if (v8)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      sub_3A650(result[4], v11);
    }

    v5 = &v4[-2 * ((((v4 - *result) >> 4) + 1 + ((((v4 - *result) >> 4) + 1) >> 63)) >> 1)];
    v3 = v5;
    if (v4 != v2)
    {
      v3 = &v4[-2 * ((((v4 - *result) >> 4) + 1 + ((((v4 - *result) >> 4) + 1) >> 63)) >> 1)];
      do
      {
        v6 = *v4;
        v7 = v4[1];
        v4 += 2;
        *v3 = v6;
        v3[1] = v7;
        v3 += 2;
      }

      while (v4 != v2);
    }

    result[1] = v5;
  }

  v12 = a2[1];
  *v3 = *a2;
  v3[1] = v12;
  result[2] = v3 + 2;
  return result;
}

uint64_t sub_3A7C8(char **a1, void *a2, char *a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 != a3)
  {
    v7 = a3;
    v8 = a2[2];
    do
    {
      v9 = *v7;
      v10 = *(v7 + 1);
      v7 += 16;
      *v8 = v9;
      v8[1] = v10;
      v8 += 2;
    }

    while (v7 != v4);
  }

  a2[2] = v6 + v4 - a3;
  v11 = *a1;
  v12 = (result + *a1 - a3);
  if (*a1 != a3)
  {
    v13 = *a1;
    v14 = (result + *a1 - a3);
    do
    {
      v15 = *v13;
      v16 = *(v13 + 1);
      v13 += 16;
      *v14 = v15;
      v14[1] = v16;
      v14 += 2;
    }

    while (v13 != a3);
  }

  a2[1] = v12;
  v17 = *a1;
  *a1 = v12;
  a1[1] = v11;
  a2[1] = v17;
  v18 = a1[1];
  a1[1] = a2[2];
  a2[2] = v18;
  v19 = a1[2];
  a1[2] = a2[3];
  a2[3] = v19;
  *a2 = a2[1];
  return result;
}

id sub_3C5B0(uint64_t a1, void *a2)
{
  result = [a2 firstBodyCharacterIndexOverlappingPageRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_3C6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_3C6F0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

id sub_3C700(uint64_t a1, void *a2)
{
  result = [a2 originOfCharacterIndex:*(a1 + 40)];
  v4 = *(*(a1 + 32) + 8);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  return result;
}

void sub_3DBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3E1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3F850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_408CC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_3A698();
}

uint64_t *sub_409C4(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_40A1C(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_40A1C(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void sub_40BB8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_3A698();
}

uint64_t sub_40C00(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_40C7C(a1, a2);
  if (v3 == v4)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;
  v5 = 0;
  do
  {
    v8 = sub_40D0C(a1, v6);
    operator delete(v6);
    ++v5;
    v6 = v8;
  }

  while (v8 != v7);
  return v5;
}

void *sub_40C7C(uint64_t a1, unint64_t *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  while (1)
  {
    v5 = v3[4];
    if (v4 >= v5)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  if (v5 < v4)
  {
    ++v3;
    goto LABEL_7;
  }

  v7 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      v8 = v7[4];
      v9 = v8 >= v4;
      v10 = v8 < v4;
      if (v9)
      {
        result = v7;
      }

      v7 = v7[v10];
    }

    while (v7);
  }

    ;
  }

  return result;
}

uint64_t *sub_40D0C(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_40D80(v6, a2);
  return v3;
}

uint64_t *sub_40D80(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void sub_41100(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_41100(a1, *a2);
    sub_41100(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_43624(uint64_t a1, void *a2)
{
  [*(a1 + 32) calculatePointFromSearchReference:a2];
  [a2 setSearchReferencePoint:?];
  v4 = *(*(a1 + 40) + 16);

  return v4();
}

NSUInteger THTrimHighlightRange(TSWPStorage *a1, _NSRange a2)
{
  location = a2.location;
  if (a1)
  {
    v4 = a2.length + 1;
    while (location + v4 - 1 > location)
    {
      [(TSWPStorage *)a1 characterAtIndex:location + v4-- - 2];
      if ((IsWhitespaceCharacter() & 1) == 0)
      {
        v5 = location + v4;
        while (1)
        {
          [(TSWPStorage *)a1 characterAtIndex:location];
          if (!IsWhitespaceCharacter())
          {
            break;
          }

          ++location;
          if (!--v4)
          {
            return v5;
          }
        }

        return location;
      }
    }
  }

  return location;
}

BOOL sub_462AC(id a1, TSDRep *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(TSDRep *)a2 info:a3];

  return [v4 conformsToProtocol:&OBJC_PROTOCOL___THWWidgetInfo];
}

BOOL sub_462E0(id a1, TSDRep *a2, unint64_t a3, BOOL *a4)
{
  v4 = TSUProtocolCast();
  v5 = (objc_opt_respondsToSelector() & 1) != 0 && [v4 pressableAction] == 1;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 pressableMoveToHitTestFront];
  }

  else
  {
    v6 = 0;
  }

  return (v5 | v6) & 1;
}

uint64_t sub_49930(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = [v2 drawable];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_msgSend(*(a1 + 32) "paginationResults")];
    v5 = [v3 widgetInfo];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      result = objc_opt_respondsToSelector();
      if ((result & 1) == 0)
      {
        return result;
      }

      v5 = [v5 adornmentInfo];
    }

    v7 = *(a1 + 32);

    return [v7 p_accumulateStorageUIDsForChildrenInObject:v5 forRelativePageIndex:v4];
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v8 = [objc_msgSend(*(a1 + 32) "paginationResults")];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = [v3 allWPStorages];
      result = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (result)
      {
        v10 = result;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [objc_msgSend(*(a1 + 32) "paginationResults")];
          }

          while (v10 != v12);
          result = [v9 countByEnumeratingWithState:&v13 objects:v17 count:16];
          v10 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

id sub_4C060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  objc_opt_class();
  v7 = TSUDynamicCast();
  v8 = [objc_msgSend(v7 "stylesheet")];
  v9 = *(a1 + 40);

  return [v9 setCharacterStyle:v8 range:a3 undoTransaction:{a4, 0}];
}

id sub_4C38C(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = *(a1 + 32);

  return [v2 setValue:v3 forProperty:18];
}

void *sub_540F8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x333333333333333)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x199999999999999)
      {
        v11 = 0x333333333333333;
      }

      else
      {
        v11 = v10;
      }

      sub_54254(v6, v11);
    }

    sub_3A53C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 4) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_54254(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    sub_408CC(a1, a2);
  }

  sub_3A53C();
}

uint64_t sub_542A0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_54254(result, a4);
  }

  return result;
}

void sub_54300(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_56298(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a2)
    {
      v8 = [objc_msgSend(*(a1 + 32) "sectionInfos")];
    }

    else
    {
      v8 = 0;
    }

    [a2 startLoading];
    if (*(a1 + 40) == 1)
    {
      [a2 waitUntilFinishedLoadingAndPaginating];
    }

    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3052000000;
    v17[3] = sub_564D4;
    v17[4] = sub_564E4;
    v17[5] = [*(a1 + 32) delegate];
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3052000000;
    v16[3] = sub_564D4;
    v9 = *(a1 + 32);
    v16[4] = sub_564E4;
    v16[5] = v9;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_564F0;
    v11[3] = &unk_45BB20;
    v11[4] = a2;
    v11[5] = v9;
    v11[10] = a3;
    v11[11] = a4;
    v11[6] = v8;
    v11[7] = v17;
    v11[8] = v16;
    v11[9] = &v12;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_56600;
    v10[3] = &unk_45BB48;
    v10[4] = v8;
    v10[5] = v17;
    v10[6] = v16;
    [a2 performWhenFinishedLoading:v11 onError:v10];
    *(v13 + 24) = 1;
    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(v16, 8);
    _Block_object_dispose(v17, 8);
  }
}

void sub_564A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

id sub_564F0(uint64_t a1)
{
  [*(*(*(a1 + 56) + 8) + 40) sectionController:*(*(*(a1 + 64) + 8) + 40) didLoadContentNode:*(a1 + 32) presentationType:{objc_msgSend(*(a1 + 40), "presentationType")}];
  v2 = +[NSMutableArray array];
  v3 = *(a1 + 80);
  for (i = *(a1 + 88) + v3; v3 < i; i = *(a1 + 88) + *(a1 + 80))
  {
    v5 = [*(a1 + 32) pageAtRelativeIndex:v3 forPresentationType:{objc_msgSend(*(a1 + 40), "presentationType")}];
    if (v5)
    {
      [v2 addObject:v5];
    }

    ++v3;
  }

  result = [*(a1 + 48) setPages:{objc_msgSend(objc_msgSend(*(a1 + 48), "pages"), "arrayByAddingObjectsFromArray:", v2)}];
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    v7 = *(*(*(a1 + 56) + 8) + 40);
    v8 = *(*(*(a1 + 64) + 8) + 40);

    return [v7 sectionControllerInfosDidChange:v8];
  }

  return result;
}

id sub_56600(uint64_t a1)
{
  [*(a1 + 32) setPages:0];
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = *(*(*(a1 + 48) + 8) + 40);

  return [v2 showCorruptDocumentAlertForSectionController:v3];
}

uint64_t sub_56984(uint64_t a1, void *a2, void *a3)
{
  v5 = [*(a1 + 32) indexOfObject:{objc_msgSend(objc_msgSend(a2, "pageController"), "contentNode")}];
  v6 = v5 - [*(a1 + 32) indexOfObject:{objc_msgSend(objc_msgSend(a3, "pageController"), "contentNode")}];

  return THNSComparisonResultFromInteger(v6);
}

void sub_56CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_56CBC(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t sub_56CCC(uint64_t a1)
{
  [*(a1 + 32) pageOriginForRelativePageIndex:*(a1 + 48)];
  v2 = [objc_msgSend(*(a1 + 32) "currentNavigationUnit")];
  if (v2)
  {
    v3 = [objc_msgSend(*(a1 + 32) "pageControllers")];
  }

  else
  {
    v3 = 0;
  }

  [v3 desiredPageSizeForRelativePageIndex:{objc_msgSend(objc_msgSend(*(a1 + 32), "currentNavigationUnit"), "nodeRelativePageIndexInContentNode:forNavigationUnitRelativePageIndex:presentationType:", v2, *(a1 + 48), objc_msgSend(*(a1 + 32), "presentationType"))}];
  result = TSDRectWithOriginAndSize();
  v5 = *(*(a1 + 40) + 8);
  v5[6] = v6;
  v5[7] = v7;
  v5[8] = v8;
  v5[9] = v9;
  return result;
}

id *sub_57790(id *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = result;
    if (a4)
    {
      v7 = a4 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (a2)
    {
      v8 = [objc_msgSend(result[4] "pageControllers")];
    }

    else
    {
      v8 = 0;
    }

    v9 = v6[5];

    return [v8 layoutThroughRelativePageIndex:v7 + a3 layoutController:v9];
  }

  return result;
}

id sub_5A714(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "documentViewController")];

  return [v1 pageLeft];
}

id sub_5A744(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 32) "documentViewController")];

  return [v1 pageRight];
}

id sub_5A8A0(uint64_t a1)
{
  v1 = [*(a1 + 32) chapterBrowserController];

  return [v1 transitionPageToDVC:0 chapterIndex:0];
}

void sub_5B5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_5B610(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_5B628(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_5B688(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void sub_5B6E8(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) quality];
  v3 = 56;
  if (v2 > 0x64)
  {
    v3 = 48;
  }

  v4 = [*(*(*(a1 + v3) + 8) + 40) image];
  v5 = +[UIImage imageWithCGImage:](UIImage, "imageWithCGImage:", [v4 CGImage]);

  if (!v5)
  {
    v6 = BCImageCacheLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_29CB78(a1, v6);
    }
  }

  [*(*(a1 + 40) + 8) setImage:v5];
}

void sub_5CED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_5CF04(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 applePubRelativePath];
    if (v4)
    {
      [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKey:v4];
    }
  }

  objc_opt_class();
  result = TSUDynamicCast();
  if (result)
  {
    v6 = result;
    result = [result applePubRelativePath];
    if (result)
    {
      v7 = result;
      v8 = *(*(*(a1 + 32) + 8) + 40);

      return [v8 setObject:v6 forKey:v7];
    }
  }

  return result;
}

uint64_t THNSComparisonResultFromInteger(uint64_t a1)
{
  if (a1 < 0)
  {
    v1 = -1;
  }

  else
  {
    v1 = a1;
  }

  if (v1 >= 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_5D410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(*(a1 + 32) positioningOfDrawable:{a2), "bodyCharIndex"}];
  v6 = [objc_msgSend(*(a1 + 32) positioningOfDrawable:{a3), "bodyCharIndex"}];
  if (v5 > v6)
  {
    return 1;
  }

  if (v6 > v5)
  {
    return -1;
  }

  objc_opt_class();
  v8 = TSUDynamicCast();
  objc_opt_class();
  v9 = TSUDynamicCast();
  if (v8)
  {
    v10 = v9;
    if (v9)
    {
      v11 = [objc_msgSend(v8 "associatedInfo")];
      v12 = [objc_msgSend(v10 "associatedInfo")];
      [v11 position];
      v14 = v13;
      [v12 position];
      if (v14 >= v15)
      {
        [v11 position];
        v17 = v16;
        [v12 position];
        if (v17 > v18)
        {
          return 1;
        }

        [v11 position];
        v20 = v19;
        [v12 position];
        if (v20 >= v21)
        {
          [v11 position];
          v23 = v22;
          [v12 position];
          return v23 > v24;
        }
      }

      return -1;
    }
  }

  return 0;
}

void sub_5DC78(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 2)
  {
    v10 = objc_begin_catch(exc_buf);
    [v10 description];
    NSLog(@"THBookOpener caught exception: %@");
    [v9 setException:v10];
    objc_end_catch();
    JUMPOUT(0x5DB68);
  }

  objc_begin_catch(exc_buf);
  JUMPOUT(0x5DB6CLL);
}

id sub_5E44C(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);

  return [v2 displaySettingsControllerDidChangeFlowMode:v3];
}

id sub_5FE90(uint64_t a1)
{
  [*(a1 + 32) setSupportedSections:*(a1 + 40)];
  [objc_msgSend(*(a1 + 32) "tableView")];
  v2 = *(a1 + 32);

  return [v2 p_setPopoverScrolling];
}

void sub_609CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_609E4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [@"THContinuousRotation" isEqualToString:a2];
  if ((result & 1) != 0 || (result = [@"THEaseInRotation" isEqualToString:a2], result))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_61774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_617B0(void *a1)
{
  result = [*(a1[4] + 48) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

id sub_617E8(void *a1)
{
  result = [*(a1[4] + 48) objectForKey:a1[5]];
  if (result)
  {
    *(*(a1[6] + 8) + 40) = result;
  }

  else
  {
    v3 = a1[5];
    v4 = *(a1[4] + 48);
    v5 = *(*(a1[6] + 8) + 40);

    return [v4 setObject:v5 forKey:v3];
  }

  return result;
}

id sub_62058(id result, void *a2)
{
  if (result)
  {
    objc_opt_class();
    v3 = TSUDynamicCast();
    if (v3)
    {
      v4 = v3;
      result = [v3 nodeBodyExists];
      if (result)
      {

        return [a2 addObject:v4];
      }
    }

    else
    {
      objc_opt_class();
      result = TSUDynamicCast();
      if (result)
      {
        v5 = [result childNodes];
        v9 = 0u;
        v10 = 0u;
        v11 = 0u;
        v12 = 0u;
        result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (result)
        {
          v6 = result;
          v7 = *v10;
          do
          {
            v8 = 0;
            do
            {
              if (*v10 != v7)
              {
                objc_enumerationMutation(v5);
              }

              sub_62058(*(*(&v9 + 1) + 8 * v8), a2);
              v8 = v8 + 1;
            }

            while (v6 != v8);
            result = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
            v6 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

void sub_63680(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (a3)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THWWebView initWithfilteredOutURLSchemes:requestScope:]_block_invoke"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebView.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:96 description:{@"expected nil value for '%s'", "error"}];
  }

  [*(a1 + 32) setWebView:v8];
}

void sub_63BC8(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = [*(a1 + 32) webView];
  [v2 setAlpha:1.0];
}

uint64_t sub_63C28(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    v2 = [*(result + 32) layer];
    [v2 setShouldRasterize:0];

    v3 = [*(v1 + 32) webView];
    v4 = [v3 layer];
    [v4 setShouldRasterize:0];

    v5 = *(*(v1 + 40) + 16);

    return v5();
  }

  return result;
}

void sub_63E44(id a1, id a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = THLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_29CCE4(v3, v4);
    }
  }
}

id *sub_64180(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _attemptURLLoad];
  }

  return result;
}

void sub_64430(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v9)
  {
    v6 = [WKWebView alloc];
    [*(a1 + 32) bounds];
    v7 = [v6 initWithFrame:v9 configuration:?];
    [v7 _overrideViewportWithArguments:&off_49DB90];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v5);
  }
}

void sub_647E0(uint64_t a1, uint64_t a2)
{
  v8[0] = @"trigger";
  v3 = [NSString stringWithFormat:@"%@://", a2, @"url-filter"];
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v8[1] = @"action";
  v9[0] = v4;
  v9[1] = &off_49DBB8;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  [*(a1 + 32) addObject:v5];
}

void sub_648E0(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = +[TSUAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"[THWWebView _createContentBlockingRulesWithfilteredOutURLSchemes:toRuleListStore:completion:]_block_invoke_2"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Web/THWWebView.m"];
    [v6 handleFailureInFunction:v7 file:v8 lineNumber:384 description:{@"expected nil value for '%s'", "error"}];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v5);
  }
}

void sub_64E9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) addContentRuleList:v5];
  }

  if (v6)
  {
    v7 = THLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_29CD5C(v6, v7);
    }
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, *(a1 + 40), v6);
  }
}

void sub_66798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

uint64_t sub_667BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (++*(*(*(result + 32) + 8) + 24) >= 0xC8uLL)
  {
    *(*(*(result + 40) + 8) + 24) = a5 + a6;
    *a7 = 1;
  }

  return result;
}

void sub_689A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_689F8(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  objc_sync_enter(v2);
  if (([*(*(a1[6] + 8) + 40) isCancelled] & 1) == 0)
  {
    [objc_msgSend(*(*(a1[5] + 8) + 40) "queuedOperations")];
    (*(a1[4] + 16))();
  }

  return objc_sync_exit(v2);
}

void sub_68B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_68B9C(void *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  objc_sync_enter(v2);
  if ([objc_msgSend(*(*(a1[6] + 8) + 40) "waitingBlockTimers")])
  {
    [objc_msgSend(*(*(a1[6] + 8) + 40) "waitingBlockTimers")];
    (*(a1[5] + 16))();
  }

  return objc_sync_exit(v2);
}

unint64_t THRangeExtendBackward(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 >= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a1;
  }

  return a1 - v3;
}

uint64_t THRangeExtendForward(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 + a2 > a4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return a1;
}

id sub_6A1A8(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "delegate")];
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {

    return [v2 p_hideNavigationBar];
  }

  else
  {

    return [v2 p_showNavigationBar];
  }
}

id sub_6A218(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "navigationBar")];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 32) delegate];
  v4 = *(a1 + 48);
  v5 = *(a1 + 49);

  return [v3 didSetNavigationBarHidden:v4 animated:v5];
}

id sub_6A710(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  if (result)
  {
    v3 = result;
    v4 = *(a1 + 32);

    return [v4 addObject:v3];
  }

  return result;
}

id sub_6B7F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 128))
  {
    v2 = *(v1 + 128);
  }

  else
  {
    v2 = 0;
  }

  return [*(v1 + 120) performSelector:v2 withObject:0.0 afterDelay:?];
}

void sub_6C2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6C2D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_semaphore_signal(WeakRetained);
}

void sub_6C318(uint64_t a1)
{
  [*(a1 + 32) waitUntilCompleted];
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 40) removeAnimations];
  objc_autoreleasePoolPop(v2);
  +[CATransaction commit];
  if (*(*(a1 + 40) + 120))
  {
    if (objc_opt_respondsToSelector())
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_6C40C;
      block[3] = &unk_45AD60;
      block[4] = *(a1 + 40);
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

id sub_6C40C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 128))
  {
    v2 = *(v1 + 128);
  }

  else
  {
    v2 = 0;
  }

  return [*(v1 + 120) performSelector:v2 withObject:0 afterDelay:0.0];
}

id sub_6CDD0(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "curtainLayer")];
  v2 = *(a1 + 32);

  return [v2 setCurtainLayer:0];
}

id sub_6DF44(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    (*(v1 + 16))();
  }

  v2 = +[UIApplication sharedApplication];

  return [(UIApplication *)v2 endIgnoringInteractionEvents];
}

__n128 sub_6EEDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[72] & 1) == 0)
  {
    v3 = [v2 p_wantsCurtainFadeOut];
    v2 = *(a1 + 32);
    if (v3)
    {
      [v2 p_fadeOutCurtain];
      v2 = *(a1 + 32);
    }
  }

  [v2 delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  v4 = [*(a1 + 32) freeTransformLayer];
  v17 = *&CGAffineTransformIdentity.c;
  v18 = *&CGAffineTransformIdentity.a;
  v23[0] = *&CGAffineTransformIdentity.a;
  v23[1] = v17;
  v16 = *&CGAffineTransformIdentity.tx;
  v23[2] = v16;
  [v4 setAffineTransform:v23];
  v5 = [*(a1 + 32) freeTransformLayer];
  [v5 removeAnimationForKey:kSnapToSizeAnimationName];
  v6 = [*(a1 + 32) shadowLayer];
  [v6 removeAnimationForKey:kSnapToSizeAnimationName];
  v7 = [*(a1 + 32) shadowLayer];
  [v7 removeAnimationForKey:kTHWFreeTransformControllerFadeOutAnimationName];
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [objc_msgSend(*(a1 + 32) "delegate")];
    [objc_msgSend(v8 "shadowLayer")];
    [objc_msgSend(v8 "reflectionLayer")];
  }

  [*(a1 + 32) p_cleanupExtraLayers];
  [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(*(a1 + 32) "delegate")];
  }

  [objc_msgSend(*(a1 + 32) "delegate")];
  [*(a1 + 32) setIsFreeTransformInProgress:0];
  --dword_5677A0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [+[UIApplication sharedApplication](UIApplication windows];
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v19 + 1) + 8 * i) setUserInteractionEnabled:1];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v11);
  }

  [+[UIWindow keyWindow](UIWindow "keyWindow")];
  v14 = (*(a1 + 32) + 264);
  *v14 = v18;
  v14[1] = v17;
  result = v16;
  v14[2] = v16;
  *(*(a1 + 32) + 72) = 0;
  *(*(a1 + 32) + 314) = 0;
  return result;
}

void sub_71418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_71458(uint64_t a1)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v8 = *(*(a1 + 40) + 8);
        if (!v8)
        {
          *(*(a1 + 40) + 8) = objc_alloc_init(TSURetainedPointerKeyDictionary);
          v8 = *(*(a1 + 40) + 8);
        }

        v9 = [v8 objectForKey:v7];
        v10 = [*(a1 + 40) p_relativePageIndexForPageInfo:v7];
        if (v9)
        {
          goto LABEL_36;
        }

        v9 = [[THPageLayerAndSubviewHost alloc] initWithPageInfo:v7 scrimEnabled:*(*(a1 + 40) + 56) delegate:?];
        [*(*(a1 + 40) + 8) setObject:v9 forUncopiedKey:v7];
        if (!*(*(*(a1 + 56) + 8) + 40))
        {
          *(*(*(a1 + 56) + 8) + 40) = +[NSMutableIndexSet indexSet];
        }

        if (v10 <= 0x7FFFFFFFFFFFFFFELL)
        {
          [*(*(*(a1 + 56) + 8) + 40) addIndex:v10];
        }

        if (v9)
        {
LABEL_36:
          if (![(THPageLayerAndSubviewHost *)v9 rep])
          {
            TSDRectWithOriginAndSize();
            [THPageLayerAndSubviewHost setUnscaledFrame:v9 unscaledLayerOffset:"setUnscaledFrame:unscaledLayerOffset:viewScale:" viewScale:?];
            v11 = *(a1 + 40);
            if (*(v11 + 56) == 1)
            {
              [(THPageLayerAndSubviewHost *)v9 loadPreviewOnQueue:*(v11 + 40)];
            }

            [*(a1 + 48) addObject:{-[THPageLayerAndSubviewHost view](v9, "view")}];
            [*(a1 + 48) addObject:{-[THPageLayerAndSubviewHost borderView](v9, "borderView")}];
          }
        }

        [*(*(a1 + 40) + 16) removeObject:v9];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      v4 = result;
    }

    while (result);
  }

  if (*(a1 + 88) == 1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = *(*(a1 + 40) + 8);
    result = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (result)
    {
      v13 = result;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          v17 = [*(*(a1 + 40) + 8) objectForKey:v16];
          if (v17)
          {
            v18 = v17;
            if (![v17 rep] && (objc_msgSend(*(a1 + 32), "tsu_containsObjectIdenticalTo:", v16) & 1) == 0)
            {
              v19 = *(*(a1 + 40) + 16);
              if (!v19)
              {
                *(*(a1 + 40) + 16) = objc_alloc_init(TSUMutableRetainedPointerSet);
                v19 = *(*(a1 + 40) + 16);
              }

              [v19 addObject:v18];
            }
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        result = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        v13 = result;
      }

      while (result);
    }
  }

  return result;
}

id sub_71A5C(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(*(a1 + 32) + 16) copy];
  [*(*(a1 + 32) + 16) removeAllObjects];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  obj = *(*(*(a1 + 48) + 8) + 40);
  result = [obj countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = [v6 pageInfo];
        [*(a1 + 40) addObject:{objc_msgSend(v6, "view")}];
        [*(a1 + 40) addObject:{objc_msgSend(v6, "borderView")}];
        if ([*(*(a1 + 32) + 8) objectForKey:v7] != v6)
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }

        if ([*(*(a1 + 32) + 8) objectForKey:v7] == v6)
        {
          [*(*(a1 + 32) + 8) removeObjectForKey:v7];
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [obj countByEnumeratingWithState:&v9 objects:v13 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

id sub_71D50(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 8);
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
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

        v7 = [*(*(a1 + 32) + 8) objectForKey:*(*(&v9 + 1) + 8 * v6)];
        if ([v7 rep])
        {
          [v7 canvasBoundsFrame];
          v8 = CGRectIntersectsRect(v14, *(a1 + 40));
          if (!v8 || (*(a1 + 72) & 1) == 0)
          {
            [v7 unloadPreviewAnimated:v8];
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_720F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_72110(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 absolutePageIndex];
  if (result == *(a1 + 40))
  {
    *(*(*(a1 + 32) + 8) + 40) = a2;
    *a3 = 1;
  }

  return result;
}

id sub_72394(void *a1)
{
  v2 = *(a1[4] + 8);
  if (!v2)
  {
    *(a1[4] + 8) = objc_alloc_init(TSURetainedPointerKeyDictionary);
    v2 = *(a1[4] + 8);
  }

  result = [v2 objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  v4 = a1[6];
  if (*(*(v4 + 8) + 40))
  {
    result = [*(a1[4] + 16) containsObject:?];
    v4 = a1[6];
    if (result)
    {
      result = [*(a1[4] + 16) removeObject:*(*(v4 + 8) + 40)];
      v4 = a1[6];
    }
  }

  if (!*(*(v4 + 8) + 40))
  {
    return [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  return result;
}

id sub_725A4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (!v2)
  {
    *(*(a1 + 32) + 16) = objc_alloc_init(TSUMutableRetainedPointerSet);
    v2 = *(*(a1 + 32) + 16);
  }

  v3 = *(a1 + 40);

  return [v2 addObject:v3];
}

id sub_737E0(uint64_t a1, CGContextRef c)
{
  CGContextScaleCTM(c, *(a1 + 40), *(a1 + 40));
  v4 = [*(a1 + 32) wpTextHelper];
  v5 = [*(a1 + 32) wpColumnHelper];
  v6 = *(a1 + 40);

  return [v4 drawColumn:v5 inContext:c isFlipped:0 viewScale:v6];
}

uint64_t THIntegralCenterRectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  CGRectGetMidX(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetWidth(v19);
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  CGRectGetMidY(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetHeight(v21);

  return TSDRoundedRectForMainScreen();
}

double THRectCenterRectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v16 = MidX - CGRectGetWidth(v20) * 0.5;
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  CGRectGetMidY(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetHeight(v22);
  return v16;
}

double THCenterOfIntegralRectCenteredOnPoint()
{
  TSDRoundedRectForMainScreen();
  x = v6.origin.x;
  y = v6.origin.y;
  width = v6.size.width;
  height = v6.size.height;
  MidX = CGRectGetMidX(v6);
  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  CGRectGetMidY(v7);
  return MidX;
}

double THScaleNeededToFitSizeInSize(double a1, double a2, double a3, double a4)
{
  result = 1.0;
  if (a2 > 0.0 && a1 > 0.0)
  {
    result = a4 / a2;
    if (a3 / a1 < a4 / a2)
    {
      return a3 / a1;
    }
  }

  return result;
}

double THScaleNeededToFillSizeInSize(double a1, double a2, double a3, double a4)
{
  result = 1.0;
  if (a2 > 0.0 && a1 > 0.0)
  {
    result = a4 / a2;
    if (a3 / a1 >= a4 / a2)
    {
      return a3 / a1;
    }
  }

  return result;
}

CGFloat THRectMultiplyRectCenteredScalar(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v9 = CGRectGetMidX(*&a1) - a3 * a5 * 0.5;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMidY(v11);
  return v9;
}

void *sub_75F10(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setPlaybackState:4];
  [*(a1 + 32) stopAllAnimations];
  result = *(a1 + 32);
  if (!result[2])
  {

    return [result tearDownShow];
  }

  return result;
}

id sub_7605C(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 8) "KPFDocument")];
  if (result != 2)
  {
    v3 = *(a1 + 32);

    return [v3 p_triggerNextEvent];
  }

  return result;
}

id sub_76154(uint64_t a1)
{
  if (([*(a1 + 32) isAnimating] & 1) != 0 || (result = objc_msgSend(*(*(a1 + 32) + 8), "decrementCurrentEventIndex"), result))
  {
    [*(*(a1 + 32) + 8) setPlaybackStatus:2];
    [objc_msgSend(*(*(a1 + 32) + 8) "currentEvent")];
    [*(*(a1 + 32) + 8) setPlaybackStatus:1];
    *(*(a1 + 32) + 26) = 0;
    result = [objc_msgSend(*(*(a1 + 32) + 8) "currentEvent")];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 p_triggerNextEvent];
    }
  }

  return result;
}

id sub_7628C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setEventIndex:*(a1 + 40) skipBreadCrumb:*(a1 + 48)];
  [*(*(a1 + 32) + 8) setPlaybackStatus:2];
  [objc_msgSend(*(*(a1 + 32) + 8) "currentEvent")];
  [*(*(a1 + 32) + 8) setPlaybackStatus:1];
  *(*(a1 + 32) + 26) = 0;
  result = [objc_msgSend(*(*(a1 + 32) + 8) "currentEvent")];
  if (result && *(a1 + 49) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 p_triggerNextEvent];
  }

  return result;
}

id sub_7651C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_msgSend(v1[1] "KPFDocument")] - 1;

  return [v1 gotoEventIndex:v2];
}

id sub_765E0(uint64_t a1)
{
  v2 = [objc_msgSend(*(*(a1 + 32) + 8) "KPFDocument")];
  v3 = *(a1 + 32);

  return [v3 gotoEventIndex:v2];
}

id sub_766CC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) visibleEventIndex];
  v3 = [objc_msgSend(*(*(a1 + 32) + 8) "KPFDocument")];
  v4 = [objc_msgSend(*(*(a1 + 32) + 8) "KPFDocument")];
  if (v2 == v4)
  {
    if (v3)
    {
      v5 = v3 - 1;
    }

    else if ([objc_msgSend(*(*(a1 + 32) + 8) KPFDocument])
    {
      v5 = [objc_msgSend(*(*(a1 + 32) + 8) "KPFDocument")] - 1;
    }

    else
    {
      v5 = 0;
    }

    v4 = [objc_msgSend(*(*(a1 + 32) + 8) KPFDocument];
  }

  [*(*(a1 + 32) + 8) setEventIndex:v4 skipBreadCrumb:0];
  [*(*(a1 + 32) + 8) setPlaybackStatus:2];
  [objc_msgSend(*(*(a1 + 32) + 8) "currentEvent")];
  result = [*(*(a1 + 32) + 8) setPlaybackStatus:1];
  *(*(a1 + 32) + 26) = 0;
  return result;
}

id sub_76AA8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) currentEvent];
  if ([*(*(a1 + 32) + 8) playbackStatus] == 4 || objc_msgSend(v2, "isAutomatic") && objc_msgSend(*(*(a1 + 32) + 8), "playbackStatus") != 3)
  {
    v2 = [*(*(a1 + 32) + 8) nextEvent];
  }

  result = [v2 hyperlinkAtLocation:{*(a1 + 48), *(a1 + 56)}];
  if (result)
  {
    v4 = result;
    if ([result hasPrefix:@"?slide="])
    {
      [*(a1 + 32) gotoEventIndex:{objc_msgSend(objc_msgSend(*(*(a1 + 32) + 8), "KPFDocument"), "eventIndexForSlideIndex:", (objc_msgSend(objc_msgSend(v4, "substringFromIndex:", 7), "intValue") - 1))}];
    }

    else if ([v4 isEqualToString:@"?action=exitpresentation"])
    {
      if ((*(*(a1 + 32) + 24) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = [v4 isEqualToString:@"?action=retreat"];
      v7 = *(a1 + 32);
      if (v6)
      {
        [v7 retreatToPreviousSlide];
      }

      else
      {
        [v7 p_handleURL:v4];
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_9:
    v5 = *(a1 + 32);

    return [v5 p_announceStateUpdate];
  }

  return result;
}

id sub_76D34(uint64_t a1)
{
  result = [*(a1 + 32) transportControlCloneCanGotoPrev];
  if (result)
  {
    [*(a1 + 32) gotoPreviousSlide];
    v3 = *(a1 + 32);

    return [v3 p_announceStateUpdate];
  }

  return result;
}

id sub_76E08(uint64_t a1)
{
  result = [*(a1 + 32) transportControlCloneCanGotoNext];
  if (result)
  {
    [*(a1 + 32) gotoNextEvent];
    v3 = *(a1 + 32);

    return [v3 p_announceStateUpdate];
  }

  return result;
}

id sub_76EDC(uint64_t a1)
{
  result = [*(a1 + 32) transportControlCloneCanGotoFirst];
  if (result)
  {
    [*(a1 + 32) resetToFirstEventAndShouldAutoPlay:0];
    v3 = *(a1 + 32);

    return [v3 p_announceStateUpdate];
  }

  return result;
}

id sub_76FB4(uint64_t a1)
{
  result = [*(a1 + 32) transportControlCloneCanGotoLast];
  if (result)
  {
    [*(a1 + 32) gotoLastEvent];
    v3 = *(a1 + 32);

    return [v3 p_announceStateUpdate];
  }

  return result;
}

id sub_77108(uint64_t a1)
{
  [*(a1 + 32) gotoSlideIndex:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 p_announceStateUpdate];
}

id *sub_775F8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) playbackState] == 2)
  {
    [*(a1 + 32) p_playSoundtrack];
    [*(*(a1 + 32) + 8) setPlaybackState:3];
  }

  v2 = [*(*(a1 + 32) + 8) playbackStatus];
  result = *(a1 + 32);
  if (v2 != 4)
  {
    goto LABEL_10;
  }

  [result[1] setPlaybackStatus:2];
  [objc_msgSend(*(*(a1 + 32) + 8) "currentEvent")];
  v4 = [*(*(a1 + 32) + 8) incrementCurrentEventIndex];
  result = *(a1 + 32);
  if (v4)
  {
    [objc_msgSend(result[1] "currentEvent")];
    [*(*(a1 + 32) + 8) setPlaybackStatus:1];
    result = *(a1 + 32);
    goto LABEL_10;
  }

  if (*(result + 24) != 1)
  {
LABEL_10:
    if ((*(result + 26) & 1) == 0)
    {
      result = [result isAnimating];
      v5 = *(a1 + 32);
      if (result)
      {
        *(v5 + 26) = 1;
      }

      else
      {
        v6 = [objc_msgSend(*(v5 + 8) "currentEvent")];
        v7 = *(a1 + 32);
        if (v6)
        {
          *(v7 + 26) = 1;
          v8 = [*(*(a1 + 32) + 8) currentEvent];

          return [v8 stopMoviePlayback];
        }

        else if ([*(v7 + 8) playbackStatus] == 1 && (v9 = objc_msgSend(*(*(a1 + 32) + 8), "currentEventIndex"), v9 < objc_msgSend(objc_msgSend(*(*(a1 + 32) + 8), "KPFDocument"), "eventCount") - 1))
        {
          v10 = [*(*(a1 + 32) + 8) currentEvent];
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_77884;
          v13[3] = &unk_45AE00;
          v13[4] = *(a1 + 32);
          [v10 setAnimationEndHandler:v13];
          [*(*(a1 + 32) + 8) setPlaybackStatus:3];
          return [objc_msgSend(*(*(a1 + 32) + 8) "currentEvent")];
        }

        else
        {
          result = [objc_msgSend(*(*(a1 + 32) + 8) "KPFDocument")];
          if (result)
          {
            v11 = [*(*(a1 + 32) + 8) currentEventIndex];
            result = [objc_msgSend(*(*(a1 + 32) + 8) "KPFDocument")];
            if (v11 == result - 1)
            {
              v12 = *(a1 + 32);

              return [v12 gotoFirstEvent];
            }
          }
        }
      }
    }

    return result;
  }

  return [result endshow];
}

void sub_7A060(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7A0D8;
  block[3] = &unk_45AE00;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

char *sub_7A0D8(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 80) "asset")];
  if (result == &dword_0 + 2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 showsClosedCaptions];

    return [v3 p_setShowsClosedCaptions:v4];
  }

  return result;
}

uint64_t sub_7AB14(uint64_t a1)
{
  qword_5677A8 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_7B85C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 url];
  [v3 logEvent:@"viewControllerForAsset" forAsset:v4];
}

void sub_7C544(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BCIMLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_29CE0C(a1, v3, v4);
    }

    v5 = [NSError errorWithDomain:AssetEngineErrorDomain code:1001 userInfo:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_7C808;
    block[3] = &unk_45C308;
    v6 = *(a1 + 64);
    v31 = v5;
    v32 = v6;
    v7 = v5;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = sub_7C820;
    v28[4] = sub_7C830;
    v29 = 0;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    obj = 0;
    v10 = [v8 helper:v9 validateBookAuthorizationWithError:&obj needsCoordination:0];
    objc_storeStrong(&v29, obj);
    v11 = [*(a1 + 40) assetInfoForURL:*(a1 + 32)];
    v12 = [*(a1 + 40) descriptionForAsset:v11];
    [v12 loadMetadata];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_7C838;
    v17[3] = &unk_45C3D0;
    v25 = v10;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v24 = v28;
    v17[4] = v13;
    v18 = v14;
    v19 = v11;
    v20 = v12;
    v21 = *(a1 + 56);
    v26 = *(a1 + 72);
    v22 = *(a1 + 32);
    v23 = *(a1 + 64);
    v15 = v12;
    v16 = v11;
    dispatch_sync(&_dispatch_main_q, v17);

    _Block_object_dispose(v28, 8);
  }
}

void sub_7C7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_7C820(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_7C838(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = *(*(a1 + 88) + 8);
    v4 = *(v2 + 40);
    v3 = (v2 + 40);
    if (!v4)
    {
      v29 = *(a1 + 32);
      v30 = *(a1 + 40);
      v31 = *(a1 + 48);
      v32 = *(a1 + 56);
      v33 = *(a1 + 64);
      v65 = 0;
      v34 = [v29 _helper:v30 assetInfo:v31 viewControllerForBookDescription:v32 options:v33 error:&v65];
      objc_storeStrong(v3, v65);
LABEL_23:
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_7D1C4;
      block[3] = &unk_45C358;
      v40 = *(a1 + 80);
      v48 = v34;
      v49 = v40;
      v50 = *(a1 + 88);
      v7 = v34;
      dispatch_async(&_dispatch_main_q, block);

      v8 = v49;
      goto LABEL_24;
    }
  }

  if (*(a1 + 97) != 1 || [*(*(*(a1 + 88) + 8) + 40) code] != &stru_790.flags + 2 || (objc_msgSend(*(*(*(a1 + 88) + 8) + 40), "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", AssetEngineErrorDomain), v5, !v6))
  {
LABEL_22:
    v34 = 0;
    goto LABEL_23;
  }

  v7 = +[AEAssetEngine appInfoMgr];
  v8 = [*(a1 + 72) path];
  v9 = [v8 stringByAppendingPathComponent:@"iTunesMetadata.plist"];
  v10 = [NSDictionary dictionaryWithContentsOfFile:v9];
  v11 = [v10 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
  v46 = [v11 valueForKeyPath:@"accountInfo.DSPersonID"];
  v12 = [v11 valueForKeyPath:@"accountInfo.AltDSID"];
  v13 = [v11 valueForKeyPath:@"accountInfo.AppleID"];
  if (![v13 length])
  {
    v14 = [v10 objectForKeyedSubscript:@"apple-id"];

    v13 = v14;
  }

  if (![v13 length])
  {

LABEL_21:
    goto LABEL_22;
  }

  v45 = v12;
  v15 = +[ACAccountStore bu_sharedAccountStore];
  v16 = [v15 ams_iTunesAccountWithUsername:v13];

  if (v16)
  {
    v17 = [v16 credential];
    v18 = [v17 isEmpty];

    if (!v18)
    {
      v35 = [v16 ams_DSID];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 isConnectedToInternet] && v35)
      {
        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_7D008;
        v51[3] = &unk_45C3A8;
        v36 = *(a1 + 40);
        v51[4] = *(a1 + 32);
        v52 = v36;
        v53 = *(a1 + 64);
        v37 = *(a1 + 80);
        v54 = v35;
        v55 = 0;
        v38 = *(a1 + 88);
        v56 = v37;
        v57 = v38;
        v39 = v35;
        [PFDContext Xj3eVHDeBoTD6fVn6fY8:v39 completion:v51];

        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  v43 = v16;
  v44 = v9;
  v19 = BCIMLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 72);
    *buf = 138412546;
    v67 = v20;
    v68 = 2112;
    v69 = v13;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "Auth needed due to non-existing account for asset at url, username: %@ -- %@", buf, 0x16u);
  }

  v42 = [*(a1 + 64) objectForKeyedSubscript:BCTransactionOptionsTransactionKey];
  v41 = [v7 _mainViewControllerForTransaction:v42];
  v21 = objc_alloc_init(AMSAuthenticateOptions);
  [v21 setCanMakeAccountActive:0];
  v22 = [[AMSAuthenticateRequest alloc] initWithDSID:v46 altDSID:v45 username:v13 options:v21];
  v23 = [[AMSUIAuthenticateTask alloc] initWithRequest:v22 presentingViewController:v41];
  v24 = [v23 performAuthentication];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_7CE60;
  v58[3] = &unk_45C380;
  v25 = *(a1 + 40);
  v58[4] = *(a1 + 32);
  v59 = v25;
  v60 = *(a1 + 64);
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  v63 = v26;
  v64 = v27;
  v61 = v13;
  v62 = 0;
  v28 = v13;
  [v24 addFinishBlock:v58];

LABEL_24:
}

void sub_7CE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v6 = BCIMLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29CE88();
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_7CFE8;
    v9[3] = &unk_45C358;
    v11 = *(a1 + 72);
    v7 = *(a1 + 64);
    v8 = *(a1 + 80);
    v10 = v7;
    v12 = v8;
    dispatch_async(&_dispatch_main_q, v9);

    v5 = v11;
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_7CFD4;
    block[3] = &unk_45C330;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v14 = v4;
    v15 = *(a1 + 48);
    v16 = *(a1 + 72);
    dispatch_async(&_dispatch_main_q, block);

    v5 = v14;
  }
}

void sub_7D008(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = BCIMLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_29CF10();
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_7D1A4;
    block[3] = &unk_45C358;
    v11 = *(a1 + 72);
    v5 = *(a1 + 64);
    v6 = *(a1 + 80);
    v10 = v5;
    v12 = v6;
    dispatch_async(&_dispatch_main_q, block);

    v7 = v11;
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_7D190;
    v13[3] = &unk_45C330;
    v8 = *(a1 + 40);
    v13[4] = *(a1 + 32);
    v14 = v8;
    v15 = *(a1 + 48);
    v16 = *(a1 + 72);
    dispatch_async(&_dispatch_main_q, v13);

    v7 = v14;
  }
}

void sub_7D830(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_7DAC8(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  [v1 setObject:+[IMTheme themeWithIdentifier:](IMTheme forKey:{"themeWithIdentifier:", kIMThemeIdentifierWhitePageTheme), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 0)}];
  [v1 setObject:+[IMTheme themeWithIdentifier:](IMTheme forKey:{"themeWithIdentifier:", kIMThemeIdentifierSepiaPageTheme), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 1)}];
  [v1 setObject:+[IMTheme themeWithIdentifier:](IMTheme forKey:{"themeWithIdentifier:", kIMThemeIdentifierGrayPageTheme), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 2)}];
  [v1 setObject:+[IMTheme themeWithIdentifier:](IMTheme forKey:{"themeWithIdentifier:", kIMThemeIdentifierNightPageTheme), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 3)}];
  [v1 setObject:+[IMTheme themeWithIdentifier:](IMTheme forKey:{"themeWithIdentifier:", kIMThemeIdentifierBlissClassicTheme), +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 4)}];
  qword_5677C0 = v1;
}

void sub_7EA00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_7EA20(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _updateAppearanceFromLightLevelController:a2];
}

id sub_7F4DC(uint64_t a1)
{
  v1 = [*(a1 + 32) titleLabelNavigationBar];

  return [v1 setAlpha:1.0];
}

id sub_7F50C(uint64_t a1)
{
  v1 = [*(a1 + 32) titleLabelNavigationBar];

  return [v1 setHidden:0];
}

id sub_7F53C(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "titleLabelNavigationBar")];
  v2 = [*(a1 + 32) actionlessBookmarkButton];

  return [v2 setAlpha:0.0];
}

id *sub_7F588(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    [objc_msgSend(result[4] "titleLabelNavigationBar")];
    v3 = [v2[4] titleLabelNavigationBar];

    return [v3 setHidden:1];
  }

  return result;
}

id *sub_7FE5C(id *result, uint64_t a2)
{
  if (*(*(result[5] + 1) + 24) == 1 && *(result + 64) == 1 && (*(result[4] + 210) & 1) == 0)
  {
    return [result[4] p_bookViewWillAnimateRotationToSize:a2 withContext:{*(result + 6), *(result + 7)}];
  }

  return result;
}

id sub_7FEA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if ((v3[210] & 1) == 0)
  {
    if (*(*(*(a1 + 40) + 8) + 24) == 1 && *(a1 + 64) == 1)
    {
      [v3 p_bookViewDidAnimateRotationToSize:a2 withContext:{*(a1 + 48), *(a1 + 56)}];
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    if (*(a1 + 64) == 1)
    {
      [v5 p_bookViewDidRotateTransitionToSize:a2 withContext:{v6, v7}];
    }

    else
    {
      [v5 p_bookViewDidTransitionToSize:a2 withContext:{v6, v7}];
    }
  }

  v8 = *(a1 + 32);

  return [v8 emitReadingOrientationChangeEventIfNeeded];
}

uint64_t sub_812B8(uint64_t a1)
{
  [*(a1 + 32) p_unloadGlossaryViewControllerIfHiding];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_8145C(uint64_t a1)
{
  [*(a1 + 32) setPresentingGlossary:1];
  result = [*(a1 + 32) isGlossaryVisible];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) p_ensureGlossaryViewController];
    result = [*(a1 + 32) glossaryViewController];
    if (result)
    {
      [objc_msgSend(*(a1 + 32) "glossaryViewController")];
      [objc_msgSend(objc_msgSend(*(a1 + 32) "glossaryViewController")];
      [objc_msgSend(*(a1 + 32) "glossaryViewController")];
      [*(a1 + 32) vantageWillChangeBy:*(a1 + 32) reason:@"THVantageChangeReasonTransitionToGlossary"];
      [objc_msgSend(*(a1 + 32) "glossaryViewController")];
      [*(a1 + 32) presentViewController:objc_msgSend(*(a1 + 32) animated:"glossaryViewController") completion:{1, &stru_45C488}];
      v3 = *(a1 + 32);

      return [v3 vantageDidChangeBy:v3 reason:@"THVantageChangeReasonTransitionToGlossary"];
    }
  }

  return result;
}

id sub_8163C(uint64_t a1)
{
  [*(a1 + 32) p_ensureGlossaryViewController];
  [objc_msgSend(*(a1 + 32) "glossaryViewController")];
  v2 = *(a1 + 32);

  return [v2 p_showGlossary];
}

id sub_81F80(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeScale(&v14, v2 / v4, v3 / v5);
  TSDCenterOfRect();
  TSDCenterOfRect();
  TSDSubtractPoints();
  t1 = v14;
  CGAffineTransformMakeTranslation(&t2, v6, v7);
  CGAffineTransformConcat(&v13, &t1, &t2);
  v14 = v13;
  v10 = v13;
  v8 = [objc_msgSend(*(a1 + 32) "documentViewController")];
  v13 = v10;
  return [v8 setTransform:&v13];
}

id sub_8207C(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "chapterBrowserController")];
  [*(a1 + 32) p_addViewControllerInFront:objc_msgSend(*(a1 + 32) reason:{"chapterBrowserController"), @"THVantageChangeReasonTransitionToTOC"}];
  [objc_msgSend(objc_msgSend(*(a1 + 32) documentViewController];
  [objc_msgSend(*(a1 + 32) "documentViewController")];
  [objc_msgSend(*(a1 + 32) "chapterBrowserController")];
  [objc_msgSend(*(a1 + 32) "documentViewController")];
  return [*(a1 + 32) p_removeViewController:{objc_msgSend(*(a1 + 32), "documentViewController")}];
}

uint64_t sub_8245C(uint64_t a1)
{
  [*(a1 + 32) setEnabled:1];
  +[UIViewController attemptRotationToDeviceOrientation];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_82644(uint64_t a1)
{
  [*(a1 + 32) p_clearNotesFullscreenViewController];
  *(*(a1 + 32) + 273) = 0;
  v2 = *(a1 + 32);
  if (*(a1 + 40))
  {
    [v2 showSearchPopoverWithText:?];
  }

  else
  {
    v3 = [v2 visibleViewController];
    if (v3 == [*(a1 + 32) documentViewController] && objc_msgSend(objc_msgSend(*(a1 + 32), "documentViewController"), "isViewLoaded"))
    {
      [objc_msgSend(objc_msgSend(*(a1 + 32) "documentViewController")];
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

uint64_t sub_82994(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    [objc_msgSend(*(*(result + 32) + 48) "interactiveCanvasController")];
    if (*(v2 + 56) == 1)
    {
      [*(v2 + 32) followAnchor:*(v2 + 40) pulse:0];
    }

    if (*(v2 + 57) == 1)
    {
      [*(v2 + 32) hideLoadSpinner];
    }

    result = *(v2 + 48);
    if (result)
    {
      v3 = *(result + 16);

      return v3();
    }
  }

  return result;
}

id sub_83620(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) bookDescription];

  return [a2 logEvent:@"viewsAreReadyForOpenAnimation" forBookDescription:v3];
}

id sub_83D64(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) bookDescription];

  return [a2 logEvent:@"didLoadBook:begin" forBookDescription:v3];
}

void sub_83DAC(uint64_t a1)
{
  v2 = [*(a1 + 32) assetViewControllerDelegate];
  v3 = [NSError errorWithDomain:AssetEngineErrorDomain code:2003 userInfo:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_83E60;
  block[3] = &unk_45AF70;
  v4 = *(a1 + 32);
  block[4] = v2;
  block[5] = v4;
  block[6] = v3;
  dispatch_async(&_dispatch_main_q, block);
}

id sub_83E70(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) bookDescription];

  return [a2 logEvent:@"didLoadBook:end" forBookDescription:v3];
}

id sub_84138(uint64_t a1)
{
  v2 = +[NSThread isMainThread];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 didLoadBook:0];
  }

  else
  {

    return [v3 performSelectorOnMainThread:"didLoadBook:" withObject:0 waitUntilDone:0];
  }
}

id sub_848C8(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id sub_84F9C(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) bookDescription];

  return [a2 logEvent:@"open" forBookDescription:v3];
}

id sub_8553C(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) bookDescription];

  return [a2 logEvent:@"openDidFinish" forBookDescription:v3];
}

id sub_85920(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) bookDescription];

  return [a2 logEvent:@"close" forBookDescription:v3];
}

id sub_85BDC(uint64_t a1)
{
  [*(a1 + 32) setReadingStatisticsControllerLoaded:1];
  v2 = *(a1 + 32);

  return [v2 _checkIfScanningReadingStatisticsCanBegin];
}

void sub_87464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_874A4(uint64_t a1)
{
  [*(a1 + 32) removeObject:*(a1 + 40)];
  v2 = *(*(*(a1 + 48) + 8) + 40);

  return [v2 corruptBookAlert];
}

void sub_87964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 168), 8);
  _Unwind_Resume(a1);
}

id sub_879A4(void *a1)
{
  result = [*(a1[4] + 160) isEqual:a1[5]];
  if (result)
  {
    [objc_msgSend(*(*(a1[6] + 8) + 40) "guidedPanController")];
    [*(*(a1[7] + 8) + 40) p_updateCanvasWithPendingPageIndexPath];
    v3 = *(*(a1[6] + 8) + 40);
    v4 = a1[8];

    return [v3 removePreviewForRelativePageIndex:v4];
  }

  return result;
}

id sub_87A2C(void *a1)
{
  *(a1[4] + 160) = 0;
  [*(*(a1[5] + 8) + 40) endStaticLayoutAndRender:1];
  [*(*(a1[5] + 8) + 40) didEndFreeTransform];
  v2 = *(*(a1[6] + 8) + 40);

  return [v2 corruptBookAlert];
}

id sub_88AF4(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) bookDescription];

  return [a2 logEvent:@"closeDocument" forBookDescription:v3];
}

id sub_88B3C(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationBarController];

  return [v1 startNavigationBarFade];
}

id sub_88B68(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationBarController];

  return [v1 completeNavigationBarFade];
}

id sub_88B94(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) bookDescription];

  return [a2 logEvent:@"requestClose" forBookDescription:v3];
}

void sub_88FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_89010(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak performSelector:"p_showBookmarkMenu" withObject:0];
}

void sub_8968C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_896B4(uint64_t a1, void *a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v5 = *(a1 + 40);
  v6 = [a2 presentationSourceItem];

  return [Weak performSelector:v5 withObject:v6];
}

id sub_89BE4()
{
  objc_opt_class();
  v0 = BUDynamicCast();

  return [v0 setEnabled:1];
}

id sub_8A050(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 p_searchDidHide];
}

uint64_t sub_8B088(uint64_t a1)
{
  [*(a1 + 32) p_TOCGlossaryPopoverDidHide];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_8B220(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_8B23C(uint64_t a1, uint64_t a2)
{
  objc_copyWeak(&to, (a1 + 48));
  if (objc_loadWeak(&to))
  {
    [objc_loadWeak(&to) dismissActivePopover];
    v4 = [objc_msgSend(objc_loadWeak(&to) "documentRoot")];
    v5 = [NSMutableArray arrayWithObject:v4];
    v6 = v5;
    if (a2)
    {
      [(NSMutableArray *)v5 addObject:a2];
    }

    v7 = [[IMActivityController alloc] initWithActivityItems:v6 applicationActivities:0 shareType:objc_msgSend(v4 propertySource:"shareType") tracker:{objc_msgSend(v4, "propertySource"), objc_msgSend(*(a1 + 32), "ba_effectiveAnalyticsTracker")}];
    [objc_msgSend(v7 "viewController")];
    [objc_loadWeak(&to) setActivityViewController:{objc_msgSend(v7, "viewController")}];
    [objc_msgSend(objc_loadWeak(&to) "activityViewController")];
    v8 = [objc_msgSend(objc_loadWeak(&to) "activityViewController")];
    [v8 setBarButtonItem:*(a1 + 40)];
    [v8 setPermittedArrowDirections:1];
    [v8 setDelegate:objc_loadWeak(&to)];
    [v8 setPassthroughViews:{objc_msgSend(objc_loadWeak(&to), "p_popoverPassthroughViews")}];
    [v8 bc_applyTraitOverridesWithOverrideUserInterfaceStyleFromViewController:*(a1 + 32)];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_8B4B8;
    v13 = &unk_45C5C0;
    objc_copyWeak(&v14, &to);
    [v7 setCompletionHandler:&v10];
    v9 = objc_loadWeak(&to);
    [v9 bc_presentViewController:objc_msgSend(v7 animated:"viewController" tintColor:v10 completion:{v11, v12, v13), 1, +[UIColor bc_booksKeyColor](UIColor, "bc_booksKeyColor"), &stru_45C5E0}];

    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&to);
}

void sub_8B480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_8B4B8(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak p_shareDidHide];
}

void sub_8B4F0(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_8B568;
  v3[3] = &unk_45B2E8;
  v2 = *(a1 + 32);
  v3[4] = a2;
  v3[5] = v2;
  dispatch_async(&_dispatch_main_q, v3);
}

id sub_8B97C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 p_bookmarkPopoverDidHide];
}

id sub_8D5C4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.0;
  }

  v2 = [*(a1 + 32) actionlessBookmarkButton];

  return [v2 setAlpha:v1];
}

id sub_8D710(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 searchButtonItem];
  v4 = *(a1 + 40);

  return [v2 _showSearchPopoverFromSourceItem:v3 withText:v4];
}

id sub_8E198(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationOverlayView];
  [*(a1 + 32) p_navigationOverlayFrame];

  return [v2 setFrame:?];
}

id sub_8E1E0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_8E2A8;
  v3[3] = &unk_45AE58;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_8E2EC;
  v2[3] = &unk_45B188;
  v2[4] = v4;
  return [UIView animateWithDuration:v3 animations:v2 completion:0.2];
}

id sub_8E2A8(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

id sub_8E2EC(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 32);

  return [v2 setAlpha:1.0];
}

id sub_8E4E0(uint64_t a1)
{
  v2 = [*(a1 + 32) superview];
  if (v2 == [*(a1 + 40) viewIfLoaded])
  {
    [*(a1 + 32) removeFromSuperview];
  }

  [*(a1 + 32) setAlpha:1.0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8E5A4;
  v4[3] = &unk_45AE00;
  v4[4] = *(a1 + 40);
  return [UIView animateWithDuration:v4 animations:&stru_45C698 completion:0.2];
}

id sub_8E5A4(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationOverlayView];
  [*(a1 + 32) p_navigationOverlayFrame];

  return [v2 setFrame:?];
}

id sub_8F1A8(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [*(a1 + 32) setDoNotDisturbStatusAtStart:v2];
}

id sub_8F3D8(uint64_t a1, int a2)
{
  if ([*(a1 + 32) optedIn])
  {
    v4 = [*(a1 + 40) doNotDisturbStatusAtStart];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) optedIn];
  v6 = 1;
  if (!a2)
  {
    v6 = 2;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [[BADoNotDisturbData alloc] initWithStartStatus:v4 endStatus:v7];
  v9 = +[BAEventReporter sharedReporter];
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(*(*(a1 + 80) + 8) + 40);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_8F4E4;
  v17[3] = &unk_45B000;
  v17[4] = *(a1 + 88);
  return [v9 emitReadEventWithTracker:v10 readingSessionData:v11 contentData:v12 readingSettingsData:v13 upSellData:0 contentSettingsData:v14 doNotDisturbData:v8 startTime:v15 completion:v17];
}

void sub_8F4E4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8F55C;
  block[3] = &unk_45B000;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_8F55C(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) invalidate];

  *(*(*(a1 + 32) + 8) + 40) = 0;
}

id sub_8FEDC(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(*(a1 + 32) "navigationBarController")];
  v5 = [*(a1 + 32) view];
  [v4 bounds];
  [v5 convertRect:v4 fromView:?];
  x = v16.origin.x;
  y = v16.origin.y;
  width = v16.size.width;
  height = v16.size.height;
  v10 = CGRectGetWidth(v16);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  [a2 addRegionWithRect:{0.0, 0.0, v10, CGRectGetMaxY(v17)}];
  v11 = [*(a1 + 32) visibleViewController];
  result = [*(a1 + 32) documentViewController];
  if (v11 == result)
  {
    v13 = [*(a1 + 32) documentViewController];
    v14 = *(*(a1 + 32) + 392);

    return [v13 buildHoverControlRegionForInteraction:v14 withBuilder:a2];
  }

  return result;
}

void sub_901D0(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  objc_opt_class();
  [objc_loadWeak(&location) notesFullscreenViewController];
  [BUDynamicCast() handleStudy:*(a1 + 40)];
  objc_destroyWeak(&location);
}

uint64_t sub_91470(uint64_t result)
{
  if (result > 110)
  {
    v1 = 114;
    v2 = 122;
    v3 = 121;
    if (result != 122)
    {
      v3 = result;
    }

    if (result != 121)
    {
      v2 = v3;
    }

    if (result != 115)
    {
      v1 = v2;
    }

    v4 = 112;
    v5 = 111;
    v6 = 115;
    if (result != 114)
    {
      v6 = result;
    }

    if (result != 112)
    {
      v5 = v6;
    }

    if (result != 111)
    {
      v4 = v5;
    }

    if (result <= 114)
    {
      return v4;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    switch(result)
    {
      case 11:
        result = 12;
        break;
      case 12:
        result = 11;
        break;
      case 13:
        result = 14;
        break;
      case 14:
        result = 13;
        break;
      case 21:
        result = 24;
        break;
      case 22:
        result = 23;
        break;
      case 23:
        result = 22;
        break;
      case 24:
        result = 21;
        break;
      case 31:
        result = 32;
        break;
      case 32:
        result = 31;
        break;
      case 41:
        result = 42;
        break;
      case 42:
        result = 41;
        break;
      case 43:
        result = 44;
        break;
      case 44:
        result = 43;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_92260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];

    objc_end_catch();
    JUMPOUT(0x92240);
  }

  _Unwind_Resume(exception_object);
}

void sub_92464(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32) == 1)
  {
    if (*(v1 + 24))
    {
      v3 = [objc_msgSend(*(v1 + 8) metadataForPersistentStore:{*(a1 + 40)), "mutableCopy"}];
      v4 = [*(*(a1 + 32) + 24) copy];
      [v3 setObject:v4 forKey:@"THUserData-Metadata"];
      [*(*(a1 + 32) + 8) setMetadata:v3 forPersistentStore:*(a1 + 40)];

      *(*(a1 + 32) + 32) = 0;
    }
  }
}

id sub_925E8(uint64_t a1)
{
  [*(a1 + 32) p_cacheMetadataDictionary];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);
  if (v2)
  {
    result = [v3 setObject:v2 forKey:*(a1 + 48)];
  }

  else
  {
    result = [v3 removeObjectForKey:*(a1 + 48)];
  }

  *(*(a1 + 32) + 32) = 1;
  return result;
}

void sub_92728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_9275C(uint64_t a1)
{
  [*(a1 + 32) p_cacheMetadataDictionary];
  result = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

void sub_94220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_94258(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [NSPredicate predicateWithFormat:@"(plStorageUUID BEGINSWITH[n] %@)", a2];

  return [v2 addObject:v3];
}

id sub_9555C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) p_actionForInsertingAnnotationWithType:1 style:0 absolutePageIndex:*(a1 + 56) range:*(a1 + 64) storage:*(a1 + 72) contentNode:*(a1 + 40) updateBlock:{objc_msgSend(*(a1 + 48), "contentNode"), 0}];
  v5 = *(a1 + 32);

  return [v5 p_performAction:v4 moc:a2];
}

id sub_956D8(uint64_t a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) p_performAction:objc_msgSend(*(a1 + 40) moc:{"p_actionForDeletingCachedAnnotation:moc:", *(*(&v10 + 1) + 8 * i), a2), a2}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [*(a1 + 40) p_closeActionGroupWithMoc:a2];
}

BOOL sub_95934(uint64_t a1, void *a2)
{
  if (*(a1 + 32) != 0x7FFFFFFFFFFFFFFFLL)
  {
    return [a2 annotationAbsolutePhysicalPageIndex] == *(a1 + 32);
  }

  v3 = [a2 annotationStorageRange];
  v4 = *(a1 + 40);
  return v4 <= v3 && *(a1 + 48) + v4 >= v3 + 1;
}

id sub_95A84(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) p_actionForInsertingAnnotationWithType:1 style:0 absolutePageIndex:0x7FFFFFFFFFFFFFFFLL range:*(a1 + 56) storage:*(a1 + 64) contentNode:*(a1 + 40) updateBlock:{objc_msgSend(*(a1 + 48), "contentNode"), 0}];
  v5 = *(a1 + 32);

  return [v5 p_performAction:v4 moc:a2];
}

void sub_9620C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_96234(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 40) + 8) + 40) = -[THAnnotationCache initWithAnnotations:contentNode:]([THAnnotationCache alloc], "initWithAnnotations:contentNode:", [objc_msgSend(*(a1 + 32) p_cachedBookmarksWithMoc:{a2), "allValues"}], 0);
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(*(a1 + 32) + 176) setObject:*(*(*(a1 + 40) + 8) + 40) forKey:@"THMacAnnotationAllBookmarks"];

  return objc_sync_exit(v3);
}

id sub_963EC(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) p_actionForDeletingCachedAnnotation:*(a1 + 40) moc:a2];
  v5 = *(a1 + 32);

  return [v5 p_performAction:v4 moc:a2];
}

void sub_964B4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) p_annotationsForFetchRequest:objc_msgSend(*(a1 + 32) moc:"annotationRequestForNonSponsoredNonOrphaned") migrateIfNecessary:{a2, 0}];
  if ([v4 count])
  {
    v5 = [[THAnnotationTextLocator alloc] initWithDocumentRoot:*(a1 + 40)];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v13 = a2;
      v8 = 0;
      v9 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          if ([*(a1 + 32) p_annotationNeedsMigration:v11])
          {
            v14 = 0;
            v15 = 0;
            if (-[THAnnotationTextLocator locateAnnotationText:leftContext:rightContext:contentNodeID:storageID:](v5, "locateAnnotationText:leftContext:rightContext:contentNodeID:storageID:", [v11 annotationRepresentativeText], objc_msgSend(v11, "selectionPreContextText"), objc_msgSend(v11, "selectionPostContextText"), &v15, &v14))
            {
              v12 = [THModelContentNode annotationIDForInfoID:v14 contentNodeID:v15];
              [v11 setAnnotationStorageRange:{0, 0}];
              [v11 setPlStorageUUID:v12];
              v8 = 1;
            }
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
      if (v8)
      {
        [*(a1 + 32) p_commitChangesWithMoc:v13];
      }
    }
  }
}

void sub_96880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_96898(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) p_getReadingLocationWithMOC:a2];
  if (result)
  {
    result = [result readingProgress];
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  return result;
}

void sub_96994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_969AC(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) p_getReadingLocationWithMOC:a2];
  if (result)
  {
    result = [result readingProgressHighWaterMark];
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  return result;
}

void sub_96C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_96C58(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) p_getReadingLocationWithMOC:a2];
  if (result)
  {
    v4 = result;
    v5 = [THPageLocation alloc];
    v6 = [v4 absolutePhysicalPageIndex];
    v7 = [v4 annotationStorageRange];
    *(*(*(a1 + 40) + 8) + 40) = -[THPageLocation initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:](v5, "initWithAbsolutePageIndex:range:storageUID:contentNodeGUID:", v6, v7, v8, [v4 annotationStorageIDWithoutContentNodeID], objc_msgSend(v4, "annotationContentNodeID"));
    result = [v4 placeholderHistory];
    *(*(*(a1 + 48) + 8) + 40) = result;
  }

  return result;
}

id *sub_96FF4(id *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a3 || !result[4])
  {
    v4 = [result[5] p_actionForDeletingAEAnnotation:a2];
    v5 = v3[5];
    v6 = v3[6];

    return [v5 p_performAction:v4 moc:v6];
  }

  return result;
}

id sub_97050(uint64_t a1, void *a2)
{
  [a2 setAnnotationModificationDate:{+[NSDate date](NSDate, "date")}];
  v4 = [*(a1 + 32) range];
  [a2 setAnnotationStorageRange:{v4, v5}];
  [a2 setAbsolutePhysicalPageIndex:{objc_msgSend(*(a1 + 32), "absolutePhysicalPageIndex")}];
  [a2 setPlStorageUUID:{+[THModelContentNode annotationIDForInfoID:contentNodeID:](THModelContentNode, "annotationIDForInfoID:contentNodeID:", objc_msgSend(*(a1 + 32), "storageUID"), objc_msgSend(*(a1 + 40), "nodeGUID"))}];
  [a2 setPlaceholderHistory:*(a1 + 48)];
  LODWORD(v6) = *(a1 + 64);
  [a2 updateReadingProgressAndBumpHighWaterMarkToProgress:v6];
  v7 = *(a1 + 56);

  return [v7 p_addVersioningPropertiesAE:a2];
}

id sub_97128(uint64_t a1, void *a2)
{
  [a2 setPlaceholderHistory:*(a1 + 32)];
  [*(a1 + 40) p_addVersioningPropertiesAE:a2];
  LODWORD(v4) = *(a1 + 48);

  return [a2 updateReadingProgressAndBumpHighWaterMarkToProgress:v4];
}

id sub_973E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [TSUProtocolCast() annotationUuid];

  return [v1 isEqualToString:v2];
}

void sub_97504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_9751C(uint64_t a1, uint64_t a2)
{
  result = [objc_msgSend(*(a1 + 32) p_sortedAssetIDVersionsWithMoc:{a2), "lastObject"}];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_97770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_977A4(uint64_t a1, void *a2)
{
  v4 = [NSFetchRequest alloc];
  v5 = [v4 initWithEntityName:kAEAnnotationEntityName];
  [v5 setReturnsDistinctResults:1];
  [v5 setPropertiesToFetch:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", kAEAnnotationAssetVersionKey)}];
  [v5 setResultType:2];
  [v5 setPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"(annotationAssetID == %@)", objc_msgSend(*(a1 + 32), "annotationID"))}];
  result = [a2 executeFetchRequest:v5 error:0];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

int64_t sub_97880(id a1, id a2, id a3)
{
  objc_opt_class();
  v3 = TSUDynamicCast();
  objc_opt_class();
  v4 = TSUDynamicCast();
  if ([v4 isStrictlyNewerThanBookVersion:v3])
  {
    return -1;
  }

  else
  {
    return [v3 isStrictlyNewerThanBookVersion:v4];
  }
}

id sub_97970(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) annotationRequestForNonSponsoredNonOrphaned];
  v5 = *(a1 + 32);

  return [v5 p_annotationsForFetchRequest:v4 moc:a2 migrateIfNecessary:1];
}

id sub_97FC8(uint64_t a1, void *a2)
{
  [a2 setPlStorageUUID:{objc_msgSend(*(a1 + 32), "annotationIDForInfo:", *(a1 + 40))}];
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [a2 setAnnotationStorageRange:{v4, v5}];
}

id sub_98120(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v5 = [a2 annotationStorageRange];
  v7 = [v4 cfiForRange:v5 storageUID:v6 includeFilename:objc_msgSend(*(a1 + 32) pedantic:{"nodeUniqueIDForInfo:", *(a1 + 40)), 1, 0}];

  return [a2 setAnnotationLocation:v7];
}

id sub_98324(void *a1, void *a2)
{
  [a2 setAbsolutePhysicalPageIndex:a1[4]];
  v4 = a1[5];
  v5 = a1[6];

  return [a2 setAnnotationStorageRange:{v4, v5}];
}

id sub_98D24(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  objc_opt_class();
  v3 = TSUDynamicCast();
  objc_opt_class();
  [*(a1 + 32) objectWithID:v2];
  v4 = TSUDynamicCast();
  if ([v4 isFault])
  {
    v4 = [*(a1 + 40) p_storageAnnotationForUUID:v3 includeDeleted:0 moc:*(a1 + 32)];
  }

  if (![v4 annotationUuid])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  result = [v4 annotationUuid];
  if (result)
  {
    v6 = *(a1 + 48);
    v7 = [v4 annotationUuid];

    return [v6 setObject:v4 forKey:v7];
  }

  return result;
}

id sub_99688(uint64_t a1, void *a2)
{
  [a2 setAnnotationStorageRange:{*(a1 + 32), *(a1 + 40)}];
  v4 = *(a1 + 48);

  return [a2 setAnnotationStyle:v4];
}

void sub_99854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_9986C(uint64_t a1, uint64_t a2)
{
  v4 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 32)];
  v5 = [THModelStorageAnchor storageAnchorWithContentNode:*(a1 + 40) storage:*(a1 + 48) range:*(a1 + 72), *(a1 + 80)];
  if (v5)
  {
    [(NSMutableDictionary *)v4 setObject:v5 forKey:@"THAnnotationStorageAnchorUndoContextKey"];
  }

  [*(a1 + 56) p_openUndoGroupWithContext:v4 actionName:{objc_msgSend(THBundle(), "localizedStringForKey:value:table:", @"Add Highlight", &stru_471858, 0)}];
  v6 = [*(a1 + 56) p_extendExistingAnnotationForRange:*(a1 + 72) storage:*(a1 + 80) contentNode:*(a1 + 48) style:*(a1 + 40) moc:{*(a1 + 88), a2}];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_9423C;
  v17 = sub_9424C;
  v18 = 0;
  if (v6)
  {
    v18 = v6;
  }

  else
  {
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v9 = *(a1 + 88);
    v10 = *(a1 + 40);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_99A3C;
    v12[3] = &unk_45CAF8;
    v12[4] = &v13;
    [*(a1 + 56) p_performUndoableAction:objc_msgSend(v7 moc:{"p_actionForInsertingAnnotationWithType:style:absolutePageIndex:range:storage:contentNode:updateBlock:", 2, v9, 0x7FFFFFFFFFFFFFFFLL, *(a1 + 72), *(a1 + 80), v8, v10, v12), a2}];
  }

  [*(a1 + 56) p_closeUndoGroup];
  v11 = [THCachedAnnotation alloc];
  *(*(*(a1 + 64) + 8) + 40) = [(THCachedAnnotation *)v11 initWithAnnotation:v14[5] contentNode:*(a1 + 40)];
  _Block_object_dispose(&v13, 8);
}

void sub_99A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_99CF8(uint64_t a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([v9 annotationType] != 2)
        {
          [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
        }

        [*(a1 + 40) p_performUndoableAction:objc_msgSend(*(a1 + 40) moc:{"p_actionForDeletingCachedAnnotation:moc:", v9, a2), a2}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_9A174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

THCachedAnnotation *sub_9A18C(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) p_annotationForCachedAnnotation:*(a1 + 40) moc:a2];
  v5 = result;
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = result == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || !*(a1 + 48))
  {
    result = [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    v6 = *(a1 + 56);
  }

  if (v6 && v5)
  {
    if (*(a1 + 48))
    {
      v8 = *(a1 + 32);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_9A2E8;
      v9[3] = &unk_45CB48;
      v9[4] = v6;
      [*(a1 + 32) p_performUndoableAction:objc_msgSend(v8 moc:{"p_actionForUpdatingAnnotation:withBlock:", v5, v9), a2}];
      result = [[THCachedAnnotation alloc] initWithAnnotation:v5 contentNode:*(a1 + 48)];
      *(*(*(a1 + 64) + 8) + 40) = result;
    }
  }

  return result;
}

void sub_9A2E8(uint64_t a1, uint64_t a2)
{
  v3 = [[THMutableAnnotation alloc] initWithAEAnnotation:a2];
  (*(*(a1 + 32) + 16))();
}

void sub_9A700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

THAnnotationCache *sub_9A730(uint64_t a1, uint64_t a2)
{
  result = -[THAnnotationCache initWithAnnotations:contentNode:]([THAnnotationCache alloc], "initWithAnnotations:contentNode:", [objc_msgSend(*(a1 + 32) p_cachedAnnotationsForContentNode:*(a1 + 40) moc:{a2), "allValues"}], *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

void sub_9AA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_9AA24(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 40) = objc_opt_new();
  v4 = [*(a1 + 32) p_annotationsForFetchRequest:*(a1 + 40) moc:a2 migrateIfNecessary:*(a1 + 56)];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = -[THCachedAnnotation initWithAnnotation:contentNode:]([THCachedAnnotation alloc], "initWithAnnotation:contentNode:", *(*(&v10 + 1) + 8 * v8), [objc_msgSend(*(a1 + 32) "documentNavModel")]);
        [*(*(*(a1 + 48) + 8) + 40) addObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

id sub_9AE40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 annotationContentNodeID];

  return [v2 isEqualToString:v3];
}

id sub_9BD68(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) undoWithAnnotationHost:*(a1 + 40) moc:a2];
  v5 = *(a1 + 40);

  return [v5 p_processChangeList:v4 moc:a2];
}

id sub_9C0A4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) redoWithAnnotationHost:*(a1 + 40) moc:a2];
  v5 = *(a1 + 40);

  return [v5 p_processChangeList:v4 moc:a2];
}

void sub_9C9F0(uint64_t a1, void *a2)
{
  [a2 setAnnotationStyle:*(a1 + 80)];
  [a2 setAnnotationType:*(a1 + 84)];
  if (*(a1 + 84) == 1)
  {
    [a2 setPlStorageUUID:{objc_msgSend(*(a1 + 32), "legacyBookmarkIDForInfo:", *(a1 + 40))}];
  }

  if (*(a1 + 56) != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a2 setAbsolutePhysicalPageIndex:?];
  }

  [a2 setAnnotationStorageRange:{*(a1 + 64), *(a1 + 72)}];
  v4 = *(a1 + 48);
  if (v4)
  {
    (*(v4 + 16))(v4, a2);
  }

  v5 = _AEBookPluginsAnnotationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = [a2 annotationAssetID];
    v8 = 2112;
    v9 = [a2 annotationUuid];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "add bliss annotation: assetID: %@, uuid: %@", &v6, 0x16u);
  }
}

void sub_9CC38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, a2);
  }

  v4 = _AEBookPluginsAnnotationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412546;
    v6 = [a2 annotationAssetID];
    v7 = 2112;
    v8 = [a2 annotationUuid];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "update bliss annotation: assetID: %@, uuid: %@", &v5, 0x16u);
  }
}

id sub_9E604(uint64_t a1)
{
  *(*(a1 + 32) + 552) = [[THWPHighlightController alloc] initWithParentRep:*(a1 + 32)];
  if (![*(a1 + 32) parentRep])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  result = [*(a1 + 32) parentRep];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = v3[69];

    return [v3 setupMarginNotesControllerForHighlightController:v4];
  }

  return result;
}

void sub_A0BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_A0BC0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_A0BD0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5.size.height = a5;
  v5.size.width = a4;
  v5.origin.y = a3;
  v5.origin.x = a2;
  *(*(*(a1 + 32) + 8) + 48) = CGRectUnion(*(*(*(a1 + 32) + 8) + 48), v5);
}

void sub_A1364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = THChapterBrowserController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id sub_A3228(uint64_t a1)
{
  result = [*(a1 + 32) p_updateAdjacentChapterViews];
  *(*(a1 + 32) + 417) = 0;
  return result;
}

void sub_A4A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_A4C38(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_A4C5C(uint64_t a1)
{
  [*(*(a1 + 32) + 104) setContentOffset:1 animated:{0.0, 0.0}];
  v2 = [*(a1 + 32) introMediaViewController];
  [v2 prepareControlsForTOC];
}

void sub_A5E38(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_A6004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id sub_A6584(uint64_t a1)
{
  [*(a1 + 32) setHighlightedHyperlinkField:0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 followLink:v3];
}

BOOL sub_A9204(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUDynamicCast();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntegerValue] == *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_AA724(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3 == *(v2 + 104))
  {
    [v2 p_backgroundScrollingDidEnd];
    v2 = *(a1 + 40);
  }

  if (*(v2 + 168) == 1)
  {
    *(v2 + 168) = 0;
    [*(a1 + 40) p_updatePageThumbnails:1];
    v2 = *(a1 + 40);
  }

  v4 = *(v2 + 176);
  *(v2 + 176) = 0;

  if ([*(a1 + 40) transitioningPageToDVC])
  {
    [*(a1 + 40) p_updatePageThumbnails:1];
    v6 = [*(a1 + 40) p_pageThumbnailViewForPageIndex:{objc_msgSend(*(a1 + 40), "transitioningThumbnailIndex")}];
    [*(a1 + 40) p_transitionThumbnailToDVC:?];
    v5 = +[UIApplication sharedApplication];
    [v5 endIgnoringInteractionEvents];

    [*(a1 + 40) setTransitioningPageToDVC:0];
    [*(a1 + 40) setTransitioningThumbnailIndex:0x7FFFFFFFFFFFFFFFLL];
  }
}

void sub_AB7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_AB9C4(uint64_t a1)
{
  [*(a1 + 32) bounds];
  CGAffineTransformMakeScale(&v7, *(a1 + 64) / v2, *(a1 + 72) / v3);
  v4 = *(a1 + 32);
  v6 = v7;
  [v4 setTransform:&v6];
  TSDCenterOfRect();
  result = [*(a1 + 32) setCenter:?];
  if (*(a1 + 88) == 1)
  {
    return [*(a1 + 40) setShrouded:1 animated:1 duration:*(a1 + 80)];
  }

  return result;
}

void sub_AC288(uint64_t a1)
{
  v2 = [*(a1 + 32) p_verticalSpaceLimited];
  v5 = [*(a1 + 32) thumbnailTrackBackgroundView];
  v3 = [v5 layer];
  *&v4 = v2;
  [v3 setOpacity:v4];
}

uint64_t sub_AC318(uint64_t result)
{
  *(*(result + 32) + 507) = 0;
  *(*(result + 32) + 492) = 0;
  return result;
}

void *sub_ADDAC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[3] == *(a1 + 40))
  {
    return [result p_hideFallbackImageView];
  }

  return result;
}

void *sub_AE034(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[3] == *(a1 + 40))
  {
    result = [objc_msgSend(result "interactiveCanvasController")];
    if ((result & 1) == 0)
    {
      v3 = *(a1 + 32);

      return [v3 p_updateVisibleInfosOrRevealCanvas];
    }
  }

  return result;
}

void sub_AEA9C(id a1)
{
  v1 = [+[UIImage th_imageNamed:](UIImage th_imageNamed:{@"thumbnail_placeholder.jpg", "CGImage"}];
  qword_5677E0 = v1;

  CFRetain(v1);
}

uint64_t sub_AF924(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(a1 + 32) willSetImageFromQueue] && objc_msgSend(*(a1 + 32), "imageData"))
  {
    v3 = CGImageRetain(+[TSDBitmapImageProvider CGImageForImageData:](TSDBitmapImageProvider, "CGImageForImageData:", [*(a1 + 32) imageData]));
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_AFA30;
    v5[3] = &unk_45B298;
    v5[4] = *(a1 + 32);
    v5[5] = v3;
    dispatch_async(&_dispatch_main_q, v5);

    *(*(a1 + 32) + 112) = 0;
  }

  return objc_sync_exit(v2);
}

uint64_t sub_AFA30(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  if ([*(a1 + 32) willSetImageFromQueue] && objc_msgSend(*(a1 + 32), "superview"))
  {
    [*(a1 + 32) setImage:*(a1 + 40)];
  }

  CGImageRelease(*(a1 + 40));

  return objc_sync_exit(v2);
}

id sub_AFEAC(uint64_t a1)
{
  v1 = [*(a1 + 32) highlightView];

  return [v1 setAlpha:1.0];
}

id sub_B003C(uint64_t a1)
{
  [*(*(a1 + 32) + 72) setAlpha:0.0];
  [*(*(a1 + 32) + 80) setAlpha:0.0];
  [*(*(a1 + 32) + 88) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 120);

  return [v2 setAlpha:0.0];
}

id sub_B01B8(uint64_t a1)
{
  [*(*(a1 + 32) + 72) setAlpha:1.0];
  [*(*(a1 + 32) + 80) setAlpha:1.0];
  [*(*(a1 + 32) + 88) setAlpha:1.0];
  v2 = *(*(a1 + 32) + 120);

  return [v2 setAlpha:1.0];
}

id sub_B14C0(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(*(a1 + 40) + 56);

  return [v2 setAlpha:0.0];
}

void sub_B1508(uint64_t a1)
{
  [*(*(a1 + 32) + 56) removeFromSuperview];

  *(*(a1 + 32) + 56) = 0;
  *(*(a1 + 32) + 65) = 0;
}

void sub_B38A4(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exc_buf);
    if (v12)
    {
      v13 = v12;
      v14 = +[TSUAssertionHandler currentHandler];
      v15 = [NSString stringWithUTF8String:"[THWPHighlightController updateCachedAnnotations]"];
      v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THWPHighlightController.mm"];
      [v13 description];
      [v14 handleFailureInFunction:v15 file:v16 lineNumber:422 description:@"Exeption thrown %@"];
    }

    objc_end_catch();
    if ((a12 & 1) == 0)
    {
      JUMPOUT(0xB3868);
    }

    JUMPOUT(0xB3838);
  }

  _Unwind_Resume(exc_buf);
}

id sub_B7000(uint64_t a1)
{
  v2 = +[UIPasteboard generalPasteboard];
  v3 = [*(a1 + 32) annotationSelectedText];
  v4 = [UTTypeUTF8PlainText identifier];

  return [(UIPasteboard *)v2 setValue:v3 forPasteboardType:v4];
}

id sub_B7068(uint64_t a1)
{
  if ([objc_msgSend(*(a1 + 32) "annotationNote")])
  {
    v2 = [THBundle() localizedStringForKey:@"Delete Highlight" value:&stru_471858 table:0];
    v3 = [THBundle() localizedStringForKey:@"The associated note will also be deleted." value:&stru_471858 table:0];
    v4 = [THBundle() localizedStringForKey:@"Cancel" value:&stru_471858 table:0];
    v5 = [THBundle() localizedStringForKey:@"Delete" value:&stru_471858 table:0];
    v6 = [UIAlertController alertControllerWithTitle:v2 message:v3 preferredStyle:1];
    [(UIAlertController *)v6 addAction:[UIAlertAction actionWithTitle:v4 style:1 handler:0]];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_B7244;
    v10[3] = &unk_45CE68;
    v11 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    [(UIAlertController *)v6 addAction:[UIAlertAction actionWithTitle:v5 style:2 handler:v10]];
    objc_opt_class();
    [objc_msgSend(objc_msgSend(*(a1 + 48) "parentRep")];
    return [TSUDynamicCast() presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);

    return [v8 destroyAnnotation:v9 undoContext:0];
  }
}

id sub_B7260(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "parentRep")];
  objc_opt_class();
  [v2 beginEditingRep:{objc_msgSend(*(a1 + 32), "parentRep")}];
  v3 = TSUDynamicCast();
  v4 = *(a1 + 40);

  return [v3 showDictionaryForAnnotation:v4];
}

id sub_B72DC(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "parentRep")];
  objc_opt_class();
  [v2 beginEditingRep:{objc_msgSend(*(a1 + 32), "parentRep")}];
  v3 = TSUDynamicCast();
  v4 = *(a1 + 40);

  return [v3 showTranslationForAnnotation:v4];
}

id sub_B7358(uint64_t a1)
{
  objc_opt_class();
  [objc_msgSend(objc_msgSend(*(a1 + 32) "parentRep")];
  v2 = TSUDynamicCast();
  v3 = [*(a1 + 40) annotationSelectedText];

  return [v2 presentSearchResultsForString:v3];
}

id sub_B73C8(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "parentRep")];
  objc_opt_class();
  [v2 beginEditingRep:{objc_msgSend(*(a1 + 32), "parentRep")}];
  v3 = TSUDynamicCast();
  v4 = *(a1 + 40);

  return [v3 shareAnnotation:v4];
}

id sub_B9680(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "termsViewController")] != 0;
  v3 = *(a1 + 40);

  return [v3 setPreferredDisplayMode:2 * v2];
}

id sub_B9CC4(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "bookViewController")];
  [objc_msgSend(*(a1 + 32) "bookViewController")];
  [objc_msgSend(*(a1 + 32) "bookViewController")];
  v2 = [*(a1 + 32) bookViewController];

  return [v2 updateNavigationAffordances];
}

double sub_B9FE4(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "definitionsViewController")];
  if (!v2)
  {
    return 0.0;
  }

  [v2 frame];
  Width = CGRectGetWidth(v7);
  v4 = 78.0;
  if (*(a1 + 40))
  {
    v4 = 45.0;
  }

  v5 = Width + v4 * -2.0 + -824.0;
  if (v5 > 0.0)
  {
    return floor(v5 * 0.5);
  }

  else
  {
    return 0.0;
  }
}

void sub_BB6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_BBCC8(uint64_t a1)
{
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 40) "themePage")];
  v3 = *(a1 + 32);

  return [v3 setForegroundColor:v2];
}

id sub_BCF64(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) p_entryDidLoad:a2];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 scrollToLocation:v4 animated:0];
}

void sub_BD4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_BDAA4(void *a1, void *a2)
{
  v3 = [a1 term];
  v4 = [a2 term];

  return [v3 localizedCaseInsensitiveCompare:v4];
}

NSString *sub_BE208(void *a1)
{
  v1 = [objc_msgSend(a1 "normalizedTerm")];
  v3 = v1;
  if (![+[NSCharacterSet characterIsMember:"characterIsMember:"]
  {
    v3 = 35;
  }

  return [+[NSString stringWithCharacters:length:](NSString uppercaseString:&v3];
}

id sub_BEA60(uint64_t a1, void *a2)
{
  v4 = [a2 paragraphStyleAtCharIndex:0 effectiveRange:0];
  v5 = [objc_msgSend(v4 "stylesheet")];
  v6 = [a2 length];

  return [a2 setParagraphStyle:v5 forCharRange:0 undoTransaction:{v6, 0}];
}

id sub_BF1DC(uint64_t a1)
{
  v2 = [*(a1 + 32) p_glossaryEntryForTerm:{objc_msgSend(*(a1 + 32), "term")}];
  v3 = *(a1 + 40);
  if (v2)
  {
    [v3 showGlossaryEntry:?];
  }

  else
  {
    [v3 showGlossary:*(a1 + 32)];
  }

  v4 = [*(a1 + 32) glossaryPresenting];

  return [v4 glossaryPopoverWasDismissed];
}

void sub_BF998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) icc];
  [v5 setInfosToDisplay:{+[NSArray arrayWithObject:](NSArray, "arrayWithObject:", a3)}];
  [v5 recreateAllLayoutsAndReps];
  objc_opt_class();
  [v5 layoutForInfo:a3];
  v6 = TSUDynamicCast();
  [*(a1 + 32) setGlossaryEntryLayout:v6];
  [v6 setLayoutStyleProvider:*(a1 + 32)];
  [v5 layoutIfNeeded];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = sub_BFC34;
  v26 = sub_BFC44;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_BFC50;
  v21[3] = &unk_45CFF8;
  v21[4] = &v22;
  v27 = v21;
  v7 = [*(a1 + 32) definition];
  [*(a1 + 32) p_insetScrollerContentEdges];
  (*(v23[5] + 16))();
  v9 = v8;
  [v6 frame];
  v10 = ceil(v9);
  [objc_msgSend(objc_msgSend(v5 "canvasView")];
  [v6 frame];
  v13 = v12;
  v15 = v14;
  [objc_msgSend(*(a1 + 32) "container")];
  if (v13 >= v10)
  {
    v10 = v13;
  }

  [v7 setContentSize:{v10, v15}];
  if ([*(a1 + 32) _isInPopoverPresentation])
  {
    [v6 frame];
    v19 = v15 + 22.0;
    v20 = 366.0;
    if (v19 >= 366.0)
    {
      v10 = v18;
    }

    else
    {
      [v7 setBounces:0];
      v20 = fmax(v19, 200.0);
    }

    [*(a1 + 32) setPreferredContentSize:{v10, v20}];
    [objc_msgSend(*(a1 + 32) "navigationController")];
  }

  _Block_object_dispose(&v22, 8);
}

void sub_BFC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_BFC50(uint64_t a1, void *a2)
{
  [a2 frameInRoot];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = [a2 children];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v28.origin.x = (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
        v28.origin.y = v17;
        v28.size.width = v18;
        v28.size.height = v19;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        v27 = CGRectUnion(v26, v28);
        x = v27.origin.x;
        y = v27.origin.y;
        width = v27.size.width;
        height = v27.size.height;
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  return x;
}

BOOL sub_C3370(id a1, CAFilter *a2)
{
  v2 = [(CAFilter *)a2 name];

  return [v2 isEqualToString:@"kTHAXUndoInvertColorsFilter"];
}

void sub_C79F8(uint64_t a1)
{
  v2 = [*(a1 + 32) activityIndicatorView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) openCloseButton];
  [v3 setAlpha:0.0];
}

void sub_C7A68(uint64_t a1, int a2)
{
  v3 = [*(a1 + 32) activityIndicatorView];
  [v3 setHidden:a2 ^ 1u];
}

void sub_C7B84(uint64_t a1)
{
  v2 = [*(a1 + 32) activityIndicatorView];
  [v2 setAlpha:0.0];

  v3 = [*(a1 + 32) openCloseButton];
  [v3 setAlpha:1.0];
}

void sub_C7BF4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) activityIndicatorView];
  [v4 stopAnimating];

  v5 = [*(a1 + 32) activityIndicatorView];
  [v5 setHidden:a2];
}

void sub_C9CE8(uint64_t a1, void *a2)
{
  v3 = a2;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  v11 = objc_opt_new();
  Mutable = CGPathCreateMutable();
  v13 = CGRectInset(*(a1 + 40), 1.0, 1.0);
  CGPathAddEllipseInRect(Mutable, 0, v13);
  [v11 setPath:Mutable];
  v5 = [UIColor colorWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:0.5];
  [v11 setStrokeColor:{objc_msgSend(v5, "CGColor")}];

  [v11 setLineWidth:1.0];
  v6 = +[UIColor clearColor];
  [v11 setFillColor:{objc_msgSend(v6, "CGColor")}];

  CGPathRelease(Mutable);
  v7 = *(a1 + 32);
  v8 = [UIColor colorWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  v9 = [v7 imageMaskWithColor:v8];

  [v9 drawInRect:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  +[CATransaction commit];
  v10 = [v3 CGContext];

  [v11 renderInContext:v10];
}

id sub_CE6E4(uint64_t a1)
{
  [*(a1 + 32) clearSearchResults];
  if ([objc_msgSend(*(*(a1 + 32) + 8) "searchIndex")])
  {
    v2 = [*(a1 + 40) stringByTrimmingCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
    *(*(a1 + 32) + 24) = v2;
    v3 = *(a1 + 48);
    v4 = *(a1 + 32);
    if ((*(a1 + 56) & 1) == 0)
    {
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_CEA84;
      v14[3] = &unk_45B3A8;
      v14[4] = v4;
      v14[5] = v2;
      v14[6] = v3;
      v3 = v14;
    }

    if (*(v4 + 96))
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      v4 = *(a1 + 32);
    }

    if (*(v4 + 104))
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      v4 = *(a1 + 32);
    }

    *(*(a1 + 32) + 96) = [objc_msgSend(*(v4 + 8) "searchIndex")];
    *(*(a1 + 32) + 104) = [objc_msgSend(*(*(a1 + 32) + 8) "annotationSearchIndex")];
    *(*(a1 + 32) + 160) = -[THSearchRefTextLoadOperation initWithDelegate:documentRoot:searchArray:]([THSearchRefTextLoadOperation alloc], "initWithDelegate:documentRoot:searchArray:", *(a1 + 32), *(*(a1 + 32) + 8), [objc_msgSend(*(*(a1 + 32) + 8) "searchIndex")]);
    v5 = *(a1 + 32);
    v6 = *(v5 + 160);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_CEB2C;
    v12[3] = &unk_45D160;
    v13 = *(a1 + 56);
    v7 = *(a1 + 48);
    v12[4] = v5;
    v12[5] = v7;
    v12[6] = v3;
    [v6 setCompletionBlock:v12];
    if (*(*(a1 + 32) + 152))
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    *(*(a1 + 32) + 152) = objc_alloc_init(NSOperationQueue);
    [*(*(a1 + 32) + 152) setName:@"Search Reference Index Load"];
    return [*(*(a1 + 32) + 152) addOperation:*(*(a1 + 32) + 160)];
  }

  else
  {
    [*(a1 + 32) loadIndex];
    v9 = +[TSUAssertionHandler currentHandler];
    v10 = [NSString stringWithUTF8String:"[THSearchController p_kickOffQuery:giveSuggestions:completionBlock:]_block_invoke"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THSearchController.m"];

    return [v9 handleFailureInFunction:v10 file:v11 lineNumber:172 description:@"Tried to search while index was not loaded."];
  }
}

uint64_t sub_CEA84(uint64_t a1)
{
  v2 = [*(a1 + 32) p_recentsEntryForTrimmedQuery:*(a1 + 40) resultCount:{objc_msgSend(*(a1 + 32), "searchResultCount")}];
  [*(*(a1 + 32) + 16) removeObject:v2];
  [*(*(a1 + 32) + 16) insertObject:v2 atIndex:0];
  if ([*(*(a1 + 32) + 16) count] >= 0xB)
  {
    [*(*(a1 + 32) + 16) removeLastObject];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

id sub_CEB2C(uint64_t a1)
{
  v1 = 48;
  if (*(a1 + 56))
  {
    v1 = 40;
  }

  v2 = &selRef_p_processSuggestionsWithCompletionBlock_;
  if (!*(a1 + 56))
  {
    v2 = &selRef_p_processSearchResultsWithCompletionBlock_;
  }

  return [*(a1 + 32) performSelectorOnMainThread:*v2 withObject:*(a1 + v1) waitUntilDone:0];
}

uint64_t sub_CF0B8(uint64_t a1, void *a2, void *a3)
{
  result = [objc_msgSend(a2 "term")];
  if (result)
  {
    v7 = result;
    if ([*(*(a1 + 32) + 24) length] < 3 || ((v8 = objc_msgSend(objc_msgSend(objc_msgSend(a2, "term"), "commonPrefixWithString:options:", *(*(a1 + 32) + 24), 3), "length"), v9 = objc_msgSend(objc_msgSend(objc_msgSend(a3, "term"), "commonPrefixWithString:options:", *(*(a1 + 32) + 24), 3), "length"), v10 = v8 == v9, v8 > v9) ? (result = -1) : (result = 1), v10))
    {
      v11 = [a2 rank];
      v12 = [a3 rank];
      v13 = -1;
      if (v11 >= v12)
      {
        v13 = 1;
      }

      if (v11 == v12)
      {
        return v7;
      }

      else
      {
        return v13;
      }
    }
  }

  return result;
}

NSNumber *__cdecl sub_CF1A4(id a1, id a2)
{
  v2 = [a2 occurenceCount];

  return [NSNumber numberWithUnsignedInteger:v2];
}

BOOL sub_CF978(id a1, id a2, BOOL *a3)
{
  objc_opt_class();
  v3 = TSUDynamicCast();
  return ![v3 displayPageNumber] && objc_msgSend(objc_msgSend(v3, "cfi"), "length") != 0;
}

uint64_t sub_CF9D4(uint64_t a1, void *a2, void *a3)
{
  v6 = [a2 rank];
  v7 = [a3 rank];
  v8 = v7;
  if (v6 != v7 && (v6 == 1 || v7 == 1))
  {
    v13 = v6 < v7;
    goto LABEL_17;
  }

  if ([*(*(a1 + 32) + 24) length] >= 3)
  {
    v9 = [objc_msgSend(objc_msgSend(a2 "term")];
    v10 = [objc_msgSend(objc_msgSend(a3 "term")];
    v11 = v9 == v10;
    result = v9 > v10 ? -1 : 1;
    if (!v11)
    {
      return result;
    }
  }

  v13 = v6 < v8;
  if (v6 != v8)
  {
LABEL_17:
    if (v13)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  v14 = [a2 pageNumber];
  v15 = [a3 pageNumber];
  v16 = -1;
  if (v14 >= v15)
  {
    v16 = 1;
  }

  if (v14 == v15)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

int64_t sub_CFAD8(id a1, id a2, id a3)
{
  v5 = [a2 rank];
  v6 = [a3 rank];
  v7 = [a2 pageNumber];
  v8 = [a3 pageNumber];
  if (v5 == 1 || v6 == 1)
  {
    if (v5 == v6)
    {
      v12 = [a2 term];
      v13 = [a3 term];

      return [v12 localizedCaseInsensitiveCompare:v13];
    }

    else if (v5 == 1)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else if (v7 == v8)
  {
    v9 = [a2 cfi];
    v10 = [a3 cfi];

    return [v9 caseInsensitiveCompare:v10];
  }

  else if (v7 < v8)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_D1B18(uint64_t a1)
{
  v2 = [THSearchTableViewDataSource alloc];
  v3 = [*(a1 + 32) searchController];
  v4 = [(THSearchTableViewDataSource *)v2 initWithSearchController:v3 searchViewMode:0];
  [*(a1 + 32) setResultsDataSource:v4];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained setText:0];

  v6 = [*(a1 + 32) resultsViewController];
  v7 = [v6 tableView];
  [v7 reloadData];

  v8 = [*(a1 + 32) resultsViewController];
  v9 = [v8 tableView];
  [v9 safeAreaInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [*(a1 + 32) _adjustPocketInsetsForSafeAreaInsets:{v11, v13, v15, v17}];
  v18 = *(a1 + 32);
  v20 = [v18 resultsViewController];
  v19 = [v20 tableView];
  [v18 _scrollTableViewToTop:v19];
}

id sub_D23D0(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingSearchText];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(a1 + 32) pendingSearchText];
    [v3 searchForString:v4];

    v5 = *(a1 + 32);

    return [v5 setPendingSearchText:0];
  }

  else
  {
    result = [*(a1 + 32) settingSearchForString];
    if ((result & 1) == 0)
    {
      v7 = *(a1 + 32);

      return [v7 p_showRecents];
    }
  }

  return result;
}

void sub_D2DD4(uint64_t a1)
{
  v1 = [*(a1 + 32) topTableViewController];
  if (v1)
  {
    v4 = v1;
    v2 = [v1 tableView];

    v1 = v4;
    if (v2)
    {
      v3 = [v4 tableView];
      [v3 reloadData];

      v1 = v4;
    }
  }
}

id sub_D3C98(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setHidden:1];
  v2 = *(*(a1 + 32) + 16);

  return [v2 removeFromSuperview];
}

void sub_D3FD4(uint64_t a1)
{
  [*(a1 + 32) setSettingSearchForString:0];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained(v2 + 7);
  [v2 searchBarSearchButtonClicked:WeakRetained];
}

void sub_D40E4(uint64_t a1)
{
  [*(a1 + 32) _analyticsSubmitInBookSearchEventWithSearchText:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 80) suggestionResults];
  v3 = [*(a1 + 32) suggestionsDataSource];
  [v3 setSuggestions:v2];

  v4 = [*(a1 + 32) suggestionsDataSource];
  [*(a1 + 32) setResultsDataSource:v4];

  v6 = [*(a1 + 32) resultsViewController];
  v5 = [v6 tableView];
  [v5 reloadData];
}

void sub_D45A4(uint64_t a1)
{
  v2 = [*(a1 + 32) progressView];
  [v2 setAlpha:0.8];

  v3 = [*(a1 + 32) spinner];
  [v3 setAlpha:1.0];
}

id sub_D46F4(uint64_t a1)
{
  v2 = [*(a1 + 32) unsignedIntegerValue];
  [*(a1 + 40) recordOutgoingMajorNavigationJump];
  v3 = *(a1 + 40);

  return [v3 navigateToAbsolutePageIndex:v2];
}

void sub_D4820(uint64_t a1)
{
  [*(a1 + 32) recordOutgoingMajorNavigationJump];
  v2 = [*(*(a1 + 40) + 80) anchorForSelectedSearchResult:*(a1 + 48)];
  [*(a1 + 32) navigateToSearchResult:v2];
  [*(a1 + 32) recordCurrentLocationInHistory];
  [*(a1 + 32) updateNavigationAffordances];
}

void sub_D4978(uint64_t a1)
{
  v2 = [*(a1 + 32) progressView];
  [v2 setAlpha:0.8];

  v3 = [*(a1 + 32) spinner];
  [v3 setAlpha:1.0];
}

void sub_D4D30(uint64_t a1)
{
  v2 = [*(a1 + 32) resultsViewController];
  v1 = [v2 tableView];
  [v1 reloadData];
}

double THNormalVector(CALayer *a1)
{
  [(CALayer *)a1 frame];
  MidX = CGRectGetMidX(v17);
  [(CALayer *)a1 frame];
  MidY = CGRectGetMidY(v18);
  if (a1)
  {
    [(CALayer *)a1 transform];
    [(CALayer *)a1 transform];
    v5 = v16;
    v4 = v15;
    v6 = v14;
    v7 = v13;
    v8 = v13;
    v9 = v14;
    v11 = v15;
    v10 = v16;
  }

  else
  {
    v7 = 0.0;
    v6 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    v8 = 0.0;
  }

  return v10 + v11 + MidY * v9 + MidX * v8 - (v5 + MidY * v6 + MidX * v7 + v4 * 0.0);
}

double THDistanceFromRectCenterToEdge(CGRect a1, CGPoint a2)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  TSDNormalizePoint();
  v8 = v7;
  if (v6 == 0.0)
  {
    v11 = INFINITY;
  }

  else
  {
    v9 = v6;
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v10 = CGRectGetWidth(v15) * 0.5 / v9;
    v11 = fabsf(v10);
  }

  if (v8 == 0.0)
  {
    v13 = INFINITY;
  }

  else
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v12 = CGRectGetHeight(v16) * 0.5 / v8;
    v13 = fabsf(v12);
  }

  return fminf(v11, v13);
}

double THBoundingCubeForTransformedRect@<D0>(CGRect a1@<0:D0, 8:D1, 16:D2, 24:D3>, CATransform3D *a2@<X0>, double *a3@<X8>)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  MinX = CGRectGetMinX(a1);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MinY = CGRectGetMinY(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  MaxY = CGRectGetMaxY(v45);
  m12 = a2->m12;
  m13 = a2->m13;
  m14 = a2->m14;
  m21 = a2->m21;
  m22 = a2->m22;
  m23 = a2->m23;
  m24 = a2->m24;
  m31 = a2->m31;
  m32 = a2->m32;
  m33 = a2->m33;
  m34 = a2->m34;
  v24 = m14 + MinY * m12 + MinX * a2->m11 + m13 * 0.0;
  v25 = m24 + MinY * m22 + MinX * m21 + m23 * 0.0;
  v26 = m34 + MinY * m32 + MinX * m31 + m33 * 0.0;
  v27 = m14 + MinY * m12 + MaxX * a2->m11 + m13 * 0.0;
  v28 = fminf(fminf(v24, INFINITY), v27);
  v29 = m24 + MinY * m22 + MaxX * m21 + m23 * 0.0;
  v30 = fminf(fminf(v25, INFINITY), v29);
  v31 = m34 + MinY * m32 + MaxX * m31 + m33 * 0.0;
  v32 = fminf(fminf(v26, INFINITY), v31);
  v33 = fmaxf(fmaxf(v24, 0.0), v27);
  v34 = fmaxf(fmaxf(v25, 0.0), v29);
  v35 = fmaxf(fmaxf(v26, 0.0), v31);
  v36 = MaxY * m12;
  v37 = MaxY * m22;
  v38 = MaxY * m32;
  v39 = m14 + v36 + MinX * a2->m11 + m13 * 0.0;
  v40 = m24 + v37 + MinX * m21 + m23 * 0.0;
  *&m32 = m34 + v38 + MinX * m31 + m33 * 0.0;
  v41 = m14 + v36 + MaxX * a2->m11 + m13 * 0.0;
  *&m13 = m24 + v37 + MaxX * m21 + m23 * 0.0;
  *&v38 = m34 + v38 + MaxX * m31 + m33 * 0.0;
  *a3 = fminf(fminf(v28, v39), v41);
  a3[1] = fminf(fminf(v30, v40), *&m13);
  a3[2] = fminf(fminf(v32, *&m32), *&v38);
  a3[3] = fmaxf(fmaxf(v33, v39), v41);
  result = fmaxf(fmaxf(v35, *&m32), *&v38);
  a3[4] = fmaxf(fmaxf(v34, v40), *&m13);
  a3[5] = result;
  return result;
}

void *sub_DE038(void *result, void *a2)
{
  if (*(*(result[5] + 8) + 24) == 1)
  {
    v2 = result;
    if (*(result + 48) == 1)
    {
      [*(result[4] + 8) setScalingMode:1];
      v4 = v2[4];
      [a2 transitionDuration];

      return [v4 p_layoutViewsWithDuration:?];
    }
  }

  return result;
}

void *sub_DE0C0(void *result, void *a2)
{
  v3 = result;
  if (*(*(result[5] + 8) + 24) == 1 && *(result + 48) == 1)
  {
    result = [*(result[4] + 8) setScalingMode:0];
  }

  if ((v3[6] & 1) == 0)
  {
    v4 = v3[4];
    [a2 transitionDuration];

    return [v4 p_layoutViewsWithDuration:?];
  }

  return result;
}

void *sub_DE294(void *result)
{
  v1 = result[4];
  if ((*(v1 + 120) & 1) == 0)
  {
    return [*(v1 + 16) studyViewControllerIsDone:?];
  }

  return result;
}

id sub_DEC4C(uint64_t a1)
{
  v1 = [*(a1 + 32) backdrop];

  return [v1 setAlpha:1.0];
}

id sub_DEC7C(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "optionsButton")];
  [objc_msgSend(*(a1 + 32) "doneButton")];
  [objc_msgSend(*(a1 + 32) "titleLabel")];
  v2 = *(a1 + 32);

  return [v2 refreshStatusBarAppearance];
}

uint64_t sub_DECE0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(a1 + 32) + 120) = 0;
  return result;
}

id sub_DED24(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(*(a1 + 32) + 8) noteCards];
  result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (result)
  {
    v3 = result;
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

        [*(*(&v6 + 1) + 8 * v5) setFlownOut:0 animated:1 duration:{objc_msgSend(*(*(&v6 + 1) + 8 * v5), "cardIndex") * 0.0500000007 + 0.430000011}];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

id sub_DF0BC(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "optionsButton")];
  [objc_msgSend(*(a1 + 32) "doneButton")];
  [objc_msgSend(*(a1 + 32) "titleLabel")];
  v2 = *(a1 + 32);

  return [v2 refreshStatusBarAppearance];
}

id sub_DF120(uint64_t a1)
{
  v1 = [*(a1 + 32) backdrop];

  return [v1 setAlpha:0.0];
}

uint64_t sub_DF150(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  *(*(a1 + 32) + 120) = 0;
  return result;
}

void sub_E4FF0(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = objc_alloc_init(THHighlightLine);
  [(THHighlightLine *)v12 setFullLineRect:a2, a3, a4, a5];
  [(THHighlightLine *)v12 setCurrentLineRect:a2, a3, a4, a5];
  [(THHighlightLine *)v12 setBaseline:a6];
  [(THHighlightLine *)v12 setUnderlineOffset:2.0];
  [*(a1 + 32) p_setupContentLayerForHighlightLine:v12];
  if ([(THHighlightLine *)v12 contentLayer])
  {
    [*(*(a1 + 32) + 80) addObject:{-[THHighlightLine contentLayer](v12, "contentLayer")}];
  }
}

void sub_E59C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_E59E4(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

CGFloat sub_E59F4(uint64_t a1, CTLineRef line, double a3, double a4)
{
  descent = 0.0;
  *(*(*(a1 + 32) + 8) + 48) = CTLineGetTypographicBounds(line, 0, &descent, 0) + *(*(*(a1 + 32) + 8) + 48);
  v6 = *(*(a1 + 32) + 8);
  result = descent + a4 + *(v6 + 56);
  *(v6 + 56) = result;
  return result;
}

void sub_E5B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGFloat sub_E5B40(uint64_t a1, CTLineRef line, double a3, double a4)
{
  descent = 0.0;
  CTLineGetTypographicBounds(line, 0, &descent, 0);
  result = descent + a4;
  *(*(*(a1 + 32) + 8) + 24) = descent + a4;
  return result;
}

void sub_E5CA4(uint64_t a1, const __CTLine *a2, CGFloat a3, CGFloat a4)
{
  CGContextSetTextPosition(*(a1 + 32), a3, a4);
  CGContextSetShouldSmoothFonts(*(a1 + 32), 0);
  CGContextSetShouldAntialias(*(a1 + 32), 1);
  v6 = *(a1 + 32);

  CTLineDraw(a2, v6);
}

id sub_E7544(uint64_t a1)
{
  *(*(a1 + 32) + 40) = [*(a1 + 40) copyFixingSize];
  [*(a1 + 32) stopPagination];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [objc_msgSend(objc_msgSend(*(a1 + 32) "documentRoot")];
  result = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v8 = [v7 contentNodes];
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v13 + 1) + 8 * v12) invalidatePresentationType:{objc_msgSend(*(a1 + 32), "presentationType")}];
              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        v6 = v6 + 1;
      }

      while (v6 != v4);
      result = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

id sub_E7A08(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [objc_msgSend(objc_msgSend(*(a1 + 32) "documentRoot")];
  v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (!v2)
  {
    return [*(a1 + 32) p_updatePaginationInProgress];
  }

  v3 = v2;
  v4 = 0;
  v5 = *v21;
  do
  {
    v6 = 0;
    do
    {
      if (*v21 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v20 + 1) + 8 * v6);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v7 contentNodes];
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * i);
            if (![*(a1 + 32) paginationResultForContentNode:v13])
            {
              [*(a1 + 32) paginateContentNode:v13 paginationCompletionDelegate:0 priority:0 isForeground:0 activity:*(a1 + 40)];
              v4 = 1;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v10);
      }

      v6 = v6 + 1;
    }

    while (v6 != v3);
    result = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    v3 = result;
  }

  while (result);
  if ((v4 & 1) == 0)
  {
    return [*(a1 + 32) p_updatePaginationInProgress];
  }

  return result;
}

void sub_E7C68(uint64_t a1)
{
  if ([*(a1 + 32) isEqualIncludingSize:{objc_msgSend(*(a1 + 40), "presentationType")}])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [objc_msgSend(*(a1 + 40) observers];
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
          if ((objc_opt_respondsToSelector() & 1) != 0 && [*(a1 + 32) isEqualIncludingSize:{objc_msgSend(*(a1 + 40), "presentationType")}])
          {
            [v7 paginationController:*(a1 + 40) paginationCompleteStateChangedTo:*(a1 + 48)];
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

void sub_E8E5C(uint64_t a1)
{
  v2 = [*(a1 + 32) paginationResultForContentNode:*(a1 + 40)];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_msgSend(*(a1 + 32) "observers")];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            [v9 paginationController:*(a1 + 32) paginationResultChanged:v3 forContentNode:*(a1 + 40) paginationProgress:*(a1 + 56) paginationComplete:*(a1 + 48)];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

void sub_E9714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_E972C(uint64_t a1, void *a2)
{
  result = [a2 containsOccurrenceOfWord:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_EA254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_EA278(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_EA2EC;
  v3[3] = &unk_45D430;
  v4 = *(a1 + 32);
  return [a2 enumerateOccurrencesWithBlock:v3];
}

id sub_EA2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) objectForKey:*(a3 + 16)];
  v7 = [TSUPairNonRetainedSecond pairWithFirst:a2 second:a3];
  if (v6)
  {
    result = [v6 addObject:v7];
  }

  else
  {
    v9 = +[NSMutableArray array];
    [v9 addObject:v7];
    result = [*(a1 + 32) setObject:v9 forKey:*(a3 + 16)];
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

_WORD *sub_EA434(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    return [*(a1 + 32) addObject:a2];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v6)
  {
    return [*(a1 + 32) addObject:a2];
  }

  v7 = v6;
  v8 = *v12;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v12 != v8)
    {
      objc_enumerationMutation(a3);
    }

    result = [*(*(&v11 + 1) + 8 * v9) second];
    if (result)
    {
      if (*result == 1)
      {
        return result;
      }
    }

    if (v7 == ++v9)
    {
      v7 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        goto LABEL_4;
      }

      return [*(a1 + 32) addObject:a2];
    }
  }
}

id sub_EA71C(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_EA830;
  v5[3] = &unk_45D4A8;
  v6 = *(a1 + 40);
  return [v2 enumerateOccurrencesOfWord:v3 withBlock:v5];
}

id sub_EA830(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = [*(*(a1 + 32) + 24) objectForKey:*(a2 + 16)];
  if (!v3)
  {
    return [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v4 = v3;
  v5 = *(a1 + 40);

  return [v5 addObject:v4];
}

id KNBundle()
{
  if (qword_567800 != -1)
  {
    sub_29D0B4();
  }

  v1 = qword_5677F8;

  return v1;
}

void sub_EBEF4(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = qword_5677F8;
  qword_5677F8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_ED434(id a1, IMConfigurationAdder *a2)
{
  [(IMConfigurationAdder *)a2 addFloat:@"cellHeight" forKey:55.0];
  [(IMConfigurationAdder *)a2 addFloat:@"chapterLabelFontSize" forKey:16.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonLeftMargin" forKey:10.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonRadius" forKey:12.5];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonRightMargin" forKey:12.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonWidth" forKey:35.0];
  [(IMConfigurationAdder *)a2 addFloat:@"headerImageToTocTableMargin" forKey:0.0];
  [(IMConfigurationAdder *)a2 addBool:0 forKey:@"multiLevelIndent"];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberLeftMargin" forKey:20.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginChapter" forKey:10.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginSection" forKey:15.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel1" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel2" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel3" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginSection" forKey:15.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginSection" forKey:15.0];
  [(IMConfigurationAdder *)a2 addBool:1 forKey:@"pageNumberDynamicWidth"];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberFontSize" forKey:12.0];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberLeftMargin" forKey:10.0];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberWidth" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"sectionLabelFontSize" forKey:15.0];
  [(IMConfigurationAdder *)a2 addFloat:@"sectionLabelRightMargin" forKey:5.0];
  [(IMConfigurationAdder *)a2 addFloat:@"separatorColorWhite" forKey:201.0];

  [(IMConfigurationAdder *)a2 addFloat:@"viewTopToTocTableMargin" forKey:150.0];
}

id sub_ED64C(uint64_t a1, void *a2)
{
  v4 = +[IMConfigurationPredicate regularWidthPredicate];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_ED798;
  v10[3] = &unk_45D558;
  v10[4] = *(a1 + 32);
  [a2 addWithPredicate:v4 adder:v10];
  v5 = +[IMConfigurationPredicate compactWidthPredicate];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_ED7E4;
  v9[3] = &unk_45D558;
  v9[4] = *(a1 + 32);
  [a2 addWithPredicate:v5 adder:v9];
  v6 = +[IMConfigurationPredicate compactWidthPredicate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_ED830;
  v8[3] = &unk_45D558;
  v8[4] = *(a1 + 32);
  return [a2 addWithPredicate:v6 adder:v8];
}

id sub_ED798(uint64_t a1, void *a2)
{
  v4 = +[IMConfigurationPredicate compactHeightPredicate];
  v5 = *(a1 + 32);

  return [a2 addWithPredicate:v4 adder:v5];
}

id sub_ED7E4(uint64_t a1, void *a2)
{
  v4 = +[IMConfigurationPredicate regularHeightPredicate];
  v5 = *(a1 + 32);

  return [a2 addWithPredicate:v4 adder:v5];
}

id sub_ED830(uint64_t a1, void *a2)
{
  v4 = +[IMConfigurationPredicate compactHeightPredicate];
  v5 = *(a1 + 32);

  return [a2 addWithPredicate:v4 adder:v5];
}

id sub_ED87C(uint64_t a1, void *a2)
{
  v4 = +[IMConfigurationPredicate regularWidthPredicate];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_ED9C8;
  v10[3] = &unk_45D558;
  v10[4] = *(a1 + 32);
  [a2 addWithPredicate:v4 adder:v10];
  v5 = +[IMConfigurationPredicate compactWidthPredicate];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_EDA14;
  v9[3] = &unk_45D558;
  v9[4] = *(a1 + 32);
  [a2 addWithPredicate:v5 adder:v9];
  v6 = +[IMConfigurationPredicate compactWidthPredicate];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_EDA60;
  v8[3] = &unk_45D558;
  v8[4] = *(a1 + 32);
  return [a2 addWithPredicate:v6 adder:v8];
}

id sub_ED9C8(uint64_t a1, void *a2)
{
  v4 = +[IMConfigurationPredicate compactHeightPredicate];
  v5 = *(a1 + 32);

  return [a2 addWithPredicate:v4 adder:v5];
}

id sub_EDA14(uint64_t a1, void *a2)
{
  v4 = +[IMConfigurationPredicate regularHeightPredicate];
  v5 = *(a1 + 32);

  return [a2 addWithPredicate:v4 adder:v5];
}

id sub_EDA60(uint64_t a1, void *a2)
{
  v4 = +[IMConfigurationPredicate compactHeightPredicate];
  v5 = *(a1 + 32);

  return [a2 addWithPredicate:v4 adder:v5];
}

void sub_EDBA0(id a1, IMConfigurationAdder *a2)
{
  v3 = +[IMConfigurationPredicate regularHeightPredicate];

  [(IMConfigurationAdder *)a2 addWithPredicate:v3 adder:&stru_45D598];
}

void sub_EDBEC(id a1, IMConfigurationAdder *a2)
{
  v3 = +[IMConfigurationPredicate regularWidthPredicate];

  [(IMConfigurationAdder *)a2 addWithPredicate:v3 adder:&stru_45D5B8];
}

void sub_EDC38(id a1, IMConfigurationAdder *a2)
{
  [(IMConfigurationAdder *)a2 addFloat:@"cellHeight" forKey:44.0];
  [(IMConfigurationAdder *)a2 addFloat:@"chapterLabelFontSize" forKey:17.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonLeftMargin" forKey:6.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonRadius" forKey:12.5];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonRightMargin" forKey:75.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonWidth" forKey:35.0];
  [(IMConfigurationAdder *)a2 addFloat:@"headerImageToTocTableMargin" forKey:0.0];
  [(IMConfigurationAdder *)a2 addBool:1 forKey:@"multiLevelIndent"];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberLeftMargin" forKey:75.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginChapter" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginSection" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel1" forKey:35.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel2" forKey:45.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel3" forKey:25.0];
  [(IMConfigurationAdder *)a2 addBool:0 forKey:@"pageNumberDynamicWidth"];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberFontSize" forKey:17.0];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberLeftMargin" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberWidth" forKey:54.0];
  [(IMConfigurationAdder *)a2 addFloat:@"sectionLabelFontSize" forKey:17.0];
  [(IMConfigurationAdder *)a2 addFloat:@"sectionLabelRightMargin" forKey:17.0];
  [(IMConfigurationAdder *)a2 addFloat:@"separatorColorWhite" forKey:201.0];

  [(IMConfigurationAdder *)a2 addFloat:@"viewTopToTocTableMargin" forKey:150.0];
}

void sub_EDE48(id a1, IMConfigurationAdder *a2)
{
  v3 = +[IMConfigurationPredicate regularHeightPredicate];

  [(IMConfigurationAdder *)a2 addWithPredicate:v3 adder:&stru_45D5F8];
}

void sub_EDE94(id a1, IMConfigurationAdder *a2)
{
  v3 = +[IMConfigurationPredicate regularWidthPredicate];

  [(IMConfigurationAdder *)a2 addWithPredicate:v3 adder:&stru_45D618];
}

void sub_EDEE0(id a1, IMConfigurationAdder *a2)
{
  [(IMConfigurationAdder *)a2 addFloat:@"cellHeight" forKey:44.0];
  [(IMConfigurationAdder *)a2 addFloat:@"chapterLabelFontSize" forKey:17.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonLeftMargin" forKey:6.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonRadius" forKey:12.5];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonRightMargin" forKey:75.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonWidth" forKey:35.0];
  [(IMConfigurationAdder *)a2 addFloat:@"headerImageToTocTableMargin" forKey:0.0];
  [(IMConfigurationAdder *)a2 addBool:1 forKey:@"multiLevelIndent"];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberLeftMargin" forKey:75.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginChapter" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginSection" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel1" forKey:35.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel2" forKey:45.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel3" forKey:25.0];
  [(IMConfigurationAdder *)a2 addBool:0 forKey:@"pageNumberDynamicWidth"];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberFontSize" forKey:17.0];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberLeftMargin" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberWidth" forKey:54.0];
  [(IMConfigurationAdder *)a2 addFloat:@"sectionLabelFontSize" forKey:17.0];
  [(IMConfigurationAdder *)a2 addFloat:@"sectionLabelRightMargin" forKey:17.0];
  [(IMConfigurationAdder *)a2 addFloat:@"separatorColorWhite" forKey:201.0];

  [(IMConfigurationAdder *)a2 addFloat:@"viewTopToTocTableMargin" forKey:150.0];
}

void sub_EE0F0(id a1, IMConfigurationAdder *a2)
{
  [(IMConfigurationAdder *)a2 addFloat:@"cellHeight" forKey:55.0];
  [(IMConfigurationAdder *)a2 addFloat:@"chapterLabelFontSize" forKey:16.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonLeftMargin" forKey:10.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonRadius" forKey:12.5];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonRightMargin" forKey:12.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonWidth" forKey:35.0];
  [(IMConfigurationAdder *)a2 addFloat:@"headerImageToTocTableMargin" forKey:0.0];
  [(IMConfigurationAdder *)a2 addBool:0 forKey:@"multiLevelIndent"];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberLeftMargin" forKey:20.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginChapter" forKey:10.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginSection" forKey:15.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel1" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel2" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel3" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginSection" forKey:15.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginSection" forKey:15.0];
  [(IMConfigurationAdder *)a2 addBool:1 forKey:@"pageNumberDynamicWidth"];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberFontSize" forKey:12.0];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberLeftMargin" forKey:10.0];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberWidth" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"sectionLabelFontSize" forKey:15.0];
  [(IMConfigurationAdder *)a2 addFloat:@"sectionLabelRightMargin" forKey:5.0];
  [(IMConfigurationAdder *)a2 addFloat:@"separatorColorWhite" forKey:201.0];

  [(IMConfigurationAdder *)a2 addFloat:@"viewTopToTocTableMargin" forKey:150.0];
}

void sub_EE354(id a1, IMConfigurationAdder *a2)
{
  v3 = +[IMConfigurationPredicate regularHeightPredicate];

  [(IMConfigurationAdder *)a2 addWithPredicate:v3 adder:&stru_45D678];
}

void sub_EE3A0(id a1, IMConfigurationAdder *a2)
{
  v3 = +[IMConfigurationPredicate regularWidthPredicate];

  [(IMConfigurationAdder *)a2 addWithPredicate:v3 adder:&stru_45D698];
}

void sub_EE3EC(id a1, IMConfigurationAdder *a2)
{
  [(IMConfigurationAdder *)a2 addFloat:@"cellHeight" forKey:75.0];
  [(IMConfigurationAdder *)a2 addFloat:@"chapterLabelFontSize" forKey:20.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonLeftMargin" forKey:13.0];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonRadius" forKey:12.5];
  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonWidth" forKey:35.0];
  [(IMConfigurationAdder *)a2 addFloat:@"headerImageToTocTableMargin" forKey:0.0];
  [(IMConfigurationAdder *)a2 addBool:1 forKey:@"multiLevelIndent"];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberColorWhite" forKey:0.6];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginChapter" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberRightMarginSection" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel1" forKey:65.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel2" forKey:75.0];
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalWidthLevel3" forKey:55.0];
  [(IMConfigurationAdder *)a2 addBool:0 forKey:@"pageNumberDynamicWidth"];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberFontSize" forKey:20.0];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberLeftMargin" forKey:0.0];
  [(IMConfigurationAdder *)a2 addFloat:@"pageNumberWidth" forKey:54.0];
  [(IMConfigurationAdder *)a2 addFloat:@"sectionLabelFontSize" forKey:20.0];
  [(IMConfigurationAdder *)a2 addFloat:@"sectionLabelRightMargin" forKey:17.0];
  [(IMConfigurationAdder *)a2 addFloat:@"separatorColorWhite" forKey:230.0];
  [(IMConfigurationAdder *)a2 addFloat:@"viewTopToTocTableMargin" forKey:150.0];
  [(IMConfigurationAdder *)a2 addWithPredicate:+[IMConfigurationPredicate adder:"landscapePredicate"], &stru_45D6B8];
  v3 = +[IMConfigurationPredicate portraitPredicate];

  [(IMConfigurationAdder *)a2 addWithPredicate:v3 adder:&stru_45D6D8];
}

void sub_EE624(id a1, IMConfigurationAdder *a2)
{
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberLeftMargin" forKey:180.0];

  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonRightMargin" forKey:180.0];
}

void sub_EE688(id a1, IMConfigurationAdder *a2)
{
  [(IMConfigurationAdder *)a2 addFloat:@"ordinalNumberLeftMargin" forKey:38.0];

  [(IMConfigurationAdder *)a2 addFloat:@"discloseButtonRightMargin" forKey:38.0];
}

uint64_t _highlightRowInfos(void)
{
  if (qword_567810 != -1)
  {
    sub_29D0C8();
  }

  return qword_567808;
}

void sub_EFF8C(id a1)
{
  if ((atomic_load_explicit(&qword_567878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_567878))
  {
    dword_567818 = 3;
    qword_567820 = [THBundle() localizedStringForKey:@"Yellow" value:&stru_471858 table:0];
    dword_567828 = 1;
    qword_567830 = [THBundle() localizedStringForKey:@"Green" value:&stru_471858 table:0];
    dword_567838 = 2;
    qword_567840 = [THBundle() localizedStringForKey:@"Blue" value:&stru_471858 table:0];
    dword_567848 = 4;
    qword_567850 = [THBundle() localizedStringForKey:@"Pink" value:&stru_471858 table:0];
    dword_567858 = 5;
    qword_567860 = [THBundle() localizedStringForKey:@"Purple" value:&stru_471858 table:0];
    dword_567868 = 6;
    qword_567870 = [THBundle() localizedStringForKey:@"Underline" value:&stru_471858 table:0];
    __cxa_guard_release(&qword_567878);
  }

  qword_567808 = &dword_567818;
}

double _studyOptionsPopoverSize(void)
{
  if (+[UIFont bc_accessibilityFontSizesEnabled])
  {
    v0 = 360.0;
  }

  else
  {
    v0 = 320.0;
  }

  +[UIFont bc_accessibilityFontSizesEnabled];
  return v0;
}

id sub_F1C2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 bodyStorage];
  v5 = *(a1 + 32);
  v6 = [v4 range];
  [v5 setStorage:v4 range:{v6, v7}];
  v8 = *(a1 + 32);
  v9 = [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{12.0), "familyName"}];
  v10 = THNoteCardBackTextColor([*(a1 + 40) darkMode]);

  return [v8 setFontFamily:v9 textColor:v10 underlineColor:0 characterSpacing:0 lineSpacingMode:4 lineSpacingAmount:-0.01 alignment:1.0];
}

uint64_t sub_F4CC0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_F4DB0(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "view")];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_F4F04(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_F4FF4(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "view")];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_F52C0(uint64_t a1)
{
  [*(a1 + 40) setPreferredDisplayMode:{2 * (objc_msgSend(objc_msgSend(*(a1 + 32), "notesSidebarViewController"), "presentedViewController") != 0)}];
  v2 = *(a1 + 32);
  v3 = [v2 p_isEditing];
  v4 = [*(a1 + 32) p_isCollapsed];

  return [v2 p_configureToolbarsForEditing:v3 collapsed:v4];
}

id sub_F5AF0(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "bookViewController")];
  v2 = [*(a1 + 32) bookViewController];

  return [v2 updateNavigationAffordances];
}

void sub_F8A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_F8A34(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void sub_F8A44(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5.size.height = a5;
  v5.size.width = a4;
  v5.origin.y = a3;
  v5.origin.x = a2;
  *(*(*(a1 + 32) + 8) + 48) = CGRectUnion(*(*(*(a1 + 32) + 8) + 48), v5);
}

id sub_F9174(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  *&v4 = v4;
  [a2 setFloatValue:17 forProperty:v4];
  [a2 setFloatValue:81 forProperty:0.0];
  [a2 setFloatValue:80 forProperty:0.0];
  [a2 setFloatValue:87 forProperty:0.0];
  result = [a2 setFloatValue:88 forProperty:0.0];
  if (*(a1 + 32))
  {

    return [a2 setValue:? forProperty:?];
  }

  return result;
}

id sub_F9218(uint64_t a1, void *a2)
{
  result = [a2 definesProperty:17];
  if (result)
  {
    v5 = *(a1 + 32);
    *&v5 = v5;

    return [a2 setFloatValue:17 forProperty:v5];
  }

  return result;
}

id sub_FF558(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "delegate")];
  [*(*(a1 + 32) + 80) setAlpha:1.0];
  v2 = *(a1 + 32);

  return [v2 setControlsHidden:0];
}

id sub_FF5BC(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "delegate")];
  v2 = *(a1 + 32);

  return [v2 setControlsHidden:0];
}

id sub_FF868(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "delegate")];
  [objc_msgSend(*(*(a1 + 32) + 16) "controlsView")];
  [*(*(a1 + 32) + 80) setAlpha:0.0];
  v2 = *(a1 + 32);

  return [v2 setControlsHidden:1];
}

id sub_102174(uint64_t a1)
{
  result = [*(a1 + 32) numberOfSections];
  if (result)
  {
    [*(a1 + 32) rectForSection:{objc_msgSend(*(a1 + 32), "numberOfSections") - 1}];
    MaxY = CGRectGetMaxY(v4);
    [*(a1 + 32) bounds];
    return (MaxY >= CGRectGetHeight(v5));
  }

  return result;
}

void sub_103F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_103FA8(uint64_t a1, uint64_t a2)
{
  v7 = [*(a1 + 32) cachedAnnotationForIndexPath:a2];
  v3 = [v7 annotationNote];
  if (v3)
  {
    v4 = v3;
    v5 = [v7 annotationNote];
    v6 = [v5 length];

    if (v6)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }
}

int64_t sub_1041DC(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 section];
  if (v8 == [v7 section])
  {
    v9 = [v6 row];
    if (v9 == [v7 row])
    {
      v10 = 0;
      goto LABEL_9;
    }

    v11 = [v6 row];
    v12 = [v7 row];
  }

  else
  {
    v11 = [v6 section];
    v12 = [v7 section];
  }

  if (v11 < v12)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

LABEL_9:

  return v10;
}

id sub_109898(uint64_t a1)
{
  v2 = [*(a1 + 32) isCurrentPageBookmarkedForBookmarkMenuPopoverViewController:*(a1 + 40)];
  v3 = *(a1 + 40);
  v4 = v2 ^ 1;
  v5 = *(a1 + 32);

  return [v5 setCurrentPageBookmarked:v4 forBookmarkMenuPopoverViewController:v3];
}

id sub_10D340(uint64_t a1)
{
  v1 = [*(a1 + 32) newImageSourceForTextureName:*(a1 + 40)];

  return v1;
}

void sub_10F5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10F5F0(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [[THPageLocation alloc] initWithDictionaryRepresentation:a2];

  return [v2 addObject:v3];
}

void sub_10F794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10F7B0(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 dictionaryRepresentation];

  return [v2 addObject:v3];
}

id sub_1109B8(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 48), *(a1 + 56)}];
  [*(a1 + 40) addSubview:*(a1 + 32)];
  v2 = *(a1 + 64);
  v3 = [*(a1 + 32) layer];

  return [v3 setZPosition:v2];
}

id sub_110EBC(uint64_t a1)
{
  [*(a1 + 32) setCenter:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 addSubview:*(a1 + 32)];
  }

  else
  {
    [*(a1 + 32) removeFromSuperview];
  }

  v3 = *(a1 + 64);
  v4 = [*(a1 + 32) layer];

  return [v4 setZPosition:v3];
}