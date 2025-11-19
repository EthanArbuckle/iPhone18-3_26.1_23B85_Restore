uint64_t sub_1006F07F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1006F0810(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v5 bindInt64Parameter:"@muid" toValue:v4 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = *(*(a1 + 40) + 8);
  v18 = *(v10 + 40);
  v11 = [v9 bindIntParameter:"@recommendstate" toValue:v8 inStatement:a2 error:&v18];
  objc_storeStrong((v10 + 40), v18);
  if (!v11)
  {
    return 0;
  }

  v12 = *(a1 + 60);
  v13 = *(a1 + 32);
  v14 = *(*(a1 + 40) + 8);
  v17 = *(v14 + 40);
  v15 = [v13 bindIntParameter:"@photosadded" toValue:v12 inStatement:a2 error:&v17];
  objc_storeStrong((v14 + 40), v17);
  return v15;
}

void sub_1006F09AC(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[4] + 8);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1006F07F8;
  v21 = sub_1006F0808;
  v22 = 0;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v24 = sub_1006F0BDC;
  v25 = &unk_101626FB0;
  v4 = v3;
  v27 = &v17;
  v28 = v2;
  v26 = v4;
  v5 = [v4 executeStatement:@"RemoveReviewedPlace" statementBlock:&buf];
  v6 = v18[5];
  if (v6)
  {
    v7 = v6;
  }

  _Block_object_dispose(&v17, 8);
  v8 = v6;
  v9 = v5 & (v6 == 0);
  v10 = sub_100799818();
  v11 = v10;
  if (v9)
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v12 = a1[6];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v12;
    v13 = "Removed a cached removed place with muid %llu";
    v14 = v11;
    v15 = OS_LOG_TYPE_INFO;
  }

  else
  {
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    v13 = "Error in deleting place with error %@";
    v14 = v11;
    v15 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&_mh_execute_header, v14, v15, v13, &buf, 0xCu);
LABEL_9:

  v16 = a1[5];
  if (v16)
  {
    (*(v16 + 16))(v16, v8);
  }
}

id sub_1006F0BDC(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  obj = *(v4 + 40);
  v5 = [v3 bindInt64Parameter:"@muid" toValue:v2 inStatement:a2 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  return v5;
}

void sub_1006F0D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006F0D4C(void *a1)
{
  v2 = *(a1[4] + 8);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006F0E80;
  v7[3] = &unk_101626F60;
  v3 = a1[6];
  v7[4] = a1[5];
  v7[5] = v3;
  v8 = 0;
  sub_1006F0FD4(v2, &v8, v3, v7);
  v4 = v8;
  if (!*(*(a1[5] + 8) + 40))
  {
    v5 = sub_100799818();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = a1[6];
      *buf = 134217984;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "We could not find a cached reviewed place with muid %llu ", buf, 0xCu);
    }
  }
}

uint64_t sub_1006F0E80(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v7 = [[UGCReviewedPlace alloc] initWithMUID:*(a1 + 40)];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(*(*(a1 + 32) + 8) + 40) setRecommendState:a3];
  [*(*(*(a1 + 32) + 8) + 40) setNumberOfPhotosAdded:a4];
  v10 = sub_100799818();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [*(*(*(a1 + 32) + 8) + 40) muid];
    v12 = [*(*(*(a1 + 32) + 8) + 40) recommendState];
    v13 = [*(*(*(a1 + 32) + 8) + 40) numberOfPhotosAdded];
    v15 = 134218496;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    v19 = 2048;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "We fetched a cached reviewed place with muid %llu with recommend state %lu, and number of photos added %lu", &v15, 0x20u);
  }

  return 0;
}

void sub_1006F0FD4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1006F07F8;
  v21 = sub_1006F0808;
  v22 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1006F1130;
  v12[3] = &unk_101626F88;
  v9 = v7;
  v15 = &v17;
  v16 = a3;
  v13 = v9;
  v10 = v8;
  v14 = v10;
  [v9 statementForKey:@"FindReviewedPlace" statementBlock:v12];
  if (a2)
  {
    v11 = v18[5];
    if (v11)
    {
      *a2 = v11;
    }
  }

  _Block_object_dispose(&v17, 8);
}

void sub_1006F1118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006F1130(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 48) + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindInt64Parameter:"@muid" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  while (1)
  {
    v8 = sqlite3_step(a2);
    v9 = v8;
    if (v8 != 100)
    {
      break;
    }

    [*(a1 + 32) int64ForColumn:0 inStatment:a2];
    v10 = 1;
    [*(a1 + 32) intForColumn:1 inStatment:a2];
    [*(a1 + 32) intForColumn:2 inStatment:a2];
    if (!(*(*(a1 + 40) + 16))())
    {
      return v10;
    }
  }

  if (v8 != 101)
  {
    v11 = *(a1 + 32);
    v12 = *(*(a1 + 48) + 8);
    v14 = *(v12 + 40);
    [v11 reportSQLiteErrorCode:v9 method:@"step" error:&v14];
    objc_storeStrong((v12 + 40), v14);
    return 0;
  }

  return 1;
}

void sub_1006F130C(void *a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1006F07F8;
  v14 = sub_1006F0808;
  v15 = 0;
  v2 = *(a1[4] + 8);
  v3 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1006F14D0;
  v8[3] = &unk_101626F60;
  v8[4] = &v10;
  v8[5] = v3;
  v9 = 0;
  sub_1006F0FD4(v2, &v9, v3, v8);
  v4 = v9;
  if (!v11[5])
  {
    v5 = sub_100799818();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = a1[6];
      *buf = 134217984;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "We could not find a cached reviewed place with muid %llu ", buf, 0xCu);
    }
  }

  v7 = a1[5];
  if (v7)
  {
    (*(v7 + 16))(v7, v11[5] != 0);
  }

  _Block_object_dispose(&v10, 8);
}

void sub_1006F14B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006F14D0(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v7 = [[UGCReviewedPlace alloc] initWithMUID:*(a1 + 40)];
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  [*(*(*(a1 + 32) + 8) + 40) setRecommendState:a3];
  [*(*(*(a1 + 32) + 8) + 40) setNumberOfPhotosAdded:a4];
  v10 = sub_100799818();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [*(*(*(a1 + 32) + 8) + 40) muid];
    v12 = [*(*(*(a1 + 32) + 8) + 40) recommendState];
    v13 = [*(*(*(a1 + 32) + 8) + 40) numberOfPhotosAdded];
    v15 = 134218496;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    v19 = 2048;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "We fetched a cached reviewed place with muid %llu with recommend state %lu, and number of photos added %lu", &v15, 0x20u);
  }

  return 0;
}

void sub_1006F1704(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1006F1720(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (*(a1 + 48) == *(a1 + 56))
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        v7 = *(v6 + 16);
LABEL_7:
        v7();
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      if (WeakRetained)
      {
        v10 = *(a1 + 48);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_1006F1874;
        v11[3] = &unk_101626F10;
        objc_copyWeak(v14, (a1 + 40));
        v14[1] = *(a1 + 56);
        v12 = v5;
        v13 = *(a1 + 32);
        v15 = a2;
        [WeakRetained removeReviewedPlaceWithMUID:v10 completion:v11];

        objc_destroyWeak(v14);
      }
    }
  }

  else
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v7 = *(v8 + 16);
      goto LABEL_7;
    }
  }
}

void sub_1006F1874(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [[UGCReviewedPlace alloc] initWithMUID:*(a1 + 56)];
    -[UGCReviewedPlace setNumberOfPhotosAdded:](v3, "setNumberOfPhotosAdded:", [*(a1 + 32) numberOfPhotosAdded]);
    -[UGCReviewedPlace setRecommendState:](v3, "setRecommendState:", [*(a1 + 32) recommendState]);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1006F197C;
    v6[3] = &unk_101632AD0;
    v4 = *(a1 + 40);
    v9 = *(a1 + 64);
    v7 = v3;
    v8 = v4;
    v5 = v3;
    [WeakRetained addOrEditReviewedPlace:v5 completion:v6];
  }
}

uint64_t sub_1006F197C(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

id sub_1006F1C5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100799818();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [objc_opt_class() baseFilePath:0];
    v14 = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Created a table for base path %@", &v14, 0xCu);
  }

  if ([v3 user_version] != 1)
  {
    v6 = sub_100799818();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 user_version];
      v14 = 134217984;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "DB user version %llu is outdated. Dropping (Little Bobby) tables.", &v14, 0xCu);
    }

    [v3 dropAllTables];
  }

  [v3 setUser_version:1];
  v8 = sub_100799818();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v3 user_version];
    v14 = 134217984;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Setting schema version to %llu", &v14, 0xCu);
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = [v10 log];
  v12 = sub_1006F03E4(v10, 0);

  return v12;
}

void sub_1006F2DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006F2DF4(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 _hasLookAroundStorefront] && objc_msgSend(v7, "_isMapItemTypeBusiness"))
  {
    v3 = [*(a1 + 32) appCoordinator];
    v4 = [MKLookAroundEntryPoint entryPointWithMapItem:v7 wantsCloseUpView:1];
    [v3 enterLookAroundWithEntryPoint:v4 lookAroundView:0 showsFullScreen:1 originFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  }

  else
  {
    v3 = [*(a1 + 32) appCoordinator];
    v4 = [*(a1 + 40) originalMapItem];
    v5 = [v4 _muninViewState];
    v6 = [MKLookAroundEntryPoint entryPointWithMuninViewState:v5];
    [v3 enterLookAroundWithEntryPoint:v6 lookAroundView:0 showsFullScreen:1 originFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  }
}

void sub_1006F2F24(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if (v7)
    {
      v5 = [MKLookAroundEntryPoint entryPointWithMapItem:v7];
      v6 = [*(a1 + 32) appCoordinator];
      [v6 enterLookAroundWithEntryPoint:v5 lookAroundView:0 showsFullScreen:0 originFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    }

    else
    {
      [WeakRetained _showErrorMessageinContext:*(a1 + 32)];
    }
  }
}

void sub_1006F40C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 removeFromSuperview];
  [*(*(a1 + 32) + 88) insertArrangedSubview:v5 atIndex:a3];
}

id sub_1006F4D18(uint64_t a1, void *a2)
{
  v3 = [a2 preferredContentSizeCategory];
  v4 = v3;
  if (!v3 || UIContentSizeCategoryCompareToCategory(v3, UIContentSizeCategoryUnspecified) == NSOrderedSame || UIContentSizeCategoryCompareToCategory(v4, *(a1 + 32)) != NSOrderedDescending)
  {
LABEL_13:
    v5 = *(a1 + 48);
    goto LABEL_14;
  }

  if (UIContentSizeCategoryCompareToCategory(v4, *(a1 + 40)) == NSOrderedAscending)
  {
    v6 = [qword_10195CFC8 indexOfObject:*(a1 + 32)];
    v7 = [qword_10195CFC8 indexOfObject:*(a1 + 40)];
    v8 = [qword_10195CFC8 indexOfObject:v4];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL && v7 >= v6 && v8 >= v6 && (v7 - v6) > 1)
    {
      v9 = *(a1 + 56);
      v5 = round((*(a1 + 64) - *(a1 + 48)) * (v8 - v6) / (v7 - v6) + *(a1 + 48));
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v5 = *(a1 + 64);
LABEL_14:
  v9 = *(a1 + 56);
LABEL_15:
  v10 = [UIFont systemFontOfSize:v5 weight:v9];

  return v10;
}

void sub_1006F4E78(id a1)
{
  v3[0] = UIContentSizeCategoryUnspecified;
  v3[1] = UIContentSizeCategoryExtraSmall;
  v3[2] = UIContentSizeCategorySmall;
  v3[3] = UIContentSizeCategoryMedium;
  v3[4] = UIContentSizeCategoryLarge;
  v3[5] = UIContentSizeCategoryExtraLarge;
  v3[6] = UIContentSizeCategoryExtraExtraLarge;
  v3[7] = UIContentSizeCategoryExtraExtraExtraLarge;
  v3[8] = UIContentSizeCategoryAccessibilityMedium;
  v3[9] = UIContentSizeCategoryAccessibilityLarge;
  v3[10] = UIContentSizeCategoryAccessibilityExtraLarge;
  v3[11] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v3[12] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v1 = [NSArray arrayWithObjects:v3 count:13];
  v2 = qword_10195CFC8;
  qword_10195CFC8 = v1;
}

void sub_1006F5460(id a1)
{
  v1 = qword_10195CFB0;
  qword_10195CFB0 = &off_1016EC920;

  v4[0] = UIFontTextStyleCaption2;
  v4[1] = UIFontTextStyleCaption1;
  v4[2] = UIFontTextStyleFootnote;
  v4[3] = UIFontTextStyleSubheadline;
  v4[4] = UIFontTextStyleBody;
  v4[5] = UIFontTextStyleTitle3;
  v4[6] = UIFontTextStyleTitle2;
  v4[7] = UIFontTextStyleTitle1;
  v2 = [NSArray arrayWithObjects:v4 count:8];
  v3 = qword_10195CFB8;
  qword_10195CFB8 = v2;
}

void sub_1006F6CCC(id a1)
{
  v3[0] = UIContentSizeCategoryAccessibilityMedium;
  v3[1] = UIContentSizeCategoryAccessibilityLarge;
  v3[2] = UIContentSizeCategoryAccessibilityExtraLarge;
  v3[3] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v3[4] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  v1 = [NSArray arrayWithObjects:v3 count:5];
  v2 = qword_10195CFA0;
  qword_10195CFA0 = v1;
}

void sub_1006F7178(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v10[0] = a2;
  v7 = a2;
  v8 = [NSValue valueWithRange:a3, a4];
  v10[1] = v8;
  v9 = [NSArray arrayWithObjects:v10 count:2];
  [v6 addObject:v9];
}

void sub_1006F7408(uint64_t a1)
{
  v2 = objc_getAssociatedObject(*(a1 + 32), off_10192A2A8);
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 copy];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) performSelector:NSSelectorFromString(*(*(&v8 + 1) + 8 * v7))];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_setAssociatedObject(*(a1 + 32), off_10192A2A8, 0, 1);
  objc_setAssociatedObject(*(a1 + 32), off_10192A2A0, 0, 3);
}

id sub_1006F76DC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = v3;
    obj = v3;
    v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v30;
      v10 = &protocolRef_RouteAnnotationsProviding;
      do
      {
        v11 = 0;
        v23 = v7;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = v4[2](v4, *(*(&v29 + 1) + 8 * v11), v8);
          v13 = v12;
          if (v12)
          {
            if ([v12 conformsToProtocol:v10[91]])
            {
              v14 = v9;
              v15 = v13;
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v26;
                do
                {
                  for (i = 0; i != v17; i = i + 1)
                  {
                    if (*v26 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    [v5 addObject:{*(*(&v25 + 1) + 8 * i), v22}];
                  }

                  v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
                }

                while (v17);
              }

              v9 = v14;
              v7 = v23;
              v10 = &protocolRef_RouteAnnotationsProviding;
            }

            else
            {
              [v5 addObject:v13];
            }
          }

          ++v8;

          v11 = v11 + 1;
        }

        while (v11 != v7);
        v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    v20 = [v5 copy];
    v3 = v22;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

uint64_t sub_1006F7930(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v14;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v5);
          }

          if (!v4[2](v4, *(*(&v13 + 1) + 8 * v10), v8))
          {
            v11 = 0;
            goto LABEL_12;
          }

          ++v8;
          v10 = v10 + 1;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 1;
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

double sub_1006F7BEC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  v5 = a3 / a2;
  v6 = sqrt(a3 / a2);
  v7 = sqrt(a3 * a2);
  v8 = a4 / (v7 + v7);
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  v9 = v8 * v8;
  v10 = sqrt(1.0 - v8 * v8) * v6;
  *(a1 + 48) = v10;
  *(a1 + 56) = 0x3FF0000000000000;
  v11 = v8 < 1.0;
  v12 = v6 - a5;
  v13 = v8 * v6;
  v14 = (v13 - a5) / v10;
  if (v11)
  {
    v12 = v14;
  }

  *(a1 + 64) = v12;
  *(a1 + 72) = v10 + v13 * v12;
  v15 = -(v10 * v10 - v9 * v5);
  *(a1 + 80) = v13 - v12 * v10;
  *(a1 + 88) = v13 * (v10 + v10) + v15 * v12;
  result = v15 + v13 * -2.0 * v10 * v12;
  *(a1 + 96) = result;
  return result;
}

double sub_1006F7D10(double *a1, double a2)
{
  v4 = a1[5];
  if (v4 >= 1.0)
  {
    v5 = a1[7] + a1[8] * a2;
    v8 = exp(-(a2 * a1[4]));
  }

  else
  {
    v5 = exp(-(a2 * v4) * a1[4]);
    v6 = a1[7];
    v7 = __sincos_stret(a1[6] * a2);
    v8 = v7.__sinval * a1[8] + v7.__cosval * v6;
  }

  return v8 * v5;
}

void sub_1006F8294(double *a1, double a2)
{
  v4 = a1[5];
  if (v4 >= 1.0)
  {
    exp(-(a2 * a1[4]));
  }

  else
  {
    exp(-(a2 * v4) * a1[4]);
    __sincos_stret(a1[6] * a2);
  }
}

void sub_1006F98E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006F98FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1006F9914(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (a2)
  {
    if (v4)
    {
      return;
    }

    v8 = +[LoadingIndicatorController sharedController];
    v5 = [v8 beginShowingLoadingIndicator];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v4 = v8;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    *(v3 + 40) = 0;
  }
}

void sub_1006F99B0(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5 || ![v8 count])
  {
    [*(a1 + 40) setFailedToReverseGeocode:1];
  }

  else
  {
    v6 = [v8 firstObject];
    v7 = objc_opt_new();
    [*(a1 + 32) applyToPlaceInfo:v7];
    [*(a1 + 40) setPlaceInfo:v7];
    [*(a1 + 40) updateWithReverseGeocodedMapItem:v6];
  }

  CFDictionaryRemoveValue(*(*(a1 + 48) + 8), *(a1 + 40));
}

id sub_1006FAEE4(uint64_t a1, double a2)
{
  LODWORD(a2) = 1.0;
  [*(*(a1 + 32) + 208) setUpOpacityForFadeInAnimation:a2];
  v3 = *&CGAffineTransformIdentity.c;
  *&v6.a = *&CGAffineTransformIdentity.a;
  *&v6.c = v3;
  *&v6.tx = *&CGAffineTransformIdentity.tx;
  CGAffineTransformScale(&v7, &v6, 0.866, 0.866);
  v4 = *(*(a1 + 32) + 208);
  v6 = v7;
  return [v4 setTransform:&v6];
}

id sub_1006FDC88(id a1, id a2, unint64_t a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 historyEntry];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [HistoryEntryRecentsItem alloc];
    v10 = [v8 curatedCollection];
    v11 = [(HistoryEntryRecentsItem *)v9 initWithHistoryEntry:v10];
  }

  else
  {
    v11 = v3;
  }

  return v11;
}

HistoryEntryRecentsItem *sub_1006FDE00(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 historyEntry];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [*(*(a1 + 32) + 56) resolvedGEOPlaceCollectionForMapsSyncHistoryCuratedCollection:v8];
    v10 = v9;
    if (v9 && ([v9 isBlocked] & 1) == 0)
    {
      v12 = [[CuratedCollectionHistoryEntry alloc] initWithMapsSyncHistoryCuratedCollection:v8 placeCollection:v10];
      v11 = [[HistoryEntryRecentsItem alloc] initWithHistoryEntry:v12];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = v3;
  }

  return v11;
}

