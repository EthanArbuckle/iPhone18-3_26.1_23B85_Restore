void sub_100003230(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [objc_opt_class() _populateAllFields:*(a1 + 40) accessoryInfo:v5];

  if (v6 && ([*(a1 + 32) accessoryAttached], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    if (dword_10011C1F0 <= 30 && (dword_10011C1F0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000CF3E0();
    }

    v8 = [*(a1 + 32) accessoryAttached];
    (v8)[2](v8, v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1000CF3FC();
  }
}

void sub_100003484(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [objc_opt_class() _populateAllFields:*(a1 + 40) accessoryInfo:v5];

  if (v6 && ([*(a1 + 32) accessoryAttached], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    if (dword_10011C1F0 <= 30 && (dword_10011C1F0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000CF484();
    }

    v8 = [*(a1 + 32) accessoryAttached];
    (v8)[2](v8, v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1000CF3FC();
  }
}

id sub_100004060()
{
  if (qword_1001201D8 != -1)
  {
    sub_1000CF6E4();
  }

  v1 = qword_1001201D0;

  return v1;
}

void sub_1000040A4(id a1)
{
  qword_1001201D0 = os_log_create("com.apple.HeadphoneProxService", "Headphone");

  _objc_release_x1();
}

Class sub_100004CE0()
{
  if (qword_1001201E8 != -1)
  {
    sub_1000CF7E8();
  }

  result = objc_getClass("AFPreferences");
  qword_1001201E0 = result;
  off_10011C330 = sub_100004D34;
  return result;
}

Class sub_100004D6C()
{
  if (qword_100120200 != -1)
  {
    sub_1000CF7FC();
  }

  result = objc_getClass("VTPreferences");
  qword_1001201F8 = result;
  off_10011C338 = sub_100004DC0;
  return result;
}

Class sub_100004DF8()
{
  if (qword_100120218 != -1)
  {
    sub_1000CF810();
  }

  result = objc_getClass("UNNotificationSettingsCenter");
  qword_100120210 = result;
  off_10011C340 = sub_100004E4C;
  return result;
}

Class sub_100004E84()
{
  if (qword_100120218 != -1)
  {
    sub_1000CF810();
  }

  result = objc_getClass("UNMutableNotificationSystemSettings");
  qword_100120228 = result;
  off_10011C348 = sub_100004ED8;
  return result;
}

Class sub_100004EE4()
{
  if (qword_100120238 != -1)
  {
    sub_1000CF824();
  }

  result = objc_getClass("TUUserConfiguration");
  qword_100120230 = result;
  off_10011C350 = sub_100004F38;
  return result;
}

Class sub_100005070()
{
  if (qword_100120250 != -1)
  {
    sub_1000CF838();
  }

  result = objc_getClass("HPSSpatialProfileManager");
  qword_100120248 = result;
  off_10011C418 = sub_1000050C4;
  return result;
}

__CFString *sub_100005624()
{
  v0 = +[UTType _typeOfCurrentDevice];
  v1 = [v0 identifier];

  v6 = 0;
  v2 = [ISSymbol symbolForTypeIdentifier:v1 error:&v6];
  v3 = v2;
  if (v6)
  {
    v4 = @"iphone";
  }

  else
  {
    v4 = [v2 name];
  }

  return v4;
}

void sub_100005BC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3)
  {
    v2[2] = 0;

    v2 = *(a1 + 32);
  }

  objc_initWeak(&location, v2);
  v4 = [_LTLanguageStatus alloc];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005CD4;
  v8[3] = &unk_100102840;
  objc_copyWeak(&v9, &location);
  v8[4] = *(a1 + 32);
  v5 = [v4 initWithTaskHint:10 useDedicatedMachPort:0 observations:v8];
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_100005CB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100005CD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_100005E50;
  v9[4] = sub_100005E60;
  v10 = objc_alloc_init(NSMutableArray);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100005E68;
  v7[3] = &unk_1001027F0;
  objc_copyWeak(&v8, (a1 + 40));
  v7[4] = v9;
  [v3 enumerateObjectsUsingBlock:v7];
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000060A4;
  v6[3] = &unk_100102818;
  v6[4] = v4;
  v6[5] = v9;
  dispatch_async(v5, v6);
  objc_destroyWeak(&v8);
  _Block_object_dispose(v9, 8);
}

void sub_100005E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak((v13 + 40));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005E50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005E68(uint64_t a1, void *a2)
{
  v17 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [v17 locale];
  v5 = [v4 localeIdentifier];
  v6 = [NSLocale lt_localeWithLTIdentifier:v5];

  v7 = +[NSLocale currentLocale];
  v8 = [v6 lt_displayNameForContext:0 inTargetLocale:v7];

  v9 = [v17 locale];
  v10 = [v9 localeIdentifier];
  v11 = [WeakRetained _isLanguageSuggested:v10];

  v12 = [v17 status];
  if (v12 >= 3)
  {
    if (dword_10011C550 <= 30 && (dword_10011C550 != -1 || _LogCategory_Initialize()))
    {
      sub_1000CF918(v17);
    }

    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = 0x10302u >> (8 * v12);
  }

  v14 = [ProxCardTranslationAssetInfo alloc];
  v15 = [v17 locale];
  v16 = [(ProxCardTranslationAssetInfo *)v14 initWithLocale:v15 displayName:v8 assetStatus:v13 isSuggested:v11];

  if (dword_10011C550 <= 30 && (dword_10011C550 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CF95C(v16);
  }

  [*(*(*(a1 + 32) + 8) + 40) addObject:v16];
  if (dword_10011C550 <= 30 && (dword_10011C550 != -1 || _LogCategory_Initialize()))
  {
    sub_1000CFA50();
  }
}

void sub_100006174(id a1, ProxCardTranslationAssetInfo *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = v4;
  if (dword_10011C550 <= 30)
  {
    v6 = v4;
    if (dword_10011C550 != -1 || (v4 = _LogCategory_Initialize(), v5 = v6, v4))
    {
      sub_1000CFA90(v5);
      v5 = v6;
    }
  }

  _objc_release_x1(v4, v5);
}

void sub_10000626C()
{
  v1 = v0;
  v50.receiver = v0;
  v50.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v50, "viewDidLoad");
  [v0 setDismissalType:1];
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 1)
  {
    v4 = 0x746867694CLL;
  }

  else
  {
    v4 = 1802658116;
  }

  if (v3 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = [objc_allocWithZone(UIStackView) init];
  [v6 setAxis:1];
  v7 = v6;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  _StringGuts.grow(_:)(21);

  v8._countAndFlagsBits = v4;
  v8._object = v5;
  String.append(_:)(v8);
  v9 = sub_100033A5C(72);
  v11 = v10;
  v12 = sub_100033A5C(73);
  v14 = sub_1000077FC(0xD000000000000013, 0x80000001000DB930, v9, v11, v12, v13);

  v49 = v14;
  [v7 addArrangedSubview:v14];
  [v14 setFrame:{0.0, 0.0, 320.0, 90.0}];
  _StringGuts.grow(_:)(27);

  v15._countAndFlagsBits = v4;
  v15._object = v5;
  String.append(_:)(v15);
  v16 = sub_100033A5C(74);
  v18 = v17;
  v19 = sub_100033A5C(75);
  v21 = sub_1000077FC(0xD000000000000019, 0x80000001000DB950, v16, v18, v19, v20);

  [v7 addArrangedSubview:v21];
  _StringGuts.grow(_:)(30);

  v22._countAndFlagsBits = v4;
  v22._object = v5;
  String.append(_:)(v22);

  v23 = sub_100033A5C(76);
  v25 = v24;
  v26 = sub_100033A5C(77);
  v28 = sub_1000077FC(0xD00000000000001CLL, 0x80000001000DB970, v23, v25, v26, v27);

  [v7 addArrangedSubview:v28];
  v29 = [v1 contentView];
  [v29 addSubview:v7];

  v30 = [v1 contentView];
  v31 = [v30 mainContentGuide];

  v32 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000D5240;
  v34 = [v7 topAnchor];
  v35 = [v31 topAnchor];
  v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35];

  *(v33 + 32) = v36;
  v37 = [v7 bottomAnchor];
  v38 = [v31 bottomAnchor];
  v39 = [v37 constraintLessThanOrEqualToAnchor:v38];

  *(v33 + 40) = v39;
  v40 = [v7 widthAnchor];
  v41 = [v40 constraintEqualToConstant:320.0];

  *(v33 + 48) = v41;
  v42 = [v7 centerYAnchor];
  v43 = [v31 centerYAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v33 + 56) = v44;
  v45 = [v7 centerXAnchor];

  v46 = [v31 centerXAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v33 + 64) = v47;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];
}

void sub_10000698C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[4];
  v7 = a1[5];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v24 = sub_1000083C0;
  v25 = v8;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10000C034;
  v23 = &unk_100102EC0;
  v10 = _Block_copy(&v20);
  v11 = objc_opt_self();
  v12 = [v11 actionWithTitle:v9 style:0 handler:v10];

  _Block_release(v10);

  v13 = a1[6];
  v14 = a1[7];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = String._bridgeToObjectiveC()();
  v24 = sub_100008408;
  v25 = v15;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10000C034;
  v23 = &unk_100102EE8;
  v17 = _Block_copy(&v20);
  v18 = [v11 actionWithTitle:v16 style:1 handler:v17];

  _Block_release(v17);

  v19 = [v1 addAction:v18];
}

void sub_100006C20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

id sub_100006D44()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100006DC4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100006DD0(uint64_t a1, int a2)
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

uint64_t sub_100006DF0(uint64_t result, int a2, int a3)
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

uint64_t sub_100006EC8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100006F40(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100006FC0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100007004()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100007040()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100007094()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

BOOL sub_100007144(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000071B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1000071D8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_100007238(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_100007268@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_100007294@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1000073A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
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

  return v9 & 1;
}

uint64_t sub_10000743C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_100008350(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1000074A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000074D4(uint64_t a1)
{
  v2 = sub_100007724(&qword_10011C908, type metadata accessor for Key);
  v3 = sub_100007724(&qword_10011C9B0, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100007590@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000075D8(uint64_t a1)
{
  v2 = sub_100007724(&qword_10011C9A0, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_100007724(&qword_10011C9A8, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100007724(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000077FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v80._object = a6;
  v80._countAndFlagsBits = a5;
  v79 = a3;
  v81 = type metadata accessor for CharacterSet();
  v7 = *(v81 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(UIView) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 bounds];
  [v11 setBounds:?];
  type metadata accessor for HeadphoneAdaptiveControlsUpsellViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v14 = objc_allocWithZone(BSUICAPackageView);
  v15 = v13;
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 initWithPackageName:v16 inBundle:v15];

  v78 = v15;
  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = v17;
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setFrame:{0.0, 6.0, 78.0, 78.0}];
  [v11 addSubview:v18];
  v19 = [objc_allocWithZone(UILabel) init];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v82 = v79;
  v83 = a4;

  v20._countAndFlagsBits = 10;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  String.append(_:)(v80);

  static CharacterSet.newlines.getter();
  sub_100008480();
  v21 = StringProtocol.components(separatedBy:)();
  (*(v7 + 8))(v10, v81);
  if (!v21[2])
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v81 = v19;
  v22 = v21[4];
  v23 = v21[5];
  v24 = objc_opt_self();

  v25 = [v24 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:256];
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v26 = v25;
  v77 = v22;
  v80._countAndFlagsBits = v18;
  v80._object = v11;

  v27 = [v26 fontDescriptor];
  v28 = [v27 fontDescriptorWithSymbolicTraits:2];

  if (v28)
  {
    [v26 pointSize];
    v29 = [v24 fontWithDescriptor:v28 size:?];

    sub_100008438(&qword_10011C8F0, &unk_1000D5640);
    inited = swift_initStackObject();
    v76 = xmmword_1000D5250;
    *(inited + 16) = xmmword_1000D5250;
    *(inited + 32) = NSFontAttributeName;
    v31 = sub_1000084D4(0, &qword_10011C8F8, UIFont_ptr);
    *(inited + 64) = v31;
    *(inited + 40) = v29;
    v32 = NSFontAttributeName;
    v79 = v29;
    sub_1000A3410(inited);
    swift_setDeallocating();
    sub_10000851C(inited + 32);
    v33 = String._bridgeToObjectiveC()();
    v34 = String._bridgeToObjectiveC()();

    v35 = [v33 rangeOfString:v34];
    v75 = v36;

    v37 = swift_initStackObject();
    *(v37 + 16) = v76;
    *(v37 + 32) = v32;
    *(v37 + 64) = v31;
    *(v37 + 40) = v26;
    v77 = v26;
    sub_1000A3410(v37);
    swift_setDeallocating();
    sub_10000851C(v37 + 32);
    v38 = objc_allocWithZone(NSMutableAttributedString);
    v39 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_100007724(&qword_10011C908, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v41 = [v38 initWithString:v39 attributes:isa];

    v42 = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v76 = v41;
    [v41 addAttributes:v42 range:{v35, v75}];

    v43 = v81;
    [v81 setAttributedText:v41];
    [v43 setFrame:{90.0, 6.0, 230.0, 84.0}];
    v44 = [objc_opt_self() labelColor];
    [v43 setTextColor:v44];

    [v43 setNumberOfLines:0];
    [v43 sizeToFit];
    object = v80._object;
    [v80._object addSubview:v43];
    v75 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1000D5260;
    countAndFlagsBits = v80._countAndFlagsBits;
    v48 = [v80._countAndFlagsBits leadingAnchor];
    v49 = [object leadingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:6.0];

    *(v46 + 32) = v50;
    v51 = [countAndFlagsBits topAnchor];
    v52 = [object topAnchor];
    v53 = [v51 constraintEqualToAnchor:v52 constant:6.0];

    *(v46 + 40) = v53;
    v54 = [countAndFlagsBits widthAnchor];
    v55 = [v54 constraintEqualToConstant:78.0];

    *(v46 + 48) = v55;
    v56 = [countAndFlagsBits heightAnchor];
    v57 = [v56 constraintEqualToConstant:78.0];

    *(v46 + 56) = v57;
    v58 = [countAndFlagsBits bottomAnchor];
    v59 = [object bottomAnchor];
    v60 = [v58 constraintLessThanOrEqualToAnchor:v59];

    *(v46 + 64) = v60;
    v61 = [v43 leadingAnchor];
    v62 = [countAndFlagsBits trailingAnchor];

    v63 = [v61 constraintEqualToAnchor:v62 constant:6.0];
    *(v46 + 72) = v63;
    v64 = [v43 topAnchor];
    v65 = [object topAnchor];
    v66 = [v64 constraintEqualToAnchor:v65 constant:6.0];

    *(v46 + 80) = v66;
    v67 = [v43 widthAnchor];
    v68 = [v67 constraintEqualToConstant:230.0];

    *(v46 + 88) = v68;
    v69 = [v43 bottomAnchor];

    v70 = [object bottomAnchor];
    v71 = [v69 constraintLessThanOrEqualToAnchor:v70];

    *(v46 + 96) = v71;
    sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
    v72 = Array._bridgeToObjectiveC()().super.isa;

    [v75 activateConstraints:v72];

    return object;
  }

LABEL_9:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100008350(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100008388()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000083F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100008438(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100008480()
{
  result = qword_10011C8E8;
  if (!qword_10011C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011C8E8);
  }

  return result;
}

uint64_t sub_1000084D4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000851C(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011C900, &unk_1000D6750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000085D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000085E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008608(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for HeadphoneLayoutMetrics.VideoMetric(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneLayoutMetrics.VideoMetric(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HeadphoneLayoutMetrics.VideoMetric(uint64_t result, int a2, int a3)
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

__n128 sub_1000089DC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneLayoutMetrics.Mismatch(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HeadphoneLayoutMetrics.Mismatch(uint64_t result, int a2, int a3)
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

void sub_100008A64(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100008B78(void *a1, uint64_t a2, double *a3, uint64_t a4)
{
  v5 = v4;
  v99 = a3;
  ObjectType = swift_getObjectType();
  v101 = type metadata accessor for BatteryIconStyle();
  v10 = *(v101 - 1);
  v11 = *(v10 + 64);
  __chkstk_darwin(v101);
  v13 = v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadphoneBatteryInfo(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v19 = (v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_batteryType] = 3;
  v20 = &v5[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView];
  *v20 = a1;
  v20[1] = a2;
  v104 = _swiftEmptyArrayStorage;
  v21 = *(a4 + 16);
  v98 = a1;
  if (v21)
  {
    v96 = ObjectType;
    v97 = v5;
    v100 = *(v16 + 28);
    v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v95[1] = a4;
    v23 = a4 + v22;
    v24 = *(v17 + 72);
    v25 = (v10 + 16);
    v26 = a1;
    do
    {
      sub_100009C6C(v23, v19);
      v27 = *v19;
      v28 = *(v19 + 8);
      (*v25)(v13, &v100[v19], v101);
      sub_100009CD0(v19);
      v29 = objc_allocWithZone(type metadata accessor for LabelledBatteryView());
      v30 = sub_10003D578(0, 3, v28, v13, v27);
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v31 = v30;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v23 += v24;
      --v21;
    }

    while (v21);
    v32 = v104;

    ObjectType = v96;
    v5 = v97;
  }

  else
  {
    v33 = a1;

    v32 = _swiftEmptyArrayStorage;
  }

  *&v5[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_batteryViews] = v32;
  v103.receiver = v5;
  v103.super_class = ObjectType;
  v34 = "initWithFrame:";

  v35 = objc_msgSendSuper2(&v103, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v36 = v32 >> 62;
  if (v32 >> 62)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
    if (!v37)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v37 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      goto LABEL_17;
    }
  }

  if (v37 < 1)
  {
    __break(1u);
    goto LABEL_44;
  }

  for (i = 0; i != v37; ++i)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v39 = *(v32 + 8 * i + 32);
    }

    v40 = v39;
    [v35 addSubview:v39];
  }

LABEL_17:
  v41 = v98;
  ObjectType = v99;
  sub_10000A304(v99, v105);
  v101 = v41;
  *&v42 = sub_1000AC67C(v41, ObjectType, 2u, v105).n128_u64[0];
  v43 = v105[0].n128_u64[0];
  [v105[0].n128_u64[0] setTranslatesAutoresizingMaskIntoConstraints:{0, v42}];
  v13 = v105[0].n128_u64[1];
  [v35 addLayoutGuide:v105[0].n128_u64[1]];
  [v35 addSubview:v43];
  [v35 sendSubviewToBack:v43];
  v34 = sub_1000AC7FC(v35);
  if (v37)
  {
    v37 = v32 & 0xC000000000000001;
    if ((v32 & 0xC000000000000001) == 0)
    {
      if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_46;
      }

      v44 = *(v32 + 32);
LABEL_21:
      v45 = v44;
      if (v36)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 2)
        {
LABEL_23:
          sub_10000A360(ObjectType);

          v47 = v32 & 0xFFFFFFFFFFFFFF8;
          if (v36)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }

      else
      {
        result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result < 2)
        {
          goto LABEL_23;
        }
      }

      if (v37)
      {
        v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_48;
        }

        v61 = *(v32 + 40);
      }

      v97 = v61;
      v100 = v34;
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000D5C80;
      v63 = v45;
      v64 = [v63 topAnchor];
      v65 = [v13 bottomAnchor];
      v66 = [v64 constraintEqualToAnchor:v65 constant:20.0];

      *(inited + 32) = v66;
      v67 = [v63 bottomAnchor];
      v68 = [v35 bottomAnchor];
      v69 = [v67 constraintEqualToAnchor:v68];

      *(inited + 40) = v69;
      v70 = [v63 centerXAnchor];
      v98 = v63;

      v71 = [v101 leftAnchor];
      v96 = objc_opt_self();
      v72 = [(__n128 *)v96 mainScreen];
      [v72 bounds];
      v74 = v73;

      v75 = 1.0;
      v76 = 1.0;
      if (v74 < 375.0)
      {
        v76 = 298.0 / v99[19];
      }

      v77 = v99;
      v78 = v99[14];
      v79 = [v70 constraintEqualToAnchor:v71 constant:v76 * v99[13]];

      *(inited + 48) = v79;
      v80 = v97;
      v81 = [v80 topAnchor];
      v82 = [v80 topAnchor];
      v83 = [v81 constraintEqualToAnchor:v82];

      *(inited + 56) = v83;
      v84 = [v80 bottomAnchor];
      v85 = [v35 bottomAnchor];
      v86 = [v84 constraintEqualToAnchor:v85];

      *(inited + 64) = v86;
      v87 = [v80 centerXAnchor];

      v88 = [v101 leftAnchor];
      v89 = [(__n128 *)v96 mainScreen];
      [v89 bounds];
      v91 = v90;

      sub_10000A360(v77);
      if (v91 < 375.0)
      {
        v75 = 298.0 / v77[19];
      }

      v92 = [v87 constraintEqualToAnchor:v88 constant:v78 * v75];

      *(inited + 72) = v92;
      v102 = v100;
      sub_100009D2C(inited);

      goto LABEL_42;
    }

LABEL_44:
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_21;
  }

  sub_10000A360(ObjectType);
  v47 = v32 & 0xFFFFFFFFFFFFFF8;
  if (v36)
  {
LABEL_24:
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_42;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = *(v47 + 16);
  if (!result)
  {
LABEL_42:
    v93 = objc_opt_self();
    sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v93 activateConstraints:isa];

    sub_10000A3B4(v105);

    return v35;
  }

LABEL_28:
  if ((v32 & 0xC000000000000001) != 0)
  {
LABEL_46:
    v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_31;
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v48 = *(v32 + 32);
LABEL_31:
    v49 = v48;
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_1000D5C90;
    v51 = v49;
    v52 = [v51 topAnchor];
    v53 = [v13 bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:20.0];

    *(v50 + 32) = v54;
    v55 = [v51 bottomAnchor];
    v56 = [v35 bottomAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];

    *(v50 + 40) = v57;
    v58 = [v51 centerXAnchor];

    v59 = [v101 centerXAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    *(v50 + 48) = v60;
    v102 = v34;
    sub_100009D2C(v50);

    goto LABEL_42;
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_100009690(uint64_t a1)
{
  v30 = type metadata accessor for HeadphoneBatteryInfo(0);
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30);
  v4 = (&v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100008438(&qword_10011CA80, &qword_1000D5D00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v31 = (&v30 - v8);
  v9 = sub_100008438(&qword_10011CA88, &qword_1000D5D08);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v16 = (&v30 - v15);
  v17 = 0;
  v18 = *(a1 + 16);
  v33 = a1;
  v34 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_batteryViews;
  v19 = (v6 + 56);
  v20 = (v6 + 48);
  while (1)
  {
    if (v17 == v18)
    {
      v23 = 1;
      v17 = v18;
      goto LABEL_10;
    }

    if (v17 >= v18)
    {
      break;
    }

    if (__OFADD__(v17, 1))
    {
      goto LABEL_23;
    }

    v24 = v31;
    v25 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v17;
    v26 = *(v5 + 48);
    *v31 = v17;
    sub_100009C6C(v25, v24 + v26);
    sub_10000A450(v24, v13, &qword_10011CA80, &qword_1000D5D00);
    v23 = 0;
    ++v17;
LABEL_10:
    (*v19)(v13, v23, 1, v5);
    sub_10000A450(v13, v16, &qword_10011CA88, &qword_1000D5D08);
    result = (*v20)(v16, 1, v5);
    if (result == 1)
    {
      return result;
    }

    v27 = *v16;
    sub_10000A4B8(v16 + *(v5 + 48), v4);
    v28 = *(v35 + v34);
    if (v28 >> 62)
    {
      if (v28 < 0)
      {
        v29 = *(v35 + v34);
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (v27 >= result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27 >= result)
      {
        goto LABEL_4;
      }
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v27 < 0)
      {
        goto LABEL_24;
      }

      if (v27 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v21 = *(v28 + 8 * v27 + 32);
    }

    v22 = v21;
    sub_10003CEB8(*(v4 + 8), v4 + *(v30 + 28), *v4);

LABEL_4:
    result = sub_100009CD0(v4);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000099F8()
{
  v1 = v0;
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_100123040);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Playing movie", v5, 2u);
  }

  v6 = v1 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView;
  v7 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView);
  v8 = *(v6 + 8);
  swift_getObjectType();
  return dispatch thunk of VideoPlaybackControllable.play()();
}

id sub_100009BA4()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView) centerXAnchor];

  return v1;
}

id sub_100009BE8()
{
  v1 = [*v0 leftAnchor];

  return v1;
}

id sub_100009C20()
{
  v1 = [*v0 rightAnchor];

  return v1;
}

uint64_t sub_100009C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneBatteryInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009CD0(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneBatteryInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009D2C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_100009E1C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100009EBC(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100009E1C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_100009EBC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000A51C(&qword_10011CA78, &qword_10011CA70, &qword_1000D5CF8);
          for (i = 0; i != v6; ++i)
          {
            sub_100008438(&qword_10011CA70, &qword_1000D5CF8);
            v9 = sub_10000A1FC(v13, i, a3);
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
        sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
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

uint64_t sub_10000A05C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10000A51C(&qword_10011CAA0, &qword_10011CA98, &unk_1000D5D10);
          for (i = 0; i != v6; ++i)
          {
            sub_100008438(&qword_10011CA98, &unk_1000D5D10);
            v9 = sub_10000A284(v13, i, a3);
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
        sub_1000084D4(0, &qword_10011CA90, &off_100101348);
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

void (*sub_10000A1FC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_10000A27C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10000A284(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    return sub_10000A5A8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A408(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000A450(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008438(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneBatteryInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A51C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A408(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A570(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_10000A5AC()
{
  type metadata accessor for HeadphoneLiveTranslationViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000A6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v26 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  type metadata accessor for MainActor();

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a1;
  v19[7] = a2;
  sub_100064FAC(0, 0, v16, &unk_1000D5D68, v19);

  v21 = a3(v20);
  static Logger.shared.getter();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v21 & 1;
    _os_log_impl(&_mh_execute_header, v22, v23, "video: IED Setting call back >>>  %{BOOL}d", v24, 8u);
  }

  (*(v9 + 8))(v12, v8);
  return v21 & 1;
}

uint64_t sub_10000A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for ContinuousClock();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v12;
  v7[11] = v11;

  return _swift_task_switch(sub_10000AA6C, v12, v11);
}

uint64_t sub_10000AA6C()
{
  v1 = *(v0 + 64);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_10000AB38;
  v3 = *(v0 + 64);

  return sub_10000AEE0(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_10000AB38()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  v9 = *(v2 + 80);
  if (v0)
  {
    v10 = sub_10000AD54;
  }

  else
  {
    v10 = sub_10000ACD0;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10000ACD0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  if ((v2(v4) & 1) == 0)
  {
    v5 = *(v0 + 40);
    (*(v0 + 32))();
  }

  v6 = *(v0 + 64);

  v7 = *(v0 + 8);

  return v7();
}

void sub_10000AD90(void *a1)
{
  v1 = [a1 contentView];
  v2 = [v1 dismissButton];

  if (v2)
  {
    [v2 setAlpha:1.0];
  }
}

void sub_10000AE30()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_10000AEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10000AFE0, 0, 0);
}

uint64_t sub_10000AFE0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_10000BE10(&qword_10011CAB0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10000BE10(&qword_10011CAB8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10000B170;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10000B170()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_10000B32C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_10000B32C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void *sub_10000B398()
{
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5D20;
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v81._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x80000001000DBB40;
  v5.value._object = 0x80000001000DBB60;
  v5.value._countAndFlagsBits = 0xD000000000000010;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v81._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v81);

  v8 = [v2 mainBundle];
  v82._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000001ALL;
  v9._object = 0x80000001000DBB80;
  v10.value._object = 0x80000001000DBB60;
  v10.value._countAndFlagsBits = 0xD000000000000010;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v82);

  type metadata accessor for ConnectVideoLayoutViewModel();
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  *(v13 + 32) = v12;
  *(v13 + 48) = 258;
  *(v13 + 56) = 0;
  *(v13 + 64) = sub_10000A6EC;
  *(v13 + 72) = 0;
  *(v13 + 80) = sub_10000A6F4;
  *(v13 + 88) = 0;
  *(v13 + 96) = 0;
  *(v13 + 104) = 0;
  v1[4] = v13;
  v14 = [v2 mainBundle];
  v83._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000013;
  v15._object = 0x80000001000DBBA0;
  v16.value._object = 0x80000001000DBB60;
  v16.value._countAndFlagsBits = 0xD000000000000010;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v83._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v83);

  v19 = [v2 mainBundle];
  v84._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0xD000000000000016;
  v20._object = 0x80000001000DBBC0;
  v21.value._object = 0x80000001000DBB60;
  v21.value._countAndFlagsBits = 0xD000000000000010;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v84._countAndFlagsBits = 0;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v84);

  v24 = swift_allocObject();
  *(v24 + 16) = v18;
  *(v24 + 32) = v23;
  *(v24 + 48) = 512;
  *(v24 + 56) = 1;
  *(v24 + 64) = sub_10000AD70;
  *(v24 + 72) = 0u;
  *(v24 + 88) = 0u;
  *(v24 + 104) = 0;
  v1[5] = v24;
  v25 = [v2 mainBundle];
  v85._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0xD000000000000012;
  v26._object = 0x80000001000DBBE0;
  v27.value._object = 0x80000001000DBB60;
  v27.value._countAndFlagsBits = 0xD000000000000010;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v85._countAndFlagsBits = 0;
  v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v85);

  v30 = [v2 mainBundle];
  v86._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0xD000000000000015;
  v31._object = 0x80000001000DBC00;
  v32.value._object = 0x80000001000DBB60;
  v32.value._countAndFlagsBits = 0xD000000000000010;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v86._countAndFlagsBits = 0;
  v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v86);

  v35 = swift_allocObject();
  *(v35 + 16) = v29;
  *(v35 + 32) = v34;
  *(v35 + 48) = 258;
  *(v35 + 56) = 2;
  *(v35 + 64) = sub_10000AD78;
  *(v35 + 72) = 0u;
  *(v35 + 88) = 0u;
  *(v35 + 104) = 0;
  v1[6] = v35;
  v36 = [v2 mainBundle];
  v87._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0xD000000000000017;
  v37._object = 0x80000001000DBC20;
  v38.value._object = 0x80000001000DBB60;
  v38.value._countAndFlagsBits = 0xD000000000000010;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0;
  v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v36, v39, v87);

  v41 = [v2 mainBundle];
  v88._object = 0xE000000000000000;
  v42._countAndFlagsBits = 0xD00000000000001ALL;
  v42._object = 0x80000001000DBC40;
  v43.value._object = 0x80000001000DBB60;
  v43.value._countAndFlagsBits = 0xD000000000000010;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v88._countAndFlagsBits = 0;
  v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v88);

  v46 = swift_allocObject();
  *(v46 + 16) = v40;
  *(v46 + 32) = v45;
  *(v46 + 48) = 258;
  *(v46 + 56) = 3;
  *(v46 + 64) = sub_10000AD80;
  *(v46 + 72) = 0u;
  *(v46 + 88) = 0u;
  *(v46 + 104) = 0;
  v1[7] = v46;
  v47 = [v2 mainBundle];
  v89._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0xD000000000000014;
  v48._object = 0x80000001000DBC60;
  v49.value._object = 0x80000001000DBB60;
  v49.value._countAndFlagsBits = 0xD000000000000010;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v89._countAndFlagsBits = 0;
  v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v89);

  v52 = [v2 mainBundle];
  v90._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD000000000000017;
  v53._object = 0x80000001000DBC80;
  v54.value._object = 0x80000001000DBB60;
  v54.value._countAndFlagsBits = 0xD000000000000010;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  v90._countAndFlagsBits = 0;
  v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, v54, v52, v55, v90);

  v57 = swift_allocObject();
  *(v57 + 16) = v51;
  *(v57 + 32) = v56;
  *(v57 + 48) = 1;
  *(v57 + 56) = 4;
  *(v57 + 64) = sub_10000AD88;
  *(v57 + 72) = 0;
  *(v57 + 80) = 0;
  *(v57 + 88) = 0;
  *(v57 + 96) = sub_10000AD90;
  *(v57 + 104) = 0;
  v1[8] = v57;
  v58 = [v2 mainBundle];
  v91._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0xD000000000000015;
  v59._object = 0x80000001000DBCA0;
  v60.value._object = 0x80000001000DBB60;
  v60.value._countAndFlagsBits = 0xD000000000000010;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v91._countAndFlagsBits = 0;
  v62 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, v60, v58, v61, v91);

  v63 = [v2 mainBundle];
  v92._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0xD000000000000018;
  v64._object = 0x80000001000DBCC0;
  v65.value._object = 0x80000001000DBB60;
  v65.value._countAndFlagsBits = 0xD000000000000010;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  v92._countAndFlagsBits = 0;
  v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v65, v63, v66, v92);

  v68 = swift_allocObject();
  *(v68 + 16) = v62;
  *(v68 + 32) = v67;
  *(v68 + 48) = 1;
  *(v68 + 56) = 5;
  *(v68 + 64) = sub_10000AE28;
  *(v68 + 72) = 0u;
  *(v68 + 88) = 0u;
  *(v68 + 104) = 0;
  v1[9] = v68;
  v69 = [v2 mainBundle];
  v93._object = 0xE000000000000000;
  v70._countAndFlagsBits = 0xD000000000000014;
  v70._object = 0x80000001000DBCE0;
  v71.value._object = 0x80000001000DBB60;
  v71.value._countAndFlagsBits = 0xD000000000000010;
  v72._countAndFlagsBits = 0;
  v72._object = 0xE000000000000000;
  v93._countAndFlagsBits = 0;
  v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v93);

  v74 = [v2 mainBundle];
  v94._object = 0xE000000000000000;
  v75._countAndFlagsBits = 0xD000000000000017;
  v75._object = 0x80000001000DBD00;
  v76.value._object = 0x80000001000DBB60;
  v76.value._countAndFlagsBits = 0xD000000000000010;
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  v94._countAndFlagsBits = 0;
  v78 = NSLocalizedString(_:tableName:bundle:value:comment:)(v75, v76, v74, v77, v94);

  v79 = swift_allocObject();
  *(v79 + 16) = v73;
  *(v79 + 32) = v78;
  *(v79 + 48) = 1;
  *(v79 + 56) = 6;
  *(v79 + 64) = sub_10000AE28;
  *(v79 + 72) = 0u;
  *(v79 + 88) = 0u;
  *(v79 + 104) = 0;
  v1[10] = v79;
  return v1;
}

uint64_t sub_10000BC00()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10000BC48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000BD1C;

  return sub_10000A974(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10000BD1C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000BE10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10000BE58()
{
  type metadata accessor for HeadphoneLiveTranslationViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_10000BF8C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

void sub_10000C034(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10000C09C()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_100122FA0);
  sub_10000A570(v0, qword_100122FA0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000C120(char *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v40[-v8];
  v10 = [a1 traitCollection];
  v11 = [v10 userInterfaceStyle];

  v12 = &a1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_contentProvider];
  if (v11 == 2)
  {
    result = swift_beginAccess();
    v14 = *(v12 + 3);
    if (!v14)
    {
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v15 = *(v12 + 4);
    v16 = sub_10000E7E4(v12, *(v12 + 3));
    v17 = *(v14 - 8);
    v18 = *(v17 + 64);
    __chkstk_darwin(v16);
    v20 = &v40[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v17 + 16))(v20);
    (*(v15 + 24))(v14, v15);
LABEL_6:
    v27 = v21;
    v28 = v22;
    (*(v17 + 8))(v20, v14);
    v29 = &a1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_contentProvider];
    result = swift_beginAccess();
    v30 = *(v29 + 3);
    if (v30)
    {
      v31 = *(v29 + 4);
      v32 = sub_10000E7E4(v29, *(v29 + 3));
      v33 = *(v30 - 8);
      v34 = *(v33 + 64);
      __chkstk_darwin(v32);
      v36 = &v40[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v33 + 16))(v36);
      (*(v31 + 8))(v30, v31);
      (*(v33 + 8))(v36, v30);
      (*(v3 + 16))(v7, v9, v2);
      v37 = objc_allocWithZone(type metadata accessor for ProxMovieLoopPlayer());
      v38 = sub_1000302F0(v7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 332.0, 234.0);
      [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
      sub_1000A2658(v27, v28);
      v39 = [objc_opt_self() clearColor];
      [v38 setBackgroundColor:v39];

      (*(v3 + 8))(v9, v2);
      return v38;
    }

    __break(1u);
    goto LABEL_9;
  }

  result = swift_beginAccess();
  v14 = *(v12 + 3);
  if (v14)
  {
    v23 = *(v12 + 4);
    v24 = sub_10000E7E4(v12, *(v12 + 3));
    v17 = *(v14 - 8);
    v25 = *(v17 + 64);
    __chkstk_darwin(v24);
    v20 = &v40[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v17 + 16))(v20);
    v21 = (*(v23 + 16))(v14, v23);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_10000C618(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10000C67C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = sub_10000C618(&OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___movieLoopView, sub_10000C120);
  [v2 addSubview:v3];

  v4 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D5C90;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___movieLoopView;
  v7 = [*(a1 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___movieLoopView) centerXAnchor];
  v8 = [v2 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v5 + 32) = v9;
  v10 = [*(a1 + v6) centerYAnchor];
  v11 = [v2 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v5 + 40) = v12;
  v13 = [v2 heightAnchor];
  v17.size.width = 332.0;
  v17.size.height = 234.0;
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v14 = [v13 constraintEqualToConstant:CGRectGetHeight(v17)];

  *(v5 + 48) = v14;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];

  return v2;
}

uint64_t sub_10000C8DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v87[-v5];
  v7 = type metadata accessor for HeadphoneModel(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v10 = __chkstk_darwin(v7);
  v12 = &v87[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v87[-v13];
  v103.receiver = v1;
  v103.super_class = ObjectType;
  objc_msgSendSuper2(&v103, "viewDidLoad");
  [v1 setDismissalType:1];
  v15 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_presenter;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    sub_10000E88C(v17 + 16, &v100, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v18 = *(&v101 + 1);
    if (*(&v101 + 1))
    {
      v19 = sub_10000E7E4(&v100, *(&v101 + 1));
      v89 = v87;
      v20 = *(v18 - 8);
      v21 = *(v20 + 64);
      __chkstk_darwin(v19);
      v92 = v14;
      v23 = &v87[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v20 + 16))(v23);
      sub_10000E950(&v100, &qword_10011FBC0, &unk_1000D5EF0);
      v90 = v8;
      v24 = v7;
      v25 = v15;
      v26 = v1;
      v27 = *v23;
      v28 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v29 = v27 + v28;
      v1 = v26;
      v15 = v25;
      v7 = v24;
      v8 = v90;
      sub_10000E390(v29, v12);
      v30 = v23;
      v14 = v92;
      (*(v20 + 8))(v30, v18);
      sub_10000E828(v12, v6);
      (*(v8 + 7))(v6, 0, 1, v7);
      goto LABEL_6;
    }

    sub_10000E950(&v100, &qword_10011FBC0, &unk_1000D5EF0);
  }

  v31 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneModel;
  swift_beginAccess();
  sub_10000E88C(&v1[v31], v6, &qword_10011EBD0, &unk_1000D5EE0);
LABEL_6:
  if ((*(v8 + 6))(v6, 1, v7) != 1)
  {
    sub_10000E828(v6, v14);
    v39 = *(v14 + 18);
    v38 = *(v14 + 19);
    v92 = v14;
    v91 = v15;
    if (v38)
    {
      *&v100 = v39;
      *(&v100 + 1) = v38;
      *&v97 = 58;
      *(&v97 + 1) = 0xE100000000000000;
      *&v94 = 45;
      *(&v94 + 1) = 0xE100000000000000;
      sub_100008480();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v40 = String.uppercased()();
      countAndFlagsBits = v40._countAndFlagsBits;
      object = v40._object;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    type metadata accessor for Headphone_Manager();
    v43 = static Headphone_Manager.shared.getter();
    v44 = dispatch thunk of Headphone_Manager.connectedHeadphones.getter();

    if (*(v44 + 16) && (v45 = sub_1000CD118(countAndFlagsBits, object), (v46 & 1) != 0))
    {
      v47 = *(*(v44 + 56) + 8 * v45);
      v48 = v47;

      if (v48)
      {
        v49 = v48;
        HeadphoneDevice.featureContent.getter();

        if (*(&v98 + 1))
        {
          sub_100008438(&qword_10011CB58, &qword_1000D85C0);
          sub_100008438(&qword_10011CB60, &qword_1000D5F20);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v102 = 0;
            v100 = 0u;
            v101 = 0u;
          }

LABEL_26:
          sub_10000E88C(&v100, &v94, &qword_10011CB50, &unk_1000D5F00);
          if (v95)
          {
            v51 = v47;

            sub_10000E9B0(&v94, &v97);
            v52 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneDevice];
            *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneDevice] = v47;
            v53 = v51;

            sub_10000E9C8(&v97, &v94);
            v54 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_contentProvider;
            swift_beginAccess();
            sub_10000EA2C(&v94, &v1[v54], &qword_10011CB50, &unk_1000D5F00);
            swift_endAccess();
            v55 = [v1 contentView];
            v56 = v1;
            v57 = sub_10000C618(&OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___topAsset, sub_10000C67C);
            [v55 addSubview:v57];

            v58 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___topAsset];
            v59 = [v1 contentView];
            v60 = [v59 mainContentGuide];

            [v58 pinToOtherWithLayoutGuide:v60];
            v61 = *&v56[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneProxFeatureManager];
            sub_100008438(&unk_1001200F0, &unk_1000D5F10);
            v62 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
            v63 = *(v62 - 8);
            v64 = *(v63 + 72);
            v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
            v66 = swift_allocObject();
            *(v66 + 16) = xmmword_1000D5250;
            (*(v63 + 104))(v66 + v65, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.liveTranslation(_:), v62);

            dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

            sub_10000EA94(&v97);
            sub_10000E8F4(v92);
            return sub_10000E950(&v100, &qword_10011CB50, &unk_1000D5F00);
          }

          sub_10000E950(&v94, &qword_10011CB50, &unk_1000D5F00);
LABEL_29:
          v90 = v1;
          if (qword_10011C5C0 != -1)
          {
            swift_once();
          }

          v67 = type metadata accessor for Logger();
          sub_10000A570(v67, qword_100122FA0);
          sub_10000E88C(&v100, &v97, &qword_10011CB50, &unk_1000D5F00);
          v68 = v47;

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v96 = v89;
            *v71 = 136315906;
            v88 = v70;
            v73 = static Headphone_Manager.shared.getter();
            dispatch thunk of Headphone_Manager.connectedHeadphones.getter();

            type metadata accessor for HeadphoneDevice();
            v74 = Dictionary.description.getter();
            v76 = v75;

            v77 = sub_100078978(v74, v76, &v96);

            *(v71 + 4) = v77;
            *(v71 + 12) = 2080;
            v78 = sub_100078978(countAndFlagsBits, object, &v96);

            *(v71 + 14) = v78;
            *(v71 + 22) = 2112;
            *(v71 + 24) = v68;
            *v72 = v47;
            *(v71 + 32) = 2080;
            sub_10000E88C(&v97, &v94, &qword_10011CB50, &unk_1000D5F00);
            sub_10000E88C(&v94, v93, &qword_10011CB50, &unk_1000D5F00);
            v79 = v68;
            sub_100008438(&qword_10011CB50, &unk_1000D5F00);
            v80 = String.init<A>(reflecting:)();
            v82 = v81;
            sub_10000E950(&v94, &qword_10011CB50, &unk_1000D5F00);
            sub_10000E950(&v97, &qword_10011CB50, &unk_1000D5F00);
            v83 = sub_100078978(v80, v82, &v96);

            *(v71 + 34) = v83;
            _os_log_impl(&_mh_execute_header, v69, v88, "Live Translation: Headphone device is nil, exiting %s btAddress:%s device:%@ provider:%s", v71, 0x2Au);
            sub_10000E950(v72, &unk_10011D820, &qword_1000D7280);

            swift_arrayDestroy();
          }

          else
          {

            sub_10000E950(&v97, &qword_10011CB50, &unk_1000D5F00);
          }

          v84 = v92;
          v85 = *&v90[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_flowController];
          if (v85)
          {
            v86 = v85;
            sub_1000AA094(0, 1);
          }

          else
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_1000B8BAC();
              swift_unknownObjectRelease();
            }
          }

          sub_10000E8F4(v84);
          return sub_10000E950(&v100, &qword_10011CB50, &unk_1000D5F00);
        }

        v50 = 0;
LABEL_25:
        sub_10000E950(&v97, &qword_10011CB48, &qword_1000D85B0);
        v100 = 0u;
        v101 = 0u;
        v102 = 0;
        if (v50)
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }
    }

    else
    {
    }

    v47 = 0;
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    v50 = 1;
    goto LABEL_25;
  }

  sub_10000E950(v6, &qword_10011EBD0, &unk_1000D5EE0);
  if (qword_10011C5C0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000A570(v32, qword_100122FA0);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Live Translation: Headphone Model is nil, exiting", v35, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = swift_unknownObjectWeakLoadStrong();
    result = swift_unknownObjectRelease();
    if (v37)
    {
      sub_100047C68();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10000D748(uint64_t *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(PRXLabel) initWithStyle:0];
  v5 = *a1;
  v6 = a1[1];
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v51._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  v9._object = 0x80000001000DBE50;
  v10.value._object = 0x80000001000DBE70;
  v10.value._countAndFlagsBits = 0xD00000000000001BLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v51);

  v13 = [v2 traitCollection];
  v14 = [v13 userInterfaceStyle];

  v15 = sub_100051A70(v5, v6, v12._countAndFlagsBits, v12._object, v14 == 2);

  [v4 setAttributedText:v15];

  v16 = [v2 contentView];
  v44 = v4;
  [v16 setTitleView:v4];

  v17 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  v18 = a1[2];
  v19 = a1[3];
  v20 = String._bridgeToObjectiveC()();
  [v17 setText:v20];

  v21 = [v2 contentView];
  v43 = v17;
  [v21 setSubtitleLabel:v17];

  type metadata accessor for GMOptIn();
  v22 = static GMOptIn.shared.getter();
  LOBYTE(v13) = dispatch thunk of GMOptIn.isOptedIn.getter();

  if ((v13 & 1) != 0 || (type metadata accessor for FollowUp(), (static FollowUp.hasEngagedWithCFU.getter() & 1) == 0))
  {
    v29 = a1[4];
    v28 = a1[5];

    v27 = 0;
  }

  else
  {
    v23 = [v7 mainBundle];
    v52._object = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD00000000000001FLL;
    v24._object = 0x80000001000DBE90;
    v25.value._object = 0x80000001000DBE70;
    v25.value._countAndFlagsBits = 0xD00000000000001BLL;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v52._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v52);

    v27 = 1;
  }

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  *(v31 + 24) = v30;

  v32 = String._bridgeToObjectiveC()();

  v49 = sub_10000E300;
  v50 = v31;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_10000C034;
  v48 = &unk_1001033B0;
  v33 = _Block_copy(&aBlock);
  v34 = objc_opt_self();
  v35 = [v34 actionWithTitle:v32 style:0 handler:v33];

  _Block_release(v33);

  v36 = a1[6];
  v37 = a1[7];
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v39 = String._bridgeToObjectiveC()();
  v49 = sub_10000E324;
  v50 = v38;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_10000C034;
  v48 = &unk_1001033D8;
  v40 = _Block_copy(&aBlock);
  v41 = [v34 actionWithTitle:v39 style:1 handler:v40];

  _Block_release(v40);

  v42 = [v2 addAction:v41];
}

void sub_10000DC6C(uint64_t a1, char a2)
{
  if (a2)
  {
    type metadata accessor for GMOptIn();
    v2 = static GMOptIn.shared.getter();
    dispatch thunk of GMOptIn.isOptedIn.setter();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_flowController), v5 = Strong, v6 = v4, v5, v4))
  {
    sub_1000AA094(0, 0);
  }

  else
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = swift_unknownObjectWeakLoadStrong();

      if (v9)
      {
        sub_1000B8A84();
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_10000DD60()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_flowController), v2 = Strong, v3 = v1, v2, v1))
  {
    sub_1000AA094(0, 1);
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = swift_unknownObjectWeakLoadStrong();

      if (v6)
      {
        sub_1000B8BAC();
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t type metadata accessor for HeadphoneLiveTranslationViewController()
{
  result = qword_10011CB30;
  if (!qword_10011CB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000DF8C()
{
  sub_10000E064();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000E064()
{
  if (!qword_10011EBB0)
  {
    type metadata accessor for HeadphoneModel(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10011EBB0);
    }
  }
}

uint64_t sub_10000E0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*v4 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneProxFeatureManager);
  v8 = *(a4 + 144);
  v9 = *(a4 + 152);

  v10.value._countAndFlagsBits = v8;
  v10.value._object = v9;
  LOBYTE(v8) = HeadphoneProxFeatureManager.shouldShowLiveTranslationCard(deviceAddress:)(v10);

  sub_10000E390(a4, a1);
  return v8 & 1;
}

uint64_t sub_10000E144(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_flowController);
  *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_flowController) = a1;
  return _objc_release_x1();
}

uint64_t sub_10000E15C(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneModel;
  swift_beginAccess();
  sub_10000EA2C(a1, v3 + v4, &qword_10011EBD0, &unk_1000D5EE0);
  return swift_endAccess();
}

uint64_t sub_10000E1F4@<X0>(uint64_t *a1@<X8>)
{
  sub_1000168A4(a1);
  v2 = sub_100033A5C(96);
  v4 = v3;
  v5 = a1[1];

  *a1 = v2;
  a1[1] = v4;
  v6 = sub_100033A5C(97);
  v8 = v7;
  v9 = a1[3];

  a1[2] = v6;
  a1[3] = v8;
  v10 = sub_100033A5C(98);
  v12 = v11;
  v13 = a1[5];

  a1[4] = v10;
  a1[5] = v12;
  v14 = sub_100033A5C(99);
  v16 = v15;
  v17 = a1[7];

  a1[6] = v14;
  a1[7] = v16;
  return result;
}

uint64_t sub_10000E290()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E2C8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E30C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_10000E32C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000E390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10000E3F4()
{
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5DA0;
  type metadata accessor for HeadphoneLiveTranslationViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass:ObjCClassFromMetadata];
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 colorNamed:v4 inBundle:v3 compatibleWithTraitCollection:0];

  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v0 + 32) = v6;
  v7 = [v2 bundleForClass:ObjCClassFromMetadata];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v5 colorNamed:v8 inBundle:v7 compatibleWithTraitCollection:0];

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v0 + 40) = v9;
  sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [objc_opt_self() configurationWithPaletteColors:isa];

  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() _systemImageNamed:v13 withConfiguration:v12];

  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v15 = [v14 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (v15)
  {

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_10000E694(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v1[v5] = static HeadphoneProxFeatureManager.shared.getter();
  v6 = &v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_movieRect];
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 1) = xmmword_1000D5DB0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___movieLoopView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController____lazy_storage___topAsset] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneDevice] = 0;
  v7 = &v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_contentProvider];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_type] = 14;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_flowController] = 0;
  v8 = OBJC_IVAR____TtC20HeadphoneProxService38HeadphoneLiveTranslationViewController_headphoneModel;
  v9 = type metadata accessor for HeadphoneModel(0);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithContentView:", a1);
}

