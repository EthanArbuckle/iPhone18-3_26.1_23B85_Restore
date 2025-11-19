id LALogHandleForCategory(uint64_t a1)
{
  if (qword_100025B28 != -1)
  {
    sub_1000171FC();
  }

  v2 = qword_100025B20[a1];

  return v2;
}

void sub_10000219C(id a1)
{
  qword_100025B20 = os_log_create("com.apple.AppDistributionLaunchAngel", "LaunchAngel");

  _objc_release_x1();
}

id sub_10000266C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100025B48;
  v7 = qword_100025B48;
  if (!qword_100025B48)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100002E64;
    v3[3] = &unk_100021038;
    v3[4] = &v4;
    sub_100002E64(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100002734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000274C()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = qword_100025B50;
  v8 = qword_100025B50;
  if (!qword_100025B50)
  {
    v1 = sub_100002C98();
    v6[3] = dlsym(v1, "ASCLockupKindApp");
    qword_100025B50 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = sub_100017210();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

Class sub_100002C40(uint64_t a1)
{
  sub_100002C98();
  result = objc_getClass("ASCMiniProductPageView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000173B8();
  }

  qword_100025B30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002C98()
{
  v3[0] = 0;
  if (!qword_100025B38)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100002D98;
    v3[4] = &unk_100021070;
    v3[5] = v3;
    v4 = off_100021058;
    v5 = 0;
    qword_100025B38 = _sl_dlopen();
  }

  v0 = qword_100025B38;
  v1 = v3[0];
  if (!qword_100025B38)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100002D98(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100025B38 = result;
  return result;
}

Class sub_100002E0C(uint64_t a1)
{
  sub_100002C98();
  result = objc_getClass("ASCAdamID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000173E0();
  }

  qword_100025B40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100002E64(uint64_t a1)
{
  sub_100002C98();
  result = objc_getClass("ASCLockupRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100017408();
  }

  qword_100025B48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100002EBC(uint64_t a1)
{
  v2 = sub_100002C98();
  result = dlsym(v2, "ASCLockupKindApp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100025B50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100002F0C(uint64_t a1)
{
  v2 = sub_100002C98();
  result = dlsym(v2, "ASCLockupContextAppStoreInstall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100025B58 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100002F5C(uint64_t a1)
{
  v2 = sub_100002C98();
  result = dlsym(v2, "ASCLockupContextAppDistributionInstall");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100025B60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002FAC()
{
  swift_getObjectType();
  sub_100003360(&qword_1000252E8, &qword_100018E10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100018D50;
  *(v1 + 32) = sub_100017960();
  *(v1 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v2 = sub_100017E40();

  v3 = *(v0 + OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_traitChangeRegistration);
  *(v0 + OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_traitChangeRegistration) = v2;

  return swift_unknownObjectRelease();
}

id sub_100003108()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MiniProductPageView()
{
  result = qword_100025270;
  if (!qword_100025270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003240()
{
  sub_100003308();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100003308()
{
  if (!qword_100025280)
  {
    sub_100017550();
    v0 = sub_100017ED0();
    if (!v1)
    {
      atomic_store(v0, &qword_100025280);
    }
  }
}

uint64_t sub_100003360(uint64_t *a1, uint64_t *a2)
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

id sub_1000033A8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_10000343C(uint64_t a1)
{
  v2 = sub_100003AEC(&qword_100025308, type metadata accessor for LAError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000034A8(uint64_t a1)
{
  v2 = sub_100003AEC(&qword_100025308, type metadata accessor for LAError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003514(void *a1, uint64_t a2)
{
  v4 = sub_100003AEC(&qword_100025308, type metadata accessor for LAError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000035C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003AEC(&qword_100025308, type metadata accessor for LAError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003644()
{
  v2 = *v0;
  sub_100018000();
  sub_100017CF0();
  return sub_100018010();
}

void *sub_1000036A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000036C8(uint64_t a1)
{
  v2 = sub_100003AEC(&qword_100025310, type metadata accessor for LAError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003734(uint64_t a1)
{
  v2 = sub_100003AEC(&qword_100025310, type metadata accessor for LAError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000037A4(uint64_t a1)
{
  v2 = sub_100003AEC(&qword_100025308, type metadata accessor for LAError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003AEC(&qword_100025308, type metadata accessor for LAError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

id sub_100003898(void *a1)
{
  v2 = [a1 layer];
  v3 = objc_allocWithZone(UIColor);
  v8[4] = sub_100017124;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000033A8;
  v8[3] = &unk_1000211D0;
  v4 = _Block_copy(v8);
  v5 = [v3 initWithDynamicProvider:v4];
  _Block_release(v4);

  v6 = [v5 CGColor];

  [v2 setBorderColor:v6];
  return [a1 setNeedsDisplay];
}

uint64_t sub_1000039C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000039E0(uint64_t a1)
{
  v2 = sub_100003360(&qword_1000252F0, &qword_100018E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003AEC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100003B48(uint64_t a1, unint64_t *a2)
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

unint64_t sub_100003D00()
{
  result = qword_100025338;
  if (!qword_100025338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025338);
  }

  return result;
}

id sub_100003DEC(void *a1, void *a2)
{
  v3 = v2;
  v79 = a2;
  v5 = sub_1000176E0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v75 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v74 = v72 - v11;
  v12 = __chkstk_darwin(v10);
  v76 = v72 - v13;
  __chkstk_darwin(v12);
  v77 = v72 - v14;
  v15 = sub_100003360(&qword_100025558, &qword_100019240);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v72 - v17;
  v19 = sub_1000175C0();
  v81 = *(v19 - 8);
  v82 = v19;
  v20 = *(v81 + 64);
  __chkstk_darwin(v19);
  v80 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = &v3[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction];
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_primaryButton;
  *&v3[v23] = [objc_opt_self() boldButton];
  v24 = OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_secondaryButton;
  *&v3[v24] = [objc_opt_self() linkButton];
  v25 = OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_isIPad;
  v26 = [objc_opt_self() currentDevice];
  v27 = [v26 userInterfaceIdiom];

  v3[v25] = v27 == 1;
  v28 = OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_context;
  v29 = v6[2];
  v30 = v5;
  (v29)(&v3[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_context], a1, v5);
  v31 = v79;
  *&v3[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_customBodyView] = v79;
  v32 = v31;
  v33 = v81;
  v78 = v32;
  v79 = a1;
  sub_100017670();
  v34 = v82;
  if ((*(v33 + 48))(v18, 1, v82) == 1)
  {
    sub_10000C4D4(v18, &qword_100025558, &qword_100019240);
    v35 = v77;
    (v29)(v77, &v3[v28], v30);
    sub_1000176A0();
    v36 = v6[1];
    v36(v35, v30);
    v82 = sub_100017D00();

    v37 = v76;
    (v29)(v76, &v3[v28], v30);
    sub_1000176D0();
    v39 = v38;
    v36(v37, v30);
    if (v39)
    {
      v40 = sub_100017D00();
    }

    else
    {
      v40 = 0;
    }

    v63 = type metadata accessor for ConfirmationSheetViewController();
    v85.receiver = v3;
    v85.super_class = v63;
    v64 = v82;
    v65 = objc_msgSendSuper2(&v85, "initWithTitle:detailText:symbolName:contentLayout:", v82, v40, 0, 3);

    v36(v79, v30);
  }

  else
  {
    v72[1] = v6 + 2;
    v73 = v6;
    v41 = v28;
    v76 = v29;
    v72[0] = v30;
    (*(v33 + 32))(v80, v18, v34);
    v42 = sub_1000175B0();
    if (v42 == 2 || (v42 & 1) == 0)
    {
      v57 = v76;
      v56 = v77;
      v49 = v72[0];
      (v76)(v77, &v3[v28], v72[0]);
      sub_1000176A0();
      v58 = *(v73 + 8);
      v73 = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58(v56, v49);
      v51 = sub_100017D00();

      v59 = v75;
      v57(v75, &v3[v28], v49);
      sub_1000176D0();
      v61 = v60;
      v62 = v59;
      v50 = v58;
      v58(v62, v49);
      if (v61)
      {
        v55 = sub_100017D00();
      }

      else
      {
        v55 = 0;
      }

      v66 = v80;
      sub_1000175A0();
      v67 = sub_100017D00();

      v68 = type metadata accessor for ConfirmationSheetViewController();
      v84.receiver = v3;
      v84.super_class = v68;
      v69 = objc_msgSendSuper2(&v84, "initWithTitle:detailText:symbolName:contentLayout:", v51, v55, v67, 3);
      v47 = v78;
    }

    else
    {
      v43 = [objc_opt_self() tintColor];
      v44 = [objc_opt_self() configurationWithHierarchicalColor:v43];

      v45 = v44;
      sub_1000175A0();
      v46 = sub_100017D00();

      v47 = [objc_opt_self() systemImageNamed:v46 withConfiguration:v45];

      v75 = v45;
      v48 = v77;
      v49 = v72[0];
      (v76)(v77, &v3[v41], v72[0]);
      sub_1000176A0();
      v50 = *(v73 + 8);
      v73 = (v73 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v50(v48, v49);
      v51 = sub_100017D00();

      v52 = v74;
      (v76)(v74, &v3[v41], v49);
      sub_1000176D0();
      v54 = v53;
      v50(v52, v49);
      if (v54)
      {
        v55 = sub_100017D00();
      }

      else
      {
        v55 = 0;
      }

      v70 = type metadata accessor for ConfirmationSheetViewController();
      v83.receiver = v3;
      v83.super_class = v70;
      v69 = objc_msgSendSuper2(&v83, "initWithTitle:detailText:icon:contentLayout:", v51, v55, v47, 3);

      v66 = v80;
      v67 = v75;
    }

    v65 = v69;
    v50(v79, v49);
    (*(v81 + 8))(v66, v82);
  }

  return v65;
}

id sub_1000045E8()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:STRestrictionsPINControllerDidFinishNotification object:0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for ConfirmationSheetViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for ConfirmationSheetViewController()
{
  result = qword_100025488;
  if (!qword_100025488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004874()
{
  v1 = v0;
  v2 = (*(*(sub_100003360(&qword_100025548, &unk_100019200) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v107 = &v101 - v3;
  v4 = sub_100017890();
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  __chkstk_darwin();
  v104 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(sub_100003360(&qword_100025528, &qword_1000191E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v101 - v8;
  v10 = sub_100017820();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v106 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v0 navigationItem];
  [v14 setTitle:0];

  [v1 setModalInPresentation:1];
  [v1 setDefinesPresentationContext:1];
  if (v1[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_isIPad])
  {
    v15 = 88.0;
  }

  else
  {
    v15 = 38.0;
  }

  v16 = [v1 contentView];
  [v16 setDirectionalLayoutMargins:{0.0, v15, 0.0, v15}];

  v17 = [v1 headerView];
  v18 = [v17 bottomAnchor];

  v19 = [v1 contentView];
  v20 = [v19 topAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:0.0];
  [v21 setActive:1];

  v22 = [v1 contentView];
  v23 = [v22 topAnchor];

  v110 = OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_context;
  sub_100017650();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000C4D4(v9, &qword_100025528, &qword_1000191E8);
    v24 = &_ASCMiniProductPageViewDelegate__prots;
  }

  else
  {
    v25 = *(v11 + 32);
    v103 = v10;
    v25(v106, v9, v10);
    v26 = sub_10000556C();
    v102 = objc_opt_self();
    sub_100003360(&qword_100025538, &qword_1000191F8);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000190D0;
    v28 = [v26 topAnchor];
    v29 = [v28 constraintEqualToAnchor:v23 constant:4.0];

    *(v27 + 32) = v29;
    v30 = [v26 leadingAnchor];
    v31 = [v1 contentView];
    v32 = [v31 leadingAnchor];
    v105 = v23;
    v33 = v32;

    v34 = [v30 constraintEqualToAnchor:v33 constant:v15];
    *(v27 + 40) = v34;
    v35 = [v26 trailingAnchor];
    v36 = [v1 contentView];
    v37 = [v36 trailingAnchor];

    v38 = [v35 constraintLessThanOrEqualToAnchor:v37 constant:-v15];
    *(v27 + 48) = v38;
    sub_10000C094(0, &qword_100025540, NSLayoutConstraint_ptr);
    isa = sub_100017D60().super.isa;

    [v102 activateConstraints:isa];

    v23 = [v26 bottomAnchor];
    (*(v11 + 8))(v106, v103);
    v24 = &_ASCMiniProductPageViewDelegate__prots;
  }

  v40 = sub_100017630();
  if (v40)
  {
    v41 = &_ASCMiniProductPageViewDelegate__prots;
    if (*(v40 + 16))
    {
      v42 = sub_100005B88(v40);

      v106 = objc_opt_self();
      sub_100003360(&qword_100025538, &qword_1000191F8);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1000190D0;
      v44 = [v42 topAnchor];
      v45 = [v44 constraintEqualToAnchor:v23 constant:16.0];

      *(v43 + 32) = v45;
      v46 = [v42 leadingAnchor];
      v47 = [v1 contentView];
      v48 = v23;
      v49 = [v47 leadingAnchor];

      v50 = [v46 constraintEqualToAnchor:v49 constant:v15];
      *(v43 + 40) = v50;
      v51 = [v42 trailingAnchor];
      v52 = [v1 contentView];
      v53 = [v52 trailingAnchor];

      v24 = &_ASCMiniProductPageViewDelegate__prots;
      v54 = [v51 constraintEqualToAnchor:v53 constant:-v15];

      *(v43 + 48) = v54;
      sub_10000C094(0, &qword_100025540, NSLayoutConstraint_ptr);
      v55 = sub_100017D60().super.isa;

      [v106 activateConstraints:v55];

      v23 = [v42 bottomAnchor];
    }

    else
    {
    }
  }

  else
  {
    v41 = &_ASCMiniProductPageViewDelegate__prots;
  }

  v56 = *&v1[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_customBodyView];
  if (v56)
  {
    v57 = v56;
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = [v1 contentView];
    [v58 addSubview:v57];

    v106 = objc_opt_self();
    sub_100003360(&qword_100025538, &qword_1000191F8);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1000190D0;
    v60 = v57;
    v61 = [v60 v41[312].count];
    v62 = [v61 constraintEqualToAnchor:v23 constant:16.0];

    *(v59 + 32) = v62;
    v63 = [v60 leadingAnchor];
    v64 = [v1 contentView];
    v65 = v23;
    v66 = [v64 leadingAnchor];

    v67 = [v63 constraintEqualToAnchor:v66 constant:v15];
    *(v59 + 40) = v67;
    v68 = [v60 trailingAnchor];
    v24 = &_ASCMiniProductPageViewDelegate__prots;
    v69 = [v1 contentView];
    v70 = [v69 trailingAnchor];

    v71 = [v68 constraintEqualToAnchor:v70 constant:-v15];
    *(v59 + 48) = v71;
    sub_10000C094(0, &qword_100025540, NSLayoutConstraint_ptr);
    v72 = sub_100017D60().super.isa;

    [v106 activateConstraints:v72];

    v23 = [v60 bottomAnchor];
  }

  v73 = v107;
  sub_100017690();
  v74 = v108;
  v75 = v109;
  if ((*(v108 + 48))(v73, 1, v109) == 1)
  {

    return sub_10000C4D4(v73, &qword_100025548, &unk_100019200);
  }

  else
  {
    v77 = v104;
    (*(v74 + 32))(v104, v73, v75);
    v78 = v24;
    v79 = sub_100017870();
    v81 = v80;
    v82 = sub_100017880();
    v105 = v23;
    v83 = v82;
    v85 = v84;
    v86 = sub_100017840();
    v88 = v87;
    v89 = sub_100017850();
    v90 = sub_100006A34(v79, v81, v83, v85, v86, v88, v89 & 1);

    v91 = objc_opt_self();
    sub_100003360(&qword_100025538, &qword_1000191F8);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_1000190E0;
    v93 = [v90 topAnchor];
    v94 = v105;
    v95 = [v93 constraintEqualToAnchor:v105 constant:24.0];

    *(v92 + 32) = v95;
    v96 = [v90 v78[297].count];
    v97 = [v1 contentView];
    v98 = [v97 v78[297].count];

    v99 = [v96 constraintEqualToAnchor:v98];
    *(v92 + 40) = v99;
    sub_10000C094(0, &qword_100025540, NSLayoutConstraint_ptr);
    v100 = sub_100017D60().super.isa;

    [v91 activateConstraints:v100];

    return (*(v108 + 8))(v77, v109);
  }
}

id sub_10000556C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = sub_100017D00();
  v4 = [objc_opt_self() systemImageNamed:v3];

  v5 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  v6 = objc_opt_self();
  v7 = [v6 systemBlueColor];
  [v5 setTintColor:v7];

  v8 = v5;
  [v8 setContentMode:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [objc_allocWithZone(UILabel) init];
  sub_100017810();
  v10 = sub_100017D00();

  [v9 setText:v10];

  v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 setFont:v11];

  v12 = [v6 systemBlueColor];
  [v9 setTextColor:v12];

  v13 = v9;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"moreInformationPressed"];
  [v2 addGestureRecognizer:v41];
  [v2 setUserInteractionEnabled:1];
  [v2 addSubview:v8];
  [v2 addSubview:v13];
  v14 = [v1 contentView];
  [v14 addSubview:v2];

  v40 = objc_opt_self();
  sub_100003360(&qword_100025538, &qword_1000191F8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000190F0;
  v16 = [v8 leadingAnchor];
  v17 = [v2 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v15 + 32) = v18;
  v19 = [v8 centerYAnchor];
  v20 = [v2 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v15 + 40) = v21;
  v22 = [v8 widthAnchor];
  v23 = [v22 constraintEqualToConstant:20.0];

  *(v15 + 48) = v23;
  v24 = [v8 heightAnchor];
  v25 = [v24 constraintEqualToConstant:20.0];

  *(v15 + 56) = v25;
  v26 = [v13 leadingAnchor];
  v27 = [v8 trailingAnchor];

  v28 = [v26 constraintEqualToAnchor:v27 constant:6.0];
  *(v15 + 64) = v28;
  v29 = [v13 centerYAnchor];
  v30 = [v2 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v15 + 72) = v31;
  v32 = [v13 trailingAnchor];
  v33 = [v2 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v15 + 80) = v34;
  v35 = [v2 heightAnchor];
  v36 = [v13 heightAnchor];

  v37 = [v35 constraintEqualToAnchor:v36];
  *(v15 + 88) = v37;
  sub_10000C094(0, &qword_100025540, NSLayoutConstraint_ptr);
  isa = sub_100017D60().super.isa;

  [v40 activateConstraints:isa];

  return v2;
}

id sub_100005B88(uint64_t a1)
{
  v3 = [objc_allocWithZone(UIView) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 contentView];
  [v4 addSubview:v3];

  v5 = *(a1 + 16);
  if (!v5)
  {
    v91 = [v3 heightAnchor];
    v90 = [v91 constraintEqualToConstant:0.0];

    [v90 setActive:1];
    goto LABEL_9;
  }

  v104 = v3;
  v97 = objc_opt_self();
  v96 = objc_opt_self();
  v95 = objc_opt_self();
  v94 = objc_opt_self();
  v103 = objc_opt_self();
  v101 = 0;
  v6 = *(sub_100017750() - 8);
  v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v102 = v5 - 1;
  v93 = *(v6 + 72);
  while (1)
  {
    v105 = [objc_allocWithZone(UIView) init];
    [v105 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [objc_allocWithZone(UIImageView) init];
    v14 = [v97 systemBlueColor];
    v15 = [v96 configurationWithHierarchicalColor:v14];

    sub_100017730();
    v16 = v15;
    v17 = sub_100017D00();

    v18 = [v95 _systemImageNamed:v17 withConfiguration:v16];

    v100 = v16;
    [v13 setImage:v18];

    v106 = v13;
    [v106 setContentMode:1];
    [v106 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [objc_allocWithZone(UIView) init];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [objc_allocWithZone(UILabel) init];
    sub_100017740();
    v21 = sub_100017D00();

    [v20 setText:v21];

    v22 = [v94 preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v20 setFont:v22];

    v23 = [v97 labelColor];
    [v20 setTextColor:v23];

    [v20 setNumberOfLines:0];
    v24 = v20;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [objc_allocWithZone(UILabel) init];
    v98 = v7;
    sub_100017710();
    v26 = sub_100017D00();

    [v25 setText:v26];

    v27 = [v94 preferredFontForTextStyle:UIFontTextStyleBody];
    [v25 setFont:v27];

    v28 = [v97 secondaryLabelColor];
    [v25 setTextColor:v28];

    [v25 setNumberOfLines:0];
    v29 = v25;
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 addSubview:v24];
    [v19 addSubview:v29];
    [v105 addSubview:v106];
    [v105 addSubview:v19];
    [v104 addSubview:v105];
    sub_100003360(&qword_100025538, &qword_1000191F8);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100019100;
    v31 = [v24 topAnchor];
    v32 = [v19 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v30 + 32) = v33;
    v34 = [v24 leadingAnchor];
    v35 = [v19 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    *(v30 + 40) = v36;
    v37 = [v24 trailingAnchor];
    v38 = [v19 trailingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    *(v30 + 48) = v39;
    v40 = [v29 topAnchor];
    v41 = [v24 bottomAnchor];

    v42 = [v40 constraintEqualToAnchor:v41 constant:4.0];
    *(v30 + 56) = v42;
    v43 = [v29 leadingAnchor];
    v44 = [v19 leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    *(v30 + 64) = v45;
    v46 = [v29 trailingAnchor];
    v47 = [v19 trailingAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v30 + 72) = v48;
    v49 = [v29 bottomAnchor];
    v99 = v29;

    v50 = [v19 bottomAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    *(v30 + 80) = v51;
    sub_10000C094(0, &qword_100025540, NSLayoutConstraint_ptr);
    isa = sub_100017D60().super.isa;

    [v103 activateConstraints:isa];

    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1000190F0;
    v54 = [v106 leadingAnchor];
    v55 = [v105 leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];

    *(v53 + 32) = v56;
    v57 = [v106 topAnchor];
    v58 = [v105 topAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(v53 + 40) = v59;
    v60 = [v106 widthAnchor];
    v61 = [v60 constraintEqualToConstant:36.0];

    *(v53 + 48) = v61;
    v62 = [v106 heightAnchor];
    v63 = [v62 constraintEqualToConstant:36.0];

    *(v53 + 56) = v63;
    v64 = [v19 leadingAnchor];
    v65 = [v106 trailingAnchor];

    v66 = [v64 constraintEqualToAnchor:v65 constant:12.0];
    *(v53 + 64) = v66;
    v67 = [v19 topAnchor];
    v68 = [v105 topAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];

    *(v53 + 72) = v69;
    v70 = [v19 trailingAnchor];
    v71 = [v105 trailingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    *(v53 + 80) = v72;
    v73 = [v19 bottomAnchor];
    v74 = [v105 bottomAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];

    *(v53 + 88) = v75;
    v76 = sub_100017D60().super.isa;

    [v103 activateConstraints:v76];

    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1000190E0;
    v78 = [v105 leadingAnchor];
    v79 = [v104 leadingAnchor];
    v80 = [v78 constraintEqualToAnchor:v79];

    *(v77 + 32) = v80;
    v81 = [v105 trailingAnchor];
    v82 = [v104 trailingAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    *(v77 + 40) = v83;
    v84 = sub_100017D60().super.isa;

    [v103 activateConstraints:v84];

    if (v101)
    {
      break;
    }

    v8 = [v105 topAnchor];
    v9 = [v104 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    [v10 setActive:1];
    v11 = v102;
    v12 = &_ASCMiniProductPageViewDelegate__prots;
    if (!v102)
    {
      goto LABEL_7;
    }

LABEL_4:
    v102 = v11 - 1;
    v7 = v98 + v93;
    v101 = v105;
  }

  v85 = [v105 topAnchor];
  v86 = [v101 bottomAnchor];
  v87 = [v85 constraintEqualToAnchor:v86 constant:24.0];

  [v87 setActive:1];
  v11 = v102;
  v12 = &_ASCMiniProductPageViewDelegate__prots;
  if (v102)
  {
    goto LABEL_4;
  }

LABEL_7:
  v3 = v104;
  v88 = [v104 v12[297].count];
  v89 = [v105 v12[297].count];
  v90 = [v88 constraintEqualToAnchor:v89];

  [v90 setActive:1];
LABEL_9:

  return v3;
}

char *sub_100006A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v14 = sub_1000176C0();
  v16 = v15;
  v52 = type metadata accessor for MiniProductPageView();
  v17 = objc_allocWithZone(v52);
  *&v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_traitChangeRegistration] = 0;
  v18 = OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_context;
  v19 = sub_100017550();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v20 = &v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_itemID];
  *v20 = a1;
  v20[1] = a2;
  v21 = &v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_versionID];
  *v21 = a3;
  v21[1] = a4;
  v22 = &v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_distributorID];
  *v22 = a5;
  v22[1] = a6;
  v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_isForAppStore] = a7;
  v23 = &v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_logKey];
  *v23 = v14;
  v23[1] = v16;
  v24 = objc_allocWithZone(AppStoreComponentsWrapper);
  v25 = v8;

  v26 = sub_100017D00();

  v27 = [v24 initWithLogKey:v26];

  *&v17[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_appStoreComponentsWrapper] = v27;
  v53.receiver = v17;
  v53.super_class = v52;
  v28 = objc_msgSendSuper2(&v53, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10000AAB8(v8, v28);
  sub_100002FAC();
  v29 = v28;
  [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v25 contentView];
  [v30 addSubview:v29];

  if (*(v25 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_isIPad) == 1)
  {
    v31 = [v25 contentView];
    v32 = [v31 leadingAnchor];

    v33 = [v29 leadingAnchor];
    v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33 constant:-88.0];

    LODWORD(v35) = 1140457472;
    [v34 setPriority:v35];
    [v34 setActive:1];
    v36 = [v25 contentView];
    v37 = [v36 centerXAnchor];

    v38 = [v29 centerXAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    [v39 setActive:1];
    v40 = [v29 widthAnchor];
    v41 = [v40 constraintLessThanOrEqualToConstant:360.0];

    [v41 setActive:1];
  }

  else
  {
    v42 = [v29 leadingAnchor];
    v43 = [v25 contentView];
    v44 = [v43 leadingAnchor];

    v45 = [v42 constraintEqualToAnchor:v44 constant:24.0];
    [v45 setActive:1];

    v46 = [v29 trailingAnchor];
    v47 = [v25 contentView];
    v48 = [v47 trailingAnchor];

    v41 = [v46 constraintEqualToAnchor:v48 constant:-24.0];
    [v41 setActive:1];
  }

  return v29;
}

void sub_100006F24()
{
  v1 = v0;
  v2 = *(*(sub_100003360(&qword_100025530, &qword_1000191F0) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v67 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v72 = &v64 - v6;
  v7 = __chkstk_darwin(v5);
  v66 = &v64 - v8;
  __chkstk_darwin(v7);
  v65 = &v64 - v9;
  v70 = sub_100017770();
  v10 = *(v70 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v70);
  v69 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = &v64 - v14;
  v15 = sub_100017590();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v0[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_primaryButton];
  v21 = OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_context;
  sub_100017640();
  sub_100017570();
  v22 = *(v16 + 8);
  v22(v19, v15);
  v23 = sub_100017D00();

  [v20 setTitle:v23 forState:0];

  v73 = v1;
  v71 = v21;
  sub_100017640();
  v24 = v68;
  sub_100017580();
  v22(v19, v15);
  v26 = v69;
  v25 = v70;
  (*(v10 + 104))(v69, enum case for ConfirmationSheetButtonStyle.white(_:), v70);
  LOBYTE(v23) = sub_100017760();
  v27 = *(v10 + 8);
  v27(v26, v25);
  v27(v24, v25);
  if (v23)
  {
    v28 = v65;
    sub_100017EB0();
    v29 = sub_100017EA0();
    v30 = *(*(v29 - 8) + 48);
    if (v30(v28, 1, v29))
    {
      sub_10000C2C4(v28, v72, &qword_100025530, &qword_1000191F0);
      sub_100017EC0();
      sub_10000C4D4(v28, &qword_100025530, &qword_1000191F0);
    }

    else
    {
      v31 = [objc_opt_self() systemBlueColor];
      sub_100017E90();
      sub_100017EC0();
    }

    v32 = v66;
    sub_100017EB0();
    if (v30(v32, 1, v29))
    {
      sub_10000C2C4(v32, v72, &qword_100025530, &qword_1000191F0);
      sub_100017EC0();
      sub_10000C4D4(v32, &qword_100025530, &qword_1000191F0);
    }

    else
    {
      v33 = [objc_opt_self() clearColor];
      sub_100017E80();
      sub_100017EC0();
    }
  }

  v34 = v73;
  [v20 addTarget:v73 action:"primaryButtonPressed" forControlEvents:64];
  v35 = [v34 buttonTray];
  [v35 addButton:v20];

  sub_100017660();
  v36 = &_ASCMiniProductPageViewDelegate__prots;
  if (v37)
  {
    v38 = *&v34[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_secondaryButton];
    v39 = sub_100017D00();

    [v38 setTitle:v39 forState:0];

    v40 = v67;
    sub_100017EB0();
    v41 = sub_100017EA0();
    if ((*(*(v41 - 8) + 48))(v40, 1, v41))
    {
      sub_10000C2C4(v40, v72, &qword_100025530, &qword_1000191F0);
      sub_100017EC0();
      v34 = v73;
      sub_10000C4D4(v40, &qword_100025530, &qword_1000191F0);
    }

    else
    {
      v42 = [objc_opt_self() systemBlueColor];
      sub_100017E90();
      sub_100017EC0();
    }

    [v38 addTarget:v34 action:"secondaryButtonPressed" forControlEvents:64];
    v43 = [v34 buttonTray];
    [v43 addButton:v38];

    v44 = [v20 heightAnchor];
    v45 = [v38 heightAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];

    v36 = &_ASCMiniProductPageViewDelegate__prots;
    [v46 setActive:1];

    v34 = v73;
  }

  v47 = v34[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_isIPad];
  v48 = [v34 buttonTray];
  v49 = v48;
  if (v47 == 1)
  {
    v50 = [v48 widthAnchor];

    v51 = [v50 constraintLessThanOrEqualToConstant:360.0];
    [v51 v36[292].count];

    v52 = *&v34[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_secondaryButton];
    v53 = [v52 superview];
    if (v53)
    {

      v54 = [v52 bottomAnchor];
    }

    else
    {
      v54 = [v20 bottomAnchor];
    }

    v55 = [v34 buttonTray];
    v61 = [v55 bottomAnchor];

    v62 = [v54 constraintEqualToAnchor:v61 constant:-24.0];
  }

  else
  {
    v56 = [v48 leadingAnchor];

    v57 = [v20 leadingAnchor];
    v58 = v34;
    v59 = [v56 constraintEqualToAnchor:v57 constant:-24.0];

    [v59 v36[292].count];
    v60 = [v58 buttonTray];
    v54 = [v60 trailingAnchor];

    v61 = [v20 trailingAnchor];
    v62 = [v54 constraintEqualToAnchor:v61 constant:24.0];
  }

  v63 = v62;

  [v63 v36[292].count];
}

id sub_100007870()
{
  v0 = sub_100003360(&qword_100025500, &qword_1000191B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v23 - v2;
  v4 = sub_1000174E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003360(&qword_100025528, &qword_1000191E8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = sub_100017820();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017650();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_10000C4D4(v12, &qword_100025528, &qword_1000191E8);
  }

  (*(v14 + 32))(v17, v12, v13);
  sub_1000177F0();
  sub_1000174D0();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    (*(v14 + 8))(v17, v13);
    return sub_10000C4D4(v3, &qword_100025500, &qword_1000191B0);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v20 = result;
      sub_1000174C0(v19);
      v22 = v21;
      [v20 openSensitiveURL:v21 withOptions:0];

      (*(v5 + 8))(v8, v4);
      return (*(v14 + 8))(v17, v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100007C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(sub_100003360(&qword_100025550, &unk_100019520) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v6 = sub_100017830();
  v4[4] = v6;
  v7 = *(v6 - 8);
  v4[5] = v7;
  v8 = *(v7 + 64) + 15;
  v4[6] = swift_task_alloc();
  sub_100017DA0();
  v4[7] = sub_100017D90();
  v10 = sub_100017D70();
  v4[8] = v10;
  v4[9] = v9;

  return _swift_task_switch(sub_100007D44, v10, v9);
}

uint64_t sub_100007D44()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[2] + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_context;
  sub_100017680();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[7];
    v6 = v0[2];
    v7 = v0[3];

    sub_10000C4D4(v7, &qword_100025550, &unk_100019520);
    v8 = v6 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction;
    v9 = *(v6 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
    if (v9)
    {
      v10 = *(v8 + 8);

      v9(1);
      sub_10000A854(v9);
    }

    v11 = v0[2];
    v12 = [objc_opt_self() defaultCenter];
    [v12 removeObserver:v11 name:STRestrictionsPINControllerDidFinishNotification object:0];

    v13 = v0[6];
    v14 = v0[3];

    v15 = v0[1];

    return v15();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_100007F2C;
    v18 = v0[6];
    v19 = v0[2];

    return sub_10000861C(v18);
  }
}

uint64_t sub_100007F2C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_10000804C, v4, v3);
}

uint64_t sub_10000804C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];

  (*(v4 + 8))(v2, v3);
  v5 = v0[6];
  v6 = v0[3];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000080E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003360(&qword_100025A30, &qword_1000194F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000C2C4(a3, v27 - v11, &qword_100025A30, &qword_1000194F0);
  v13 = sub_100017DC0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000C4D4(v12, &qword_100025A30, &qword_1000194F0);
  }

  else
  {
    sub_100017DB0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100017D70();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100017D20() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000C4D4(a3, &qword_100025A30, &qword_1000194F0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000C4D4(a3, &qword_100025A30, &qword_1000194F0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_100008514()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction + 8);

    v2(0);
    sub_10000A854(v2);
  }

  v4 = [objc_opt_self() defaultCenter];
  [v4 removeObserver:v1 name:STRestrictionsPINControllerDidFinishNotification object:0];
}

uint64_t sub_10000861C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1000177E0();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(sub_100003360(&qword_100025500, &qword_1000191B0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = sub_100017540();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = sub_100017830();
  v2[15] = v10;
  v11 = *(v10 - 8);
  v2[16] = v11;
  v12 = *(v11 + 64) + 15;
  v2[17] = swift_task_alloc();
  sub_100017DA0();
  v2[18] = sub_100017D90();
  v13 = sub_100017D70();
  v2[19] = v13;
  v2[20] = v14;

  return _swift_task_switch(sub_100008834, v13, v14);
}

uint64_t sub_100008834()
{
  receiver = v0[8].receiver;
  super_class = v0[8].super_class;
  v3 = v0[7].super_class;
  receiver[2](super_class, v0[3].receiver, v3);
  v4 = (receiver[11])(super_class, v3);
  if (v4 == enum case for ConfirmationSheetPostPrimaryButtonAction.osloAuthentication(_:))
  {
    v5 = v0[8].super_class;
    v6 = v0[7].receiver;
    v7 = v0[6].receiver;
    v8 = v0[6].super_class;
    (*(v0[8].receiver + 12))(v5, v0[7].super_class);
    (*(v8 + 4))(v6, v5, v7);
    v9 = [objc_allocWithZone(LAContext) init];
    v0[2].receiver = 0;
    v0[10].super_class = v9;
    LODWORD(v7) = [(objc_class *)v9 canEvaluatePolicy:1005 error:&v0[2]];
    v10 = v0[2].receiver;
    v0[11].receiver = v10;
    v11 = v10;
    if (v7)
    {
      v12 = v0[7].receiver;
      v13 = v0[5].super_class;
      v14 = sub_100017510();
      v99 = v15;
      v100 = v14;
      v98 = sub_100017500();
      v17 = v16;
      v18 = sub_100017520();
      v20 = v19;
      sub_100017530();
      v21 = type metadata accessor for OsloAuthenticationTask(0);
      v22 = objc_allocWithZone(v21);
      v23 = OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_finalizedContinuation;
      v24 = sub_100003360(&unk_100025980, &qword_1000191C8);
      (*(*(v24 - 8) + 56))(&v22[v23], 1, 1, v24);
      v22[OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_finalResult] = 0;
      v25 = &v22[OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_localizedContent];
      v26 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
      sub_10000C2C4(v13, v25 + *(v26 + 28), &qword_100025500, &qword_1000191B0);
      *v25 = v100;
      v25[1] = v99;
      v25[2] = v98;
      v25[3] = v17;
      v25[4] = v18;
      v25[5] = v20;
      v0[1].receiver = v22;
      v0[1].super_class = v21;
      v0[11].super_class = objc_msgSendSuper2(v0 + 1, "init");
      sub_10000C4D4(v13, &qword_100025500, &qword_1000191B0);
      v27 = swift_task_alloc();
      v0[12].receiver = v27;
      *v27 = v0;
      v27[1] = sub_100009370;

      return sub_1000139F4();
    }

    v35 = v11;
    v36 = v0[9].receiver;

    if (v35)
    {
      type metadata accessor for Code(0);
      v0[2].super_class = -5;
      sub_10000BF78();
      v37 = v35;
      if (sub_100017430())
      {
        if (qword_1000251F0 != -1)
        {
          swift_once();
        }

        v38 = sub_1000178E0();
        sub_10000BEDC(v38, qword_100025420);
        v39 = sub_1000178C0();
        v40 = sub_100017E20();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "Passcode not set, continuing without additional confirmation", v41, 2u);
        }

        v42 = v0[3].super_class;

        v43 = v42 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction;
        v44 = *(v42 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
        if (v44)
        {
          v45 = *(v43 + 1);

          v44(1);
          sub_10000A854(v44);
        }

        v47 = v0[6].super_class;
        v46 = v0[7].receiver;
        v48 = v0[6].receiver;
        v49 = v0[3].super_class;
        v50 = [objc_opt_self() defaultCenter];
        [v50 removeObserver:v49 name:STRestrictionsPINControllerDidFinishNotification object:0];

        (*(v47 + 1))(v46, v48);
LABEL_47:
        v93 = v0[8].super_class;
        v94 = v0[7].receiver;
        v96 = v0[5].receiver;
        v95 = v0[5].super_class;

        v97 = v0->super_class;

        return v97();
      }
    }

    if (qword_1000251F0 != -1)
    {
      swift_once();
    }

    v74 = sub_1000178E0();
    sub_10000BEDC(v74, qword_100025420);
    v75 = sub_1000178C0();
    v76 = sub_100017E00();
    v77 = os_log_type_enabled(v75, v76);
    v78 = v0[6].super_class;
    v79 = v0[7].receiver;
    v80 = v0[6].receiver;
    if (v77)
    {
      v101 = v0[7].receiver;
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138543362;
      *(v81 + 4) = v35;
      *v82 = v10;
      v35 = v35;
      _os_log_impl(&_mh_execute_header, v75, v76, "Error evaluating LAPolicyOslo policy: %{public}@", v81, 0xCu);
      sub_10000C4D4(v82, &qword_100025508, &qword_1000191C0);

      (*(v78 + 1))(v101, v80);
    }

    else
    {

      (*(v78 + 1))(v79, v80);
    }

    goto LABEL_47;
  }

  if (v4 != enum case for ConfirmationSheetPostPrimaryButtonAction.localAuthentication(_:))
  {
    v51 = v0[9].receiver;
    v52 = enum case for ConfirmationSheetPostPrimaryButtonAction.parentScreentimePinCode(_:);
    v53 = v4;

    if (v53 == v52)
    {
      v54 = objc_opt_self();
      if ([v54 isRestrictionsPasscodeSet])
      {
        if (qword_1000251F0 != -1)
        {
          swift_once();
        }

        v55 = sub_1000178E0();
        sub_10000BEDC(v55, qword_100025420);
        v56 = sub_1000178C0();
        v57 = sub_100017E20();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "Activating Screen Time Pin UI", v58, 2u);
        }

        v59 = v0[3].super_class;

        [v54 activateRemotePINUI];
        v60 = [objc_opt_self() defaultCenter];
        [v60 addObserver:v59 selector:"handleScreenTimePinCompletionNotificationWithNotification:" name:STRestrictionsPINControllerDidFinishNotification object:0];
      }

      else
      {
        if (qword_1000251F0 != -1)
        {
          swift_once();
        }

        v83 = sub_1000178E0();
        sub_10000BEDC(v83, qword_100025420);
        v84 = sub_1000178C0();
        v85 = sub_100017E20();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "Screen Time Passcode not set, continuing without it", v86, 2u);
        }

        v87 = v0[3].super_class;

        v88 = v87 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction;
        v89 = *(v87 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
        if (v89)
        {
          v90 = *(v88 + 1);

          v89(1);
          sub_10000A854(v89);
        }

        v91 = v0[3].super_class;
        v92 = [objc_opt_self() defaultCenter];
        [v92 removeObserver:v91 name:STRestrictionsPINControllerDidFinishNotification object:0];
      }
    }

    else
    {
      if (qword_1000251F0 != -1)
      {
        swift_once();
      }

      v61 = sub_1000178E0();
      sub_10000BEDC(v61, qword_100025420);
      v62 = sub_1000178C0();
      v63 = sub_100017E00();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&_mh_execute_header, v62, v63, "Unknown post primary button action", v64, 2u);
      }

      v65 = v0[3].super_class;

      v66 = v65 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction;
      v67 = *(v65 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
      if (v67)
      {
        v68 = *(v66 + 1);

        v67(1);
        sub_10000A854(v67);
      }

      v70 = v0[8].receiver;
      v69 = v0[8].super_class;
      v71 = v0[7].super_class;
      v72 = v0[3].super_class;
      v73 = [objc_opt_self() defaultCenter];
      [v73 removeObserver:v72 name:STRestrictionsPINControllerDidFinishNotification object:0];

      v70[1](v69, v71);
    }

    goto LABEL_47;
  }

  v29 = v0[8].super_class;
  v31 = v0[4].super_class;
  v30 = v0[5].receiver;
  v32 = v0[4].receiver;
  (*(v0[8].receiver + 12))(v29, v0[7].super_class);
  (*(v31 + 4))(v30, v29, v32);
  v33 = swift_task_alloc();
  v0[12].super_class = v33;
  *v33 = v0;
  *(v33 + 1) = sub_100009694;
  v34 = v0[5].receiver;

  return sub_10000B040(v34);
}

uint64_t sub_100009370(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 208) = a1;

  v4 = *(v2 + 160);
  v5 = *(v2 + 152);

  return _swift_task_switch(sub_1000094CC, v5, v4);
}

uint64_t sub_1000094CC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);

  if (v1 == 1)
  {
    v3 = *(v0 + 56);
    v4 = *(v3 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
    if (v4)
    {
      v5 = *(v3 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction + 8);

      v4(1);
      sub_10000A854(v4);
      v3 = *(v0 + 56);
    }

    v6 = *(v0 + 176);
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    v10 = *(v0 + 104);
    v9 = *(v0 + 112);
    v11 = *(v0 + 96);
    v12 = [objc_opt_self() defaultCenter];
    [v12 removeObserver:v3 name:STRestrictionsPINControllerDidFinishNotification object:0];

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v6 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = *(v0 + 168);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 112);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100009694(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 209) = a1;

  v4 = *(v2 + 160);
  v5 = *(v2 + 152);

  return _swift_task_switch(sub_1000097F0, v5, v4);
}

uint64_t sub_1000097F0()
{
  v1 = *(v0 + 209);
  v2 = *(v0 + 144);

  if (v1 == 1)
  {
    v3 = *(v0 + 56);
    v4 = *(v3 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
    if (v4)
    {
      v5 = *(v3 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction + 8);

      v4(1);
      sub_10000A854(v4);
      v3 = *(v0 + 56);
    }

    v6 = [objc_opt_self() defaultCenter];
    [v6 removeObserver:v3 name:STRestrictionsPINControllerDidFinishNotification object:0];
  }

  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000099B8()
{
  result = sub_1000176E0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100009A80(void *a1)
{
  v2 = v1;
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  v6 = STRestrictionsPINControllerDidFinishNotification;
  [v5 removeObserver:v2 name:STRestrictionsPINControllerDidFinishNotification object:0];

  v7 = [a1 userInfo];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = sub_100017CC0();

  *&v21 = sub_100017D10();
  *(&v21 + 1) = v10;

  sub_100017F00();
  if (!*(v9 + 16) || (v11 = sub_10000A750(v20), (v12 & 1) == 0))
  {

    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v13 = v11;

  sub_10000A794(*(v9 + 56) + 32 * v13, v19);

  sub_10000A7F0(v20);
  sub_10000A844(v19, &v21);
  sub_10000C094(0, &qword_1000254F8, NSNumber_ptr);
  swift_dynamicCast();
  v14 = v18;
  if ([v18 BOOLValue])
  {
    v15 = *(v2 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction);
    if (v15)
    {
      v16 = *(v2 + OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction + 8);

      v15(1);
      sub_10000A854(v15);
    }

    v17 = [v4 defaultCenter];
    [v17 removeObserver:v2 name:v6 object:0];

    v14 = v17;
  }
}

uint64_t sub_100009D1C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_100017EE0(*(a2 + 40)), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      sub_10000A9A4(*(a2 + 48) + 40 * v5, v9);
      v7 = sub_100017EF0();
      sub_10000A7F0(v9);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_100009DF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10000C038((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003360(&qword_100025520, &qword_1000191E0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_100017CC0();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100009EF0()
{
  v0 = sub_1000178E0();
  sub_10000BF14(v0, qword_100025420);
  v1 = sub_10000BEDC(v0, qword_100025420);
  if (qword_1000251F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000BEDC(v0, qword_100026288);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100009FB8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A0B0;

  return v7(a1);
}

uint64_t sub_10000A0B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000A1A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000A274(v11, 0, 0, 1, a1, a2);
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
    sub_10000A794(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000BFE8(v11);
  return v7;
}

unint64_t sub_10000A274(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000A380(a5, a6);
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
    result = sub_100017F30();
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

char *sub_10000A380(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000A3CC(a1, a2);
  sub_10000A4FC(&off_1000211A8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000A3CC(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000A5E8(v5, 0);
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

  result = sub_100017F30();
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
        v10 = sub_100017D50();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000A5E8(v10, 0);
        result = sub_100017F10();
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

uint64_t sub_10000A4FC(uint64_t result)
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

  result = sub_10000A65C(result, v12, 1, v3);
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

void *sub_10000A5E8(uint64_t a1, uint64_t a2)
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

  sub_100003360(&qword_100025518, &qword_1000191D8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000A65C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003360(&qword_100025518, &qword_1000191D8);
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

unint64_t sub_10000A750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100017EE0(*(v2 + 40));

  return sub_10000A8DC(a1, v4);
}

uint64_t sub_10000A794(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000A844(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000A854(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10000A864(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100018000();
  sub_100017D30();
  v6 = sub_100018010();

  return sub_10000AA00(a1, a2, v6);
}

unint64_t sub_10000A8DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000A9A4(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100017EF0();
      sub_10000A7F0(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000AA00(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100017FB0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_10000AAB8(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_appStoreComponentsWrapper];
  v5 = *&a2[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_itemID];
  v6 = *&a2[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_itemID + 8];
  v7 = sub_100017D00();
  if (*&a2[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_versionID + 8])
  {
    v8 = *&a2[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_versionID];
    v9 = sub_100017D00();
  }

  else
  {
    v9 = 0;
  }

  if (*&a2[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_distributorID + 8])
  {
    v10 = *&a2[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_distributorID];
    v11 = sub_100017D00();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v4 lockupWithItemID:v7 versionID:v9 distributorID:v11 isForAppStore:a2[OBJC_IVAR____TtC26ADAskForExceptionExtension19MiniProductPageView_isForAppStore] delegate:a1];

  v13 = objc_allocWithZone(UIColor);
  v42 = sub_100017100;
  v43 = 0;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_1000033A8;
  v41 = &unk_100021268;
  v14 = _Block_copy(&aBlock);
  v15 = [v13 initWithDynamicProvider:v14];
  _Block_release(v14);

  [v12 setBackgroundColor:v15];

  [a2 addSubview:v12];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [a2 leadingAnchor];
  v17 = [v12 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:-16.0];

  [v18 setActive:1];
  v19 = [a2 trailingAnchor];
  v20 = [v12 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:16.0];

  [v21 setActive:1];
  v22 = [a2 topAnchor];
  v23 = [v12 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-16.0];

  [v24 setActive:1];
  v25 = [a2 bottomAnchor];
  v26 = [v12 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:16.0];

  [v27 setActive:1];
  v28 = [a2 layer];
  [v28 setCornerRadius:20.0];

  v29 = [a2 layer];
  v30 = objc_allocWithZone(UIColor);
  v42 = sub_100017124;
  v43 = 0;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_1000033A8;
  v41 = &unk_100021290;
  v31 = _Block_copy(&aBlock);
  v32 = [v30 initWithDynamicProvider:v31];
  _Block_release(v31);

  v33 = [v32 CGColor];

  [v29 setBorderColor:v33];
  v34 = [a2 layer];
  [v34 setBorderWidth:1.0];

  v35 = objc_allocWithZone(UIColor);
  v42 = sub_100017100;
  v43 = 0;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_1000033A8;
  v41 = &unk_1000212B8;
  v36 = _Block_copy(&aBlock);
  v37 = [v35 initWithDynamicProvider:v36];
  _Block_release(v36);

  [a2 setBackgroundColor:v37];
}

uint64_t sub_10000B040(uint64_t a1)
{
  v1[22] = a1;
  sub_100017DA0();
  v1[23] = sub_100017D90();
  v2 = sub_100017D70();
  v1[24] = v2;
  v1[25] = v3;

  return _swift_task_switch(sub_10000B10C, v2, v3);
}

uint64_t sub_10000B10C()
{
  v1 = [objc_allocWithZone(LAContext) init];
  v0[26] = v1;
  sub_10000C094(0, &qword_1000254F8, NSNumber_ptr);
  isa = sub_100017E50(60).super.super.isa;
  [v1 setOptionMaxCredentialAge:isa];

  v0[10] = 0;
  LODWORD(isa) = [v1 canEvaluatePolicy:2 error:v0 + 10];
  v3 = v0[10];
  v0[27] = v3;
  v4 = v3;
  if (isa)
  {
    v5 = v0 + 18;
    v6 = v0[22];
    sub_1000177D0();
    v7 = sub_100017D00();

    [v1 setLocalizedReason:v7];

    v0[10] = 0;
    v8 = [v1 evaluationMechanismsForPolicy:2 error:v0 + 10];
    v9 = v0[10];
    if (v8)
    {
      v10 = v8;
      v11 = sub_100017DD0();
      v12 = v9;

      *v5 = 1;
      sub_100017F00();
      v13 = sub_100009D1C((v0 + 10), v11);

      sub_10000A7F0((v0 + 10));
      if (v13)
      {
        v14 = v0[22];
        sub_100017780();
        v15 = sub_100017D00();

        [v1 setOptionAuthenticationTitle:v15];

        sub_1000177A0();
        v16 = sub_100017D00();

        [v1 setLocalizedReason:v16];
      }
    }

    else
    {
      v25 = v9;
      sub_1000174A0();

      swift_willThrow();
    }

    v26 = v0[22];
    sub_100017790();
    v27 = sub_100017D00();

    [v1 setOptionPasscodeTitle:v27];

    sub_1000177B0();
    v28 = sub_100017D00();

    [v1 setOptionPasswordAuthenticationReason:v28];

    v0[2] = v0;
    v0[7] = v5;
    v0[3] = sub_10000B72C;
    v29 = swift_continuation_init();
    v0[17] = sub_100003360(&qword_100025510, &qword_1000191D0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100009DF4;
    v0[13] = &unk_100021240;
    v0[14] = v29;
    [v1 evaluatePolicy:2 options:0 reply:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  v17 = v4;
  v18 = v0[23];

  if (!v17)
  {
    goto LABEL_17;
  }

  type metadata accessor for Code(0);
  v0[10] = -5;
  sub_10000BF78();
  v19 = v17;
  if ((sub_100017430() & 1) == 0)
  {

LABEL_17:
    if (qword_1000251F0 != -1)
    {
      swift_once();
    }

    v30 = sub_1000178E0();
    sub_10000BEDC(v30, qword_100025420);
    v24 = sub_1000178C0();
    v31 = sub_100017E00();
    if (os_log_type_enabled(v24, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v17;
      *v33 = v3;
      v17 = v17;
      _os_log_impl(&_mh_execute_header, v24, v31, "Local Authentication failed when checking if deviceOwnerAuthentication can be evaluated: %@", v32, 0xCu);
      sub_10000C4D4(v33, &qword_100025508, &qword_1000191C0);
    }

    v23 = 0;
    v19 = v1;
    goto LABEL_22;
  }

  if (qword_1000251F0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000178E0();
  sub_10000BEDC(v20, qword_100025420);
  v17 = sub_1000178C0();
  v21 = sub_100017E20();
  if (os_log_type_enabled(v17, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v17, v21, "Passcode not set, continuing without additional confirmation", v22, 2u);
  }

  v23 = 1;
  v24 = v19;
LABEL_22:

  v34 = v0[1];

  return v34(v23);
}

uint64_t sub_10000B72C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 200);
  v5 = *(v1 + 192);
  if (v3)
  {
    v6 = sub_10000BC04;
  }

  else
  {
    v6 = sub_10000B888;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000B888()
{
  v25 = v0;
  v1 = *(v0 + 184);

  v2 = *(v0 + 144);
  if (v2)
  {
    *(v0 + 232) = 3;
    sub_100017F00();
    if (*(v2 + 16) && (v3 = sub_10000A750(v0 + 80), (v4 & 1) != 0))
    {
      sub_10000A794(*(v2 + 56) + 32 * v3, v0 + 144);
      sub_10000A7F0(v0 + 80);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 232) == 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_10000A7F0(v0 + 80);
    }

    *(v0 + 232) = 1;
    sub_100017F00();
    if (*(v2 + 16) && (v5 = sub_10000A750(v0 + 80), (v6 & 1) != 0))
    {
      sub_10000A794(*(v2 + 56) + 32 * v5, v0 + 144);
      sub_10000A7F0(v0 + 80);
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 232) == 1)
      {
LABEL_12:
        v7 = *(v0 + 216);

        v8 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      sub_10000A7F0(v0 + 80);
    }

    if (qword_1000251F0 != -1)
    {
      swift_once();
    }

    v9 = sub_1000178E0();
    sub_10000BEDC(v9, qword_100025420);

    v10 = sub_1000178C0();
    v11 = sub_100017E00();

    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    if (v12)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136446210;
      v17 = sub_100017CD0();
      v19 = v18;

      v20 = sub_10000A1A8(v17, v19, &v24);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed local authentication evaluation with results: %{public}s", v15, 0xCu);
      sub_10000BFE8(v16);
    }

    else
    {
    }
  }

  else
  {
    v21 = *(v0 + 216);
  }

  v8 = 0;
LABEL_22:
  v22 = *(v0 + 8);

  return v22(v8);
}

uint64_t sub_10000BC04()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[23];

  swift_willThrow();

  if (qword_1000251F0 != -1)
  {
    swift_once();
  }

  v5 = v0[28];
  v6 = sub_1000178E0();
  sub_10000BEDC(v6, qword_100025420);
  swift_errorRetain();
  v7 = sub_1000178C0();
  v8 = sub_100017E00();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Could not handle local authentication for confirmation sheet: %@", v11, 0xCu);
    sub_10000C4D4(v12, &qword_100025508, &qword_1000191C0);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_10000BEDC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000BF14(uint64_t a1, uint64_t *a2)
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

unint64_t sub_10000BF78()
{
  result = qword_100025328;
  if (!qword_100025328)
  {
    type metadata accessor for Code(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025328);
  }

  return result;
}

uint64_t sub_10000BFE8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_10000C038(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000C07C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000C094(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000C0DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000C11C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000C1D0;

  return sub_100007C18(a1, v4, v5, v6);
}

uint64_t sub_10000C1D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000C2C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003360(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000C32C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C364(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000C540;

  return sub_100009FB8(a1, v5);
}

uint64_t sub_10000C41C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000C1D0;

  return sub_100009FB8(a1, v5);
}

uint64_t sub_10000C4D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003360(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C54C()
{
  v0 = sub_1000178E0();
  sub_10000BF14(v0, qword_100026288);
  sub_10000BEDC(v0, qword_100026288);
  return sub_1000178D0();
}

id sub_10000C5C8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC26ADAskForExceptionExtension6LogKey_stringValue);
  v2 = *(a1 + OBJC_IVAR____TtC26ADAskForExceptionExtension6LogKey_stringValue + 8);

  v3 = sub_100017D00();

  return v3;
}

uint64_t sub_10000C698@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003360(&qword_100025668, &qword_100019338);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  *a1 = swift_getKeyPath();
  *(a1 + 40) = 0;
  v9 = *(type metadata accessor for ApprovalSheetView(0) + 20);
  v10 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_10000C2C4(v8, v6, &qword_100025668, &qword_100019338);
  sub_100017BC0();
  return sub_10000C4D4(v8, &qword_100025668, &qword_100019338);
}

uint64_t sub_10000C7F8()
{
  v2 = *v0;
  type metadata accessor for AppStoreRemoteView();
  type metadata accessor for ApprovalSheetView(0);
  sub_100012298(&qword_100025660, 255, type metadata accessor for ApprovalSheetView);
  return sub_1000179B0();
}

uint64_t sub_10000C8BC()
{
  v0 = type metadata accessor for AppStoreRemoteView();
  v2 = sub_100012298(&qword_100025658, v1, type metadata accessor for AppStoreRemoteView);

  return ResponseUIExtension.configuration.getter(v0, v2);
}

uint64_t sub_10000C93C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100017A10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C2C4(v2, v11, &qword_100025820, &qword_100019570);
  if (v12 == 1)
  {
    return sub_100013210(v11, a1);
  }

  sub_100017E10();
  v10 = sub_100017B00();
  sub_1000178B0();

  sub_100017A00();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000CAAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AppStoreRemoteView();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_10000CAE0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v31 = sub_100003360(&qword_100025828, &qword_100019578);
  v1 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v3 = &v30 - v2;
  v4 = sub_100003360(&qword_100025830, &qword_100019580);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  v32 = sub_100003360(&qword_100025838, &qword_100019588);
  v8 = *(*(v32 - 8) + 64);
  v9 = __chkstk_darwin(v32);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = sub_100003360(&qword_100025668, &qword_100019338);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v30 - v16;
  v18 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(type metadata accessor for ApprovalSheetView(0) + 20);
  sub_100003360(&qword_100025710, "~3");
  sub_100017BD0();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000C4D4(v17, &qword_100025668, &qword_100019338);
    *v7 = sub_100017A30();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v24 = sub_100003360(&qword_100025840, &qword_100019590);
    sub_10000CF78(&v7[*(v24 + 44)]);
    sub_100017BF0();
    sub_1000179E0();
    sub_100013228(v7, v11, &qword_100025830, &qword_100019580);
    v25 = &v11[*(v32 + 36)];
    v26 = v39;
    *(v25 + 4) = v38;
    *(v25 + 5) = v26;
    *(v25 + 6) = v40;
    v27 = v35;
    *v25 = v34;
    *(v25 + 1) = v27;
    v28 = v37;
    *(v25 + 2) = v36;
    *(v25 + 3) = v28;
    sub_100013228(v11, v13, &qword_100025838, &qword_100019588);
    sub_100013290(v13, v3);
    swift_storeEnumTagMultiPayload();
    sub_100012298(&qword_1000257D0, 255, type metadata accessor for ApprovalSheetViewControllerWrapper);
    sub_100013300();
    sub_100017A40();
    return sub_1000133B8(v13);
  }

  else
  {
    sub_100013420(v17, v22, type metadata accessor for ApprovalSheetViewControllerWrapper);
    sub_100013488(v22, v3, type metadata accessor for ApprovalSheetViewControllerWrapper);
    swift_storeEnumTagMultiPayload();
    sub_100012298(&qword_1000257D0, 255, type metadata accessor for ApprovalSheetViewControllerWrapper);
    sub_100013300();
    sub_100017A40();
    return sub_1000134F0(v22);
  }
}

uint64_t sub_10000CF78@<X0>(char *a1@<X8>)
{
  v46 = a1;
  v1 = sub_100017A60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003360(&qword_100025858, &qword_100019598);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v45 = sub_100003360(&qword_100025860, &qword_1000195A0);
  v43 = *(v45 - 8);
  v11 = v43;
  v12 = *(v43 + 64);
  v13 = __chkstk_darwin(v45);
  v47 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v44 = &v42 - v15;
  sub_1000179C0();
  sub_100017A50();
  sub_10001354C(&qword_100025868, &qword_100025858, &qword_100019598);
  sub_100012298(&qword_100025870, 255, &type metadata accessor for CircularProgressViewStyle);
  sub_100017B90();
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
  sub_100017A20();
  v16 = sub_100017B60();
  v18 = v17;
  LOBYTE(v5) = v19;
  sub_100017B30();
  v20 = sub_100017B50();
  v22 = v21;
  LOBYTE(v7) = v23;

  sub_100013594(v16, v18, v5 & 1);

  sub_100017BB0();
  v24 = sub_100017B40();
  v26 = v25;
  v28 = v27;
  v42 = v29;

  sub_100013594(v20, v22, v7 & 1);

  LOBYTE(v6) = sub_100017B20();
  v28 &= 1u;
  LOBYTE(v53[0]) = v28;
  LOBYTE(v50) = 1;
  v30 = *(v11 + 16);
  v31 = v47;
  v32 = v44;
  v33 = v45;
  v30(v47, v44, v45);
  v34 = v46;
  v30(v46, v31, v33);
  v35 = &v34[*(sub_100003360(&qword_100025878, &qword_1000195A8) + 48)];
  *&v50 = v24;
  *(&v50 + 1) = v26;
  v36 = v26;
  LOBYTE(v51) = v28;
  *(&v51 + 1) = *v49;
  DWORD1(v51) = *&v49[3];
  v37 = v42;
  *(&v51 + 1) = v42;
  v52[0] = v6;
  *&v52[1] = *v48;
  *&v52[4] = *&v48[3];
  memset(&v52[8], 0, 32);
  v52[40] = 1;
  v38 = v51;
  *v35 = v50;
  *(v35 + 1) = v38;
  v39 = *&v52[16];
  *(v35 + 2) = *v52;
  *(v35 + 3) = v39;
  *(v35 + 57) = *&v52[25];
  sub_10000C2C4(&v50, v53, &qword_100025880, &qword_1000195B0);
  v40 = *(v43 + 8);
  v40(v32, v33);
  v53[0] = v24;
  v53[1] = v36;
  v54 = v28;
  *v55 = *v49;
  *&v55[3] = *&v49[3];
  v56 = v37;
  v57 = v6;
  *v58 = *v48;
  *&v58[3] = *&v48[3];
  v59 = 0u;
  v60 = 0u;
  v61 = 1;
  sub_10000C4D4(v53, &qword_100025880, &qword_1000195B0);
  return (v40)(v47, v33);
}

void sub_10000D4F4()
{
  v1 = v0;
  v2 = sub_1000178E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ApprovalSheetView(0);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7 - 8);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003360(&qword_100025A30, &qword_1000194F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v34 - v11;
  v13 = sub_100003360(&qword_1000257E8, &qword_1000194F8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = (&v34 - v15);
  sub_10000C93C(v37);
  sub_10000C038(v37, v37[3]);
  v17 = sub_100017970();
  if (v17)
  {
    v18 = v17;
    sub_10000BFE8(v37);
    sub_1000178F0();
    v19 = sub_100017910();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v16, 1, v19) == 1)
    {

      sub_10000C4D4(v16, &qword_1000257E8, &qword_1000194F8);
    }

    else
    {
      if ((*(v20 + 88))(v16, v19) == enum case for ATQuestion.TopicMetadata.contentAgeRestrictionException(_:))
      {
        (*(v20 + 96))(v16, v19);
        v21 = *v16;
        v22 = sub_100017DC0();
        (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
        v23 = v36;
        sub_100013488(v1, v36, type metadata accessor for ApprovalSheetView);
        sub_100017DA0();
        v24 = v21;
        v25 = v18;
        v26 = sub_100017D90();
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v28 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
        v29 = swift_allocObject();
        *(v29 + 16) = v26;
        *(v29 + 24) = &protocol witness table for MainActor;
        sub_100013420(v23, v29 + v27, type metadata accessor for ApprovalSheetView);
        *(v29 + v28) = v24;
        *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;
        sub_1000080E4(0, 0, v12, &unk_100019508, v29);

        return;
      }

      (*(v20 + 8))(v16, v19);
    }
  }

  else
  {
    sub_10000BFE8(v37);
  }

  if (qword_100025200 != -1)
  {
    swift_once();
  }

  v30 = sub_10000BEDC(v2, qword_100025590);
  (*(v3 + 16))(v6, v30, v2);
  v31 = sub_1000178C0();
  v32 = sub_100017E00();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Missing question or askToTopicMetadata", v33, 2u);
  }

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_10000DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v9 = *(*(sub_100003360(&qword_100025668, &qword_100019338) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  v10 = *(*(sub_100003360(&qword_1000257F0, &qword_100019510) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v6[7] = v11;
  v12 = sub_1000176E0();
  v6[8] = v12;
  v13 = *(v12 - 8);
  v6[9] = v13;
  v14 = *(v13 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = sub_100017DA0();
  v6[12] = sub_100017D90();
  v15 = swift_task_alloc();
  v6[13] = v15;
  *v15 = v6;
  v15[1] = sub_10000DBB8;

  return sub_10000DF10(v11, a5, a6);
}

uint64_t sub_10000DBB8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v7 = *v0;

  v5 = sub_100017D70();

  return _swift_task_switch(sub_10000DCF4, v5, v4);
}

uint64_t sub_10000DCF4()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_10000C4D4(v0[7], &qword_1000257F0, &qword_100019510);
  }

  else
  {
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[3];
    v11 = v0[4];
    v12 = v0[2];
    (*(v6 + 32))(v5, v0[7], v7);
    v13 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
    (*(v6 + 16))(&v8[*(v13 + 24)], v5, v7);
    sub_10000C93C(&v8[*(v13 + 28)]);
    *v8 = v10;
    *(v8 + 1) = v11;
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    LODWORD(v13) = *(type metadata accessor for ApprovalSheetView(0) + 20);
    sub_10000C2C4(v8, v9, &qword_100025668, &qword_100019338);
    v14 = v10;
    v15 = v11;
    sub_100003360(&qword_100025710, "~3");
    sub_100017BE0();
    sub_10000C4D4(v8, &qword_100025668, &qword_100019338);
    (*(v6 + 8))(v5, v7);
  }

  v16 = v0[10];
  v17 = v0[6];
  v18 = v0[7];
  v19 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10000DF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[85] = v3;
  v4[84] = a3;
  v4[83] = a2;
  v4[82] = a1;
  v5 = sub_1000178E0();
  v4[86] = v5;
  v6 = *(v5 - 8);
  v4[87] = v6;
  v7 = *(v6 + 64) + 15;
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v8 = *(*(sub_100003360(&qword_100025550, &unk_100019520) - 8) + 64) + 15;
  v4[91] = swift_task_alloc();
  v9 = sub_100017770();
  v4[92] = v9;
  v10 = *(v9 - 8);
  v4[93] = v10;
  v11 = *(v10 + 64) + 15;
  v4[94] = swift_task_alloc();
  v12 = *(*(sub_100017590() - 8) + 64) + 15;
  v4[95] = swift_task_alloc();
  v13 = *(*(sub_100003360(&qword_100025548, &unk_100019200) - 8) + 64) + 15;
  v4[96] = swift_task_alloc();
  v14 = *(*(sub_100003360(&qword_100025558, &qword_100019240) - 8) + 64) + 15;
  v4[97] = swift_task_alloc();
  v15 = sub_1000177E0();
  v4[98] = v15;
  v16 = *(v15 - 8);
  v4[99] = v16;
  v17 = *(v16 + 64) + 15;
  v4[100] = swift_task_alloc();
  v18 = sub_100017890();
  v4[101] = v18;
  v19 = *(v18 - 8);
  v4[102] = v19;
  v20 = *(v19 + 64) + 15;
  v4[103] = swift_task_alloc();
  v21 = sub_1000174E0();
  v4[104] = v21;
  v22 = *(v21 - 8);
  v4[105] = v22;
  v23 = *(v22 + 64) + 15;
  v4[106] = swift_task_alloc();
  v24 = *(*(sub_100003360(&qword_100025500, &qword_1000191B0) - 8) + 64) + 15;
  v4[107] = swift_task_alloc();
  v25 = sub_100017620();
  v4[108] = v25;
  v26 = *(v25 - 8);
  v4[109] = v26;
  v27 = *(v26 + 64) + 15;
  v4[110] = swift_task_alloc();
  v28 = sub_100017700();
  v4[111] = v28;
  v29 = *(v28 - 8);
  v4[112] = v29;
  v30 = *(v29 + 64) + 15;
  v4[113] = swift_task_alloc();
  v31 = *(*(sub_100003360(&qword_1000257F8, &unk_100019530) - 8) + 64) + 15;
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v32 = sub_1000175F0();
  v4[116] = v32;
  v33 = *(v32 - 8);
  v4[117] = v33;
  v34 = *(v33 + 64) + 15;
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = swift_task_alloc();
  v4[122] = swift_task_alloc();
  v4[123] = swift_task_alloc();
  v4[124] = swift_task_alloc();
  v4[125] = swift_task_alloc();
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v4[128] = swift_task_alloc();
  v4[129] = swift_task_alloc();
  v4[130] = swift_task_alloc();
  v4[131] = swift_task_alloc();
  v35 = *(*(sub_100003360(&qword_100025528, &qword_1000191E8) - 8) + 64) + 15;
  v4[132] = swift_task_alloc();
  v4[133] = swift_task_alloc();
  v4[134] = swift_task_alloc();
  sub_100017DA0();
  v4[135] = sub_100017D90();
  v37 = sub_100017D70();
  v4[136] = v37;
  v4[137] = v36;

  return _swift_task_switch(sub_10000E4EC, v37, v36);
}

uint64_t sub_10000E4EC()
{
  v1 = v0[84];
  v2 = sub_100017920();
  v3 = v2;
  v144 = v0;
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100017F50())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_100017F20();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (sub_100017940() == 0x65766F72707061 && v9 == 0xE700000000000000)
      {

LABEL_15:

        goto LABEL_20;
      }

      v10 = sub_100017FB0();

      if (v10)
      {
        goto LABEL_15;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  v7 = 0;
LABEL_20:
  v0[138] = v7;
  v11 = v0[84];
  v12 = sub_100017920();
  v13 = v12;
  v137 = v7;
  if (v12 >> 62)
  {
    goto LABEL_37;
  }

  for (j = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_100017F50())
  {
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = sub_100017F20();
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (sub_100017940() == 0x656E696C636564 && v19 == 0xE700000000000000)
      {

LABEL_34:

        goto LABEL_39;
      }

      v20 = sub_100017FB0();

      if (v20)
      {
        goto LABEL_34;
      }

      ++v15;
      if (v18 == j)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_38:

  v17 = 0;
LABEL_39:
  v135 = v17;
  v21 = v144;
  v144[139] = v17;
  v22 = v144[134];
  v23 = v144[83];
  v24 = sub_100017820();
  v144[140] = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v144[141] = v26;
  v144[142] = (v25 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v26(v22, 1, 1, v24);
  v144[78] = &_swiftEmptyArrayStorage;
  if (sub_100017C70())
  {
    v27 = v144[83];
    LOBYTE(v27) = sub_100017C30();
    sub_100003360(&qword_100025800, &qword_100019540);
    if (v27)
    {
      v123 = v144[131];
      v127 = v144[130];
      v131 = v144[134];
      v139 = v144[117];
      v28 = v144[83];
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100019270;
      *(inited + 32) = 0x6F74736575716572;
      *(inited + 40) = 0xE900000000000072;
      *(inited + 48) = sub_100017C90();
      *(inited + 56) = v29;
      *(inited + 64) = 0x656372756F73;
      *(inited + 72) = 0xE600000000000000;
      *(inited + 80) = sub_100017C10();
      *(inited + 88) = v30;
      sub_10001308C(inited);
      swift_setDeallocating();
      sub_100003360(&qword_100025808, &qword_100019548);
      swift_arrayDestroy();
      sub_1000175D0();
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_100018D50;
      *(v31 + 32) = 0x676E69746172;
      *(v31 + 40) = 0xE600000000000000;
      *(v31 + 48) = sub_100017C40();
      *(v31 + 56) = v32;
      sub_10001308C(v31);
      swift_setDeallocating();
      sub_10000C4D4(v31 + 32, &qword_100025808, &qword_100019548);
      sub_1000175D0();
      sub_100003360(&qword_100025810, &unk_100019550);
      v33 = *(v139 + 72);
      LODWORD(inited) = *(v139 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_100019280;
      sub_10001308C(&_swiftEmptyArrayStorage);
      sub_1000175D0();
      sub_10001308C(&_swiftEmptyArrayStorage);
      sub_1000175D0();
      sub_10001308C(&_swiftEmptyArrayStorage);
      sub_1000175D0();
      v140 = v33;
      sub_10001308C(&_swiftEmptyArrayStorage);
      sub_1000175D0();
      sub_1000112B4(v35);
      sub_10000C4D4(v131, &qword_100025528, &qword_1000191E8);
      v26(v131, 1, 1, v24);
      v36 = 1;
      v37 = 0;
      v38 = 0;
    }

    else
    {
      v122 = v144[131];
      v126 = v144[130];
      v142 = v144[128];
      v58 = v144[117];
      v129 = v144[129];
      v133 = v144[116];
      v59 = v144[83];
      v60 = swift_initStackObject();
      *(v60 + 16) = xmmword_100019260;
      *(v60 + 32) = 0x6F74736575716572;
      *(v60 + 40) = 0xE900000000000072;
      *(v60 + 48) = sub_100017C90();
      *(v60 + 56) = v61;
      *(v60 + 64) = 0x656D614E707061;
      *(v60 + 72) = 0xE700000000000000;
      *(v60 + 80) = sub_100017C60();
      *(v60 + 88) = v62;
      *(v60 + 96) = 0x656372756F73;
      *(v60 + 104) = 0xE600000000000000;
      *(v60 + 112) = sub_100017C50();
      *(v60 + 120) = v63;
      sub_10001308C(v60);
      swift_setDeallocating();
      sub_100003360(&qword_100025808, &qword_100019548);
      swift_arrayDestroy();
      sub_1000175D0();
      v64 = swift_initStackObject();
      *(v64 + 16) = xmmword_100019270;
      *(v64 + 32) = 0x676E69746172;
      *(v64 + 40) = 0xE600000000000000;
      *(v64 + 48) = sub_100017C40();
      *(v64 + 56) = v65;
      *(v64 + 64) = 0x65706F6C65766564;
      *(v64 + 72) = 0xE900000000000072;
      *(v64 + 80) = sub_100017C10();
      *(v64 + 88) = v66;
      sub_10001308C(v64);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_1000175D0();
      sub_10001308C(&_swiftEmptyArrayStorage);
      sub_1000175D0();
      (*(v58 + 16))(v142, v129, v133);
      v67 = sub_100012EB4(0, 1, 1, &_swiftEmptyArrayStorage);
      v69 = *(v67 + 2);
      v68 = *(v67 + 3);
      if (v69 >= v68 >> 1)
      {
        v67 = sub_100012EB4(v68 > 1, v69 + 1, 1, v67);
      }

      v21 = v144;
      v70 = v144[129];
      v71 = v144[128];
      v72 = v144[117];
      v73 = v144[116];
      v74 = v144[115];
      *(v67 + 2) = v69 + 1;
      v75 = *(v72 + 32);
      v72 += 32;
      inited = *(v72 + 48);
      v140 = *(v72 + 40);
      v75(&v67[((inited + 32) & ~inited) + v140 * v69], v71, v73);
      v144[78] = v67;
      v75(v74, v70, v73);
      v36 = 0;
      v37 = 0;
      v38 = 0;
    }
  }

  else
  {
    v121 = v144[131];
    v124 = v144[130];
    v141 = v144[126];
    v39 = v144[117];
    v128 = v144[127];
    v132 = v144[116];
    v40 = v144[83];
    sub_100003360(&qword_100025800, &qword_100019540);
    v41 = swift_initStackObject();
    *(v41 + 16) = xmmword_100019260;
    *(v41 + 32) = 0x6F74736575716572;
    *(v41 + 40) = 0xE900000000000072;
    *(v41 + 48) = sub_100017C90();
    *(v41 + 56) = v42;
    *(v41 + 64) = 0x656D614E707061;
    *(v41 + 72) = 0xE700000000000000;
    *(v41 + 80) = sub_100017C60();
    *(v41 + 88) = v43;
    *(v41 + 96) = 0x656372756F73;
    *(v41 + 104) = 0xE600000000000000;
    *(v41 + 112) = sub_100017C50();
    *(v41 + 120) = v44;
    sub_10001308C(v41);
    swift_setDeallocating();
    sub_100003360(&qword_100025808, &qword_100019548);
    swift_arrayDestroy();
    sub_1000175D0();
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_100019270;
    *(v45 + 32) = 0x676E69746172;
    *(v45 + 40) = 0xE600000000000000;
    *(v45 + 48) = sub_100017C40();
    *(v45 + 56) = v46;
    *(v45 + 64) = 0x6C7074656B72616DLL;
    *(v45 + 72) = 0xEF656D614E656361;
    *(v45 + 80) = sub_100017C50();
    *(v45 + 88) = v47;
    sub_10001308C(v45);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1000175D0();
    v125 = sub_100017C20();
    v38 = v48;
    sub_10001308C(&_swiftEmptyArrayStorage);
    sub_1000175D0();
    (*(v39 + 16))(v141, v128, v132);
    v49 = sub_100012EB4(0, 1, 1, &_swiftEmptyArrayStorage);
    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_100012EB4(v50 > 1, v51 + 1, 1, v49);
    }

    v21 = v144;
    v52 = v144[127];
    v53 = v144[126];
    v54 = v144[117];
    v55 = v144[116];
    v56 = v144[115];
    *(v49 + 2) = v51 + 1;
    v57 = *(v54 + 32);
    v54 += 32;
    inited = *(v54 + 48);
    v140 = *(v54 + 40);
    v57(&v49[((inited + 32) & ~inited) + v140 * v51], v53, v55);
    v144[78] = v49;
    v57(v56, v52, v55);
    v36 = 0;
    v37 = v125;
  }

  v21[144] = v38;
  v21[143] = v37;
  v76 = v21[125];
  v77 = v21[124];
  v78 = v21[123];
  v79 = v21[122];
  v80 = v21[121];
  (*(v21[117] + 56))(v21[115], v36, 1, v21[116]);
  sub_10001308C(&_swiftEmptyArrayStorage);
  sub_1000175D0();
  sub_10001308C(&_swiftEmptyArrayStorage);
  sub_1000175D0();
  sub_10001308C(&_swiftEmptyArrayStorage);
  sub_1000175D0();
  sub_10001308C(&_swiftEmptyArrayStorage);
  sub_1000175D0();
  sub_10001308C(&_swiftEmptyArrayStorage);
  sub_1000175D0();
  if (v137)
  {
    v81 = v137;
    v82 = sub_100017950();
    v84 = v83;
  }

  else
  {
    v82 = 0;
    v84 = 0;
  }

  v144[146] = v84;
  v144[145] = v82;
  if (v135)
  {
    v85 = v135;
    v86 = sub_100017950();
    v88 = v87;
  }

  else
  {
    v86 = 0;
    v88 = 0;
  }

  v144[148] = v88;
  v144[147] = v86;
  if (v84)
  {
    if (v88)
    {
LABEL_56:
      v89 = (inited + 32) & ~inited;
      v90 = v140;
      goto LABEL_67;
    }
  }

  else
  {
    v91 = v144[120];
    sub_10001308C(&_swiftEmptyArrayStorage);
    sub_1000175D0();
    v92 = v144[78];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = sub_100012EB4(0, v92[2] + 1, 1, v92);
    }

    v94 = v92[2];
    v93 = v92[3];
    if (v94 >= v93 >> 1)
    {
      v92 = sub_100012EB4(v93 > 1, v94 + 1, 1, v92);
    }

    v95 = v144[120];
    v96 = v144[117];
    v97 = v144[116];
    v92[2] = v94 + 1;
    (*(v96 + 32))(v92 + ((inited + 32) & ~inited) + v94 * v140, v95, v97);
    v144[78] = v92;
    if (v88)
    {
      goto LABEL_56;
    }
  }

  v98 = v144[119];
  sub_10001308C(&_swiftEmptyArrayStorage);
  sub_1000175D0();
  v99 = v144[78];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v99 = sub_100012EB4(0, *(v99 + 2) + 1, 1, v99);
  }

  v101 = *(v99 + 2);
  v100 = *(v99 + 3);
  v102 = v140;
  if (v101 >= v100 >> 1)
  {
    v119 = sub_100012EB4(v100 > 1, v101 + 1, 1, v99);
    v102 = v140;
    v99 = v119;
  }

  v103 = v144[119];
  v104 = v144[117];
  v105 = v144[116];
  *(v99 + 2) = v101 + 1;
  v89 = (inited + 32) & ~inited;
  v90 = v102;
  (*(v104 + 32))(&v99[v89 + v101 * v102], v103, v105);
  v144[78] = v99;
LABEL_67:
  v106 = v144[131];
  v107 = v144[130];
  v108 = v144[125];
  v130 = v144[124];
  v134 = v144[123];
  v136 = v144[122];
  v138 = v144[121];
  v109 = v144[117];
  v110 = v144[116];
  v143 = v144[110];
  sub_100003360(&qword_100025810, &unk_100019550);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_100019290;
  v112 = v111 + v89;
  v113 = *(v109 + 16);
  v113(v112, v106, v110);
  v113(v112 + v90, v107, v110);
  v113(v112 + 2 * v90, v108, v110);
  v113(v112 + 3 * v90, v130, v110);
  v113(v112 + 4 * v90, v134, v110);
  v113(v112 + 5 * v90, v136, v110);
  v113(v112 + 6 * v90, v138, v110);
  sub_1000112B4(v111);
  v114 = v144[78];
  sub_100017610();
  v115 = async function pointer to LocalizedStringsRequest.run()[1];
  v116 = swift_task_alloc();
  v144[149] = v116;
  *v116 = v144;
  v116[1] = sub_10000F5AC;
  v117 = v144[113];
  v118 = v144[110];

  return LocalizedStringsRequest.run()(v117);
}

uint64_t sub_10000F5AC()
{
  v2 = *v1;
  v3 = *(*v1 + 1192);
  v4 = *(*v1 + 880);
  v5 = *(*v1 + 872);
  v6 = *(*v1 + 864);
  v14 = *v1;
  *(*v1 + 1200) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = v2[148];
    v8 = v2[146];
    v9 = v2[144];

    v10 = v2[137];
    v11 = v2[136];
    v12 = sub_100010DA8;
  }

  else
  {
    v10 = v2[137];
    v11 = v2[136];
    v12 = sub_10000F74C;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_10000F74C()
{
  v279 = v0;
  v1 = v0[135];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];

  v5 = sub_1000176F0();
  (*(v3 + 8))(v2, v4);
  if (!*(v5 + 16))
  {
    v260 = v0[146];
    v264 = v0[148];
    v243 = v0[145];
    v248 = v0[147];
    goto LABEL_12;
  }

  v6 = sub_10000A864(0xD000000000000025, 0x8000000100019F10);
  v7 = v0[146];
  if (v8)
  {
    v9 = (*(v5 + 56) + 16 * v6);
    v10 = v9[1];
    v242 = *v9;
  }

  else
  {
    v244 = v0[145];
  }

  if (*(v5 + 16))
  {
    v11 = sub_10000A864(0xD000000000000025, 0x8000000100019F40);
    if (v12)
    {
      v13 = (*(v5 + 56) + 16 * v11);
      v14 = v13[1];
      v249 = *v13;

      goto LABEL_12;
    }

    v266 = v0[148];
  }

  else
  {
    v265 = v0[148];
  }

  v250 = v0[147];
LABEL_12:
  v15 = v0[107];
  v16 = v0[105];
  v17 = v0[104];
  v18 = v0[84];
  sub_100017900();
  v274 = v5;
  if ((*(v16 + 48))(v15, 1, v17))
  {
    sub_10000C4D4(v0[107], &qword_100025500, &qword_1000191B0);
  }

  else
  {
    v19 = v0[117];
    v20 = v0[116];
    v21 = v0[115];
    v22 = v0[114];
    v23 = v0[107];
    v24 = v0[106];
    v25 = v0[105];
    v26 = v0[104];
    (*(v25 + 16))(v24, v23, v26);
    sub_10000C4D4(v23, &qword_100025500, &qword_1000191B0);
    sub_1000174B0();
    (*(v25 + 8))(v24, v26);
    sub_10000C2C4(v21, v22, &qword_1000257F8, &unk_100019530);
    if ((*(v19 + 48))(v22, 1, v20) != 1)
    {
      (*(v0[117] + 32))(v0[118], v0[114], v0[116]);
      v28 = sub_1000175E0();
      v5 = v274;
      if (*(v274 + 16))
      {
        v30 = sub_10000A864(v28, v29);
        v32 = v31;

        if (v32)
        {
          v270 = v0[142];
          v254 = v0[141];
          v237 = v0[140];
          v33 = v0[134];
          v34 = v0[133];
          v35 = v0[118];
          v36 = v0[117];
          v37 = v0[116];
          v38 = (*(v274 + 56) + 16 * v30);
          v40 = *v38;
          v39 = v38[1];

          sub_100017800();
          (*(v36 + 8))(v35, v37);
          v5 = v274;
          sub_10000C4D4(v33, &qword_100025528, &qword_1000191E8);
          v254(v34, 0, 1, v237);
          sub_1000131A0(v34, v33);
          goto LABEL_21;
        }
      }

      else
      {
      }

      v41 = v0[118];
      v42 = v0[117];
      v43 = v0[116];

      (*(v42 + 8))(v41, v43);
      goto LABEL_21;
    }

    v27 = v0[114];

    sub_10000C4D4(v27, &qword_1000257F8, &unk_100019530);
    v5 = v274;
  }

LABEL_21:
  v44 = v0[144];
  v45 = v0[143];
  v255 = v0[125];
  v46 = v0[103];
  v47 = v0[85];
  sub_1000113E0(v0[83], v5);
  v0[79] = sub_100017C80();
  sub_100017F90();
  v0[80] = sub_100017C00();
  sub_100017F90();
  sub_100017860();
  v48 = sub_1000175E0();
  if (!*(v274 + 16))
  {
LABEL_44:

    goto LABEL_45;
  }

  v50 = sub_10000A864(v48, v49);
  v52 = v51;

  if ((v52 & 1) == 0)
  {
LABEL_45:

    if (qword_100025200 != -1)
    {
      swift_once();
    }

    v118 = v0[89];
    v119 = v0[87];
    v120 = v0[86];
    v121 = sub_10000BEDC(v120, qword_100025590);
    (*(v119 + 16))(v118, v121, v120);

    v122 = sub_1000178C0();
    LOBYTE(v118) = sub_100017E00();

    v217 = v118;
    v123 = os_log_type_enabled(v122, v118);
    v229 = v0[139];
    v124 = v0[134];
    v125 = v0[131];
    v126 = v0[130];
    v261 = v0[123];
    v267 = v0[124];
    v257 = v0[122];
    v245 = v0[138];
    v251 = v0[121];
    v127 = v0[117];
    v128 = v0[116];
    v271 = v0[115];
    v275 = v0[125];
    v129 = v0[102];
    v234 = v0[101];
    v239 = v0[103];
    v130 = v0[87];
    v221 = v0[86];
    v225 = v0[89];
    if (v123)
    {
      v213 = v0[134];
      v131 = swift_slowAlloc();
      v209 = v125;
      v132 = swift_slowAlloc();
      v278[0] = v132;
      *v131 = 136446210;
      v133 = sub_100017CE0();
      v205 = v126;
      v135 = v134;

      v136 = sub_10000A1A8(v133, v135, v278);

      *(v131 + 4) = v136;
      _os_log_impl(&_mh_execute_header, v122, v217, "Missing authentication related localized strings: %{public}s", v131, 0xCu);
      sub_10000BFE8(v132);

      (*(v130 + 8))(v225, v221);
      (*(v129 + 8))(v239, v234);
      v137 = *(v127 + 8);
      v137(v251, v128);
      v137(v257, v128);
      v137(v261, v128);
      v137(v267, v128);
      v137(v275, v128);
      sub_10000C4D4(v271, &qword_1000257F8, &unk_100019530);
      v137(v205, v128);
      v137(v209, v128);
      v138 = v213;
    }

    else
    {

      (*(v130 + 8))(v225, v221);
      (*(v129 + 8))(v239, v234);
      v139 = *(v127 + 8);
      v139(v251, v128);
      v139(v257, v128);
      v139(v261, v128);
      v139(v267, v128);
      v139(v275, v128);
      sub_10000C4D4(v271, &qword_1000257F8, &unk_100019530);
      v139(v126, v128);
      v139(v125, v128);
      v138 = v124;
    }

    goto LABEL_50;
  }

  v53 = v0[124];
  v54 = (*(v274 + 56) + 16 * v50);
  v56 = *v54;
  v55 = v54[1];

  v57 = sub_1000175E0();
  if (!*(v274 + 16))
  {
LABEL_43:

    goto LABEL_44;
  }

  v59 = sub_10000A864(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
    goto LABEL_44;
  }

  v62 = v0[123];
  v63 = (*(v274 + 56) + 16 * v59);
  v65 = *v63;
  v64 = v63[1];

  v66 = sub_1000175E0();
  if (!*(v274 + 16))
  {
LABEL_42:

    goto LABEL_43;
  }

  v68 = sub_10000A864(v66, v67);
  v70 = v69;

  if ((v70 & 1) == 0)
  {
    goto LABEL_43;
  }

  v71 = v0[122];
  v72 = (*(v274 + 56) + 16 * v68);
  v73 = *v72;
  v74 = v72[1];

  v75 = sub_1000175E0();
  if (!*(v274 + 16))
  {
    goto LABEL_41;
  }

  v77 = sub_10000A864(v75, v76);
  v79 = v78;

  if ((v79 & 1) == 0)
  {
    goto LABEL_42;
  }

  v80 = v0[121];
  v81 = (*(v274 + 56) + 16 * v77);
  v82 = v81[1];
  v232 = *v81;

  v83 = sub_1000175E0();
  if (!*(v274 + 16))
  {

    goto LABEL_41;
  }

  v85 = sub_10000A864(v83, v84);
  v87 = v86;

  if ((v87 & 1) == 0)
  {
LABEL_41:

    goto LABEL_42;
  }

  v88 = v0[131];
  v89 = v0[100];
  v90 = (*(v274 + 56) + 16 * v85);
  v91 = v90[1];
  v173 = *v90;

  sub_1000177C0();
  v92 = sub_1000175E0();
  if (*(v274 + 16))
  {
    v94 = sub_10000A864(v92, v93);
    v96 = v95;

    if ((v96 & 1) == 0)
    {
      goto LABEL_58;
    }

    v97 = v0[130];
    v98 = (*(v274 + 56) + 16 * v94);
    v99 = *v98;
    v100 = v98[1];

    v101 = sub_1000175E0();
    if (*(v274 + 16))
    {
      v103 = sub_10000A864(v101, v102);
      v105 = v104;

      if (v105)
      {
        v188 = v0[139];
        v190 = v0[138];
        v106 = v0[134];
        v238 = v0[132];
        v212 = v0[130];
        v216 = v0[131];
        v198 = v0[123];
        v201 = v0[124];
        v192 = v0[121];
        v195 = v0[122];
        v107 = v0[117];
        v186 = v0[116];
        v204 = v0[115];
        v208 = v0[125];
        v256 = v0[103];
        v224 = v0[101];
        v228 = v0[102];
        v179 = v0[100];
        v233 = v0[99];
        v178 = v0[98];
        v108 = v0[97];
        v220 = v0[96];
        v174 = v0[94];
        v109 = v0[93];
        v175 = v0[92];
        v176 = v0[95];
        v177 = v0[91];
        v110 = v0[83];
        v111 = (*(v274 + 56) + 16 * v103);
        v182 = *v111;
        v180 = v0[82];
        v181 = v111[1];

        v278[0] = 5396549;
        v278[1] = 0xE300000000000000;
        v0[81] = sub_100017C80();
        v281._countAndFlagsBits = sub_100017F90();
        sub_100017D40(v281);

        v112 = sub_1000175C0();
        (*(*(v112 - 8) + 56))(v108, 1, 1, v112);
        sub_10000C2C4(v106, v238, &qword_100025528, &qword_1000191E8);
        (*(v228 + 16))(v220, v256, v224);
        (*(v228 + 56))(v220, 0, 1, v224);
        (*(v109 + 104))(v174, enum case for ConfirmationSheetButtonStyle.white(_:), v175);
        sub_100017560();
        (*(v233 + 16))(v177, v179, v178);
        v113 = enum case for ConfirmationSheetPostPrimaryButtonAction.localAuthentication(_:);
        v114 = sub_100017830();
        v115 = *(v114 - 8);
        (*(v115 + 104))(v177, v113, v114);
        (*(v115 + 56))(v177, 0, 1, v114);
        sub_1000176B0();

        (*(v233 + 8))(v179, v178);
        (*(v228 + 8))(v256, v224);
        v116 = *(v107 + 8);
        v116(v192, v186);
        v116(v195, v186);
        v116(v198, v186);
        v116(v201, v186);
        v116(v208, v186);
        sub_10000C4D4(v204, &qword_1000257F8, &unk_100019530);
        v116(v212, v186);
        v116(v216, v186);
        sub_10000C4D4(v106, &qword_100025528, &qword_1000191E8);
        v117 = 0;
        goto LABEL_51;
      }
    }

    else
    {
    }
  }

LABEL_58:

  if (qword_100025200 != -1)
  {
    swift_once();
  }

  v151 = v0[90];
  v152 = v0[87];
  v153 = v0[86];
  v154 = sub_10000BEDC(v153, qword_100025590);
  (*(v152 + 16))(v151, v154, v153);

  v155 = sub_1000178C0();
  LOBYTE(v153) = sub_100017E00();

  v207 = v153;
  v231 = v155;
  v156 = os_log_type_enabled(v155, v153);
  v227 = v0[139];
  v236 = v0[138];
  v157 = v0[134];
  v158 = v0[131];
  v159 = v0[130];
  v263 = v0[123];
  v269 = v0[124];
  v253 = v0[121];
  v259 = v0[122];
  v160 = v0[117];
  v161 = v0[116];
  v273 = v0[115];
  v277 = v0[125];
  v162 = v0[102];
  v241 = v0[101];
  v247 = v0[103];
  v163 = v0[99];
  v219 = v0[98];
  v223 = v0[100];
  v215 = v0[90];
  v164 = v0[87];
  v211 = v0[86];
  if (v156)
  {
    v203 = v0[134];
    v165 = swift_slowAlloc();
    v194 = v162;
    v166 = swift_slowAlloc();
    v278[0] = v166;
    *v165 = 136446210;
    v197 = v159;
    v200 = v158;
    v167 = sub_100017CE0();
    v169 = v168;

    v170 = sub_10000A1A8(v167, v169, v278);

    *(v165 + 4) = v170;
    _os_log_impl(&_mh_execute_header, v231, v207, "Missing title/subtitle localized strings: %{public}s", v165, 0xCu);
    sub_10000BFE8(v166);

    (*(v164 + 8))(v215, v211);
    (*(v163 + 8))(v223, v219);
    (*(v194 + 8))(v247, v241);
    v171 = *(v160 + 8);
    v171(v253, v161);
    v171(v259, v161);
    v171(v263, v161);
    v171(v269, v161);
    v171(v277, v161);
    sub_10000C4D4(v273, &qword_1000257F8, &unk_100019530);
    v171(v197, v161);
    v171(v200, v161);
    v138 = v203;
  }

  else
  {

    (*(v164 + 8))(v215, v211);
    (*(v163 + 8))(v223, v219);
    (*(v162 + 8))(v247, v241);
    v172 = *(v160 + 8);
    v172(v253, v161);
    v172(v259, v161);
    v172(v263, v161);
    v172(v269, v161);
    v172(v277, v161);
    sub_10000C4D4(v273, &qword_1000257F8, &unk_100019530);
    v172(v159, v161);
    v172(v158, v161);
    v138 = v157;
  }

LABEL_50:
  sub_10000C4D4(v138, &qword_100025528, &qword_1000191E8);
  v117 = 1;
LABEL_51:
  v140 = v0[134];
  v141 = v0[133];
  v142 = v0[132];
  v143 = v0[131];
  v144 = v0[130];
  v145 = v0[129];
  v146 = v0[128];
  v183 = v0[127];
  v184 = v0[126];
  v185 = v0[125];
  v187 = v0[124];
  v189 = v0[123];
  v191 = v0[122];
  v193 = v0[121];
  v196 = v0[120];
  v199 = v0[119];
  v202 = v0[118];
  v206 = v0[115];
  v210 = v0[114];
  v214 = v0[113];
  v218 = v0[110];
  v222 = v0[107];
  v226 = v0[106];
  v230 = v0[103];
  v235 = v0[100];
  v240 = v0[97];
  v246 = v0[96];
  v252 = v0[95];
  v258 = v0[94];
  v262 = v0[91];
  v268 = v0[90];
  v272 = v0[89];
  v276 = v0[88];
  v147 = v0[82];
  v148 = sub_1000176E0();
  (*(*(v148 - 8) + 56))(v147, v117, 1, v148);

  v149 = v0[1];

  return v149();
}

uint64_t sub_100010DA8()
{
  v1 = v0[135];

  if (qword_100025200 != -1)
  {
    swift_once();
  }

  v2 = v0[150];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = sub_10000BEDC(v5, qword_100025590);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v7 = sub_1000178C0();
  v8 = sub_100017E00();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[150];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error fetching localized strings for approval sheet: %{public}@", v10, 0xCu);
    sub_10000C4D4(v11, &qword_100025508, &qword_1000191C0);
  }

  v13 = v0[150];
  v14 = v7;
  v15 = v0[139];
  v16 = v0[138];
  v65 = v0[131];
  v67 = v0[134];
  v61 = v0[125];
  v63 = v0[130];
  v55 = v0[123];
  v57 = v0[124];
  v53 = v0[122];
  v17 = v0[121];
  v18 = v0[117];
  v19 = v0[116];
  v59 = v0[115];
  v20 = v0[88];
  v21 = v0[87];
  v22 = v0[86];

  (*(v21 + 8))(v20, v22);
  v23 = *(v18 + 8);
  v23(v17, v19);
  v23(v53, v19);
  v23(v55, v19);
  v23(v57, v19);
  v23(v61, v19);
  sub_10000C4D4(v59, &qword_1000257F8, &unk_100019530);
  v23(v63, v19);
  v23(v65, v19);
  sub_10000C4D4(v67, &qword_100025528, &qword_1000191E8);
  v24 = v0[134];
  v25 = v0[133];
  v26 = v0[132];
  v27 = v0[131];
  v28 = v0[130];
  v29 = v0[129];
  v30 = v0[128];
  v31 = v0[127];
  v36 = v0[126];
  v37 = v0[125];
  v38 = v0[124];
  v39 = v0[123];
  v40 = v0[122];
  v41 = v0[121];
  v42 = v0[120];
  v43 = v0[119];
  v44 = v0[118];
  v45 = v0[115];
  v46 = v0[114];
  v47 = v0[113];
  v48 = v0[110];
  v49 = v0[107];
  v50 = v0[106];
  v51 = v0[103];
  v52 = v0[100];
  v54 = v0[97];
  v56 = v0[96];
  v58 = v0[95];
  v60 = v0[94];
  v62 = v0[91];
  v64 = v0[90];
  v66 = v0[89];
  v68 = v0[88];
  v32 = v0[82];
  v33 = sub_1000176E0();
  (*(*(v33 - 8) + 56))(v32, 1, 1, v33);

  v34 = v0[1];

  return v34();
}

uint64_t sub_1000112B4(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_100012EB4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_1000175F0();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000113E0(uint64_t a1, uint64_t a2)
{
  if (sub_100017C70() & 1) != 0 && (sub_100017C30())
  {
    if (*(a2 + 16))
    {
      v3 = sub_10000A864(0xD00000000000003BLL, 0x800000010001A0A0);
      if (v4)
      {
        if (*(a2 + 16))
        {
          v5 = (*(a2 + 56) + 16 * v3);
          v7 = *v5;
          v6 = v5[1];

          v8 = sub_10000A864(0xD00000000000003ALL, 0x800000010001A0E0);
          if ((v9 & 1) != 0 && *(a2 + 16))
          {
            v10 = (*(a2 + 56) + 16 * v8);
            v12 = *v10;
            v11 = v10[1];

            v13 = sub_10000A864(0xD000000000000040, 0x800000010001A120);
            if ((v14 & 1) != 0 && *(a2 + 16))
            {
              v15 = (*(a2 + 56) + 16 * v13);
              v17 = *v15;
              v16 = v15[1];

              v18 = sub_10000A864(0xD00000000000003FLL, 0x800000010001A170);
              if (v19)
              {
                v20 = (*(a2 + 56) + 16 * v18);
                v21 = v20[1];
                v27 = *v20;
                sub_100003360(&qword_100025818, &qword_100019560);
                v22 = *(sub_100017750() - 8);
                v26 = *(v22 + 72);
                v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
                v24 = swift_allocObject();
                *(v24 + 16) = xmmword_100019270;

                sub_100017720();
                sub_100017720();
                return v24;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100011678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10000CAE0(a2);
  v6 = sub_1000179D0();
  v7 = sub_100017B10();
  v8 = a2 + *(sub_100003360(&qword_1000257D8, &qword_1000194E0) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  sub_100013488(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ApprovalSheetView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_100013420(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ApprovalSheetView);
  result = sub_100003360(&qword_1000257E0, &qword_1000194E8);
  v12 = (a2 + *(result + 36));
  *v12 = sub_100012B64;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
  return result;
}

id sub_1000117E8()
{
  v1 = v0;
  v2 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_1000176E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = *(v7 + 16);
  v14(&v28 - v12, v1 + *(v3 + 32), v6);
  v14(v11, v13, v6);
  v15 = objc_allocWithZone(type metadata accessor for ConfirmationSheetViewController());
  v16 = sub_100003DEC(v11, 0);
  (*(v7 + 8))(v13, v6);
  sub_100013488(v1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ApprovalSheetViewControllerWrapper);
  v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18 = swift_allocObject();
  sub_100013420(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for ApprovalSheetViewControllerWrapper);
  v19 = &v16[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction];
  v20 = *&v16[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction];
  v21 = *&v16[OBJC_IVAR____TtC26ADAskForExceptionExtension31ConfirmationSheetViewController_dismissAction + 8];
  *v19 = sub_1000135A8;
  v19[1] = v18;
  sub_10000A854(v20);
  v22 = v16;
  v23 = [v22 navigationItem];
  sub_10000C094(0, &qword_100025888, UIBarButtonItem_ptr);
  sub_10000C094(0, &qword_100025890, UIAction_ptr);
  sub_100013488(v1, &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ApprovalSheetViewControllerWrapper);
  v24 = swift_allocObject();
  sub_100013420(&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v17, type metadata accessor for ApprovalSheetViewControllerWrapper);
  v29.value.super.super.isa = sub_100017E70();
  v29.is_nil = 0;
  isa = sub_100017E30(UIBarButtonSystemItemClose, v29, v30).super.super.isa;
  [v23 setRightBarButtonItem:isa];

  v26 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v22];
  return v26;
}

void sub_100011B68(char a1, uint64_t a2)
{
  v22 = a2;
  if ((a1 & 1) == 0)
  {
    goto LABEL_19;
  }

  v2 = *(a2 + 8);
  v3 = sub_100017920();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_18:

    a2 = v22;
LABEL_19:
    v11 = *(a2 + 8);
    v12 = sub_100017920();
    v13 = v12;
    if (v12 >> 62)
    {
      goto LABEL_38;
    }

    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
LABEL_39:

      return;
    }

LABEL_21:
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = sub_100017F20();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_38:
          v14 = sub_100017F50();
          if (!v14)
          {
            goto LABEL_39;
          }

          goto LABEL_21;
        }

        v16 = *(v13 + 8 * v15 + 32);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_32;
        }
      }

      v23 = v16;
      if (sub_100017940() == 0x656E696C636564 && v18 == 0xE700000000000000)
      {
        goto LABEL_33;
      }

      v19 = sub_100017FB0();

      if (v19)
      {
        goto LABEL_34;
      }

      ++v15;
      if (v17 == v14)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_4:
  v6 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_100017F20();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v7 = *(v4 + 8 * v6 + 32);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        v5 = sub_100017F50();
        if (!v5)
        {
          goto LABEL_18;
        }

        goto LABEL_4;
      }
    }

    v23 = v7;
    if (sub_100017940() == 0x65766F72707061 && v9 == 0xE700000000000000)
    {
      break;
    }

    v10 = sub_100017FB0();

    if (v10)
    {
      goto LABEL_34;
    }

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_18;
    }
  }

LABEL_33:

LABEL_34:

  v20 = (v22 + *(type metadata accessor for ApprovalSheetViewControllerWrapper(0) + 28));
  v21 = v20[4];
  sub_10000C038(v20, v20[3]);
  sub_100017980();
}

uint64_t sub_100011E3C(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for ApprovalSheetViewControllerWrapper(0) + 28));
  v3 = v2[4];
  sub_10000C038(v2, v2[3]);
  return sub_100017990();
}

uint64_t sub_100011EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012298(&qword_100025898, 255, type metadata accessor for ApprovalSheetViewControllerWrapper);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100011F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012298(&qword_100025898, 255, type metadata accessor for ApprovalSheetViewControllerWrapper);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100012014()
{
  sub_100012298(&qword_100025898, 255, type metadata accessor for ApprovalSheetViewControllerWrapper);
  sub_100017AD0();
  __break(1u);
}

uint64_t sub_100012070()
{
  v0 = sub_1000178E0();
  sub_10000BF14(v0, qword_100025590);
  v1 = sub_10000BEDC(v0, qword_100025590);
  if (qword_1000251F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000BEDC(v0, qword_100026288);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppStoreRemoteView();
  sub_100012298(&qword_1000255A8, v3, type metadata accessor for AppStoreRemoteView);
  sub_1000178A0();
  return 0;
}

uint64_t sub_100012298(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012344(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012390(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000176E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100012450(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000176E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1000124F4()
{
  result = sub_100017CA0();
  if (v1 <= 0x3F)
  {
    result = sub_100017930();
    if (v2 <= 0x3F)
    {
      result = sub_1000176E0();
      if (v3 <= 0x3F)
      {
        result = sub_1000125A8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1000125A8()
{
  result = qword_1000256D8;
  if (!qword_1000256D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000256D8);
  }

  return result;
}

uint64_t sub_100012620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 40);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100003360(&qword_100025710, "~3");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000126E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 40) = -a2;
  }

  else
  {
    v7 = sub_100003360(&qword_100025710, "~3");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100012794()
{
  sub_1000128B8(319, &qword_100025780, &qword_100025788, "V3", &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000128B8(319, &unk_100025790, &qword_100025668, &qword_100019338, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100012870(uint64_t *a1, uint64_t *a2)
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

void sub_1000128B8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100012870(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000129D4()
{
  v1 = type metadata accessor for ApprovalSheetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  if (*(v0 + v3 + 40))
  {
    sub_10000BFE8((v0 + v3));
  }

  else
  {
    v6 = *v5;
  }

  v7 = (v5 + *(v1 + 20));
  v8 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {

    v9 = *(v8 + 24);
    v10 = sub_1000176E0();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
    sub_10000BFE8((v7 + *(v8 + 28)));
  }

  v11 = *(v7 + *(sub_100003360(&qword_100025710, "~3") + 28));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_100012B64()
{
  v1 = *(type metadata accessor for ApprovalSheetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_10000D4F4();
}

uint64_t sub_100012BC0()
{
  v1 = type metadata accessor for ApprovalSheetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  if (*(v0 + v3 + 40))
  {
    sub_10000BFE8((v0 + v3));
  }

  else
  {
    v7 = *v6;
  }

  v8 = (v6 + *(v1 + 20));
  v9 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {

    v10 = *(v9 + 24);
    v11 = sub_1000176E0();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
    sub_10000BFE8((v8 + *(v9 + 28)));
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v8 + *(sub_100003360(&qword_100025710, "~3") + 28));

  return _swift_deallocObject(v0, v13 + 8, v2 | 7);
}

uint64_t sub_100012D7C(uint64_t a1)
{
  v4 = *(type metadata accessor for ApprovalSheetView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000C1D0;

  return sub_10000DA00(a1, v7, v8, v1 + v5, v9, v10);
}

size_t sub_100012EB4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003360(&qword_100025810, &unk_100019550);
  v10 = *(sub_1000175F0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000175F0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_10001308C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003360(&unk_100025A70, &qword_100019568);
    v3 = sub_100017F80();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000A864(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1000131A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003360(&qword_100025528, &qword_1000191E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013210(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100013228(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003360(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100013290(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003360(&qword_100025838, &qword_100019588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100013300()
{
  result = qword_100025848;
  if (!qword_100025848)
  {
    sub_100012870(&qword_100025838, &qword_100019588);
    sub_10001354C(&qword_100025850, &qword_100025830, &qword_100019580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025848);
  }

  return result;
}

uint64_t sub_1000133B8(uint64_t a1)
{
  v2 = sub_100003360(&qword_100025838, &qword_100019588);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100013488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000134F0(uint64_t a1)
{
  v2 = type metadata accessor for ApprovalSheetViewControllerWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001354C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100012870(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013594(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1000135A8(char a1)
{
  v3 = *(type metadata accessor for ApprovalSheetViewControllerWrapper(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100011B68(a1, v4);
}

uint64_t sub_100013618()
{
  v1 = (type metadata accessor for ApprovalSheetViewControllerWrapper(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_1000176E0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  sub_10000BFE8((v0 + v3 + v1[9]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001371C(uint64_t a1)
{
  v3 = *(type metadata accessor for ApprovalSheetViewControllerWrapper(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100011E3C(a1, v4);
}

unint64_t sub_100013790()
{
  result = qword_1000258A0;
  if (!qword_1000258A0)
  {
    sub_100012870(&qword_1000257E0, &qword_1000194E8);
    sub_10001381C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258A0);
  }

  return result;
}

unint64_t sub_10001381C()
{
  result = qword_1000258A8;
  if (!qword_1000258A8)
  {
    sub_100012870(&qword_1000257D8, &qword_1000194E0);
    sub_1000138A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258A8);
  }

  return result;
}

unint64_t sub_1000138A8()
{
  result = qword_1000258B0;
  if (!qword_1000258B0)
  {
    sub_100012870(&qword_1000258B8, &qword_1000195B8);
    sub_10001392C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258B0);
  }

  return result;
}

unint64_t sub_10001392C()
{
  result = qword_1000258C0;
  if (!qword_1000258C0)
  {
    sub_100012870(&qword_1000258C8, &unk_1000195C0);
    sub_100012298(&qword_1000257D0, 255, type metadata accessor for ApprovalSheetViewControllerWrapper);
    sub_100013300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258C0);
  }

  return result;
}

uint64_t sub_1000139F4()
{
  v1[132] = v0;
  v2 = *(*(sub_100003360(&qword_100025500, &qword_1000191B0) - 8) + 64) + 15;
  v1[133] = swift_task_alloc();
  v3 = sub_1000174E0();
  v1[134] = v3;
  v4 = *(v3 - 8);
  v1[135] = v4;
  v5 = *(v4 + 64) + 15;
  v1[136] = swift_task_alloc();
  v1[137] = sub_100017DA0();
  v1[138] = sub_100017D90();
  v6 = sub_100017D70();
  v1[139] = v6;
  v1[140] = v7;

  return _swift_task_switch(sub_100013B5C, v6, v7);
}

uint64_t sub_100013B5C()
{
  v1 = *(v0 + 1056);
  v2 = [objc_allocWithZone(PKPaymentRequest) init];
  *(v0 + 1128) = v2;
  [v2 setRequestType:15];
  [v2 setConfirmationStyle:3];
  v3 = (v1 + OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_localizedContent);
  v5 = *(v1 + OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_localizedContent);
  v4 = *(v1 + OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_localizedContent + 8);
  v6 = sub_100017D00();
  [v2 setLocalizedNavigationTitle:v6];

  v7 = v3[4];
  v8 = v3[5];
  v9 = sub_100017D00();
  [v2 setLocalizedAuthorizingTitle:v9];

  sub_100003360(&qword_100025A40, &qword_100019688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100018D50;
  *(v0 + 1000) = sub_100017D10();
  *(v0 + 1008) = v11;
  sub_100017F00();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000033;
  *(inited + 80) = 0x800000010001A3F0;
  v12 = sub_100016C3C(inited);
  swift_setDeallocating();
  sub_10000C4D4(inited + 32, &qword_100025A48, &qword_100019690);
  v13 = objc_opt_self();
  *(v0 + 1048) = 0;
  v14 = [v13 archivedDataWithRootObject:v2 requiringSecureCoding:1 error:v0 + 1048];
  v15 = *(v0 + 1048);
  if (v14)
  {
    v16 = sub_1000174F0();
    v18 = v17;

    *(v0 + 1032) = sub_100017D10();
    *(v0 + 1040) = v19;
    sub_100017F00();
    *(v0 + 896) = &type metadata for Data;
    *(v0 + 872) = v16;
    *(v0 + 880) = v18;
    sub_10000A844((v0 + 872), (v0 + 904));
    sub_100017048(v16, v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1000168D0((v0 + 904), v0 + 704, isUniquelyReferenced_nonNull_native);
    sub_10001709C(v16, v18);
    sub_10000A7F0(v0 + 704);
  }

  else
  {
    v21 = v15;
    sub_1000174A0();

    swift_willThrow();
  }

  *(v0 + 1136) = v12;
  v22 = *(v0 + 1080);
  v23 = *(v0 + 1072);
  v24 = *(v0 + 1064);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_100019260;
  *(v0 + 936) = 0x656C746974;
  *(v0 + 944) = 0xE500000000000000;
  sub_100017F00();
  *(v25 + 96) = &type metadata for String;
  *(v25 + 72) = v5;
  *(v25 + 80) = v4;
  *(v0 + 952) = 0x6567617373656DLL;
  *(v0 + 960) = 0xE700000000000000;

  sub_100017F00();
  v27 = v3[2];
  v26 = v3[3];
  *(v25 + 168) = &type metadata for String;
  *(v25 + 144) = v27;
  *(v25 + 152) = v26;
  *(v0 + 968) = 0x63536E6565726373;
  *(v0 + 976) = 0xEB00000000656C61;

  sub_100017F00();
  PKScreenScale();
  *(v25 + 240) = &type metadata for CGFloat;
  *(v25 + 216) = v28;
  v29 = sub_100016C3C(v25);
  *(v0 + 1144) = v29;
  swift_setDeallocating();
  sub_100003360(&qword_100025A48, &qword_100019690);
  swift_arrayDestroy();
  v30 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
  sub_10000C2C4(v3 + *(v30 + 28), v24, &qword_100025500, &qword_1000191B0);
  if ((*(v22 + 48))(v24, 1, v23) == 1)
  {
    sub_10000C4D4(*(v0 + 1064), &qword_100025500, &qword_1000191B0);
    v31 = *(v0 + 1136);
    v32 = *(v0 + 1128);
    v33 = *(v0 + 1056);
    *(v0 + 984) = sub_100017D10();
    *(v0 + 992) = v34;
    sub_100017F00();
    *(v0 + 768) = sub_100003360(&qword_100025A50, &qword_100019698);
    *(v0 + 744) = v29;
    sub_10000A844((v0 + 744), (v0 + 776));
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000168D0((v0 + 776), v0 + 624, v35);
    sub_10000A7F0(v0 + 624);
    v36 = sub_100017D00();
    [v32 setClientViewSourceIdentifier:{v36, v31}];

    isa = sub_100017CB0().super.isa;

    [v32 setClientViewSourceParameter:isa];

    v38 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v32];
    *(v0 + 1192) = v38;
    [v38 setDelegate:v33];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1224;
    *(v0 + 24) = sub_100014800;
    v39 = swift_continuation_init();
    *(v0 + 552) = sub_100003360(&qword_100025A58, &qword_1000196A0);
    *(v0 + 528) = v39;
    *(v0 + 496) = _NSConcreteStackBlock;
    *(v0 + 504) = 1107296256;
    *(v0 + 512) = sub_100015290;
    *(v0 + 520) = &unk_1000214C0;
    [v38 presentWithCompletion:v0 + 496];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    (*(*(v0 + 1080) + 32))(*(v0 + 1088), *(v0 + 1064), *(v0 + 1072));
    *(v0 + 1152) = [objc_opt_self() sharedSession];
    v40 = async function pointer to NSURLSession.data(from:delegate:)[1];
    v41 = swift_task_alloc();
    *(v0 + 1160) = v41;
    *v41 = v0;
    v41[1] = sub_1000142EC;
    v42 = *(v0 + 1088);

    return NSURLSession.data(from:delegate:)(v42, 0);
  }
}

uint64_t sub_1000142EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v4;
  v8 = *v4;
  v10 = *(*v4 + 1160);
  v11 = *v4;

  v12 = v8[144];
  if (v3)
  {

    v13 = v9[140];
    v14 = v9[139];
    v15 = sub_100014FD0;
  }

  else
  {

    v9[146] = a3;
    v9[147] = a2;
    v9[148] = a1;
    v13 = v9[140];
    v14 = v9[139];
    v15 = sub_100014484;
  }

  return _swift_task_switch(v15, v14, v13);
}

uint64_t sub_100014484()
{
  v1 = v0;
  v2 = *(v0 + 1184);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1088);
  v6 = *(v0 + 1080);
  v7 = *(v0 + 1072);

  *(v0 + 1016) = 1852793705;
  *(v0 + 1024) = 0xE400000000000000;
  sub_100017F00();
  *(v0 + 832) = &type metadata for Data;
  *(v0 + 808) = v2;
  *(v0 + 816) = v3;
  sub_10000A844((v1 + 808), (v1 + 840));
  sub_100017048(v2, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000168D0((v1 + 840), v1 + 664, isUniquelyReferenced_nonNull_native);
  sub_10001709C(v2, v3);
  sub_10000A7F0(v0 + 664);
  (*(v6 + 8))(v5, v7);
  v9 = v4;
  v10 = *(v0 + 1136);
  v11 = *(v0 + 1128);
  v12 = *(v0 + 1056);
  *(v0 + 984) = sub_100017D10();
  *(v0 + 992) = v13;
  sub_100017F00();
  *(v0 + 768) = sub_100003360(&qword_100025A50, &qword_100019698);
  *(v0 + 744) = v9;
  sub_10000A844((v1 + 744), (v1 + 776));
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000168D0((v1 + 776), v1 + 624, v14);
  sub_10000A7F0(v0 + 624);
  v15 = sub_100017D00();
  [v11 setClientViewSourceIdentifier:v15];

  isa = sub_100017CB0().super.isa;

  [v11 setClientViewSourceParameter:isa];

  v17 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v11];
  *(v0 + 1192) = v17;
  [v17 setDelegate:v12];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 1224;
  *(v0 + 24) = sub_100014800;
  v18 = swift_continuation_init();
  *(v0 + 552) = sub_100003360(&qword_100025A58, &qword_1000196A0);
  *(v0 + 528) = v18;
  *(v0 + 496) = _NSConcreteStackBlock;
  *(v0 + 504) = 1107296256;
  *(v0 + 512) = sub_100015290;
  *(v0 + 520) = &unk_1000214C0;
  [v17 presentWithCompletion:?];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100014800()
{
  v1 = *(*v0 + 1120);
  v2 = *(*v0 + 1112);
  v3 = *v0;

  return _swift_task_switch(sub_100014934, v2, v1);
}

uint64_t sub_100014934()
{
  if (*(v0 + 1224) == 1)
  {
    v1 = *(v0 + 1096);
    v2 = *(v0 + 1056);
    v3 = sub_100017D90();
    *(v0 + 1200) = v3;
    v4 = swift_task_alloc();
    *(v0 + 1208) = v4;
    *(v4 + 16) = v2;
    v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v6 = swift_task_alloc();
    *(v0 + 1216) = v6;
    *v6 = v0;
    v6[1] = sub_100014AF0;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 1225, v3, &protocol witness table for MainActor, 0x29286E7572, 0xE500000000000000, sub_100017040, v4, &type metadata for Bool);
  }

  else
  {
    v7 = *(v0 + 1192);
    v8 = *(v0 + 1104);

    v9 = *(v0 + 1088);
    v10 = *(v0 + 1064);

    v11 = *(v0 + 8);

    return v11(0);
  }
}

uint64_t sub_100014AF0()
{
  v1 = *v0;
  v2 = *(*v0 + 1216);
  v3 = *(*v0 + 1208);
  v4 = *(*v0 + 1200);
  v8 = *v0;

  v5 = *(v1 + 1120);
  v6 = *(v1 + 1112);

  return _swift_task_switch(sub_100014C84, v6, v5);
}

uint64_t sub_100014C84()
{
  v1 = *(v0 + 1192);
  *(v0 + 1226) = *(v0 + 1225);
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_100014DD8;
  v2 = swift_continuation_init();
  *(v0 + 616) = sub_100003360(&qword_100025A60, &qword_1000196A8);
  *(v0 + 592) = v2;
  *(v0 + 560) = _NSConcreteStackBlock;
  *(v0 + 568) = 1107296256;
  *(v0 + 576) = sub_100015424;
  *(v0 + 584) = &unk_1000214E8;
  [v1 dismissWithCompletion:v0 + 560];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_100014DD8()
{
  v1 = *(*v0 + 1120);
  v2 = *(*v0 + 1112);
  v3 = *v0;

  return _swift_task_switch(sub_100014F0C, v2, v1);
}

uint64_t sub_100014F0C()
{
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1104);

  v3 = *(v0 + 1226);
  v4 = *(v0 + 1088);
  v5 = *(v0 + 1064);

  v6 = *(v0 + 8);

  return v6(v3);
}

uint64_t sub_100014FD0()
{
  v1 = v0;
  (*(v1[135] + 8))(v1[136], v1[134]);
  v2 = v0[143];
  v3 = v0[142];
  v4 = v0[141];
  v5 = v0[132];
  v0[123] = sub_100017D10();
  v0[124] = v6;
  sub_100017F00();
  v0[96] = sub_100003360(&qword_100025A50, &qword_100019698);
  v0[93] = v2;
  sub_10000A844(v1 + 93, v1 + 97);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000168D0(v1 + 97, (v1 + 78), isUniquelyReferenced_nonNull_native);
  sub_10000A7F0((v0 + 78));
  v8 = sub_100017D00();
  [v4 setClientViewSourceIdentifier:v8];

  isa = sub_100017CB0().super.isa;

  [v4 setClientViewSourceParameter:isa];

  v10 = [objc_allocWithZone(PKPaymentAuthorizationController) initWithPaymentRequest:v4];
  v0[149] = v10;
  [v10 setDelegate:v5];
  v0[2] = v0;
  v0[7] = v0 + 153;
  v0[3] = sub_100014800;
  v11 = swift_continuation_init();
  v0[69] = sub_100003360(&qword_100025A58, &qword_1000196A0);
  v0[66] = v11;
  v0[62] = _NSConcreteStackBlock;
  v0[63] = 1107296256;
  v0[64] = sub_100015290;
  v0[65] = &unk_1000214C0;
  [v10 presentWithCompletion:v0 + 62];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100015290(uint64_t a1, char a2)
{
  v3 = *sub_10000C038((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1000152EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003360(&qword_100025A38, &qword_100019678);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_100003360(&unk_100025980, &qword_1000191C8);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_finalizedContinuation;
  swift_beginAccess();
  sub_100016F5C(v7, a2 + v10);
  return swift_endAccess();
}

uint64_t sub_100015424(uint64_t a1)
{
  v1 = *sub_10000C038((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100015648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = sub_100017DA0();
  v4[5] = sub_100017D90();
  v6 = sub_100017D70();

  return _swift_task_switch(sub_1000156E4, v6, v5);
}

uint64_t sub_1000156E4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v0[7] = sub_100017D90();
  v7 = sub_100017D70();

  return _swift_task_switch(sub_100015790, v7, v6);
}

uint64_t sub_100015790()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[3];

  v3[OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_finalResult] = 1;
  v4 = [objc_allocWithZone(PKPaymentAuthorizationResult) initWithStatus:0 errors:0];

  (v2)[2](v2, v4);
  _Block_release(v2);

  v5 = v0[1];

  return v5();
}

void sub_1000158FC()
{
  v0 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1000159F0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000159F0()
{
  if (!qword_100025978)
  {
    sub_100012870(&unk_100025980, &qword_1000191C8);
    v0 = sub_100017ED0();
    if (!v1)
    {
      atomic_store(v0, &qword_100025978);
    }
  }
}

uint64_t sub_100015A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003360(&qword_100025500, &qword_1000191B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100015B38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003360(&qword_100025500, &qword_1000191B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100015BE8()
{
  sub_100015C6C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100015C6C()
{
  if (!qword_1000259F8)
  {
    sub_1000174E0();
    v0 = sub_100017ED0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000259F8);
    }
  }
}

uint64_t sub_100015CC4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100015D14()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000C1D0;

  return sub_100015648(v2, v3, v5, v4);
}

uint64_t sub_100015DD4(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000C540;

  return v7();
}

uint64_t sub_100015EBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000C540;

  return sub_100015DD4(v2, v3, v5);
}

uint64_t sub_100015F7C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000C1D0;

  return v8();
}

uint64_t sub_100016068()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000160A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000C540;

  return sub_100015F7C(a1, v4, v5, v7);
}

uint64_t sub_100016174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003360(&qword_100025A30, &qword_1000194F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10000C2C4(a3, v25 - v11, &qword_100025A30, &qword_1000194F0);
  v13 = sub_100017DC0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000C4D4(v12, &qword_100025A30, &qword_1000194F0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100017DB0();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_100017D70();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_100017D20() + 32;
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

    sub_10000C4D4(a3, &qword_100025A30, &qword_1000194F0);

    return v23;
  }

LABEL_8:
  sub_10000C4D4(a3, &qword_100025A30, &qword_1000194F0);
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

uint64_t sub_100016470()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000164A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000C540;

  return sub_100009FB8(a1, v5);
}

uint64_t sub_100016560(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000C1D0;

  return sub_100009FB8(a1, v5);
}

uint64_t sub_100016618(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003360(&qword_100025A68, qword_1000196B0);
  result = sub_100017F70();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_10000A844((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_10000A9A4(v24, &v37);
        sub_10000A794(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_100017EE0(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_10000A844(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

_OWORD *sub_1000168D0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10000A750(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100016A98();
      goto LABEL_7;
    }

    sub_100016618(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_10000A750(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10000A9A4(a2, v22);
      return sub_100016A1C(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_100017FC0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000BFE8(v17);

  return sub_10000A844(a1, v17);
}

_OWORD *sub_100016A1C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000A844(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_100016A98()
{
  v1 = v0;
  sub_100003360(&qword_100025A68, qword_1000196B0);
  v2 = *v0;
  v3 = sub_100017F60();
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
        v18 = 40 * v17;
        sub_10000A9A4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000A794(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10000A844(v22, (*(v4 + 56) + v17));
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

unint64_t sub_100016C3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003360(&qword_100025A68, qword_1000196B0);
    v3 = sub_100017F80();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000C2C4(v4, v13, &qword_100025A48, &qword_100019690);
      result = sub_10000A750(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000A844(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_100016D78()
{
  v1 = v0;
  v2 = sub_100003360(&qword_100025A38, &qword_100019678);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13[-v4];
  v6 = sub_100003360(&unk_100025980, &qword_1000191C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13[-v9];
  v11 = OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_finalizedContinuation;
  swift_beginAccess();
  if (!(*(v7 + 48))(v1 + v11, 1, v6))
  {
    (*(v7 + 16))(v10, v1 + v11, v6);
    v13[0] = *(v1 + OBJC_IVAR____TtC26ADAskForExceptionExtension22OsloAuthenticationTask_finalResult);
    sub_100017D80();
    (*(v7 + 8))(v10, v6);
  }

  (*(v7 + 56))(v5, 1, 1, v6);
  swift_beginAccess();
  sub_100016F5C(v5, v1 + v11);
  return swift_endAccess();
}

uint64_t sub_100016F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003360(&qword_100025A38, &qword_100019678);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016FCC(uint64_t a1)
{
  v2 = type metadata accessor for OsloAuthenticationTask.LocalizedContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100017048(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001709C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_100017140(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 userInterfaceStyle];
  v10 = objc_allocWithZone(UIColor);
  if (v9 == 2)
  {
    v11 = a2;
    v12 = a2;
    v13 = a3;
  }

  else
  {
    v11 = a4;
    v12 = a4;
    v13 = a5;
  }

  return [v10 initWithRed:v11 green:v12 blue:v13 alpha:1.0];
}

uint64_t sub_100017210()
{
  dlerror();
  v0 = abort_report_np();
  return sub_100017234(v0, v1, v2);
}

void sub_100017234(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 8);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[%{public}@] Mini product page failed with error: %{public}@", &v4, 0x16u);
}

void sub_1000172C0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Mini product page content size did invalidate", &v3, 0xCu);
}

void sub_10001733C(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 8);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "[%{public}@] Mini product page did present description", &v3, 0xCu);
}