void sub_1006FE004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006FE028(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[6];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1006FE0E0;
    v7[3] = &unk_101661A90;
    v7[4] = WeakRetained;
    v8 = v3;
    dispatch_sync(v6, v7);
  }
}

id sub_1006FE0E0(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setHistoryQueryContents:v2];

  [*(a1 + 32) _combineRecents];
  v3 = *(*(a1 + 32) + 8);

  return [v3 recentsUpdated:?];
}

void sub_1006FE264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FE27C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1006FE294(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 historyEntry];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1006FE390;
    v10[3] = &unk_101638308;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v8;
    v13 = v9;
    v12 = v6;
    v14 = a4;
    [v7 ifSearch:0 ifRoute:0 ifPlaceDisplay:v10 ifTransitLineItem:0];
  }
}

void sub_1006FE390(uint64_t a1, void *a2)
{
  v3 = [a2 supersededSearchStorageIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
    **(a1 + 56) = 1;
  }
}

void sub_1006FE520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006FE538(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v10 historyEntry];
    v8 = [v7 storageIdentifier];
    v9 = [v8 isEqual:*(a1 + 32)];

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void sub_1006FE7B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006FE860;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_1006FE860(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_1006FECC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) historyEntry];
  v4 = [v3 storageIdentifier];
  v8 = [v2 _recentPlaceDisplayWithSupersededStorageIdentifier:v4];

  v5 = v8;
  if (v8)
  {
    v6 = *(a1 + 48);
    v7 = [v8 historyEntry];
    [v6 addObject:v7];

    v5 = v8;
  }
}

void sub_1006FED6C(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 supersededSearchStorageIdentifier];

  v4 = v10;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v10 supersededSearchStorageIdentifier];
    v7 = [v5 _recentWithIdentifier:v6];

    if (v7)
    {
      v8 = *(a1 + 40);
      v9 = [v7 historyEntry];
      [v8 addObject:v9];
    }

    v4 = v10;
  }
}

void sub_1006FEE24(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006FEED0;
  v6[3] = &unk_101661090;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_1006FF1CC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) contactID]);
  [v1 setObject:0 forKeyedSubscript:v2];
}

void sub_1006FF23C(uint64_t a1)
{
  v2 = [*(a1 + 32) systemRecents];
  v4 = [NSMutableArray arrayWithArray:v2];

  [v4 removeObject:*(a1 + 40)];
  v3 = [v4 copy];
  [*(a1 + 32) setSystemRecents:v3];

  [*(a1 + 32) _combineRecents];
}

id sub_1006FF2E0(id a1, HistoryEntryRecentsItem *a2, unint64_t a3)
{
  v3 = [(HistoryEntryRecentsItem *)a2 historyEntry];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

int64_t sub_1006FF33C(id a1, RecentsItem *a2, RecentsItem *a3)
{
  v4 = a3;
  [(RecentsItem *)a2 timestamp];
  v6 = v5;
  [(RecentsItem *)v4 timestamp];
  v8 = v7;

  v9 = vabdd_f64(v8, v6);
  v10 = -1;
  if (v6 < v8)
  {
    v10 = 1;
  }

  if (v9 >= 2.22044605e-16)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

void sub_1006FF5F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v29 = a3;
  v31 = +[NSMutableArray array];
  v6 = +[NSMutableSet set];
  v32 = objc_alloc_init(NSCountedSet);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v7)
  {
    v8 = *v52;
    v30 = 0;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v11 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 contactID]);
        [v6 addObject:v11];

        v12 = [v10 originalSource];
        v13 = v12;
        if (v12 && [v12 length] && objc_msgSend(*(a1 + 32), "indexOfObject:", v13) != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = [v32 countForObject:v13] > 2 || objc_msgSend(v31, "count") > 4;
          v15 = *(*(a1 + 40) + 40);
          v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v10 contactID]);
          v17 = [v15 indexOfObject:v16];

          if (v17 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v45 = 0;
            v46 = &v45;
            v47 = 0x3032000000;
            v48 = sub_1006FE27C;
            v49 = sub_1006FE28C;
            v50 = 0;
            v18 = *(a1 + 40);
            v38 = _NSConcreteStackBlock;
            v39 = 3221225472;
            v40 = sub_1006FFB20;
            v41 = &unk_101660778;
            v43 = v10;
            v44 = &v45;
            v42 = v18;
            geo_isolate_sync();
            v19 = v46[5];
            if (v19)
            {
              if (!v14)
              {
                v20 = [v19 _geoAddress];
                v21 = [v20 structuredAddress];

                v22 = [v21 fullThoroughfare];
                if ([v22 length])
                {
                  [v31 addObject:v10];
                  [v32 addObject:v13];
                }

LABEL_23:
              }
            }

            else
            {
              if (!v14)
              {
                [v31 addObject:v10];
                [v32 addObject:v13];
              }

              if (v30 <= 0xA && *(a1 + 64) == 1)
              {
                dispatch_group_enter(*(a1 + 48));
                v23 = +[MKMapService sharedService];
                v24 = [v10 address];
                v21 = [v23 ticketForCanonicalLocationSearchQueryString:v24 traits:0];

                v36[0] = _NSConcreteStackBlock;
                v36[1] = 3221225472;
                v36[2] = sub_1006FFBB0;
                v36[3] = &unk_101627160;
                v25 = *(a1 + 48);
                v36[4] = *(a1 + 40);
                v36[5] = v10;
                v37 = v25;
                [v21 submitWithHandler:v36 networkActivity:0];

                ++v30;
                goto LABEL_23;
              }
            }

            _Block_object_dispose(&v45, 8);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v51 objects:v55 count:16];
    }

    while (v7);
  }

  v26 = *(a1 + 56);
  if (v26)
  {
    (*(v26 + 16))(v26, v31);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006FFCE8;
  block[3] = &unk_101661A90;
  v27 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v35 = v6;
  v28 = v6;
  dispatch_group_notify(v27, &_dispatch_main_q, block);
}

void sub_1006FFB20(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) contactID]);
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_1006FFBB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v9 = [v5 objectAtIndexedSubscript:0];
    v7 = v9;
    geo_isolate_sync();

LABEL_5:
    goto LABEL_6;
  }

  if ([v6 code] == -8)
  {
    v8 = *(*(a1 + 32) + 40);
    v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) contactID]);
    [v8 addObject:v7];
    goto LABEL_5;
  }

LABEL_6:
  dispatch_group_leave(*(a1 + 48));
}

void sub_1006FFCE8(uint64_t a1)
{
  v5 = [NSMutableSet setWithArray:*(*(a1 + 32) + 40)];
  [v5 intersectSet:*(a1 + 40)];
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v5 allObjects];
  [v2 setObject:v3 forKey:@"RecentsNoResultCacheIdsKey"];

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 synchronize];
}

void sub_1006FFDA8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(*(a1 + 32) + 24);
  v3 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 40) contactID]);
  [v2 setObject:v1 forKeyedSubscript:v3];
}

void sub_1006FFF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1006FFF3C(void *a1)
{
  v2 = *(a1[4] + 24);
  v6 = [NSNumber numberWithLongLong:a1[6]];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100700294(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10195D018;
  qword_10195D018 = v1;

  [qword_10195D018 setTimeStyle:0];
  [qword_10195D018 setDateStyle:1];
  [qword_10195D018 setDoesRelativeDateFormatting:1];
  v3 = qword_10195D018;
  v4 = +[NSLocale autoupdatingCurrentLocale];
  [v3 setLocale:v4];

  [qword_10195D018 setFormattingContext:1];
  v5 = objc_alloc_init(NSDateFormatter);
  v6 = qword_10195D020;
  qword_10195D020 = v5;

  [qword_10195D020 setTimeStyle:1];
  [qword_10195D020 setDateStyle:0];
  v7 = qword_10195D020;
  v8 = +[NSLocale autoupdatingCurrentLocale];
  [v7 setLocale:v8];

  v9 = qword_10195D020;

  [v9 setFormattingContext:1];
}

void sub_100701954(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performDismissal];
}

void sub_1007033E0(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007034A4;
  block[3] = &unk_1016605F8;
  v5 = a2;
  v7 = *(a1 + 40);
  v6 = *(a1 + 32);
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1007034A4(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    return (*(v3 + 16))(v3, v2, 0);
  }

  else
  {
    return (*(v3 + 16))(v3, 0, a1[5]);
  }
}

void sub_100703698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007036BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = a2;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v10 || !v7)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      [WeakRetained _loadCompanyLogoForSize:v7 authorError:*(a1 + 32) completion:{*(a1 + 48), *(a1 + 56)}];
    }
  }
}

void sub_1007038AC(id a1)
{
  v1 = objc_alloc_init(NSRelativeDateTimeFormatter);
  v2 = qword_10195D030;
  qword_10195D030 = v1;

  v3 = +[NSLocale autoupdatingCurrentLocale];
  [qword_10195D030 setLocale:v3];

  v4 = qword_10195D030;

  [v4 setDateTimeStyle:1];
}

void sub_100703A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100703A90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100703AA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if ([v8 hasUserReviewed])
        {
          v9 = -[UGCReviewedPlace initWithMUID:]([UGCReviewedPlace alloc], "initWithMUID:", [v8 muid]);
          -[UGCReviewedPlace setVersion:](v9, "setVersion:", [v8 version]);
          if ([v8 version] >= 1)
          {
            v10 = [v8 modificationTime];
            [(UGCReviewedPlace *)v9 setDateOfLastEdit:v10];

            v11 = [v8 rating];
            -[UGCReviewedPlace setRecommendState:](v9, "setRecommendState:", [v11 integerValue]);

            -[UGCReviewedPlace setNumberOfPhotosAdded:](v9, "setNumberOfPhotosAdded:", [v8 uploadedPhotosCount]);
            if ([(UGCReviewedPlace *)v9 numberOfPhotosAdded])
            {
              [*(*(*(a1 + 40) + 8) + 40) addObject:v9];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100703CE4;
    v15[3] = &unk_10165F5A0;
    v13 = v12;
    v14 = *(a1 + 40);
    v16 = v13;
    v17 = v14;
    dispatch_async(&_dispatch_main_q, v15);
  }
}

void sub_100703CE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_100703E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100703E70(uint64_t a1, void *a2)
{
  v3 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([v9 hasUserReviewed])
        {
          v10 = [v9 uploadedPhotosCount];
          v11 = -[UGCReviewedPlace initWithMUID:]([UGCReviewedPlace alloc], "initWithMUID:", [v9 muid]);
          -[UGCReviewedPlace setVersion:](v11, "setVersion:", [v9 version]);
          if ([v9 version] >= 1)
          {
            v12 = [v9 modificationTime];
            [(UGCReviewedPlace *)v11 setDateOfLastEdit:v12];

            v13 = [v9 rating];
            -[UGCReviewedPlace setRecommendState:](v11, "setRecommendState:", [v13 integerValue]);

            -[UGCReviewedPlace setNumberOfPhotosAdded:](v11, "setNumberOfPhotosAdded:", [v9 uploadedPhotosCount]);
            [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
          }

          v6 = v10 + v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v14 = [*(*(*(a1 + 40) + 8) + 40) count];
  v15 = +[GEOAPSharedStateData sharedData];
  [v15 setMapFeatureSubmittedRatingsCount:v14];

  v16 = +[GEOAPSharedStateData sharedData];
  [v16 setMapFeatureSubmittedPhotosCount:v6];

  v17 = *(a1 + 32);
  if (v17)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10070410C;
    v20[3] = &unk_10165F5A0;
    v18 = v17;
    v19 = *(a1 + 40);
    v21 = v18;
    v22 = v19;
    dispatch_async(&_dispatch_main_q, v20);
  }
}

void sub_10070410C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_100704214(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1007042C4;
    v5[3] = &unk_101661090;
    v7 = v4;
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_1007043B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007043D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v7 = *(WeakRetained + 1);
      v8 = *(a1 + 48);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100704530;
      v9[3] = &unk_1016610B8;
      v10 = *(a1 + 32);
      [v7 removeReviewedPlaceWithMUID:v8 completion:v9];
    }

    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10070451C;
    block[3] = &unk_101661090;
    v13 = v4;
    v12 = v3;
    dispatch_async(&_dispatch_main_q, block);

    v5 = v13;
LABEL_6:
  }
}

void sub_100704530(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007045BC;
    block[3] = &unk_101661760;
    v3 = v1;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1007046EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100704708(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = *(WeakRetained + 1);
      v9 = [v5 originallySavedMUID];
      v10 = [v5 muid];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100704898;
      v12[3] = &unk_101627418;
      v13 = v5;
      v14 = *(a1 + 32);
      v15 = a2;
      [v8 fetchWithMUID:v9 andReplaceIfNeededWithNewMUID:v10 completion:v12];
    }

    goto LABEL_6;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10070487C;
    block[3] = &unk_1016610E0;
    v17 = v11;
    v18 = a2;
    dispatch_async(&_dispatch_main_q, block);
    v7 = v17;
LABEL_6:
  }
}

void sub_100704898(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    [*(a1 + 32) setNumberOfPhotosAdded:{objc_msgSend(v5, "numberOfPhotosAdded")}];
    [*(a1 + 32) setRecommendState:{objc_msgSend(v6, "recommendState")}];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10070498C;
    block[3] = &unk_101661678;
    v10 = v7;
    v11 = *(a1 + 48);
    v9 = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

id sub_1007049A4(id a1, GEOMapItemIdentifier *a2, unint64_t a3)
{
  v3 = [(GEOMapItemIdentifier *)a2 muid];

  return [NSNumber numberWithUnsignedLongLong:v3];
}

void sub_100704AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100704B00(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v7 = *(WeakRetained + 1);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100704C58;
      v9[3] = &unk_1016610B8;
      v8 = *(a1 + 32);
      v10 = *(a1 + 40);
      [v7 addOrEditReviewedPlace:v8 completion:v9];
    }

    goto LABEL_6;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100704C44;
    block[3] = &unk_101661090;
    v13 = v4;
    v12 = v3;
    dispatch_async(&_dispatch_main_q, block);

    v5 = v13;
LABEL_6:
  }
}

void sub_100704C58(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100704CE4;
    block[3] = &unk_101661760;
    v3 = v1;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100704E20(id a1)
{
  v4 = +[UGCReviewedPlaceMapsSync sharedInstance];
  v1 = objc_alloc_init(UGCReviewedPlaceCache);
  v2 = [[UGCReviewedPlaceManager alloc] initWithSyncedCache:v4 localCache:v1];
  v3 = qword_10195D038;
  qword_10195D038 = v2;
}

void sub_100705508(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[5] setAutomobileOptions:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100705560(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _updateTitlesForEntry:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void sub_100705718(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[5] hintRefreshOfType:1];
    WeakRetained = v2;
  }
}

void sub_100705904(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _saveMapsSuggestionsEngineStateIfNeeded];
    WeakRetained = v2;
  }
}

void sub_100706660(uint64_t a1)
{
  v2 = dispatch_group_create();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(obj);
        }

        dispatch_group_enter(v2);
        v7 = v2;
        if ((GEOMapItemFromMapsSuggestionsEntry() & 1) == 0)
        {
          dispatch_group_leave(v7);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = dispatch_time(0, 5000000000);
  dispatch_group_wait(v2, v8);
}

void sub_100706A88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained attached];
    v2 = v4;
    if (v3)
    {
      *(v4 + 83) = 0;
      [v4 _stopObservingAutoOptions];
      [v4[5] detachSink:v4];
      v2 = v4;
    }
  }
}

void sub_100706C94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained attached] & 1) == 0)
  {
    if (v3[5])
    {
      [v3 attachAndFetchFromStorageFile:0];
    }

    else
    {
      v4[0] = _NSConcreteStackBlock;
      v4[1] = 3221225472;
      v4[2] = sub_100706D7C;
      v4[3] = &unk_1016274F0;
      objc_copyWeak(&v5, (a1 + 32));
      v6 = 1;
      [v3 _createMapsSuggestionEngineWithCallBack:v4];
      objc_destroyWeak(&v5);
    }
  }
}

void sub_100706D7C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v7 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = WeakRetained;
    if (WeakRetained)
    {
      objc_storeStrong(WeakRetained + 5, a2);
      [v6 attachAndFetchFromStorageFile:*(a1 + 40)];
    }

    v4 = v7;
  }
}

void sub_100707318(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10070733C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100707354(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000410AC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [*(a1 + 32) strippedData:v5];
    v13 = 138412802;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ fetchSuggestions [Suggestions]  %@ error %@", &v13, 0x20u);
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
}

void sub_100707478(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000410AC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [*(a1 + 32) strippedData:v5];
    v13 = 138412802;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ fetchSuggestions [Shortcuts]  %@ error %@", &v13, 0x20u);
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
}

void sub_10070759C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [*(*(*(a1 + 40) + 8) + 40) isEqual:*(WeakRetained + 13)];
    v4 = [*(*(*(a1 + 48) + 8) + 40) isEqual:*(WeakRetained + 14)];
    if ((v3 & 1) == 0)
    {
      v5 = sub_100707838(*(*(*(a1 + 40) + 8) + 40));
      v6 = *(WeakRetained + 13);
      *(WeakRetained + 13) = v5;

      [WeakRetained _updateObservedSuggestionsWithSuggestions:*(*(*(a1 + 40) + 8) + 40)];
      if ((*(a1 + 72) & 1) == 0)
      {
        [WeakRetained _setNeedsSaveMapsSuggestionsEngineState];
        [WeakRetained _updateAppConnectionSuggestionsEntriesIfNeeded:*(*(*(a1 + 40) + 8) + 40)];
      }
    }

    v7 = v3 ^ 1;
    v8 = v4 ^ 1;
    if ((v4 & 1) == 0)
    {
      v9 = sub_100707838(*(*(*(a1 + 48) + 8) + 40));
      v10 = *(WeakRetained + 14);
      *(WeakRetained + 14) = v9;

      [WeakRetained _updateObservedShortcutsWithShortcuts:*(*(*(a1 + 48) + 8) + 40)];
      if ((*(a1 + 72) & 1) == 0)
      {
        [WeakRetained _setNeedsSaveMapsSuggestionsEngineState];
      }
    }

    v11 = sub_1000410AC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      NSStringFromClass(v12);
      v13 = v22 = v3 ^ 1;
      NSStringFromSelector(*(a1 + 64));
      v14 = v21 = v4 ^ 1;
      if (*(a1 + 73))
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      v16 = v15;
      if (v3)
      {
        v17 = @"NO";
      }

      else
      {
        v17 = @"YES";
      }

      v18 = v17;
      if (v4)
      {
        v19 = @"NO";
      }

      else
      {
        v19 = @"YES";
      }

      v20 = v19;
      *buf = 138413314;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ %@, hasInitialDataChanged = %@, suggestionsChanged = %@, shortcutsChanged = %@", buf, 0x34u);

      v8 = v21;
      v7 = v22;
    }

    if ((*(a1 + 73) | v7 | v8))
    {
      [*(WeakRetained + 15) setSuggestions:*(a1 + 32)];
      [HomeAnalyticsManager captureStateWithShortcuts:*(WeakRetained + 14)];
      [*(WeakRetained + 2) homeDataProvidingObjectDidUpdate:WeakRetained];
    }
  }
}

id sub_100707838(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
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

        v8 = [*(*(&v11 + 1) + 8 * i) copy];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

void sub_100707A9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100707AB8(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processTopSuggestions:v9 error:v5 wasFromStorageFile:0];
    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))();
    }
  }
}