void *sub_10000E7E4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000E828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E88C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008438(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E8F4(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E950(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008438(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E9B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000E9C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000EA2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008438(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000EA94(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000EAE8()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011CB68);
  v1 = sub_10000A570(v0, qword_10011CB68);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10000EC1C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = [objc_allocWithZone(UIImageView) init];
  v47 = sub_10000F45C();
  [v9 setImage:v47];
  v10 = v9;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v1 contentView];
  [v11 addSubview:v10];

  v12 = [v1 contentView];
  v13 = [v12 mainContentGuide];

  v14 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000D5C80;
  v16 = [v10 centerXAnchor];
  v17 = [v13 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v15 + 32) = v18;
  v19 = [v10 centerYAnchor];
  v20 = [v13 centerYAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v15 + 40) = v21;
  v22 = [v10 widthAnchor];
  v23 = [v22 constraintEqualToConstant:76.0];

  *(v15 + 48) = v23;
  v24 = [v10 heightAnchor];
  v25 = [v24 constraintEqualToConstant:76.0];

  *(v15 + 56) = v25;
  v26 = [v10 topAnchor];
  v27 = [v13 topAnchor];
  v28 = [v26 constraintGreaterThanOrEqualToAnchor:v27];

  *(v15 + 64) = v28;
  v29 = [v10 bottomAnchor];

  v30 = [v13 bottomAnchor];
  v31 = [v29 constraintLessThanOrEqualToAnchor:v30];

  *(v15 + 72) = v31;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints:isa];

  v33 = a1[4];
  v34 = a1[5];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v36 = String._bridgeToObjectiveC()();
  v52 = sub_10000F624;
  v53 = v35;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10000C034;
  v51 = &unk_100103468;
  v37 = _Block_copy(&aBlock);
  v38 = objc_opt_self();
  v39 = [v38 actionWithTitle:v36 style:0 handler:v37];

  _Block_release(v37);

  v40 = a1[6];
  v41 = a1[7];
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v43 = String._bridgeToObjectiveC()();
  v52 = sub_10000F678;
  v53 = v42;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_10000C034;
  v51 = &unk_100103490;
  v44 = _Block_copy(&aBlock);
  v45 = [v38 actionWithTitle:v43 style:1 handler:v44];

  _Block_release(v44);

  v46 = [v1 addAction:v45];
}

void sub_10000F21C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(void))
{
  if (qword_10011C5C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A570(v8, qword_10011CB68);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a3;
    _os_log_impl(&_mh_execute_header, v9, v10, a4, v11, 0xCu);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_unknownObjectWeakLoadStrong();

    if (v14)
    {
      a5();
      swift_unknownObjectRelease();
    }
  }
}

id sub_10000F3E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneInstallFindMyViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000F45C()
{
  v0 = objc_allocWithZone(ISIcon);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBundleIdentifier:v1];

  v3 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorHomeScreen];
  v4 = [v2 imageForImageDescriptor:v3];
  result = [v4 CGImage];
  if (result)
  {
    v6 = result;
    [v4 scale];
    v8 = [objc_allocWithZone(UIImage) initWithCGImage:v6 scale:0 orientation:v7];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000F5A0()
{
  result = qword_10011C8E0;
  if (!qword_10011C8E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011C8E0);
  }

  return result;
}

