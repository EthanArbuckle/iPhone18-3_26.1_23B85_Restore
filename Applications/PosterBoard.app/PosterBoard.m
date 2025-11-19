void sub_100001EF0(id a1, id a2)
{
  v4 = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100001FBC;
  v9[3] = &unk_1000103D0;
  v10 = v2;
  v11 = v4;
  v6 = *(a2 + 2);
  v7 = v11;
  v8 = v10;
  v6(a2, v9);
}

void sub_100002468(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) addObject:v4];
  objc_sync_exit(v3);
}

void sub_1000024E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 markStartedTest:*(a1 + 32)];
  v5 = +[PosterBoardTestingUtilities posterRackViewController];
  v6 = [v5 collectionView];

  v7 = [RPTDirectionalSwipeTestParameters alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000026C4;
  v16[3] = &unk_100010470;
  v8 = v3;
  v17 = v8;
  v18 = *(a1 + 32);
  v9 = v6;
  v19 = v9;
  v10 = [v7 initWithTestName:0 scrollView:v9 completionHandler:v16];
  [v10 setSwipeSpeedFactor:&off_100010EB0];
  [v10 scrollingBounds];
  UIRectInset();
  [v10 setScrollingBounds:?];
  if ([*(a1 + 40) userInterfaceLayoutDirection] == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [v10 setDirection:v11];
  v12 = *(a1 + 48);
  objc_sync_enter(v12);
  v13 = *(a1 + 56);
  v14 = [*(a1 + 48) count];
  if (&v14[v13] >= *(a1 + 64))
  {
    v15 = *(a1 + 64);
  }

  else
  {
    v15 = &v14[v13];
  }

  [v10 setSwipeCount:v15];
  objc_sync_exit(v12);

  [RPTTestRunner runTestWithParameters:v10];
}

id sub_1000026C4(uint64_t a1)
{
  v2 = [*(a1 + 32) markFinishedTest:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = [NSIndexPath indexPathForItem:0 inSection:0];
  [v3 scrollToItemAtIndexPath:v4 atScrollPosition:16 animated:0];

  v5 = *(a1 + 32);

  return [v5 finish];
}

id sub_10000274C(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) copy];
  objc_sync_exit(v2);

  return v3;
}

void sub_100002954(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 markStartSubTest:@"presentPosterGallery" forTestName:*(a1 + 32)];
  v5 = +[PosterBoardTestingUtilities posterRackViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002A38;
  v7[3] = &unk_100010510;
  v8 = v3;
  v9 = *(a1 + 32);
  v6 = v3;
  [v5 presentPosterGallery:v7];
}

void sub_100002A38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 markFinishedSubTest:@"presentPosterGallery" forTestName:*(a1 + 40)];
    v6 = [*(a1 + 32) markStartSubTest:@"scrollPosterGallery" forTestName:*(a1 + 40)];
    v7 = [RPTScrollViewTestParameters alloc];
    v8 = [v3 collectionView];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100002B84;
    v13 = &unk_1000104E8;
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v9 = [v7 initWithTestName:0 scrollView:v8 completionHandler:&v10];

    [v9 setPreventSheetDismissal:{1, v10, v11, v12, v13}];
    [RPTTestRunner runTestWithParameters:v9];
  }

  else
  {
    [v4 cancelAndFailTestWithReason:@"poster gallery did not present"];
  }
}

id sub_100002B84(uint64_t a1)
{
  v2 = [*(a1 + 32) markFinishedSubTest:@"scrollPosterGallery" forTestName:*(a1 + 40)];
  v3 = [*(a1 + 32) markFinishedTest:*(a1 + 40)];
  v4 = *(a1 + 32);

  return [v4 finish];
}

