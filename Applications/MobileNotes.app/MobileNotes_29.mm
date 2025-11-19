uint64_t sub_1003DDB64()
{
  v0 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v0 - 8);
  v54 = v35 - v1;
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v53 = v35 - v3;
  v52 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v52 - 8);
  __chkstk_darwin(v52);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringResource();
  v41 = v13;
  v55 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_10015DA04(&qword_1006C6BD8);
  v14 = sub_10015DA04(&unk_1006C6BE0);
  v50 = v14;
  v15 = *(v14 - 8);
  v44 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100539C30;
  v18 = v17 + v16;
  v38 = *(v14 + 48);
  v39 = v17;
  *(v17 + v16) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  v40 = v9;
  static Locale.current.getter();
  v49 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v42 = *(v4 + 104);
  v43 = v4 + 104;
  v19 = v52;
  v42(v6);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v20 = *(v55 + 56);
  v55 += 56;
  v51 = v20;
  v20(v53, 1, 1, v13);
  v45 = type metadata accessor for DisplayRepresentation.Image();
  v21 = *(v45 - 8);
  v46 = *(v21 + 56);
  v48 = v21 + 56;
  v46(v54, 1, 1, v45);
  v47 = v18;
  DisplayRepresentation.init(title:subtitle:image:)();
  v22 = v44;
  v23 = v50;
  v38 = *(v50 + 48);
  *(v18 + v44) = 1;
  v35[1] = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v36 = v6;
  v24 = v19;
  v25 = v42;
  (v42)(v6, v49, v24);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = v41;
  v51(v53, 1, 1, v41);
  v46(v54, 1, 1, v45);
  DisplayRepresentation.init(title:subtitle:image:)();
  v37 = *(v23 + 48);
  v38 = 2 * v22;
  *(v47 + 2 * v22) = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27 = v36;
  (v25)(v36, v49, v52);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v28 = v53;
  v51(v53, 1, 1, v26);
  v29 = v54;
  v31 = v45;
  v30 = v46;
  v46(v54, 1, 1, v45);
  DisplayRepresentation.init(title:subtitle:image:)();
  v32 = (v47 + v38 + v44);
  v44 = *(v50 + 48);
  *v32 = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v42)(v27, v49, v52);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v51(v28, 1, 1, v41);
  v30(v29, 1, 1, v31);
  DisplayRepresentation.init(title:subtitle:image:)();
  v33 = sub_100191D94(v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static AttachmentViewSize.caseDisplayRepresentations = v33;
  return result;
}

uint64_t *AttachmentViewSize.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1006BC8A8 != -1)
  {
    swift_once();
  }

  return &static AttachmentViewSize.caseDisplayRepresentations;
}

uint64_t static AttachmentViewSize.caseDisplayRepresentations.getter()
{
  if (qword_1006BC8A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AttachmentViewSize.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1006BC8A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static AttachmentViewSize.caseDisplayRepresentations = a1;
}

uint64_t (*static AttachmentViewSize.caseDisplayRepresentations.modify())()
{
  if (qword_1006BC8A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t AttachmentViewSize.init(attachmentViewSize:)(unsigned __int16 a1)
{
  if (a1 >= 3u)
  {
    return 0;
  }

  else
  {
    return 0x20103u >> (8 * a1);
  }
}

uint64_t AttachmentViewSize.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x53746C7561666564;
  v2 = 0x6D756964656DLL;
  if (a1 != 2)
  {
    v2 = 0x656772616CLL;
  }

  if (a1)
  {
    v1 = 0x6C6C616D73;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1003DE550@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MobileNotes18AttachmentViewSizeO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1003DE580(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000657A69;
  v3 = 0x53746C7561666564;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  if (*v1 != 2)
  {
    v5 = 0x656772616CLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C6C616D73;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

Swift::Int sub_1003DE5F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003DE6B4()
{
  String.hash(into:)();
}

Swift::Int sub_1003DE75C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003DE84C(uint64_t a1)
{
  v2 = sub_100179BA4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1003DE898(uint64_t a1)
{
  v2 = sub_1003DF4FC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

_BYTE *_s11MobileNotes23SetAttachmentSizeIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  v56 = v0;
  v57 = v1;
  __chkstk_darwin(v0);
  v55 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10015DA04(&unk_1006BE0D0);
  v4 = __chkstk_darwin(v3 - 8);
  v54 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v53 = &v37[-v6];
  v7 = sub_10015DA04(&unk_1006BCD50);
  __chkstk_darwin(v7 - 8);
  v52 = &v37[-v8];
  v9 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v9 - 8);
  v51 = &v37[-v10];
  v11 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for LocalizedStringResource();
  v49 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v40 = &v37[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = sub_10015DA04(&unk_1006C6BF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v12 + 104);
  v43 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v44 = v11;
  v21(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  v45 = v12 + 104;
  v46 = v21;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21(v14, v20, v11);
  v22 = v51;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v23 = *(v18 + 56);
  v48 = v18 + 56;
  v50 = v23;
  v23(v22, 0, 1, v17);
  v24 = type metadata accessor for AttachmentEntity();
  (*(*(v24 - 8) + 56))(v52, 1, 1, v24);
  v25 = type metadata accessor for IntentDialog();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v41 = v27;
  v42 = v26 + 56;
  v27(v53, 1, 1, v25);
  v27(v54, 1, 1, v25);
  v60 = VisibleAccountsQuery.init(requireFolderCreationSupport:)();
  v61 = v28;
  v62 = v29 & 1;
  v38 = enum case for InputConnectionBehavior.default(_:);
  v30 = *(v57 + 104);
  v57 += 104;
  v39 = v30;
  v30(v55);
  sub_100179B50();
  v31 = v51;
  v52 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  v47 = sub_10015DA04(&qword_1006C6C00);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = v43;
  v33 = v44;
  v34 = v46;
  v46(v14, v43, v44);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34(v14, v32, v33);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v50(v31, 0, 1, v49);
  LOBYTE(v60) = 4;
  v35 = v41;
  v41(v53, 1, 1, v25);
  v35(v54, 1, 1, v25);
  v39(v55, v38, v56);
  sub_100179BA4();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_10015DA04(&unk_1006BCA40);
  v58 = 0xD000000000000024;
  v59 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  v58 = 0xD000000000000021;
  v59 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v52;
}

unint64_t _s11MobileNotes18AttachmentViewSizeO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064D288, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1003DF208()
{
  result = qword_1006C6B40;
  if (!qword_1006C6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6B40);
  }

  return result;
}

unint64_t sub_1003DF260()
{
  result = qword_1006C6B48;
  if (!qword_1006C6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6B48);
  }

  return result;
}

unint64_t sub_1003DF2F0()
{
  result = qword_1006C6B50;
  if (!qword_1006C6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6B50);
  }

  return result;
}

unint64_t sub_1003DF348()
{
  result = qword_1006C6B58;
  if (!qword_1006C6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6B58);
  }

  return result;
}

unint64_t sub_1003DF3A0()
{
  result = qword_1006C6B60;
  if (!qword_1006C6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6B60);
  }

  return result;
}

unint64_t sub_1003DF3F8()
{
  result = qword_1006C6B68;
  if (!qword_1006C6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6B68);
  }

  return result;
}

unint64_t sub_1003DF450()
{
  result = qword_1006C6B70;
  if (!qword_1006C6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6B70);
  }

  return result;
}

unint64_t sub_1003DF4A4()
{
  result = qword_1006C6B78;
  if (!qword_1006C6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6B78);
  }

  return result;
}

unint64_t sub_1003DF4FC()
{
  result = qword_1006C6B88;
  if (!qword_1006C6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6B88);
  }

  return result;
}

unint64_t sub_1003DF5A4()
{
  result = qword_1006C6B98;
  if (!qword_1006C6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6B98);
  }

  return result;
}

unint64_t sub_1003DF5FC()
{
  result = qword_1006C6BA0;
  if (!qword_1006C6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6BA0);
  }

  return result;
}

unint64_t sub_1003DF654()
{
  result = qword_1006C6BA8;
  if (!qword_1006C6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6BA8);
  }

  return result;
}

uint64_t ReplaceSelectionIntent.text.setter(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1003DF904()
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
  sub_100025918(v6, static ReplaceSelectionIntent.title);
  sub_10002597C(v6, static ReplaceSelectionIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t ReplaceSelectionIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC8B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static ReplaceSelectionIntent.title);
}

uint64_t static ReplaceSelectionIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC8B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static ReplaceSelectionIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static ReplaceSelectionIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static ReplaceSelectionIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C6C08);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C6C10);
  __chkstk_darwin(v1);
  sub_10002435C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100571140;
  v2._countAndFlagsBits = 0xD000000000000017;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C6C18);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*ReplaceSelectionIntent.text.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*ReplaceSelectionIntent.loggingConfiguration.modify(uint64_t *a1))()
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
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t sub_1003E0188@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes22ReplaceSelectionIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t _s11MobileNotes22ReplaceSelectionIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  __chkstk_darwin(v2 - 8);
  v26 = v23 - v3;
  v4 = sub_10015DA04(&unk_1006C5400);
  __chkstk_darwin(v4 - 8);
  v25 = v23 - v5;
  v6 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v6 - 8);
  v24 = v23 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23[1] = sub_10015DA04(&unk_1006BCAE0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v11, v16, v8);
  v18 = v24;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = type metadata accessor for AttributedString();
  (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
  v20 = type metadata accessor for IntentDialog();
  (*(*(v20 - 8) + 56))(v26, 1, 1, v20);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  v21 = IntentParameter<>.init(title:description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_10015DA04(&qword_1006C34B0);
  v30 = 0xD000000000000021;
  v31 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v30 = 0xD000000000000024;
  v31 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v21;
}

void sub_1003E0804(void *a1)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    v2 = sub_1003E1494();
    [a1 insertChildMenu:v2 atStartOfMenuForIdentifier:UIMenuFile];

    v3 = objc_opt_self();
    sub_10015DA04(&unk_1006BD390);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100534670;
    v5 = objc_opt_self();
    v12[4] = sub_1003E193C;
    v12[5] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1003BF11C;
    v12[3] = &unk_10065C3D0;
    v6 = _Block_copy(v12);

    v7 = [v5 elementWithUncachedProvider:v6];
    _Block_release(v6);
    *(v4 + 32) = v7;
    sub_1000054A4(0, &qword_1006C6400);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v3 ic_inlineMenuWithChildren:isa];

    [a1 insertChildMenu:v9 atStartOfMenuForIdentifier:UIMenuFile];
    v10 = sub_1003E1C98();
    [a1 insertChildMenu:v10 atStartOfMenuForIdentifier:UIMenuFile];

    v11 = sub_1003E2ABC();
    [a1 insertChildMenu:v11 atEndOfMenuForIdentifier:UIMenuFile];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1003E0A20(void (*a1)(void))
{
  sub_100377104();
  if (v2)
  {
    v75 = a1;
    v74 = v2;
    v3 = sub_10032E384(v2);
    if (v3)
    {
      v4 = v3;
      sub_10015DA04(&unk_1006BD390);
      image_8 = swift_allocObject();
      *(image_8 + 16) = xmmword_100534670;
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100531E20;
      v68 = objc_opt_self();
      image = v4;
      v6 = [v68 sharedApplication];
      [v6 userInterfaceLayoutDirection];

      v64 = objc_opt_self();
      v7 = String._bridgeToObjectiveC()();
      v8 = objc_opt_self();
      v9 = [v8 mainBundle];
      swift__string._object = 0x800000010056BC60;
      swift__string._countAndFlagsBits = 0xD000000000000028;
      v10._countAndFlagsBits = 0x73756F6976657250;
      v10._object = 0xED000065746F4E20;
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, swift__string);

      v12 = String._bridgeToObjectiveC()();

      v13 = objc_opt_self();
      v14 = String._bridgeToObjectiveC()();

      v15 = [v13 ic_systemImageNamed:v14];

      v16 = [v64 ic_keyCommandWithInput:v7 modifierFlags:1572864 action:"gotoPreviousNote:" discoverabilityTitle:v12 image:v15];
      *(v5 + 32) = v16;
      v17 = [v68 sharedApplication];
      [v17 userInterfaceLayoutDirection];

      v18 = objc_opt_self();
      v19 = String._bridgeToObjectiveC()();
      v20 = [v8 mainBundle];
      swift__stringa._object = 0x800000010056BCB0;
      swift__stringa._countAndFlagsBits = 0xD000000000000024;
      v21._countAndFlagsBits = 0x746F4E207478654ELL;
      v21._object = 0xE900000000000065;
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, swift__stringa);

      v23 = String._bridgeToObjectiveC()();

      v24 = String._bridgeToObjectiveC()();

      v25 = [v13 ic_systemImageNamed:v24];

      v26 = [v64 ic_keyCommandWithInput:v19 modifierFlags:1572864 action:"gotoNextNote:" discoverabilityTitle:v23 image:v25];
      *(v5 + 40) = v26;
      sub_1000054A4(0, &qword_1006C6400);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v28 = [v18 ic_inlineMenuWithChildren:isa];

      *(image_8 + 32) = v28;
      v29 = [(objc_class *)image children];
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1002DC254(v30);
      v31 = Array._bridgeToObjectiveC()().super.isa;

      v32 = [(objc_class *)image menuByReplacingChildren:v31];

      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_100534670;
      v33[4] = v32;
    }

    else
    {
      sub_10015DA04(&unk_1006BD390);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_100534670;
      v63 = objc_opt_self();
      v34 = [v63 mainBundle];
      swift__stringb._object = 0x800000010056CFE0;
      v35._countAndFlagsBits = 0x4E20746E65636552;
      v35._object = 0xEC0000007365746FLL;
      swift__stringb._countAndFlagsBits = 0xD000000000000039;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v34, v36, swift__stringb);

      v73 = objc_opt_self();
      v38 = String._bridgeToObjectiveC()();
      imagea = [v73 __systemImageNamedSwift:v38];

      v69 = String._bridgeToObjectiveC()();
      preferredElementSize = swift_allocObject();
      *(preferredElementSize + 16) = xmmword_100534670;
      v65 = swift_allocObject();
      v65[1] = xmmword_100531E20;
      v66 = objc_opt_self();
      v39 = [v66 sharedApplication];
      [v39 userInterfaceLayoutDirection];

      v62 = objc_opt_self();
      v40 = String._bridgeToObjectiveC()();
      v41 = [v63 mainBundle];
      swift__stringc._object = 0x800000010056BC60;
      swift__stringc._countAndFlagsBits = 0xD000000000000028;
      v42._countAndFlagsBits = 0x73756F6976657250;
      v42._object = 0xED000065746F4E20;
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v41, v43, swift__stringc);

      v44 = String._bridgeToObjectiveC()();

      v45 = String._bridgeToObjectiveC()();

      v46 = [v73 ic_systemImageNamed:v45];

      v47 = [v62 ic_keyCommandWithInput:v40 modifierFlags:1572864 action:"gotoPreviousNote:" discoverabilityTitle:v44 image:v46];
      *(v65 + 4) = v47;
      v48 = [v66 sharedApplication];
      [v48 userInterfaceLayoutDirection];

      sub_1000054A4(0, &unk_1006C6410);
      v49 = objc_opt_self();
      v50 = String._bridgeToObjectiveC()();
      v51 = [v63 mainBundle];
      swift__stringd._object = 0x800000010056BCB0;
      swift__stringd._countAndFlagsBits = 0xD000000000000024;
      v52._countAndFlagsBits = 0x746F4E207478654ELL;
      v52._object = 0xE900000000000065;
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v52, 0, v51, v53, swift__stringd);

      v54 = String._bridgeToObjectiveC()();

      v55 = String._bridgeToObjectiveC()();

      v56 = [v73 ic_systemImageNamed:v55];

      v57 = [v62 ic_keyCommandWithInput:v50 modifierFlags:1572864 action:"gotoNextNote:" discoverabilityTitle:v54 image:v56];
      *(v65 + 5) = v57;
      sub_1000054A4(0, &qword_1006C6400);
      v58 = Array._bridgeToObjectiveC()().super.isa;

      v59 = [v49 ic_inlineMenuWithChildren:v58];

      v77.is_nil = v69;
      *(preferredElementSize + 32) = v59;
      v77.value.super.isa = imagea;
      *(v33 + 4) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v77, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v61);
    }

    a1 = v75;
  }

  else
  {
    v33 = _swiftEmptyArrayStorage;
  }

  a1(v33);
}

id sub_1003E1494()
{
  v24 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100531E20;
  sub_1000054A4(0, &unk_1006C6410);
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  swift__string._object = 0x8000000100571430;
  v3._countAndFlagsBits = 0x6572616853;
  v3._object = 0xE500000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0xD000000000000013;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, swift__string);

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  image = [v6 __systemImageNamedSwift:v7];

  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100531E20;
  sub_1000054A4(0, &qword_1006BF850);
  v9 = [v1 mainBundle];
  swift__stringa._object = 0xEF6D65746920756ELL;
  v10._countAndFlagsBits = 0x6F4E206572616853;
  swift__stringa._countAndFlagsBits = 0x654D206572616853;
  v10._object = 0xEA00000000006574;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, swift__stringa);

  *(preferredElementSize + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v12 = [v1 mainBundle];
  swift__stringb._object = 0x8000000100571450;
  v13._countAndFlagsBits = 0x6F46206572616853;
  v13._object = 0xEC0000007265646CLL;
  swift__stringb._countAndFlagsBits = 0xD000000000000016;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, swift__stringb);

  *(preferredElementSize + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v25.value.super.isa = image;
  v25.is_nil = 0;
  *(v0 + 32) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v25, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
  v15 = [v1 mainBundle];
  swift__stringc._object = 0x8000000100571470;
  v16._countAndFlagsBits = 0xD000000000000014;
  v16._object = 0x80000001005681F0;
  swift__stringc._countAndFlagsBits = 0xD00000000000001ELL;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, v15, v17, swift__stringc);

  v18 = String._bridgeToObjectiveC()();
  v19 = [v6 __systemImageNamedSwift:v18];

  *(v0 + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v24 ic_inlineMenuWithChildren:{isa, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  return v21;
}

UIMenu sub_1003E1940()
{
  sub_1000054A4(0, &unk_1006C6410);
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v20._countAndFlagsBits = 0xD00000000000001DLL;
  v20._object = 0x8000000100571360;
  v2._countAndFlagsBits = 1701998413;
  v2._object = 0xE400000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v20);

  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  image = [v5 ic_systemImageNamed:v6];

  sub_10015DA04(&unk_1006BD390);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100531E20;
  sub_1000054A4(0, &qword_1006BF850);
  v8 = [v0 mainBundle];
  v9._countAndFlagsBits = 0xD000000000000023;
  swift__stringa._object = 0x80000001005713B0;
  v9._object = 0x8000000100571380;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  swift__stringa._countAndFlagsBits = 0xD00000000000002DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, swift__stringa);

  *(preferredElementSize + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v11 = [v0 mainBundle];
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  v22._countAndFlagsBits = 0xD000000000000028;
  v22._object = 0x8000000100571400;
  v12._object = 0x80000001005713E0;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v22);

  v15 = [v0 mainBundle];
  swift__stringc._object = 0x80000001005713B0;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  swift__stringc._countAndFlagsBits = 0xD00000000000002DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v15, v16, swift__stringc);

  *(preferredElementSize + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v19.value.super.isa = image;
  v19.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v4, 0, v19, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0);
}

