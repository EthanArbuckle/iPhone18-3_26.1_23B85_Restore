void sub_100028FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  --*(*(*(a1 + 40) + 8) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000290AC;
  block[3] = &unk_10005B530;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000290AC(uint64_t a1)
{
  v2 = [*(a1 + 32) px_firstKeyWindow];
  v3 = [v2 windowScene];
  v4 = [v3 interfaceOrientation];

  if (v4 == 4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  v6 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000291CC;
  v12[3] = &unk_10005B210;
  v12[4] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002922C;
  v9[3] = &unk_10005B238;
  v9[4] = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = v7;
  v11 = v8;
  [v6 rotateIfNeeded:v5 before:v12 after:v9];
}

void sub_1000291CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentTestName];
  [v1 pu_startedAnimationSubTest:@"Rotation" forTest:v2];
}

uint64_t sub_10002922C(void *a1)
{
  v2 = a1[4];
  v3 = [v2 currentTestName];
  [v2 pu_finishedAnimationSubTest:@"Rotation" forTest:v3];

  v4 = *(*(a1[6] + 8) + 24) == 0;
  v5 = *(a1[5] + 16);

  return v5();
}

void sub_10002949C(uint64_t a1)
{
  if ([*(a1 + 32) length])
  {
    [*(a1 + 40) pu_finishedAnimationSubTest:*(a1 + 32) forTest:*(a1 + 48)];
  }

  v2 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100029568;
  v6[3] = &unk_10005B1C0;
  v3 = *(a1 + 56);
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v7 = v3;
  v9 = v4;
  v8 = v5;
  [v2 installCACommitCompletionBlock:v6];
}

void sub_100029568(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029628;
  block[3] = &unk_10005B1C0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v9 = v4;
  v8 = v5;
  dispatch_after(v2, &_dispatch_main_q, block);
}

uint64_t sub_100029628(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    return (*(v2 + 16))(v2, a1[6], a1[5]);
  }

  else
  {
    return (*(a1[5] + 16))();
  }
}

void sub_100029820(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 == 1)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v5 = [*(a1 + 32) subarrayWithRange:{1, v2 - 1}];
    [*(a1 + 40) _transitionCuratedLibraryVC:*(a1 + 48) toZoomLevelsWithSubTestNames:v5 taskHandler:*(a1 + 64) completionHandler:*(a1 + 56)];
  }
}

void sub_100029CC0(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"Latency" forTest:*(a1 + 40)];
  [*(a1 + 32) finishedSubTest:*(a1 + 48) forTest:*(a1 + 40)];
  v2 = dispatch_time(0, 500000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100029DF4;
  v5[3] = &unk_10005B148;
  v6 = *(a1 + 56);
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v9 = v3;
  v7 = v4;
  v8 = *(a1 + 64);
  dispatch_after(v2, &_dispatch_main_q, v5);
}

id *sub_100029DB8(id *result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] failedCurrentTestWithFailure:{@"Failed to perform action%@ error:%@", result[5], a3, v3, v4}];
  }

  return result;
}

void sub_100029DF4(uint64_t a1)
{
  if ([*(a1 + 32) count] == 1)
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 32) subarrayWithRange:{1, objc_msgSend(*(a1 + 32), "count") - 1}];
    [*(a1 + 40) _performActionsWithCuratedLibraryVC:*(a1 + 48) actionsTypesAndNames:v3 completionHandler:*(a1 + 56)];
  }
}

void sub_100029F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100029F94(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) startedCurrentTest];
  v4 = [[PXTwoTuple alloc] initWithFirst:&off_10005F940 second:&stru_10005C9B8];
  v27[0] = v4;
  v5 = [[PXTwoTuple alloc] initWithFirst:&off_10005F910 second:&stru_10005C9B8];
  v27[1] = v5;
  v6 = [[PXTwoTuple alloc] initWithFirst:&off_10005F8F8 second:&stru_10005C9B8];
  v27[2] = v6;
  v7 = [[PXTwoTuple alloc] initWithFirst:&off_10005F928 second:&stru_10005C9B8];
  v27[3] = v7;
  v8 = [NSArray arrayWithObjects:v27 count:4];

  v9 = [PXTwoTuple alloc];
  v10 = [v9 initWithFirst:PXCuratedLibraryActionSetPersonalLibraryFilter second:@"Personal"];
  v26[0] = v10;
  v11 = [PXTwoTuple alloc];
  v12 = [v11 initWithFirst:PXCuratedLibraryActionSetSharedLibraryFilter second:@"Shared"];
  v26[1] = v12;
  v13 = [PXTwoTuple alloc];
  v14 = [v13 initWithFirst:PXCuratedLibraryActionSetAllLibrariesFilter second:@"All"];
  v26[2] = v14;
  v15 = [NSArray arrayWithObjects:v26 count:3];

  v16 = *(a1 + 32);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002A250;
  v21[3] = &unk_10005B120;
  v21[4] = v16;
  v22 = v3;
  v23 = v8;
  v24 = v15;
  v25 = *(a1 + 40);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002A380;
  v20[3] = &unk_10005C140;
  v20[4] = v16;
  v17 = v15;
  v18 = v8;
  v19 = v3;
  [v16 ppt_startIterationWithBlock:v21 completion:v20];
}

void sub_10002A250(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002A388;
  v12[3] = &unk_10005B0F8;
  v12[4] = v5;
  v13 = v4;
  v14 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002A39C;
  v9[3] = &unk_10005A9E8;
  v7 = *(a1 + 64);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v5 _transitionCuratedLibraryVC:v13 toZoomLevelsWithSubTestNames:v6 taskHandler:v12 completionHandler:v9];
}

void sub_10002A4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002A4C4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) startedCurrentTest];
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A5BC;
  v7[3] = &unk_10005B0A8;
  v8 = v3;
  v9 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002A91C;
  v6[3] = &unk_10005C140;
  v6[4] = v9;
  v5 = v3;
  [v4 ppt_startIterationWithBlock:v7 completion:v6];
}

void sub_10002A5BC(uint64_t a1, void *a2)
{
  v27 = a1;
  v28 = a2;
  v2 = [[PXTwoTuple alloc] initWithFirst:&off_10005F8F8 second:@"DaysToMonths"];
  v37[0] = v2;
  v3 = [[PXTwoTuple alloc] initWithFirst:&off_10005F910 second:@"MonthsToYears"];
  v37[1] = v3;
  v4 = [[PXTwoTuple alloc] initWithFirst:&off_10005F8F8 second:@"YearsToMonths"];
  v37[2] = v4;
  v5 = [[PXTwoTuple alloc] initWithFirst:&off_10005F928 second:@"MonthsToDays"];
  v37[3] = v5;
  v6 = [[PXTwoTuple alloc] initWithFirst:&off_10005F940 second:@"DaysToAllPhotos"];
  v37[4] = v6;
  v7 = [[PXTwoTuple alloc] initWithFirst:&off_10005F928 second:@"AllPhotosToDays"];
  v37[5] = v7;
  v8 = [[PXTwoTuple alloc] initWithFirst:&off_10005F910 second:@"DaysToYears"];
  v37[6] = v8;
  v9 = [[PXTwoTuple alloc] initWithFirst:&off_10005F928 second:@"YearsToDays"];
  v37[7] = v9;
  v10 = [NSArray arrayWithObjects:v37 count:8];

  v11 = v27;
  v12 = [*(v27 + 32) viewProvider];
  v13 = [v12 viewModel];
  v14 = [v13 configuration];

  v15 = objc_alloc_init(NSMutableArray);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v10;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        v22 = [v21 first];
        if ([v14 isZoomLevelEnabled:{objc_msgSend(v22, "integerValue")}])
        {
          [v15 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v18);
  }

  v24 = v11[4];
  v23 = v11[5];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10002A924;
  v29[3] = &unk_10005A9E8;
  v25 = v11[6];
  v30 = v28;
  v31 = v25;
  v26 = v28;
  [v23 _transitionCuratedLibraryVC:v24 toZoomLevelsWithSubTestNames:v15 taskHandler:0 completionHandler:v29];
}

void sub_10002AA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002AA70(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 navigationController];
    v6 = [v4 viewModel];
    v7 = [v6 currentDataSource];

    [*(a1 + 32) startedCurrentTest];
    v8 = *(a1 + 32);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002ABFC;
    v14[3] = &unk_10005B058;
    v15 = v7;
    v16 = v8;
    v17 = v4;
    v18 = v5;
    v9 = *(a1 + 48);
    v19 = *(a1 + 40);
    v20 = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10002AEB4;
    v13[3] = &unk_10005C140;
    v13[4] = v8;
    v10 = v5;
    v11 = v4;
    v12 = v7;
    [v8 ppt_startIterationWithBlock:v14 completion:v13];
  }

  else
  {
    [*(a1 + 32) failedCurrentTest];
  }
}

void sub_10002ABFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lastAssetCollection];
  v5 = [PXAssetCollectionReference alloc];
  v6 = PXSimpleIndexPathNull[1];
  v34 = PXSimpleIndexPathNull[0];
  v35 = v6;
  v7 = [v5 initWithAssetCollection:v4 keyAssetReference:0 indexPath:&v34];
  v34 = 0u;
  v35 = 0u;
  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 indexPathForAssetCollectionReference:v7];
    v8 = *(a1 + 32);
  }

  v32 = v34;
  v33 = v35;
  v9 = [v8 assetsInSectionIndexPath:&v32];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 keyAssetsAtEnd])
  {
    *&v32 = 0;
    *(&v32 + 1) = &v32;
    *&v33 = 0x2020000000;
    v10 = [v9 count] - 1;
    v11 = -1;
  }

  else
  {
    v10 = 0;
    *&v32 = 0;
    *(&v32 + 1) = &v32;
    *&v33 = 0x2020000000;
    v11 = 1;
  }

  *(&v33 + 1) = v10;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  v12 = *(a1 + 40);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002AEBC;
  v21[3] = &unk_10005B030;
  v27 = &v32;
  v13 = v9;
  v29 = v11;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v16 = v4;
  v25 = v16;
  v28 = v31;
  v30 = *(a1 + 72);
  v26 = *(a1 + 56);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002B058;
  v18[3] = &unk_10005A9E8;
  v20 = *(a1 + 64);
  v17 = v3;
  v19 = v17;
  [v12 ppt_startIterationWithBlock:v21 completion:v18];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v32, 8);
}

