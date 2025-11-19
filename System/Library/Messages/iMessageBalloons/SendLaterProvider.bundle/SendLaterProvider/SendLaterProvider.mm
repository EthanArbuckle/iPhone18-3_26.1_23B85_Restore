uint64_t sub_1980()
{
  v0 = sub_7EA0();
  sub_3F50(v0, qword_15E10);
  sub_3F18(v0, qword_15E10);
  return sub_7E90();
}

uint64_t sub_1D80(uint64_t a1)
{
  sub_3E50(a1, v16, &qword_15B40, &qword_9250);
  if (v17)
  {
    sub_8070();
    if (swift_dynamicCast())
    {
      v3 = OBJC_IVAR___SendLaterRootViewController_context;
      v4 = *(v1 + OBJC_IVAR___SendLaterRootViewController_context);
      *(v1 + OBJC_IVAR___SendLaterRootViewController_context) = v15;
      if (v4)
      {
        v5 = v1;
        v6 = v15;
        v7 = v4;
        v8 = sub_8080();

        if (v8)
        {

LABEL_15:
          return sub_3EB8(a1, &qword_15B40, &qword_9250);
        }

        v1 = v5;
        v13 = *(v5 + v3);
        if (!v13)
        {
LABEL_14:

          v7 = v4;
          goto LABEL_15;
        }
      }

      else
      {
        v12 = v15;
        v13 = v15;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

      [v13 addObserver:v1];
      goto LABEL_14;
    }
  }

  else
  {
    sub_3EB8(v16, &qword_15B40, &qword_9250);
  }

  if (*(a1 + 24))
  {
    if (qword_15940 != -1)
    {
      swift_once();
    }

    v9 = sub_7EA0();
    sub_3F18(v9, qword_15E10);
    v7 = sub_7E80();
    v10 = sub_8020();
    if (os_log_type_enabled(v7, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_0, v7, v10, "Could not set pluginContext, newValue is not of expected type CKSendLaterPluginInfo", v11, 2u);
    }

    goto LABEL_15;
  }

  return sub_3EB8(a1, &qword_15B40, &qword_9250);
}

char *sub_205C(uint64_t a1)
{
  *&v1[OBJC_IVAR___SendLaterRootViewController_presentationViewController] = 0;
  *&v1[OBJC_IVAR___SendLaterRootViewController_sendDelegate] = 0;
  *&v1[OBJC_IVAR___SendLaterRootViewController_balloonPlugin] = 0;
  *&v1[OBJC_IVAR___SendLaterRootViewController_balloonPluginDataSource] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_isiMessage] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_wantsDarkUI] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_wantsOpaqueUI] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_supportsQuickView] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_shouldSuppressEntryView] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_isPrimaryViewController] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_isDismissing] = 0;
  v1[OBJC_IVAR___SendLaterRootViewController_mayBeKeptInViewHierarchy] = 1;
  *&v1[OBJC_IVAR___SendLaterRootViewController_context] = 0;
  *&v1[OBJC_IVAR___SendLaterRootViewController_timePickerViewModel] = 0;
  *&v1[OBJC_IVAR___SendLaterRootViewController_cancellables] = &_swiftEmptySetSingleton;
  v1[OBJC_IVAR___SendLaterRootViewController_shouldShowChatChrome] = 1;
  v1[OBJC_IVAR___SendLaterRootViewController_inExpandedPresentation] = 1;
  v1[OBJC_IVAR___SendLaterRootViewController_inFullScreenModalPresentation] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SendLaterRootViewController();
  v3 = objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
  v4 = *&v3[OBJC_IVAR___SendLaterRootViewController_balloonPlugin];
  *&v3[OBJC_IVAR___SendLaterRootViewController_balloonPlugin] = a1;

  return v3;
}

