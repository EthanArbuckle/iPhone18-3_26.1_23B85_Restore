void sub_100003904(uint64_t a1)
{
  if ([*(a1 + 32) needsLandscapeOverlayUpdate])
  {
    if ([*(a1 + 32) isLandscapeMode])
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100003A18;
      v6[3] = &unk_1000A2708;
      v6[4] = *(a1 + 32);
      [UIView performWithoutAnimation:v6];
      v2 = [*(a1 + 32) landscapeTrapOverlay];
      v3 = [v2 label];
      [v3 setAlpha:1.0];
    }

    else
    {
      v5 = [*(a1 + 32) landscapeTrapOverlay];
      v4 = [v5 label];
      [v4 setAlpha:0.0];
    }
  }
}

void sub_100003A18(uint64_t a1)
{
  [*(a1 + 32) updateLandscapeOverlayImmediately];
  v3 = [*(a1 + 32) landscapeTrapOverlay];
  v2 = [v3 label];
  [v2 setAlpha:0.0];
}

void sub_100003FDC(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if ([WeakRetained snapshottingEnabledUpdateIdentifier] == a1[6])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v3 = a1[4];
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[BaseAnimoji] updating snapshottingEnabled applying futureValue: %@", &v4, 0xCu);
    }

    [WeakRetained setSnapshottingEnabled:{objc_msgSend(a1[4], "BOOLValue")}];
  }
}

void sub_100005100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005120(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained layoutMonitorDidUpdateDisplayLayout:v7 withContext:v6];
}

void sub_100005418(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != [*(a1 + 32) strongPopoverCurrentlyPresented])
  {
    [*(a1 + 32) setStrongPopoverCurrentlyPresented:*(a1 + 40)];
    v6 = @"BaseMessagesViewControllerStrongPopupPresentedKey";
    v3 = [NSNumber numberWithBool:*(a1 + 40)];
    v7 = v3;
    v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 postNotificationName:@"BaseMessagesViewControllerStrongPopupPresentationNotification" object:*(a1 + 32) userInfo:v4];
  }
}

void sub_100005B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100005CCC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1000B4B10)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100005E10;
    v4[4] = &unk_1000A2810;
    v4[5] = v4;
    v5 = off_1000A27F8;
    v6 = 0;
    qword_1000B4B10 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1000B4B10)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LSPlugInKitProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10007C284();
  }

  qword_1000B4B08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100005E10()
{
  result = _sl_dlopen();
  qword_1000B4B10 = result;
  return result;
}

void sub_100005EBC(id a1)
{
  byte_1000B4B18 = espresso_create_context() != 0;

  _espresso_context_destroy();
}

uint64_t sub_100006314()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickerPackOrganizerDelegate_requestDismiss);

  return v1;
}

uint64_t sub_100006350()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickerPackOrganizerDelegate_requestPresentPlugin);

  return v1;
}

id sub_10000638C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC22StickersUltraExtension28StickerPackOrganizerDelegate_requestDismiss];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC22StickersUltraExtension28StickerPackOrganizerDelegate_requestPresentPlugin];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, "init");
}

id sub_10000640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC22StickersUltraExtension28StickerPackOrganizerDelegate_requestDismiss];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC22StickersUltraExtension28StickerPackOrganizerDelegate_requestPresentPlugin];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for StickerPackOrganizerDelegate();
  return objc_msgSendSuper2(&v8, "init");
}

void sub_100006748(void *a1)
{
  if (!a1)
  {
    return;
  }

  v11 = a1;
  v2 = [v11 identifier];
  if (!v2)
  {
    sub_10007D7D0();
    goto LABEL_12;
  }

  v3 = v2;
  v4 = sub_10007D7D0();
  v6 = v5;

  v7 = sub_10007D7D0();
  if (!v6)
  {
LABEL_12:

    goto LABEL_15;
  }

  if (v4 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = sub_10007DE50();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  (*(v1 + OBJC_IVAR____TtC22StickersUltraExtension28StickerPackOrganizerDelegate_requestPresentPlugin))(v11);
LABEL_15:
}

id sub_1000068E4()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_100006978()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerPackOrganizerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100006A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for StickerPackOrganizerDelegate();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC22StickersUltraExtension28StickerPackOrganizerDelegate_requestDismiss];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC22StickersUltraExtension28StickerPackOrganizerDelegate_requestPresentPlugin];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, "init");
}

id sub_100006A88(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(CKBrowserAppManagerViewController) init];
  [v3 setIsManagingStickers:1];
  [v3 setSendDelegate:a2];
  [v3 setDelegate:a2];
  return v3;
}

unint64_t sub_100006B04()
{
  result = qword_1000B2040;
  if (!qword_1000B2040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2040);
  }

  return result;
}

id sub_100006B58()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(CKBrowserAppManagerViewController) init];
  [v2 setIsManagingStickers:1];
  [v2 setSendDelegate:v1];
  [v2 setDelegate:v1];
  return v2;
}

uint64_t sub_100006C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006DF0();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100006C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006DF0();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100006D08()
{
  sub_100006DF0();
  sub_10007CE40();
  __break(1u);
}

uint64_t sub_100006D40(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006D88(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B2130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100006DF0()
{
  result = qword_1000B2138;
  if (!qword_1000B2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2138);
  }

  return result;
}

uint64_t sub_100006E44()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B4C38);
  sub_10000AE78(v0, qword_1000B4C38);
  return sub_10007C770();
}

uint64_t sub_100006F20(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_100006F8C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10000702C;
}

void sub_10000702C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t sub_1000070C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_localIdentifier);

  return v1;
}

char *sub_10000714C(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_previewCache] = 0;
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageView] = 0;
  v7 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_activityIndicator;
  v8 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v7] = v8;
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___cancelButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___addStickerButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___tapGestureRecognizer] = 0;
  v9 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_util;
  *&v3[v9] = [objc_allocWithZone(StickerPhotosUtil) init];
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalysisInteraction] = 0;
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalyzer] = 0;
  sub_1000720E8();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_image] = a1;
  v10 = &v3[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_localIdentifier];
  *v10 = a2;
  *(v10 + 1) = a3;
  v20.receiver = v3;
  v20.super_class = type metadata accessor for StickerImageConfirmationController();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", 0, 0);
  v13 = sub_100008AD4();
  [v13 setAnalysis:0];

  v14 = [objc_allocWithZone(VKCImageAnalyzerRequest) initWithImage:*&v12[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_image] requestType:32];
  v15 = sub_100008BBC();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19[4] = sub_10000A450;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100008FC4;
  v19[3] = &unk_1000A2A38;
  v17 = _Block_copy(v19);

  [v15 processRequest:v14 progressHandler:0 completionHandler:v17];
  _Block_release(v17);

  return v12;
}

uint64_t type metadata accessor for StickerImageConfirmationController()
{
  result = qword_1000B4C60;
  if (!qword_1000B4C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100007438()
{
  v0 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_100007488()
{
  v0 = objc_allocWithZone(StickerPhotosUtil);

  return [v0 init];
}

id sub_1000074C4(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id sub_100007534()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIImageView) init];
    [v4 setImage:*(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_image)];
    v5 = v4;
    [v5 setContentMode:1];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

objc_class *sub_1000075F4()
{
  v1 = v0;
  sub_10007DBD0();
  __chkstk_darwin();
  v2 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___cancelButtonItem;
  v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___cancelButtonItem);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___cancelButtonItem);
  }

  else
  {
    if (sub_10007D240())
    {
      sub_10000B77C(0, &qword_1000B2208);
      sub_10000B77C(0, &qword_1000B22C8);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v10.value.super.super.isa = sub_10007DBB0();
      v10.is_nil = 0;
      v5.super.super.isa = sub_10007DA50(UIBarButtonSystemItemCancel, v10, v11).super.super.isa;
    }

    else
    {
      sub_10000B77C(0, &qword_1000B22C0);
      sub_10007DBC0();
      sub_10000B77C(0, &qword_1000B22C8);
      sub_10007D7E0();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10007DBB0();
      v6 = sub_10007DBE0();
      [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      v5.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v6];
    }

    v7 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5.super.super.isa;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

objc_class *sub_10000787C()
{
  v1 = v0;
  sub_10007DBD0();
  __chkstk_darwin();
  v2 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___addStickerButtonItem;
  v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___addStickerButtonItem);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___addStickerButtonItem);
  }

  else
  {
    if (sub_10007D240())
    {
      sub_10000B77C(0, &qword_1000B2208);
      sub_10000B77C(0, &qword_1000B22C8);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v11.value.super.super.isa = sub_10007DBB0();
      v11.is_nil = 0;
      v5.super.super.isa = sub_10007DA50(UIBarButtonSystemItemAdd, v11, v12).super.super.isa;
    }

    else
    {
      sub_10000B77C(0, &qword_1000B22C0);
      sub_10007DBC0();
      sub_10000B77C(0, &qword_1000B22C8);
      sub_10007D7E0();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10007DBB0();
      v6 = sub_10007DBE0();
      [v6 setRole:1];
      v7 = v6;
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      v5.super.super.isa = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v7];
    }

    v8 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5.super.super.isa;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

void sub_100007B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10007C460();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_util);
    v11 = Strong;
    v12 = sub_100008AD4();
    v13 = [*&v11[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalysisInteraction] selectedSubjectIndexes];
    sub_10007C440();

    sub_10007C430(v14);
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    sub_10007C420();
    isa = sub_10007D8C0().super.isa;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = a2;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008740;
    aBlock[3] = a3;
    v19 = _Block_copy(aBlock);

    [v10 imageAnalysisInteraction:v12 createStickerRepresentationsAtIndexSet:v16 type:5 stickerIDs:isa progress:0 completion:v19];

    _Block_release(v19);
  }
}

id sub_100007D58()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___tapGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___tapGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___tapGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapImageView:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100007DDC()
{
  v44.receiver = v0;
  v44.super_class = type metadata accessor for StickerImageConfirmationController();
  objc_msgSendSuper2(&v44, "loadView");
  v1 = [v0 navigationItem];
  sub_10007D7E0();
  v2 = sub_10007D7A0();

  [v1 setTitle:v2];

  sub_100006D40(&qword_1000B2200);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10008C380;
  *(v3 + 32) = sub_1000075F4();
  *(v3 + 40) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
  *(v3 + 48) = sub_10000787C();
  sub_10000B77C(0, &qword_1000B2208);
  isa = sub_10007D8C0().super.isa;

  [v0 setToolbarItems:isa];

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  v7 = [objc_opt_self() systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  v9 = sub_100007534();
  [v8 addSubview:v9];

  result = [v0 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = *&v0[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_activityIndicator];
  [result addSubview:v11];

  v12 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageView;
  [*&v0[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageView] setUserInteractionEnabled:1];
  v13 = *&v0[v12];
  v14 = sub_100007D58();
  [v13 addGestureRecognizer:v14];

  v15 = *&v0[v12];
  v16 = sub_100008AD4();
  [v15 addInteraction:v16];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10008C390;
  v18 = [*&v0[v12] leftAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = result;
  v20 = [result leftAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v17 + 32) = v21;
  v22 = [*&v0[v12] rightAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = result;
  v24 = [result rightAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v17 + 40) = v25;
  v26 = [*&v0[v12] centerYAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = result;
  v28 = [result safeAreaLayoutGuide];

  v29 = [v28 centerYAnchor];
  v30 = [v26 constraintEqualToAnchor:v29];

  *(v17 + 48) = v30;
  v31 = [*&v0[v12] topAnchor];
  result = [v0 view];
  if (result)
  {
    v32 = result;
    v33 = objc_opt_self();
    v34 = [v32 safeAreaLayoutGuide];

    v35 = [v34 topAnchor];
    v36 = [v31 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v35 multiplier:1.0];

    *(v17 + 56) = v36;
    v37 = [v11 centerXAnchor];
    v38 = [*&v0[v12] centerXAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    *(v17 + 64) = v39;
    v40 = [v11 centerYAnchor];
    v41 = [*&v0[v12] centerYAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    *(v17 + 72) = v42;
    sub_10000B77C(0, &qword_1000B2210);
    v43 = sub_10007D8C0().super.isa;

    [v33 activateConstraints:v43];

    [*&v0[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___tapGestureRecognizer] setEnabled:0];
    [*&v0[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___addStickerButtonItem] setEnabled:0];
    return [v11 startAnimating];
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1000084BC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*((swift_isaMask & *Strong) + 0xC0))())
    {
      v7 = v6;
      if (a1)
      {
        v8 = a1;
      }

      else
      {
        v8 = &_swiftEmptyArrayStorage;
      }

      ObjectType = swift_getObjectType();
      v10 = *(v7 + 16);
      v11 = v5;

      v10(v11, &off_1000A2A88, v8, ObjectType, v7);

      swift_unknownObjectRelease();
    }

    if (a2)
    {
      swift_errorRetain();
      if (qword_1000B4C30 != -1)
      {
        swift_once();
      }

      v12 = sub_10007C780();
      sub_10000AE78(v12, qword_1000B4C38);
      swift_errorRetain();
      v13 = sub_10007C760();
      v14 = sub_10007DA10();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v20 = v16;
        *v15 = 136315138;
        swift_getErrorValue();
        v17 = sub_10007DEB0();
        v19 = sub_10000A660(v17, v18, &v20);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v13, v14, "Failed to create sticker representations. %s", v15, 0xCu);
        sub_10000B5CC(v16);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100008740(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {
    sub_10000B77C(0, &unk_1000B22D0);
    v6 = sub_10007D8E0();
  }

  v8 = a3;
  v9 = a4;
  v7(v6, a3, a4);
}

void sub_100008800(void *a1)
{
  v2 = v1;
  v4 = sub_10007C460();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007534();
  [a1 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = sub_100008AD4();
  v14 = [v13 subjectIndexAtPoint:{v10, v12}];

  v15 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalysisInteraction);
  v16 = v15;
  if (v14)
  {
    [v14 integerValue];
    sub_10007C450();
    sub_10007C430(v17);
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    [v16 highlightSubjectAtIndexSet:v19 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];
  }

  else
  {
    v20 = [v15 allSubjectIndexes];
    sub_10007C440();

    sub_10007C430(v21);
    v19 = v22;
    (*(v5 + 8))(v7, v4);
    [v16 highlightSubjectAtIndexSet:v19 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];
  }

  v23 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_previewCache);
  if (v23)
  {
    v24 = *(*v23 + 136);

    v24(v25);
  }
}

id sub_100008AD4()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalysisInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalysisInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalysisInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(VKCImageAnalysisInteraction) init];
    [v4 setDelegate:v0];
    v5 = v4;
    [v5 setSubjectViewUserInteractionDisabled:1];
    v6 = sub_100007534();
    [v6 addInteraction:v5];

    [*(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_util) setUsesLightDimmingViewInLightModeForImageAnalysisInteraction:v5];
    v7 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_100008BBC()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalyzer;
  v2 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalyzer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalyzer);
  }

  else
  {
    v4 = [objc_allocWithZone(VKCImageAnalyzer) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100008C30(uint64_t a1)
{
  v2 = sub_10007D2F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007D320();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_100008AD4();
    [v12 setAnalysis:a1];

    v13 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalysisInteraction;
    [*&v11[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalysisInteraction] set_photosImageForRemoveBackground:*&v11[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_image]];
    [*&v11[v13] setActiveInteractionTypes:8];
    sub_10000B77C(0, &qword_1000B22E0);
    v14 = sub_10007DAC0();
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    aBlock[4] = sub_10000B7FC;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008F80;
    aBlock[3] = &unk_1000A2BA0;
    v16 = _Block_copy(aBlock);
    v19 = v6;
    v17 = v16;
    v18 = v11;

    sub_10007D310();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000B84C(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
    sub_100006D40(&unk_1000B22F0);
    sub_10000B894();
    sub_10007DC50();
    sub_10007DAD0();
    _Block_release(v17);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v19);
  }

  return result;
}

uint64_t sub_100008F80(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100008FC4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100009050()
{
  sub_100006D40(&unk_1000B2960);
  __chkstk_darwin();
  v2 = &v9 - v1;
  v3 = type metadata accessor for StickerImageConfirmationController();
  v9.receiver = v0;
  v9.super_class = v3;
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v4 = sub_10007D990();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_10007D960();
  v5 = v0;
  v6 = sub_10007D950();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_100009514(0, 0, v2, &unk_10008C3C8, v7);
}

uint64_t sub_100009194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for StickerNotAvailableTip(0);
  v4[4] = swift_task_alloc();
  sub_10007D960();
  v4[5] = sub_10007D950();
  v6 = sub_10007D940();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_10000925C, v6, v5);
}

uint64_t sub_10000925C()
{
  sub_10007C870();
  sub_10000AF14(v0[2] + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_stickerNotAvailableTip, v0[4]);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = sub_10000B84C(&unk_1000B2220, type metadata accessor for StickerNotAvailableTip);
  *v1 = v0;
  v1[1] = sub_100009368;
  v3 = v0[3];

  return Tip.resetEligibility()(v3, v2);
}

uint64_t sub_100009368()
{
  v1 = *v0;
  v2 = *(*v0 + 32);

  sub_10000AE1C(v2);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_1000094AC, v4, v3);
}

uint64_t sub_1000094AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100009514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100006D40(&unk_1000B2960);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000B2D8(a3, v24 - v9);
  v11 = sub_10007D990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000B348(v10, &unk_1000B2960);
  }

  else
  {
    sub_10007D980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_10007D940();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_10007D800() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10000B348(a3, &unk_1000B2960);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000B348(a3, &unk_1000B2960);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_10000995C(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for StickerImageConfirmationController();
  objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
    v4 = v3;
    sub_10007C850();
    v5 = swift_dynamicCastClass();

    if (v5)
    {
      [v1 dismissViewControllerAnimated:a1 & 1 completion:0];
      swift_unknownObjectWeakAssign();
    }
  }
}

id sub_100009AF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10007D7A0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_100009BC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerImageConfirmationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100009D20(void *a1)
{
  v2 = v1;
  v4 = sub_10007C460();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000B4C30 != -1)
  {
    swift_once();
  }

  v8 = sub_10007C780();
  sub_10000AE78(v8, qword_1000B4C38);
  v9 = sub_10007C760();
  v10 = sub_10007D9F0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "did complete subject analysis", v11, 2u);
  }

  [*&v1[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_activityIndicator] stopAnimating];
  if ([a1 isSubjectHighlightAvailable])
  {
    v12 = sub_10000787C();
    [(objc_class *)v12 setEnabled:1];

    v13 = sub_100007D58();
    [v13 setEnabled:1];

    v14 = sub_100008AD4();
    v15 = [*&v2[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalysisInteraction] allSubjectIndexes];
    sub_10007C440();

    sub_10007C430(v16);
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    [v14 highlightSubjectAtIndexSet:v18 showCallout:0 showBurst:0 burstPoint:1 animated:{0.0, 0.0}];

    type metadata accessor for StickerUIPreviewCache();
    v19 = a1;
    *&v2[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_previewCache] = sub_10000DB8C(a1);

    return;
  }

  v20 = sub_10007C760();
  v21 = sub_10007DA10();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "no subject highlight available", v22, 2u);
  }

  v23 = sub_10000787C();
  v33 = [(objc_class *)v23 customView];

  if (!v33)
  {
    goto LABEL_17;
  }

  v24 = sub_1000075F4();
  v25 = [(objc_class *)v24 customView];

  if (!v25)
  {

LABEL_17:
    sub_10007C850();
    v34[3] = type metadata accessor for StickerNotAvailableTip(0);
    v34[4] = sub_10000B84C(&unk_1000B2220, type metadata accessor for StickerNotAvailableTip);
    v30 = sub_10000AEB0(v34);
    sub_10000AF14(&v2[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_stickerNotAvailableTip], v30);
    v31 = *&v2[OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___addStickerButtonItem];
    v32 = sub_10007C860();
    [v32 setModalPresentationStyle:7];
    [v2 presentViewController:v32 animated:1 completion:0];
    swift_unknownObjectWeakAssign();

    return;
  }

  type metadata accessor for PhotoConfirmationTipHostingController(0);
  sub_100006D40(&qword_1000B2200);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10008C3A0;
  *(v26 + 32) = v25;
  v27 = v25;
  v28 = sub_10006DA38(v33, v26);

  if (v28)
  {
    [v2 presentViewController:v28 animated:1 completion:0];
  }

  v29 = v33;
}