void sub_100003018(id a1, PBFPPTBlockOperation *a2)
{
  v2 = a2;
  v3 = +[PosterBoardTestingUtilities posterRackViewController];
  v11 = [v3 posterExtensionDataStore];

  v4 = [v11 switcherConfiguration];
  v5 = [v4 mutableCopy];
  v6 = [v4 configurations];
  v7 = [v6 lastObject];
  [v5 setSelectedConfiguration:v7];

  v8 = [v4 configurations];
  v9 = [v8 lastObject];
  [v5 setDesiredActiveConfiguration:v9];

  v10 = [v11 updateDataStoreForSwitcherConfiguration:v5 reason:@"PPT" error:0];
  [(PBFPPTBlockOperation *)v2 finish];
}

void sub_10000313C(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  [*(a1 + 32) addObject:v4];
  objc_sync_exit(v3);
}

void sub_1000031BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 markStartSubTest:@"selectedPoster" forTestName:*(a1 + 32)];
  v5 = +[PosterBoardTestingUtilities posterRackViewController];
  v6 = [v5 collectionView];
  [v6 center];
  v9 = PBFPPTEventActionsToTouchAndHoldAtPoint(v7, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000032D0;
  v11[3] = &unk_1000104E8;
  v12 = v3;
  v13 = *(a1 + 32);
  v10 = v3;
  PBFPPTSynthesizeEventsForEventActions(v9, v11);
}

id sub_1000032D0(uint64_t a1)
{
  v2 = [*(a1 + 32) markFinishedSubTest:@"selectedPoster" forTestName:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 finish];
}

id sub_100003320(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) copy];
  objc_sync_exit(v2);

  return v3;
}

uint64_t sub_1000034B4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 delegate];
    v6 = objc_opt_isKindOfClass();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void PBFPPTSynthesizeEventsForEventActions(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(RCPPlayerPlaybackOptions);
  [RCPInlinePlayer playEventActions:v4 options:v5 completion:v3];
}

void sub_100003638(id a1, RCPEventStreamComposer *a2)
{
  v2 = UIApp;
  v3 = a2;
  v4 = +[UIScreen mainScreen];
  v35 = [v2 _keyWindowForScreen:v4];

  [v35 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [UIApp userInterfaceLayoutDirection];
  v14 = v6;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  if (v13 == 1)
  {
    MinX = CGRectGetMinX(*&v14);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v14);
  }

  v19 = MinX;
  v37.origin.x = v6;
  v37.origin.y = v8;
  v37.size.width = v10;
  v37.size.height = v12;
  MidY = CGRectGetMidY(v37);
  v21 = [UIApp userInterfaceLayoutDirection];
  v22 = v6;
  v23 = v8;
  v24 = v10;
  v25 = v12;
  if (v21 == 1)
  {
    MaxX = CGRectGetMaxX(*&v22);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v22);
  }

  v27 = MaxX;
  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  v28 = CGRectGetMidY(v38);
  [v35 convertPoint:0 toView:{v19, MidY}];
  [v35 _convertPointToSceneReferenceSpace:?];
  v30 = v29;
  v32 = v31;
  [v35 convertPoint:0 toView:{v27, v28}];
  [v35 _convertPointToSceneReferenceSpace:?];
  [(RCPEventStreamComposer *)v3 sendFlickWithStartPoint:v30 endPoint:v32 duration:v33, v34, 0.25];
}

void sub_1000037F0(id a1, RCPEventStreamComposer *a2)
{
  v2 = UIApp;
  v3 = a2;
  v4 = +[UIScreen mainScreen];
  v35 = [v2 _keyWindowForScreen:v4];

  [v35 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [UIApp userInterfaceLayoutDirection];
  v14 = v6;
  v15 = v8;
  v16 = v10;
  v17 = v12;
  if (v13 == 1)
  {
    MaxX = CGRectGetMaxX(*&v14);
  }

  else
  {
    MaxX = CGRectGetMinX(*&v14);
  }

  v19 = MaxX;
  v37.origin.x = v6;
  v37.origin.y = v8;
  v37.size.width = v10;
  v37.size.height = v12;
  MidY = CGRectGetMidY(v37);
  v21 = [UIApp userInterfaceLayoutDirection];
  v22 = v6;
  v23 = v8;
  v24 = v10;
  v25 = v12;
  if (v21 == 1)
  {
    MinX = CGRectGetMinX(*&v22);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v22);
  }

  v27 = MinX;
  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  v28 = CGRectGetMidY(v38);
  [v35 convertPoint:0 toView:{v19, MidY}];
  [v35 _convertPointToSceneReferenceSpace:?];
  v30 = v29;
  v32 = v31;
  [v35 convertPoint:0 toView:{v27, v28}];
  [v35 _convertPointToSceneReferenceSpace:?];
  [(RCPEventStreamComposer *)v3 sendFlickWithStartPoint:v30 endPoint:v32 duration:v33, v34, 0.25];
}

