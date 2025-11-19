uint64_t variable initialization expression of AnyListEntityQuery._store()
{
  v0 = type metadata accessor for AppIntentsDependencyKey();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v8 - v5;
  sub_100058000(&qword_100767540);
  (*(v1 + 104))(v6, enum case for AppIntentsDependencyKey.remStore(_:), v0);
  (*(v1 + 16))(v4, v6, v0);
  sub_1000588D4(&qword_100767548, &type metadata accessor for AppIntentsDependencyKey);
  AnyHashable.init<A>(_:)();
  (*(v1 + 8))(v6, v0);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  return AppDependency.__allocating_init(key:manager:)();
}

uint64_t sub_1000588D4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 initializeWithTake for TTRIRemindersBoardDragItemSourcesRelativeToColumn(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100058A48(uint64_t a1, uint64_t a2)
{
  result = static Float._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_100058A9C(uint64_t a1, uint64_t a2)
{
  v3 = static Float._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_100058AF4@<X0>(_DWORD *a1@<X8>)
{
  result = static Float._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

void *sub_100058B30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100058B5C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100058BC8(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100058C1C(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100058C74@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_100058C9C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100058D14(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100058D94@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

Swift::Int sub_100058DD8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100058E20()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100058E64@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100602E54();

  *a1 = v2;
  return result;
}

uint64_t sub_100058EA4()
{
  sub_1000588D4(&qword_100767B00, type metadata accessor for REMSmartListType);
  sub_1000588D4(&qword_100767B08, type metadata accessor for REMSmartListType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100058F60()
{
  sub_1000588D4(&qword_100767B10, type metadata accessor for REMListBadgeEmblem);
  sub_1000588D4(&qword_100767B18, type metadata accessor for REMListBadgeEmblem);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000590F4()
{
  sub_1000588D4(&qword_100778A60, type metadata accessor for Key);
  sub_1000588D4(&qword_100768040, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

_DWORD *sub_1000591B0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_1000591C0@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000591CC()
{
  sub_1000588D4(&qword_100768018, type metadata accessor for UILayoutPriority);
  sub_1000588D4(&unk_100768020, type metadata accessor for UILayoutPriority);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100059288()
{
  sub_1000588D4(&qword_100768008, type metadata accessor for Name);
  sub_1000588D4(&qword_100768010, type metadata accessor for Name);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100059344()
{
  sub_1000588D4(&qword_100768048, type metadata accessor for ActivityType);
  sub_1000588D4(&unk_100768050, type metadata accessor for ActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100059400()
{
  sub_1000588D4(&unk_100781820, type metadata accessor for OpenExternalURLOptionsKey);
  sub_1000588D4(&unk_100768030, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000594BC()
{
  sub_1000588D4(&qword_100767FD8, type metadata accessor for URLResourceKey);
  sub_1000588D4(&qword_100767FE0, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100059578()
{
  sub_1000588D4(&qword_100767AF0, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_1000588D4(&qword_100767AF8, type metadata accessor for UIBackgroundTaskIdentifier);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100059634()
{
  sub_1000588D4(&qword_100767FF8, type metadata accessor for OpenURLOptionsKey);
  sub_1000588D4(&qword_100768000, type metadata accessor for OpenURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000596F0@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100059738()
{
  sub_1000588D4(&qword_100767FE8, type metadata accessor for LaunchOptionsKey);
  sub_1000588D4(&qword_100767FF0, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void sub_1000599AC()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(LODWORD(v1));
}

uint64_t sub_1000599E8(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

uint64_t sub_100059A04()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100059A40()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100059A94()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100059B2C()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

void type metadata accessor for ScrollPosition(uint64_t a1)
{
  sub_10000456C(a1, &qword_100767EA8);
}

{
  sub_10000456C(a1, &qword_100767EB0);
}

NSString sub_10005A598()
{
  result = String._bridgeToObjectiveC()();
  qword_100768300 = result;
  return result;
}

NSString sub_10005A5D0()
{
  result = String._bridgeToObjectiveC()();
  qword_100768308 = result;
  return result;
}

NSString sub_10005A608()
{
  result = String._bridgeToObjectiveC()();
  qword_100768310 = result;
  return result;
}

NSString sub_10005A640()
{
  result = String._bridgeToObjectiveC()();
  qword_100768318 = result;
  return result;
}

NSString sub_10005A678()
{
  result = String._bridgeToObjectiveC()();
  qword_100768320 = result;
  return result;
}

NSString sub_10005A6B0()
{
  result = String._bridgeToObjectiveC()();
  qword_100768328 = result;
  return result;
}

UIMenu sub_10005A6E8(uint64_t a1)
{
  v109 = type metadata accessor for TTRListType.PredefinedSmartListVisibility();
  v94 = *(v109 - 8);
  __chkstk_darwin(v109);
  v108 = &v93 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v107 = &v93 - v4;
  v102 = type metadata accessor for URL();
  v5 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for TTRListType.PredefinedSmartListType();
  object = *(v110 - 8);
  __chkstk_darwin(v110);
  v97 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = &v93 - v10;
  isa = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier(0);
  __chkstk_darwin(isa);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  v13 = *(v116 - 1);
  __chkstk_darwin(v116);
  v15 = (&v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100058000(&qword_100768330);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v104 = (&v93 - v18);
  v19 = sub_100058000(&qword_100768338);
  __chkstk_darwin(v19 - 8);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v121 = &v93 - v23;
  v132 = _swiftEmptyArrayStorage;
  v24 = *(a1 + 16);
  if (v24 >= 9)
  {
    v24 = 9;
  }

  v122 = v24;
  v105 = v13;
  v103 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v120 = (v17 + 56);
  v119 = (v17 + 48);
  v99 = (object + 32);
  v106 = object;
  v123 = (object + 8);
  v98 = (v5 + 8);
  v113 = "ist key command title";
  v96 = a1;

  v25 = 0;
  v112 = xmmword_10062D3F0;
  v111 = xmmword_10062D400;
  v26 = _swiftEmptyArrayStorage;
  v117 = v12;
  v115 = v16;
  for (i = v21; ; v21 = i)
  {
    if (v25 == v122)
    {
      v27 = 1;
      v25 = v122;
    }

    else
    {
      if (v25 >= v122)
      {
        goto LABEL_41;
      }

      if (__OFADD__(v25, 1))
      {
        goto LABEL_42;
      }

      v28 = v103 + *(v105 + 72) * v25;
      v29 = *(v16 + 48);
      v30 = v104;
      *v104 = v25;
      sub_10005C328(v28, v30 + v29, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem);
      sub_100016588(v30, v21, &qword_100768330);
      v27 = 0;
      ++v25;
    }

    v31 = v121;
    (*v120)(v21, v27, 1, v16);
    sub_100016588(v21, v31, &qword_100768338);
    if ((*v119)(v31, 1, v16) == 1)
    {
      break;
    }

    v32 = *v31;
    sub_10005C2C4(v31 + *(v16 + 48), v15);
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v33 = *v15;
    v34 = v15[1];
    v126 = v32 + 1;

    v125 = dispatch thunk of CustomStringConvertible.description.getter();
    v124 = v35;
    sub_10005C328(v15 + v116[5], v12, type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem.ListIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = *v12;
      v37 = [v36 urlRepresentation];
      v38 = v101;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = URL.absoluteString.getter();
      v41 = v40;

      (*v98)(v38, v102);
    }

    else
    {
      v42 = v100;
      v43 = v110;
      (*v99)(v100, v12, v110);
      v39 = TTRListType.PredefinedSmartListType.rawValue.getter();
      v41 = v44;
      (*v123)(v42, v43);
    }

    sub_100003540(0, &unk_10076BAB0);
    sub_100058000(&qword_100768348);
    inited = swift_initStackObject();
    *(inited + 16) = v112;
    *(inited + 32) = 0x656C746974;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v33;
    *(inited + 56) = v34;
    *(inited + 64) = 0x676E697274536469;
    *(inited + 72) = 0xE800000000000000;
    *(inited + 80) = v39;
    *(inited + 88) = v41;
    swift_bridgeObjectRetain_n();
    v46 = sub_100460914(inited);
    swift_setDeallocating();
    sub_100058000(&qword_100768350);
    swift_arrayDestroy();
    v128 = sub_100058000(&qword_100768358);
    v126 = v46;
    v47._countAndFlagsBits = 0xD00000000000002ELL;
    v47._object = (v113 | 0x8000000000000000);
    v48._countAndFlagsBits = 0x4025206F74206F47;
    v48._object = 0xED00007473694C20;
    object = TTRLocalizedString(_:comment:)(v48, v47)._object;
    sub_100058000(&unk_100786CB0);
    v49 = swift_allocObject();
    *(v49 + 16) = v111;
    *(v49 + 56) = &type metadata for String;
    *(v49 + 64) = sub_10005C390();
    *(v49 + 32) = v33;
    *(v49 + 40) = v34;
    String.init(format:_:)();

    v50 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      object = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    sub_10005C3E4(v15);
    v26 = v132;
    v12 = v117;
    v16 = v115;
  }

  v51._countAndFlagsBits = 0xD000000000000014;
  v52._countAndFlagsBits = 0x6F54206F47;
  v51._object = 0x800000010066EBA0;
  v52._object = 0xE500000000000000;
  v53 = TTRLocalizedString(_:comment:)(v52, v51);
  object = v53._countAndFlagsBits;
  v15 = v53._object;
  v54 = String._bridgeToObjectiveC()();
  v55 = objc_opt_self();
  v25 = [v55 _systemImageNamed:v54];

  v95 = v26;
  v117 = "Go To Menu Shortcuts";
  v116 = v55;
  if (!(v26 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550);
    v56 = v26;
    goto LABEL_19;
  }

LABEL_43:
  sub_100003540(0, &qword_10076C550);

  v56 = _bridgeCocoaArray<A>(_:)();

LABEL_19:
  v57 = sub_100003540(0, &unk_10076B890);
  v58._countAndFlagsBits = object;
  v58._object = v15;
  v133.value.super.isa = v25;
  v133.is_nil = 0;
  v119 = v57;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v58, 0, v133, 0, 0xFFFFFFFFFFFFFFFFLL, v56, v90).super.super.isa;
  v59 = static TTRListType.PredefinedSmartListType.allCases.getter();
  v131 = _swiftEmptyArrayStorage;
  v60 = *(v59 + 16);
  if (v60)
  {
    v125 = *(v106 + 16);
    v61 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v115 = v59;
    v62 = v59 + v61;
    v106 += 16;
    v124 = *(v106 + 56);
    LODWORD(v122) = enum case for TTRListType.PredefinedSmartListVisibility.undefined(_:);
    v121 = (v94 + 104);
    v63 = (v94 + 8);
    v120 = _swiftEmptyArrayStorage;
    v64 = v110;
    v65 = v97;
    v125(v97, v59 + v61, v110);
    while (1)
    {
      v66 = TTRListType.PredefinedSmartListType.remSmartListType.getter();
      REMSmartListType.title.getter();
      v68 = v67;

      if (!v68)
      {
        (*v123)(v65, v64);
        goto LABEL_22;
      }

      TTRListType.PredefinedSmartListType.defaultVisibility.getter();
      (*v121)(v108, v122, v109);
      sub_10005C26C();
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v126 == v129 && v127 == v130)
      {
        v69 = *v63;
        v70 = v109;
        (*v63)(v108, v109);
        v69(v107, v70);
      }

      else
      {
        v71 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v72 = *v63;
        v73 = v109;
        (*v63)(v108, v109);
        v72(v107, v73);

        if ((v71 & 1) == 0)
        {
          v65 = v97;
          v64 = v110;
          (*v123)(v97, v110);

          goto LABEL_22;
        }
      }

      sub_100003540(0, &unk_10076BD00);
      v74 = v97;
      v75 = TTRListType.PredefinedSmartListType.rawValue.getter();
      v128 = &type metadata for String;
      v126 = v75;
      v127 = v76;
      v65 = v74;
      UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      v64 = v110;
      (*v123)(v74, v110);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v65 = v97;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v120 = v131;
LABEL_22:
      v62 += v124;
      if (!--v60)
      {

        v77 = v120;
        goto LABEL_35;
      }

      v125(v65, v62, v64);
    }
  }

  v77 = _swiftEmptyArrayStorage;
LABEL_35:
  v78._countAndFlagsBits = 0x616D5320776F6853;
  v78._object = 0xEF7473694C207472;
  v79._countAndFlagsBits = 0xD000000000000035;
  v79._object = 0x800000010066EBE0;
  v80 = TTRLocalizedString(_:comment:)(v78, v79);
  v81 = String._bridgeToObjectiveC()();
  v82 = [v116 _systemImageNamed:v81];

  if (v77 >> 62)
  {
    sub_100003540(0, &qword_10076C550);

    v83 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550);
    v83 = v77;
  }

  v134.value.super.isa = v82;
  v134.is_nil = 0;
  v84.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v80, 0, v134, 0, 0xFFFFFFFFFFFFFFFFLL, v83, v91.super.super.isa).super.super.isa;
  if (qword_100766E70 != -1)
  {
    swift_once();
  }

  v85 = qword_100768310;
  sub_100058000(&qword_10076B780);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_10062D410;
  *(v86 + 32) = isa;
  *(v86 + 40) = v84;
  v87 = v85;
  v88._countAndFlagsBits = 0;
  v88._object = 0xE000000000000000;
  v135.value.super.isa = 0;
  v135.is_nil = v85;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v88, 0, v135, 1, 0xFFFFFFFFFFFFFFFFLL, v86, v92.super.super.isa);
}

UIMenu sub_10005B7F0()
{
  v0._object = 0x800000010066EA10;
  v1._countAndFlagsBits = 0xD000000000000023;
  v1._object = 0x800000010066EA30;
  v0._countAndFlagsBits = 0xD000000000000011;
  v2 = TTRLocalizedString(_:comment:)(v0, v1);
  sub_100003540(0, &unk_10076BAB0);
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 _systemImageNamed:v3];

  v6 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v7._object = 0x800000010066EA80;
  v8._countAndFlagsBits = 0xD000000000000023;
  v8._object = 0x800000010066EAA0;
  v7._countAndFlagsBits = 0xD000000000000011;
  countAndFlagsBits = TTRLocalizedString(_:comment:)(v7, v8)._countAndFlagsBits;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v4 _systemImageNamed:{v10, _swiftEmptyArrayStorage, v2._countAndFlagsBits, v2._object, 0, 0}];

  children._rawValue = countAndFlagsBits;
  v12 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100003540(0, &unk_10076B890);
  if (qword_100766E88 != -1)
  {
    swift_once();
  }

  v13 = qword_100768328;
  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D410;
  *(preferredElementSize + 32) = v6;
  *(preferredElementSize + 40) = v12;
  v15 = v13;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v19.value.super.isa = 0;
  v19.is_nil = v13;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v19, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children);
}

void sub_10005BAA8(void *a1, uint64_t a2)
{
  v3._countAndFlagsBits = 0x7473694C207341;
  v4._object = 0x800000010066E930;
  v3._object = 0xE700000000000000;
  v4._countAndFlagsBits = 0xD000000000000028;
  TTRLocalizedString(_:comment:)(v3, v4);
  sub_100003540(0, &unk_10076BD00);
  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 _systemImageNamed:v5];

  v8 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v9._countAndFlagsBits = 0x6D756C6F43207341;
  v10._countAndFlagsBits = 0xD00000000000002ALL;
  v10._object = 0x800000010066E960;
  v9._object = 0xEA0000000000736ELL;
  TTRLocalizedString(_:comment:)(v9, v10);
  static TTRCommonAsset.Image.columnsIcon.getter();
  v11 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_100003540(0, &unk_10076B890);
  if (qword_100766E60 != -1)
  {
    swift_once();
  }

  v12 = qword_100768300;
  sub_100058000(&qword_10076B780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D410;
  *(preferredElementSize + 32) = v8;
  *(preferredElementSize + 40) = v11;
  v14 = v12;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v56.value.super.isa = 0;
  v56.is_nil = v12;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v15, 0, v56, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;
  [a1 insertChildMenu:isa atStartOfMenuForIdentifier:UIMenuView];

  v17._countAndFlagsBits = 0x79422074726F53;
  v18._object = 0x800000010066E990;
  v17._object = 0xE700000000000000;
  v18._countAndFlagsBits = 0xD000000000000028;
  v19 = TTRLocalizedString(_:comment:)(v17, v18);
  v20 = static UIDeferredMenuElementIdentifier.sortByIdentifier.getter();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v6 _systemImageNamed:v21];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10062D420;
  *(v23 + 32) = [objc_opt_self() elementUsingFocusWithIdentifier:v20 shouldCacheItems:0];
  v57.value.super.isa = v22;
  v57.is_nil = 0;
  v24.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, 0, v57, 0, 0xFFFFFFFFFFFFFFFFLL, v23, childrenb).super.super.isa;
  if (qword_100766E68 != -1)
  {
    swift_once();
  }

  v25 = qword_100768308;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10062D420;
  *(v26 + 32) = v24;
  v27 = v25;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v58.value.super.isa = 0;
  v58.is_nil = v25;
  v29 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v28, 0, v58, 1, 0xFFFFFFFFFFFFFFFFLL, v26, children.super.super.isa).super.super.isa;

  [a1 insertSiblingMenu:v29 afterMenuForIdentifier:v14];
  v30 = sub_10005A6E8(a2).super.super.isa;
  [a1 insertSiblingMenu:v30 afterMenuForIdentifier:v27];

  v31._countAndFlagsBits = 0x79422070756F7247;
  v31._object = 0xED0000656D695420;
  v32._countAndFlagsBits = 0xD00000000000002ALL;
  v32._object = 0x800000010066E9E0;
  TTRLocalizedString(_:comment:)(v31, v32);
  v33 = String._bridgeToObjectiveC()();
  v34 = [v6 _systemImageNamed:v33];

  v35 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_100766E78 != -1)
  {
    swift_once();
  }

  v36 = qword_100768318;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10062D420;
  *(v37 + 32) = v35;
  v38 = v36;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v59.value.super.isa = 0;
  v59.is_nil = v36;
  v40.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v39, 0, v59, 1, 0xFFFFFFFFFFFFFFFFLL, v37, 0).super.super.isa;
  if (qword_100766E70 != -1)
  {
    swift_once();
  }

  [a1 insertSiblingMenu:v40.super.super.isa afterMenuForIdentifier:qword_100768310];

  v41 = static TTRLocalizableStrings.RemindersList.showCompletedRemindersButtonText.getter();
  sub_100003540(0, &unk_10076BAB0);
  v42 = String._bridgeToObjectiveC()();
  v43 = [v6 _systemImageNamed:v42];

  childrena._rawValue = v41;
  v44 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_100766E80 != -1)
  {
    swift_once();
  }

  v45 = qword_100768320;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_10062D420;
  *(v46 + 32) = v44;
  v47 = v45;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v60.value.super.isa = 0;
  v60.is_nil = v45;
  v49 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v48, 0, v60, 1, 0xFFFFFFFFFFFFFFFFLL, v46, childrena).super.super.isa;
  [a1 insertSiblingMenu:v49 afterMenuForIdentifier:v38];

  v54.super.super.isa = sub_10005B7F0().super.super.isa;
  [a1 insertSiblingMenu:v54.super.super.isa afterMenuForIdentifier:v47];
}

unint64_t sub_10005C26C()
{
  result = qword_100768340;
  if (!qword_100768340)
  {
    type metadata accessor for TTRListType.PredefinedSmartListVisibility();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100768340);
  }

  return result;
}

uint64_t sub_10005C2C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005C328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10005C390()
{
  result = qword_10076BD80;
  if (!qword_10076BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076BD80);
  }

  return result;
}

uint64_t sub_10005C3E4(uint64_t a1)
{
  v2 = type metadata accessor for TTRIKeyboardShortcuts.ListNavigationShortcutItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_10005C448()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10005C490()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10005C4D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t sub_10005C534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UICellAccessory.DisplayedState.== infix(_:_:)())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_10005C5C4(id *a1)
{
  v3 = type metadata accessor for TTRListBadgeView.ImageParams();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRListBadgeView.Shape();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListBadgeView.ColorInfo();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
  __chkstk_darwin(v15);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a1;
  dispatch thunk of TTRListBadgeView.image.setter();
  v19 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
  v20 = v19[5];
  v29 = a1;
  sub_100037554(a1 + v20, v17, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v17;
    [v1 setTintColor:v21];
  }

  else
  {
    (*(v9 + 32))(v14, v17, v8);
    (*(v9 + 16))(v12, v14, v8);
    dispatch thunk of TTRListBadgeView.listColorInfo.setter();
    (*(v9 + 8))(v14, v8);
  }

  v22 = v29;
  (*(v24 + 16))(v7, v29 + v19[6], v25);
  dispatch thunk of TTRListBadgeView.shape.setter();
  (*(v27 + 16))(v26, v22 + v19[7], v28);
  dispatch thunk of TTRListBadgeView.imageParams.setter();
  dispatch thunk of TTRListBadgeView.ttrAccessibilityName.setter();
  return dispatch thunk of TTRListBadgeView.ttrAccessibilityShouldIgnoreAccessibilityName.setter();
}

id sub_10005CBF4()
{
  v1 = sub_100058000(&qword_100768848);
  __chkstk_darwin(v1 - 8);
  v3 = v37 - v2;
  v4 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeConfiguration;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &qword_100768848);
  v5 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration(0);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1000079B4(v3, &qword_100768848);
  if (v4 == 1)
  {
    return 0;
  }

  v6 = v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews;
  v7 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v6 + 8);
  v9 = v8;
  sub_100037C44(v7, v8);
  sub_100037C04(v7, v8);
  v10 = [v9 accessibilityLabel];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v37[0] = v17 + 1;
      v35 = sub_100546970((v16 > 1), v17 + 1, 1, v15);
      v18 = v37[0];
      v15 = v35;
    }

    *(v15 + 2) = v18;
    v19 = &v15[16 * v17];
    *(v19 + 4) = v12;
    *(v19 + 5) = v14;
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v21 = [v9 accessibilityValue];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_100546970(0, *(v15 + 2) + 1, 1, v15);
    }

    v27 = *(v15 + 2);
    v26 = *(v15 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v37[0] = v27 + 1;
      v36 = sub_100546970((v26 > 1), v27 + 1, 1, v15);
      v28 = v37[0];
      v15 = v36;
    }

    *(v15 + 2) = v28;
    v29 = &v15[16 * v27];
    *(v29 + 4) = v23;
    *(v29 + 5) = v25;
  }

  v37[10] = v15;
  static TTRAccesibility.General.Label.Separator.getter();
  sub_100058000(&unk_100781F20);
  sub_10006089C();
  BidirectionalCollection<>.joined(separator:)();

  sub_100058000(&unk_100776BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = static NSAttributedStringKey.ttriAccessibilityLowPitch.getter();
  *(inited + 64) = &type metadata for Bool;
  *(inited + 40) = 1;
  sub_100460A28(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_100776BE0);
  v31 = objc_allocWithZone(NSAttributedString);
  v32 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1000335B8(&qword_100778A60, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v34 = [v31 initWithString:v32 attributes:isa];

  return v34;
}

uint64_t sub_10005D038()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeConfiguration, &qword_100768848);

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_disclosureIndicatorConfiguration, &qword_100768830);
  sub_100037C04(*(v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews), *(v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews + 8));
  sub_100033844(v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_labelAccessory, type metadata accessor for LabelAccessory);
  return sub_100033844(v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_disclosureIndicatorAccessory, type metadata accessor for DisclosureIndicatorAccessory);
}

id sub_10005D0FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAccountsListsBaseCell_collectionView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005D20C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_10005D368(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v9 = *(sub_100058000(a4) - 8);
  v10 = *(v9 + 80);
  if ((v10 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + ((v10 + 16) & ~v10));

    return a1;
  }

  v11 = v9;
  v12 = sub_100058000(a6);
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(a2, 1, v12))
  {
    (*(v13 + 16))(a1, a2, v12);
    (*(v13 + 56))(a1, 0, 1, v12);
    return a1;
  }

  v14 = *(v11 + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_10005D4FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100058000(a3);
  v7 = *(v4 - 8);
  result = (*(v7 + 48))(a1, 1, v4);
  if (!result)
  {
    v6 = *(v7 + 8);

    return v6(a1, v4);
  }

  return result;
}

void *sub_10005D5F4(void *a1, const void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v9 = sub_100058000(a4);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2, 1, v9))
  {
    v11 = *(*(sub_100058000(a6) - 8) + 64);

    return memcpy(a1, a2, v11);
  }

  else
  {
    (*(v10 + 16))(a1, a2, v9);
    (*(v10 + 56))(a1, 0, 1, v9);
    return a1;
  }
}

void *sub_10005D758(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v9 = sub_100058000(a4);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1, 1, v9);
  v13 = v11(a2, 1, v9);
  if (v12)
  {
    if (!v13)
    {
      (*(v10 + 16))(a1, a2, v9);
      (*(v10 + 56))(a1, 0, 1, v9);
      return a1;
    }
  }

  else
  {
    if (!v13)
    {
      (*(v10 + 24))(a1, a2, v9);
      return a1;
    }

    (*(v10 + 8))(a1, v9);
  }

  v14 = *(*(sub_100058000(a6) - 8) + 64);

  return memcpy(a1, a2, v14);
}

void *sub_10005D930(void *a1, const void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v9 = sub_100058000(a4);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a2, 1, v9))
  {
    v11 = *(*(sub_100058000(a6) - 8) + 64);

    return memcpy(a1, a2, v11);
  }

  else
  {
    (*(v10 + 32))(a1, a2, v9);
    (*(v10 + 56))(a1, 0, 1, v9);
    return a1;
  }
}