uint64_t sub_10000A2AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_previewCache);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*v1 + 120);

  v2(v5, v3);

  return v5[0];
}

void sub_10000A32C(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_previewCache);
  v4 = 0uLL;
  if (v3)
  {
    v5 = *(*v3 + 120);

    v5(&v11, v6);

    if (v11)
    {
      v9 = v12;
      v10 = v13;
      sub_10000B348(&v11, &qword_1000B3C40);
      v4 = v9;
      v7 = v10;
      v8 = 0;
    }

    else
    {
      v8 = 1;
      v7 = 0uLL;
      v4 = 0uLL;
    }
  }

  else
  {
    v8 = 1;
    v7 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
}

uint64_t sub_10000A418()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000A458(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A470(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000A568;

  return v6(a1);
}

uint64_t sub_10000A568()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000A660(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000A72C(v11, 0, 0, 1, a1, a2);
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
    sub_10000B618(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000B5CC(v11);
  return v7;
}

unint64_t sub_10000A72C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000A838(a5, a6);
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
    result = sub_10007DCF0();
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

char *sub_10000A838(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000A884(a1, a2);
  sub_10000A9B4(&off_1000A29E8);
  return v3;
}

char *sub_10000A884(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000AAA0(v5, 0);
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

  result = sub_10007DCF0();
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
        v10 = sub_10007D850();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000AAA0(v10, 0);
        result = sub_10007DCA0();
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

uint64_t sub_10000A9B4(uint64_t result)
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

  result = sub_10000AB14(result, v11, 1, v3);
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

void *sub_10000AAA0(uint64_t a1, uint64_t a2)
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

  sub_100006D40(&qword_1000B2860);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000AB14(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006D40(&qword_1000B2860);
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

void sub_10000AC08()
{
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_previewCache) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageView) = 0;
  v1 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_activityIndicator;
  v2 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___cancelButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___addStickerButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___tapGestureRecognizer) = 0;
  v3 = OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController_util;
  *(v0 + v3) = [objc_allocWithZone(StickerPhotosUtil) init];
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalysisInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension34StickerImageConfirmationController____lazy_storage___imageAnalyzer) = 0;
  sub_1000720E8();
  swift_unknownObjectWeakInit();
  sub_10007DD90();
  __break(1u);
}

uint64_t sub_10000AD60()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000B96C;

  return sub_100009194(v3, v4, v5, v2);
}

uint64_t sub_10000AE1C(uint64_t a1)
{
  v2 = type metadata accessor for StickerNotAvailableTip(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AE78(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000AEB0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000AF14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StickerNotAvailableTip(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10000AF80()
{
  sub_10000B054();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000B054()
{
  if (!qword_1000B3C90)
  {
    sub_10007C930();
    v0 = sub_10007C940();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B3C90);
    }
  }
}

uint64_t sub_10000B0AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B0EC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000B180;

  return sub_100009194(v3, v4, v5, v2);
}

uint64_t sub_10000B180()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_10000B274(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000B2D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&unk_1000B2960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B348(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100006D40(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000B3A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B3E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000B96C;

  return sub_10000A470(a1, v4);
}

uint64_t sub_10000B498(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000B180;

  return sub_10000A470(a1, v4);
}

uint64_t sub_10000B5CC(uint64_t a1)
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

uint64_t sub_10000B618(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000B67C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentedViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:0 completion:0];
    }

    if ((*((swift_isaMask & *v1) + 0xC0))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      (*(v5 + 8))(v1, &off_1000A2A88, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10000B77C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000B7C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000B7FC()
{
  v0 = sub_100008AD4();
  [v0 beginImageSubjectAnalysisIfNecessary];
}

uint64_t sub_10000B84C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000B894()
{
  result = qword_1000B2980;
  if (!qword_1000B2980)
  {
    sub_10000B8F8(&unk_1000B22F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2980);
  }

  return result;
}

uint64_t sub_10000B8F8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000B980@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension23AvatarPickerCoordinator_parent;
  swift_beginAccess();
  return sub_10000B9D8(v1 + v3, a1);
}

uint64_t sub_10000BA10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension23AvatarPickerCoordinator_parent;
  swift_beginAccess();
  sub_10000BA70(a1, v1 + v3);
  return swift_endAccess();
}

id sub_10000BB0C(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_10000B9D8(a1, v3 + OBJC_IVAR____TtC22StickersUltraExtension23AvatarPickerCoordinator_parent);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_10000BBE0(a1);
  return v4;
}

id sub_10000BB80(uint64_t a1)
{
  sub_10000B9D8(a1, v1 + OBJC_IVAR____TtC22StickersUltraExtension23AvatarPickerCoordinator_parent);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AvatarPickerCoordinator();
  v3 = objc_msgSendSuper2(&v5, "init");
  sub_10000BBE0(a1);
  return v3;
}

uint64_t sub_10000BCC0(uint64_t a1, char a2)
{
  (*((swift_isaMask & *v2) + 0x58))(v11);
  if (!v11[3])
  {
    return sub_10000BBE0(v11);
  }

  sub_10000C940(v11, v8);
  sub_10000BBE0(v11);
  v5 = v9;
  v6 = v10;
  sub_10000C9A4(v8, v9);
  (*(v6 + 16))(a1, a2 & 1, v5, v6);
  return sub_10000B5CC(v8);
}

uint64_t sub_10000BE9C(uint64_t a1, uint64_t a2, char a3)
{
  (*((swift_isaMask & *v3) + 0x58))(v13);
  if (!v13[3])
  {
    return sub_10000BBE0(v13);
  }

  sub_10000C940(v13, v10);
  sub_10000BBE0(v13);
  v7 = v11;
  v8 = v12;
  sub_10000C9A4(v10, v11);
  (*(v8 + 24))(a1, a2, a3 & 1, v7, v8);
  return sub_10000B5CC(v10);
}

id sub_10000C10C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AvatarPickerCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10000C150@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10000C194()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_10000C1C4(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void (*sub_10000C26C(uint64_t *a1))(double **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 64);
  v4[4] = v5;
  [v5 contentInset];
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  return sub_10000C2F4;
}

void sub_10000C2F4(double **a1)
{
  v1 = *a1;
  [*(*a1 + 4) setContentInset:{*v1, v1[1], v1[2], v1[3]}];

  free(v1);
}

uint64_t sub_10000C354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = *a4;
  v13 = *(a4 + 8);
  v14 = *(a4 + 16);
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0;
  sub_10000CAC8(a1, a6);
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = a5;
  v15 = [objc_allocWithZone(AVTSimpleAvatarPickerSwiftProvider) initWithDelegate:0 allowAddItem:0 allowEditing:0 interItemSpacing:1.5];
  *(a6 + 64) = v15;
  if (*(a4 + 32))
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v12;
  }

  if (*(a4 + 32))
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v13;
  }

  if (*(a4 + 32))
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v14;
  }

  [v15 setContentInset:{v16, v17, v18}];

  return sub_10000CB38(a1);
}

id sub_10000C434()
{
  v1 = *(v0 + 64);
  sub_100006D40(&qword_1000B2310);
  sub_10007CDD0();
  [v1 setDelegate:v5];

  result = [v1 avatarPickerView];
  if (*(v0 + 48))
  {
    v3 = result;
    v4 = sub_10007D7A0();
    [v1 selectAvatarRecordWithIdentifier:v4 animated:0];

    return v3;
  }

  return result;
}

void sub_10000C4F8()
{
  if (*(v0 + 56) == 1)
  {
    sub_100006D40(&qword_1000B2310);
    v1 = sub_10007CDD0();
    v2 = v5;
    (*((swift_isaMask & *v5) + 0x58))(v4, v1);

    v3 = v4[8];
    sub_10000BBE0(v4);
    [v3 presentActionsForSelectedAvatar];
  }
}

id sub_10000C5B4()
{
  sub_10000B9D8(v0, v6);
  v1 = type metadata accessor for AvatarPickerCoordinator();
  v2 = objc_allocWithZone(v1);
  sub_10000B9D8(v6, v2 + OBJC_IVAR____TtC22StickersUltraExtension23AvatarPickerCoordinator_parent);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, "init");
  sub_10000BBE0(v6);
  return v3;
}

uint64_t sub_10000C638@<X0>(void *a1@<X8>)
{
  sub_10000B9D8(v1, v8);
  v3 = type metadata accessor for AvatarPickerCoordinator();
  v4 = objc_allocWithZone(v3);
  sub_10000B9D8(v8, v4 + OBJC_IVAR____TtC22StickersUltraExtension23AvatarPickerCoordinator_parent);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, "init");
  result = sub_10000BBE0(v8);
  *a1 = v5;
  return result;
}

uint64_t sub_10000C704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CCDC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000C768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000CCDC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000C7CC()
{
  sub_10000CCDC();
  sub_10007CD60();
  __break(1u);
}

uint64_t sub_10000C7F4(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = *((swift_isaMask & *v1) + 0x58);
    v4 = swift_unknownObjectRetain();
    (v3)(v15, v4);
    if (v15[3])
    {
      sub_10000C940(v15, v12);
      sub_10000BBE0(v15);
      v5 = v13;
      v6 = v14;
      sub_10000C9A4(v12, v13);
      v3(v11);
      v7 = [v2 identifier];
      v8 = sub_10007D7D0();
      v10 = v9;

      (*(v6 + 8))(v11, v8, v10, v5, v6);
      swift_unknownObjectRelease();

      sub_10000BBE0(v11);
      return sub_10000B5CC(v12);
    }

    else
    {
      swift_unknownObjectRelease();
      return sub_10000BBE0(v15);
    }
  }

  return result;
}

uint64_t sub_10000C940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000C9A4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000C9E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B2308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CA58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B2308);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CAC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B2308);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CB38(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B2308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000CBA4()
{
  result = qword_1000B2318;
  if (!qword_1000B2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2318);
  }

  return result;
}

uint64_t sub_10000CBF8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10000CC10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10000CC34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000CC7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000CCDC()
{
  result = qword_1000B23A8;
  if (!qword_1000B23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B23A8);
  }

  return result;
}

uint64_t sub_10000CD80(double a1, double a2)
{
  result = swift_beginAccess();
  *&xmmword_1000B71D0 = a1;
  *(&xmmword_1000B71D0 + 1) = a2;
  return result;
}

double sub_10000CE5C@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  result = *&xmmword_1000B71D0;
  *a1 = xmmword_1000B71D0;
  return result;
}