void sub_220C()
{
  v1 = v0;
  v2 = sub_3E00(&qword_15B80, &qword_90D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v82 = &v80 - v5;
  v6 = sub_3E00(&qword_15B30, &qword_9068);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v80 - v8;
  v10 = sub_7E00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v80 - v16;
  v18 = type metadata accessor for SendLaterRootViewController();
  v83.receiver = v0;
  v83.super_class = v18;
  objc_msgSendSuper2(&v83, "viewDidLoad");
  v19 = OBJC_IVAR___SendLaterRootViewController_context;
  v20 = *&v0[OBJC_IVAR___SendLaterRootViewController_context];
  if (v20)
  {
    goto LABEL_7;
  }

  v81 = v3;
  if (qword_15940 != -1)
  {
    swift_once();
  }

  v21 = sub_7EA0();
  sub_3F18(v21, qword_15E10);
  v22 = sub_7E80();
  v23 = sub_8020();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v80 = v2;
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "Did not have a plugin context for tracking the selected date. We'll set the current date on the view model as a fallback, but this is programmer error!", v24, 2u);
    v2 = v80;
  }

  v20 = *&v1[v19];
  v3 = v81;
  if (v20)
  {
LABEL_7:
    v25 = [v20 selectedDate];
    sub_7DD0();

    v26 = *(v11 + 32);
    v26(v9, v15, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
    v26(v17, v9, v10);
  }

  else
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    sub_7DF0();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      sub_3EB8(v9, &qword_15B30, &qword_9068);
    }
  }

  v27 = type metadata accessor for TimePickerViewModel();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = sub_53F8(v17);
  swift_beginAccess();
  sub_3E00(&qword_15B88, &qword_90E0);
  v31 = v82;
  sub_7EE0();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_4730(&qword_15B90, &qword_15B80, &qword_90D8);
  sub_7F20();

  (*(v3 + 8))(v31, v2);
  swift_beginAccess();
  sub_7EB0();
  swift_endAccess();

  v32 = *&v1[OBJC_IVAR___SendLaterRootViewController_timePickerViewModel];
  *&v1[OBJC_IVAR___SendLaterRootViewController_timePickerViewModel] = v30;

  v33 = objc_allocWithZone(type metadata accessor for TimePickerView());

  v35 = sub_6258(v34);
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 clearColor];
  [v37 setBackgroundColor:v38];

  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = [v1 view];
  if (!v39)
  {
    __break(1u);
    goto LABEL_23;
  }

  v40 = v39;
  [v39 addSubview:v37];

  v41 = [objc_opt_self() sharedFeatureFlags];
  v42 = [v41 isEntryViewRefreshEnabled];

  v43 = [v1 view];
  v44 = v43;
  if (v42)
  {
    if (!v43)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v45 = &selRef_clearColor;
LABEL_14:
    v46 = [v36 *v45];
    [v44 setBackgroundColor:v46];

    v47 = [v1 view];
    if (v47)
    {
      v48 = v47;
      [v47 bounds];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

      [v37 setFrame:{v50, v52, v54, v56}];
      sub_3E00(&qword_15B98, qword_90E8);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_9000;
      v58 = [v37 leadingAnchor];
      v59 = [v1 view];
      if (v59)
      {
        v60 = v59;
        v61 = [v59 leadingAnchor];

        v62 = [v58 constraintEqualToAnchor:v61 constant:0.0];
        *(v57 + 32) = v62;
        v63 = [v37 trailingAnchor];
        v64 = [v1 view];
        if (v64)
        {
          v65 = v64;
          v66 = [v64 trailingAnchor];

          v67 = [v63 constraintEqualToAnchor:v66 constant:-0.0];
          *(v57 + 40) = v67;
          v68 = [v37 topAnchor];
          v69 = [v1 view];
          if (v69)
          {
            v70 = v69;
            v71 = [v69 topAnchor];

            v72 = [v68 constraintEqualToAnchor:v71 constant:0.0];
            *(v57 + 48) = v72;
            v73 = [v37 bottomAnchor];

            v74 = [v1 view];
            if (v74)
            {
              v75 = v74;
              v76 = objc_opt_self();
              v77 = [v75 bottomAnchor];

              v78 = [v73 constraintEqualToAnchor:v77 constant:-0.0];
              *(v57 + 56) = v78;
              sub_4778(0, &unk_15BA0, NSLayoutConstraint_ptr);
              isa = sub_7FF0().super.isa;

              [v76 activateConstraints:isa];

              return;
            }

            goto LABEL_27;
          }

LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v43)
  {
    v45 = &selRef_systemGray4Color;
    goto LABEL_14;
  }

LABEL_29:
  __break(1u);
}

void sub_2B70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR___SendLaterRootViewController_context);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      isa = sub_7DC0().super.isa;
      [v3 setSelectedDate:isa];
    }
  }
}