void sub_100707B50(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _processTopSuggestions:v8 error:v5 wasFromStorageFile:1];
  }
}

void sub_100707EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100707ECC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _fetchSuggestionsWithCompletion:v7];
  }
}

BOOL sub_100707F30(id a1, MapsSuggestionsEntry *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MapsSuggestionsOfflineService);
  v4 = [(MapsSuggestionsOfflineService *)v3 shouldKeepEntryWhenOffline:v2];

  return v4;
}

void sub_1007080EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _scheduleFetch];
    WeakRetained = v2;
  }
}

void sub_10070C064(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v5 = a2;
  v4 = [*(a1 + 32) iosChromeViewController];
  [v4 setNeedsUpdateComponent:@"cards" animated:1];

  (*(*(a1 + 48) + 16))();
}

void sub_10070C838(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10070C854(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained mapSelectionManager];
  v2 = [v1 mapView];
  [v2 _deselectLabelMarkerAnimated:1];
}

void sub_10070D27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10070D2A0(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (!a2)
    {
      goto LABEL_6;
    }

    v5 = *(a1 + 48);
    if (v5 > 7)
    {
      goto LABEL_6;
    }

    if (((1 << v5) & 0x67) != 0)
    {
      if (a2 == 3)
      {
LABEL_6:
        v6 = sub_100798408();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          if ((a2 - 1) > 4)
          {
            v7 = @"Undefined";
          }

          else
          {
            v7 = *(&off_1016276B0 + a2 - 1);
          }

          v12 = 138543362;
          v13 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "default transport type %{public}@ isn't compatible", &v12, 0xCu);
        }

        v8 = *(a1 + 48);
        if (v8 == 3)
        {
          v9 = 3;
        }

        else
        {
          v9 = 1;
        }

        if (v8 == -1)
        {
          a2 = 0;
        }

        else
        {
          a2 = v9;
        }

LABEL_29:
        [WeakRetained[14] setTransportType:a2];
        [*(a1 + 32) updateTransportType:a2];
        goto LABEL_30;
      }
    }

    else if (v5 == 3)
    {
      if (a2 != 3)
      {
        goto LABEL_6;
      }
    }

    else if (v5 != 7 || a2 != 1 && a2 != 4)
    {
      goto LABEL_6;
    }

    v10 = sub_100798408();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if ((a2 - 2) > 3)
      {
        v11 = @"Drive";
      }

      else
      {
        v11 = *(&off_101627690 + a2 - 2);
      }

      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "default transport type is %{public}@", &v12, 0xCu);
    }

    goto LABEL_29;
  }

LABEL_30:
}

void sub_10070E040(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10070E14C;
  block[3] = &unk_10162EC40;
  objc_copyWeak(v12, &location);
  v8 = *(a1 + 40);
  v9 = v3;
  v10 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v11 = v4;
  v12[1] = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void sub_10070E14C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _filteredFeaturesFromTransitSystems:*(a1 + 32) allFeatures:*(a1 + 40)];
    v5 = objc_alloc_init(PKPaymentSetupRequest);
    [v5 setConfiguration:*(a1 + 48)];
    [v5 setPaymentSetupFeatures:v4];
    v6 = [[PKPaymentSetupViewController alloc] initWithPaymentSetupRequest:v5];
    [v6 setPresentationStyle:2];
    [v6 setDelegate:*(a1 + 56)];
    v7 = sub_10003D020();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 72);
      v10 = v8;
      v11 = NSStringFromSelector(v9);
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ %@: showing Wallet DCI View Controller", &v13, 0x16u);
    }

    v12 = [v3 chromeViewController];
    [v12 _maps_topMostPresentViewController:v6 animated:1 completion:0];
  }
}

id sub_10070EA24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 _maps_lastContextOfClass:objc_opt_class()];
  v6 = v5;
  if (v5)
  {
    [v5 updateConfiguration:*(a1 + 32)];
    v7 = v4;
  }

  else
  {
    v8 = [[_TtC4Maps16PlaceCardContext alloc] initWithConfiguration:*(a1 + 32)];
    v7 = [v4 arrayByAddingObject:v8];
  }

  return v7;
}

id sub_10070EF64(uint64_t a1)
{
  [*(a1 + 32) _setApplicationState:0];
  [*(*(a1 + 40) + 24) clearMapState:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 24);
  v3 = *(a1 + 48);

  return [v2 restoreOriginalMapViewMode:v3];
}

id sub_10070EFBC(uint64_t a1)
{
  [*(*(a1 + 32) + 24) setSearchPinsManager:0];
  [*(*(a1 + 32) + 24) setMapCameraController:0];
  [*(*(a1 + 32) + 24) setRouteAnnotationsController:0];
  v2 = *(*(a1 + 32) + 16);

  return [v2 stop];
}

void sub_10070F10C(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"RoutePlanningPresentedDidChangeNotification" object:*(a1 + 32)];
}

id sub_10070F308(uint64_t a1)
{
  if ([*(a1 + 32) hasSelection])
  {
    [*(a1 + 32) suspendUpdates];
    [*(a1 + 32) clearSelection];
    [*(a1 + 32) resumeUpdates];
  }

  v2 = *(a1 + 40);

  return [v2 _setApplicationState:1];
}

void sub_10070F364(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"RoutePlanningPresentedDidChangeNotification" object:*(a1 + 32)];
}

id sub_10070F4E0(uint64_t a1)
{
  v2 = [*(a1 + 32) iosBasedChromeViewController];
  *(*(a1 + 32) + 160) = [v2 displayedViewMode];

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"_carPlayWantsToDisplayEVOnboarding:" name:@"EVOnboardingCarPlayHintSelectedNotification" object:0];

  v4 = *(a1 + 32);

  return [v4 _performInitialLoadIfNeeded];
}

void sub_1007100FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100710114(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10071012C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 40) items];
    v5 = [v4 mutableCopy];

    v6 = *(a1 + 64);
    if (v6 <= 1)
    {
      if (!v6)
      {
LABEL_15:

        goto LABEL_16;
      }

      if (v6 == 1)
      {
        [v5 insertObject:v3 atIndex:0];
      }
    }

    else if ((v6 - 2) >= 2)
    {
      if (v6 == 4)
      {
        if ([v5 count] && (v8 = *(a1 + 72), v8 < objc_msgSend(v5, "count")))
        {
          [v5 replaceObjectAtIndex:*(a1 + 72) withObject:v3];
        }

        else
        {
          [v5 addObject:v3];
        }
      }
    }

    else
    {
      v7 = [*(a1 + 40) items];
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_1007102F4;
      v14 = &unk_10162E9E8;
      v15 = v5;
      v16 = v3;
      [v7 enumerateObjectsUsingBlock:&v11];
    }

    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) copyWithItems:{v5, v11, v12, v13, v14}];
    [v9 setDirectionItem:v10 allowToPromptEditing:1 userInfo:*(a1 + 48)];

    goto LABEL_15;
  }

  [*(a1 + 32) containeeViewControllerGoToPreviousState:*(*(*(a1 + 56) + 8) + 40) withSender:0];
LABEL_16:
}

void sub_1007102F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 searchResult];
  v6 = [v5 isDynamicCurrentLocation];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    [v7 replaceObjectAtIndex:a3 withObject:v8];
  }
}

void sub_1007106A8(uint64_t a1)
{
  v5 = [*(a1 + 32) mutableCopy];
  [v5 setObject:&__kCFBooleanTrue forKey:@"DirectionsAllowApproximateCurrentLocation"];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [v5 copy];
  [v3 setDirectionItem:v2 allowToPromptEditing:1 userInfo:v4];
}

void sub_100710734(uint64_t a1)
{
  v5 = [*(a1 + 32) mutableCopy];
  [v5 setObject:&__kCFBooleanFalse forKey:@"DirectionsAllowApproximateCurrentLocation"];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [v5 copy];
  [v3 setDirectionItem:v2 allowToPromptEditing:1 userInfo:v4];
}

void sub_100711370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007113A8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    v6 = *(a1 + 32);
    v7 = a3 - 1;
    v8 = a2;
    v9 = [v6 objectAtIndexedSubscript:v7];
    LOBYTE(v6) = [v8 isEquivalentAsWaypointToSearchFieldItem:?];

    if ((v6 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

id sub_100711A14(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = objc_alloc_init(UIStackView);
  [v7 setAxis:0];
  [v7 setAlignment:0];
  v8 = [UIFont monospacedDigitSystemFontOfSize:12.0 weight:UIFontWeightBold];
  v9 = objc_alloc_init(UILabel);
  v10 = [NSString stringWithFormat:@"%llu", a1];
  [v9 setText:v10];

  v11 = [UIColor colorWithWhite:0.9 alpha:1.0];
  [v9 setBackgroundColor:v11];

  [v9 setFont:v8];
  v12 = sub_100711E64(v9, 1, 0);
  [v7 addArrangedSubview:v12];

  v13 = objc_alloc_init(UILabel);
  v14 = [NSString stringWithFormat:@"%llu", a2];
  [v13 setText:v14];

  v15 = +[UIColor systemGreenColor];
  [v13 setBackgroundColor:v15];

  [v13 setFont:v8];
  [v13 sizeToFit];
  v16 = sub_100711E64(v13, 0, 0);
  [v7 addArrangedSubview:v16];

  v17 = objc_alloc_init(UILabel);
  v18 = [NSString stringWithFormat:@"%llu", a3];
  [v17 setText:v18];

  v19 = +[UIColor systemRedColor];
  [v17 setBackgroundColor:v19];

  [v17 setFont:v8];
  [v17 sizeToFit];
  v20 = sub_100711E64(v17, 0, 1);
  [v7 addArrangedSubview:v20];

  if (a4)
  {
    v21 = [UIImageView alloc];
    v22 = [UIImage kitImageNamed:@"UITableNext"];
    v23 = [v22 imageWithRenderingMode:2];
    v24 = [v21 initWithImage:v23];

    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = +[UIColor tertiaryLabelColor];
    [v24 setTintColor:v25];

    v26 = objc_alloc_init(UIView);
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v26 addSubview:v24];
    v27 = [v24 centerYAnchor];
    v28 = [v26 centerYAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v29 setActive:1];

    v30 = [v24 leadingAnchor];
    v31 = [v26 leadingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:4.0];
    [v32 setActive:1];

    v33 = [v24 trailingAnchor];
    v34 = [v26 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];
    [v35 setActive:1];

    [v7 addArrangedSubview:v26];
  }

  [v7 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  [v7 setBounds:{0.0, 0.0, v36, v37}];

  return v7;
}

id sub_100711E64(void *a1, int a2, int a3)
{
  v5 = a1;
  [v5 sizeToFit];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1148829696;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = objc_alloc_init(UIView);
  v8 = [v5 backgroundColor];
  [v7 setBackgroundColor:v8];

  v9 = +[UIColor clearColor];
  [v5 setBackgroundColor:v9];

  [v7 addSubview:v5];
  v10 = [v5 topAnchor];
  v11 = [v7 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:8.0];
  [v12 setActive:1];

  v13 = [v5 bottomAnchor];
  v14 = [v7 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-8.0];
  [v15 setActive:1];

  v16 = [v5 leftAnchor];
  v17 = [v7 leftAnchor];
  v18 = 12.0;
  if (!a2)
  {
    v18 = 8.0;
  }

  v19 = [v16 constraintEqualToAnchor:v17 constant:v18];
  [v19 setActive:1];

  v20 = [v5 rightAnchor];

  v21 = [v7 rightAnchor];
  v22 = -12.0;
  if (!a3)
  {
    v22 = -8.0;
  }

  v23 = [v20 constraintEqualToAnchor:v21 constant:v22];
  [v23 setActive:1];

  LODWORD(v24) = 1144750080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v24];
  LODWORD(v25) = 1148829696;
  [v7 setContentCompressionResistancePriority:0 forAxis:v25];
  if ((a2 & 1) != 0 || a3)
  {
    v26 = [v7 layer];
    [v26 setCornerRadius:16.0];

    v27 = 5;
    if (!a2)
    {
      v27 = 0;
    }

    if (a3)
    {
      v28 = v27 | 0xA;
    }

    else
    {
      v28 = v27;
    }

    v29 = [v7 layer];
    [v29 setMaskedCorners:v28];
  }

  return v7;
}

void sub_10071275C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100712780(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100712858;
  block[3] = &unk_101661480;
  v9 = a3;
  v6 = v9;
  objc_copyWeak(&v11, (a1 + 32));
  v10 = v5;
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v11);
}

void sub_100712858(uint64_t a1)
{
  if (*(a1 + 32))
  {
    NSLog(@"Can't retrieve CDS diagnostics : %@", *(a1 + 32));
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v25 = WeakRetained;
      v28 = +[NSMutableArray array];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = *(a1 + 40);
      v29 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v29)
      {
        v27 = *v39;
        do
        {
          v4 = 0;
          do
          {
            if (*v39 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v5 = *(*(&v38 + 1) + 8 * v4);
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v30 = v5;
            v32 = [v5 policies];
            v6 = [v32 countByEnumeratingWithState:&v34 objects:v42 count:16];
            v31 = v4;
            if (v6)
            {
              v7 = v6;
              v8 = 0;
              v9 = 0;
              v10 = 0;
              v11 = 0;
              v12 = 0;
              v33 = *v35;
              do
              {
                for (i = 0; i != v7; i = i + 1)
                {
                  if (*v35 != v33)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v14 = *(*(&v34 + 1) + 8 * i);
                  v15 = [v14 startTimestamp];
                  v16 = v15;
                  if (v12)
                  {
                    v17 = [v12 earlierDate:v15];

                    v12 = v17;
                  }

                  else
                  {
                    v12 = v15;
                  }

                  v18 = [v14 endTimestamp];
                  v19 = v18;
                  if (v8)
                  {
                    v20 = [v8 laterDate:v18];

                    v8 = v20;
                  }

                  else
                  {
                    v8 = v18;
                  }

                  v9 += [v14 tilesConsidered];
                  v10 += [v14 successCount];
                  v11 += [v14 failureCount];
                }

                v7 = [v32 countByEnumeratingWithState:&v34 objects:v42 count:16];
              }

              while (v7);
            }

            else
            {
              v8 = 0;
              v9 = 0;
              v10 = 0;
              v11 = 0;
              v12 = 0;
            }

            v21 = objc_alloc_init(_CellDataSaverRun);
            [(_CellDataSaverRun *)v21 setStartDate:v12];
            [(_CellDataSaverRun *)v21 setEndDate:v8];
            [(_CellDataSaverRun *)v21 setTotalTiles:v9];
            [(_CellDataSaverRun *)v21 setSuccessCount:v10];
            [(_CellDataSaverRun *)v21 setFailureCount:v11];
            v22 = [v30 policies];
            [(_CellDataSaverRun *)v21 setPolicyStatistics:v22];

            [v28 addObject:v21];
            v4 = v31 + 1;
          }

          while ((v31 + 1) != v29);
          v29 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v29);
      }

      [v28 sortUsingComparator:&stru_1016276F8];
      v3 = v25;
      v23 = v25[1];
      v25[1] = v28;

      v24 = [v25 tableView];
      [v24 reloadData];
    }
  }
}

int64_t sub_100712BD8(id a1, _CellDataSaverRun *a2, _CellDataSaverRun *a3)
{
  v4 = a2;
  v5 = [(_CellDataSaverRun *)a3 startDate];
  v6 = [(_CellDataSaverRun *)v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_1007135D4(uint64_t a1)
{
  v2 = [*(a1 + 32) trafficIncidentViewController];
  [v2 setRerouteTimerProgress:1.0];

  v4 = [*(a1 + 32) trafficIncidentViewController];
  v3 = [v4 view];
  [v3 layoutIfNeeded];
}

void sub_100713650(uint64_t a1, char a2)
{
  v3 = 1.0;
  if ((a2 & 1) == 0)
  {
    v3 = 0.0;
    if ([*(a1 + 32) _hasValidRerouteTimer])
    {
      [*(a1 + 32) _timeoutTimerProgress];
      v3 = v4;
    }
  }

  v5 = [*(a1 + 32) trafficIncidentViewController];
  [v5 setRerouteTimerProgress:v3];
}

id sub_100713A00()
{
  if (qword_10195D050 != -1)
  {
    dispatch_once(&qword_10195D050, &stru_101627730);
  }

  v1 = qword_10195D048;

  return v1;
}

void sub_100713A54(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavTrafficIncidentCoordinator");
  v2 = qword_10195D048;
  qword_10195D048 = v1;
}

void sub_1007144BC(uint64_t a1)
{
  v2 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"_dismissTrafficAlertWithTimer:" selector:*(a1 + 40) userInfo:0 repeats:*(a1 + 48)];
  [*(a1 + 32) setTimeoutTimer:v2];

  v3 = [*(a1 + 32) trafficIncidentViewController];
  v4 = [v3 progressionHidden];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) trafficIncidentViewController];
    [v5 setRerouteTimerProgress:1.0];

    v6 = [*(a1 + 32) trafficIncidentViewController];
    [v6 setAnimationDuration:*(a1 + 48)];

    v7 = [*(a1 + 32) trafficIncidentViewController];
    [v7 setAnimationStarted:1];
  }
}

void sub_100714824(uint64_t a1)
{
  v9 = [*(a1 + 32) presentedAlert];
  v2 = [v9 originalRoute];
  if ([v2 isEVRoute])
  {
    v3 = [*(a1 + 32) presentedAlert];
    v4 = [v3 originalRouteNavigability];
    v5 = [v4 isEvFeasible];

    if (v5)
    {
      return;
    }

    v6 = *(a1 + 40);
    v7 = +[MKMapService sharedService];
    v9 = v7;
    if (v6 == 1)
    {
      v8 = 6095;
    }

    else
    {
      v8 = 75;
    }

    [v7 captureUserAction:v8 onTarget:615 eventValue:0];
  }

  else
  {
  }
}

void sub_100714F48(id a1)
{
  v1 = objc_alloc_init(UserProfileLinkReportsProvider);
  v2 = qword_10195D058;
  qword_10195D058 = v1;
}

void sub_10071CF3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10071CF64(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && *(a1 + 40) == *(WeakRetained + 22))
  {
    [WeakRetained[6] setClipsToBounds:a3];
    [v6 _updateImage:v7];
  }
}

void sub_10071D270(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[UIColor systemFillColor];
  [v4 setFill];

  v5 = [v3 CGContext];
  v6 = [v3 format];
  [v6 bounds];
  CGContextFillEllipseInRect(v5, v10);

  v7 = *(a1 + 32);
  v8 = [v3 format];

  [v8 bounds];
  [v7 drawInRect:?];
}

void sub_10071D870(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v9 = [NSAttributedString attributedStringWithAttachment:*(*(a1 + 32) + 72)];
    [*(a1 + 40) replaceCharactersInRange:a3 withAttributedString:{a4, v9}];
  }
}

void sub_10071FCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10071FCF8(uint64_t a1, int a2)
{
  if (!a2 || (*(a1 + 64) & 1) != 0)
  {
    v5 = [UIAlertController alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:1];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"OK [Report a Problem push]" value:@"localized string not found" table:0];
    v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];
    [v5 addAction:v8];

    if (*(a1 + 65) == 1)
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 localizedStringForKey:@"Show [Report a Problem push]" value:@"localized string not found" table:0];
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1007201A8;
      v15 = &unk_1016383E0;
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:&v12];
      [v5 addAction:{v11, v12, v13, v14, v15}];
    }

    [*(a1 + 56) presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);

    [v3 displayAdditionalUIOnViewController:v4];
  }
}

