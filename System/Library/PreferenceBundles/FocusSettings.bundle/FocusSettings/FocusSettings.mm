BOOL sub_271C(id a1, DNDMode *a2)
{
  v2 = a2;
  v3 = [(DNDMode *)v2 visibility]== &dword_0 + 1;
  v4 = +[FSUIPlatformEligibility isIntelligenceAvailable];
  v5 = [(DNDMode *)v2 semanticType];

  if (v5 == &dword_8 + 1)
  {
    return v3 & v4;
  }

  else
  {
    return v3;
  }
}

BOOL sub_280C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPlaceholder])
  {
    v4 = [v3 semanticType] == *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

NSNumber *__cdecl sub_3238(id a1, NSNumber *a2, DNDMode *a3)
{
  v4 = a2;
  if ([(DNDMode *)a3 visibility])
  {
    v5 = v4;
  }

  else
  {
    v5 = [NSNumber numberWithUnsignedInteger:[(NSNumber *)v4 unsignedIntegerValue]+ 1];
  }

  v6 = v5;

  return v6;
}

int64_t sub_32B0(id a1, DNDMode *a2, DNDMode *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(DNDMode *)v4 semanticType])
  {
    if ([(DNDMode *)v5 semanticType])
    {
      v6 = [(DNDMode *)v4 isPlaceholder];
      if (v6 == [(DNDMode *)v5 isPlaceholder])
      {
        v8 = [(DNDMode *)v4 name];
        v9 = [(DNDMode *)v5 name];
        v7 = [v8 localizedStandardCompare:v9];
      }

      else if ([(DNDMode *)v4 isPlaceholder])
      {
        v7 = 1;
      }

      else
      {
        v7 = -1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_34D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifiers];
    WeakRetained = v2;
  }
}

void sub_3B84(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_4CC8(id a1)
{
  qword_27A60 = [NSBundle bundleWithIdentifier:@"com.apple.FocusSettings"];

  _objc_release_x1();
}

void sub_56FC(uint64_t a1)
{
  v10 = [*(a1 + 32) objectForKey:@"path"];
  if ([v10 isEqual:@"setup"])
  {
    v2 = [*(a1 + 32) objectForKey:@"type"];
    v3 = [v2 integerValue];

    v4 = *(a1 + 40);
    if (v3)
    {
      v5 = [v4 _configuredModeForSemanticType:v3];
      v6 = v5;
      v7 = *(a1 + 40);
      if (v5)
      {
        v8 = [v5 modeIdentifier];
        [v7 showConfigurationForModeIdentifier:v8 animate:0];
      }

      else
      {
        [*(a1 + 40) _handleSetupRequestForSemanticType:v3];
      }
    }

    else
    {
      [v4 _presentSetupControllerForUnknownMode];
    }
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))();
  }
}

BOOL sub_5D24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 semanticType] == *(a1 + 32) && objc_msgSend(v3, "visibility") == 0;

  return v4;
}

int64_t sub_6BAC(id a1, DNDMode *a2, DNDMode *a3)
{
  v4 = a3;
  v5 = [(DNDMode *)a2 name];
  v6 = [(DNDMode *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_6DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6E00(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained navigationController];
  v3 = [_TtC13FocusSettings36FCUICustomModeWelcomeSwiftController welcomeControllerWithAllReservedModes:*(a1 + 32)];
  [v2 pushViewController:v3 animated:1];
}

void sub_6FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_6FE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [DNDMode alloc];
  v3 = [*(a1 + 32) name];
  v4 = [*(a1 + 32) modeIdentifier];
  v5 = [*(a1 + 32) symbolImageName];
  v6 = [*(a1 + 32) tintColorName];
  v7 = [v2 initWithName:v3 modeIdentifier:v4 symbolImageName:v5 tintColorName:v6 semanticType:{objc_msgSend(*(a1 + 32), "semanticType")}];

  v8 = [WeakRetained navigationController];
  v9 = [_TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController welcomeControllerWithMode:v7];
  [v8 pushViewController:v9 animated:1];
}

void FCUISettingsRegisterLogging()
{
  if (qword_27A70[0] != -1)
  {
    sub_13390();
  }
}

void sub_7198(id a1)
{
  FCUILogSettings = os_log_create("com.apple.focus.settings", "FocusSettings");

  _objc_release_x1();
}

uint64_t sub_770C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = [objc_opt_self() fcui_focusSettingsLocalizationBundle];
  v15._countAndFlagsBits = a4;
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  v17.value._countAndFlagsBits = a5;
  v17.value._object = a6;
  v12.super.isa = v11;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v13 = sub_13414(v16, v17, v12, v18, v15);

  return v13;
}

id sub_77C0()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_77F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusStatusConfigurationViewController();
  return objc_msgSendSuper2(&v2, "initWithNibName:bundle:", 0, 0);
}