void sub_2C50()
{
  v1 = sub_7F30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7F50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SendLaterRootViewController();
  v72.receiver = v0;
  v72.super_class = v11;
  objc_msgSendSuper2(&v72, "viewDidLayoutSubviews");
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v12;
  v14 = [v12 window];

  if (!v14)
  {
    v14 = [objc_opt_self() mainScreen];
  }

  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [v0 view];
  if (!v23)
  {
    goto LABEL_21;
  }

  v24 = v23;
  [v23 frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v74.origin.x = v26;
  v74.origin.y = v28;
  v74.size.width = v30;
  v74.size.height = v32;
  Height = CGRectGetHeight(v74);
  v75.origin.x = v16;
  v75.origin.y = v18;
  v75.size.width = v20;
  v75.size.height = v22;
  if (CGRectGetHeight(v75) * 0.5 >= Height)
  {
    return;
  }

  if (qword_15940 != -1)
  {
    swift_once();
  }

  v34 = sub_7EA0();
  sub_3F18(v34, qword_15E10);
  v35 = v0;
  v36 = sub_7E80();
  v37 = sub_8030();

  v38 = os_log_type_enabled(v36, v37);
  v63 = v6;
  v64 = v2;
  v62 = v7;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock = v40;
    *v39 = 136315138;
    v41 = [v35 sheetPresentationController];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 detents];

      sub_4778(0, &qword_15B70, UISheetPresentationControllerDetent_ptr);
      v44 = sub_8000();
    }

    else
    {
      v44 = 0;
    }

    v71 = v44;
    sub_3E00(&qword_15B48, &qword_90C0);
    v45 = sub_7FB0();
    v47 = sub_409C(v45, v46, &aBlock);

    *(v39 + 4) = v47;
    _os_log_impl(&dword_0, v36, v37, "Detected full-screen presentation of time picker. Dismissing. Detents: %s", v39, 0xCu);
    sub_4644(v40);
  }

  else
  {
  }

  v48 = [objc_opt_self() sharedInstance];
  if (!v48)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v49 = v48;
  v50 = sub_7F90();
  v51 = sub_7F90();
  aBlock = 0x3A73746E65746544;
  v66 = 0xE900000000000020;
  v52 = [v35 sheetPresentationController];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 detents];

    sub_4778(0, &qword_15B70, UISheetPresentationControllerDetent_ptr);
    v55 = sub_8000();
  }

  else
  {
    v55 = 0;
  }

  v71 = v55;
  sub_3E00(&qword_15B48, &qword_90C0);
  v73._countAndFlagsBits = sub_7FC0();
  sub_7FD0(v73);

  v56 = sub_7F90();

  [v49 forceAutoBugCaptureWithSubType:v50 errorPayload:0 type:v51 context:v56];

  sub_4778(0, &qword_15B50, OS_dispatch_queue_ptr);
  v57 = sub_8050();
  v58 = swift_allocObject();
  *(v58 + 16) = v35;
  v69 = sub_3FEC;
  v70 = v58;
  aBlock = _NSConcreteStackBlock;
  v66 = 1107296256;
  v67 = sub_34CC;
  v68 = &unk_10728;
  v59 = _Block_copy(&aBlock);
  v60 = v35;

  sub_7F40();
  aBlock = &_swiftEmptyArrayStorage;
  sub_400C(&qword_15B58, &type metadata accessor for DispatchWorkItemFlags);
  sub_3E00(&qword_15B60, &qword_90C8);
  sub_4730(&qword_15B68, &qword_15B60, &qword_90C8);
  sub_80A0();
  sub_8060();
  _Block_release(v59);

  (*(v64 + 8))(v5, v1);
  (*(v62 + 8))(v10, v63);
}