id sub_1003E1C98()
{
  v21 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100531E10;
  sub_1000054A4(0, &qword_1006C3E38);
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v22._object = 0x80000001005712E0;
  v3._countAndFlagsBits = 0x65746F4E2077654ELL;
  v22._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v22);

  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 ic_systemImageNamed:v6];

  *(v0 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v8 = [v1 mainBundle];
  v23._object = 0x8000000100571310;
  v9._countAndFlagsBits = 0x646C6F462077654ELL;
  v23._countAndFlagsBits = 0xD000000000000022;
  v9._object = 0xEA00000000007265;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v23);

  v11 = String._bridgeToObjectiveC()();
  v12 = [v5 ic_systemImageNamed:v11];

  *(v0 + 40) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_1000054A4(0, &qword_1006BF850);
  v13 = [v1 mainBundle];
  v14._countAndFlagsBits = 0xD000000000000010;
  v24._object = 0x8000000100571340;
  v14._object = 0x800000010055FE00;
  v24._countAndFlagsBits = 0xD00000000000001ALL;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v24);

  v16 = String._bridgeToObjectiveC()();
  v17 = [v5 ic_systemImageNamed:v16];

  *(v0 + 48) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  *(v0 + 56) = sub_1003E1940();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v21 ic_inlineMenuWithChildren:{isa, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  return v19;
}

id sub_1003E20C8()
{
  v21 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100534950;
  sub_1000054A4(0, &qword_1006BF850);
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v22._object = 0x8000000100571220;
  v3._object = 0x8000000100571200;
  v22._countAndFlagsBits = 0xD000000000000019;
  v3._countAndFlagsBits = 0x1000000000000012;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v22);

  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 __systemImageNamedSwift:v6];

  *(v0 + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v8 = [v1 mainBundle];
  v23._object = 0x8000000100571280;
  v9._object = 0x8000000100571260;
  v23._countAndFlagsBits = 0xD00000000000001CLL;
  v9._countAndFlagsBits = 0xD000000000000012;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v23);

  v11 = String._bridgeToObjectiveC()();
  v12 = [v5 systemImageNamed:v11];

  *(v0 + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v13 = [v1 mainBundle];
  v24._object = 0x80000001005712C0;
  v14._countAndFlagsBits = 0x206E69206E65704FLL;
  v14._object = 0xED00007365676150;
  v24._countAndFlagsBits = 0xD000000000000017;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v24);

  v16 = String._bridgeToObjectiveC()();
  v17 = [v5 ic_systemImageNamed:v16];

  *(v0 + 48) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v21 ic_inlineMenuWithChildren:{isa, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  return v19;
}

id sub_1003E24D0()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() mainBundle];
  v10._object = 0x800000010055FAE0;
  v3._countAndFlagsBits = 0x746163696C707544;
  v3._object = 0xEE0065746F4E2065;
  v10._countAndFlagsBits = 0xD000000000000026;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v10);

  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  v8 = [v0 ic_keyCommandWithInput:v1 modifierFlags:0x100000 action:"duplicateSelectedNote:" discoverabilityTitle:v5 image:v7];
  return v8;
}

id sub_1003E2658()
{
  v16 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100534950;
  sub_1000054A4(0, &qword_1006BF850);
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v17._object = 0x800000010055FB40;
  v3._countAndFlagsBits = 0x65746F4E206E6950;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000012;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v17);

  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 systemImageNamed:v5];

  *(v0 + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v8 = [v1 mainBundle];
  v18._object = 0x80000001005711C0;
  v9._countAndFlagsBits = 0x746F4E206B636F4CLL;
  v18._countAndFlagsBits = 0xD000000000000013;
  v9._object = 0xE900000000000065;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v18);

  v11 = String._bridgeToObjectiveC()();
  v12 = [v6 systemImageNamed:v11];

  *(v0 + 40) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  *(v0 + 48) = sub_1003E24D0();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v16 ic_inlineMenuWithChildren:{isa, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  return v14;
}

id sub_1003E2948()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() mainBundle];
  v10._object = 0x80000001005711A0;
  v3._countAndFlagsBits = 0xA680E2746E697250;
  v3._object = 0xA800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0xD00000000000001DLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v10);

  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  v8 = [v0 ic_keyCommandWithInput:v1 modifierFlags:0x100000 action:"handlePrintAction:" discoverabilityTitle:v5 image:v7];
  return v8;
}

id sub_1003E2ABC()
{
  v0 = objc_opt_self();
  sub_10015DA04(&unk_1006BD390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E10;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100534670;
  sub_1000054A4(0, &qword_1006C3E38);
  v3 = [objc_opt_self() mainBundle];
  v17._object = 0x8000000100571180;
  v4._countAndFlagsBits = 0x636F44206E616353;
  v4._object = 0xEE0073746E656D75;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v17);

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 __systemImageNamedSwift:v7];

  *(v2 + 32) = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_1000054A4(0, &qword_1006C6400);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v0 ic_inlineMenuWithChildren:{isa, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

  *(v1 + 32) = v10;
  *(v1 + 40) = sub_1003E20C8();
  *(v1 + 48) = sub_1003E2658();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100534670;
  *(v11 + 32) = sub_1003E2948();
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v0 ic_inlineMenuWithChildren:v12];

  *(v1 + 56) = v13;
  v14 = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v0 ic_inlineMenuWithChildren:v14];

  return v15;
}

id sub_1003E2DB4()
{
  v1 = OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController____lazy_storage___collectionView;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController____lazy_storage___collectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController____lazy_storage___collectionView);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
    v6 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v13[4] = sub_1003E3DE8;
    v13[5] = v4;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_1002B39FC;
    v13[3] = &unk_10065C4D8;
    v7 = _Block_copy(v13);
    v8 = [v6 initWithSectionProvider:v7 configuration:v5];

    _Block_release(v7);

    v9 = [objc_allocWithZone(UICollectionView) initWithFrame:v8 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    [v9 setDelegate:v0];
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_1003E2F5C()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for FolderComposerSelectionViewController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1003E2DB4();
    [v2 addSubview:v3];

    v4 = OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController____lazy_storage___collectionView;
    [*&v0[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController____lazy_storage___collectionView] ic_addAnchorsToFillSuperview];
    v5 = [v0 navigationController];
    if (!v5)
    {
      [v0 setPreferredContentSize:{400.0, 200.0}];
      v6 = *&v0[v4];
      swift_getKeyPath();
      *(swift_allocObject() + 16) = v0;
      v7 = v6;
      v8 = v0;
      v9 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      v5 = *&v8[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_contentSizeObservation];
      *&v8[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_contentSizeObservation] = v9;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1003E30E8(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_1003E2DB4();
  [v4 contentSize];
  v6 = v5;

  [*&a3[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController____lazy_storage___collectionView] contentSize];
  if (v7 > 0.0)
  {
    v8 = [a3 navigationController];
    if (v8)
    {
    }

    else
    {
      [a3 preferredContentSize];
      if (v10 != 400.0 || v9 != v6)
      {

        [a3 setPreferredContentSize:{400.0, v6}];
      }
    }
  }
}

void *sub_1003E3238(uint64_t a1)
{
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  sub_1000054A4(0, &qword_1006C2BA0);
  v12 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  v13 = v12;
  if (a1)
  {
    [v12 contentInsets];
    [v13 setContentInsets:0.0];
  }

  else
  {
    v14 = [v11 parentViewController];
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();

      if (v16)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 16.0;
      }
    }

    else
    {
      v17 = 16.0;
    }

    [v13 contentInsets];
    [v13 setContentInsets:v17];
  }

  v18 = (*((swift_isaMask & *v11) + 0xA8))(a1);
  v40 = v6;
  if (v18)
  {
    v19 = objc_opt_self();
    v20 = [v19 fractionalWidthDimension:1.0];
    v21 = [v19 estimatedDimension:44.0];
    v39 = v7;
    v22 = v21;
    v23 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

    v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v23 elementKind:UICollectionElementKindSectionHeader alignment:1];
    [v24 contentInsets];
    [v24 setContentInsets:16.0];

    sub_10015DA04(&unk_1006BD390);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100534670;
    *(v25 + 32) = v24;
    sub_1000054A4(0, &qword_1006C2BB0);
    v26 = v24;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v7 = v39;
    v6 = v40;

    [v13 setBoundarySupplementaryItems:isa];
  }

  if ((*((swift_isaMask & *v11) + 0xB0))(a1))
  {
    v28 = objc_opt_self();
    v29 = [v28 fractionalWidthDimension:1.0];
    v30 = [v28 estimatedDimension:44.0];
    v31 = [objc_opt_self() sizeWithWidthDimension:v29 heightDimension:v30];
    v39 = v31;

    v32 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v31 elementKind:UICollectionElementKindSectionFooter alignment:5];
    [v32 contentInsets];
    [v32 setContentInsets:0.0];

    sub_10015DA04(&unk_1006BD390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100534670;
    *(inited + 32) = v32;
    v38 = v32;
    v34 = [v13 boundarySupplementaryItems];
    sub_1000054A4(0, &qword_1006C2BB0);
    v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = v35;
    sub_1002DCA80(inited);
    v36 = Array._bridgeToObjectiveC()().super.isa;

    [v13 setBoundarySupplementaryItems:v36];

    [v13 contentInsets];
    [v13 setContentInsets:?];

    (*(v7 + 1))(v9, v40);
  }

  else
  {
    (*(v7 + 1))(v9, v6);
  }

  return v13;
}

id sub_1003E38D8(uint64_t a1, uint64_t a2, void *a3)
{
  UUID.init()();
  *&v3[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController____lazy_storage___collectionView] = 0;
  *&v3[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_verticalInset] = 0x4030000000000000;
  *&v3[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_estimatedHeaderHeight] = 0x4046000000000000;
  *&v3[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_estimatedFooterHeight] = 0x4046000000000000;
  *&v3[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_preferredPopoverWidth] = 0x4079000000000000;
  *&v3[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_estimatedPopoverHeight] = 0x4069000000000000;
  *&v3[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_contentSizeObservation] = 0;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for FolderComposerSelectionViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_1003E3A3C(void *a1)
{
  UUID.init()();
  *&v1[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController____lazy_storage___collectionView] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_verticalInset] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_estimatedHeaderHeight] = 0x4046000000000000;
  *&v1[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_estimatedFooterHeight] = 0x4046000000000000;
  *&v1[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_preferredPopoverWidth] = 0x4079000000000000;
  *&v1[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_estimatedPopoverHeight] = 0x4069000000000000;
  *&v1[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController_contentSizeObservation] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FolderComposerSelectionViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1003E3B3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerSelectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FolderComposerSelectionViewController()
{
  result = qword_1006C6D00;
  if (!qword_1006C6D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003E3C54()
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

unint64_t sub_1003E3D18()
{
  result = qword_1006C6D10;
  if (!qword_1006C6D10)
  {
    sub_10017992C(&qword_1006C6D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6D10);
  }

  return result;
}

unint64_t sub_1003E3D80()
{
  result = qword_1006C6D20;
  if (!qword_1006C6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6D20);
  }

  return result;
}

void *sub_1003E3FD4()
{
  v0 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UICollectionLayoutListConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v0);
  UICollectionLayoutListConfiguration.init(appearance:)();
  sub_1003E41A8();
  v8 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  [v8 contentInsets];
  [v8 setContentInsets:8.0];
  [v8 contentInsets];
  [v8 setContentInsets:?];
  (*(v5 + 8))(v7, v4);
  return v8;
}

unint64_t sub_1003E41A8()
{
  result = qword_1006C2BA0;
  if (!qword_1006C2BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C2BA0);
  }

  return result;
}

uint64_t sub_1003E41F4()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C6D50);
  sub_10002597C(v0, qword_1006C6D50);
  return static Logger.ui.getter();
}

id sub_1003E42F8()
{

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

id sub_1003E43A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR___ICRecoverNoteAlertController_notificationCenter;
  *&v3[v5] = [objc_opt_self() defaultCenter];
  v6 = &v3[OBJC_IVAR___ICRecoverNoteAlertController_title];
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *v6 = v11;
  v6[1] = v13;
  v14 = &v3[OBJC_IVAR___ICRecoverNoteAlertController_message];
  v15 = [v7 mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 localizedStringForKey:v16 value:0 table:0];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *v14 = v18;
  v14[1] = v20;
  v21 = &v3[OBJC_IVAR___ICRecoverNoteAlertController_detail];
  v22 = [v7 mainBundle];
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 localizedStringForKey:v23 value:0 table:0];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  *v21 = v25;
  v21[1] = v27;
  v28 = &v3[OBJC_IVAR___ICRecoverNoteAlertController_cancelButtonTitle];
  v29 = [v7 mainBundle];
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 localizedStringForKey:v30 value:0 table:0];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  *v28 = v32;
  v28[1] = v34;
  v35 = &v3[OBJC_IVAR___ICRecoverNoteAlertController_recoverButtonTitle];
  v36 = [v7 mainBundle];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 localizedStringForKey:v37 value:0 table:0];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  *v35 = v39;
  v35[1] = v41;
  *&v3[OBJC_IVAR___ICRecoverNoteAlertController_note] = a1;
  v42 = &v3[OBJC_IVAR___ICRecoverNoteAlertController_selectedRange];
  *v42 = a2;
  *(v42 + 1) = a3;
  v46.receiver = v3;
  v46.super_class = type metadata accessor for RecoverNoteAlertController();
  return objc_msgSendSuper2(&v46, "init");
}

id sub_1003E475C()
{
  result = [*&v0[OBJC_IVAR___ICRecoverNoteAlertController_note] managedObjectContext];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1003E5708;
    *(v4 + 24) = v3;
    v8[4] = sub_10000EFBC;
    v8[5] = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10000EAF8;
    v8[3] = &unk_10065C608;
    v5 = _Block_copy(v8);
    v6 = v0;
    v7 = v2;

    [v7 performBlockAndWait:v5];

    _Block_release(v5);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1003E48E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR___ICRecoverNoteAlertController_note);
  v4 = [v3 account];
  if (v4)
  {
    v10 = v4;
    v5 = [v4 defaultFolder];
    [v3 undoablySetFolder:v5];

    v6 = [objc_opt_self() shared];
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    [v6 setActionName:v9];

    [a2 ic_save];
  }
}

uint64_t sub_1003E4B74(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR___ICRecoverNoteAlertController_note) isSharedReadOnly];
  if (v3)
  {
    if (qword_1006BC8B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10002597C(v4, qword_1006C6D50);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Cannot show RecoverNoteAlertController for read-only shared note", v7, 2u);
    }
  }

  else
  {
    v5 = sub_1003E4CEC();
    [a1 presentViewController:v5 animated:1 completion:0];
  }

  return v3 ^ 1;
}

id sub_1003E4CEC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___ICRecoverNoteAlertController_message + 8];
  v16 = *&v0[OBJC_IVAR___ICRecoverNoteAlertController_message];
  v17 = v2;

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  String.append(_:)(*&v0[OBJC_IVAR___ICRecoverNoteAlertController_detail]);
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:{1, v16, v17}];

  v7 = String._bridgeToObjectiveC()();
  v8 = objc_opt_self();
  v9 = [v8 actionWithTitle:v7 style:1 handler:0];

  [v6 addAction:v9];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = v1;
  v12 = String._bridgeToObjectiveC()();
  v20 = sub_1003E5700;
  v21 = v10;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1002DEFE0;
  v19 = &unk_10065C590;
  v13 = _Block_copy(&v16);

  v14 = [v8 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v6 addAction:v14];
  return v6;
}

void sub_1003E4F3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___ICRecoverNoteAlertController_notificationCenter);
  v4 = String._bridgeToObjectiveC()();
  [v3 postNotificationName:v4 object:a2];

  sub_1003E475C();
  sub_1003E4FCC();
}

void sub_1003E4FCC()
{
  v1 = [objc_opt_self() valueWithRange:{*(v0 + OBJC_IVAR___ICRecoverNoteAlertController_selectedRange), *(v0 + OBJC_IVAR___ICRecoverNoteAlertController_selectedRange + 8)}];
  sub_10015DA04(&qword_1006C6DD0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000003BLL;
  *(inited + 16) = xmmword_100535E30;
  *(inited + 40) = 0x80000001005716B0;
  v3 = *(v0 + OBJC_IVAR___ICRecoverNoteAlertController_note);
  *(inited + 48) = v3;
  *(inited + 56) = 0xD000000000000041;
  *(inited + 64) = 0x80000001005716F0;
  *(inited + 72) = v1;
  v4 = v3;
  v5 = v1;
  v6 = sub_100191F7C(inited);
  swift_setDeallocating();
  sub_10015DA04(&qword_1006C6DD8);
  swift_arrayDestroy();
  v7 = *(v0 + OBJC_IVAR___ICRecoverNoteAlertController_notificationCenter);
  v8 = String._bridgeToObjectiveC()();
  sub_1003E51CC(v6);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 postNotificationName:v8 object:v0 userInfo:isa];
}