double sub_10000CEA8(_OWORD *a1, void (*a2)(__int128 *__return_ptr))
{
  a2(&v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t sub_10000CF58(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_10000CFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = sub_10007D270();
  *(a6 + 1) = v12;
  v13 = sub_100006D40(&qword_1000B23B0);
  sub_10000D09C(a1, a2, a3, a4, a5, &a6[*(v13 + 44)]);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  v15 = &a6[*(sub_100006D40(&qword_1000B23B8) + 36)];
  *v15 = sub_10000D414;
  v15[1] = v14;
}

uint64_t sub_10000D09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = sub_100006D40(&qword_1000B23F0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - v14;
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  v17 = *(v13 + 16);
  v17(v15, a1, v12);
  v17(a6, v15, v12);
  v18 = &a6[*(sub_100006D40(&qword_1000B23F8) + 48)];
  *v18 = sub_10000D92C;
  v18[1] = v16;

  return (*(v13 + 8))(v15, v12);
}

double sub_10000D224@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10007CD90();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;

  sub_10007CDA0();
  sub_10007C9F0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *(v7 + 8);
  v18(v9, v6);
  v33.origin.x = v11;
  v33.origin.y = v13;
  v33.size.width = v15;
  v33.size.height = v17;
  MinX = CGRectGetMinX(v33);
  v31 = a1;
  v32 = a2;
  sub_10007CDA0();

  sub_10007C9F0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v18(v9, v6);
  v34.origin.x = v21;
  v34.origin.y = v23;
  v34.size.width = v25;
  v34.size.height = v27;
  MinY = CGRectGetMinY(v34);
  v29 = sub_10007D0F0();
  result = -MinX;
  *a3 = v29;
  *(a3 + 8) = -MinX;
  *(a3 + 16) = -MinY;
  return result;
}

uint64_t sub_10000D464@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  *a2 = sub_10007D270();
  *(a2 + 1) = v9;
  v10 = sub_100006D40(&qword_1000B23B0);
  sub_10000D09C(a1, v6, v5, v8, v7, &a2[*(v10 + 44)]);
  v11 = swift_allocObject();
  *(v11 + 2) = v6;
  *(v11 + 3) = v5;
  *(v11 + 4) = v8;
  *(v11 + 5) = v7;
  v12 = &a2[*(sub_100006D40(&qword_1000B23B8) + 36)];
  *v12 = sub_10000D93C;
  v12[1] = v11;
}

__n128 sub_10000D5B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000D5C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000D60C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000D660()
{
  result = qword_1000B23C0;
  if (!qword_1000B23C0)
  {
    sub_10000B8F8(&qword_1000B23B8);
    sub_10000D744(&qword_1000B23C8, &qword_1000B23D0);
    sub_10000D744(&qword_1000B23D8, &qword_1000B23E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B23C0);
  }

  return result;
}

uint64_t sub_10000D744(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000B8F8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D78C()
{
  sub_10007CAC0();
  sub_10000D7F0();
  return swift_getWitnessTable();
}

unint64_t sub_10000D7F0()
{
  result = qword_1000B23E8;
  if (!qword_1000B23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B23E8);
  }

  return result;
}

__n128 sub_10000D844(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000D854(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D874(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_1000B2D60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000B2D60);
    }
  }
}

uint64_t sub_10000D8EC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000D954@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t sub_10000D964()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B4E78);
  sub_10000AE78(v0, qword_1000B4E78);
  return sub_10007C770();
}

void *sub_10000D9EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007C460();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v1 + 16);
  if (result)
  {
    v8 = [result selectedSubjectIndexes];
    sub_10007C440();

    swift_beginAccess();
    v9 = *(v1 + 24);
    if (*(v9 + 16))
    {

      v10 = sub_10000E1E8(v6);
      if (v11)
      {
        v12 = *(v9 + 56) + 40 * v10;
        v13 = *v12;
        v14 = *(v12 + 8);
        v19 = *(v12 + 24);
        v20 = v14;
        v15 = *(v4 + 8);
        v16 = v13;
        v15(v6, v3);

        v18 = v19;
        v17 = v20;
LABEL_7:
        *a1 = v16;
        *(a1 + 8) = v17;
        *(a1 + 24) = v18;
        return result;
      }
    }

    result = (*(v4 + 8))(v6, v3);
    v16 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DB8C(void *a1)
{
  v2 = swift_allocObject();
  v3 = sub_10000ED6C(&_swiftEmptyArrayStorage);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  v4 = a1;
  sub_10000DC50();

  return v2;
}

void *sub_10000DBE4(void *a1)
{
  v3 = sub_10000ED6C(&_swiftEmptyArrayStorage);
  v1[2] = a1;
  v1[3] = v3;
  v4 = *(*v1 + 136);
  v5 = a1;
  v4();

  return v1;
}

uint64_t sub_10000DC50()
{
  v1 = v0;
  v2 = sub_10007C460();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v6 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &aBlock[-1] - v8;
  result = __chkstk_darwin(v7);
  v12 = &aBlock[-1] - v11;
  v13 = *(v0 + 16);
  if (v13)
  {
    v14 = [*(v0 + 16) selectedSubjectIndexes];
    sub_10007C440();

    swift_beginAccess();
    v15 = *(*(v1 + 24) + 16);
    if (v15 && (, sub_10000E1E8(v12), v17 = v16, , (v17 & 1) != 0))
    {
      if (qword_1000B4E70 != -1)
      {
        swift_once();
      }

      v18 = sub_10007C780();
      sub_10000AE78(v18, qword_1000B4E78);
      (*(v3 + 16))(v6, v12, v2);
      v19 = sub_10007C760();
      v20 = sub_10007DA00();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        aBlock[0] = v45;
        *v21 = 136315138;
        sub_10000F2B0(&qword_1000B2400);
        v22 = sub_10007DE30();
        v24 = v23;
        v25 = *(v3 + 8);
        v25(v6, v2);
        v26 = sub_10000A660(v22, v24, aBlock);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "Already have an image for %s", v21, 0xCu);
        sub_10000B5CC(v45);

        return (v25)(v12, v2);
      }

      else
      {

        v44 = *(v3 + 8);
        v44(v6, v2);
        return (v44)(v12, v2);
      }
    }

    else
    {
      sub_10007C430(v15);
      v28 = v27;
      [v13 imageSubjectBoundsWithIndexes:v27];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      sub_10007C430(v37);
      v39 = v38;
      v40 = swift_allocObject();
      swift_weakInit();
      (*(v3 + 16))(v9, v12, v2);
      v41 = (*(v3 + 80) + 56) & ~*(v3 + 80);
      v42 = swift_allocObject();
      *(v42 + 2) = v40;
      *(v42 + 3) = v30;
      *(v42 + 4) = v32;
      *(v42 + 5) = v34;
      *(v42 + 6) = v36;
      (*(v3 + 32))(&v42[v41], v9, v2);
      aBlock[4] = sub_10000F058;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000E114;
      aBlock[3] = &unk_1000A2E60;
      v43 = _Block_copy(aBlock);

      [v13 loadImageSubjectWithIndexes:v39 completion:v43];
      _Block_release(v43);

      return (*(v3 + 8))(v12, v2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10000E114(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10000E1A8()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10000E1E8(uint64_t a1)
{
  sub_10007C460();
  sub_10000F2B0(&qword_1000B24E0);
  v2 = sub_10007D750();

  return sub_10000E26C(a1, v2);
}

unint64_t sub_10000E26C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_10007C460();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10000F2B0(&qword_1000B24E8);
      v15 = sub_10007D790();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_10000E418(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_10007C460();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100006D40(&qword_1000B24D8);
  v46 = a2;
  result = sub_10007DDD0();
  v11 = result;
  if (*(v9 + 16))
  {
    v52 = v8;
    v42 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v51 = *(v45 + 72);
      v27 = v26 + v51 * v25;
      if (v46)
      {
        (*v47)(v52, v27, v5);
        v28 = *(v9 + 56) + 40 * v25;
        v48 = *v28;
        v29 = *(v28 + 24);
        v49 = *(v28 + 8);
        v50 = v29;
      }

      else
      {
        (*v43)(v52, v27, v5);
        v30 = *(v9 + 56) + 40 * v25;
        v31 = *v30;
        v32 = *(v30 + 24);
        v49 = *(v30 + 8);
        v50 = v32;
        v48 = v31;
      }

      sub_10000F2B0(&qword_1000B24E0);
      result = sub_10007D750();
      v33 = -1 << *(v11 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v47)(*(v11 + 48) + v51 * v19, v52, v5);
      v20 = *(v11 + 56) + 40 * v19;
      *v20 = v48;
      v21 = v49;
      *(v20 + 24) = v50;
      *(v20 + 8) = v21;
      ++*(v11 + 16);
      v9 = v44;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_10000E81C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10007C460();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10000E1E8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10000EAC8();
      goto LABEL_7;
    }

    sub_10000E418(v17, a3 & 1);
    v24 = sub_10000E1E8(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_10000E9FC(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_10007DE70();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 40 * v14;
  v22 = *v21;
  *(v21 + 32) = *(a1 + 32);
  v23 = *(a1 + 16);
  *v21 = *a1;
  *(v21 + 16) = v23;
}

uint64_t sub_10000E9FC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_10007C460();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 40 * a1;
  *(v11 + 32) = *(a3 + 32);
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

id sub_10000EAC8()
{
  v1 = v0;
  v34 = sub_10007C460();
  v36 = *(v34 - 8);
  __chkstk_darwin();
  v33 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006D40(&qword_1000B24D8);
  v3 = *v0;
  v4 = sub_10007DDC0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v35 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31[1] = v36 + 32;
    v31[2] = v36 + 16;
    v32 = v3;
    v15 = v5;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v39 = (v13 - 1) & v13;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v3 + 48) + v21, v34);
        v19 *= 40;
        v24 = *(v3 + 56) + v19;
        v25 = *v24;
        v26 = *(v15 + 48);
        v27 = *(v20 + 32);
        v28 = *(v24 + 8);
        v37 = *(v24 + 24);
        v38 = v28;
        v27(v26 + v21, v23, v22);
        v29 = *(v15 + 56) + v19;
        *v29 = v25;
        v30 = v38;
        *(v29 + 24) = v37;
        *(v29 + 8) = v30;
        result = v25;
        v3 = v32;
        v13 = v39;
      }

      while (v39);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v31[0];
        v5 = v35;
        goto LABEL_18;
      }

      v18 = *(v7 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_10000ED6C(uint64_t a1)
{
  v2 = sub_100006D40(&qword_1000B24F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100006D40(&qword_1000B24D8);
    v7 = sub_10007DDE0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F2F4(v9, v5);
      result = sub_10000E1E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_10007C460();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 40 * v13;
      v17 = *(v8 + 8);
      v18 = *(v8 + 24);
      *v16 = *v8;
      *(v16 + 8) = v17;
      *(v16 + 24) = v18;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10000EF5C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EF94()
{
  v1 = sub_10007C460();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000F058(void *a1)
{
  v3 = *(*(sub_10007C460() - 8) + 80);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v12 = a1;
      v5 = (v3 + 56) & ~v3;
      v13 = v9;
      v14 = v10;
      v6 = result;
      swift_beginAccess();
      v7 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *(v6 + 24);
      *(v6 + 24) = 0x8000000000000000;
      sub_10000E81C(&v12, v1 + v5, isUniquelyReferenced_nonNull_native);
      *(v6 + 24) = v11;
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_10000F160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_10000F178(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000F18C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000F1D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000F250(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000F270(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10000F2B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10007C460();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B24F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10000F378(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_10000F434()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_player;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10000F480(void *a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_player;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = (*((swift_isaMask & *v1) + 0x90))();
  v7 = *(v1 + v3);
  [v6 setPlayer:v7];
}

void (*sub_10000F544(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_player;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_10000F5CC;
}

void sub_10000F5CC(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = v3[4];
    v7 = (*((swift_isaMask & *v5) + 0x90))(v4);
    v8 = *(v5 + v6);
    [v7 setPlayer:v8];
  }

  free(v3);
}

void *sub_10000F67C()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_playerItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10000F6C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_playerItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10000F780()
{
  v1 = [v0 layer];
  v2 = objc_opt_self();

  return _swift_dynamicCastObjCClassUnconditional(v1, v2, 0, 0, 0);
}

id sub_10000F7EC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_player] = 0;
  *&v4[OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_playerItem] = 0;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PlayerView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_10000F914(void *a1)
{
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_player] = 0;
  *&v1[OBJC_IVAR____TtC22StickersUltraExtension10PlayerView_playerItem] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlayerView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10000FA24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double variable initialization expression of iMessageAppsRegistry.extensionMatchingContext@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10000FAB0()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B4E98);
  sub_10000AE78(v0, qword_1000B4E98);
  return sub_10007C770();
}

uint64_t sub_10000FB2C()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_startPlaybackWhenReady;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000FB70(char a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_startPlaybackWhenReady;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_10000FC20()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView;
  v3 = *&v0[OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView];
  v4 = *((swift_isaMask & *v3) + 0x60);
  v5 = v3;
  v6 = v4();

  if (v6)
  {
    v7 = OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerObserver;
    swift_beginAccess();
    sub_10000FE28(&v1[v7], &v14);
    if (*(&v15 + 1))
    {
      sub_10000FE98(&v14, &v16);
      sub_10000C9A4(&v16, v17);
      v6 = v6;
      [v6 removeTimeObserver:sub_10007DE40()];
      swift_unknownObjectRelease();

      v14 = 0u;
      v15 = 0u;
      swift_beginAccess();
      sub_1000109B8(&v14, &v1[v7]);
      swift_endAccess();
      sub_10000B5CC(&v16);
    }

    else
    {
      sub_10000B348(&v14, &qword_1000B2528);
    }
  }

  v8 = *&v1[v2];
  v9 = *((swift_isaMask & *v8) + 0x60);
  v10 = v8;
  v11 = v9();

  [v11 pause];
  v12 = type metadata accessor for LivePhotoView();
  v18.receiver = v1;
  v18.super_class = v12;
  return objc_msgSendSuper2(&v18, "dealloc");
}

uint64_t sub_10000FE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B2528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10000FE98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *sub_10000FF94(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerObserver];
  *v5 = 0u;
  v5[1] = 0u;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerItemContext] = 0;
  v2[OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_startPlaybackWhenReady] = 0;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_stillImage] = a1;
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_livePhoto] = a2;
  v6 = objc_allocWithZone(UIImageView);
  v7 = a1;
  v8 = a2;
  v9 = [v6 initWithImage:v7];
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_stillImageView] = v9;
  [v9 setContentMode:1];
  type metadata accessor for PlayerView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView] = v10;
  [v10 setContentMode:1];
  v38.receiver = v2;
  v38.super_class = type metadata accessor for LivePhotoView();
  v11 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setContentMode:1];
  v12 = OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_stillImageView;
  [*(v11 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_stillImageView) setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView;
  [*(v11 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView) setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addSubview:*(v11 + v13)];
  [v11 addSubview:*(v11 + v12)];
  v14 = *((swift_isaMask & *v11) + 0xF8);
  v15 = *(v11 + v13);
  v14();

  v16 = *(v11 + v12);
  v17 = (v14)();

  sub_1000103BC(v17);
  v18 = objc_opt_self();
  sub_10000B77C(0, &qword_1000B2210);
  isa = sub_10007D8C0().super.isa;

  [v18 activateConstraints:isa];

  v20 = [v8 videoAsset];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v20];
    v23 = sub_10007D7A0();
    v36 = v22;
    [v22 addObserver:v11 forKeyPath:v23 options:1 context:v11 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerItemContext];

    v24 = objc_allocWithZone(AVPlayer);
    v37 = v22;
    v25 = [v24 initWithPlayerItem:v37];
    [v25 setActionAtItemEnd:2];
    [v25 setMuted:1];
    v26 = *(v11 + v13);
    v27 = v7;
    v28 = *((swift_isaMask & *v26) + 0x68);
    v29 = v8;
    v30 = v26;
    v31 = v25;
    v28(v25);

    v32 = *(v11 + v13);
    v33 = *((swift_isaMask & *v32) + 0x80);
    v34 = v32;
    v33(v36);
  }

  else
  {
    v34 = v7;
    v27 = v8;
    v29 = v11;
  }

  return v11;
}

uint64_t sub_1000103BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_10007DDB0();
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

  v13 = sub_10007DDB0();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100013354(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000133F4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

void sub_1000104AC(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, void *a5)
{
  if (!a5 || (v5 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerItemContext) != a5)
  {
    if (a2)
    {
      v19 = sub_10007D7A0();
    }

    else
    {
      v19 = 0;
    }

    sub_10000FE28(a3, &v32);
    v20 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v21 = sub_10000C9A4(&v32, *(&v33 + 1));
      v22 = *(v20 - 8);
      __chkstk_darwin(v21);
      v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v24);
      v25 = sub_10007DE40();
      (*(v22 + 8))(v24, v20);
      sub_10000B5CC(&v32);
      if (!isa)
      {
LABEL_21:
        v26 = type metadata accessor for LivePhotoView();
        v39.receiver = v5;
        v39.super_class = v26;
        objc_msgSendSuper2(&v39, "observeValueForKeyPath:ofObject:change:context:", v19, v25, isa, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v25 = 0;
      if (!isa)
      {
        goto LABEL_21;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_100012E28(&qword_1000B2550);
    isa = sub_10007D730().super.isa;
    goto LABEL_21;
  }

  if (a2 && (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_10007DE50() & 1) != 0))
  {
    sub_10000FE28(a3, &v37);
    if (!v38)
    {
      sub_10000B348(&v37, &qword_1000B2528);
      return;
    }

    sub_10000FE98(&v37, &v32);
    sub_10000B77C(0, &qword_1000B2558);
    swift_dynamicCast();
    v9 = v36;
    if ([v36 status] != 1)
    {
      goto LABEL_32;
    }

    v10 = [v9 loadedTimeRanges];
    sub_10000B77C(0, &unk_1000B2D50);
    v11 = sub_10007D8E0();

    if (v11 >> 62)
    {
      if (sub_10007DDB0())
      {
        goto LABEL_11;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = sub_10007DCD0();
        goto LABEL_14;
      }

      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v11 + 32);
LABEL_14:
        v13 = v12;

        [v13 CMTimeRangeValue];
        v14 = v32;
        v15 = v35;
        v16 = v34;
        v31 = v33;
        v17 = *(&v32 + 1);

        *&v32 = v14;
        *(&v32 + 1) = v17;
        v33 = v31;
        v34 = v16;
        v35 = v15;
        v18 = [v9 setLoopTimeRange:&v32];
LABEL_30:
        if ((*((swift_isaMask & *v5) + 0xD8))(v18))
        {
          (*((swift_isaMask & *v5) + 0x110))();
        }

LABEL_32:

        return;
      }

      __break(1u);
      goto LABEL_36;
    }

    a3 = v5;

    if (qword_1000B4E90 == -1)
    {
LABEL_27:
      v27 = sub_10007C780();
      sub_10000AE78(v27, qword_1000B4E98);
      v28 = sub_10007C760();
      v29 = sub_10007DA10();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Could not set loopTimeRange", v30, 2u);
      }

      v5 = a3;
      goto LABEL_30;
    }

LABEL_36:
    swift_once();
    goto LABEL_27;
  }
}