id sub_33C4(uint64_t a1)
{
  if (qword_15940 != -1)
  {
    swift_once();
  }

  v2 = sub_7EA0();
  sub_3F18(v2, qword_15E10);
  v3 = sub_7E80();
  v4 = sub_8040();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Dismissing programmatically due to a full-screen presentation.", v5, 2u);
  }

  result = *(a1 + OBJC_IVAR___SendLaterRootViewController_sendDelegate);
  if (result)
  {

    return [result dismiss];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_34CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_3578(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v12.receiver = a1;
  v12.super_class = type metadata accessor for SendLaterRootViewController();
  v8 = *a4;
  v9 = v12.receiver;
  objc_msgSendSuper2(&v12, v8, a3);
  v10 = *&v9[OBJC_IVAR___SendLaterRootViewController_context];
  if (v10)
  {
    v11 = v10;
    [v11 setShowingDatePicker:{a5 & 1, v12.receiver, v12.super_class}];
  }
}

uint64_t sub_36A0(void *a1)
{
  v47 = sub_7E00();
  v49 = *(v47 - 8);
  v3 = *(v49 + 64);
  v4 = __chkstk_darwin(v47);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v46 = &v42 - v6;
  v7 = sub_3E00(&qword_15B28, &qword_9060);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = sub_3E00(&qword_15B30, &qword_9068);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v42 - v17;
  result = __chkstk_darwin(v16);
  v21 = &v42 - v20;
  v22 = *(v1 + OBJC_IVAR___SendLaterRootViewController_context);
  v48 = a1;
  if (v22)
  {
    v23 = v22 == a1;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v43 = OBJC_IVAR___SendLaterRootViewController_timePickerViewModel;
    v44 = v1;
    if (*(v1 + OBJC_IVAR___SendLaterRootViewController_timePickerViewModel))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_7EF0();

      v24 = v49;
      v25 = *(v49 + 56);
      v26 = v21;
      v27 = 0;
    }

    else
    {
      v24 = v49;
      v25 = *(v49 + 56);
      v26 = &v42 - v20;
      v27 = 1;
    }

    v28 = v47;
    v25(v26, v27, 1, v47);
    v29 = [v48 selectedDate];
    sub_7DD0();

    v25(v18, 0, 1, v28);
    v30 = *(v7 + 48);
    sub_3E50(v21, v10, &qword_15B30, &qword_9068);
    sub_3E50(v18, &v10[v30], &qword_15B30, &qword_9068);
    v31 = *(v24 + 48);
    if (v31(v10, 1, v28) == 1)
    {
      sub_3EB8(v18, &qword_15B30, &qword_9068);
      sub_3EB8(v21, &qword_15B30, &qword_9068);
      if (v31(&v10[v30], 1, v28) == 1)
      {
        return sub_3EB8(v10, &qword_15B30, &qword_9068);
      }
    }

    else
    {
      sub_3E50(v10, v15, &qword_15B30, &qword_9068);
      if (v31(&v10[v30], 1, v28) != 1)
      {
        v38 = v49;
        v39 = v46;
        (*(v49 + 32))(v46, &v10[v30], v28);
        sub_400C(&qword_15B38, &type metadata accessor for Date);
        v40 = sub_7F80();
        v41 = *(v38 + 8);
        v41(v39, v28);
        sub_3EB8(v18, &qword_15B30, &qword_9068);
        sub_3EB8(v21, &qword_15B30, &qword_9068);
        v41(v15, v28);
        result = sub_3EB8(v10, &qword_15B30, &qword_9068);
        v32 = v44;
        if (v40)
        {
          return result;
        }

        goto LABEL_15;
      }

      sub_3EB8(v18, &qword_15B30, &qword_9068);
      sub_3EB8(v21, &qword_15B30, &qword_9068);
      (*(v49 + 8))(v15, v28);
    }

    result = sub_3EB8(v10, &qword_15B28, &qword_9060);
    v32 = v44;
LABEL_15:
    if (*(v32 + v43))
    {
      v33 = *(v32 + v43);

      v34 = [v48 selectedDate];
      v35 = v46;
      sub_7DD0();

      swift_getKeyPath();
      swift_getKeyPath();
      v36 = v49;
      v37 = v47;
      (*(v49 + 16))(v45, v35, v47);
      sub_7F00();
      return (*(v36 + 8))(v35, v37);
    }
  }

  return result;
}

id sub_3D0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendLaterRootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_3E00(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3E50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3E00(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_3EB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3E00(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_3F18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_3F50(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_3FB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_400C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4054(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_409C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4168(v11, 0, 0, 1, a1, a2);
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
    sub_4690(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4644(v11);
  return v7;
}

unint64_t sub_4168(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_4274(a5, a6);
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
    result = sub_80D0();
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

char *sub_4274(uint64_t a1, unint64_t a2)
{
  v4 = sub_42C0(a1, a2);
  sub_43F0(&off_106D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_42C0(uint64_t a1, unint64_t a2)
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

  v6 = sub_44DC(v5, 0);
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

  result = sub_80D0();
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
        v10 = sub_7FE0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_44DC(v10, 0);
        result = sub_80C0();
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

uint64_t sub_43F0(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_4550(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_44DC(uint64_t a1, uint64_t a2)
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

  sub_3E00(&qword_15B78, &qword_90D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_4550(char *result, int64_t a2, char a3, char *a4)
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
    sub_3E00(&qword_15B78, &qword_90D0);
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

uint64_t sub_4644(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_4690(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_46F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_4730(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_4054(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4778(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_47C0()
{
  *(v0 + OBJC_IVAR___SendLaterRootViewController_presentationViewController) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_sendDelegate) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_balloonPlugin) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_balloonPluginDataSource) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_isiMessage) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_wantsDarkUI) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_wantsOpaqueUI) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_supportsQuickView) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_shouldSuppressEntryView) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_isPrimaryViewController) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_isDismissing) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_mayBeKeptInViewHierarchy) = 1;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_context) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_timePickerViewModel) = 0;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_cancellables) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_shouldShowChatChrome) = 1;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_inExpandedPresentation) = 1;
  *(v0 + OBJC_IVAR___SendLaterRootViewController_inFullScreenModalPresentation) = 0;
  sub_80E0();
  __break(1u);
}