void *PBFPPTEventActionsToTapAtPoint(double a1, double a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003A18;
  v4[3] = &unk_100010618;
  *&v4[4] = a1;
  *&v4[5] = a2;
  v2 = objc_retainBlock(v4);

  return v2;
}

void sub_100003A18(uint64_t a1, void *a2)
{
  v3 = UIApp;
  v4 = a2;
  v5 = +[UIScreen mainScreen];
  v6 = [v3 _keyWindowForScreen:v5];

  [v6 convertPoint:0 toView:{*(a1 + 32), *(a1 + 40)}];
  [v6 _convertPointToSceneReferenceSpace:?];
  [v4 tap:?];
}

void *PBFPPTEventActionsToTouchAndHoldAtPoint(double a1, double a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100003B40;
  v4[3] = &unk_100010618;
  *&v4[4] = a1;
  *&v4[5] = a2;
  v2 = objc_retainBlock(v4);

  return v2;
}

void sub_100003B40(uint64_t a1, void *a2)
{
  v3 = UIApp;
  v4 = a2;
  v5 = +[UIScreen mainScreen];
  v6 = [v3 _keyWindowForScreen:v5];

  [v6 convertPoint:0 toView:{*(a1 + 32), *(a1 + 40)}];
  [v6 _convertPointToSceneReferenceSpace:?];
  [v4 touchDown:?];
  [v4 advanceTime:2.0];
  [v4 liftUpAtAllActivePoints];
}

void *PBFPPTEventActionsToPeekAndPopAtPoint(char a1, double a2, double a3, double a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003C84;
  v6[3] = &unk_100010638;
  *&v6[4] = a2;
  *&v6[5] = a3;
  v7 = a1;
  *&v6[6] = a4;
  v4 = objc_retainBlock(v6);

  return v4;
}

void sub_100003C84(uint64_t a1, void *a2)
{
  v3 = UIApp;
  v4 = a2;
  v5 = +[UIScreen mainScreen];
  v6 = [v3 _keyWindowForScreen:v5];

  [v6 convertPoint:0 toView:{*(a1 + 32), *(a1 + 40)}];
  [v6 _convertPointToSceneReferenceSpace:?];
  [v4 peekAndPop:*(a1 + 56) commit:? duration:?];
}