void *sub_10005DA94(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v9 = sub_100058000(a4);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1, 1, v9);
  v13 = v11(a2, 1, v9);
  if (v12)
  {
    if (!v13)
    {
      (*(v10 + 32))(a1, a2, v9);
      (*(v10 + 56))(a1, 0, 1, v9);
      return a1;
    }
  }

  else
  {
    if (!v13)
    {
      (*(v10 + 40))(a1, a2, v9);
      return a1;
    }

    (*(v10 + 8))(a1, v9);
  }

  v14 = *(*(sub_100058000(a6) - 8) + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_10005DC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = sub_100058000(a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_10005DCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_100058000(a5);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_10005DD5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for TTRIAccountsListsBaseCell_collectionView.TertiaryLabelConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

__n128 initializeWithTake for TTRIAccountsListsBaseCell_collectionView.TertiaryLabelConfiguration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIAccountsListsBaseCell_collectionView.TertiaryLabelConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIAccountsListsBaseCell_collectionView.TertiaryLabelConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for TTRIAccountsListsBaseCell_collectionView.TertiaryLabelConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10005DED8(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t sub_10005DFA0(uint64_t a1)
{
  v2 = type metadata accessor for UICellAccessory.DisplayedState();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_10005E004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_10005E080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_10005E0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_10005E178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

char *sub_10005E1F4(char *a1, char *a2)
{
  v4 = *(*(type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = &v11[(v4 + 16) & ~v4];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *a2;
      *a1 = *a2;
      v6 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
      v7 = v6[5];
      type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
      v8 = v5;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v9 = *&a2[v7];
        *&a1[v7] = v9;
        v10 = v9;
      }

      else
      {
        v13 = type metadata accessor for TTRListBadgeView.ColorInfo();
        (*(*(v13 - 8) + 16))(&a1[v7], &a2[v7], v13);
      }

      swift_storeEnumTagMultiPayload();
      v14 = v6[6];
      v15 = type metadata accessor for TTRListBadgeView.Shape();
      (*(*(v15 - 8) + 16))(&a1[v14], &a2[v14], v15);
      v16 = v6[7];
      v17 = type metadata accessor for TTRListBadgeView.ImageParams();
      (*(*(v17 - 8) + 16))(&a1[v16], &a2[v16], v17);
    }

    else
    {
      v12 = type metadata accessor for TTRListDetailBadgeViewModel();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void **sub_10005E418(void **a1, void **a2)
{
  if (a1 != a2)
  {
    sub_100033844(a1, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      v5 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
      v6 = v5[5];
      type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
      v7 = v4;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v8 = *(a2 + v6);
        *(a1 + v6) = v8;
        v9 = v8;
      }

      else
      {
        v11 = type metadata accessor for TTRListBadgeView.ColorInfo();
        (*(*(v11 - 8) + 16))(a1 + v6, a2 + v6, v11);
      }

      swift_storeEnumTagMultiPayload();
      v12 = v5[6];
      v13 = type metadata accessor for TTRListBadgeView.Shape();
      (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
      v14 = v5[7];
      v15 = type metadata accessor for TTRListBadgeView.ImageParams();
      (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
    }

    else
    {
      v10 = type metadata accessor for TTRListDetailBadgeViewModel();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_10005E614(char *a1, char *a2)
{
  type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v4 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
    v5 = v4[5];
    v6 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v5], &a2[v5], *(*(v6 - 8) + 64));
    }

    else
    {
      v8 = type metadata accessor for TTRListBadgeView.ColorInfo();
      (*(*(v8 - 8) + 32))(&a1[v5], &a2[v5], v8);
      swift_storeEnumTagMultiPayload();
    }

    v9 = v4[6];
    v10 = type metadata accessor for TTRListBadgeView.Shape();
    (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
    v11 = v4[7];
    v12 = type metadata accessor for TTRListBadgeView.ImageParams();
    (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
  }

  else
  {
    v7 = type metadata accessor for TTRListDetailBadgeViewModel();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_10005E7EC(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_100033844(a1, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      v4 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
      v5 = v4[5];
      v6 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(&a1[v5], &a2[v5], *(*(v6 - 8) + 64));
      }

      else
      {
        v8 = type metadata accessor for TTRListBadgeView.ColorInfo();
        (*(*(v8 - 8) + 32))(&a1[v5], &a2[v5], v8);
        swift_storeEnumTagMultiPayload();
      }

      v9 = v4[6];
      v10 = type metadata accessor for TTRListBadgeView.Shape();
      (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
      v11 = v4[7];
      v12 = type metadata accessor for TTRListBadgeView.ImageParams();
      (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
    }

    else
    {
      v7 = type metadata accessor for TTRListDetailBadgeViewModel();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_10005E9E8(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = &v8[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      v7 = v6;
    }

    else
    {
      v9 = type metadata accessor for TTRListBadgeView.ColorInfo();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_10005EAE4(void **a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *a1;
  }

  else
  {
    v3 = type metadata accessor for TTRListBadgeView.ColorInfo();
    v4 = *(*(v3 - 8) + 8);

    v4(a1, v3);
  }
}

void **sub_10005EB74(void **a1, void **a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    v5 = v4;
  }

  else
  {
    v6 = type metadata accessor for TTRListBadgeView.ColorInfo();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **sub_10005EC24(void **a1, void **a2)
{
  if (a1 != a2)
  {
    sub_100033844(a1, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      v5 = v4;
    }

    else
    {
      v6 = type metadata accessor for TTRListBadgeView.ColorInfo();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *sub_10005ECF8(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for TTRListBadgeView.ColorInfo();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_10005EDC4(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100033844(a1, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for TTRListBadgeView.ColorInfo();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void **sub_10005EEB4(void **a1, void **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = a3[5];
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
    v9 = v4;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = *(a2 + v8);
      *(v7 + v8) = v10;
      v11 = v10;
    }

    else
    {
      v12 = type metadata accessor for TTRListBadgeView.ColorInfo();
      (*(*(v12 - 8) + 16))(v7 + v8, a2 + v8, v12);
    }

    swift_storeEnumTagMultiPayload();
    v13 = a3[6];
    v14 = type metadata accessor for TTRListBadgeView.Shape();
    (*(*(v14 - 8) + 16))(v7 + v13, a2 + v13, v14);
    v15 = a3[7];
    v16 = type metadata accessor for TTRListBadgeView.ImageParams();
    (*(*(v16 - 8) + 16))(v7 + v15, a2 + v15, v16);
  }

  return v7;
}

uint64_t sub_10005F048(id *a1, int *a2)
{
  v4 = a2[5];
  type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = type metadata accessor for TTRListBadgeView.ColorInfo();
    (*(*(v5 - 8) + 8))(a1 + v4, v5);
  }

  v6 = a2[6];
  v7 = type metadata accessor for TTRListBadgeView.Shape();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = a2[7];
  v9 = type metadata accessor for TTRListBadgeView.ImageParams();
  v10 = *(*(v9 - 8) + 8);

  return v10(a1 + v8, v9);
}

void **sub_10005F164(void **a1, void **a2, int *a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = a3[5];
  type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
  v8 = v6;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(a2 + v7);
    *(a1 + v7) = v9;
    v10 = v9;
  }

  else
  {
    v11 = type metadata accessor for TTRListBadgeView.ColorInfo();
    (*(*(v11 - 8) + 16))(a1 + v7, a2 + v7, v11);
  }

  swift_storeEnumTagMultiPayload();
  v12 = a3[6];
  v13 = type metadata accessor for TTRListBadgeView.Shape();
  (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
  v14 = a3[7];
  v15 = type metadata accessor for TTRListBadgeView.ImageParams();
  (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
  return a1;
}

void **sub_10005F2B0(void **a1, void **a2, int *a3)
{
  v6 = *a1;
  v7 = *a2;
  *a1 = *a2;
  v8 = v7;

  if (a1 != a2)
  {
    v9 = a3[5];
    sub_100033844(a1 + v9, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color);
    type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = *(a2 + v9);
      *(a1 + v9) = v10;
      v11 = v10;
    }

    else
    {
      v12 = type metadata accessor for TTRListBadgeView.ColorInfo();
      (*(*(v12 - 8) + 16))(a1 + v9, a2 + v9, v12);
    }

    swift_storeEnumTagMultiPayload();
  }

  v13 = a3[6];
  v14 = type metadata accessor for TTRListBadgeView.Shape();
  (*(*(v14 - 8) + 24))(a1 + v13, a2 + v13, v14);
  v15 = a3[7];
  v16 = type metadata accessor for TTRListBadgeView.ImageParams();
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  return a1;
}

char *sub_10005F428(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(&a1[v6], &a2[v6], *(*(v7 - 8) + 64));
  }

  else
  {
    v8 = type metadata accessor for TTRListBadgeView.ColorInfo();
    (*(*(v8 - 8) + 32))(&a1[v6], &a2[v6], v8);
    swift_storeEnumTagMultiPayload();
  }

  v9 = a3[6];
  v10 = type metadata accessor for TTRListBadgeView.Shape();
  (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
  v11 = a3[7];
  v12 = type metadata accessor for TTRListBadgeView.ImageParams();
  (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
  return a1;
}

void **sub_10005F57C(void **a1, void **a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  if (a1 != a2)
  {
    v7 = a3[5];
    sub_100033844(a1 + v7, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color);
    v8 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1 + v7, a2 + v7, *(*(v8 - 8) + 64));
    }

    else
    {
      v9 = type metadata accessor for TTRListBadgeView.ColorInfo();
      (*(*(v9 - 8) + 32))(a1 + v7, a2 + v7, v9);
      swift_storeEnumTagMultiPayload();
    }
  }

  v10 = a3[6];
  v11 = type metadata accessor for TTRListBadgeView.Shape();
  (*(*(v11 - 8) + 40))(a1 + v10, a2 + v10, v11);
  v12 = a3[7];
  v13 = type metadata accessor for TTRListBadgeView.ImageParams();
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  return a1;
}

char *sub_10005F724(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = &v12[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      v7 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
      v8 = v7[5];
      type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
      v9 = v6;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = *&a2[v8];
        *&a1[v8] = v10;
        v11 = v10;
      }

      else
      {
        v14 = type metadata accessor for TTRListBadgeView.ColorInfo();
        (*(*(v14 - 8) + 16))(&a1[v8], &a2[v8], v14);
      }

      swift_storeEnumTagMultiPayload();
      v15 = v7[6];
      v16 = type metadata accessor for TTRListBadgeView.Shape();
      (*(*(v16 - 8) + 16))(&a1[v15], &a2[v15], v16);
      v17 = v7[7];
      v18 = type metadata accessor for TTRListBadgeView.ImageParams();
      (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
    }

    else
    {
      v13 = type metadata accessor for TTRListDetailBadgeViewModel();
      (*(*(v13 - 8) + 16))(a1, a2, v13);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void **sub_10005F940(void **a1, void **a2)
{
  if (a1 != a2)
  {
    sub_100033844(a1, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      v5 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
      v6 = v5[5];
      type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
      v7 = v4;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v8 = *(a2 + v6);
        *(a1 + v6) = v8;
        v9 = v8;
      }

      else
      {
        v11 = type metadata accessor for TTRListBadgeView.ColorInfo();
        (*(*(v11 - 8) + 16))(a1 + v6, a2 + v6, v11);
      }

      swift_storeEnumTagMultiPayload();
      v12 = v5[6];
      v13 = type metadata accessor for TTRListBadgeView.Shape();
      (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
      v14 = v5[7];
      v15 = type metadata accessor for TTRListBadgeView.ImageParams();
      (*(*(v15 - 8) + 16))(a1 + v14, a2 + v14, v15);
    }

    else
    {
      v10 = type metadata accessor for TTRListDetailBadgeViewModel();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_10005FB34(char *a1, char *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v4 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
    v5 = v4[5];
    v6 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(&a1[v5], &a2[v5], *(*(v6 - 8) + 64));
    }

    else
    {
      v8 = type metadata accessor for TTRListBadgeView.ColorInfo();
      (*(*(v8 - 8) + 32))(&a1[v5], &a2[v5], v8);
      swift_storeEnumTagMultiPayload();
    }

    v9 = v4[6];
    v10 = type metadata accessor for TTRListBadgeView.Shape();
    (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
    v11 = v4[7];
    v12 = type metadata accessor for TTRListBadgeView.ImageParams();
    (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
  }

  else
  {
    v7 = type metadata accessor for TTRListDetailBadgeViewModel();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *sub_10005FD04(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_100033844(a1, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      v4 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
      v5 = v4[5];
      v6 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
      if (swift_getEnumCaseMultiPayload())
      {
        memcpy(&a1[v5], &a2[v5], *(*(v6 - 8) + 64));
      }

      else
      {
        v8 = type metadata accessor for TTRListBadgeView.ColorInfo();
        (*(*(v8 - 8) + 32))(&a1[v5], &a2[v5], v8);
        swift_storeEnumTagMultiPayload();
      }

      v9 = v4[6];
      v10 = type metadata accessor for TTRListBadgeView.Shape();
      (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
      v11 = v4[7];
      v12 = type metadata accessor for TTRListBadgeView.ImageParams();
      (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
    }

    else
    {
      v7 = type metadata accessor for TTRListDetailBadgeViewModel();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10005FFBC(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for TTRListBadgeView.ColorInfo();
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = sub_100058000(&qword_100768840);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v24 - v15;
  v17 = *(v14 + 56);
  sub_100037554(a1, &v24 - v15, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color);
  sub_100037554(a2, &v16[v17], type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100037554(v16, v10, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color);
    v18 = *v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = *&v16[v17];
      sub_100003540(0, &qword_100775690);
      v20 = static NSObject.== infix(_:_:)();

LABEL_9:
      sub_100033844(v16, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color);
      return v20 & 1;
    }
  }

  else
  {
    sub_100037554(v16, v12, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = v25;
      (*(v4 + 32))(v6, &v16[v17], v25);
      v20 = static TTRListBadgeView.ColorInfo.== infix(_:_:)();
      v22 = *(v4 + 8);
      v22(v6, v21);
      v22(v12, v21);
      goto LABEL_9;
    }

    (*(v4 + 8))(v12, v25);
  }

  sub_1000079B4(v16, &qword_100768840);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1000602EC(void **a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100003540(0, &qword_10076FCB0);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
  if ((sub_10005FFBC(a1 + *(v9 + 20), a2 + *(v9 + 20)) & 1) == 0 || (static TTRListBadgeView.Shape.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static TTRListBadgeView.ImageParams.== infix(_:_:)();
}

uint64_t sub_1000603E4(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v29 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
  __chkstk_darwin(v29);
  v30 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TTRListDetailBadgeViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
  v9 = __chkstk_darwin(v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = sub_100058000(&qword_100768838);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v28 - v16;
  v18 = *(v15 + 56);
  sub_100037554(a1, &v28 - v16, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
  sub_100037554(v31, &v17[v18], type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100037554(v17, v11, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v30;
      sub_10003778C(&v17[v18], v30, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge);
      v20 = *v11;
      v21 = *v19;
      if (*v11)
      {
        if (!v21)
        {
          goto LABEL_17;
        }

        sub_100003540(0, &qword_10076FCB0);
        v22 = v21;
        v23 = v20;
        v24 = static NSObject.== infix(_:_:)();

        if ((v24 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v21)
      {
        goto LABEL_17;
      }

      if (sub_10005FFBC(v11 + *(v29 + 20), v19 + *(v29 + 20)) & 1) != 0 && (static TTRListBadgeView.Shape.== infix(_:_:)() & 1) != 0 && (static TTRListBadgeView.ImageParams.== infix(_:_:)())
      {
        sub_100033844(v19, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge);
        sub_100033844(v11, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge);
        sub_100033844(v17, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
        v25 = 1;
        return v25 & 1;
      }

LABEL_17:
      sub_100033844(v19, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge);
      sub_100033844(v11, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge);
      sub_100033844(v17, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
      goto LABEL_18;
    }

    sub_100033844(v11, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge);
LABEL_10:
    sub_1000079B4(v17, &qword_100768838);
LABEL_18:
    v25 = 0;
    return v25 & 1;
  }

  sub_100037554(v17, v13, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_10;
  }

  (*(v5 + 32))(v7, &v17[v18], v4);
  v25 = static TTRListDetailBadgeViewModel.== infix(_:_:)();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v13, v4);
  sub_100033844(v17, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content);
  return v25 & 1;
}

unint64_t sub_10006089C()
{
  result = qword_100771E20;
  if (!qword_100771E20)
  {
    sub_10005D20C(&unk_100781F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100771E20);
  }

  return result;
}

void sub_100060900()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeConfiguration;
  v2 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  v4 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_disclosureIndicatorConfiguration;
  v5 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_isContentConfigurationInitialized) = 0;
  v6 = (v0 + OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeViews);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_labelAccessory;
  v8 = sub_100058000(&qword_1007683D8);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_disclosureIndicatorAccessory;
  v10 = sub_100058000(&qword_1007683E8);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t *sub_100060AC8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_100058000(&qword_100768830);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = type metadata accessor for UICellAccessory.DisplayedState();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v12 = *(a3 + 20);
    v13 = type metadata accessor for UICellConfigurationState();
    (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
  }

  return a1;
}

char *sub_100060CA0(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100768830);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    a1[*(v6 + 20)] = a2[*(v6 + 20)];
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = *(a3 + 20);
  v11 = type metadata accessor for UICellConfigurationState();
  (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
  return a1;
}

_BYTE *sub_100060E2C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v16 = type metadata accessor for UICellAccessory.DisplayedState();
      (*(*(v16 - 8) + 24))(a1, a2, v16);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      goto LABEL_7;
    }

    sub_100033844(a1, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = sub_100058000(&qword_100768830);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  v11 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v11 - 8) + 16))(a1, a2, v11);
  a1[*(v6 + 20)] = a2[*(v6 + 20)];
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v13 = *(a3 + 20);
  v14 = type metadata accessor for UICellConfigurationState();
  (*(*(v14 - 8) + 24))(&a1[v13], &a2[v13], v14);
  return a1;
}

char *sub_10006104C(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100768830);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for UICellAccessory.DisplayedState();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    a1[*(v6 + 20)] = a2[*(v6 + 20)];
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v10 = *(a3 + 20);
  v11 = type metadata accessor for UICellConfigurationState();
  (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
  return a1;
}

_BYTE *sub_1000611D8(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v16 = type metadata accessor for UICellAccessory.DisplayedState();
      (*(*(v16 - 8) + 40))(a1, a2, v16);
      a1[*(v6 + 20)] = a2[*(v6 + 20)];
      goto LABEL_7;
    }

    sub_100033844(a1, type metadata accessor for TTRIAccountsListsBaseCell_collectionView.DisclosureIndicatorConfiguration);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = sub_100058000(&qword_100768830);
    memcpy(a1, a2, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  v11 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v11 - 8) + 32))(a1, a2, v11);
  a1[*(v6 + 20)] = a2[*(v6 + 20)];
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v13 = *(a3 + 20);
  v14 = type metadata accessor for UICellConfigurationState();
  (*(*(v14 - 8) + 40))(&a1[v13], &a2[v13], v14);
  return a1;
}

char *sub_100061420(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v5;
    *(a1 + 16) = *(a2 + 16);
    v6 = *(a3 + 20);
    v8 = type metadata accessor for UICellConfigurationState();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v6], a2 + v6, v8);
  }

  return v3;
}

uint64_t sub_100061508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 20);
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t sub_1000615A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 20);
  v7 = type metadata accessor for UICellConfigurationState();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  return a1;
}

uint64_t sub_100061640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UICellConfigurationState();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t sub_1000616C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for UICellConfigurationState();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIAccountsListsBaseCell_collectionView.TertiaryLabelConfiguration.Visibility(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TTRIAccountsListsBaseCell_collectionView.TertiaryLabelConfiguration.Visibility(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000618D4()
{
  result = qword_1007689A0;
  if (!qword_1007689A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007689A0);
  }

  return result;
}

uint64_t sub_100061964(uint64_t a1)
{
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__item;
  swift_beginAccess();
  sub_10000794C(v1 + v6, v5, &qword_100772140);
  v7 = sub_100065678(v5, a1);
  sub_1000079B4(v5, &qword_100772140);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_100019180(a1, v1 + v6, &qword_100772140);
    swift_endAccess();
  }

  return sub_1000079B4(a1, &qword_100772140);
}

uint64_t sub_100061B84@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return sub_10000794C(v9 + v7, a3, a2);
}

uint64_t sub_100061C64(uint64_t a1)
{
  v3 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__sectionID;
  swift_beginAccess();
  sub_10000794C(v1 + v6, v5, &qword_10076B070);
  v7 = sub_100065998(v5, a1);
  sub_1000079B4(v5, &qword_10076B070);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_100019180(a1, v1 + v6, &qword_10076B070);
    swift_endAccess();
  }

  return sub_1000079B4(a1, &qword_10076B070);
}

uint64_t sub_100061E60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_100019180(a2, a1 + v7, a4);
  return swift_endAccess();
}

void *sub_100061EE0()
{
  swift_getKeyPath();
  sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__listObjectID);
  v2 = v1;
  return v1;
}

void sub_100061F90(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__listObjectID;
  v5 = *(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__listObjectID);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_10001DF64();
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_100062178(uint64_t a1)
{
  v3 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__title;
  swift_beginAccess();
  sub_10000794C(v1 + v6, v5, &unk_10076B050);
  v7 = sub_100065CB8(v5, a1);
  sub_1000079B4(v5, &unk_10076B050);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_100019180(a1, v1 + v6, &unk_10076B050);
    swift_endAccess();
  }

  return sub_1000079B4(a1, &unk_10076B050);
}

uint64_t sub_100062388(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_100062450(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000625EC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__effectiveSeparator;
  swift_beginAccess();
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1000626E4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__effectiveSeparator;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1000660D0(&qword_100768B70, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(a1, v4);
}

uint64_t sub_100062964(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__effectiveSeparator;
  swift_beginAccess();
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100062B14@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100062C88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100768B78);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = sub_100058000(&qword_10076B070);
  v13 = __chkstk_darwin(v12 - 8);
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v27 - v16;
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v32 = v3;

  v30 = a1;
  v20 = v31;
  swift_getAtKeyPath();

  v21 = *(v9 + 56);
  sub_10000794C(v19, v11, &qword_10076B070);
  sub_10000794C(v20, &v11[v21], &qword_10076B070);
  v22 = *(v6 + 48);
  if (v22(v11, 1, v5) == 1)
  {
    sub_1000079B4(v19, &qword_10076B070);
    if (v22(&v11[v21], 1, v5) == 1)
    {
      return sub_1000079B4(v11, &qword_10076B070);
    }

    goto LABEL_6;
  }

  sub_10000794C(v11, v17, &qword_10076B070);
  if (v22(&v11[v21], 1, v5) == 1)
  {
    sub_1000079B4(v19, &qword_10076B070);
    (*(v6 + 8))(v17, v5);
LABEL_6:
    sub_1000079B4(v11, &qword_100768B78);
LABEL_7:
    sub_10000794C(v20, v29, &qword_10076B070);
    v32 = v3;

    swift_setAtReferenceWritableKeyPath();
  }

  v24 = v28;
  (*(v6 + 32))(v28, &v11[v21], v5);
  sub_1000660D0(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v6 + 8);
  v26(v24, v5);
  sub_1000079B4(v19, &qword_10076B070);
  v26(v17, v5);
  result = sub_1000079B4(v11, &qword_10076B070);
  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1000630B0(uint64_t a1, void *a2)
{

  swift_getAtKeyPath();

  if (v7)
  {
    if (a2)
    {
      sub_10001DF64();
      v3 = v7;
      v4 = a2;
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        return;
      }

LABEL_9:

      v6 = v4;
      swift_setAtReferenceWritableKeyPath();

      return;
    }

LABEL_8:
    v4 = a2;
    goto LABEL_9;
  }

  if (a2)
  {
    goto LABEL_8;
  }
}

uint64_t sub_100063198(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100768B50);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = sub_100058000(&unk_10076B050);
  v13 = __chkstk_darwin(v12 - 8);
  v29 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v27 - v16;
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v32 = v3;

  v30 = a1;
  v20 = v31;
  swift_getAtKeyPath();

  v21 = *(v9 + 56);
  sub_10000794C(v19, v11, &unk_10076B050);
  sub_10000794C(v20, &v11[v21], &unk_10076B050);
  v22 = *(v6 + 48);
  if (v22(v11, 1, v5) == 1)
  {
    sub_1000079B4(v19, &unk_10076B050);
    if (v22(&v11[v21], 1, v5) == 1)
    {
      return sub_1000079B4(v11, &unk_10076B050);
    }

    goto LABEL_6;
  }

  sub_10000794C(v11, v17, &unk_10076B050);
  if (v22(&v11[v21], 1, v5) == 1)
  {
    sub_1000079B4(v19, &unk_10076B050);
    (*(v6 + 8))(v17, v5);
LABEL_6:
    sub_1000079B4(v11, &qword_100768B50);
LABEL_7:
    sub_10000794C(v20, v29, &unk_10076B050);
    v32 = v3;

    swift_setAtReferenceWritableKeyPath();
  }

  v24 = v28;
  (*(v6 + 32))(v28, &v11[v21], v5);
  sub_1000660D0(&qword_100768B58, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v6 + 8);
  v26(v24, v5);
  sub_1000079B4(v19, &unk_10076B050);
  v26(v17, v5);
  result = sub_1000079B4(v11, &unk_10076B050);
  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000635C0()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__item, &qword_100772140);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__sectionID, &qword_10076B070);

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__title, &unk_10076B050);
  v1 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__effectiveSeparator;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel()
{
  result = qword_100768A48;
  if (!qword_100768A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100063760()
{
  sub_100063950(319, &qword_100780930, &type metadata accessor for TTRRemindersListViewModel.Item);
  if (v0 <= 0x3F)
  {
    sub_100063950(319, &qword_100768A58, &type metadata accessor for TTRRemindersListViewModel.SectionID);
    if (v1 <= 0x3F)
    {
      sub_100063950(319, &unk_100768A60, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle);
      if (v2 <= 0x3F)
      {
        type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
        if (v3 <= 0x3F)
        {
          type metadata accessor for ObservationRegistrar();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_100063950(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100063A04()
{
  v1 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__item;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + v1, 1, 1, v2);
  v4 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__sectionID;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  v6(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__listObjectID) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isCollapsable) = 0;
  v7 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__title;
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v9 = *(*(v8 - 8) + 56);
  v9(v0 + v7, 1, 1, v8);
  v9(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isShownAsHidden) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isInMultiSelectMode) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isExpanded) = 0;
  v10 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__effectiveSeparator;
  v11 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:);
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  (*(*(v12 - 8) + 104))(v0 + v10, v11, v12);
  *(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isTitleUserInteractionEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__showsSeparatorAsTransparent) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isTitleEditable) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__forceTopSeparatorHidden) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isUserInteractionEnabled) = 1;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_100063C48(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for TTRRemindersListItemSeparatorFlags();
  v4 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100058000(&qword_100768B88);
  __chkstk_darwin(v38);
  v11 = &v37 - v10;
  v12 = sub_100058000(&qword_100772140);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v42 = a1;
  TTRIRemindersListItemIntermediateViewModel.item.getter();
  sub_10006432C(v17);
  sub_10000794C(v17, v15, &qword_100772140);
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    sub_1000079B4(v15, &qword_100772140);
    v20 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  }

  else
  {
    TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
    (*(v19 + 8))(v15, v18);
    v21 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v11, 0, 1, v21);
    v23 = (*(v22 + 88))(v11, v21);
    if (v23 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.section(_:))
    {
      (*(v22 + 96))(v11, v21);
      v25 = v39;
      v24 = v40;
      (*(v39 + 32))(v9, v11, v40);
      sub_1000646A8();
      (*(v25 + 8))(v9, v24);
    }

    else if (v23 != enum case for TTRRemindersListViewModel.Item.SectionCasesItem.unknown(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }
  }

  TTRIRemindersListItemIntermediateViewModel.separatorFlags.getter();
  v26 = TTRRemindersListItemSeparatorFlags.forceTopSeparatorHiddenForSectionHeader.getter();
  v27 = v26 & 1;
  (*(v4 + 8))(v6, v41);
  swift_getKeyPath();
  v43 = v2;
  sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__forceTopSeparatorHidden;
  v29 = *(v2 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__forceTopSeparatorHidden);

  if (v27 != v29)
  {
    if (v27 == *(v2 + v28))
    {
      *(v2 + v28) = v26 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v37 - 2) = v2;
      *(&v37 - 8) = v26 & 1;
      v43 = v2;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v31 = TTRIRemindersListItemIntermediateViewModel.isUserInteractionEnabled.getter();
  v32 = v31 & 1;
  swift_getKeyPath();
  v43 = v2;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isUserInteractionEnabled;
  v34 = *(v2 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isUserInteractionEnabled);

  if (v32 != v34)
  {
    if (v32 == *(v2 + v33))
    {
      *(v2 + v33) = v31 & 1;
    }

    else
    {
      v35 = swift_getKeyPath();
      __chkstk_darwin(v35);
      *(&v37 - 2) = v2;
      *(&v37 - 8) = v31 & 1;
      v43 = v2;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  sub_100064C30();
  sub_100065158();
  return sub_1000079B4(v17, &qword_100772140);
}

uint64_t sub_10006432C(uint64_t a1)
{
  v3 = sub_100058000(&qword_100772140);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v27 - v8;
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v29 = &v27 - v17;
  swift_getKeyPath();
  v30 = v1;
  sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__item;
  swift_beginAccess();
  sub_10000794C(v1 + v18, v11, &qword_100772140);
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    v9 = v11;
LABEL_5:
    sub_1000079B4(v9, &qword_100772140);
LABEL_6:
    sub_10000794C(a1, v6, &qword_100772140);
    return sub_100061964(v6);
  }

  v27 = v16;
  v28 = v6;
  v20 = *(v13 + 32);
  v20(v29, v11, v12);
  v21 = a1;
  sub_10000794C(a1, v9, &qword_100772140);
  if (v19(v9, 1, v12) == 1)
  {
    (*(v13 + 8))(v29, v12);
    v6 = v28;
    goto LABEL_5;
  }

  v23 = v27;
  v20(v27, v9, v12);
  v24 = v29;
  v25 = static TTRRemindersListViewModel.Item.contentsEqual(_:_:)();
  v26 = *(v13 + 8);
  v26(v23, v12);
  result = (v26)(v24, v12);
  a1 = v21;
  v6 = v28;
  if ((v25 & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1000646A8()
{
  v1 = v0;
  v2 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  KeyPath = swift_getKeyPath();
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v9 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_100062C88(KeyPath, v7);

  sub_1000079B4(v7, &qword_10076B070);
  v10 = swift_getKeyPath();
  v11 = TTRRemindersListViewModel.SectionHeader.listObjectID.getter();
  sub_1000630B0(v10, v11);

  v12 = TTRRemindersListViewModel.SectionHeader.isTitleEditable.getter();
  v13 = v12 & 1;
  swift_getKeyPath();
  v30 = v0;
  sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isTitleEditable;
  LODWORD(v7) = *(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isTitleEditable);

  if (v13 != v7)
  {
    if (v13 == *(v1 + v14))
    {
      *(v1 + v14) = v12 & 1;
    }

    else
    {
      v15 = swift_getKeyPath();
      v29 = &v28;
      __chkstk_darwin(v15);
      *(&v28 - 2) = v1;
      *(&v28 - 8) = v12 & 1;
      v30 = v1;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v16 = TTRRemindersListViewModel.SectionHeader.isCollapsable.getter();
  v17 = v16 & 1;
  swift_getKeyPath();
  v30 = v1;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isCollapsable;
  v19 = *(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isCollapsable);

  if (v17 != v19)
  {
    if (v17 == *(v1 + v18))
    {
      *(v1 + v18) = v16 & 1;
    }

    else
    {
      v20 = swift_getKeyPath();
      v29 = &v28;
      __chkstk_darwin(v20);
      *(&v28 - 2) = v1;
      *(&v28 - 8) = v16 & 1;
      v30 = v1;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v21 = swift_getKeyPath();
  TTRRemindersListViewModel.SectionHeader.title.getter();
  sub_100063198(v21, v4);

  sub_1000079B4(v4, &unk_10076B050);
  v22 = TTRRemindersListViewModel.SectionHeader.isVisible.getter();
  swift_getKeyPath();
  v30 = v1;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isShownAsHidden;
  v24 = *(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isShownAsHidden);

  if ((v22 & 1) == v24)
  {
    v26 = v22 ^ 1;
    if ((v22 & 1) == *(v1 + v23))
    {
      v27 = swift_getKeyPath();
      __chkstk_darwin(v27);
      *(&v28 - 2) = v1;
      *(&v28 - 8) = v26 & 1;
      v30 = v1;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v1 + v23) = v26 & 1;
    }
  }

  return result;
}

uint64_t sub_100064C30()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - v12;
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel___observationRegistrar;
  v33 = v1;
  sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  v30 = v16;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__title;
  swift_beginAccess();
  sub_10000794C(v1 + v17, v6, &unk_10076B050);
  v18 = v29;
  v19 = v2;
  if ((*(v29 + 48))(v6, 1, v2))
  {
    sub_1000079B4(v6, &unk_10076B050);
    (*(v8 + 104))(v15, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:), v7);
  }

  else
  {
    v20 = v18;
    v21 = *(v18 + 16);
    v22 = v28;
    v21(v28, v6, v19);
    sub_1000079B4(v6, &unk_10076B050);
    TTRRemindersListViewModel.SectionHeaderTitle.separator.getter();
    (*(v20 + 8))(v22, v19);
    (*(v8 + 32))(v15, v13, v7);
  }

  swift_getKeyPath();
  v32 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = v31;
  if (*(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__forceTopSeparatorHidden) == 1)
  {
    (*(v8 + 8))(v15, v7);
    (*(v8 + 104))(v15, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.hidden(_:), v7);
  }

  swift_getKeyPath();
  v32 = v1;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__effectiveSeparator;
  swift_beginAccess();
  v25 = *(v8 + 16);
  v25(v23, v1 + v24, v7);

  sub_1000660D0(&qword_100768B70, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator);
  LOBYTE(v24) = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v8 + 8);
  v26(v23, v7);
  if ((v24 & 1) == 0)
  {
    v25(v23, v15, v7);

    sub_1000626E4(v23);
  }

  return (v26)(v15, v7);
}

uint64_t sub_100065158()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isUserInteractionEnabled))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = *(v0 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isTitleEditable);
    v4 = (v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isTitleUserInteractionEnabled);
    if (v3 == *(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isTitleUserInteractionEnabled))
    {
LABEL_3:
      *v4 = v3;
      return result;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
    v4 = (v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isTitleUserInteractionEnabled);
    if ((*(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__isTitleUserInteractionEnabled) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100065308()
{
  v1 = v0;
  v2 = type metadata accessor for UICellConfigurationState.DropState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICellConfigurationState.DragState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UICellConfigurationState.isSwiped.getter())
  {
    goto LABEL_2;
  }

  UICellConfigurationState.cellDragState.getter();
  v11 = (*(v7 + 88))(v9, v6);
  if (v11 != enum case for UICellConfigurationState.DragState.none(_:))
  {
    if (v11 == enum case for UICellConfigurationState.DragState.lifting(_:) || v11 == enum case for UICellConfigurationState.DragState.dragging(_:))
    {
      goto LABEL_2;
    }

    (*(v7 + 8))(v9, v6);
  }

  UICellConfigurationState.cellDropState.getter();
  v13 = (*(v3 + 88))(v5, v2);
  if (v13 != enum case for UICellConfigurationState.DropState.none(_:) && v13 != enum case for UICellConfigurationState.DropState.notTargeted(_:))
  {
    if (v13 == enum case for UICellConfigurationState.DropState.targeted(_:))
    {
LABEL_2:
      v10 = 1;
      goto LABEL_16;
    }

    (*(v3 + 8))(v5, v2);
  }

  v10 = 0;
LABEL_16:
  swift_getKeyPath();
  v20 = v0;
  sub_1000660D0(&qword_10076B030, type metadata accessor for TTRIRemindersListEditableSectionCellObservableViewModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__showsSeparatorAsTransparent;
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__showsSeparatorAsTransparent);

  if (v10 != v16)
  {
    if (v10 == *(v1 + v15))
    {
      *(v1 + v15) = v10;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v19 - 2) = v1;
      *(&v19 - 8) = v10;
      v20 = v1;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_100065678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100058000(&qword_100768B60);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10000794C(a1, &v21 - v13, &qword_100772140);
  sub_10000794C(a2, &v14[v15], &qword_100772140);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10000794C(v14, v10, &qword_100772140);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1000660D0(&qword_100768B68, &type metadata accessor for TTRRemindersListViewModel.Item);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000079B4(v14, &qword_100772140);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000079B4(v14, &qword_100768B60);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000079B4(v14, &qword_100772140);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100065998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100058000(&qword_100768B78);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10000794C(a1, &v21 - v13, &qword_10076B070);
  sub_10000794C(a2, &v14[v15], &qword_10076B070);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10000794C(v14, v10, &qword_10076B070);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1000660D0(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000079B4(v14, &qword_10076B070);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000079B4(v14, &qword_100768B78);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000079B4(v14, &qword_10076B070);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100065CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100058000(&qword_100768B50);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_10000794C(a1, &v21 - v13, &unk_10076B050);
  sub_10000794C(a2, &v14[v15], &unk_10076B050);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_10000794C(v14, v10, &unk_10076B050);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1000660D0(&qword_100768B58, &type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000079B4(v14, &unk_10076B050);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1000079B4(v14, &qword_100768B50);
    v17 = 1;
    return v17 & 1;
  }

  sub_1000079B4(v14, &unk_10076B050);
  v17 = 0;
  return v17 & 1;
}

void sub_10006605C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__listObjectID);
  *(v1 + OBJC_IVAR____TtC9Reminders55TTRIRemindersListEditableSectionCellObservableViewModel__listObjectID) = v2;
  v4 = v2;
}

uint64_t sub_1000660D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100066238()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100768B90);
  v1 = sub_100003E30(v0, qword_100768B90);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100066300()
{
  v1 = v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_100390240(1, 0);
      v2 = sub_100067FD0();
      v3 = v2;
      if (v2)
      {
        [v2 bounds];
        [v3 convertRect:0 toView:?];
        v21 = v5;
        osloga = v4;
        v19 = v6;
        v20 = v7;

        *&v8 = osloga;
        *(&v8 + 1) = v19;
        *oslogb = v8;
        *&v8 = v21;
        *(&v8 + 1) = v20;
        v22 = v8;
        sub_100390240(0, 0);
        swift_unknownObjectRelease();
        v10 = v22;
        v9 = *oslogb;
      }

      else
      {
        sub_100390240(0, 0);
        if (qword_100766E98 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_100003E30(v14, qword_100768B90);
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, v16, "TTRITemplateSavingDismissAnimationCoordinator: Failed to determine frameOfDestBarButtonInWindow", v17, 2u);
        }

        swift_unknownObjectRelease();

        v9 = 0uLL;
        v10 = 0uLL;
      }

      v18 = v1 + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_frameOfDestBarButtonInWindow;
      *v18 = v9;
      *(v18 + 16) = v10;
      *(v18 + 32) = v3 == 0;
      return;
    }

    swift_unknownObjectRelease();
  }

  if (qword_100766E98 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100768B90);
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v12, "TTRITemplateSavingDismissAnimationCoordinator#willPresentPresentee: missing presenter/presentee", v13, 2u);
  }
}

void sub_1000665C0()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_6;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_5:
    swift_unknownObjectRelease();
LABEL_6:
    if (qword_100766E98 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003E30(v1, qword_100768B90);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "TTRITemplateSavingDismissAnimationCoordinator#willDismissPresentee: missing params from last step", v3, 2u);
    }

    v4 = oslog;
LABEL_11:

    return;
  }

  if (*(&v0[4].isa + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_frameOfDestBarButtonInWindow))
  {
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  log = v0;
  sub_10037A8C0(&v69);
  v5 = v69;
  if (!v69)
  {
    if (qword_100766E98 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100003E30(v47, qword_100768B90);
    loga = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(loga, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, loga, v48, "TTRITemplateSavingDismissAnimationCoordinator: missing sourceView", v49, 2u);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v4 = loga;
    goto LABEL_11;
  }

  *v74 = v69;
  *&v74[8] = v70;
  *&v74[24] = v71;
  *&v74[40] = v72;
  *&v74[56] = v73;
  v6 = [v69 window];
  if (!v6)
  {
    if (qword_100766E98 == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_41;
  }

  v7 = v6;
  v8 = log + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView;
  v9 = *(&log[4].isa + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView);
  v10 = *(&log[6].isa + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView);
  v11 = *(&log->isa + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView);
  v67[1] = *(&log[2].isa + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView);
  v67[2] = v9;
  v67[3] = v10;
  v68 = *(&log[8].isa + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView);
  v67[0] = v11;
  *v8 = v5;
  *(v8 + 56) = v73;
  *(v8 + 40) = v72;
  *(v8 + 24) = v71;
  *(v8 + 8) = v70;
  sub_1000681F0(v74, v66);
  sub_100068188(v67);
  v12 = [v5 snapshotViewAfterScreenUpdates:0];
  if (!v12)
  {
    if (qword_100766E98 != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    sub_100003E30(v54, qword_100768B90);
    v51 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v51, v55, "TTRITemplateSavingDismissAnimationCoordinator: Failed to create snapshot for source view", v56, 2u);
    }

    goto LABEL_33;
  }

  v13 = v12;
  v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v14 setClipsToBounds:1];
  v15 = *&v74[8];
  v17 = *&v74[16];
  v16 = *&v74[32];
  [v14 setBounds:{*&v74[8], *&v74[16], *&v74[32]}];
  [v13 frame];
  [v13 setFrame:{0.0, 0.0}];
  [v14 addSubview:v13];
  v18 = *(&log->isa + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceSnapshotView);
  *(&log->isa + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceSnapshotView) = v14;
  v19 = v14;

  [v7 frame];
  v24 = [objc_allocWithZone(UIView) initWithFrame:{v20, v21, v22, v23}];
  [v24 setAutoresizingMask:18];
  [v7 addSubview:v24];
  v25 = *(&log->isa + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_containerView);
  *(&log->isa + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_containerView) = v24;
  v26 = v24;

  [v26 convertRect:v5 fromCoordinateSpace:{v15, v17, v16}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = objc_opt_self();
  v36 = swift_allocObject();
  *(v36 + 16) = v19;
  *(v36 + 24) = v28;
  *(v36 + 32) = v30;
  *(v36 + 40) = v32;
  *(v36 + 48) = v34;
  *(v36 + 56) = v26;
  v37 = *&v74[48];
  *(v36 + 96) = *&v74[32];
  *(v36 + 112) = v37;
  *(v36 + 128) = *&v74[64];
  v38 = *&v74[16];
  *(v36 + 64) = *v74;
  *(v36 + 80) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_100068240;
  *(v39 + 24) = v36;
  aBlock[4] = sub_100026410;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100713758;
  v40 = _Block_copy(aBlock);
  sub_1000682B8(&v69, v66);
  v41 = v19;
  v42 = v26;

  [v35 performWithoutAnimation:v40];
  _Block_release(v40);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_41:
    swift_once();
LABEL_26:
    v50 = type metadata accessor for Logger();
    sub_100003E30(v50, qword_100768B90);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "TTRITemplateSavingDismissAnimationCoordinator: sourceView window is nil", v53, 2u);
    }

LABEL_33:
    swift_unknownObjectRelease();

    sub_100068188(&v69);
    swift_unknownObjectRelease();
    return;
  }

  v44 = objc_opt_self();

  v45 = [v44 redColor];
  sub_100390240(1, 0);
  v46 = sub_100067FD0();
  if (v46)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_100068188(&v69);
  }

  else
  {
    if (qword_100766E98 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_100003E30(v57, qword_100768B90);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "TTRITemplateSavingDismissAnimationCoordinator: Failed to get destBarButtonView", v60, 2u);
    }

    swift_unknownObjectRelease();
    sub_100068188(&v69);
    swift_unknownObjectRelease();
  }

  v61 = *(&log->isa + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_destBarButtonView);
  *(&log->isa + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_destBarButtonView) = v46;
}

id sub_100066F30()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_frameOfDestBarButtonInWindow];
  if ((v0[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_frameOfDestBarButtonInWindow + 32] & 1) == 0 && (v4 = v2[2], v3 = v2[3], v6 = *v2, v5 = v2[1], v7 = *&v0[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView + 48], v83 = *&v0[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView + 32], v84 = v7, v85 = *&v0[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView + 64], v8 = *&v0[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView + 16], v82[0] = *&v0[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView], v82[1] = v8, *&v82[0]) && (v9 = *&v0[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceSnapshotView]) != 0 && (v10 = *&v0[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_containerView]) != 0 && (v11 = *&v0[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_destBarButtonView]) != 0)
  {
    v12 = *(&v83 + 1);
    v13 = *&v84;
    type metadata accessor for TTRUserDefaults();
    sub_1000682B8(v82, &aBlock);
    v14 = v9;
    v75 = v10;
    v15 = v11;
    v16 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.animationSlowModeEnabled.getter();

    type metadata accessor for TTRIAnimationSlowMode();
    swift_allocObject();
    TTRIAnimationSlowMode.init(isSlowModeEnabled:)();
    [v75 convertRect:0 fromView:{v6, v5, v4, v3}];
    v17 = objc_opt_self();

    [v14 frame];
    sub_100068328(v18, v19, v20, v21, v12, v13);
    v23 = v22;
    v25 = v24;
    CGSize.aspectFitting(boundingSize:)();
    v27 = v26 / v23;
    v29 = v28 / v25;
    if (v29 < v27)
    {
      v27 = v29;
    }

    v30 = v27 * 0.4;
    v31 = objc_opt_self();
    v32 = swift_allocObject();
    *(v32 + 16) = v14;
    *(v32 + 24) = v30;
    v80 = sub_100068350;
    v81 = v32;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_10001047C;
    v79 = &unk_100713820;
    v33 = _Block_copy(&aBlock);
    v34 = v14;

    [v31 _animateUsingSpringWithTension:0 friction:v33 interactive:0 animations:200.0 completion:30.0];
    _Block_release(v33);
    v35 = TTRIAnimationSlowMode.adjust(_:)(0.15);
    v36 = TTRIAnimationSlowMode.adjust(_:)(0.55);
    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    v80 = sub_10006835C;
    v81 = v37;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_10001047C;
    v79 = &unk_100713870;
    v38 = _Block_copy(&aBlock);
    v74 = v34;

    [v31 animateWithDuration:0 delay:v38 options:0 animations:v35 completion:v36];
    _Block_release(v38);
    v39 = TTRIAnimationSlowMode.adjust(_:)(0.2);
    v40 = TTRIAnimationSlowMode.adjust(_:)(0.35);
    v41 = swift_allocObject();
    *(v41 + 16) = v15;
    v80 = sub_100068370;
    v81 = v41;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_10001047C;
    v79 = &unk_1007138C0;
    v42 = _Block_copy(&aBlock);
    v43 = v15;

    [v31 animateWithDuration:0 delay:v42 options:0 animations:v39 completion:v40];
    _Block_release(v42);
    v44 = TTRIAnimationSlowMode.adjust(_:)(0.3);
    v45 = TTRIAnimationSlowMode.adjust(_:)(0.7);
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    v80 = sub_100068378;
    v81 = v46;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_10001047C;
    v79 = &unk_100713910;
    v47 = _Block_copy(&aBlock);
    v48 = v43;

    v49 = swift_allocObject();
    *(v49 + 16) = v1;
    v80 = sub_1000683B8;
    v81 = v49;
    aBlock = _NSConcreteStackBlock;
    v77 = 1107296256;
    v78 = sub_100174F78;
    v79 = &unk_100713960;
    v50 = _Block_copy(&aBlock);
    v51 = v1;

    [v31 animateWithDuration:0 delay:v47 options:v50 animations:v44 completion:v45];
    _Block_release(v50);
    _Block_release(v47);
    CGRect.center.getter();
    v53 = v52;
    v55 = v54;
    CGRect.center.getter();
    v57 = v56;
    v59 = v58;
    v60 = [objc_allocWithZone(UIBezierPath) init];
    [v60 moveToPoint:{v53, v55}];
    [v60 addQuadCurveToPoint:v57 controlPoint:{v59, v53 + (v57 - v53) * 0.05, v59 + -100.0}];

    v61 = String._bridgeToObjectiveC()();
    v62 = [objc_opt_self() animationWithKeyPath:v61];

    sub_100058000(&qword_10076B780);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_10062D410;
    sub_1000683E0();
    *(v63 + 32) = NSNumber.init(integerLiteral:)(0);
    *(v63 + 40) = NSNumber.init(integerLiteral:)(1);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v62 setKeyTimes:isa];

    v65 = [v60 CGPath];
    [v62 setPath:v65];

    v66 = v62;
    [v66 setDuration:TTRIAnimationSlowMode.adjust(_:)(0.6)];
    [v66 setFillMode:kCAFillModeForwards];
    [v66 setRemovedOnCompletion:0];
    v67 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseOut];
    [v66 setTimingFunction:v67];

    v68 = [v74 layer];
    [v68 addAnimation:v66 forKey:0];

    return sub_100068188(v82);
  }

  else
  {
    if (qword_100766E98 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_100003E30(v70, qword_100768B90);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "TTRITemplateSavingDismissAnimationCoordinator#didBeginDismissingPresentee: missing params from last step", v73, 2u);
    }

    return sub_1000678C4(0);
  }
}

id sub_1000678C4(char a1)
{
  v2 = v1;
  if (qword_100766E98 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100768B90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "TTRITemplateSavingDismissAnimationCoordinator: cleaning up", v7, 2u);
  }

  v8 = OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_containerView;
  v9 = *(v2 + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_containerView);
  if (v9)
  {
    [v9 removeFromSuperview];
    v10 = *(v2 + v8);
  }

  else
  {
    v10 = 0;
  }

  *(v2 + v8) = 0;

  v11 = *(v2 + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceSnapshotView);
  *(v2 + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceSnapshotView) = 0;

  result = *(v2 + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView);
  if (result)
  {
    result = [result setAlpha:1.0];
  }

  if (a1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100390240(0, 1);
      result = swift_unknownObjectRelease();
    }
  }

  v13 = *(v2 + OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_completion);
  if (v13)
  {

    v13(v14);

    return sub_1000301AC(v13);
  }

  return result;
}

id TTRHashtagLabelInteractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t initializeWithCopy for TTRITemplateSavingDismissAnimationCoordinator.SourceView(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v4 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRITemplateSavingDismissAnimationCoordinator.SourceView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

__n128 initializeWithTake for TTRITemplateSavingDismissAnimationCoordinator.SourceView(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for TTRITemplateSavingDismissAnimationCoordinator.SourceView(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRITemplateSavingDismissAnimationCoordinator.SourceView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRITemplateSavingDismissAnimationCoordinator.SourceView(uint64_t result, int a2, int a3)
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

void sub_100067E70(void *a1, uint64_t a2, void **a3)
{
  [a1 layoutIfNeeded];
  v5 = UIBarButtonItem.ttr_view.getter();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 window];
    if (v7)
    {
      goto LABEL_15;
    }
  }

  [a1 layoutIfNeeded];
  v8 = UIBarButtonItem.ttr_view.getter();
  if (v8)
  {
    v6 = v8;
    v7 = [v8 window];
    if (v7)
    {
      goto LABEL_15;
    }
  }

  [a1 layoutIfNeeded];
  v9 = UIBarButtonItem.ttr_view.getter();
  if (v9)
  {
    v6 = v9;
    v7 = [v9 window];
    if (v7)
    {
      goto LABEL_15;
    }
  }

  [a1 layoutIfNeeded];
  v10 = UIBarButtonItem.ttr_view.getter();
  if (v10)
  {
    v6 = v10;
    v7 = [v10 window];
    if (v7)
    {
      goto LABEL_15;
    }
  }

  [a1 layoutIfNeeded];
  v11 = UIBarButtonItem.ttr_view.getter();
  if (!v11)
  {
    return;
  }

  v6 = v11;
  v7 = [v11 window];
  if (!v7)
  {
    v12 = v6;
    goto LABEL_16;
  }

LABEL_15:

  v12 = *a3;
  *a3 = v6;
LABEL_16:
}

uint64_t sub_100067FD0()
{
  v0 = sub_10039032C();
  v2 = v0;
  v3 = v1;
  if (!v0)
  {

    return v2;
  }

  if (!v1)
  {

    return 0;
  }

  v12 = 0;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100068344;
  *(v6 + 24) = v5;
  aBlock[4] = sub_100068444;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_1007137D0;
  v7 = _Block_copy(aBlock);
  v8 = v3;
  v9 = v2;

  [v4 performWithoutAnimation:v7];

  _Block_release(v7);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    v2 = v12;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_100068188(uint64_t a1)
{
  v2 = sub_100058000(&qword_100768C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000681F0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  *a2 = *a1;
  v4 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v4;
  v5 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v5;
  v6 = v3;
  return a2;
}

id sub_100068240()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  [v1 setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  [v2 addSubview:v1];
  v3 = *(v0 + 64);

  return [v3 setAlpha:0.0];
}

uint64_t sub_1000682B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100768C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100068378()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

unint64_t sub_1000683E0()
{
  result = qword_100780A30;
  if (!qword_100780A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100780A30);
  }

  return result;
}

uint64_t type metadata accessor for TTRIListDetailColorsContent()
{
  result = qword_100768C28;
  if (!qword_100768C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100068504(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100068538@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRITableCellSelectionBehavior.notSelectable(_:);
  v3 = type metadata accessor for TTRITableCellSelectionBehavior();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1000685AC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + OBJC_IVAR____TtC9Reminders29TTRIListDetailColorsTableCell_gridView);
  v3 = [v2 subviews];
  sub_100003540(0, &qword_10076B020);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      sub_10006875C(v1);
    }

    TTRITableCellContent.state.getter();
    v6 = (v2 + qword_10077C3C8);
    *v6 = v13;
    v6[8] = v14;
    v7 = sub_1003067E4();
    v2 = v7;
    if (v7 >> 62)
    {
      break;
    }

    v1 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v9 = *(v2 + 8 * j + 32);
      }

      v10 = v9;
      v11 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      dispatch thunk of TTRListBadgeView.selected.setter();

      if (v11 == v1)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v1 = _CocoaArrayWrapper.endIndex.getter();
  if (v1)
  {
    goto LABEL_7;
  }
}

uint64_t sub_10006875C(uint64_t a1)
{
  v3 = type metadata accessor for TTRListBadgeView.ColorInfo();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRListColors.Color();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + qword_100768C20);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v23[1] = a1;
    v29 = _swiftEmptyArrayStorage;
    v14 = v11;

    specialized ContiguousArray.reserveCapacity(_:)();
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v17 = *(v15 + 64);
    v23[0] = v14;
    v18 = (v14 + ((v17 + 32) & ~v17));
    v26 = *(v15 + 56);
    v27 = v16;
    v25 = enum case for TTRListBadgeView.ColorInfo.listColor(_:);
    v24 = (v4 + 104);
    v28 = v15;
    v19 = (v15 - 8);
    do
    {
      v20 = v27;
      v27(v10, v18, v7);
      v21 = objc_allocWithZone(type metadata accessor for TTRListBadgeView());
      [v21 initWithFrame:{0.0, 0.0, 0.0, 0.0, v23[0]}];
      v20(v6, v10, v7);
      (*v24)(v6, v25, v3);
      dispatch thunk of TTRListBadgeView.listColorInfo.setter();
      dispatch thunk of TTRListBadgeView.ttrAccessibilityShouldIgnoreAccessibilityName.setter();
      TTRListBadgeView.enableCursorInteraction()();
      TTRListBadgeView.enableHoverEffectIfApplicable(padding:)();
      (*v19)(v10, v7);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 += v26;
      --v12;
    }

    while (v12);

    v13 = v29;
  }

  if (v13 >> 62)
  {
    sub_100003540(0, &qword_10076B020);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076B020);
  }

  return dispatch thunk of TTRListAppearanceGridView.arrangedSubviews.setter();
}