uint64_t sub_10000F5EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F660(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F6C8(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(reflecting:)();
}

uint64_t sub_10000F784()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011CBB8);
  v1 = sub_10000A570(v0, qword_10011CBB8);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10000F84C()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController____lazy_storage___featureMap;
  if (*(v0 + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController____lazy_storage___featureMap))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController____lazy_storage___featureMap);
  }

  else
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectWeakInit();
    v2 = sub_10000F8E4(v6, ObjectType);
    swift_unknownObjectWeakDestroy();
    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_10000F8E4(uint64_t a1, uint64_t a2)
{
  v133 = a2;
  v2 = sub_100008438(&qword_1001200D0, qword_1000D60C8);
  v122 = *(v2 - 8);
  v3 = *(v122 + 64);
  v4 = __chkstk_darwin(v2);
  v5 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v7 = v5;
  v8 = __chkstk_darwin(v6);
  v9 = v5;
  v10 = __chkstk_darwin(v8);
  v123 = v5;
  __chkstk_darwin(v10);
  v120 = v5;
  v11 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v12 = *(v11 - 8);
  v134 = v11;
  v135 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v125 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v113 - v17;
  v19 = __chkstk_darwin(v16);
  v124 = &v113 - v20;
  v21 = __chkstk_darwin(v19);
  v121 = &v113 - v22;
  v23 = __chkstk_darwin(v21);
  v119 = &v113 - v24;
  v25 = __chkstk_darwin(v23);
  v126 = v5;
  v26 = __chkstk_darwin(v25);
  v131 = v5;
  v27 = __chkstk_darwin(v26);
  v130 = v5;
  v28 = __chkstk_darwin(v27);
  v129 = v5;
  __chkstk_darwin(v28);
  v128 = v5;
  v127 = type metadata accessor for HeadphoneModel(0);
  v29 = *(v127 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v127);
  v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v113 - v35;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v38 = Strong;
  v116 = v5;
  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    swift_beginAccess();
    sub_10000E88C(v40 + 16, v136, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v41 = v137;
    if (v137)
    {
      v42 = sub_10000E7E4(v136, v137);
      v114 = &v113;
      v43 = *(v41 - 8);
      v44 = *(v43 + 64);
      __chkstk_darwin(v42);
      v118 = v7;
      v46 = (&v113 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v43 + 16))(v46);
      sub_10000E950(v136, &qword_10011FBC0, &unk_1000D5EF0);
      v117 = v38;
      v132 = v2;
      v47 = *v46;
      v48 = v9;
      v49 = v18;
      v50 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v51 = v47 + v50;
      v18 = v49;
      v9 = v48;
      v2 = v132;
      v38 = v117;
      sub_10000E390(v51, v32);
      v52 = v46;
      v7 = v118;
      (*(v43 + 8))(v52, v41);
      sub_10000E828(v32, v36);
      v53 = v127;
      (*(v29 + 56))(v36, 0, 1, v127);
      goto LABEL_7;
    }

    sub_10000E950(v136, &qword_10011FBC0, &unk_1000D5EF0);
  }

  v54 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneModel;
  swift_beginAccess();
  sub_10000E88C(&v38[v54], v36, &qword_10011EBD0, &unk_1000D5EE0);
  v53 = v127;