void sub_100003D44(id a1, RCPEventStreamComposer *a2)
{
  v2 = UIApp;
  v3 = a2;
  v4 = +[UIScreen mainScreen];
  v19 = [v2 _keyWindowForScreen:v4];

  [v19 bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MidY = CGRectGetMidY(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v11 = CGRectGetMidX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v12 = CGRectGetMidY(v24) + -200.0;
  [v19 convertPoint:0 toView:{MidX, MidY}];
  [v19 _convertPointToSceneReferenceSpace:?];
  v14 = v13;
  v16 = v15;
  [v19 convertPoint:0 toView:{v11, v12}];
  [v19 _convertPointToSceneReferenceSpace:?];
  [(RCPEventStreamComposer *)v3 sendFlickWithStartPoint:v14 endPoint:v16 duration:v17, v18, 0.25];
}

void sub_100003EC4(id a1, RCPEventStreamComposer *a2)
{
  v2 = UIApp;
  v3 = a2;
  v4 = +[UIScreen mainScreen];
  v19 = [v2 _keyWindowForScreen:v4];

  [v19 bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v10 = CGRectGetMidY(v22) + -200.0;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v11 = CGRectGetMidX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MidY = CGRectGetMidY(v24);
  [v19 convertPoint:0 toView:{MidX, v10}];
  [v19 _convertPointToSceneReferenceSpace:?];
  v14 = v13;
  v16 = v15;
  [v19 convertPoint:0 toView:{v11, MidY}];
  [v19 _convertPointToSceneReferenceSpace:?];
  [(RCPEventStreamComposer *)v3 sendFlickWithStartPoint:v14 endPoint:v16 duration:v17, v18, 0.25];
}

void sub_100004044(id a1, RCPEventStreamComposer *a2)
{
  v2 = UIApp;
  v3 = a2;
  v4 = +[UIScreen mainScreen];
  v27 = [v2 _keyWindowForScreen:v4];

  [v27 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [UIApp userInterfaceLayoutDirection];
  v29.origin.x = v6;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  MidX = CGRectGetMidX(v29);
  v15 = 50.0;
  if (v13 == 1)
  {
    v16 = -50.0;
  }

  else
  {
    v16 = 50.0;
  }

  v17 = MidX + v16;
  v30.origin.x = v6;
  v30.origin.y = v8;
  v30.size.width = v10;
  v30.size.height = v12;
  MidY = CGRectGetMidY(v30);
  if ([UIApp userInterfaceLayoutDirection] != 1)
  {
    v15 = -50.0;
  }

  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  v19 = CGRectGetMidX(v31) + v15;
  v32.origin.x = v6;
  v32.origin.y = v8;
  v32.size.width = v10;
  v32.size.height = v12;
  v20 = CGRectGetMidY(v32);
  [v27 convertPoint:0 toView:{v17, MidY}];
  [v27 _convertPointToSceneReferenceSpace:?];
  v22 = v21;
  v24 = v23;
  [v27 convertPoint:0 toView:{v19, v20}];
  [v27 _convertPointToSceneReferenceSpace:?];
  [(RCPEventStreamComposer *)v3 sendFlickWithStartPoint:v22 endPoint:v24 duration:v25, v26, 0.25];
}

void sub_100004200(id a1, RCPEventStreamComposer *a2)
{
  v2 = UIApp;
  v3 = a2;
  v4 = +[UIScreen mainScreen];
  v27 = [v2 _keyWindowForScreen:v4];

  [v27 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [UIApp userInterfaceLayoutDirection];
  v29.origin.x = v6;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  MidX = CGRectGetMidX(v29);
  v15 = -50.0;
  if (v13 == 1)
  {
    v16 = 50.0;
  }

  else
  {
    v16 = -50.0;
  }

  v17 = MidX + v16;
  v30.origin.x = v6;
  v30.origin.y = v8;
  v30.size.width = v10;
  v30.size.height = v12;
  MidY = CGRectGetMidY(v30);
  if ([UIApp userInterfaceLayoutDirection] != 1)
  {
    v15 = 50.0;
  }

  v31.origin.x = v6;
  v31.origin.y = v8;
  v31.size.width = v10;
  v31.size.height = v12;
  v19 = CGRectGetMidX(v31) + v15;
  v32.origin.x = v6;
  v32.origin.y = v8;
  v32.size.width = v10;
  v32.size.height = v12;
  v20 = CGRectGetMidY(v32);
  [v27 convertPoint:0 toView:{v17, MidY}];
  [v27 _convertPointToSceneReferenceSpace:?];
  v22 = v21;
  v24 = v23;
  [v27 convertPoint:0 toView:{v19, v20}];
  [v27 _convertPointToSceneReferenceSpace:?];
  [(RCPEventStreamComposer *)v3 sendFlickWithStartPoint:v22 endPoint:v24 duration:v25, v26, 0.25];
}

void sub_1000043BC(id a1, RCPEventStreamComposer *a2)
{
  v2 = UIApp;
  v3 = a2;
  v4 = +[UIScreen mainScreen];
  v19 = [v2 _keyWindowForScreen:v4];

  [v19 bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MaxY = CGRectGetMaxY(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v11 = CGRectGetMidX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MinY = CGRectGetMinY(v24);
  [v19 convertPoint:0 toView:{MidX, MaxY}];
  [v19 _convertPointToSceneReferenceSpace:?];
  v14 = v13;
  v16 = v15;
  [v19 convertPoint:0 toView:{v11, MinY}];
  [v19 _convertPointToSceneReferenceSpace:?];
  [(RCPEventStreamComposer *)v3 sendFlickWithStartPoint:v14 endPoint:v16 duration:v17, v18, 0.25];
}

void sub_100004534(id a1, RCPEventStreamComposer *a2)
{
  v2 = UIApp;
  v3 = a2;
  v4 = +[UIScreen mainScreen];
  v19 = [v2 _keyWindowForScreen:v4];

  [v19 bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MinY = CGRectGetMinY(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v11 = CGRectGetMidX(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  MaxY = CGRectGetMaxY(v24);
  if (PF_IS_PAD_DEVICE())
  {
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MidX = CGRectGetMinX(v25) + 100.0;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MinY = CGRectGetMinY(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v11 = CGRectGetMinX(v27) + 100.0;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    MaxY = CGRectGetMaxY(v28);
  }

  [v19 convertPoint:0 toView:{MidX, MinY}];
  [v19 _convertPointToSceneReferenceSpace:?];
  v14 = v13;
  v16 = v15;
  [v19 convertPoint:0 toView:{v11, MaxY}];
  [v19 _convertPointToSceneReferenceSpace:?];
  [(RCPEventStreamComposer *)v3 sendFlickWithStartPoint:v14 endPoint:v16 duration:v17, v18, 0.25];
}

void sub_100004710(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10000498C;
  v36 = sub_1000049B8;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000049C0;
  v30 = sub_1000049D0;
  v31 = 0;
  v10 = +[NSNotificationCenter defaultCenter];
  v11 = +[NSOperationQueue mainQueue];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000049D8;
  v22[3] = &unk_100010720;
  v24 = &v32;
  v25 = &v26;
  v12 = v9;
  v23 = v12;
  v13 = [v10 addObserverForName:v7 object:v8 queue:v11 usingBlock:v22];
  v14 = v27[5];
  v27[5] = v13;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004A80;
  block[3] = &unk_100010748;
  v20 = v12;
  v21 = &v26;
  v15 = v12;
  v16 = dispatch_block_create(0, block);
  v17 = v33[5];
  v33[5] = v16;

  v18 = dispatch_time(0, (a4 * 1000000000.0));
  dispatch_after(v18, &_dispatch_main_q, v33[5]);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

id sub_10000498C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1000049C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000049D8(void *a1, void *a2)
{
  v3 = *(*(a1[5] + 8) + 40);
  v7 = a2;
  dispatch_block_cancel(v3);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:*(*(a1[6] + 8) + 40)];

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  (*(a1[4] + 16))();
}

uint64_t sub_100004A80(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100004D5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, (*(a1 + 32) * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004E1C;
  block[3] = &unk_100010368;
  v7 = v3;
  v5 = v3;
  dispatch_after(v4, &_dispatch_main_q, block);
}

void sub_100004F38(double *a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  v6 = a1[6];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005008;
  v8[3] = &unk_1000107D0;
  v9 = v3;
  v10 = v5;
  v11 = *(a1 + 6);
  v7 = v3;
  sub_100004710(v5, v4, v8, v6);
}

void sub_100005008(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (a2)
  {
    v3 = a1[4];

    [v3 finish];
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Didn't observe %@ within %f seconds", a1[5], a1[6]];
    [v2 cancelAndFailTestWithReason:v4];
  }
}

void sub_100005184(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000521C;
  v6[3] = &unk_100010368;
  v7 = v3;
  v5 = v3;
  PBFPPTSynthesizeEventsForEventActions(v4, v6);
}

void sub_10000530C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000053A4;
  v6[3] = &unk_100010368;
  v7 = v3;
  v5 = v3;
  [v4 reset:v6];
}

void sub_10000549C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005544;
  v7[3] = &unk_100010368;
  v8 = v3;
  v6 = v3;
  [v4 scrollToFirstPoster:v5 completion:v7];
}

void sub_10000569C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) view];
  v5 = [v4 window];
  [v5 center];
  v8 = PBFPPTEventActionsToTouchAndHoldAtPoint(v6, v7);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100005774;
  v10[3] = &unk_100010368;
  v11 = v3;
  v9 = v3;
  PBFPPTSynthesizeEventsForEventActions(v8, v10);
}

void sub_100005774(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000581C;
  block[3] = &unk_100010368;
  v4 = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

void sub_100005938(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000059E0;
  v7[3] = &unk_100010870;
  v8 = v3;
  v6 = v3;
  [v5 reloadPosterDescriptorsForExtensionBundleIdentifier:v4 sessionInfo:0 completion:v7];
}

void sub_1000059E0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v5 = [a3 description];
    [v3 cancelAndFailTestWithReason:v5];
  }

  else
  {
    v4 = *(a1 + 32);

    [v4 finish];
  }
}

void sub_100005BC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = PRPosterRoleLockScreen;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100005CA0;
  v9[3] = &unk_1000108C0;
  v10 = v3;
  v7 = *(a1 + 48);
  v11 = *(a1 + 56);
  v8 = v3;
  [v4 createPosterConfigurationForProviderIdentifier:v5 posterDescriptorIdentifier:v7 role:v6 completion:v9];
}

void sub_100005CA0(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v5 description];
    [v7 cancelAndFailTestWithReason:v8];
  }

  else
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v10 = [[PRPosterConfiguration alloc] _initWithPath:v11];
      (*(v9 + 16))(v9, v10);
    }

    [*(a1 + 32) finish];
  }
}

void sub_100005E84(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = (*(*(a1 + 40) + 16))(*(a1 + 40));
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

        v9 = *(a1 + 32);
        v10 = [*(*(&v13 + 1) + 8 * v8) _path];
        v11 = [v10 serverIdentity];
        v12 = [v11 posterUUID];
        [v9 deletePosterConfigurationsMatchingUUID:v12 error:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [v3 finish];
}

void sub_100006160(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[UIApplication sharedApplication];
  [v3 startedTest:*(a1 + 32)];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained operationName];
    v5 = v4;
    v6 = *(a1 + 32);
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = WeakRetained;
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' starting testname '%@'", &v8, 0x16u);
  }
}