uint64_t sub_100068AEC()
{
  sub_1000301AC(*(v0 + qword_100768C18));
}

uint64_t sub_100068B30(uint64_t a1)
{
  sub_1000301AC(*(a1 + qword_100768C18));
}

id sub_100068BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9Reminders29TTRIListDetailColorsTableCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = [objc_allocWithZone(type metadata accessor for TTRListAppearanceBadgeGridView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  dispatch thunk of TTRListAppearanceGridView.badgeSize.setter();
  dispatch thunk of TTRListAppearanceGridView.horizontalMargins.setter();
  dispatch thunk of TTRListAppearanceGridView.topMargin.setter();
  dispatch thunk of TTRListAppearanceGridView.minimumGap.setter();
  v9 = v8;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[OBJC_IVAR____TtC9Reminders29TTRIListDetailColorsTableCell_gridView] = v9;
  v10 = v9;
  if (a3)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v39.receiver = v4;
  v39.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v39, "initWithStyle:reuseIdentifier:", a1, v11);

  *&v9[qword_10077C3C0 + 8] = &off_100713A08;
  swift_unknownObjectWeakAssign();
  v13 = v12;
  v14 = [v13 contentView];
  [v14 addSubview:v9];

  v15 = objc_opt_self();
  sub_100058000(&qword_10076B780);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10062D450;
  v17 = [v13 contentView];
  v18 = [v17 leadingAnchor];

  v19 = [v9 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v16 + 32) = v20;
  v21 = [v13 contentView];
  v22 = [v21 trailingAnchor];

  v23 = [v9 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v16 + 40) = v24;
  v25 = [v13 contentView];
  v26 = [v25 topAnchor];

  v27 = [v9 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v16 + 48) = v28;
  v29 = [v13 contentView];

  v30 = [v29 bottomAnchor];
  v31 = [v9 bottomAnchor];

  v32 = [v30 constraintEqualToAnchor:v31];
  *(v16 + 56) = v32;
  sub_100003540(0, &qword_10076BAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints:isa];

  v34 = v9;
  [v34 setAccessibilityContainerType:4];
  v35._countAndFlagsBits = 0x73726F6C6F43;
  v36._object = 0x800000010066F2F0;
  v35._object = 0xE600000000000000;
  v36._countAndFlagsBits = 0xD000000000000041;
  TTRLocalizedString(_:comment:)(v35, v36);
  v37 = String._bridgeToObjectiveC()();

  [v34 setAccessibilityLabel:v37];

  return v13;
}

uint64_t initializeBufferWithCopyOfBuffer for TTRIListDetailColorsContentState(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRIListDetailColorsContentState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIListDetailColorsContentState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100069240(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + qword_100768C18);
    if (v3)
    {

      v3(a1, 0);
      swift_unknownObjectRelease();

      return sub_1000301AC(v3);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100069304(uint64_t a1)
{
  v27 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = __chkstk_darwin(v2);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(qword_100784690);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
  swift_beginAccess();
  sub_100069CB8(v1 + v13, v12);
  v14 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v12, 1, v14);
  sub_100069D28(v12);
  sub_100069E64(v27, v9, type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState);
  result = swift_getEnumCaseMultiPayload();
  if ((result - 2) >= 2)
  {
    if (result)
    {
      v6 = v24;
      v18 = v25;
      v23 = v9;
      v20 = v26;
      (*(v25 + 32))(v24, v23, v26);
      if (v16 == 1)
      {
        v21 = v6;
        v22 = 0;
        goto LABEL_7;
      }

      swift_beginAccess();
      if (!v15((v1 + v13), 1, v14))
      {
        sub_1001E6748(v6);
      }
    }

    else
    {
      v18 = v25;
      v19 = v9;
      v20 = v26;
      (*(v25 + 32))(v6, v19, v26);
      if (v16 == 1)
      {
        v21 = v6;
        v22 = 1;
LABEL_7:
        sub_100069840(v21, v22, v1);
        return (*(v18 + 8))(v6, v20);
      }

      swift_beginAccess();
      if (!v15((v1 + v13), 1, v14))
      {
        sub_1001E63A0(v6);
      }
    }

    swift_endAccess();
    return (*(v18 + 8))(v6, v20);
  }

  return result;
}

uint64_t sub_100069648()
{
  v1 = sub_100058000(qword_100784690);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v13[-v5];
  v7 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
  swift_beginAccess();
  sub_100069CB8(v0 + v11, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100069D28(v6);
  }

  sub_100069D90(v6, v10);
  (*(v8 + 56))(v4, 1, 1, v7);
  swift_beginAccess();
  sub_100069DF4(v4, v0 + v11);
  swift_endAccess();
  sub_100069304(v10);
  return sub_100069ECC(v10, type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession);
}

uint64_t sub_100069840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v24 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIRemindersListItemAdjustedSelection(0);
  __chkstk_darwin(v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 + 40);
  v16 = *(a3 + 48);
  sub_10000C36C((a3 + 16), v15);
  (*(v16 + 416))(a1, a2, v15, v16);
  sub_100069E64(&v14[*(v12 + 24)], v11, type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems);
  v17 = (*(v7 + 48))(v11, 2, v6);
  if (v17)
  {
    if (v17 == 1)
    {
      (*(a3 + 56))(&v14[*(v12 + 20)], *v14, 0);
    }

    else
    {
      (*(a3 + 56))(&v14[*(v12 + 20)], *v14, 1);
    }
  }

  else
  {
    v18 = v24;
    (*(v7 + 32))(v24, v11, v6);
    v19 = *v14;
    v20 = *(v12 + 20);
    v21 = *(a3 + 56);
    v21(&v14[v20], v19, 0);
    v21(v18, v19, 0);
    (*(v7 + 8))(v18, v6);
  }

  return sub_100069ECC(v14, type metadata accessor for TTRIRemindersListItemAdjustedSelection);
}

uint64_t sub_100069AF0()
{
  sub_100004758(v0 + 16);

  sub_100069D28(v0 + OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersListAutomaticSubtaskSelectionController()
{
  result = qword_100768CE0;
  if (!qword_100768CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100069BB8()
{
  sub_100069C60();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100069C60()
{
  if (!qword_100768CF0)
  {
    type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100768CF0);
    }
  }
}

uint64_t sub_100069CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(qword_100784690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069D28(uint64_t a1)
{
  v2 = sub_100058000(qword_100784690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100069D90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(qword_100784690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100069ECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100069F2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100767478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = sub_100003E30(v2, qword_1007A8938);

  return sub_100070584(v3, a1);
}

uint64_t sub_100069FB0()
{
  v1 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &unk_10078A380);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000079B4(v3, &unk_10078A380);
    return 0;
  }

  else
  {
    v8 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}

uint64_t sub_10006A10C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRAccesibility.SectionHeaderType.date(_:);
  v3 = type metadata accessor for TTRAccesibility.SectionHeaderType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_10006A1E4()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.all(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_10006A2F4()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.all(_:), v0);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10006A404()
{
  sub_100058000(&qword_1007693A8);
  v0 = type metadata accessor for TTRRemindersListViewModel.LeadingActionConfiguration();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10062D400;
  (*(v1 + 104))(v3 + v2, enum case for TTRRemindersListViewModel.LeadingActionConfiguration.customDueDate(_:), v0);
  return v3;
}

uint64_t sub_10006A4E4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType.defaultForNoReminders(_:);
  v3 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType.ViewModelType();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.viewModel(_:);
  v5 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_10006A5CC()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = enum case for TTRListType.PredefinedSmartListType.completed(_:);
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  (*(v1 + 104))(v3, enum case for TTRUserActivityListPayload.State.predefinedSmartListType(_:), v0);
  v8[3] = type metadata accessor for TTRUserActivityListPayload();
  v8[4] = &protocol witness table for TTRUserActivityListPayload;
  sub_1000317B8(v8);
  TTRUserActivityListPayload.init(state:)();
  NSUserActivity.setPayload(_:)();
  return sub_100004758(v8);
}

uint64_t sub_10006A720()
{
  v29 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  sub_100070538();
  v28 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v14 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v15);
    swift_unknownObjectRelease();
    v17 = type metadata accessor for TTRRemindersListViewModel.Item();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) != 1)
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v18 + 8))(v10, v17);
      v19 = 0;
      goto LABEL_6;
    }

    sub_1000079B4(v10, &qword_100772140);
  }

  v19 = 1;
LABEL_6:
  v20 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v20 - 8) + 56))(v13, v19, 1, v20);
  v21 = *(sub_100058000(&qword_1007693A0) + 48);
  v22 = enum case for TTRListType.PredefinedSmartListType.completed(_:);
  v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v23 - 8) + 104))(v3, v22, v23);
  sub_10000794C(v13, &v3[v21], &unk_10076BB50);
  (*(v1 + 104))(v3, enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:), v29);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v30[3] = v4;
  v30[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v24 = sub_1000317B8(v30);
  (*(v5 + 16))(v24, v7, v4);
  v25 = v28;
  NSUserActivity.setPayload(_:)();
  (*(v5 + 8))(v7, v4);
  sub_1000079B4(v13, &unk_10076BB50);
  sub_100004758(v30);
  return v25;
}

uint64_t sub_10006AB48@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRAutoCompleteReminderListScope.anyList(_:);
  v3 = type metadata accessor for TTRAutoCompleteReminderListScope();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_10006AC20()
{
  v0 = type metadata accessor for Calendar();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  static Locale.current.getter();
  static Calendar.current.getter();
  type metadata accessor for TTRShowCompletedSectionHeaderTitleFormatter();
  swift_allocObject();
  result = TTRShowCompletedSectionHeaderTitleFormatter.init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)();
  qword_100768D80 = result;
  return result;
}

uint64_t sub_10006ADA4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v47 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v4 - 8);
  v46 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v6 - 8);
  v45 = v35 - v7;
  v8 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v8 - 8);
  v44 = v35 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v43 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v12 = *(v36 - 8);
  __chkstk_darwin(v36);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v15 - 8);
  v17 = v35 - v16;
  v18 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v18 - 8);
  v20 = v35 - v19;
  v21 = enum case for TTRListType.PredefinedSmartListType.completed(_:);
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = enum case for TTRListType.predefinedSmartList(_:);
  v24 = type metadata accessor for TTRListType();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v20, v23, v24);
  (*(v25 + 56))(v20, 0, 1, v24);
  REMSmartListType.title.getter();
  v27 = v26;
  v28 = static TTRListColors.SmartList.completed.getter();
  v38 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRShowCompletedViewModelSource_completedRemindersCount);
  v39 = v28;
  v37 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRShowCompletedViewModelSource_completedRemindersCount + 8);
  v29 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v30 = *(*(v29 - 8) + 56);
  v42 = v17;
  v30(v17, 1, 1, v29);
  TTRRemindersListSectionMenuCapabilities.init()();
  v35[1] = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v12 + 8))(v14, v36);
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter())
  {
    swift_unknownObjectRelease();
  }

  v31 = 0xE000000000000000;
  if (v27)
  {
    v31 = v27;
  }

  v36 = v31;
  (*(v40 + 104))(v43, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v41);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v49, &qword_1007693C0);
  v32 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v32 - 8) + 56))(v44, 1, 1, v32);
  v33 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