void sub_10002AE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10002AEBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 72) + 8) + 24);
  if (v4 >= [*(a1 + 32) count] || (*(*(*(a1 + 72) + 8) + 24) & 0x8000000000000000) != 0 || (objc_msgSend(*(a1 + 32), "objectAtIndex:"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3[2](v3, 1);
  }

  else
  {
    v6 = v5;
    *(*(*(a1 + 72) + 8) + 24) += *(a1 + 88);
    v7 = [*(a1 + 40) currentTestName];
    [*(a1 + 40) pu_startedAnimationSubTest:@"ZoomIn" forTest:v7];
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002B08C;
    v12[3] = &unk_10005B008;
    v12[4] = *(a1 + 40);
    v13 = v8;
    v14 = v7;
    v10 = *(a1 + 96);
    v17 = *(a1 + 80);
    v18 = v10;
    v16 = v3;
    v15 = *(a1 + 64);
    v11 = v7;
    [v13 ppt_navigateToAsset:v6 inAssetContainer:v9 revealInOneUp:1 completionHandler:v12];
  }
}

void sub_10002B08C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) _oneUpViewControllerForViewController:*(a1 + 40)];
  v7 = [v6 navigationController];
  v8 = v7;
  if (a2 != 1 || (v6 ? (v9 = v7 == 0) : (v9 = 1), v9))
  {
    [*(a1 + 32) failedCurrentTestWithFailure:{@"Failed to navigate to one up view with error %@", v5}];
  }

  else
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10002B25C;
    v21[3] = &unk_10005C190;
    v21[4] = *(a1 + 32);
    v22 = *(a1 + 48);
    [v8 ppt_installTransitionAnimationCompletionHandler:v21];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002B270;
    v14[3] = &unk_10005AFE0;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v10 = v6;
    v11 = *(a1 + 80);
    v16 = v10;
    v20 = v11;
    v13 = *(a1 + 64);
    v12 = v13;
    v19 = v13;
    v17 = v8;
    v18 = *(a1 + 56);
    [v17 ppt_performBlockAfterNextNavigationAnimation:v14];
  }
}

void sub_10002B270(uint64_t a1)
{
  [*(a1 + 32) startedSubTest:@"vkAnalysisReady" forTest:*(a1 + 40) withMetrics:&off_10005F898];
  v2 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002B39C;
  v10[3] = &unk_10005AFB8;
  v9 = *(a1 + 32);
  v3 = *(&v9 + 1);
  v15 = *(a1 + 88);
  v8 = *(a1 + 72);
  v4 = v8;
  v14 = v8;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v11 = v9;
  v12 = v7;
  v13 = *(a1 + 48);
  [v2 ppt_notifyWhenVKAnalysisIsReadyWithTimeout:v10 handler:10.0];
}

void sub_10002B39C(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"vkAnalysisReady" forTest:*(a1 + 40)];
  [*(a1 + 32) pu_startedAnimationSubTest:@"ZoomOut" forTest:*(a1 + 40)];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002B57C;
  v17[3] = &unk_10005AEF0;
  v19 = *(a1 + 88);
  v11 = *(a1 + 72);
  v2 = v11;
  v18 = v11;
  v3 = objc_retainBlock(v17);
  v4 = *(a1 + 56);
  if (*(a1 + 48) == v4)
  {
    v8 = [v4 popViewControllerAnimated:1];
    v9 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002B6A8;
    v12[3] = &unk_10005C190;
    v10 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v7 = &v13;
    v13 = v10;
    [v9 ppt_installTransitionAnimationCompletionHandler:v12];
    [*(a1 + 56) ppt_performBlockAfterNextNavigationAnimation:v3];
  }

  else
  {
    v5 = *(a1 + 64);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002B658;
    v14[3] = &unk_10005A580;
    v6 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v7 = &v15;
    v15 = v6;
    v16 = v3;
    [v5 dismissViewControllerAnimated:1 completion:v14];
  }
}

void sub_10002B57C(uint64_t a1)
{
  v2 = ++*(*(*(a1 + 40) + 8) + 24) >= *(a1 + 48);
  v3 = dispatch_time(0, 600000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002B6BC;
  v4[3] = &unk_10005AEC8;
  v5 = *(a1 + 32);
  v6 = v2;
  dispatch_after(v3, &_dispatch_main_q, v4);
}

uint64_t sub_10002B658(uint64_t a1)
{
  [*(a1 + 32) pu_finishedAnimationSubTest:@"ZoomOut" forTest:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_10002B7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002B7EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 px_descendantViewControllerWithClass:objc_opt_class()];

  if (v4)
  {
    v5 = [v3 px_descendantViewControllerWithClass:objc_opt_class()];
    v6 = +[PXLemonadeSettings sharedInstance];
    v7 = [v6 enableTabs];

    if (v7 & 1) != 0 || ([v5 ppt_dismiss])
    {
      v8 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002BBAC;
      block[3] = &unk_10005B5A8;
      v40 = v5;
      v42 = *(a1 + 48);
      v41 = *(a1 + 32);
      v9 = v5;
      dispatch_after(v8, &_dispatch_main_q, block);

      goto LABEL_12;
    }

    [*(a1 + 32) failedCurrentTestWithFailure:@"Unable to dismiss to home"];
LABEL_10:

    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v3;
    v11 = [v10 navigationController];
    [*(a1 + 32) startedCurrentTest];
    v12 = *(a1 + 32);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10002BCFC;
    v33[3] = &unk_10005A920;
    v34 = v10;
    v35 = v12;
    v13 = *(a1 + 48);
    v37 = *(a1 + 40);
    v38 = v13;
    v36 = v11;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10002BF4C;
    v32[3] = &unk_10005C140;
    v32[4] = v12;
    v14 = v11;
    v5 = v10;
    [v12 ppt_startIterationWithBlock:v33 completion:v32];

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v3;
    v16 = [v15 navigationController];
    v17 = [v15 viewModel];
    v18 = [v17 currentDataSource];

    [*(a1 + 32) startedCurrentTest];
    v19 = *(a1 + 32);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10002BF54;
    v25[3] = &unk_10005B058;
    v26 = v18;
    v27 = v19;
    v28 = v15;
    v29 = v16;
    v20 = *(a1 + 48);
    v30 = *(a1 + 40);
    v31 = v20;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10002C20C;
    v24[3] = &unk_10005C140;
    v24[4] = v19;
    v21 = v16;
    v22 = v15;
    v23 = v18;
    [v19 ppt_startIterationWithBlock:v25 completion:v24];
  }

  else
  {
    [*(a1 + 32) failedCurrentTest];
  }

LABEL_12:
}

void sub_10002BBAC(uint64_t a1)
{
  v2 = [*(a1 + 32) viewProvider];
  v3 = [v2 viewModel];
  v4 = [v3 currentDataSource];

  [*(a1 + 40) startedCurrentTest];
  v5 = *(a1 + 40);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002CE40;
  v11[3] = &unk_10005A920;
  v12 = v4;
  v9 = *(a1 + 32);
  v6 = v9.i64[0];
  v13 = vextq_s8(v9, v9, 8uLL);
  v7 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002D0E0;
  v10[3] = &unk_10005C140;
  v10[4] = *(a1 + 40);
  v8 = v4;
  [v5 ppt_startIterationWithBlock:v11 completion:v10];
}

void sub_10002BCFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) collectionListFetchResult];
  v5 = [v4 lastObject];

  v6 = [*(a1 + 32) assetsInAssetCollection:v5];
  if ([*(a1 + 32) initiallyScrolledToBottom])
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v8 = [*(a1 + 32) initiallyScrolledToBottom];
  v9 = 0;
  if (v8)
  {
    v9 = [v6 count] - 1;
  }

  v29[3] = v9;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v10 = *(a1 + 40);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002C9BC;
  v19[3] = &unk_10005B030;
  v24 = v29;
  v11 = v6;
  v20 = v11;
  v26 = v7;
  v15 = *(a1 + 32);
  v12 = v15.i64[0];
  v21 = vextq_s8(v15, v15, 8uLL);
  v13 = v5;
  v22 = v13;
  v23 = *(a1 + 48);
  v25 = v28;
  v27 = *(a1 + 64);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002CBB8;
  v16[3] = &unk_10005A9E8;
  v18 = *(a1 + 56);
  v14 = v3;
  v17 = v14;
  [v10 ppt_startIterationWithBlock:v19 completion:v16];

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v29, 8);
}