uint64_t sub_4900()
{
  v0 = sub_7EA0();
  sub_3F50(v0, qword_15E28);
  sub_3F18(v0, qword_15E28);
  return sub_7E90();
}

uint64_t sub_49A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_7EF0();
}

uint64_t sub_4A18@<X0>(char *a1@<X8>)
{
  v2 = sub_3E00(&qword_15DD8, &unk_9240);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v23 - v7;
  v9 = sub_7E00();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  sub_4CAC(&v23 - v15);
  sub_4FF4(v14);
  sub_7D58(&qword_15DE0, &type metadata accessor for Date);
  result = sub_7F70();
  if (result)
  {
    v18 = v10[4];
    v18(v8, v16, v9);
    v18(&v8[*(v2 + 48)], v14, v9);
    sub_3E50(v8, v6, &qword_15DD8, &unk_9240);
    v19 = *(v2 + 48);
    v18(a1, v6, v9);
    v20 = v10[1];
    v20(&v6[v19], v9);
    sub_79C8(v8, v6);
    v21 = *(v2 + 48);
    v22 = sub_3E00(&unk_15C70, "6'");
    v18(&a1[*(v22 + 36)], &v6[v21], v9);
    return (v20)(v6, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4CAC@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v27 = sub_7E00();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7E50();
  v25 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_7E70();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v26);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_3E00(&qword_15B30, &qword_9068);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  sub_7E40();
  (*(v6 + 104))(v9, enum case for Calendar.Component.minute(_:), v5);
  v18 = sub_7F90();
  v19 = sub_7F90();
  IMGetCachedDomainIntForKeyWithDefaultValue();

  sub_7DE0();
  sub_7E30();
  v20 = *(v1 + 8);
  v21 = v4;
  v22 = v27;
  v20(v21, v27);
  (*(v6 + 8))(v9, v25);
  (*(v10 + 8))(v13, v26);
  result = (*(v1 + 48))(v17, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_70A8(v24);
    return (v20)(v17, v22);
  }

  return result;
}

uint64_t sub_4FF4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v30 = sub_7E00();
  v1 = *(v30 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v30);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_7E50();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v29);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_7E70();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v28);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3E00(&qword_15B30, &qword_9068);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v26 - v15;
  v17 = [objc_opt_self() sharedInstanceForBagType:1];
  v18 = sub_7F90();
  v19 = [v17 objectForKey:v18];

  if (v19)
  {
    sub_8090();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  if (*(&v33 + 1))
  {
    sub_4778(0, &qword_15DE8, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v20 = v31;
      [v31 integerValue];
    }
  }

  else
  {
    sub_3EB8(v34, &qword_15B40, &qword_9250);
  }

  sub_7E40();
  v21 = v29;
  (*(v5 + 104))(v8, enum case for Calendar.Component.day(_:), v29);
  sub_7DE0();
  sub_7E30();
  v22 = *(v1 + 8);
  v23 = v4;
  v24 = v30;
  v22(v23, v30);
  (*(v5 + 8))(v8, v21);
  (*(v9 + 8))(v12, v28);
  result = (*(v1 + 48))(v16, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_70A8(v27);
    return (v22)(v16, v24);
  }

  return result;
}