uint64_t sub_1000109B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B2528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010B68(void *a1)
{
  sub_100006D40(&qword_1000B2200);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10008C950;
  v4 = [a1 leftAnchor];
  v5 = [v1 leftAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [a1 rightAnchor];
  v8 = [v1 rightAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [a1 topAnchor];
  v11 = [v1 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [a1 bottomAnchor];
  v14 = [v1 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  return v3;
}

void sub_100010D48()
{
  v1 = (v0 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerObserver);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerItemContext) = 0;
  *(v0 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_startPlaybackWhenReady) = 0;
  sub_10007DD90();
  __break(1u);
}

void sub_100010E88(void *a1, _OWORD *a2, Swift::Double a3)
{
  v4 = v3;
  v5 = a2[1];
  v93 = *a2;
  v94 = v5;
  v95 = a2[2];
  if (!a1)
  {
    if (qword_1000B4E90 != -1)
    {
      swift_once();
    }

    v14 = sub_10007C780();
    sub_10000AE78(v14, qword_1000B4E98);
    v15 = v3;
    oslog = sub_10007C760();
    v16 = sub_10007DA10();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v15;
      *v18 = v15;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Nil video composition for LivePhotoAuditionView %@.", v17, 0xCu);
      sub_10000B348(v18, &unk_1000B2D40);
    }

    goto LABEL_14;
  }

  v86 = a1;
  if (sub_10007D9D0() & 1) == 0 || (sub_10007D9C0() & 1) != 0 || (sub_10007D9A0())
  {
    if (qword_1000B4E90 != -1)
    {
      swift_once();
    }

    v8 = sub_10007C780();
    sub_10000AE78(v8, qword_1000B4E98);
    v9 = v3;
    oslog = sub_10007C760();
    v10 = sub_10007DA10();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v9;
      *v12 = v9;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, oslog, v10, "invalid time range for video composition for LivePhotoAuditionView. %@", v11, 0xCu);
      sub_10000B348(v12, &unk_1000B2D40);

LABEL_9:

LABEL_14:
      v20 = oslog;
LABEL_25:

      return;
    }

    goto LABEL_24;
  }

  v21 = *(v3 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_livePhoto);
  v22 = [v21 videoAsset];
  if (!v22)
  {
LABEL_20:
    if (qword_1000B4E90 != -1)
    {
      swift_once();
    }

    v49 = sub_10007C780();
    sub_10000AE78(v49, qword_1000B4E98);
    v50 = v4;
    oslog = sub_10007C760();
    v51 = sub_10007DA10();

    if (os_log_type_enabled(oslog, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412802;
      v54 = [v21 videoAsset];
      *(v52 + 4) = v54;
      *v53 = v54;
      *(v52 + 12) = 2112;
      v55 = *(v50 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView);
      v56 = *((swift_isaMask & *v55) + 0x60);
      v57 = v55;
      v58 = v56();

      *(v52 + 14) = v58;
      *(v52 + 22) = 2112;
      *(v52 + 24) = v50;
      v53[1] = v58;
      v53[2] = v50;
      v59 = v50;
      _os_log_impl(&_mh_execute_header, oslog, v51, "Either live photo asset %@ or player %@ are nil. %@", v52, 0x20u);
      sub_100006D40(&unk_1000B2D40);
      swift_arrayDestroy();

      goto LABEL_9;
    }

LABEL_24:

    v20 = v86;
    goto LABEL_25;
  }

  v23 = v22;
  v24 = OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView;
  v25 = *(v3 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView);
  v26 = *((swift_isaMask & *v25) + 0x60);
  v27 = v25;
  v28 = v26();

  if (!v28)
  {

    goto LABEL_20;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = *a2;
  *(v29 + 32) = *(a2 + 2);
  sub_10007D9B0();
  osloga = v23;
  v30 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v23];
  *lhs = v93;
  *&lhs[16] = v94;
  v92 = v95;
  [v30 setLoopTimeRange:lhs];
  [v30 setVideoComposition:v86];
  v31 = objc_allocWithZone(AVPlayer);
  v85 = v30;
  v32 = v28;
  v33 = [v31 initWithPlayerItem:?];
  [v33 setActionAtItemEnd:2];
  [v33 setMuted:1];
  type metadata accessor for PlayerView();
  v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v34 setContentMode:1];
  [v34 setHidden:1];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v4 insertSubview:v34 aboveSubview:*(v4 + v24)];
  v35 = objc_opt_self();
  (*((swift_isaMask & *v4) + 0xF8))(v34);
  sub_10000B77C(0, &qword_1000B2210);
  isa = sub_10007D8C0().super.isa;

  [v35 activateConstraints:isa];

  v37 = *((swift_isaMask & *v34) + 0x68);
  v81 = v33;
  v38 = v33;
  v39 = v32;
  v37(v38);
  (*((swift_isaMask & *v34) + 0x80))(v30);
  [v32 currentTime];
  v40 = *lhs;
  v41 = *&lhs[8];
  v42 = *&lhs[12];
  v43 = *&lhs[16];
  sub_10007DB60();
  v45 = v44;
  sub_10007DB60();
  if (a3 + a3 <= v45 - v46)
  {
    v60 = sub_10007DB50(a3, 5000);
    rhs.epoch = v61;
    *lhs = v40;
    *&lhs[8] = __PAIR64__(v42, v41);
    *&lhs[16] = v43;
    rhs.value = v60;
    rhs.timescale = v62;
    rhs.flags = v63;
    CMTimeAdd(&v89, lhs, &rhs);
    v47 = *&v89.timescale;
    epoch = v89.epoch;
    value = v89.value;
    *(v29 + 16) = v89.value;
    *(v29 + 24) = v47;
    *(v29 + 32) = epoch;
  }

  else
  {
    value = *(v29 + 16);
    v47 = *(v29 + 24);
    epoch = *(v29 + 32);
  }

  v80 = sub_10007DB40(1, 60);
  v65 = v64;
  v82 = HIDWORD(v64);
  v83 = v66;
  v67 = sub_10007DB40(1, 60);
  v69 = v68;
  v79 = v70;
  v77 = v67;
  v78 = HIDWORD(v68);
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = swift_allocObject();
  v72[2] = v71;
  v72[3] = v29;
  v72[4] = v34;
  v72[5] = v39;
  v72[6] = v81;
  *&v92 = sub_100012738;
  *(&v92 + 1) = v72;
  *lhs = _NSConcreteStackBlock;
  *&lhs[8] = 1107296256;
  *&lhs[16] = sub_1000136CC;
  *&lhs[24] = &unk_1000A3080;
  v73 = _Block_copy(lhs);
  v74 = v34;
  v75 = v81;

  v76 = v39;

  *&lhs[8] = v47;
  *&lhs[16] = epoch;
  rhs.timescale = v65;
  rhs.flags = v82;
  rhs.epoch = v83;
  *lhs = value;
  v89.value = v77;
  v89.timescale = v69;
  v89.flags = v78;
  v89.epoch = v79;
  rhs.value = v80;
  [v75 seekToTime:lhs toleranceBefore:&rhs toleranceAfter:&v89 completionHandler:v73];
  _Block_release(v73);
}

uint64_t sub_10001184C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1000118A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView);
  v2 = *((swift_isaMask & *v1) + 0x60);
  v3 = v1;
  v4 = v2();

  if (v4)
  {
    v5 = [objc_opt_self() sharedInstance];
    v14 = 0;
    v6 = [v5 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:&v14];

    if (v6)
    {
      v7 = v14;
    }

    else
    {
      v8 = v14;
      sub_10007C360();

      swift_willThrow();
    }

    [v4 play];
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = sub_100012B6C;
    v19 = v10;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100008F80;
    v17 = &unk_1000A30A8;
    v11 = _Block_copy(&v14);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = sub_100012B74;
    v19 = v12;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_1000136CC;
    v17 = &unk_1000A30D0;
    v13 = _Block_copy(&v14);

    [v9 animateWithDuration:v11 animations:v13 completion:0.2];
    _Block_release(v13);
    _Block_release(v11);
  }
}

void sub_100011B60()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView);
  v2 = *((swift_isaMask & *v1) + 0x60);
  v3 = v1;
  v4 = v2();

  [v4 pause];
}

void sub_100011C00()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView);
  v2 = *((swift_isaMask & *v1) + 0x60);
  v3 = v1;
  v4 = v2();

  if (v4)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_100012BEC;
    v17 = v6;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_100008F80;
    v15 = &unk_1000A30F8;
    v7 = _Block_copy(&v12);

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v4;
    v16 = sub_100012CB8;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1000136CC;
    v15 = &unk_1000A3148;
    v10 = _Block_copy(&v12);
    v11 = v4;

    [v5 animateWithDuration:v7 animations:v10 completion:0.2];
    _Block_release(v10);
    _Block_release(v7);
  }
}

uint64_t sub_100011E14()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView);
  v2 = *((swift_isaMask & *v1) + 0x60);
  v3 = v1;
  v4 = v2();

  if (!v4)
  {
    return 0;
  }

  [v4 currentTime];
  v5 = v7;

  return v5;
}

id sub_100011ED8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView;
  v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView);
  v4 = *((swift_isaMask & *v3) + 0x60);
  v5 = v3;
  v6 = v4();

  if (v6)
  {
    [v6 pause];
    v7 = *(v1 + v2);
    v8 = *((swift_isaMask & *v7) + 0x90);
    v9 = v7;
    v10 = v8();

    v11 = [v10 copyDisplayedPixelBuffer];
    if (v11)
    {
      v12 = [objc_allocWithZone(CIImage) initWithCVPixelBuffer:v11];

      return v12;
    }
  }

  return 0;
}

void sub_10001202C()
{
  v1 = [v0 image];
  if (v1)
  {
    v2 = v1;
    if ([v0 contentMode] == 1 && (objc_msgSend(v2, "size"), v3 > 0.0) && (objc_msgSend(v2, "size"), v4 > 0.0))
    {
      [v2 size];
      v6 = v5;
      [v2 size];
      v8 = v7;
      [v0 bounds];
      if (v8 >= v6)
      {
        CGRectGetHeight(*&v9);
      }

      else
      {
        CGRectGetWidth(*&v9);
      }

      [v2 size];
      [v2 size];
      [v2 size];
      [v0 bounds];
      CGRectGetWidth(v13);
      [v0 bounds];
      CGRectGetHeight(v14);
    }

    else
    {
      [v0 bounds];
    }
  }

  else
  {
    [v0 bounds];
  }
}

id sub_1000121EC(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

uint64_t sub_1000122B0()
{
  sub_10007D7D0();
  v0 = sub_10007D870();

  return v0;
}

uint64_t sub_1000122EC()
{
  sub_10007D7D0();
  sub_10007D820();
}

Swift::Int sub_100012340()
{
  sub_10007D7D0();
  sub_10007DF00();
  sub_10007D820();
  v0 = sub_10007DF10();

  return v0;
}

uint64_t sub_1000123B4(uint64_t a1, id *a2)
{
  result = sub_10007D7B0();
  *a2 = 0;
  return result;
}

uint64_t sub_10001242C(uint64_t a1, id *a2)
{
  v3 = sub_10007D7C0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000124AC@<X0>(void *a1@<X8>)
{
  sub_10007D7D0();
  v2 = sub_10007D7A0();

  *a1 = v2;
  return result;
}

uint64_t sub_1000124F0()
{
  v0 = sub_10007D7D0();
  v2 = v1;
  if (v0 == sub_10007D7D0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_10007DE50();
  }

  return v5 & 1;
}

uint64_t sub_100012578@<X0>(void *a1@<X8>)
{
  v2 = sub_10007D7A0();

  *a1 = v2;
  return result;
}

uint64_t sub_1000125C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007D7D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000125EC(uint64_t a1)
{
  v2 = sub_100012E28(&qword_1000B2550);
  v3 = sub_100012E28(&qword_1000B25D8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000126A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000126E0()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100012738(char a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    sub_10007DB60();
    if (v9 == 0.0)
    {
      v10 = sub_10007DB40(1, 60);
      v12 = v11;
      v14 = v13;
      v15 = HIDWORD(v11);
      swift_beginAccess();
      *(v3 + 16) = v10;
      *(v3 + 24) = v12;
      *(v3 + 28) = v15;
      *(v3 + 32) = v14;
    }

    [v4 setHidden:0];
    [v4 setAlpha:0.0];
    swift_beginAccess();
    sub_10007DB60();
    if (v16 > 0.2)
    {
      swift_beginAccess();
      v17 = *(v3 + 32);
      v18 = *(v3 + 24);
      lhs.value = *(v3 + 16);
      *&lhs.timescale = v18;
      lhs.epoch = v17;
      rhs.value = sub_10007DB50(0.2, 1000);
      rhs.timescale = v19;
      rhs.flags = v20;
      rhs.epoch = v21;
      CMTimeSubtract(&v50, &lhs, &rhs);
      value = v50.value;
      epoch = v50.epoch;
      v24 = *&v50.timescale;
      swift_beginAccess();
      *(v3 + 16) = value;
      *(v3 + 24) = v24;
      *(v3 + 32) = epoch;
    }

    swift_beginAccess();
    sub_10007DB60();
    if (v25 == 0.0)
    {
      v26 = sub_10007DB40(1, 60);
      v28 = v27;
      v30 = v29;
      v31 = HIDWORD(v27);
      swift_beginAccess();
      *(v3 + 16) = v26;
      *(v3 + 24) = v28;
      *(v3 + 28) = v31;
      *(v3 + 32) = v30;
    }

    sub_100006D40(&qword_1000B2200);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10008C3A0;
    swift_beginAccess();
    v33 = *(v3 + 16);
    v34 = *(v3 + 32);
    v35 = *(v3 + 24);
    v36 = objc_opt_self();
    lhs.value = v33;
    *&lhs.timescale = v35;
    lhs.epoch = v34;
    *(v32 + 32) = [v36 valueWithCMTime:&lhs];
    sub_10000B77C(0, &unk_1000B2D50);
    isa = sub_10007D8C0().super.isa;

    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = a1 & 1;
    *(v39 + 32) = v5;
    *(v39 + 40) = v6;
    *(v39 + 48) = v4;
    v48 = sub_100012F24;
    v49 = v39;
    lhs.value = _NSConcreteStackBlock;
    *&lhs.timescale = 1107296256;
    lhs.epoch = sub_1000136A4;
    v47 = &unk_1000A3248;
    v40 = _Block_copy(&lhs);
    v41 = v5;
    v42 = v6;
    v43 = v4;

    v44 = [v41 addBoundaryTimeObserverForTimes:isa queue:0 usingBlock:v40];
    _Block_release(v40);

    sub_10007DC10();
    swift_unknownObjectRelease();
    v45 = OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerObserver;
    swift_beginAccess();
    sub_1000109B8(&lhs, v8 + v45);
    swift_endAccess();
  }
}

uint64_t sub_100012B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100012B74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_stillImageView);

    [v2 setHidden:1];
  }
}