uint64_t sub_1003E51CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10015DA04(&qword_1006BDC78);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_1003E56B4();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10001FA64(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10001FA64(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10001FA64(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_1003E54BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecoverNoteAlertController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1003E56B4()
{
  result = qword_1006C1730;
  if (!qword_1006C1730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C1730);
  }

  return result;
}

double InsertNoteLinkIntent.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1003E7C38(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t InsertNoteLinkIntent.linkedNote.setter(uint64_t a1)
{
  v2 = type metadata accessor for NoteEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_1001AD0E0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1001AD144(a1);
}

uint64_t InsertNoteLinkIntent.target.setter(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v2 - 8);
  sub_1002D9248(a1, &v5 - v3);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(a1, &unk_1006BCAC0);
}

uint64_t sub_1003E58B0()
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
  sub_100025918(v6, static InsertNoteLinkIntent.title);
  sub_10002597C(v6, static InsertNoteLinkIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t InsertNoteLinkIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC8C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static InsertNoteLinkIntent.title);
}

uint64_t static InsertNoteLinkIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC8C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static InsertNoteLinkIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static InsertNoteLinkIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static InsertNoteLinkIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C6DE0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C6DE8);
  __chkstk_darwin(v1);
  sub_100024048();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x6C20747265736E49;
  v2._object = 0xEF206F74206B6E69;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C6DF0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544106784;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C6DF8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:_:)();
}

uint64_t sub_1003E60A8()
{
  swift_getKeyPath();
  sub_100024048();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10015DA04(&unk_1006BD390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100534670;
  *(v1 + 32) = v0;

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v2;
}

uint64_t (*InsertNoteLinkIntent.linkedNote.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*InsertNoteLinkIntent.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*InsertNoteLinkIntent.useNoteTitleAsName.modify(uint64_t *a1))()
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t InsertNoteLinkIntent.perform()(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[23] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  sub_10015DA04(&unk_1006BE0D0);
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for NoteEntity(0);
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  sub_10015DA04(&unk_1006BCAC0);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return _swift_task_switch(sub_1003E65BC, 0, 0);
}

uint64_t sub_1003E65BC()
{
  v1 = v0[36];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[19];
  v0[37] = *(v4 + 48);
  AppDependency.wrappedValue.getter();
  v5 = v0[13];
  v32 = [v5 modernManagedObjectContext];
  v0[38] = v32;

  v6 = swift_allocObject();
  v0[39] = v6;
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  v0[40] = v7;
  *(v7 + 16) = 0;
  v0[41] = *(v4 + 8);
  IntentParameter.wrappedValue.getter();
  v8 = *(v2 + 48);
  LODWORD(v3) = v8(v1, 1, v3);
  sub_1000073B4(v1, &unk_1006BCAC0);
  if (v3 == 1)
  {
    v9 = v0[29];
    v10 = v0[27];
    v29 = v0[28];
    v30 = v0[26];
    v31 = v0[25];
    v11 = v0[21];
    v12 = v0[22];
    v13 = v0[20];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v11 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    (*(v30 + 16))(v10, v29, v31);
    IntentDialog.init(_:)();
    v14 = type metadata accessor for IntentDialog();
    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
    type metadata accessor for AppIntentError();
    sub_1003E90D4(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v9, &unk_1006BE0D0);
    swift_willThrow();

    (*(v30 + 8))(v29, v31);

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = v0[35];
    v18 = v0[30];
    IntentParameter.wrappedValue.getter();
    v19 = v8(v17, 1, v18);
    v20 = v0[35];
    if (v19)
    {
      sub_1000073B4(v20, &unk_1006BCAC0);
      v0[45] = *v0[19];
      IntentParameter.wrappedValue.getter();
      AppDependency.wrappedValue.getter();
      v21 = v0[14];
      v0[46] = v21;

      v22 = swift_task_alloc();
      v0[47] = v22;
      *v22 = v0;
      v22[1] = sub_1003E6DC0;
      v23 = v0[40];
      v24 = sub_1003E8854;
      v25 = v21;
    }

    else
    {
      v26 = v0[35];
      sub_1001AD0E0(v20, v0[34]);
      sub_1000073B4(v26, &unk_1006BCAC0);
      AppDependency.wrappedValue.getter();
      v27 = v0[17];
      v0[42] = v27;

      v28 = swift_task_alloc();
      v0[43] = v28;
      *v28 = v0;
      v28[1] = sub_1003E6B48;
      v24 = sub_1003E911C;
      v25 = v27;
      v23 = v6;
    }

    return sub_1001A9A64(sub_1001A9A64, v25, v24, v23);
  }
}

uint64_t sub_1003E6B48()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 336);
  sub_1001AD144(*(v2 + 272));

  if (v0)
  {
    v4 = sub_1003E76AC;
  }

  else
  {
    v4 = sub_1003E6CB8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003E6CB8()
{
  *(v0 + 360) = **(v0 + 152);
  IntentParameter.wrappedValue.getter();
  AppDependency.wrappedValue.getter();
  *(v0 + 368) = *(v0 + 112);

  v1 = swift_task_alloc();
  *(v0 + 376) = v1;
  *v1 = v0;
  v1[1] = sub_1003E6DC0;

  return (sub_1001A9A64)();
}

uint64_t sub_1003E6DC0()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 368);
  sub_1001AD144(*(v2 + 264));

  if (v0)
  {
    v4 = sub_1003E77BC;
  }

  else
  {
    v4 = sub_1003E6F30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003E6F30()
{
  *(v0 + 88) = 0;
  v1 = *(v0 + 312);
  *(v0 + 96) = 0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_7:
    v11 = *(v0 + 304);
    v12 = *(v0 + 232);
    IntentParameter.projectedValue.getter();
    v13 = type metadata accessor for IntentDialog();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    type metadata accessor for AppIntentError();
    sub_1003E90D4(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v12, &unk_1006BE0D0);
    swift_willThrow();

    goto LABEL_16;
  }

  v3 = *(v0 + 320);
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = v2;
  v6 = v4;
  if (![v5 ic_isModernNoteType] || !objc_msgSend(v6, "ic_isModernNoteType"))
  {
    v14 = *(v0 + 304);
    sub_100197CCC();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();

    goto LABEL_16;
  }

  v7 = *(v0 + 384);
  v8 = *(v0 + 304);
  v9 = *(v0 + 152);
  v10 = swift_task_alloc();
  v10[2] = v8;
  v10[3] = v5;
  v10[4] = v6;
  v10[5] = v0 + 88;
  v10[6] = v9;
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (v7)
  {

    sub_1003E88B0(*(v0 + 88), *(v0 + 96));

LABEL_16:

    v25 = *(v0 + 8);

    return v25();
  }

  v16 = *(v0 + 88);
  v17 = *(v0 + 96);
  *(v0 + 392) = v16;
  *(v0 + 400) = v17;
  if (!v16)
  {
LABEL_22:
    if (*(*(v0 + 312) + 16))
    {
      v23 = *(v0 + 320);
      swift_beginAccess();
      if (*(v23 + 16))
      {
        v24 = *(v0 + 304);
        type metadata accessor for ICError(0);
        *(v0 + 128) = 227;
        sub_1001E27A0(_swiftEmptyArrayStorage);
        sub_1003E90D4(&qword_1006BE4D0, type metadata accessor for ICError);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();

        goto LABEL_16;
      }
    }

    goto LABEL_7;
  }

  sub_1003E8870(v16, v17);
  v18 = v16;
  v19 = v17;
  v20 = swift_task_alloc();
  *(v0 + 408) = v20;
  *v20 = v0;
  v20[1] = sub_1003E740C;
  v21 = *(v0 + 256);

  return NoteEntity.init(for:in:)(v21, v18, v19);
}

uint64_t sub_1003E740C()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1003E78CC;
  }

  else
  {
    v2 = sub_1003E7520;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003E7520()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[38];
  v4 = v0[32];
  sub_1003E90D4(&qword_1006BE480, type metadata accessor for NoteEntity);
  static IntentResult.result<A>(value:)();

  sub_1001AD144(v4);
  sub_1003E88B0(v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1003E76AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E77BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003E78CC()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);

  sub_1003E88B0(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

void sub_1003E79F4(void *a1, uint64_t a2)
{
  v3 = [a1 objectID];
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;
}

void sub_1003E7A64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 ic_existingObjectWithID:a2];
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12 && (v13 = v12, (v14 = [a1 ic_existingObjectWithID:a3]) != 0))
    {
      v15 = v14;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16 && (v17 = sub_1003E8974(v13, v16, *(a5 + 40)), !v5))
      {
        v19 = v17;
        v20 = v18;

        v21 = *a4;
        v22 = *(a4 + 8);
        *a4 = v19;
        *(a4 + 8) = v20;
        sub_1003E88B0(v21, v22);
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

uint64_t sub_1003E7B84(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_100246FCC;

  return InsertNoteLinkIntent.perform()(a1);
}

uint64_t sub_1003E7C38@<X0>(uint64_t *a1@<X8>)
{
  v67 = a1;
  v1 = sub_10015DA04(&qword_1006BCE28);
  __chkstk_darwin(v1 - 8);
  v66 = &v58[-v2];
  v84 = type metadata accessor for InputConnectionBehavior();
  v86 = *(v84 - 8);
  __chkstk_darwin(v84);
  v81 = &v58[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10015DA04(&unk_1006BE0D0);
  v5 = __chkstk_darwin(v4 - 8);
  v80 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v77 = &v58[-v7];
  v8 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v8 - 8);
  v76 = &v58[-v9];
  v10 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v10 - 8);
  v85 = &v58[-v11];
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v58[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v83 = type metadata accessor for LocalizedStringResource();
  v18 = *(v83 - 8);
  v19 = __chkstk_darwin(v83);
  v78 = &v58[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v75 = &v58[-v21];
  v65 = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v13 + 104);
  v23(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = v12;
  v68 = v12;
  v23(v15, v22, v12);
  v70 = v13 + 104;
  v69 = v23;
  v25 = v85;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v79 = *(v18 + 56);
  v82 = v18 + 56;
  v79(v25, 0, 1, v83);
  v63 = type metadata accessor for NoteEntity(0);
  v26 = *(v63 - 8);
  v62 = *(v26 + 56);
  v64 = v26 + 56;
  v62(v76, 1, 1, v63);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23(v15, v22, v24);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v27 = v77;
  IntentDialog.init(_:)();
  v28 = type metadata accessor for IntentDialog();
  v72 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v74 = v30;
  v73 = v29 + 56;
  v30(v27, 0, 1, v28);
  v30(v80, 1, 1, v28);
  v89 = sub_10026EE08();
  v90 = v31;
  v91 = v32;
  v92 = v33;
  v93 = v34;
  v71 = enum case for InputConnectionBehavior.default(_:);
  v35 = *(v86 + 104);
  v86 += 104;
  v78 = v35;
  v36 = v81;
  v35(v81);
  v61 = sub_1001797CC();
  v37 = v27;
  v65 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  v60 = sub_10015DA04(&qword_1006BCB98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v38 = v22;
  v59 = v22;
  v39 = v22;
  v40 = v68;
  v41 = v69;
  v69(v15, v39, v68);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v41(v15, v38, v40);
  v42 = v85;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v79(v42, 0, 1, v83);
  v62(v76, 1, 1, v63);
  v43 = v72;
  v44 = v74;
  v74(v37, 1, 1, v72);
  v44(v80, 1, 1, v43);
  v89 = sub_10026EE08();
  v90 = v45;
  v91 = v46;
  v92 = v47;
  v93 = v48;
  (v78)(v36, v71, v84);
  v49 = v85;
  v80 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  v76 = sub_10015DA04(&unk_1006BCE30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v50 = v59;
  v51 = v68;
  v52 = v69;
  v69(v15, v59, v68);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v52(v15, v50, v51);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v79(v49, 0, 1, v83);
  LOBYTE(v89) = 1;
  v53 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v53 - 8) + 56))(v66, 1, 1, v53);
  v74(v77, 1, 1, v72);
  (v78)(v81, v71, v84);
  v54 = IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  sub_10015DA04(&qword_1006C34B0);
  v87 = 0xD000000000000021;
  v88 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v56 = v67;
  v57 = v80;
  *v67 = v65;
  v56[1] = v57;
  v56[2] = 0;
  v56[3] = 0;
  *(v56 + 32) = 1;
  v56[5] = v54;
  v56[6] = result;
  return result;
}

id sub_1003E8870(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_1003E88B0(void *a1, void *a2)
{
  if (a1)
  {
  }
}

id sub_1003E8974(void *a1, void *a2, id a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v52 - v11;
  v13 = [a1 managedObjectContext];
  if (v13)
  {
    v14 = v13;
    if ([a1 isPasswordProtectedAndLocked])
    {
      sub_100197CCC();
      swift_allocError();
      v16 = 15;
    }

    else
    {
      if ([a1 isEditable])
      {
        v18 = [a1 textStorage];
        if (v18)
        {
          v54 = v18;
          v53 = [v18 length];
          IntentParameter.wrappedValue.getter();
          if (v56 == 1)
          {
            v19 = [objc_allocWithZone(ICAttachmentInsertionController) initWithNote:a1];
            v20 = [objc_opt_self() newLinkAttachmentToNote:a2 fromNote:a1 parentAttachment:0];
            if (v20)
            {
              v21 = v20;

              v22 = String._bridgeToObjectiveC()();
              [v21 updateChangeCountWithReason:v22];
            }
          }

          else
          {
            v25 = [objc_opt_self() appURLForNote:a2];
            if (v25)
            {
              v26 = v25;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              (*(v7 + 32))(v12, v10, v6);
              v27 = [v54 attributesAtIndex:v53 effectiveRange:0];
              type metadata accessor for Key(0);
              v29 = v28;
              v52[1] = sub_1003E90D4(&qword_1006C95D0, type metadata accessor for Key);
              v52[2] = v29;
              v52[0] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              v30 = [a2 title];
              if (!v30)
              {
                v31 = [objc_opt_self() mainBundle];
                v32 = String._bridgeToObjectiveC()();
                v30 = [v31 localizedStringForKey:v32 value:0 table:0];
              }

              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v33 = objc_allocWithZone(NSMutableAttributedString);
              v34 = String._bridgeToObjectiveC()();

              v35 = [v33 initWithString:v34];

              v36 = v35;
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              v38 = [v36 ic_range];
              [v36 addAttributes:isa range:{v38, v39}];

              URL._bridgeToObjectiveC()(&NSLinkAttributeName);
              v41 = v40;
              v42 = [v36 ic_range];
              [v36 addAttribute:NSLinkAttributeName value:v41 range:{v42, v43}];

              v44 = String._bridgeToObjectiveC()();
              v45 = [v36 ic_range];
              [v36 removeAttribute:v44 range:{v45, v46}];

              v47 = [v36 ic_range];
              [v54 ic_replaceCharactersInRange:v53 withAttributedSubstring:0 fromRange:{v36, v47, v48}];

              (*(v7 + 8))(v12, v6);
            }
          }

          [a1 updateModificationDateAndChangeCount];
          v56 = 0;
          v49 = [v14 save:&v56];
          a3 = v56;
          if (v49)
          {
            v50 = v56;
            a3 = [a1 objectID];

            return a3;
          }

          v51 = v56;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          goto LABEL_14;
        }

        type metadata accessor for ICError(0);
        a3 = v24;
        v55 = 227;
        sub_1001E27A0(_swiftEmptyArrayStorage);
        sub_1003E90D4(&qword_1006BE4D0, type metadata accessor for ICError);
        _BridgedStoredNSError.init(_:userInfo:)();
LABEL_13:
        swift_willThrow();
LABEL_14:

        return a3;
      }

      sub_100197CCC();
      swift_allocError();
      v16 = 16;
    }

    *v15 = v16;
    goto LABEL_13;
  }

  type metadata accessor for ICError(0);
  a3 = v17;
  v55 = 225;
  sub_1001E27A0(_swiftEmptyArrayStorage);
  sub_1003E90D4(&qword_1006BE4D0, type metadata accessor for ICError);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
  return a3;
}

uint64_t sub_1003E90D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static ICArchive.archiveTitle<A>(for:)(uint64_t a1)
{
  v2 = type metadata accessor for ICObjectReferences();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - v5;
  if (Array.count.getter() != 1)
  {
    goto LABEL_9;
  }

  v20[1] = a1;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
  v7 = *(v2 - 8);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
LABEL_9:
    v16 = [objc_opt_self() mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 localizedStringForKey:v17 value:0 table:0];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v12;
  }

  ICObjectReferences.title.getter();
  v9 = v8;
  (*(v7 + 8))(v6, v2);
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = String._bridgeToObjectiveC()();

  v11 = [v10 ic_sanitizedFilenameString];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    goto LABEL_9;
  }

  return v12;
}

uint64_t static ICArchive.archiveFilename(forTitle:)()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [v0 ic_sanitizedFilenameString];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 0x6372617365746F6ELL;
  v4._object = 0xEC00000065766968;
  String.append(_:)(v4);
  return v2;
}

uint64_t static ICArchive.markdownArchiveFilename(forTitle:)()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [v0 ic_sanitizedFilenameString];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v2;
}

unint64_t sub_1003E954C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t sub_1003E9590()
{
  v0 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v4 = JSONEncoder.init()();
  (*(v1 + 104))(v3, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v0);
  result = dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
  qword_1006EF988 = v4;
  return result;
}

uint64_t sub_1003E9684()
{
  v0 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v4 = JSONDecoder.init()();
  (*(v1 + 104))(v3, enum case for JSONDecoder.DateDecodingStrategy.iso8601(_:), v0);
  result = dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  qword_1006EF990 = v4;
  return result;
}