void sub_10002BF28(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_10002BF54(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lastAssetCollection];
  v5 = [PXAssetCollectionReference alloc];
  v6 = PXSimpleIndexPathNull[1];
  v34 = PXSimpleIndexPathNull[0];
  v35 = v6;
  v7 = [v5 initWithAssetCollection:v4 keyAssetReference:0 indexPath:&v34];
  v34 = 0u;
  v35 = 0u;
  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 indexPathForAssetCollectionReference:v7];
    v8 = *(a1 + 32);
  }

  v32 = v34;
  v33 = v35;
  v9 = [v8 assetsInSectionIndexPath:&v32];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 keyAssetsAtEnd])
  {
    *&v32 = 0;
    *(&v32 + 1) = &v32;
    *&v33 = 0x2020000000;
    v10 = [v9 count] - 1;
    v11 = -1;
  }

  else
  {
    v10 = 0;
    *&v32 = 0;
    *(&v32 + 1) = &v32;
    *&v33 = 0x2020000000;
    v11 = 1;
  }

  *(&v33 + 1) = v10;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  v12 = *(a1 + 40);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002C214;
  v21[3] = &unk_10005B030;
  v27 = &v32;
  v13 = v9;
  v29 = v11;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v16 = v4;
  v25 = v16;
  v28 = v31;
  v30 = *(a1 + 72);
  v26 = *(a1 + 56);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002C3B0;
  v18[3] = &unk_10005A9E8;
  v20 = *(a1 + 64);
  v17 = v3;
  v19 = v17;
  [v12 ppt_startIterationWithBlock:v21 completion:v18];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v32, 8);
}

void sub_10002C1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10002C214(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 72) + 8) + 24);
  if (v4 >= [*(a1 + 32) count] || (*(*(*(a1 + 72) + 8) + 24) & 0x8000000000000000) != 0 || (objc_msgSend(*(a1 + 32), "objectAtIndex:"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3[2](v3, 1);
  }

  else
  {
    v6 = v5;
    *(*(*(a1 + 72) + 8) + 24) += *(a1 + 88);
    v7 = [*(a1 + 40) currentTestName];
    [*(a1 + 40) pu_startedAnimationSubTest:@"ZoomIn" forTest:v7];
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002C3E4;
    v12[3] = &unk_10005B008;
    v12[4] = *(a1 + 40);
    v13 = v8;
    v14 = v7;
    v10 = *(a1 + 96);
    v17 = *(a1 + 80);
    v18 = v10;
    v16 = v3;
    v15 = *(a1 + 64);
    v11 = v7;
    [v13 ppt_navigateToAsset:v6 inAssetContainer:v9 revealInOneUp:1 completionHandler:v12];
  }
}

void sub_10002C3E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) _oneUpViewControllerForViewController:*(a1 + 40)];
  v7 = [v6 navigationController];
  v8 = v7;
  if (a2 != 1 || (v6 ? (v9 = v7 == 0) : (v9 = 1), v9))
  {
    [*(a1 + 32) failedCurrentTestWithFailure:{@"Failed to navigate to one up view with error %@", v5}];
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002C548;
    v14[3] = &unk_10005AFE0;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v10 = v6;
    v11 = *(a1 + 80);
    v16 = v10;
    v20 = v11;
    v13 = *(a1 + 64);
    v12 = v13;
    v19 = v13;
    v17 = v8;
    v18 = *(a1 + 56);
    [v17 ppt_installTransitionAnimationCompletionHandler:v14];
  }
}

void sub_10002C548(uint64_t a1)
{
  [*(a1 + 32) pu_finishedAnimationSubTest:@"ZoomIn" forTest:*(a1 + 40)];
  [*(a1 + 32) startedSubTest:@"TimeToSharp" forTest:*(a1 + 40) withMetrics:&off_10005F880];
  v2 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002C684;
  v10[3] = &unk_10005AFB8;
  v9 = *(a1 + 32);
  v3 = *(&v9 + 1);
  v15 = *(a1 + 88);
  v8 = *(a1 + 72);
  v4 = v8;
  v14 = v8;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v11 = v9;
  v12 = v7;
  v13 = *(a1 + 48);
  [v2 ppt_notifyWhenFullQualityIsDisplayedWithTimeout:v10 handler:3.0];
}

void sub_10002C684(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"TimeToSharp" forTest:*(a1 + 40)];
  [*(a1 + 32) pu_startedAnimationSubTest:@"ZoomOut" forTest:*(a1 + 40)];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002C864;
  v17[3] = &unk_10005AEF0;
  v19 = *(a1 + 88);
  v11 = *(a1 + 72);
  v2 = v11;
  v18 = v11;
  v3 = objc_retainBlock(v17);
  v4 = *(a1 + 56);
  if (*(a1 + 48) == v4)
  {
    v8 = [v4 popViewControllerAnimated:1];
    v9 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002C990;
    v12[3] = &unk_10005C190;
    v10 = *(a1 + 40);
    v12[4] = *(a1 + 32);
    v7 = &v13;
    v13 = v10;
    [v9 ppt_installTransitionAnimationCompletionHandler:v12];
    [*(a1 + 56) ppt_performBlockAfterNextNavigationAnimation:v3];
  }

  else
  {
    v5 = *(a1 + 64);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002C940;
    v14[3] = &unk_10005A580;
    v6 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v7 = &v15;
    v15 = v6;
    v16 = v3;
    [v5 dismissViewControllerAnimated:1 completion:v14];
  }
}

void sub_10002C864(uint64_t a1)
{
  v2 = ++*(*(*(a1 + 40) + 8) + 24) >= *(a1 + 48);
  v3 = dispatch_time(0, 600000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002C9A4;
  v4[3] = &unk_10005AEC8;
  v5 = *(a1 + 32);
  v6 = v2;
  dispatch_after(v3, &_dispatch_main_q, v4);
}

uint64_t sub_10002C940(uint64_t a1)
{
  [*(a1 + 32) pu_finishedAnimationSubTest:@"ZoomOut" forTest:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_10002C9BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 72) + 8) + 24);
  if (v4 >= [*(a1 + 32) count] || (*(*(*(a1 + 72) + 8) + 24) & 0x8000000000000000) != 0 || (objc_msgSend(*(a1 + 32), "objectAtIndexedSubscript:"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3[2](v3, 1);
  }

  else
  {
    v6 = v5;
    *(*(*(a1 + 72) + 8) + 24) += *(a1 + 88);
    v7 = [*(a1 + 40) currentTestName];
    [*(a1 + 40) pu_startedAnimationSubTest:@"ZoomIn" forTest:v7];
    [*(a1 + 48) navigateToPhoto:v6 inAssetContainer:*(a1 + 56) animated:1];
    v8 = *(a1 + 64);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10002CBEC;
    v21[3] = &unk_10005C190;
    v21[4] = *(a1 + 40);
    v9 = v7;
    v22 = v9;
    [v8 ppt_installTransitionAnimationCompletionHandler:v21];
    v10 = *(a1 + 64);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002CC00;
    v15[3] = &unk_10005A8F8;
    v15[4] = *(a1 + 40);
    v16 = v9;
    v11 = v10;
    v12 = *(a1 + 80);
    v17 = v11;
    v13 = *(a1 + 96);
    v19 = v12;
    v20 = v13;
    v18 = v3;
    v14 = v9;
    [v11 ppt_performBlockAfterNextNavigationAnimation:v15];
  }
}

void sub_10002CC00(uint64_t a1)
{
  [*(a1 + 32) pu_startedAnimationSubTest:@"ZoomOut" forTest:*(a1 + 40)];
  v2 = [*(a1 + 48) popViewControllerAnimated:1];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002CD38;
  v11[3] = &unk_10005C190;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v11[4] = *(a1 + 32);
  v12 = v3;
  [v4 ppt_installTransitionAnimationCompletionHandler:v11];
  v5 = *(a1 + 48);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002CD4C;
  v8[3] = &unk_10005AEF0;
  v10 = *(a1 + 72);
  v7 = *(a1 + 56);
  v6 = v7;
  v9 = v7;
  [v5 ppt_performBlockAfterNextNavigationAnimation:v8];
}

void sub_10002CD4C(uint64_t a1)
{
  v2 = ++*(*(*(a1 + 40) + 8) + 24) >= *(a1 + 48);
  v3 = dispatch_time(0, 600000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002CE28;
  v4[3] = &unk_10005AEC8;
  v5 = *(a1 + 32);
  v6 = v2;
  dispatch_after(v3, &_dispatch_main_q, v4);
}

void sub_10002CE40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lastAssetCollection];
  v5 = [PXAssetCollectionReference alloc];
  v6 = PXSimpleIndexPathNull[1];
  v33 = PXSimpleIndexPathNull[0];
  v34 = v6;
  v7 = [v5 initWithAssetCollection:v4 keyAssetReference:0 indexPath:&v33];
  v33 = 0u;
  v34 = 0u;
  v8 = *(a1 + 32);
  if (v8)
  {
    [v8 indexPathForAssetCollectionReference:v7];
    v8 = *(a1 + 32);
  }

  v31 = v33;
  v32 = v34;
  v9 = [v8 assetsInSectionIndexPath:&v31];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v4 keyAssetsAtEnd])
  {
    *&v31 = 0;
    *(&v31 + 1) = &v31;
    *&v32 = 0x2020000000;
    v10 = [v9 count] - 1;
    v11 = -1;
  }

  else
  {
    v10 = 0;
    *&v31 = 0;
    *(&v31 + 1) = &v31;
    *&v32 = 0x2020000000;
    v11 = 1;
  }

  *(&v32 + 1) = v10;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v12 = *(a1 + 40);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002D0E8;
  v21[3] = &unk_10005AF90;
  v26 = &v31;
  v13 = v9;
  v28 = v11;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v16 = v4;
  v25 = v16;
  v27 = v30;
  v29 = *(a1 + 64);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002D270;
  v18[3] = &unk_10005A9E8;
  v20 = *(a1 + 56);
  v17 = v3;
  v19 = v17;
  [v12 ppt_startIterationWithBlock:v21 completion:v18];

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v31, 8);
}