void sub_100012BF4(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_stillImageView);

    [v4 setAlpha:a1];
  }
}

uint64_t sub_100012C78()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100012CB8()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_stillImageView);

    [v4 setHidden:0];
  }

  [v1 pause];
  epoch = kCMTimeZero.epoch;
  v7[0] = kCMTimeZero.value;
  v7[1] = *&kCMTimeZero.timescale;
  v7[2] = epoch;
  return [v1 seekToTime:v7];
}

__n128 sub_100012D80(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100012D94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100012DB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100012E28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012ED4()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100012F24()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v1)
    {
      v7 = OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerObserver;
      swift_beginAccess();
      sub_10000FE28(v6 + v7, &v22);
      if (*(&v23 + 1))
      {
        sub_10000FE98(&v22, &aBlock);
        sub_10000C9A4(&aBlock, v19);
        v8 = v3;
        [v8 removeTimeObserver:sub_10007DE40()];

        swift_unknownObjectRelease();
        v22 = 0u;
        v23 = 0u;
        swift_beginAccess();
        sub_1000109B8(&v22, v6 + v7);
        swift_endAccess();
        sub_10000B5CC(&aBlock);
      }

      else
      {
        sub_10000B348(&v22, &qword_1000B2528);
      }

      [v2 play];
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = v4;
      v20 = sub_10001321C;
      v21 = v10;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v18 = sub_100008F80;
      v19 = &unk_1000A3298;
      v11 = _Block_copy(&aBlock);
      v12 = v4;

      v13 = swift_allocObject();
      *(v13 + 16) = v6;
      *(v13 + 24) = v12;
      v20 = sub_100013270;
      v21 = v13;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v18 = sub_1000136CC;
      v19 = &unk_1000A32E8;
      v14 = _Block_copy(&aBlock);
      v15 = v12;
      v16 = v6;

      [v9 animateWithDuration:v11 animations:v14 completion:0.25];
      _Block_release(v14);
      _Block_release(v11);
    }
  }
}

uint64_t sub_1000131E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013230()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100013270()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView;
  v4 = *(v2 + OBJC_IVAR____TtC22StickersUltraExtension13LivePhotoView_playerView);
  v5 = *((swift_isaMask & *v4) + 0x60);
  v6 = v4;
  v7 = v5();

  [v7 pause];
  [*(v2 + v3) setHidden:1];
  [*(v2 + v3) removeFromSuperview];
  v9 = *(v2 + v3);
  *(v2 + v3) = v1;
  v8 = v1;
}

uint64_t sub_100013354(uint64_t a1)
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

  sub_10007DDB0();
LABEL_9:
  result = sub_10007DCE0();
  *v1 = result;
  return result;
}

uint64_t sub_1000133F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_10007DDB0();
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
      result = sub_10007DDB0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10001360C();
          for (i = 0; i != v6; ++i)
          {
            sub_100006D40(&qword_1000B25E0);
            v9 = sub_100013584(v13, i, a3);
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
        sub_10000B77C(0, &qword_1000B2210);
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

void (*sub_100013584(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_10007DCD0();
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
    return sub_100013604;
  }

  __break(1u);
  return result;
}

unint64_t sub_10001360C()
{
  result = qword_1000B25E8;
  if (!qword_1000B25E8)
  {
    sub_10000B8F8(&qword_1000B25E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B25E8);
  }

  return result;
}

uint64_t sub_1000136D0(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_1000A3338;
  v7._object = a2;
  v4 = sub_10007DE00(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013724(char a1)
{
  if (a1)
  {
    return 0x696A6F6D696E61;
  }

  else
  {
    return 0x696A6F6D656DLL;
  }
}

uint64_t sub_100013758(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696A6F6D696E61;
  }

  else
  {
    v3 = 0x696A6F6D656DLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x696A6F6D696E61;
  }

  else
  {
    v5 = 0x696A6F6D656DLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10007DE50();
  }

  return v8 & 1;
}

Swift::Int sub_1000137FC()
{
  sub_10007DF00();
  sub_10007D820();

  return sub_10007DF10();
}

uint64_t sub_10001387C()
{
  sub_10007D820();
}

Swift::Int sub_1000138E8()
{
  sub_10007DF00();
  sub_10007D820();

  return sub_10007DF10();
}

uint64_t sub_100013964@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000A3338;
  v8._object = v3;
  v5 = sub_10007DE00(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1000139C4(uint64_t *a1@<X8>)
{
  v2 = 0x696A6F6D656DLL;
  if (*v1)
  {
    v2 = 0x696A6F6D696E61;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100013A00()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B51B8);
  sub_10000AE78(v0, qword_1000B51B8);
  return sub_10007C770();
}

void *sub_100013A84()
{
  type metadata accessor for StickersAVTPuppetProvider();
  v0 = swift_allocObject();
  result = sub_1000145FC();
  qword_1000B71E0 = v0;
  return result;
}

uint64_t sub_100013AC0()
{
  v0 = swift_allocObject();
  sub_1000145FC();
  return v0;
}

uint64_t *sub_100013AF8()
{
  if (qword_1000B51D0 != -1)
  {
    swift_once();
  }

  return &qword_1000B71E0;
}

uint64_t sub_100013B48()
{
  if (qword_1000B51D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_100013BC0(uint64_t a1)
{
  if (qword_1000B51D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1000B71E0 = a1;
}

uint64_t (*sub_100013C40())()
{
  if (qword_1000B51D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

NSString sub_100013CC8()
{
  result = sub_10007D7A0();
  qword_1000B71E8 = result;
  return result;
}

uint64_t *sub_100013D00()
{
  if (qword_1000B51D8 != -1)
  {
    swift_once();
  }

  return &qword_1000B71E8;
}

id sub_100013D50()
{
  if (qword_1000B51D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1000B71E8;

  return v1;
}

id sub_100013DAC()
{
  v0 = objc_allocWithZone(AVTPAvatarStore);

  return [v0 init];
}

id sub_100013DE4()
{
  v0 = objc_allocWithZone(AVTAvatarRecordImageProvider);

  return [v0 init];
}

id sub_100013E1C()
{
  v0 = [objc_opt_self() thumbnailScope];

  return v0;
}

id sub_100013E5C()
{
  v0 = objc_allocWithZone(NSOperationQueue);

  return [v0 init];
}

void *sub_100013EC4(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = sub_100014778(v1);

  return v2;
}

uint64_t sub_100013F00()
{
  v1 = (*(*v0 + 216))();
  v2 = (*(*v0 + 224))();
  sub_100015EFC(v2);
  return v1;
}

unint64_t sub_100013F80()
{
  result = sub_100014094();
  if (!(result >> 62))
  {
    v1 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_10:

    return 0;
  }

  v7 = result;
  v1 = sub_10007DDB0();
  result = v7;
  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_3:
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0xC000000000000001) != 0)
  {
LABEL_13:
    v4 = sub_10007DCD0();
    goto LABEL_8;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(result + 8 * v3 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v5 = [v4 identifier];
    swift_unknownObjectRelease();
    v6 = sub_10007D7D0();

    return v6;
  }

  __break(1u);
  return result;
}

void *sub_100014094()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 requestForCustomAvatars];
    v20 = 0;
    v6 = [v4 avatarsForFetchRequest:v5 error:&v20];

    v7 = v20;
    if (v6)
    {
      sub_100006D40(&qword_1000B2878);
      v1 = sub_10007D8E0();
      v8 = v7;

      *(v0 + 48) = v1;
    }

    else
    {
      v9 = v0;
      v10 = v20;
      sub_10007C360();

      swift_willThrow();
      if (qword_1000B51B0 != -1)
      {
        swift_once();
      }

      v11 = sub_10007C780();
      sub_10000AE78(v11, qword_1000B51B8);
      swift_errorRetain();
      v12 = sub_10007C760();
      v13 = sub_10007DA10();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        swift_getErrorValue();
        v16 = sub_10007DEB0();
        v18 = sub_10000A660(v16, v17, &v20);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Could not fetch memoji records. %s", v14, 0xCu);
        sub_10000B5CC(v15);
      }

      v1 = &_swiftEmptyArrayStorage;
      *(v9 + 48) = &_swiftEmptyArrayStorage;
    }
  }

  return v1;
}

void *sub_100014348()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 requestForPredefinedAvatars];
    v20 = 0;
    v6 = [v4 avatarsForFetchRequest:v5 error:&v20];

    v7 = v20;
    if (v6)
    {
      sub_100006D40(&qword_1000B2878);
      v1 = sub_10007D8E0();
      v8 = v7;

      *(v0 + 56) = v1;
    }

    else
    {
      v9 = v0;
      v10 = v20;
      sub_10007C360();

      swift_willThrow();
      if (qword_1000B51B0 != -1)
      {
        swift_once();
      }

      v11 = sub_10007C780();
      sub_10000AE78(v11, qword_1000B51B8);
      swift_errorRetain();
      v12 = sub_10007C760();
      v13 = sub_10007DA10();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v20 = v15;
        *v14 = 136315138;
        swift_getErrorValue();
        v16 = sub_10007DEB0();
        v18 = sub_10000A660(v16, v17, &v20);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Could not fetch animoji records. %s", v14, 0xCu);
        sub_10000B5CC(v15);
      }

      v1 = &_swiftEmptyArrayStorage;
      *(v9 + 56) = &_swiftEmptyArrayStorage;
    }
  }

  return v1;
}

void *sub_1000145FC()
{
  v0[2] = [objc_allocWithZone(AVTPAvatarStore) init];
  v0[3] = [objc_allocWithZone(AVTAvatarRecordImageProvider) init];
  v0[4] = [objc_opt_self() thumbnailScope];
  v0[5] = [objc_allocWithZone(NSOperationQueue) init];
  v0[6] = 0;
  v0[7] = 0;
  v0[8] = 0;
  (*(*v0 + 424))();
  return v0;
}