uint64_t sub_1003E9778(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1003E97D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  __chkstk_darwin(a1);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = (*(a4 + 32))(a3, a4);
  v11 = v9;
  v12 = v10;
  if (v10)
  {
    v29 = v9;
    v30 = v10;
    __chkstk_darwin(v9);
    *(&v28 - 2) = &v29;
    v13 = sub_100474E24(sub_1001D9C64, (&v28 - 4), &off_10064D688);
    swift_arrayDestroy();
    if (v13)
    {
      v29 = v11;
      v30 = v12;
      v33 = 46;
      v34 = 0xE100000000000000;
      sub_10019E0AC();
      v14 = StringProtocol.components<A>(separatedBy:)();

      v16 = (v14 + 16);
      v15 = *(v14 + 16);
      v29 = v14;
      v30 = v14 + 32;
      if (v15 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2 * v15 - 1;
      }

      v31 = 0;
      v32 = v17;

      sub_10015DA04(&qword_1006C1C08);
      sub_1003E9A7C();
      v18 = BidirectionalCollection<>.joined(separator:)();
      v20 = v19;
      swift_unknownObjectRelease();
      if (*v16)
      {
        v21 = &v16[2 * *v16];
        v22 = *v21;
        v23 = v21[1];

        v29 = v18;
        v30 = v20;
        v24._countAndFlagsBits = 3027488;
        v24._object = 0xE300000000000000;
        String.append(_:)(v24);
        v25._countAndFlagsBits = v22;
        v25._object = v23;
        String.append(_:)(v25);
      }

      else
      {

        v29 = v18;
        v30 = v20;
        v26._countAndFlagsBits = 12832;
        v26._object = 0xE200000000000000;
        String.append(_:)(v26);
      }

      v11 = v29;
    }
  }

  (*(v6 + 8))(v8, a3);
  return v11;
}

unint64_t sub_1003E9A7C()
{
  result = qword_1006C1C10;
  if (!qword_1006C1C10)
  {
    sub_10017992C(&qword_1006C1C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1C10);
  }

  return result;
}

void sub_1003E9AE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100189784(0, v1, 0);
    v2 = a1 + 64;
    v3 = _HashTable.startBucket.getter();
    v4 = a1;
    v5 = 0;
    v21 = v1;
    while ((v3 & 0x8000000000000000) == 0 && v3 < 1 << *(v4 + 32))
    {
      v8 = v3 >> 6;
      if ((*(v2 + 8 * (v3 >> 6)) & (1 << v3)) == 0)
      {
        goto LABEL_21;
      }

      v22 = *(v4 + 36);
      v9 = *(*(v4 + 48) + 8 * v3);
      v10 = UInt.init(truncating:)();

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100189784((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      _swiftEmptyArrayStorage[v12 + 4] = v10;
      v6 = 1 << *(v4 + 32);
      if (v3 >= v6)
      {
        goto LABEL_22;
      }

      v2 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v8);
      if ((v13 & (1 << v3)) == 0)
      {
        goto LABEL_23;
      }

      if (v22 != *(v4 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v3 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v3 & 0x7FFFFFFFFFFFFFC0;
        v7 = v21;
      }

      else
      {
        v15 = v8 << 6;
        v16 = v8 + 1;
        v17 = (a1 + 72 + 8 * v8);
        v7 = v21;
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_1000153F8(v3, v22, 0);
            v4 = a1;
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_1000153F8(v3, v22, 0);
        v4 = a1;
      }

LABEL_4:
      ++v5;
      v3 = v6;
      if (v5 == v7)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_1003E9D20()
{
  v1 = &v0[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_amount];
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_amount];
  v3 = v0[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_amount + 8];
  v4 = *&v0[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_rangeType];
  LODWORD(v5) = v0[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_rangeType + 8];
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = objc_allocWithZone(ICDateFilterTypeSelection);
  v0;

  v8 = [v7 initWithSelectionType:7];
  v9 = v8;
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = v4;
  }

  [v8 setRelativeRangeSelectionType:v10];
  isa = 0;
  if ((v1[8] & 1) == 0)
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  [v9 setRelativeRangeAmount:isa];

  v12 = [v9 relativeRangeLabel];
  if (v12)
  {
    v13 = v12;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v28 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = [v9 relativeRangeTimeIntervalOptions];
  if (v16)
  {
    v17 = v16;
    v27 = v5;
    sub_1000054A4(0, &qword_1006C3F30);
    sub_10030E710();
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003E9AE0(v5);
    if (*(v5 + 16) >= *(v18 + 16))
    {
      v19 = *(v18 + 16);
    }

    else
    {
      v19 = *(v5 + 16);
    }

    if (v19)
    {
      v20 = v4;
      v21 = v2;
      v22 = v18;
      sub_10015DA04(&qword_1006C3698);
      v23 = static _DictionaryStorage.allocate(capacity:)();
      v18 = v22;
      v2 = v21;
      v4 = v20;
    }

    else
    {
      v23 = &_swiftEmptyDictionarySingleton;
    }

    v29[0] = v23;
    sub_1003EADDC(v18, v5, 1, v29);
    v24 = v29[0];
    LOBYTE(v5) = v27;
  }

  else
  {
    v24 = 0;
  }

  v31 = v3;
  v30 = v5;
  v29[3] = &type metadata for DateRangePickerContentConfiguration;
  v29[4] = sub_1003EB8CC();
  v25 = swift_allocObject();
  v29[0] = v25;
  *(v25 + 16) = v2;
  *(v25 + 24) = v31;
  *(v25 + 32) = v4;
  *(v25 + 40) = v30;
  *(v25 + 48) = v28;
  *(v25 + 56) = v15;
  *(v25 + 64) = v24;
  *(v25 + 72) = sub_1003EB8C4;
  *(v25 + 80) = v6;

  UICollectionViewCell.contentConfiguration.setter();
}

id sub_1003EA054(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = &a3[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_amount];
  *v6 = a1;
  v6[8] = 0;
  [a3 setNeedsUpdateConfiguration];
  v7 = &a3[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_rangeType];
  *v7 = a2;
  v7[8] = 0;
  result = [a3 setNeedsUpdateConfiguration];
  v9 = *&a3[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_rangeSelectionChanged];
  if (v9)
  {

    v9(a1, a2);

    return sub_10000C840(v9);
  }

  return result;
}

id sub_1003EA2B4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_amount];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_rangeType];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC11MobileNotes39FolderComposerFilterCellDateRangePicker_rangeSelectionChanged];
  v6 = type metadata accessor for FolderComposerFilterCellDateRangePicker();
  *v5 = 0;
  *(v5 + 1) = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1003EA5C4()
{
  v1 = OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView____lazy_storage___dateRangePicker;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView____lazy_storage___dateRangePicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView____lazy_storage___dateRangePicker);
  }

  else
  {
    v4 = [objc_allocWithZone(UIPickerView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setDataSource:v0];
    [v4 setDelegate:v0];
    [v4 _setSelectionBarIgnoresInset:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1003EA698()
{
  v1 = OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView_configuration;
  swift_beginAccess();
  sub_1002EC1FC(v0 + v1, v11);
  sub_10015DA04(&qword_1006C21D0);
  if (swift_dynamicCast())
  {
    if ((v7 & 1) == 0)
    {
      v2 = sub_1003EA5C4();
      if (__OFSUB__(v6, 1))
      {
        __break(1u);
        goto LABEL_12;
      }

      v3 = v2;
      [v2 selectRow:v6 - 1 inComponent:objc_msgSend(objc_opt_self() animated:{"isArabic"), 0}];
    }

    if (v9)
    {

      sub_10000C840(v10);
      return;
    }

    v4 = sub_1003EA5C4();
    if (v8)
    {
      if (((v8 - 1) & 0x8000000000000000) == 0)
      {
        v5 = v4;
        [v4 selectRow:v8 - 1 inComponent:objc_msgSend(objc_opt_self() animated:{"isArabic") ^ 1, 0}];

        sub_10000C840(v10);

        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }
}

id sub_1003EA87C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003EA924@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView_configuration;
  swift_beginAccess();
  return sub_1002EC1FC(v1 + v3, a1);
}

uint64_t sub_1003EA97C(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView_configuration;
  swift_beginAccess();
  sub_1003EAA84((v1 + v3), a1);
  swift_endAccess();
  sub_1003EA698();
  return sub_100009F60(a1);
}

void (*sub_1003EA9E8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003EAA4C;
}

void sub_1003EAA4C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1003EA698();
  }
}

uint64_t *sub_1003EAA84(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

char *sub_1003EACA0()
{
  v1 = v0[3];
  v10 = v0[2];
  v11 = v1;
  v2 = *(&v1 + 1);
  v14 = v1;
  v4 = *v0;
  v3 = v0[1];
  v12 = *(v0 + 8);
  v9[0] = v4;
  v9[1] = v3;
  v13 = v10;
  sub_100006038(&v13, v8, &qword_1006C0318);
  sub_100006038(&v14, v8, &qword_1006C6F60);
  sub_100010854(v2);
  v5 = sub_1003EB1D0(v9);
  sub_1003EBA08(&qword_1006C6F68, v6, type metadata accessor for DateRangePickerContentView);
  return v5;
}

uint64_t sub_1003EAD74@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  v6 = *(v1 + 40);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 40) = v6;
  *(a1 + 48) = v2;
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;

  return sub_100010854(v3);
}

uint64_t sub_1003EADDC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = a2;
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a2 + 64);
  v11 = *(a1 + 16);

  v12 = 0;
  if (v11)
  {
    v13 = 0;
    v42 = v5;
    v43 = a1 + 32;
    v14 = (63 - v8) >> 6;
    v40 = a1;
    v41 = v7;
    while (1)
    {
      if (v13 >= v11)
      {
        goto LABEL_26;
      }

      v15 = *(v43 + 8 * v13);
      v16 = v12;
      if (!v10)
      {
        while (1)
        {
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v17 >= v14)
          {
            goto LABEL_22;
          }

          v10 = *(v7 + 8 * v17);
          ++v16;
          if (v10)
          {
            v45 = a3;
            v12 = v17;
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        type metadata accessor for DateFilterRelativeRangeSelectionType(0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_30;
      }

      v45 = a3;
LABEL_13:
      v44 = v12;
      v18 = (*(v5 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v10)))));
      v19 = *v18;
      v20 = v18[1];
      v21 = *a4;
      v22 = sub_1002ED08C(v15);
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        goto LABEL_27;
      }

      v27 = v22;
      v28 = v23;
      v29 = v21[3];

      if (v29 >= v26)
      {
        if ((v45 & 1) == 0)
        {
          sub_1002E9B3C();
        }
      }

      else
      {
        sub_1002E5134(v26, v45 & 1);
        v30 = sub_1002ED08C(v15);
        if ((v28 & 1) != (v31 & 1))
        {
          goto LABEL_29;
        }

        v27 = v30;
      }

      v10 &= v10 - 1;
      if (v28)
      {
        break;
      }

      v32 = *a4;
      *(*a4 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v32[6] + 8 * v27) = v15;
      v33 = (v32[7] + 16 * v27);
      *v33 = v19;
      v33[1] = v20;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_28;
      }

      ++v13;
      v32[2] = v36;
      v7 = v41;
      v11 = *(v40 + 16);
      a3 = 1;
      v5 = v42;
      v12 = v44;
      if (v13 == v11)
      {
        goto LABEL_22;
      }
    }

    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_10015DA04(&unk_1006C9B40);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10019E530();
    }

LABEL_30:
    _StringGuts.grow(_:)(30);
    v38._object = 0x800000010056C0A0;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    type metadata accessor for DateFilterRelativeRangeSelectionType(0);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_22:

    sub_10019E530();
  }

  return result;
}

char *sub_1003EB1D0(uint64_t a1)
{
  v11[3] = &type metadata for DateRangePickerContentConfiguration;
  v11[4] = sub_1003EB8CC();
  v2 = swift_allocObject();
  v11[0] = v2;
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = type metadata accessor for DateRangePickerContentView();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView____lazy_storage___dateRangePicker] = 0;
  sub_1002EC1FC(v11, &v6[OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView_configuration]);
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v7 setPreservesSuperviewLayoutMargins:1];
  v8 = sub_1003EA5C4();
  [v7 addSubview:v8];

  [*&v7[OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView____lazy_storage___dateRangePicker] ic_addAnchorsToFillSuperviewLayoutMargins];
  sub_1003EA698();

  sub_100009F60(v11);
  return v7;
}

uint64_t sub_1003EB2FC(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    result = [objc_opt_self() isArabic];
    if (!result)
    {
      goto LABEL_4;
    }

LABEL_12:
    if (!__OFADD__(a1, 1))
    {
      return dispatch thunk of CustomStringConvertible.description.getter();
    }

    __break(1u);
    goto LABEL_19;
  }

  if (a2)
  {
    return 0;
  }

  result = [objc_opt_self() isArabic];
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v5 = OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView_configuration;
  swift_beginAccess();
  sub_1002EC1FC(v2 + v5, v11);
  sub_10015DA04(&qword_1006C21D0);
  if (swift_dynamicCast())
  {
    if (!v9)
    {
LABEL_15:

      sub_10000C840(v10);
      return 0;
    }

    result = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      if ((result & 0x8000000000000000) == 0)
      {
        if (*(v9 + 16))
        {
          v6 = sub_1002ED08C(result);
          if (v7)
          {
            v8 = *(*(v9 + 56) + 16 * v6);

            sub_10000C840(v10);

            return v8;
          }
        }

        goto LABEL_15;
      }

LABEL_20:
      __break(1u);
      return result;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return 0;
}

void sub_1003EB490(void *a1, uint64_t a2)
{
  v23 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView_configuration;
  swift_beginAccess();
  sub_1002EC1FC(v2 + v10, v29);
  sub_10015DA04(&qword_1006C21D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = v28;
  sub_100010854(v28);

  sub_10000C840(v11);
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = sub_1003EA5C4();
  v13 = objc_opt_self();
  v14 = [v12 selectedRowInComponent:{objc_msgSend(v13, "isArabic")}];

  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = *(v2 + OBJC_IVAR____TtC11MobileNotes26DateRangePickerContentView____lazy_storage___dateRangePicker);
  v17 = [v16 selectedRowInComponent:{objc_msgSend(v13, "isArabic") ^ 1}];

  if (__OFADD__(v17, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (((v17 + 1) & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v11(v15);
  sub_10000C840(v11);
LABEL_7:
  if (!a2)
  {
    sub_1000054A4(0, &qword_1006BE9E0);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    v20 = v23;
    *(v19 + 16) = v23;
    aBlock[4] = sub_1003EB8B0;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10028DCE8;
    aBlock[3] = &unk_10065C720;
    v21 = _Block_copy(aBlock);
    v22 = v20;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003EBA08(&qword_1006C1130, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10015DA04(&unk_1006C3F20);
    sub_100243E84();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v26 + 8))(v6, v4);
    (*(v24 + 8))(v9, v25);
  }
}

unint64_t sub_1003EB8CC()
{
  result = qword_1006C6F58;
  if (!qword_1006C6F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C6F58);
  }

  return result;
}

uint64_t sub_1003EB920(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1003EB938(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1003EB994(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_1003EBA08(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1003EBA50(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  *(v4 + 16) = &_swiftEmptySetSingleton;

  v8 = *(v4 + 32);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = v9;
  v10[4] = a2;
  v10[5] = a3;
  aBlock[4] = sub_1003EC6E4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10028DCE8;
  aBlock[3] = &unk_10065C8C8;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  sub_1001C71A4(a2);

  [v8 performBlock:v11];
  _Block_release(v11);
}

void sub_1003EBB9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(v2 + 16);
  v59 = v2;
  v4 = *(v2 + 40);

  v53 = v4;
  v5 = sub_1003EC1B8(v4, v3);
  v6 = v5;
  if ((v5 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C63E0);
    sub_100005B0C(&qword_1006C1770, &qword_1006C63E0);
    Set.Iterator.init(_cocoa:)();
    v6 = aBlock[9];
    v7 = aBlock[10];
    v8 = aBlock[11];
    v9 = aBlock[12];
    v10 = aBlock[13];
  }

  else
  {
    v9 = 0;
    v11 = -1 << *(v5 + 32);
    v7 = (v5 + 56);
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v5 + 56);
  }

  v14 = (v8 + 64) >> 6;
  v54 = v7;
  v55 = v6;
  while ((v6 & 0x8000000000000000) != 0)
  {
    v20 = __CocoaSet.Iterator.next()();
    if (!v20)
    {
      goto LABEL_28;
    }

    v61 = v20;
    sub_1000054A4(0, &qword_1006C63E0);
    swift_dynamicCast();
    v19 = aBlock[0];
    v17 = v9;
    v18 = v10;
    if (!aBlock[0])
    {
      goto LABEL_28;
    }

LABEL_18:
    v57 = v18;
    v21 = *(v59 + 24);
    if (v21 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    if (v22 < 1)
    {
      goto LABEL_58;
    }

    v23 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      ++v23;
      v26 = [v24 addHashtagToNoteBodyIfMissing:v19];
    }

    while (v22 != v23);
LABEL_8:

    v9 = v17;
    v6 = v55;
    v10 = v57;
    v7 = v54;
  }

  v15 = v9;
  v16 = v10;
  v17 = v9;
  if (v10)
  {
LABEL_14:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (v17 >= v14)
    {
      break;
    }

    v16 = v7[v17];
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

LABEL_28:
  sub_10019E530();

  v28 = sub_1003EC1B8(v27, v53);

  if ((v28 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C63E0);
    sub_100005B0C(&qword_1006C1770, &qword_1006C63E0);
    Set.Iterator.init(_cocoa:)();
    v28 = v61;
    v29 = v62;
    v30 = v63;
    v31 = v64;
    v32 = v65;
  }

  else
  {
    v31 = 0;
    v33 = -1 << *(v28 + 32);
    v29 = (v28 + 56);
    v30 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v28 + 56);
  }

  v56 = v29;
  v36 = (v30 + 64) >> 6;
  v58 = v28;
  while (2)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_1000054A4(0, &qword_1006C63E0), swift_dynamicCast(), v41 = aBlock[0], v39 = v31, v40 = v32, !aBlock[0]))
      {
LABEL_55:
        sub_10019E530();
        v47 = *(v59 + 32);
        v48 = swift_allocObject();
        swift_weakInit();
        v49 = swift_allocObject();
        v49[2] = v48;
        v49[3] = a1;
        v49[4] = a2;
        aBlock[4] = sub_1003EC6D8;
        aBlock[5] = v49;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10028DCE8;
        aBlock[3] = &unk_10065C878;
        v50 = _Block_copy(aBlock);
        sub_1001C71A4(a1);

        [v47 performBlock:v50];
        _Block_release(v50);
        return;
      }

LABEL_45:
      v42 = *(v59 + 24);
      if (v42 >> 62)
      {
        v43 = _CocoaArrayWrapper.endIndex.getter();
        if (v43)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
LABEL_47:
          if (v43 < 1)
          {
            goto LABEL_59;
          }

          for (i = 0; i != v43; ++i)
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v45 = *(v42 + 8 * i + 32);
            }

            v46 = v45;
            [v45 removeHashtag:v41];
          }
        }
      }

      v31 = v39;
      v32 = v40;
      v29 = v56;
      v28 = v58;
      continue;
    }

    break;
  }

  v37 = v31;
  v38 = v32;
  v39 = v31;
  if (v32)
  {
LABEL_41:
    v40 = (v38 - 1) & v38;
    v41 = *(*(v28 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
    if (!v41)
    {
      goto LABEL_55;
    }

    goto LABEL_45;
  }

  while (1)
  {
    v39 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v39 >= v36)
    {
      goto LABEL_55;
    }

    v38 = v29[v39];
    ++v37;
    if (v38)
    {
      goto LABEL_41;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void *sub_1003EC1B8(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_100497E44(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = sub_10026700C(v5, v6);
LABEL_10:

  return sub_100498478(a1, v2);
}

void sub_1003EC2AC(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = [a1 includedObjectIDs];
  sub_1000054A4(0, &qword_1006BFEC0);
  sub_100005B0C(&qword_1006C63A0, &qword_1006BFEC0);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v5 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v5 = v28[4];
    v6 = v28[5];
    v7 = v28[6];
    v8 = v28[7];
    v9 = v28[8];
  }

  else
  {
    v8 = 0;
    v10 = -1 << *(v5 + 32);
    v6 = (v5 + 56);
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = (v12 & *(v5 + 56));
  }

  v13 = (v7 + 64) >> 6;
  while (v5 < 0)
  {
    v19 = __CocoaSet.Iterator.next()();
    if (!v19 || (v28[0] = v19, swift_dynamicCast(), v18 = v27, v16 = v8, v17 = v9, !v27))
    {
LABEL_26:
      v26 = sub_10019E530();
      if (a3)
      {
        a3(v26);
      }

      return;
    }

LABEL_20:
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_9;
    }

    v21 = *(Strong + 32);

    v22 = [v21 objectWithID:v18];

    if (!v22)
    {
      goto LABEL_9;
    }

    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      v24 = v23;
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {

LABEL_9:
        goto LABEL_10;
      }

      swift_beginAccess();
      v25 = v22;
      sub_100264EEC(v28, v24);
      swift_endAccess();
    }

    else
    {
    }

LABEL_10:
    v8 = v16;
    v9 = v17;
  }

  v14 = v8;
  v15 = v9;
  v16 = v8;
  if (v9)
  {
LABEL_16:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v16 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_26;
    }

    v15 = v6[v16];
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1003EC5D4(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 32);

    [v4 ic_save];
  }

  if (a2)
  {
    a2();
  }
}