uint64_t sub_10006B3F8()
{
  v1 = OBJC_IVAR____TtC9Reminders31TTRShowCompletedViewModelSource_cachedEmptyListMessaging;
  v2 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_10006B460()
{
  v0 = sub_10056FD38();
  v1 = OBJC_IVAR____TtC9Reminders31TTRShowCompletedViewModelSource_cachedEmptyListMessaging;
  v2 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowCompletedViewModelSource()
{
  result = qword_100768DC0;
  if (!qword_100768DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B558()
{
  result = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
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

uint64_t sub_10006B638(uint64_t a1, uint64_t a2)
{
  v422 = a2;
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v421 = &v406 - v3;
  v4 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v4 - 8);
  v420 = &v406 - v5;
  v425 = type metadata accessor for Calendar();
  v564 = *(v425 - 8);
  __chkstk_darwin(v425);
  v424 = &v406 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v438 = type metadata accessor for DateComponents();
  v569 = *(v438 - 8);
  v7 = __chkstk_darwin(v438);
  v423 = &v406 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v437 = &v406 - v9;
  v436 = type metadata accessor for REMRemindersListDataView.DateBucketsModel.RepresentativeDate();
  v553 = *(v436 - 8);
  __chkstk_darwin(v436);
  v441 = &v406 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v570 = type metadata accessor for Date();
  v561 = *(v570 - 8);
  v11 = __chkstk_darwin(v570);
  v501 = &v406 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v500 = &v406 - v14;
  v15 = __chkstk_darwin(v13);
  v456 = &v406 - v16;
  v17 = __chkstk_darwin(v15);
  v475 = &v406 - v18;
  v19 = __chkstk_darwin(v17);
  v515 = &v406 - v20;
  v21 = __chkstk_darwin(v19);
  v544 = &v406 - v22;
  __chkstk_darwin(v21);
  v504 = &v406 - v23;
  v543 = sub_100058000(&qword_100769370);
  v24 = __chkstk_darwin(v543);
  v482 = &v406 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v480 = &v406 - v27;
  v28 = __chkstk_darwin(v26);
  v499 = &v406 - v29;
  __chkstk_darwin(v28);
  v531 = &v406 - v30;
  v31 = sub_100058000(&qword_1007757F0);
  v32 = __chkstk_darwin(v31 - 8);
  v458 = &v406 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v459 = &v406 - v35;
  v36 = __chkstk_darwin(v34);
  v486 = &v406 - v37;
  v38 = __chkstk_darwin(v36);
  v457 = &v406 - v39;
  v40 = __chkstk_darwin(v38);
  v484 = &v406 - v41;
  v42 = __chkstk_darwin(v40);
  v485 = &v406 - v43;
  v44 = __chkstk_darwin(v42);
  v505 = &v406 - v45;
  v46 = __chkstk_darwin(v44);
  v507 = &v406 - v47;
  v48 = __chkstk_darwin(v46);
  v508 = &v406 - v49;
  v50 = __chkstk_darwin(v48);
  v498 = &v406 - v51;
  v52 = __chkstk_darwin(v50);
  v532 = &v406 - v53;
  __chkstk_darwin(v52);
  v533 = &v406 - v54;
  v562 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Day();
  v448 = *(v562 - 8);
  v55 = __chkstk_darwin(v562);
  v481 = &v406 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v483 = &v406 - v58;
  v59 = __chkstk_darwin(v57);
  v474 = &v406 - v60;
  v61 = __chkstk_darwin(v59);
  v519 = &v406 - v62;
  v63 = __chkstk_darwin(v61);
  v542 = &v406 - v64;
  __chkstk_darwin(v63);
  v520 = &v406 - v65;
  v568 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v478 = *(v568 - 8);
  v66 = __chkstk_darwin(v568);
  v497 = &v406 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __chkstk_darwin(v66);
  v496 = &v406 - v69;
  v70 = __chkstk_darwin(v68);
  v440 = &v406 - v71;
  v72 = __chkstk_darwin(v70);
  v435 = &v406 - v73;
  v74 = __chkstk_darwin(v72);
  v495 = &v406 - v75;
  v76 = __chkstk_darwin(v74);
  v494 = &v406 - v77;
  v78 = __chkstk_darwin(v76);
  v439 = &v406 - v79;
  v80 = __chkstk_darwin(v78);
  v434 = &v406 - v81;
  v82 = __chkstk_darwin(v80);
  v473 = &v406 - v83;
  v84 = __chkstk_darwin(v82);
  v472 = &v406 - v85;
  v86 = __chkstk_darwin(v84);
  v514 = &v406 - v87;
  v88 = __chkstk_darwin(v86);
  v513 = &v406 - v89;
  v90 = __chkstk_darwin(v88);
  v447 = &v406 - v91;
  v92 = __chkstk_darwin(v90);
  v446 = &v406 - v93;
  v94 = __chkstk_darwin(v92);
  v541 = &v406 - v95;
  v96 = __chkstk_darwin(v94);
  v540 = &v406 - v97;
  v98 = __chkstk_darwin(v96);
  v455 = &v406 - v99;
  __chkstk_darwin(v98);
  v454 = &v406 - v100;
  v101 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v101 - 8);
  v560 = &v406 - v102;
  v565 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v103 = *(v565 - 8);
  v104 = __chkstk_darwin(v565);
  v493 = &v406 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __chkstk_darwin(v104);
  v492 = &v406 - v107;
  v108 = __chkstk_darwin(v106);
  v471 = &v406 - v109;
  v110 = __chkstk_darwin(v108);
  v512 = &v406 - v111;
  v112 = __chkstk_darwin(v110);
  v539 = &v406 - v113;
  __chkstk_darwin(v112);
  v559 = &v406 - v114;
  v567 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v552 = *(v567 - 8);
  v115 = __chkstk_darwin(v567);
  v491 = &v406 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __chkstk_darwin(v115);
  v433 = &v406 - v118;
  v119 = __chkstk_darwin(v117);
  v490 = &v406 - v120;
  v121 = __chkstk_darwin(v119);
  v432 = &v406 - v122;
  v123 = __chkstk_darwin(v121);
  v470 = &v406 - v124;
  v125 = __chkstk_darwin(v123);
  v511 = &v406 - v126;
  v127 = __chkstk_darwin(v125);
  v445 = &v406 - v128;
  v129 = __chkstk_darwin(v127);
  v538 = &v406 - v130;
  v131 = __chkstk_darwin(v129);
  v558 = &v406 - v132;
  __chkstk_darwin(v131);
  v453 = &v406 - v133;
  v566 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v134 = *(v566 - 8);
  v135 = __chkstk_darwin(v566);
  v489 = &v406 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __chkstk_darwin(v135);
  v431 = &v406 - v138;
  v139 = __chkstk_darwin(v137);
  v488 = &v406 - v140;
  v141 = __chkstk_darwin(v139);
  v430 = &v406 - v142;
  v143 = __chkstk_darwin(v141);
  v469 = &v406 - v144;
  v145 = __chkstk_darwin(v143);
  v510 = &v406 - v146;
  v147 = __chkstk_darwin(v145);
  v444 = &v406 - v148;
  v149 = __chkstk_darwin(v147);
  v151 = &v406 - v150;
  __chkstk_darwin(v149);
  v452 = &v406 - v152;
  v461 = type metadata accessor for REMRemindersListDataView.CompletedDateBucketsModel.Bucket();
  v477 = *(v461 - 8);
  v153 = __chkstk_darwin(v461);
  v476 = &v406 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v153);
  v506 = &v406 - v155;
  v419 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v418 = *(v419 - 8);
  __chkstk_darwin(v419);
  v428 = &v406 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_100058000(&qword_100769378);
  __chkstk_darwin(v157 - 8);
  v159 = &v406 - v158;
  REMRemindersListDataView.CompletedDateBucketsModel.remindersCount.getter();
  v160 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v161 = *(v160 - 8);
  v162 = (*(v161 + 48))(v159, 1, v160);
  if (v162 == 1)
  {
    sub_1000079B4(v159, &qword_100769378);
    v163 = 0;
  }

  else
  {
    v163 = REMRemindersListDataView.CountByCompleted.completed.getter();
    (*(v161 + 8))(v159, v160);
  }

  v164 = v429 + OBJC_IVAR____TtC9Reminders31TTRShowCompletedViewModelSource_completedRemindersCount;
  *v164 = v163;
  *(v164 + 8) = v162 == 1;
  sub_10006ADA4(v428);
  v165 = _swiftEmptyArrayStorage;
  v573 = _swiftEmptyArrayStorage;
  v166 = REMRemindersListDataView.CompletedDateBucketsModel.buckets.getter();
  v167 = v483;
  v468 = *(v166 + 16);
  if (!v468)
  {
LABEL_117:

    v395 = v418;
    v396 = v420;
    v397 = v428;
    v398 = v165;
    v399 = v419;
    (*(v418 + 16))(v420, v428, v419);
    (*(v395 + 56))(v396, 0, 1, v399);
    v400 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
    v401 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
    v402 = type metadata accessor for TTRRemindersListViewModel.Item();
    v403 = v421;
    (*(*(v402 - 8) + 56))(v421, 1, 1, v402);
    v572[3] = v400;
    v572[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
    v572[0] = v401;
    sub_10000B0D8(v572, &v571);
    v404 = swift_allocObject();
    *(v404 + 16) = v398;
    sub_100005FD0(&v571, v404 + 24);
    *(v404 + 64) = v429;

    sub_100586238(1, v396, sub_100070528, v404, v422, 0, v403);

    sub_1000079B4(v403, &qword_100772140);
    sub_1000079B4(v396, &unk_10078A380);
    (*(v395 + 8))(v397, v399);

    sub_100004758(v572);
  }

  v168 = 0;
  v417 = v553 + 4;
  v563 = (v561 + 8);
  v416 = v564 + 1;
  v415 = (v569 + 2);
  v557 = (v103 + 104);
  v556 = (v134 + 16);
  v555 = (v134 + 56);
  v554 = (v552 + 16);
  v169 = (v561 + 56);
  v467 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.day(_:);
  v537 = (v561 + 48);
  v503 = (v561 + 32);
  v549 = (v561 + 16);
  v451 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastSevenDays(_:);
  v548 = (v103 + 16);
  v551 = (v552 + 8);
  v547 = (v103 + 8);
  v550 = (v134 + 8);
  v408 = (v569 + 1);
  v414 = xmmword_10062D3F0;
  v407 = (v553 + 1);
  v443 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.pastThirtyDays(_:);
  v427 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.month(_:);
  v413 = enum case for REMRemindersListDataView.CompletedDateBucketsModel.Bucket.year(_:);
  v412 = enum case for Calendar.Component.era(_:);
  v411 = enum case for Calendar.Component.year(_:);
  v410 = enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:);
  v546 = enum case for TTRRemindersListViewModel.SectionID.day(_:);
  v409 = enum case for TTRRemindersListViewModel.SectionID.month(_:);
  v426 = enum case for TTRRemindersListViewModel.SectionID.NamedID.completedPastThirtyDaysSection(_:);
  v449 = enum case for TTRRemindersListViewModel.SectionID.named(_:);
  v442 = enum case for TTRRemindersListViewModel.SectionID.NamedID.completedPastSevenDaysSection(_:);
  v466 = v477 + 16;
  v465 = v477 + 88;
  v464 = (v477 + 96);
  v553 = (v478 + 16);
  v552 = v478 + 32;
  v564 = (v448 + 8);
  v561 = v478 + 8;
  v462 = (v477 + 8);
  v450 = (v448 + 32);
  v170 = v456;
  v171 = v169;
  v509 = v151;
  v172 = v461;
  v173 = v476;
  v545 = v169;
  v463 = v166;
  v534 = v448 + 16;
  while (1)
  {
    if (v168 >= *(v166 + 16))
    {
      goto LABEL_122;
    }

    v569 = v165;
    v174 = v477;
    v175 = v166 + ((*(v174 + 80) + 32) & ~*(v174 + 80));
    v176 = *(v477 + 72);
    v487 = v168;
    v177 = *(v477 + 16);
    v178 = v506;
    v177(v506, v175 + v176 * v168, v172);
    v177(v173, v178, v172);
    v179 = (*(v174 + 88))(v173, v172);
    if (v179 != v467)
    {
      break;
    }

    (*v464)(v173, v172);
    (*v450)(v474, v173, v562);
    v180 = v475;
    REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
    if (qword_100766EA0 != -1)
    {
      swift_once();
    }

    v181 = v469;
    TTRShowCompletedSectionHeaderTitleFormatter.title(for:isFirst:)();
    v182 = v471;
    (*v549)(v471, v180, v570);
    v183 = v565;
    (*v557)(v182, v546, v565);
    (*v548)(v559, v182, v183);
    v184 = v560;
    v185 = v566;
    (*v556)(v560, v181, v566);
    (*v555)(v184, 0, 1, v185);
    REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();

    v186 = v470;
    TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
    (*v554)(v558, v186, v567);
    REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
    v187 = v472;
    TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
    (*v553)(v473, v187, v568);
    swift_beginAccess();
    v165 = v569;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v165 = sub_1005472D4(0, *(v165 + 16) + 1, 1, v165);
    }

    v189 = *(v165 + 16);
    v188 = *(v165 + 24);
    v172 = v461;
    v173 = v476;
    v190 = v475;
    if (v189 >= v188 >> 1)
    {
      v165 = sub_1005472D4(v188 > 1, v189 + 1, 1, v165);
    }

    *(v165 + 16) = v189 + 1;
    v191 = v478;
    v192 = v165 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v189;
    v193 = v568;
    (*(v478 + 32))(v192, v473, v568);
    v573 = v165;
    swift_endAccess();
    (*(v191 + 8))(v472, v193);
    (*v551)(v470, v567);
    (*v547)(v471, v565);
    (*v550)(v469, v566);
    (*v563)(v190, v570);
    (*v564)(v474, v562);
    (*v462)(v506, v172);
LABEL_7:
    v168 = v487 + 1;
    v166 = v463;
    if (v487 + 1 == v468)
    {
      goto LABEL_117;
    }
  }

  v194 = v561 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v179 != v451)
  {
    v460 = v561 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v179 == v443)
    {
      (*v464)(v173, v172);
      v245 = *&v173[*(sub_100058000(&qword_100769398) + 48)];
      if (qword_100766EA0 != -1)
      {
        swift_once();
      }

      v246 = v444;
      v528 = qword_100768D80;
      TTRShowCompletedSectionHeaderTitleFormatter.title(for:isFirst:)();
      v247 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
      v248 = v559;
      (*(*(v247 - 8) + 104))(v559, v426, v247);
      v527 = *v557;
      v527(v248, v449, v565);
      v249 = v560;
      v250 = v246;
      v251 = v566;
      v526 = *v556;
      v526(v560, v250, v566);
      v525 = *v555;
      (v525)(v249, 0, 1, v251);
      v252 = v445;
      TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
      v524 = *v554;
      v524(v558, v252, v567);
      v253 = v446;
      TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
      v523 = *v553;
      v523(v447, v253, v568);
      swift_beginAccess();
      v165 = v569;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v255 = v519;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v165 = sub_1005472D4(0, *(v165 + 16) + 1, 1, v165);
      }

      v257 = *(v165 + 16);
      v256 = *(v165 + 24);
      if (v257 >= v256 >> 1)
      {
        v165 = sub_1005472D4(v256 > 1, v257 + 1, 1, v165);
      }

      *(v165 + 16) = v257 + 1;
      v522 = (*(v478 + 80) + 32) & ~*(v478 + 80);
      v521 = *(v478 + 72);
      v518 = *(v478 + 32);
      (v518)(v165 + v522 + v521 * v257, v447, v568);
      v573 = v165;
      swift_endAccess();
      v258 = *(v245 + 2);
      if (!v258)
      {

        v294 = *v561;
LABEL_112:
        v294(v446, v568);
        (*v551)(v445, v567);
        (*v550)(v444, v566);
        (*v462)(v506, v172);
        v173 = v476;
        (*v563)(v476, v570);
        v170 = v456;
        v167 = v483;
        v171 = v545;
        goto LABEL_7;
      }

      v569 = v165;
      v259 = (*(v448 + 80) + 32) & ~*(v448 + 80);
      v529 = v245;
      v516 = *(v448 + 72);
      v260 = *(v448 + 16);
      v517 = v245 + v259;
      v261 = v245 + v259;
      v262 = v505;
      v263 = v562;
      v502 = v260;
      while (1)
      {
        v536 = v261;
        v260(v255);
        v264 = v570;
        v265 = v508;
        REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
        v266 = *v545;
        (*v545)(v265, 0, 1, v264);
        if (!*(v529 + 2))
        {
          goto LABEL_119;
        }

        v535 = v258;
        v267 = v542;
        (v260)(v542, v517, v263);
        v268 = v507;
        REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
        v530 = *v564;
        v530(v267, v263);
        v266(v268, 0, 1, v264);
        v269 = *(v543 + 48);
        v270 = v499;
        sub_10000794C(v265, v499, &qword_1007757F0);
        sub_10000794C(v268, v270 + v269, &qword_1007757F0);
        v271 = *v537;
        if ((*v537)(v270, 1, v264) != 1)
        {
          break;
        }

        sub_1000079B4(v268, &qword_1007757F0);
        sub_1000079B4(v265, &qword_1007757F0);
        v272 = v271(v270 + v269, 1, v264);
        v273 = v535;
        if (v272 != 1)
        {
          goto LABEL_56;
        }

        sub_1000079B4(v270, &qword_1007757F0);
LABEL_58:
        v280 = v515;
        REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
        v281 = v510;
        TTRShowCompletedSectionHeaderTitleFormatter.title(for:)();
        v282 = v512;
        (*v549)(v512, v280, v570);
        v283 = v565;
        v527(v282, v546, v565);
        (*v548)(v559, v282, v283);
        v284 = v560;
        v285 = v566;
        v526(v560, v281, v566);
        (v525)(v284, 0, 1, v285);
        v286 = v511;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        v524(v558, v286, v567);
        REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
        v287 = v513;
        TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
        v523(v514, v287, v568);
        swift_beginAccess();
        v288 = v569;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v288 = sub_1005472D4(0, v288[2] + 1, 1, v288);
        }

        v262 = v505;
        v260 = v502;
        v290 = v288[2];
        v289 = v288[3];
        if (v290 >= v289 >> 1)
        {
          v288 = sub_1005472D4(v289 > 1, v290 + 1, 1, v288);
        }

        v288[2] = v290 + 1;
        v291 = v288 + v522 + v290 * v521;
        v292 = v288;
        v293 = v568;
        (v518)(v291, v514, v568);
        v569 = v292;
        v573 = v292;
        swift_endAccess();
        v294 = *v561;
        (*v561)(v513, v293);
        (*v551)(v511, v567);
        (*v547)(v512, v565);
        (*v550)(v510, v566);
        (*v563)(v515, v570);
        v255 = v519;
        v263 = v562;
        v530(v519, v562);
        v261 = &v516[v536];
        v258 = v273 - 1;
        if (!v258)
        {

          v172 = v461;
          v165 = v569;
          goto LABEL_112;
        }
      }

      v274 = v270;
      sub_10000794C(v270, v262, &qword_1007757F0);
      if (v271(v270 + v269, 1, v264) != 1)
      {
        v275 = v270 + v269;
        v276 = v262;
        v277 = v504;
        v278 = v570;
        (*v503)(v504, v275, v570);
        sub_1000704E0(&qword_100769390, &type metadata accessor for Date);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v279 = *v563;
        (*v563)(v277, v278);
        sub_1000079B4(v507, &qword_1007757F0);
        sub_1000079B4(v508, &qword_1007757F0);
        v279(v276, v278);
        sub_1000079B4(v274, &qword_1007757F0);
        v273 = v535;
        goto LABEL_58;
      }

      sub_1000079B4(v507, &qword_1007757F0);
      sub_1000079B4(v508, &qword_1007757F0);
      (*v563)(v262, v570);
      v273 = v535;
LABEL_56:
      sub_1000079B4(v270, &qword_100769370);
      goto LABEL_58;
    }

    if (v179 == v427)
    {
      (*v464)(v173, v172);
      v530 = *&v173[*(sub_100058000(&qword_100769398) + 48)];
      v479 = *v503;
      v479(v170, v173, v570);
      if (qword_100766EA0 != -1)
      {
        swift_once();
      }

      v295 = v430;
      v529 = qword_100768D80;
      TTRShowCompletedSectionHeaderTitleFormatter.title(for:isFirst:)();
      v296 = v559;
      v528 = *v549;
      v528(v559, v170, v570);
      v527 = *v557;
      v527(v296, v409, v565);
      v297 = v560;
      v298 = v295;
      v299 = v566;
      v526 = *v556;
      v526(v560, v298, v566);
      v525 = *v555;
      (v525)(v297, 0, 1, v299);
      v300 = v530;
      v536 = *(v530 + 2);
      v301 = v432;
      TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
      v524 = *v554;
      v524(v558, v301, v567);
      v302 = v434;
      TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
      v523 = *v553;
      v523(v439, v302, v568);
      swift_beginAccess();
      v165 = v569;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v165 = sub_1005472D4(0, *(v165 + 16) + 1, 1, v165);
      }

      v304 = *(v165 + 16);
      v303 = *(v165 + 24);
      if (v304 >= v303 >> 1)
      {
        v165 = sub_1005472D4(v303 > 1, v304 + 1, 1, v165);
      }

      *(v165 + 16) = v304 + 1;
      v522 = (*(v478 + 80) + 32) & ~*(v478 + 80);
      v521 = *(v478 + 72);
      v518 = *(v478 + 32);
      (v518)(v165 + v522 + v521 * v304, v439, v568);
      v573 = v165;
      swift_endAccess();
      if (!v536)
      {

        v335 = *v561;
LABEL_114:
        v335(v434, v568);
        (*v551)(v432, v567);
        (*v550)(v430, v566);
        v170 = v456;
        (*v563)(v456, v570);
        (*v462)(v506, v172);
        v173 = v476;
        goto LABEL_7;
      }

      v569 = v165;
      v305 = v300 + ((*(v448 + 80) + 32) & ~*(v448 + 80));
      v516 = *(v448 + 72);
      v306 = *(v448 + 16);
      v517 = v305;
      v307 = v562;
      v502 = v306;
      while (1)
      {
        (v306)(v167, v305, v307);
        v308 = v485;
        REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
        v309 = *v171;
        (*v171)(v308, 0, 1, v570);
        if (!*(v300 + 2))
        {
          goto LABEL_120;
        }

        v310 = v542;
        (v306)(v542, v517, v307);
        v311 = v484;
        REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
        v535 = *v564;
        v535(v310, v307);
        v312 = v570;
        v309(v311, 0, 1, v570);
        v313 = *(v543 + 48);
        v314 = v480;
        sub_10000794C(v308, v480, &qword_1007757F0);
        sub_10000794C(v311, v314 + v313, &qword_1007757F0);
        v315 = *v537;
        if ((*v537)(v314, 1, v312) != 1)
        {
          break;
        }

        sub_1000079B4(v311, &qword_1007757F0);
        sub_1000079B4(v308, &qword_1007757F0);
        v316 = v315(v314 + v313, 1, v570);
        v171 = v545;
        if (v316 != 1)
        {
          goto LABEL_79;
        }

        sub_1000079B4(v314, &qword_1007757F0);
LABEL_81:
        v300 = v530;
        v321 = v500;
        v322 = v483;
        REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
        v323 = v488;
        TTRShowCompletedSectionHeaderTitleFormatter.title(for:)();
        v324 = v492;
        v325 = v321;
        v167 = v322;
        v528(v492, v325, v570);
        v326 = v565;
        v527(v324, v546, v565);
        (*v548)(v559, v324, v326);
        v327 = v560;
        v328 = v566;
        v526(v560, v323, v566);
        (v525)(v327, 0, 1, v328);
        v329 = v490;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        v524(v558, v329, v567);
        REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
        v330 = v494;
        TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
        v523(v495, v330, v568);
        swift_beginAccess();
        v331 = v569;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v331 = sub_1005472D4(0, v331[2] + 1, 1, v331);
        }

        v306 = v502;
        v333 = v331[2];
        v332 = v331[3];
        if (v333 >= v332 >> 1)
        {
          v331 = sub_1005472D4(v332 > 1, v333 + 1, 1, v331);
        }

        v331[2] = v333 + 1;
        v334 = v568;
        (v518)(v331 + v522 + v333 * v521, v495, v568);
        v569 = v331;
        v573 = v331;
        swift_endAccess();
        v335 = *v561;
        (*v561)(v494, v334);
        (*v551)(v490, v567);
        (*v547)(v492, v565);
        (*v550)(v488, v566);
        (*v563)(v500, v570);
        v307 = v562;
        v535(v167, v562);
        v305 = &v516[v305];
        if (!--v536)
        {

          v172 = v461;
          v165 = v569;
          goto LABEL_114;
        }
      }

      v317 = v457;
      sub_10000794C(v314, v457, &qword_1007757F0);
      if (v315(v314 + v313, 1, v570) != 1)
      {
        v318 = v504;
        v319 = v570;
        v479(v504, v314 + v313, v570);
        sub_1000704E0(&qword_100769390, &type metadata accessor for Date);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v320 = *v563;
        (*v563)(v318, v319);
        sub_1000079B4(v484, &qword_1007757F0);
        sub_1000079B4(v485, &qword_1007757F0);
        v320(v317, v319);
        sub_1000079B4(v314, &qword_1007757F0);
        v171 = v545;
        goto LABEL_81;
      }

      sub_1000079B4(v484, &qword_1007757F0);
      sub_1000079B4(v485, &qword_1007757F0);
      (*v563)(v317, v570);
      v171 = v545;
LABEL_79:
      sub_1000079B4(v314, &qword_100769370);
      goto LABEL_81;
    }

    if (v179 != v413)
    {
      goto LABEL_123;
    }

    (*v464)(v173, v172);
    v528 = *&v173[*(sub_100058000(&qword_100769380) + 48)];
    (*v417)(v441, v173, v436);
    if (qword_100766EA0 != -1)
    {
      swift_once();
    }

    v336 = v431;
    v527 = qword_100768D80;
    TTRShowCompletedSectionHeaderTitleFormatter.title(for:isFirst:)();
    v337 = v424;
    static Calendar.current.getter();
    sub_100058000(&qword_100769388);
    v338 = type metadata accessor for Calendar.Component();
    v339 = *(v338 - 8);
    v340 = *(v339 + 72);
    v341 = (*(v339 + 80) + 32) & ~*(v339 + 80);
    v342 = swift_allocObject();
    *(v342 + 16) = v414;
    v343 = v342 + v341;
    v344 = *(v339 + 104);
    v344(v343, v412, v338);
    v344(v343 + v340, v411, v338);
    sub_100403C3C(v342);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v345 = v504;
    REMRemindersListDataView.DateBucketsModel.RepresentativeDate.date.getter();
    v346 = v437;
    Calendar.dateComponents(_:from:)();

    v529 = *v563;
    v529(v345, v570);
    (*v416)(v337, v425);
    (*v415)(v423, v346, v438);
    v347 = v559;
    TTRRemindersListViewModel.SectionID.EraAndYear.init(dateComponents:)();
    v526 = *v557;
    v526(v347, v410, v565);
    v348 = v560;
    v349 = v336;
    v350 = v566;
    v525 = *v556;
    v525(v560, v349, v566);
    v524 = *v555;
    (v524)(v348, 0, 1, v350);
    v351 = v528;
    v536 = *(v528 + 2);
    v352 = v433;
    TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
    v523 = *v554;
    v523(v558, v352, v567);
    v353 = v435;
    TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
    v522 = *v553;
    (v522)(v440, v353, v568);
    swift_beginAccess();
    v354 = v569;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v569 = sub_1005472D4(0, v354[2] + 1, 1, v354);
    }

    v355 = v482;
    v356 = v459;
    v357 = v481;
    v167 = v483;
    v171 = v545;
    v359 = v569[2];
    v358 = v569[3];
    if (v359 >= v358 >> 1)
    {
      v569 = sub_1005472D4(v358 > 1, v359 + 1, 1, v569);
    }

    v360 = v569;
    v569[2] = v359 + 1;
    v521 = (*(v478 + 80) + 32) & ~*(v478 + 80);
    v518 = *(v478 + 72);
    v517 = *(v478 + 32);
    (v517)(v360 + v521 + v518 * v359, v440, v568);
    v573 = v360;
    swift_endAccess();
    if (!v536)
    {

      v394 = *v561;
LABEL_116:
      v394(v435, v568);
      (*v551)(v433, v567);
      (*v408)(v437, v438);
      (*v550)(v431, v566);
      (*v407)(v441, v436);
      v172 = v461;
      (*v462)(v506, v461);
      v170 = v456;
      v173 = v476;
      v165 = v569;
      goto LABEL_7;
    }

    v361 = v351 + ((*(v448 + 80) + 32) & ~*(v448 + 80));
    v502 = *(v448 + 72);
    v362 = *(v448 + 16);
    v516 = v361;
    v363 = v361;
    v364 = v562;
    v479 = v362;
    while (1)
    {
      v535 = v363;
      (v362)(v357);
      v365 = v486;
      REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
      v366 = *v171;
      (*v171)(v365, 0, 1, v570);
      if (!*(v528 + 2))
      {
        goto LABEL_121;
      }

      v367 = v542;
      v362(v542, v516, v364);
      REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
      v530 = *v564;
      v530(v367, v364);
      v368 = v570;
      v366(v356, 0, 1, v570);
      v369 = *(v543 + 48);
      sub_10000794C(v365, v355, &qword_1007757F0);
      sub_10000794C(v356, v355 + v369, &qword_1007757F0);
      v370 = *v537;
      if ((*v537)(v355, 1, v368) != 1)
      {
        break;
      }

      sub_1000079B4(v356, &qword_1007757F0);
      sub_1000079B4(v365, &qword_1007757F0);
      v371 = v370(v355 + v369, 1, v570);
      v357 = v481;
      if (v371 != 1)
      {
        goto LABEL_103;
      }

      sub_1000079B4(v355, &qword_1007757F0);
LABEL_105:
      v362 = v479;
      v381 = v501;
      REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
      v382 = v489;
      TTRShowCompletedSectionHeaderTitleFormatter.title(for:)();
      v383 = v493;
      (*v549)(v493, v381, v570);
      v384 = v565;
      v526(v383, v546, v565);
      (*v548)(v559, v383, v384);
      v385 = v560;
      v386 = v566;
      v525(v560, v382, v566);
      (v524)(v385, 0, 1, v386);
      v387 = v491;
      TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
      v523(v558, v387, v567);
      REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
      v388 = v496;
      TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
      (v522)(v497, v388, v568);
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v569 = sub_1005472D4(0, v569[2] + 1, 1, v569);
      }

      v390 = v569[2];
      v389 = v569[3];
      v355 = v482;
      v171 = v545;
      if (v390 >= v389 >> 1)
      {
        v569 = sub_1005472D4(v389 > 1, v390 + 1, 1, v569);
      }

      v391 = v569;
      v569[2] = v390 + 1;
      v392 = v391 + v521 + v390 * v518;
      v393 = v568;
      (v517)(v392, v497, v568);
      v573 = v391;
      swift_endAccess();
      v394 = *v561;
      (*v561)(v496, v393);
      (*v551)(v491, v567);
      (*v547)(v493, v565);
      (*v550)(v489, v566);
      v529(v501, v570);
      v364 = v562;
      v530(v357, v562);
      v363 = (v502 + v535);
      if (!--v536)
      {

        v167 = v483;
        goto LABEL_116;
      }
    }

    v372 = v458;
    sub_10000794C(v355, v458, &qword_1007757F0);
    v373 = v370(v355 + v369, 1, v570);
    v357 = v481;
    if (v373 != 1)
    {
      v376 = v504;
      v377 = v570;
      (*v503)(v504, v355 + v369, v570);
      sub_1000704E0(&qword_100769390, &type metadata accessor for Date);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v378 = v529;
      v529(v376, v377);
      v379 = v459;
      sub_1000079B4(v459, &qword_1007757F0);
      sub_1000079B4(v486, &qword_1007757F0);
      v380 = v372;
      v356 = v379;
      v378(v380, v377);
      sub_1000079B4(v355, &qword_1007757F0);
      goto LABEL_105;
    }

    v374 = v459;
    sub_1000079B4(v459, &qword_1007757F0);
    sub_1000079B4(v486, &qword_1007757F0);
    v375 = v372;
    v356 = v374;
    v529(v375, v570);