void sub_10071FEF8(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if (v3)
  {
    v10 = v3;
    v4 = [*(a1 + 32) coordinator];
    [v4 viewController:*(a1 + 40) presentReportDetail:v10 fromEntryPoint:713];

    v5 = [v10 rapResponse];
    v6 = +[GEORPRapResponse RapStateIconAsString:](GEORPRapResponse, "RapStateIconAsString:", [v5 rapStateIcon]);

    v7 = [v10 reportID];
    v8 = [v10 rapResponse];
    v9 = [v8 responseId];
    [RAPNotificationLogEvent reportUserTappedNotificationWithRapId:v7 responseId:v9 notificationType:v6 completion:&stru_1016277E0];

    v3 = v10;
  }
}

void sub_100720010(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    if (v6)
    {
      [WeakRetained _showRAPForMapItem:v6 inContext:v5];
    }

    else
    {
      [WeakRetained _showErrorMessageinContext:v5];
    }
  }
}

void sub_100720090(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    if (qword_10195D070 != -1)
    {
      dispatch_once(&qword_10195D070, &stru_101627828);
    }

    v3 = qword_10195D068;
    if (os_log_type_enabled(qword_10195D068, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Fail to send user tapped RAP notification logEvent with error: %@", &v4, 0xCu);
    }
  }
}

void sub_100720164(id a1)
{
  v1 = os_log_create("com.apple.Maps", "PresentRAPActionHandler");
  v2 = qword_10195D068;
  qword_10195D068 = v1;
}

void sub_100720940(id a1, id a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = sub_100038318();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Sending Map Coordinate to WebBundle Error: %@", &v5, 0xCu);
    }
  }
}

void sub_1007212D0(uint64_t a1)
{
  [*(a1 + 40) opacity];
  v3 = v2;
  v4 = [*(a1 + 32) view];
  [v4 setAlpha:v3];

  v5 = [*(a1 + 32) view];
  [v5 layoutIfNeeded];
}

void sub_100721FA4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_100721FCC(uint64_t a1, uint64_t a2)
{
  objc_copyWeak(&to, (a1 + 32));
  v3 = objc_loadWeakRetained(&to);

  if (!v3)
  {
    v4 = 0;
    goto LABEL_19;
  }

  v4 = [_UIBackgroundViewConfiguration defaultPlainListCellConfigurationForState:a2];
  v5 = objc_loadWeakRetained(&to);
  v6 = [v5 isSelected];

  v7 = objc_loadWeakRetained(&to);
  if ([v7 isHighlighted])
  {
    v8 = 0;
  }

  else
  {
    v9 = objc_loadWeakRetained(&to);
    v10 = [v9 isFocused];

    v8 = v10 ^ 1;
  }

  v11 = objc_loadWeakRetained(&to);
  v12 = [v11 traitCollection];
  v13 = [v12 activeAppearance];

  if (v6 && v13 == 1)
  {
    v14 = 1;
  }

  else
  {
    if (v13 == 1)
    {
      v15 = v8;
    }

    else
    {
      v15 = 1;
    }

    if (v15 != 1)
    {
      v14 = 7;
      goto LABEL_17;
    }

    if (v13 == 1)
    {
      v17 = objc_loadWeakRetained(&to);
      v18 = [v17 maps_suppressBackgroundColors];

      if (v18)
      {
        v14 = 3;
      }

      else
      {
        v14 = 8;
      }

      if (v6 & 1 | ((v18 & 1) == 0))
      {
        goto LABEL_17;
      }
    }

    else if (v6)
    {
      v14 = 3;
      goto LABEL_17;
    }

    v19 = objc_loadWeakRetained(&to);
    v20 = [v19 maps_suppressBackgroundColors];

    if (v20)
    {
      [v4 setBackgroundColorMode:0];
      v21 = +[UIColor clearColor];
      [v4 setBackgroundColor:v21];

      goto LABEL_18;
    }

    v14 = 9;
  }

LABEL_17:
  [v4 setBackgroundColorMode:v14];
LABEL_18:
  [v4 setCornerRadius:5.0];
LABEL_19:
  objc_destroyWeak(&to);

  return v4;
}

id sub_1007221D8(uint64_t a1, unint64_t a2)
{
  v4 = [_UIBackgroundViewConfiguration defaultPlainListCellConfigurationForState:a2];
  v5 = a2 & 9;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained conformsToProtocol:&OBJC_PROTOCOL___TransitDirectionsCell];

  v8 = (a2 >> 2) & 1;
  if (v7)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    if ([v9 navigationState] == 4)
    {
      LODWORD(v8) = 1;
    }
  }

  if (v5 || v8)
  {
    [v4 setBackgroundColorMode:9];
  }

  else
  {
    [v4 setBackgroundColorMode:0];
    v10 = +[UIColor clearColor];
    [v4 setBackgroundColor:v10];
  }

  return v4;
}

void sub_100722380(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_10072239C(uint64_t a1, uint64_t a2)
{
  objc_copyWeak(&to, (a1 + 32));
  v3 = objc_loadWeakRetained(&to);

  if (!v3)
  {
    v4 = 0;
    goto LABEL_9;
  }

  v4 = [_UIBackgroundViewConfiguration defaultPlainListCellConfigurationForState:a2];
  [v4 setBackgroundColorMode:0];
  v5 = objc_loadWeakRetained(&to);
  if ([v5 isSelected])
  {
  }

  else
  {
    v6 = objc_loadWeakRetained(&to);
    v7 = [v6 isHighlighted];

    if (!v7)
    {
      v8 = [UIColor colorWithWhite:0.0 alpha:0.0500000007];
      [v4 setBackgroundColor:v8];
      goto LABEL_8;
    }
  }

  v8 = objc_loadWeakRetained(&to);
  v9 = [v8 theme];
  v10 = [v9 keyColor];
  v11 = [v10 colorWithAlphaComponent:0.0700000003];
  [v4 setBackgroundColor:v11];

LABEL_8:
LABEL_9:
  objc_destroyWeak(&to);

  return v4;
}

void sub_100722E0C(uint64_t a1)
{
  v2 = sub_100723D14();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Collecting UIViewController descriptions attachments", v6, 2u);
  }

  v3 = +[UIViewController _allDescriptions];
  v4 = *(a1 + 32);
  v5 = [MapsRadarTextAttachment attachmentWithFileName:@"UIViewController._allDescriptions.txt" text:v3];
  [v4 addObject:v5];

  dispatch_group_leave(*(a1 + 40));
}

void sub_100722ED4(uint64_t a1)
{
  v2 = sub_100723D14();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Collecting tile state attachments", buf, 2u);
  }

  v27 = 0;
  v28 = 0;
  v26 = 0;
  v3 = [MapsRadarAttachmentProviderTask getCurrentTileStateSnapshotWithDirectoryURL:0 debugTreeURLs:&v28 mapsActivityDataPath:&v27 error:&v26];
  v4 = v28;
  v5 = v27;
  v6 = v26;
  v7 = v6;
  if (v3)
  {
    v21 = v6;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [v4 countByEnumeratingWithState:&v22 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v4);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          v13 = [v12 lastPathComponent];
          v14 = [MapsRadarFileAttachment attachmentWithFileName:v13 fileURL:v12 deleteOnAttach:1];

          [*(a1 + 32) addObject:v14];
        }

        v9 = [v4 countByEnumeratingWithState:&v22 objects:v37 count:16];
      }

      while (v9);
    }

    v7 = v21;
    if (v5)
    {
      v15 = [v5 lastPathComponent];
      v16 = [NSURL fileURLWithPath:v5];
      v17 = [MapsRadarFileAttachment attachmentWithFileName:v15 fileURL:v16 deleteOnAttach:1];

      [*(a1 + 32) addObject:v17];
LABEL_18:
    }
  }

  else
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [NSString stringWithFormat:@"%@", v7];
      *buf = 136315906;
      v30 = "[MapsRadarAttachmentProviderTask generateAttachmentsForRadarDraft:withCompletion:]_block_invoke";
      v31 = 2080;
      v32 = "MapsRadarAttachmentProviderTask.m";
      v33 = 1024;
      v34 = 256;
      v35 = 2112;
      v36 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly! '%@'", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      goto LABEL_18;
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10072323C(uint64_t a1)
{
  v2 = sub_100723D14();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Collecting MSg attachments", buf, 2u);
  }

  v20 = +[NSMutableArray array];
  v3 = [GEOFilePaths pathFor:22];
  v4 = +[NSFileManager defaultManager];
  v30 = 0;
  v21 = v3;
  v5 = [v4 contentsOfDirectoryAtPath:v3 error:&v30];
  v6 = v30;

  if (v6)
  {
    v7 = sub_100723D14();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Could not fetch contents of Maps Suggestions Cache directory %@", buf, 0xCu);
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v17 = v5;
      v18 = 0;
      v19 = a1;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v21 stringByAppendingPathComponent:{*(*(&v26 + 1) + 8 * i), v17, v18, v19}];
          v13 = [v12 lastPathComponent];
          v14 = [NSURL fileURLWithPath:v12];
          v15 = [MapsRadarFileAttachment attachmentWithFileName:v13 fileURL:v14 deleteOnAttach:0];
          [v20 addObject:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v9);
      v6 = v18;
      a1 = v19;
      v5 = v17;
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100724420;
  block[3] = &unk_101661A40;
  v23 = *(a1 + 32);
  v24 = v20;
  v25 = *(a1 + 40);
  v16 = v20;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100723560(uint64_t a1)
{
  v1 = sub_100723D14();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Collecting MSP attachments", buf, 2u);
  }

  v2 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = [MSPMapsPaths pathsAtLocation:0];
  v23 = [v24 geoBookmarksSettingsPath];
  v35[0] = v23;
  v22 = [MSPMapsPaths pathsAtLocation:0];
  v21 = [v22 failedGeoSearchesSettingsPath];
  v35[1] = v21;
  v3 = [MSPMapsPaths pathsAtLocation:0];
  v4 = [v3 failedGeoDirectionsSettingsPath];
  v35[2] = v4;
  v5 = [MSPMapsPaths pathsAtLocation:0];
  v6 = [v5 directionsCachePath];
  v35[3] = v6;
  v7 = [MSPMapsPaths pathsAtLocation:0];
  v8 = [v7 pinsSettingsPath];
  v35[4] = v8;
  v9 = [MSPMapsPaths pathsAtLocation:0];
  v10 = [v9 geoHistorySettingsPath];
  v35[5] = v10;
  v11 = [NSArray arrayWithObjects:v35 count:6];

  v12 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v31;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        v17 = [v16 lastPathComponent];
        v18 = [NSURL fileURLWithPath:v16];
        v19 = [MapsRadarFileAttachment attachmentWithFileName:v17 fileURL:v18 deleteOnAttach:0];
        [v2 addObject:v19];
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v13);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007243E0;
  block[3] = &unk_101661A40;
  v27 = *(a1 + 32);
  v28 = v2;
  v29 = *(a1 + 40);
  v20 = v2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1007238DC(uint64_t a1)
{
  v2 = sub_100723D14();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Collecting user defaults attachments", buf, 2u);
  }

  v3 = +[NSMutableArray array];
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 dictionaryRepresentation];
  v6 = [v5 description];
  v7 = [MapsRadarTextAttachment attachmentWithFileName:@"NSUserDefaults.standardUserDefaults.txt" text:v6];

  v8 = +[NSUserDefaults __maps_groupUserDefaults];
  v9 = [v8 dictionaryRepresentation];
  v10 = [v9 description];
  v11 = [MapsRadarTextAttachment attachmentWithFileName:@"NSUserDefaults.__maps_groupUserDefaults.txt" text:v10];

  [v3 addObject:v7];
  [v3 addObject:v11];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007243A0;
  block[3] = &unk_101661A40;
  v14 = *(a1 + 32);
  v15 = v3;
  v16 = *(a1 + 40);
  v12 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100723AD4(uint64_t a1)
{
  v2 = sub_100723D14();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Collecting view hierarchy attachments", v7, 2u);
  }

  v3 = +[UIApplication sharedApplication];
  v4 = [v3 connectedScenes];
  v5 = sub_1006F76DC(v4, &stru_101627888);

  v6 = sub_100021DB0(v5, &stru_1016278F0);
  [*(a1 + 32) addObjectsFromArray:v6];
  dispatch_group_leave(*(a1 + 40));
}

void sub_100723BB8(uint64_t a1)
{
  v2 = sub_100723D14();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Collecting scene state attachments", v8, 2u);
  }

  v3 = +[UIApplication sharedApplication];
  v4 = [v3 connectedScenes];
  v5 = sub_100021DB0(v4, &stru_101627910);

  v6 = [v5 componentsJoinedByString:@"\n\n"];
  v7 = [MapsRadarTextAttachment attachmentWithFileName:@"connectedScenes.txt" text:v6];
  [*(a1 + 32) addObject:v7];
  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_100723CC0(uint64_t a1)
{
  [*(a1 + 32) addAttachments:*(a1 + 40)];
  [*(a1 + 32) addScreenshots:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

id sub_100723D14()
{
  if (qword_10195D088 != -1)
  {
    dispatch_once(&qword_10195D088, &stru_101627930);
  }

  v1 = qword_10195D080;

  return v1;
}

id sub_100723D68(id a1, UIScene *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [(UIScene *)v3 _FBSScene];
  v5 = [v4 uiSettings];
  v6 = [v5 deactivationReasons];

  v7 = [(UIScene *)v3 activationState];
  if (v7 > 2)
  {
    v8 = @"Unattached";
  }

  else
  {
    v8 = off_101627950[v7];
  }

  v9 = [(UIScene *)v3 delegate];
  v10 = [NSString stringWithFormat:@"%@\nactivationState:%@\ndeactivationReasons:%lu\ndelegate:%@", v3, v8, v6, v9];

  return v10;
}

void sub_100723E48(id a1)
{
  v1 = os_log_create("com.apple.Maps", "MapsRadarAttachmentProviderTask");
  v2 = qword_10195D080;
  qword_10195D080 = v1;
}

id sub_100723E8C(id a1, UIWindow *a2, unint64_t a3)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [NSString stringWithFormat:@"recursiveDescription.%@.%p.txt", v5, v3];
  v7 = [(UIWindow *)v3 recursiveDescription];

  v8 = [MapsRadarTextAttachment attachmentWithFileName:v6 text:v7];

  return v8;
}

id sub_100723F50(id a1, UIScene *a2, unint64_t a3)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 delegate];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [v4 delegate];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = [v4 delegate];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v9 = sub_100723D14();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v14 = [v4 delegate];
            *buf = 138412546;
            v18 = v4;
            v19 = 2112;
            v20 = v14;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Skipping window scene because the delegate is not one of ours: %@:%@", buf, 0x16u);
          }

          v10 = 0;
          goto LABEL_9;
        }

LABEL_6:
        v7 = sub_100723D14();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [v4 windows];
          *buf = 138412546;
          v18 = v4;
          v19 = 2112;
          v20 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Processing window scene's windows: %@:%@", buf, 0x16u);
        }

        v9 = [v4 windows];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100724244;
        v15[3] = &unk_1016278B0;
        v16 = v4;
        v10 = sub_100021DB0(v9, v15);

LABEL_9:
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  v4 = sub_100723D14();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Skipping window scene because it's not a UIWindowScene: %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_13:

  return v10;
}

id sub_100724244(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isHidden])
  {
    v4 = sub_100723D14();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      v6 = "Skipping window because it's hidden: %@:%@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v6, &v10, 0x16u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = sub_100723D14();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      v6 = "Skipping window because it's a text effects window: %@:%@";
      goto LABEL_7;
    }

LABEL_8:

    v8 = 0;
    goto LABEL_10;
  }

  v8 = v3;
LABEL_10:

  return v8;
}

void sub_1007243A0(uint64_t a1)
{
  [*(a1 + 32) addObjectsFromArray:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void sub_1007243E0(uint64_t a1)
{
  [*(a1 + 32) addObjectsFromArray:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void sub_100724420(uint64_t a1)
{
  [*(a1 + 32) addObjectsFromArray:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

BOOL sub_100725B24(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 coordinate];
  if (v4 == *(a1 + 32))
  {
    [v3 coordinate];
    v6 = v5 == *(a1 + 40);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_10072745C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[SearchDotPlace alloc] initWithGEODotPlace:v3];

  [v2 addObject:v4];
}

double sub_100729204(void *a1)
{
  v1 = a1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    v5 = 0.0;
    v6 = 9.22337204e18;
    v7 = 0.0;
    v8 = 9.22337204e18;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        [v10 coordinate];
        if (fabs(v12) <= 180.0 && v11 >= -90.0 && v11 <= 90.0)
        {
          [v10 coordinate];
          v13 = MKMapPointForCoordinate(v25);
          v8 = fmin(v8, v13.x);
          v6 = fmin(v6, v13.y);
          v7 = fmax(v7, v13.x);
          v5 = fmax(v5, v13.y);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = 0.0;
    v6 = 9.22337204e18;
    v7 = 0.0;
    v8 = 9.22337204e18;
  }

  v14 = fmax(v6, v5);
  v15 = fmin(v6, v5);
  if (fmax(v8, v7) <= fmin(v8, v7) || v14 <= v15)
  {
    v17 = [v1 firstObject];
    [v17 coordinate];
    MKMapRectMakeWithRadialDistance();
    v8 = v18;
  }

  return v8;
}

uint64_t sub_1007299F4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  return result;
}

uint64_t sub_10072B0F0()
{
  v0 = +[GEOCountryConfiguration sharedConfiguration];
  v1 = [v0 countryCode];
  if ([v1 isEqualToString:@"CN"])
  {
    BOOL = 1;
  }

  else
  {
    BOOL = GEOConfigGetBOOL();
  }

  return BOOL;
}

uint64_t sub_10072B16C()
{
  v0 = +[GEOCountryConfiguration sharedConfiguration];
  v1 = [v0 countryCode];
  if ([v1 isEqualToString:@"CN"])
  {
    BOOL = GEOConfigGetBOOL();
  }

  else
  {
    BOOL = 1;
  }

  return BOOL;
}

id sub_10072BBD4(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  *(*(a1 + 32) + 64) = 0;
  if (a4 && (a3 & 1) == 0)
  {
    v5 = a4;
    v6 = [v5 domain];
    v7 = [v5 code];

    NSLog(@"Printing FAILED! due to error in domain %@ with error code %ld", v6, v7);
  }

  v8 = *(a1 + 32);

  return [v8 _endBackgroundTask];
}

void sub_10072C348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10072C370(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (!a3)
  {
    v10 = v5;
    v7 = [v5 count];
    v6 = v10;
    if (v7)
    {
      v8 = *(a1 + 32);
      v9 = [v10 firstObject];
      [v8 _setTitlesWithMapItem:v9];

      v6 = v10;
    }
  }
}

void sub_10072CE80(uint64_t a1)
{
  v7 = [*(a1 + 32) mainVKMapView];
  v2 = *(a1 + 32) + 864;
  [v7 bounds];
  MidX = CGRectGetMidX(v9);
  [v7 bounds];
  MidY = CGRectGetMidY(v10);
  *v2 = MidX;
  *(v2 + 8) = MidY;
  [v7 startPitchingWithFocusPoint:{*(*(a1 + 32) + 864), *(*(a1 + 32) + 872)}];
  v5 = +[VKDebugSettings sharedSettingsExt];
  *(*(a1 + 32) + 881) = [v5 layoutContinuously];

  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 setLayoutContinuously:1];

  [v7 enableTestStatistics];
  [v7 enableTileStatistics];
  [*(a1 + 32) startedTest];
  [*(a1 + 32) pitchToDegree:1];
}

void sub_10072D288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10072D2A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pitchLoadFinished];
}

void sub_10072DB68(uint64_t a1)
{
  v7 = [*(a1 + 32) mainVKMapView];
  v2 = *(a1 + 32) + 864;
  [v7 bounds];
  MidX = CGRectGetMidX(v9);
  [v7 bounds];
  MidY = CGRectGetMidY(v10);
  *v2 = MidX;
  *(v2 + 8) = MidY;
  [v7 startRotatingWithFocusPoint:{*(*(a1 + 32) + 864), *(*(a1 + 32) + 872)}];
  v5 = +[VKDebugSettings sharedSettingsExt];
  *(*(a1 + 32) + 881) = [v5 layoutContinuously];

  v6 = +[VKDebugSettings sharedSettingsExt];
  [v6 setLayoutContinuously:1];

  [v7 enableTestStatistics];
  [v7 enableTileStatistics];
  [*(a1 + 32) startedTest];
  [*(a1 + 32) rotateToDegree:1];
}

void sub_10072DF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10072DF7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rotateLoadFinished];
}