uint64_t sub_1003EC664()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003EC6F0(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_1002DF82C(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_1002E310C(v16, v5 & 1);
    v11 = sub_1002DF82C(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_10015DA04(&qword_1006C0318);
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v11;
  sub_1002E88A4();
  v11 = v20;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_10015DA04(&unk_1006C9B40);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v11) = v10;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x800000010056C0A0;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    sub_10015DA04(&qword_1006C0318);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21[2] = v24;
  if (v40 != 1)
  {
    v5 = (a1 + 9);
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v26 = *v5;
      v27 = *a3;

      v10 = v26;
      v28 = sub_1002DF82C(v7, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_1002E310C(v32, 1);
        v28 = sub_1002DF82C(v7, v6);
        if ((v17 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v7;
      v35[1] = v6;
      *(v34[7] + 8 * v28) = v10;
      v36 = v34[2];
      v15 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v34[2] = v37;
      v5 += 3;
      if (v40 == v25)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_1003ECA9C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_1003ECC3C(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_1003ED4D4(v14, v7, v17);
    v10 = v17[0];
  }

  return v10;
}

uint64_t sub_1003ECC3C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
LABEL_25:
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v22 = a3;
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v22;
  }

  else
  {
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v29 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a3;
  }

  v5 = 0;
  v6 = 0;
  v28 = v4 & 0xC000000000000001;
  v26 = v4 + 32;
  v30 = a4 + 56;
LABEL_4:
  v24 = v5;
  while (v6 != v29)
  {
    if (v28)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v27 + 16))
      {
        goto LABEL_24;
      }

      v7 = *(v26 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v11 = -1 << *(a4 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = 1 << v12;
    if (((1 << v12) & *(v30 + 8 * (v12 >> 6))) != 0)
    {
      sub_1000054A4(0, &qword_1006C63E0);
      v15 = *(*(a4 + 48) + 8 * v12);
      v16 = static NSObject.== infix(_:_:)();

      if ((v16 & 1) == 0)
      {
        v17 = ~v11;
        do
        {
          v12 = (v12 + 1) & v17;
          v13 = v12 >> 6;
          v14 = 1 << v12;
          if (((1 << v12) & *(v30 + 8 * (v12 >> 6))) == 0)
          {
            goto LABEL_5;
          }

          v18 = *(*(a4 + 48) + 8 * v12);
          v19 = static NSObject.== infix(_:_:)();
        }

        while ((v19 & 1) == 0);
      }

      v20 = a1[v13];
      a1[v13] = v20 | v14;
      if ((v20 & v14) == 0)
      {
        v5 = v24 + 1;
        if (!__OFADD__(v24, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        break;
      }
    }

    else
    {
LABEL_5:
    }
  }

  return sub_1003B5524(a1, a2, v24, a4);
}

uint64_t sub_1003ECE74(unint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() canonicalHashtagsInContext:a2];
  sub_1000054A4(0, &qword_1006C63E0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_62;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = _swiftEmptyArrayStorage;
  v63 = v4;
  v57 = a1;
  if (v5)
  {
    v67[0] = _swiftEmptyArrayStorage;
    sub_1001895E4(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v7 = 0;
    v6 = v67[0];
    v8 = v4 & 0xC000000000000001;
    do
    {
      if (v8)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 standardizedContent];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v4 = v63;
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v67[0] = v6;
      v17 = v6[2];
      v16 = v6[3];
      if (v17 >= v16 >> 1)
      {
        sub_1001895E4((v16 > 1), v17 + 1, 1);
        v4 = v63;
        v6 = v67[0];
      }

      ++v7;
      v6[2] = v17 + 1;
      v18 = &v6[3 * v17];
      v18[4] = v13;
      v18[5] = v15;
      v18[6] = v10;
    }

    while (v5 != v7);
    a1 = v57;
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
LABEL_59:
    v19 = &_swiftEmptyDictionarySingleton;
    goto LABEL_18;
  }

  sub_10015DA04(&qword_1006C36D0);
  v19 = static _DictionaryStorage.allocate(capacity:)();
  v4 = v63;
LABEL_18:
  v67[0] = v19;
  sub_1003EC6F0(v6, 1, v67);
  v58 = v67[0];
  v20 = sub_10026F6DC(v4);

  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_20:
      v21 = 0;
      v55 = v4;
      v56 = a1 & 0xC000000000000001;
      v53 = a1 + 32;
      v54 = a1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v56)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v23 = __OFADD__(v21, 1);
          v24 = v21 + 1;
          if (v23)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v21 >= *(v54 + 16))
          {
            goto LABEL_61;
          }

          v22 = *(v53 + 8 * v21);
          v23 = __OFADD__(v21, 1);
          v24 = v21 + 1;
          if (v23)
          {
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            v5 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }
        }

        v59 = v22;
        v60 = v24;
        v25 = [v22 visibleInlineAttachments];
        v26 = sub_1000054A4(0, &qword_1006C26A8);
        v4 = sub_100005B0C(&qword_1006C26B0, &qword_1006C26A8);
        v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v66 = _swiftEmptyArrayStorage;
        v61 = v20;
        if ((v27 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          __CocoaSet.makeIterator()();
          Set.Iterator.init(_cocoa:)();
          v28 = v67[0];
          v29 = v67[1];
          v30 = v67[2];
          v31 = v67[3];
          v32 = v67[4];
        }

        else
        {
          v33 = -1 << *(v27 + 32);
          v29 = v27 + 56;
          v30 = ~v33;
          v34 = -v33;
          if (v34 < 64)
          {
            v35 = ~(-1 << v34);
          }

          else
          {
            v35 = -1;
          }

          v32 = v35 & *(v27 + 56);

          v31 = 0;
          v28 = v27;
        }

        a1 = v26;
        v36 = (v30 + 64) >> 6;
        v62 = _swiftEmptyArrayStorage;
        v64 = v28;
        while (1)
        {
          v6 = v31;
          if (v28 < 0)
          {
            v4 = v28 & 0x7FFFFFFFFFFFFFFFLL;
            if (!__CocoaSet.Iterator.next()())
            {
              break;
            }

            swift_dynamicCast();
            v41 = v65;
            if (!v65)
            {
              break;
            }

            goto LABEL_46;
          }

          v39 = v31;
          v40 = v32;
          if (!v32)
          {
            while (1)
            {
              v31 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                break;
              }

              if (v31 >= v36)
              {
                goto LABEL_53;
              }

              v40 = *(v29 + 8 * v31);
              ++v39;
              if (v40)
              {
                goto LABEL_42;
              }
            }

            __break(1u);
            goto LABEL_59;
          }

LABEL_42:
          v32 = (v40 - 1) & v40;
          v41 = *(*(v28 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v40)))));
          if (!v41)
          {
            break;
          }

LABEL_46:
          if ([v41 isHashtagAttachment] && (v42 = objc_msgSend(v41, "tokenContentIdentifier")) != 0)
          {
            v43 = a1;
            v44 = v42;
            v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            v4 = v58;
            if (*(v58 + 16))
            {
              v4 = sub_1002DF82C(v45, v47);
              v38 = v37;

              a1 = v43;
              v28 = v64;
              if ((v38 & 1) == 0)
              {
                goto LABEL_36;
              }

              v48 = *(*(v58 + 56) + 8 * v4);

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              v4 = &v66;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v62 = v66;
            }

            else
            {

              a1 = v43;
              v28 = v64;
            }
          }

          else
          {
LABEL_36:
          }
        }

LABEL_53:
        sub_10019E530();

        v49 = v61;
        if ((v61 & 0xC000000000000001) != 0)
        {
          if (v61 < 0)
          {
            v50 = v61;
          }

          else
          {
            v50 = v61 & 0xFFFFFFFFFFFFFF8;
          }

          v51 = __CocoaSet.count.getter();
          v49 = sub_10026700C(v50, v51);
        }

        a1 = v57;
        v4 = v55;
        v21 = v60;
        v20 = sub_1003ECA9C(v62, v49);
      }

      while (v60 != v55);
    }
  }

  return v20;
}

uint64_t sub_1003ED4D4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1003ECC3C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id sub_1003ED828()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 navigationItem];
  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 localizedStringForKey:v4 value:0 table:0];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  [v2 setTitle:v5];

  v6 = [v1 navigationItem];
  sub_1000054A4(0, &qword_1006C68A0);
  v13.value.super.super.isa = sub_1003EDA84();
  v13.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v13, v14).super.super.isa;
  [v6 setLeftBarButtonItem:isa];

  v8 = sub_1003EEBD0(&OBJC_IVAR___ICMoveViewController____lazy_storage___collectionView, sub_1003EE118);
  v9 = sub_1003EDFDC();
  v10 = [v9 collectionViewDiffableDataSource];

  [v8 setDiffableDataSource:v10];
  [*&v1[OBJC_IVAR___ICMoveViewController____lazy_storage___collectionView] setDelegate:v1];
  if (([objc_opt_self() ic_isVision] & 1) == 0)
  {
    sub_1003EDB70();
  }

  return [*&v1[OBJC_IVAR___ICMoveViewController____lazy_storage___moveDataSource] reloadDataAnimated:0];
}

id sub_1003EDA84()
{
  v1 = OBJC_IVAR___ICMoveViewController____lazy_storage___dismissAction;
  v2 = *(v0 + OBJC_IVAR___ICMoveViewController____lazy_storage___dismissAction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICMoveViewController____lazy_storage___dismissAction);
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1003EDB70()
{
  if (qword_1006BC838 != -1)
  {
    swift_once();
  }

  v1 = *&qword_1006EF858;
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 paletteForEdge:2 size:{0.0, v1}];

    if (v4)
    {
      v5 = v4;
      v6 = sub_1003EEBD0(&OBJC_IVAR___ICMoveViewController____lazy_storage___headerView, sub_1003EEC34);
      [v5 addSubview:v6];

      v7 = [v0 navigationController];
      if (v7)
      {
        v8 = v7;
        [v7 attachPalette:v5 isPinned:0];
      }

      v9 = objc_opt_self();
      sub_10015DA04(&unk_1006BD390);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100531E10;
      v11 = OBJC_IVAR___ICMoveViewController____lazy_storage___headerView;
      v12 = [*&v0[OBJC_IVAR___ICMoveViewController____lazy_storage___headerView] leadingAnchor];
      v13 = [v5 layoutMarginsGuide];

      v14 = [v13 leadingAnchor];
      v15 = [v12 constraintEqualToAnchor:v14];

      *(v10 + 32) = v15;
      v16 = [*&v0[v11] trailingAnchor];
      v17 = [v5 layoutMarginsGuide];

      v18 = [v17 trailingAnchor];
      v19 = [v16 constraintEqualToAnchor:v18];

      *(v10 + 40) = v19;
      v20 = [*&v0[v11] topAnchor];
      v21 = [v5 topAnchor];

      v22 = [v20 constraintEqualToAnchor:v21];
      *(v10 + 48) = v22;
      v23 = [*&v0[v11] bottomAnchor];
      v24 = [v5 bottomAnchor];

      v25 = [v23 constraintEqualToAnchor:v24];
      *(v10 + 56) = v25;
      sub_1000054A4(0, &qword_1006C5D90);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 activateConstraints:isa];
    }
  }
}