LABEL_103:
    sub_1000079B4(v355, &qword_100769370);
    goto LABEL_105;
  }

  v195 = v171;
  (*v464)(v173, v172);
  v196 = *&v173[*(sub_100058000(&qword_100769398) + 48)];
  if (qword_100766EA0 != -1)
  {
    swift_once();
  }

  v197 = v452;
  v529 = qword_100768D80;
  TTRShowCompletedSectionHeaderTitleFormatter.title(for:isFirst:)();
  v198 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  v199 = v559;
  (*(*(v198 - 8) + 104))(v559, v442, v198);
  v528 = *v557;
  v528(v199, v449, v565);
  v200 = v560;
  v201 = v197;
  v202 = v566;
  v527 = *v556;
  v527(v560, v201, v566);
  v526 = *v555;
  (v526)(v200, 0, 1, v202);
  v203 = v453;
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  v525 = *v554;
  v525(v558, v203, v567);
  v204 = v454;
  TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
  v524 = *v553;
  v524(v455, v204, v568);
  swift_beginAccess();
  v165 = v569;
  v205 = swift_isUniquelyReferenced_nonNull_native();
  v206 = v533;
  v207 = v562;
  if ((v205 & 1) == 0)
  {
    v165 = sub_1005472D4(0, *(v165 + 16) + 1, 1, v165);
  }

  v209 = *(v165 + 16);
  v208 = *(v165 + 24);
  if (v209 >= v208 >> 1)
  {
    v165 = sub_1005472D4(v208 > 1, v209 + 1, 1, v165);
  }

  *(v165 + 16) = v209 + 1;
  v523 = ((*(v478 + 80) + 32) & ~*(v478 + 80));
  v522 = *(v478 + 72);
  v521 = *(v478 + 32);
  (v521)(v523 + v165 + v522 * v209, v455, v568);
  v573 = v165;
  swift_endAccess();
  v210 = *(v196 + 2);
  if (!v210)
  {

    (*v561)(v454, v568);
LABEL_6:
    (*v551)(v453, v567);
    (*v550)(v452, v566);
    v172 = v461;
    (*v462)(v506, v461);
    v173 = v476;
    (*v563)(v476, v570);
    v167 = v483;
    v171 = v195;
    v170 = v456;
    goto LABEL_7;
  }

  v460 = v194;
  v569 = v165;
  v211 = (*(v448 + 80) + 32) & ~*(v448 + 80);
  v530 = v196;
  v212 = &v196[v211];
  v517 = *(v448 + 72);
  v213 = *(v448 + 16);
  v518 = v212;
  v214 = v531;
  v215 = v520;
  v516 = v213;
  while (1)
  {
    v536 = v210;
    (v213)(v215, v212, v207);
    REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
    v216 = *v195;
    (*v195)(v206, 0, 1, v570);
    if (!*(v530 + 2))
    {
      break;
    }

    v217 = v542;
    (v213)(v542, v518, v207);
    v218 = v532;
    REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
    v535 = *v564;
    v535(v217, v207);
    v219 = v570;
    v216(v218, 0, 1, v570);
    v220 = *(v543 + 48);
    sub_10000794C(v206, v214, &qword_1007757F0);
    sub_10000794C(v218, v214 + v220, &qword_1007757F0);
    v221 = *v537;
    if ((*v537)(v214, 1, v219) != 1)
    {
      v224 = v498;
      sub_10000794C(v214, v498, &qword_1007757F0);
      v225 = v221(v214 + v220, 1, v570);
      v223 = v520;
      if (v225 != 1)
      {
        v227 = v214 + v220;
        v228 = v570;
        v229 = v504;
        (*v503)(v504, v227, v570);
        sub_1000704E0(&qword_100769390, &type metadata accessor for Date);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v230 = *v563;
        (*v563)(v229, v228);
        sub_1000079B4(v532, &qword_1007757F0);
        sub_1000079B4(v533, &qword_1007757F0);
        v230(v224, v228);
        v226 = v509;
        sub_1000079B4(v531, &qword_1007757F0);
        v195 = v545;
        goto LABEL_35;
      }

      sub_1000079B4(v532, &qword_1007757F0);
      sub_1000079B4(v533, &qword_1007757F0);
      (*v563)(v224, v570);
      v195 = v545;
LABEL_32:
      sub_1000079B4(v214, &qword_100769370);
      goto LABEL_33;
    }

    sub_1000079B4(v218, &qword_1007757F0);
    sub_1000079B4(v206, &qword_1007757F0);
    v222 = v221(v214 + v220, 1, v570);
    v223 = v520;
    v195 = v545;
    if (v222 != 1)
    {
      goto LABEL_32;
    }

    sub_1000079B4(v214, &qword_1007757F0);
LABEL_33:
    v226 = v509;
LABEL_35:
    v231 = v544;
    REMRemindersListDataView.CompletedDateBucketsModel.Day.date.getter();
    TTRShowCompletedSectionHeaderTitleFormatter.title(for:)();
    v232 = v539;
    (*v549)(v539, v231, v570);
    v233 = v565;
    v528(v232, v546, v565);
    (*v548)(v559, v232, v233);
    v234 = v560;
    v235 = v566;
    v527(v560, v226, v566);
    (v526)(v234, 0, 1, v235);
    v236 = v538;
    TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
    v525(v558, v236, v567);
    REMRemindersListDataView.CompletedDateBucketsModel.Day.reminders.getter();
    v237 = v540;
    TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
    v524(v541, v237, v568);
    swift_beginAccess();
    v238 = v569;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v238 = sub_1005472D4(0, *(v238 + 16) + 1, 1, v238);
    }

    v240 = *(v238 + 16);
    v239 = *(v238 + 24);
    v214 = v531;
    if (v240 >= v239 >> 1)
    {
      v238 = sub_1005472D4(v239 > 1, v240 + 1, 1, v238);
    }

    *(v238 + 16) = v240 + 1;
    v241 = v523 + v238 + v240 * v522;
    v242 = v238;
    v243 = v568;
    (v521)(v241, v541, v568);
    v569 = v242;
    v573 = v242;
    swift_endAccess();
    v244 = *v561;
    (*v561)(v540, v243);
    (*v551)(v538, v567);
    (*v547)(v539, v565);
    (*v550)(v226, v566);
    (*v563)(v544, v570);
    v207 = v562;
    v535(v223, v562);
    v212 = &v517[v212];
    v210 = v536 - 1;
    v215 = v223;
    v206 = v533;
    v213 = v516;
    if (v536 == 1)
    {

      v165 = v569;
      v244(v454, v568);
      goto LABEL_6;
    }
  }

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
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10007038C()
{

  sub_100058000(&qword_100769360);
  sub_10007047C();
  v1 = TTRRemindersListTreeViewModel.reminderItemsToUpdate<A>(forUpdated:)();

  v2 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  (*(v3 + 48))(v1, ObjectType, v3);

  return swift_unknownObjectRelease();
}

unint64_t sub_10007047C()
{
  result = qword_100769368;
  if (!qword_100769368)
  {
    sub_10005D20C(&qword_100769360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769368);
  }

  return result;
}

uint64_t sub_1000704E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100070538()
{
  result = qword_1007865E0;
  if (!qword_1007865E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1007865E0);
  }

  return result;
}

uint64_t sub_100070584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000705EC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007693C8);
  v1 = sub_100003E30(v0, qword_1007693C8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000706B4(void *a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  v4 = OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_activityTracker;
  type metadata accessor for TTRICollectionViewDragAndDropActivityTracker();
  swift_allocObject();
  *(v1 + v4) = TTRICollectionViewDragAndDropActivityTracker.init()();
  *(v1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_dropPointIndicatorView) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_shouldHandleNextRootViewDragInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_dragAndDropActivityCancellable) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_rootView) = a1;
  v5 = a1;
  TTRICollectionViewDragAndDropActivityTracker.changePublisher.getter();
  sub_100058000(&qword_100769510);
  sub_10000E188(&unk_100784590, &qword_100769510);
  v6 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  *(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_dragAndDropActivityCancellable) = v6;

  return v2;
}

uint64_t sub_10007086C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if ((TTRICollectionViewDragAndDropActivityTracker.hasActiveDrag.getter() & 1) == 0)
    {
      TTRICollectionViewDragAndDropActivityTracker.hasActiveDrop.getter();
    }

    sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(v1 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
    type metadata accessor for TTRRemindersBoardCellPresentationStatesPresenterCapability();

    dispatch thunk of TTRRemindersBoardCellCellPresentationContext.requestHandleDragAndDropActiveStateChange(_:)();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10007093C(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076FE00);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  sub_10000794C(a1, v8 - v3, &qword_10076FE00);
  v5 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &qword_10076FE00);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v5;
    v6 = sub_1000317B8(&v10);
    sub_1000776F4(v4, v6, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
  }

  v8[1] = 0xD000000000000022;
  v8[2] = 0x800000010066F5E0;
  AnyHashable.init<A>(_:)();
  UIDragItem.setLocalObject(_:forKey:)();
  sub_100077654(v9);
  return sub_1000079B4(&v10, &qword_10076AE40);
}

uint64_t sub_100070AD8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076FE00);
  __chkstk_darwin(v6 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v15 - v10;
  v15[1] = 0xD000000000000022;
  v15[2] = 0x800000010066F5E0;
  AnyHashable.init<A>(_:)();
  UIDragItem.localObject<A>(ofType:forKey:)();
  sub_100077654(v16);
  sub_10000794C(v11, v8, &qword_10076FE00);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1000079B4(v11, &qword_10076FE00);
    sub_1000079B4(v8, &qword_10076FE00);
LABEL_6:
    v13 = 1;
    return (*(v3 + 56))(a1, v13, 1, v2);
  }

  sub_1000776F4(v8, v5, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
  v12 = static UUID.== infix(_:_:)();
  sub_1000079B4(v11, &qword_10076FE00);
  if ((v12 & 1) == 0)
  {
    sub_10007780C(v5, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
    goto LABEL_6;
  }

  sub_1000776F4(v5, a1, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
  v13 = 0;
  return (*(v3 + 56))(a1, v13, 1, v2);
}

uint64_t sub_100070D88(void *a1)
{
  v3 = sub_100058000(&qword_10076FE00);
  __chkstk_darwin(v3 - 8);
  v5 = v36 - v4;
  v6 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v39 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100058000(&unk_100782210);
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = (v36 - v10);
  v12 = type metadata accessor for TTRIRemindersBoardDragItemSources.Source(0);
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v49 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v14 = sub_100076064(a1, v1);
  v15 = v14[2];
  if (v15)
  {
    v36[1] = a1;
    v50 = _swiftEmptyArrayStorage;
    v40 = v14;
    result = sub_1004A1D30(0, v15, 0);
    v17 = v40;
    v18 = 0;
    v43 = v40 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v44 = v15;
    v19 = v49;
    v48 = v50;
    v42 = (v7 + 48);
    v37 = v11;
    v38 = v5;
    while (v18 < v17[2])
    {
      sub_10000794C(&v43[*(v9 + 72) * v18], v11, &unk_100782210);
      v20 = *v11;
      sub_10000794C(v11 + *(v45 + 48), v5, &qword_10076FE00);
      if ((*v42)(v5, 1, v6) == 1)
      {
        sub_1000079B4(v5, &qword_10076FE00);
        *v19 = v20;
        swift_storeEnumTagMultiPayload();
        v21 = v20;
      }

      else
      {
        v22 = v39;
        sub_1000776F4(v5, v39, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        v23 = *(v6 + 20);
        v24 = type metadata accessor for TTRRemindersListViewModel.ItemID();
        v25 = *(*(v24 - 8) + 16);
        v25(v49, v22 + v23, v24);
        v41 = *(v6 + 24);
        v26 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
        v27 = v6;
        v28 = v26[5];
        v29 = type metadata accessor for IndexPath();
        v30 = &v49[v28];
        v6 = v27;
        v5 = v38;
        (*(*(v29 - 8) + 16))(v30, v22 + v41, v29);
        v25(&v49[v26[6]], v22 + *(v27 + 28), v24);
        v11 = v37;
        LOBYTE(v25) = *(v22 + *(v27 + 32));
        v31 = v22;
        v17 = v40;
        sub_10007780C(v31, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        v49[v26[7]] = v25;
        v19 = v49;
        swift_storeEnumTagMultiPayload();
      }

      sub_1000079B4(v11, &unk_100782210);
      v32 = v48;
      v50 = v48;
      v34 = v48[2];
      v33 = v48[3];
      if (v34 >= v33 >> 1)
      {
        sub_1004A1D30(v33 > 1, v34 + 1, 1);
        v17 = v40;
        v32 = v50;
      }

      ++v18;
      v32[2] = v34 + 1;
      v35 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v48 = v32;
      result = sub_1000776F4(v19, v32 + v35 + *(v46 + 72) * v34, type metadata accessor for TTRIRemindersBoardDragItemSources.Source);
      if (v44 == v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1000712DC@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v429 = a4;
  v418 = a3;
  v425 = a5;
  v8 = sub_100058000(&qword_100769520);
  __chkstk_darwin(v8 - 8);
  v361 = &v360 - v9;
  v10 = sub_100058000(&qword_100769528);
  __chkstk_darwin(v10 - 8);
  v372 = &v360 - v11;
  v371 = sub_100058000(&qword_100769530);
  v370 = *(v371 - 8);
  __chkstk_darwin(v371);
  v360 = &v360 - v12;
  v393 = type metadata accessor for TTRICollectionViewEmptySpaceType();
  v392 = *(v393 - 8);
  __chkstk_darwin(v393);
  v394 = &v360 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v396 = &v360 - v15;
  v411 = type metadata accessor for TTRICollectionViewGapHit();
  v410 = *(v411 - 8);
  __chkstk_darwin(v411);
  v409 = &v360 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&unk_10076FE30);
  __chkstk_darwin(v17 - 8);
  v395 = &v360 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v399 = &v360 - v20;
  __chkstk_darwin(v21);
  v403 = &v360 - v22;
  v413 = type metadata accessor for TTRAdjustedIndexPath();
  v412 = *(v413 - 8);
  __chkstk_darwin(v413);
  v390 = &v360 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v397 = &v360 - v25;
  v416 = type metadata accessor for TTRICollectionViewDropIntent.TargetType();
  v415 = *(v416 - 8);
  __chkstk_darwin(v416);
  v376 = &v360 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v408 = &v360 - v28;
  __chkstk_darwin(v29);
  v406 = &v360 - v30;
  v417 = sub_100058000(&qword_100769538);
  __chkstk_darwin(v417);
  v402 = &v360 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v437 = &v360 - v33;
  v34 = sub_100058000(&qword_1007821E0);
  __chkstk_darwin(v34 - 8);
  v375 = &v360 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v391 = &v360 - v37;
  __chkstk_darwin(v38);
  v383 = &v360 - v39;
  __chkstk_darwin(v40);
  v398 = &v360 - v41;
  __chkstk_darwin(v42);
  v421 = &v360 - v43;
  __chkstk_darwin(v44);
  v422 = &v360 - v45;
  v431 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  v430 = *(v431 - 8);
  __chkstk_darwin(v431);
  v374 = &v360 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v373 = &v360 - v48;
  __chkstk_darwin(v49);
  v389 = &v360 - v50;
  __chkstk_darwin(v51);
  v388 = &v360 - v52;
  __chkstk_darwin(v53);
  v385 = &v360 - v54;
  __chkstk_darwin(v55);
  v384 = &v360 - v56;
  __chkstk_darwin(v57);
  v405 = &v360 - v58;
  __chkstk_darwin(v59);
  v404 = &v360 - v60;
  v401 = type metadata accessor for TTRICollectionViewItemHit.Portion();
  v400 = *(v401 - 8);
  __chkstk_darwin(v401);
  v382 = &v360 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v379 = &v360 - v63;
  v446 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
  v439 = *(v446 - 8);
  __chkstk_darwin(v446);
  v377 = &v360 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v387 = &v360 - v66;
  __chkstk_darwin(v67);
  v378 = &v360 - v68;
  __chkstk_darwin(v69);
  v420 = &v360 - v70;
  v443 = type metadata accessor for TTRUnadjustedIndexPath();
  v440 = *(v443 - 8);
  __chkstk_darwin(v443);
  v369 = &v360 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v386 = &v360 - v73;
  __chkstk_darwin(v74);
  v380 = &v360 - v75;
  __chkstk_darwin(v76);
  v381 = &v360 - v77;
  __chkstk_darwin(v78);
  v441 = &v360 - v79;
  v433 = type metadata accessor for TTRICollectionViewHitIndexPaths();
  v414 = *(v433 - 8);
  __chkstk_darwin(v433);
  v432 = &v360 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v424 = type metadata accessor for TTRICollectionViewItemHit();
  v423 = *(v424 - 8);
  __chkstk_darwin(v424);
  v438 = &v360 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100058000(&qword_100769540);
  __chkstk_darwin(v82 - 8);
  v427 = &v360 - v83;
  v84 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v84 - 8);
  v86 = &v360 - v85;
  v442 = type metadata accessor for IndexPath();
  v449 = *(v442 - 8);
  __chkstk_darwin(v442);
  v435 = &v360 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v434 = &v360 - v89;
  __chkstk_darwin(v90);
  v407 = &v360 - v91;
  v92 = type metadata accessor for TTRICollectionViewHitTestResult();
  v93 = *(v92 - 8);
  v444 = v92;
  v445 = v93;
  __chkstk_darwin(v92);
  v428 = &v360 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v95);
  v97 = &v360 - v96;
  v98 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v99 = *(v98 - 8);
  __chkstk_darwin(v98);
  v101 = &v360 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = a1;
  v426 = *(a1 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_session);
  v419 = v5;
  v102 = sub_100070D88(v426);
  v104 = v103;
  v105 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
  swift_beginAccess();
  v106 = *(v99 + 16);
  v447 = a2;
  v365 = v105;
  v364 = v99 + 16;
  v363 = v106;
  v106(v101, a2 + v105, v98);
  v107 = sub_1005D0B38(v101, v102, v104);
  v109 = v108;
  v452 = v110;
  v112 = v111;
  v113 = v449;

  swift_unknownObjectRelease();
  v114 = *(v99 + 8);
  v366 = v101;
  v368 = v98;
  v367 = v99 + 8;
  v362 = v114;
  v114(v101, v98);
  v115 = v442;
  sub_10000794C(v429, v86, &unk_100771B10);
  v116 = (*(v113 + 48))(v86, 1, v115);
  v450 = v112;
  v451 = v109;
  v448 = v107;
  if (v116 == 1)
  {
    v117 = v115;
    sub_1000079B4(v86, &unk_100771B10);
    sub_1003FBF5C(v426, *(v447 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView), v97);
    v119 = v444;
    v118 = v445;
    (*(v445 + 104))(v97, enum case for TTRICollectionViewHitTestResult.emptySpace(_:), v444);
  }

  else
  {
    v120 = v407;
    (*(v113 + 32))(v407, v86, v115);
    sub_1003FACE0(*(v447 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView), v426, v109, v452, v112, v120, v97);
    v121 = *(v113 + 8);
    v117 = v115;
    v121(v120, v115);
    v119 = v444;
    v118 = v445;
  }

  v122 = *(v436 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_debugInfo);
  v123 = *(v118 + 16);
  v124 = v427;
  v123(v427, v97, v119);
  (*(v118 + 56))(v124, 0, 1, v119);
  v125 = OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastHitTestResult;
  swift_beginAccess();
  sub_10000D184(v124, v122 + v125, &qword_100769540);
  swift_endAccess();
  v126 = v428;
  v429 = v97;
  v123(v428, v97, v119);
  v127 = (*(v118 + 88))(v126, v119);
  if (v127 == enum case for TTRICollectionViewHitTestResult.item(_:))
  {
    (*(v118 + 96))(v126, v119);
    (*(v423 + 32))(v438, v126, v424);
    v128 = v432;
    TTRICollectionViewItemHit.indexPaths.getter();
    v129 = v434;
    TTRICollectionViewHitIndexPaths.inDestination.getter();
    v130 = *(v414 + 8);
    v130(v128, v433);
    v131 = *(v449 + 16);
    v132 = v117;
    v131(v435, v129, v117);
    TTRUnadjustedIndexPath.init(_:)();
    v133 = *(v451 + 16);
    v134 = *(v452 + 16);
    if (v450 >> 62)
    {
      v135 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v135 = *((v450 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v136 = v440;
    v137 = v134 + v135;
    if (__OFADD__(v134, v135))
    {
      __break(1u);
    }

    else
    {
      if (!v133)
      {
LABEL_11:
        v140 = v443;
        v141 = v432;
        TTRICollectionViewItemHit.indexPaths.getter();
        TTRICollectionViewHitIndexPaths.presentationDestination.getter();
        v130(v141, v433);
        v142 = v420;
        TTRAdjustedIndexPath.init(_:)();
        v143 = &enum case for TTRICollectionViewInsertAtIndexPathOption.at(_:);
        goto LABEL_12;
      }

      v138 = __OFADD__(v133, v137);
      v139 = v133 + v137;
      if (!v138)
      {
        if (v139 == 1)
        {
          goto LABEL_11;
        }

        v233 = v379;
        TTRICollectionViewItemHit.portion.getter();
        v234 = (*(v400 + 88))(v233, v401);
        if (v234 == enum case for TTRICollectionViewItemHit.Portion.top(_:))
        {
          v140 = v443;
          v131(v435, v434, v132);
          v142 = v420;
          TTRUnadjustedIndexPath.init(_:)();
          v143 = &enum case for TTRICollectionViewInsertAtIndexPathOption.before(_:);
          goto LABEL_12;
        }

        v142 = v420;
        if (v234 == enum case for TTRICollectionViewItemHit.Portion.bottom(_:))
        {
          v140 = v443;
          v131(v435, v434, v132);
          TTRUnadjustedIndexPath.init(_:)();
          v143 = &enum case for TTRICollectionViewInsertAtIndexPathOption.after(_:);
LABEL_12:
          v144 = v439;
          v145 = *(v439 + 104);
          v146 = v446;
          v145(v142, *v143, v446);
          v436 = *(v136 + 16);
          v147 = v422;
          v148 = v441;
          (v436)(v422, v441, v140);
          v145(v147, enum case for TTRICollectionViewInsertAtIndexPathOption.before(_:), v146);
          v435 = *(v144 + 56);
          (v435)(v147, 0, 1, v146);
          v149 = v421;
          v150 = v436;
          (v436)(v421, v148, v140);
          v145(v149, enum case for TTRICollectionViewInsertAtIndexPathOption.after(_:), v146);
          (v435)(v149, 0, 1, v146);
          v151 = v437;
          (v150)(v437, v148, v140);
          v152 = v417;
          v153 = v417 + 12;
          sub_10000794C(v147, v151 + v417[12], &qword_1007821E0);
          v155 = v152[16];
          v154 = v152 + 16;
          sub_10000794C(v149, v151 + v155, &qword_1007821E0);
          v156 = v447;
          v157 = v448;
          v158 = v418;
          v159 = v451;
          v160 = v452;
          v161 = v450;
          v162 = sub_1000747A4(v447, v418, v448, v451, v452, v450);
          if (UIDropOperation.isCancelOrForbidden.getter())
          {
            v163 = v416;
            (*(v415 + 104))(v406, enum case for TTRICollectionViewDropIntent.TargetType.item(_:), v416);
            v164 = v381;
            v165 = v420;
            sub_1005D0F7C(v420, v159, v381);
            v166 = v156;
            v167 = v164;
            v168 = v161;
            v169 = v158;
            v170 = v160;
            v447 = sub_100074A7C(v166, v169, v157, v159, v160, v161, v167);
            if (UIDropOperation.isCancelOrForbidden.getter())
            {
              v171 = *(v440 + 8);
              v172 = v443;
              v171(v167, v443);
              (*(v415 + 8))(v406, v163);
              sub_1000079B4(v437, &qword_100769538);
              sub_1000079B4(v421, &qword_1007821E0);
              sub_1000079B4(v422, &qword_1007821E0);
              (*(v439 + 8))(v165, v446);
              v171(v441, v172);
              (*(v449 + 8))(v434, v442);
              (*(v423 + 8))(v438, v424);
              (*(v445 + 8))(v429, v444);
              v173 = v431;
              v174 = v384;
              v175 = &v384[*(v431 + 24)];
              v176 = &enum case for TTRICollectionViewDropIntent.unspecified(_:);
              v177 = v425;
              v178 = v430;
            }

            else
            {
              v248 = v397;
              sub_1005D12C4(v165, v159, v397);
              v249 = v167;
              v250 = v165;
              v251 = v168;
              v252 = *(v440 + 8);
              v253 = v443;
              v252(v249, v443);
              sub_1000079B4(v437, &qword_100769538);
              v254 = v163;
              sub_1000079B4(v421, &qword_1007821E0);
              sub_1000079B4(v422, &qword_1007821E0);
              (*(v439 + 8))(v250, v446);
              v252(v441, v253);
              (*(v449 + 8))(v434, v442);
              (*(v423 + 8))(v438, v424);
              (*(v445 + 8))(v429, v444);
              v173 = v431;
              v174 = v384;
              v175 = &v384[*(v431 + 24)];
              v255 = *(sub_100058000(&qword_10076FE60) + 48);
              v256 = v248;
              v161 = v251;
              (*(v412 + 32))(v175, v256, v413);
              (*(v415 + 32))(&v175[v255], v406, v254);
              v176 = &enum case for TTRICollectionViewDropIntent.insertAtDestinationIndexPath(_:);
              v177 = v425;
              v178 = v430;
              v170 = v160;
            }

            v257 = *v176;
            v258 = type metadata accessor for TTRICollectionViewDropIntent();
            (*(*(v258 - 8) + 104))(v175, v257, v258);
            v259 = v451;
            *v174 = v448;
            *(v174 + 1) = v259;
            *(v174 + 2) = v170;
            *(v174 + 3) = v161;
            *(v174 + 4) = v447;
LABEL_54:
            v333 = v405;
            v334 = v404;
            sub_1000776F4(v174, v405, type metadata accessor for TTRIRemindersBoardDropProposal);
            sub_1000776F4(v333, v334, type metadata accessor for TTRIRemindersBoardDropProposal);
            sub_1000776F4(v334, v177, type metadata accessor for TTRIRemindersBoardDropProposal);
            return (*(v178 + 56))(v177, 0, 1, v173);
          }

          v435 = v162;
          v216 = v382;
          TTRICollectionViewItemHit.portion.getter();
          v217 = (*(v400 + 88))(v216, v401);
          v218 = v153;
          v219 = v154;
          if (v217 == enum case for TTRICollectionViewItemHit.Portion.top(_:) || (v218 = v154, v219 = v153, v217 == enum case for TTRICollectionViewItemHit.Portion.bottom(_:)))
          {
            v436 = v153;
            v417 = v154;
            v220 = v402;
            sub_10000794C(v437, v402, &qword_100769538);
            v221 = *v219;
            v222 = v398;
            sub_100016588(v220 + *v218, v398, &qword_1007821E0);
            sub_1000079B4(v220 + v221, &qword_1007821E0);
            v223 = *(v440 + 8);
            v224 = v443;
            v223(v220, v443);
            v225 = v430 + 56;
            v226 = *(v430 + 56);
            v226(v403, 1, 1, v431);
            v227 = v383;
            sub_10000794C(v222, v383, &qword_1007821E0);
            v228 = v439;
            v229 = v446;
            if ((*(v439 + 48))(v227, 1, v446) == 1)
            {
              sub_1000079B4(v222, &qword_1007821E0);
              sub_1000079B4(v421, &qword_1007821E0);
              sub_1000079B4(v422, &qword_1007821E0);
              (*(v228 + 8))(v420, v229);
              v223(v441, v224);
              (*(v449 + 8))(v434, v442);
              (*(v423 + 8))(v438, v424);
              (*(v445 + 8))(v429, v444);
              sub_1000079B4(v227, &qword_1007821E0);
              v230 = v448;
              v173 = v431;
              v231 = v436;
              v232 = v403;
LABEL_48:
              v318 = v399;
              sub_100016588(v232, v399, &unk_10076FE30);
              v178 = v430;
              v319 = *(v430 + 48);
              if (v319(v318, 1, v173) == 1)
              {
                v320 = *(v173 + 24);
                v321 = v402;
                sub_100016588(v437, v402, &qword_100769538);
                v449 = *v231;
                v322 = v173;
                v323 = *v417;
                v324 = v230;
                v325 = v385;
                (*(v440 + 32))(&v385[v320], v321, v443);
                v326 = enum case for TTRICollectionViewDropIntent.insertIntoDestinationIndexPath(_:);
                v327 = type metadata accessor for TTRICollectionViewDropIntent();
                (*(*(v327 - 8) + 104))(&v325[v320], v326, v327);
                v328 = v451;
                v329 = v452;
                *v325 = v324;
                *(v325 + 1) = v328;
                v330 = v450;
                *(v325 + 2) = v329;
                *(v325 + 3) = v330;
                *(v325 + 4) = v435;
                v331 = v321 + v323;
                v173 = v322;
                sub_1000079B4(v331, &qword_1007821E0);
                v332 = v399;
                sub_1000079B4(v321 + v449, &qword_1007821E0);
                if (v319(v332, 1, v322) != 1)
                {
                  sub_1000079B4(v332, &unk_10076FE30);
                }

                v174 = v325;
              }

              else
              {
                sub_1000079B4(v437, &qword_100769538);

                swift_unknownObjectRelease();
                v174 = v385;
                sub_1000776F4(v318, v385, type metadata accessor for TTRIRemindersBoardDropProposal);
              }

              v177 = v425;
              goto LABEL_54;
            }

            v260 = v223;
            v432 = v226;
            v433 = v225;
            v261 = v378;
            (*(v228 + 32))(v378, v227, v229);
            v262 = v380;
            v263 = v228;
            v264 = v448;
            v265 = v451;
            v266 = v452;
            v267 = v450;
            sub_1005D0F7C(v261, v451, v380);
            v268 = sub_100074A7C(v447, v418, v264, v265, v266, v267, v262);
            if (UIDropOperation.isCancelOrForbidden.getter())
            {
              v269 = v262;
              v270 = v443;
              v260(v269, v443);
              v271 = *(v263 + 8);
              v271(v261, v229);
              sub_1000079B4(v398, &qword_1007821E0);
              sub_1000079B4(v421, &qword_1007821E0);
              sub_1000079B4(v422, &qword_1007821E0);
              v271(v420, v229);
              v260(v441, v270);
              (*(v449 + 8))(v434, v442);
              (*(v423 + 8))(v438, v424);
              (*(v445 + 8))(v429, v444);
              v230 = v448;
              v232 = v403;
              v173 = v431;
            }

            else
            {
              v272 = TTRICollectionViewItemHit.isCloseToMiddle.getter();
              v273 = v443;
              v274 = v260;
              if (v272)
              {
                v260(v380, v443);
                v275 = *(v439 + 8);
                v276 = v446;
                v275(v261, v446);
                v277 = v403;
                sub_1000079B4(v403, &unk_10076FE30);
                sub_1000079B4(v398, &qword_1007821E0);
                sub_1000079B4(v421, &qword_1007821E0);
                sub_1000079B4(v422, &qword_1007821E0);
                v275(v420, v276);
                v260(v441, v273);
                (*(v449 + 8))(v434, v442);
                (*(v423 + 8))(v438, v424);
                (*(v445 + 8))(v429, v444);
                v278 = *(v431 + 24);
                v279 = v402;
                sub_10000794C(v437, v402, &qword_100769538);
                v231 = v436;
                v280 = *v436;
                v281 = *v417;
                (*(v440 + 32))(&v277[v278], v279, v443);
                v282 = enum case for TTRICollectionViewDropIntent.insertIntoDestinationIndexPath(_:);
                v283 = type metadata accessor for TTRICollectionViewDropIntent();
                (*(*(v283 - 8) + 104))(&v277[v278], v282, v283);
                v284 = v448;
                v285 = v451;
                v286 = v452;
                *v277 = v448;
                *(v277 + 1) = v285;
                v287 = v450;
                *(v277 + 2) = v286;
                *(v277 + 3) = v287;
                *(v277 + 4) = v435;
                swift_unknownObjectRetain();

                v173 = v431;
                sub_1000079B4(v279 + v281, &qword_1007821E0);
                v288 = v279 + v280;
                v230 = v284;
                sub_1000079B4(v288, &qword_1007821E0);
                (v432)(v277, 0, 1, v173);
                v232 = v277;
                goto LABEL_48;
              }

              v230 = v448;
              sub_1005D12C4(v261, v451, v397);
              v274(v380, v273);
              v308 = *(v439 + 8);
              v309 = v446;
              v308(v261, v446);
              v310 = v403;
              sub_1000079B4(v403, &unk_10076FE30);
              sub_1000079B4(v398, &qword_1007821E0);
              sub_1000079B4(v421, &qword_1007821E0);
              sub_1000079B4(v422, &qword_1007821E0);
              v308(v420, v309);
              v173 = v431;
              v274(v441, v443);
              (*(v449 + 8))(v434, v442);
              (*(v423 + 8))(v438, v424);
              (*(v445 + 8))(v429, v444);
              v311 = v310 + *(v173 + 24);
              v312 = *(sub_100058000(&qword_10076FE60) + 48);
              (*(v412 + 32))(v311, v397, v413);
              (*(v415 + 104))(&v311[v312], enum case for TTRICollectionViewDropIntent.TargetType.item(_:), v416);
              v313 = enum case for TTRICollectionViewDropIntent.insertAtDestinationIndexPath(_:);
              v314 = type metadata accessor for TTRICollectionViewDropIntent();
              (*(*(v314 - 8) + 104))(v311, v313, v314);
              v316 = v451;
              v315 = v452;
              *v310 = v230;
              v310[1] = v316;
              v317 = v450;
              v310[2] = v315;
              v310[3] = v317;
              v310[4] = v268;
              (v432)(v310, 0, 1, v173);
              swift_unknownObjectRetain();

              v232 = v310;
            }

            v231 = v436;
            goto LABEL_48;
          }
        }

LABEL_67:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_66:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_67;
  }

  v179 = v412;
  v180 = v446;
  if (v127 == enum case for TTRICollectionViewHitTestResult.gap(_:))
  {
    (*(v118 + 96))(v126, v119);
    (*(v410 + 32))(v409, v126, v411);
    v181 = v432;
    TTRICollectionViewGapHit.indexPaths.getter();
    TTRICollectionViewHitIndexPaths.presentationDestination.getter();
    (*(v414 + 8))(v181, v433);
    v182 = v390;
    TTRAdjustedIndexPath.init(_:)();
    v183 = v387;
    (*(v179 + 16))(v387, v182, v413);
    v184 = v439;
    (*(v439 + 104))(v183, enum case for TTRICollectionViewInsertAtIndexPathOption.at(_:), v180);
    v185 = v179;
    v186 = v415;
    (*(v415 + 104))(v408, enum case for TTRICollectionViewDropIntent.TargetType.item(_:), v416);
    v187 = v386;
    v188 = v448;
    v189 = v451;
    v190 = v452;
    v191 = v450;
    sub_1005D0F7C(v183, v451, v386);
    v449 = sub_100074A7C(v447, v418, v188, v189, v190, v191, v187);
    if (UIDropOperation.isCancelOrForbidden.getter())
    {
      (*(v440 + 8))(v187, v443);
      (*(v186 + 8))(v408, v416);
      (*(v184 + 8))(v183, v446);
      (*(v185 + 8))(v182, v413);
      (*(v410 + 8))(v409, v411);
      (*(v445 + 8))(v429, v444);
      v192 = v431;
      v193 = v389;
      v194 = &v389[*(v431 + 24)];
      v195 = &enum case for TTRICollectionViewDropIntent.unspecified(_:);
      v196 = v425;
      v197 = v448;
    }

    else
    {
      v235 = v397;
      v236 = v448;
      sub_1005D12C4(v183, v451, v397);
      (*(v440 + 8))(v187, v443);
      (*(v184 + 8))(v183, v446);
      v237 = v413;
      (*(v185 + 8))(v182, v413);
      (*(v410 + 8))(v409, v411);
      (*(v445 + 8))(v429, v444);
      v192 = v431;
      v193 = v389;
      v194 = &v389[*(v431 + 24)];
      v197 = v236;
      v238 = *(sub_100058000(&qword_10076FE60) + 48);
      (*(v185 + 32))(v194, v235, v237);
      (*(v186 + 32))(&v194[v238], v408, v416);
      v195 = &enum case for TTRICollectionViewDropIntent.insertAtDestinationIndexPath(_:);
      v196 = v425;
    }

    v239 = v430;
    v240 = *v195;
    v241 = type metadata accessor for TTRICollectionViewDropIntent();
    (*(*(v241 - 8) + 104))(v194, v240, v241);
    v242 = v451;
    v243 = v452;
    *v193 = v197;
    v193[1] = v242;
    v244 = v449;
    v245 = v450;
    v193[2] = v243;
    v193[3] = v245;
    v193[4] = v244;
    v246 = v388;
    sub_1000776F4(v193, v388, type metadata accessor for TTRIRemindersBoardDropProposal);
    sub_1000776F4(v246, v196, type metadata accessor for TTRIRemindersBoardDropProposal);
    return (*(v239 + 56))(v196, 0, 1, v192);
  }

  v198 = v448;
  if (v127 != enum case for TTRICollectionViewHitTestResult.emptySpace(_:))
  {
    goto LABEL_66;
  }

  (*(v118 + 96))(v126, v119);
  v199 = v392;
  v200 = v126;
  v201 = v396;
  v202 = v393;
  (*(v392 + 32))(v396, v200, v393);
  v203 = v118;
  v204 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
  v205 = v436;
  swift_beginAccess();
  v206 = v205 + v204;
  v207 = v395;
  sub_10000794C(v206, v395, &unk_10076FE30);
  v208 = v394;
  (*(v199 + 16))(v394, v201, v202);
  v209 = (*(v199 + 88))(v208, v202);
  v210 = v391;
  if (v209 == enum case for TTRICollectionViewEmptySpaceType.supplementarySectionHeader(_:))
  {
    goto LABEL_38;
  }

  if (v209 != enum case for TTRICollectionViewEmptySpaceType.belowAllContents(_:))
  {
    v203 = v445;
    if (v209 != enum case for TTRICollectionViewEmptySpaceType.others(_:))
    {
LABEL_68:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

LABEL_38:

    swift_unknownObjectRelease();
    (*(v199 + 8))(v201, v202);
    (*(v203 + 8))(v429, v119);
    v215 = v207;
    return sub_100016588(v215, v425, &unk_10076FE30);
  }

  v211 = v394;
  (*(v199 + 96))(v394, v202);
  sub_100016588(v211, v210, &qword_1007821E0);
  v212 = v375;
  sub_10000794C(v210, v375, &qword_1007821E0);
  v213 = v439;
  v214 = v446;
  if ((*(v439 + 48))(v212, 1, v446) == 1)
  {

    swift_unknownObjectRelease();
    sub_1000079B4(v210, &qword_1007821E0);
    (*(v199 + 8))(v396, v202);
    (*(v445 + 8))(v429, v119);
    sub_1000079B4(v212, &qword_1007821E0);
    v215 = v395;
    return sub_100016588(v215, v425, &unk_10076FE30);
  }

  (*(v213 + 32))(v377, v212, v214);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v290 = Strong;
    v291 = v447;
    v292 = v366;
    v293 = v368;
    v363(v366, v447 + v365, v368);
    sub_10000C36C((v290 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(v290 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
    v294 = v372;
    sub_10013B6DC(v372);
    v295 = v291;
    v362(v292, v293);
    swift_unknownObjectRelease();
    v296 = v370;
    v297 = v371;
    v298 = (*(v370 + 48))(v294, 1, v371);
    v299 = v416;
    if (v298 != 1)
    {
      v300 = v360;
      (*(v296 + 32))(v360, v294, v297);
      v301 = v296;
      v302 = v361;
      TTRBoardColumnDiffableDataSource.indexPath(forInsertingAt:)();
      v303 = v302;
      (*(v301 + 8))(v300, v297);
      v304 = v440;
      v305 = v443;
      v306 = (*(v440 + 48))(v303, 1, v443);
      v307 = v451;
      if (v306 == 1)
      {
        sub_1000079B4(v303, &qword_100769520);
      }

      else
      {
        v335 = v439;
        v336 = v377;
        v337 = v446;
        (*(v439 + 8))(v377, v446);
        (*(v304 + 32))(v336, v361, v305);
        (*(v335 + 104))(v336, enum case for TTRICollectionViewInsertAtIndexPathOption.before(_:), v337);
      }

      v295 = v447;
      v210 = v391;
      goto LABEL_59;
    }
  }

  else
  {
    v294 = v372;
    (*(v370 + 56))(v372, 1, 1, v371);
    v295 = v447;
    v299 = v416;
  }

  sub_1000079B4(v294, &qword_100769528);
  v307 = v451;
LABEL_59:
  v338 = v369;
  v339 = v415;
  (*(v415 + 104))(v376, enum case for TTRICollectionViewDropIntent.TargetType.emptySpace(_:), v299);
  v340 = v452;
  v341 = v198;
  v342 = v450;
  sub_1005D0F7C(v377, v307, v338);
  v343 = sub_100074A7C(v295, v418, v341, v307, v340, v342, v338);
  if (UIDropOperation.isCancelOrForbidden.getter())
  {
    (*(v440 + 8))(v338, v443);
    (*(v339 + 8))(v376, v416);
    (*(v439 + 8))(v377, v446);
    sub_1000079B4(v210, &qword_1007821E0);
    sub_1000079B4(v395, &unk_10076FE30);
    (*(v392 + 8))(v396, v393);
    v344 = v340;
    (*(v445 + 8))(v429, v119);
    v345 = v431;
    v346 = v374;
    v347 = &v374[*(v431 + 24)];
    v348 = &enum case for TTRICollectionViewDropIntent.unspecified(_:);
  }

  else
  {
    v349 = v439;
    v449 = v343;
    v350 = v397;
    v351 = v377;
    sub_1005D12C4(v377, v451, v397);
    (*(v440 + 8))(v338, v443);
    (*(v349 + 8))(v351, v446);
    sub_1000079B4(v210, &qword_1007821E0);
    sub_1000079B4(v395, &unk_10076FE30);
    (*(v392 + 8))(v396, v393);
    v344 = v340;
    (*(v445 + 8))(v429, v119);
    v345 = v431;
    v346 = v374;
    v347 = &v374[*(v431 + 24)];
    v352 = *(sub_100058000(&qword_10076FE60) + 48);
    v353 = v350;
    v343 = v449;
    (*(v179 + 32))(v347, v353, v413);
    (*(v339 + 32))(&v347[v352], v376, v416);
    v348 = &enum case for TTRICollectionViewDropIntent.insertAtDestinationIndexPath(_:);
  }

  v354 = *v348;
  v355 = type metadata accessor for TTRICollectionViewDropIntent();
  (*(*(v355 - 8) + 104))(v347, v354, v355);
  v356 = v451;
  *v346 = v448;
  v346[1] = v356;
  v346[2] = v344;
  v346[3] = v342;
  v346[4] = v343;
  v357 = v373;
  sub_1000776F4(v346, v373, type metadata accessor for TTRIRemindersBoardDropProposal);
  v358 = v357;
  v359 = v425;
  sub_1000776F4(v358, v425, type metadata accessor for TTRIRemindersBoardDropProposal);
  return (*(v430 + 56))(v359, 0, 1, v345);
}

uint64_t sub_1000747A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v20 = a3;
  v21 = a4;
  v6 = sub_100058000(&qword_100769548);
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v19 - v7);
  v9 = sub_100058000(&unk_10076FE10);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_100058000(&unk_100784640);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - v14;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    TTRBoardColumnDiffableDataSource.itemLocation(forItemAt:)();
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      swift_unknownObjectRelease();
      sub_1000079B4(v11, &unk_10076FE10);
      return 0;
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      (*(v13 + 16))(v8, v15, v12);
      v17 = v22;
      (*(v22 + 104))(v8, enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:), v6);
      v18 = sub_1004834C8(v20, v21, v23, v24, v8);
      swift_unknownObjectRelease();
      (*(v17 + 8))(v8, v6);
      (*(v13 + 8))(v15, v12);
      return v18;
    }
  }

  return result;
}

uint64_t sub_100074A7C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a7;
  v28 = a6;
  v24 = a3;
  v30 = a1;
  v29 = sub_100058000(&qword_100769548);
  v25 = *(v29 - 8);
  __chkstk_darwin(v29);
  v10 = (&v23 - v9);
  v11 = sub_100058000(&unk_10076FE20);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_100058000(&unk_100784660);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - v16;
  v32 = a4;
  v26 = a4;

  v27 = a5;
  sub_1000815A4(v18);
  sub_100058000(&unk_10076FE40);
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_10000E188(&qword_100769550, &unk_10076FE40);
  sub_10007775C(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  Sequence.mapToSet<A>(_:)();

  if (swift_unknownObjectWeakLoadStrong())
  {
    TTRBoardColumnDiffableDataSource.itemLocation(forInsertingAt:localItemIDsToBeMoved:)();

    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      swift_unknownObjectRelease();
      sub_1000079B4(v13, &unk_10076FE20);
      return 0;
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      (*(v15 + 16))(v10, v17, v14);
      v20 = v25;
      v21 = v29;
      (*(v25 + 104))(v10, enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:), v29);
      v22 = sub_1004834C8(v24, v26, v27, v28, v10);
      swift_unknownObjectRelease();
      (*(v20 + 8))(v10, v21);
      (*(v15 + 8))(v17, v14);
      return v22;
    }
  }

  else
  {

    return 0;
  }
}

void sub_100074E7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_rootView);

    v3 = [v2 window];
    if (v3)
    {

      type metadata accessor for TTRIDebugDropIndicatorView();
      if (static TTRIDebugDropIndicatorView.isEnabled.getter())
      {
        v4 = OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_dropPointIndicatorView;
        v5 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_dropPointIndicatorView);
        if (v5)
        {
          v6 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_dropPointIndicatorView);
        }

        else
        {
          v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v9 = *(v0 + v4);
          *(v0 + v4) = v8;
          v6 = v8;

          v5 = 0;
        }

        v12[3] = type metadata accessor for TTRIRemindersBoardDropContext(0);
        v12[4] = sub_10007775C(&qword_100769518, type metadata accessor for TTRIRemindersBoardDropContext);
        v12[0] = v1;

        v10 = v5;
        TTRIDebugDropIndicatorView.continueShowing(in:dropSession:dropContext:)();

        sub_100004758(v12);
        return;
      }
    }
  }

  v7 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_dropPointIndicatorView);
  if (v7)
  {
    v11 = v7;
    TTRIDebugDropIndicatorView.stopShowing()();
  }
}