uint64_t sub_53F8(char *a1)
{
  v57 = a1;
  v56 = sub_7E50();
  v54 = *(v56 - 8);
  v1 = *(v54 + 64);
  __chkstk_darwin(v56);
  v52 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_7E70();
  v53 = *(v55 - 8);
  v3 = *(v53 + 64);
  __chkstk_darwin(v55);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_7E00();
  v5 = *(v48 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v48);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v46 - v9;
  v47 = sub_3E00(&qword_15DC0, &qword_9228);
  v11 = *(v47 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v47);
  v14 = &v46 - v13;
  v15 = sub_3E00(&unk_15C70, "6'");
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v46 - v20;
  v22 = OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel__dateClosedRange;
  type metadata accessor for TimePickerViewModel();
  sub_4A18(v21);
  sub_3E50(v21, v19, &unk_15C70, "6'");
  sub_7ED0();
  v23 = v21;
  v24 = v48;
  sub_3EB8(v23, &unk_15C70, "6'");
  v25 = v50;
  (*(v11 + 32))(v50 + v22, v14, v47);
  v26 = v25;
  v46 = OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel_dateRangeUpdateTimer;
  *(v25 + OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel_dateRangeUpdateTimer) = 0;
  v27 = v5[2];
  v27(v10, v57, v24);
  swift_beginAccess();
  v28 = v49;
  v27(v49, v10, v24);
  v29 = v28;
  sub_7ED0();
  v30 = v5[1];
  v47 = (v5 + 1);
  v30(v10, v24);
  swift_endAccess();
  sub_7DF0();
  v31 = v51;
  sub_7E40();
  v32 = v54;
  v33 = v52;
  v34 = v56;
  (*(v54 + 104))(v52, enum case for Calendar.Component.second(_:), v56);
  v35 = v10;
  v36 = v31;
  v37 = sub_7E60();
  (*(v32 + 8))(v33, v34);
  result = (*(v53 + 8))(v36, v55);
  if (__OFSUB__(60, v37))
  {
    __break(1u);
  }

  else
  {
    sub_7DB0();
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = objc_allocWithZone(NSTimer);

    isa = sub_7DC0().super.isa;
    aBlock[4] = sub_79A8;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_7690;
    aBlock[3] = &unk_107C8;
    v42 = _Block_copy(aBlock);
    v43 = [v40 initWithFireDate:isa interval:1 repeats:v42 block:60.0];
    _Block_release(v42);

    v44 = [objc_opt_self() mainRunLoop];
    [v44 addTimer:v43 forMode:NSDefaultRunLoopMode];

    v30(v57, v24);
    v30(v29, v24);
    v30(v35, v24);
    v45 = *(v26 + v46);
    *(v26 + v46) = v43;

    return v26;
  }

  return result;
}

uint64_t sub_5A38()
{
  v0 = sub_3E00(&unk_15C70, "6'");
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v23 - v9;
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  type metadata accessor for TimePickerViewModel();
  sub_4A18(v12);
  if (qword_15948 != -1)
  {
    swift_once();
  }

  v13 = sub_7EA0();
  sub_3F18(v13, qword_15E28);
  sub_3E50(v12, v10, &unk_15C70, "6'");
  v14 = sub_7E80();
  v15 = sub_8010();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;
    v18 = sub_5D88();
    v23 = v12;
    v20 = v19;
    sub_3EB8(v10, &unk_15C70, "6'");
    v21 = sub_409C(v18, v20, &v24);
    v12 = v23;

    *(v16 + 4) = v21;
    _os_log_impl(&dword_0, v14, v15, "Update timer fired. Updating dateClosedRange to %s", v16, 0xCu);
    sub_4644(v17);
  }

  else
  {

    sub_3EB8(v10, &unk_15C70, "6'");
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_3E50(v12, v7, &unk_15C70, "6'");
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3E50(v7, v4, &unk_15C70, "6'");
    sub_7F00();
    sub_3EB8(v7, &unk_15C70, "6'");
  }

  return sub_3EB8(v12, &unk_15C70, "6'");
}

uint64_t sub_5D88()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  [v0 setTimeStyle:2];
  [v0 setDateStyle:1];
  isa = sub_7DC0().super.isa;
  v2 = [v0 stringFromDate:isa];

  v3 = sub_7FA0();
  v11 = v3;
  v12._countAndFlagsBits = 3026478;
  v12._object = 0xE300000000000000;
  sub_7FD0(v12);
  LODWORD(v3) = *(sub_3E00(&unk_15C70, "6'") + 36);
  v4 = [objc_allocWithZone(NSDateFormatter) init];
  [v4 setTimeStyle:2];
  [v4 setDateStyle:1];
  v5 = sub_7DC0().super.isa;
  v6 = [v4 stringFromDate:v5];

  v7 = sub_7FA0();
  v9 = v8;

  v13._countAndFlagsBits = v7;
  v13._object = v9;
  sub_7FD0(v13);

  return v11;
}