id sub_789C(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void sub_7998()
{
  v1 = v0;
  v2 = sub_134C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v62 - v8;
  v10 = type metadata accessor for FocusStatusConfigurationViewController();
  v64.receiver = v1;
  v64.super_class = v10;
  objc_msgSendSuper2(&v64, "viewDidLoad");
  v11 = [v1 navigationItem];
  v12 = sub_7700();
  sub_770C(0x54535F5355434F46, 0xEC00000053555441, v12, v13, 0, 0);

  v14 = sub_13844();

  [v11 setTitle:v14];

  sub_134B4();
  (*(v3 + 16))(v7, v9, v2);
  v15 = objc_allocWithZone(sub_80B0(&qword_27570, &unk_16A20));
  v16 = sub_136A4();
  [v1 addChildViewController:v16];
  v17 = [v16 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  v19 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor:v19];

  v20 = [v16 view];
  if (!v20)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21 = [v1 view];
  if (!v21)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v21;
  [v21 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  [v20 setFrame:{v24, v26, v28, v30}];
  v31 = [v1 view];
  if (!v31)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v32 = v31;
  v33 = [v16 view];

  if (!v33)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v32 addSubview:v33];

  v34 = [v16 view];
  if (!v34)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v63 = v9;
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_80B0(&unk_278E0, qword_16AC0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_16A10;
  v36 = [v16 view];

  if (!v36)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v37 = [v36 topAnchor];

  v38 = [v1 view];
  if (!v38)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [v37 constraintEqualToAnchor:v40];
  *(v35 + 32) = v41;
  v42 = [v16 view];

  if (!v42)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v43 = [v42 leadingAnchor];

  v44 = [v1 view];
  if (!v44)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v45 = v44;
  v46 = [v44 leadingAnchor];

  v47 = [v43 constraintEqualToAnchor:v46];
  *(v35 + 40) = v47;
  v48 = [v1 view];
  if (!v48)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v49 = v48;
  v50 = [v48 trailingAnchor];

  v51 = [v16 view];
  if (!v51)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v52 = [v51 trailingAnchor];

  v53 = [v50 constraintEqualToAnchor:v52];
  *(v35 + 48) = v53;
  v54 = [v1 view];
  if (!v54)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v55 = v54;
  v56 = [v54 bottomAnchor];

  v57 = [v16 view];
  if (v57)
  {
    v58 = objc_opt_self();
    v59 = [v57 bottomAnchor];

    v60 = [v56 constraintEqualToAnchor:v59];
    *(v35 + 56) = v60;
    sub_80F8();
    isa = sub_138D4().super.isa;

    [v58 activateConstraints:isa];

    [v16 didMoveToParentViewController:v1];
    (*(v3 + 8))(v63, v2);
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_80B0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_80F8()
{
  result = qword_27578;
  if (!qword_27578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27578);
  }

  return result;
}

id sub_818C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_13844();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_8264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusStatusConfigurationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_8298@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_13674();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_80B0(&qword_275A8, "NA");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_9928(v2, &v17 - v11, &qword_275A8, "NA");
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_13694();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_13974();
    v16 = sub_136C4();
    sub_13594();

    sub_13664();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_8498@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_80B0(&qword_275A8, "NA");

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_851C(uint64_t a1)
{
  v2 = sub_13694();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_13654();
}

uint64_t sub_85E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  sub_80B0(&qword_275A8, "NA");
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for FocusCustomizationInvitationView();
  *(a4 + *(result + 20)) = a1;
  v9 = (a4 + *(result + 24));
  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t type metadata accessor for FocusCustomizationInvitationView()
{
  result = qword_27B10;
  if (!qword_27B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_86B4@<X0>(uint64_t a1@<X8>)
{
  v56 = sub_13484();
  v55 = *(v56 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v56);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_13474();
  v57 = *(v58 - 8);
  v6 = *(v57 + 64);
  __chkstk_darwin(v58);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_80B0(&qword_275B0, &qword_16AA8);
  v9 = *(*(v63 - 8) + 64);
  v10 = __chkstk_darwin(v63);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v50 - v13;
  v60 = sub_80B0(&qword_275B8, &qword_16AB0);
  v15 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v61 = &v50 - v16;
  v62 = sub_134A4();
  v17 = *(v62 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v62);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FocusCustomizationInvitationView();
  v22 = *(v21 + 20);
  v59 = v1;
  v23 = *(v1 + v22);
  v24 = [v23 semanticType];
  v64 = a1;
  if (v24 == &dword_8 + 1 || v24 == -1)
  {
    v25 = [v23 name];
    v58 = sub_13874();
    v57 = v26;

    v27 = [v23 symbolImageName];
    if (v27)
    {
      v28 = v27;
      sub_13874();
    }

    v34 = [v23 tintColorName];
    if (v34)
    {
      v35 = v34;
      sub_13874();
    }

    [v23 semanticType];
    v36 = (v59 + *(v21 + 24));
    v38 = *v36;
    v37 = v36[1];

    sub_13494();
    v39 = v62;
    (*(v17 + 16))(v61, v20, v62);
    swift_storeEnumTagMultiPayload();
    sub_9A94(&qword_275C0, &type metadata accessor for FocusInformationView);
    sub_9990();
    sub_136B4();
    return (*(v17 + 8))(v20, v39);
  }

  else
  {
    v29 = [v23 name];
    v54 = sub_13874();
    v53 = v30;

    v31 = [v23 symbolImageName];
    if (v31)
    {
      v32 = v31;
      v52 = sub_13874();
      v51 = v33;
    }

    else
    {
      v52 = 0;
      v51 = 0xE000000000000000;
    }

    v41 = [v23 tintColorName];
    if (v41)
    {
      v42 = v41;
      sub_13874();
    }

    [v23 semanticType];
    (*(v55 + 104))(v5, enum case for SemanticFocusInformationViewStyle.imagery(_:), v56);
    v43 = (v59 + *(v21 + 24));
    v45 = *v43;
    v44 = v43[1];

    sub_13464();
    sub_13794();
    sub_13634();
    (*(v57 + 32))(v12, v8, v58);
    v46 = &v12[*(v63 + 36)];
    v47 = v70;
    *(v46 + 4) = v69;
    *(v46 + 5) = v47;
    *(v46 + 6) = v71;
    v48 = v66;
    *v46 = v65;
    *(v46 + 1) = v48;
    v49 = v68;
    *(v46 + 2) = v67;
    *(v46 + 3) = v49;
    sub_98B8(v12, v14);
    sub_9928(v14, v61, &qword_275B0, &qword_16AA8);
    swift_storeEnumTagMultiPayload();
    sub_9A94(&qword_275C0, &type metadata accessor for FocusInformationView);
    sub_9990();
    sub_136B4();
    return sub_9ADC(v14);
  }
}

id sub_8EA0(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController_mode] = a1;
  v4 = a1;
  v5 = [v4 semanticType];
  if (v5 == &dword_8 + 1 || v5 + 1 == 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  v8 = sub_13844();
  v9 = sub_13844();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v8, v9, 0, v7);

  return v10;
}

void sub_8F6C()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FocusCustomizationInvitationView();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44.receiver = v0;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v7 = objc_opt_self();
  v8 = *&v0[OBJC_IVAR____TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController_mode];
  v9 = [v8 tintColorName];
  v10 = [v7 colorForColorName:v9];

  v11 = [v0 addBoldTrayButtonWithColor:v10];
  v12 = sub_7700();
  sub_770C(0xD000000000000023, 0x800000000001A4F0, v12, v13, 0, 0);

  v14 = sub_13844();

  [v11 setTitle:v14 forState:0];

  [v11 addTarget:v0 action:"_nextButtonPressed:" forControlEvents:64];
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  *v6 = swift_getKeyPath();
  sub_80B0(&qword_275A8, "NA");
  swift_storeEnumTagMultiPayload();
  *(v6 + *(v3 + 28)) = v8;
  v16 = (v6 + *(v3 + 32));
  *v16 = sub_9B7C;
  v16[1] = v15;
  v17 = objc_allocWithZone(sub_80B0(&qword_275E0, &qword_16AB8));
  v18 = v8;
  v19 = v0;
  v20 = sub_13624();
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v19 contentView];
  [v21 addSubview:v20];

  sub_80B0(&unk_278E0, qword_16AC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_16A10;
  v23 = [v20 leadingAnchor];
  v24 = [v19 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25];
  *(v22 + 32) = v26;
  v27 = [v20 trailingAnchor];
  v28 = [v19 contentView];
  v29 = [v28 trailingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29];
  *(v22 + 40) = v30;
  v31 = [v20 topAnchor];
  v32 = [v19 contentView];
  v33 = [v32 topAnchor];

  v34 = [objc_opt_self() currentDevice];
  v35 = [v34 userInterfaceIdiom];

  v36 = -36.0;
  if (v35 == &dword_0 + 1)
  {
    v36 = -60.0;
  }

  v37 = [v31 constraintEqualToAnchor:v33 constant:v36];

  *(v22 + 48) = v37;
  v38 = [v20 bottomAnchor];

  v39 = [v19 contentView];
  v40 = [v39 bottomAnchor];

  v41 = [v38 constraintEqualToAnchor:v40];
  *(v22 + 56) = v41;
  v42 = objc_opt_self();
  sub_9ED4(0, &qword_27578, NSLayoutConstraint_ptr);
  isa = sub_138D4().super.isa;

  [v42 activateConstraints:isa];
}

void sub_9528()
{
  v1 = [v0 setupNavigationController];
  if (v1)
  {
    v2 = v1;
    [v1 createDefaultModeConfigurationForMode:*&v0[OBJC_IVAR____TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController_mode]];
  }
}

id sub_9618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_13844();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_13844();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_13844();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id sub_9758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_13844();

  if (a4)
  {
    v12 = sub_13844();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id sub_9870()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_98B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_80B0(&qword_275B0, &qword_16AA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9928(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_80B0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_9990()
{
  result = qword_275C8;
  if (!qword_275C8)
  {
    sub_9A4C(&qword_275B0, &qword_16AA8);
    sub_9A94(&qword_275D0, &type metadata accessor for SemanticFocusInformationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_275C8);
  }

  return result;
}

uint64_t sub_9A4C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_9A94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_9ADC(uint64_t a1)
{
  v2 = sub_80B0(&qword_275B0, &qword_16AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_9B44()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_9B7C()
{
  v1 = *(v0 + 16);
  v2 = [v1 setupNavigationController];
  if (v2)
  {
    v3 = v2;
    [v2 createDefaultModeConfigurationForMode:*&v1[OBJC_IVAR____TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController_mode]];
  }
}

uint64_t sub_9C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_80B0(&qword_275E8, qword_16B18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_9D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_80B0(&qword_275E8, qword_16B18);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_9DD0()
{
  sub_9E7C();
  if (v0 <= 0x3F)
  {
    sub_9ED4(319, &unk_279A0, DNDMode_ptr);
    if (v1 <= 0x3F)
    {
      sub_9F1C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_9E7C()
{
  if (!qword_27648)
  {
    sub_13694();
    v0 = sub_135F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27648);
    }
  }
}

uint64_t sub_9ED4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_9F1C()
{
  result = qword_27650;
  if (!qword_27650)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27650);
  }

  return result;
}

unint64_t sub_9F94()
{
  result = qword_276B0;
  if (!qword_276B0)
  {
    sub_9A4C(&qword_276B8, &unk_16B90);
    sub_9A94(&qword_275C0, &type metadata accessor for FocusInformationView);
    sub_9990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_276B0);
  }

  return result;
}

id sub_A078()
{
  v0 = objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay);

  return [v0 init];
}

id sub_A0B0()
{
  v0 = objc_allocWithZone(FCUISettingsDeferredURLState);

  return [v0 init];
}

uint64_t sub_A0E8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = sub_80B0(&qword_276C0, &qword_16BA0);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v26 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v27 = a1;
  v11 = a2;
  v26[1] = sub_80B0(&qword_276C8, &qword_16BA8);
  v12 = sub_9A4C(&qword_276D0, &qword_16BB0);
  v13 = sub_9ED4(255, &unk_279A0, DNDMode_ptr);
  v14 = sub_9A4C(&qword_276D8, &qword_16BB8);
  v15 = sub_13554();
  v16 = sub_CB8C(&qword_276E0, &type metadata accessor for PreferencesControllerView);
  v31 = v15;
  v32 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_A8F0();
  v19 = sub_BA84(&qword_276F0, &qword_276D8, &qword_16BB8);
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v34 = OpaqueTypeConformance2;
  v35 = v18;
  v36 = v19;
  swift_getOpaqueTypeConformance2();
  sub_13814();
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 16) = v27;
  *(v20 + 24) = v11;
  sub_BA84(&qword_276F8, &qword_276C0, &qword_16BA0);
  v22 = v21;
  v23 = v11;
  v24 = v28;
  sub_137D4();
  return (*(v29 + 8))(v9, v24);
}

uint64_t sub_A3E0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = sub_13584();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_13554();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_80B0(&qword_276D0, &qword_16BB0);
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  __chkstk_darwin(v12);
  v15 = &v32 - v14;
  sub_9ED4(0, &qword_277C8, &off_207C0);
  v16 = [objc_allocWithZone(PSSpecifier) init];
  v32 = a1;
  [v16 setProperty:a1 forKey:PSListControllerCellHighlightingSelectionInvocationRelayKey];
  v33 = a2;
  [v16 setProperty:a2 forKey:@"FCUISettingsDeferredURLStateKey"];
  v17 = sub_13844();
  [v16 setProperty:v17 forKey:PSDataSourceClassKey];

  sub_13564();
  sub_13544();
  sub_13684();
  sub_9ED4(0, &qword_277D0, NSBundle_ptr);
  if (!sub_139A4())
  {
    v18 = [objc_opt_self() mainBundle];
  }

  v19 = sub_136D4();
  v21 = v20;
  v23 = v22;
  v24 = sub_CB8C(&qword_276E0, &type metadata accessor for PreferencesControllerView);
  sub_13734();
  sub_CBD8(v19, v21, v23 & 1);

  (*(v8 + 8))(v11, v7);
  sub_9ED4(0, &unk_279A0, DNDMode_ptr);
  v25 = swift_allocObject();
  v26 = v32;
  v27 = v33;
  *(v25 + 16) = v32;
  *(v25 + 24) = v27;
  v28 = v26;
  v29 = v27;
  sub_80B0(&qword_276D8, &qword_16BB8);
  v37 = v7;
  v38 = v24;
  swift_getOpaqueTypeConformance2();
  sub_A8F0();
  sub_BA84(&qword_276F0, &qword_276D8, &qword_16BB8);
  v30 = v35;
  sub_13744();

  return (*(v34 + 8))(v15, v30);
}

uint64_t sub_A8A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_A8F0()
{
  result = qword_276E8;
  if (!qword_276E8)
  {
    sub_9ED4(255, &unk_279A0, DNDMode_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_276E8);
  }

  return result;
}

id sub_A958@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_13584();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v13 = *a1;
  type metadata accessor for SettingsActivityViewController();
  v6 = [objc_allocWithZone(PSSpecifier) init];
  v7 = [v13 modeIdentifier];
  [v6 setIdentifier:v7];

  v8 = sub_CC04();
  v9 = *v8;
  v10 = *(v8 + 1);

  v11 = sub_13844();

  [v6 setProperty:v13 forKey:v11];

  sub_13564();
  sub_13544();
  *(a2 + *(sub_80B0(&qword_276D8, &qword_16BB8) + 52)) = v13;

  return v13;
}

uint64_t sub_AACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_13584();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  v8 = sub_13614();
  v4[24] = v8;
  v9 = *(v8 - 8);
  v4[25] = v9;
  v10 = *(v9 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v11 = sub_13424();
  v4[28] = v11;
  v12 = *(v11 - 8);
  v4[29] = v12;
  v13 = *(v12 + 64) + 15;
  v4[30] = swift_task_alloc();
  v14 = *(*(sub_80B0(&qword_277A0, &qword_16CA0) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v15 = sub_13404();
  v4[32] = v15;
  v16 = *(v15 - 8);
  v4[33] = v16;
  v17 = *(v16 + 64) + 15;
  v4[34] = swift_task_alloc();
  sub_13904();
  v4[35] = sub_138F4();
  v19 = sub_138E4();

  return _swift_task_switch(sub_AD50, v19, v18);
}

uint64_t sub_AD50()
{
  v128 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 144);

  sub_137F4();
  sub_133D4();
  (*(v7 + 8))(v5, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v9 = *(v0 + 216);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    sub_C224(*(v0 + 248));
    sub_137E4();
    sub_13804();
    (*(v11 + 8))(v9, v10);
  }

  else
  {
    v14 = *(v0 + 208);
    v15 = *(v0 + 144);
    (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 248), *(v0 + 256));
    sub_137E4();
    *(v0 + 56) = sub_133E4();
    *(v0 + 64) = v16;
    *(v0 + 72) = 47;
    *(v0 + 80) = 0xE100000000000000;
    sub_C28C();
    v17 = sub_139E4();

    v18 = 0;
    v19 = *(v17 + 16);
    v20 = &_swiftEmptyArrayStorage;
LABEL_4:
    v21 = (v17 + 40 + 16 * v18);
    while (v19 != v18)
    {
      if (v18 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_91;
      }

      v23 = *(v21 - 1);
      v22 = *v21;
      v21 += 2;
      ++v18;
      v24 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v24 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {

        v127 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_C8F8(0, *(v20 + 2) + 1, 1);
          v20 = v127;
        }

        v26 = *(v20 + 2);
        v25 = *(v20 + 3);
        if (v26 >= v25 >> 1)
        {
          sub_C8F8((v25 > 1), v26 + 1, 1);
          v20 = v127;
        }

        *(v20 + 2) = v26 + 1;
        v27 = &v20[16 * v26];
        *(v27 + 4) = v23;
        *(v27 + 5) = v22;
        goto LABEL_4;
      }
    }

    v28 = *(v20 + 2);
    if (!v28)
    {
      v37 = *(v0 + 272);
      sub_133F4();
      if (v38)
      {
        v39 = *(v0 + 152);

        v40 = sub_13844();

        [v39 setSpecifierIdentifierToScrollAndHighlight:v40];

        goto LABEL_93;
      }

      v28 = *(v20 + 2);
      if (!v28)
      {

        goto LABEL_93;
      }
    }

    v29 = (*(v0 + 176) + 8);
    while (1)
    {
      while (1)
      {
        v31 = *(v20 + 4);
        v30 = *(v20 + 5);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v28 - 1) > *(v20 + 3) >> 1)
        {
          v20 = sub_CA24(isUniquelyReferenced_nonNull_native, v28, 1, v20);
        }

        sub_CB30((v20 + 32));
        v33 = *(v20 + 2);
        memmove(v20 + 32, v20 + 48, 16 * v33 - 16);
        *(v20 + 2) = v33 - 1;
        if ((v31 != 0x7075746573 || v30 != 0xE500000000000000) && (sub_13B44() & 1) == 0)
        {
          break;
        }

        [*(v0 + 160) setShouldPresentSetupFlow:1];
        v28 = *(v20 + 2);
        if (!v28)
        {
          goto LABEL_28;
        }
      }

      if ((v31 != 0x7453207375636F46 || v30 != 0xEC00000073757461) && (sub_13B44() & 1) == 0)
      {
        break;
      }

      v34 = *(v0 + 208);
      v35 = *(v0 + 184);
      v36 = *(v0 + 168);
      type metadata accessor for FocusStatusConfigurationViewController();
      sub_13574();
      sub_CB8C(&qword_277B0, &type metadata accessor for PreferencesControllerRecipe);
      sub_13604();
      (*v29)(v35, v36);
      v28 = *(v20 + 2);
      if (!v28)
      {
LABEL_28:

        goto LABEL_93;
      }
    }

    v41 = sub_13844();
    v42 = [objc_opt_self() serviceForClientIdentifier:v41];

    *(v0 + 88) = 0;
    v43 = [v42 allModesReturningError:v0 + 88];
    v44 = *(v0 + 88);
    v126 = sub_9ED4(0, &unk_279A0, DNDMode_ptr);
    v116 = sub_A8F0();
    v45 = sub_13914();
    v118 = v44;

    v119 = v42;
    if ((v45 & 0xC000000000000001) == 0)
    {
      v62 = *(v45 + 32);
      v123 = ((1 << v62) + 63) >> 6;
      if ((v62 & 0x3Fu) <= 0xD)
      {
        goto LABEL_54;
      }

      goto LABEL_105;
    }

    v47 = &_swiftEmptySetSingleton;
    v127 = &_swiftEmptySetSingleton;
    sub_13A34();
    v48 = sub_13A94();
    if (!v48)
    {
LABEL_52:

      goto LABEL_69;
    }

LABEL_38:
    *(v0 + 128) = v48;
    swift_dynamicCast();
    v49 = [*(v0 + 120) visibility];
    v50 = *(v0 + 120);
    if (v49 == &dword_0 + 1)
    {

      goto LABEL_37;
    }

    v51 = *(v47 + 16);
    if (*(v47 + 24) <= v51)
    {
      sub_C2E0(v51 + 1);
      v47 = v127;
    }

    v45 = v50;
    v52 = sub_139B4(*(v47 + 40));
    v53 = v47 + 56;
    v54 = -1 << *(v47 + 32);
    v55 = v52 & ~v54;
    v56 = v55 >> 6;
    if (((-1 << v55) & ~*(v47 + 56 + 8 * (v55 >> 6))) != 0)
    {
      v57 = __clz(__rbit64((-1 << v55) & ~*(v47 + 56 + 8 * (v55 >> 6)))) | v55 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_51;
    }

    v58 = 0;
    v59 = (63 - v54) >> 6;
    while (++v56 != v59 || (v58 & 1) == 0)
    {
      v60 = v56 == v59;
      if (v56 == v59)
      {
        v56 = 0;
      }

      v58 |= v60;
      v61 = *(v53 + 8 * v56);
      if (v61 != -1)
      {
        v57 = __clz(__rbit64(~v61)) + (v56 << 6);
LABEL_51:
        *(v53 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
        *(*(v47 + 48) + 8 * v57) = v50;
        ++*(v47 + 16);
LABEL_37:
        v48 = sub_13A94();
        if (!v48)
        {
          goto LABEL_52;
        }

        goto LABEL_38;
      }
    }

    __break(1u);
    while (1)
    {
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_105:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }

LABEL_54:
        v122 = &v115;
        __chkstk_darwin(v46);
        v124 = &v115 - ((v63 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v124, v63);
        v125 = 0;
        v64 = 0;
        v65 = 1 << *(v45 + 32);
        v66 = -1;
        if (v65 < 64)
        {
          v66 = ~(-1 << v65);
        }

        v67 = v66 & *(v45 + 56);
        v68 = (v65 + 63) >> 6;
        while (v67)
        {
          v69 = __clz(__rbit64(v67));
          v67 &= v67 - 1;
LABEL_64:
          v72 = v69 | (v64 << 6);
          if ([*(*(v45 + 48) + 8 * v72) visibility] != &dword_0 + 1)
          {
            *&v124[(v72 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v72;
            if (__OFADD__(v125++, 1))
            {
              __break(1u);
LABEL_68:
              v47 = sub_C704(v124, v123, v125, v45);
              goto LABEL_69;
            }
          }
        }

        v70 = v64;
        while (1)
        {
          v64 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
            break;
          }

          if (v64 >= v68)
          {
            goto LABEL_68;
          }

          v71 = *(v45 + 56 + 8 * v64);
          ++v70;
          if (v71)
          {
            v69 = __clz(__rbit64(v71));
            v67 = (v71 - 1) & v71;
            goto LABEL_64;
          }
        }
      }

      v114 = swift_slowAlloc();
      v47 = sub_C674(v114, v123, v45, sub_BACC);

      v115 = 0;
LABEL_69:
      v124 = v47;
      if ((v47 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_13A34();
        sub_13944();
        v74 = *(v0 + 16);
        v75 = *(v0 + 24);
        v76 = *(v0 + 32);
        v77 = *(v0 + 40);
        v78 = *(v0 + 48);
      }

      else
      {
        v79 = -1 << *(v47 + 32);
        v75 = (v47 + 56);
        v80 = ~v79;
        v81 = -v79;
        v82 = v81 < 64 ? ~(-1 << v81) : -1;
        v78 = v82 & *(v47 + 56);

        v76 = v80;
        v77 = 0;
        v74 = v47;
      }

      v117 = v76;
      v83 = (v76 + 64) >> 6;
      v121 = v74;
      v122 = v75;
      v123 = v77;
      if (v74 < 0)
      {
        break;
      }

LABEL_76:
      v84 = v77;
      v85 = v78;
      v45 = v124;
      if (v78)
      {
LABEL_80:
        v86 = v78;
        v78 = (v85 - 1) & v85;
        v87 = *(*(v74 + 48) + ((v77 << 9) | (8 * __clz(__rbit64(v85)))));
        if (v87)
        {
          goto LABEL_84;
        }

        goto LABEL_91;
      }

      while (1)
      {
        v77 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        if (v77 >= v83)
        {
          goto LABEL_91;
        }

        v85 = v75[v77];
        ++v84;
        if (v85)
        {
          goto LABEL_80;
        }
      }
    }

    while (1)
    {
      v88 = sub_13A94();
      if (!v88)
      {
        break;
      }

      *(v0 + 112) = v88;
      swift_dynamicCast();
      v87 = *(v0 + 104);
      v86 = v78;
      if (!v87)
      {
        break;
      }

LABEL_84:
      v120 = v86;
      v125 = v87;
      v89 = [v87 modeIdentifier];
      v90 = sub_13874();
      v92 = v91;

      if (v90 == v31 && v92 == v30)
      {

LABEL_100:
        sub_CB84();

        v110 = v125;
        if ([v125 isPlaceholder])
        {
          v111 = *(v0 + 152);
          v112 = sub_13844();

          [v111 setSpecifierIdentifierToScrollAndSelect:v112];
        }

        else
        {
          v113 = *(v0 + 208);

          *(v0 + 96) = v110;
          sub_13604();
        }

        goto LABEL_92;
      }

      v94 = sub_13B44();

      if (v94)
      {
        goto LABEL_100;
      }

      v74 = v121;
      v75 = v122;
      v123 = v77;
      if ((v121 & 0x8000000000000000) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_91:

    sub_CB84();

LABEL_92:

LABEL_93:
    v96 = *(v0 + 264);
    v95 = *(v0 + 272);
    v97 = *(v0 + 256);
    v99 = *(v0 + 200);
    v98 = *(v0 + 208);
    v100 = *(v0 + 192);
    v101 = *(v0 + 136);
    sub_13804();
    (*(v99 + 8))(v98, v100);
    (*(v96 + 8))(v95, v97);
  }

  v102 = *(v0 + 272);
  v103 = *(v0 + 240);
  v104 = *(v0 + 248);
  v106 = *(v0 + 208);
  v105 = *(v0 + 216);
  v107 = *(v0 + 184);

  v108 = *(v0 + 8);

  return v108();
}

uint64_t sub_B9D0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_CBEC;

  return sub_AACC(a1, a2, v7, v6);
}

uint64_t sub_BA84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_9A4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_BB08()
{
  v0 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  [objc_allocWithZone(FCUISettingsDeferredURLState) init];
  return v0;
}

unint64_t sub_BB60()
{
  result = qword_27700;
  if (!qword_27700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27700);
  }

  return result;
}

uint64_t sub_BBD0@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_80B0(&qword_276C0, &qword_16BA0);
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v25 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v26 = v7;
  v10 = v8;
  v25[1] = sub_80B0(&qword_276C8, &qword_16BA8);
  v11 = sub_9A4C(&qword_276D0, &qword_16BB0);
  v12 = sub_9ED4(255, &unk_279A0, DNDMode_ptr);
  v13 = sub_9A4C(&qword_276D8, &qword_16BB8);
  v14 = sub_13554();
  v15 = sub_CB8C(&qword_276E0, &type metadata accessor for PreferencesControllerView);
  v30 = v14;
  v31 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_A8F0();
  v18 = sub_BA84(&qword_276F0, &qword_276D8, &qword_16BB8);
  v30 = v11;
  v31 = v12;
  v32 = v13;
  v33 = OpaqueTypeConformance2;
  v34 = v17;
  v35 = v18;
  swift_getOpaqueTypeConformance2();
  sub_13814();
  v19 = swift_allocObject();
  v20 = v26;
  *(v19 + 16) = v26;
  *(v19 + 24) = v10;
  sub_BA84(&qword_276F8, &qword_276C0, &qword_16BA0);
  v21 = v20;
  v22 = v10;
  v23 = v27;
  sub_137D4();
  return (*(v28 + 8))(v6, v23);
}