LABEL_7:
  if ((*(v29 + 48))(v36, 1, v53) == 1)
  {

    sub_10000E950(v36, &qword_10011EBD0, &unk_1000D5EE0);
LABEL_9:
    if (qword_10011C6F0 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_10000A570(v55, qword_100123180);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "no features we are dallocating", v58, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v114 = v9;
  v118 = v7;
  sub_10000E950(v36, &qword_10011EBD0, &unk_1000D5EE0);
  v60 = *&v38[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_listBuilder];
  v61 = v134;
  v62 = v135;
  v63 = *(v135 + 104);
  v64 = v119;
  v113 = v135 + 104;
  (v63)(v119, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.personalTranslator(_:), v134);
  v65 = *(v62 + 32);
  v66 = v120;
  v65(v120, v64, v61);
  v67 = v128;
  v135 = v62 + 32;
  v65(v128, v66, v61);
  v68 = &v67[*(v2 + 48)];
  v69 = swift_allocObject();
  *(v69 + 16) = sub_10001377C;
  *(v69 + 24) = v60;
  *v68 = sub_100013784;
  v68[1] = v69;
  swift_retain_n();
  v59 = sub_1000CC7B0(0, 1, 1, _swiftEmptyArrayStorage);
  v71 = v59[2];
  v70 = v59[3];
  v117 = v38;
  v115 = v18;
  if (v71 >= v70 >> 1)
  {
    v59 = sub_1000CC7B0(v70 > 1, v71 + 1, 1, v59);
  }

  v59[2] = v71 + 1;
  v120 = (*(v122 + 80) + 32) & ~*(v122 + 80);
  v127 = *(v122 + 72);
  sub_100013704(v128, v59 + v120 + v127 * v71);
  v72 = v121;
  v73 = v134;
  v128 = v63;
  (v63)(v121, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.chargingReminders(_:), v134);
  v74 = swift_allocObject();
  v75 = v133;
  *(v74 + 16) = v60;
  *(v74 + 24) = v75;
  v76 = v123;
  v65(v123, v72, v73);
  v77 = v129;
  v65(v129, v76, v73);
  v132 = v2;
  v78 = (v77 + *(v2 + 48));
  v79 = swift_allocObject();
  *(v79 + 16) = sub_1000137C4;
  *(v79 + 24) = v74;
  *v78 = sub_100013810;
  v78[1] = v79;
  v80 = v59[2];
  v81 = v59[3];

  if (v80 >= v81 >> 1)
  {
    v59 = sub_1000CC7B0(v81 > 1, v80 + 1, 1, v59);
  }

  v59[2] = v80 + 1;
  sub_100013704(v129, v59 + v120 + v80 * v127);
  v82 = v124;
  v83 = v134;
  v84 = v128;
  (v128)(v124, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.chargingStatus(_:), v134);
  v85 = swift_allocObject();
  v86 = v133;
  *(v85 + 16) = v60;
  *(v85 + 24) = v86;
  v87 = v114;
  v65(v114, v82, v83);
  v88 = v130;
  v65(v130, v87, v83);
  v89 = (v88 + *(v132 + 48));
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1000137CC;
  *(v90 + 24) = v85;
  *v89 = sub_100013810;
  v89[1] = v90;
  v91 = v59[2];
  v92 = v59[3];

  if (v91 >= v92 >> 1)
  {
    v59 = sub_1000CC7B0(v92 > 1, v91 + 1, 1, v59);
  }

  v59[2] = v91 + 1;
  v93 = v120;
  sub_100013704(v130, v59 + v120 + v91 * v127);
  v94 = v115;
  v95 = v134;
  (v84)(v115, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.pauseMediaOnSleep(_:), v134);
  v96 = v118;
  v65(v118, v94, v95);
  v97 = v131;
  v65(v131, v96, v95);
  v98 = (v97 + *(v132 + 48));
  v99 = swift_allocObject();
  *(v99 + 16) = sub_1000137D4;
  *(v99 + 24) = v60;
  *v98 = sub_100013810;
  v98[1] = v99;
  v100 = v59[2];
  v101 = v59[3];

  if (v100 >= v101 >> 1)
  {
    v59 = sub_1000CC7B0(v101 > 1, v100 + 1, 1, v59);
  }

  v59[2] = v100 + 1;
  sub_100013704(v131, v59 + v93 + v100 * v127);
  v102 = v125;
  v103 = v134;
  (v84)(v125, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.cameraControls(_:), v134);
  v104 = swift_allocObject();
  v105 = v133;
  *(v104 + 16) = v60;
  *(v104 + 24) = v105;
  v106 = v116;
  v65(v116, v102, v103);
  v107 = v126;
  v65(v126, v106, v103);
  v108 = (v107 + *(v132 + 48));
  v109 = swift_allocObject();
  *(v109 + 16) = sub_1000137DC;
  *(v109 + 24) = v104;
  *v108 = sub_100013810;
  v108[1] = v109;
  v110 = v59[2];
  v111 = v59[3];

  if (v110 >= v111 >> 1)
  {
    v59 = sub_1000CC7B0(v111 > 1, v110 + 1, 1, v59);
  }

  v59[2] = v110 + 1;
  sub_100013704(v107, v59 + v93 + v110 * v127);
  return v59;
}

void sub_1000106A8(uint64_t a1)
{
  sub_10000E3F4();
  v3 = v2;
  v4 = [objc_allocWithZone(UIImageView) initWithImage:v2];
  v5 = [objc_opt_self() systemBlueColor];
  [v4 setTintColor:v5];

  v6 = v4;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setContentMode:1];

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v25._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000020;
  v9._object = 0x80000001000DC1C0;
  v10.value._object = 0x80000001000DBE70;
  v10.value._countAndFlagsBits = 0xD00000000000001BLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v25);

  v13 = [v7 mainBundle];
  v26._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000023;
  v14._object = 0x80000001000DC1F0;
  v15.value._object = 0x80000001000DBE70;
  v15.value._countAndFlagsBits = 0xD00000000000001BLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v26);

  v18 = [v7 mainBundle];
  v27._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD00000000000001CLL;
  v19._object = 0x80000001000DBE50;
  v20.value._object = 0x80000001000DBE70;
  v20.value._countAndFlagsBits = 0xD00000000000001BLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v27);

  objc_allocWithZone(type metadata accessor for ProxCardBulletView());
  v23 = v6;
  sub_10009127C(v23, v12._countAndFlagsBits, v12._object, v17._countAndFlagsBits, v17._object, v22._countAndFlagsBits, v22._object);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v24 = *((*(a1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
}

uint64_t sub_100010968()
{
  sub_100013368();
  v1 = v0;
  v2 = [objc_allocWithZone(UIImageView) initWithImage:v0];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000022;
  v7._object = 0x80000001000DC160;
  v8.value._object = 0x80000001000DC030;
  v8.value._countAndFlagsBits = 0xD000000000000014;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

  v11 = [v5 mainBundle];
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000025;
  v12._object = 0x80000001000DC190;
  v13.value._object = 0x80000001000DC030;
  v13.value._countAndFlagsBits = 0xD000000000000014;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  sub_100092F4C(v4, v10._countAndFlagsBits, v10._object, v15._countAndFlagsBits, v15._object);
}

uint64_t sub_100010B7C()
{
  sub_1000131B4();
  v1 = v0;
  v2 = [objc_allocWithZone(UIImageView) initWithImage:v0];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  v7._object = 0x80000001000DC0E0;
  v8.value._object = 0x80000001000DBB60;
  v8.value._countAndFlagsBits = 0xD000000000000010;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

  v11 = [v5 mainBundle];
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000022;
  v12._object = 0x80000001000DC100;
  v13.value._object = 0x80000001000DBB60;
  v13.value._countAndFlagsBits = 0xD000000000000010;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  sub_100092F4C(v4, v10._countAndFlagsBits, v10._object, v15._countAndFlagsBits, v15._object);
}

void sub_100010D74()
{
  v0 = [objc_opt_self() configurationWithPointSize:4 weight:56.0];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {

    v3 = [objc_allocWithZone(UIImageView) initWithImage:v2];
    v4 = [objc_opt_self() systemBlueColor];
    [v3 setTintColor:v4];

    v5 = v3;
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setContentMode:1];

    v6 = objc_opt_self();
    v7 = [v6 mainBundle];
    v18._object = 0xE000000000000000;
    v8._object = 0x80000001000DC0A0;
    v9.value._object = 0x80000001000DC030;
    v8._countAndFlagsBits = 0xD000000000000014;
    v9.value._countAndFlagsBits = 0xD000000000000014;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v18);

    v12 = [v6 mainBundle];
    v19._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0xD000000000000017;
    v13._object = 0x80000001000DC0C0;
    v14.value._object = 0x80000001000DC030;
    v14.value._countAndFlagsBits = 0xD000000000000014;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v19);

    sub_100092F4C(v5, v11._countAndFlagsBits, v11._object, v16._countAndFlagsBits, v16._object);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100010FF8()
{
  sub_100013368();
  v1 = v0;
  v2 = [objc_allocWithZone(UIImageView) initWithImage:v0];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  v7._object = 0x80000001000DC010;
  v8.value._object = 0x80000001000DC030;
  v8.value._countAndFlagsBits = 0xD000000000000014;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

  v11 = [v5 mainBundle];
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000020;
  v12._object = 0x80000001000DC050;
  v13.value._object = 0x80000001000DC030;
  v13.value._countAndFlagsBits = 0xD000000000000014;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  sub_100092F4C(v4, v10._countAndFlagsBits, v10._object, v15._countAndFlagsBits, v15._object);
}

id sub_100011210()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v1 = String._bridgeToObjectiveC()();
  v5[4] = sub_100013774;
  v5[5] = v0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10000C034;
  v5[3] = &unk_1001035E8;
  v2 = _Block_copy(v5);
  v3 = [objc_opt_self() actionWithTitle:v1 style:1 handler:v2];

  _Block_release(v2);

  return v3;
}

void sub_100011338(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v2 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  __chkstk_darwin(v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008438(&unk_1001200F0, &unk_1000D5F10);
  v8 = *(v3 + 72);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = v9 + 4 * v8;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000D5FF0;
  v12 = v11 + v9;
  v13 = *(v4 + 104);
  v13(v12, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.chargingReminders(_:), v2);
  v13(v12 + v8, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.chargingStatus(_:), v2);
  v13(v12 + 2 * v8, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.cameraControls(_:), v2);
  v13(v12 + 3 * v8, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.pauseMediaOnSleep(_:), v2);
  v13(v7, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.liveTranslation(_:), v2);
  v14 = sub_1000CC9BC(1uLL, 5, 1, v11);
  *(v14 + 16) = 5;
  (*(v4 + 32))(v10 + v14, v7, v2);
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = Strong + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneModel;
    swift_beginAccess();
    v18 = type metadata accessor for HeadphoneModel(0);
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      v20 = *(v17 + 144);
      v19 = *(v17 + 152);
    }
  }

  dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v23 = *(v21 + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_flowController);
    if (v23)
    {
      v24 = v23;

      sub_1000AA9CC();
      v22 = v24;
    }
  }
}