RoutePlanningSessionDirectionsPlanBuilder *sub_10072E1A4(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 lastObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[RoutePlanningSessionDirectionsPlanBuilder alloc] initWithRoutePlanningSession:v4 fidelity:a2];
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[RideSharingSessionDirectionsPlanBuilder alloc] initWithRideBookingPlanningSession:v4];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[NavigationSessionDirectionsPlanBuilder alloc] initWithSessionStack:v3 fidelity:a2];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

void sub_10072F9C4(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_10079901C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error saving new RAP to Sync with error %@", &v4, 0xCu);
    }
  }
}

void sub_10072FCC8(uint64_t a1)
{
  [*(a1 + 32) startedTest];
  v13 = objc_alloc_init(NSDateFormatter);
  [v13 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v2 = +[NSTimeZone localTimeZone];
  [v13 setTimeZone:v2];

  v3 = +[NSDate date];
  v4 = [v13 stringFromDate:v3];

  v5 = [*(a1 + 32) mainMKMapView];
  v6 = [v5 snapshotImage];
  v7 = UIImagePNGRepresentation(v6);
  v8 = [*(a1 + 32) testName];
  if (v8)
  {
    v9 = [*(a1 + 32) testName];
    v10 = [NSString stringWithFormat:@"%@-%@.png", v9, v4];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"%@-%@.png", @"capture", v4];
  }

  v11 = NSTemporaryDirectory();
  v12 = [v11 stringByAppendingPathComponent:v10];

  [v7 writeToFile:v12 atomically:1];
  NSLog(@"Capture screenshot taken: %@", v12);
  [*(a1 + 32) finishedTest];
}

void sub_100730028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100730044(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didFinishJumpingForCapture];
}

uint64_t sub_10073088C(_OWORD *a1, void *a2, void *a3)
{
  v5 = a1[3];
  v13 = a1[2];
  v14 = v5;
  v15 = a1[4];
  v6 = a3;
  [a2 transformedPoint:&v13];
  v8 = v7;
  v9 = a1[3];
  v13 = a1[2];
  v14 = v9;
  v15 = a1[4];
  [v6 transformedPoint:&v13];
  v11 = v10;

  if (v8 < v11)
  {
    return -1;
  }

  else
  {
    return v8 > v11;
  }
}

id sub_100732E58()
{
  if (qword_10195D0A0 != -1)
  {
    dispatch_once(&qword_10195D0A0, &stru_101627AE0);
  }

  v1 = qword_10195D098;

  return v1;
}

void sub_100732EAC(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFVIOSessionAppBackgroundMonitor");
  v2 = qword_10195D098;
  qword_10195D098 = v1;
}

void sub_10073381C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100733840(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v9 copy];
    v5 = WeakRetained[5];
    WeakRetained[5] = v4;

    v6 = [WeakRetained observers];
    [v6 curatedCollectionSyncManagerDidUpdateSyncedCollections:WeakRetained];

    [WeakRetained _updateContent];
    v7 = [v9 count];
    v8 = +[GEOAPSharedStateData sharedData];
    [v8 setMapFeatureSavedCollectionsCount:v7];
  }
}

void sub_100733A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100733A48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6 && [v5 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100733B38;
    v8[3] = &unk_101661B98;
    objc_copyWeak(&v9, (a1 + 32));
    [WeakRetained _addCachedCuratedCollections:v5 completion:v8];

    objc_destroyWeak(&v9);
  }
}

void sub_100733B38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setIsPopulatingCachedCollections:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updateContent];
}

MKMapItemIdentifier *__cdecl sub_100733B9C(id a1, MSCuratedCollection *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [MKMapItemIdentifier alloc];
  v5 = [(MSCuratedCollection *)v3 curatedCollectionIdentifier];
  v6 = [(MSCuratedCollection *)v3 resultProviderIdentifier];

  v7 = [v4 initWithMUID:v5 resultProviderID:v6 coordinate:{MKCoordinateInvalid[0], MKCoordinateInvalid[1]}];

  return v7;
}

BOOL sub_100733EA4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 curatedCollectionIdentifier];
  v5 = [*(a1 + 32) collectionIdentifier];
  v6 = v4 == [v5 muid] && objc_msgSend(v3, "resultProviderIdentifier") == 0;

  return v6;
}

uint64_t sub_1007343D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL sub_100734594(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 curatedCollectionIdentifier] == *(a1 + 32) && (!objc_msgSend(v3, "resultProviderIdentifier") || objc_msgSend(v3, "resultProviderIdentifier") == *(a1 + 40));

  return v4;
}

BOOL sub_100734608(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 curatedCollectionIdentifier] == *(a1 + 32) && (!objc_msgSend(v3, "resultProviderIdentifier") || objc_msgSend(v3, "resultProviderIdentifier") == *(a1 + 40));

  return v4;
}

void sub_100734980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007349B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 firstObject];

  if (v4)
  {
    [WeakRetained _updateCachedCuratedCollection:v4 withCollection:*(a1 + 32) completion:*(a1 + 40)];
  }
}

void sub_100734D20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableSet alloc] initWithArray:*(a1 + 32)];
  v5 = objc_alloc_init(NSMutableSet);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
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
          objc_enumerationMutation(obj);
        }

        v10 = [*(a1 + 40) createCantorPair:objc_msgSend(*(*(&v24 + 1) + 8 * i) y:{"curatedCollectionIdentifier"), objc_msgSend(*(*(&v24 + 1) + 8 * i), "resultProviderIdentifier")}];
        [v5 addObject:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  [v4 minusSet:v5];
  v18 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = *(a1 + 48);
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * j);
        v17 = [*(a1 + 40) createCantorPair:objc_msgSend(v16 y:{"curatedCollectionIdentifier", v18), objc_msgSend(v16, "resultProviderIdentifier")}];
        if ([v4 containsObject:v17])
        {
          [v18 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  (*(*(a1 + 56) + 16))();
}

uint64_t sub_100735154(uint64_t a1)
{
  v2 = +[_TtC8MapsSync13MapsSyncStore sharedStore];
  v5 = *(a1 + 32);
  v3 = [NSArray arrayWithObjects:&v5 count:1];
  [v2 saveWithObjects:v3 error:0];

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100735574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10073558C(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *a3 = 1;
  *(*(*(result + 32) + 8) + 24) = 1;
  return result;
}

void sub_10073580C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = 0;
  if ([a3 getResourceValue:&v8 forKey:NSURLCreationDateKey error:0])
  {
    v6 = *(a1 + 32);
    v7 = v8;
    [v6 addObject:v5];
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];
  }
}

id sub_1007358A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

void sub_100735A20(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) removeItemWithIdentifier:v3 error:0];
  }
}

void sub_100735F68(uint64_t a1)
{
  [*(a1 + 32) garbageCollectIfNeeded];
  v2 = [*(a1 + 32) _itemURLForIdentifier:*(a1 + 40)];
  if (!v2)
  {
    v16 = *(a1 + 56);
    if (v16)
    {
      (*(v16 + 16))(v16, 0);
    }

    v6 = 0;
    goto LABEL_20;
  }

  v3 = +[NSFileManager defaultManager];
  v4 = *(*(a1 + 32) + 8);
  v25 = 0;
  v5 = [v3 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v25];
  v6 = v25;

  if ((v5 & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = +[NSData data];
  v24 = v6;
  v8 = [v7 writeToURL:v2 options:0 error:&v24];
  v9 = v24;

  if ((v8 & 1) == 0)
  {
    goto LABEL_17;
  }

  v23 = v9;
  v10 = [v2 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v23];
  v6 = v23;

  if (v10)
  {
    v22 = v6;
    v11 = [v2 setResourceValue:NSURLFileProtectionCompleteUnlessOpen forKey:NSURLFileProtectionKey error:&v22];
    v9 = v22;

    if (v11)
    {
      v12 = *(a1 + 48);
      v21 = v9;
      v13 = [v12 writeToURL:v2 options:0 error:&v21];
      v6 = v21;

      if (v13)
      {
        v14 = *(a1 + 56);
        if (v14)
        {
          v15 = *(v14 + 16);
LABEL_15:
          v15();
          goto LABEL_20;
        }

        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v19 = +[NSFileManager defaultManager];
    [v19 removeItemAtURL:v2 error:0];

LABEL_17:
    v20 = *(a1 + 56);
    if (v20)
    {
      (*(v20 + 16))(v20, v9);
    }

    v6 = v9;
    goto LABEL_20;
  }

LABEL_12:
  v17 = +[NSFileManager defaultManager];
  [v17 removeItemAtURL:v2 error:0];

LABEL_13:
  v18 = *(a1 + 56);
  if (v18)
  {
    v15 = *(v18 + 16);
    goto LABEL_15;
  }

LABEL_20:
}

void sub_100736DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100736DC4(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    *(*(a1 + 32) + 32) = 0;
    if (a3 == 1)
    {
      v9 = *(WeakRetained + 3);
      if (!v9)
      {
        goto LABEL_9;
      }

      v8 = *(v9 + 16);
      goto LABEL_8;
    }

    if (!a3)
    {
      v7 = *(WeakRetained + 3);
      if (v7)
      {
        v8 = *(v7 + 16);
LABEL_8:
        v8();
      }
    }
  }

LABEL_9:
}

uint64_t sub_100737B28(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 fieldType];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void sub_100739F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_100739F50(id *a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10073A0E4;
  v8[3] = &unk_10165D1C8;
  objc_copyWeak(&v11, a1 + 6);
  v9 = a1[4];
  v10 = a1[5];
  v4 = [UIAction actionWithTitle:@"Add shortcut" image:0 identifier:0 handler:v8];
  v12 = v4;
  v5 = [NSArray arrayWithObjects:&v12 count:1];
  v6 = [UIMenu menuWithChildren:v5];

  objc_destroyWeak(&v11);

  return v6;
}

void sub_10073A0E4(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [UIAlertController alertControllerWithTitle:@"Give your shortcut a name" message:0 preferredStyle:1];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10073A2A4;
    v10[3] = &unk_10165F640;
    v11 = a1[4];
    [v3 addTextFieldWithConfigurationHandler:v10];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10073A310;
    v7[3] = &unk_1016383E0;
    v8 = v3;
    v9 = a1[5];
    v4 = v3;
    v5 = [UIAlertAction actionWithTitle:@"OK" style:0 handler:v7];
    [v4 addAction:v5];

    v6 = [UIAlertAction actionWithTitle:@"Nevermind" style:1 handler:0];
    [v4 addAction:v6];

    [WeakRetained presentViewController:v4 animated:1 completion:0];
  }
}

void sub_10073A2A4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  if ([v3 length])
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = @"My shortcut";
  }

  [v5 setPlaceholder:v4];
}

void sub_10073A310(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v7 = [v2 firstObject];

  v3 = [v7 text];
  if ([v3 length])
  {
    [v7 text];
  }

  else
  {
    [v7 placeholder];
  }
  v4 = ;

  v5 = [MapsDebugPanelShortcut shortcutWithType:0 name:v4 indexPaths:*(a1 + 40)];
  v6 = +[MapsDebugPanelShortcutController sharedInstance];
  [v6 addShortcut:v5 completion:0];
}

uint64_t sub_10073D094(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 autocompleteObject];

    v3 = v4;
  }

  v5 = [*(a1 + 32) delegate];
  v6 = [v5 searchDataSource:*(a1 + 32) shouldFilterItem:v3];

  return v6 ^ 1;
}

uint64_t sub_1007400D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1007400F0(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = +[PlaceSummaryViewModelTemplateFactory viewModelWithHistoryEntrySearch:highlightConfiguration:searchAlongRoute:](_TtC4Maps36PlaceSummaryViewModelTemplateFactory, "viewModelWithHistoryEntrySearch:highlightConfiguration:searchAlongRoute:", v5, v3, [v4 searchAlongRoute]);

  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_10074017C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v10 = [v5 currentLocation];
  v7 = +[PlaceSummaryViewModelTemplateFactory viewModelWithHistoryEntryPlaceDisplay:highlightConfiguration:availableWidth:currentLocation:searchAlongRoute:](_TtC4Maps36PlaceSummaryViewModelTemplateFactory, "viewModelWithHistoryEntryPlaceDisplay:highlightConfiguration:availableWidth:currentLocation:searchAlongRoute:", v6, v4, v10, [*(a1 + 40) searchAlongRoute], v3);

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

id sub_1007412FC()
{
  v0 = objc_alloc_init(ACAccountStore);
  v1 = [v0 aa_primaryAppleAccount];
  v2 = [v1 aa_primaryEmail];
  if (![v2 length])
  {
    v4 = 0;
    goto LABEL_5;
  }

  v3 = [v1 aa_isPrimaryEmailVerified];

  if (v3)
  {
    v2 = [v1 aa_primaryEmail];
    v4 = [v2 copy];
LABEL_5:

    goto LABEL_7;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

uint64_t sub_1007413AC()
{
  result = _MKRAPIsAvailable();
  if (result)
  {
    return sub_1007413D0() ^ 1;
  }

  return result;
}

uint64_t sub_1007413D0()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_1016EE2B8;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_1016EE2E0;
    v1 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v1;
    v20[2] = &off_1016EE308;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_1016EE330;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_1016EE358;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_1016EE380;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_1016EE3A8;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_1016EE3D0;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_1016EE3F8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_1016EE420;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:105];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v16 = BOOL;

    return v16;
  }
}

uint64_t sub_1007416FC(uint64_t a1)
{
  v2 = 0;
  v5[0] = unk_10163D068;
  v5[1] = unk_10163D2E0;
  v5[2] = unk_10163D0E8;
  v5[3] = unk_10163D130;
  v5[4] = unk_10163D178;
  v5[5] = unk_10163D1C0;
  v5[6] = unk_10163D208;
  v5[7] = unk_10163D250;
  v5[8] = unk_10163D298;
  v5[9] = unk_10163D328;
  v5[10] = unk_10163D3B8;
  v5[11] = unk_10163D400;
  v5[12] = unk_10163D448;
  v5[13] = unk_10163D490;
  v5[14] = unk_10163D4D8;
  v5[15] = unk_10163D520;
  v5[16] = unk_10163D568;
  v5[17] = unk_10163D5B0;
  v5[18] = unk_10163D5F8;
  v5[19] = unk_10163D640;
  v5[20] = unk_10163D370;
  v5[21] = unk_1016409A8;
  v5[22] = unk_101640C20;
  v5[23] = unk_10163D998;
  do
  {
    result = (*(a1 + 16))(a1, *&v5[v2], *(&v5[v2] + 1));
    if (!result)
    {
      break;
    }
  }

  while (v2++ != 23);
  return result;
}

BOOL sub_1007418E4(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = GEOConfigGetString();
    v3 = ![v2 length] || (objc_msgSend(v1, "hasSuffix:", v2) & 1) == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100741964()
{
  if (!_MKRAPIsAvailable() || (sub_1007413D0() & 1) != 0)
  {
    return 0;
  }

  if (!_GEOConfigHasValue())
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_1016EE2B8;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_1016EE2E0;
    v2 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v2;
    v20[2] = &off_1016EE308;
    v3 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v3;
    v20[3] = &off_1016EE330;
    v4 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v4;
    v20[4] = &off_1016EE358;
    v5 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v5;
    v20[5] = &off_1016EE380;
    v6 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v6;
    v20[6] = &off_1016EE3A8;
    v7 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v7;
    v20[7] = &off_1016EE3D0;
    v8 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v8;
    v20[8] = &off_1016EE3F8;
    v9 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v9;
    v20[9] = &off_1016EE420;
    v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v11 = [NSNumber numberWithUnsignedInt:109];
    v12 = [v10 objectForKeyedSubscript:v11];

    v13 = +[GEOCountryConfiguration sharedConfiguration];
    v14 = [v13 countryCode];
    v15 = [v12 objectForKey:v14];

    if (v15)
    {
      BOOL = [v15 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v0 = BOOL;

    return v0;
  }

  return GEOConfigGetBOOL();
}

uint64_t sub_100741CA8()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_1016EE2B8;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_1016EE2E0;
    v1 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v1;
    v20[2] = &off_1016EE308;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_1016EE330;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_1016EE358;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_1016EE380;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_1016EE3A8;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_1016EE3D0;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_1016EE3F8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_1016EE420;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:113];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v16 = BOOL;

    return v16;
  }
}

uint64_t sub_100741FD4()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_1016EE2B8;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_1016EE2E0;
    v1 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v1;
    v20[2] = &off_1016EE308;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_1016EE330;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_1016EE358;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_1016EE380;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_1016EE3A8;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_1016EE3D0;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_1016EE3F8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_1016EE420;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:115];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v16 = BOOL;

    return v16;
  }
}

uint64_t sub_100742300()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_1016EE2B8;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_1016EE2E0;
    v1 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v1;
    v20[2] = &off_1016EE308;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_1016EE330;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_1016EE358;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_1016EE380;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_1016EE3A8;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_1016EE3D0;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_1016EE3F8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_1016EE420;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:117];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v16 = BOOL;

    return v16;
  }
}

uint64_t sub_10074262C()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_1016EE2B8;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_1016EE2E0;
    v1 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v1;
    v20[2] = &off_1016EE308;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_1016EE330;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_1016EE358;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_1016EE380;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_1016EE3A8;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_1016EE3D0;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_1016EE3F8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_1016EE420;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:118];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v16 = BOOL;

    return v16;
  }
}

uint64_t sub_100742958()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_1016EE2B8;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_1016EE2E0;
    v1 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v1;
    v20[2] = &off_1016EE308;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_1016EE330;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_1016EE358;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_1016EE380;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_1016EE3A8;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_1016EE3D0;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_1016EE3F8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_1016EE420;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:119];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v16 = BOOL;

    return v16;
  }
}

uint64_t sub_100742C84()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_1016EE2B8;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_1016EE2E0;
    v1 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v1;
    v20[2] = &off_1016EE308;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_1016EE330;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_1016EE358;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_1016EE380;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_1016EE3A8;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_1016EE3D0;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_1016EE3F8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_1016EE420;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:123];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v16 = BOOL;

    return v16;
  }
}

uint64_t sub_100742FB0()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_1016EE2B8;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_1016EE2E0;
    v1 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v1;
    v20[2] = &off_1016EE308;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_1016EE330;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_1016EE358;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_1016EE380;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_1016EE3A8;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_1016EE3D0;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_1016EE3F8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_1016EE420;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:124];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v16 = BOOL;

    return v16;
  }
}