id *sub_1000146C8()
{
  (*(*v0 + 54))();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100014744()
{
  sub_1000146C8();

  return swift_deallocClassInstance();
}

void *sub_100014778(unint64_t a1)
{
  v2 = sub_100006D40(&unk_1000B2880);
  v74 = *(v2 - 8);
  v75 = v2;
  __chkstk_darwin(v2);
  v4 = (&v57 - v3);
  v5 = sub_100006D40(&qword_1000B2130);
  v64 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v76 = &v57 - v6;
  v7 = sub_10007C3B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v73 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = &_swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v80 = &_swiftEmptyArrayStorage;
  result = sub_100016498(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v63 = v4;
    v11 = v80;
    v13 = sub_10007C570();
    v14 = 0;
    v70 = a1 & 0xC000000000000001;
    v71 = v13;
    v69 = (v8 + 48);
    v62 = (v8 + 32);
    v61 = (v8 + 16);
    v72 = (v8 + 56);
    v57 = (v8 + 8);
    v60 = v79;
    v15 = &selRef__scrollView;
    v59 = xmmword_10008CBC0;
    v16 = v76;
    v67 = v7;
    v68 = v10;
    v58 = a1;
    while (1)
    {
      v77 = v11;
      if (v70)
      {
        v17 = sub_10007DCD0();
      }

      else
      {
        v17 = *(a1 + 8 * v14 + 32);
        swift_unknownObjectRetain();
      }

      sub_10007C560();
      v18 = [v17 v15[217]];
      sub_10007D7D0();

      sub_10007C530();

      if ((*v69)(v16, 1, v7) == 1)
      {
        sub_10000B348(v16, &qword_1000B2130);
        v19 = swift_allocObject();
        v20 = v65;
        v19[2] = v65;
        v19[3] = v17;
        v19[4] = 0;
        v19[5] = 0;
        v79[2] = sub_10001680C;
        v79[3] = v19;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v79[0] = sub_1000136A4;
        v79[1] = &unk_1000A34E0;
        v21 = _Block_copy(aBlock);
        v22 = objc_opt_self();

        swift_unknownObjectRetain();
        v23 = [v22 blockOperationWithBlock:v21];
        _Block_release(v21);

        [*(v20 + 40) addOperation:v23];

        sub_100006D40(&qword_1000B2890);
        v24 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = v59;
        v26 = (v25 + v24);
        v27 = a1;
        v28 = v17;
        v29 = *(v75 + 48);
        v30 = [v28 v15[217]];
        v31 = sub_10007D7D0();
        v33 = v32;

        *v26 = v31;
        v26[1] = v33;
        v7 = v67;
        (*v72)(v26 + v29, 1, 1, v67);
        v34 = sub_1000165EC(v25);
        swift_setDeallocating();
        sub_10000B348(v26, &unk_1000B2880);
        swift_deallocClassInstance();
        a1 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = v15;
        v8 = v73;
        (*v62)(v73, v16, v7);
        sub_100006D40(&qword_1000B2890);
        v36 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        a1 = swift_allocObject();
        v37 = (a1 + v36);
        v38 = v17;
        v39 = v75;
        v40 = v7;
        v41 = *(v75 + 48);
        v42 = v35[217];
        v66 = v38;
        v43 = [v38 v42];
        v44 = sub_10007D7D0();
        v46 = v45;

        *v37 = v44;
        v37[1] = v46;
        (*v61)(v37 + v41, v8, v40);
        (*v72)(v37 + v41, 0, 1, v40);
        sub_100006D40(&qword_1000B2898);
        v34 = sub_10007DDE0();
        v47 = *(v39 + 48);

        v4 = v63;
        sub_100016AA8(v37, v63);
        v48 = *v4;
        v7 = v4[1];
        v49 = sub_100016368(*v4, v7);
        if (v50)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v10 = sub_10007DDB0();
          goto LABEL_3;
        }

        v34[(v49 >> 6) + 8] |= 1 << v49;
        v51 = (v34[6] + 16 * v49);
        *v51 = v48;
        v51[1] = v7;
        sub_100016B18(v4 + v47, v34[7] + *(v64 + 72) * v49);
        v52 = v34[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_19;
        }

        v34[2] = v54;

        swift_setDeallocating();
        sub_10000B348(v37, &unk_1000B2880);
        swift_deallocClassInstance();
        swift_unknownObjectRelease();
        v7 = v67;
        (*v57)(v73, v67);
        a1 = v58;
      }

      v11 = v77;
      v80 = v77;
      v56 = v77[2];
      v55 = v77[3];
      if (v56 >= v55 >> 1)
      {
        sub_100016498((v55 > 1), v56 + 1, 1);
        v11 = v80;
      }

      ++v14;
      v11[2] = v56 + 1;
      v11[v56 + 4] = v34;
      v15 = &selRef__scrollView;
      v16 = v76;
      if (v68 == v14)
      {
        return v11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100014F44()
{
  *(v0 + 56) = 0;

  *(v0 + 48) = 0;
}

unint64_t sub_100014F7C(uint64_t a1, unint64_t a2, char a3)
{
  result = sub_1000153A0(a1, a2, 0);
  if (!result)
  {
    result = sub_100015768(a1, a2, 0);
    if ((a3 & 1) != 0 && !result)
    {
      result = sub_100014094();
      if (result >> 62)
      {
        v11 = result;
        v7 = sub_10007DDB0();
        result = v11;
        if (v7)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
LABEL_6:
          v8 = __OFSUB__(v7, 1);
          v9 = v7 - 1;
          if (v8)
          {
            __break(1u);
            goto LABEL_26;
          }

          if ((result & 0xC000000000000001) != 0)
          {
LABEL_26:
            v12 = sub_10007DCD0();
            goto LABEL_18;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v9 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v10 = *(result + 8 * v9 + 32);
LABEL_17:
            v12 = v10;
            swift_unknownObjectRetain();
LABEL_18:

            return v12;
          }

          __break(1u);
          goto LABEL_24;
        }
      }

      result = sub_100014348();
      if (!(result >> 62))
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_25:

          return 0;
        }

        goto LABEL_14;
      }

LABEL_24:
      v13 = result;
      v14 = sub_10007DDB0();
      result = v13;
      if (!v14)
      {
        goto LABEL_25;
      }

LABEL_14:
      if ((result & 0xC000000000000001) == 0)
      {
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v10 = *(result + 32);
        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_1000150F0(char a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a1)
  {
    if (qword_1000B51B0 != -1)
    {
      swift_once();
    }

    v7 = sub_10007C780();
    sub_10000AE78(v7, qword_1000B51B8);

    v8 = sub_10007C760();
    v9 = sub_10007DA00();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10000A660(a2, a3, &v18);
      _os_log_impl(&_mh_execute_header, v8, v9, "Will attempt to find animoji identified by %s", v10, 0xCu);
      sub_10000B5CC(v11);
    }

    return sub_100015768(a2, a3, a4 & 1);
  }

  else
  {
    if (qword_1000B51B0 != -1)
    {
      swift_once();
    }

    v13 = sub_10007C780();
    sub_10000AE78(v13, qword_1000B51B8);

    v14 = sub_10007C760();
    v15 = sub_10007DA00();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000A660(a2, a3, &v18);
      _os_log_impl(&_mh_execute_header, v14, v15, "Will attempt to find memoji identified by %s", v16, 0xCu);
      sub_10000B5CC(v17);
    }

    return sub_1000153A0(a2, a3, a4 & 1);
  }
}

unint64_t sub_1000153A0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_100014094();
  v7 = v6;
  v30 = a3;
  if (v6 >> 62)
  {
LABEL_20:
    v8 = sub_10007DDB0();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_10007DCD0();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

            goto LABEL_41;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v10 = *(v7 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_16;
          }
        }

        v12 = [v10 identifier];
        v13 = sub_10007D7D0();
        v15 = v14;

        if (v13 == a1 && v15 == a2)
        {
          goto LABEL_17;
        }

        v17 = sub_10007DE50();

        if (v17)
        {
          goto LABEL_41;
        }

        swift_unknownObjectRelease();
        ++v9;
      }

      while (v11 != v8);
    }
  }

  if (qword_1000B51B0 != -1)
  {
    swift_once();
  }

  v18 = sub_10007C780();
  sub_10000AE78(v18, qword_1000B51B8);

  v19 = sub_10007C760();
  v20 = sub_10007DA00();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10000A660(a1, a2, &v31);
    _os_log_impl(&_mh_execute_header, v19, v20, "Did not find memoji identified by %s", v21, 0xCu);
    sub_10000B5CC(v22);
  }

  if ((v30 & 1) == 0)
  {
    return 0;
  }

  result = sub_100014094();
  if (result >> 62)
  {
    v27 = result;
    v24 = sub_10007DDB0();
    result = v27;
    if (v24)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_28:
      v25 = __OFSUB__(v24, 1);
      v26 = v24 - 1;
      if (v25)
      {
        __break(1u);
        goto LABEL_49;
      }

      if ((result & 0xC000000000000001) != 0)
      {
LABEL_49:
        v10 = sub_10007DCD0();
        goto LABEL_41;
      }

      if ((v26 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v26 < *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v10 = *(result + 8 * v26 + 32);
LABEL_40:
        swift_unknownObjectRetain();
LABEL_41:

        return v10;
      }

      __break(1u);
      goto LABEL_47;
    }
  }

  result = sub_100014348();
  if (result >> 62)
  {
LABEL_47:
    v28 = result;
    v29 = sub_10007DDB0();
    result = v28;
    if (!v29)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_48:

    return 0;
  }

LABEL_37:
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
    goto LABEL_40;
  }

  __break(1u);
  return result;
}

unint64_t sub_100015768(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_100014348();
  v7 = v6;
  v26 = a3;
  if (v6 >> 62)
  {
LABEL_20:
    v8 = sub_10007DDB0();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      do
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = sub_10007DCD0();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

            goto LABEL_31;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v10 = *(v7 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_16;
          }
        }

        v12 = [v10 identifier];
        v13 = sub_10007D7D0();
        v15 = v14;

        if (v13 == a1 && v15 == a2)
        {
          goto LABEL_17;
        }

        v17 = sub_10007DE50();

        if (v17)
        {
          goto LABEL_31;
        }

        swift_unknownObjectRelease();
        ++v9;
      }

      while (v11 != v8);
    }
  }

  if (qword_1000B51B0 != -1)
  {
    swift_once();
  }

  v18 = sub_10007C780();
  sub_10000AE78(v18, qword_1000B51B8);

  v19 = sub_10007C760();
  v20 = sub_10007DA00();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10000A660(a1, a2, &v27);
    _os_log_impl(&_mh_execute_header, v19, v20, "Did not find animoji identified by %s", v21, 0xCu);
    sub_10000B5CC(v22);
  }

  if ((v26 & 1) == 0)
  {
    return 0;
  }

  result = sub_100014348();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v24 = result;
  v25 = sub_10007DDB0();
  result = v24;
  if (!v25)
  {
LABEL_33:

    return 0;
  }

LABEL_28:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = sub_10007DCD0();
    goto LABEL_31;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
    swift_unknownObjectRetain();
LABEL_31:

    return v10;
  }

  __break(1u);
  return result;
}

void sub_100015A98()
{
  if (!v0[8])
  {
    v1 = *v0;
    v2 = [objc_opt_self() defaultCenter];
    v3 = sub_10007D7A0();
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v1;
    v8[4] = sub_100016070;
    v8[5] = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100015C30;
    v8[3] = &unk_1000A3400;
    v6 = _Block_copy(v8);

    v7 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v6];
    _Block_release(v6);

    v0[8] = v7;
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100015C30(uint64_t a1)
{
  v2 = sub_10007C300();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_10007C2D0();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

void sub_100015D24()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];

    swift_unknownObjectRelease();
    *(v0 + 64) = 0;

    swift_unknownObjectRelease();
  }
}

void *sub_100015DC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006D40(&qword_1000B2870);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100006D40(&qword_1000B2868);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100015EFC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100015DC8(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100006D40(&qword_1000B2868);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100016000()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016038()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016070()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 368))(result);
    v1 = [objc_opt_self() defaultCenter];
    if (qword_1000B51D8 != -1)
    {
      swift_once();
    }

    [v1 postNotificationName:qword_1000B71E8 object:0];
  }

  return result;
}