char *sub_1003EDFDC()
{
  v1 = OBJC_IVAR___ICMoveViewController____lazy_storage___moveDataSource;
  v2 = *(v0 + OBJC_IVAR___ICMoveViewController____lazy_storage___moveDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICMoveViewController____lazy_storage___moveDataSource);
  }

  else
  {
    v4 = v0;
    v5 = sub_1003EEBD0(&OBJC_IVAR___ICMoveViewController____lazy_storage___collectionView, sub_1003EE118);
    v6 = *(v4 + OBJC_IVAR___ICMoveViewController_sourceObjectIds);
    objc_allocWithZone(type metadata accessor for MoveDataSource());

    v7 = sub_1003A1A68(v5, v6);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1003EE09C()
{
  v1 = OBJC_IVAR___ICMoveViewController____lazy_storage___folderCreationController;
  v2 = *(v0 + OBJC_IVAR___ICMoveViewController____lazy_storage___folderCreationController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICMoveViewController____lazy_storage___folderCreationController);
  }

  else
  {
    v4 = [objc_allocWithZone(ICFolderCreationController) initWithViewController:v0 creationApproach:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1003EE118(void *a1)
{
  v2 = [a1 legacyViewContext];
  v3 = [a1 modernViewContext];
  v4 = [a1 viewControllerManager];
  v5 = v4;
  if (v4)
  {
    v4 = sub_1000054A4(0, &qword_1006BF348);
  }

  else
  {
    v12[1] = 0;
    v12[2] = 0;
  }

  v12[0] = v5;
  v12[3] = v4;
  v11[3] = sub_10015DA04(&qword_1006BE7A0);
  v11[0] = swift_allocObject();
  sub_10027CA3C(v12, v11[0] + 16);
  v6 = sub_1001C98E8(v11);
  sub_100009F60(v11);
  sub_10027CAAC(v12);
  v7 = objc_allocWithZone(ICFolderListCollectionView);
  v8 = [v7 initWithPresentingViewController:a1 legacyManagedObjectContext:v2 modernManagedObjectContext:v3 viewControllerManager:{v6, v11[0]}];

  [v8 setHasGroupInset:1];
  [v8 setHasSwipeActions:0];
  [v8 setShouldShowMoveHeader:{objc_msgSend(objc_opt_self(), "ic_isVision")}];
  v9 = v8;
  [v9 setDragDelegate:0];
  [v9 setDragInteractionEnabled:0];
  [v9 setSpringLoaded:0];

  return v9;
}

uint64_t sub_1003EE454(void *a1)
{
  v2 = v1;
  v4 = sub_1003EDFDC();
  v5 = [v4 collectionViewDiffableDataSource];

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [v5 itemIdentifierForIndexPath:isa];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    sub_10027CA3C(v15, &v13);
    sub_1000054A4(0, &unk_1006C7150);
    if (swift_dynamicCast())
    {
      if (![v12 type])
      {
        [a1 ic_deselectAllItemsAnimated:1];
        if ([v12 parentIdentifier])
        {
          objc_opt_self();
          v8 = swift_dynamicCastObjCClass();
          if (!v8)
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v8 = 0;
        }

        sub_1003EE71C(v8);

        goto LABEL_21;
      }

      if ([v12 type] == 1)
      {
        [a1 ic_deselectAllItemsAnimated:1];
        sub_1003EE904();

LABEL_22:
        sub_100009F60(&v13);
        return sub_10027CAAC(v15);
      }
    }

    sub_1000054A4(0, &qword_1006BFBD0);
    if (swift_dynamicCast() || (sub_1000054A4(0, &qword_1006BFEC0), swift_dynamicCast()))
    {
      v8 = v12;
      v9 = *(v2 + OBJC_IVAR___ICMoveViewController_completionHandler);
      if (v9)
      {
        sub_100010854(v9);
        v10 = v12;
        v9();

        sub_10000C840(v9);
      }

LABEL_21:

      goto LABEL_22;
    }

    sub_100009F60(&v13);
  }

  [a1 ic_deselectAllItemsAnimated:1];
  return sub_10027CAAC(v15);
}

void sub_1003EE71C(id a1)
{
  v3 = sub_1003EE09C();
  if (a1)
  {
    a1 = [a1 accountObjectID];
    v4 = sub_1003EEBD0(&OBJC_IVAR___ICMoveViewController____lazy_storage___collectionView, sub_1003EE118);
    v5 = [v4 modernManagedObjectContext];

    if (a1)
    {
      v6 = [v5 objectWithID:a1];

      a1 = swift_dynamicCastObjCProtocolConditional();
      if (!a1)
      {
      }
    }

    else
    {
    }
  }

  [v3 setNoteContainer:a1];

  swift_unknownObjectRelease();
  v7 = *(v1 + OBJC_IVAR___ICMoveViewController____lazy_storage___folderCreationController);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1003EF1AC;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B00B8;
  aBlock[3] = &unk_10065C918;
  v9 = _Block_copy(aBlock);
  v10 = v7;

  [v10 promptToAddFolderAllowingSmartFolder:0 withCompletionHandler:v9];
  _Block_release(v9);
}

void sub_1003EE904()
{
  v1 = objc_opt_self();
  [v1 enableLocalAccount];
  v2 = [v1 sharedContext];
  [v2 addOrDeleteLocalAccountIfNecessary];

  v3 = [v1 sharedContext];
  [v3 save];

  v4 = objc_opt_self();
  v5 = sub_1003EEBD0(&OBJC_IVAR___ICMoveViewController____lazy_storage___collectionView, sub_1003EE118);
  v6 = [v5 modernManagedObjectContext];

  v10 = [v4 localAccountInContext:v6];
  v7 = *(v0 + OBJC_IVAR___ICMoveViewController_completionHandler);
  if (v7)
  {

    if (v10)
    {
      v8 = [v10 defaultFolder];
      v9 = [v8 objectID];
    }

    else
    {
      v9 = 0;
    }

    v7(v9);

    sub_10000C840(v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_1003EEBD0(uint64_t *a1, uint64_t (*a2)(uint64_t))
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

char *sub_1003EEC34(uint64_t a1)
{
  type metadata accessor for MoveHeaderView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setPreservesSuperviewLayoutMargins:1];

  v3 = sub_1003EEBD0(&OBJC_IVAR___ICMoveViewController____lazy_storage___collectionView, sub_1003EE118);
  v4 = [v3 modernManagedObjectContext];

  v5 = OBJC_IVAR___ICMoveHeaderView_modernContext;
  v6 = *&v2[OBJC_IVAR___ICMoveHeaderView_modernContext];
  *&v2[OBJC_IVAR___ICMoveHeaderView_modernContext] = v4;
  v7 = v4;

  v8 = sub_100399A58();
  v9 = *&v2[v5];
  v10 = *&v8[OBJC_IVAR___ICMovePreviewView_modernContext];
  *&v8[OBJC_IVAR___ICMovePreviewView_modernContext] = v9;
  v11 = v9;

  v12 = [*(a1 + OBJC_IVAR___ICMoveViewController____lazy_storage___collectionView) legacyManagedObjectContext];
  v13 = OBJC_IVAR___ICMoveHeaderView_htmlContext;
  v14 = *&v2[OBJC_IVAR___ICMoveHeaderView_htmlContext];
  *&v2[OBJC_IVAR___ICMoveHeaderView_htmlContext] = v12;

  v15 = *&v2[OBJC_IVAR___ICMoveHeaderView____lazy_storage___previewView];
  v16 = *&v2[v13];
  v17 = *&v15[OBJC_IVAR___ICMovePreviewView_htmlContext];
  *&v15[OBJC_IVAR___ICMovePreviewView_htmlContext] = v16;
  v18 = v15;
  v19 = v16;

  *&v2[OBJC_IVAR___ICMoveHeaderView_objectIds] = *(a1 + OBJC_IVAR___ICMoveViewController_sourceObjectIds);

  sub_10039A580();
  return v2;
}

void sub_1003EEDF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[OBJC_IVAR___ICMoveViewController_completionHandler];
    if (v2)
    {
      sub_100010854(*&Strong[OBJC_IVAR___ICMoveViewController_completionHandler]);

      v2(0);
      sub_10000C840(v2);
    }

    else
    {
    }
  }
}

void sub_1003EEE90(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR___ICMoveViewController_completionHandler);
      if (v4)
      {
        v5 = a1;
        sub_100010854(v4);

        v6 = [v5 objectID];
        v4();
        sub_10000C840(v4);

        v3 = v5;
      }
    }
  }
}

id sub_1003EF0F8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___ICMoveViewController_completionHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR___ICMoveViewController____lazy_storage___moveDataSource] = 0;
  *&v2[OBJC_IVAR___ICMoveViewController____lazy_storage___folderCreationController] = 0;
  *&v2[OBJC_IVAR___ICMoveViewController____lazy_storage___collectionView] = 0;
  *&v2[OBJC_IVAR___ICMoveViewController____lazy_storage___headerView] = 0;
  *&v2[OBJC_IVAR___ICMoveViewController____lazy_storage___dismissAction] = 0;
  *&v2[OBJC_IVAR___ICMoveViewController_sourceObjectIds] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "initWithViewMode:viewControllerManager:viewControllerType:", 0, a1, 1);
}

void sub_1003EF1BC()
{
  v1 = (v0 + OBJC_IVAR___ICMoveViewController_completionHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___ICMoveViewController____lazy_storage___moveDataSource) = 0;
  *(v0 + OBJC_IVAR___ICMoveViewController____lazy_storage___folderCreationController) = 0;
  *(v0 + OBJC_IVAR___ICMoveViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR___ICMoveViewController____lazy_storage___headerView) = 0;
  *(v0 + OBJC_IVAR___ICMoveViewController____lazy_storage___dismissAction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003EF26C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_1003EF2E0()
{
  result = [objc_allocWithZone(type metadata accessor for NoteDebugStatusController()) init];
  qword_1006EF998 = result;
  return result;
}

uint64_t sub_1003EF474@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1003EF4F4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

id sub_1003EF568()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10015DA04(&qword_1006C7210);
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = __chkstk_darwin(v2);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_10015DA04(&qword_1006C7218);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = sub_10015DA04(&qword_1006C7220);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtC11MobileNotes25NoteDebugStatusController__currentNote;
  v27 = 0;
  sub_10015DA04(&qword_1006C7208);
  Published.init(initialValue:)();
  (*(v12 + 32))(&v0[v15], v14, v11);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v28, "init");
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 sharedContext];
  if (v19)
  {
    v20 = v19;
    swift_getKeyPath();
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    swift_beginAccess();
    Published.projectedValue.getter();
    swift_endAccess();
    sub_1003EFAF0();
    Publisher<>.assign(to:)();
    (*(v8 + 8))(v10, v7);
    v21 = v25;
    v22 = v26;
    (*(v25 + 16))(v24, v6, v26);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();

    (*(v21 + 8))(v6, v22);
  }

  else
  {
  }

  return v18;
}

uint64_t type metadata accessor for NoteDebugStatusController()
{
  result = qword_1006C71F0;
  if (!qword_1006C71F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003EF9F0()
{
  sub_1003EFA80();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003EFA80()
{
  if (!qword_1006C7200)
  {
    sub_10017992C(&qword_1006C7208);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C7200);
    }
  }
}

unint64_t sub_1003EFAF0()
{
  result = qword_1006C7228;
  if (!qword_1006C7228)
  {
    sub_10017992C(&qword_1006C7218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7228);
  }

  return result;
}

unint64_t sub_1003EFB58()
{
  result = qword_1006C7248;
  if (!qword_1006C7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7248);
  }

  return result;
}

void *sub_1003EFBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for ICQueryType();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ICQueryEntity();
  v30 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10015DA04(&qword_1006C72D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  ObjectType = swift_getObjectType();
  v17 = v31;
  v18 = (*(a2 + 24))(*(v4 + 8), *(v4 + 16), a3, ObjectType, a2);
  if (!v17)
  {
    v19 = v30;
    v31 = 0;
    v28 = type metadata accessor for ICFolderArchiveModel(0);
    sub_1003F5184(v4 + *(v28 + 44), v15);
    v20 = type metadata accessor for ICFolderArchiveModel.Query(0);
    if ((*(*(v20 - 8) + 48))(v15, 1, v20) == 1)
    {
      sub_1000073B4(v15, &qword_1006C72D0);
      v21 = 0;
    }

    else
    {
      (*(v19 + 16))(v12, v15, v10);
      (*(v29 + 16))(v9, &v15[*(v20 + 20)], v7);
      v22 = objc_allocWithZone(type metadata accessor for ICQuery());
      v21 = ICQuery.init(entity:type:)();
      sub_1003F5124(v15, type metadata accessor for ICFolderArchiveModel.Query);
    }

    [v18 setSmartFolderQueryObjC:v21];

    if ([v18 isRenamable])
    {

      v23 = String._bridgeToObjectiveC()();

      [v18 setTitle:v23];
    }

    if ([v18 supportsCustomNoteSortType])
    {
      v24 = *(v4 + *(v28 + 48));
      if ((v24 & 0xFF00) == 0x200)
      {
        v25 = 0;
      }

      else
      {
        v25 = [objc_opt_self() folderNoteSortTypeWithOrder:qword_100548C98[v24] direction:(v24 >> 8) & 1];
      }

      [v18 setCustomNoteSortType:v25];
    }
  }

  return v18;
}

id sub_1003EFF94(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ICFolderArchiveModel(0);
  v5 = *(v2 + v4[13]);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = 0;
  v8 = v5 + 40;
  v23 = v6 - 1;
  v24 = v5 + 40;
  do
  {
    v9 = (v8 + 16 * v7);
    v10 = v7;
    while (1)
    {
      if (v10 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (!*(a2 + 16))
      {
        goto LABEL_6;
      }

      v11 = *(v9 - 1);
      v12 = *v9;

      v13 = sub_1002DF11C(v11, v12);
      if (v14)
      {
        if ([*(*(a2 + 56) + 8 * v13) identifier])
        {
          break;
        }
      }

LABEL_6:
      ++v10;
      v9 += 2;
      if (v6 == v10)
      {
        goto LABEL_14;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v7 = v10 + 1;
    v4 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v8 = v5 + 40;
  }

  while (v23 != v10);
LABEL_14:
  v15 = [a1 subFolderIdentifiersOrderedSet];
  [v15 removeAllObjects];

  v4 = [a1 subFolderIdentifiersOrderedSet];
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_30;
  }

  v16 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v4 = v4;
    v17 = v4;
    if (!v16)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v4 = _swiftEmptyArrayStorage[v18 + 4];
      }

      v19 = v4;
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [v17 addObject:v4];

      ++v18;
      if (v20 == v16)
      {
        goto LABEL_25;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v22 = v4;
    v16 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v22;
  }

LABEL_25:

  [a1 setSubFolderOrderMergeableDataDirty:1];
  [a1 saveSubFolderMergeableDataIfNeeded];
  return [a1 subFolderIdentifiersOrderedSetDocument];
}

uint64_t sub_1003F0264(uint64_t a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006C28B0);
  __chkstk_darwin(v5 - 8);
  v37 = v30 - v6;
  v7 = sub_10015DA04(&qword_1006C28B8);
  __chkstk_darwin(v7 - 8);
  v9 = v30 - v8;
  v10 = type metadata accessor for PersistedActivityEvent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v34 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s8ActivityVMa();
  v13 = *(v33 - 8);
  __chkstk_darwin(v33);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v3 + *(type metadata accessor for ICFolderArchiveModel(0) + 56));
  if (!v16)
  {
    return 0;
  }

  v30[1] = a1;
  v30[2] = v2;
  v44 = _swiftEmptyArrayStorage;
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = *(v13 + 72);
    v35 = (v11 + 48);
    v36 = v19;
    v31 = (v11 + 8);
    v32 = (v11 + 32);
    v38 = v15;
    while (1)
    {
      sub_1003F50BC(v18, v15, _s8ActivityVMa);
      IsAlexandriaDemoModeEnabled = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v24 = ICInternalSettingsIsAlexandriaDemoModeEnabled();
      v39[0] = IsAlexandriaDemoModeEnabled;
      v39[1] = v24;
      v41 = 0;
      v42 = 0;
      v40 = 0;
      v43 = 2;
      sub_1002AC34C(v39, v9);
      if ((*v35)(v9, 1, v10) == 1)
      {
        break;
      }

      v25 = v34;
      (*v32)(v34, v9, v10);
      sub_1000054A4(0, &qword_1006C1B60);
      v26 = v37;
      sub_1002ACB48(v39, v37);
      v27 = static ICCloudSyncingObject.cloudSyncingObjectActivityEvent(for:fallback:)();
      v28 = v26;
      v15 = v38;
      sub_1000073B4(v28, &qword_1006C28B0);
      (*v31)(v25, v10);
      sub_1003F5124(v15, _s8ActivityVMa);
      if (v27)
      {
        goto LABEL_5;
      }

LABEL_8:
      v18 += v36;
      if (!--v17)
      {
        goto LABEL_12;
      }
    }

    sub_1000073B4(v9, &qword_1006C28B8);
    sub_1000054A4(0, &qword_1006C1B60);
    v20 = v9;
    v21 = v37;
    sub_1002ACB48(v39, v37);
    v15 = v38;
    static ICCloudSyncingObject.cloudSyncingObjectActivityEvent(forData:fallback:)();
    v22 = v21;
    v9 = v20;
    sub_1000073B4(v22, &qword_1006C28B0);
    sub_1003F5124(v15, _s8ActivityVMa);
LABEL_5:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_8;
  }

LABEL_12:
  ICCloudSyncingObject.cloudSyncingObjectActivityEvents.setter();
  return ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter();
}

void sub_1003F0710(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v5 = _s8ActivityVMa();
  v83 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10015DA04(&qword_1006C72D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v77 - v9;
  *a3 = 2;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 2;
  *(a3 + 80) = 3;
  v11 = type metadata accessor for ICFolderArchiveModel(0);
  v12 = *(v11 + 44);
  v13 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v78 = v12;
  v15(a3 + v12, 1, 1, v13);
  v80 = v11;
  v81 = a1;
  v17 = *(v11 + 56);
  v82 = a3;
  v77 = v17;
  *(a3 + v17) = 0;
  v18 = [a1 identifier];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = v81;
  v24 = v82;
  v82[1] = v20;
  v24[2] = v22;
  v25 = [v23 title];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v24[8] = v26;
  v24[9] = v28;
  v29 = [v23 smartFolderQueryObjC];
  if (v29)
  {
    v30 = v29;
    dispatch thunk of ICQuery.entity.getter();
    dispatch thunk of ICQuery.type.getter();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v15(v10, v31, 1, v13);
  sub_1003F4FE8(v10, v82 + v78);
  v32 = v81;
  v33 = [v81 customNoteSortType];
  if (!v33)
  {
    goto LABEL_11;
  }

  v34 = v33;
  if ([v33 isDefault] || (v35 = sub_1003F3E88(objc_msgSend(v34, "order")), v35 == 3))
  {

LABEL_11:
    v36 = 512;
    goto LABEL_12;
  }

  v51 = v35;
  v52 = sub_1003F402C([v34 direction]);

  if (v52 == 2)
  {
    goto LABEL_11;
  }

  v36 = v51 | ((v52 & 1) << 8);
LABEL_12:
  *(v82 + *(v80 + 48)) = v36;
  v37 = [v32 subFolderIdentifiersOrderedSet];
  v38 = [v37 allObjects];

  sub_1000054A4(0, &qword_1006C21F0);
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v39 >> 62)
  {
    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (v40)
    {
      goto LABEL_14;
    }

LABEL_26:

    v42 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v40)
  {
    goto LABEL_26;
  }

LABEL_14:
  v84 = _swiftEmptyArrayStorage;
  sub_100189444(0, v40 & ~(v40 >> 63), 0);
  if (v40 < 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  v41 = 0;
  v42 = v84;
  do
  {
    if ((v39 & 0xC000000000000001) != 0)
    {
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v43 = *(v39 + 8 * v41 + 32);
    }

    v44 = v43;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v84 = v42;
    v49 = v42[2];
    v48 = v42[3];
    if (v49 >= v48 >> 1)
    {
      sub_100189444((v48 > 1), v49 + 1, 1);
      v42 = v84;
    }

    ++v41;
    v42[2] = v49 + 1;
    v50 = &v42[2 * v49];
    v50[4] = v45;
    v50[5] = v47;
  }

  while (v40 != v41);

  v32 = v81;
LABEL_27:
  v37 = v79;
  *(v82 + *(v80 + 52)) = v42;
  if ((v37[56] & 1) == 0)
  {
    sub_100279F6C(v37);
    if (v37[59])
    {
      goto LABEL_42;
    }

LABEL_54:

    return;
  }

  v53 = v32;
  v16 = ICCloudSyncingObject.cloudSyncingObjectActivityEvents.getter();

  if (!(v16 >> 62))
  {
    v54 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
      goto LABEL_30;
    }

    goto LABEL_53;
  }

LABEL_52:
  v54 = _CocoaArrayWrapper.endIndex.getter();
  if (!v54)
  {
LABEL_53:

    sub_100279F6C(v37);
    *(v82 + v77) = _swiftEmptyArrayStorage;
    if (v37[59])
    {
      goto LABEL_42;
    }

    goto LABEL_54;
  }

LABEL_30:
  v84 = _swiftEmptyArrayStorage;
  sub_100189764(0, v54 & ~(v54 >> 63), 0);
  if (v54 < 0)
  {
    __break(1u);
    return;
  }

  v55 = 0;
  v56 = v84;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v57 = *(v16 + 8 * v55 + 32);
    }

    sub_1002AB1A4(v57, v7);
    v84 = v56;
    v59 = v56[2];
    v58 = v56[3];
    if (v59 >= v58 >> 1)
    {
      sub_100189764(v58 > 1, v59 + 1, 1);
      v56 = v84;
    }

    ++v55;
    v56[2] = v59 + 1;
    sub_1003F5058(v7, v56 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v59);
  }

  while (v54 != v55);

  v60 = v79;
  sub_100279F6C(v79);
  *(v82 + v77) = v56;
  if ((*(v60 + 59) & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_42:
  v61 = [v32 parent];
  if (v61 && (v62 = v61, v63 = [v61 identifier], v62, v63) || (v64 = objc_msgSend(v32, "account"), v63 = objc_msgSend(v64, "identifier"), v64, v63))
  {
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  v68 = v82;
  v82[3] = v65;
  v68[4] = v67;
  v69 = [v32 parent];
  if (v69)
  {
    v70 = v69;
    v71 = [v69 title];
  }

  else
  {
    v70 = [v32 account];
    v71 = [v70 localizedName];
  }

  v72 = v71;

  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  v76 = v82;
  v82[5] = v73;
  v76[6] = v75;
  *(v76 + 56) = [v32 markedForDeletion];
  LOBYTE(v72) = sub_1003F4134([v32 folderType]);

  *(v76 + 80) = v72;
}

uint64_t sub_1003F0E8C()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C7230);
  sub_10002597C(v0, qword_1006C7230);
  return static Logger.archiving.getter();
}