void sub_10001169C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v150 = sub_100008438(&qword_1001200D0, qword_1000D60C8);
  v147 = *(v150 - 8);
  v3 = *(v147 + 64);
  v4 = __chkstk_darwin(v150);
  v6 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v134 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v134 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v134 - v14;
  v16 = __chkstk_darwin(v13);
  v144 = &v134 - v17;
  v18 = __chkstk_darwin(v16);
  v145 = &v134 - v19;
  __chkstk_darwin(v18);
  v149 = &v134 - v20;
  v21 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v148 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v134 - v25;
  v27 = type metadata accessor for HeadphoneModel(0);
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = __chkstk_darwin(v27);
  v32 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v140 = &v134 - v33;
  v154.receiver = v1;
  v154.super_class = ObjectType;
  objc_msgSendSuper2(&v154, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  v35 = &unk_100122000;
  v146 = v6;
  if (Strong)
  {
    v143 = v32;
    v36 = Strong;
    swift_beginAccess();
    sub_10000E88C(v36 + 16, v152, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v37 = v153;
    if (v153)
    {
      v38 = sub_10000E7E4(v152, v153);
      v138 = &v134;
      v39 = *(v37 - 8);
      v139 = v1;
      v40 = v39;
      v41 = *(v39 + 64);
      __chkstk_darwin(v38);
      v43 = (&v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v40 + 16))(v43);
      sub_10000E950(v152, &qword_10011FBC0, &unk_1000D5EF0);
      v142 = v27;
      v44 = *v43;
      v141 = v28;
      v45 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v46 = v44 + v45;
      v27 = v142;
      v28 = v141;
      v47 = v143;
      sub_10000E390(v46, v143);
      (*(v40 + 8))(v43, v37);
      v1 = v139;
      sub_10000E828(v47, v26);
      (v28[7])(v26, 0, 1, v27);
      v35 = &unk_100122000;
      goto LABEL_6;
    }

    sub_10000E950(v152, &qword_10011FBC0, &unk_1000D5EF0);
    v35 = &unk_100122000;
  }

  v48 = v35[504];
  swift_beginAccess();
  sub_10000E88C(&v1[v48], v26, &qword_10011EBD0, &unk_1000D5EE0);
LABEL_6:
  if ((v28[6])(v26, 1, v27) == 1)
  {
    sub_10000E950(v26, &qword_10011EBD0, &unk_1000D5EE0);
    if (qword_10011C5D0 == -1)
    {
LABEL_8:
      v49 = type metadata accessor for Logger();
      sub_10000A570(v49, qword_10011CBB8);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Whats New: Headphone Model is nil, exiting", v52, 2u);
      }

      return;
    }

LABEL_39:
    swift_once();
    goto LABEL_8;
  }

  v143 = v15;
  v135 = v9;
  v53 = v28;
  v54 = v140;
  sub_10000E828(v26, v140);
  v55 = v148;
  sub_10000E390(v54, v148);
  (v53[7])(v55, 0, 1, v27);
  v56 = v35[504];
  swift_beginAccess();
  sub_100013144(v55, &v1[v56]);
  swift_endAccess();
  v136 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneProxFeatureManager;
  v57 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneProxFeatureManager];
  v58 = *(v54 + 144);
  v59 = *(v54 + 152);

  v138 = v58;
  v137 = v59;
  v60 = HeadphoneProxFeatureManager.getWhatsNewNotShowedFeatures2025(deviceAddress:)();

  v139 = v1;
  v61 = sub_10000F84C();
  v142 = v61[2];
  if (v142)
  {
    v62 = 0;
    v63 = _swiftEmptyArrayStorage;
    v64 = v150;
    v141 = v61;
    while (v62 < v61[2])
    {
      v148 = (*(v147 + 80) + 32) & ~*(v147 + 80);
      v65 = *(v147 + 72);
      v66 = v149;
      sub_10000E88C(v61 + v148 + v65 * v62++, v149, &qword_1001200D0, qword_1000D60C8);
      v67 = v145;
      sub_10000E88C(v66, v145, &qword_1001200D0, qword_1000D60C8);
      v68 = *(v64 + 48);
      v69 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
      v70 = *(v69 - 8);
      (*(v70 + 32))(v12, v67, v69);
      v71 = &v12[*(v64 + 48)];
      v72 = swift_allocObject();
      v73 = 0;
      *(v72 + 16) = *(v67 + v68);
      *v71 = sub_1000136A4;
      v71[1] = v72;
      v74 = *(v60 + 16);
      do
      {
        if (v74 == v73)
        {
          sub_10000E950(v12, &qword_1001200D0, qword_1000D60C8);
          sub_10000E950(v149, &qword_1001200D0, qword_1000D60C8);
          v64 = v150;
          goto LABEL_14;
        }

        v75 = v73 + 1;
        v76 = v60 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v73;
        sub_1000136AC();
        v77 = dispatch thunk of static Equatable.== infix(_:_:)();
        v73 = v75;
      }

      while ((v77 & 1) == 0);
      sub_10000E950(v12, &qword_1001200D0, qword_1000D60C8);
      sub_100013704(v149, v144);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v151 = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000CD604(0, v63[2] + 1, 1);
        v63 = v151;
      }

      v64 = v150;
      v80 = v63[2];
      v79 = v63[3];
      if (v80 >= v79 >> 1)
      {
        sub_1000CD604(v79 > 1, v80 + 1, 1);
        v63 = v151;
      }

      v63[2] = v80 + 1;
      sub_100013704(v144, v63 + v148 + v80 * v65);
LABEL_14:
      v61 = v141;
      if (v62 == v142)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v63 = _swiftEmptyArrayStorage;
LABEL_25:

  v81 = v63[2];
  if (v81)
  {
    v82 = v63 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
    v83 = *(v147 + 72);
    v148 = v63;
    v149 = v83;
    v84 = v135;
    v85 = v150;
    do
    {
      v86 = v143;
      sub_10000E88C(v82, v143, &qword_1001200D0, qword_1000D60C8);
      v87 = *(v85 + 48);
      v88 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
      v89 = *(v88 - 8);
      (*(v89 + 32))(v84, v86, v88);
      v90 = (v84 + *(v85 + 48));
      v91 = swift_allocObject();
      *(v91 + 16) = *(v86 + v87);
      *v90 = sub_100013808;
      v90[1] = v91;
      v92 = v146;
      v93 = sub_10000E88C(v84, v146, &qword_1001200D0, qword_1000D60C8);
      v94 = v92 + *(v85 + 48);
      v95 = *(v94 + 8);
      (*v94)(v93);

      sub_10000E950(v84, &qword_1001200D0, qword_1000D60C8);
      (*(v89 + 8))(v92, v88);
      v82 += v149;
      --v81;
    }

    while (v81);
  }

  v96 = *(v60 + 16);

  v97 = v139;
  if (v96)
  {
    v98 = *&v139[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_listBuilder];
    v99 = sub_100092C00();
    v100 = [v97 contentView];
    v101 = v99;
    [v100 addSubview:v101];

    v102 = [v97 contentView];
    v103 = [v102 mainContentGuide];

    v104 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_1000D6000;
    v106 = [v101 topAnchor];

    v107 = [v103 topAnchor];
    v108 = [v106 constraintEqualToAnchor:v107];

    *(v105 + 32) = v108;
    v109 = [v101 bottomAnchor];

    v110 = [v103 bottomAnchor];
    v111 = [v109 constraintLessThanOrEqualToAnchor:v110];

    *(v105 + 40) = v111;
    v112 = [v101 leadingAnchor];

    v113 = [v103 leadingAnchor];
    v114 = [v112 constraintEqualToAnchor:v113];

    *(v105 + 48) = v114;
    v115 = [v101 trailingAnchor];

    v116 = [v103 trailingAnchor];
    v117 = [v115 constraintEqualToAnchor:v116];

    *(v105 + 56) = v117;
    sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v104 activateConstraints:isa];

    v119 = sub_100011210();
    [v97 setDismissButtonAction:v119];

    sub_100008438(&unk_1001200F0, &unk_1000D5F10);
    v120 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
    v121 = *(v120 - 8);
    v122 = *(v121 + 72);
    v123 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_1000D5FF0;
    v125 = v124 + v123;
    v126 = *(v121 + 104);
    v126(v125, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.whatsNew(_:), v120);
    v126(v125 + v122, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.chargingReminders(_:), v120);
    v126(v125 + 2 * v122, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.chargingStatus(_:), v120);
    v126(v125 + 3 * v122, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.cameraControls(_:), v120);
    v127 = *&v97[v136];

    dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();
  }

  else
  {
    v128 = *&v139[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_flowController];
    if (v128)
    {
      v129 = v128;
      sub_1000AA9CC();
    }

    if (qword_10011C5D0 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    sub_10000A570(v130, qword_10011CBB8);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&_mh_execute_header, v131, v132, "Whats New: Error nothing to show ... exiting", v133, 2u);
    }
  }

  sub_10000E8F4(v140);
}

void sub_100012794(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[4];
  v7 = a1[5];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v14[4] = sub_100013124;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10000C034;
  v14[3] = &unk_100103570;
  v10 = _Block_copy(v14);
  v11 = [objc_opt_self() actionWithTitle:v9 style:0 handler:v10];

  _Block_release(v10);

  if (a1[11])
  {
    v12 = a1[10];
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v1 setBottomTrayTitle:v13];
}

void sub_100012940()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_flowController);
    if (v2)
    {
      v3 = v2;

      sub_1000AA094(0, 0);
      v1 = v3;
    }
  }
}

BOOL sub_1000129BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100008480();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  type metadata accessor for Headphone_Manager();
  v4 = static Headphone_Manager.shared.getter();
  v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v7 = v6;

  v8 = dispatch thunk of Headphone_Manager.connectedHeadphones.getter();

  if (!*(v8 + 16))
  {

    goto LABEL_5;
  }

  v9 = sub_1000CD118(v5, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_5:

    v16 = 0;
    goto LABEL_6;
  }

  v12 = *(*(v8 + 56) + 8 * v9);

  v13 = *(v18 + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneProxFeatureManager);

  v14 = HeadphoneProxFeatureManager.getWhatsNewNotShowedFeatures2025(deviceAddress:)();

  v15 = *(v14 + 16);

  v16 = v15 != 0;
LABEL_6:
  sub_10000E390(a4, a1);
  return v16;
}

uint64_t sub_100012B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  v4 = type metadata accessor for HeadphoneViewModel(0);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0;
  v5 = v4[11];
  v6 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = v4[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v4[13]);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = (a2 + v4[14]);
  sub_10001309C(v27);
  v10 = v27[13];
  v9[12] = v27[12];
  v9[13] = v10;
  v9[14] = v27[14];
  v11 = v27[9];
  v9[8] = v27[8];
  v9[9] = v11;
  v12 = v27[11];
  v9[10] = v27[10];
  v9[11] = v12;
  v13 = v27[5];
  v9[4] = v27[4];
  v9[5] = v13;
  v14 = v27[7];
  v9[6] = v27[6];
  v9[7] = v14;
  v15 = v27[1];
  *v9 = v27[0];
  v9[1] = v15;
  v16 = v27[3];
  v9[2] = v27[2];
  v9[3] = v16;
  *(a2 + v4[15]) = 0;
  *(a2 + v4[16]) = 0;
  *(a2 + v4[17]) = _swiftEmptyArrayStorage;
  *(a2 + v4[18]) = _swiftEmptyArrayStorage;
  v17 = (a2 + v4[19]);
  v17[5] = 0u;
  v17[6] = 0u;
  v17[3] = 0u;
  v17[4] = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  *v17 = 0u;
  v18 = (a2 + v4[20]);
  *v18 = 0;
  v18[1] = 0;
  *(a2 + v4[21]) = 0;
  *(a2 + v4[22]) = 0;
  *(a2 + v4[23]) = 0;
  *(a2 + v4[24]) = 0;
  *a2 = sub_100033A5C(88);
  *(a2 + 8) = v19;
  *(a2 + 32) = sub_100033A5C(89);
  *(a2 + 40) = v20;
  v21 = *(a1 + *(type metadata accessor for HeadphoneModel(0) + 136));
  v22 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v21];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 isAirPods];
  }

  else
  {
    v24 = 0;
  }

  result = sub_1000130C4(v21);
  if ((v24 & 1) != 0 || result)
  {
    result = sub_100033A5C(90);
    *(a2 + 80) = result;
    *(a2 + 88) = v26;
  }

  return result;
}

uint64_t type metadata accessor for HeadphoneWhatsNew2025ViewController()
{
  result = qword_10011CC20;
  if (!qword_10011CC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012EDC()
{
  sub_10000E064();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100012FE4(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_flowController);
  *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_flowController) = a1;
  return _objc_release_x1();
}

uint64_t sub_100012FFC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneModel;
  swift_beginAccess();
  sub_100013144(a1, v3 + v4);
  return swift_endAccess();
}

double sub_10001309C(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1000130EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001312C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013144(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000131B4()
{
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5DA0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 systemBlueColor];
  *(v0 + 40) = [v1 whiteColor];
  sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() configurationWithPaletteColors:isa];

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:v4 withConfiguration:v3];

  if (!v5)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v6 = [v5 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (!v6)
  {
    goto LABEL_7;
  }
}

void sub_100013368()
{
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5DA0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 systemGreenColor];
  *(v0 + 40) = [v1 systemGreenColor];
  sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [objc_opt_self() configurationWithPaletteColors:isa];

  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:v4 withConfiguration:v3];

  if (!v5)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v6 = [v5 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (!v6)
  {
    goto LABEL_7;
  }
}

id sub_100013518(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_sectionWidth] = 0x4074000000000000;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_estimatedSectionHeight] = 0x4056800000000000;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v1[v5] = static HeadphoneProxFeatureManager.shared.getter();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_listBuilder;
  type metadata accessor for ProxBulltedListBuilder();
  v7 = swift_allocObject();
  *(v7 + 16) = _swiftEmptyArrayStorage;
  *&v2[v6] = v7;
  v8 = OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_headphoneModel;
  v9 = type metadata accessor for HeadphoneModel(0);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController____lazy_storage___featureMap] = 0;
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_type] = 12;
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService35HeadphoneWhatsNew2025ViewController_flowController] = 0;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithContentView:", a1);
}

uint64_t sub_10001366C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000136AC()
{
  result = qword_10011CC30;
  if (!qword_10011CC30)
  {
    type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011CC30);
  }

  return result;
}

uint64_t sub_100013704(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_1001200D0, qword_1000D60C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001378C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000137C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100010968();
}

uint64_t sub_1000137CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100010B7C();
}

uint64_t sub_1000137DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100010FF8();
}

uint64_t sub_100013814()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011CC38);
  v1 = sub_10000A570(v0, qword_10011CC38);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000138DC()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___imageView);
  }

  else
  {
    sub_100021944();
    v5 = v4;
    v6 = [objc_allocWithZone(UIImageView) initWithImage:v4];
    v7 = [objc_opt_self() systemBlueColor];
    [v6 setTintColor:v7];

    v8 = v6;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setContentMode:1];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1000139D8()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___topAsset;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___topAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___topAsset);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = sub_1000138DC();
    [v4 addSubview:v5];

    [*(v0 + OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___imageView) pinToOther:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:180.0];

    [v7 setActive:1];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_100013B04()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin(v4);
  v8 = v37 - v7 + 40;
  v39.receiver = v0;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, "viewDidLoad");
  [v0 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    sub_1000145EC(v10 + 16, v37);
    swift_unknownObjectRelease();
    v11 = v38;
    if (v38)
    {
      v12 = sub_10000E7E4(v37, v38);
      v13 = *(v11 - 8);
      v14 = *(v13 + 64);
      __chkstk_darwin(v12);
      v16 = (v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
      (*(v13 + 16))(v16);
      sub_10001465C(v37);
      v17 = *v16;
      v18 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v17 + v18, v6);
      (*(v13 + 8))(v16, v11);
      sub_10000E828(v6, v8);
      v19 = [v0 contentView];
      v20 = sub_1000139D8();
      [v19 addSubview:v20];

      v21 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController____lazy_storage___topAsset];
      v22 = [v0 contentView];
      v23 = [v22 mainContentGuide];

      [v21 pinToOtherWithLayoutGuide:v23];
      v24 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService39HeadphoneYodelHearingTestViewController_headphoneProxFeatureManager];
      v25 = *(v8 + 18);
      v26 = *(v8 + 19);
      sub_100008438(&unk_1001200F0, &unk_1000D5F10);
      v27 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
      v28 = *(v27 - 8);
      v29 = *(v28 + 72);
      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1000D5250;
      (*(v28 + 104))(v31 + v30, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v27);

      dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

      sub_10000E8F4(v8);
      return;
    }

    sub_10001465C(v37);
  }

  if (qword_10011C5D8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000A570(v32, qword_10011CC38);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Head Gestures: Headphone Model is nil, exiting", v35, 2u);
  }
}

void sub_100014068(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[4];
  v10 = a1[5];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v27 = sub_1000145C4;
  v28 = v11;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_1001037B8;
  v13 = _Block_copy(&v23);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = a1[6];
  v17 = a1[7];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v27 = sub_1000145E4;
  v28 = v18;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_1001037E0;
  v20 = _Block_copy(&v23);
  v21 = [v14 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = [v1 addAction:v21];
}

void sub_100014320()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000CE398();
      swift_unknownObjectRelease();
    }
  }
}

void sub_100014394()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100047C68();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10001458C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000145CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000145EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011FBC0, &unk_1000D5EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001465C(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011FBC0, &unk_1000D5EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000146CC()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011CCA0);
  v1 = sub_10000A570(v0, qword_10011CCA0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100014794()
{
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "viewDidLoad");
  [v0 setDismissalType:1];
  v1 = objc_opt_self();
  v38 = [v1 configurationWithPointSize:4 weight:56.0];
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000D5DA0;
  v3 = objc_opt_self();
  *(v2 + 32) = [v3 redColor];
  *(v2 + 40) = [v3 tertiaryLabelColor];
  sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v39 = [v1 configurationWithPaletteColors:isa];

  v37 = [v38 configurationByApplyingConfiguration:v39];
  v5 = String._bridgeToObjectiveC()();
  v36 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v37];

  v6 = [objc_allocWithZone(UIImageView) initWithImage:v36];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v0 contentView];
  [v7 addSubview:v6];

  v35 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D5240;
  v9 = [v6 topAnchor];
  v10 = [v0 contentView];
  v11 = [v10 mainContentGuide];

  v12 = [v11 topAnchor];
  v13 = [v9 constraintEqualToAnchor:v12];

  *(v8 + 32) = v13;
  v14 = [v6 centerXAnchor];
  v15 = [v0 contentView];
  v16 = [v15 mainContentGuide];

  v17 = [v16 centerXAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];

  *(v8 + 40) = v18;
  v19 = [v6 leadingAnchor];
  v20 = [v0 contentView];
  v21 = [v20 mainContentGuide];

  v22 = [v21 leadingAnchor];
  v23 = [v19 constraintGreaterThanOrEqualToAnchor:v22];

  *(v8 + 48) = v23;
  v24 = [v6 trailingAnchor];
  v25 = [v0 contentView];
  v26 = [v25 mainContentGuide];

  v27 = [v26 trailingAnchor];
  v28 = [v24 constraintLessThanOrEqualToAnchor:v27];

  *(v8 + 56) = v28;
  v29 = [v6 bottomAnchor];

  v30 = [v0 contentView];
  v31 = [v30 mainContentGuide];

  v32 = [v31 bottomAnchor];
  v33 = [v29 constraintLessThanOrEqualToAnchor:v32];

  *(v8 + 64) = v33;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:v34];
}

id sub_100014DC4(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
  if (qword_10011C5E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A570(v3, qword_10011CCA0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Headphone Announce Notifications intro card appeared", v6, 2u);
  }

  return [objc_opt_self() setHasSeenAnnounceNotifications:1];
}

void sub_100014F40(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  if (a1[11])
  {
    v9 = a1[10];
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v1 setBottomTrayTitle:v10];

  v11 = a1[4];
  v12 = a1[5];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = String._bridgeToObjectiveC()();
  v29 = sub_100015470;
  v30 = v13;
  v25 = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_10000C034;
  v28 = &unk_100103870;
  v15 = _Block_copy(&v25);
  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:0 handler:v15];

  _Block_release(v15);

  v18 = a1[7];
  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = a1[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v21 = String._bridgeToObjectiveC()();
    v29 = sub_1000154C0;
    v30 = v20;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_10000C034;
    v28 = &unk_100103898;
    v22 = _Block_copy(&v25);
    v23 = [v16 actionWithTitle:v21 style:1 handler:v22];

    _Block_release(v22);

    v24 = [v1 addAction:v23];
  }
}