uint64_t sub_100075030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0) + 24);
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_1000750AC()
{
  sub_10003B788(v0 + 16);
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_coordinatorID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_100075174()
{
  sub_1000750AC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersBoardDragAndDropCoordinator()
{
  result = qword_100769448;
  if (!qword_100769448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100075220()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1000752F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v95 = a5;
  v96 = a4;
  v100 = a3;
  v87 = a2;
  v9 = sub_100058000(&qword_1007919F0);
  __chkstk_darwin(v9 - 8);
  v83 = &v80 - v10;
  v102 = type metadata accessor for IndexPath();
  v97 = *(v102 - 8);
  __chkstk_darwin(v102);
  v85 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TTRUnadjustedIndexPath();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
  __chkstk_darwin(v84);
  v94 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v14 - 8);
  v16 = &v80 - v15;
  v17 = type metadata accessor for TTRAdjustedIndexPath();
  v91 = *(v17 - 8);
  v92 = v17;
  __chkstk_darwin(v17);
  v90 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v82 = sub_100058000(&qword_100769558);
  __chkstk_darwin(v82);
  v20 = &v80 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v93 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v80 - v25;
  v98 = v6;
  v99 = a6;
  v27 = *(v6 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext);
  v101 = a1;
  if (v27)
  {
    v28 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
    swift_beginAccess();
    (*(v22 + 16))(v26, a1 + v28, v21);

    v29 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
    (*(v22 + 8))(v26, v21);
    if (v29)
    {
      v30 = v27 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
      swift_beginAccess();
      v31 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31))
      {
        v32 = type metadata accessor for TTRICollectionViewDropIntent();
        (*(*(v32 - 8) + 56))(v20, 1, 1, v32);

        v34 = v98;
        v33 = v99;
        a1 = v101;
        v35 = v97;
      }

      else
      {
        v68 = *(v31 + 24);
        v69 = type metadata accessor for TTRICollectionViewDropIntent();
        v70 = *(v69 - 8);
        (*(v70 + 16))(v20, v30 + v68, v69);
        (*(v70 + 56))(v20, 0, 1, v69);
        v71 = (*(v70 + 88))(v20, v69);
        v34 = v98;
        v33 = v99;
        a1 = v101;
        v35 = v97;
        if (v71 == enum case for TTRICollectionViewDropIntent.insertAtDestinationIndexPath(_:))
        {
          (*(v70 + 96))(v20, v69);
          v72 = *(sub_100058000(&qword_10076FE60) + 48);
          v74 = v91;
          v73 = v92;
          v75 = v90;
          (*(v91 + 32))(v90, v20, v92);

          TTRAdjustedIndexPath.indexPath.getter();
          (*(v74 + 8))(v75, v73);
          v76 = type metadata accessor for TTRICollectionViewDropIntent.TargetType();
          (*(*(v76 - 8) + 8))(&v20[v72], v76);
          v36 = v95;
          v37 = v102;
          goto LABEL_6;
        }

        if (v71 == enum case for TTRICollectionViewDropIntent.insertIntoDestinationIndexPath(_:))
        {
          (*(v70 + 96))(v20, v69);
          v77 = *(v88 + 8);

          v77(v20, v89);
        }

        else
        {
          v78 = enum case for TTRICollectionViewDropIntent.unspecified(_:);
          v79 = v71;

          if (v79 != v78)
          {
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }
        }
      }

      v36 = v95;
      v37 = v102;
      (*(v35 + 16))(v33, v95, v102);
LABEL_6:
      *(v27 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_dropProposalHasBlockingTargetRedirection) = 0;

      v38 = *(v27 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_debugInfo);
      v39 = type metadata accessor for TTRIRemindersBoardDropContext.DebugInfo.LastTargetIndexPathForMoveCall(0);
      v40 = *(v35 + 16);
      v41 = v83;
      v40(&v83[v39[5]], v100, v37);
      v40(&v41[v39[6]], v96, v37);
      v40(&v41[v39[7]], v36, v37);
      v40(&v41[v39[8]], v99, v37);
      *v41 = 1886351972;
      *(v41 + 1) = 0xE400000000000000;
      (*(*(v39 - 1) + 56))(v41, 0, 1, v39);
      v42 = OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastTargetIndexPathForMoveCall;
      swift_beginAccess();

      sub_10000D184(v41, v38 + v42, &qword_1007919F0);
      swift_endAccess();

      goto LABEL_14;
    }

    a1 = v101;
    a6 = v99;
  }

  v43 = v100;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    sub_1000079B4(v16, &unk_10076BB50);
    (*(v97 + 16))(a6, v96, v102);
    v34 = v98;
  }

  else
  {
    v44 = v93;
    (*(v22 + 32))(v93, v16, v21);
    v83 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
    swift_beginAccess();
    v45 = *(v22 + 16);
    v46 = v94;
    v45();
    v81 = v45;
    v47 = v84;
    v48 = *(v84 + 20);
    v49 = v97 + 16;
    v97 = *(v97 + 16);
    (v97)(v46 + v48, v43, v102);
    (v45)(v46 + *(v47 + 24), v44, v21);
    *(v46 + *(v47 + 28)) = 0;
    v50 = v46;
    sub_100058000(&qword_100769560);
    v51 = *(type metadata accessor for TTRIRemindersBoardDragItemSources.Source(0) - 8);
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v53 = swift_allocObject();
    v82 = xmmword_10062D400;
    *(v53 + 16) = xmmword_10062D400;
    sub_1000777A4(v50, v53 + v52, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
    swift_storeEnumTagMultiPayload();
    (v81)(v26, &v83[v101], v21);
    v83 = sub_1005D0B38(v26, 0, v53);
    v81 = v54;
    v56 = v55;
    v58 = v57;

    v84 = *(v22 + 8);
    (v84)(v26, v21);
    v59 = v102;
    v60 = v97;
    (v97)(v85, v95, v102);
    v61 = v90;
    TTRAdjustedIndexPath.init(_:)();
    sub_100058000(&qword_1007845D0);
    v62 = (*(v49 + 64) + 32) & ~*(v49 + 64);
    v63 = swift_allocObject();
    *(v63 + 16) = v82;
    v60(v63 + v62, v100, v59);
    v64 = v86;
    TTRAdjustedIndexPath.unadjusted(forOriginalItemIndexPaths:)();

    (*(v91 + 8))(v61, v92);
    v34 = v98;
    sub_100074A7C(v101, v87, v83, v81, v56, v58, v64);
    LOBYTE(v62) = UIDropOperation.isCancelOrForbidden.getter();

    swift_unknownObjectRelease();
    (*(v88 + 8))(v64, v89);
    sub_10007780C(v94, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
    (v84)(v93, v21);
    if (v62)
    {
      v65 = v96;
    }

    else
    {
      v65 = v95;
    }

    (v97)(v99, v65, v102);
    a1 = v101;
  }

LABEL_14:
  if ((sub_1003FE474(v34, a1) & 1) == 0)
  {
    v66 = *(v34 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
    if (v66)
    {
      [v66 removeFromSuperview];
    }
  }

  sub_100074E7C();
}

void *sub_100076064(void *a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076FE00);
  __chkstk_darwin(v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = sub_100058000(&unk_100782210);
  v14 = *(v13 - 8);
  v43 = v13;
  v44 = v14;
  v15 = __chkstk_darwin(v13);
  v36 = &v30 - v16;
  v17 = [a1 items];
  sub_1000776A8();
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v48 = _swiftEmptyArrayStorage;
    result = sub_1004A1CF0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v40 = i;
    v34 = v6;
    v21 = 0;
    v22 = v48;
    v42 = v18 & 0xC000000000000001;
    v32 = OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_coordinatorID;
    v39 = 0x800000010066F5E0;
    v31 = v18 & 0xFFFFFFFFFFFFFF8;
    v37 = (v4 + 7);
    v38 = (v4 + 6);
    v4 = v36;
    v33 = v3;
    v41 = v18;
    while (1)
    {
      if (v42)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_10;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v21 >= *(v31 + 16))
      {
        goto LABEL_20;
      }

      v23 = *(v18 + 8 * v21 + 32);
LABEL_10:
      v24 = *(v43 + 48);
      v45 = 0xD000000000000022;
      v46 = v39;
      v25 = v23;
      AnyHashable.init<A>(_:)();
      UIDragItem.localObject<A>(ofType:forKey:)();
      sub_100077654(v47);
      sub_10000794C(v12, v9, &qword_10076FE00);
      if ((*v38)(v9, 1, v3) == 1)
      {
        sub_1000079B4(v12, &qword_10076FE00);
        sub_1000079B4(v9, &qword_10076FE00);
        v26 = 1;
      }

      else
      {
        v27 = v34;
        sub_1000776F4(v9, v34, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        v28 = static UUID.== infix(_:_:)();
        sub_1000079B4(v12, &qword_10076FE00);
        if (v28)
        {
          v4 = v36;
          sub_1000776F4(v27, &v36[v24], type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
          v26 = 0;
          v3 = v33;
        }

        else
        {
          sub_10007780C(v27, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
          v26 = 1;
          v3 = v33;
          v4 = v36;
        }
      }

      (*v37)(v4 + v24, v26, 1, v3);

      *v4 = v25;
      v48 = v22;
      v6 = v22[2];
      v29 = v22[3];
      if (v6 >= v29 >> 1)
      {
        sub_1004A1CF0(v29 > 1, v6 + 1, 1);
        v22 = v48;
      }

      ++v21;
      v22[2] = v6 + 1;
      sub_100016588(v4, v22 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v6, &unk_100782210);
      v18 = v41;
      if (v40 == v21)
      {

        return v22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000765A0(uint64_t a1)
{
  v3 = sub_100058000(&qword_10076FE00);
  __chkstk_darwin(v3 - 8);
  v42 = &v38 - v4;
  v5 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v17 = Strong;
  v41 = v6;
  result = type metadata accessor for TTRIRemindersBoardDragItemInfo(0);
  v19 = *(v17 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
  if (!v19)
  {
    goto LABEL_17;
  }

  v40 = result;
  v20 = *(result + 24);
  v21 = v19;
  TTRRemindersBoardMainDiffableDataSource.item(withID:)();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    swift_unknownObjectRelease();
    sub_1000079B4(v11, &qword_100772140);
    return 0;
  }

  v39 = a1;
  (*(v13 + 32))(v15, v11, v12);
  v22 = *(v17 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
  v23 = *(v17 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
  sub_10000C36C((v17 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v22);
  v24 = (*(*(v23 + 8) + 552))(v15, v22);
  v25 = v24;
  if (v24 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    swift_unknownObjectRelease();

    (*(v13 + 8))(v15, v12);
    return 0;
  }

  result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v25 + 32);
LABEL_10:
    v27 = v26;
    swift_unknownObjectRelease();

    (*(v13 + 8))(v15, v12);
    v28 = OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_coordinatorID;
    v29 = type metadata accessor for UUID();
    (*(*(v29 - 8) + 16))(v8, v43 + v28, v29);
    v30 = v5[5];
    v31 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    v32 = *(*(v31 - 8) + 16);
    v33 = v39;
    v32(&v8[v30], v39, v31);
    v34 = *(v40 + 20);
    v35 = v5[6];
    v36 = type metadata accessor for IndexPath();
    (*(*(v36 - 8) + 16))(&v8[v35], v33 + v34, v36);
    v32(&v8[v5[7]], v33 + v20, v31);
    v8[v5[8]] = 0;
    v37 = v42;
    sub_1000777A4(v8, v42, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
    (*(v41 + 56))(v37, 0, 1, v5);
    sub_10007093C(v37);
    sub_1000079B4(v37, &qword_10076FE00);
    sub_10007780C(v8, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
    return v27;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_100076AB0()
{
  v1 = sub_100058000(&qword_10076FE00);
  __chkstk_darwin(v1 - 8);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v71 = &v56 - v5;
  v6 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v70 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v66 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v66 - 8);
  __chkstk_darwin(v66);
  v74 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for TTRIRemindersBoardDragItemInfo(0);
  v14 = *(v76 - 8);
  __chkstk_darwin(v76);
  v78 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_shouldHandleNextRootViewDragInteraction) != 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v63 = v3;
  *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_shouldHandleNextRootViewDragInteraction) = 0;
  v16 = _swiftEmptyArrayStorage;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return v16;
  }

  v17 = v0;
  v75 = v7;
  v73 = v11;
  sub_100484754();
  v19 = v18;
  result = swift_unknownObjectRelease();
  v84 = _swiftEmptyArrayStorage;
  v21 = *(v19 + 16);
  if (!v21)
  {

    return v16;
  }

  v60 = v6;
  v22 = 0;
  v23 = v14;
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v59 = OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_coordinatorID;
  v77 = v19 + v24;
  v72 = (v12 + 48);
  v65 = (v12 + 32);
  v64 = (v12 + 8);
  v58 = (v75 + 56);
  v57 = (v75 + 48);
  v56 = 0x800000010066F5E0;
  v62 = _swiftEmptyArrayStorage;
  v25 = v66;
  v26 = v78;
  v61 = v17;
  v69 = v14;
  v68 = v19;
  v67 = v21;
  while (v22 < *(v19 + 16))
  {
    sub_1000777A4(v77 + *(v23 + 72) * v22, v26, type metadata accessor for TTRIRemindersBoardDragItemInfo);
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      goto LABEL_25;
    }

    v27 = result;
    v28 = *(result + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
    if (!v28)
    {
      goto LABEL_33;
    }

    v29 = v19;
    v30 = v23;
    v31 = v25;
    v32 = *(v76 + 24);
    v33 = v28;
    v26 = v78;
    v75 = v32;
    v34 = v73;
    TTRRemindersBoardMainDiffableDataSource.item(withID:)();

    v25 = v31;
    if ((*v72)(v34, 1, v31) == 1)
    {
      swift_unknownObjectRelease();
      sub_10007780C(v26, type metadata accessor for TTRIRemindersBoardDragItemInfo);
      result = sub_1000079B4(v34, &qword_100772140);
      v23 = v30;
      v19 = v29;
    }

    else
    {
      v35 = v74;
      (*v65)(v74, v34, v31);
      v37 = *(v27 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
      v36 = *(v27 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
      sub_10000C36C((v27 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v37);
      result = (*(*(v36 + 8) + 552))(v35, v37);
      v38 = result;
      if (result >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v23 = v69;
        v19 = v68;
        v21 = v67;
        if (!result)
        {
LABEL_24:
          swift_unknownObjectRelease();

          v25 = v31;
          (*v64)(v74, v31);
          v26 = v78;
LABEL_25:
          result = sub_10007780C(v26, type metadata accessor for TTRIRemindersBoardDragItemInfo);
          goto LABEL_6;
        }
      }

      else
      {
        v23 = v69;
        v19 = v68;
        v21 = v67;
        if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }
      }

      if ((v38 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v39 = *(v38 + 32);
      }

      swift_unknownObjectRelease();

      (*v64)(v74, v31);
      v40 = type metadata accessor for UUID();
      v41 = v17 + v59;
      v42 = v70;
      (*(*(v40 - 8) + 16))(v70, v41, v40);
      v43 = v60;
      v44 = v60[5];
      v45 = type metadata accessor for TTRRemindersListViewModel.ItemID();
      v46 = *(*(v45 - 8) + 16);
      v47 = v78;
      v46(v42 + v44, v78, v45);
      v48 = *(v76 + 20);
      v49 = v43[6];
      v50 = type metadata accessor for IndexPath();
      (*(*(v50 - 8) + 16))(v42 + v49, v47 + v48, v50);
      v46(v42 + v43[7], v47 + v75, v45);
      *(v42 + v43[8]) = 0;
      v51 = v71;
      sub_1000777A4(v42, v71, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
      (*v58)(v51, 0, 1, v43);
      v52 = v51;
      v53 = v63;
      sub_10000794C(v52, v63, &qword_10076FE00);
      if ((*v57)(v53, 1, v43) == 1)
      {
        sub_1000079B4(v53, &qword_10076FE00);
        v82 = 0u;
        v83 = 0u;
      }

      else
      {
        *(&v83 + 1) = v43;
        v54 = sub_1000317B8(&v82);
        sub_1000776F4(v53, v54, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
      }

      v23 = v69;
      v19 = v68;
      v21 = v67;
      v79 = 0xD000000000000022;
      v80 = v56;
      AnyHashable.init<A>(_:)();
      UIDragItem.setLocalObject(_:forKey:)();
      sub_100077654(v81);
      sub_1000079B4(v71, &qword_10076FE00);
      sub_10007780C(v70, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
      v26 = v78;
      sub_10007780C(v78, type metadata accessor for TTRIRemindersBoardDragItemInfo);
      sub_1000079B4(&v82, &qword_10076AE40);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v17 = v61;
      v55 = v66;
      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v26 = v78;
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v62 = v84;
      v25 = v55;
    }

LABEL_6:
    if (v21 == ++v22)
    {

      return v62;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

id sub_100077458()
{
  v0 = sub_100058000(&qword_10076FE00);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100070AD8(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000079B4(v2, &qword_10076FE00);
  }

  else
  {
    sub_1000776F4(v2, v6, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100484C34();
      v8 = v7;
      swift_unknownObjectRelease();
      if (v8)
      {
        v9 = sub_1003FD76C();
        swift_unknownObjectRelease();
        sub_10007780C(v6, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        return v9;
      }
    }

    sub_10007780C(v6, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
  }

  return 0;
}

unint64_t sub_1000776A8()
{
  result = qword_10076BAC0;
  if (!qword_10076BAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076BAC0);
  }

  return result;
}

uint64_t sub_1000776F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007775C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000777A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007780C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007786C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a3;
  v122 = a2;
  v6 = sub_100058000(&qword_100775780);
  __chkstk_darwin(v6 - 8);
  v110 = &v99 - v7;
  v126 = type metadata accessor for TTRRemindersListDefaultListType();
  v120 = *(v126 - 8);
  __chkstk_darwin(v126);
  v116 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for REMFeatureFlags();
  v104 = *(v114 - 8);
  __chkstk_darwin(v114);
  v103 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for TTRIQuickBarInputAccessorySupportedIdioms();
  v105 = *(v119 - 8);
  v106 = v119 - 8;
  v118 = v105;
  __chkstk_darwin(v119 - 8);
  v125 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v108 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v13 - 8);
  v100 = &v99 - v14;
  v15 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v112 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v111 = &v99 - v20;
  __chkstk_darwin(v19);
  v99 = &v99 - v21;
  v22 = type metadata accessor for TTRAuthorizationSource();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = a1;
  v115 = *a1;
  v26 = type metadata accessor for TTRGeoLocationService();
  static TTRAuthorizationSource.defaultForLocations.getter();
  v27 = static TTRGeoLocationService.newService(authorizationSource:)();
  (*(v23 + 8))(v25, v22);
  *(a4 + 56) = v26;
  *(a4 + 64) = &protocol witness table for TTRGeoLocationService;
  *(a4 + 32) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v123 = sub_100003540(0, &qword_100777780);
  v29 = v27;

  static OS_dispatch_queue.main.getter();
  v117 = type metadata accessor for RDIDispatchQueue();
  static RDIDispatchQueue.storeQueue.getter();
  v30 = type metadata accessor for REMContactsProvider();
  swift_allocObject();
  v124 = v28;
  *(a4 + 112) = REMContactsProvider.init(contactStoreCreator:queue:backgroundQueue:)();
  *(a4 + 136) = v30;
  *(a4 + 144) = &protocol witness table for REMContactsProvider;
  sub_10000B0D8(a4 + 112, &v133);
  v131 = v26;
  v132 = &protocol witness table for TTRGeoLocationService;
  v107 = v26;
  v130 = v29;
  v31 = type metadata accessor for TTRReminderLocationOptionsProvider();
  swift_allocObject();
  v102 = v29;
  v32 = v115;
  v33 = TTRReminderLocationOptionsProvider.init(store:meCardProvider:geoService:)();
  *(&v134 + 1) = v31;
  v135 = &protocol witness table for TTRReminderLocationOptionsProvider;
  *&v133 = v33;
  sub_10000B0D8(a4 + 112, &v130);
  v115 = v32;

  v34 = v111;
  static REMSuggestedAttributesElector.ExcludedAttributes.listsFromOtherAccounts.getter();
  sub_10007961C(&qword_100769618, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  dispatch thunk of RawRepresentable.rawValue.getter();
  sub_10007961C(&qword_100769620, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v16 + 16))(v112, v34, v15);
  sub_10007961C(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  dispatch thunk of SetAlgebra.formUnion(_:)();
  v35 = *(v16 + 8);
  v112 = v15;
  v111 = (v16 + 8);
  v109 = v35;
  v35(v34, v15);
  v36 = type metadata accessor for Date();
  (*(*(v36 - 8) + 56))(v100, 1, 1, v36);
  static OS_dispatch_queue.main.getter();
  static RDIDispatchQueue.utilityQueue.getter();
  static Locale.autoupdatingCurrent.getter();
  type metadata accessor for TTRReminderTitleAttributesHarvester();
  swift_allocObject();
  v37 = v31;
  v38 = TTRReminderTitleAttributesHarvester.init(queue:backgroundQueue:locationOptionsProvider:contactsProvider:store:excludedSuggestedAttributes:locale:timeZone:now:forTesting:)();
  v39 = type metadata accessor for TTRIReminderTitleAttributesStyler();
  swift_allocObject();

  v40 = TTRIReminderTitleAttributesStyler.init()();
  *(&v134 + 1) = v39;
  v135 = &protocol witness table for TTRIReminderTitleAttributesStyler;
  *&v133 = v40;
  sub_10000B0D8(a4 + 112, &v130);
  v128 = v37;
  v129 = &protocol witness table for TTRReminderLocationOptionsProvider;
  v127 = v33;
  v41 = type metadata accessor for TTRReminderTitleAttributesInteractor();
  swift_allocObject();
  v42 = v33;

  v108 = v38;
  v43 = TTRReminderTitleAttributesInteractor.init(harvester:styler:contactsProvider:locationOptionsProvider:)();
  *(a4 + 96) = v41;
  *(a4 + 104) = &protocol witness table for TTRReminderTitleAttributesInteractor;
  *(a4 + 72) = v43;
  v44 = v104;
  v45 = v103;
  v46 = v114;
  (*(v104 + 104))(v103, enum case for REMFeatureFlags.inCellEditingPad(_:), v114);
  LOBYTE(v41) = REMFeatureFlags.isEnabled.getter();
  (*(v44 + 8))(v45, v46);
  sub_100058000(&qword_100769630);
  if (v41)
  {
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10062D3F0;
    static TTRIQuickBarInputAccessorySupportedIdioms.phone.getter();
    static TTRIQuickBarInputAccessorySupportedIdioms.padCompact.getter();
  }

  else
  {
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10062D400;
    static TTRIQuickBarInputAccessorySupportedIdioms.phone.getter();
  }

  *&v133 = v47;
  sub_10007961C(&qword_100769638, &type metadata accessor for TTRIQuickBarInputAccessorySupportedIdioms);
  sub_100058000(&qword_100769640);
  sub_100078FB0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v101 = a4 + 112;
  sub_10000B0D8(a4 + 112, &v133);

  static OS_dispatch_queue.main.getter();
  v106 = type metadata accessor for TTRParticipantAvatarProvider();
  swift_allocObject();
  v114 = TTRParticipantAvatarProvider.init(contactsProvider:contactStoreCreator:queue:)();
  *(&v134 + 1) = v107;
  v135 = &protocol witness table for TTRGeoLocationService;
  v48 = v102;
  *&v133 = v102;
  v131 = v37;
  v132 = &protocol witness table for TTRReminderLocationOptionsProvider;
  v130 = v33;
  type metadata accessor for TTRLocationQuickPicksInteractor();
  swift_allocObject();
  v107 = v48;

  v49 = TTRLocationQuickPicksInteractor.init(geoService:locationOptionsProvider:)();
  *(a4 + 352) = v49;
  *(a4 + 360) = &protocol witness table for TTRLocationQuickPicksInteractor;
  type metadata accessor for TTRReminderListPickerInteractor();
  swift_allocObject();
  v50 = v115;

  *(a4 + 368) = TTRReminderListPickerInteractor.init(store:)();
  *(a4 + 376) = &protocol witness table for TTRReminderListPickerInteractor;
  v105 = *(v120 + 16);
  v51 = v116;
  (v105)(v116, v121, v126);
  type metadata accessor for TTRIRemindersListNavigationBarInteractor(0);
  swift_allocObject();
  v52 = sub_1005A71C8(v50, v51);
  v53 = type metadata accessor for TTRIRemindersListNavigationBarRouter();
  v54 = swift_allocObject();
  *(&v134 + 1) = v53;
  v135 = &off_100729B18;
  *&v133 = v54;
  type metadata accessor for TTRIRemindersListNavigationBarPresenter();
  v55 = swift_allocObject();
  v56 = sub_10000AE84(&v133, v53);
  v115 = v42;
  __chkstk_darwin(v56);
  v58 = (&v99 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v59 + 16))(v58);
  v60 = *v58;
  v61 = v50;

  v62 = sub_1000793F8(v52, v60, v49, v55);
  sub_100004758(&v133);
  v63 = type metadata accessor for TTRIRemindersListNavigationBarController();
  v64 = objc_allocWithZone(v63);

  v66 = sub_100079020(v65, v64);
  *(v52 + 24) = &off_100713C60;
  swift_unknownObjectWeakAssign();
  *(v62 + 3) = &off_100715F58;
  swift_unknownObjectWeakAssign();
  sub_10007E46C();
  *(a4 + 192) = v63;

  *(a4 + 168) = v66;
  v67 = sub_10007961C(&qword_100769650, type metadata accessor for TTRIRemindersListNavigationBarInteractor);
  *(a4 + 200) = v62;
  *(a4 + 208) = &off_100713C08;
  *(a4 + 216) = v52;
  *(a4 + 224) = v67;
  v68 = v106;
  *(&v134 + 1) = v106;
  v135 = &protocol witness table for TTRParticipantAvatarProvider;
  *&v133 = v114;

  v69 = static TTRIQuickBarInputAccessoryAssembly.createViewController(supportedIdioms:allowsClearingDueDate:store:locationOptionsProvider:locationQuickPicksInteractor:contactsProvider:contactStoreCreator:participantAvatarProvider:)();
  v71 = v70;

  sub_100004758(&v133);
  *(a4 + 264) = v69;
  *(a4 + 272) = v71;
  v72 = v121;
  (v105)(v116, v121, v126);
  v73 = type metadata accessor for TTRRemindersListUndoContext();
  (*(*(v73 - 8) + 56))(v110, 1, 1, v73);
  v74 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v75 = v61;
  v76 = static TTRInteractorEditsCommitting<>.async.getter();
  *(&v134 + 1) = v74;
  v135 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  *&v133 = v76;
  v77 = objc_allocWithZone(type metadata accessor for TTRRemindersListInteractor());
  *a4 = TTRRemindersListInteractor.init(store:canChangeSortingStyle:defaultListType:committer:undoContext:)();
  *(a4 + 280) = 1;
  type metadata accessor for TTRUserDefaults();
  v78 = v75;
  v79 = static TTRUserDefaults.appUserDefaults.getter();
  v80 = swift_allocObject();
  *(v80 + 16) = v78;
  type metadata accessor for TTRStoreReviewController();
  v81 = swift_allocObject();
  v82 = v78;
  *(a4 + 288) = sub_100079270(v82, v79, sub_100079600, v80, v81);
  type metadata accessor for TTRUserActivityMetadataInterator();
  v133 = 0u;
  v134 = 0u;
  v135 = 0;
  swift_allocObject();
  *(a4 + 152) = TTRUserActivityMetadataInterator.init(contactsProvider:contactKeys:)();
  *(a4 + 160) = &protocol witness table for TTRUserActivityMetadataInterator;
  v83 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v84 = v113;
  v85 = (v113 + *(v83 + 28));
  v87 = *v85;
  v86 = v85[1];
  type metadata accessor for TTRIRemindersListRouter();
  swift_allocObject();
  *(a4 + 24) = sub_10013246C(v87, v86);
  sub_10007961C(&qword_100769658, type metadata accessor for TTRIRemindersListRouter);
  sub_100003540(0, &qword_100769660);
  swift_unknownObjectRetain();

  static UNUserNotificationCenter.ttr_unUserNotificationCenter.getter();
  v135 = 0;
  v133 = 0u;
  v134 = 0u;
  v88 = [objc_opt_self() daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  swift_allocObject();
  *(a4 + 296) = TTRIPrivacyChecker.init(delegate:unUserNotificationCenter:geoService:notificationsService:userDefaults:urgentAlarmService:)();
  type metadata accessor for TTRURLMetadataInteractor();
  *(a4 + 8) = TTRURLMetadataInteractor.__allocating_init()();
  *(a4 + 16) = &protocol witness table for TTRURLMetadataInteractor;
  v89 = v82;
  static OS_dispatch_queue.main.getter();
  static RDIDispatchQueue.storeQueue.getter();
  [objc_allocWithZone(SWHighlightCenter) init];
  v90 = objc_allocWithZone(type metadata accessor for TTRSharedWithYouProvider());
  v91 = TTRSharedWithYouProvider.init(store:invocationQueue:backgroundQueue:highlightCenter:customFetchShareForSharedList:)();
  *(a4 + 336) = v68;
  *(a4 + 344) = &protocol witness table for TTRParticipantAvatarProvider;
  v92 = v114;
  *(a4 + 304) = v91;
  *(a4 + 312) = v92;
  v93 = type metadata accessor for TTRAutoCompleteReminderProvider();
  v94 = v89;
  v95 = TTRAutoCompleteReminderProvider.__allocating_init(store:)();
  *(a4 + 408) = v93;
  *(a4 + 416) = &protocol witness table for TTRAutoCompleteReminderProvider;
  *(a4 + 384) = v95;
  v96 = type metadata accessor for TTRIShowRemindersUndoManagerObserver();
  swift_allocObject();
  v97 = sub_10053F9B8();
  *(a4 + 448) = v96;
  *(a4 + 456) = &off_10072E078;

  *(a4 + 424) = v97;
  (*(v120 + 8))(v72, v126);
  v109(v122, v112);
  v118[1](v125, v119);
  sub_100079664(v84);
}

id sub_100078B2C(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v4 = [objc_allocWithZone(CNContactStore) init];
    swift_beginAccess();
    v5 = *v2;
    *v2 = v4;
    v3 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v3;
}

uint64_t sub_100078BBC@<X0>(uint64_t a1@<X8>)
{
  v24 = (a1 + 408);
  v27 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  v3 = v1 + v27[5];
  v25 = *v3;
  v18 = *(v3 + 24);
  v23 = sub_10007961C(&qword_1007759F0, type metadata accessor for TTRIRemindersListRouter);
  v31 = *(v1 + v27[6]);
  sub_10000B0D8(v3 + 32, a1 + 48);
  v20 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v4 = *(v3 + 296);
  v15 = *(v3 + 304);
  v17 = *(v1 + v20[6]);
  v22 = *(v3 + 280);
  v5 = *(v3 + 288);
  v21 = *(v1 + v20[7]);
  v30 = *(v3 + 8);
  sub_10000B0D8(v3 + 72, a1 + 160);
  sub_10000B0D8(v3 + 112, a1 + 200);
  v29 = *(v3 + 152);
  sub_10000794C(v3 + 168, v35, &qword_100769600);
  v19 = v25;

  swift_unknownObjectRetain();

  v16 = v15;
  swift_unknownObjectRetain();

  v6 = v4;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_10000794C(v3 + 168, v33, &qword_100769600);
  v14 = v34;
  swift_unknownObjectRelease();
  sub_10000794C(v3 + 232, v32, &qword_100769608);
  v7 = *(v1 + v27[7]);
  v8 = sub_10007961C(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter);
  v13 = v32[2];
  sub_10000B0D8(v3 + 312, a1 + 368);
  v9 = v20[5];
  v10 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v26 = *(v3 + 352);
  v28 = *(v3 + 368);
  sub_10000794C(v1 + v9, a1 + v10[24], &unk_10076BB50);
  sub_10000B0D8(v3 + 384, a1 + v10[25]);
  sub_10000B0D8(v3 + 424, a1 + v10[26]);
  v11 = *(v1 + v20[8]);
  *a1 = v19;
  *(a1 + 8) = &protocol witness table for TTRRemindersListInteractor;
  *(a1 + 16) = v18;
  *(a1 + 24) = v23;
  *(a1 + 32) = v31;
  *(a1 + 88) = v17;
  *(a1 + 96) = v16;
  *(a1 + 104) = v21;
  *(a1 + 120) = v22;
  *(a1 + 128) = v5;
  *(a1 + 136) = v6;
  *(a1 + 144) = v30;
  *(a1 + 240) = v29;
  sub_100007DD8(v35, (a1 + 256));
  *(a1 + 288) = v14;
  sub_100007DD8(v32, (a1 + 304));
  *(a1 + 336) = v13;
  *(a1 + 352) = v7;
  *(a1 + 360) = v8;
  *v24 = v26;
  v24[1] = v28;
  *(a1 + v10[27]) = v11;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_100004758(v33);
}