id sub_BEC4@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(PSListControllerCellHighlightingSelectionInvocationRelay) init];
  result = [objc_allocWithZone(FCUISettingsDeferredURLState) init];
  *a1 = v2;
  a1[1] = result;
  return result;
}

__n128 sub_BF44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_BF50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_BF98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_BFE4()
{
  sub_9A4C(&qword_276C0, &qword_16BA0);
  sub_BA84(&qword_276F8, &qword_276C0, &qword_16BA0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_C07C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_C130;

  return sub_AACC(a1, a2, v7, v6);
}

uint64_t sub_C130()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_C224(uint64_t a1)
{
  v2 = sub_80B0(&qword_277A0, &qword_16CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_C28C()
{
  result = qword_277A8;
  if (!qword_277A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_277A8);
  }

  return result;
}

uint64_t sub_C2E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_80B0(&qword_277B8, &qword_16CA8);
  result = sub_13AC4();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_139B4(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_C508(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_C704(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_C674(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_C508(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_C704(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_80B0(&qword_277B8, &qword_16CA8);
  result = sub_13AD4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_139B4(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_C8F8(char *a1, int64_t a2, char a3)
{
  result = sub_C918(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_C918(char *result, int64_t a2, char a3, char *a4)
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
    sub_80B0(&qword_277C0, &unk_16CB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_CA24(char *result, int64_t a2, char a3, char *a4)
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
    sub_80B0(&qword_277C0, &unk_16CB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_CB8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_CBD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_CC74()
{
  v0 = sub_13454();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_13444();
}

id sub_CCB8()
{
  v1 = OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_hostViewModel;
  v2 = sub_13454();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *&v0[v1] = sub_13444();
  *&v0[OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_cancellableBag] = &_swiftEmptySetSingleton;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SettingsActivityViewController();
  return objc_msgSendSuper2(&v6, "initWithNibName:bundle:", 0, 0);
}

void sub_CDF4()
{
  v1 = OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_hostViewModel;
  v2 = sub_13454();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + v1) = sub_13444();
  *(v0 + OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_cancellableBag) = &_swiftEmptySetSingleton;
  sub_13B04();
  __break(1u);
}

void sub_CF3C()
{
  v85 = sub_13534();
  v83 = *(v85 - 8);
  v1 = *(v83 + 64);
  __chkstk_darwin(v85);
  v82 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_13524();
  v81 = *(v87 - 8);
  v3 = *(v81 + 64);
  __chkstk_darwin(v87);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_80B0(&qword_277E8, &qword_16CF0);
  v88 = *(v6 - 1);
  v89 = v6;
  v7 = *(v88 + 64);
  __chkstk_darwin(v6);
  v84 = &v81 - v8;
  v92 = sub_80B0(&qword_277F0, &qword_16CF8);
  v90 = *(v92 - 8);
  v9 = *(v90 + 64);
  v10 = __chkstk_darwin(v92);
  v86 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = &v81 - v12;
  v13 = sub_80B0(&qword_277F8, &qword_16D00);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v81 - v16;
  v18 = type metadata accessor for SettingsActivityViewController();
  v95.receiver = v0;
  v95.super_class = v18;
  objc_msgSendSuper2(&v95, "viewDidLoad");
  v19 = *&v0[OBJC_IVAR____TtC13FocusSettings30SettingsActivityViewController_hostViewModel];
  sub_13434();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BA84(&qword_27800, &qword_277F8, &qword_16D00);
  sub_135E4();
  v20 = v0;

  (*(v14 + 8))(v17, v13);
  swift_beginAccess();
  sub_135D4();
  swift_endAccess();

  v21 = sub_DE74();
  if (v21)
  {
    v22 = v21;
    v23 = [v21 modeIdentifier];
    sub_13874();

    sub_13514();
    v25 = v82;
    v24 = v83;
    v26 = v85;
    (*(v83 + 104))(v82, enum case for ActivityConfigurationContext.iosSettings(_:), v85);
    v27 = sub_ED64(&qword_27808, &type metadata accessor for ActivityDetailView);
    v28 = v84;
    v29 = v87;
    sub_136F4();
    (*(v24 + 8))(v25, v26);
    (*(v81 + 8))(v5, v29);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v93 = v29;
    v94 = v27;
    swift_getOpaqueTypeConformance2();
    v30 = v91;
    v31 = v89;
    sub_136E4();

    (*(v88 + 8))(v28, v31);

    (*(v90 + 16))(v86, v30, v92);
    v32 = objc_allocWithZone(sub_80B0(&qword_27810, qword_16D08));
    v33 = sub_136A4();
    [v20 addChildViewController:v33];
    v34 = [v33 view];
    if (v34)
    {
      v35 = v34;
      v36 = [objc_opt_self() clearColor];
      [v35 setBackgroundColor:v36];

      v37 = [v33 view];
      if (v37)
      {
        v38 = [v20 view];
        if (v38)
        {
          v39 = v38;
          [v38 bounds];
          v41 = v40;
          v43 = v42;
          v45 = v44;
          v47 = v46;

          [v37 setFrame:{v41, v43, v45, v47}];
          v48 = [v20 view];
          if (v48)
          {
            v49 = v48;
            v50 = [v33 view];

            if (v50)
            {
              [v49 addSubview:v50];

              v51 = [v33 view];
              if (v51)
              {
                v89 = v22;
                [v51 setTranslatesAutoresizingMaskIntoConstraints:0];

                sub_80B0(&unk_278E0, qword_16AC0);
                v52 = swift_allocObject();
                *(v52 + 16) = xmmword_16A10;
                v53 = [v33 view];

                if (v53)
                {
                  v54 = [v53 topAnchor];

                  v55 = [v20 view];
                  if (v55)
                  {
                    v56 = v55;
                    v57 = [v55 topAnchor];

                    v58 = [v54 constraintEqualToAnchor:v57];
                    *(v52 + 32) = v58;
                    v59 = [v33 view];

                    if (v59)
                    {
                      v60 = [v59 leadingAnchor];

                      v61 = [v20 view];
                      if (v61)
                      {
                        v62 = v61;
                        v63 = [v61 leadingAnchor];

                        v64 = [v60 constraintEqualToAnchor:v63];
                        *(v52 + 40) = v64;
                        v65 = [v20 view];
                        if (v65)
                        {
                          v66 = v65;
                          v67 = [v65 trailingAnchor];

                          v68 = [v33 view];
                          if (v68)
                          {
                            v69 = [v68 trailingAnchor];

                            v70 = [v67 constraintEqualToAnchor:v69];
                            *(v52 + 48) = v70;
                            v71 = [v20 view];
                            if (v71)
                            {
                              v72 = v71;
                              v73 = [v71 bottomAnchor];

                              v74 = [v33 view];
                              if (v74)
                              {
                                v75 = objc_opt_self();
                                v76 = [v74 bottomAnchor];

                                v77 = [v73 constraintEqualToAnchor:v76];
                                *(v52 + 56) = v77;
                                sub_9ED4(0, &qword_27578, NSLayoutConstraint_ptr);
                                isa = sub_138D4().super.isa;

                                [v75 activateConstraints:isa];

                                [v33 didMoveToParentViewController:v20];
                                v79 = [v20 navigationItem];
                                v80 = sub_E7B0();
                                [v79 setScrollEdgeAppearance:v80];

                                (*(v90 + 8))(v91, v92);
                                return;
                              }

LABEL_31:
                              __break(1u);
                              return;
                            }

LABEL_30:
                            __break(1u);
                            goto LABEL_31;
                          }

LABEL_29:
                          __break(1u);
                          goto LABEL_30;
                        }

LABEL_28:
                        __break(1u);
                        goto LABEL_29;
                      }

LABEL_27:
                      __break(1u);
                      goto LABEL_28;
                    }

LABEL_26:
                    __break(1u);
                    goto LABEL_27;
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
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_DA9C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DAD4(uint64_t *a1, uint64_t a2)
{
  v4 = sub_137A4();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_137C4();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v18);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  sub_9ED4(0, &qword_27870, OS_dispatch_queue_ptr);
  v14 = sub_13984();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = v12;
  v15[4] = v13;
  aBlock[4] = sub_EB88;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_DDE8;
  aBlock[3] = &unk_212E0;
  v16 = _Block_copy(aBlock);

  sub_137B4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_ED64(&qword_27878, &type metadata accessor for DispatchWorkItemFlags);
  sub_80B0(&qword_27880, &qword_16D70);
  sub_BA84(&qword_27888, &qword_27880, &qword_16D70);
  sub_13A04();
  sub_13994();
  _Block_release(v16);

  (*(v19 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v18);
}

uint64_t sub_DDE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_DE74()
{
  result = [v0 specifier];
  if (result)
  {
    v2 = result;
    v3 = sub_13844();
    v4 = [v2 propertyForKey:v3];

    if (v4)
    {
      sub_139F4();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      sub_9ED4(0, &unk_279A0, DNDMode_ptr);
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
      sub_EAE8(v8, &qword_27868, &qword_16D68);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_DFA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];

    if (v2)
    {
    }
  }
}

id sub_E090()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsActivityViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_E118(uint64_t a1, id *a2)
{
  result = sub_13854();
  *a2 = 0;
  return result;
}

uint64_t sub_E190(uint64_t a1, id *a2)
{
  v3 = sub_13864();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_E210@<X0>(void *a1@<X8>)
{
  sub_13874();
  v2 = sub_13844();

  *a1 = v2;
  return result;
}

uint64_t sub_E254()
{
  v1 = *v0;
  sub_13874();
  v2 = sub_138C4();

  return v2;
}

uint64_t sub_E290()
{
  v1 = *v0;
  sub_13874();
  sub_13894();
}

Swift::Int sub_E2E4()
{
  v1 = *v0;
  sub_13874();
  sub_13B64();
  sub_13894();
  v2 = sub_13B74();

  return v2;
}

uint64_t sub_E358(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_13874();
  v6 = v5;
  if (v4 == sub_13874() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_13B44();
  }

  return v9 & 1;
}

uint64_t sub_E3E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_13844();

  *a2 = v5;
  return result;
}

uint64_t sub_E428@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_13874();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_E454(uint64_t a1)
{
  v2 = sub_ED64(&qword_27858, type metadata accessor for Key);
  v3 = sub_ED64(&unk_278B0, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_E510(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_13874();
  sub_13B64();
  sub_13894();
  v4 = sub_13B74();

  return sub_E5A4(a1, v4);
}

unint64_t sub_E5A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_13874();
      v9 = v8;
      if (v7 == sub_13874() && v9 == v10)
      {
        break;
      }

      v12 = sub_13B44();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_E6A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_80B0(&qword_27860, &qword_16D60);
    v3 = sub_13B14();
    v4 = a1 + 32;

    while (1)
    {
      sub_EA68(v4, &v11);
      v5 = v11;
      result = sub_E510(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_EAD8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

id sub_E7B0()
{
  v0 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v0 configureWithTransparentBackground];
  sub_80B0(&qword_27840, &qword_16D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_16CC0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v2 = objc_opt_self();
  v3 = NSForegroundColorAttributeName;
  v4 = [v2 clearColor];
  v5 = sub_9ED4(0, &qword_27848, UIColor_ptr);
  *(inited + 64) = v5;
  *(inited + 40) = v4;
  sub_E6A8(inited);
  swift_setDeallocating();
  sub_EAE8(inited + 32, &qword_27850, &qword_16D58);
  type metadata accessor for Key();
  sub_ED64(&qword_27858, type metadata accessor for Key);
  isa = sub_13824().super.isa;

  [v0 setTitleTextAttributes:isa];

  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_16CC0;
  *(v7 + 32) = v3;
  v8 = [v2 clearColor];
  *(v7 + 64) = v5;
  *(v7 + 40) = v8;
  sub_E6A8(v7);
  swift_setDeallocating();
  sub_EAE8(v7 + 32, &qword_27850, &qword_16D58);
  v9 = sub_13824().super.isa;

  [v0 setLargeTitleTextAttributes:v9];

  return v0;
}

void type metadata accessor for Key()
{
  if (!qword_27890)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27890);
    }
  }
}

uint64_t sub_EA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_80B0(&qword_27850, &qword_16D58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_EAD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_EAE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_80B0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_EB48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_EB88()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [v5 navigationItem];
    v7 = sub_13844();
    [v6 setTitle:v7];

    v8 = [v5 navigationItem];
    v9 = sub_E7B0();
    [v8 setScrollEdgeAppearance:v9];
  }
}

uint64_t sub_EC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_ED64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_EDC8(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_EE20(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_EE6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_EE9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_EEF4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_EF24(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_EF7C()
{
  sub_80B0(&qword_278C0, &qword_16F40);
  sub_13754();
  return v1;
}

uint64_t sub_F030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v47 = sub_134E4();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v47);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13904();
  sub_F4B8(v1, &v49);
  v7 = sub_138F4();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  v9 = *(v1 + 80);
  *(v8 + 96) = *(v1 + 64);
  *(v8 + 112) = v9;
  *(v8 + 128) = *(v1 + 96);
  *(v8 + 144) = *(v1 + 112);
  v10 = *(v1 + 16);
  *(v8 + 32) = *v1;
  *(v8 + 48) = v10;
  v11 = *(v1 + 48);
  *(v8 + 64) = *(v1 + 32);
  *(v8 + 80) = v11;
  sub_F4B8(v1, &v49);
  v12 = sub_138F4();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  v14 = *(v1 + 80);
  *(v13 + 96) = *(v1 + 64);
  *(v13 + 112) = v14;
  *(v13 + 128) = *(v1 + 96);
  *(v13 + 144) = *(v1 + 112);
  v15 = *(v1 + 16);
  *(v13 + 32) = *v1;
  *(v13 + 48) = v15;
  v16 = *(v1 + 48);
  *(v13 + 64) = *(v1 + 32);
  *(v13 + 80) = v16;
  sub_13784();
  v45 = *(&v49 + 1);
  v46 = v49;
  v43 = v51;
  v44 = v50;
  sub_F4B8(v1, &v49);
  v17 = sub_138F4();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = &protocol witness table for MainActor;
  v19 = *(v1 + 80);
  *(v18 + 96) = *(v1 + 64);
  *(v18 + 112) = v19;
  *(v18 + 128) = *(v1 + 96);
  *(v18 + 144) = *(v1 + 112);
  v20 = *(v1 + 16);
  *(v18 + 32) = *v1;
  *(v18 + 48) = v20;
  v21 = *(v1 + 48);
  *(v18 + 64) = *(v1 + 32);
  *(v18 + 80) = v21;
  sub_F4B8(v1, &v49);
  v22 = sub_138F4();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = &protocol witness table for MainActor;
  v24 = *(v1 + 80);
  *(v23 + 96) = *(v1 + 64);
  *(v23 + 112) = v24;
  *(v23 + 128) = *(v1 + 96);
  *(v23 + 144) = *(v1 + 112);
  v25 = *(v1 + 16);
  *(v23 + 32) = *v1;
  *(v23 + 48) = v25;
  v26 = *(v1 + 48);
  *(v23 + 64) = *(v1 + 32);
  *(v23 + 80) = v26;
  sub_80B0(&qword_278C0, &qword_16F40);
  sub_13784();
  v42[1] = v49;
  sub_F4B8(v1, &v49);
  v27 = sub_138F4();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = &protocol witness table for MainActor;
  v29 = *(v1 + 80);
  *(v28 + 96) = *(v1 + 64);
  *(v28 + 112) = v29;
  *(v28 + 128) = *(v1 + 96);
  *(v28 + 144) = *(v1 + 112);
  v30 = *(v1 + 16);
  *(v28 + 32) = *v1;
  *(v28 + 48) = v30;
  v31 = *(v1 + 48);
  *(v28 + 64) = *(v1 + 32);
  *(v28 + 80) = v31;
  sub_F4B8(v1, &v49);
  v32 = sub_138F4();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = &protocol witness table for MainActor;
  v34 = *(v2 + 80);
  *(v33 + 96) = *(v2 + 64);
  *(v33 + 112) = v34;
  *(v33 + 128) = *(v2 + 96);
  *(v33 + 144) = *(v2 + 112);
  v35 = *(v2 + 16);
  *(v33 + 32) = *v2;
  *(v33 + 48) = v35;
  v36 = *(v2 + 48);
  *(v33 + 64) = *(v2 + 32);
  *(v33 + 80) = v36;
  sub_13784();
  v42[0] = v49;
  (*(v3 + 104))(v6, enum case for ActivityEditView.Use.setup(_:), v47);
  v37 = *v2;
  v38 = *(v2 + 8);
  v40 = *(v2 + 16);
  v39 = *(v2 + 24);

  return sub_134F4();
}

uint64_t sub_F4F4@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v8 = *(v1 + 80);
  v10 = *(v1 + 96);
  sub_80B0(&qword_279E8, &qword_17120);
  sub_13764();
  v4(v6, v7, 0);

  v9 = *(v1 + 80);
  v11 = *(v1 + 96);
  result = sub_13764();
  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t sub_F5B8(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);

  sub_80B0(&qword_279E8, &qword_17120);
  sub_13774();
  v5 = *(v1 + 72);
  return (*(v2 + 64))(v3, v4, 0);
}

uint64_t sub_F644@<X0>(uint64_t *a1@<X8>)
{
  v12 = *(v1 + 104);
  v13 = *(v1 + 120);
  sub_80B0(&unk_279F0, &qword_17128);
  sub_13764();
  v3 = v11;
  if (v11)
  {
    v4 = v10;
  }

  else
  {
    v7 = *(v1 + 32);
    v4 = sub_134D4();
    v3 = v8;
  }

  v6 = *(v1 + 64);
  v5 = *(v1 + 72);

  v6(v4, v3, 1);

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t *sub_F704(uint64_t *result)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;
    v8 = *(v1 + 104);
    v9 = *(v1 + 120);
    v6 = *result;
    v7 = result[1];

    sub_80B0(&unk_279F0, &qword_17128);
    v4 = v1;
    sub_13774();
    v5 = *(v1 + 72);
    return (*(v4 + 64))(v3, v2, 1);
  }

  return result;
}

uint64_t sub_F798@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v8 = *(v1 + 128);
  v10 = *(v1 + 144);
  sub_80B0(&qword_279E8, &qword_17120);
  sub_13764();
  v4(v6, v7, 2);

  v9 = *(v1 + 128);
  v11 = *(v1 + 144);
  result = sub_13764();
  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t sub_F85C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[14];

  v9 = v0[15];

  v10 = v0[17];

  v11 = v0[18];

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t *sub_F8E4(uint64_t *result)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *result;
    v8 = *(v1 + 128);
    v9 = *(v1 + 144);
    v6 = *result;
    v7 = result[1];

    sub_80B0(&qword_279E8, &qword_17120);
    v4 = v1;
    sub_13774();
    v5 = *(v1 + 72);
    return (*(v4 + 64))(v3, v2, 2);
  }

  return result;
}

__n128 sub_F978@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_13754();
  sub_80B0(&qword_278C0, &qword_16F40);
  sub_13754();
  sub_13754();
  result = v15;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = v15;
  *(a7 + 64) = v16;
  *(a7 + 72) = v15;
  *(a7 + 88) = v16;
  *(a7 + 96) = v15;
  *(a7 + 112) = v16;
  return result;
}

uint64_t sub_FA94@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + 14);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_F030(a1);
}

id sub_FB20(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_symbolImageName];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_tintColorName];
  *v6 = 0;
  v6[1] = 0;
  v1[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_isContentScrolling] = 0;
  *&v1[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_keyboardDismissalTapRecognizer] = 0;
  *&v1[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_currentModes] = a1;
  v7 = sub_13844();
  v8 = sub_13844();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithTitle:detailText:icon:contentLayout:", v7, v8, 0, 3);

  return v9;
}

id sub_FC24()
{
  v1 = objc_allocWithZone(v0);

  return sub_FB20(v2);
}

void sub_FCE4()
{
  v46.receiver = v0;
  v46.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v46, "viewDidLoad");
  v1 = sub_7700();
  sub_770C(0xD00000000000001CLL, 0x800000000001A830, v1, v2, 0, 0);

  v3 = sub_13844();

  [v0 setHeaderViewTitle:v3];

  v4 = [v0 addBoldTrayButton];
  v5 = sub_7700();
  sub_770C(0xD000000000000016, 0x800000000001A850, v5, v6, 0, 0);

  v7 = sub_13844();

  [v4 setTitle:v7 forState:0];

  [v4 addTarget:v0 action:"_saveButtonPressed:" forControlEvents:64];
  v8 = OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_currentModes;
  v9 = *&v0[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_currentModes];

  sub_10370(v10);
  v12 = v11;

  sub_1222C(v12);

  v13 = *&v0[v8];

  v15 = sub_10608(v14);

  sub_1222C(v15);

  *(swift_allocObject() + 16) = v0;
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  *(v16 + 24) = v4;
  v17 = v0;
  v18 = v4;
  sub_13754();
  sub_80B0(&qword_278C0, &qword_16F40);
  sub_13754();
  sub_13754();
  v19 = objc_allocWithZone(sub_80B0(&qword_278D8, qword_16F48));
  v20 = sub_13624();
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v17 contentView];
  [v21 addSubview:v20];

  sub_80B0(&unk_278E0, qword_16AC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_16A10;
  v23 = [v20 leadingAnchor];
  v24 = [v17 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25];
  *(v22 + 32) = v26;
  v27 = [v20 trailingAnchor];
  v28 = [v17 contentView];
  v29 = [v28 trailingAnchor];

  v30 = [v27 constraintEqualToAnchor:v29];
  *(v22 + 40) = v30;
  v31 = [v20 topAnchor];
  v32 = [v17 contentView];
  v33 = [v32 topAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  *(v22 + 48) = v34;
  v35 = [v20 bottomAnchor];

  v36 = [v17 contentView];
  v37 = [v36 bottomAnchor];

  v38 = [v35 constraintEqualToAnchor:v37];
  *(v22 + 56) = v38;
  v39 = objc_opt_self();
  sub_9ED4(0, &qword_27578, NSLayoutConstraint_ptr);
  isa = sub_138D4().super.isa;
  [v39 activateConstraints:isa];

  sub_109A8(v18);
  v41 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v17 action:"_tapped"];
  [v41 setDelegate:v17];
  v42 = *&v17[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_keyboardDismissalTapRecognizer];
  *&v17[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_keyboardDismissalTapRecognizer] = v41;
  v43 = v41;

  v44 = [v17 view];
  if (v44)
  {
    v45 = v44;

    [v45 addGestureRecognizer:v43];
  }

  else
  {
    __break(1u);
  }
}

void sub_10370(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_13A34();
    sub_9ED4(0, &unk_279A0, DNDMode_ptr);
    sub_A8F0();
    sub_13944();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = &_swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!sub_13A94() || (sub_9ED4(0, &unk_279A0, DNDMode_ptr), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_CB84();
      return;
    }

LABEL_17:
    v12 = [v11 symbolImageName];
    if (v12)
    {
      v13 = v12;
      v19 = sub_13874();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_CA24(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_CA24((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_10608(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_13A34();
    sub_9ED4(0, &unk_279A0, DNDMode_ptr);
    sub_A8F0();
    sub_13944();
    result = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = &_swiftEmptyArrayStorage;
  v22 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(result + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_22:
      sub_CB84();
      return v9;
    }

    while (1)
    {
      v15 = [v14 name];
      v16 = sub_13874();
      v18 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_CA24(0, *(v9 + 2) + 1, 1, v9);
      }

      v20 = *(v9 + 2);
      v19 = *(v9 + 3);
      if (v20 >= v19 >> 1)
      {
        v9 = sub_CA24((v19 > 1), v20 + 1, 1, v9);
      }

      *(v9 + 2) = v20 + 1;
      v21 = &v9[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      v4 = v12;
      v5 = v13;
      result = v22;
      if ((v22 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_13A94())
      {
        sub_9ED4(0, &unk_279A0, DNDMode_ptr);
        swift_dynamicCast();
        v14 = v28;
        v12 = v4;
        v13 = v5;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_108D4()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];

  return 0;
}

id sub_109A8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName + 8);
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_symbolImageName + 8)) != 0 && ((v2 & 0x2000000000000000) != 0 ? (v4 = HIBYTE(v2) & 0xF) : (v4 = *(v1 + OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName) & 0xFFFFFFFFFFFFLL), v4))
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_symbolImageName) & 0xFFFFFFFFFFFFLL;
    }

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return [a1 setEnabled:v6];
}

uint64_t sub_10A18()
{
  v1 = *(v0 + OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_currentModes);

  sub_10A84(v2);
  v4 = v3;

  v5 = sub_1222C(v4);

  return v5;
}

void sub_10A84(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_13A74();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = &_swiftEmptyArrayStorage;
    sub_C8F8(0, v2 & ~(v2 >> 63), 0);
    v37 = &_swiftEmptyArrayStorage;
    if (v35)
    {
      v3 = sub_13A24();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_13A14();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_12008(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 modeIdentifier];
        v15 = sub_13874();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          sub_C8F8((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        v18[2] = v20 + 1;
        v21 = &v18[2 * v20];
        v21[4] = v15;
        v21[5] = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_13A44())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          sub_80B0(&unk_279D0, &unk_17108);
          v7 = sub_13934();
          sub_13AA4();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_131B4(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_131B4(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_131B4(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_10DF4()
{
  if (qword_27F20 != -1)
  {
    swift_once();
  }

  v0 = sub_135C4();

  return sub_12DCC(v0, qword_27FB8);
}

uint64_t sub_11074()
{
  v0 = sub_135C4();
  sub_13044(v0, qword_27FB8);
  sub_12DCC(v0, qword_27FB8);
  return sub_135B4();
}

uint64_t sub_110F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F20 != -1)
  {
    swift_once();
  }

  v2 = sub_135C4();
  v3 = sub_12DCC(v2, qword_27FB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1119C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_11268(v11, 0, 0, 1, a1, a2);
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
    sub_130F4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_130A8(v11);
  return v7;
}

unint64_t sub_11268(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_11374(a5, a6);
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
    result = sub_13AF4();
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

char *sub_11374(uint64_t a1, unint64_t a2)
{
  v4 = sub_113C0(a1, a2);
  sub_114F0(&off_21340);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_113C0(uint64_t a1, unint64_t a2)
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

  v6 = sub_115DC(v5, 0);
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

  result = sub_13AF4();
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
        v10 = sub_138B4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_115DC(v10, 0);
        result = sub_13AE4();
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

uint64_t sub_114F0(uint64_t result)
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

  result = sub_11650(result, v12, 1, v3);
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

void *sub_115DC(uint64_t a1, uint64_t a2)
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

  sub_80B0(&unk_279B0, ".?");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_11650(char *result, int64_t a2, char a3, char *a4)
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
    sub_80B0(&unk_279B0, ".?");
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

uint64_t sub_11744(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_13B64();
  sub_13894();
  v9 = sub_13B74();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_13B44() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_11AF4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_11894(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_80B0(&qword_279E0, &qword_17118);
  result = sub_13AC4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_13B64();
      sub_13894();
      result = sub_13B74();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_11AF4(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_11894(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_11C74();
      goto LABEL_16;
    }

    sub_11DD0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_13B64();
  sub_13894();
  result = sub_13B74();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_13B44();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_13B54();
  __break(1u);
  return result;
}

void *sub_11C74()
{
  v1 = v0;
  sub_80B0(&qword_279E0, &qword_17118);
  v2 = *v0;
  v3 = sub_13AB4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_11DD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_80B0(&qword_279E0, &qword_17118);
  result = sub_13AC4();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_13B64();

      sub_13894();
      result = sub_13B74();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_12008(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_13A84();
      sub_9ED4(0, &unk_279A0, DNDMode_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_9ED4(0, &unk_279A0, DNDMode_ptr);
    if (sub_13A54() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_13A64();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_139B4(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_139C4();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_1222C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_13924();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_11744(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_122C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_12310()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_12350(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = (v4 + *(&off_215D0)[a3]);
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  return sub_109A8(v5);
}

unint64_t sub_123B4()
{
  v0 = sub_133C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_13884();
  v10 = v9;
  sub_133A4();
  sub_133B4();
  v11 = *(v1 + 8);
  v11(v5, v0);
  v20 = v8;
  v21 = v10;
  sub_C28C();
  v12 = sub_139D4();

  v20 = v12;
  sub_80B0(&qword_279C0, &qword_17100);
  sub_13150();
  v13 = sub_13834();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17._countAndFlagsBits = v13;
  }

  else
  {

    v15 = 0xE100000000000000;
    v17._countAndFlagsBits = 49;
  }

  v20 = 0xD00000000000001CLL;
  v21 = 0x800000000001A9A0;
  v17._object = v15;
  sub_138A4(v17);

  v18 = v20;
  v11(v7, v0);
  return v18;
}

void sub_125BC()
{
  swift_getObjectType();
  if (qword_27F20 != -1)
  {
    swift_once();
  }

  v1 = sub_135C4();
  sub_12DCC(v1, qword_27FB8);
  v2 = v0;
  v3 = sub_135A4();
  v4 = sub_13954();

  p_base_meths = (&FCUIFocusCustomizationInvitationSwiftController + 32);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 7104878;
    v7 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v7 = 136446978;
    v8 = sub_13B84();
    v10 = sub_1119C(v8, v9, v70);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = &v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName];
    if (*&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName + 8])
    {
      v12 = *v11;
      v13 = v11[1];
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7104878;
    }

    v14 = sub_1119C(v12, v13, v70);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2080;
    if (*&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_symbolImageName + 8])
    {
      v15 = *&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_symbolImageName];
      v16 = *&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_symbolImageName + 8];
    }

    else
    {
      v16 = 0xE300000000000000;
      v15 = 7104878;
    }

    v17 = sub_1119C(v15, v16, v70);

    *(v7 + 24) = v17;
    *(v7 + 32) = 2080;
    if (*&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_tintColorName + 8])
    {
      v6 = *&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_tintColorName];
      v18 = *&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_tintColorName + 8];
    }

    else
    {
      v18 = 0xE300000000000000;
    }

    v19 = sub_1119C(v6, v18, v70);

    *(v7 + 34) = v19;
    _os_log_impl(&dword_0, v3, v4, "[%{public}s] _nextButtonPressed name=%s symbolImageName: %s, tintColorName: %s", v7, 0x2Au);
    swift_arrayDestroy();

    p_base_meths = &FCUIFocusCustomizationInvitationSwiftController.base_meths;
  }

  else
  {
  }

  if (!*&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName + 8])
  {
    osloga = sub_135A4();
    v52 = sub_13964();
    if (!os_log_type_enabled(osloga, v52))
    {
      goto LABEL_41;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v70[0] = v54;
    *v53 = 136446210;
    v55 = sub_13B84();
    v57 = sub_1119C(v55, v56, v70);

    *(v53 + 4) = v57;
    v58 = "[%{public}s] textName is nil";
LABEL_40:
    _os_log_impl(&dword_0, osloga, v52, v58, v53, 0xCu);
    sub_130A8(v54);

    return;
  }

  v20 = (p_base_meths[288] + v2);
  v21 = v20[1];
  if (!v21)
  {
    osloga = sub_135A4();
    v52 = sub_13964();
    if (!os_log_type_enabled(osloga, v52))
    {
      goto LABEL_41;
    }

    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v70[0] = v54;
    *v53 = 136446210;
    v59 = sub_13B84();
    v61 = sub_1119C(v59, v60, v70);

    *(v53 + 4) = v61;
    v58 = "[%{public}s] symbolImageName is nil";
    goto LABEL_40;
  }

  if (!*&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_tintColorName + 8])
  {
    osloga = sub_135A4();
    v52 = sub_13964();
    if (os_log_type_enabled(osloga, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v70[0] = v54;
      *v53 = 136446210;
      v62 = sub_13B84();
      v64 = sub_1119C(v62, v63, v70);

      *(v53 + 4) = v64;
      v58 = "[%{public}s] tintColorName is nil";
      goto LABEL_40;
    }

LABEL_41:

    return;
  }

  v22 = *v20;
  v65 = *&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_textName];
  v66 = *&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_tintColorName];

  oslog = v22;
  v23 = sub_123B4();
  v25 = v24;
  v67 = OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_currentModes;
  v26 = *&v2[OBJC_IVAR____TtC13FocusSettings36FCUICustomModeWelcomeSwiftController_currentModes];

  sub_10A84(v26);
  v28 = v27;

  v29 = sub_1222C(v28);

  if (*(v29 + 16))
  {
    v30 = 1;
    do
    {
      v31 = *(v29 + 40);
      sub_13B64();
      sub_13894();
      v32 = sub_13B74();
      v33 = -1 << *(v29 + 32);
      v34 = v32 & ~v33;
      if (((*(v29 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        break;
      }

      v35 = ~v33;
      while (1)
      {
        v36 = (*(v29 + 48) + 16 * v34);
        v37 = *v36 == v23 && v36[1] == v25;
        if (v37 || (sub_13B44() & 1) != 0)
        {
          break;
        }

        v34 = (v34 + 1) & v35;
        if (((*(v29 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      swift_bridgeObjectRelease_n();
      v70[0] = oslog;
      v70[1] = v21;

      v72._countAndFlagsBits = sub_13B34();
      sub_138A4(v72);

      v23 = sub_123B4();
      v25 = v38;

      if (__OFADD__(v30++, 1))
      {
        __break(1u);
        return;
      }

      v40 = *&v2[v67];

      sub_10A84(v40);
      v42 = v41;

      v29 = sub_1222C(v42);
    }

    while (*(v29 + 16));
  }

LABEL_31:

  v43 = sub_13844();

  v44 = objc_allocWithZone(DNDMode);
  v45 = sub_13844();

  v46 = sub_13844();

  v47 = sub_13844();

  v48 = [v44 initWithName:v45 modeIdentifier:v43 symbolImageName:v46 tintColorName:v47 semanticType:-1];

  v49 = [v2 navigationController];
  if (v49)
  {
    v50 = v49;
    type metadata accessor for FCUIFocusCustomizationInvitationSwiftController();
    v48 = v48;
    v51 = sub_8E28(v48);
    [v50 pushViewController:v51 animated:1];
  }
}

uint64_t sub_12DCC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

__n128 sub_12E20(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_12E4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_12E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_12F0C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_12F20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_12F68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_12FEC()
{
  result = qword_27998;
  if (!qword_27998)
  {
    sub_13504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27998);
  }

  return result;
}

uint64_t *sub_13044(uint64_t a1, uint64_t *a2)
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

uint64_t sub_130A8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_130F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_13150()
{
  result = qword_279C8;
  if (!qword_279C8)
  {
    sub_9A4C(&qword_279C0, &qword_17100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_279C8);
  }

  return result;
}

uint64_t sub_131B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}