void sub_10002D0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_10002D0E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 64) + 8) + 24);
  if (v4 >= [*(a1 + 32) count] || (*(*(*(a1 + 64) + 8) + 24) & 0x8000000000000000) != 0 || (objc_msgSend(*(a1 + 32), "objectAtIndex:"), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3[2](v3, 1);
  }

  else
  {
    v6 = v5;
    *(*(*(a1 + 64) + 8) + 24) += *(a1 + 80);
    v7 = [*(a1 + 40) currentTestName];
    [*(a1 + 40) pu_startedAnimationSubTest:@"ZoomIn" forTest:v7];
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002D2A4;
    v12[3] = &unk_10005AF68;
    v12[4] = *(a1 + 40);
    v13 = v8;
    v14 = v7;
    v10 = *(a1 + 88);
    v16 = *(a1 + 72);
    v17 = v10;
    v15 = v3;
    v11 = v7;
    [v13 ppt_navigateToAsset:v6 inAssetContainer:v9 revealInOneUp:1 completionHandler:v12];
  }
}

void sub_10002D2A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) _oneUpViewControllerForViewController:*(a1 + 40)];
  v7 = [v6 navigationController];
  v8 = v7;
  if (a2 != 1 || (v6 ? (v9 = v7 == 0) : (v9 = 1), v9))
  {
    [*(a1 + 32) failedCurrentTestWithFailure:{@"Failed to navigate to one up view with error %@", v5}];
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002D3EC;
    v14[3] = &unk_10005AF40;
    v14[4] = *(a1 + 32);
    v15 = *(a1 + 48);
    v10 = v6;
    v11 = *(a1 + 72);
    v16 = v10;
    v19 = v11;
    v13 = *(a1 + 56);
    v12 = v13;
    v18 = v13;
    v17 = v8;
    [v17 ppt_installTransitionAnimationCompletionHandler:v14];
  }
}

void sub_10002D3EC(uint64_t a1)
{
  [*(a1 + 32) pu_finishedAnimationSubTest:@"ZoomIn" forTest:*(a1 + 40)];
  [*(a1 + 32) startedSubTest:@"TimeToSharp" forTest:*(a1 + 40) withMetrics:&off_10005F868];
  v2 = *(a1 + 48);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002D518;
  v10[3] = &unk_10005AF18;
  v9 = *(a1 + 32);
  v3 = *(&v9 + 1);
  v14 = *(a1 + 80);
  v8 = *(a1 + 64);
  v4 = v8;
  v13 = v8;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v11 = v9;
  v12 = v7;
  [v2 ppt_notifyWhenFullQualityIsDisplayedWithTimeout:v10 handler:3.0];
}

void sub_10002D518(uint64_t a1)
{
  [*(a1 + 32) finishedSubTest:@"TimeToSharp" forTest:*(a1 + 40)];
  [*(a1 + 32) pu_startedAnimationSubTest:@"ZoomOut" forTest:*(a1 + 40)];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002D6C8;
  v12[3] = &unk_10005AEF0;
  v14 = *(a1 + 80);
  v8 = *(a1 + 64);
  v2 = v8;
  v13 = v8;
  v3 = objc_retainBlock(v12);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002D7A4;
  v9[3] = &unk_10005A580;
  v4 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v4;
  v5 = v3;
  v11 = v5;
  v6 = objc_retainBlock(v9);
  v7 = [*(a1 + 48) originTransitionType];
  if (v7 == 2)
  {
    [*(a1 + 48) dismissViewControllerAnimated:1 completion:v6];
  }

  else if (v7 == 1)
  {
    [*(a1 + 56) ppt_installTransitionAnimationCompletionHandler:v6];
    [*(a1 + 56) pu_popViewControllerAnimated:1 interactive:0];
  }

  else if (!v7)
  {
    [*(a1 + 32) failedCurrentTestWithFailure:{@"Undefined transition type, please verify how 1Up was presented"}];
  }
}

void sub_10002D6C8(uint64_t a1)
{
  v2 = ++*(*(*(a1 + 40) + 8) + 24) >= *(a1 + 48);
  v3 = dispatch_time(0, 600000000);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002D7F4;
  v4[3] = &unk_10005AEC8;
  v5 = *(a1 + 32);
  v6 = v2;
  dispatch_after(v3, &_dispatch_main_q, v4);
}

uint64_t sub_10002D7A4(uint64_t a1)
{
  [*(a1 + 32) pu_finishedAnimationSubTest:@"ZoomOut" forTest:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

id sub_10002D934()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100066640;
  v7 = qword_100066640;
  if (!qword_100066640)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10002E4D8;
    v3[3] = &unk_10005BED0;
    v3[4] = &v4;
    sub_10002E4D8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10002D9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002DA14(uint64_t a1)
{
  [*(a1 + 32) startedCurrentTest];
  v2 = [*(a1 + 32) currentTestName];
  v3 = [NSMutableDictionary dictionaryWithDictionary:*(a1 + 40)];
  v4 = [&off_10005F850 objectEnumerator];
  v5 = *(a1 + 32);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002DBD8;
  v15[3] = &unk_10005AE78;
  v16 = v4;
  v17 = v3;
  v18 = *(a1 + 48);
  v19 = v2;
  v6 = *(a1 + 64);
  v12 = *(a1 + 32);
  v7 = *(&v12 + 1);
  *&v8 = *(a1 + 56);
  *(&v8 + 1) = v6;
  v20 = v12;
  v21 = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002DD28;
  v13[3] = &unk_10005C190;
  v13[4] = *(a1 + 32);
  v14 = *(a1 + 56);
  v9 = v2;
  v10 = v3;
  v11 = v4;
  [v5 ppt_startIterationWithBlock:v15 completion:v13];
}

void sub_10002DBD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) nextObject];
  if (v4)
  {
    [*(a1 + 40) setObject:v4 forKeyedSubscript:@"transition"];
    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = *(a1 + 40);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002DD6C;
    v10[3] = &unk_10005AE50;
    v8 = *(a1 + 64);
    v9 = *(a1 + 72);
    v16 = *(a1 + 88);
    v10[4] = v8;
    v11 = v9;
    v12 = v4;
    v13 = *(a1 + 56);
    v14 = *(a1 + 80);
    v15 = v3;
    [v6 prepareForTransitionTestWithName:v5 options:v7 readyHandler:v10];
  }

  else
  {
    (*(v3 + 2))(v3, 1);
  }
}

id sub_10002DD28(uint64_t a1)
{
  [*(a1 + 32) finishedCurrentTest];
  v2 = *(a1 + 40);

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

void sub_10002DD6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = +[NSAssertionHandler currentHandler];
      [v14 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"PhotosApplication-Testing.m" lineNumber:1765 description:{@"unexpected class %@", v6}];
    }
  }

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v7 = [*(a1 + 40) objectForKeyedSubscript:@"iterations"];
  v8 = [v7 integerValue];

  v25[3] = v8;
  v9 = *(a1 + 32);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002DFA8;
  v17[3] = &unk_10005AE28;
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v18 = v10;
  v19 = v11;
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v12 = v5;
  v22 = v12;
  v13 = v6;
  v23 = v13;
  v24 = v25;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002E17C;
  v15[3] = &unk_10005C078;
  v16 = *(a1 + 72);
  [v9 ppt_startIterationWithBlock:v17 completion:v15];

  _Block_object_dispose(v25, 8);
}

void sub_10002DFA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSString stringWithFormat:@"Push-%@", *(a1 + 32)];
  v5 = [NSString stringWithFormat:@"Pop-%@", *(a1 + 32)];
  [*(a1 + 40) pu_startedAnimationSubTest:v4 forTest:*(a1 + 48)];
  [*(a1 + 56) pu_pushViewController:*(a1 + 64) withTransition:*(a1 + 72) animated:1 isInteractive:0];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002E190;
  v21[3] = &unk_10005A698;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v21[4] = *(a1 + 40);
  v22 = v4;
  v23 = v6;
  v8 = v4;
  [v7 ppt_installTransitionAnimationCompletionHandler:v21];
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002E1A0;
  v15[3] = &unk_10005AE00;
  v15[4] = *(a1 + 40);
  v16 = v5;
  v17 = v9;
  v11 = *(a1 + 56);
  v12 = *(a1 + 80);
  v19 = v3;
  v20 = v12;
  v18 = v11;
  v13 = v3;
  v14 = v5;
  [v10 ppt_performBlockAfterNextNavigationAnimation:v15];
}

void sub_10002E1A0(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E2A8;
  block[3] = &unk_10005AE00;
  v8 = *(a1 + 32);
  v3 = *(&v8 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v11 = v8;
  v12 = v6;
  v9 = *(a1 + 64);
  v7 = v9;
  v13 = v9;
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_10002E2A8(uint64_t a1)
{
  [*(a1 + 32) pu_startedAnimationSubTest:*(a1 + 40) forTest:*(a1 + 48)];
  [*(a1 + 56) pu_popViewControllerAnimated:1 interactive:0];
  v2 = *(a1 + 56);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002E3E0;
  v9[3] = &unk_10005A698;
  v3 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v3;
  v11 = *(a1 + 48);
  [v2 ppt_installTransitionAnimationCompletionHandler:v9];
  v4 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E3F0;
  v7[3] = &unk_10005A9E8;
  v6 = *(a1 + 64);
  v5 = v6;
  v8 = v6;
  [v4 ppt_performBlockAfterNextNavigationAnimation:v7];
}

void sub_10002E3F0(uint64_t a1)
{
  v2 = dispatch_time(0, 100000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E4A4;
  block[3] = &unk_10005A9E8;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_10002E4D8(uint64_t a1)
{
  sub_100021410();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PUTesterPPTBaselineViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100066640 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getPUTesterPPTBaselineViewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PhotosApplication-Testing.m" lineNumber:159 description:{@"Unable to find class %s", "PUTesterPPTBaselineViewController"}];

    __break(1u);
  }
}

void sub_10002E63C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v5;
    v6 = [v20 browsingSession];
    v7 = [v6 viewModel];

    v8 = [v7 assetsDataSource];
    v9 = [*(a1 + 32) currentTestOptions];
    v10 = [v9 objectForKeyedSubscript:@"maxPhotosCount"];
    v11 = [v10 integerValue];

    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v12 = [v9 objectForKeyedSubscript:@"iterations"];
    v13 = [v12 integerValue];

    v34[3] = v13;
    v14 = [NSMutableArray arrayWithCapacity:v11];
    if (a3)
    {
      [v8 lastItemIndexPath];
    }

    else
    {
      [v8 firstItemIndexPath];
    }
    v16 = ;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10002EA74;
    v30[3] = &unk_10005AD60;
    v17 = v8;
    v31 = v17;
    v18 = v14;
    v32 = v18;
    v33 = v11;
    [v17 enumerateIndexPathsStartingAtIndexPath:v16 reverseDirection:a3 usingBlock:v30];
    if ([v18 count])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v36 = 0x3032000000;
      v37 = sub_100021094;
      v38 = sub_1000210A4;
      v39 = 0;
      [*(a1 + 32) startedCurrentTest];
      v19 = *(a1 + 32);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_10002EB10;
      v22[3] = &unk_10005ADB0;
      p_buf = &buf;
      v23 = v18;
      v29 = v34;
      v24 = v17;
      v25 = v7;
      v27 = *(a1 + 40);
      v26 = v20;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10002ED40;
      v21[3] = &unk_10005C140;
      v21[4] = *(a1 + 32);
      [v19 ppt_startIterationWithBlock:v22 completion:v21];

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      [*(a1 + 32) failedCurrentTestWithFailure:@"Couldn't find any Live Photo"];
    }

    _Block_object_dispose(v34, 8);
  }

  else
  {
    v15 = PLPPTGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "unexpected view controller class %@", &buf, 0xCu);
    }

    [*(a1 + 32) failedCurrentTestWithFailure:@"Unexpected view controller class"];
  }
}