uint64_t sub_100016164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100016180()
{
  result = qword_1000B2600;
  if (!qword_1000B2600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B2600);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickersAVTPuppetProvider.PuppetType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StickersAVTPuppetProvider.PuppetType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100016368(uint64_t a1, uint64_t a2)
{
  sub_10007DF00();
  sub_10007D820();
  v4 = sub_10007DF10();

  return sub_1000163E0(a1, a2, v4);
}

unint64_t sub_1000163E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10007DE50())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100016498(void *a1, int64_t a2, char a3)
{
  result = sub_1000164B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000164B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006D40(&qword_1000B2870);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100006D40(&qword_1000B2868);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000165EC(uint64_t a1)
{
  v2 = sub_100006D40(&unk_1000B2880);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100006D40(&qword_1000B2898);
    v7 = sub_10007DDE0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016AA8(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100016368(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_100006D40(&qword_1000B2130);
      result = sub_100016B18(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000167BC()
{

  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10001680C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v6 = [*(v0[2] + 24) imageForRecord:v1 scope:*(v0[2] + 32)];
  sub_10007C570();
  sub_10007C560();
  v4 = [v1 identifier];
  sub_10007D7D0();

  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  sub_100016BF8(v2);
  sub_10007C550();
}

uint64_t sub_100016AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&unk_1000B2880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006D40(&qword_1000B2130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016B88()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016BC8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100016BF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100016C10()
{
  v0 = sub_10007C780();
  sub_10000B274(v0, qword_1000B5368);
  sub_10000AE78(v0, qword_1000B5368);
  return sub_10007C770();
}

uint64_t sub_100016C94(unsigned __int8 a1)
{
  v1 = 0x746E6F4372657375;
  v2 = 0x7261506472696874;
  if (a1 != 5)
  {
    v2 = 0x6F4D736F746F6870;
  }

  v3 = 0x696A6F6D656DLL;
  if (a1 != 3)
  {
    v3 = 0x696A6F6D65;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x746E65636572;
  if (a1 != 1)
  {
    v4 = 0x6472616F6279656BLL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100016D90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746E65;
  v3 = 0x746E6F4372657375;
  v4 = a1;
  v5 = 0x7261506472696874;
  v6 = 0xEA00000000007974;
  if (a1 != 5)
  {
    v5 = 0x6F4D736F746F6870;
    v6 = 0xEB000000006C6164;
  }

  v7 = 0xE600000000000000;
  v8 = 0x696A6F6D656DLL;
  if (a1 != 3)
  {
    v8 = 0x696A6F6D65;
    v7 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x746E65636572;
  if (a1 != 1)
  {
    v10 = 0x6472616F6279656BLL;
    v9 = 0xEE00746E65636552;
  }

  if (!a1)
  {
    v10 = 0x746E6F4372657375;
    v9 = 0xEB00000000746E65;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x746E65636572)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEE00746E65636552;
        if (v11 != 0x6472616F6279656BLL)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEA00000000007974;
        if (v11 != 0x7261506472696874)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEB000000006C6164;
        if (v11 != 0x6F4D736F746F6870)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x696A6F6D656DLL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE500000000000000;
    v3 = 0x696A6F6D65;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_10007DE50();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_100016FD8()
{
  sub_10007D820();
}

Swift::Int sub_100017104()
{
  sub_10007DF00();
  sub_10007D820();

  return sub_10007DF10();
}

uint64_t sub_10001723C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002CBD4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001726C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000746E65;
  v4 = 0x746E6F4372657375;
  v5 = 0xEA00000000007974;
  v6 = 0x7261506472696874;
  if (v2 != 5)
  {
    v6 = 0x6F4D736F746F6870;
    v5 = 0xEB000000006C6164;
  }

  v7 = 0xE600000000000000;
  v8 = 0x696A6F6D656DLL;
  if (v2 != 3)
  {
    v8 = 0x696A6F6D65;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x746E65636572;
  if (v2 != 1)
  {
    v10 = 0x6472616F6279656BLL;
    v9 = 0xEE00746E65636552;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1000173C0(char a1)
{
  result = swift_beginAccess();
  byte_1000B28A0 = a1;
  return result;
}

uint64_t sub_10001746C()
{
  swift_beginAccess();
  v0 = qword_1000B71F0;
  v1 = qword_1000B71F0;
  return v0;
}

void sub_1000174B8(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_1000B71F0;
  qword_1000B71F0 = a1;
}

uint64_t sub_10001756C()
{
  swift_beginAccess();
  v0 = qword_1000B71F8;
  v1 = qword_1000B71F8;
  return v0;
}

void sub_1000175B8(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_1000B71F8;
  qword_1000B71F8 = a1;
}

uint64_t sub_10001766C()
{
  swift_beginAccess();
  v0 = qword_1000B7200;
  v1 = qword_1000B7200;
  return v0;
}

void sub_1000176B8(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_1000B7200;
  qword_1000B7200 = a1;
}

uint64_t sub_1000177B4(uint64_t a1)
{
  swift_beginAccess();
  qword_1000B7208 = a1;
}

double sub_100017868@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_1000B28D0;
  result = *&xmmword_1000B28B0;
  v4 = *&qword_1000B28C0;
  *a1 = xmmword_1000B28B0;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 sub_1000178BC(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v3 = *(a1 + 16);
  xmmword_1000B28B0 = *a1;
  *&qword_1000B28C0 = v3;
  byte_1000B28D0 = *(a1 + 32);
  return result;
}

uint64_t sub_100017974()
{
  swift_beginAccess();
  v0 = qword_1000B7210;
  v1 = qword_1000B7210;
  return v0;
}

void sub_1000179C0(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_1000B7210;
  qword_1000B7210 = a1;
}

void *sub_100017A68()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerProvidingViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100017AB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerProvidingViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100017B6C()
{
  v1 = (v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_photoPickerDidDismissClosure);
  swift_beginAccess();
  v2 = *v1;
  sub_100016BF8(*v1);
  return v2;
}

uint64_t sub_100017BC8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_photoPickerDidDismissClosure);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10002CC20(v6);
}

uint64_t sub_100017D04(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerStripViewModel;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_100017DBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType);
  if (v1 > 3)
  {
    if (*(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) > 5u)
    {
      if (v1 != 6)
      {
        return;
      }
    }

    else if (v1 != 4)
    {

      goto LABEL_9;
    }
  }

  v2 = sub_10007DE50();

  if (v2)
  {
LABEL_9:
    v4 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_thirdPartyAppIdentifier + 8);
    if (v4)
    {
      v5 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_thirdPartyAppIdentifier);
      v6 = *((swift_isaMask & *v0) + 0x180);

      v8 = *v6(v7);
      (*(v8 + 392))(v5, v4);
    }

    return;
  }

  v9 = (*((swift_isaMask & *v0) + 0x180))(v3);
  v10 = 0x6F4D736F746F6870;
  v11 = 0xEB000000006C6164;
  v12 = 0xE600000000000000;
  v13 = 0x696A6F6D656DLL;
  if (v1 != 3)
  {
    v13 = 0x696A6F6D65;
    v12 = 0xE500000000000000;
  }

  if (v1 <= 4)
  {
    v10 = v13;
    v11 = v12;
  }

  v14 = 0xE600000000000000;
  v15 = 0x746E65636572;
  if (v1 != 1)
  {
    v15 = 0x6472616F6279656BLL;
    v14 = 0xEE00746E65636552;
  }

  if (!v1)
  {
    v15 = 0x746E6F4372657375;
    v14 = 0xEB00000000746E65;
  }

  if (v1 <= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = v10;
  }

  if (v1 <= 2)
  {
    v17 = v14;
  }

  else
  {
    v17 = v11;
  }

  (*(*v9 + 392))(v16, v17);
}

id sub_100018158()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

id sub_100018190()
{
  v0 = objc_allocWithZone(UINavigationController);

  return [v0 init];
}

id sub_1000181C8()
{
  v0 = objc_allocWithZone(UIViewController);

  return [v0 init];
}

uint64_t sub_100018200()
{
  if (AVTIsStickersStripEnabled())
  {
    if (*(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) > 5u)
    {
      if (*(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) == 6)
      {

        v2 = 0;
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v1 = sub_10007DE50();

      v2 = v1 ^ 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void *sub_100018360()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerPackStripHostHeightConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000183AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerPackStripHostHeightConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100018464()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_contentControllerTopAnchorConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000184B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_contentControllerTopAnchorConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_100018568()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerPackStripTopConstraint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000185B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerPackStripTopConstraint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100018674()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_presentedFromMessages;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000186B8(char a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_presentedFromMessages;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100018768()
{
  if ((*((swift_isaMask & *v0) + 0x288))())
  {
    v1 = 0;
  }

  else if (*(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) > 5u)
  {
    if (*(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) == 6)
    {

      v1 = 0;
    }

    else
    {
      v1 = 1;
    }
  }

  else
  {
    v2 = sub_10007DE50();

    v1 = v2 ^ 1;
  }

  return v1 & 1;
}

uint64_t sub_100018900()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 0;
  }

  result = [objc_opt_self() pendingGlobalPresentation];
  if (result)
  {

    return 1;
  }

  return result;
}

id sub_100018990()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController____lazy_storage___stickerPackStripHost;
  v2 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController____lazy_storage___stickerPackStripHost);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController____lazy_storage___stickerPackStripHost);
  }

  else
  {
    sub_1000189F4(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1000189F4(void *a1)
{
  v2 = type metadata accessor for StickerPackStrip(0);
  __chkstk_darwin(v2 - 8);
  sub_10001924C((&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0)));
  v4 = objc_allocWithZone(sub_100006D40(&unk_1000B2BD0));
  v5 = sub_10007CCC0();
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_36;
  }

  v7 = v6;
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor:v8];

  v9 = [v5 view];
  if (!v9)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController;
  [*(a1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController) addChildViewController:v5];
  v12 = [*(a1 + v11) view];
  if (!v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = v12;
  v14 = [v5 view];
  if (!v14)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v15 = v14;
  [v13 addSubview:v14];

  [v5 didMoveToParentViewController:*(a1 + v11)];
  v16 = [v5 view];
  if (!v16)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v17 = v16;
  v18 = [v16 heightAnchor];

  v19 = *(a1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType);
  if (v19 <= 3)
  {
    if (*(a1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) > 1u && v19 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*(a1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) <= 5u || v19 == 6)
  {
LABEL_14:
    sub_10007DE50();
LABEL_15:
  }

  v20 = sub_100041CE8();
  v21 = [a1 traitCollection];
  v22 = [v21 _presentationSemanticContext];

  if (v22 == 3)
  {
    v23 = (*((swift_isaMask & *a1) + 0x2A0))();
    v24 = -22.0;
    if (v23)
    {
      v24 = -4.0;
    }
  }

  else
  {
    v24 = 0.0;
  }

  v25 = [v18 constraintEqualToConstant:v20 + v24];

  (*((swift_isaMask & *a1) + 0x248))(v25);
  v26 = [a1 traitCollection];
  v27 = [v26 _presentationSemanticContext];

  v28 = 0.0;
  if (v27 == 3)
  {
    if ((*((swift_isaMask & *a1) + 0x2A0))())
    {
      v28 = -4.0;
    }

    else
    {
      v28 = -22.0;
    }
  }

  v29 = [v5 view];
  if (!v29)
  {
    goto LABEL_40;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = [*(a1 + v11) view];
  if (!v32)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v33 = v32;
  v34 = [v32 safeAreaLayoutGuide];

  v35 = [v34 topAnchor];
  v36 = [v31 constraintEqualToAnchor:v35 constant:v28];

  v37 = *((swift_isaMask & *a1) + 0x278);
  v38 = v36;
  v37(v36);
  sub_100006D40(&qword_1000B2200);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_10008C950;
  v40 = [v5 view];
  if (!v40)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v41 = v40;
  v42 = [v40 leadingAnchor];

  v43 = [*(a1 + v11) view];
  if (!v43)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v44 = v43;
  v45 = [v43 safeAreaLayoutGuide];

  v46 = [v45 leadingAnchor];
  v47 = [v42 constraintEqualToAnchor:v46];

  *(v39 + 32) = v47;
  v48 = [v5 view];

  if (!v48)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v49 = [v48 trailingAnchor];

  v50 = [*(a1 + v11) view];
  if (!v50)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v51 = v50;
  v52 = [v50 safeAreaLayoutGuide];

  v53 = [v52 trailingAnchor];
  v54 = [v49 constraintEqualToAnchor:v53];

  *(v39 + 40) = v54;
  *(v39 + 48) = v38;
  v55 = *((swift_isaMask & *a1) + 0x240);
  v56 = v38;
  v57 = v55();
  if (v57)
  {
    v58 = v57;
    v59 = objc_opt_self();
    *(v39 + 56) = v58;
    sub_10000B77C(0, &qword_1000B2210);
    isa = sub_10007D8C0().super.isa;

    [v59 activateConstraints:isa];

    return;
  }

LABEL_46:
  __break(1u);
}

uint64_t sub_10001924C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100006D40(&qword_1000B2958);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v14 - v7;
  v9 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController____lazy_storage___stickerPackStrip;
  swift_beginAccess();
  sub_10003260C(v1 + v9, v8, &qword_1000B2958);
  v10 = type metadata accessor for StickerPackStrip(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100031BA4(v8, a1);
  }

  sub_10000B348(v8, &qword_1000B2958);
  v14[3] = type metadata accessor for StickersParentViewController();
  v14[4] = &off_1000A3B70;
  v14[0] = v1;
  v12 = v1;
  sub_100041EB0(v14, a1);
  sub_100031AD0(a1, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_100031B34(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_100019434@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StickerPackStrip(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void *sub_1000194A0()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_imageAnalysisInteraction;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000194EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_imageAnalysisInteraction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1000195A4()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_imageAnalysisInteraction;
  swift_beginAccess();
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v0];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for StickersParentViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id sub_100019874()
{
  v0 = objc_allocWithZone(_UIScrollPocketInteraction);

  return [v0 initWithStyle:0];
}

id sub_1000198B0()
{
  v1 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_interaction;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_100019904(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_interaction;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1000199BC()
{
  v1 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v1 - 8);
  v50 = &v46 - v2;
  v3 = sub_10007D2F0();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v52 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10007D320();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10007D300();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007C7D0();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for StickersParentViewController();
  v63.receiver = v0;
  v63.super_class = v10;
  objc_msgSendSuper2(&v63, "viewDidLoad");
  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v11 = sub_10007C780();
  sub_10000AE78(v11, qword_1000B5368);
  v12 = v0;
  v13 = sub_10007C760();
  v14 = sub_10007D9F0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock = v16;
    *v15 = 136315138;
    v17 = [v12 debugDescription];
    v47 = v6;
    v18 = v17;
    v19 = sub_10007D7D0();
    v20 = v12;
    v21 = v8;
    v23 = v22;

    v24 = sub_10000A660(v19, v23, &aBlock);
    v8 = v21;
    v12 = v20;

    *(v15 + 4) = v24;
    v6 = v47;
    _os_log_impl(&_mh_execute_header, v13, v14, "Loading %s", v15, 0xCu);
    sub_10000B5CC(v16);
  }

  result = [v12 view];
  if (result)
  {
    v26 = result;
    v27 = [objc_opt_self() clearColor];
    [v26 setBackgroundColor:v27];

    if (!_UISolariumEnabled())
    {
LABEL_9:
      [v12 setAutomaticallyDisplaysLandscapeRotationOverlay:(*((swift_isaMask & *v12) + 0x2A8))() & 1];
      sub_10000B77C(0, &qword_1000B22E0);
      v29 = v48;
      (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.userInteractive(_:), v48);
      v30 = sub_10007DAE0();
      (*(v6 + 8))(v8, v29);
      v61 = sub_10001A280;
      v62 = 0;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_1000136A4;
      v60 = &unk_1000A3620;
      v31 = _Block_copy(&aBlock);
      v32 = v49;
      sub_10007D310();
      v56 = &_swiftEmptyArrayStorage;
      sub_100031A88(&qword_1000B2970, &type metadata accessor for DispatchWorkItemFlags);
      sub_100006D40(&unk_1000B22F0);
      sub_10000B894();
      v33 = v52;
      v34 = v55;
      sub_10007DC50();
      sub_10007DAD0();
      _Block_release(v31);

      (*(v54 + 8))(v33, v34);
      (*(v51 + 8))(v32, v53);
      v35 = *(**iMessageAppsRegistry.shared.unsafeMutableAddressor() + 248);

      v35(v36);

      v37 = [objc_opt_self() defaultCenter];
      v38 = sub_10007DB00();
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v61 = sub_10002CCCC;
      v62 = v39;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_100015C30;
      v60 = &unk_1000A3670;
      v40 = _Block_copy(&aBlock);

      v41 = [v37 addObserverForName:v38 object:0 queue:0 usingBlock:v40];
      _Block_release(v40);
      swift_unknownObjectRelease();

      v42 = v50;
      sub_10007D970();
      v43 = sub_10007D990();
      (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      v44 = swift_allocObject();
      *(v44 + 16) = 0;
      *(v44 + 24) = 0;
      sub_10001A39C(0, 0, v42, &unk_10008CD80, v44);

      v45 = sub_10000B348(v42, &unk_1000B2960);
      return (*((swift_isaMask & *v12) + 0x338))(v45);
    }

    result = [v12 view];
    if (result)
    {
      v28 = result;
      sub_10007C7C0();
      v60 = sub_10007C7E0();
      v61 = &protocol witness table for _Glass;
      sub_10000AEB0(&aBlock);
      sub_10007C7F0();
      sub_10007DB90();

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10001A280()
{
  v0 = [objc_opt_self() sharedInstance];
}

uint64_t sub_10001A2E0()
{
  v1 = sub_100013AF8();
  swift_beginAccess();
  v2 = *(**v1 + 232);

  v2(v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10001A39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100006D40(&unk_1000B2960);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10003260C(a3, v25 - v10, &unk_1000B2960);
  v12 = sub_10007D990();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000B348(v11, &unk_1000B2960);
  }

  else
  {
    sub_10007D980();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10007D940();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10007D800() + 32;
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

void sub_10001A6A4(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 _presentationSemanticContext];

  if (!a1 || v4 != [a1 _presentationSemanticContext])
  {
    (*((swift_isaMask & *v1) + 0x338))();

    sub_10001A868();
  }
}

void sub_10001A868()
{
  v1 = (*((swift_isaMask & *v0) + 0x270))();
  if (v1)
  {
    v6 = v1;
    v2 = [v0 traitCollection];
    v3 = [v2 _presentationSemanticContext];

    v4 = 0.0;
    if (v3 == 3)
    {
      v5 = (*((swift_isaMask & *v0) + 0x2A0))(0.0);
      v4 = -22.0;
      if (v5)
      {
        v4 = -4.0;
      }
    }

    [v6 setConstant:v4];
  }
}

void sub_10001A990()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    swift_beginAccess();
    if (byte_1000B28A0 > 5u)
    {
      if (byte_1000B28A0 == 6)
      {

        return;
      }
    }

    else
    {
      v1 = sub_10007DE50();

      if (v1)
      {
        return;
      }
    }

    v2 = [v0 traitCollection];
    v3 = [v2 _presentationSemanticContext];

    if (v3 != 3)
    {
      sub_100006D40(&qword_1000B2200);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_10008C380;
      v5 = [objc_opt_self() effectWithBlurRadius:24.0];
      if (v5)
      {
        *(v4 + 32) = v5;
        *(v4 + 40) = [objc_opt_self() colorEffectSaturate:1.5];
        sub_10000B77C(0, &qword_1000B2990);
        v6 = [objc_opt_self() systemBackgroundColor];
        v7 = [v6 colorWithAlphaComponent:0.85];

        v8 = [swift_getObjCClassFromMetadata() effectCompositingColor:v7];
        if (v8)
        {
          *(v4 + 48) = v8;
          sub_10000B77C(0, &unk_1000B2998);
          isa = sub_10007D8C0().super.isa;

          v10 = [objc_opt_self() effectCombiningEffects:isa];

          v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];
          [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
          v12 = [v0 view];
          if (v12)
          {
            v13 = v12;
            [v12 insertSubview:v11 atIndex:0];

            v14 = swift_allocObject();
            *(v14 + 16) = xmmword_10008C950;
            v15 = [v11 topAnchor];
            v16 = [v0 view];
            if (v16)
            {
              v17 = v16;
              v18 = [v16 topAnchor];

              v19 = [v15 constraintEqualToAnchor:v18];
              *(v14 + 32) = v19;
              v20 = [v11 leadingAnchor];
              v21 = [v0 view];
              if (v21)
              {
                v22 = v21;
                v23 = [v21 leadingAnchor];

                v24 = [v20 constraintEqualToAnchor:v23];
                *(v14 + 40) = v24;
                v25 = [v11 heightAnchor];
                v26 = [v0 view];
                if (v26)
                {
                  v27 = v26;
                  v28 = [v26 heightAnchor];

                  v29 = [v25 constraintEqualToAnchor:v28];
                  *(v14 + 48) = v29;
                  v30 = [v11 widthAnchor];
                  v31 = [v0 view];
                  if (v31)
                  {
                    v32 = v31;
                    v33 = objc_opt_self();
                    v34 = [v32 widthAnchor];

                    v35 = [v30 constraintEqualToAnchor:v34];
                    *(v14 + 56) = v35;
                    sub_10000B77C(0, &qword_1000B2210);
                    v36 = sub_10007D8C0().super.isa;

                    [v33 activateConstraints:v36];

                    v37 = *&v0[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_visualEffectViewBackground];
                    *&v0[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_visualEffectViewBackground] = v11;

                    return;
                  }

LABEL_23:
                  __break(1u);
                  return;
                }

LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_19;
    }
  }
}

id sub_10001AFC8(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for StickersParentViewController();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor:v5];

    (*((swift_isaMask & *v1) + 0x340))();
    sub_100006D40(&qword_1000B29A8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10008CBC0;
    *(v6 + 32) = sub_10007C7B0();
    *(v6 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    v7 = sub_10007DA80();

    *(v1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_traitRegistration) = v7;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10001B18C(char a1)
{
  if (*&v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_traitRegistration])
  {
    swift_unknownObjectRetain();
    sub_10007DA90();
    swift_unknownObjectRelease();
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for StickersParentViewController();
  return objc_msgSendSuper2(&v4, "viewWillDisappear:", a1 & 1);
}

void sub_10001B28C()
{
  v1 = v0;
  v2 = sub_10007C7A0();
  __chkstk_darwin(v2);
  v3 = *(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_rootNavigationController);
  v4 = [v0 traitCollection];
  [v4 userInterfaceStyle];

  sub_10007DA60();
  sub_10007C790();
  sub_10007DA70();

  if ((*((swift_isaMask & *v1) + 0x238))())
  {
    v5 = sub_100018990();
    v6 = [v1 traitCollection];
    [v6 userInterfaceStyle];

    sub_10007DA60();
    sub_10007C790();
    sub_10007DA70();
  }
}

double sub_10001B48C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for StickersParentViewController();
  v1 = objc_msgSendSuper2(&v8, "additionalSafeAreaInsets");
  v3 = v2;
  v4 = *((swift_isaMask & *v0) + 0x2A0);
  if ((v4)(v1))
  {
    v5 = [v0 traitCollection];
    v6 = [v5 _presentationSemanticContext];

    v3 = 0.0;
    if (v6 == 3)
    {
      if (v4())
      {
        return -4.0;
      }

      else
      {
        return -22.0;
      }
    }
  }

  return v3;
}

uint64_t sub_10001B60C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10007D960();
  v3[5] = sub_10007D950();
  v5 = sub_10007D940();

  return _swift_task_switch(sub_10001B6A8, v5, v4);
}

uint64_t sub_10001B6A8()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v4 = &v1[OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_thirdPartyAppIdentifier];
  *v4 = v3;
  *(v4 + 1) = v2;

  sub_100017DBC();
  v5 = sub_10007D7A0();
  v6 = sub_10007D7A0();
  [v1 requestPresentationWithStickerType:v5 identifier:v6];

  sub_1000218CC();
  v7 = v0[1];

  return v7();
}

uint64_t sub_10001B918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_10007D960();
  v3[5] = sub_10007D950();
  v5 = sub_10007D940();

  return _swift_task_switch(sub_10001B9B4, v5, v4);
}

uint64_t sub_10001B9B4()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_10007D7D0();
  v5 = v4;
  v0[7] = v4;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_10001BA90;

  return sub_10001B60C(v3, v5);
}

uint64_t sub_10001BA90()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10001BBEC(void (*a1)(uint64_t))
{
  sub_100006D40(&unk_1000B29B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10008CD50;
  sub_100006D40(&qword_1000B3C30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008CBC0;
  *(inited + 32) = 0x746E65636572;
  v3 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0x6B636F6C43;
  *(inited + 56) = 0xE500000000000000;
  v4 = sub_10002D10C(inited);
  swift_setDeallocating();
  sub_10000B348(v3, &qword_1000B29C0);
  *(v1 + 32) = v4;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_10008CBC0;
  *(v5 + 32) = 0x746E6F4372657375;
  v6 = v5 + 32;
  *(v5 + 72) = &type metadata for String;
  *(v5 + 40) = 0xEB00000000746E65;
  *(v5 + 48) = 0x72656B63697453;
  *(v5 + 56) = 0xE700000000000000;
  v7 = sub_10002D10C(v5);
  swift_setDeallocating();
  sub_10000B348(v6, &qword_1000B29C0);
  *(v1 + 40) = v7;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_10008CBC0;
  *(v8 + 32) = 0x696A6F6D656DLL;
  *(v8 + 40) = 0xE600000000000000;
  v9 = sub_100013AF8();
  swift_beginAccess();
  v10 = *(**v9 + 232);

  v12 = v10(v11);

  *(v8 + 72) = sub_100006D40(&qword_1000B29C8);
  *(v8 + 48) = v12;
  v13 = sub_10002D10C(v8);
  swift_setDeallocating();
  sub_10000B348(v8 + 32, &qword_1000B29C0);
  *(v1 + 48) = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10008CBC0;
  *(v14 + 32) = 0x696A6F6D65;
  v15 = v14 + 32;
  *(v14 + 72) = &type metadata for String;
  *(v14 + 40) = 0xE500000000000000;
  *(v14 + 48) = 0xD000000000000013;
  *(v14 + 56) = 0x80000001000882E0;
  v16 = sub_10002D10C(v14);
  swift_setDeallocating();
  sub_10000B348(v15, &qword_1000B29C0);
  *(v1 + 56) = v16;
  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v17 = sub_10007C780();
  sub_10000AE78(v17, qword_1000B5368);

  v18 = sub_10007C760();
  v19 = sub_10007DA00();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    sub_100006D40(&qword_1000B29D0);
    v22 = sub_10007D910();
    v24 = sub_10000A660(v22, v23, &v27);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "requestStickerExtensionMetadataDictionary will call completion with %s", v20, 0xCu);
    sub_10000B5CC(v21);
  }

  a1(v1);
}

void sub_10001C080()
{
  v1 = v0;
  v2 = sub_10007C7A0();
  __chkstk_darwin(v2);
  v3 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController;
  v4 = [*(v0 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_mainController) view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  [v5 setBackgroundColor:v7];

  v8 = (*((swift_isaMask & *v1) + 0x2A0))();
  v9 = *(v1 + v3);
  if (v8)
  {
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 mainBundle];
    v56._countAndFlagsBits = 0xE000000000000000;
    v59._countAndFlagsBits = 0x7372656B63697453;
    v59._object = 0xE800000000000000;
    v60.value._countAndFlagsBits = 0;
    v60.value._object = 0;
    v13.super.isa = v12;
    v61._countAndFlagsBits = 0;
    v61._object = 0xE000000000000000;
    sub_10007C340(v59, v60, v13, v61, v56);

    v14 = sub_10007D7A0();

    [v11 setTitle:v14];

    v15 = [objc_opt_self() currentDevice];
    v16 = [v15 userInterfaceIdiom];

    if (v16 != 1)
    {
      goto LABEL_36;
    }

    v17 = [v1 view];
    if (!v17)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v18 = v17;
    v19 = [v17 traitCollection];

    v20 = [v19 horizontalSizeClass];
    if (v20 == 1)
    {
LABEL_36:
      if (_UISolariumEnabled())
      {
        v21 = sub_10007D7A0();
        v22 = [objc_opt_self() systemImageNamed:v21];

        v23 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v22 style:0 target:v1 action:"handleCloseButton"];
        v24 = v23;
        v25 = [v6 secondaryLabelColor];
        [v24 setTintColor:v25];
      }

      else
      {
        v33 = [objc_opt_self() buttonWithType:7];
        [v33 addTarget:v1 action:"handleCloseButton" forControlEvents:64];
        v34 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v33];

        v24 = v34;
      }

      v35 = [*(v1 + v3) navigationItem];
      [v35 setRightBarButtonItem:v24];
    }

    v36 = OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_rootNavigationController;
    v37 = *(v1 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_rootNavigationController);
    v38 = [v1 traitCollection];
    [v38 userInterfaceStyle];

    sub_10007DA60();
    sub_10007C790();
    sub_10007DA70();

    v39 = [*(v1 + v36) view];
    if (v39)
    {
      v40 = v39;
      v41 = [v6 clearColor];
      [v40 setBackgroundColor:v41];

      v42 = [*(v1 + v36) view];
      if (v42)
      {
        v43 = v42;
        [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

        v44 = *(v1 + v36);
        sub_100006D40(&qword_1000B2200);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_10008C3A0;
        v46 = *(v1 + v3);
        *(v45 + 32) = v46;
        sub_10000B77C(0, &qword_1000B3B10);
        v47 = v44;
        v48 = v46;
        isa = sub_10007D8C0().super.isa;

        [v47 setViewControllers:isa];

        [v1 addChildViewController:*(v1 + v36)];
        v50 = [v1 view];
        if (v50)
        {
          v51 = v50;
          v52 = [*(v1 + v36) view];
          if (v52)
          {
            v53 = v52;
            [v51 addSubview:v52];

            v54 = [*(v1 + v36) view];
            if (v54)
            {
              v55 = v54;
              sub_10007DB80();

              return;
            }

            goto LABEL_32;
          }

LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        goto LABEL_29;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v26 = [*(v1 + v3) view];
  if (!v26)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v27 = v26;
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v1 addChildViewController:*(v1 + v3)];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v29 = v28;
  v30 = [*(v1 + v3) view];
  if (!v30)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v31 = v30;
  [v29 addSubview:v30];

  v32 = [*(v1 + v3) view];
  if (!v32)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v57 = v32;
  sub_10007DB80();
}

id sub_10001C7C0()
{
  v1 = v0;
  v2 = (*((swift_isaMask & *v0) + 0x108))();
  if (v2)
  {
    v3 = v2;
    (*((swift_isaMask & *v2) + 0x188))();
  }

  return [v1 dismiss];
}

void sub_10001C958(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v8 = sub_10007C780();
  sub_10000AE78(v8, qword_1000B5368);

  v9 = sub_10007C760();
  v10 = sub_10007DA00();

  v37 = a3;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10000A660(a1, a2, &v40);
    *(v11 + 12) = 2080;
    if (a4)
    {
      v12 = a3;
    }

    else
    {
      v12 = 7104878;
    }

    if (a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_10000A660(v12, v13, &v40);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "requestPresentation of %s with identifier: %s)", v11, 0x16u);
    swift_arrayDestroy();
  }

  v15 = sub_10002CBD4(a1, a2);
  if (v15 == 7)
  {

    osloga = sub_10007C760();
    v16 = sub_10007DA10();

    if (os_log_type_enabled(osloga, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v40 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_10000A660(a1, a2, &v40);
      _os_log_impl(&_mh_execute_header, osloga, v16, "Was asked to present a view I don't understand. Nothing to do. %s", v17, 0xCu);
      sub_10000B5CC(v18);
    }

    return;
  }

  v19 = v15;
  v20 = sub_10007C760();
  v21 = sub_10007DA00();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40 = v23;
    *v22 = 136315138;
    v24 = 0x7261506472696874;
    if (v19 == 5)
    {
      v25 = 0xEA00000000007974;
    }

    else
    {
      v24 = 0x6F4D736F746F6870;
      v25 = 0xEB000000006C6164;
    }

    v26 = 0xE600000000000000;
    v27 = 0x696A6F6D656DLL;
    if (v19 != 3)
    {
      v27 = 0x696A6F6D65;
      v26 = 0xE500000000000000;
    }

    if (v19 <= 4u)
    {
      v24 = v27;
      v25 = v26;
    }

    v28 = 0xE600000000000000;
    v29 = 0x746E65636572;
    if (v19 != 1)
    {
      v29 = 0x6472616F6279656BLL;
      v28 = 0xEE00746E65636552;
    }

    if (!v19)
    {
      v29 = 0x746E6F4372657375;
      v28 = 0xEB00000000746E65;
    }

    if (v19 <= 2u)
    {
      v30 = v29;
    }

    else
    {
      v30 = v24;
    }

    if (v19 <= 2u)
    {
      v31 = v28;
    }

    else
    {
      v31 = v25;
    }

    v32 = sub_10000A660(v30, v31, &v40);

    *(v22 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "will present view of type %s", v22, 0xCu);
    sub_10000B5CC(v23);
  }

  *(&oslog->isa + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) = v19;
  sub_100017DBC();
  if (v19 == 5)
  {
  }

  else
  {
    v33 = sub_10007DE50();

    if ((v33 & 1) == 0)
    {
      v35 = (oslog + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_puppetIdentifier);
      *v35 = v37;
      v35[1] = a4;

      v36 = (&oslog->isa + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_thirdPartyAppIdentifier);
      *v36 = 0;
      v36[1] = 0;

      goto LABEL_41;
    }
  }

  v34 = (oslog + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_thirdPartyAppIdentifier);
  *v34 = v37;
  v34[1] = a4;

LABEL_41:

  sub_100017DBC();
}

id sub_10001D008(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StickersParentViewController();
  v3 = objc_msgSendSuper2(&v7, "defaultMessagesChildViewControllerForPresentationContext:", a1);
  result = [v3 view];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() clearColor];
    [v5 setBackgroundColor:v6];

    (*((swift_isaMask & *v1) + 0x290))(a1 == 0);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001D25C(void *a1)
{
  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v3 = sub_10007C780();
  sub_10000AE78(v3, qword_1000B5368);
  v4 = v1;
  v5 = a1;
  v6 = sub_10007C760();
  v7 = sub_10007DA00();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = [v4 debugDescription];
    v10 = sub_10007D7D0();
    v12 = v11;

    v13 = sub_10000A660(v10, v12, &v22);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = [v5 debugDescription];
    v15 = sub_10007D7D0();
    v17 = v16;

    v18 = sub_10000A660(v15, v17, &v22);

    *(v8 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s willBecomeActive(with conversation: %s)", v8, 0x16u);
    swift_arrayDestroy();
  }

  v19 = type metadata accessor for StickersParentViewController();
  v23.receiver = v4;
  v23.super_class = v19;
  v20 = objc_msgSendSuper2(&v23, "willBecomeActiveWithConversation:", v5);
  [v4 setAutomaticallyDisplaysLandscapeRotationOverlay:(*((swift_isaMask & *v4) + 0x2A8))(v20) & 1];
  v21 = [objc_opt_self() pendingGlobalPresentation];
  if (v21)
  {
  }

  else
  {
    sub_100024104();
    (*((swift_isaMask & *v4) + 0x348))();
    sub_1000218CC();
  }
}

void sub_10001D5A8(uint64_t a1)
{
  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v3 = sub_10007C780();
  sub_10000AE78(v3, qword_1000B5368);
  v4 = v1;
  v5 = sub_10007C760();
  v6 = sub_10007DA00();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    v9 = [v4 debugDescription];
    v10 = sub_10007D7D0();
    v12 = v11;

    v13 = sub_10000A660(v10, v12, &v20);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s willTransition(to presentationStyle: %lu)", v7, 0x16u);
    sub_10000B5CC(v8);
  }

  v14 = type metadata accessor for StickersParentViewController();
  v21.receiver = v4;
  v21.super_class = v14;
  objc_msgSendSuper2(&v21, "willTransitionToPresentationStyle:", a1);
  v15 = *(v4 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType);
  if (v15 > 3)
  {
    if (*(v4 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_activeControllerType) > 5u)
    {
      if (v15 != 6)
      {
        goto LABEL_12;
      }
    }

    else if (v15 != 4)
    {

      goto LABEL_13;
    }
  }

  v16 = sub_10007DE50();

  if ((v16 & 1) == 0)
  {
LABEL_12:
    sub_1000218CC();
  }

LABEL_13:
  v18 = (*((swift_isaMask & *v4) + 0x108))(v17);
  if (v18)
  {
    v19 = v18;
    (*((swift_isaMask & *v18) + 0x190))(a1);
  }
}

void sub_10001D964(uint64_t a1)
{
  if (qword_1000B5360 != -1)
  {
    swift_once();
  }

  v3 = sub_10007C780();
  sub_10000AE78(v3, qword_1000B5368);
  v4 = v1;
  v5 = sub_10007C760();
  v6 = sub_10007DA00();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315394;
    v9 = [v4 debugDescription];
    v10 = sub_10007D7D0();
    v12 = v11;

    v13 = sub_10000A660(v10, v12, &v27);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s didTransition(to presentationStyle:%lu)", v7, 0x16u);
    sub_10000B5CC(v8);
  }

  v14 = type metadata accessor for StickersParentViewController();
  v28.receiver = v4;
  v28.super_class = v14;
  objc_msgSendSuper2(&v28, "didTransitionToPresentationStyle:", a1);
  v15 = [v4 activeConversation];
  if (!v15)
  {
    v24 = sub_10007C760();
    v25 = sub_10007DA10();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Could not find a conversation", v26, 2u);
    }

    goto LABEL_16;
  }

  v16 = *((swift_isaMask & *v4) + 0x108);
  v17 = v16();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 view];

    if (!v19)
    {
      __break(1u);
      goto LABEL_19;
    }

    [v19 setNeedsLayout];
  }

  v20 = *(v4 + OBJC_IVAR____TtC22StickersUltraExtension28StickersParentViewController_stickerCollectionViewControllerPresentedViewController);
  if (v20)
  {
    v21 = [v20 view];
    if (v21)
    {
      v22 = v21;
      [v21 setNeedsLayout];

      goto LABEL_12;
    }

LABEL_19:
    __break(1u);
    return;
  }

LABEL_12:
  v23 = v16();
  if (!v23)
  {
    return;
  }

  v24 = v23;
  (*((swift_isaMask & v23->isa) + 0x198))(a1);
LABEL_16:
}

void sub_10001DD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000B77C(0, &unk_1000B22D0);
  isa = sub_10007D8C0().super.isa;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_10002D274;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10001DE24;
  v9[3] = &unk_1000A36E8;
  v8 = _Block_copy(v9);

  [v3 _addStickerToStoreWithRepresentations:isa completionWithStickerIDs:v8];
  _Block_release(v8);
}

uint64_t sub_10001DE24(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v8 = a2;
  v13 = *(a1 + 32);
  if (a2)
  {
    sub_10007C420();
    v8 = sub_10007D8E0();
  }

  v14 = a3;
  v13(v8, a3, a4, a5, a6, a7);
}

void sub_10001E02C(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (a1)
  {
    v7 = a6.n128_u64[0];
    v8 = a5.n128_u64[0];
    v9 = a4.n128_u64[0];
    v10 = a3.n128_u64[0];
    v11 = sub_10007C350();
    a3.n128_u64[0] = v10;
    a4.n128_u64[0] = v9;
    a5.n128_u64[0] = v8;
    a6.n128_u64[0] = v7;
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  (*(a2 + 16))(a2, a3, a4, a5, a6);
}