void sub_10001523C(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(void))
{
  if (qword_10011C5E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011CCA0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a3, v9, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      a4();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100015438()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000154A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100015500()
{
  type metadata accessor for HeadphoneLiveTranslationViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 URLForResource:v2 withExtension:v3];

  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100015618()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_1000156D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100015838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100015988()
{
  sub_100015CEC(319, &qword_10011CD60, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100016548(319, &qword_10011CD68, &qword_10011CD70, NSAttributedString_ptr, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100015C78(319, &qword_10011CD78, type metadata accessor for HeadphoneAssets);
      if (v2 <= 0x3F)
      {
        type metadata accessor for HeadphoneViewModel.BatteryConfiguration(319);
        if (v3 <= 0x3F)
        {
          sub_100016840(319, &qword_10011CD80, &qword_10011CD88, &qword_1000D61F8, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100015CEC(319, &qword_10011CD90, &type metadata for HeadphoneLayoutMetrics, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_100015CEC(319, &qword_10011CD98, &type metadata for HeadphoneViewModel.MismatchLabel, &type metadata accessor for Array);
              if (v6 <= 0x3F)
              {
                sub_100015CEC(319, &qword_10011CDA0, &type metadata for String, &type metadata accessor for Array);
                if (v7 <= 0x3F)
                {
                  sub_100015CEC(319, &qword_10011CDA8, &type metadata for HeadphoneModel.AnnounceNotificationSources, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_100015CEC(319, &qword_10011CDB0, &type metadata for HeadphoneModel.LiveTranslationSources, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
                    {
                      sub_100015C78(319, &unk_10011CDB8, type metadata accessor for CGColor);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100015C78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100015CEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_100015D48(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100015D5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100015DA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_100015E58()
{
  sub_100015FA4(319, &qword_10011CEB8);
  if (v0 <= 0x3F)
  {
    sub_10001600C(319, &qword_10011CEC0);
    if (v1 <= 0x3F)
    {
      sub_100015F38();
      if (v2 <= 0x3F)
      {
        sub_100015FA4(319, &qword_10011CED0);
        if (v3 <= 0x3F)
        {
          sub_10001600C(319, &unk_10011CED8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100015F38()
{
  if (!qword_10011CEC8)
  {
    type metadata accessor for HeadphoneBatteryInfo(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10011CEC8);
    }
  }
}

void sub_100015FA4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for HeadphoneBatteryInfo(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10001600C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for HeadphoneBatteryInfo(0);
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100016068(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100008438(&unk_100120000, &qword_1000D62D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000161E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = sub_100008438(&unk_100120000, &qword_1000D62D0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100016350()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_100015C78(319, &qword_10011CF78, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      sub_100015C78(319, &qword_10011CF80, type metadata accessor for HeadphoneAssets.Feature);
      if (v2 <= 0x3F)
      {
        sub_100016548(319, &qword_10011CF88, &qword_10011CF90, UIImage_ptr, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_100016548(319, &qword_10011CF98, &qword_10011CFA0, UIView_ptr, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_100016840(319, &qword_10011CFA8, &unk_10011CFB0, &qword_1000D62E8, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100016510(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016548(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000084D4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000165C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
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

uint64_t sub_100016694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
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

void sub_10001674C()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_100016548(319, &qword_10011D060, &qword_10011D068, NSValue_ptr, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100016840(319, &qword_10011D070, &unk_10011D078, &qword_1000DA4F0, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100016840(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10000A408(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_1000168A4@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v2 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v3 = v2[11];
  v4 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v6 = (a1 + v2[13]);
  *v6 = 0u;
  v6[1] = 0u;
  v7 = (a1 + v2[14]);
  sub_10001309C(v18);
  v8 = v18[13];
  v7[12] = v18[12];
  v7[13] = v8;
  v7[14] = v18[14];
  v9 = v18[9];
  v7[8] = v18[8];
  v7[9] = v9;
  v10 = v18[11];
  v7[10] = v18[10];
  v7[11] = v10;
  v11 = v18[5];
  v7[4] = v18[4];
  v7[5] = v11;
  v12 = v18[7];
  v7[6] = v18[6];
  v7[7] = v12;
  v13 = v18[1];
  *v7 = v18[0];
  v7[1] = v13;
  v14 = v18[3];
  v7[2] = v18[2];
  v7[3] = v14;
  *(a1 + v2[15]) = 0;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = _swiftEmptyArrayStorage;
  *(a1 + v2[18]) = _swiftEmptyArrayStorage;
  v15 = (a1 + v2[19]);
  result = 0.0;
  v15[5] = 0u;
  v15[6] = 0u;
  v15[3] = 0u;
  v15[4] = 0u;
  v15[1] = 0u;
  v15[2] = 0u;
  *v15 = 0u;
  v17 = (a1 + v2[20]);
  *v17 = 0;
  v17[1] = 0;
  *(a1 + v2[21]) = 0;
  *(a1 + v2[22]) = 0;
  *(a1 + v2[23]) = 0;
  *(a1 + v2[24]) = 0;
  return result;
}

uint64_t sub_100016A30()
{
  v1 = v0;
  v2 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v18 - v4;
  v19 = 0;
  v20 = 0xE000000000000000;
  _StringGuts.grow(_:)(84);
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x80000001000DC470;
  String.append(_:)(v6);
  type metadata accessor for URL();
  sub_100017A58();
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x72616D697270202CLL;
  v8._object = 0xEF203D204C525579;
  String.append(_:)(v8);
  v9 = type metadata accessor for HeadphoneAssets(0);
  v10 = v0 + v9[5];
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._object = 0x80000001000DC4A0;
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  sub_100017AB0(v1 + v9[6], v5);
  v13._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x20736567616D6920;
  v14._object = 0xEA0000000000203DLL;
  String.append(_:)(v14);
  v18[1] = *(v1 + v9[8]);

  sub_100008438(&qword_10011D0D0, &unk_1000D63C0);
  v15._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 62;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return v19;
}

uint64_t sub_1000171AC()
{
  v1 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001792C(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = 0xD000000000000015;
      }

      else
      {
        v8 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
        v9 = *(v8 + 48);
        sub_1000179F8(&v4[*(v8 + 64)], type metadata accessor for HeadphoneBatteryInfo);
        sub_1000179F8(&v4[v9], type metadata accessor for HeadphoneBatteryInfo);
        v6 = 0x69772074696C7053;
      }

      goto LABEL_12;
    }

    v6 = 0xD000000000000012;
    v7 = *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v6 = 0xD000000000000012;
    v7 = *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
LABEL_10:
    sub_1000179F8(&v4[v7], type metadata accessor for HeadphoneBatteryInfo);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 4)
  {
    return 1701736270;
  }

  v6 = 0x2074657364616548;
LABEL_12:
  sub_1000179F8(v4, type metadata accessor for HeadphoneBatteryInfo);
  return v6;
}

BOOL sub_1000173B8(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, unint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        goto LABEL_8;
      }
    }

    else if (a8 == 2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (a8)
  {
    return 0;
  }

LABEL_8:
  if ((a1 != a5 || a2 != a6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  result = (a3 | a7) == 0;
  if (a3)
  {
    if (a7)
    {
      sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
      v11 = a7;
      v12 = a3;
      v13 = static NSObject.== infix(_:_:)();

      return v13 & 1;
    }
  }

  return result;
}

uint64_t sub_1000174A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v35 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v35 - v16;
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  v20 = sub_100008438(&qword_10011D0B0, &unk_1000D63A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v35 - v23;
  v25 = &v35 + *(v22 + 56) - v23;
  sub_10001792C(a1, &v35 - v23);
  sub_10001792C(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_26;
        }

LABEL_23:
        sub_100017990(v24);
        return 0;
      }

      sub_10001792C(v24, v8);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_1000179F8(v25, type metadata accessor for HeadphoneBatteryInfo);
        v27 = v8;
        goto LABEL_25;
      }

LABEL_22:
      sub_1000179F8(v8, type metadata accessor for HeadphoneBatteryInfo);
      goto LABEL_23;
    }

    sub_10001792C(v24, v11);
    v30 = *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
    v29 = &v11[v30];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1000179F8(&v25[v30], type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(v25, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(&v11[v30], type metadata accessor for HeadphoneBatteryInfo);
      v27 = v11;
      goto LABEL_25;
    }

    v14 = v11;
LABEL_21:
    sub_1000179F8(v29, type metadata accessor for HeadphoneBatteryInfo);
    v8 = v14;
    goto LABEL_22;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_10001792C(v24, v19);
    v28 = *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
    v29 = &v19[v28];
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000179F8(&v25[v28], type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(v25, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(&v19[v28], type metadata accessor for HeadphoneBatteryInfo);
      v27 = v19;
      goto LABEL_25;
    }

    v14 = v19;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10001792C(v24, v14);
    v31 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
    v32 = *(v31 + 48);
    v29 = &v14[v32];
    v33 = *(v31 + 64);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1000179F8(&v25[v33], type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(&v25[v32], type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(v25, type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(&v14[v33], type metadata accessor for HeadphoneBatteryInfo);
      sub_1000179F8(&v14[v32], type metadata accessor for HeadphoneBatteryInfo);
      v27 = v14;
      goto LABEL_25;
    }

    sub_1000179F8(&v14[v33], type metadata accessor for HeadphoneBatteryInfo);
    goto LABEL_21;
  }

  sub_10001792C(v24, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v8 = v17;
    goto LABEL_22;
  }

  sub_1000179F8(v25, type metadata accessor for HeadphoneBatteryInfo);
  v27 = v17;
LABEL_25:
  sub_1000179F8(v27, type metadata accessor for HeadphoneBatteryInfo);
LABEL_26:
  sub_1000179F8(v24, type metadata accessor for HeadphoneViewModel.BatteryConfiguration);
  return 1;
}

uint64_t sub_10001792C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017990(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011D0B0, &unk_1000D63A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000179F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100017A58()
{
  result = qword_10011D0C8;
  if (!qword_10011D0C8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D0C8);
  }

  return result;
}

uint64_t sub_100017AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100017B20()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D0D8);
  v1 = sub_10000A570(v0, qword_10011D0D8);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100017BE8()
{
  v10[4] = [v0 titleView];
  v1 = [v0 bodyView];
  v2 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_imageView];
  v10[5] = v1;
  v10[6] = v2;
  v11 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_doublePressMicaView];
  v3 = v11;
  result = v2;
  v5 = 0;
LABEL_2:
  if (v5 <= 4)
  {
    v6 = 4;
  }

  else
  {
    v6 = v5;
  }

  while (1)
  {
    if (v5 == 4)
    {
      sub_100008438(&qword_10011D148, &qword_1000D6430);
      swift_arrayDestroy();
      return _swiftEmptyArrayStorage;
    }

    if (v6 == v5)
    {
      break;
    }

    v7 = v10[v5++ + 4];
    if (v7)
    {
      v8 = v7;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v9 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100018A4C(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1 & 1);
  sub_100018ACC();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000BB1F8(*(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_type));
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100018ACC()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_10001990C;
  v18 = v1;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100019340;
  v16 = &unk_100103A88;
  v2 = _Block_copy(&v13);

  [v0 animateWithDuration:0 delay:v2 options:0 animations:0.5 completion:0.0];
  _Block_release(v2);
  v3 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v4) = 1041865114;
  LODWORD(v5) = 0.75;
  LODWORD(v6) = 1.0;
  LODWORD(v7) = 1041865114;
  v8 = [v3 initWithControlPoints:v4 :v5 :v7 :v6];
  v9 = objc_opt_self();
  [v9 begin];
  [v9 setAnimationTimingFunction:v8];
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_10001992C;
  v18 = v10;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100019340;
  v16 = &unk_100103AB0;
  v11 = _Block_copy(&v13);

  v17 = nullsub_1;
  v18 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1000194C0;
  v16 = &unk_100103AD8;
  v12 = _Block_copy(&v13);
  [v0 animateWithDuration:v11 animations:v12 completion:0.5];
  _Block_release(v12);
  _Block_release(v11);
  [v9 commit];
}

void sub_100018DB0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitleText:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setBodyText:v8];

  [v1 setShouldCenterAlignText:1];
  v9 = a1[4];
  v10 = a1[5];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v27 = sub_100019768;
  v28 = v11;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_1001039E8;
  v13 = _Block_copy(&v23);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = a1[6];
  v17 = a1[7];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v27 = sub_1000197B0;
  v28 = v18;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100103A10;
  v20 = _Block_copy(&v23);
  v21 = [v14 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = [v1 addAction:v21];
}

void sub_10001907C(uint64_t (*a1)(), uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_100019810;
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_100019340;
  v11 = &unk_100103A38;
  v6 = _Block_copy(&v8);

  v12 = a1;
  v13 = a2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000194C0;
  v11 = &unk_100103A60;
  v7 = _Block_copy(&v8);

  [v4 animateWithDuration:0 delay:v6 options:v7 animations:0.166666667 completion:0.0];
  _Block_release(v7);
  _Block_release(v6);
}

uint64_t sub_1000191F8(uint64_t a1, uint64_t a2, uint64_t (*a3)())
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_10001907C(a3, v6);
  }

  return result;
}

void sub_1000192BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100019340(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100019384()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_horizontalImageConstraint);
    if (v2)
    {
      v3 = v2;

      [v3 setConstant:0.0];
      v1 = v3;
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *(v4 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_horizontalMicaConstraint);
    if (v6)
    {
      v7 = v6;

      [v7 setConstant:0.0];
      v5 = v7;
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 contentView];

    [v10 layoutIfNeeded];
  }
}

uint64_t sub_1000194C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_100019514(double a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_100017BE8();

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 0; ; ++j)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(v4 + 8 * j + 32);
        }

        v8 = v7;
        v9 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v7 setAlpha:a1];

        if (v9 == i)
        {
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }

  return result;
}

uint64_t sub_100019730()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019798(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100019860(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_imageView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_doublePressMicaView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_horizontalImageConstraint] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_horizontalMicaConstraint] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneEndCallViewController_type] = 5;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "initWithContentView:", a1);
}

uint64_t sub_100019964()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D150);
  v1 = sub_10000A570(v0, qword_10011D150);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_100019A44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100019AB8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100019B0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = a8;
  v45 = a7;
  v42 = a4;
  v43 = a6;
  v46 = a5;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v39 = v15;
    v40 = v20;
    v37 = v18;
    v41 = v19;
    v38 = *(result + 96);

    v25 = swift_allocObject();
    *(v25 + 16) = a1;
    v26 = a2 & 1;
    *(v25 + 24) = v26;
    v28 = v42;
    v27 = v43;
    v42 = v14;
    v30 = v45;
    v29 = v46;
    *(v25 + 32) = v28;
    *(v25 + 40) = v29;
    *(v25 + 48) = v27;
    *(v25 + 56) = v30;
    v31 = v44;
    *(v25 + 64) = a3;
    *(v25 + 72) = v31;
    *(v25 + 80) = a9;
    *(v25 + 88) = a10;
    *(v25 + 96) = a11;
    aBlock[4] = sub_10001C330;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100103C78;
    v32 = _Block_copy(aBlock);
    sub_10001C374(a1, v26);

    static DispatchQoS.unspecified.getter();
    v47 = _swiftEmptyArrayStorage;
    sub_10001C380();
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
    v33 = v37;
    v34 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v35 = v38;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    (*(v39 + 8))(v33, v34);
    (*(v40 + 8))(v23, v41);
  }

  return result;
}

uint64_t sub_100019E6C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (qword_10011C5F0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A570(v9, qword_10011D150);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    sub_10001C2B8(a1, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock = v13;
      *v12 = 136315138;
      v50[0] = a1;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v14 = String.init<A>(describing:)();
      v16 = sub_100078978(v14, v15, &aBlock);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "HeadphoneUpsellClient: Failed to determine fetch eligibility %s", v12, 0xCu);
      sub_10000EA94(v13);
    }

    return a3(a1, 1);
  }

  else if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_10000E9C8(result + 56, v50);

      v19 = sub_10000E7E4(v50, v50[3]);
      v20 = swift_allocObject();
      *(v20 + 16) = a3;
      *(v20 + 24) = a4;
      v21 = *v19;

      v22 = sub_10009C3A4();
      v23 = objc_allocWithZone(AMSMarketingItemTask);
      v24 = String._bridgeToObjectiveC()();
      v25 = String._bridgeToObjectiveC()();
      v26 = String._bridgeToObjectiveC()();
      v27 = String._bridgeToObjectiveC()();
      v28 = [v23 initWithBag:v22 clientIdentifier:v24 clientVersion:v25 placement:v26 serviceType:v27];
      swift_unknownObjectRelease();

      v29 = [objc_opt_self() ams_sharedAccountStore];
      v30 = [v29 ams_activeiTunesAccount];

      [v28 setAccount:v30];
      if (a6)
      {
        v31 = String._bridgeToObjectiveC()();
      }

      else
      {
        v31 = 0;
      }

      [v28 setOfferHints:{v31, a5}];

      v38 = [v28 perform];
      v39 = swift_allocObject();
      *(v39 + 16) = sub_10001C474;
      *(v39 + 24) = v20;
      v48 = sub_10001C278;
      v49 = v39;
      aBlock = _NSConcreteStackBlock;
      v45 = 1107296256;
      v46 = sub_10001C7E0;
      v47 = &unk_100103CF0;
      v40 = _Block_copy(&aBlock);

      [v38 addSuccessBlock:v40];
      _Block_release(v40);
      v41 = swift_allocObject();
      *(v41 + 16) = sub_10001C474;
      *(v41 + 24) = v20;
      v48 = sub_10001C298;
      v49 = v41;
      aBlock = _NSConcreteStackBlock;
      v45 = 1107296256;
      v46 = sub_10001BD44;
      v47 = &unk_100103D40;
      v42 = _Block_copy(&aBlock);

      [v38 addErrorBlock:v42];
      _Block_release(v42);

      return sub_10000EA94(v50);
    }
  }

  else
  {
    if (qword_10011C5F0 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000A570(v32, qword_10011D150);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "HeadphoneUpsellClient: Registration yielded no offers", v35, 2u);
    }

    sub_10001C420();
    v36 = swift_allocError();
    *v37 = 0;
    a3(v36, 1);
  }

  return result;
}

uint64_t sub_10001A494(uint64_t a1, uint64_t a2, void (*a3)(_BOOL8, void), uint64_t a4)
{
  if (qword_10011C5F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A570(v7, qword_10011D150);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v32 = a4;
    v10 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136315138;
    sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
    sub_10001C19C(&qword_10011D268, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
    v13 = Set.description.getter();
    v15 = sub_100078978(v13, v14, &aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "HeadphoneUpsellClient: Groups - %s", v11, 0xCu);
    sub_10000EA94(v12);

    a3 = v10;
    a4 = v32;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000E9C8(result + 56, v39);

    v17 = sub_10000E7E4(v39, v39[3]);
    sub_10001BDEC(a1, sub_1000A80BC, sub_1000A7C90);
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a4;
    v19 = *v17;
    v20 = objc_opt_self();
    swift_retain_n();
    v21 = [v20 ams_sharedAccountStore];
    v22 = [v21 ams_activeiTunesAccount];

    if (v22)
    {
      v23 = v22;
      v24 = [objc_allocWithZone(AMSDeviceOfferRegistrationTask) initWithAccount:v23 bag:sub_10009C3A4()];

      swift_unknownObjectRelease();
      sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v24 setRegistrationGroups:isa];

      v26 = [v24 perform];
      v27 = swift_allocObject();
      *(v27 + 16) = sub_10001C218;
      *(v27 + 24) = v18;
      v37 = sub_10001C278;
      v38 = v27;
      v34 = 1107296256;
      aBlock = _NSConcreteStackBlock;
      v35 = sub_10001C7E0;
      v36 = &unk_100103BD8;
      v28 = _Block_copy(&aBlock);

      [v26 addSuccessBlock:v28];
      _Block_release(v28);
      v29 = swift_allocObject();
      *(v29 + 16) = sub_10001C218;
      *(v29 + 24) = v18;
      v37 = sub_10001C298;
      v38 = v29;
      aBlock = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_10001BD44;
      v36 = &unk_100103C28;
      v30 = _Block_copy(&aBlock);

      [v26 addErrorBlock:v30];
      _Block_release(v30);
    }

    else
    {
      sub_10001C224();
      v31 = swift_allocError();
      sub_10001A9DC(v31, 1, a3);
    }

    return sub_10000EA94(v39);
  }

  return result;
}

uint64_t sub_10001A9DC(_BOOL8 a1, char a2, void (*a3)(_BOOL8, void))
{
  if (qword_10011C5F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011D150);
  sub_10001C2A0(a1, a2 & 1);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  sub_10001C2AC(a1, a2 & 1);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    sub_10001C2A0(a1, a2 & 1);
    sub_100008438(&qword_10011D280, &unk_1000D64F0);
    v11 = String.init<A>(describing:)();
    v13 = sub_100078978(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "HeadphoneUpsellTask: Registration offers %s", v9, 0xCu);
    sub_10000EA94(v10);
  }

  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    a1 = [a1 count] > 0;
  }

  a3(a1, a2 & 1);
  return sub_10001C2B8(a1, a2 & 1);
}

uint64_t sub_10001ABCC(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v3 = sub_100008438(&qword_10011F970, &qword_1000D64C8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v45 = &v39 - v5;
  v46 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v44 = *(v46 - 8);
  v6 = *(v44 + 64);
  __chkstk_darwin(v46);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008438(&qword_10011D220, &qword_1000D64D0);
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  __chkstk_darwin(v8);
  v11 = &v39 - v10;
  v12 = sub_100008438(&qword_10011D228, &qword_1000D64D8);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  __chkstk_darwin(v12);
  v47 = &v39 - v14;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_10001BEAC(_swiftEmptyArrayStorage);
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v52 = v15;
  v16 = sub_100008438(&qword_10011D230, &qword_1000D64E0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = CurrentValueSubject.init(_:)();
  v20 = v2[5];
  v21 = v2[6];
  sub_10000E7E4(v2 + 2, v20);
  v40 = v2;
  v22 = *(v21 + 8);

  v22(sub_10001BB9C, v19, v20, v21);

  v52 = v19;
  sub_10001C3D8(&qword_10011D238, &qword_10011D230, &qword_1000D64E0);
  Publisher.first(where:)();
  v23 = v43;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v24 = static OS_dispatch_queue.main.getter();
  v52 = v24;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v26 = v45;
  (*(*(v25 - 8) + 56))(v45, 1, 1, v25);
  sub_10001C3D8(&qword_10011D248, &qword_10011D220, &qword_1000D64D0);
  sub_10001C19C(&qword_10011FA00, &qword_10011D240, OS_dispatch_queue_ptr);
  v27 = v47;
  v28 = v42;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  sub_10001BBA4(v26);

  (*(v44 + 8))(v23, v46);
  (*(v41 + 8))(v11, v28);
  v29 = swift_allocObject();
  v30 = v40;
  swift_weakInit();
  v31 = swift_allocObject();
  v32 = v50;
  v33 = v51;
  v31[2] = v50;
  v31[3] = v33;
  v31[4] = v29;
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  sub_10001C3D8(&qword_10011D250, &qword_10011D228, &qword_1000D64D8);
  swift_retain_n();
  v35 = v49;
  v36 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v48 + 8))(v27, v35);
  v37 = v30[13];
  v30[13] = v36;
}

void sub_10001B1AC(uint64_t a1)
{
  if (qword_10011C5F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011D150);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v30[0] = v6;
    *v5 = 136315138;
    v7 = Dictionary.description.getter();
    v9 = sub_100078978(v7, v8, v30);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "HeadphoneUpsellClient: Accessory received: %s", v5, 0xCu);
    sub_10000EA94(v6);
  }

  sub_10009C5E8(a1);
  if (v10)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136315138;
      sub_1000084D4(0, &qword_10011D270, AMSDeviceOfferRegistrationItem_ptr);
      v15 = Array.description.getter();
      v17 = sub_100078978(v15, v16, v30);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "HeadphoneUpsellClient: Items generated: %s", v13, 0xCu);
      sub_10000EA94(v14);
    }

    v18 = objc_allocWithZone(AMSDeviceOfferRegistrationGroup);
    sub_1000084D4(0, &qword_10011D270, AMSDeviceOfferRegistrationItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v20 = [v18 initWithRegistrationItems:isa];

    [v20 setValidationOptions:5];
    CurrentValueSubject.value.getter();
    v21 = v20;
    sub_1000A60BC(v30, v21);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30[0] = v25;
      *v24 = 136315138;
      swift_beginAccess();
      sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
      sub_10001C19C(&qword_10011D268, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);

      v26 = Set.description.getter();
      v28 = v27;

      v29 = sub_100078978(v26, v28, v30);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "HeadphoneUpsellClient: Adding group new: %s", v24, 0xCu);
      sub_10000EA94(v25);
    }

    swift_beginAccess();

    CurrentValueSubject.value.setter();
  }
}

BOOL sub_10001B648(uint64_t a1)
{
  if ((*a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(*a1 + 16);
  }

  return v1 != 0;
}

uint64_t sub_10001B68C(_BYTE *a1, void (*a2)(void *))
{
  if ((*a1 & 1) == 0)
  {
    if (qword_10011C5F0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_10011D150);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21[0] = v7;
      *v6 = 136315138;
      v8 = String.init<A>(describing:)();
      v10 = sub_100078978(v8, v9, v21);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "HeadphoneUpsellClient: Device detection error - %s", v6, 0xCu);
      sub_10000EA94(v7);
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "HeadphoneUpsellClient: Proceeding with empty groups", v13, 2u);
    }

    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_10001BEAC(_swiftEmptyArrayStorage);
      v14 = v20;
    }

    else
    {
      v14 = &_swiftEmptySetSingleton;
    }

    a2(v14);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10000E9C8(Strong + 16, v21);

    v16 = v22;
    v17 = v23;
    sub_10000E7E4(v21, v22);
    (*(v17 + 16))(v16, v17);
    sub_10000EA94(v21);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + 104);
    *(result + 104) = 0;
  }

  return result;
}

uint64_t sub_10001B958(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  if (qword_10011C5F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011D150);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
    sub_10001C19C(&qword_10011D268, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
    v9 = Set.description.getter();
    v11 = sub_100078978(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "HeadphoneUpsellClient: Sink: %s", v7, 0xCu);
    sub_10000EA94(v8);
  }

  return a2(v3);
}

uint64_t sub_10001BB28()
{
  sub_10000EA94((v0 + 16));
  sub_10000EA94((v0 + 56));

  v1 = *(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_10001BBA4(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011F970, &qword_1000D64C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001BC0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001BC44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001BC84(_BYTE *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_10001B68C(a1, *(v1 + 16));
}

Swift::Int sub_10001BC98()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10001BD04()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_10001BD54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

char *sub_10001BDEC(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_10001C2C4();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return a2;
}

void sub_10001BEAC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100008438(&qword_10011D258, &qword_1000D64E8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000084D4(0, &qword_10011D260, AMSDeviceOfferRegistrationGroup_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_10001C19C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000084D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001C1E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10001C224()
{
  result = qword_10011D278;
  if (!qword_10011D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D278);
  }

  return result;
}

uint64_t sub_10001C280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10001C2A0(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10001C2AC(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10001C2B8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10001C2CC()
{
  sub_10001C2B8(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10001C330()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 96);
  v4 = *(v0 + 80);
  return sub_100019E6C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t sub_10001C374(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_10001C380()
{
  result = qword_10011F670;
  if (!qword_10011F670)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F670);
  }

  return result;
}

uint64_t sub_10001C3D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A408(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001C420()
{
  result = qword_10011D288;
  if (!qword_10011D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D288);
  }

  return result;
}

uint64_t sub_10001C474(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a2 & 1);
}

uint64_t getEnumTagSinglePayload for HeadphoneUpsellClient.MarketingUpsellError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeadphoneUpsellClient.MarketingUpsellError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for HeadphoneUpsellClient.AccessoryRetreivalError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for HeadphoneUpsellClient.AccessoryRetreivalError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10001C6FC()
{
  result = qword_10011D290;
  if (!qword_10011D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D290);
  }

  return result;
}

unint64_t sub_10001C754()
{
  result = qword_10011D298;
  if (!qword_10011D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D298);
  }

  return result;
}

uint64_t sub_10001C7E4()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D2A0);
  v1 = sub_10000A570(v0, qword_10011D2A0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10001C8AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v54 - v5;
  v7 = type metadata accessor for HeadphoneModel(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v54 - v13;
  v59.receiver = v1;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    sub_10000E88C(v16 + 16, v57, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v17 = v58;
    if (v58)
    {
      v18 = sub_10000E7E4(v57, v58);
      v54 = &v54;
      v19 = *(v17 - 8);
      v20 = *(v19 + 64);
      __chkstk_darwin(v18);
      v55 = v7;
      v22 = v8;
      v23 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v23);
      sub_10000E950(v57, &qword_10011FBC0, &unk_1000D5EF0);
      v24 = *v23;
      v25 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v24 + v25, v12);
      (*(v19 + 8))(v23, v17);
      v56 = v14;
      sub_10000E828(v12, v14);
      sub_10000E390(v14, v6);
      (*(v22 + 56))(v6, 0, 1, v55);
      v26 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_headphoneModel;
      swift_beginAccess();
      sub_100013144(v6, v1 + v26);
      swift_endAccess();
      v27 = [objc_opt_self() configurationWithPointSize:{88.0, v54}];
      v28 = String._bridgeToObjectiveC()();
      v29 = [objc_opt_self() systemImageNamed:v28 withConfiguration:v27];

      v30 = [objc_allocWithZone(UIImageView) initWithImage:v29];
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v31 = [objc_opt_self() systemGray2Color];
      [v30 setTintColor:v31];

      v32 = [v1 contentView];
      [v32 addSubview:v30];

      v33 = [v1 contentView];
      v34 = [v33 mainContentGuide];

      v35 = objc_opt_self();
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1000D6000;
      v37 = [v30 topAnchor];
      v38 = [v34 topAnchor];
      v39 = [v37 constraintGreaterThanOrEqualToAnchor:v38];

      *(v36 + 32) = v39;
      v40 = [v30 bottomAnchor];
      v41 = [v34 bottomAnchor];
      v42 = [v40 constraintLessThanOrEqualToAnchor:v41];

      *(v36 + 40) = v42;
      v43 = [v30 centerYAnchor];
      v44 = [v34 centerYAnchor];
      v45 = [v43 constraintEqualToAnchor:v44];

      *(v36 + 48) = v45;
      v46 = [v30 centerXAnchor];

      v47 = [v34 centerXAnchor];
      v48 = [v46 constraintEqualToAnchor:v47];

      *(v36 + 56) = v48;
      sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v35 activateConstraints:isa];

      sub_10000E8F4(v56);
      return;
    }

    sub_10000E950(v57, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C5F8 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_10000A570(v50, qword_10011D2A0);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "HeadphoneNotGenuineViewController: Headphone Model is nil, exiting", v53, 2u);
  }
}

void sub_10001D118(void *a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v60 - v6;
  v62 = type metadata accessor for HeadphoneModel(0);
  v8 = *(v62 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v62);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v63 = a1;
  v13 = String._bridgeToObjectiveC()();
  [v2 setTitle:v13];

  sub_100033A5C(117);
  sub_100008438(&qword_10011C8F0, &unk_1000D5640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D66A0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v15 = objc_opt_self();
  v16 = NSForegroundColorAttributeName;
  v17 = [v15 systemBlueColor];
  v18 = sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  *(inited + 40) = v17;
  *(inited + 64) = v18;
  *(inited + 72) = NSUnderlineStyleAttributeName;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = 0;
  v19 = NSUnderlineStyleAttributeName;
  sub_1000A3410(inited);
  swift_setDeallocating();
  sub_100008438(&qword_10011C900, &unk_1000D6750);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(NSAttributedString);
  v21 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10001E614(&qword_10011C908, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = [v20 initWithString:v21 attributes:isa];

  v24 = [v2 contentView];
  v25 = [v24 subtitleLabel];

  if (v25)
  {
    v26 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel] = v25;
  }

  v28 = v63[2];
  v27 = v63[3];
  v29 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_headphoneModel;
  swift_beginAccess();
  sub_10000E88C(&v2[v29], v7, &qword_10011EBD0, &unk_1000D5EE0);
  v30 = v62;
  if ((*(v8 + 48))(v7, 1, v62) == 1)
  {

    sub_10000E950(v7, &qword_10011EBD0, &unk_1000D5EE0);
  }

  else
  {
    v31 = v61;
    sub_10000E828(v7, v61);
    v32 = sub_10001E474(*(v31 + *(v30 + 34)));

    if (v32)
    {

      sub_100033A5C(118);
      v33 = String._bridgeToObjectiveC()();

      [v2 setTitle:v33];

      v28 = sub_100033A5C(119);
      v27 = v34;
    }

    sub_10000E8F4(v31);
  }

  aBlock = v28;
  v65 = v27;

  v35._countAndFlagsBits = 32;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);

  v36 = objc_allocWithZone(NSMutableAttributedString);
  v37 = String._bridgeToObjectiveC()();

  v38 = [v36 initWithString:v37];

  v62 = v23;
  [v38 appendAttributedString:v23];
  v39 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel;
  [*&v2[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel] setAttributedText:v38];
  [*&v2[v39] setUserInteractionEnabled:1];
  v40 = *&v2[v39];
  v41 = objc_allocWithZone(UITapGestureRecognizer);
  v42 = v40;
  v43 = [v41 initWithTarget:v2 action:"handleTapOnLabel:"];
  [v42 addGestureRecognizer:v43];

  v44 = [v2 contentView];
  [v44 setSubtitleLabel:*&v2[v39]];

  v45 = v63;
  v46 = v63[4];
  v47 = v63[5];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v49 = String._bridgeToObjectiveC()();
  v68 = sub_10001E3FC;
  v69 = v48;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_10000C034;
  v67 = &unk_100103EF0;
  v50 = _Block_copy(&aBlock);
  v51 = objc_opt_self();
  v52 = [v51 actionWithTitle:v49 style:0 handler:v50];

  _Block_release(v50);

  v53 = v45[7];
  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v45[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v56 = String._bridgeToObjectiveC()();
    v68 = sub_10001E444;
    v69 = v55;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_10000C034;
    v67 = &unk_100103F18;
    v57 = _Block_copy(&aBlock);
    v58 = [v51 actionWithTitle:v56 style:1 handler:v57];

    _Block_release(v57);

    v59 = [v2 addAction:v58];
  }
}

void sub_10001D944(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

void sub_10001D9C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v53 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100008438(&qword_10011D308, &qword_1000D6760);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = v53 - v15;
  v17 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel;
  v18 = [*&v2[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel] attributedText];
  if (v18)
  {
    v53[1] = a1;
    v54 = v7;
    v55 = v12;
    v56 = v9;
    v57 = v8;
    v19 = v18;
    v20 = [v18 string];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v60 = v21;
    v61 = v23;
    v58 = sub_100033A5C(117);
    v59 = v24;
    v25 = type metadata accessor for Locale();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
    sub_100008480();
    v26 = StringProtocol.range<A>(of:options:range:locale:)();
    v28 = v27;
    v30 = v29;
    sub_10000E950(v16, &qword_10011D308, &qword_1000D6760);

    if (v30)
    {
    }

    else
    {
      v31 = *&v2[v17];
      v60 = v26;
      v61 = v28;
      v58 = v21;
      v59 = v23;
      v32 = v31;
      sub_100008438(&qword_10011D310, qword_1000D6768);
      sub_10001E5B0();
      v33 = _NSRange.init<A, B>(_:in:)();
      v35 = sub_10001DF68(v32, v33, v34);

      v37 = v56;
      v36 = v57;
      v39 = v54;
      v38 = v55;
      if (v35)
      {
        if (qword_10011C5F8 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_10000A570(v40, qword_10011D2A0);
        v41 = v2;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v60 = v45;
          *v44 = 136315138;
          *(v44 + 4) = sub_100078978(*&v41[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_learnMoreLink], *&v41[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_learnMoreLink + 8], &v60);
          _os_log_impl(&_mh_execute_header, v42, v43, "User tapped learn more, presenting support link %s", v44, 0xCu);
          sub_10000EA94(v45);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1000B7214();
          swift_unknownObjectRelease();
        }

        v46 = *&v41[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_learnMoreLink];
        v47 = *&v41[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_learnMoreLink + 8];
        URL.init(string:)();
        if ((*(v37 + 48))(v39, 1, v36) == 1)
        {
          sub_10000E950(v39, &qword_10011CF08, &unk_1000D7310);
        }

        else
        {
          (*(v37 + 32))(v38, v39, v36);
          v48 = [objc_opt_self() sharedApplication];
          URL._bridgeToObjectiveC()(v49);
          v51 = v50;
          sub_1000A3860(_swiftEmptyArrayStorage);
          type metadata accessor for OpenExternalURLOptionsKey(0);
          sub_10001E614(&qword_10011C9A0, type metadata accessor for OpenExternalURLOptionsKey);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v48 openURL:v51 options:isa completionHandler:0];

          (*(v37 + 8))(v38, v36);
        }
      }
    }
  }
}