void sub_10002EA74(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v5 = [*(a1 + 32) assetAtIndexPath:?];
  if ([v5 playbackStyle] == 3)
  {
    [*(a1 + 40) addObject:v6];
    if ([*(a1 + 40) count] >= *(a1 + 48))
    {
      *a3 = 1;
    }
  }
}

void sub_10002EB10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(*(a1 + 72) + 8) + 40) nextObject];
  if (v4)
  {
    v5 = [*(a1 + 40) assetReferenceAtIndexPath:v4];
    v6 = [*(a1 + 48) assetsDataSource];
    v7 = [v6 assetReferenceForAssetReference:v5];

    v8 = *(a1 + 48);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002ED48;
    v20[3] = &unk_10005C190;
    v21 = v8;
    v22 = v7;
    v9 = v7;
    [v21 performChanges:v20];
    v10 = dispatch_time(0, 500000000);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002ED54;
    v15[3] = &unk_10005AD88;
    v18 = *(a1 + 64);
    v16 = *(a1 + 56);
    v17 = v5;
    v19 = v3;
    v11 = v5;
    dispatch_after(v10, &_dispatch_main_q, v15);
  }

  else
  {
    v12 = [*(a1 + 32) objectEnumerator];
    v13 = *(*(a1 + 72) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    (*(v3 + 2))(v3, --*(*(*(a1 + 80) + 8) + 24) >> 63);
  }
}

void sub_10002ED54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) asset];
  (*(v3 + 16))(v3, v2, v4, *(a1 + 56));
}

Class sub_10002F02C(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100066658)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_10002F34C;
    v6[4] = &unk_10005A8A8;
    v6[5] = v6;
    v7 = off_10005C010;
    v8 = 0;
    qword_100066658 = _sl_dlopen();
  }

  if (!qword_100066658)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *NeutrinoCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PhotosApplication-Testing.m" lineNumber:166 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("NUCacheNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getNUCacheNodeClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PhotosApplication-Testing.m" lineNumber:167 description:{@"Unable to find class %s", "NUCacheNode"}];

LABEL_10:
    __break(1u);
  }

  qword_100066650 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10002F218(uint64_t a1)
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

        v6 = [PHAssetChangeRequest changeRequestForAsset:*(*(&v7 + 1) + 8 * v5), v7];
        [v6 setVariationSuggestionStates:0 forVariationType:1];
        [v6 setVariationSuggestionStates:0 forVariationType:3];
        [v6 setVariationSuggestionStates:0 forVariationType:2];

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

uint64_t sub_10002F34C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100066658 = result;
  return result;
}

void sub_10002F42C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 currentTestName];
  [v7 startedSubTest:@"LivePhotoPlayback" forTest:v9 withMetrics:&off_10005F838];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002F51C;
  v11[3] = &unk_10005B350;
  v11[4] = *(a1 + 32);
  v12 = v6;
  v10 = v6;
  [v8 ppt_playCurrentLivePhotoWithCompletionHandler:v11];
}

uint64_t sub_10002F51C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentTestName];
  [v2 finishedSubTest:@"LivePhotoPlayback" forTest:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_10002F5FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002F690;
  v6[3] = &unk_10005C190;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 ppt_executeAfterRender:v6];
}

void sub_10002F690(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002F758;
  v4[3] = &unk_10005C190;
  v1 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = @"LivePhotoInEditPlaybackSubtest";
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10002F7BC;
  v2[3] = &unk_10005C190;
  v2[4] = v5;
  v3 = @"LivePhotoInEditPlaybackSubtest";
  [v1 ppt_playLivePhotoWithWillBeginPlaybackBlock:v4 didEndPlaybackBlock:v2];
}

void sub_10002F758(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v1 currentTestName];
  [v1 startedSubTest:v2 forTest:v3 withMetrics:&off_10005F820];
}

id sub_10002F7BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 currentTestName];
  [v2 finishedSubTest:v3 forTest:v4];

  v5 = *(a1 + 32);

  return [v5 finishedCurrentTest];
}

void sub_10002F8B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002F960;
  v7[3] = &unk_10005A698;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  [v6 ppt_executeAfterRender:v7];
}

void sub_10002F960(void *a1)
{
  v2 = a1[4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002FA04;
  v6[3] = &unk_10005A698;
  v3 = v2;
  v4 = a1[5];
  v5 = a1[6];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  [v3 ppt_selectAdjustmentsController:v6];
}

void sub_10002FA04(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002FAB8;
  v4[3] = &unk_10005A698;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  [v2 ppt_scrollBWSlider:v4];
}

void sub_10002FB60(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002FC08;
  v7[3] = &unk_10005A698;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  [v6 ppt_executeAfterRender:v7];
}

void sub_10002FC08(void *a1)
{
  v2 = a1[4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002FCAC;
  v6[3] = &unk_10005A698;
  v3 = v2;
  v4 = a1[5];
  v5 = a1[6];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  [v3 ppt_selectAdjustmentsController:v6];
}

void sub_10002FCAC(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002FD60;
  v4[3] = &unk_10005A698;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  [v2 ppt_scrollColorSlider:v4];
}

void sub_10002FE08(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002FEB0;
  v7[3] = &unk_10005A698;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  [v6 ppt_executeAfterRender:v7];
}

void sub_10002FEB0(void *a1)
{
  v2 = a1[4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002FF54;
  v6[3] = &unk_10005A698;
  v3 = v2;
  v4 = a1[5];
  v5 = a1[6];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  [v3 ppt_selectAdjustmentsController:v6];
}

void sub_10002FF54(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100030008;
  v4[3] = &unk_10005A698;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  [v2 ppt_scrollLightSlider:v4];
}

void sub_100030240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100030264(uint64_t a1, void *a2)
{
  v10 = a2;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v3 = +[NSDate date];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  [*(a1 + 32) ppt_scrollSelectedSliderByDelta];
  if (++*(*(*(a1 + 56) + 8) + 24) == *(a1 + 64))
  {
    v6 = +[NSDate date];
    [v6 timeIntervalSinceDate:*(*(*(a1 + 48) + 8) + 40)];
    v8 = v7;

    [v10 invalidate];
    v9 = [*(a1 + 32) ppt_renderStatisticsDictionaryForTimeInterval:v8];
    [*(a1 + 40) finishedCurrentTestWithExtraResults:v9];
  }
}

void sub_100030378(id a1, PUPhotoEditViewController *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100030404;
  v3[3] = &unk_10005C140;
  v4 = a2;
  v2 = v4;
  [(PUPhotoEditViewController *)v2 ppt_executeAfterRender:v3];
}

void sub_100030404(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100030480;
  v2[3] = &unk_10005C140;
  v3 = v1;
  [v3 ppt_applyAutoenhance:v2];
}

void sub_100030480(uint64_t a1)
{
  v2 = dispatch_time(0, 250000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100030528;
  block[3] = &unk_10005C140;
  v4 = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_10003053C(id a1, PUPhotoEditViewController *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000305C8;
  v3[3] = &unk_10005C140;
  v4 = a2;
  v2 = v4;
  [(PUPhotoEditViewController *)v2 ppt_executeAfterRender:v3];
}

void sub_1000305C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100030644;
  v2[3] = &unk_10005C140;
  v3 = v1;
  [v3 ppt_selectPerspectiveController:v2];
}

void sub_100030658(id a1, PUPhotoEditViewController *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000306E4;
  v3[3] = &unk_10005C140;
  v4 = a2;
  v2 = v4;
  [(PUPhotoEditViewController *)v2 ppt_executeAfterRender:v3];
}

void sub_1000306E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100030760;
  v2[3] = &unk_10005C140;
  v3 = v1;
  [v3 ppt_selectCropController:v2];
}

void sub_100030774(id a1, PUPhotoEditViewController *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100030800;
  v3[3] = &unk_10005C140;
  v4 = a2;
  v2 = v4;
  [(PUPhotoEditViewController *)v2 ppt_executeAfterRender:v3];
}

void sub_100030800(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10003087C;
  v2[3] = &unk_10005C140;
  v3 = v1;
  [v3 ppt_selectAdjustmentsController:v2];
}

void sub_100030890(id a1, PUPhotoEditViewController *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10003091C;
  v3[3] = &unk_10005C140;
  v4 = a2;
  v2 = v4;
  [(PUPhotoEditViewController *)v2 ppt_executeAfterRender:v3];
}

void sub_10003091C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000309A0;
  block[3] = &unk_10005C140;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000309A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100030A1C;
  v2[3] = &unk_10005C140;
  v3 = v1;
  [v3 ppt_selectNextLightingEffect:v2];
}

void sub_100030A30(id a1, PUPhotoEditViewController *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100030ABC;
  v3[3] = &unk_10005C140;
  v4 = a2;
  v2 = v4;
  [(PUPhotoEditViewController *)v2 ppt_executeAfterRender:v3];
}

void sub_100030ABC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100030B38;
  v2[3] = &unk_10005C140;
  v3 = v1;
  [v3 ppt_selectFiltersController:v2];
}

void sub_100030B4C(id a1, PUPhotoEditViewController *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100030BD8;
  v3[3] = &unk_10005C140;
  v4 = a2;
  v2 = v4;
  [(PUPhotoEditViewController *)v2 ppt_executeAfterRender:v3];
}

void sub_100030CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100030D10(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) startedCurrentTest];
  v4 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100030E24;
  v9[3] = &unk_10005AB50;
  v10 = v3;
  v11 = v4;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v12 = v5;
  v13 = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100030F50;
  v8[3] = &unk_10005C140;
  v8[4] = *(a1 + 32);
  v7 = v3;
  [v4 ppt_startIterationWithBlock:v9 completion:v8];
}