uint64_t sub_5F14()
{
  v1 = OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel_dateRangeUpdateTimer;
  v2 = *(v0 + OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel_dateRangeUpdateTimer);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel__date;
  v4 = sub_3E00(&qword_15B88, &qword_90E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17SendLaterProvider19TimePickerViewModel__dateClosedRange;
  v6 = sub_3E00(&qword_15DC0, &qword_9228);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimePickerViewModel()
{
  result = qword_15C50;
  if (!qword_15C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6088()
{
  sub_615C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_61B4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_615C()
{
  if (!qword_15C60)
  {
    sub_7E00();
    v0 = sub_7F10();
    if (!v1)
    {
      atomic_store(v0, &qword_15C60);
    }
  }
}

void sub_61B4()
{
  if (!qword_15C68)
  {
    sub_4054(&unk_15C70, "6'");
    v0 = sub_7F10();
    if (!v1)
    {
      atomic_store(v0, &qword_15C68);
    }
  }
}

uint64_t sub_6218@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TimePickerViewModel();
  result = sub_7EC0();
  *a1 = result;
  return result;
}

char *sub_6258(uint64_t a1)
{
  v3 = sub_3E00(&qword_15DC8, &unk_9230);
  v4 = *(v3 - 8);
  v74 = v3;
  v75 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v73 = &v64 - v6;
  v76 = sub_7E00();
  v7 = *(v76 - 8);
  v8 = v7[8];
  __chkstk_darwin(v76);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3E00(&unk_15C70, "6'");
  v12 = *(v11 - 8);
  v70 = v11 - 8;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v64 - v14;
  *&v1[OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_cancellables] = &_swiftEmptySetSingleton;
  v72 = a1;
  *&v1[OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_model] = a1;
  v16 = objc_allocWithZone(UIDatePicker);

  v17 = [v16 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker] = v17;
  v18 = type metadata accessor for TimePickerView();
  v77.receiver = v1;
  v77.super_class = v18;
  v19 = objc_msgSendSuper2(&v77, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = *&v19[OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker];
  v21 = OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker;
  v67 = OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker;
  v69 = OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_model;
  v22 = *&v19[OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_model];
  swift_getKeyPath();
  swift_getKeyPath();
  v71 = v19;
  v23 = v20;

  sub_7EF0();

  v68 = v7[2];
  v24 = v76;
  v68(v10, v15, v76);
  sub_3EB8(v15, &unk_15C70, "6'");
  isa = sub_7DC0().super.isa;
  v26 = v7 + 1;
  v27 = v7[1];
  v66 = v26;
  v27(v10, v24);
  v65 = v27;
  [v23 setMinimumDate:isa];

  v28 = *&v19[v21];
  v29 = v69;
  v30 = *&v19[v69];
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v28;

  sub_7EF0();

  v32 = v76;
  v68(v10, &v15[*(v70 + 44)], v76);
  sub_3EB8(v15, &unk_15C70, "6'");
  v33 = sub_7DC0().super.isa;
  v27(v10, v32);
  [v31 setMaximumDate:v33];

  v34 = v67;
  v35 = *&v19[v67];
  v36 = *&v19[v29];
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v35;

  sub_7EF0();

  v38 = sub_7DC0().super.isa;
  v65(v10, v76);
  [v37 setDate:v38];

  [*&v19[v34] setDatePickerMode:2];
  [*&v19[v34] setPreferredDatePickerStyle:1];
  v39 = v71;
  [*&v19[v34] addTarget:v71 action:"dateChanged:" forControlEvents:4096];
  v40 = *&v19[v34];
  [v40 addTarget:v39 action:"disableKeypad:" forControlEvents:0x10000];

  v41 = *&v19[v34];
  v42 = v39;
  [v42 addSubview:v41];
  [*&v19[v34] setTranslatesAutoresizingMaskIntoConstraints:0];
  v43 = objc_opt_self();
  sub_3E00(&qword_15B98, qword_90E8);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_9000;
  v45 = [*&v19[v34] leadingAnchor];
  v46 = [v42 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v44 + 32) = v47;
  v48 = [*&v19[v34] trailingAnchor];
  v49 = [v42 trailingAnchor];

  v50 = [v48 constraintEqualToAnchor:v49];
  *(v44 + 40) = v50;
  v51 = [*&v19[v34] topAnchor];
  v52 = [v42 topAnchor];

  v53 = [v51 constraintEqualToAnchor:v52];
  *(v44 + 48) = v53;
  v54 = [*&v19[v34] bottomAnchor];
  v55 = [v42 bottomAnchor];

  v56 = [v54 constraintEqualToAnchor:v55];
  *(v44 + 56) = v56;
  sub_4778(0, &unk_15BA0, NSLayoutConstraint_ptr);
  v57 = sub_7FF0().super.isa;

  [v43 activateConstraints:v57];

  v58 = objc_opt_self();
  v59 = v42;
  v60 = [v58 clearColor];
  [v59 setBackgroundColor:v60];

  swift_beginAccess();
  sub_3E00(&qword_15DC0, &qword_9228);
  v61 = v73;
  sub_7EE0();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_790C();
  v62 = v74;
  sub_7F20();

  (*(v75 + 8))(v61, v62);
  swift_beginAccess();
  sub_7EB0();
  swift_endAccess();

  return v59;
}

void sub_6B30(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker);

    isa = sub_7DC0().super.isa;
    [v4 setMinimumDate:isa];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker);

    v9 = a1 + *(sub_3E00(&unk_15C70, "6'") + 36);
    v10 = sub_7DC0().super.isa;
    [v8 setMaximumDate:v10];
  }
}

void sub_6D18(void *a1)
{
  v2 = v1;
  v4 = sub_7E00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  sub_4778(0, &qword_15DB8, NSObject_ptr);
  v12 = *(v1 + OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_datePicker);
  v13 = sub_8080();

  if (v13)
  {
    v14 = *(v2 + OBJC_IVAR____TtC17SendLaterProvider14TimePickerView_model);

    v15 = [a1 date];
    sub_7DD0();

    swift_getKeyPath();
    swift_getKeyPath();
    (*(v5 + 16))(v9, v11, v4);
    sub_7F00();
    (*(v5 + 8))(v11, v4);
  }
}

id sub_6FE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimePickerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_70A8@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_3E00(&qword_15B30, &qword_9068);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v29 = &v28 - v3;
  v4 = sub_7DA0();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7E70();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7E40();
  sub_3E00(&qword_15DF0, &qword_9258);
  v12 = sub_7E50();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = 4 * v14;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_9100;
  v18 = v17 + v15;
  v19 = *(v13 + 104);
  v19(v18, enum case for Calendar.Component.year(_:), v12);
  v19(v18 + v14, enum case for Calendar.Component.month(_:), v12);
  v19(v18 + 2 * v14, enum case for Calendar.Component.day(_:), v12);
  v20 = 3 * v14;
  v21 = v30;
  v19(v18 + v20, enum case for Calendar.Component.hour(_:), v12);
  v22 = v18 + v16;
  v23 = v29;
  v19(v22, enum case for Calendar.Component.minute(_:), v12);
  sub_7A38(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_7E10();

  sub_7E20();
  (*(v33 + 8))(v7, v34);
  (*(v31 + 8))(v11, v32);
  v24 = sub_7E00();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v23, 1, v24) != 1)
  {
    return (*(v25 + 32))(v35, v23, v24);
  }

  (*(v25 + 16))(v35, v21, v24);
  result = (v26)(v23, 1, v24);
  if (result != 1)
  {
    return sub_3EB8(v23, &qword_15B30, &qword_9068);
  }

  return result;
}