void sub_100006344(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = +[UIApplication sharedApplication];
  [v3 finishedTest:*(a1 + 32)];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained operationName];
    v5 = v4;
    v6 = *(a1 + 32);
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = WeakRetained;
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' finished testname '%@'", &v8, 0x16u);
  }
}

void sub_100006548(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[UIApplication sharedApplication];
  [v3 startedSubTest:*(a1 + 32) forTest:*(a1 + 40)];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained operationName];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = WeakRetained;
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' started testname '%@' / sub test %@", &v9, 0x20u);
  }
}

void sub_100006754(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[UIApplication sharedApplication];
  [v3 finishedSubTest:*(a1 + 32) forTest:*(a1 + 40)];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained operationName];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = WeakRetained;
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = 138412802;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PPT Operation '%@' finished testname '%@' / sub test %@", &v9, 0x20u);
  }
}

const __CFString *sub_100006ECC(uint64_t a1)
{
  v1 = [*(a1 + 32) state];
  v2 = @"Pending";
  if (v1 == 2)
  {
    v2 = @"Finished";
  }

  if (v1 == 1)
  {
    return @"Executing";
  }

  else
  {
    return v2;
  }
}

void sub_100007448(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSString stringWithFormat:@"Operation didn't complete within %f seconds", *(a1 + 40)];
  [v1 cancelAndFailTestWithReason:v2];
}

id sub_100007624()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for ApplicationDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

void sub_10000774C(void *a1)
{
  v1 = [a1 operationName];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Skipping '%@' because it's already finished", &v2, 0xCu);
}

void sub_1000077E4(void *a1)
{
  v1 = [a1 operationName];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Skipping '%@' because it's already executing", &v2, 0xCu);
}