void sub_100030E24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ppt_overOneUpPresentationSession];
  v5 = *(a1 + 40);
  v6 = [v5 currentTestName];
  [v5 pu_startedAnimationSubTest:@"Enter" forTest:v6];

  [v4 ppt_presentPhotoEditor];
  v7 = [*(a1 + 32) navigationController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100030F58;
  v13[3] = &unk_10005AB28;
  v8 = *(a1 + 48);
  v13[4] = *(a1 + 40);
  v14 = v7;
  v9 = v8;
  v10 = *(a1 + 56);
  v16 = v3;
  v17 = v10;
  v15 = v9;
  v11 = v3;
  v12 = v7;
  [v12 ppt_performBlockAfterNextNavigationAnimation:v13];
}

void sub_100030F58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentTestName];
  [v2 pu_finishedAnimationSubTest:@"Enter" forTest:v3];

  v4 = [*(a1 + 40) topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 32);
    v6 = [v5 currentTestName];
    [v5 pu_startedAnimationSubTest:@"Exit" forTest:v6];

    (*(*(a1 + 48) + 16))();
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000310B4;
    v10[3] = &unk_10005B530;
    v7 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v9 = *(a1 + 56);
    v8 = v9;
    v11 = v9;
    [v7 ppt_performBlockAfterNextNavigationAnimation:v10];
  }

  else
  {
    NSLog(@"navigation to photo editor failed");
    [*(a1 + 32) failedCurrentTest];
  }
}

uint64_t sub_1000310B4(void *a1)
{
  v2 = a1[4];
  v3 = [v2 currentTestName];
  [v2 pu_finishedAnimationSubTest:@"Exit" forTest:v3];

  v4 = --*(*(a1[6] + 8) + 24) < 1;
  v5 = *(a1[5] + 16);

  return v5();
}

void sub_1000312A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"iterations"];
  [v4 integerValue];
  v7 = v3;
  v8 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = v3;
  PXIterateAsynchronously();
}

void sub_1000313D0(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] browsingSession];
  v5 = [v4 viewModel];

  v6 = [v5 assetsDataSource];
  v7 = [v5 currentAssetReference];
  v8 = [v6 indexPathForAssetReference:v7];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100021094;
  v26 = sub_1000210A4;
  v27 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003162C;
  v19[3] = &unk_10005AAD8;
  v9 = v8;
  v20 = v9;
  v21 = &v22;
  [v6 enumerateIndexPathsStartingAtIndexPath:v9 reverseDirection:0 usingBlock:v19];
  if (v23[5])
  {
    v10 = [v6 assetReferenceAtIndexPath:?];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000316A8;
    v16 = &unk_10005C190;
    v17 = v5;
    v11 = v10;
    v18 = v11;
    [v17 performChanges:&v13];
  }

  v12 = [a1[5] objectForKey:{@"documentMenuActions", v13, v14, v15, v16}];

  if (v12)
  {
    [a1[6] _runLoadOneUpDocumentMenuActionsSubTest:a1[4]];
  }

  [v3 next];

  _Block_object_dispose(&v22, 8);
}

void sub_100031608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003162C(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (*(a1 + 32) != v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = v7;
    *a3 = 1;
  }
}

void sub_100031858(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 ppt_overOneUpPresentationSession];
  [*(a1 + 32) startedCurrentTest];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v5 = *(a1 + 32);
  v6 = +[NSNotificationCenter defaultCenter];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100031A44;
  v18[3] = &unk_10005AA38;
  v18[4] = v19;
  [v5 installNotificationObserverForNotificationName:v6 notificationName:@"AddedNextButton" forOneNotification:1 usingBlock:v18];

  v7 = *(a1 + 32);
  v8 = [v7 currentTestName];
  [v7 pu_startedAnimationSubTest:@"ShareSheetPresentation" forTest:v8];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100031A58;
  v12[3] = &unk_10005AA88;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v9;
  v10 = v4;
  v14 = v10;
  v11 = v3;
  v15 = v11;
  v16 = *(a1 + 48);
  v17 = v19;
  [v10 ppt_presentShareSheetWithCompletion:v12];

  _Block_object_dispose(v19, 8);
}

void sub_100031A58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentTestName];
  [v2 pu_finishedAnimationSubTest:@"ShareSheetPresentation" forTest:v3];

  v4 = *(a1 + 32);
  v5 = +[NSDistributedNotificationCenter defaultCenter];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100031C14;
  v17[3] = &unk_10005AA60;
  v6 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  v18 = *(a1 + 48);
  [v4 installNotificationObserverForNotificationName:v5 notificationName:v6 forOneNotification:1 usingBlock:v17];

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100031CA8;
  v12 = &unk_10005A7B0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 56);
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v7 = objc_retainBlock(&v9);
  v8 = v7;
  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    [*(a1 + 48) ppt_tapNextButton:{v7, v9, v10, v11, v12, v13, v14, v15}];
  }

  else
  {
    (v7[2])(v7);
  }
}

id sub_100031C14(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentTestName];
  [v2 finishedSubTest:@"Sharing" forTest:v3];

  v4 = *(a1 + 32);
  v5 = [v4 currentTestName];
  [v4 pu_finishedAnimationSubTest:@"Sharing" forTest:v5];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 tearDownSharingTest:v7];
}

id sub_100031CA8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentTestName];
  [v2 startedSubTest:@"Sharing" forTest:v3 withMetrics:&off_10005F808];

  v4 = *(a1 + 32);
  v5 = [v4 currentTestName];
  [v4 pu_startedAnimationSubTest:@"Sharing" forTest:v5];

  v6 = [*(a1 + 32) currentTestName];
  v7 = [v6 isEqualToString:@"ScrollShareSheetNatural"];

  v8 = [*(a1 + 32) currentTestName];
  v9 = [v8 isEqualToString:@"ScrollShareSheetCarousel"];

  if (v9)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  if ((v7 & 1) == 0 && !v9)
  {
    if (*(a1 + 56))
    {
      v11 = *(a1 + 48);

      return [v11 ppt_shareUsingActivityOfType:?];
    }

    else
    {
      v19 = *(a1 + 32);

      return [v19 failedCurrentTestWithFailure:@"Code which should be unreachable has been reached."];
    }
  }

  v12 = *(a1 + 40);
  if (!v12)
  {
    v18 = 0;
    return [*(a1 + 32) failedCurrentTestWithFailure:{@"OneUpViewController:%@ is nil or has not appeared yet.", v18}];
  }

  if ([v12 _appearState] != 2)
  {
    v18 = *(a1 + 40);
    return [*(a1 + 32) failedCurrentTestWithFailure:{@"OneUpViewController:%@ is nil or has not appeared yet.", v18}];
  }

  v23 = [*(a1 + 48) ppt_activityViewController];
  if (!v23)
  {
    v20 = *(a1 + 32);
    v21 = @"ActivityViewController is nil";
LABEL_24:
    v13 = [v20 failedCurrentTestWithFailure:v21];
    goto LABEL_25;
  }

  if (!+[PhotosTestingRPTHelper isRPTAvailable])
  {
    v20 = *(a1 + 32);
    v21 = @"RecapPerformanceTesting FWS is not available.";
    goto LABEL_24;
  }

  v13 = objc_opt_respondsToSelector();
  v14 = v23;
  if (v13)
  {
    v15 = *(a1 + 32);
    v16 = v23;
    v17 = [v15 currentTestName];
    [v16 runScrollingTestWithName:v17 type:v10 completionHandler:0];

LABEL_25:
    v14 = v23;
  }

  return _objc_release_x1(v13, v14);
}

void sub_100031F80(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100032014;
  v4[3] = &unk_10005C190;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = v2;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, v4);
}

id sub_100032014(uint64_t a1)
{
  [*(a1 + 32) ppt_cancelActivity];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100032098;
  v4[3] = &unk_10005C140;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [v2 ppt_dismissShareSheetWithCompletion:v4];
}

void sub_10003217C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100032194(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) startedCurrentTest];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100032284;
  v8[3] = &unk_10005B260;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9 = v3;
  v10 = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003234C;
  v7[3] = &unk_10005C140;
  v7[4] = v5;
  v6 = v3;
  [v5 ppt_startIterationWithBlock:v8 completion:v7];
}