id sub_10001DF68(void *a1, unint64_t a2, char *a3)
{
  result = [a1 attributedText];
  if (result)
  {
    v8 = result;
    v9 = [objc_allocWithZone(NSLayoutManager) init];
    v10 = [objc_allocWithZone(NSTextContainer) initWithSize:{0.0, 0.0}];
    v11 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v8];
    [v9 addTextContainer:v10];
    [v11 addLayoutManager:v9];
    [v10 setLineFragmentPadding:0.0];
    [v10 setLineBreakMode:{objc_msgSend(a1, "lineBreakMode")}];
    [v10 setMaximumNumberOfLines:{objc_msgSend(a1, "numberOfLines")}];
    [a1 bounds];
    v13 = v12;
    v15 = v14;
    [v10 setSize:{v12, v14}];
    [v3 locationInView:a1];
    v17 = v16;
    v19 = v18;
    [v9 usedRectForTextContainer:v10];
    v24 = [v9 characterIndexForPoint:v10 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v17 - ((v13 - v20) * 0.5 - v21), v19 - ((v15 - v22) * 0.5 - v23)}];

    return (v24 >= a2 && &v24[-a2] < a3);
  }

  return result;
}

uint64_t type metadata accessor for HeadphoneNotGenuineViewController()
{
  result = qword_10011D2F8;
  if (!qword_10011D2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001E2F8()
{
  sub_10000E064();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10001E3C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E42C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10001E49C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_subtitleLabel;
  *&v1[v4] = [objc_allocWithZone(PRXLabel) initWithStyle:1];
  v5 = &v1[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_learnMoreLink];
  *v5 = 0xD000000000000025;
  v5[1] = 0x80000001000DC6F0;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_headphoneModel;
  v7 = type metadata accessor for HeadphoneModel(0);
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService33HeadphoneNotGenuineViewController_type] = 19;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "initWithContentView:", a1);
}