uint64_t sub_1007432DC()
{
  if (_GEOConfigHasValue())
  {

    return GEOConfigGetBOOL();
  }

  else
  {
    v18 = [NSNumber numberWithUnsignedInt:118];
    v19[0] = v18;
    v20[0] = &off_1016EE2B8;
    v17 = [NSNumber numberWithUnsignedInt:119];
    v19[1] = v17;
    v20[1] = &off_1016EE2E0;
    v1 = [NSNumber numberWithUnsignedInt:120];
    v19[2] = v1;
    v20[2] = &off_1016EE308;
    v2 = [NSNumber numberWithUnsignedInt:121];
    v19[3] = v2;
    v20[3] = &off_1016EE330;
    v3 = [NSNumber numberWithUnsignedInt:122];
    v19[4] = v3;
    v20[4] = &off_1016EE358;
    v4 = [NSNumber numberWithUnsignedInt:123];
    v19[5] = v4;
    v20[5] = &off_1016EE380;
    v5 = [NSNumber numberWithUnsignedInt:124];
    v19[6] = v5;
    v20[6] = &off_1016EE3A8;
    v6 = [NSNumber numberWithUnsignedInt:125];
    v19[7] = v6;
    v20[7] = &off_1016EE3D0;
    v7 = [NSNumber numberWithUnsignedInt:126];
    v19[8] = v7;
    v20[8] = &off_1016EE3F8;
    v8 = [NSNumber numberWithUnsignedInt:398];
    v19[9] = v8;
    v20[9] = &off_1016EE420;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:10];

    v10 = [NSNumber numberWithUnsignedInt:398];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = +[GEOCountryConfiguration sharedConfiguration];
    v13 = [v12 countryCode];
    v14 = [v11 objectForKey:v13];

    if (v14)
    {
      BOOL = [v14 BOOLValue];
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
    }

    v16 = BOOL;

    return v16;
  }
}

void sub_100744D54(uint64_t a1)
{
  v2 = sub_100035E6C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) excludedStepIndices];
    v8 = 134219010;
    v9 = v6;
    v10 = 2048;
    v11 = v3;
    v12 = 2048;
    v13 = v4;
    v14 = 2048;
    v15 = v5;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Failed to construct a valid itemIndex (%lu) in items (%lu) for stepIndex: %lu firstUsedStepIndex: %lu excludedStepIndices: %@", &v8, 0x34u);
  }
}

void sub_100745960(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SearchResult alloc] initWithMapItem:v3];

  [(SearchResult *)v4 setType:13];
  v5 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v5 setSearchResult:v4];
  v9 = v4;
  v6 = [NSArray arrayWithObjects:&v9 count:1];
  v7 = [SearchInfo searchInfoWithResults:v6];

  v8 = [*(a1 + 32) appCoordinator];
  [v8 openSearch:v5 andResults:v7];
}

id sub_1007460AC(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v3 = +[UIColor secondarySystemGroupedBackgroundColor];
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return v3;
}

void sub_100747B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100747B30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100747B48(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 type] == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100747D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100747D84(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 type] == 5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100747FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100747FFC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 type] == 2)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1007481C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1007481DC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 type] == 3 && *(a1 + 40) == a3)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100748A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100748A70(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 type] == 2)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_10074AB44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 208));
  _Block_object_dispose((v2 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10074ABFC(uint64_t a1)
{
  v2 = +[SectionFooterCollectionReusableView reuseIdentifier];
  [*(a1 + 32) setAccessibilityIdentifier:v2];

  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (objc_opt_respondsToSelector())
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Clear [No Query State]" value:@"localized string not found" table:0];

    v6 = *(a1 + 32);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10074B094;
    v7[3] = &unk_101661B18;
    v8 = v3;
    [v6 setActionTitle:v5 completionHandler:v7];
    [*(a1 + 32) setAccessibilityIdentifiersWithBaseString:@"SearchHomeClearRecents"];
  }
}

void sub_10074AD2C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained searchHomeDataSourceDelegate];
  [v5 showGuidesHomeFromExploreGuides:v3];

  v7 = objc_loadWeakRetained((a1 + 32));
  v6 = [v7 analyticsManager];
  [v6 exploreGuidesButtonTapped];
}

void sub_10074ADC4(uint64_t a1)
{
  v2 = [*(a1 + 32) searchHomeDataSourceDelegate];
  [v2 seeAllTappedForCollections];

  v3 = [*(a1 + 32) analyticsManager];
  [v3 showAllCollectionsTapped];
}

void sub_10074AE2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained searchHomeDataSourceDelegate];
    [v2 seeAllTappedForRecents];

    WeakRetained = v3;
  }
}

void sub_10074AE88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained searchHomeDataSourceDelegate];
    [v2 showCitySelector];

    v3 = [v4 analyticsManager];
    [v3 cityGuidesMoreButtonTapped];

    WeakRetained = v4;
  }
}

void sub_10074AEFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = *(*(*(a1 + 40) + 8) + 40);
    v3 = [*(a1 + 32) collectionView];
    if (sub_10000FA08(v3) == 5)
    {
    }

    else
    {
      v4 = [v2 exploreGuides];

      if (v4)
      {
        v5 = [WeakRetained searchHomeDataSourceDelegate];
        v6 = [v2 exploreGuides];
        [v5 showGuidesHomeFromExploreGuides:v6];

        v7 = [WeakRetained analyticsManager];
        [v7 exploreGuidesButtonTapped];
LABEL_7:

        goto LABEL_8;
      }
    }

    v8 = [WeakRetained searchHomeDataSourceDelegate];
    [v8 seeAllTappedForCollections];

    v7 = [WeakRetained analyticsManager];
    [v7 showAllCollectionsTapped];
    goto LABEL_7;
  }

LABEL_8:
}

BOOL sub_10074B024(id a1, SearchHomeDataProvider *a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  if (-[SearchHomeDataProvider type](v5, "type") && (-[SearchHomeDataProvider objects](v5, "objects"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7))
  {
    v8 = 1;
    *a4 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10074B4A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_10074B4C8(uint64_t a1, unint64_t a2, void *a3)
{
  v53 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained collectionViewDiffableDataSource];
  v7 = [v6 snapshot];

  v8 = [v7 sectionIdentifiers];
  v9 = [v8 count];

  if (v9 <= a2)
  {
    v14 = sub_100798B6C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v7 sectionIdentifiers];
      v16 = objc_loadWeakRetained((a1 + 40));
      v17 = [v16 dataProviders];
      v18 = objc_loadWeakRetained((a1 + 40));
      v19 = [v18 layoutProviders];
      *location = 138413314;
      *&location[4] = v15;
      v71 = 2048;
      v72 = a2;
      v73 = 2112;
      v74 = v7;
      v75 = 2112;
      v76 = v17;
      v77 = 2112;
      v78 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "The diffable data source is trying to apply a snapshot at index greater than the number of section identifiers so returning a empty layout section here. Current section identifiers: %@ And section index: %ld. The snapshot : %@, Data Providers : %@, Layout providers : %@", location, 0x34u);
    }

    v54 = objc_loadWeakRetained((a1 + 40));
    v20 = [v54 _emptySection];
  }

  else
  {
    v10 = [v7 sectionIdentifiers];
    v54 = [v10 objectAtIndex:a2];

    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 dataProviderWithIdentifier:v54];

    v13 = objc_loadWeakRetained((a1 + 40));
    v52 = [v13 layoutProviderForDataProvider:v12];

    if ([v12 conformsToProtocol:&OBJC_PROTOCOL___SearchHomeDataProviderDeletable])
    {
      objc_initWeak(location, v12);
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_10074BBFC;
      v65[3] = &unk_101627E60;
      objc_copyWeak(&v68, (a1 + 40));
      v66 = v54;
      v67 = v12;
      objc_copyWeak(&v69, location);
      v51 = objc_retainBlock(v65);
      objc_destroyWeak(&v69);

      objc_destroyWeak(&v68);
      objc_destroyWeak(location);
    }

    else
    {
      v51 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v52;
      [*(a1 + 32) heightForHeaderInSection:a2 dataProvider:v12];
      v23 = v22;
      [*(a1 + 32) heightForFooterInSection:a2 dataProvider:v12];
      v25 = v24;
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_10074BC78;
      v62[3] = &unk_101627EB0;
      v26 = v12;
      v63 = v26;
      objc_copyWeak(&v64, (a1 + 40));
      [v21 setShareHandler:v62];
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_10074BE70;
      v60[3] = &unk_101627ED8;
      v27 = v26;
      v61 = v27;
      [v21 setIsShareable:v60];
      v58[0] = _NSConcreteStackBlock;
      v58[1] = 3221225472;
      v58[2] = sub_10074BEFC;
      v58[3] = &unk_101627ED8;
      v28 = v27;
      v59 = v28;
      [v21 setIsDeletable:v58];
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_10074BF88;
      v55[3] = &unk_101627F00;
      objc_copyWeak(&v57, (a1 + 40));
      v56 = v51;
      v29 = [v28 objects];
      v30 = [v29 count];
      v31 = objc_loadWeakRetained((a1 + 40));
      v32 = [v31 collectionView];
      v33 = [v32 theme];
      v20 = [v21 layoutSectionWithLayoutEnvironment:v53 estimatedHeaderHeight:v55 estimatedFooterHeight:v30 deletionBlock:v33 objectsCount:v23 mapsTheme:v25];

      objc_destroyWeak(&v57);
      objc_destroyWeak(&v64);
      v34 = v63;
    }

    else
    {
      v35 = [v12 objects];
      v36 = [v35 count];

      if (_UISolariumEnabled())
      {
        if ([v12 type] == 1)
        {
          v37 = [v12 objects];
          v38 = [v37 firstObject];
          v36 = [v38 count];
        }

        if ([v12 type] == 5)
        {
          v39 = [v12 viewModels];
          v40 = [v39 firstObject];
          v36 = [v40 count];
        }

        if ([v12 type] == 2)
        {
          v41 = [v12 objects];
          v42 = [v41 firstObject];
          v36 = [v42 count];
        }
      }

      v21 = objc_loadWeakRetained((a1 + 40));
      [v21 heightForHeaderInSection:a2 dataProvider:v12];
      v44 = v43;
      v34 = objc_loadWeakRetained((a1 + 40));
      [v34 heightForFooterInSection:a2 dataProvider:v12];
      v46 = v45;
      v47 = objc_loadWeakRetained((a1 + 40));
      v48 = [v47 collectionView];
      v49 = [v48 theme];
      v20 = [v52 layoutSectionWithLayoutEnvironment:v53 estimatedHeaderHeight:v51 estimatedFooterHeight:v36 deletionBlock:v49 objectsCount:v44 mapsTheme:v46];
    }
  }

  return v20;
}

void sub_10074BBFC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained performDeleteAnimationOnSectionWithIdentifier:*(a1 + 32) itemAtIndex:a2 dataProvider:*(a1 + 40) animated:1];

  v5 = objc_loadWeakRetained((a1 + 56));
  [v5 deleteEntryAtIndex:a2];
}

void sub_10074BC78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objects];
  v5 = [v4 objectAtIndex:{objc_msgSend(v3, "row")}];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained collectionView];
  v8 = [v7 cellForItemAtIndexPath:v3];

  v9 = [v5 collections];
  objc_opt_class();
  LOBYTE(v7) = objc_opt_isKindOfClass();

  v10 = [v5 collections];
  if (v7)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10074BFE8;
    v15[3] = &unk_101627E88;
    objc_copyWeak(&v18, (a1 + 40));
    v16 = v8;
    v17 = v5;
    [v10 retrieveGeoCollectionWithRefinedItems:v15];

    objc_destroyWeak(&v18);
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = objc_loadWeakRetained((a1 + 40));
      v13 = [v12 searchHomeDataSourceDelegate];
      v14 = [v5 collections];
      [v13 shareCollection:v8 collection:v14];
    }
  }
}

id sub_10074BE70(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objects];
  v5 = [v3 row];

  v6 = [v4 objectAtIndex:v5];

  v7 = [v6 collections];
  v8 = [v7 canShare];

  return v8;
}

id sub_10074BEFC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 objects];
  v5 = [v3 row];

  v6 = [v4 objectAtIndex:v5];

  v7 = [v6 collections];
  v8 = [v7 canDelete];

  return v8;
}

uint64_t sub_10074BF88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addToCollectionObserver];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_10074BFE8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7 && v8 && (v10 = [v8 count], !v9) && v10)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v12 = [WeakRetained searchHomeDataSourceDelegate];
    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) collections];
    [v12 shareCollection:v13 collection:v14];
  }

  else
  {
    WeakRetained = sub_100067540();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 40) collections];
      v16 = [v15 identifier];
      v17 = 138412546;
      v18 = v16;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Failed to resolve curated collection with id: %@ error: %@", &v17, 0x16u);
    }
  }
}

void sub_10074C3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10074C3B8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 type] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_10074D190()
{
  if (qword_10195D0E8 != -1)
  {
    dispatch_once(&qword_10195D0E8, &stru_101627FD8);
  }

  v1 = qword_10195D0E0;

  return v1;
}

void sub_10074D1E4(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = [v6 dataProviders];

    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = [v6 dataProviders];
      [v4 addObjectsFromArray:v5];
    }
  }
}

void sub_10074D280(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v9 dataProviders];

    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = [v9 dataProviders];
      [v7 addObjectsFromArray:v8];

      *a4 = 1;
    }
  }
}

void sub_10074D330(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchHomeDataSource");
  v2 = qword_10195D0E0;
  qword_10195D0E0 = v1;
}

id sub_10074E108(uint64_t a1)
{
  v2 = sub_100798B6C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(a1 + 32) + 184) collectionView];
    [v3 contentSize];
    v4 = NSStringFromSize(v8);
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Applying snapshot completed. Content Size: %@", &v6, 0xCu);
  }

  [*(a1 + 32) setNeedsToApplySnapshot:0];
  [*(a1 + 32) setNeedsToResetKeyCommands:0];
  return [*(a1 + 32) reorderKeyCommands];
}

void sub_10074F528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location)
{
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10074F550(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setShouldRemoveSearchHomeTip:1];
    [v2 setNeedsUpdate];
    WeakRetained = v2;
  }
}

void sub_10074FA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10074FA50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained tableView:v9 indexPath:v8 identifier:v7];

  return v11;
}

uint64_t sub_10074FC6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10074FC84(uint64_t a1, void *a2)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = a2;
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    (*(*(a1 + 32) + 16))();
  }
}

id sub_10075072C()
{
  if (qword_10195D100 != -1)
  {
    dispatch_once(&qword_10195D100, &stru_1016280C0);
  }

  v1 = qword_10195D0F8;

  return v1;
}

void sub_100750780(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) addObject:WeakRetained];
    WeakRetained = v3;
  }
}

void sub_1007507DC(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 supersededSearchStorageIdentifier];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v5 = *(a1 + 32);
      v6 = [v7 supersededSearchStorageIdentifier];
      [v5 setObject:WeakRetained forKeyedSubscript:v6];

      [*(a1 + 40) addObject:WeakRetained];
    }
  }
}

uint64_t sub_100750884(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10075089C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 historyEntry];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1007509D8;
  v11[3] = &unk_101628050;
  v12 = *(a1 + 32);
  v13 = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100750B14;
  v7[3] = &unk_101628078;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v8 = v5;
  v9 = v13;
  v6 = v13;
  [v4 ifSearch:v11 ifRoute:0 ifPlaceDisplay:v7 ifTransitLineItem:0];
}

void sub_1007509D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 query];
  if ([v4 length])
  {
    v5 = [v3 locationDisplayString];
    v6 = [v5 length];

    if (v6)
    {
      [*(a1 + 32) addObject:*(a1 + 40)];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = sub_100067540();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v3 query];
    v9 = [v3 locationDisplayString];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Recents title is %@ and subtitle is %@", &v10, 0x16u);
  }

LABEL_8:
}

void sub_100750B14(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 geoMapItem];
  v5 = [v4 name];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [v3 geoMapItem];

  v9 = [v8 addressObject];

  v10 = [v9 cityDisplayNameWithFallback:0];
  if (![v10 length] || objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "length") && objc_msgSend(v10, "isEqualToString:", *(*(*(a1 + 48) + 8) + 40)))
  {
    v11 = [v9 address];
    v12 = [v11 structuredAddress];
    v13 = [v12 country];

    v10 = v13;
  }

  if ([*(*(*(a1 + 48) + 8) + 40) length] && objc_msgSend(v10, "length"))
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  else
  {
    v14 = sub_100067540();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(*(*(a1 + 48) + 8) + 40);
      v16 = 138412546;
      v17 = v15;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Recents title is %@ and subtitle is %@", &v16, 0x16u);
    }
  }
}

void sub_100750CF0(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SearchHomeRecentSearchesDataFetcher");
  v2 = qword_10195D0F8;
  qword_10195D0F8 = v1;
}

void sub_100751190(uint64_t a1)
{
  v15 = +[NSUserDefaults standardUserDefaults];
  v2 = [[DrivePreferences alloc] initWithDefaults:v15];
  v3 = [[CyclePreferences alloc] initWithDefaults:v15];
  v4 = [(WatchSyncedPreferences *)[TransitPreferences alloc] initWithDefaults:v15];
  v5 = [[WalkPreferences alloc] initWithDefaults:v15];
  if ([(DrivePreferences *)v2 hasAnyNonStandardPreferences]|| [(CyclePreferences *)v3 hasAnyNonStandardPreferences]|| [(TransitPreferences *)v4 hasAnyNonStandardPreferences]|| [(WalkPreferences *)v5 hasAnyNonStandardPreferences])
  {
    v6 = BiomeLibrary();
    v7 = [v6 Discoverability];
    v8 = [v7 Signals];
    v9 = [v8 source];

    v10 = [BMDiscoverabilitySignals alloc];
    if (*(a1 + 32))
    {
      v11 = *(a1 + 32);
    }

    else
    {
      v11 = @"Maps-App-Settings";
    }

    v12 = +[NSProcessInfo processInfo];
    v13 = [v12 operatingSystemVersionString];
    v14 = [v10 initWithContentIdentifier:@"com.apple.Maps.UserHasNonStandardPreferences" context:v11 osBuild:v13 userInfo:0];

    [v9 sendEvent:v14];
  }
}

id sub_100751F04(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 dequeueReusableSupplementaryViewOfKind:v6 withReuseIdentifier:v9 forIndexPath:*(a1 + 48)];

  v11 = [v10 textLabel];
  [v11 setText:v7];

  [v10 setFooter:a3];
  v12 = [v7 length];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = [*(a1 + 32) numberOfSections];
    v13 = v14 != [*(a1 + 48) section] + 1;
  }

  [v10 setHidden:v13];

  return v10;
}

id sub_100752000(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v6 forIndexPath:*(a1 + 40)];

  v8 = [[UserProfileSectionFooterViewModel alloc] initWithContentString:v4];
  v9 = [v4 length];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [*(a1 + 32) numberOfSections];
    v10 = v11 != [*(a1 + 40) section] + 1;
  }

  [(UserProfileSectionFooterViewModel *)v8 setCollapsed:v10];
  [(UserProfileSectionFooterViewModel *)v8 setContainsLink:1];
  [(UserProfileSectionFooterViewModel *)v8 setTarget:*(a1 + 48)];
  [(UserProfileSectionFooterViewModel *)v8 setAction:"privacyTextTapped"];
  [v7 configureWithViewModel:v8];
  [v7 setNeedsLayout];
  [v7 layoutIfNeeded];

  return v7;
}