void sub_100032284(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) ppt_overOneUpPresentationSession];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100032354;
  v8[3] = &unk_10005B530;
  v5 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v9 = v4;
  v6 = v3;
  v7 = v4;
  [v7 ppt_presentShareSheetWithCompletion:v8];
}

void sub_100032354(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000323EC;
  v4[3] = &unk_10005A9E8;
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 ppt_dismissShareSheetWithCompletion:v4];
}

void sub_10003248C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 browsingSession];
  v7 = [v6 viewModel];

  v8 = [v7 assetsDataSource];
  v9 = [*(a1 + 32) currentTestOptions];
  v10 = [v9 objectForKeyedSubscript:@"maxPhotosCount"];
  v11 = [v10 integerValue];

  v12 = [v9 objectForKeyedSubscript:@"offset"];
  v13 = [v12 integerValue];

  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = [NSMutableArray arrayWithCapacity:v11];
  if (a3)
  {
    [v8 lastItemIndexPath];
  }

  else
  {
    [v8 firstItemIndexPath];
  }
  v16 = ;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100032868;
  v38[3] = &unk_10005A970;
  v40 = v43;
  v41 = v14;
  v17 = v15;
  v39 = v17;
  v42 = v11;
  [v8 enumerateIndexPathsStartingAtIndexPath:v16 reverseDirection:a3 usingBlock:v38];
  if ([v17 count])
  {
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v18 = [v9 objectForKeyedSubscript:@"iterations"];
    v19 = [v18 integerValue];

    v37[3] = v19;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = sub_100021094;
    v35[4] = sub_1000210A4;
    v36 = 0;
    v20 = objc_alloc_init(PXStatsCalculator);
    [*(a1 + 32) startedCurrentTest];
    v21 = *(a1 + 32);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000328D8;
    v27[3] = &unk_10005A9C0;
    v33 = v35;
    v28 = v8;
    v29 = v7;
    v30 = v5;
    v31 = v20;
    v34 = v37;
    v32 = v17;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100032AB0;
    v24[3] = &unk_10005C190;
    v22 = v31;
    v23 = *(a1 + 32);
    v25 = v22;
    v26 = v23;
    [v21 ppt_startIterationWithBlock:v27 completion:v24];

    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v37, 8);
  }

  else
  {
    [*(a1 + 32) failedCurrentTestWithFailure:@"Couldn't find any photos"];
  }

  _Block_object_dispose(v43, 8);
}

id sub_100032868(id result, uint64_t a2, _BYTE *a3)
{
  v3 = *(*(result + 5) + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  if (!(v4 % *(result + 6)))
  {
    v6 = result;
    [*(result + 4) addObject:a2];
    result = [v6[4] count];
    if (result >= v6[7])
    {
      *a3 = 1;
    }
  }

  return result;
}

void sub_1000328D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(*(a1 + 72) + 8) + 40) nextObject];
  if (v4)
  {
    v5 = [*(a1 + 32) assetReferenceAtIndexPath:v4];
    +[NSDate timeIntervalSinceReferenceDate];
    v7 = v6;
    v8 = *(a1 + 40);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100032C5C;
    v19[3] = &unk_10005C190;
    v20 = v8;
    v21 = v5;
    v9 = v5;
    [v20 performChanges:v19];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100032C64;
    v15[3] = &unk_10005A998;
    v18 = v7;
    v10 = *(a1 + 48);
    v16 = *(a1 + 56);
    v17 = v3;
    [v10 ppt_notifyWhenFullQualityIsDisplayedWithTimeout:v15 handler:2.0];
  }

  else
  {
    v11 = --*(*(*(a1 + 80) + 8) + 24);
    v12 = [*(a1 + 64) objectEnumerator];
    v13 = *(*(a1 + 72) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    (*(v3 + 2))(v3, v11 >> 63);
  }
}

void sub_100032AB0(uint64_t a1)
{
  v9 = +[NSMutableDictionary dictionary];
  v2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) count]);
  [v9 setObject:v2 forKeyedSubscript:@"highQualityImage-Latency:count"];

  [*(a1 + 32) mean];
  v3 = [NSNumber numberWithDouble:?];
  [v9 setObject:v3 forKeyedSubscript:@"highQualityImage-Latency:mean"];

  [*(a1 + 32) standardDeviation];
  v4 = [NSNumber numberWithDouble:?];
  [v9 setObject:v4 forKeyedSubscript:@"highQualityImage-Latency:stdev"];

  [*(a1 + 32) min];
  v5 = [NSNumber numberWithDouble:?];
  [v9 setObject:v5 forKeyedSubscript:@"highQualityImage-Latency:min"];

  [*(a1 + 32) max];
  v6 = [NSNumber numberWithDouble:?];
  [v9 setObject:v6 forKeyedSubscript:@"highQualityImage-Latency:max"];

  [*(a1 + 32) mean];
  v8 = [NSNumber numberWithDouble:1.0 / v7];
  [v9 setObject:v8 forKeyedSubscript:@"highQualityImage-ImagesPerSecond"];

  [*(a1 + 40) finishedCurrentTestWithExtraResults:v9];
}

void sub_100032C64(uint64_t a1, int a2)
{
  if (a2)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    [*(a1 + 32) addValue:v3 - *(a1 + 48)];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032D14;
  block[3] = &unk_10005C078;
  v5 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10003301C(uint64_t a1, void *a2)
{
  v14 = [a2 ppt_mainScrollView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = [v4 currentTestName];
    v6 = [*(a1 + 40) objectForKeyedSubscript:@"iterations"];
    v7 = [v6 integerValue];

    [v14 contentSize];
    v9 = v8;
    [v14 bounds];
    Width = CGRectGetWidth(v16);
    [v14 _interpageSpacing];
    v12 = v9 / (Width + v11);
    if (v12 >= 10)
    {
      v13 = 10;
    }

    else
    {
      v13 = v12;
    }

    [v14 pu_ppt_performPageSwipeTest:v5 iterations:v7 numberOfPages:v13 scrollAxis:1];
  }

  else
  {
    [v4 failedCurrentTest];
  }
}

void sub_1000331CC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKey:@"openInfoPanel"];

  if (v3)
  {
    [v5 ppt_toggleAccessoryView];
    v4 = [v5 view];
    [v4 layoutIfNeeded];
  }

  [*(a1 + 40) _runScrollTestWithOneUpViewController:v5 options:*(a1 + 32)];
}

void sub_100033570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100033588(uint64_t a1)
{
  [*(a1 + 32) ppt_toggleAccessoryView];
  v2 = dispatch_time(0, 1000000 * *(a1 + 64));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003367C;
  block[3] = &unk_10005A948;
  v6 = *(a1 + 40);
  v3 = *(&v6 + 1);
  v4 = *(a1 + 32);
  v10 = *(a1 + 64);
  *&v5 = v4;
  *(&v5 + 1) = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_10003367C(uint64_t a1)
{
  [*(a1 + 32) startedCurrentTest];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100033794;
  v6[3] = &unk_10005A920;
  v4 = *(a1 + 32);
  v2 = *(&v4 + 1);
  *&v3 = *(a1 + 48);
  *(&v3 + 1) = *(a1 + 56);
  v9 = *(a1 + 64);
  v7 = v4;
  v8 = v3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000338A0;
  v5[3] = &unk_10005C140;
  v5[4] = *(a1 + 32);
  [v4 ppt_startIterationWithBlock:v6 completion:v5];
}

void sub_100033794(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) pu_startedAnimationSubTest:@"RevealRelatedTransition" forTest:*(a1 + 40)];
  [*(a1 + 48) ppt_toggleAccessoryView];
  v4 = dispatch_time(0, 1000000 * *(a1 + 64));
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000338A8;
  v9[3] = &unk_10005A8F8;
  v5 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v13 = *(a1 + 56);
  v14 = v7;
  v11 = v6;
  v12 = v3;
  v8 = v3;
  dispatch_after(v4, &_dispatch_main_q, v9);
}

void sub_1000338A8(uint64_t a1)
{
  [*(a1 + 32) pu_finishedAnimationSubTest:@"RevealRelatedTransition" forTest:*(a1 + 40)];
  [*(a1 + 32) pu_startedAnimationSubTest:@"HideRelatedTransition" forTest:*(a1 + 40)];
  [*(a1 + 48) ppt_toggleAccessoryView];
  v2 = dispatch_time(0, 1000000 * *(a1 + 72));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000339A8;
  block[3] = &unk_10005BF70;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v5 = *(a1 + 56);
  v4 = v5;
  v8 = v5;
  dispatch_after(v2, &_dispatch_main_q, block);
}

uint64_t sub_1000339A8(uint64_t a1)
{
  [*(a1 + 32) pu_finishedAnimationSubTest:@"HideRelatedTransition" forTest:*(a1 + 40)];
  v2 = --*(*(*(a1 + 56) + 8) + 24) < 1;
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

id sub_100033CFC(uint64_t a1)
{
  [*(a1 + 32) _configureLibraryFilterModeWithTestOptions:*(a1 + 40)];
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100033D88;
  v4[3] = &unk_10005A888;
  v4[4] = v2;
  return [v2 _navigateToAssetInOneUpPreferLocationAndFace:1 forCurrentTest:v4];
}

void sub_100033D88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 browsingSession];
  v5 = [v4 viewModel];
  v6 = [v5 assetsDataSource];
  v7 = [v6 isEmpty];

  v8 = *(a1 + 32);
  if (v7)
  {
    [v8 failedCurrentTest];
  }

  else
  {
    [v8 startedCurrentTest];
    [v3 ppt_toggleAccessoryView];
    v9 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100033E74;
    v10[3] = &unk_10005C140;
    v10[4] = v9;
    [v9 installCACommitCompletionBlock:v10];
  }
}