unint64_t sub_1003F0ED8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x6E65644965707974;
    v7 = 0xD000000000000010;
    v8 = 0x6954746E65726170;
    if (a1 != 3)
    {
      v8 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x74726F5365746F6ELL;
    v2 = 0xD000000000000014;
    if (a1 != 9)
    {
      v2 = 0x6974697669746361;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x656C746974;
    v4 = 1701869940;
    if (a1 != 6)
    {
      v4 = 0x7972657571;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1003F1058(void *a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006C7500);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10017CC60(a1, a1[3]);
  sub_1003F5ADC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = *v3;
  v12 = 0;
  sub_10027A9FC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = v3[80];
    v12 = 6;
    sub_1003F5B30();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = type metadata accessor for ICFolderArchiveModel(0);
    LOBYTE(v11) = 7;
    type metadata accessor for ICFolderArchiveModel.Query(0);
    sub_1003F3E40(&qword_1006C7518, type metadata accessor for ICFolderArchiveModel.Query);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOWORD(v11) = *&v3[v9[12]];
    v12 = 8;
    sub_1003F5B84();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *&v3[v9[13]];
    v12 = 9;
    sub_10015DA04(&qword_1006C13F0);
    sub_10027AF58(&qword_1006C1E40);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *&v3[v9[14]];
    v12 = 10;
    sub_10015DA04(&unk_1006C7360);
    sub_1003F5BD8(&qword_1006C7528, &qword_1006C7530);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003F1480@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_10015DA04(&qword_1006C72D0);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = sub_10015DA04(&qword_1006C7538);
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = v29 - v8;
  v10 = type metadata accessor for ICFolderArchiveModel(0);
  v11 = __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 44);
  v15 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v16 = *(*(v15 - 8) + 56);
  v34 = v14;
  v35 = v13;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v33 = a1;
  sub_10017CC60(a1, v17);
  sub_1003F5ADC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v18 = v34;
    v20 = v35;
    sub_100009F60(v33);
    swift_bridgeObjectRelease_n();

    sub_1000073B4(&v20[v18], &qword_1006C72D0);
  }

  else
  {
    v29[2] = v15;
    v37 = 0;
    sub_10027ACE4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v34;
    v22 = v35;
    *v35 = v36;
    LOBYTE(v36) = 1;
    *(v22 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v22 + 2) = v23;
    LOBYTE(v36) = 2;
    *(v22 + 3) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v22 + 4) = v24;
    LOBYTE(v36) = 3;
    *(v22 + 5) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v22 + 6) = v25;
    v29[1] = v25;
    LOBYTE(v36) = 4;
    v22[56] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v36) = 5;
    *(v22 + 8) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v22 + 9) = v26;
    v29[0] = v26;
    v37 = 6;
    sub_1003F56AC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v22[80] = v36;
    LOBYTE(v36) = 7;
    sub_1003F3E40(&qword_1006C7250, type metadata accessor for ICFolderArchiveModel.Query);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1003F4FE8(v6, &v22[v19]);
    v37 = 8;
    sub_1003EFB58();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v22[v10[12]] = v36;
    sub_10015DA04(&qword_1006C13F0);
    v37 = 9;
    sub_10027AF58(&qword_1006C1E98);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v35[v10[13]] = v36;
    sub_10015DA04(&unk_1006C7360);
    v37 = 10;
    sub_1003F5BD8(&qword_1006C7540, &qword_1006C7548);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v10[14];
    (*(v31 + 8))(v9, v32);
    v28 = v35;
    *&v35[v27] = v36;
    sub_1003F50BC(v28, v30, type metadata accessor for ICFolderArchiveModel);
    sub_100009F60(v33);
    return sub_1003F5124(v28, type metadata accessor for ICFolderArchiveModel);
  }
}

uint64_t sub_1003F1BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003F42E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003F1BDC(uint64_t a1)
{
  v2 = sub_1003F5ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003F1C18(uint64_t a1)
{
  v2 = sub_1003F5ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003F1C84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4853415254;
  if (v2 != 1)
  {
    v3 = 0x5452414D53;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x4C414D524F4ELL;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 0x4853415254;
  if (*a2 != 1)
  {
    v6 = 0x5452414D53;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x4C414D524F4ELL;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1003F1D74()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003F1E0C()
{
  String.hash(into:)();
}

Swift::Int sub_1003F1E90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003F1F24@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003F466C(*a1);
  *a2 = result;
  return result;
}

void sub_1003F1F54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x4853415254;
  if (v2 != 1)
  {
    v4 = 0x5452414D53;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x4C414D524F4ELL;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1003F20C0(void *a1)
{
  v3 = sub_10015DA04(&qword_1006C7560);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10017CC60(a1, a1[3]);
  sub_1003F3DEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for ICQueryEntity();
  sub_1003F3E40(&qword_1006C7568, &type metadata accessor for ICQueryEntity);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ICFolderArchiveModel.Query(0);
    v8[14] = 1;
    type metadata accessor for ICQueryType();
    sub_1003F3E40(&qword_1006C7570, &type metadata accessor for ICQueryType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1003F22C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for ICQueryType();
  v21 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ICQueryEntity();
  v23 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10015DA04(&qword_1006C7258);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ICFolderArchiveModel.Query(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10017CC60(a1, a1[3]);
  sub_1003F3DEC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100009F60(a1);
  }

  v20 = v9;
  v12 = v11;
  v14 = v23;
  v13 = v24;
  v30 = 0;
  sub_1003F3E40(&qword_1006C7268, &type metadata accessor for ICQueryEntity);
  v15 = v25;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = *(v14 + 32);
  v19 = v12;
  v16(v12, v15, v27);
  v29 = 1;
  sub_1003F3E40(&qword_1006C7270, &type metadata accessor for ICQueryType);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v26 + 8))(v8, v28);
  v17 = v19;
  (*(v21 + 32))(v19 + *(v20 + 20), v5, v13);
  sub_1003F50BC(v17, v22, type metadata accessor for ICFolderArchiveModel.Query);
  sub_100009F60(a1);
  return sub_1003F5124(v17, type metadata accessor for ICFolderArchiveModel.Query);
}

uint64_t sub_1003F26FC()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x797469746E65;
  }
}

uint64_t sub_1003F272C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1003F2804(uint64_t a1)
{
  v2 = sub_1003F3DEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003F2840(uint64_t a1)
{
  v2 = sub_1003F3DEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1003F28AC()
{
  v0 = type metadata accessor for ICQueryType();
  v1 = *(v0 - 8);
  v2 = v1;
  __chkstk_darwin(v0);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ICQueryEntity();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = v8;
  v9 = type metadata accessor for ICFolderArchiveModel.Query(0);
  v21[3] = v9;
  sub_100025918(v9, qword_1006EF9A0);
  v21[2] = sub_10002597C(v9, qword_1006EF9A0);
  (*(v6 + 104))(v8, enum case for ICQueryEntity.note(_:), v5);
  v10 = swift_allocObject();
  sub_10015DA04(&qword_1006BF3D0);
  v11 = *(v1 + 72);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100535E30;
  v14 = (v13 + v12);
  v15 = swift_allocObject();
  *(v15 + 16) = 1;
  *v14 = v15;
  v16 = enum case for ICQueryType.deleted(_:);
  v17 = *(v2 + 104);
  v17(v14, enum case for ICQueryType.deleted(_:), v0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v14 + v11) = v18;
  v17((v14 + v11), v16, v0);
  *(v10 + 16) = v13;
  *v4 = v10;
  v17(v4, enum case for ICQueryType.or(_:), v0);
  v19 = objc_allocWithZone(type metadata accessor for ICQuery());
  v20 = ICQuery.init(entity:type:)();
  dispatch thunk of ICQuery.entity.getter();
  dispatch thunk of ICQuery.type.getter();
}

uint64_t sub_1003F2B8C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;

  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    v9 = type metadata accessor for ICFolderArchiveModel.Query(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for ICQuery();
    sub_1003F3E40(&qword_1006C72A8, &type metadata accessor for ICQuery);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v10 = v13[1];
    dispatch thunk of ICQuery.entity.getter();
    v11 = type metadata accessor for ICFolderArchiveModel.Query(0);
    dispatch thunk of ICQuery.type.getter();

    sub_1001C60E4(v6, v8);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_1003F2DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1006BC8E8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = sub_10002597C(a1, qword_1006EF9A0);
  return sub_1003F50BC(v3, a2, type metadata accessor for ICFolderArchiveModel.Query);
}

uint64_t sub_1003F2E70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4445494649444F4DLL;
  v4 = 0xEB0000000054415FLL;
  if (v2 != 1)
  {
    v3 = 0x454C544954;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x5F44455441455243;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000005441;
  }

  v7 = 0x4445494649444F4DLL;
  v8 = 0xEB0000000054415FLL;
  if (*a2 != 1)
  {
    v7 = 0x454C544954;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x5F44455441455243;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000005441;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1003F2F7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003F3028()
{
  String.hash(into:)();
}

Swift::Int sub_1003F30C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003F3168@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003F48B0(*a1);
  *a2 = result;
  return result;
}

void sub_1003F3198(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000005441;
  v4 = 0xEB0000000054415FLL;
  v5 = 0x4445494649444F4DLL;
  if (v2 != 1)
  {
    v5 = 0x454C544954;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x5F44455441455243;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1003F3318(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x49444E4543534544;
  }

  else
  {
    v3 = 0x4E49444E45435341;
  }

  if (v2)
  {
    v4 = 0xE900000000000047;
  }

  else
  {
    v4 = 0xEA0000000000474ELL;
  }

  if (*a2)
  {
    v5 = 0x49444E4543534544;
  }

  else
  {
    v5 = 0x4E49444E45435341;
  }

  if (*a2)
  {
    v6 = 0xEA0000000000474ELL;
  }

  else
  {
    v6 = 0xE900000000000047;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1003F33C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003F3454()
{
  String.hash(into:)();
}

Swift::Int sub_1003F34CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003F3554@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10064D400, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1003F35B4(uint64_t *a1@<X8>)
{
  v2 = 0x4E49444E45435341;
  if (*v1)
  {
    v2 = 0x49444E4543534544;
  }

  v3 = 0xE900000000000047;
  if (*v1)
  {
    v3 = 0xEA0000000000474ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1003F36BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003F4808();
  v5 = sub_1003F485C();

  return static ArgumentDecodable<>.defaultArgument.getter(a1, a2, v4, v5, &protocol witness table for String);
}

uint64_t sub_1003F372C(void *a1, __int16 a2)
{
  v5 = sub_10015DA04(&qword_1006C7578);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10017CC60(a1, a1[3]);
  sub_1003F4ADC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = a2;
  v10[14] = 0;
  sub_1003F5D1C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = HIBYTE(a2) & 1;
    v10[12] = 1;
    sub_1003F5D70();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003F38E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return ArgumentDecodable<>.init(fromArgument:)();
}

uint64_t sub_1003F39A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return static ArgumentDecodable<>.typeSummary(forName:)();
}

uint64_t sub_1003F3A34()
{
  if (*v0)
  {
    return 0x6F69746365726964;
  }

  else
  {
    return 0x726564726FLL;
  }
}

uint64_t sub_1003F3A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726564726FLL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1003F3B50(uint64_t a1)
{
  v2 = sub_1003F4ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003F3B8C(uint64_t a1)
{
  v2 = sub_1003F4ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003F3BC8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003F48FC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1003F3BFC(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1003F372C(a1, v2 | *v1);
}

void sub_1003F3C2C()
{
  v0 = [objc_allocWithZone(ICFolderCustomNoteSortType) init];
  if ([v0 isDefault] || (v1 = sub_1003F3E88(objc_msgSend(v0, "order")), v1 == 3))
  {

    v2 = 0;
    v3 = 0;
  }

  else
  {
    v4 = v1;
    v3 = sub_1003F402C([v0 direction]);

    if (v3 == 2)
    {
      v2 = 0;
    }

    else
    {
      v2 = v4;
    }
  }

  byte_1006EF9B8 = v2;
  byte_1006EF9B9 = v3 & 1;
}

uint64_t sub_1003F3CEC@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1006BC8F0 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = byte_1006EF9B9;
  *a1 = byte_1006EF9B8;
  a1[1] = v1;
  return result;
}

uint64_t sub_1003F3D5C@<X0>(unsigned __int8 a1@<W0>, _WORD *a2@<X8>)
{
  result = sub_1003F4BD8(a1);
  *a2 = result;
  return result;
}

unint64_t sub_1003F3DEC()
{
  result = qword_1006C7260;
  if (!qword_1006C7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7260);
  }

  return result;
}

uint64_t sub_1003F3E40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003F3E88(uint64_t result)
{
  if (result <= 1)
  {
    if (!result)
    {
      if (qword_1006BC8E0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10002597C(v6, qword_1006C7230);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_17;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Cannot serialize default note sort order — returning nil";
      goto LABEL_16;
    }

    if (result == 1)
    {
      return result;
    }

LABEL_8:
    if (qword_1006BC8E0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10002597C(v1, qword_1006C7230);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_17;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unknown note sort order — returning nil";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_17:

    return 3;
  }

  if (result != 2)
  {
    if (result == 3)
    {
      return 2;
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_1003F402C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1 == 1)
  {
    return 1;
  }

  if (qword_1006BC8E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10002597C(v2, qword_1006C7230);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v1 = 2;
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown note sort direction — returning nil", v5, 2u);
  }

  else
  {

    return 2;
  }

  return v1;
}

uint64_t sub_1003F4134(unsigned __int16 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        if (qword_1006BC8E0 != -1)
        {
          swift_once();
        }

        v2 = type metadata accessor for Logger();
        sub_10002597C(v2, qword_1006C7230);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.fault.getter();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_16;
        }

        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Deprecated folder type — returning nil";
        goto LABEL_15;
      }

LABEL_11:
      if (qword_1006BC8E0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10002597C(v7, qword_1006C7230);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.fault.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_16;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Unknown folder type — returning nil";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_16:

      return 3;
    }

    return 2;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 1;
      }

      goto LABEL_11;
    }

    return 0;
  }
}

uint64_t sub_1003F42E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100569E40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100569E60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74726F5365746F6ELL && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100572090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6974697669746361 && a2 == 0xEA00000000007365)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_1003F466C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064D330, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1003F46B8()
{
  result = qword_1006C7278;
  if (!qword_1006C7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7278);
  }

  return result;
}

unint64_t sub_1003F470C()
{
  result = qword_1006C7280;
  if (!qword_1006C7280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7280);
  }

  return result;
}

unint64_t sub_1003F4760()
{
  result = qword_1006C7288;
  if (!qword_1006C7288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7288);
  }

  return result;
}

unint64_t sub_1003F47B4()
{
  result = qword_1006C7290;
  if (!qword_1006C7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7290);
  }

  return result;
}

unint64_t sub_1003F4808()
{
  result = qword_1006C7298;
  if (!qword_1006C7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7298);
  }

  return result;
}

unint64_t sub_1003F485C()
{
  result = qword_1006C72A0;
  if (!qword_1006C72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C72A0);
  }

  return result;
}

unint64_t sub_1003F48B0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064D398, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003F48FC(void *a1)
{
  v3 = sub_10015DA04(&qword_1006C72B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-v5];
  sub_10017CC60(a1, a1[3]);
  sub_1003F4ADC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100009F60(a1);
  }

  v11[14] = 0;
  sub_1003F4B30();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v11[15];
  v11[12] = 1;
  sub_1003F4B84();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  v9 = v11[13];
  sub_100009F60(a1);
  if (v9)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v7;
}

unint64_t sub_1003F4ADC()
{
  result = qword_1006C72B8;
  if (!qword_1006C72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C72B8);
  }

  return result;
}

unint64_t sub_1003F4B30()
{
  result = qword_1006C72C0;
  if (!qword_1006C72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C72C0);
  }

  return result;
}

unint64_t sub_1003F4B84()
{
  result = qword_1006C72C8;
  if (!qword_1006C72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C72C8);
  }

  return result;
}