void sub_100752724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  objc_destroyWeak((v42 + 32));
  objc_destroyWeak(&a42);
  objc_destroyWeak((v43 - 176));
  objc_destroyWeak((v43 - 128));
  _Unwind_Resume(a1);
}

void sub_1007527C4(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10075463C;
  v4[3] = &unk_101661260;
  v5 = *(a1 + 32);
  v3 = [a2 addCheckmarkRowsGroupWithContent:v4 get:&stru_1016280E0 set:&stru_101628100];
}

void sub_100752868(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Avoid Tolls" value:@"localized string not found" table:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100754414;
  v12[3] = &unk_1016619A8;
  objc_copyWeak(&v13, (a1 + 32));
  v6 = [v3 addSwitchRowWithTitle:v5 get:&stru_101628120 set:v12];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Avoid Highways" value:@"localized string not found" table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1007544E0;
  v10[3] = &unk_1016619A8;
  objc_copyWeak(&v11, (a1 + 32));
  v9 = [v3 addSwitchRowWithTitle:v8 get:&stru_101628140 set:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
}

void sub_100752A10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100752A38(uint64_t a1, void *a2)
{
  v3 = a2;
  if (sub_100F2C748())
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"Avoid Hills" value:@"localized string not found" table:0];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100754150;
    v17[3] = &unk_1016619A8;
    objc_copyWeak(&v18, (a1 + 32));
    v6 = [v3 addSwitchRowWithTitle:v5 get:&stru_101628160 set:v17];

    objc_destroyWeak(&v18);
  }

  if (sub_100F2C748())
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Avoid Busy Roads" value:@"localized string not found" table:0];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1007541F4;
    v15[3] = &unk_1016619A8;
    objc_copyWeak(&v16, (a1 + 32));
    v9 = [v3 addSwitchRowWithTitle:v8 get:&stru_101628180 set:v15];

    objc_destroyWeak(&v16);
  }

  if (sub_100F2C7A8())
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Avoid Stairs" value:@"localized string not found" table:0];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100754298;
    v13[3] = &unk_1016619A8;
    objc_copyWeak(&v14, (a1 + 32));
    v12 = [v3 addSwitchRowWithTitle:v11 get:&stru_1016281A0 set:v13];

    objc_destroyWeak(&v14);
  }
}

void sub_100752CD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rebuildSections];
}

void sub_100752D18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Avoid Hills" value:@"localized string not found" table:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100753E30;
  v12[3] = &unk_1016619A8;
  objc_copyWeak(&v13, (a1 + 32));
  v6 = [v3 addSwitchRowWithTitle:v5 get:&stru_101628220 set:v12];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Avoid Busy Roads" value:@"localized string not found" table:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100753ED4;
  v10[3] = &unk_1016619A8;
  objc_copyWeak(&v11, (a1 + 32));
  v9 = [v3 addSwitchRowWithTitle:v8 get:&stru_101628240 set:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
}

void sub_100752EC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_100752EE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1007539E4;
  v11[3] = &unk_101632CE8;
  v13 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v12 = v4;
  v14 = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100753AE8;
  v9[3] = &unk_101653F10;
  objc_copyWeak(&v10, (a1 + 40));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100753CA4;
  v7[3] = &unk_10165D828;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = [v3 addCheckmarkRowsGroupWithContent:v11 get:v9 set:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
}

void sub_100753050(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_10075306C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Show Credit" value:@"localized string not found" table:0];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100753690;
  v17[3] = &unk_1016334B8;
  objc_copyWeak(&v18, (a1 + 32));
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1007536D4;
  v14[3] = &unk_10165FC50;
  objc_copyWeak(&v16, (a1 + 32));
  v6 = v3;
  v15 = v6;
  v7 = [v6 addSwitchRowWithTitle:v5 get:v17 set:v14];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained[64] == 1)
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"[User Profile] Nickname" value:@"localized string not found" table:0];
    v12[4] = WeakRetained;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10075381C;
    v13[3] = &unk_101658E28;
    v13[4] = WeakRetained;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100753830;
    v12[3] = &unk_10165EF00;
    v11 = [v6 addTextFieldRowWithTitle:0 placeholderText:v10 inputType:0 get:v13 set:v12];

    [v11 setFilter:&stru_101628288];
    [v11 setMaximumNumberOfCharacters:30];
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
}

void sub_1007532EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_10075330C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained notificationSettings];
  v4 = [v3 authorizationStatus];

  if (v4)
  {
    [GEOAPPortal captureUserAction:319 target:29 value:0];
    v5 = UIApplicationOpenNotificationSettingsURLString;
    v6 = [NSURL URLWithString:v5];
    v7 = +[UIApplication sharedApplication];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100753588;
    v9[3] = &unk_1016619A8;
    objc_copyWeak(&v10, (a1 + 32));
    [v7 openURL:v6 options:&__NSDictionary0__struct completionHandler:v9];

    objc_destroyWeak(&v10);
  }

  else
  {
    [GEOAPPortal captureUserAction:320 target:29 value:0];
    v8 = +[UNUserNotificationCenter currentNotificationCenter];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1007534F8;
    v11[3] = &unk_101637948;
    objc_copyWeak(&v12, (a1 + 32));
    [v8 requestAuthorizationWithOptions:14 completionHandler:v11];

    objc_destroyWeak(&v12);
  }
}

void sub_1007534F8(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007535C8;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_100753588(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained loadPreferences];
}

void sub_1007535C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained loadPreferences];
}

void sub_100753608(id a1)
{
  v2 = [NSURL URLWithString:@"prefs:root=MAPS"];
  v1 = +[UIApplication sharedApplication];
  [v1 _maps_openURL:v2 options:0 completionHandler:0];

  +[UserProfileAnalyticsManager captureSettingsAppTapAction];
}

uint64_t sub_100753690(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[64];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1007536D4(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[64] != a2)
  {
    WeakRetained[64] = a2;
    v5 = *(WeakRetained + 9);
    *(WeakRetained + 9) = 0;
    v11 = WeakRetained;

    v11[80] = 1;
    v6 = v11[64];
    if (v6 == 1)
    {
      a2 = [*(a1 + 32) rows];
      if ([a2 count] == 1)
      {

LABEL_11:
        [v11 rebuildSections];
        goto LABEL_12;
      }

      if (v11[64])
      {

LABEL_12:
        v9 = v11;
LABEL_13:
        if (v9[64])
        {
          v10 = 338;
        }

        else
        {
          v10 = 341;
        }

        [GEOAPPortal captureUserAction:v10 target:602 value:0];
        WeakRetained = v11;
        goto LABEL_17;
      }
    }

    v7 = [*(a1 + 32) rows];
    v8 = [v7 count];

    if (v6)
    {
    }

    v9 = v11;
    if (v8 != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_17:
}

void sub_100753830(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (*(v5 + 72) != v4)
  {
    v6 = v4;
    objc_storeStrong((v5 + 72), a2);
    *(*(a1 + 32) + 80) = 1;
    [GEOAPPortal captureUserAction:342 target:602 value:0];
    v4 = v6;
  }
}

BOOL sub_1007538C8(id a1, NSString *a2)
{
  v2 = qword_10195D110;
  v3 = a2;
  if (v2 != -1)
  {
    dispatch_once(&qword_10195D110, &stru_1016282A8);
  }

  v4 = [(NSString *)v3 rangeOfCharacterFromSet:qword_10195D108];

  return v4 == 0x7FFFFFFFFFFFFFFFLL;
}

void sub_100753938(id a1)
{
  v5 = objc_alloc_init(NSMutableCharacterSet);
  v1 = +[NSCharacterSet alphanumericCharacterSet];
  [v5 formUnionWithCharacterSet:v1];

  v2 = +[NSCharacterSet punctuationCharacterSet];
  [v5 formUnionWithCharacterSet:v2];

  [v5 invert];
  v3 = [v5 copy];
  v4 = qword_10195D108;
  qword_10195D108 = v3;
}

void sub_1007539E4(void *a1, void *a2)
{
  v10 = a2;
  [v10 setAllowMultipleSelection:1];
  [v10 setMinimumSelectionCount:1];
  if (a1[5] >= 1)
  {
    v3 = 0;
    do
    {
      v4 = a1[4];
      v5 = [NSIndexPath indexPathForRow:v3 inSection:a1[6]];
      v6 = [v4 _modeForIndexPath:v5];

      v7 = sub_100DF72F8(v6);
      v8 = [NSNumber numberWithUnsignedInteger:v6];
      v9 = [v10 addRowWithTitle:v7 value:v8];

      ++v3;
    }

    while (v3 < a1[5]);
  }
}

id sub_100753AE8(uint64_t a1)
{
  if (qword_10195D120 != -1)
  {
    dispatch_once(&qword_10195D120, &stru_101628310);
  }

  v2 = qword_10195D118;
  v15 = [v2 mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v2;
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
        v9 = [v8 integerValue];
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v11 = [WeakRetained transitDataSource];
        v12 = [v11 preferences];
        LODWORD(v9) = [v12 isModeDisabled:v9];

        if (v9)
        {
          [v15 removeObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v13 = [v15 copy];

  return v13;
}

void sub_100753CA4(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained transitDataSource];
  v6 = [v5 preferences];
  [v6 toggleModeEnabled:v3];

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 transitPreferences];
  [v8 synchronize];

  v9 = [TransitPreferencesViewControllerDataSource alloc];
  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 transitPreferences];
  v12 = [(TransitPreferencesViewControllerDataSource *)v9 initWithPreferences:v11 displayHints:0];
  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 setTransitDataSource:v12];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 rebuildSections];

  v15 = +[NSUserDefaults standardUserDefaults];
  LODWORD(v14) = [TransitPreferences isModeDisabled:v3 inUserDefaults:v15];

  if (v14)
  {
    [UserProfileAnalyticsManager captureDisableTransitPreferenceForMode:v3];
  }

  else
  {
    [UserProfileAnalyticsManager captureEnableTransitPreferenceForMode:v3];
  }

  v16 = objc_loadWeakRetained((a1 + 32));
  [v16 sendBiomeDiscoverabilitySignalsWithContext:0];
}

void sub_100753E30(uint64_t a1, uint64_t a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:a2 forKey:@"MapsDefaultAvoidHillsKey"];

  if (a2)
  {
    v5 = 5035;
  }

  else
  {
    v5 = 5036;
  }

  [UserProfileAnalyticsManager captureTravelPreferencesUserAction:v5 value:@"BICYCLE"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendBiomeDiscoverabilitySignalsWithContext:0];
}

void sub_100753ED4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:a2 forKey:@"MapsDefaultAvoidBusyRoadsKey"];

  if (a2)
  {
    v5 = 5033;
  }

  else
  {
    v5 = 5034;
  }

  [UserProfileAnalyticsManager captureTravelPreferencesUserAction:v5 value:@"BICYCLE"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendBiomeDiscoverabilitySignalsWithContext:0];
}

BOOL sub_100753F78(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"MapsDefaultAvoidBusyRoadsKey"];

  return v2;
}

BOOL sub_100753FC0(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"MapsDefaultAvoidHillsKey"];

  return v2;
}

void sub_100754008(id a1, MapsDebugTableSection *a2)
{
  v5 = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"E-Bike" value:@"localized string not found" table:0];
  v4 = [(MapsDebugTableSection *)v5 addSwitchRowWithTitle:v3 get:&stru_1016281E0 set:&stru_101628200];
}

void sub_1007540A8(id a1, BOOL a2)
{
  v2 = a2;
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 setBool:v2 forKey:@"MapsDefaultUseEbikeKey"];
}

BOOL sub_100754108(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"MapsDefaultUseEbikeKey"];

  return v2;
}

void sub_100754150(uint64_t a1, uint64_t a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:a2 forKey:@"MapsDefaultWalkingAvoidHillsKey"];

  if (a2)
  {
    v5 = 5035;
  }

  else
  {
    v5 = 5036;
  }

  [UserProfileAnalyticsManager captureTravelPreferencesUserAction:v5 value:@"WALKING"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendBiomeDiscoverabilitySignalsWithContext:0];
}

void sub_1007541F4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:a2 forKey:@"MapsDefaultWalkingAvoidBusyRoadsKey"];

  if (a2)
  {
    v5 = 5033;
  }

  else
  {
    v5 = 5034;
  }

  [UserProfileAnalyticsManager captureTravelPreferencesUserAction:v5 value:@"WALKING"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendBiomeDiscoverabilitySignalsWithContext:0];
}

void sub_100754298(uint64_t a1, uint64_t a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:a2 forKey:@"MapsDefaultWalkingAvoidStairsKey"];

  if (a2)
  {
    v5 = 5037;
  }

  else
  {
    v5 = 5038;
  }

  [UserProfileAnalyticsManager captureTravelPreferencesUserAction:v5 value:@"WALKING"];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendBiomeDiscoverabilitySignalsWithContext:0];
}

BOOL sub_10075433C(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"MapsDefaultWalkingAvoidStairsKey"];

  return v2;
}

BOOL sub_100754384(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"MapsDefaultWalkingAvoidBusyRoadsKey"];

  return v2;
}

BOOL sub_1007543CC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"MapsDefaultWalkingAvoidHillsKey"];

  return v2;
}

void sub_100754414(uint64_t a1, uint64_t a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:a2 forKey:@"MapsDefaultAvoidTollsKey"];

  v5 = +[NSUserDefaults __maps_groupUserDefaults];
  [v5 setBool:a2 forKey:@"MapsDefaultAvoidTollsKey"];

  if (a2)
  {
    v6 = 148;
  }

  else
  {
    v6 = 189;
  }

  [UserProfileAnalyticsManager captureTravelPreferencesUserAction:v6];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendBiomeDiscoverabilitySignalsWithContext:0];
}

void sub_1007544E0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setBool:a2 forKey:@"MapsDefaultAvoidHighwaysKey"];

  v5 = +[NSUserDefaults __maps_groupUserDefaults];
  [v5 setBool:a2 forKey:@"MapsDefaultAvoidHighwaysKey"];

  if (a2)
  {
    v6 = 151;
  }

  else
  {
    v6 = 195;
  }

  [UserProfileAnalyticsManager captureTravelPreferencesUserAction:v6];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendBiomeDiscoverabilitySignalsWithContext:0];
}

BOOL sub_1007545AC(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"MapsDefaultAvoidHighwaysKey"];

  return v2;
}

BOOL sub_1007545F4(id a1)
{
  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"MapsDefaultAvoidTollsKey"];

  return v2;
}

void sub_10075463C(uint64_t a1, void *a2)
{
  v19 = a2;
  [v19 setAllowMultipleSelection:0];
  [v19 setMinimumSelectionCount:1];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Driving" value:@"localized string not found" table:0];
  v5 = [*(a1 + 32) objectAtIndex:0];
  v6 = [v19 addRowWithTitle:v4 value:v5];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Walking" value:@"localized string not found" table:0];
  v9 = [*(a1 + 32) objectAtIndex:1];
  v10 = [v19 addRowWithTitle:v8 value:v9];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"Transit" value:@"localized string not found" table:0];
  v13 = [*(a1 + 32) objectAtIndex:2];
  v14 = [v19 addRowWithTitle:v12 value:v13];

  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"Cycling" value:@"localized string not found" table:0];
  v17 = [*(a1 + 32) objectAtIndex:3];
  v18 = [v19 addRowWithTitle:v16 value:v17];
}

void sub_100754840(id a1, id a2)
{
  v2 = a2;
  [v2 integerValue];
  GEOSetUserTransportTypePreference();
  v3 = [v2 integerValue];

  [UserProfileAnalyticsManager capturePreferredDirectionsForTransportType:v3];
}

id sub_1007548A4(id a1)
{
  v1 = GEOGetUserTransportTypePreference();

  return [NSNumber numberWithInteger:v1];
}

void sub_100754A14(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100754AB0;
  v5[3] = &unk_101661A90;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

id sub_100754AB0(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 120), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 rebuildSections];
}

void sub_100754DF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v13 = 0;
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v11 = sub_1007990B4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed Sundew call when attempting to update photo preferences with error %@", &v16, 0xCu);
  }

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"[Photo Credit] Photo Credit update error" value:@"localized string not found" table:0];

  if (v10)
  {
LABEL_7:
    v14 = sub_1007990B4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Attribution update error: %@", &v16, 0xCu);
    }

    v15 = v10;
    v13 = v15;
  }

LABEL_10:
  (*(*(a1 + 32) + 16))();
}

void sub_100755048(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10075506C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = sub_1007990B4();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v9)
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed Sundew call when attempting to fetch with error %@", &v12, 0xCu);
      }

      v10 = 0;
      WeakRetained[64] = 0;
    }

    else
    {
      if (v9)
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fetched photo credit result: %@", &v12, 0xCu);
      }

      WeakRetained[64] = [v5 attributePhotos];
      v10 = [v5 attributionName];
    }

    v11 = *(WeakRetained + 9);
    *(WeakRetained + 9) = v10;

    [WeakRetained rebuildSections];
  }
}

uint64_t sub_100755CE0(uint64_t a1)
{
  [HomeAnalyticsManager captureRatingRequestDiscoveryAction:98];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100755D3C(uint64_t a1)
{
  [HomeAnalyticsManager captureRatingRequestDiscoveryAction:25];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

id sub_1007563B0()
{
  if (qword_10195D130 != -1)
  {
    dispatch_once(&qword_10195D130, &stru_101628450);
  }

  v1 = qword_10195D128;

  return v1;
}

void sub_100756404(id a1)
{
  v1 = os_log_create("com.apple.Maps", "CarSearchResults");
  v2 = qword_10195D128;
  qword_10195D128 = v1;
}

SearchResult *__cdecl sub_100756820(id a1, MKPlaceCollectionMapItem *a2, unint64_t a3)
{
  v3 = a2;
  v4 = [SearchResult alloc];
  v5 = [(MKPlaceCollectionMapItem *)v3 mapItem];

  v6 = [(SearchResult *)v4 initWithMapItem:v5];

  return v6;
}

void sub_100756C38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[40] = 0;
    v4 = [WeakRetained chromeViewController];
    v5 = [v4 isCurrentContext:v3];

    if (v5)
    {
      v6 = sub_1007563B0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [*(a1 + 32) debugDescription];
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CarChromeModeCoordinator did update visible results: %@", buf, 0xCu);
      }

      v8 = [v3 chromeViewController];
      v9 = [v8 mapCameraController];
      LOBYTE(v10) = 0;
      [v9 frameSearchResults:*(a1 + 32) withResultToSelect:0 historyItem:0 suggestedMapRegion:0 minZoom:0 maxZoom:0 disableAdditionalViewportPadding:v10 completion:0];
    }
  }
}

void sub_10075711C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100757148(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained _labelMarkerForCustomFeatureAnnotation:v3];

    if (v5)
    {
      v6 = objc_loadWeakRetained((a1 + 40));
      [v6 _selectLabelMarker:v5 animated:1];
    }

    else
    {
      v6 = sub_1007563B0();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 32) mapItem];
        v8 = [v7 name];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "_customPOIsController failed to find a labelMarker for focused search result: %@", &v9, 0xCu);
      }
    }
  }
}

void sub_100757688(uint64_t a1)
{
  [*(a1 + 32) _captureCurrentViewport];
  v2 = [*(a1 + 32) chromeViewController];
  v3 = [v2 nextTopContext];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [*(a1 + 32) _highlightSearchResult:0];
    v5 = [*(a1 + 32) chromeViewController];
    v6 = [v5 searchPinsManager];
    [v6 clearSearchPins];
  }

  v7 = +[MKLocationManager sharedLocationManager];
  [v7 stopLocationUpdateWithObserver:*(a1 + 32)];
}