void sub_100034268(uint64_t a1, void *a2)
{
  v3 = [a2 viewProvider];
  v4 = [v3 viewModel];
  v5 = *(a1 + 56);
  if (v5 == [v4 zoomLevel])
  {
    v6 = 0;
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000343FC;
    v17[3] = &unk_10005A7F8;
    v17[4] = *(a1 + 56);
    [v4 performChanges:v17];
    v6 = 1000000000;
  }

  v7 = [v3 assetsDataSourceManager];
  [v7 performChanges:&stru_10005A838];

  v8 = dispatch_time(0, v6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034408;
  block[3] = &unk_10005A7B0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v3;
  v14 = v9;
  v15 = v10;
  v16 = *(a1 + 48);
  v11 = v3;
  dispatch_after(v8, &_dispatch_main_q, block);
}

void sub_100034408(uint64_t a1)
{
  v2 = [*(a1 + 32) gridView];
  [*(a1 + 40) ppt_performScrollTest:*(a1 + 48) withOptions:*(a1 + 56) gridView:v2 completionHandler:0];
}

void sub_100034558(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100034628;
  block[3] = &unk_10005A698;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_after(v4, &_dispatch_main_q, block);
}

void sub_100034628(uint64_t a1)
{
  v2 = +[UIApplication sharedApplication];
  [v2 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];

  [*(a1 + 32) startedCurrentTest];
  v3 = *(a1 + 32);
  v4 = [v3 currentTestName];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) contentScrollView];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10003472C;
  v7[3] = &unk_10005A760;
  v7[4] = *(a1 + 32);
  [v3 ppt_performScrollTest:v4 withOptions:v5 scrollView:v6 scrollAxis:2 completionHandler:v7];
}

void sub_100034990(uint64_t a1)
{
  v2 = [*(a1 + 32) _tungstenViewToTestForViewController:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = [v3 currentTestName];
  v5 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100034A54;
  v6[3] = &unk_10005A760;
  v6[4] = *(a1 + 32);
  [v3 ppt_performScrollTest:v4 withOptions:v5 gridView:v2 completionHandler:v6];
}

void sub_100034A54(uint64_t a1)
{
  v1 = [*(a1 + 32) rootViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_100034B34(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) _tungstenViewToTestForViewController:?];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [*(a1 + 32) currentTestName];
    [v4 ppt_performScrollTest:v5 withOptions:*(a1 + 40) gridView:v3 completionHandler:0];
  }

  else
  {
    v5 = [*(a1 + 32) _scrollViewToTestForViewController:v8];
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [v6 currentTestName];
      [v6 ppt_performScrollTest:v7 withOptions:*(a1 + 40) scrollView:v5 completionHandler:0];
    }
  }
}

void sub_100034D40(uint64_t a1)
{
  v2 = [*(a1 + 32) currentTestName];
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100034E20;
  v6[3] = &unk_10005A788;
  v6[4] = *(a1 + 32);
  v7 = v2;
  v8 = v3;
  v9 = *(a1 + 56);
  v5 = v2;
  [v4 prepareForScrollTestWithName:v5 options:v8 readyHandler:v6];
}

void sub_100034E20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100034EC4;
  v6[3] = &unk_10005A760;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 ppt_performScrollTest:v4 withOptions:v5 scrollView:a2 completionHandler:v6];
}

void sub_100034FD0(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSError px_genericErrorWithDebugDescription:@"Scroll test %@ failed", *(a1 + 32)];
  }

  v4 = v3;
  (*(*(a1 + 40) + 16))();
}

void sub_100035170(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  PXPPTDidEndScrollTestOnScrollView();
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

void sub_10003531C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100035338(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_1000355A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000355E8(void *a1, void *a2, _BYTE *a3)
{
  v23 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v23;
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = a1[4];
  [v23 bounds];
  [v7 convertRect:v23 fromCoordinateSpace:?];
  isKindOfClass = PXSizeGetArea();
  v6 = v23;
  v9 = v8;
  if (v8 <= *(*(a1[6] + 8) + 24))
  {
    goto LABEL_7;
  }

  v10 = v23;
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v13 = +[NSAssertionHandler currentHandler];
    v18 = a1[9];
    v19 = a1[5];
    v20 = objc_opt_class();
    v17 = NSStringFromClass(v20);
    v21 = [v10 px_descriptionForAssertionMessage];
    [v13 handleFailureInMethod:v18 object:v19 file:@"PhotosApplication-Testing.m" lineNumber:763 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"view", v17, v21}];
  }

  else
  {
    v13 = +[NSAssertionHandler currentHandler];
    v14 = a1[9];
    v15 = a1[5];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v13 handleFailureInMethod:v14 object:v15 file:@"PhotosApplication-Testing.m" lineNumber:763 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"view", v17}];
  }

LABEL_5:
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *(*(a1[6] + 8) + 24) = v9;
  v6 = v23;
  if (v9 >= *(*(a1[8] + 8) + 24))
  {
    *a3 = 1;
  }

LABEL_7:

  return _objc_release_x1(isKindOfClass, v6);
}

void sub_1000358A8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  if (v7)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    if (v11)
    {
      [v8 failedCurrentTestWithFailure:{@"%@", v11}];
    }

    else
    {
      v9 = [PXPPTNavigationHelper caseNameStringForPXProgrammaticNavigationResult:a2];
      v10 = [NSString stringWithFormat:@"Unable to navigate to destination. No reason was given. ProgrammaticNavigationResult is: %@", v9];
      [v8 failedCurrentTestWithFailure:{@"%@", v10}];
    }
  }
}

id sub_100036B08(uint64_t a1)
{
  [*(a1 + 32) setAllowImageRequests:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 41);

  return [v2 setAllowCaching:v3];
}

id sub_100036B4C(uint64_t a1)
{
  [*(a1 + 32) setEnabled:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setHDRConsideration:v3];
}

id sub_100036B8C(uint64_t a1)
{
  v2 = PLPPTGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Performing test with selector:%@", &v5, 0xCu);
  }

  return [*(a1 + 40) performSelector:NSSelectorFromString(*(a1 + 32)) withObject:*(a1 + 48)];
}

uint64_t sub_10003720C(uint64_t a1)
{
  [*(a1 + 32) failedTest:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_10003726C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

void sub_10003729C(uint64_t a1)
{
  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    v10 = v1;
    v11 = v2;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000373D8;
    v7[3] = &unk_10005A5F8;
    v6 = *(a1 + 32);
    v4 = *(&v6 + 1);
    *&v5 = *(a1 + 48);
    *(&v5 + 1) = *(a1 + 56);
    v8 = v6;
    v9 = v5;
    [v6 installCACommitCompletionBlock:v7];
  }
}

id sub_100037368(id result)
{
  v1 = *(*(result + 7) + 8);
  if (*(v1 + 24) == 1)
  {
    v2 = result;
    result = [*(result + 4) finishedSubTest:v2[5] forTest:v2[6]];
    v1 = *(v2[7] + 8);
  }

  *(v1 + 24) = 2;
  return result;
}

uint64_t sub_1000373B8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, a2);
  }

  return result;
}

id sub_1000373D8(uint64_t a1)
{
  result = [*(a1 + 32) startedSubTest:*(a1 + 40) forTest:*(a1 + 48) withMetrics:&off_10005F7F0];
  *(*(*(a1 + 56) + 8) + 24) = 1;
  return result;
}

void sub_100037888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000378A0(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = a2;
  if (([v19 isHidden] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = *(a1 + 32);
      [v19 bounds];
      [v14 convertRect:v19 fromView:?];
      v22.origin.x = v15;
      v22.origin.y = v16;
      v22.size.width = v17;
      v22.size.height = v18;
      v21.origin.x = v7;
      v21.origin.y = v9;
      v21.size.width = v11;
      v21.size.height = v13;
      if (CGRectContainsRect(v21, v22))
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *a3 = 1;
      }
    }
  }
}

id sub_10003799C(uint64_t a1)
{
  v2 = [*(a1 + 32) ppt_extraResults];
  [*(a1 + 32) ppt_cleanUpAfterTest:*(a1 + 40) isScrollTest:1];

  return v2;
}

uint64_t sub_100037E3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void sub_10003806C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100038090(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[4];
    if (v3)
    {
      (*(v3 + 16))();
    }

    v4 = *(a1[5] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  else
  {
    v8 = a1[6];
    v9 = *(*(a1[5] + 8) + 40);
    v10 = *(*(v8 + 8) + 40);
    v11 = *(*(*(a1[5] + 8) + 40) + 16);

    v11();
  }
}

uint64_t sub_100038BC4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

uint64_t sub_100038DD8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

uint64_t sub_10003908C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

uint64_t sub_10003942C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void sub_100039810(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100039910;
    block[3] = &unk_10005C190;
    v5 = v3;
    v6 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000399E8;
    v7[3] = &unk_10005C140;
    v7[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, v7);
  }
}

void sub_100039910(uint64_t a1)
{
  v2 = [*(a1 + 32) MSContainsErrorWithDomain:kMSASModelErrorDomain code:5];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  [*(a1 + 40) _showAlertForError:v4];
  v5 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "ERROR: Failed to subcribe to shared stream %@", &v7, 0xCu);
  }
}

void sub_100039CC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = PLPhotoSharingGetLog();
  v7 = v6;
  if (a2 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) publicDescription];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Succeeded to programmatically navigate to %{public}@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) publicDescription];
    v10 = 138543874;
    v11 = v9;
    v12 = 2048;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to programmatically navigate to %{public}@: result=%ti error=%@", &v10, 0x20u);
  }
}

void sub_10003A2F4(uint64_t a1)
{
  v3 = +[UIApplication sharedApplication];
  v2 = [v3 px_firstKeyWindow];
  [v2 pl_presentViewController:*(a1 + 32) animated:1];
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}