unint64_t sub_10077C964()
{
  result = qword_1019FF238;
  if (!qword_1019FF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF238);
  }

  return result;
}

unint64_t sub_10077C9B8()
{
  result = qword_1019FF240;
  if (!qword_1019FF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF240);
  }

  return result;
}

uint64_t sub_10077CA0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10077CA6C(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A27F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10077CAD4()
{
  if (qword_1019F1B68 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() configurationWithPointSize:qword_101AD7118 weight:3 scale:17.0];

  return v0;
}

id sub_10077CB60()
{
  if (sub_1004A48FC())
  {
    v0 = sub_10077D0E8(1);
  }

  else
  {
    v0 = sub_10077CE48(1);
  }

  v1 = v0;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = sub_1005D42AC(v8, v10);

  v12 = sub_10077DB94(v3, v11);

  if (sub_1004A48FC())
  {
    v13 = sub_10077CE48(0);
  }

  else
  {
    v13 = sub_10077D0E8(0);
  }

  v14 = v13;
  v15 = sub_1005D42AC(0, 0xE000000000000000);
  v16 = sub_10077DB94(v14, v15);

  sub_1005B981C(&unk_1019F4D60);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10146CE00;
  *(v17 + 32) = v12;
  *(v17 + 40) = v16;
  v18 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  v19 = v12;
  v20 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v18 initWithArrangedSubviews:isa];

  [v22 setAxis:0];
  [v22 setDistribution:1];
  [v22 setSpacing:1.0];
  v23 = [v3 heightAnchor];

  v24 = [v14 heightAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  [v25 setActive:1];
  return v22;
}

id sub_10077CE48(char a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLiOSMiniFormatterLineEndsBuilder_lineDataProvider);
  v4 = sub_10097AFE0();
  v6 = v4;
  if (v4)
  {
    if (v4 == 1)
    {
      v6 = 0;
      v7 = 10;
      goto LABEL_9;
    }

    if (v5)
    {
      v8 = 0;
      v7 = 10;
      goto LABEL_12;
    }

    v7 = [objc_opt_self() lineEndTypeFromLineEnd:v4];
LABEL_9:
    v9 = sub_10077D724(v7);
    if (v9)
    {
      v10 = v9;
      v8 = [v9 imageWithHorizontallyFlippedOrientation];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_12;
  }

  v8 = 0;
  v7 = 10;
  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  v11 = [objc_opt_self() accessibilityDescriptionFor:v7];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  v18 = [v16 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  v19 = 10;
  if (a1)
  {
    v19 = 5;
  }

  v20 = sub_1005D3A94(v8, 0, 0, 0, 0, 0, v17, v18, 0, v19, 0, v13, v15, 0);

  [v20 setShowsMenuAsPrimaryAction:1];
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  v22 = v3;
  isa = sub_10077D8C8(v7, sub_10077DD38, v21, 1).super.super.isa;

  [v20 setMenu:isa];

  return v20;
}

id sub_10077D0E8(char a1)
{
  swift_getObjectType();
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform34CRLiOSMiniFormatterLineEndsBuilder_lineDataProvider);
  v4 = sub_10097AFEC();
  v6 = v4;
  if (v4)
  {
    if (v4 == 1)
    {
      v6 = 0;
      v7 = 10;
    }

    else
    {
      if (v5)
      {
        v8 = 0;
        v7 = 10;
        goto LABEL_10;
      }

      v7 = [objc_opt_self() lineEndTypeFromLineEnd:v4];
    }

    goto LABEL_9;
  }

  v8 = 0;
  v7 = 10;
  if ((v5 & 1) == 0)
  {
LABEL_9:
    v8 = sub_10077D724(v7);
  }

LABEL_10:
  v9 = [objc_opt_self() accessibilityDescriptionFor:v7];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  v16 = [v14 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  v17 = 10;
  if (a1)
  {
    v17 = 5;
  }

  v18 = sub_1005D3A94(v8, 0, 0, 0, 0, 0, v15, v16, 0, v17, 0, v11, v13, 0);

  [v18 setShowsMenuAsPrimaryAction:1];
  v19 = swift_allocObject();
  *(v19 + 16) = v3;
  v20 = v3;
  isa = sub_10077D8C8(v7, sub_10077DCE4, v19, 0).super.super.isa;

  [v18 setMenu:isa];

  return v18;
}

void *sub_10077D360()
{
  v0 = sub_100911E34();
  if (v0)
  {
    sub_1006369C4(v0);
  }

  v1 = sub_10068AFC0();
  if (v1)
  {
    v2 = v1;
    if (v1 >> 62)
    {
      type metadata accessor for CRLBoardItem(0);
      v3 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for CRLBoardItem(0);
      v3 = v2;
    }

    sub_10063F990(v3);
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_10077D448(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, &v20);
  type metadata accessor for CRLShapeItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = v19;
  v5 = sub_10068AFC0();
  if (!v5 || (v6 = v5, v20 = v19, __chkstk_darwin(v5), v18[2] = &v20, v7 = sub_100C33540(sub_100612848, v18, v6), , (v7 & 1) == 0))
  {

LABEL_10:
    v16 = sub_1005D518C(a1, a2);
    return v16 & 1;
  }

  v8 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
  v9 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v10 = v8;
  swift_beginAccess();
  v11 = *&v8[v9];
  if (*(v11 + 16) && (v12 = sub_1007CF108(23), (v13 & 1) != 0) || (v20 = 0, v21 = 0, v22 = 0, v23 = 1, sub_10077D6BC(&v20), v11 = *&v8[v9], *(v11 + 16)) && (v12 = sub_1007CF108(24), (v14 & 1) != 0))
  {
    v15 = *(v11 + 56) + 32 * v12;

    sub_100601584(v15, &v20);

    sub_10077D6BC(&v20);
    v16 = 1;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1;
    sub_10077D6BC(&v20);

    v16 = 0;
  }

  return v16 & 1;
}

id sub_10077D654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSMiniFormatterLineEndsBuilder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10077D6BC(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019F4D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10077D724(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 4)
  {
    if (a1 <= 1)
    {
      if (!a1 || a1 == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }

    if (a1 != 2)
    {
LABEL_19:
      v2 = String._bridgeToObjectiveC()();
      v3 = [objc_opt_self() imageNamed:v2];

      if (!v3)
      {
        return 0;
      }

      v4 = [objc_opt_self() labelColor];
      v1 = [v3 imageWithTintColor:v4];

      return v1;
    }

    return v1;
  }

  if (a1 > 8)
  {
    if (a1 == 9 || a1 == 10)
    {
      goto LABEL_19;
    }

    if (a1 != 11)
    {
      goto LABEL_23;
    }

    return v1;
  }

  if ((a1 - 5) < 2)
  {
    return v1;
  }

  if (a1 == 7)
  {
    goto LABEL_19;
  }

  if (a1 == 8)
  {
    return v1;
  }

LABEL_23:
  type metadata accessor for CRLLineEndType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

UIMenu sub_10077D8C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_100006370(0, &qword_1019F6190);
  v5 = objc_opt_self();
  v6 = objc_opt_self();
  for (i = 0; i != 56; i += 8)
  {
    v13 = *(&off_101872BC8 + i + 32);
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = v13;

    v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v16 = [objc_allocWithZone(NSTextAttachment) init];
    v17 = sub_10077D724(v13);
    v18 = v17;
    if (a4)
    {
      if (v17)
      {
        v8 = [v17 imageWithHorizontallyFlippedOrientation];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = v17;
    }

    [v16 setImage:v8];

    v9 = v15;
    v10 = [v5 attributedStringWithAttachment:v16];
    [v9 setAttributedTitle:v10];

    v11 = v9;
    v12 = [v6 accessibilityDescriptionFor:v13];
    [v11 setAccessibilityLabel:v12];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  sub_100006370(0, &qword_1019F6C00);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v23.value.super.isa = 0;
  v23.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, 0, v23, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, 0);
}

id sub_10077DB94(void *a1, void *a2)
{
  v4 = [a1 heightAnchor];
  v5 = [v4 constraintGreaterThanOrEqualToConstant:34.0];

  [v5 setActive:1];
  sub_1005B981C(&unk_1019F4D60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10146CE00;
  *(v6 + 32) = a2;
  *(v6 + 40) = a1;
  v7 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  v8 = a2;
  v9 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v7 initWithArrangedSubviews:isa];

  [v11 setAxis:1];
  [v11 setSpacing:8.0];
  return v11;
}

id sub_10077DDEC(id result)
{
  if (result != 2)
  {
    v26[12] = v1;
    v26[13] = v2;
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v26[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v26);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v13;
    v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 106;
    v16 = v26[0];
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Shape library data failed to load.", 34, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:106 isFatal:0 format:v25 args:v22];

    return [v3 logFullBacktrace];
  }

  return result;
}

uint64_t sub_10077E1C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10077E21C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_sharingExtensionImporter);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    [v2 removeFilePresenter:v3];
    v4 = [objc_opt_self() defaultCenter];
    if (qword_1019F2748 != -1)
    {
      swift_once();
    }

    [v4 removeObserver:v3 name:qword_101AD8948 object:*&v3[OBJC_IVAR____TtC8Freeform13CRLSEImporter_boardLibrary]];
  }

  sub_10077E434();
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.sceneManagement;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v5, &_mh_execute_header, v6, "Calling updateAppShortcutParameters()", 37, 2, _swiftEmptyArrayStorage);
  sub_100788300();
  return static AppShortcutsProvider.updateAppShortcutParameters()();
}

void sub_10077E434()
{
  v38 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v38);
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v2 - 8);
  v41 = &v37 - v3;
  v42 = _s4NodeVMa(0);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibrary;
  v44 = v0;
  v16 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibrary);
  if (!v16)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v17 = *(v16 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 16);
  v18 = sub_1005B981C(&qword_1019F3480);
  v39 = *(*(v18 - 8) + 56);
  v39(v14, 3, 5, v18);

  sub_10003E264(v8);
  sub_100050FFC(v14, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (!*(v17 + 16) || (v19 = sub_10003E994(v8), (v20 & 1) == 0))
  {

    (*(v6 + 8))(v8, v5);
    return;
  }

  v21 = *(*(v17 + 56) + 8 * v19);
  (*(v6 + 8))(v8, v5);

  v22 = *(v44 + v15);
  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = *&v22[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot];
  v24 = v39;
  v25 = (v39)(v11, 1, 5, v18);
  __chkstk_darwin(v25);
  *(&v37 - 2) = v11;
  v26 = v22;

  v27 = v41;
  sub_10003CF3C(1, sub_100066014, (&v37 - 4), v23, v41);

  sub_100050FFC(v11, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v28 = *(v40 + 48);
  v29 = v42;
  if (v28(v27, 1, v42) == 1)
  {
    v30 = v37;
    v24(v37, 1, 5, v18);
    swift_storeEnumTagMultiPayload();
    v31 = v43;
    sub_10003CB2C(v30, _swiftEmptyArrayStorage, v43);

    if (v28(v27, 1, v29) != 1)
    {
      sub_10000CAAC(v27, &unk_1019FB770);
    }
  }

  else
  {

    v31 = v43;
    sub_10078829C(v27, v43);
  }

  v32 = *(v31 + *(v29 + 20));

  sub_100050FFC(v31, _s4NodeVMa);
  v33 = *(v32 + 16);

  v34 = sub_1008E6DB4();
  v35 = [objc_opt_self() mainScreen];
  v36 = [v35 traitCollection];

  LODWORD(v35) = [v36 crl_isUserInterfaceStyleDark];
  sub_1008E81C8(v33, v21, v35, v34, 0);
}

void sub_10077E9D0(void *a1)
{
  v2 = v1;
  v1053.receiver = v1;
  v1053.super_class = type metadata accessor for CRLiOSAppDelegate();
  objc_msgSendSuper2(&v1053, "buildMenuWithBuilder:", a1);
  sub_100787FE4();
  if (v4)
  {
    v5 = v4;
    v6 = sub_100051290();
    v7 = [v6 presentedViewController];

    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = [v8 topViewController];

        if (v9)
        {
          type metadata accessor for CRLiOSBoardViewController();
          v10 = swift_dynamicCastClass();

          if (v10)
          {
            [a1 removeMenuForIdentifier:*&v2[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_insertMenuIdentifier]];
            [a1 removeMenuForIdentifier:*&v2[OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_autoFillMenuIdentifier]];
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  sub_100006370(0, &qword_1019F54D0);
  v11 = [a1 system];
  v12 = [objc_opt_self() mainSystem];
  v13 = static NSObject.== infix(_:_:)();

  if (v13)
  {
    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100006370(0, &qword_101A001C0);
    v19 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v20 = String._bridgeToObjectiveC()();
    v1047 = objc_opt_self();
    v21 = [v1047 systemImageNamed:{v20, _swiftEmptyArrayStorage}];

    [v19 setImage:v21];
    sub_100006370(0, &qword_1019F6C00);
    sub_1005B981C(&unk_1019F4D60);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_101465920;
    *(preferredElementSize + 32) = v19;
    v1030 = v19;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v1054.value.super.isa = 0;
    v1054.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, 0, v1054, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
    v24 = v14;
    v25 = [v14 mainBundle];
    v26 = String._bridgeToObjectiveC()();
    v27 = String._bridgeToObjectiveC()();
    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100006370(0, &unk_1019FF3D0);
    v29 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101465920;
    *(v30 + 32) = v29;
    sub_100006370(0, &unk_1019F61A0);
    v1029 = v29;
    v31 = Array._bridgeToObjectiveC()().super.isa;

    [a1 insertElements:v31 atEndOfMenuForIdentifier:{UIMenuClose, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    v1043 = v24;
    v32 = [v24 mainBundle];
    v33 = String._bridgeToObjectiveC()();
    v34 = String._bridgeToObjectiveC()();
    v1042 = a1;
    v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v37 = String._bridgeToObjectiveC()();
    v38 = [v1047 systemImageNamed:{v37, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v36 setImage:v38];
    v39 = [v24 mainBundle];
    v40 = String._bridgeToObjectiveC()();
    v41 = String._bridgeToObjectiveC()();
    v42 = [v39 localizedStringForKey:v40 value:v41 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v44 = String._bridgeToObjectiveC()();
    v45 = [v1047 systemImageNamed:{v44, _swiftEmptyArrayStorage}];

    [v43 setImage:v45];
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_10146CE00;
    *(v46 + 32) = v36;
    *(v46 + 40) = v43;
    v1028 = v36;
    v1027 = v43;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v1055.value.super.isa = 0;
    v1055.is_nil = 0;
    v1036 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v47, 0, v1055, 1, 0xFFFFFFFFFFFFFFFFLL, v46, 0).super.super.isa;
    v48 = [v1043 mainBundle];
    v49 = String._bridgeToObjectiveC()();
    v50 = String._bridgeToObjectiveC()();
    v51 = [v48 localizedStringForKey:v49 value:v50 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v53 = [v1043 mainBundle];
    v54 = String._bridgeToObjectiveC()();
    v55 = String._bridgeToObjectiveC()();
    v56 = [v53 localizedStringForKey:v54 value:v55 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_10146CE00;
    *(v58 + 32) = v52;
    *(v58 + 40) = v57;
    v1026 = v52;
    v1025 = v57;
    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    v1056.value.super.isa = 0;
    v1056.is_nil = 0;
    v60 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v59, 0, v1056, 1, 0xFFFFFFFFFFFFFFFFLL, v58, 0).super.super.isa;
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_101465920;
    *(v61 + 32) = isa;
    v1024 = isa;
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    v1057.value.super.isa = 0;
    v1057.is_nil = 0;
    v1018.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v62, 0, v1057, 1, 0xFFFFFFFFFFFFFFFFLL, v61, children).super.super.isa;
    [v1042 insertChildMenu:? atStartOfMenuForIdentifier:?];
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_10146CE00;
    *(v63 + 32) = v1036;
    *(v63 + 40) = v60;
    v1023 = v1036;
    v1022 = v60;
    v64._countAndFlagsBits = 0;
    v64._object = 0xE000000000000000;
    v1058.value.super.isa = 0;
    v1058.is_nil = 0;
    v1017.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v64, 0, v1058, 1, 0xFFFFFFFFFFFFFFFFLL, v63, childrena).super.super.isa;
    [v1042 insertChildMenu:? atStartOfMenuForIdentifier:?];
    v65 = [v1043 mainBundle];
    v66 = String._bridgeToObjectiveC()();
    v67 = String._bridgeToObjectiveC()();
    v68 = [v65 localizedStringForKey:v66 value:v67 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_101465920;
    *(v70 + 32) = v69;
    v1021 = v69;
    v71 = Array._bridgeToObjectiveC()().super.isa;

    [v1042 insertElements:v71 atEndOfMenuForIdentifier:{UIMenuPrint, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    v72 = [v1043 mainBundle];
    v73 = String._bridgeToObjectiveC()();
    v74 = String._bridgeToObjectiveC()();
    v75 = [v72 localizedStringForKey:v73 value:v74 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v77 = [v1043 mainBundle];
    v78 = String._bridgeToObjectiveC()();
    v79 = String._bridgeToObjectiveC()();
    v80 = [v77 localizedStringForKey:v78 value:v79 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_10146CE00;
    *(v82 + 32) = v76;
    *(v82 + 40) = v81;
    v1020 = v76;
    v1019 = v81;
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    v1059.value.super.isa = 0;
    v1059.is_nil = 0;
    v972.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v83, 0, v1059, 1, 0xFFFFFFFFFFFFFFFFLL, v82, 0).super.super.isa;
    [v1042 insertChildMenu:? atEndOfMenuForIdentifier:?];
    v84 = [v1043 mainBundle];
    v85 = String._bridgeToObjectiveC()();
    v86 = String._bridgeToObjectiveC()();
    v87 = [v84 localizedStringForKey:v85 value:v86 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    [objc_allocWithZone(NSNumber) initWithInteger:3];
    *(&v1051 + 1) = sub_100006370(0, &qword_1019FF3E0);
    v1015 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v88 = [v1043 mainBundle];
    v89 = String._bridgeToObjectiveC()();
    v90 = String._bridgeToObjectiveC()();
    v91 = [v88 localizedStringForKey:v89 value:v90 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    [objc_allocWithZone(NSNumber) initWithInteger:4];
    v1013 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v92 = [v1043 mainBundle];
    v93 = String._bridgeToObjectiveC()();
    v94 = String._bridgeToObjectiveC()();
    v95 = [v92 localizedStringForKey:v93 value:v94 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    [objc_allocWithZone(NSNumber) initWithInteger:5];
    v1011 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v96 = [v1043 mainBundle];
    v97 = String._bridgeToObjectiveC()();
    v98 = String._bridgeToObjectiveC()();
    v99 = [v96 localizedStringForKey:v97 value:v98 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    [objc_allocWithZone(NSNumber) initWithInteger:6];
    v1009 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v100 = [v1043 mainBundle];
    v101 = String._bridgeToObjectiveC()();
    v102 = String._bridgeToObjectiveC()();
    v103 = [v100 localizedStringForKey:v101 value:v102 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    [objc_allocWithZone(NSNumber) initWithInteger:7];
    v1007 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v104 = [v1043 mainBundle];
    v105 = String._bridgeToObjectiveC()();
    v106 = String._bridgeToObjectiveC()();
    v107 = [v104 localizedStringForKey:v105 value:v106 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    [objc_allocWithZone(NSNumber) initWithInteger:8];
    v1005 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v108 = [v1043 mainBundle];
    v109 = String._bridgeToObjectiveC()();
    v110 = String._bridgeToObjectiveC()();
    v111 = [v108 localizedStringForKey:v109 value:v110 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    [objc_allocWithZone(NSNumber) initWithInteger:9];
    v1037 = *(&v1051 + 1);
    v1003 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v112 = [v1043 mainBundle];
    v113 = String._bridgeToObjectiveC()();
    v114 = String._bridgeToObjectiveC()();
    v115 = [v112 localizedStringForKey:v113 value:v114 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    [objc_allocWithZone(NSNumber) initWithInteger:10];
    v1001 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v116 = [v1043 mainBundle];
    v117 = String._bridgeToObjectiveC()();
    v118 = String._bridgeToObjectiveC()();
    v119 = [v116 localizedStringForKey:v117 value:v118 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v999 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v120 = [v1043 mainBundle];
    v121 = String._bridgeToObjectiveC()();
    v122 = String._bridgeToObjectiveC()();
    v123 = [v120 localizedStringForKey:v121 value:v122 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    [objc_allocWithZone(NSNumber) initWithInteger:12];
    v1045 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v124 = [v1043 mainBundle];
    v125 = String._bridgeToObjectiveC()();
    v126 = String._bridgeToObjectiveC()();
    v127 = [v124 localizedStringForKey:v125 value:v126 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    [objc_allocWithZone(NSNumber) initWithInteger:13];
    v1031 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v128 = [v1043 mainBundle];
    v129 = String._bridgeToObjectiveC()();
    v130 = String._bridgeToObjectiveC()();
    v131 = [v128 localizedStringForKey:v129 value:v130 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    [objc_allocWithZone(NSNumber) initWithInteger:14];
    v132 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_10147AD30;
    *(v133 + 32) = v1015;
    *(v133 + 40) = v1013;
    *(v133 + 48) = v1011;
    *(v133 + 56) = v1009;
    *(v133 + 64) = v1007;
    *(v133 + 72) = v1005;
    *(v133 + 80) = v1003;
    *(v133 + 88) = v1001;
    *(v133 + 96) = v999;
    *(v133 + 104) = v1045;
    *(v133 + 112) = v1031;
    *(v133 + 120) = v132;
    v1016 = v1015;
    v1014 = v1013;
    v1012 = v1011;
    v1010 = v1009;
    v1008 = v1007;
    v1006 = v1005;
    v1004 = v1003;
    v1002 = v1001;
    v1000 = v999;
    v998 = v1045;
    v997 = v1031;
    v996 = v132;
    v134 = [v1043 mainBundle];
    v135 = String._bridgeToObjectiveC()();
    v136 = String._bridgeToObjectiveC()();
    v137 = [v134 localizedStringForKey:v135 value:v136 table:0];

    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v139;

    v141 = String._bridgeToObjectiveC()();
    v142 = [v1047 systemImageNamed:v141];

    v143._countAndFlagsBits = v138;
    v143._object = v140;
    v1060.value.super.isa = v142;
    v1060.is_nil = 0;
    v1032 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v143, 0, v1060, 0, 0xFFFFFFFFFFFFFFFFLL, v133, 0).super.super.isa;
    v144 = [v1043 mainBundle];
    v145 = String._bridgeToObjectiveC()();
    v146 = String._bridgeToObjectiveC()();
    v147 = [v144 localizedStringForKey:v145 value:v146 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v148 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v149 = String._bridgeToObjectiveC()();
    v150 = [v1047 systemImageNamed:{v149, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v148 setImage:v150];
    v151 = [v1043 mainBundle];
    v152 = String._bridgeToObjectiveC()();
    v153 = String._bridgeToObjectiveC()();
    v154 = [v151 localizedStringForKey:v152 value:v153 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v155 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v156 = String._bridgeToObjectiveC()();
    v157 = [v1047 systemImageNamed:{v156, _swiftEmptyArrayStorage}];

    [v155 setImage:v157];
    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_10146E8A0;
    *(v158 + 32) = v148;
    *(v158 + 40) = v1032;
    *(v158 + 48) = v155;
    v994 = v148;
    v993 = v1032;
    v992 = v155;
    v159._countAndFlagsBits = 0;
    v159._object = 0xE000000000000000;
    v1061.value.super.isa = 0;
    v1061.is_nil = 0;
    v1033.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v159, 0, v1061, 1, 0xFFFFFFFFFFFFFFFFLL, v158, 0).super.super.isa;
    v160 = [v1043 mainBundle];
    v161 = String._bridgeToObjectiveC()();
    v162 = String._bridgeToObjectiveC()();
    v163 = [v160 localizedStringForKey:v161 value:v162 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v990 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v164 = String._bridgeToObjectiveC()();
    v165 = [v1047 systemImageNamed:{v164, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v990 setImage:v165];
    v166 = [v1043 mainBundle];
    v167 = String._bridgeToObjectiveC()();
    v168 = String._bridgeToObjectiveC()();
    v169 = [v166 localizedStringForKey:v167 value:v168 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v170 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v171 = String._bridgeToObjectiveC()();
    v172 = [v1047 systemImageNamed:{v171, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v170 setImage:v172];
    v173 = [v1043 mainBundle];
    v174 = String._bridgeToObjectiveC()();
    v175 = String._bridgeToObjectiveC()();
    v176 = [v173 localizedStringForKey:v174 value:v175 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v177 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v178 = String._bridgeToObjectiveC()();
    v179 = [v1047 imageNamed:{v178, _swiftEmptyArrayStorage}];

    [v177 setImage:v179];
    v180 = swift_allocObject();
    *(v180 + 16) = xmmword_10146E8A0;
    *(v180 + 32) = v990;
    *(v180 + 40) = v170;
    *(v180 + 48) = v177;
    v991 = v990;
    v989 = v170;
    v988 = v177;
    v181._countAndFlagsBits = 0;
    v181._object = 0xE000000000000000;
    v1062.value.super.isa = 0;
    v1062.is_nil = 0;
    v979.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v181, 0, v1062, 1, 0xFFFFFFFFFFFFFFFFLL, v180, 0).super.super.isa;
    v182 = [v1043 mainBundle];
    v183 = String._bridgeToObjectiveC()();
    v184 = String._bridgeToObjectiveC()();
    v185 = [v182 localizedStringForKey:v183 value:v184 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    *&v1051 = 0;
    v186 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v187 = String._bridgeToObjectiveC()();
    v188 = [v1047 systemImageNamed:{v187, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    v986 = v186;
    [v186 setImage:v188];

    *(&v1051 + 1) = &type metadata for CRLFeatureFlags;
    v1052 = sub_100004D60();
    LOBYTE(v1050) = 14;
    LOBYTE(v187) = isFeatureEnabled(_:)();
    sub_100005070(&v1050);
    if ((v187 & 1) != 0 && [type metadata accessor for ImagePlaygroundViewController() available])
    {
      v189 = [v1043 mainBundle];
      v190 = String._bridgeToObjectiveC()();
      v191 = String._bridgeToObjectiveC()();
      v192 = [v189 localizedStringForKey:v190 value:v191 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v1050 = 0u;
      v1051 = 0u;
      v193 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      v194 = String._bridgeToObjectiveC()();
      v195 = [v1047 systemImageNamed:{v194, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

      v984 = v193;
      [v193 setImage:v195];
    }

    else
    {
      v984 = 0;
    }

    v196 = [v1043 mainBundle];
    v197 = String._bridgeToObjectiveC()();
    v198 = String._bridgeToObjectiveC()();
    v199 = [v196 localizedStringForKey:v197 value:v198 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v200 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v201 = String._bridgeToObjectiveC()();
    v202 = [v1047 systemImageNamed:{v201, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v200 setImage:v202];
    v203 = [v1043 mainBundle];
    v204 = String._bridgeToObjectiveC()();
    v205 = String._bridgeToObjectiveC()();
    v206 = [v203 localizedStringForKey:v204 value:v205 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v207 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v208 = String._bridgeToObjectiveC()();
    v209 = [v1047 systemImageNamed:{v208, _swiftEmptyArrayStorage}];

    [v207 setImage:v209];
    v210 = swift_allocObject();
    if (v984)
    {
      *(v210 + 16) = xmmword_10146E8A0;
      v211 = v986;
      *(v210 + 32) = v986;
      *(v210 + 40) = v984;
      *(v210 + 48) = v200;
      v976 = v984;
    }

    else
    {
      v976 = 0;
      *(v210 + 16) = xmmword_10146CE00;
      v211 = v986;
      *(v210 + 32) = v986;
      *(v210 + 40) = v200;
    }

    v985 = v211;
    v983 = v200;
    v212._countAndFlagsBits = 0;
    v212._object = 0xE000000000000000;
    v1063.value.super.isa = 0;
    v1063.is_nil = 0;
    v213 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v212, 0, v1063, 1, 0xFFFFFFFFFFFFFFFFLL, v210, 0).super.super.isa;
    v214 = swift_allocObject();
    *(v214 + 16) = xmmword_101465920;
    *(v214 + 32) = v207;
    v987 = v213;
    v982 = v207;
    v215._countAndFlagsBits = 0;
    v215._object = 0xE000000000000000;
    v1064.value.super.isa = 0;
    v1064.is_nil = 0;
    v216 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v215, 0, v1064, 1, 0xFFFFFFFFFFFFFFFFLL, v214, childrenb).super.super.isa;
    v217 = swift_allocObject();
    *(v217 + 16) = xmmword_10146E8B0;
    *(v217 + 32) = v1033;
    *(v217 + 40) = v979;
    *(v217 + 48) = v987;
    *(v217 + 56) = v216;
    v981 = v1033.super.super.isa;
    v980 = v979.super.super.isa;
    v978 = v216;
    v218 = [v1043 mainBundle];
    v219 = String._bridgeToObjectiveC()();
    v220 = String._bridgeToObjectiveC()();
    v221 = [v218 localizedStringForKey:v219 value:v220 table:0];

    v222 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v224 = v223;

    v225._countAndFlagsBits = v222;
    v225._object = v224;
    v1065.value.super.isa = 0;
    v1065.is_nil = 0;
    v974 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v225, 0, v1065, 1, 0xFFFFFFFFFFFFFFFFLL, v217, childrenc).super.super.isa;
    [v1042 insertSiblingMenu:v974 afterMenuForIdentifier:UIMenuEdit];
    v226 = [v1043 mainBundle];
    v227 = String._bridgeToObjectiveC()();
    v228 = String._bridgeToObjectiveC()();
    v229 = [v226 localizedStringForKey:v227 value:v228 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v230 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v231 = String._bridgeToObjectiveC()();
    v232 = [v1047 systemImageNamed:{v231, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v230 setImage:v232];
    v233 = swift_allocObject();
    *(v233 + 16) = xmmword_101465920;
    *(v233 + 32) = v230;
    v977 = v230;
    v234 = Array._bridgeToObjectiveC()().super.isa;

    [v1042 insertElements:v234 atEndOfMenuForIdentifier:UIMenuTextStyle];

    v235 = [v1043 mainBundle];
    v236 = String._bridgeToObjectiveC()();
    v237 = String._bridgeToObjectiveC()();
    v238 = [v235 localizedStringForKey:v236 value:v237 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v239 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v240 = swift_allocObject();
    *(v240 + 16) = xmmword_101465920;
    *(v240 + 32) = v239;
    v975 = v239;
    v241._countAndFlagsBits = 0;
    v241._object = 0xE000000000000000;
    v1066.value.super.isa = 0;
    v1066.is_nil = 0;
    v242 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v241, 0, v1066, 1, 0xFFFFFFFFFFFFFFFFLL, v240, 0).super.super.isa;

    [v1042 insertChildMenu:v242 atEndOfMenuForIdentifier:?];
    v243 = [v1043 mainBundle];
    v244 = String._bridgeToObjectiveC()();
    v245 = String._bridgeToObjectiveC()();
    v246 = [v243 localizedStringForKey:v244 value:v245 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v247 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v248 = String._bridgeToObjectiveC()();
    v249 = [v1047 systemImageNamed:{v248, _swiftEmptyArrayStorage}];

    [v247 setImage:v249];
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_101465920;
    *(v250 + 32) = v247;
    v973 = v247;
    v251._countAndFlagsBits = 0;
    v251._object = 0xE000000000000000;
    v1067.value.super.isa = 0;
    v1067.is_nil = 0;
    v939 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v251, 0, v1067, 1, 0xFFFFFFFFFFFFFFFFLL, v250, 0).super.super.isa;

    [v1042 insertChildMenu:v939 atStartOfMenuForIdentifier:UIMenuWritingDirection];
    v252 = [v1043 mainBundle];
    v253 = String._bridgeToObjectiveC()();
    v254 = String._bridgeToObjectiveC()();
    v255 = [v252 localizedStringForKey:v253 value:v254 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v256 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v257 = String._bridgeToObjectiveC()();
    v258 = [v1047 systemImageNamed:{v257, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v256 setImage:v258];
    v259 = [v1043 mainBundle];
    v260 = String._bridgeToObjectiveC()();
    v261 = String._bridgeToObjectiveC()();
    v262 = [v259 localizedStringForKey:v260 value:v261 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v263 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v264 = String._bridgeToObjectiveC()();
    v265 = [v1047 systemImageNamed:{v264, _swiftEmptyArrayStorage}];

    [v263 setImage:v265];
    v266 = swift_allocObject();
    *(v266 + 16) = xmmword_10146CE00;
    *(v266 + 32) = v256;
    *(v266 + 40) = v263;
    v971 = v256;
    v970 = v263;
    v267 = [v1043 mainBundle];
    v268 = String._bridgeToObjectiveC()();
    v269 = String._bridgeToObjectiveC()();
    v270 = [v267 localizedStringForKey:v268 value:v269 table:0];

    v271 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v273 = v272;

    v274._countAndFlagsBits = v271;
    v274._object = v273;
    v1068.value.super.isa = 0;
    v1068.is_nil = 0;
    v275 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v274, 0, v1068, 0, 0xFFFFFFFFFFFFFFFFLL, v266, 0).super.super.isa;
    v276 = swift_allocObject();
    *(v276 + 16) = xmmword_101465920;
    *(v276 + 32) = v275;
    v969 = v275;
    v277 = Array._bridgeToObjectiveC()().super.isa;

    [v1042 insertElements:v277 afterMenuForIdentifier:UIMenuText];

    v278 = [v1043 mainBundle];
    v279 = String._bridgeToObjectiveC()();
    v280 = String._bridgeToObjectiveC()();
    v281 = [v278 localizedStringForKey:v279 value:v280 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v282 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v283 = swift_allocObject();
    *(v283 + 16) = xmmword_101465920;
    *(v283 + 32) = v282;
    v968 = v282;
    v284 = [v1043 mainBundle];
    v285 = String._bridgeToObjectiveC()();
    v286 = String._bridgeToObjectiveC()();
    v287 = [v284 localizedStringForKey:v285 value:v286 table:0];

    v288 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v290 = v289;

    v291._countAndFlagsBits = v288;
    v291._object = v290;
    v1069.value.super.isa = 0;
    v1069.is_nil = 0;
    v937 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v291, 0, v1069, 0, 0xFFFFFFFFFFFFFFFFLL, v283, 0).super.super.isa;
    v292 = [v1043 mainBundle];
    v293 = String._bridgeToObjectiveC()();
    v294 = String._bridgeToObjectiveC()();
    v295 = [v292 localizedStringForKey:v293 value:v294 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v949 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v296 = [v1043 mainBundle];
    v297 = String._bridgeToObjectiveC()();
    v298 = String._bridgeToObjectiveC()();
    v299 = [v296 localizedStringForKey:v297 value:v298 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v947 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v300 = [v1043 mainBundle];
    v301 = String._bridgeToObjectiveC()();
    v302 = String._bridgeToObjectiveC()();
    v303 = [v300 localizedStringForKey:v301 value:v302 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v945 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v304 = [v1043 mainBundle];
    v305 = String._bridgeToObjectiveC()();
    v306 = String._bridgeToObjectiveC()();
    v307 = [v304 localizedStringForKey:v305 value:v306 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v308 = [objc_allocWithZone(NSNumber) initWithInteger:3];
    *(&v1051 + 1) = v1037;
    *&v1050 = v308;
    v963 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v309 = [v1043 mainBundle];
    v310 = String._bridgeToObjectiveC()();
    v311 = String._bridgeToObjectiveC()();
    v312 = [v309 localizedStringForKey:v310 value:v311 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v313 = [objc_allocWithZone(NSNumber) initWithInteger:4];
    *(&v1051 + 1) = v1037;
    *&v1050 = v313;
    v966 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v314 = [v1043 mainBundle];
    v315 = String._bridgeToObjectiveC()();
    v316 = String._bridgeToObjectiveC()();
    v317 = [v314 localizedStringForKey:v315 value:v316 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v318 = [objc_allocWithZone(NSNumber) initWithInteger:5];
    *(&v1051 + 1) = v1037;
    *&v1050 = v318;
    v961 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v319 = [v1043 mainBundle];
    v320 = String._bridgeToObjectiveC()();
    v321 = String._bridgeToObjectiveC()();
    v322 = [v319 localizedStringForKey:v320 value:v321 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v323 = [objc_allocWithZone(NSNumber) initWithInteger:6];
    *(&v1051 + 1) = v1037;
    *&v1050 = v323;
    v959 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v324 = [v1043 mainBundle];
    v325 = String._bridgeToObjectiveC()();
    v326 = String._bridgeToObjectiveC()();
    v327 = [v324 localizedStringForKey:v325 value:v326 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v328 = [objc_allocWithZone(NSNumber) initWithInteger:7];
    *(&v1051 + 1) = v1037;
    *&v1050 = v328;
    v957 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v329 = [v1043 mainBundle];
    v330 = String._bridgeToObjectiveC()();
    v331 = String._bridgeToObjectiveC()();
    v332 = [v329 localizedStringForKey:v330 value:v331 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v333 = [objc_allocWithZone(NSNumber) initWithInteger:8];
    *(&v1051 + 1) = v1037;
    *&v1050 = v333;
    v955 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v334 = [v1043 mainBundle];
    v335 = String._bridgeToObjectiveC()();
    v336 = String._bridgeToObjectiveC()();
    v337 = [v334 localizedStringForKey:v335 value:v336 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v338 = [objc_allocWithZone(NSNumber) initWithInteger:9];
    *(&v1051 + 1) = v1037;
    *&v1050 = v338;
    v953 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v339 = [v1043 mainBundle];
    v340 = String._bridgeToObjectiveC()();
    v341 = String._bridgeToObjectiveC()();
    v342 = [v339 localizedStringForKey:v340 value:v341 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v343 = [objc_allocWithZone(NSNumber) initWithInteger:10];
    *(&v1051 + 1) = v1037;
    *&v1050 = v343;
    v951 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v344 = [v1043 mainBundle];
    v345 = String._bridgeToObjectiveC()();
    v346 = String._bridgeToObjectiveC()();
    v347 = [v344 localizedStringForKey:v345 value:v346 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v348 = [objc_allocWithZone(NSNumber) initWithInteger:11];
    *(&v1051 + 1) = v1037;
    *&v1050 = v348;
    v943 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v349 = [v1043 mainBundle];
    v350 = String._bridgeToObjectiveC()();
    v351 = String._bridgeToObjectiveC()();
    v352 = [v349 localizedStringForKey:v350 value:v351 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v353 = [objc_allocWithZone(NSNumber) initWithInteger:12];
    *(&v1051 + 1) = v1037;
    *&v1050 = v353;
    v1039 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v354 = [v1043 mainBundle];
    v355 = String._bridgeToObjectiveC()();
    v356 = String._bridgeToObjectiveC()();
    v357 = [v354 localizedStringForKey:v355 value:v356 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v358 = [objc_allocWithZone(NSNumber) initWithInteger:14];
    *(&v1051 + 1) = v1037;
    *&v1050 = v358;
    v1034 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v359 = [v1043 mainBundle];
    v360 = String._bridgeToObjectiveC()();
    v361 = String._bridgeToObjectiveC()();
    v362 = [v359 localizedStringForKey:v360 value:v361 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v363 = [objc_allocWithZone(NSNumber) initWithInteger:13];
    *(&v1051 + 1) = v1037;
    *&v1050 = v363;
    v364 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v365 = swift_allocObject();
    *(v365 + 16) = xmmword_10147AD30;
    *(v365 + 32) = v963;
    *(v365 + 40) = v966;
    *(v365 + 48) = v961;
    *(v365 + 56) = v959;
    *(v365 + 64) = v957;
    *(v365 + 72) = v955;
    *(v365 + 80) = v953;
    *(v365 + 88) = v951;
    *(v365 + 96) = v943;
    *(v365 + 104) = v1039;
    *(v365 + 112) = v1034;
    *(v365 + 120) = v364;
    v1038 = v963;
    v967 = v966;
    v965 = v961;
    v964 = v959;
    v962 = v957;
    v960 = v955;
    v958 = v953;
    v956 = v951;
    v954 = v943;
    v1040 = v1039;
    v1035 = v1034;
    v952 = v364;
    v366 = [v1043 mainBundle];
    v367 = String._bridgeToObjectiveC()();
    v368 = String._bridgeToObjectiveC()();
    v369 = [v366 localizedStringForKey:v367 value:v368 table:0];

    v370 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v372 = v371;

    v373._countAndFlagsBits = v370;
    v373._object = v372;
    v1070.value.super.isa = 0;
    v1070.is_nil = 0;
    v374 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v373, 0, v1070, 0, 0xFFFFFFFFFFFFFFFFLL, v365, 0).super.super.isa;
    v375 = swift_allocObject();
    *(v375 + 16) = xmmword_101465920;
    *(v375 + 32) = v949;
    v950 = v949;
    v376._countAndFlagsBits = 0;
    v376._object = 0xE000000000000000;
    v1071.value.super.isa = 0;
    v1071.is_nil = 0;
    v377 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v376, 0, v1071, 1, 0xFFFFFFFFFFFFFFFFLL, v375, childrend).super.super.isa;
    v378 = swift_allocObject();
    *(v378 + 16) = xmmword_10146E8A0;
    *(v378 + 32) = v947;
    *(v378 + 40) = v945;
    *(v378 + 48) = v374;
    v948 = v947;
    v946 = v945;
    v944 = v374;
    v379._countAndFlagsBits = 0;
    v379._object = 0xE000000000000000;
    v1072.value.super.isa = 0;
    v1072.is_nil = 0;
    v380 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v379, 0, v1072, 1, 0xFFFFFFFFFFFFFFFFLL, v378, childrene).super.super.isa;
    v381 = swift_allocObject();
    *(v381 + 16) = xmmword_10146CE00;
    *(v381 + 32) = v377;
    *(v381 + 40) = v380;
    v942 = v377;
    v941 = v380;
    v382 = [v1043 mainBundle];
    v383 = String._bridgeToObjectiveC()();
    v384 = String._bridgeToObjectiveC()();
    v385 = [v382 localizedStringForKey:v383 value:v384 table:0];

    v386 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v388 = v387;

    v389._countAndFlagsBits = v386;
    v389._object = v388;
    v1073.value.super.isa = 0;
    v1073.is_nil = 0;
    v935 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v389, 0, v1073, 0, 0xFFFFFFFFFFFFFFFFLL, v381, childrenf).super.super.isa;
    v390 = [v1043 mainBundle];
    v391 = String._bridgeToObjectiveC()();
    v392 = String._bridgeToObjectiveC()();
    v393 = [v390 localizedStringForKey:v391 value:v392 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v933 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v394 = String._bridgeToObjectiveC()();
    v395 = [v1047 systemImageNamed:{v394, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v933 setImage:v395];
    v396 = [v1043 mainBundle];
    v397 = String._bridgeToObjectiveC()();
    v398 = String._bridgeToObjectiveC()();
    v399 = [v396 localizedStringForKey:v397 value:v398 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v931 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v400 = String._bridgeToObjectiveC()();
    v401 = [v1047 systemImageNamed:{v400, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v931 setImage:v401];
    v402 = [v1043 mainBundle];
    v403 = String._bridgeToObjectiveC()();
    v404 = String._bridgeToObjectiveC()();
    v405 = [v402 localizedStringForKey:v403 value:v404 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v929 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v406 = String._bridgeToObjectiveC()();
    v407 = [v1047 systemImageNamed:{v406, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v929 setImage:v407];
    v408 = [v1043 mainBundle];
    v409 = String._bridgeToObjectiveC()();
    v410 = String._bridgeToObjectiveC()();
    v411 = [v408 localizedStringForKey:v409 value:v410 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v927 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v412 = String._bridgeToObjectiveC()();
    v413 = [v1047 imageNamed:{v412, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v927 setImage:v413];
    v414 = [v1043 mainBundle];
    v415 = String._bridgeToObjectiveC()();
    v416 = String._bridgeToObjectiveC()();
    v417 = [v414 localizedStringForKey:v415 value:v416 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v925 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v418 = String._bridgeToObjectiveC()();
    v419 = [v1047 imageNamed:{v418, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v925 setImage:v419];
    v420 = [v1043 mainBundle];
    v421 = String._bridgeToObjectiveC()();
    v422 = String._bridgeToObjectiveC()();
    v423 = [v420 localizedStringForKey:v421 value:v422 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v424 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v425 = swift_allocObject();
    *(v425 + 16) = xmmword_10146CE00;
    *(v425 + 32) = v937;
    *(v425 + 40) = v935;
    v938 = v937;
    v936 = v935;
    v426._countAndFlagsBits = 0;
    v426._object = 0xE000000000000000;
    v1074.value.super.isa = 0;
    v1074.is_nil = 0;
    v427 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v426, 0, v1074, 1, 0xFFFFFFFFFFFFFFFFLL, v425, 0).super.super.isa;

    [v1042 insertChildMenu:v427 atEndOfMenuForIdentifier:UIMenuFormat];
    v428 = swift_allocObject();
    *(v428 + 16) = xmmword_10146E8A0;
    *(v428 + 32) = v933;
    *(v428 + 40) = v931;
    *(v428 + 48) = v929;
    v934 = v933;
    v932 = v931;
    v930 = v929;
    v429._countAndFlagsBits = 0;
    v429._object = 0xE000000000000000;
    v1075.value.super.isa = 0;
    v1075.is_nil = 0;
    v430 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v429, 0, v1075, 1, 0xFFFFFFFFFFFFFFFFLL, v428, childreng).super.super.isa;

    [v1042 insertChildMenu:v430 atEndOfMenuForIdentifier:UIMenuFormat];
    v431 = swift_allocObject();
    *(v431 + 16) = xmmword_10146E8A0;
    *(v431 + 32) = v927;
    *(v431 + 40) = v925;
    *(v431 + 48) = v424;
    v928 = v927;
    v926 = v925;
    v924 = v424;
    v432._countAndFlagsBits = 0;
    v432._object = 0xE000000000000000;
    v1076.value.super.isa = 0;
    v1076.is_nil = 0;
    v940 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v432, 0, v1076, 1, 0xFFFFFFFFFFFFFFFFLL, v431, childrenh).super.super.isa;

    [v1042 insertChildMenu:v940 atEndOfMenuForIdentifier:UIMenuFormat];
    v433 = [v1043 mainBundle];
    v434 = String._bridgeToObjectiveC()();
    v435 = String._bridgeToObjectiveC()();
    v436 = [v433 localizedStringForKey:v434 value:v435 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v921 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v437 = String._bridgeToObjectiveC()();
    v438 = [v1047 systemImageNamed:{v437, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v921 setImage:v438];
    v439 = [v1043 mainBundle];
    v440 = String._bridgeToObjectiveC()();
    v441 = String._bridgeToObjectiveC()();
    v442 = [v439 localizedStringForKey:v440 value:v441 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v919 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v443 = String._bridgeToObjectiveC()();
    v444 = [v1047 systemImageNamed:{v443, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v919 setImage:v444];
    v445 = [v1043 mainBundle];
    v446 = String._bridgeToObjectiveC()();
    v447 = String._bridgeToObjectiveC()();
    v448 = [v445 localizedStringForKey:v446 value:v447 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v449 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v450 = String._bridgeToObjectiveC()();
    v451 = [v1047 systemImageNamed:{v450, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v449 setImage:v451];
    v452 = [v1043 mainBundle];
    v453 = String._bridgeToObjectiveC()();
    v454 = String._bridgeToObjectiveC()();
    v455 = [v452 localizedStringForKey:v453 value:v454 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v456 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v457 = String._bridgeToObjectiveC()();
    v458 = [v1047 systemImageNamed:{v457, _swiftEmptyArrayStorage}];

    [v456 setImage:v458];
    v459 = swift_allocObject();
    *(v459 + 16) = xmmword_10146E8B0;
    *(v459 + 32) = v921;
    *(v459 + 40) = v919;
    *(v459 + 48) = v449;
    *(v459 + 56) = v456;
    v923 = v921;
    v922 = v919;
    v920 = v449;
    v918 = v456;
    v460._countAndFlagsBits = 0;
    v460._object = 0xE000000000000000;
    v1077.value.super.isa = 0;
    v1077.is_nil = 0;
    v890 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v460, 0, v1077, 1, 0xFFFFFFFFFFFFFFFFLL, v459, 0).super.super.isa;
    v461 = [v1043 mainBundle];
    v462 = String._bridgeToObjectiveC()();
    v463 = String._bridgeToObjectiveC()();
    v464 = [v461 localizedStringForKey:v462 value:v463 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v916 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v465 = String._bridgeToObjectiveC()();
    v466 = [v1047 systemImageNamed:{v465, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v916 setImage:v466];
    v467 = [v1043 mainBundle];
    v468 = String._bridgeToObjectiveC()();
    v469 = String._bridgeToObjectiveC()();
    v470 = [v467 localizedStringForKey:v468 value:v469 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v471 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v472 = String._bridgeToObjectiveC()();
    v473 = [v1047 systemImageNamed:{v472, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v471 setImage:v473];
    v474 = [v1043 mainBundle];
    v475 = String._bridgeToObjectiveC()();
    v476 = String._bridgeToObjectiveC()();
    v477 = [v474 localizedStringForKey:v475 value:v476 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v478 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v479 = String._bridgeToObjectiveC()();
    v480 = [v1047 systemImageNamed:{v479, _swiftEmptyArrayStorage}];

    [v478 setImage:v480];
    v481 = swift_allocObject();
    *(v481 + 16) = xmmword_10146E8A0;
    *(v481 + 32) = v916;
    *(v481 + 40) = v471;
    *(v481 + 48) = v478;
    v917 = v916;
    v915 = v471;
    v914 = v478;
    v482._countAndFlagsBits = 0;
    v482._object = 0xE000000000000000;
    v1078.value.super.isa = 0;
    v1078.is_nil = 0;
    v908 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v482, 0, v1078, 1, 0xFFFFFFFFFFFFFFFFLL, v481, 0).super.super.isa;
    v483 = [v1043 mainBundle];
    v484 = String._bridgeToObjectiveC()();
    v485 = String._bridgeToObjectiveC()();
    v486 = [v483 localizedStringForKey:v484 value:v485 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v912 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v487 = String._bridgeToObjectiveC()();
    v488 = [v1047 systemImageNamed:{v487, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v912 setImage:v488];
    v489 = [v1043 mainBundle];
    v490 = String._bridgeToObjectiveC()();
    v491 = String._bridgeToObjectiveC()();
    v492 = [v489 localizedStringForKey:v490 value:v491 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v493 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v494 = String._bridgeToObjectiveC()();
    v495 = [v1047 systemImageNamed:{v494, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v493 setImage:v495];
    v496 = [v1043 mainBundle];
    v497 = String._bridgeToObjectiveC()();
    v498 = String._bridgeToObjectiveC()();
    v499 = [v496 localizedStringForKey:v497 value:v498 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v500 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v501 = String._bridgeToObjectiveC()();
    v502 = [v1047 systemImageNamed:{v501, _swiftEmptyArrayStorage}];

    [v500 setImage:v502];
    v503 = swift_allocObject();
    *(v503 + 16) = xmmword_10146E8A0;
    *(v503 + 32) = v912;
    *(v503 + 40) = v493;
    *(v503 + 48) = v500;
    v913 = v912;
    v911 = v493;
    v910 = v500;
    v504._countAndFlagsBits = 0;
    v504._object = 0xE000000000000000;
    v1079.value.super.isa = 0;
    v1079.is_nil = 0;
    v505 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v504, 0, v1079, 1, 0xFFFFFFFFFFFFFFFFLL, v503, 0).super.super.isa;
    v506 = swift_allocObject();
    *(v506 + 16) = xmmword_10146CE00;
    *(v506 + 32) = v908;
    *(v506 + 40) = v505;
    v909 = v908;
    v907 = v505;
    v507 = [v1043 mainBundle];
    v508 = String._bridgeToObjectiveC()();
    v509 = String._bridgeToObjectiveC()();
    v510 = [v507 localizedStringForKey:v508 value:v509 table:0];

    v511 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v513 = v512;

    v514._countAndFlagsBits = v511;
    v514._object = v513;
    v1080.value.super.isa = 0;
    v1080.is_nil = 0;
    v902 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v514, 0, v1080, 0, 0xFFFFFFFFFFFFFFFFLL, v506, childreni).super.super.isa;
    v515 = [v1043 mainBundle];
    v516 = String._bridgeToObjectiveC()();
    v517 = String._bridgeToObjectiveC()();
    v518 = [v515 localizedStringForKey:v516 value:v517 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v519 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v520 = String._bridgeToObjectiveC()();
    v521 = [v1047 systemImageNamed:{v520, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v519 setImage:v521];
    v522 = [v1043 mainBundle];
    v523 = String._bridgeToObjectiveC()();
    v524 = String._bridgeToObjectiveC()();
    v525 = [v522 localizedStringForKey:v523 value:v524 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v526 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v527 = String._bridgeToObjectiveC()();
    v528 = [v1047 systemImageNamed:{v527, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v526 setImage:v528];
    v529 = [v1043 mainBundle];
    v530 = String._bridgeToObjectiveC()();
    v531 = String._bridgeToObjectiveC()();
    v532 = [v529 localizedStringForKey:v530 value:v531 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v533 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v534 = swift_allocObject();
    *(v534 + 16) = xmmword_10146E8A0;
    *(v534 + 32) = v519;
    *(v534 + 40) = v526;
    *(v534 + 48) = v533;
    v906 = v519;
    v905 = v526;
    v904 = v533;
    v535 = [v1043 mainBundle];
    v536 = String._bridgeToObjectiveC()();
    v537 = String._bridgeToObjectiveC()();
    v538 = [v535 localizedStringForKey:v536 value:v537 table:0];

    v539 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v541 = v540;

    v542._countAndFlagsBits = v539;
    v542._object = v541;
    v1081.value.super.isa = 0;
    v1081.is_nil = 0;
    v900 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v542, 0, v1081, 0, 0xFFFFFFFFFFFFFFFFLL, v534, 0).super.super.isa;
    v543 = [v1043 mainBundle];
    v544 = String._bridgeToObjectiveC()();
    v545 = String._bridgeToObjectiveC()();
    v546 = [v543 localizedStringForKey:v544 value:v545 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v898 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v547 = String._bridgeToObjectiveC()();
    v548 = [v1047 systemImageNamed:{v547, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v898 setImage:v548];
    v549 = [v1043 mainBundle];
    v550 = String._bridgeToObjectiveC()();
    v551 = String._bridgeToObjectiveC()();
    v552 = [v549 localizedStringForKey:v550 value:v551 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v896 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v553 = String._bridgeToObjectiveC()();
    v554 = [v1047 systemImageNamed:{v553, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v896 setImage:v554];
    v555 = [v1043 mainBundle];
    v556 = String._bridgeToObjectiveC()();
    v557 = String._bridgeToObjectiveC()();
    v558 = [v555 localizedStringForKey:v556 value:v557 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v894 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v559 = String._bridgeToObjectiveC()();
    v560 = [v1047 systemImageNamed:{v559, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v894 setImage:v560];
    v561 = [v1043 mainBundle];
    v562 = String._bridgeToObjectiveC()();
    v563 = String._bridgeToObjectiveC()();
    v564 = [v561 localizedStringForKey:v562 value:v563 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v565 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v566 = String._bridgeToObjectiveC()();
    v567 = [v1047 systemImageNamed:{v566, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v565 setImage:v567];
    v568 = [v1043 mainBundle];
    v569 = String._bridgeToObjectiveC()();
    v570 = String._bridgeToObjectiveC()();
    v571 = [v568 localizedStringForKey:v569 value:v570 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v572 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v573 = String._bridgeToObjectiveC()();
    v574 = [v1047 systemImageNamed:{v573, _swiftEmptyArrayStorage}];

    [v572 setImage:v574];
    v575 = swift_allocObject();
    *(v575 + 16) = xmmword_10146CE00;
    *(v575 + 32) = v902;
    *(v575 + 40) = v900;
    v903 = v902;
    v901 = v900;
    v576._countAndFlagsBits = 0;
    v576._object = 0xE000000000000000;
    v1082.value.super.isa = 0;
    v1082.is_nil = 0;
    v577 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v576, 0, v1082, 1, 0xFFFFFFFFFFFFFFFFLL, v575, 0).super.super.isa;
    v578 = swift_allocObject();
    *(v578 + 16) = xmmword_10146CE00;
    *(v578 + 32) = v898;
    *(v578 + 40) = v896;
    v899 = v898;
    v897 = v896;
    v579._countAndFlagsBits = 0;
    v579._object = 0xE000000000000000;
    v1083.value.super.isa = 0;
    v1083.is_nil = 0;
    v580 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v579, 0, v1083, 1, 0xFFFFFFFFFFFFFFFFLL, v578, childrenj).super.super.isa;
    v581 = swift_allocObject();
    *(v581 + 16) = xmmword_10146CE00;
    *(v581 + 32) = v894;
    *(v581 + 40) = v565;
    v895 = v894;
    v893 = v565;
    v582._countAndFlagsBits = 0;
    v582._object = 0xE000000000000000;
    v1084.value.super.isa = 0;
    v1084.is_nil = 0;
    v583 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v582, 0, v1084, 1, 0xFFFFFFFFFFFFFFFFLL, v581, childrenk).super.super.isa;
    v584 = swift_allocObject();
    *(v584 + 16) = xmmword_101465920;
    *(v584 + 32) = v572;
    v892 = v572;
    v585._countAndFlagsBits = 0;
    v585._object = 0xE000000000000000;
    v1085.value.super.isa = 0;
    v1085.is_nil = 0;
    v586 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v585, 0, v1085, 1, 0xFFFFFFFFFFFFFFFFLL, v584, childrenl).super.super.isa;
    v587 = swift_allocObject();
    *(v587 + 16) = xmmword_10147AD40;
    *(v587 + 32) = v890;
    *(v587 + 40) = v577;
    *(v587 + 48) = v580;
    *(v587 + 56) = v583;
    *(v587 + 64) = v586;
    v891 = v890;
    v889 = v577;
    v888 = v580;
    v887 = v583;
    v886 = v586;
    v588 = [v1043 mainBundle];
    v589 = String._bridgeToObjectiveC()();
    v590 = String._bridgeToObjectiveC()();
    v591 = [v588 localizedStringForKey:v589 value:v590 table:0];

    v592 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v594 = v593;

    v595._countAndFlagsBits = v592;
    v595._object = v594;
    v1086.value.super.isa = 0;
    v1086.is_nil = 0;
    v885 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v595, 0, v1086, 1, 0xFFFFFFFFFFFFFFFFLL, v587, childrenm).super.super.isa;
    [v1042 insertSiblingMenu:v885 afterMenuForIdentifier:UIMenuFormat];
    v596 = [v1043 mainBundle];
    v597 = String._bridgeToObjectiveC()();
    v598 = String._bridgeToObjectiveC()();
    v599 = [v596 localizedStringForKey:v597 value:v598 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v879 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v600 = String._bridgeToObjectiveC()();
    v601 = [v1047 systemImageNamed:{v600, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v879 setImage:v601];
    v602 = [v1043 mainBundle];
    v603 = String._bridgeToObjectiveC()();
    v604 = String._bridgeToObjectiveC()();
    v605 = [v602 localizedStringForKey:v603 value:v604 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v875 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v606 = String._bridgeToObjectiveC()();
    v607 = [v1047 systemImageNamed:{v606, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v875 setImage:v607];
    v608 = [v1043 mainBundle];
    v609 = String._bridgeToObjectiveC()();
    v610 = String._bridgeToObjectiveC()();
    v611 = [v608 localizedStringForKey:v609 value:v610 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v612 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v613 = [v1043 mainBundle];
    v614 = String._bridgeToObjectiveC()();
    v615 = String._bridgeToObjectiveC()();
    v616 = [v613 localizedStringForKey:v614 value:v615 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v617 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v618 = [v1043 mainBundle];
    v619 = String._bridgeToObjectiveC()();
    v620 = String._bridgeToObjectiveC()();
    v621 = [v618 localizedStringForKey:v619 value:v620 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v622 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v623 = swift_allocObject();
    *(v623 + 16) = xmmword_10146E8A0;
    *(v623 + 32) = v612;
    *(v623 + 40) = v617;
    *(v623 + 48) = v622;
    v883 = v612;
    v882 = v617;
    v881 = v622;
    v624._countAndFlagsBits = 0;
    v624._object = 0xE000000000000000;
    v1087.value.super.isa = 0;
    v1087.is_nil = 0;
    v873 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v624, 0, v1087, 1, 0xFFFFFFFFFFFFFFFFLL, v623, 0).super.super.isa;
    v625 = [v1043 mainBundle];
    v626 = String._bridgeToObjectiveC()();
    v627 = String._bridgeToObjectiveC()();
    v628 = [v625 localizedStringForKey:v626 value:v627 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v629 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v630 = [v1043 mainBundle];
    v631 = String._bridgeToObjectiveC()();
    v632 = String._bridgeToObjectiveC()();
    v633 = [v630 localizedStringForKey:v631 value:v632 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v634 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v635 = swift_allocObject();
    *(v635 + 16) = xmmword_10146CE00;
    *(v635 + 32) = v629;
    *(v635 + 40) = v634;
    v878 = v629;
    v877 = v634;
    v636._countAndFlagsBits = 0;
    v636._object = 0xE000000000000000;
    v1088.value.super.isa = 0;
    v1088.is_nil = 0;
    v637 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v636, 0, v1088, 1, 0xFFFFFFFFFFFFFFFFLL, v635, 0).super.super.isa;
    v638 = swift_allocObject();
    *(v638 + 16) = xmmword_10146CE00;
    *(v638 + 32) = v873;
    *(v638 + 40) = v637;
    v874 = v873;
    v872 = v637;
    v639 = [v1043 mainBundle];
    v640 = String._bridgeToObjectiveC()();
    v641 = String._bridgeToObjectiveC()();
    v642 = [v639 localizedStringForKey:v640 value:v641 table:0];

    v643 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v645 = v644;

    v646 = String._bridgeToObjectiveC()();
    v647 = [v1047 systemImageNamed:v646];

    v648._countAndFlagsBits = v643;
    v648._object = v645;
    v1089.value.super.isa = v647;
    v1089.is_nil = 0;
    v870 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v648, 0, v1089, 0, 0xFFFFFFFFFFFFFFFFLL, v638, childrenn).super.super.isa;
    v649 = [v1043 mainBundle];
    v650 = String._bridgeToObjectiveC()();
    v651 = String._bridgeToObjectiveC()();
    v652 = [v649 localizedStringForKey:v650 value:v651 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v868 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v653 = String._bridgeToObjectiveC()();
    v654 = [v1047 systemImageNamed:{v653, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v868 setImage:v654];
    v655 = [v1043 mainBundle];
    v656 = String._bridgeToObjectiveC()();
    v657 = String._bridgeToObjectiveC()();
    v658 = [v655 localizedStringForKey:v656 value:v657 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v866 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v659 = String._bridgeToObjectiveC()();
    v660 = [v1047 imageNamed:{v659, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v866 setImage:v660];
    v661 = [v1043 mainBundle];
    v662 = String._bridgeToObjectiveC()();
    v663 = String._bridgeToObjectiveC()();
    v664 = [v661 localizedStringForKey:v662 value:v663 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v864 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v665 = String._bridgeToObjectiveC()();
    v666 = [v1047 imageNamed:{v665, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

    [v864 setImage:v666];
    v667 = [v1043 mainBundle];
    v668 = String._bridgeToObjectiveC()();
    v669 = String._bridgeToObjectiveC()();
    v670 = [v667 localizedStringForKey:v668 value:v669 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v861 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v671 = [v1043 mainBundle];
    v672 = String._bridgeToObjectiveC()();
    v673 = String._bridgeToObjectiveC()();
    v674 = [v671 localizedStringForKey:v672 value:v673 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v675 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v676 = [v1043 mainBundle];
    v677 = String._bridgeToObjectiveC()();
    v678 = String._bridgeToObjectiveC()();
    v679 = [v676 localizedStringForKey:v677 value:v678 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v680 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v681 = swift_allocObject();
    *(v681 + 16) = xmmword_10146CE00;
    *(v681 + 32) = v675;
    *(v681 + 40) = v680;
    v1048 = v675;
    v995 = v680;
    v682._countAndFlagsBits = 0;
    v682._object = 0xE000000000000000;
    v1090.value.super.isa = 0;
    v1090.is_nil = 0;
    v858 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v682, 0, v1090, 1, 0xFFFFFFFFFFFFFFFFLL, v681, 0).super.super.isa;
    v683 = [v1043 mainBundle];
    v684 = String._bridgeToObjectiveC()();
    v685 = String._bridgeToObjectiveC()();
    v686 = [v683 localizedStringForKey:v684 value:v685 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v687 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v688 = [v1043 mainBundle];
    v689 = String._bridgeToObjectiveC()();
    v690 = String._bridgeToObjectiveC()();
    v691 = [v688 localizedStringForKey:v689 value:v690 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v692 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v693 = swift_allocObject();
    *(v693 + 16) = xmmword_10146CE00;
    *(v693 + 32) = v687;
    *(v693 + 40) = v692;
    v1041 = v687;
    v863 = v692;
    v694._countAndFlagsBits = 0;
    v694._object = 0xE000000000000000;
    v1091.value.super.isa = 0;
    v1091.is_nil = 0;
    v695 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v694, 0, v1091, 1, 0xFFFFFFFFFFFFFFFFLL, v693, 0).super.super.isa;
    v696 = [v1043 mainBundle];
    v697 = String._bridgeToObjectiveC()();
    v698 = String._bridgeToObjectiveC()();
    v699 = [v696 localizedStringForKey:v697 value:v698 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v700 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v701 = swift_allocObject();
    *(v701 + 16) = xmmword_101465920;
    *(v701 + 32) = v700;
    v860 = v700;
    v702._countAndFlagsBits = 0;
    v702._object = 0xE000000000000000;
    v1092.value.super.isa = 0;
    v1092.is_nil = 0;
    v703 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v702, 0, v1092, 1, 0xFFFFFFFFFFFFFFFFLL, v701, 0).super.super.isa;
    v704 = swift_allocObject();
    *(v704 + 16) = xmmword_10146E8A0;
    *(v704 + 32) = v858;
    *(v704 + 40) = v695;
    *(v704 + 48) = v703;
    v859 = v858;
    v857 = v695;
    v856 = v703;
    v705 = [v1043 mainBundle];
    v706 = String._bridgeToObjectiveC()();
    v707 = String._bridgeToObjectiveC()();
    v708 = [v705 localizedStringForKey:v706 value:v707 table:0];

    v709 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v711 = v710;

    v712._countAndFlagsBits = v709;
    v712._object = v711;
    v1093.value.super.isa = 0;
    v1093.is_nil = 0;
    v852 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v712, 0, v1093, 0, 0xFFFFFFFFFFFFFFFFLL, v704, childreno).super.super.isa;
    v713 = [v1043 mainBundle];
    v714 = String._bridgeToObjectiveC()();
    v715 = String._bridgeToObjectiveC()();
    v716 = [v713 localizedStringForKey:v714 value:v715 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v717 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v718 = [v1043 mainBundle];
    v719 = String._bridgeToObjectiveC()();
    v720 = String._bridgeToObjectiveC()();
    v721 = [v718 localizedStringForKey:v719 value:v720 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v722 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v723 = [v1043 mainBundle];
    v724 = String._bridgeToObjectiveC()();
    v725 = String._bridgeToObjectiveC()();
    v726 = [v723 localizedStringForKey:v724 value:v725 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v727 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v728 = swift_allocObject();
    *(v728 + 16) = xmmword_10146E8A0;
    *(v728 + 32) = v717;
    *(v728 + 40) = v722;
    *(v728 + 48) = v727;
    v1046 = v717;
    v855 = v722;
    v854 = v727;
    v729._countAndFlagsBits = 0;
    v729._object = 0xE000000000000000;
    v1094.value.super.isa = 0;
    v1094.is_nil = 0;
    v730 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v729, 0, v1094, 1, 0xFFFFFFFFFFFFFFFFLL, v728, 0).super.super.isa;
    v731 = [v1043 mainBundle];
    v732 = String._bridgeToObjectiveC()();
    v733 = String._bridgeToObjectiveC()();
    v734 = [v731 localizedStringForKey:v732 value:v733 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v735 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v736 = [v1043 mainBundle];
    v737 = String._bridgeToObjectiveC()();
    v738 = String._bridgeToObjectiveC()();
    v739 = [v736 localizedStringForKey:v737 value:v738 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v740 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v741 = swift_allocObject();
    *(v741 + 16) = xmmword_10146CE00;
    *(v741 + 32) = v735;
    *(v741 + 40) = v740;
    v851 = v735;
    v850 = v740;
    v742._countAndFlagsBits = 0;
    v742._object = 0xE000000000000000;
    v1095.value.super.isa = 0;
    v1095.is_nil = 0;
    v743 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v742, 0, v1095, 1, 0xFFFFFFFFFFFFFFFFLL, v741, 0).super.super.isa;
    v744 = swift_allocObject();
    *(v744 + 16) = xmmword_10146CE00;
    *(v744 + 32) = v730;
    *(v744 + 40) = v743;
    v849 = v730;
    v848 = v743;
    v745 = [v1043 mainBundle];
    v746 = String._bridgeToObjectiveC()();
    v747 = String._bridgeToObjectiveC()();
    v748 = [v745 localizedStringForKey:v746 value:v747 table:0];

    v749 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v751 = v750;

    v752._countAndFlagsBits = v749;
    v752._object = v751;
    v1096.value.super.isa = 0;
    v1096.is_nil = 0;
    v844 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v752, 0, v1096, 0, 0xFFFFFFFFFFFFFFFFLL, v744, childrenp).super.super.isa;
    v753 = [v1043 mainBundle];
    v754 = String._bridgeToObjectiveC()();
    v755 = String._bridgeToObjectiveC()();
    v756 = [v753 localizedStringForKey:v754 value:v755 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v757 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v758 = swift_allocObject();
    *(v758 + 16) = xmmword_101465920;
    *(v758 + 32) = v757;
    v1049 = v757;
    v759._countAndFlagsBits = 0;
    v759._object = 0xE000000000000000;
    v1097.value.super.isa = 0;
    v1097.is_nil = 0;
    v760 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v759, 0, v1097, 1, 0xFFFFFFFFFFFFFFFFLL, v758, 0).super.super.isa;
    v761 = [v1043 mainBundle];
    v762 = String._bridgeToObjectiveC()();
    v763 = String._bridgeToObjectiveC()();
    v764 = [v761 localizedStringForKey:v762 value:v763 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v765 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v766 = [v1043 mainBundle];
    v767 = String._bridgeToObjectiveC()();
    v768 = String._bridgeToObjectiveC()();
    v769 = [v766 localizedStringForKey:v767 value:v768 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v770 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v771 = swift_allocObject();
    *(v771 + 16) = xmmword_10146CE00;
    *(v771 + 32) = v765;
    *(v771 + 40) = v770;
    v847 = v765;
    v846 = v770;
    v772._countAndFlagsBits = 0;
    v772._object = 0xE000000000000000;
    v1098.value.super.isa = 0;
    v1098.is_nil = 0;
    v773 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v772, 0, v1098, 1, 0xFFFFFFFFFFFFFFFFLL, v771, 0).super.super.isa;
    v774 = swift_allocObject();
    *(v774 + 16) = xmmword_10146CE00;
    *(v774 + 32) = v760;
    *(v774 + 40) = v773;
    v843 = v760;
    v842 = v773;
    v775 = [v1043 mainBundle];
    v776 = String._bridgeToObjectiveC()();
    v777 = String._bridgeToObjectiveC()();
    v778 = [v775 localizedStringForKey:v776 value:v777 table:0];

    v779 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v781 = v780;

    v782._countAndFlagsBits = v779;
    v782._object = v781;
    v1099.value.super.isa = 0;
    v1099.is_nil = 0;
    v783 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v782, 0, v1099, 0, 0xFFFFFFFFFFFFFFFFLL, v774, childrenq).super.super.isa;
    v784 = swift_allocObject();
    *(v784 + 16) = xmmword_10146CE00;
    *(v784 + 32) = v879;
    *(v784 + 40) = v875;
    v841 = v879;
    v880 = v875;
    v785._countAndFlagsBits = 0;
    v785._object = 0xE000000000000000;
    v1100.value.super.isa = 0;
    v1100.is_nil = 0;
    v786 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v785, 0, v1100, 1, 0xFFFFFFFFFFFFFFFFLL, v784, childrenr).super.super.isa;
    v787 = swift_allocObject();
    *(v787 + 16) = xmmword_10146CE00;
    *(v787 + 32) = v870;
    *(v787 + 40) = v868;
    v876 = v870;
    v871 = v868;
    v788._countAndFlagsBits = 0;
    v788._object = 0xE000000000000000;
    v1101.value.super.isa = 0;
    v1101.is_nil = 0;
    v789 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v788, 0, v1101, 1, 0xFFFFFFFFFFFFFFFFLL, v787, childrens).super.super.isa;
    v790 = swift_allocObject();
    *(v790 + 16) = xmmword_10146CE00;
    *(v790 + 32) = v866;
    *(v790 + 40) = v864;
    v869 = v866;
    v867 = v864;
    v791._countAndFlagsBits = 0;
    v791._object = 0xE000000000000000;
    v1102.value.super.isa = 0;
    v1102.is_nil = 0;
    v792 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v791, 0, v1102, 1, 0xFFFFFFFFFFFFFFFFLL, v790, childrent).super.super.isa;
    v793 = swift_allocObject();
    *(v793 + 16) = xmmword_10146CE00;
    *(v793 + 32) = v861;
    *(v793 + 40) = v852;
    v865 = v861;
    v862 = v852;
    v794._countAndFlagsBits = 0;
    v794._object = 0xE000000000000000;
    v1103.value.super.isa = 0;
    v1103.is_nil = 0;
    v795 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v794, 0, v1103, 1, 0xFFFFFFFFFFFFFFFFLL, v793, childrenu).super.super.isa;
    v796 = swift_allocObject();
    *(v796 + 16) = xmmword_10146CE00;
    *(v796 + 32) = v844;
    *(v796 + 40) = v783;
    v853 = v844;
    v845 = v783;
    v797._countAndFlagsBits = 0;
    v797._object = 0xE000000000000000;
    v1104.value.super.isa = 0;
    v1104.is_nil = 0;
    v798 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v797, 0, v1104, 1, 0xFFFFFFFFFFFFFFFFLL, v796, childrenv).super.super.isa;
    v799 = swift_allocObject();
    *(v799 + 16) = xmmword_10147AD40;
    *(v799 + 32) = v786;
    *(v799 + 40) = v789;
    *(v799 + 48) = v792;
    *(v799 + 56) = v795;
    *(v799 + 64) = v798;
    v884 = v786;
    v840 = v789;
    v839 = v792;
    v838 = v795;
    v800 = v798;
    v801._countAndFlagsBits = 0;
    v801._object = 0xE000000000000000;
    v1105.value.super.isa = 0;
    v1105.is_nil = 0;
    v802 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v801, 0, v1105, 1, 0xFFFFFFFFFFFFFFFFLL, v799, childrenw).super.super.isa;
    [v1042 insertChildMenu:v802 atStartOfMenuForIdentifier:UIMenuView];
    v803 = [v1043 mainBundle];
    v804 = String._bridgeToObjectiveC()();
    v805 = String._bridgeToObjectiveC()();
    v806 = [v803 localizedStringForKey:v804 value:v805 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1050 = 0u;
    v1051 = 0u;
    v807 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    v1050 = 0u;
    v1051 = 0u;
    v808 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    [v808 setWantsPriorityOverSystemBehavior:{1, _swiftEmptyArrayStorage}];
    v809 = swift_allocObject();
    *(v809 + 16) = xmmword_10146CE00;
    *(v809 + 32) = v807;
    *(v809 + 40) = v808;
    v810 = v807;
    v811 = v808;
    v812._countAndFlagsBits = 0;
    v812._object = 0xE000000000000000;
    v1106.value.super.isa = 0;
    v1106.is_nil = 0;
    v813 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v812, 0, v1106, 1, 0xFFFFFFFFFFFFFFFFLL, v809, 0).super.super.isa;
    [v1042 insertChildMenu:v813 atStartOfMenuForIdentifier:UIMenuHelp];
  }
}

id sub_100787E84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100787FE4()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100006370(0, &qword_1019FF3B0);
  sub_10000FDE0(&unk_1019FF3B8, &qword_1019FF3B0);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);
  }

  v10 = (v4 + 64) >> 6;
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), (v13 = v16) == 0))
    {
LABEL_22:
      sub_100035F90();
      return;
    }

LABEL_18:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 delegate];

      if (v15)
      {
        type metadata accessor for CRLiOSSceneDelegate();
        if (swift_dynamicCastClass())
        {
          goto LABEL_22;
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  v11 = v5;
  v12 = v6;
  if (v6)
  {
LABEL_14:
    v6 = (v12 - 1) & v12;
    v13 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v5);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_10078829C(uint64_t a1, uint64_t a2)
{
  v4 = _s4NodeVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100788300()
{
  result = qword_1019FF3C8;
  if (!qword_1019FF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF3C8);
  }

  return result;
}

void sub_100788354()
{
  v1 = v0;
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlDefault;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "applicationWillTerminate", 24, 2, _swiftEmptyArrayStorage);
  sub_10077E434();
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.sceneManagement;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "Calling updateAppShortcutParameters()", 37, 2, _swiftEmptyArrayStorage);
  sub_100788300();
  static AppShortcutsProvider.updateAppShortcutParameters()();
  v6 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibrary;
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibrary);
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  sub_1010BCA34();

  v9 = *(v1 + v6);
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  sub_1010AE648();
}

id sub_1007884D0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_1007884F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019FF410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100788570@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007888E4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10078864C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100788BB4();
  v7 = sub_100788B0C();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1007886BC()
{
  sub_100788BB4();
  sub_100788B60();
  return CRValue<>.init(from:)();
}

uint64_t sub_100788728()
{
  sub_100788BB4();
  sub_100788B60();
  return CRValue<>.encode(to:)();
}

uint64_t sub_100788784(uint64_t a1)
{
  v2 = sub_100788BB4();
  v3 = sub_100788B60();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for Int);
}

uint64_t sub_10078883C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100788B60();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

uint64_t sub_100788890(unint64_t a1)
{
  if (a1 < 0xB)
  {
    return byte_10147AF92[a1];
  }

  type metadata accessor for CRLFreehandDrawingToolType(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unint64_t sub_1007888E4(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLFreehandDrawingToolTypeData(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLFreehandDrawingToolTypeData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100788A5C()
{
  result = qword_1019FF420;
  if (!qword_1019FF420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF420);
  }

  return result;
}

unint64_t sub_100788AB4()
{
  result = qword_1019FF428;
  if (!qword_1019FF428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF428);
  }

  return result;
}

unint64_t sub_100788B0C()
{
  result = qword_1019FF430;
  if (!qword_1019FF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF430);
  }

  return result;
}

unint64_t sub_100788B60()
{
  result = qword_1019FF438;
  if (!qword_1019FF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF438);
  }

  return result;
}

unint64_t sub_100788BB4()
{
  result = qword_1019FF440;
  if (!qword_1019FF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF440);
  }

  return result;
}

void *sub_100788C18(uint64_t a1, double a2)
{
  v3 = sub_100788EF8(a1);
  v4 = v3[2];
  if (v4)
  {
    v22[1] = v3;
    v5 = (v3 + 4);
    v6 = _swiftEmptyArrayStorage;
    do
    {
      sub_1007894E0(v5, v29);
      v7 = v31;
      v23 = v30;
      v8 = v30;
      sub_100020E58(v29, v30);
      v9 = *(v7 + 16);
      v25 = v23;
      v26 = v7;
      sub_10002C58C(v24);
      v9(v8, v7, a2);
      v23 = v25;
      v10 = v25;
      v11 = sub_100020E58(v24, v25);
      v28 = v23;
      v12 = sub_10002C58C(&v27);
      (*(*(v10 - 8) + 16))(v12, v11, v10);
      sub_100005070(v24);
      sub_100005070(v29);
      if (v28)
      {
        sub_100050F74(&v27, v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v6 = sub_100B364B4(0, v6[2] + 1, 1, v6);
          v32 = v6;
        }

        v15 = v6[2];
        v14 = v6[3];
        if (v15 >= v14 >> 1)
        {
          v6 = sub_100B364B4((v14 > 1), v15 + 1, 1, v6);
          v32 = v6;
        }

        v16 = v25;
        v17 = sub_10002A948(v24, v25);
        __chkstk_darwin(v17);
        v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19);
        sub_100725200(v15, v19, &v32, v16, *(&v16 + 1));
        sub_100005070(v24);
      }

      else
      {
        sub_10000CAAC(&v27, &unk_101A09F70);
      }

      v5 += 48;
      --v4;
    }

    while (v4);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v6;
}

void *sub_100788EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v14 = v1;
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = a1 + 32;
    do
    {
      sub_10000630C(v3, v19);
      sub_100050F74(v19, v18);
      sub_1005B981C(&qword_1019F7320);
      sub_1005B981C(&qword_1019FF448);
      if (swift_dynamicCast())
      {
        if (*(&v16 + 1))
        {
          sub_1007896EC(&v15, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_100B364D8(0, v2[2] + 1, 1, v2);
          }

          v5 = v2[2];
          v4 = v2[3];
          if (v5 >= v4 >> 1)
          {
            v2 = sub_100B364D8((v4 > 1), v5 + 1, 1, v2);
          }

          v2[2] = v5 + 1;
          sub_1007896EC(v18, &v2[6 * v5 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
        v15 = 0u;
      }

      sub_10000CAAC(&v15, &qword_1019FF450);
LABEL_5:
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  v6 = v2[2];
  v7 = v14 - v6;
  if (v14 != v6)
  {
    if (qword_1019F2208 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlLayerAnimation;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = v7;
    v10 = sub_1000053B0();
    v11 = 0xEE00657265772073;
    if (v7 == 1)
    {
      v11 = 0xEC00000073617720;
    }

    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v10;
    *(inited + 72) = 0x72656469766F7270;
    *(inited + 80) = v11;
    v12 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v12, "timingModifiableChildProviders was called, but not all childProviders are timing-modifiable. Non-timing-modifiable providers should only be added after the provider has been fully processed(). %@ non-timing-modifiable %@ dropped on the floor.", 242, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
  }

  return v2;
}

void *sub_1007891D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = _swiftEmptyArrayStorage;
  for (i = (a1 + 32); ; i += 5)
  {
    v5 = i[3];
    v6 = i[4];
    sub_100020E58(i, v5);
    result = (*(v6 + 40))(v5, v6);
    v7 = result[2];
    v8 = v2[2];
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    v10 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v9 <= v2[3] >> 1)
    {
      if (v10[2])
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      result = sub_100B36A2C(result, v11, 1, v2);
      v2 = result;
      if (v10[2])
      {
LABEL_14:
        if ((v2[3] >> 1) - v2[2] < v7)
        {
          goto LABEL_22;
        }

        sub_1005B981C(&qword_1019F5870);
        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = v2[2];
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_23;
          }

          v2[2] = v14;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_21;
    }

LABEL_4:
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10078935C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    result = sub_10000630C(result + 32, &v13);
    if (v1 == 1)
    {
LABEL_3:
      sub_100050F74(&v13, &v16);
      v3 = v17;
      v4 = v18;
      sub_100020E58(&v16, v17);
      (*(*(v4 + 8) + 40))(v3);
      return sub_100005070(&v16);
    }

    else
    {
      v5 = v2 + 72;
      v6 = 1;
      while (1)
      {
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        sub_10000630C(v5, &v16);
        v9 = v14;
        v8 = v15;
        sub_100020E58(&v13, v14);
        v10 = (*(*(v8 + 8) + 40))(v9);
        v12 = v17;
        v11 = v18;
        sub_100020E58(&v16, v17);
        if (v10 >= (*(*(v11 + 8) + 40))(v12))
        {
          result = sub_100005070(&v16);
        }

        else
        {
          sub_100005070(&v13);
          result = sub_100050F74(&v16, &v13);
        }

        ++v6;
        v5 += 40;
        if (v7 == v1)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1007894E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100789544(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = *(v7 + 16);
  v13(&v19 - v11);
  v14 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_100B364B4(0, v14[2] + 1, 1, v14);
    *a2 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_100B364B4((v16 > 1), v17 + 1, 1, v14);
    *a2 = v14;
  }

  (v13)(v10, v12, a3);
  sub_100725200(v17, v10, a2, a3, a4);
  *a2 = v14;
  return (*(v7 + 8))(v12, a3);
}

_OWORD *sub_1007896EC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

double sub_100789704(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_100789900(v4, &v21);
      v16[0] = v21;
      v16[1] = v22;
      v17 = v23;
      if (*(&v22 + 1))
      {
        sub_100050F74(v16, v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = sub_100B364B4(0, v5[2] + 1, 1, v5);
          v24 = v5;
        }

        v8 = v5[2];
        v7 = v5[3];
        if (v8 >= v7 >> 1)
        {
          v5 = sub_100B364B4((v7 > 1), v8 + 1, 1, v5);
          v24 = v5;
        }

        v9 = v19;
        v10 = v20;
        v11 = sub_10002A948(v18, v19);
        __chkstk_darwin(v11);
        v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 16))(v13);
        sub_100725200(v8, v13, &v24, v9, v10);
        sub_100005070(v18);
      }

      else
      {
        sub_10000CAAC(v16, &unk_101A09F70);
      }

      v4 += 40;
      --v3;
    }

    while (v3);
  }

  return a2;
}

uint64_t sub_100789900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A09F70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100789A60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommand();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100789AB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100789B00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100789B5C()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  Hasher._combine(_:)(*(v0 + 40));
  return Hasher._finalize()();
}

Swift::Int sub_100789BD8()
{
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  Hasher._combine(_:)(*(v0 + 40));
  return Hasher._finalize()();
}

unint64_t sub_100789C68()
{
  result = qword_1019FF490;
  if (!qword_1019FF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF490);
  }

  return result;
}

Swift::Int sub_100789CBC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100789D30()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100789D84()
{
  result = qword_1019FF498;
  if (!qword_1019FF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF498);
  }

  return result;
}

unint64_t sub_100789DDC()
{
  result = qword_1019FF4A0;
  if (!qword_1019FF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF4A0);
  }

  return result;
}

unint64_t sub_100789E34()
{
  result = qword_1019FF4A8;
  if (!qword_1019FF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF4A8);
  }

  return result;
}

unint64_t sub_100789E8C()
{
  result = qword_1019FF4B0;
  if (!qword_1019FF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF4B0);
  }

  return result;
}

uint64_t sub_10078A058(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC8Freeform34CRLCommandReorderContainerChildren_actionString];
  v9 = [objc_opt_self() mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *v8 = v14;
  v8[1] = v16;
  if (a2 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17 == IndexSet.count.getter())
  {
    if (v17 > 0)
    {
      *&v4[OBJC_IVAR____TtC8Freeform34CRLCommandReorderContainerChildren_children] = a2;
      *&v4[OBJC_IVAR____TtC8Freeform34CRLCommandReorderContainerChildren_container] = a1;
      v18 = OBJC_IVAR____TtC8Freeform34CRLCommandReorderContainerChildren_indices;
      v19 = type metadata accessor for IndexSet();
      v20 = *(v19 - 8);
      (*(v20 + 16))(&v4[v18], a3, v19);
      v68.receiver = v4;
      v68.super_class = type metadata accessor for CRLCommandReorderContainerChildren();
      v21 = objc_msgSendSuper2(&v68, "init");
      (*(v20 + 8))(a3, v19);
      return v21;
    }

    v46 = objc_opt_self();
    v47 = [v46 _atomicIncrementAssertCount];
    v69[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v69);
    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    v50 = [v49 lastPathComponent];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v54 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v47;
    v56 = sub_1005CF000();
    *(inited + 96) = v56;
    v57 = sub_1005CF04C();
    *(inited + 104) = v57;
    *(inited + 72) = v48;
    *(inited + 136) = &type metadata for String;
    v58 = sub_1000053B0();
    *(inited + 112) = v51;
    *(inited + 120) = v53;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v58;
    *(inited + 152) = 19;
    v59 = v69[0];
    *(inited + 216) = v56;
    *(inited + 224) = v57;
    *(inited + 192) = v59;
    v60 = v48;
    v61 = v59;
    v62 = static os_log_type_t.error.getter();
    sub_100005404(v54, &_mh_execute_header, v62, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v63 = static os_log_type_t.error.getter();
    sub_100005404(v54, &_mh_execute_header, v63, "Should not enqueue a command with nothing to do", 47, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Should not enqueue a command with nothing to do");
    type metadata accessor for __VaListBuilder();
    v64 = swift_allocObject();
    v64[2] = 8;
    v64[3] = 0;
    v64[4] = 0;
    v64[5] = 0;
    v65 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    [v46 handleFailureInFunction:v43 file:v44 lineNumber:19 isFatal:1 format:v45 args:v65];
  }

  else
  {
    v23 = objc_opt_self();
    v24 = [v23 _atomicIncrementAssertCount];
    v69[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v69);
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    v27 = [v26 lastPathComponent];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_10146CA70;
    *(v32 + 56) = &type metadata for Int32;
    *(v32 + 64) = &protocol witness table for Int32;
    *(v32 + 32) = v24;
    v33 = sub_1005CF000();
    *(v32 + 96) = v33;
    v34 = sub_1005CF04C();
    *(v32 + 104) = v34;
    *(v32 + 72) = v25;
    *(v32 + 136) = &type metadata for String;
    v35 = sub_1000053B0();
    *(v32 + 112) = v28;
    *(v32 + 120) = v30;
    *(v32 + 176) = &type metadata for UInt;
    *(v32 + 184) = &protocol witness table for UInt;
    *(v32 + 144) = v35;
    *(v32 + 152) = 18;
    v36 = v69[0];
    *(v32 + 216) = v33;
    *(v32 + 224) = v34;
    *(v32 + 192) = v36;
    v37 = v25;
    v38 = v36;
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v32);

    v40 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v40, "Number of children and number of indices must match!", 52, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Number of children and number of indices must match!");
    type metadata accessor for __VaListBuilder();
    v41 = swift_allocObject();
    v41[2] = 8;
    v41[3] = 0;
    v41[4] = 0;
    v41[5] = 0;
    v42 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    [v23 handleFailureInFunction:v43 file:v44 lineNumber:18 isFatal:1 format:v45 args:v42];
  }

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v66, v67);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10078A990(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1005B981C(&qword_1019FF500);
  __chkstk_darwin(v7);
  v9 = &v54 - v8;
  v10 = *&v2[OBJC_IVAR____TtC8Freeform34CRLCommandReorderContainerChildren_children];
  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v10 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v12 = i;
      v13 = OBJC_IVAR____TtC8Freeform34CRLCommandReorderContainerChildren_indices;
      v14 = IndexSet.first.getter();
      if (v15)
      {
        break;
      }

      v55 = v14;
      v56 = v7;
      v57 = v4;
      v16 = *&v5[OBJC_IVAR____TtC8Freeform34CRLCommandReorderContainerChildren_container];
      v17 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
      v18 = *(v16 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
      if (!v18)
      {
        sub_10096C7D4();
        v18 = *(v16 + v17);
      }

      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }

      v54 = v12;
      v20 = sub_10100F554(v12, v19);
      v22 = v21;

      if (v22)
      {
        goto LABEL_22;
      }

      v4 = v55 < v20;
      *v9 = v10;
      v23 = *(v56 + 52);
      v24 = type metadata accessor for IndexSet();
      (*(*(v24 - 8) + 16))(&v9[v23], &v5[v13], v24);

      sub_100AC6300(v9);
      v58 = v25;
      v26 = v57;
      sub_10078B328(&v58, v4);
      if (v26)
      {
        goto LABEL_25;
      }

      sub_10078BD58(v9);
      v9 = v58;
      v10 = v58[2];
      if (!v10)
      {
LABEL_17:
      }

      v7 = 0;
      v27 = v58 + 5;
      while (v7 < *(v9 + 2))
      {
        v4 = *v27;
        v5 = *(v27 - 1);
        sub_10097049C(v5, v4, a2);

        ++v7;
        v27 += 2;
        if (v10 == v7)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_19:
      ;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_22:
  v29 = objc_opt_self();
  v30 = [v29 _atomicIncrementAssertCount];
  v58 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v58);
  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  v33 = [v32 lastPathComponent];

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v37 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v30;
  v39 = sub_1005CF000();
  *(inited + 96) = v39;
  v40 = sub_1005CF04C();
  *(inited + 104) = v40;
  *(inited + 72) = v31;
  *(inited + 136) = &type metadata for String;
  v41 = sub_1000053B0();
  *(inited + 112) = v34;
  *(inited + 120) = v36;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v41;
  *(inited + 152) = 30;
  v42 = v58;
  *(inited + 216) = v39;
  *(inited + 224) = v40;
  *(inited + 192) = v42;
  v43 = v31;
  v44 = v42;
  v45 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v46 = static os_log_type_t.error.getter();
  sub_100005404(v37, &_mh_execute_header, v46, "trying to reorder a child that we don't know about!", 51, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "trying to reorder a child that we don't know about!");
  type metadata accessor for __VaListBuilder();
  v47 = swift_allocObject();
  v47[2] = 8;
  v47[3] = 0;
  v47[4] = 0;
  v47[5] = 0;
  v48 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v49 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v50 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v51 = String._bridgeToObjectiveC()();

  [v29 handleFailureInFunction:v49 file:v50 lineNumber:30 isFatal:1 format:v51 args:v48];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v52, v53);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_25:

  __break(1u);
  return result;
}

uint64_t sub_10078B06C()
{

  v1 = OBJC_IVAR____TtC8Freeform34CRLCommandReorderContainerChildren_indices;
  v2 = type metadata accessor for IndexSet();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_10078B108()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandReorderContainerChildren();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandReorderContainerChildren()
{
  result = qword_1019FF4F0;
  if (!qword_1019FF4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10078B234()
{
  result = type metadata accessor for IndexSet();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10078B2E8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform34CRLCommandReorderContainerChildren_actionString);

  return v1;
}

Swift::Int sub_10078B328(void **a1, char a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10113E10C(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;
  result = sub_10078B39C(v7, a2 & 1);
  *a1 = v4;
  return result;
}

Swift::Int sub_10078B39C(uint64_t *a1, char a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1005B981C(&qword_1019FF508);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v7[2] = v4 / 2;
      }

      v9[0] = v7 + 4;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_10078B540(v9, v10, a1, v6, a2 & 1);
      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_10078B4B0(0, v4, 1, a1, a2 & 1);
  }

  return result;
}

uint64_t sub_10078B4B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 + 16 * a3;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 16 * a3 + 8);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *(v10 - 1);
      v12 = v11 < v8;
      v13 = v8 < v11;
      if ((a5 & 1) == 0)
      {
        v13 = v12;
      }

      if (!v13)
      {
LABEL_4:
        ++a3;
        v6 += 16;
        --v7;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v10;
      *v10 = *(v10 - 1);
      *(v10 - 1) = v8;
      *(v10 - 2) = v14;
      v10 -= 2;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10078B540(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v98 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_94:
    v98 = *v98;
    if (!v98)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_10113DE48(v10);
      v10 = result;
    }

    v90 = v10 + 16;
    v91 = *(v10 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v10[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_10078BB10((*a3 + 16 * *v92), (*a3 + 16 * *v94), (*a3 + 16 * v95), v98, a5 & 1);
        if (v5)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_118;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_119;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_120;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*a3 + 16 * v9 + 8);
      v13 = 16 * v11;
      v14 = *a3 + 16 * v11;
      v15 = *(v14 + 8);
      v16 = v15 < v12;
      v17 = v12 < v15;
      if ((a5 & 1) == 0)
      {
        v17 = v16;
      }

      v18 = v11 + 2;
      v19 = (v14 + 40);
      while (v7 != v18)
      {
        v21 = *v19;
        v19 += 2;
        v20 = v21;
        v22 = v21 >= v12;
        v23 = v12 >= v21;
        if ((a5 & 1) == 0)
        {
          v22 = v23;
        }

        ++v18;
        v12 = v20;
        if (v17 == v22)
        {
          v9 = v18 - 1;
          if (!v17)
          {
            goto LABEL_24;
          }

          goto LABEL_15;
        }
      }

      v9 = v7;
      if (!v17)
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v9 < v11)
      {
        goto LABEL_123;
      }

      if (v11 < v9)
      {
        v24 = 0;
        v25 = 16 * v9;
        v26 = v11;
        do
        {
          if (v26 != v9 + v24 - 1)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_129;
            }

            v27 = (v31 + v13);
            v28 = v31 + v25;
            v29 = *v27;
            v30 = v27[1];
            *v27 = *(v28 - 16);
            *(v28 - 16) = v29;
            *(v28 - 8) = v30;
          }

          ++v26;
          --v24;
          v25 -= 16;
          v13 += 16;
        }

        while (v26 < v9 + v24);
        v7 = a3[1];
      }
    }

LABEL_24:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_122;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_124;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v9 < v11)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100B355CC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v44 = *(v10 + 2);
    v43 = *(v10 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_100B355CC((v43 > 1), v44 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v45;
    v46 = &v10[16 * v44];
    *(v46 + 4) = v11;
    *(v46 + 5) = v9;
    v47 = *v98;
    if (!*v98)
    {
      goto LABEL_131;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v10 + 4);
          v50 = *(v10 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_63:
          if (v52)
          {
            goto LABEL_109;
          }

          v65 = &v10[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_112;
          }

          v71 = &v10[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_116;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v75 = &v10[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_77:
        if (v70)
        {
          goto LABEL_111;
        }

        v78 = &v10[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_114;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_84:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v87 = *&v10[16 * v86 + 32];
        v88 = *&v10[16 * v48 + 40];
        sub_10078BB10((*a3 + 16 * v87), (*a3 + 16 * *&v10[16 * v48 + 32]), (*a3 + 16 * v88), v47, a5 & 1);
        if (v5)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10113DE48(v10);
        }

        if (v86 >= *(v10 + 2))
        {
          goto LABEL_106;
        }

        v89 = &v10[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_10113DDBC(v48);
        v45 = *(v10 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v10[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_107;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_108;
      }

      v60 = &v10[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_110;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_113;
      }

      if (v64 >= v56)
      {
        v82 = &v10[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_117;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_94;
    }
  }

  v32 = *a3;
  v33 = *a3 + 16 * v9;
  v34 = v11 - v9;
LABEL_34:
  v35 = *(v32 + 16 * v9 + 8);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *(v37 - 1);
    v39 = v38 < v35;
    v40 = v35 < v38;
    if ((a5 & 1) == 0)
    {
      v40 = v39;
    }

    if (!v40)
    {
LABEL_33:
      ++v9;
      v33 += 16;
      --v34;
      if (v9 != v7)
      {
        goto LABEL_34;
      }

      v9 = v7;
      goto LABEL_43;
    }

    if (!v32)
    {
      break;
    }

    v41 = *v37;
    *v37 = *(v37 - 1);
    *(v37 - 1) = v35;
    *(v37 - 2) = v41;
    v37 -= 2;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10078BB10(char *__dst, char *__src, char *a3, char *a4, char a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 < v14 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v12] <= a4)
    {
      memmove(a4, __dst, 16 * v12);
    }

    v16 = &v6[16 * v12];
    if (v10 < 16)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_39;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v19 = *(v8 + 1);
      v20 = *(v6 + 1);
      v21 = v20 < v19;
      v22 = v19 < v20;
      if ((a5 & 1) == 0)
      {
        v22 = v21;
      }

      if (v22)
      {
        break;
      }

      v17 = v6;
      v18 = v9 == v6;
      v6 += 16;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 16;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }

    v17 = v8;
    v18 = v9 == v8;
    v8 += 16;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v15] <= a4)
  {
    memmove(a4, __src, 16 * v15);
  }

  v16 = &v6[16 * v15];
  if (v13 >= 16 && v8 > v9)
  {
LABEL_26:
    v7 -= 16;
    do
    {
      v23 = v7 + 16;
      v24 = *(v16 - 1);
      v25 = *(v8 - 1);
      v26 = v25 < v24;
      v27 = v24 < v25;
      if ((a5 & 1) == 0)
      {
        v27 = v26;
      }

      if (v27)
      {
        v29 = v8 - 16;
        if (v23 != v8)
        {
          *v7 = *v29;
        }

        if (v16 <= v6 || (v8 -= 16, v29 <= v9))
        {
          v8 = v29;
          goto LABEL_39;
        }

        goto LABEL_26;
      }

      v28 = v16 - 16;
      if (v23 != v16)
      {
        *v7 = *v28;
      }

      v7 -= 16;
      v16 -= 16;
    }

    while (v28 > v6);
    v16 = v28;
  }

LABEL_39:
  v30 = v16 - v6 + (v16 - v6 < 0 ? 0xFuLL : 0);
  if (v8 != v6 || v8 >= &v6[v30 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v8, v6, 16 * (v30 >> 4));
  }

  return 1;
}

uint64_t sub_10078BD58(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FF500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10078BDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(v3 + 64);
  if (!*(v5 + 16) || (v6 = sub_1007C7EC0(a3), (v7 & 1) == 0))
  {
    v10 = 0;
    v11 = 1;
    sub_10000CAAC(&v10, &qword_1019FBE68);
    swift_endAccess();
LABEL_6:

    Strong = Tracker.chain(name:identifier:)();

    swift_weakInit();
    v11 = 0;
    swift_beginAccess();
    sub_100BC3528(&v10, a3);
    swift_endAccess();
    return Strong;
  }

  sub_10078C9CC(*(v5 + 56) + 8 * v6, &v10);
  v11 = 0;
  Strong = swift_weakLoadStrong();
  sub_10000CAAC(&v10, &qword_1019FBE68);
  swift_endAccess();
  if (!Strong)
  {
    goto LABEL_6;
  }

  return Strong;
}

void sub_10078BF10(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) == 1)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a5;
    *(v12 + 24) = a6;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2 & 1;
    *(v12 + 48) = a3;
    *(v12 + 56) = a4;

    sub_10002E7A8(a3);
    Tracker.whenSession(block:)();
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v13 = static OS_os_log.crlAppAnalytics;
    v14 = static os_log_type_t.default.getter();
    sub_100005404(v13, &_mh_execute_header, v14, "Skip submit session event for unselected user", 45, 2, _swiftEmptyArrayStorage);
  }
}

void sub_10078C0DC(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v7 = Strong;
    swift_beginAccess();
    if (*(v7 + 48))
    {
      sub_10000630C(v7 + 24, &v10);

      v8 = *(&v11 + 1);
      v9 = v12;
      sub_100020E58(&v10, *(&v11 + 1));
      (*(v9 + 16))(v8, v9);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (a2 == 1)
  {
    type metadata accessor for AppSessionStartEvent(0);
    sub_10078C6E0(&qword_1019FF640, type metadata accessor for AppSessionStartEvent);
    v10 = 0u;
    v11 = 0u;
    AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
    sub_10000CAAC(&v10, &unk_1019F4D00);
    type metadata accessor for AppSessionEndEvent(0);
    sub_10078C6E0(&qword_1019FF648, type metadata accessor for AppSessionEndEvent);
    AccessTracker.time<A>(_:submitAndRestartWithSession:)();
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    if (v2)
    {
      v3 = v2;
      swift_beginAccess();
      if (*(v3 + 48))
      {
        sub_10000630C(v3 + 24, &v10);

        v4 = *(&v11 + 1);
        v5 = v12;
        sub_100020E58(&v10, *(&v11 + 1));
        (*(v5 + 8))(v4, v5);
LABEL_9:
        sub_100005070(&v10);
        return;
      }

LABEL_10:
    }
  }
}

void sub_10078C37C(char a1)
{
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) == 1)
  {
    *(swift_allocObject() + 16) = a1;

    Tracker.whenSession(block:)();
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = static OS_os_log.crlAppAnalytics;
    v3 = static os_log_type_t.default.getter();
    sub_100005404(v2, &_mh_execute_header, v3, "Skip SessionEndData for unselected user", 39, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10078C500()
{
  sub_1005B981C(&qword_1019FE480);
  v0 = type metadata accessor for DataEventTrait();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10146C6B0;
  (*(v1 + 104))(v3 + v2, enum case for DataEventTrait.unique(_:), v0);
  sub_10078C730();
  AccessTracker.push<A>(data:traits:file:line:)();
}

uint64_t sub_10078C634()
{

  sub_10000CAAC(v0 + 24, &unk_1019FF410);

  return swift_deallocClassInstance();
}

uint64_t sub_10078C68C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10078C6E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10078C730()
{
  result = qword_1019FF650;
  if (!qword_1019FF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF650);
  }

  return result;
}

uint64_t sub_10078C784()
{
  memset(v1, 0, sizeof(v1));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_10000CAAC(v1, &unk_1019F4D00);
}

uint64_t sub_10078C7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[3] = a4;
  v14[4] = a5;
  v8 = sub_10002C58C(v14);
  (*(*(a4 - 8) + 16))(v8, a1, a4);
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) == 1)
  {
    sub_10000630C(v14, v13);
    v9 = swift_allocObject();
    sub_100050F74(v13, v9 + 16);
    *(v9 + 56) = a2;

    Tracker.whenSession(block:)();
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = static OS_os_log.crlAppAnalytics;
    v11 = static os_log_type_t.default.getter();
    sub_100005404(v10, &_mh_execute_header, v11, "Skip push session data for unselected user", 42, 2, _swiftEmptyArrayStorage);
  }

  return sub_100005070(v14);
}

uint64_t sub_10078C9CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FBEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10078CC4C()
{
  v1 = [v0 start];
  v2 = *&v1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v2 == NSNotFound.getter())
  {
    v3 = objc_allocWithZone(type metadata accessor for CRLTextPosition());

    return [v3 init:0 caretAffinity:0];
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v6 = *&v0[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity];
    v7 = type metadata accessor for CRLTextPosition();
    v8 = objc_allocWithZone(v7);
    *&v8[OBJC_IVAR____TtC8Freeform15CRLTextPosition_insertionEdge] = 0;
    *&v8[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location] = v5;
    *&v8[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity] = v6;
    v9.receiver = v8;
    v9.super_class = v7;
    return objc_msgSendSuper2(&v9, "init");
  }
}

uint64_t sub_10078CDF0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:a1 caretAffinity:0];
  result = NSNotFound.getter();
  if (result <= a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v6 = *&v3[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v7 = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
  }

  else if (v7 >= v6)
  {
    v8 = *&v3[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
    v9 = type metadata accessor for CRLTextRange();
    v10 = objc_allocWithZone(v9);
    v11 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
    *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
    *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
    v12 = &v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    *v12 = v6;
    *(v12 + 1) = v7;
    *&v10[v11] = v8;
    v14.receiver = v10;
    v14.super_class = v9;
    v13 = objc_msgSendSuper2(&v14, "init");

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v13;
  }

  __break(1u);
  return result;
}

id sub_10078CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  ObjectType = swift_getObjectType();
  v7 = swift_unknownObjectRetain();
  v8 = a4(v7, ObjCClassMetadata, ObjectType);
  swift_unknownObjectRelease();

  return v8;
}

id sub_10078D054(char *a1)
{
  v3 = sub_1005B981C(&qword_1019FC080);
  v49 = *(v3 - 8);
  __chkstk_darwin(v3);
  v48 = &v42 - v4;
  v5 = sub_1005B981C(&unk_1019FFD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v42 - v17;
  result = [v1 isEmpty];
  if (result)
  {
    v20 = [v1 start];
    v21 = *&v20[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
    v22 = [a1 textRangeForParagraphAtCharIndex:v21];

    v23 = v22 == v21;
    return (v23 & 1);
  }

  v43 = v3;
  v47 = v1;
  v24 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v44 = a1;
  v25 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v25)
  {
    goto LABEL_19;
  }

  v26 = &v47[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v27 = *&v47[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
  v45 = *&v47[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v46 = v27;
  (*(*v25 + 896))();
  sub_1005E0A78(&v11[*(v9 + 20)], v18);
  sub_1005E0ADC(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v6 + 16))(v8, v18, v5);
  sub_1005E0ADC(v18, type metadata accessor for CRLWPStorageCRDTData);
  v28 = CRAttributedString.count.getter();
  result = (*(v6 + 8))(v8, v5);
  if (v28 >= (v45 & ~(v45 >> 63)))
  {
    v29 = v45 & ~(v45 >> 63);
  }

  else
  {
    v29 = v28;
  }

  if ((v46 & ~(v46 >> 63)) < v29)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v30 = v44;
  v31 = *&v44[v24];
  if (!v31)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  (*(*v31 + 896))(result);
  sub_1005E0A78(&v11[*(v9 + 20)], v14);
  v32 = v30;
  sub_1005E0ADC(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  v33 = v48;
  CRAttributedString.subscript.getter();
  sub_1005E0ADC(v14, type metadata accessor for CRLWPStorageCRDTData);
  v34 = v43;
  v35 = CRAttributedString.Substring.attributedString.getter();
  (*(v49 + 8))(v33, v34);
  result = [v35 string];
  if (result)
  {
    v36 = result;

    v37 = [v47 start];
    v38 = *&v37[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    result = NSNotFound.getter();
    if (v38 == result)
    {
      v39 = 0;
      goto LABEL_13;
    }

    v40 = *(v26 + 1);
    v39 = v40 - *v26;
    if (!__OFSUB__(v40, *v26))
    {
LABEL_13:
      if (v39 == 1)
      {
        sub_1005CF000();
        v41 = NSString.init(stringLiteral:)();
        v23 = static NSObject.== infix(_:_:)();
      }

      else
      {

        v23 = 0;
      }

      return (v23 & 1);
    }

    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

char *sub_10078D5E4(void *a1)
{
  if ([v1 isEmpty] && (v3 = OBJC_IVAR____TtC8Freeform12CRLTextRange_range, *&v11[OBJC_IVAR____TtC8Freeform12CRLTextRange_range] >= 1))
  {
    v4 = [a1 previousCharacterIndex:?];
    result = v11;
    v6 = *&v11[v3];
    if (v6 < v4)
    {
      __break(1u);
    }

    else
    {
      v7 = type metadata accessor for CRLTextRange();
      v8 = objc_allocWithZone(v7);
      v9 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
      *&v8[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
      *&v8[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
      v10 = &v8[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      *v10 = v4;
      *(v10 + 1) = v6;
      *&v8[v9] = 0;
      v12.receiver = v8;
      v12.super_class = v7;
      return objc_msgSendSuper2(&v12, "init");
    }
  }

  else
  {

    return v11;
  }

  return result;
}

char *sub_10078D6DC(char *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v3 = *&result[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    v4 = type metadata accessor for CRLTextRange();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
    *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
    *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
    v7 = &v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    *v7 = v2;
    *(v7 + 1) = v3;
    *&v5[v6] = 0;
    v8.receiver = v5;
    v8.super_class = v4;
    return objc_msgSendSuper2(&v8, "init");
  }

  return result;
}

id sub_10078D7DC()
{
  v1 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:*(v0 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range) caretAffinity:0];
  NSNotFound.getter();
  v2 = *&v1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v3 = *&v1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v4 = type metadata accessor for CRLTextRange();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v7 = &v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v7 = v2;
  *(v7 + 1) = v2;
  *&v5[v6] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

id sub_10078D8B8()
{
  v1 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:*(v0 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8) caretAffinity:0];
  NSNotFound.getter();
  v2 = *&v1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v3 = *&v1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v4 = type metadata accessor for CRLTextRange();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v7 = &v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v7 = v2;
  *(v7 + 1) = v2;
  *&v5[v6] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

char *sub_10078D9DC(char *result)
{
  v2 = (v1 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  if (__OFADD__(*v2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  result = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:&result[*v2] caretAffinity:0];
  v3 = v2[1];
  v4 = __OFSUB__(v3, *v2);
  v5 = v3 - *v2;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  result = NSNotFound.getter();
  if (v5 >= result)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = *&v6[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
    goto LABEL_11;
  }

  if (v9 >= v8)
  {
    v10 = *&v6[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
    v11 = type metadata accessor for CRLTextRange();
    v12 = objc_allocWithZone(v11);
    v13 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
    *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
    *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
    v14 = &v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    *v14 = v8;
    *(v14 + 1) = v9;
    *&v12[v13] = v10;
    v16.receiver = v12;
    v16.super_class = v11;
    v15 = objc_msgSendSuper2(&v16, "init");

    return v15;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10078DB44(char *a1)
{
  v3 = [v1 start];
  v4 = *&v3[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  result = NSNotFound.getter();
  if (v4 != result && __OFSUB__(*&v1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8], *&v1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range]))
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = [a1 start];
  v7 = *&v6[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v7 == NSNotFound.getter())
  {
    result = 0x7FFFFFFFFFFFFFFFLL;
    v8 = 0;
    goto LABEL_6;
  }

  result = *&a1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v9 = *&a1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
  v8 = v9 - result;
  if (__OFSUB__(v9, result))
  {
LABEL_10:
    __break(1u);
    return result;
  }

LABEL_6:
  v13 = _NSRange.intersection(_:)(*&result);
  if (v13.is_nil)
  {
    return 0;
  }

  location = v13.value.location;
  length = v13.value.length;
  v12 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  return sub_10078CDF0(location, length);
}

BOOL sub_10078DC6C(uint64_t a1)
{
  sub_100601584(a1, v8);
  if (v9)
  {
    type metadata accessor for CRLTextRange();
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
      v2 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8);
      v5 = *&v7[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      v4 = *&v7[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

      if (v3 == v5)
      {
        return v2 == v4;
      }
    }
  }

  else
  {
    sub_1005E09AC(v8);
  }

  return 0;
}

uint64_t sub_10078DD28(char *a1)
{
  v3 = [v1 start];
  v4 = *&v3[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  result = NSNotFound.getter();
  if (v4 == result)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0;
  }

  else
  {
    v8 = &v1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v6 = *&v1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v9 = *(v8 + 1);
    v7 = v9 - v6;
    if (__OFSUB__(v9, v6))
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  v10 = [a1 start];
  v11 = *&v10[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  result = NSNotFound.getter();
  if (v11 != result)
  {
    v12 = *&a1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v14 = *&a1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v15 = __OFSUB__(v14, v12);
    v13 = v14 - v12;
    if (!v15)
    {
      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0;
LABEL_7:
  v16 = v6 > v12;
  v17 = v13 + v12;
  return !v16 && v7 + v6 >= v17;
}

uint64_t sub_10078DE78(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
  v3 = [v1 start];
  v4 = *&v3[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  result = NSNotFound.getter();
  if (v4 == result)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 0;
  }

  else
  {
    v6 = *&v1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v8 = *&v1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v9 = __OFSUB__(v8, v6);
    v7 = v8 - v6;
    if (v9)
    {
      __break(1u);
      return result;
    }
  }

  v10 = v6 > v2;
  v11 = v7 + v6;
  return !v10 && v11 >= v2;
}

uint64_t sub_10078DF80()
{
  v1 = v0;
  v21 = 0;
  v22 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v20.receiver = v0;
  v20.super_class = type metadata accessor for CRLTextRange();
  v2 = objc_msgSendSuper2(&v20, "description");
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v21 = v3;
  v22 = v5;
  v6._countAndFlagsBits = 0x65676E6172207B20;
  v6._object = 0xEA0000000000203ALL;
  String.append(_:)(v6);
  v7 = &v0[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 3943982;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  _print_unlocked<A, B>(_:_:)();
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x6874676E656C202CLL;
  v10._object = 0xEA0000000000203ALL;
  String.append(_:)(v10);
  v11 = [v0 start];
  v12 = *&v11[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  result = NSNotFound.getter();
  if (v12 != result && __OFSUB__(*(v7 + 1), *v7))
  {
    __break(1u);
  }

  else
  {
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15._countAndFlagsBits = 0x6666416C6F65202CLL;
    v15._object = 0xEF203A7974696E69;
    String.append(_:)(v15);
    if (*&v1[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] == 1)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (*&v1[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] == 1)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v18 = v17;
    String.append(_:)(*&v16);

    v19._countAndFlagsBits = 8200236;
    v19._object = 0xE300000000000000;
    String.append(_:)(v19);
    return v21;
  }

  return result;
}

BOOL sub_10078E320(uint64_t a1)
{
  sub_100601584(a1, v17);
  if (v18)
  {
    type metadata accessor for CRLTextSelectionRect();
    if (swift_dynamicCast())
    {
      [v1 rect];
      v3 = v2;
      v5 = v4;
      v7 = v6;
      v9 = v8;
      [v16 rect];
      v20.origin.x = v10;
      v20.origin.y = v11;
      v20.size.width = v12;
      v20.size.height = v13;
      v19.origin.x = v3;
      v19.origin.y = v5;
      v19.size.width = v7;
      v19.size.height = v9;
      v14 = CGRectEqualToRect(v19, v20);

      return v14;
    }
  }

  else
  {
    sub_1005E09AC(v17);
  }

  return 0;
}

uint64_t sub_10078E41C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1005E09AC(v10);
  return v8 & 1;
}

id sub_10078E4BC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_10078E52C()
{
  _StringGuts.grow(_:)(52);
  swift_getObjectType();
  v1._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x3A64616548202D20;
  v2._object = 0xE900000000000020;
  String.append(_:)(v2);
  v3 = [v0 containsStart];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._countAndFlagsBits = 0x203A6C696154202CLL;
  v8._object = 0xE800000000000000;
  String.append(_:)(v8);
  v9 = [v0 containsEnd];
  v10 = v9 == 0;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 540945696;
  v14._object = 0xE400000000000000;
  String.append(_:)(v14);
  type metadata accessor for CGRect(0);
  _print_unlocked<A, B>(_:_:)();
  v15._object = 0x8000000101566B80;
  v15._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v15);
  v16._countAndFlagsBits = CRLWPWritingDirection.description.getter(*&v0[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__writingDirection]);
  String.append(_:)(v16);

  return 0;
}

id sub_10078E744(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10078E7A0(void *a1)
{
  v1 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:objc_msgSend(a1 caretAffinity:{"length"), 0}];
  NSNotFound.getter();
  v2 = *&v1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v3 = *&v1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v4 = type metadata accessor for CRLTextRange();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v7 = &v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v7 = v2;
  *(v7 + 1) = v2;
  *&v5[v6] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

uint64_t sub_10078E87C(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:0 caretAffinity:0];
  v3 = [a1 length];
  result = NSNotFound.getter();
  if (v3 >= result)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = *&v2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v7 = &v5[v6];
  if (__OFADD__(v6, v5))
  {
    __break(1u);
  }

  else if (v7 >= v6)
  {
    v8 = *&v2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
    v9 = type metadata accessor for CRLTextRange();
    v10 = objc_allocWithZone(v9);
    v11 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
    *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
    *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
    v12 = &v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    *v12 = v6;
    *(v12 + 1) = v7;
    *&v10[v11] = v8;
    v14.receiver = v10;
    v14.super_class = v9;
    v13 = objc_msgSendSuper2(&v14, "init");

    return v13;
  }

  __break(1u);
  return result;
}

id sub_10078E988(char *a1, char *a2)
{
  v4 = *&a1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  if (v4 == NSNotFound.getter())
  {
    v5 = NSNotFound.getter();
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *&a2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
    if ((v4 & 0x8000000000000000) != 0)
    {
LABEL_13:

      return 0;
    }
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if (v5 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v5 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = *&a1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v9 = type metadata accessor for CRLTextRange();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v12 = &v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v12 = v6;
  *(v12 + 1) = v7;
  *&v10[v11] = v8;
  v15.receiver = v10;
  v15.super_class = v9;
  v13 = objc_msgSendSuper2(&v15, "init");

  return v13;
}

id sub_10078EA84()
{
  v0 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:0 caretAffinity:0];
  NSNotFound.getter();
  v1 = *&v0[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v2 = *&v0[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v3 = type metadata accessor for CRLTextRange();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v6 = &v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v6 = v1;
  *(v6 + 1) = v1;
  *&v4[v5] = v2;
  v9.receiver = v4;
  v9.super_class = v3;
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

uint64_t sub_10078EB68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v181 = a2;
  v151 = type metadata accessor for CKSyncEngine.Event.DidSendChanges();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v149 = &v143 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v148 = &v143 - v5;
  v154 = type metadata accessor for CKSyncEngine.SendChangesContext();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for CKSyncEngine.Event.WillSendChanges();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v144 = &v143 - v9;
  RecordZoneChanges = type metadata accessor for CKSyncEngine.Event.DidFetchRecordZoneChanges();
  v157 = *(RecordZoneChanges - 8);
  __chkstk_darwin(RecordZoneChanges);
  v156 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v155 = &v143 - v12;
  v13 = type metadata accessor for CKSyncEngine.Event.WillFetchRecordZoneChanges();
  v161 = *(v13 - 8);
  v162 = v13;
  __chkstk_darwin(v13);
  v160 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v159 = &v143 - v16;
  v17 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  v165 = *(v17 - 8);
  v166 = v17;
  __chkstk_darwin(v17);
  v163 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v164 = &v143 - v20;
  v21 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges();
  v169 = *(v21 - 8);
  v170 = v21;
  __chkstk_darwin(v21);
  v167 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v168 = &v143 - v24;
  v25 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
  v173 = *(v25 - 8);
  v174 = v25;
  __chkstk_darwin(v25);
  v171 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v172 = &v143 - v28;
  v29 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
  v177 = *(v29 - 8);
  v178 = v29;
  __chkstk_darwin(v29);
  v175 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v176 = &v143 - v32;
  v33 = type metadata accessor for CKSyncEngine.Event.AccountChange();
  v179 = *(v33 - 8);
  v180 = v33;
  __chkstk_darwin(v33);
  v35 = &v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v143 - v37;
  v39 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v143 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v143 - v44;
  v46 = type metadata accessor for CKSyncEngine.Event();
  v47 = *(v46 - 8);
  v48 = __chkstk_darwin(v46);
  v50 = &v143 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 16))(v50, a1, v46, v48);
  result = (*(v47 + 88))(v50, v46);
  if (result == enum case for CKSyncEngine.Event.stateUpdate(_:))
  {
    (*(v47 + 96))(v50, v46);
    (*(v40 + 32))(v45, v50, v39);
    (*(v40 + 16))(v42, v45, v39);
    v52 = type metadata accessor for CKSyncEngine.State.Serialization();
    v53 = v181;
    v181[3] = v52;
    v53[4] = sub_10002C548(&qword_1019FF6E0);
    sub_10002C58C(v53);
    CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
    (*(v47 + 8))(a1, v46);
    v54 = *(v40 + 8);
    v54(v42, v39);
    v54(v45, v39);
    type metadata accessor for SyncEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  v55 = v46;
  v143 = a1;
  v56 = v181;
  if (result == enum case for CKSyncEngine.Event.accountChange(_:))
  {
    (*(v47 + 96))(v50, v46);
    v58 = v179;
    v57 = v180;
    (*(v179 + 32))(v38, v50, v180);
    (*(v58 + 16))(v35, v38, v57);
    v59 = sub_1007917BC(v35);
    v61 = v60;
    v63 = v62;
    (*(v47 + 8))(v143, v46);
    (*(v58 + 8))(v38, v57);
    *v56 = v59;
    v56[1] = v61;
    *(v56 + 16) = v63;
    type metadata accessor for SyncEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (result == enum case for CKSyncEngine.Event.fetchedDatabaseChanges(_:))
  {
    v64 = v47;
    (*(v47 + 96))(v50, v55);
    v66 = v176;
    v65 = v177;
    v67 = v50;
    v68 = v178;
    (*(v177 + 32))(v176, v67, v178);
    v69 = v175;
    (*(v65 + 16))(v175, v66, v68);
    v70 = sub_100791A74(v69);
    v72 = v71;
    (*(v64 + 8))(v143, v55);
    (*(v65 + 8))(v66, v68);
    *v56 = v70;
    v56[1] = v72;
    type metadata accessor for SyncEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  v73 = v181;
  if (result == enum case for CKSyncEngine.Event.fetchedRecordZoneChanges(_:))
  {
    v74 = v47;
    (*(v47 + 96))(v50, v55);
    v76 = v172;
    v75 = v173;
    v77 = v50;
    v78 = v174;
    (*(v173 + 32))(v172, v77, v174);
    v79 = v171;
    (*(v75 + 16))(v171, v76, v78);
    v80 = sub_100791FE4(v79);
    v82 = v81;
    (*(v74 + 8))(v143, v55);
    (*(v75 + 8))(v76, v78);
    *v73 = v80;
    v73[1] = v82;
    type metadata accessor for SyncEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (result == enum case for CKSyncEngine.Event.sentDatabaseChanges(_:))
  {
    (*(v47 + 96))(v50, v46);
    v83 = v168;
    v84 = v169;
    v85 = v50;
    v86 = v170;
    (*(v169 + 32))(v168, v85, v170);
    v87 = v167;
    (*(v84 + 16))(v167, v83, v86);
    v88 = sub_1007923A8(v87);
    v90 = v89;
    v92 = v91;
    v93 = v47;
    v95 = v94;
    (*(v93 + 8))(v143, v55);
    (*(v84 + 8))(v83, v86);
    *v73 = v88;
    v73[1] = v90;
    v73[2] = v92;
    v73[3] = v95;
    type metadata accessor for SyncEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (result == enum case for CKSyncEngine.Event.sentRecordZoneChanges(_:))
  {
    v96 = v46;
    (*(v47 + 96))(v50, v46);
    v97 = v164;
    v98 = v165;
    v99 = v50;
    v100 = v166;
    (*(v165 + 32))(v164, v99, v166);
    v101 = v163;
    (*(v98 + 16))(v163, v97, v100);
    v102 = sub_1007925F0(v101);
    v104 = v103;
    v106 = v105;
    v108 = v107;
    (*(v47 + 8))(v143, v96);
    (*(v98 + 8))(v97, v100);
    *v73 = v102;
    v73[1] = v104;
    v73[2] = v106;
    v73[3] = v108;
    type metadata accessor for SyncEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (result == enum case for CKSyncEngine.Event.willFetchChanges(_:))
  {
    v109 = *(v47 + 8);
    v109(v143, v46);
    v109(v50, v46);
    type metadata accessor for SyncEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (result == enum case for CKSyncEngine.Event.willFetchRecordZoneChanges(_:))
  {
    v110 = *(v47 + 96);
    v111 = v47;
    v112 = v181;
    v113 = v46;
    v110(v50, v46);
    v115 = v161;
    v114 = v162;
    v116 = v159;
    (*(v161 + 32))(v159, v50, v162);
    v117 = v160;
    (*(v115 + 16))(v160, v116, v114);
    RecordZone = CKSyncEngine.Event.WillFetchRecordZoneChanges.zoneID.getter();
    (*(v111 + 8))(v143, v113);
    v119 = *(v115 + 8);
    v119(v117, v114);
    v119(v116, v114);
    *v112 = RecordZone;
    type metadata accessor for SyncEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (result == enum case for CKSyncEngine.Event.didFetchRecordZoneChanges(_:))
  {
    (*(v47 + 96))(v50, v46);
    v120 = v157;
    v121 = v155;
    v122 = RecordZoneChanges;
    (*(v157 + 32))(v155, v50, RecordZoneChanges);
    v123 = v156;
    (*(v120 + 16))(v156, v121, v122);
    v124 = CKSyncEngine.Event.DidFetchRecordZoneChanges.zoneID.getter();
    v125 = CKSyncEngine.Event.DidFetchRecordZoneChanges.error.getter();
    (*(v47 + 8))(v143, v46);
    v126 = *(v120 + 8);
    v126(v123, v122);
    v126(v121, v122);
    *v73 = v124;
    v73[1] = v125;
    type metadata accessor for SyncEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (result == enum case for CKSyncEngine.Event.didFetchChanges(_:))
  {
    v127 = *(v47 + 8);
    v127(v143, v46);
    v127(v50, v46);
    type metadata accessor for SyncEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (result == enum case for CKSyncEngine.Event.willSendChanges(_:))
  {
    v128 = v46;
    (*(v47 + 96))(v50, v46);
    v129 = v146;
    v130 = v144;
    v131 = v147;
    (*(v146 + 32))(v144, v50, v147);
    v132 = v145;
    (*(v129 + 16))(v145, v130, v131);
    v133 = v152;
    CKSyncEngine.Event.WillSendChanges.context.getter();
    CKSyncEngine.SendChangesContext.reason.getter();
    type metadata accessor for SendChangesContext(0);
    CKSyncEngine.SendChangesContext.options.getter();
    (*(v47 + 8))(v143, v128);
    (*(v153 + 8))(v133, v154);
    v134 = *(v129 + 8);
    v134(v132, v131);
    v134(v130, v131);
    type metadata accessor for SyncEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  v135 = v143;
  if (result == enum case for CKSyncEngine.Event.didSendChanges(_:))
  {
    v136 = v46;
    (*(v47 + 96))(v50, v46);
    v137 = v150;
    v138 = v148;
    v139 = v151;
    (*(v150 + 32))(v148, v50, v151);
    v140 = v149;
    (*(v137 + 16))(v149, v138, v139);
    v141 = v152;
    CKSyncEngine.Event.DidSendChanges.context.getter();
    CKSyncEngine.SendChangesContext.reason.getter();
    type metadata accessor for SendChangesContext(0);
    CKSyncEngine.SendChangesContext.options.getter();
    (*(v47 + 8))(v135, v136);
    (*(v153 + 8))(v141, v154);
    v142 = *(v137 + 8);
    v142(v140, v139);
    v142(v138, v139);
    type metadata accessor for SyncEvent(0);
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
  return result;
}

uint64_t sub_10078FE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a2;
  v6[4] = a4;
  v6[2] = a1;
  v7 = type metadata accessor for CKSyncEngine.SendChangesContext();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for SendChangesContext(0);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_10078FF44, 0, 0);
}

uint64_t sub_10078FF44()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v11 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  CKSyncEngine.SendChangesContext.reason.getter();
  CKSyncEngine.SendChangesContext.options.getter();
  (*(v2 + 8))(v1, v3);
  v10 = (*(v11 + 24) + **(v11 + 24));
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1007900C8;
  v5 = v0[11];
  v6 = v0[5];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v5, v7, v6);
}

uint64_t sub_1007900C8()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  sub_10079175C(v1, type metadata accessor for SendChangesContext);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100790210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a2;
  v6[4] = a4;
  v6[2] = a1;
  ChangesContext = type metadata accessor for CKSyncEngine.FetchChangesContext();
  v6[7] = ChangesContext;
  v6[8] = *(ChangesContext - 8);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for FetchChangesContext(0);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_100790308, 0, 0);
}

uint64_t sub_100790308()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v11 = v0[5];
  (*(v2 + 16))(v1, v0[3], v3);
  CKSyncEngine.FetchChangesContext.reason.getter();
  CKSyncEngine.FetchChangesContext.options.getter();
  (*(v2 + 8))(v1, v3);
  v10 = (*(v11 + 32) + **(v11 + 32));
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_10079048C;
  v5 = v0[11];
  v6 = v0[5];
  v7 = v0[4];
  v8 = v0[2];

  return v10(v8, v5, v7, v6);
}

uint64_t sub_10079048C()
{
  v1 = *(*v0 + 88);
  v4 = *v0;

  sub_10079175C(v1, type metadata accessor for FetchChangesContext);

  v2 = *(v4 + 8);

  return v2();
}

void (*sub_1007905E4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CKSyncEngine.State.hasPendingUntrackedChanges.modify();
  return sub_1006B1404;
}

uint64_t _s8Freeform18SendChangesContextV6reason8CloudKit12CKSyncEngineC10SyncReasonOvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CKSyncEngine.SyncReason();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10079074C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SyncEvent.StateUpdate.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for CKSyncEngine.State.Serialization();
  a2[4] = sub_10002C548(&qword_1019FF6E0);
  sub_10002C58C(a2);
  CKSyncEngine.Event.StateUpdate.stateSerialization.getter();
  v4 = type metadata accessor for CKSyncEngine.Event.StateUpdate();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

id sub_1007908F4(id result, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

Swift::Int related decl e for CKErrorCode.ErrorRecoveryState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t SyncEvent.FetchedDatabaseChanges.modifications.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SyncEvent.SentDatabaseChanges.failedZoneDeletes.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t SyncEvent.description.getter()
{
  v1 = type metadata accessor for SyncEvent(0);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100790EA0(v0, v3, type metadata accessor for SyncEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_10079175C(v3, type metadata accessor for SyncEvent);
          return 0x43746E756F636341;
        }

        else
        {
          sub_10079175C(v3, type metadata accessor for SyncEvent);
          return 0xD000000000000016;
        }
      }

      else
      {
        sub_10079175C(v3, type metadata accessor for SyncEvent);
        return 0x6470556574617453;
      }
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_10079175C(v3, type metadata accessor for SyncEvent);
      return 0xD000000000000018;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_10079175C(v3, type metadata accessor for SyncEvent);
      return 0xD000000000000013;
    }

    sub_10079175C(v3, type metadata accessor for SyncEvent);
    v6 = 5;
    return v6 | 0xD000000000000010;
  }

  if (EnumCaseMultiPayload <= 8)
  {
    if (EnumCaseMultiPayload == 6)
    {
      sub_10079175C(v3, type metadata accessor for SyncEvent);
      v6 = 10;
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        sub_10079175C(v3, type metadata accessor for SyncEvent);
        return 0x646E65536C6C6957;
      }

      sub_10079175C(v3, type metadata accessor for SyncEvent);
      v6 = 9;
    }

    return v6 | 0xD000000000000010;
  }

  if (EnumCaseMultiPayload == 9)
  {
    sub_10079175C(v3, type metadata accessor for SyncEvent);
    return 0x43646E6553646944;
  }

  else if (EnumCaseMultiPayload == 10)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6863746546646944;
  }
}

uint64_t sub_100790EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100790F18()
{
  result = qword_1019FF730;
  if (!qword_1019FF730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FF730);
  }

  return result;
}

uint64_t sub_100790FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for CKSyncEngine.SyncReason();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = a4(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1007910D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = type metadata accessor for CKSyncEngine.SyncReason();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = a5(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1007911F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for CKSyncEngine.SyncReason();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100791284()
{
  result = type metadata accessor for SyncEvent.WillSendChanges(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SyncEvent.DidSendChanges(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007913E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_10079142C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1007914DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100791524(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100791600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendChangesContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100791680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendChangesContext(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1007916F0()
{
  result = type metadata accessor for SendChangesContext(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10079175C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007917BC(uint64_t a1)
{
  v2 = type metadata accessor for CKSyncEngine.Event.AccountChange.ChangeType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  CKSyncEngine.Event.AccountChange.changeType.getter();
  (*(v3 + 16))(v5, v8, v2);
  result = (*(v3 + 88))(v5, v2);
  if (result == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signIn(_:) || result == enum case for CKSyncEngine.Event.AccountChange.ChangeType.signOut(_:) || result == enum case for CKSyncEngine.Event.AccountChange.ChangeType.switchAccounts(_:))
  {
    v10 = type metadata accessor for CKSyncEngine.Event.AccountChange();
    (*(*(v10 - 8) + 8))(a1, v10);
    (*(v3 + 8))(v8, v2);
    (*(v3 + 96))(v5, v2);
    return *v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100791A74(uint64_t a1)
{
  v52 = type metadata accessor for CKDatabase.DatabaseChange.Deletion.Reason();
  v2 = *(v52 - 8);
  __chkstk_darwin(v52);
  v47 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = &v37 - v5;
  v50 = type metadata accessor for CKDatabase.DatabaseChange.Deletion();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CKDatabase.DatabaseChange.Modification();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = CKSyncEngine.Event.FetchedDatabaseChanges.modifications.getter();
  v12 = *(v11 + 16);
  v38 = a1;
  if (v12)
  {
    v45 = v2;
    v53 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = v8 + 16;
    v46 = *(v8 + 16);
    v14 = *(v8 + 80);
    v44 = v11;
    v15 = v11 + ((v14 + 32) & ~v14);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v46(v10, v15, v7);
      CKDatabase.DatabaseChange.Modification.zoneID.getter();
      (*v17)(v10, v7);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += v16;
      --v12;
    }

    while (v12);

    v18 = v53;
    a1 = v38;
    v2 = v45;
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
  }

  v19 = CKSyncEngine.Event.FetchedDatabaseChanges.deletions.getter();
  v20 = *(v19 + 16);
  if (v20)
  {
    v37 = v18;
    v53 = _swiftEmptyArrayStorage;
    result = sub_100776AE4(0, v20, 0);
    v22 = 0;
    v23 = v53;
    v46 = (v19 + ((*(v48 + 80) + 32) & ~*(v48 + 80)));
    v44 = (v2 + 16);
    v45 = v48 + 16;
    v43 = (v2 + 88);
    v42 = enum case for CKDatabase.DatabaseChange.Deletion.Reason.deleted(_:);
    v40 = enum case for CKDatabase.DatabaseChange.Deletion.Reason.purged(_:);
    v39 = enum case for CKDatabase.DatabaseChange.Deletion.Reason.encryptedDataReset(_:);
    v41 = (v2 + 8);
    v24 = (v48 + 8);
    while (v22 < *(v19 + 16))
    {
      v25 = v20;
      v26 = v19;
      (*(v48 + 16))(v49, v46 + *(v48 + 72) * v22, v50);
      v27 = CKDatabase.DatabaseChange.Deletion.zoneID.getter();
      v28 = v51;
      CKDatabase.DatabaseChange.Deletion.reason.getter();
      v29 = v47;
      v30 = v52;
      (*v44)(v47, v28, v52);
      result = (*v43)(v29, v30);
      if (result == v42)
      {
        v31 = 0;
      }

      else if (result == v40)
      {
        v31 = 1;
      }

      else
      {
        if (result != v39)
        {
          goto LABEL_22;
        }

        v31 = 2;
      }

      (*v41)(v51, v52);
      result = (*v24)(v49, v50);
      v53 = v23;
      v33 = v23[2];
      v32 = v23[3];
      if (v33 >= v32 >> 1)
      {
        result = sub_100776AE4((v32 > 1), v33 + 1, 1);
        v23 = v53;
      }

      ++v22;
      v23[2] = v33 + 1;
      v34 = &v23[2 * v33];
      v34[4] = v27;
      *(v34 + 40) = v31;
      v20 = v25;
      v19 = v26;
      if (v25 == v22)
      {
        v35 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
        (*(*(v35 - 8) + 8))(v38, v35);

        return v37;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

    v36 = type metadata accessor for CKSyncEngine.Event.FetchedDatabaseChanges();
    (*(*(v36 - 8) + 8))(a1, v36);
    return v18;
  }

  return result;
}

void *sub_100791FE4(uint64_t a1)
{
  v2 = type metadata accessor for CKDatabase.RecordZoneChange.Deletion();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  __chkstk_darwin(v2);
  v40 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CKDatabase.RecordZoneChange.Modification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = CKSyncEngine.Event.FetchedRecordZoneChanges.modifications.getter();
  v10 = *(v9 + 16);
  v37 = a1;
  if (v10)
  {
    v43 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = *(v6 + 16);
    v11 = v6 + 16;
    v38 = v9;
    v39 = v12;
    v13 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    do
    {
      v39(v8, v13, v5);
      CKDatabase.RecordZoneChange.Modification.record.getter();
      (*(v11 - 8))(v8, v5);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v13 += v14;
      --v10;
    }

    while (v10);

    v15 = v43;
    a1 = v37;
  }

  else
  {

    v15 = _swiftEmptyArrayStorage;
  }

  v16 = CKSyncEngine.Event.FetchedRecordZoneChanges.deletions.getter();
  v17 = *(v16 + 16);
  if (v17)
  {
    v36 = v15;
    v43 = _swiftEmptyArrayStorage;
    sub_100776B04(0, v17, 0);
    v18 = v43;
    v19 = *(v42 + 16);
    v20 = *(v42 + 80);
    v35[1] = v16;
    v21 = v16 + ((v20 + 32) & ~v20);
    v38 = *(v42 + 72);
    v39 = v19;
    v42 += 16;
    v22 = (v42 - 8);
    do
    {
      v23 = v40;
      v24 = v41;
      v39(v40, v21, v41);
      v25 = CKDatabase.RecordZoneChange.Deletion.recordID.getter();
      v26 = CKDatabase.RecordZoneChange.Deletion.recordType.getter();
      v28 = v27;
      (*v22)(v23, v24);
      v43 = v18;
      v30 = v18[2];
      v29 = v18[3];
      if (v30 >= v29 >> 1)
      {
        sub_100776B04((v29 > 1), v30 + 1, 1);
        v18 = v43;
      }

      v18[2] = v30 + 1;
      v31 = &v18[3 * v30];
      v31[4] = v25;
      v31[5] = v26;
      v31[6] = v28;
      v21 += v38;
      --v17;
    }

    while (v17);
    v32 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
    (*(*(v32 - 8) + 8))(v37, v32);

    return v36;
  }

  else
  {

    v33 = type metadata accessor for CKSyncEngine.Event.FetchedRecordZoneChanges();
    (*(*(v33 - 8) + 8))(a1, v33);
  }

  return v15;
}

uint64_t sub_1007923A8(uint64_t a1)
{
  v28 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave();
  v2 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = CKSyncEngine.Event.SentDatabaseChanges.savedZones.getter();
  v6 = CKSyncEngine.Event.SentDatabaseChanges.failedZoneSaves.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v23 = v5;
    v24 = a1;
    v29 = _swiftEmptyArrayStorage;
    sub_100776B24(0, v7, 0);
    v8 = v29;
    v10 = *(v2 + 16);
    v9 = v2 + 16;
    v11 = *(v9 + 64);
    v22 = v6;
    v12 = v6 + ((v11 + 32) & ~v11);
    v26 = *(v9 + 56);
    v27 = v10;
    v25 = (v9 - 8);
    do
    {
      v13 = v28;
      v14 = v9;
      v27(v4, v12, v28);
      v15 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.zone.getter();
      v16 = CKSyncEngine.Event.SentDatabaseChanges.FailedZoneSave.error.getter();
      (*v25)(v4, v13);
      v29 = v8;
      v18 = v8[2];
      v17 = v8[3];
      if (v18 >= v17 >> 1)
      {
        sub_100776B24((v17 > 1), v18 + 1, 1);
        v8 = v29;
      }

      v8[2] = v18 + 1;
      v19 = &v8[2 * v18];
      v19[4] = v15;
      v19[5] = v16;
      v12 += v26;
      --v7;
      v9 = v14;
    }

    while (v7);

    v5 = v23;
    a1 = v24;
  }

  else
  {
  }

  CKSyncEngine.Event.SentDatabaseChanges.deletedZoneIDs.getter();
  CKSyncEngine.Event.SentDatabaseChanges.failedZoneDeletes.getter();
  v20 = type metadata accessor for CKSyncEngine.Event.SentDatabaseChanges();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v5;
}

uint64_t sub_1007925F0(uint64_t a1)
{
  v28 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave();
  v2 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = CKSyncEngine.Event.SentRecordZoneChanges.savedRecords.getter();
  v6 = CKSyncEngine.Event.SentRecordZoneChanges.failedRecordSaves.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v23 = v5;
    v24 = a1;
    v29 = _swiftEmptyArrayStorage;
    sub_100776B44(0, v7, 0);
    v8 = v29;
    v10 = *(v2 + 16);
    v9 = v2 + 16;
    v11 = *(v9 + 64);
    v22 = v6;
    v12 = v6 + ((v11 + 32) & ~v11);
    v26 = *(v9 + 56);
    v27 = v10;
    v25 = (v9 - 8);
    do
    {
      v13 = v28;
      v14 = v9;
      v27(v4, v12, v28);
      v15 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.record.getter();
      v16 = CKSyncEngine.Event.SentRecordZoneChanges.FailedRecordSave.error.getter();
      (*v25)(v4, v13);
      v29 = v8;
      v18 = v8[2];
      v17 = v8[3];
      if (v18 >= v17 >> 1)
      {
        sub_100776B44((v17 > 1), v18 + 1, 1);
        v8 = v29;
      }

      v8[2] = v18 + 1;
      v19 = &v8[2 * v18];
      v19[4] = v15;
      v19[5] = v16;
      v12 += v26;
      --v7;
      v9 = v14;
    }

    while (v7);

    v5 = v23;
    a1 = v24;
  }

  else
  {
  }

  CKSyncEngine.Event.SentRecordZoneChanges.deletedRecordIDs.getter();
  CKSyncEngine.Event.SentRecordZoneChanges.failedRecordDeletes.getter();
  v20 = type metadata accessor for CKSyncEngine.Event.SentRecordZoneChanges();
  (*(*(v20 - 8) + 8))(a1, v20);
  return v5;
}

uint64_t sub_100792838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for CKSyncEngine.Event();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for SyncEvent(0);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100792928, 0, 0);
}

uint64_t sub_100792928()
{
  v1 = v0[8];
  v2 = v0[9];
  v9 = v0[4];
  (*(v0[7] + 16))(v1, v0[2], v0[6]);
  sub_10078EB68(v1, v2);
  v8 = (*(v9 + 16) + **(v9 + 16));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100792A74;
  v4 = v0[9];
  v5 = v0[4];
  v6 = v0[3];

  return v8(v4, v6, v5);
}

uint64_t sub_100792A74()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  sub_10079175C(v1, type metadata accessor for SyncEvent);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100792C54()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100792CA4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100792D90()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 104));
  v1 = *(*v0 + 112);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_weakDestroy();
  return v0;
}

uint64_t sub_100792EA8()
{
  sub_100792D90();

  return swift_deallocClassInstance();
}

uint64_t sub_100792F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 80) - 8);
  __chkstk_darwin(a1);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v10;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v40 = &v35 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v41 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v16 = &v35 - v15;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v36 = v9;
    v37 = a3;
    v17 = *(*a1 + 112);
    v18 = v7;
    v19 = *(*a2 + 112);
    v38 = TupleTypeMetadata2;
    v20 = *(TupleTypeMetadata2 + 48);
    v21 = *(v12 + 16);
    v21(v16, a1 + v17, v11);
    v39 = v20;
    v22 = a2 + v19;
    v23 = v18;
    v21(&v16[v20], v22, v11);
    v24 = *(v18 + 48);
    if (v24(v16, 1, v42) == 1)
    {
      if (v24(&v16[v39], 1, v42) == 1)
      {
        v25 = 1;
      }

      else
      {
        v12 = v41;
        v11 = v38;
        v25 = 0;
      }
    }

    else
    {
      v26 = v38;
      v27 = v40;
      v21(v40, v16, v11);
      v28 = v39;
      if (v24(&v16[v39], 1, v42) == 1)
      {
        (*(v23 + 8))(v27, v42);
        v25 = 0;
        v12 = v41;
        v11 = v26;
      }

      else
      {
        v29 = &v16[v28];
        v30 = v36;
        v31 = v42;
        (*(v23 + 32))(v36, v29, v42);
        v32 = v27;
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *(v23 + 8);
        v33(v30, v31);
        v33(v32, v31);
      }
    }

    (*(v12 + 8))(v16, v11);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_10079330C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s4NodeVMa(0);
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v8 - 8);
  v10 = v35 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1005C5FFC(v10);
    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    type metadata accessor for IndexPath();
    sub_100793980();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v17;
    *(inited + 40) = v19;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v20, "Could not determine item identifier for index path %@", 53, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v21 = 1;
LABEL_13:
    v27 = v38;
    return (*(v27 + 56))(a2, v21, 1, v5);
  }

  v36 = v5;
  v37 = a2;
  (*(v12 + 32))(v14, v10, v11);
  v22 = (*(v2 + qword_1019FFB20) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v23 = v22[3];
  if (!*(v23 + 16))
  {

LABEL_10:

    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_10146C6B0;
    type metadata accessor for IndexPath();
    sub_100793980();
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_1000053B0();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v33, "Could not find node for index path %@", 37, 2, v29);
    swift_setDeallocating();
    sub_100005070(v29 + 32);
    (*(v12 + 8))(v14, v11);
    v21 = 1;
    v5 = v36;
    a2 = v37;
    goto LABEL_13;
  }

  v35[0] = a1;
  v24 = *v22;

  v35[1] = v24;

  v25 = sub_10003E994(v14);
  if ((v26 & 1) == 0)
  {

    goto LABEL_10;
  }

  v27 = v38;
  sub_10003C9F4(*(v23 + 56) + *(v38 + 72) * v25, v7, _s4NodeVMa);

  (*(v12 + 8))(v14, v11);
  a2 = v37;
  sub_100065BB0(v7, v37, _s4NodeVMa);
  v21 = 0;
  v5 = v36;
  return (*(v27 + 56))(a2, v21, 1, v5);
}

id sub_10079389C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFolderViewControllerDiffableDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1007938E4()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_100793924(uint64_t a1)
{
  v2 = _s4NodeVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100793980()
{
  result = qword_101A23D10;
  if (!qword_101A23D10)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23D10);
  }

  return result;
}

unint64_t sub_1007939DC()
{
  result = qword_1019FFB78;
  if (!qword_1019FFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFB78);
  }

  return result;
}

unint64_t sub_100793A34()
{
  result = qword_1019FFB80;
  if (!qword_1019FFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFB80);
  }

  return result;
}

uint64_t sub_100793B20@<X0>(uint64_t *a1@<X8>)
{
  v68 = a1;
  v1 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v1 - 8);
  v50 = &v46[-v2];
  v66 = type metadata accessor for InputConnectionBehavior();
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v4 - 8);
  v60 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v64 = &v46[-v7];
  v8 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v8 - 8);
  v58 = &v46[-v9];
  v10 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v10 - 8);
  v12 = &v46[-v11];
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v67 = type metadata accessor for LocalizedStringResource();
  v70 = *(v67 - 8);
  __chkstk_darwin(v67);
  v56 = &v46[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v62 = &v46[-v21];
  v49 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v14 + 104);
  v23(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v47 = v22;
  v51 = v13;
  v23(v16, v22, v13);
  v52 = v23;
  v63 = v12;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = *(v70 + 56);
  v70 += 56;
  v61 = v24;
  v24(v12, 0, 1, v67);
  v25 = type metadata accessor for CRLBoardEntity();
  (*(*(v25 - 8) + 56))(v58, 1, 1, v25);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23(v16, v22, v13);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = v64;
  IntentDialog.init(_:)();
  v27 = type metadata accessor for IntentDialog();
  v54 = v27;
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v55 = v28 + 56;
  v53 = v29;
  v29(v26, 0, 1, v27);
  v29(v60, 1, 1, v27);
  v59 = enum case for InputConnectionBehavior.default(_:);
  v57 = *(v69 + 104);
  v69 += 104;
  v57(v65);
  sub_100796BBC(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  *v68 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v58 = sub_1005B981C(&qword_1019FFBB8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = v47;
  v31 = v51;
  v32 = v52;
  v52(v16, v47, v51);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = v30;
  v48 = v14 + 104;
  v32(v16, v30, v31);
  v34 = v32;
  v35 = v63;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v61(v35, 0, 1, v67);
  LOBYTE(v71) = 6;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34(v16, v30, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v36 = v64;
  IntentDialog.init(_:)();
  v37 = v54;
  v38 = v53;
  v53(v36, 0, 1, v54);
  v38(v60, 1, 1, v37);
  sub_1005B981C(&qword_1019FFBC0);
  swift_getKeyPath();
  v73 = IntentParameterDependency.__allocating_init<A, B>(_:)();
  (v57)(v65, v59, v66);
  sub_1007969A4();
  sub_1007969F8();
  v39 = v63;
  v68[1] = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:optionsProvider:)();
  v60 = sub_1005B981C(&qword_1019FC888);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = v51;
  v41 = v52;
  v52(v16, v33, v51);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v41(v16, v33, v40);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v61(v39, 0, 1, v67);
  v42 = type metadata accessor for AttributedString();
  (*(*(v42 - 8) + 56))(v50, 1, 1, v42);
  v53(v64, 1, 1, v54);
  (v57)(v65, v59, v66);
  v43 = IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
  v44 = v68;
  v68[2] = v43;
  sub_1005B981C(&qword_1019F6280);
  v71 = 0xD00000000000001FLL;
  v72 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v44[3] = result;
  v44[7] = &type metadata for CRLBoardItemInsertionPerformer;
  v44[8] = &off_1018A33D0;
  return result;
}

uint64_t sub_1007947E8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  sub_1005B981C(&qword_1019FC880);
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for CRLBoardEntity();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_100794940, 0, 0);
}

uint64_t sub_100794940()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = static OS_os_log.appIntents;
  Logger.init(_:)();
  IntentParameter.wrappedValue.getter();
  *(v0 + 313) = *(v0 + 312);
  *(v0 + 232) = *v1;
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  AppDependency.wrappedValue.getter();
  *(v0 + 40) = &type metadata for CRLBoardLibraryProvidingDependency;
  *(v0 + 48) = &off_1018AD9D0;
  sub_100020E58((v0 + 16), &type metadata for CRLBoardLibraryProvidingDependency);
  *(v0 + 240) = type metadata accessor for MainActor();
  *(v0 + 248) = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  *v3 = v0;
  v3[1] = sub_100794AA8;
  v4 = *(v0 + 200);

  return sub_1010AF408(v4);
}

uint64_t sub_100794AA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_10079508C;
  }

  else
  {
    *(v4 + 272) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100794C28;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100794C28()
{
  v1 = v0[34];

  v0[10] = &type metadata for CRLBoardLibraryHeadlessControllerDependency;
  v0[11] = &off_1018ADA90;
  v0[7] = v1;

  return _swift_task_switch(sub_100794CAC, 0, 0);
}

uint64_t sub_100794CAC()
{
  v1 = sub_101060950(*(v0 + 313), *(v0 + 152), *(v0 + 56));
  *(v0 + 280) = v1;
  sub_100020E58((v0 + 56), *(v0 + 80));
  sub_1005B981C(&unk_1019F4D60);
  v2 = swift_allocObject();
  *(v0 + 288) = v2;
  *(v2 + 16) = xmmword_101465920;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 296) = v4;
  *v4 = v0;
  v4[1] = sub_100794DB4;

  return sub_100FE17C4(v2);
}

uint64_t sub_100794DB4()
{

  return _swift_task_switch(sub_100794ECC, 0, 0);
}

uint64_t sub_100794ECC()
{
  v1 = *sub_100020E58(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_100794F74;

  return sub_100FF8D2C((v0 + 7), v1);
}

uint64_t sub_100794F74()
{

  if (v0)
  {

    v1 = sub_10079535C;
  }

  else
  {
    v1 = sub_100796C58;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10079508C()
{

  return _swift_task_switch(sub_1007950F4, 0, 0);
}

uint64_t sub_1007950F4()
{
  v15 = v0;
  v1 = v0[25];
  sub_100796B54(v0[19]);
  sub_100689004(v1);
  sub_100005070((v0 + 2));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.publicDescription.getter(v0[13], v0[14]);
    v8 = sub_101007640(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error inserting shape %s", v4, 0xCu);
    sub_100005070(v5);
  }

  v9 = v0[27];
  v10 = v0[28];
  v11 = v0[26];
  type metadata accessor for AppIntentError();
  sub_100796BBC(&qword_1019F8B08, &type metadata accessor for AppIntentError);
  swift_allocError();
  static AppIntentError.Unrecoverable.unknown.getter();
  swift_willThrow();

  (*(v9 + 8))(v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10079535C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v12 = *(v0 + 208);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v8 = *(v0 + 152);

  sub_100796B54(v8);
  sub_100689004(v4);
  sub_100005070(v0 + 56);
  sub_100005070(v0 + 16);
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v9 = sub_100B0768C();
  sub_1006B05D0(v6, v5);
  sub_1006B05D0(v5, v7);
  IntentParameter.wrappedValue.setter();
  sub_100689004(v5);
  sub_100689004(v6);
  *(v0 + 128) = v9;
  sub_100796BBC(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100689004(v3);
  (*(v2 + 8))(v1, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100795534()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v6, qword_101AD64E0);
  sub_1005EB3DC(v6, qword_101AD64E0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10079572C@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_1005B981C(&qword_1019FFC20);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1005B981C(&qword_1019FFC28);
  __chkstk_darwin(v2);
  v3 = sub_1005B981C(&qword_1019FFC00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  sub_100796B00();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 543450177;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019FFC30);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 544175136;
  v11._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019FFC40);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10001A2F8(&qword_1019FFC08, &qword_1019FFC00);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v13)(v9, v3);
}

uint64_t sub_100795A68@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = sub_1005B981C(&qword_1019FFC20);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1005B981C(&qword_1019FFC28);
  __chkstk_darwin(v2);
  v3 = sub_1005B981C(&qword_1019FFC00);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  sub_100796B00();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 543450177;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019FFC30);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0x206874697720;
  v11._object = 0xE600000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019FFC38);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 544175136;
  v12._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019FFC40);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10001A2F8(&qword_1019FFC08, &qword_1019FFC00);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v14)(v9, v3);
}

uint64_t sub_100795DF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1568 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1005EB3DC(v2, qword_101AD64E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100795EA0()
{
  v0 = type metadata accessor for EquatableComparisonOperator();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v1 + 104))(v3, enum case for EquatableComparisonOperator.equalTo(_:), v0);
  v5[15] = 1;
  sub_1005B981C(&qword_1019FFC00);
  sub_10001A2F8(&qword_1019FFC08, &qword_1019FFC00);
  sub_100796C04();
  sub_10001A2F8(&qword_1019FFC18, &qword_1019FFBB8);
  return ParameterSummaryWhenCondition.init<A, B>(_:_:_:_:otherwise:)();
}

uint64_t sub_100796084(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_1007947E8(a1);
}

uint64_t sub_100796120(uint64_t a1)
{
  v2 = sub_100796B00();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100796160()
{
  result = qword_1019FFB88;
  if (!qword_1019FFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFB88);
  }

  return result;
}

unint64_t sub_1007961B4()
{
  result = qword_1019FFB90;
  if (!qword_1019FFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFB90);
  }

  return result;
}

unint64_t sub_10079620C()
{
  result = qword_1019FFB98;
  if (!qword_1019FFB98)
  {
    sub_1005C4E5C(&qword_1019FFBA0);
    sub_1007961B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFB98);
  }

  return result;
}

uint64_t sub_100796290(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for AttributedString.Index();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for AttributedString.CharacterView();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = type metadata accessor for AttributedString();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100796414, 0, 0);
}

uint64_t sub_100796414()
{
  if (IntentParameterDependency.wrappedValue.getter())
  {
    v1 = v0[11];
    v2 = v0[12];
    v3 = v0[9];
    v15 = v0[8];
    v13 = v0[10];
    v14 = v0[7];
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[3];
    v7 = v0[4];
    swift_getKeyPath();
    sub_100796A4C();
    IntentProjection.subscript.getter();

    AttributedString.characters.getter();
    (*(v1 + 8))(v2, v13);
    sub_100796BBC(&qword_1019FFBE8, &type metadata accessor for AttributedString.CharacterView);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    sub_100796BBC(&qword_1019FFBF0, &type metadata accessor for AttributedString.Index);
    v8 = dispatch thunk of static Equatable.== infix(_:_:)();
    v9 = *(v7 + 8);
    v9(v5, v6);
    v9(v4, v6);
    (*(v15 + 8))(v3, v14);
    if (v8)
    {
      v10 = &off_101874B38;
    }

    else
    {
      v10 = off_101A09E90;
    }
  }

  else
  {
    v10 = &off_101874B38;
  }

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_100796668(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100796700;

  return sub_100796290(v3);
}

uint64_t sub_100796700(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_100796810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002D3D4;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

__n128 sub_1007968D8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1007968FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100796944(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1007969A4()
{
  result = qword_1019FFBC8;
  if (!qword_1019FFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFBC8);
  }

  return result;
}

unint64_t sub_1007969F8()
{
  result = qword_1019FFBD0;
  if (!qword_1019FFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFBD0);
  }

  return result;
}

unint64_t sub_100796A4C()
{
  result = qword_1019FFBD8;
  if (!qword_1019FFBD8)
  {
    sub_1005C4E5C(&qword_1019FC880);
    sub_100796BBC(&qword_1019FFBE0, &type metadata accessor for AttributedString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFBD8);
  }

  return result;
}

unint64_t sub_100796B00()
{
  result = qword_1019FFBF8;
  if (!qword_1019FFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFBF8);
  }

  return result;
}

uint64_t sub_100796B54(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FC880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100796BBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100796C04()
{
  result = qword_1019FFC10;
  if (!qword_1019FFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FFC10);
  }

  return result;
}

id sub_100796C5C()
{
  result = [objc_allocWithZone(type metadata accessor for CRLTextInputLogger()) init];
  qword_101AD64F8 = result;
  return result;
}

id sub_100796CEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLTextInputLogger();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100796DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100041E54(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100061AF0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100061AF0(a3);

      return v20;
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

  sub_100061AF0(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100797084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_100041E54(a3, v24 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100061AF0(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100061AF0(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100061AF0(a3);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100797320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100041E54(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100061AF0(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      sub_1005B981C(&qword_1019FFCD8);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100061AF0(a3);

      return v20;
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

  sub_100061AF0(a3);
  sub_1005B981C(&qword_1019FFCD8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1007975B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v24[0] = a4;
  v10 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_100041E54(a3, v24 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100061AF0(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      sub_1005B981C(a6);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100061AF0(a3);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100061AF0(a3);
  sub_1005B981C(a6);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100797820(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 192) = a2;
  *(v4 + 200) = v3;
  *(v4 + 169) = a3;
  *(v4 + 184) = a1;
  sub_1005B981C(&qword_1019FB750);
  *(v4 + 208) = swift_task_alloc();
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  *(v4 + 216) = v5;
  *(v4 + 224) = *(v5 + 64);
  *(v4 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_100797924, 0, 0);
}

uint64_t sub_100797924()
{
  v1 = *(v0 + 169);
  v2 = *(v0 + 192);
  v3 = *(*(v0 + 184) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_sideStore);
  *(v0 + 240) = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_1005B981C(&qword_1019FFCC0);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_1007987E8(*(v0 + 160), *(v0 + 168));
  if ((v1 & 1) != 0 || (v5 = objc_opt_self(), v6 = [v5 standardUserDefaults], v7 = String._bridgeToObjectiveC()(), v8 = objc_msgSend(v6, "BOOLForKey:", v7), v7, v6, !v8))
  {
    v15 = *(v0 + 232);
    v16 = *(v0 + 216);
    v17 = *(v0 + 184);
    sub_1005F1308(*(v0 + 192), v15);
    sub_1005B981C(&unk_101A19BD0);
    v18 = *(v16 + 80);
    *(v0 + 172) = v18;
    v19 = (v18 + 32) & ~v18;
    v20 = swift_allocObject();
    *(v0 + 248) = v20;
    *(v20 + 16) = xmmword_10146C6B0;
    sub_1005EB270(v15, v20 + v19);
    v21 = swift_task_alloc();
    *(v0 + 256) = v21;
    *(v21 + 16) = v17;
    *(v21 + 24) = v20;
    *(v21 + 32) = 1;
    *(v21 + 40) = 1;
    v22 = swift_task_alloc();
    *(v0 + 264) = v22;
    v23 = type metadata accessor for CRLBoardDatabaseFetchResult();
    *v22 = v0;
    v22[1] = sub_100797C48;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 176, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_1007987F4, v21, v23);
  }

  else
  {
    v9 = [v5 standardUserDefaults];
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v11 = String._bridgeToObjectiveC()();
    [v9 setValue:isa forKey:v11];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v12, v13);
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_100797C48()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_100798510;
  }

  else
  {

    v2 = sub_100797D6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100797D6C()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = *(v0 + 192);

  v4 = sub_1000486F0(v3);
  if ((v5 & 1) == 0)
  {

LABEL_6:
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v26 = UUID.uuidString.getter();
    v28 = v27;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v26;
    *(inited + 40) = v28;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v29, "boardIdentifier not found: %{public}@", 37, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_1006A3EB0();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
    v23 = &unk_10147BFC8;
    goto LABEL_9;
  }

  v6 = *(v0 + 200);
  v59 = *(v0 + 272);
  v60 = *(v0 + 184);
  v7 = *(v2 + 56) + 40 * v4;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  v56 = *(v7 + 32);
  queue = *(v0 + 169);
  v55 = v11;

  v12 = v1;
  v13 = *(v6 + 648);
  v14 = v60;

  v61 = v55;
  v15 = v13(v14, v8, v9, v10, v11, v56);
  v16 = v12;
  v17 = v15;
  v18 = type metadata accessor for CRLTransactionContext(0);
  v19 = sub_100798B88();
  v20 = v17;
  v21 = sub_1012E01FC(v20, v18, v6, v19);

  v22 = sub_100EBA548(v16, v21, queue, 2u);
  if (v59)
  {

    v23 = &unk_10147BFD0;
LABEL_9:

    v31 = *(v0 + 172);
    v32 = *(v0 + 232);
    v33 = *(v0 + 208);
    v35 = *(v0 + 184);
    v34 = *(v0 + 192);
    sub_100A79100(v34);
    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
    sub_1005F1308(v34, v32);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v35;
    sub_1005EB270(v32, v37 + ((v31 + 40) & ~v31));
    v38 = v35;
    sub_100796DC0(0, 0, v33, v23, v37);

    v39 = *(v0 + 8);

    return v39();
  }

  (*(*v21 + 720))(v22);
  v41 = *(v0 + 169);

  [v20 fixUp];
  if (v41)
  {
  }

  else
  {
    queuea = *(*&v20[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
    v42 = *&v20[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges];
    v43 = swift_allocObject();
    *(v43 + 16) = v21;
    *(v43 + 24) = v42;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_100798CD8;
    *(v44 + 24) = v43;
    *(v0 + 120) = sub_10002AAEC;
    *(v0 + 128) = v44;
    *(v0 + 88) = _NSConcreteStackBlock;
    *(v0 + 96) = *"";
    *(v0 + 104) = sub_10002AAB8;
    *(v0 + 112) = &unk_101886B08;
    v45 = _Block_copy((v0 + 88));
    swift_retain_n();

    dispatch_sync(queuea, v45);
    _Block_release(v45);
    LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

    if (v45)
    {
      __break(1u);
      return result;
    }
  }

  v46 = *(v0 + 172);
  v47 = *(v0 + 232);
  v48 = *(v0 + 208);
  v50 = *(v0 + 184);
  v49 = *(v0 + 192);

  sub_100A79100(v49);
  v51 = type metadata accessor for TaskPriority();
  (*(*(v51 - 8) + 56))(v48, 1, 1, v51);
  sub_1005F1308(v49, v47);
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v50;
  sub_1005EB270(v47, v52 + ((v46 + 40) & ~v46));
  v53 = v50;
  sub_100796DC0(0, 0, v48, &unk_10147BFE0, v52);

  v54 = *(v0 + 8);

  return v54(v20);
}

uint64_t sub_100798510()
{

  v1 = *(v0 + 172);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  sub_100A79100(v4);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_1005F1308(v4, v2);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  sub_1005EB270(v2, v7 + ((v1 + 40) & ~v1));
  v8 = v5;
  sub_100796DC0(0, 0, v3, &unk_10147BFC0, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100798680()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for CRLBoardActor()
{
  result = qword_1019FFCB0;
  if (!qword_1019FFCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100798724()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007987E8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100798804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100798824, 0, 0);
}

uint64_t sub_100798824()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_100798910;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v2, 0, 0, 0xD000000000000019, 0x8000000101566E80, sub_100798CE0, v1, &type metadata for () + 8);
}

uint64_t sub_100798910()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100798A2C;
  }

  else
  {

    v2 = sub_1005DA098;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100798A2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100798A90(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100798804(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100798B88()
{
  result = qword_101A22920;
  if (!qword_101A22920)
  {
    type metadata accessor for CRLBoard(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22920);
  }

  return result;
}

uint64_t sub_100798BE0(uint64_t a1)
{
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_100798804(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100798D48(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100024CBC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100798E9C(void *result)
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

  result = sub_100B35A88(result, v10, 1, v3);
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

  sub_1005B981C(&qword_1019FFF80);
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

uint64_t sub_100798FD4(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + 16 * v8 + 32), (v7 + 32), 16 * v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1007990D0(uint64_t result)
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

  result = sub_100B35CF8(result, v11, 1, v3);
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

uint64_t sub_1007991BC(uint64_t result)
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

  result = sub_100B35DEC(result, v11, 1, v3);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

void *sub_1007992A8(void *result)
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

  result = sub_100B35EEC(result, v10, 1, v3);
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

  sub_1005B981C(&qword_1019FFFC0);
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