uint64_t sub_1003F4BD8(unsigned __int8 a1)
{
  sub_10019E0AC();
  v1 = StringProtocol.components<A>(separatedBy:)();

  if (*(v1 + 16) == 2 && (sub_1003F46B8(), sub_1003F470C(), sub_1003F4760(), , result = ArgumentDecodable<>.init(fromArgument:)(), a1 != 3))
  {
    if (*(v1 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {

      sub_1003F47B4();
      sub_1003F4808();
      sub_1003F485C();
      ArgumentDecodable<>.init(fromArgument:)();
      if (a1 == 2)
      {
        return 512;
      }

      else
      {
        return a1 | ((a1 & 1) << 8);
      }
    }
  }

  else
  {

    return 512;
  }

  return result;
}

uint64_t sub_1003F4D48(uint64_t a1)
{
  v12 = a1;
  v1 = type metadata accessor for AnsiStylings();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = 0xE000000000000000;
  v13 = enum case for AnsiStylings.cyan(_:);
  v5 = *(v2 + 104);
  v5(v4);
  DefaultStringInterpolation.appendInterpolation(ansi:)();
  v6 = *(v2 + 8);
  v6(v4, v1);
  sub_1003F46B8();
  sub_1003F470C();
  sub_1003F4760();
  v7._countAndFlagsBits = static ArgumentDecodable<>.typeSummary(forName:)();
  String.append(_:)(v7);

  v8 = enum case for AnsiStylings.reset(_:);
  (v5)(v4, enum case for AnsiStylings.reset(_:), v1);
  DefaultStringInterpolation.appendInterpolation(ansi:)();
  v6(v4, v1);
  v9._countAndFlagsBits = 44;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  (v5)(v4, v13, v1);
  DefaultStringInterpolation.appendInterpolation(ansi:)();
  v6(v4, v1);
  sub_1003F47B4();
  sub_1003F4808();
  sub_1003F485C();
  v10._countAndFlagsBits = static ArgumentDecodable<>.typeSummary(forName:)();
  String.append(_:)(v10);

  (v5)(v4, v8, v1);
  DefaultStringInterpolation.appendInterpolation(ansi:)();
  v6(v4, v1);
  return v14;
}

uint64_t sub_1003F4FE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C72D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F5058(uint64_t a1, uint64_t a2)
{
  v4 = _s8ActivityVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F50BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003F5124(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003F5184(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006C72D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1003F524C()
{
  sub_10027A640(319, &qword_1006C0620);
  if (v0 <= 0x3F)
  {
    sub_10027A640(319, &unk_1006BF638);
    if (v1 <= 0x3F)
    {
      sub_10027A640(319, &qword_1006C7340);
      if (v2 <= 0x3F)
      {
        sub_1003F53CC();
        if (v3 <= 0x3F)
        {
          sub_10027A640(319, &qword_1006C7350);
          if (v4 <= 0x3F)
          {
            sub_100005B5C(319, &qword_1006C1CC0, &qword_1006C13F0);
            if (v5 <= 0x3F)
            {
              sub_100005B5C(319, &qword_1006C7358, &unk_1006C7360);
              if (v6 <= 0x3F)
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

void sub_1003F53CC()
{
  if (!qword_1006C7348)
  {
    type metadata accessor for ICFolderArchiveModel.Query(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C7348);
    }
  }
}

uint64_t sub_1003F546C()
{
  result = type metadata accessor for ICQueryEntity();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ICQueryType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICFolderArchiveModel.Sorting(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICFolderArchiveModel.Sorting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1003F5654()
{
  result = qword_1006C7448;
  if (!qword_1006C7448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7448);
  }

  return result;
}

unint64_t sub_1003F56AC()
{
  result = qword_1006C7450;
  if (!qword_1006C7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7450);
  }

  return result;
}

unint64_t sub_1003F5734()
{
  result = qword_1006C7468;
  if (!qword_1006C7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7468);
  }

  return result;
}

uint64_t sub_1003F5788(uint64_t a1)
{
  *(a1 + 8) = sub_1003F3E40(&qword_1006C2890, type metadata accessor for ICFolderArchiveModel);
  result = sub_1003F3E40(&qword_1006C50F8, type metadata accessor for ICFolderArchiveModel);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1003F5810()
{
  result = qword_1006C74A8;
  if (!qword_1006C74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C74A8);
  }

  return result;
}

unint64_t sub_1003F5868()
{
  result = qword_1006C74B0;
  if (!qword_1006C74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C74B0);
  }

  return result;
}

unint64_t sub_1003F58C0()
{
  result = qword_1006C74B8;
  if (!qword_1006C74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C74B8);
  }

  return result;
}

unint64_t sub_1003F5918()
{
  result = qword_1006C74C0;
  if (!qword_1006C74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C74C0);
  }

  return result;
}

unint64_t sub_1003F5970()
{
  result = qword_1006C74C8;
  if (!qword_1006C74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C74C8);
  }

  return result;
}

unint64_t sub_1003F5A30()
{
  result = qword_1006C74F0;
  if (!qword_1006C74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C74F0);
  }

  return result;
}

unint64_t sub_1003F5A88()
{
  result = qword_1006C74F8;
  if (!qword_1006C74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C74F8);
  }

  return result;
}

unint64_t sub_1003F5ADC()
{
  result = qword_1006C7508;
  if (!qword_1006C7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7508);
  }

  return result;
}

unint64_t sub_1003F5B30()
{
  result = qword_1006C7510;
  if (!qword_1006C7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7510);
  }

  return result;
}

unint64_t sub_1003F5B84()
{
  result = qword_1006C7520;
  if (!qword_1006C7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7520);
  }

  return result;
}

uint64_t sub_1003F5BD8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&unk_1006C7360);
    sub_1003F3E40(a2, _s8ActivityVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003F5C74()
{
  result = qword_1006C7550;
  if (!qword_1006C7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7550);
  }

  return result;
}

unint64_t sub_1003F5CC8()
{
  result = qword_1006C7558;
  if (!qword_1006C7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7558);
  }

  return result;
}

unint64_t sub_1003F5D1C()
{
  result = qword_1006C7580;
  if (!qword_1006C7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7580);
  }

  return result;
}

unint64_t sub_1003F5D70()
{
  result = qword_1006C7588;
  if (!qword_1006C7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7588);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICFolderArchiveModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ICFolderArchiveModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1003F5F18()
{
  result = qword_1006C7590;
  if (!qword_1006C7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7590);
  }

  return result;
}

unint64_t sub_1003F5F70()
{
  result = qword_1006C7598;
  if (!qword_1006C7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7598);
  }

  return result;
}

unint64_t sub_1003F5FC8()
{
  result = qword_1006C75A0;
  if (!qword_1006C75A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C75A0);
  }

  return result;
}

uint64_t sub_1003F6170()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_5;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      [Strong showsActivityStream];
    }

LABEL_5:
    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 localizedStringForKey:v3 value:0 table:0];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v5;
  }

  _StringGuts.grow(_:)(45);
  swift_getObjectType();
  _typeName(_:qualified:)();

  v7._countAndFlagsBits = 0xD00000000000002BLL;
  v7._object = 0x80000001005721B0;
  String.append(_:)(v7);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1003F6410(void (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v10 = Strong, v11 = [Strong showsActivityStream], v10, v11))
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = swift_allocObject();
      v14[2] = a1;
      v14[3] = a2;
      v14[4] = v6;
      v14[5] = v8;
      v19[4] = sub_1003F67A4;
      v19[5] = v14;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 1107296256;
      v19[2] = sub_10028DCE8;
      v19[3] = &unk_10065CE38;
      v15 = _Block_copy(v19);
      sub_100010854(a1);

      [v13 hideActivityStreamWithCompletion:v15];
      _Block_release(v15);

      return;
    }
  }

  else
  {
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = [*(v2 + OBJC_IVAR___ICShowActivityStreamActivity_object) objectID];
      [v17 showActivityStreamForObjectWithObjectID:v18 collabActivityContextPath:2];
    }

    if (a1)
    {
      a1(1, v6, v8);
    }
  }
}

uint64_t sub_1003F67A4()
{
  v1 = v0[2];
  if (v1)
  {
    return v1(1, v0[4], v0[5]);
  }

  return result;
}

Class sub_1003F6814(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000054A4(0, &qword_1006C6400);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v1();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t sub_1003F68B0(uint64_t a1)
{
  sub_10015DA04(&unk_1006BD390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100534670;
  sub_1000054A4(0, &qword_1006BF850);
  v3 = [objc_opt_self() mainBundle];
  v10._object = 0x8000000100572250;
  v4._countAndFlagsBits = 0x73746E756F636341;
  v4._object = 0xAB00000000A680E2;
  v10._countAndFlagsBits = 0xD00000000000001BLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v10);

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 ic_systemImageNamed:v7];

  *(inited + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();

  sub_1002DC254(inited);
  return a1;
}

void sub_1003F6A78(void *a1)
{
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = sub_1003F68B0;
    *(v2 + 24) = 0;
    v16 = sub_1003F6DB4;
    v17 = v2;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v15 = sub_1003F6814;
    *(&v15 + 1) = &unk_10065CEB8;
    v3 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [a1 replaceChildrenOfMenuForIdentifier:UIMenuPreferences fromChildrenBlock:v3];
    _Block_release(v3);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }

    else
    {
      v4 = objc_opt_self();
      sub_10015DA04(&unk_1006BD390);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_100534670;
      sub_1000054A4(0, &qword_1006BF850);
      v6 = [objc_opt_self() mainBundle];
      v18._object = 0x8000000100572220;
      v7._object = 0x8000000100572200;
      v18._countAndFlagsBits = 0xD000000000000020;
      v7._countAndFlagsBits = 0xD000000000000016;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v18);

      v9 = objc_opt_self();
      v10 = String._bridgeToObjectiveC()();
      v11 = [v9 ic_systemImageNamed:v10];

      aBlock = 0u;
      v15 = 0u;
      *(v5 + 32) = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      sub_1000054A4(0, &qword_1006C6400);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v13 = [v4 ic_inlineMenuWithChildren:{isa, _swiftEmptyArrayStorage, 0, 0, 0, 0}];

      [a1 insertSiblingMenu:v13 afterMenuForIdentifier:UIMenuPreferences];
      swift_unknownObjectRelease();
    }
  }
}

objc_class *sub_1003F6DDC()
{
  v1 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menu;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menu);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menu);
  }

  else
  {
    sub_1000054A4(0, &unk_1006C6410);
    sub_10015DA04(&unk_1006BD390);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_100534950;
    v5 = v0;
    *(preferredElementSize + 32) = sub_1003F72E8();
    *(preferredElementSize + 40) = sub_1003F7464();
    *(preferredElementSize + 48) = sub_1003F75DC();
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v16.value.super.isa = 0;
    v16.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v14).super.super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100531E20;
    *(v8 + 32) = sub_1003F70E0();
    *(v8 + 40) = isa;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v17.value.super.isa = 0;
    v17.is_nil = 0;
    v10.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v17, 0, 0xFFFFFFFFFFFFFFFFLL, v8, v15).super.super.isa;
    v11 = *(v0 + v1);
    *(v5 + v1) = v10;
    v3 = v10.super.super.isa;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_1003F6F3C()
{
  v1 = sub_1003F70E0();
  v2 = OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection;
  v3 = 1;
  if (*(v0 + OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v3 = 0;
    }
  }

  [v1 setState:v3];

  v4 = sub_1003F72E8();
  v6 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      if ([v5 selectionType] == 1)
      {
        v6 = 1;
      }
    }
  }

  [v4 setState:v6];

  v7 = sub_1003F7464();
  v9 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      if ([v8 selectionType] == 2)
      {
        v9 = 1;
      }
    }
  }

  [v7 setState:v9];

  v12 = sub_1003F75DC();
  v11 = 0;
  if (*(v0 + v2))
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      if ([v10 selectionType] == 3)
      {
        v11 = 1;
      }
    }
  }

  [v12 setState:v11];
}

id sub_1003F70E0()
{
  v1 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionOff;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionOff];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionOff];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_1003F724C(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
  *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = 0;

  [a2 setNeedsUpdateConfiguration];
  sub_1003F6F3C();
  v4 = *&a2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  if (v4)
  {

    v4(v5);

    sub_10000C840(v4);
  }
}

id sub_1003F72E8()
{
  v1 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionAnyone;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionAnyone];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionAnyone];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1003F7464()
{
  v1 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionSpecificUsers;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionSpecificUsers];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionSpecificUsers];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1003F75DC()
{
  v1 = OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionNotShared;
  v2 = *&v0[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionNotShared];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionNotShared];
  }

  else
  {
    sub_1000054A4(0, &unk_1006BD380);
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 localizedStringForKey:v5 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v8 = v0;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v10 = *&v0[v1];
    *&v8[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_1003F7754(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = [objc_opt_self() sharedContext];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 managedObjectContext];

      if (v6)
      {
        v7 = *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_accountObjectID];
        if (v7)
        {
          v8 = objc_allocWithZone(ICSharedFilterTypeSelection);
          v9 = v7;
          v10 = [v8 initWithManagedObjectContext:v6 accountObjectID:v9 selectionType:a1 joinOperator:a1 == 2];
          v11 = *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
          *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = v10;
          v12 = v10;

          [v2 setNeedsUpdateConfiguration];
          goto LABEL_8;
        }
      }
    }
  }

  v14 = *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection];
  *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelection] = 0;

  v13 = [v2 setNeedsUpdateConfiguration];
LABEL_8:
  result = sub_1003F6F3C(v13);
  v16 = *&v2[OBJC_IVAR____TtC11MobileNotes24FolderComposerFilterCell_filterTypeSelectionDidChange];
  if (v16)
  {

    v16(v17);

    return sub_10000C840(v16);
  }

  return result;
}

id sub_1003F7998(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menu] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionOff] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionAnyone] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionSpecificUsers] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionNotShared] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FolderComposerFilterCellShared();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

void sub_1003F7A64()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes30FolderComposerFilterCellShared____lazy_storage___menuActionNotShared);
}

id sub_1003F7AD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerFilterCellShared();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id ICAppIntentsManager.__allocating_init(dependencyManager:loggingConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC11MobileNotes19ICAppIntentsManager_dependencyManager] = a1;
  v12 = &v11[OBJC_IVAR____TtC11MobileNotes19ICAppIntentsManager_loggingConfiguration];
  *v12 = a2;
  *(v12 + 1) = a3;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, "init");
}

id ICAppIntentsManager.init(dependencyManager:loggingConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC11MobileNotes19ICAppIntentsManager_dependencyManager] = a1;
  v12 = &v5[OBJC_IVAR____TtC11MobileNotes19ICAppIntentsManager_loggingConfiguration];
  *v12 = a2;
  *(v12 + 1) = a3;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1003F7DA4()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003F7E38, v2, v1);
}

uint64_t sub_1003F7E38()
{

  v1 = objc_allocWithZone(ICUnifiedNoteContext);
  sub_1000054A4(0, &qword_1006C4458);
  v2 = sub_1003314F4();
  v3 = sub_10033162C();
  *(v0 + 32) = [v1 initWithModernNoteContext:v2 htmlNoteContext:v3 options:0];

  return _swift_task_switch(sub_10019A058, 0, 0);
}

uint64_t sub_1003F7F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1003F7F94, 0, 0);
}

uint64_t sub_1003F7F94()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  *v4 = v0[3];
  v4[1] = v3;
  v4[2] = v1;
  v4[3] = v2;
  v6 = v0[1];

  return v6();
}

uint64_t sub_1003F8018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A600;

  return sub_1003F7F6C(a1, v4, v5, v7, v6);
}

void static ICAppIntentsManager.registerDependencies()()
{
  v1 = v0;
  type metadata accessor for AppDependencyManager();
  v2 = static AppDependencyManager.shared.getter();
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MobileNotes19ICAppIntentsManager_dependencyManager] = v2;
  v4 = &v3[OBJC_IVAR____TtC11MobileNotes19ICAppIntentsManager_loggingConfiguration];
  *v4 = 0x6C7070612E6D6F63;
  *(v4 + 1) = 0xEF7365746F6E2E65;
  *(v4 + 2) = 1802398028;
  *(v4 + 3) = 0xE400000000000000;
  v6.receiver = v3;
  v6.super_class = v1;
  v5 = objc_msgSendSuper2(&v6, "init");
  ICAppIntentsManager.registerDependencies()();
}

uint64_t static ICAppIntentsManager.updateAppShortcutParameters()()
{
  type metadata accessor for ProvisionalBackgroundTaskController();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_100191BA4(_swiftEmptyArrayStorage);
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  v1 = OBJC_IVAR____TtC11MobileNotes35ProvisionalBackgroundTaskController_timeoutInterval;
  *(v0 + OBJC_IVAR____TtC11MobileNotes35ProvisionalBackgroundTaskController_timeoutInterval) = 1;
  v2 = enum case for DispatchTimeInterval.seconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  sub_1003D7200(0xD00000000000001ELL, 0x8000000100572330);
  if (qword_1006BC890 != -1)
  {
    swift_once();
  }

  sub_10015DA04(&qword_1006C7640);
  swift_task_localValuePush();
  sub_1000054A4(0, &qword_1006C4660);
  static ICUnifiedNoteContext.$prefersViewContext.getter();
  swift_task_localValuePush();
  sub_1003F83E8();
  static AppShortcutsProvider.updateAppShortcutParameters()();
  swift_task_localValuePop();

  swift_task_localValuePop();
}

unint64_t sub_1003F83E8()
{
  result = qword_1006C7648;
  if (!qword_1006C7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C7648);
  }

  return result;
}

void sub_1003F8460()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  v2 = [Strong noteContainerViewMode];
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      v6 = v10;
      v10 = v4;
LABEL_11:

      goto LABEL_12;
    }

    v6 = [v5 eventReporter];

    if (v6)
    {
      v7 = sub_1000A0D2C(v2);
      v8 = *(v0 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
      if (v8)
      {
        v9 = [v8 isShowingDateHeaders];
      }

      else
      {
        v9 = 0;
      }

      [v6 submitNoteActionMenuEventForNoteBrowserWithUsageType:1 layout:v7 activityType:0 isTimelineView:v9];
      goto LABEL_11;
    }
  }

LABEL_12:
}

void *sub_1003F85E4()
{
  v1 = v0;
  v2 = sub_100393518();
  v16 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return v2;
  }

  v4 = Strong;
  v5 = *(v1 + OBJC_IVAR___ICNoteContainerActionMenu_noteContainer);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    v7 = v5;
    if (v6)
    {
      v12 = sub_1002C9DF8(v4);
      sub_10015DA04(&qword_1006C32B8);
      Array.insertOptional(_:at:)();
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8 && [v8 enforcedNoteContainerViewMode] == -1)
    {
      v13 = sub_1002C9DF8(v4);
      sub_10015DA04(&qword_1006C32B8);
      Array.insertOptional(_:at:)();
    }
  }

  v9 = *(v1 + OBJC_IVAR___ICNoteContainerActionMenu_virtualSmartFolder);
  if (v9)
  {
    v10 = v9;
    if ([v10 enforcedNoteContainerViewMode] == -1 && (objc_msgSend(v10, "isTrashFolder") & 1) == 0)
    {
      v14 = sub_1002C9DF8(v4);
      sub_10015DA04(&qword_1006C32B8);
      Array.insertOptional(_:at:)();
    }
  }

  v15 = sub_1002C987C(v4);
  sub_10015DA04(&qword_1006C32B8);
  Array.insertOptional(_:at:)();

  return v16;
}