void sub_100757828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100757840(uint64_t a1)
{
  v2 = [*(a1 + 32) chromeViewController];
  v3 = [v2 previousTopContext];
  objc_opt_class();
  *(*(*(a1 + 40) + 8) + 24) = objc_opt_isKindOfClass() & 1;

  v4 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    [v4 _trackInteractionIfViewportChanged];
  }

  else
  {
    size = MKMapRectNull.size;
    *(v4 + 56) = MKMapRectNull.origin;
    *(v4 + 72) = size;
  }

  v6 = [*(a1 + 32) category];

  if (v6)
  {
    [*(a1 + 32) _fetchCategoryResults];
  }

  v7 = [*(a1 + 32) chromeViewController];
  v8 = [v7 searchPinsManager];
  [v8 setSearchPins:*(*(a1 + 32) + 104) selectedPin:0 animated:0];

  v9 = [*(a1 + 32) category];

  if (v9)
  {
    v10 = +[MKLocationManager sharedLocationManager];
    [v10 startLocationUpdateWithObserver:*(a1 + 32)];
  }
}

void sub_100758C14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id sub_100758C38()
{
  if (qword_10195D140 != -1)
  {
    dispatch_once(&qword_10195D140, &stru_101628470);
  }

  v1 = qword_10195D138;

  return v1;
}

void sub_100758C8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = sub_100758C38();
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "FetchingSARCategories", "", v13, 2u);
  }

  if (a3 || ![v5 count])
  {
    v10 = &__NSArray0__struct;
    v11 = WeakRetained;
  }

  else
  {
    v11 = WeakRetained;
    v10 = v5;
  }

  [v11 setCategories:v10];
  v12 = *(a1 + 32);
  if (v12)
  {
    (*(v12 + 16))();
  }
}

void sub_100758D84(id a1)
{
  v1 = os_log_create("com.apple.Maps", "NavSARAPIController");
  v2 = qword_10195D138;
  qword_10195D138 = v1;
}

UIFont *__cdecl sub_1007598C8(id a1)
{
  v1 = +[MKFontManager sharedManager];
  v2 = [v1 subtitleFont];
  v3 = [UIFont _maps_cappedFont:v2 withMaxPoint:30.0];

  return v3;
}

void sub_10075AD24(uint64_t a1)
{
  if ([*(a1 + 32) hasEnteredLookAround])
  {
    v2 = [*(a1 + 32) locationTitle];
    [*(*(a1 + 40) + 168) setTitle:v2];

    v3 = [*(a1 + 32) locationSubtitle];
    [*(*(a1 + 40) + 168) setSubtitle:v3];

    v4 = [*(a1 + 32) collectionDate];

    if (v4)
    {
      v5 = +[NSBundle mainBundle];
      v6 = [v5 localizedStringForKey:@"Last Updated [LookAround]" value:@"localized string not found" table:0];

      v7 = *(*(a1 + 40) + 152);
      v8 = +[NSLocale currentLocale];
      v9 = [NSDateFormatter dateFormatFromTemplate:@"MMMMyyyy" options:0 locale:v8];
      [v7 setLocalizedDateFormatFromTemplate:v9];

      v10 = *(*(a1 + 40) + 152);
      v11 = [*(a1 + 32) collectionDate];
      v12 = [v10 stringFromDate:v11];
      v13 = [NSString stringWithFormat:v6, v12];
      [*(*(a1 + 40) + 232) setText:v13];
    }

    v14 = [*(*(a1 + 40) + 168) view];
    [v14 layoutIfNeeded];
  }
}

void sub_10075C358(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    MKZoomScaleForZoomLevelF();
    v3 = v2;
    v4 = 163.0 / v2;
    v5 = [WeakRetained searchResult];
    [v5 _offsetCoordinate:v3];
    v6 = MKMapPointForCoordinate(v24);

    v25.x = v6.x - v4 * 0.5;
    v25.y = v6.y - v4 * 0.5;
    v7 = v25.x + v4;
    v8 = v25.y + v4;
    v9 = MKCoordinateForMapPoint(v25);
    v26.x = v7;
    v26.y = v8;
    v10 = MKCoordinateForMapPoint(v26);
    v11 = [WeakRetained searchResult];
    [v11 _offsetCoordinate:v3];
    v13 = v12;
    v15 = v14;

    if (fabs(v15) > 180.0 || v13 < -90.0 || v13 > 90.0 || (v16 = vabdd_f64(v9.latitude, v10.latitude), v16 > 180.0) || (v17 = vabdd_f64(v9.longitude, v10.longitude), v17 > 360.0))
    {
      *(WeakRetained + 64) = 1;
    }

    else
    {
      v18 = objc_alloc_init(MKMapSnapshotOptions);
      [v18 setRegion:{v13, v15, v16, v17}];
      [v18 setMapType:{objc_msgSend(WeakRetained, "mapType")}];
      [v18 setSize:{163.0, 163.0}];
      v19 = [UITraitCollection traitCollectionWithDisplayScale:2.0];
      [v18 setTraitCollection:v19];

      v20 = [[MKMapSnapshotter alloc] initWithOptions:v18];
      v21 = *(WeakRetained + 10);
      *(WeakRetained + 10) = v20;

      v22 = *(WeakRetained + 10);
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10075C59C;
      v23[3] = &unk_101661A68;
      v23[4] = WeakRetained;
      [v22 startWithCompletionHandler:v23];
    }
  }
}

void sub_10075F148(uint64_t a1)
{
  [*(a1 + 32) setState:3];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;
}

id sub_100760B2C()
{
  if (qword_10195D150 != -1)
  {
    dispatch_once(&qword_10195D150, &stru_1016284E8);
  }

  v1 = qword_10195D148;

  return v1;
}

void sub_100760B80(id a1)
{
  v1 = os_log_create("com.apple.Maps", "SingleLocationUpdate");
  v2 = qword_10195D148;
  qword_10195D148 = v1;
}

id sub_100760ED4(uint64_t a1)
{
  [*(a1 + 32) setDelegate:0];
  [*(a1 + 32) stopUpdatingLocation];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void *sub_10076118C(void *result)
{
  if (*(result[4] + 32) == 1)
  {
    v1 = result;
    v2 = sub_100760B2C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = v1[4];
      v4 = 134217984;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Cancelling single location update %p", &v4, 0xCu);
    }

    return [v1[4] _cleanup];
  }

  return result;
}

void *sub_1007612E4(void *result)
{
  if ((*(result[4] + 32) & 1) == 0)
  {
    v1 = result;
    if (result[5])
    {
      v2 = sub_100760B2C();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = v1[4];
        [v3 desiredAccuracy];
        v5 = v4;
        [v1[4] acceptableAccuracy];
        v26 = 134218496;
        v27 = v3;
        v28 = 2048;
        v29 = v5;
        v30 = 2048;
        v31 = v6;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will request single location update %p (desired: ±%#.2lfm, acceptable: ±%#.2lfm)", &v26, 0x20u);
      }

      v7 = v1[4];
      v8 = *(v7 + 40);
      if (v8)
      {
        [v8 invalidate];
        v7 = v1[4];
      }

      *(v7 + 32) = 1;
      v9 = +[NSDate date];
      v10 = v1[4];
      v11 = *(v10 + 48);
      *(v10 + 48) = v9;

      v12 = v1[4];
      if (!*(v12 + 16))
      {
        v13 = [CLLocationManager alloc];
        v14 = [v13 initWithEffectiveBundleIdentifier:MapsAppBundleId delegate:v1[4] onQueue:&_dispatch_main_q];
        v15 = v1[4];
        v16 = *(v15 + 16);
        *(v15 + 16) = v14;

        [v1[4] desiredAccuracy];
        [*(v1[4] + 16) setDesiredAccuracy:?];
        v12 = v1[4];
      }

      if (!*(v12 + 8))
      {
        v17 = [CLInUseAssertion newAssertionForBundleIdentifier:MapsAppBundleId withReason:@"Fetching a single good location fix"];
        v18 = v1[4];
        v19 = *(v18 + 8);
        *(v18 + 8) = v17;
      }

      v20 = [v1[5] copy];
      v21 = v1[4];
      v22 = *(v21 + 56);
      *(v21 + 56) = v20;

      v23 = [NSTimer scheduledTimerWithTimeInterval:v1[4] target:"_firstTimeout" selector:0 userInfo:0 repeats:5.0];
      v24 = v1[4];
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      return [*(v1[4] + 16) startUpdatingLocation];
    }
  }

  return result;
}

id sub_100762C4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:v6 forIndexPath:*(a1 + 40)];

  v8 = [[UserProfileSectionFooterViewModel alloc] initWithContentString:v4];
  v9 = [v4 length];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [*(a1 + 32) numberOfSections];
    v10 = v11 != [*(a1 + 40) section] + 1;
  }

  [(UserProfileSectionFooterViewModel *)v8 setCollapsed:v10];
  [(UserProfileSectionFooterViewModel *)v8 setContainsLink:1];
  [(UserProfileSectionFooterViewModel *)v8 setTarget:*(a1 + 48)];
  [(UserProfileSectionFooterViewModel *)v8 setAction:"privacyTextTapped"];
  [v7 configureWithViewModel:v8];
  [v7 setNeedsLayout];
  [v7 layoutIfNeeded];

  return v7;
}

void sub_100762F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100762F6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"Show Credit" value:@"localized string not found" table:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100763220;
  v18[3] = &unk_1016334B8;
  objc_copyWeak(&v19, (a1 + 32));
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100763264;
  v15[3] = &unk_10165FC50;
  objc_copyWeak(&v17, (a1 + 32));
  v6 = v3;
  v16 = v6;
  v7 = [v6 addSwitchRowWithTitle:v5 get:v18 set:v15];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 48) == 1)
  {
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"[Photo Credit] Nickname" value:@"localized string not found" table:0];
    v13[4] = v9;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1007633B4;
    v14[3] = &unk_101658E28;
    v14[4] = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1007633C8;
    v13[3] = &unk_10165EF00;
    v12 = [v6 addTextFieldRowWithTitle:0 placeholderText:v11 inputType:0 get:v14 set:v13];

    [v12 setFilter:&stru_101628550];
    [v12 setDidBeginEditing:&stru_101628590];
    [v12 setMaximumNumberOfCharacters:30];
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
}

void sub_100763200(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

uint64_t sub_100763220(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[48];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_100763264(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[48] != a2)
  {
    WeakRetained[48] = a2;
    v5 = *(WeakRetained + 7);
    *(WeakRetained + 7) = 0;
    v11 = WeakRetained;

    v11[64] = 1;
    v6 = v11[48];
    if (v6 == 1)
    {
      a2 = [*(a1 + 32) rows];
      if ([a2 count] == 1)
      {

LABEL_11:
        [v11 rebuildSections];
        goto LABEL_12;
      }

      if (v11[48])
      {

LABEL_12:
        v9 = v11;
LABEL_13:
        if (v9[48])
        {
          v10 = 338;
        }

        else
        {
          v10 = 341;
        }

        [GEOAPPortal captureUserAction:v10 target:77 value:0];
        [v11 _photoCreditDidUpdate];
        WeakRetained = v11;
        goto LABEL_17;
      }
    }

    v7 = [*(a1 + 32) rows];
    v8 = [v7 count];

    if (v6)
    {
    }

    v9 = v11;
    if (v8 != 2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

LABEL_17:
}

id sub_1007633C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3[7] != a2)
  {
    v4 = a2;
    v5 = +[NSCharacterSet whitespaceCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    v7 = *(a1 + 32);
    v8 = *(v7 + 56);
    *(v7 + 56) = v6;

    *(*(a1 + 32) + 64) = 1;
    v3 = *(a1 + 32);
  }

  return [v3 _photoCreditDidUpdate];
}

BOOL sub_10076349C(id a1, NSString *a2)
{
  v2 = qword_10195D160;
  v3 = a2;
  if (v2 != -1)
  {
    dispatch_once(&qword_10195D160, &stru_101628570);
  }

  v4 = [(NSString *)v3 rangeOfCharacterFromSet:qword_10195D158];

  return v4 == 0x7FFFFFFFFFFFFFFFLL;
}

void sub_10076350C(id a1)
{
  v6 = objc_alloc_init(NSMutableCharacterSet);
  v1 = +[NSCharacterSet alphanumericCharacterSet];
  [v6 formUnionWithCharacterSet:v1];

  v2 = +[NSCharacterSet punctuationCharacterSet];
  [v6 formUnionWithCharacterSet:v2];

  v3 = +[NSCharacterSet whitespaceCharacterSet];
  [v6 formUnionWithCharacterSet:v3];

  [v6 invert];
  v4 = [v6 copy];
  v5 = qword_10195D158;
  qword_10195D158 = v4;
}

void sub_100763890(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v13 = 0;
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v11 = sub_1007990B4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed Sundew call when attempting to update photo preferences with error %@", &v16, 0xCu);
  }

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"[Photo Credit] Photo Credit update error" value:@"localized string not found" table:0];

  if (v10)
  {
LABEL_7:
    v14 = sub_1007990B4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Attribution update error: %@", &v16, 0xCu);
    }

    v15 = v10;
    v13 = v15;
  }

LABEL_10:
  (*(*(a1 + 32) + 16))();
}

void sub_100763AE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100763B0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_1007990B4();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed Sundew call when attempting to fetch with error %@", &v17, 0xCu);
      }

      WeakRetained[48] = 0;
      v9 = *(WeakRetained + 7);
      *(WeakRetained + 7) = 0;
    }

    else
    {
      v10 = [v5 wasCleared];
      v11 = sub_1007990B4();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v10)
      {
        if (v12)
        {
          v17 = 138412290;
          v18 = v5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Fetched photo credit result, but the photo credit name has been cleared by the server: %@", &v17, 0xCu);
        }

        WeakRetained[48] = 0;
        v13 = *(WeakRetained + 7);
        *(WeakRetained + 7) = 0;

        v9 = [WeakRetained photoCreditChangesDelegate];
        v14 = +[NSBundle mainBundle];
        v15 = [v14 localizedStringForKey:@"[Photo Credit] Photo Credit name removed error message" value:@"localized string not found" table:0];
        [v9 photoCreditNameHasBeenFlaggedWithErrorMessage:v15];
      }

      else
      {
        if (v12)
        {
          v17 = 138412290;
          v18 = v5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Fetched photo credit result: %@", &v17, 0xCu);
        }

        WeakRetained[48] = [v5 attributePhotos];
        v16 = [v5 attributionName];
        v9 = *(WeakRetained + 7);
        *(WeakRetained + 7) = v16;
      }
    }

    [WeakRetained rebuildSections];
  }
}

id sub_100763F44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 57);
  *(v2 + 57) = v3 ^ 1;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    [v5 transform];
    v4 = *(a1 + 32);
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  v6 = 0.9;
  if (v3)
  {
    v6 = 1.11111111;
  }

  CGAffineTransformScale(&v10, &v9, v6, v6);
  v7 = *(v4 + 16);
  v9 = v10;
  return [v7 setTransform:&v9];
}

void sub_10076411C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100764138(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startArrowPulseAnimation];
}

void sub_1007643A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1007643C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showInstruction];
}

id sub_1007646F8(uint64_t a1)
{
  CGAffineTransformMakeRotation(&v5, *(a1 + 40));
  v2 = *(*(a1 + 32) + 16);
  v4 = v5;
  [v2 setTransform:&v4];
  [*(*(a1 + 32) + 16) setCenter:{*(a1 + 48), *(a1 + 56)}];
  return [*(*(a1 + 32) + 40) setCenter:{*(a1 + 64), *(a1 + 72)}];
}

void sub_100765044(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 setOpacity:0.0];
}

void sub_100765FC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    MKZoomScaleForZoomLevelF();
    v3 = 163.0 / v2;
    v4 = [WeakRetained routeStep];
    [v4 startCoordinate];
    v5 = MKMapPointForCoordinate(v23);

    v24.x = v5.x - v3 * 0.5;
    v24.y = v5.y - v3 * 0.5;
    v6 = v24.x + v3;
    v7 = v24.y + v3;
    v8 = MKCoordinateForMapPoint(v24);
    v25.x = v6;
    v25.y = v7;
    v9 = MKCoordinateForMapPoint(v25);
    v10 = [WeakRetained routeStep];
    [v10 startCoordinate];
    v12 = v11;
    v14 = v13;

    if (fabs(v14) > 180.0 || v12 < -90.0 || v12 > 90.0 || (v15 = vabdd_f64(v8.latitude, v9.latitude), v15 > 180.0) || (v16 = vabdd_f64(v8.longitude, v9.longitude), v16 > 360.0))
    {
      *(WeakRetained + 64) = 1;
    }

    else
    {
      v17 = objc_alloc_init(MKMapSnapshotOptions);
      [v17 setRegion:{v12, v14, v15, v16}];
      [v17 setMapType:{objc_msgSend(WeakRetained, "mapType")}];
      [v17 setSize:{163.0, 163.0}];
      v18 = [UITraitCollection traitCollectionWithDisplayScale:2.0];
      [v17 setTraitCollection:v18];

      v19 = [[MKMapSnapshotter alloc] initWithOptions:v17];
      v20 = *(WeakRetained + 10);
      *(WeakRetained + 10) = v19;

      v21 = *(WeakRetained + 10);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1007661FC;
      v22[3] = &unk_101661A68;
      v22[4] = WeakRetained;
      [v21 startWithCompletionHandler:v22];
    }
  }
}

id sub_100767C00(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setHidden:0];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);

  return [v3 setObservedProgress:v2];
}

id sub_100767D6C(uint64_t a1)
{
  [*(*(a1 + 32) + 48) setHidden:1];
  v2 = *(*(a1 + 32) + 48);

  return [v2 removeFromSuperview];
}

void sub_100768B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100768B80(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100768C6C;
  v8[3] = &unk_101660C70;
  v9 = a3;
  v6 = v9;
  objc_copyWeak(&v12, (a1 + 40));
  v10 = v5;
  v11 = *(a1 + 32);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, v8);

  objc_destroyWeak(&v12);
}

void sub_100768C6C(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained mergeWithServerConfig:*(a1 + 40)];
  }

  v3 = *(a1 + 48);
  v4 = objc_loadWeakRetained((a1 + 56));
  (*(v3 + 16))(v3, v4);
}

id sub_1007699B8()
{
  if (qword_10195D170 != -1)
  {
    dispatch_once(&qword_10195D170, &stru_101628650);
  }

  v1 = qword_10195D168;

  return v1;
}

void sub_100769A0C(id a1)
{
  v1 = os_log_create("com.apple.Maps", "VLFSessionAnalyticsCapturer");
  v2 = qword_10195D168;
  qword_10195D168 = v1;
}

void sub_100769AF0(uint64_t a1)
{
  if (!*(*(a1 + 32) + 128))
  {
    v2 = +[NSMutableArray array];
    v3 = *(a1 + 32);
    v4 = *(v3 + 128);
    *(v3 + 128) = v2;
  }

  v7 = objc_alloc_init(GEOVLFDeviceOrientation);
  [v7 setRelativeTimestampMs:((*(a1 + 40) - *(*(a1 + 32) + 24)) * 1000.0)];
  v5 = *(a1 + 48);
  if (v5 < 4)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 0;
  }

  [v7 setOrientation:v6];
  [*(*(a1 + 32) + 128) addObject:v7];
}