uint64_t sub_751C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_7E00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  sub_7F00();
  return (*(v5 + 8))(v11, v4);
}

void sub_7690(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_76F8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_7EF0();
}

uint64_t sub_7798(uint64_t a1, uint64_t *a2)
{
  v4 = sub_3E00(&unk_15C70, "6'");
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  sub_3E50(a1, &v13 - v9, &unk_15C70, "6'");
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E50(v10, v8, &unk_15C70, "6'");

  sub_7F00();
  return sub_3EB8(v10, &unk_15C70, "6'");
}

uint64_t sub_78CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_790C()
{
  result = qword_15DD0;
  if (!qword_15DD0)
  {
    sub_4054(&qword_15DC8, &unk_9230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15DD0);
  }

  return result;
}

uint64_t sub_7970()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_79B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_79C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3E00(&qword_15DD8, &unk_9240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_7A38(uint64_t a1)
{
  v2 = sub_7E50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_3E00(&qword_15DF8, &qword_9260);
    v10 = sub_80B0();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_7D58(&qword_15E00, &type metadata accessor for Calendar.Component);
      v18 = sub_7F60();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_7D58(&qword_15E08, &type metadata accessor for Calendar.Component);
          v25 = sub_7F80();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_7D58(unint64_t *a1, void (*a2)(uint64_t))
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