unint64_t sub_10001E5B0()
{
  result = qword_10011D318;
  if (!qword_10011D318)
  {
    sub_10000A408(&qword_10011D310, qword_1000D6768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011D318);
  }

  return result;
}

uint64_t sub_10001E614(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10001E664()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, "viewDidLoad");
  [v0 setDismissalType:1];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v0 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 1)
  {
    v6 = 0x746867694CLL;
  }

  else
  {
    v6 = 1802658116;
  }

  if (v5 == 1)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  _StringGuts.grow(_:)(33);

  v8._countAndFlagsBits = v6;
  v8._object = v7;
  String.append(_:)(v8);
  v9 = objc_allocWithZone(BSUICAPackageView);
  v10 = v3;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 initWithPackageName:v11 inBundle:{v10, 0xD00000000000001FLL, 0x80000001000DC780}];

  if (v12)
  {

    v13 = String._bridgeToObjectiveC()();
    [v12 setState:v13 animated:1];

    v14 = v12;
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v1 contentView];
    [v15 addSubview:v14];

    v16 = [v1 contentView];
    v17 = [v16 mainContentGuide];

    v18 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1000D5C80;
    v20 = [v14 topAnchor];
    v21 = [v17 topAnchor];
    v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21];

    *(v19 + 32) = v22;
    v23 = [v14 bottomAnchor];
    v24 = [v17 bottomAnchor];
    v25 = [v23 constraintLessThanOrEqualToAnchor:v24];

    *(v19 + 40) = v25;
    v26 = [v14 heightAnchor];
    v27 = [v26 constraintEqualToConstant:240.0];

    *(v19 + 48) = v27;
    v28 = [v14 widthAnchor];
    v29 = [v28 constraintEqualToConstant:120.0];

    *(v19 + 56) = v29;
    v30 = [v14 centerYAnchor];
    v31 = [v17 centerYAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v19 + 64) = v32;
    v33 = [v14 centerXAnchor];

    v34 = [v17 centerXAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(v19 + 72) = v35;
    sub_10000F5A0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_10001EC44(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[4];
  v10 = a1[5];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v27 = sub_10001F078;
  v28 = v11;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100103FA8;
  v13 = _Block_copy(&v23);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = a1[6];
  v17 = a1[7];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v27 = sub_10001F0B0;
  v28 = v18;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100103FD0;
  v20 = _Block_copy(&v23);
  v21 = [v14 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = [v1 addAction:v21];
}

void sub_10001EEFC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      sub_1000B7F2C(a3 & 1);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10001F040()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F0D8()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011D358);
  v1 = sub_10000A570(v0, qword_10011D358);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10001F1A0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_100122FF0);
  sub_10000A570(v0, qword_100122FF0);
  return Logger.init(subsystem:category:)();
}

void sub_10001F218(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v48 = a3;
  v49 = a1;
  v5 = type metadata accessor for HeadphoneModel(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v14 = *(a2 + 144);
  v15 = *(a2 + 152);
  (*(v10 + 104))(v13, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v9);
  v16 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
  v18 = v17;

  (*(v10 + 8))(v13, v9);
  if (v16)
  {
    v19 = v18;
    if ([v19 hearingProtectionCapability] == 1 && objc_msgSend(v19, "hearingProtectionEnabled") == 1)
    {
      v20 = v49;
      v45 = [v49 contentView];
      v21 = [v45 dismissButton];
      if (v21)
      {
        v44 = v21;
        sub_1000222FC();
        sub_10000E390(a2, &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
        v22 = (*(v6 + 80) + 24) & ~*(v6 + 80);
        v23 = (v7 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
        v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
        v25 = swift_allocObject();
        *(v25 + 16) = v49;
        sub_10000E828(v8, v25 + v22);
        *(v25 + v23) = v19;
        v26 = (v25 + v24);
        v27 = v46;
        *v26 = v48;
        v26[1] = v27;
        *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v47;
        v20 = v49;
        swift_unknownObjectRetain();
        v28 = v19;
        v29 = v20;
        v30 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v31 = v44;
        [v44 addAction:v30 forControlEvents:64];
      }

      sub_100033A5C(173);
      v32 = String._bridgeToObjectiveC()();

      sub_100033A5C(174);
      v33 = String._bridgeToObjectiveC()();

      sub_100033A5C(175);
      v34 = String._bridgeToObjectiveC()();

      sub_100033A5C(176);
      v35 = String._bridgeToObjectiveC()();

      v36 = [v20 dismissalConfirmationActionWithTitle:v32 message:v33 confirmButtonTitle:v34 cancelButtonTitle:v35];

      [v20 setDismissButtonAction:v36];
    }

    else
    {
      if (qword_10011C600 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000A570(v37, qword_10011D358);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "addOffModeSwitchAlertOnDismiss: LSR hearingProtectionEnabled is OFF not adding the dismissal alrt!", v40, 2u);
      }

      v36 = v16;
    }
  }

  else
  {
    if (qword_10011C600 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000A570(v41, qword_10011D358);
    v36 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v36, v42, "addOffModeSwitchAlertOnDismiss: playload nil, skip add off mode alert!", v43, 2u);
    }
  }
}

uint64_t sub_10001F790(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (*(a3 + 152))
  {
    v10 = *(a3 + 144);
    v11 = *(a3 + 152);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  swift_unknownObjectRetain();

  sub_100022B38(a2, v10, v11, a4, a5, a6);

  return swift_unknownObjectRelease();
}

void sub_10001F838(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v11 = [objc_allocWithZone(AADeviceConfig) init];
  [v11 setListeningModeOffAllowed:2];
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  HeadphoneProxFeatureManager.updateDevice(for:deviceAddress:usecase:completion:)();

  static HeadphoneProxFeatureManager.shared.getter();
  sub_100008438(&unk_1001200F0, &unk_1000D5F10);
  v5 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000D5250;
  (*(v6 + 104))(v9 + v8, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v5);
  dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

  a4(v10);
}

uint64_t sub_10001FA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  sub_100008438(&unk_1001200F0, &unk_1000D5F10);
  v5 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000D5250;
  (*(v6 + 104))(v9 + v8, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v5);
  dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

  return a4(v10);
}

id sub_10001FB50()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___imageView;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___imageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___imageView);
  }

  else
  {
    sub_100021B8C();
    v5 = v4;
    v6 = [objc_allocWithZone(UIImageView) initWithImage:v4];
    v7 = [objc_opt_self() systemBlueColor];
    [v6 setTintColor:v7];

    v8 = v6;
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setContentMode:1];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_10001FC4C()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___topAsset;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___topAsset);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___topAsset);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = sub_10001FB50();
    [v4 addSubview:v5];

    [*(v0 + OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___imageView) pinToOther:v4];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:180.0];

    [v7 setActive:1];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_10001FD78()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v54 - v8;
  v10 = type metadata accessor for HeadphoneModel(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v62.receiver = v1;
  v62.super_class = ObjectType;
  objc_msgSendSuper2(&v62, "viewDidLoad");
  [v1 setDismissalType:1];
  v18 = &v1[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_presenter];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v20 = Strong;
  swift_beginAccess();
  sub_10000E88C(v20 + 16, v60, &qword_10011FBC0, &unk_1000D5EF0);
  swift_unknownObjectRelease();
  v21 = v61;
  if (!v61)
  {
    sub_10000E950(v60, &qword_10011FBC0, &unk_1000D5EF0);
LABEL_7:
    if (qword_10011C600 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000A570(v50, qword_10011D358);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "Hearing Protection: Headphone Model is nil, exiting", v53, 2u);
    }

    return;
  }

  v54 = v18;
  v56 = ObjectType;
  v57 = v7;
  v22 = sub_10000E7E4(v60, v61);
  v58 = &v54;
  v23 = v17;
  v24 = *(v21 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  v27 = (&v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v27);
  sub_10000E950(v60, &qword_10011FBC0, &unk_1000D5EF0);
  v28 = v11;
  v29 = *v27;
  v59 = v10;
  v30 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  sub_10000E390(v29 + v30, v15);
  (*(v24 + 8))(v27, v21);
  sub_10000E828(v15, v23);
  v55 = v23;
  sub_10000E390(v23, v9);
  v31 = v59;
  (*(v28 + 56))(v9, 0, 1, v59);
  v32 = &v1[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_model];
  swift_beginAccess();
  sub_100013144(v9, v32);
  swift_endAccess();
  v33 = [v1 contentView];
  v34 = sub_10001FC4C();
  [v33 addSubview:v34];

  v35 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController____lazy_storage___topAsset];
  v36 = [v1 contentView];
  v37 = [v36 mainContentGuide];

  [v35 pinToOtherWithLayoutGuide:v37];
  v38 = *(v28 + 48);
  v58 = (v28 + 48);
  if (v38(v32, 1, v31) == 1)
  {
    __break(1u);
  }

  else
  {
    v39 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_featureManager];
    v41 = *(v32 + 144);
    v40 = *(v32 + 152);
    sub_100008438(&unk_1001200F0, &unk_1000D5F10);
    v42 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
    v43 = *(v42 - 8);
    v44 = *(v43 + 72);
    v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1000D5250;
    (*(v43 + 104))(v46 + v45, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v42);

    dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

    v47 = v57;
    sub_10000E88C(v32, v57, &qword_10011EBD0, &unk_1000D5EE0);
    if (v38(v47, 1, v59) != 1)
    {
      v48 = v54;
      v49 = swift_unknownObjectWeakLoadStrong();
      sub_10001F218(v1, v47, v49, *(v48 + 1));
      swift_unknownObjectRelease();
      sub_10000E8F4(v55);
      sub_10000E8F4(v47);
      return;
    }
  }

  __break(1u);
}

void sub_1000204EC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v104 = *(v4 - 8);
  v5 = *(v104 + 64);
  __chkstk_darwin(v4);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v94 - v10;
  v12 = type metadata accessor for HeadphoneModel(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v94 - v18;
  v20 = *a1;
  v21 = a1[1];
  v22 = String._bridgeToObjectiveC()();
  [v2 setTitle:v22];

  v23 = a1[2];
  v24 = a1[3];
  v25 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v25];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    swift_beginAccess();
    sub_10000E88C(v27 + 16, &aBlock, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v28 = v108;
    if (v108)
    {
      v100 = v4;
      v95 = a1;
      v29 = sub_10000E7E4(&aBlock, v108);
      v101 = &v94;
      v30 = *(v28 - 1);
      v103 = v2;
      v31 = v30;
      v32 = *(v30 + 64);
      __chkstk_darwin(v29);
      v34 = v13;
      v35 = (&v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v31 + 16))(v35);
      sub_10000E950(&aBlock, &qword_10011FBC0, &unk_1000D5EF0);
      v102 = v19;
      v36 = *v35;
      v37 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v38 = v36 + v37;
      v39 = v102;
      sub_10000E390(v38, v17);
      (*(v31 + 8))(v35, v28);
      v40 = v103;
      sub_10000E828(v17, v39);
      sub_10000E390(v39, v11);
      (*(v34 + 56))(v11, 0, 1, v12);
      v41 = v40 + OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneYodelHearingProtectionViewController_model;
      swift_beginAccess();
      sub_100013144(v11, v41);
      swift_endAccess();
      type metadata accessor for HeadphoneProxFeatureManager();
      static HeadphoneProxFeatureManager.shared.getter();
      v42 = *(v34 + 48);
      v98 = v34 + 48;
      v99 = v12;
      v97 = v42;
      if (v42(v41, 1, v12) == 1)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      v43 = *(v41 + 144);
      v44 = *(v41 + 152);
      v45 = v104;
      v46 = v100;
      (*(v104 + 104))(v7, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v100);

      v47 = dispatch thunk of HeadphoneProxFeatureManager.hearingRecordWithDevice(for:feature:)();
      v49 = v48;

      (*(v45 + 8))(v7, v46);
      v101 = v49;
      if (!v47 || (v50 = v49, v51 = [v50 hearingProtectionRegionStatus], v50, v51 != 2))
      {
        if (qword_10011C600 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        sub_10000A570(v52, qword_10011D358);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&_mh_execute_header, v53, v54, "configure view for LSR Text", v55, 2u);
        }

        sub_100033A5C(157);
        v56 = String._bridgeToObjectiveC()();

        [v40 setTitle:v56];

        sub_100033A5C(158);
        v57 = String._bridgeToObjectiveC()();

        [v40 setSubtitle:v57];

        if (!v47)
        {
LABEL_26:
          if (qword_10011C600 != -1)
          {
            swift_once();
          }

          v77 = type metadata accessor for Logger();
          sub_10000A570(v77, qword_10011D358);
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            *v80 = 0;
            _os_log_impl(&_mh_execute_header, v78, v79, "configure view for LSR Button", v80, 2u);
          }

          if (v97(v41, 1, v99) != 1)
          {
            v81 = *(v41 + 152);
            v96 = v47;
            if (v81)
            {
              v82 = *(v41 + 144);
              v83 = v81;
            }

            else
            {
              v82 = 0;
              v83 = 0xE000000000000000;
            }

            sub_100033A5C(160);
            v84 = swift_allocObject();
            v85 = v103;
            swift_unknownObjectWeakInit();
            v86 = swift_allocObject();
            v86[2] = v84;
            v86[3] = v82;
            v86[4] = v83;

            v87 = String._bridgeToObjectiveC()();

            v109 = sub_1000215EC;
            v110 = v86;
            aBlock = _NSConcreteStackBlock;
            v106 = 1107296256;
            v107 = sub_10000C034;
            v108 = &unk_100104088;
            v88 = _Block_copy(&aBlock);
            v89 = objc_opt_self();
            v90 = [v89 actionWithTitle:v87 style:0 handler:v88];

            _Block_release(v88);

            v70 = v90;
            sub_100033A5C(161);
            v91 = swift_allocObject();
            swift_unknownObjectWeakInit();

            v92 = String._bridgeToObjectiveC()();

            v109 = sub_100021610;
            v110 = v91;
            aBlock = _NSConcreteStackBlock;
            v106 = 1107296256;
            v107 = sub_10000C034;
            v108 = &unk_1001040B0;
            v93 = _Block_copy(&aBlock);
            v72 = [v89 actionWithTitle:v92 style:1 handler:v93];

            _Block_release(v93);

            v71 = [v85 addAction:v72];
            v39 = v102;
            v47 = v96;
LABEL_35:

            sub_100021640(v47, v101);
            sub_10000E8F4(v39);
            return;
          }

          goto LABEL_37;
        }

        v50 = v49;
      }

      v58 = v47;
      v59 = v50;
      if ([v59 hearingProtectionCapability] == 1 && objc_msgSend(v59, "hearingProtectionEnabled") == 1)
      {
        if (qword_10011C600 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_10000A570(v60, qword_10011D358);
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v61, v62, "configure action buttion for Hearing Protection", v63, 2u);
        }

        v64 = v95[4];
        v65 = v95[5];
        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v67 = String._bridgeToObjectiveC()();
        v109 = sub_100021680;
        v110 = v66;
        aBlock = _NSConcreteStackBlock;
        v106 = 1107296256;
        v107 = sub_10000C034;
        v108 = &unk_1001040D8;
        v68 = _Block_copy(&aBlock);
        v69 = [objc_opt_self() actionWithTitle:v67 style:0 handler:v68];

        _Block_release(v68);

        v70 = v69;
        v71 = [v40 addAction:v70];

        v72 = v70;
        goto LABEL_35;
      }

      goto LABEL_26;
    }

    sub_10000E950(&aBlock, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C600 != -1)
  {
    swift_once();
  }

  v73 = type metadata accessor for Logger();
  sub_10000A570(v73, qword_10011D358);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v74, v75, "Hearing Protection: Headphone Model is nil, exiting", v76, 2u);
  }
}