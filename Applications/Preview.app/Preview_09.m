uint64_t sub_100104174(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x746E6563726570;
    }

    else
    {
      v4 = 0x736C65786970;
    }

    if (v2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE600000000000000;
    v4 = 0x736568636E69;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 1953391971;
    }

    else
    {
      v3 = 1819044205;
    }

    v4 = v3 | 0x74656D6900000000;
    v5 = 0xEB00000000737265;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x746E6563726570;
    }

    else
    {
      v9 = 0x736C65786970;
    }

    if (a2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0x74656D69746E6563;
    if (a2 != 3)
    {
      v6 = 0x74656D696C6C696DLL;
    }

    if (a2 == 2)
    {
      v7 = 0x736568636E69;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xEB00000000737265;
    }

    if (v4 != v7)
    {
      goto LABEL_34;
    }
  }

  if (v5 != v8)
  {
LABEL_34:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_35;
  }

  v10 = 1;
LABEL_35:

  return v10 & 1;
}

Swift::Int sub_100104330()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100104374()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1001043B4()
{
  v1 = *v0;
  v2 = 1667851624;
  v3 = 6710384;
  v4 = 6778480;
  if (v1 != 3)
  {
    v4 = 1717987700;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1734701162;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100104428()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      return static UTType.jpeg.getter();
    }

    else
    {
      return static UTType.heic.getter();
    }
  }

  else if (v1 == 2)
  {
    return static UTType.pdf.getter();
  }

  else if (v1 == 3)
  {
    return static UTType.png.getter();
  }

  else
  {
    return static UTType.tiff.getter();
  }
}

uint64_t sub_10010445C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100104680@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1001F5E58, v3);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *a2 = v7;
  return result;
}

void sub_100104700(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1667851624;
  v5 = 0xE300000000000000;
  v6 = 6710384;
  v7 = 0xE300000000000000;
  v8 = 6778480;
  if (v2 != 3)
  {
    v8 = 1717987700;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1734701162;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

Swift::Int sub_100104778()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100104834()
{
  String.hash(into:)();
}

Swift::Int sub_1001048DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001049AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel_sourceType;
  v4 = type metadata accessor for UTType();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100104A24(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_100104A74(a1, a2);
  return v4;
}

uint64_t sub_100104A74(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__supportedFormats) = &off_1001F5F40;
  *(v2 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__supportedResolutionUnits) = &off_1001F5F68;
  *(v2 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__selectedFormat) = 5;
  *(v2 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__resolutionUnit) = 1;
  v5 = v2 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__conversionOptions;
  *v5 = 1063675494;
  *(v5 + 8) = 0x4052000000000000;
  *(v5 + 16) = 0;
  *(v5 + 24) = 1;
  *(v5 + 25) = 0;
  *(v5 + 29) = 256;
  *(v5 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__fileExporterPresented) = 0;
  *(v2 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__isExportingFile) = 0;
  *(v2 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__estimationsCache) = sub_10010DE50(&_swiftEmptyArrayStorage);
  *(v2 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel_estimationTask) = 0;
  ObservationRegistrar.init()();
  *(v2 + 16) = a1;
  v6 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel_sourceType;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v2 + v6, a2, v7);
  (*(v8 + 32))(v2 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__documentConverter, a2, v7);
  return v2;
}

uint64_t sub_100104C7C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__selectedFormat;
  swift_beginAccess();
  result = *(v1 + v3);
  if (result != 5)
  {
    if (v2 == 5)
    {
      goto LABEL_7;
    }

    result = sub_100104030(result, v2);
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + v3) = v2;
    return result;
  }

  if (v2 == 5)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100104DC8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__resolutionUnit;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    v4 = 0x6550736C65786970;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (*(v1 + v3))
  {
    v5 = 0xED000068636E4972;
  }

  else
  {
    v5 = 0x80000001001B5EA0;
  }

  if (v2)
  {
    v6 = 0x6550736C65786970;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v2)
  {
    v7 = 0xED000068636E4972;
  }

  else
  {
    v7 = 0x80000001001B5EA0;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_100104F80(__int128 *a1)
{
  v2 = a1[1];
  v14 = *a1;
  v15 = v2;
  v16 = *(a1 + 4);
  v3 = (v1 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__conversionOptions);
  swift_beginAccess();
  v4 = v3[1];
  v11 = *v3;
  v12 = v4;
  v13 = *(v3 + 4);
  v9[0] = v14;
  v9[1] = v15;
  v10 = v16;
  if (sub_10018E424(&v11, v9))
  {
    v5 = v3[1];
    v11 = *v3;
    v12 = v5;
    v13 = *(v3 + 4);
    v6 = v15;
    *v3 = v14;
    v3[1] = v6;
    *(v3 + 4) = v16;
    return sub_10010E2A8(&v11);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v11 = v1;
    sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_10010E2A8(&v14);
  }
}

uint64_t sub_100105168(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100105284(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;
  swift_beginAccess();

  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void (*sub_100105428(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100105570;
}

void (*sub_1001055D0(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100105718;
}

uint64_t sub_100105724@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__selectedFormat;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

_UNKNOWN **sub_1001057E8()
{
  v1 = v0;
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v0;
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__selectedFormat;
  swift_beginAccess();
  if (*(v0 + v6) == 5 || (static UTType.pdf.getter(), v7 = UTType.conforms(to:)(), (*(v3 + 8))(v5, v2), (v7 & 1) == 0))
  {
    v8 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v8 = &off_1001F6058;
  }

  swift_getKeyPath();
  v11 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = off_1001F6DC0[*(v1 + v6)];
  v11 = v8;
  sub_10010D554(v9);
  return v11;
}

uint64_t sub_1001059D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__selectedFormat;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void (*sub_100105AD4(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100105C1C;
}

uint64_t sub_100105C28@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__resolutionUnit;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

void (*sub_100105D38(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100105E80;
}

double sub_100105E8C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__resolutionUnit;
  swift_beginAccess();
  LOBYTE(v2) = *(v1 + v2);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__conversionOptions;
  swift_beginAccess();
  if (v2)
  {
    return *(v3 + 8);
  }

  else
  {
    return *(v3 + 8) * 2.54;
  }
}

uint64_t sub_100106000(double a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__resolutionUnit;
  swift_beginAccess();
  if ((*(v2 + v4) & 1) == 0)
  {
    a1 = a1 / 2.54;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5 = v2 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__conversionOptions;
  swift_beginAccess();
  *(v5 + 8) = a1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_100106194@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__conversionOptions;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return sub_10010E394(v8, &v7);
}

void (*sub_100106278(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1001063C0;
}

uint64_t (*sub_1001063CC(uint64_t a1))(double *a1)
{
  *(a1 + 8) = v1;
  *a1 = sub_100105E8C();
  return sub_100106414;
}

uint64_t sub_10010643C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v10[0] = v3;
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__conversionOptions);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v11 = *(v4 + 4);
  v10[0] = v5;
  v10[1] = v6;
  v7 = v4[1];
  *a2 = *v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = *(v4 + 4);
  return sub_10010E394(v10, &v9);
}

uint64_t sub_100106528(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  sub_10010E394(v5, v4);
  return sub_100104F80(a1);
}

void sub_100106578(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__conversionOptions;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a2 + 32);
  sub_10010E394(a2, &v6);
}

void (*sub_100106644(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10010678C;
}

uint64_t sub_1001067AC(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_100106874@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void (*sub_100106964(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100106AAC;
}

void sub_100106AB8(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_100106B3C()
{
  v1 = v0;
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  v11 = type metadata accessor for Document(0);
  v33.receiver = v10;
  v33.super_class = v11;
  v12 = objc_msgSendSuper2(&v33, "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.lastPathComponent.getter();
  (*(v7 + 8))(v9, v6);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 stringByDeletingPathExtension];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v31 = v15;
  v32 = v17;

  v18._countAndFlagsBits = 46;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v20 = v31;
  v19 = v32;
  swift_getKeyPath();
  v31 = v1;
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__selectedFormat;
  swift_beginAccess();
  v22 = *(v1 + v21);
  if (v22 > 2)
  {
    if (v22 == 3)
    {
      static UTType.png.getter();
    }

    else
    {
      if (v22 != 4)
      {
LABEL_12:

        v23 = 0;
        v25 = 0xE000000000000000;
        goto LABEL_13;
      }

      static UTType.tiff.getter();
    }
  }

  else if (*(v1 + v21))
  {
    if (v22 == 1)
    {
      static UTType.jpeg.getter();
    }

    else
    {
      static UTType.pdf.getter();
    }
  }

  else
  {
    static UTType.heic.getter();
  }

  v23 = UTType.preferredFilenameExtension.getter();
  v25 = v24;
  (*(v3 + 8))(v5, v2);
  if (!v25)
  {
    goto LABEL_12;
  }

LABEL_13:
  v29 = v20;
  v30 = v19;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  return v29;
}

uint64_t sub_100106E98@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__documentConverter;
  swift_beginAccess();
  return sub_10010FA98(v5 + v3, a1, type metadata accessor for DocumentConverter);
}

uint64_t sub_100106F74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__documentConverter;
  swift_beginAccess();
  return sub_10010FA98(v3 + v4, a2, type metadata accessor for DocumentConverter);
}

uint64_t sub_100107050(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for DocumentConverter(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FA98(a1, v6, type metadata accessor for DocumentConverter);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_10010EA80(v6, type metadata accessor for DocumentConverter);
}

uint64_t sub_1001071A0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__documentConverter;
  swift_beginAccess();
  sub_10010F930(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_10010720C()
{
  v1 = v0;
  v25 = type metadata accessor for UTType();
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v33 = v0;
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__selectedFormat;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      static UTType.png.getter();
    }

    else
    {
      if (v11 != 4)
      {
        return 0;
      }

      static UTType.tiff.getter();
    }
  }

  else if (*(v1 + v10))
  {
    if (v11 == 1)
    {
      static UTType.jpeg.getter();
    }

    else
    {
      static UTType.pdf.getter();
    }
  }

  else
  {
    static UTType.heic.getter();
  }

  swift_getKeyPath();
  *&v31[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = v1 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__conversionOptions;
  swift_beginAccess();
  v13 = *(v12 + 16);
  v33 = *v12;
  v34 = v13;
  v35 = *(v12 + 32);
  (*(v24 + 32))(v9, v6, v25);
  v14 = &v9[*(v7 + 20)];
  v15 = v34;
  *v14 = v33;
  *(v14 + 1) = v15;
  *(v14 + 4) = v35;
  swift_getKeyPath();
  *&v29[0] = v1;
  sub_10010E394(&v33, v31);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__estimationsCache;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (*(v17 + 16))
  {

    v18 = sub_10010CA28(v9);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);
      sub_10010EA80(v9, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);

      return v20;
    }
  }

  sub_10010EA80(v9, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
  if (v11 <= 1)
  {
    if (v11)
    {
      static UTType.jpeg.getter();
    }

    else
    {
      static UTType.heic.getter();
    }
  }

  else if (v11 == 2)
  {
    static UTType.pdf.getter();
  }

  else if (v11 == 3)
  {
    static UTType.png.getter();
  }

  else
  {
    static UTType.tiff.getter();
  }

  swift_getKeyPath();
  *&v31[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v12 + 16);
  v29[0] = *v12;
  v29[1] = v22;
  v30 = *(v12 + 32);
  v23 = *(v12 + 16);
  v26 = *v12;
  v27 = v23;
  v28 = *(v12 + 32);
  sub_10010E394(v29, v31);
  sub_100107788(v3, &v26);
  v31[0] = v26;
  v31[1] = v27;
  v32 = v28;
  sub_10010E2A8(v31);
  (*(v24 + 8))(v3, v25);
  return 0;
}

uint64_t sub_1001076D0()
{
  swift_getKeyPath();
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100107788(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v6 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v6 - 8);
  v8 = &v66 - v7;
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v75 = v11;
  v81 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DocumentConverter(0);
  v72 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v73 = v13;
  v74 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v85 = *(v14 - 8);
  v86 = v14;
  __chkstk_darwin(v14);
  v80 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v15;
  __chkstk_darwin(v16);
  v84 = &v66 - v17;
  v18 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
  __chkstk_darwin(v18);
  v83 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v66 - v21;
  v23 = a2[1];
  v103 = *a2;
  v104 = v23;
  v105 = *(a2 + 4);
  v76 = a1;
  v77 = v10;
  v24 = *(v10 + 16);
  v82 = v9;
  v71 = v24;
  v24(&v66 - v21, a1, v9);
  v25 = &v22[*(v18 + 20)];
  v26 = v104;
  *v25 = v103;
  *(v25 + 1) = v26;
  *(v25 + 4) = v105;
  v78 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel_estimationTask;
  v79 = v22;
  v27 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel_estimationTask);
  if (v27)
  {
    v28 = v27 + OBJC_IVAR____TtCC17PreviewFoundation20ExportSheetViewModelP33_5ECF7E339583BEBF573AAC722FA5980714EstimationTask_cacheKey;
    sub_10010E394(&v103, v101);

    if (static UTType.== infix(_:_:)())
    {
      v29 = (v28 + *(v18 + 20));
      v31 = *v29;
      v30 = v29[1];
      v95 = *(v29 + 4);
      v94[0] = v31;
      v94[1] = v30;
      v32 = v29[1];
      v91 = *v29;
      v92 = v32;
      v93 = *(v29 + 4);
      v33 = *(v25 + 1);
      v96[0] = *v25;
      v96[1] = v33;
      v97 = *(v25 + 4);
      v34 = *(v25 + 1);
      v88 = *v25;
      v89 = v34;
      v90 = *(v25 + 4);
      sub_10010E394(v94, v87);
      sub_10010E394(v96, v87);
      v35 = sub_10018E424(&v91, &v88);

      v98[0] = v88;
      v98[1] = v89;
      v99 = v90;
      sub_10010E2A8(v98);
      v101[0] = v91;
      v101[1] = v92;
      v102 = v93;
      sub_10010E2A8(v101);
      if (v35)
      {
        return sub_10010EA80(v79, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
      }

      v69 = v8;
    }

    else
    {
      v69 = v8;
    }

    v22 = v79;
  }

  else
  {
    v69 = v8;
    sub_10010E394(&v103, v101);
  }

  v36 = *(v3 + 16);
  v37 = type metadata accessor for Document(0);
  v100.receiver = v36;
  v100.super_class = v37;
  v38 = objc_msgSendSuper2(&v100, "fileURL");
  v39 = v84;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  *&v101[0] = v3;
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__documentConverter;
  swift_beginAccess();
  v67 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey;
  sub_10010FA98(v22, v83, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
  v66 = type metadata accessor for DocumentConverter;
  v41 = v74;
  sub_10010FA98(v3 + v40, v74, type metadata accessor for DocumentConverter);
  v42 = v85;
  v43 = *(v85 + 16);
  v68 = v3;
  v44 = v86;
  v43(v80, v39, v86);
  v71(v81, v76, v82);
  v45 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v46 = (v73 + *(v42 + 80) + v45) & ~*(v42 + 80);
  v47 = v77;
  v48 = (v70 + *(v77 + 80) + v46) & ~*(v77 + 80);
  v49 = (v75 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  sub_1001101F8(v41, v50 + v45, v66);
  v51 = v44;
  v52 = v68;
  (*(v42 + 32))(v50 + v46, v80, v51);
  (*(v47 + 32))(v50 + v48, v81, v82);
  v53 = v50 + v49;
  v54 = v104;
  *v53 = v103;
  *(v53 + 16) = v54;
  *(v53 + 32) = v105;
  type metadata accessor for ExportSheetViewModel.EstimationTask(0);
  v55 = swift_allocObject();
  sub_10010E394(&v103, v101);
  UUID.init()();
  v56 = v83;
  sub_10010FA98(v83, v55 + OBJC_IVAR____TtCC17PreviewFoundation20ExportSheetViewModelP33_5ECF7E339583BEBF573AAC722FA5980714EstimationTask_cacheKey, v67);
  v57 = type metadata accessor for TaskPriority();
  v58 = *(*(v57 - 8) + 56);
  v59 = v69;
  v58(v69, 1, 1, v57);
  v60 = swift_allocObject();
  v60[2] = 0;
  v60[3] = 0;
  v60[4] = &unk_1001A4E18;
  v60[5] = v50;

  v61 = sub_1001089FC(0, 0, v59, &unk_1001A4E28, v60);

  sub_100110174(v59, &qword_10020D600);
  sub_10010EA80(v56, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
  *(v55 + OBJC_IVAR____TtCC17PreviewFoundation20ExportSheetViewModelP33_5ECF7E339583BEBF573AAC722FA5980714EstimationTask_task) = v61;
  v62 = v78;
  if (*(v52 + v78))
  {

    sub_1000FF5D8(&qword_10020D610);
    Task.cancel()();
  }

  *(v52 + v62) = v55;

  v58(v59, 1, 1, v57);
  type metadata accessor for MainActor();

  v63 = static MainActor.shared.getter();
  v64 = swift_allocObject();
  v64[2] = v63;
  v64[3] = &protocol witness table for MainActor;
  v64[4] = v55;
  v64[5] = v52;
  sub_100128F38(0, 0, v59, &unk_1001A4E38, v64);

  (*(v85 + 8))(v84, v86);
  return sub_10010EA80(v79, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
}

Swift::Int sub_100108044()
{
  Hasher.init(_seed:)();
  type metadata accessor for UTType();
  sub_10010F590(&qword_10020D8F0, &type metadata accessor for UTType);
  dispatch thunk of Hashable.hash(into:)();
  sub_10018B588();
  return Hasher._finalize()();
}

void sub_1001080FC()
{
  type metadata accessor for UTType();
  sub_10010F590(&qword_10020D8F0, &type metadata accessor for UTType);
  dispatch thunk of Hashable.hash(into:)();
  sub_10018B588();
}

Swift::Int sub_1001081A4()
{
  Hasher.init(_seed:)();
  type metadata accessor for UTType();
  sub_10010F590(&qword_10020D8F0, &type metadata accessor for UTType);
  dispatch thunk of Hashable.hash(into:)();
  sub_10018B588();
  return Hasher._finalize()();
}

uint64_t sub_10010825C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_100108328(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  *(a1 + v5) = a2;
}

uint64_t sub_100108394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for ContinuousClock();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100108458, 0, 0);
}

uint64_t sub_100108458()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100108524;

  return sub_10010C570(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100108524()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1001087D4;
  }

  else
  {
    v5 = sub_100108694;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100108694()
{
  v1 = v0[9];
  static Task<>.checkCancellation()();
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v5 = (v0[3] + *v0[3]);
    v4 = swift_task_alloc();
    v0[10] = v4;
    *v4 = v0;
    v4[1] = sub_100108838;

    return v5();
  }
}

uint64_t sub_1001087D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100108838(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 88) = a1;

    return _swift_task_switch(sub_10010898C, 0, 0);
  }
}

uint64_t sub_10010898C()
{
  **(v0 + 16) = *(v0 + 88);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001089FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1001102D0(a3, v22 - v9, &qword_10020D600);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100110174(v10, &qword_10020D600);
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

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100108C64()
{
  v1 = OBJC_IVAR____TtCC17PreviewFoundation20ExportSheetViewModelP33_5ECF7E339583BEBF573AAC722FA5980714EstimationTask_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10010EA80(v0 + OBJC_IVAR____TtCC17PreviewFoundation20ExportSheetViewModelP33_5ECF7E339583BEBF573AAC722FA5980714EstimationTask_cacheKey, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);

  return swift_deallocClassInstance();
}

uint64_t sub_100108D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100108D58, 0, 0);
}

uint64_t sub_100108D58()
{
  v10 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v9 = *(v2 + 32);
  v5 = sub_10018AA38(v3, v1, v8);
  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_100108DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = type metadata accessor for UUID();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = sub_1000FF5D8(&qword_10020D928);
  v5[15] = swift_task_alloc();
  sub_1000FF5D8(&qword_10020D930);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for MainActor();
  v5[20] = static MainActor.shared.getter();

  return _swift_task_switch(sub_100108F50, 0, 0);
}

uint64_t sub_100108F50()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtCC17PreviewFoundation20ExportSheetViewModelP33_5ECF7E339583BEBF573AAC722FA5980714EstimationTask_task);
  v2 = swift_task_alloc();
  *(v0 + 168) = v2;
  v3 = sub_1000FF5D8(&qword_10020D610);
  *v2 = v0;
  v2[1] = sub_100109024;

  return Task.value.getter(v0 + 40, v1, &type metadata for Int64, v3, &protocol self-conformance witness table for Error);
}

uint64_t sub_100109024()
{

  if (v0)
  {

    v1 = sub_10010913C;
  }

  else
  {
    v1 = sub_1001095D4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10010913C()
{
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001091B4, v1, v0);
}

uint64_t sub_1001091B4()
{

  v1 = v0[11];
  v33 = v0[10];
  v34 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel_estimationTask;
  v2 = *(v33 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel_estimationTask);
  v3 = v0[18];
  v4 = v0[12];
  if (v2)
  {
    v5 = *(v4 + 16);
    v5(v0[18], v2 + OBJC_IVAR____TtCC17PreviewFoundation20ExportSheetViewModelP33_5ECF7E339583BEBF573AAC722FA5980714EstimationTask_id, v1);
    v6 = *(v4 + 56);
    v6(v3, 0, 1, v1);
    v7 = v5;
  }

  else
  {
    v6 = *(v4 + 56);
    v6(v0[18], 1, 1, v1);
    v7 = *(v4 + 16);
  }

  v9 = v0[17];
  v8 = v0[18];
  v11 = v0[14];
  v10 = v0[15];
  v12 = v0[11];
  v13 = v0[12];
  v7(v9, v0[9] + OBJC_IVAR____TtCC17PreviewFoundation20ExportSheetViewModelP33_5ECF7E339583BEBF573AAC722FA5980714EstimationTask_id, v12);
  v6(v9, 0, 1, v12);
  v14 = *(v11 + 48);
  sub_1001102D0(v8, v10, &qword_10020D930);
  sub_1001102D0(v9, v10 + v14, &qword_10020D930);
  v15 = *(v13 + 48);
  if (v15(v10, 1, v12) != 1)
  {
    v18 = v0[11];
    sub_1001102D0(v0[15], v0[16], &qword_10020D930);
    v19 = v15(v10 + v14, 1, v18);
    v21 = v0[17];
    v20 = v0[18];
    v22 = v0[16];
    if (v19 != 1)
    {
      v32 = v0[15];
      v26 = v0[12];
      v25 = v0[13];
      v27 = v0[11];
      (*(v26 + 32))(v25, v10 + v14, v27);
      sub_10010F590(&qword_10020D938, &type metadata accessor for UUID);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v26 + 8);
      v29(v25, v27);
      sub_100110174(v21, &qword_10020D930);
      sub_100110174(v20, &qword_10020D930);
      v29(v22, v27);
      sub_100110174(v32, &qword_10020D930);
      if ((v28 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v23 = v0[11];
    v24 = v0[12];
    sub_100110174(v0[17], &qword_10020D930);
    sub_100110174(v20, &qword_10020D930);
    (*(v24 + 8))(v22, v23);
LABEL_9:
    sub_100110174(v0[15], &qword_10020D928);
    goto LABEL_12;
  }

  v16 = v0[18];
  v17 = v0[11];
  sub_100110174(v0[17], &qword_10020D930);
  sub_100110174(v16, &qword_10020D930);
  if (v15(v10 + v14, 1, v17) != 1)
  {
    goto LABEL_9;
  }

  sub_100110174(v0[15], &qword_10020D930);
LABEL_11:
  *(v33 + v34) = 0;

LABEL_12:

  v30 = v0[1];

  return v30();
}

uint64_t sub_1001095D4()
{
  *(v0 + 176) = *(v0 + 40);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100109654, v2, v1);
}

uint64_t sub_100109654()
{
  v39 = v0[22];
  v2 = v0[9];
  v1 = v0[10];

  v3 = OBJC_IVAR____TtCC17PreviewFoundation20ExportSheetViewModelP33_5ECF7E339583BEBF573AAC722FA5980714EstimationTask_cacheKey;
  swift_getKeyPath();
  v0[6] = v1;
  sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[7] = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__estimationsCache;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v1 + v4);
  *(v1 + v4) = 0x8000000000000000;
  sub_10018DCC0(v39, v2 + v3, isUniquelyReferenced_nonNull_native);
  *(v1 + v4) = v41;
  swift_endAccess();
  v0[8] = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v38 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel_estimationTask;
  v40 = v0[10];
  v6 = *(v40 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel_estimationTask);
  v7 = v0[18];
  v8 = v0[11];
  v9 = v0[12];
  if (v6)
  {
    v10 = *(v9 + 16);
    v10(v0[18], v6 + OBJC_IVAR____TtCC17PreviewFoundation20ExportSheetViewModelP33_5ECF7E339583BEBF573AAC722FA5980714EstimationTask_id, v0[11]);
    v11 = *(v9 + 56);
    v11(v7, 0, 1, v8);
    v12 = v10;
  }

  else
  {
    v11 = *(v9 + 56);
    v11(v0[18], 1, 1, v0[11]);
    v12 = *(v9 + 16);
  }

  v14 = v0[17];
  v13 = v0[18];
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[11];
  v18 = v0[12];
  v12(v14, v0[9] + OBJC_IVAR____TtCC17PreviewFoundation20ExportSheetViewModelP33_5ECF7E339583BEBF573AAC722FA5980714EstimationTask_id, v17);
  v11(v14, 0, 1, v17);
  v19 = *(v16 + 48);
  sub_1001102D0(v13, v15, &qword_10020D930);
  sub_1001102D0(v14, v15 + v19, &qword_10020D930);
  v20 = *(v18 + 48);
  if (v20(v15, 1, v17) != 1)
  {
    v23 = v0[11];
    sub_1001102D0(v0[15], v0[16], &qword_10020D930);
    v24 = v20(v15 + v19, 1, v23);
    v26 = v0[17];
    v25 = v0[18];
    v27 = v0[16];
    if (v24 != 1)
    {
      v37 = v0[15];
      v31 = v0[12];
      v30 = v0[13];
      v32 = v0[11];
      (*(v31 + 32))(v30, v15 + v19, v32);
      sub_10010F590(&qword_10020D938, &type metadata accessor for UUID);
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v31 + 8);
      v34(v30, v32);
      sub_100110174(v26, &qword_10020D930);
      sub_100110174(v25, &qword_10020D930);
      v34(v27, v32);
      sub_100110174(v37, &qword_10020D930);
      if ((v33 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v28 = v0[11];
    v29 = v0[12];
    sub_100110174(v0[17], &qword_10020D930);
    sub_100110174(v25, &qword_10020D930);
    (*(v29 + 8))(v27, v28);
LABEL_9:
    sub_100110174(v0[15], &qword_10020D928);
    goto LABEL_12;
  }

  v21 = v0[18];
  v22 = v0[11];
  sub_100110174(v0[17], &qword_10020D930);
  sub_100110174(v21, &qword_10020D930);
  if (v20(v15 + v19, 1, v22) != 1)
  {
    goto LABEL_9;
  }

  sub_100110174(v0[15], &qword_10020D930);
LABEL_11:
  *(v40 + v38) = 0;

LABEL_12:

  v35 = v0[1];

  return v35();
}

uint64_t sub_100109BBC(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  sub_1000FF5D8(&qword_10020D600);
  v2[15] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = *(v4 + 64);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MainActor();
  v2[23] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[24] = v6;
  v2[25] = v5;

  return _swift_task_switch(sub_100109D0C, v6, v5);
}

uint64_t sub_100109D0C()
{
  v1 = *(v0 + 112);
  swift_getKeyPath();
  *(v0 + 80) = v1;
  *(v0 + 208) = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel___observationRegistrar;
  *(v0 + 216) = sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__selectedFormat;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 272) = v3;
  if (v3 == 5)
  {

    sub_10010E49C();
    swift_allocError();
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100109EB8, 0, 0);
  }
}

uint64_t sub_100109EB8()
{
  *(v0 + 224) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100109F44, v2, v1);
}

uint64_t sub_100109F44()
{

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = v0[14];
  v2 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__isExportingFile;
  v0[29] = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__isExportingFile;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    v3 = v0[14];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v0[11] = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = v0[24];
  v6 = v0[25];

  return _swift_task_switch(sub_10010A0DC, v5, v6);
}

uint64_t sub_10010A0DC()
{
  v27 = *(v0 + 272);
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);
  v25 = v7;
  v26 = *(v0 + 112);
  v23 = v4;
  v24 = *(v0 + 104);
  v8 = *(v26 + 16);
  v9 = type metadata accessor for Document(0);
  *(v0 + 64) = v8;
  *(v0 + 72) = v9;
  v10 = objc_msgSendSuper2((v0 + 64), "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = *(v6 + 16);
  v12(v1, v24, v5);
  v12(v4, v2, v5);
  v13 = *(v6 + 80);
  v14 = (v13 + 32) & ~v13;
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + v15 + 8) & ~v13;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = *(v6 + 32);
  v18(v17 + v14, v1, v5);
  *(v17 + v15) = v26;
  v18(v17 + v16, v23, v5);
  *(v17 + v16 + v3) = v27;

  v19 = sub_1001089FC(0, 0, v25, &unk_1001A4958, v17);
  *(v0 + 240) = v19;
  sub_100110174(v25, &qword_10020D600);
  v20 = swift_task_alloc();
  *(v0 + 248) = v20;
  v21 = sub_1000FF5D8(&qword_10020D610);
  *v20 = v0;
  v20[1] = sub_10010A37C;

  return Task.value.getter(v21, v19, &type metadata for () + 8, v21, &protocol self-conformance witness table for Error);
}

uint64_t sub_10010A37C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_10010A7A0;
  }

  else
  {
    v5 = sub_10010A4B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10010A4D4()
{
  *(v0 + 264) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010A560, v2, v1);
}

uint64_t sub_10010A560()
{

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = v0[29];
  v2 = v0[14];
  if (*(v2 + v1))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[12] = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + v1) = 0;
  }

  v4 = v0[24];
  v5 = v0[25];

  return _swift_task_switch(sub_10010A6D0, v4, v5);
}

uint64_t sub_10010A6D0()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10010A7A0()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10010A860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 344) = a7;
  *(v7 + 248) = a5;
  *(v7 + 256) = a6;
  *(v7 + 240) = a4;
  v8 = type metadata accessor for UTType();
  *(v7 + 264) = v8;
  *(v7 + 272) = *(v8 - 8);
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  type metadata accessor for DocumentConverter(0);
  *(v7 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_10010A960, 0, 0);
}

uint64_t sub_10010A960()
{
  *(v0 + 345) = URL.startAccessingSecurityScopedResource()();
  *(v0 + 304) = type metadata accessor for MainActor();
  *(v0 + 312) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010AA08, v2, v1);
}

uint64_t sub_10010AA08()
{
  v1 = v0[37];
  v2 = v0[31];

  swift_getKeyPath();
  v0[40] = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel___observationRegistrar;
  v0[28] = v2;
  v0[41] = sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__documentConverter;
  swift_beginAccess();
  sub_10010FA98(v2 + v3, v1, type metadata accessor for DocumentConverter);

  return _swift_task_switch(sub_10010AB3C, 0, 0);
}

uint64_t sub_10010AB3C()
{
  v1 = *(v0 + 344);
  if (v1 <= 1)
  {
    if (*(v0 + 344))
    {
      static UTType.jpeg.getter();
    }

    else
    {
      static UTType.heic.getter();
    }
  }

  else if (v1 == 2)
  {
    static UTType.pdf.getter();
  }

  else if (v1 == 3)
  {
    static UTType.png.getter();
  }

  else
  {
    static UTType.tiff.getter();
  }

  *(v0 + 336) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010AC10, v3, v2);
}

uint64_t sub_10010AC10()
{
  v1 = *(v0 + 248);

  swift_getKeyPath();
  *(v0 + 232) = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v1 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__conversionOptions);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *(v0 + 48) = *(v2 + 4);
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  sub_10010E394(v0 + 16, v0 + 56);

  return _swift_task_switch(sub_10010ACF4, 0, 0);
}

uint64_t sub_10010ACF4@<X0>(NSURL *a1@<X8>)
{
  v32 = v1;
  URL._bridgeToObjectiveC()(a1);
  v3 = v2;
  v4 = CGDataConsumerCreateWithURL(v2);

  if (v4)
  {
    v5 = *(v1 + 280);
    v6 = *(v1 + 264);
    v7 = *(v1 + 272);
    static UTType.pdf.getter();
    v8 = UTType.conforms(to:)();
    v29 = *(v7 + 8);
    v29(v5, v6);
    if (v8)
    {
      v9 = type metadata accessor for PDFDestination();
      v10 = &off_1001F9CE8;
    }

    else
    {
      v9 = type metadata accessor for ImageDestination(0);
      v10 = &off_1001F9D20;
    }

    v28 = *(v1 + 296);
    v16 = *(v1 + 280);
    v17 = *(v1 + 256);
    (*(*(v1 + 272) + 16))(v16, *(v1 + 288), *(v1 + 264));
    v18 = *(v1 + 32);
    v30[0] = *(v1 + 16);
    v30[1] = v18;
    v31 = *(v1 + 48);
    v19 = v10[1];
    *(v1 + 120) = v9;
    *(v1 + 128) = v10;
    v20 = sub_10010F9E8((v1 + 96));
    sub_10010E394(v1 + 16, v1 + 136);
    v21 = v4;
    v19(v21, v16, v30, 0, v20);
    (v10[2])(v17, v28, v9, v10);
    (v10[5])();
    v24 = *(v1 + 345);
    v25 = *(v1 + 288);
    v26 = *(v1 + 296);
    v27 = *(v1 + 264);
    sub_10010E2A8(v1 + 16);

    v29(v25, v27);
    sub_10010EA80(v26, type metadata accessor for DocumentConverter);
    sub_10010FA4C(v1 + 96);
    if (v24)
    {
      URL.stopAccessingSecurityScopedResource()();
    }

    v22 = *(v1 + 8);
  }

  else
  {
    v11 = *(v1 + 288);
    v12 = *(v1 + 296);
    v13 = *(v1 + 264);
    v14 = *(v1 + 272);
    sub_10010F994();
    swift_allocError();
    *v15 = 1;
    swift_willThrow();
    sub_10010E2A8(v1 + 16);
    (*(v14 + 8))(v11, v13);
    sub_10010EA80(v12, type metadata accessor for DocumentConverter);
    if (*(v1 + 345))
    {
      URL.stopAccessingSecurityScopedResource()();
    }

    v22 = *(v1 + 8);
  }

  return v22();
}

uint64_t sub_10010B058()
{
  v1[15] = v0;
  sub_1000FF5D8(&qword_10020D600);
  v1[16] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[17] = v2;
  v3 = *(v2 - 8);
  v1[18] = v3;
  v1[19] = *(v3 + 64);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for MainActor();
  v1[23] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[24] = v5;
  v1[25] = v4;

  return _swift_task_switch(sub_10010B19C, v5, v4);
}

uint64_t sub_10010B19C()
{
  v1 = *(v0 + 120);
  swift_getKeyPath();
  *(v0 + 96) = v1;
  *(v0 + 208) = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel___observationRegistrar;
  *(v0 + 216) = sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__selectedFormat;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 288) = v3;
  if (v3 == 5)
  {

    sub_10010E49C();
    swift_allocError();
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10010B33C, 0, 0);
  }
}

uint64_t sub_10010B33C()
{
  *(v0 + 224) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010B3C8, v2, v1);
}

uint64_t sub_10010B3C8()
{

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = v0[15];
  v2 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__isExportingFile;
  v0[29] = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__isExportingFile;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    v3 = v0[15];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 1;
    v0[13] = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = v0[24];
  v6 = v0[25];

  return _swift_task_switch(sub_10010B560, v5, v6);
}

uint64_t sub_10010B560()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  v9 = *(v8 + 16);
  v10 = type metadata accessor for Document(0);
  *(v0 + 64) = v9;
  *(v0 + 72) = v10;
  v11 = objc_msgSendSuper2((v0 + 64), "fileURL");
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  (*(v4 + 16))(v2, v3, v7);
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v8;
  (*(v4 + 32))(&v14[v13], v2, v7);
  v14[v13 + v5] = v1;

  v15 = sub_1001089FC(0, 0, v6, &unk_1001A4978, v14);
  *(v0 + 240) = v15;
  sub_100110174(v6, &qword_10020D600);
  v16 = swift_task_alloc();
  *(v0 + 248) = v16;
  v17 = sub_1000FF5D8(&qword_10020D610);
  *v16 = v0;
  v16[1] = sub_10010B7A0;

  return Task.value.getter(v0 + 80, v15, &type metadata for Data, v17, &protocol self-conformance witness table for Error);
}

uint64_t sub_10010B7A0()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_10010BBC0;
  }

  else
  {
    v5 = sub_10010B8DC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10010B904()
{
  *(v0 + 280) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010B990, v2, v1);
}

uint64_t sub_10010B990()
{

  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v1 = v0[29];
  v2 = v0[15];
  if (*(v2 + v1))
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[14] = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + v1) = 0;
  }

  v4 = v0[24];
  v5 = v0[25];

  return _swift_task_switch(sub_10010BB00, v4, v5);
}

uint64_t sub_10010BB00()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];
  v5 = v0[33];
  v6 = v0[34];

  return v4(v5, v6);
}

uint64_t sub_10010BBC0()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[18];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10010BC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 336) = a6;
  *(v6 + 248) = a4;
  *(v6 + 256) = a5;
  *(v6 + 240) = a1;
  v7 = type metadata accessor for UTType();
  *(v6 + 264) = v7;
  *(v6 + 272) = *(v7 - 8);
  *(v6 + 280) = swift_task_alloc();
  type metadata accessor for DocumentConverter(0);
  *(v6 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_10010BD68, 0, 0);
}

uint64_t sub_10010BD68()
{
  *(v0 + 296) = type metadata accessor for MainActor();
  *(v0 + 304) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010BE00, v2, v1);
}

uint64_t sub_10010BE00()
{
  v1 = v0[36];
  v2 = v0[31];

  swift_getKeyPath();
  v0[39] = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel___observationRegistrar;
  v0[28] = v2;
  v0[40] = sub_10010F590(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__documentConverter;
  swift_beginAccess();
  sub_10010FA98(v2 + v3, v1, type metadata accessor for DocumentConverter);

  return _swift_task_switch(sub_10010BF34, 0, 0);
}

uint64_t sub_10010BF34()
{
  v1 = *(v0 + 336);
  if (v1 <= 1)
  {
    if (*(v0 + 336))
    {
      static UTType.jpeg.getter();
    }

    else
    {
      static UTType.heic.getter();
    }
  }

  else if (v1 == 2)
  {
    static UTType.pdf.getter();
  }

  else if (v1 == 3)
  {
    static UTType.png.getter();
  }

  else
  {
    static UTType.tiff.getter();
  }

  *(v0 + 328) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010C008, v3, v2);
}

uint64_t sub_10010C008()
{
  v1 = *(v0 + 248);

  swift_getKeyPath();
  *(v0 + 232) = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = (v1 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__conversionOptions);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *(v0 + 48) = *(v2 + 4);
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  sub_10010E394(v0 + 16, v0 + 56);

  return _swift_task_switch(sub_10010C0EC, 0, 0);
}

uint64_t sub_10010C0EC()
{
  v19 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 32);
  v16 = *(v0 + 16);
  v17 = v3;
  v18 = *(v0 + 48);
  v4 = sub_10018B058(v2, v1, &v16);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  v9 = v4;
  v11 = v10;
  v12 = *(v0 + 240);
  v13 = v17;
  *(v0 + 136) = v16;
  *(v0 + 152) = v13;
  *(v0 + 168) = v18;
  sub_10010E2A8(v0 + 136);
  (*(v8 + 8))(v6, v7);
  sub_10010EA80(v5, type metadata accessor for DocumentConverter);
  *v12 = v9;
  v12[1] = v11;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10010C26C()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel_sourceType;
  v2 = type metadata accessor for UTType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10010EA80(v0 + OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__documentConverter, type metadata accessor for DocumentConverter);

  v3 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_10010C38C()
{
  sub_10010C26C();

  return swift_deallocClassInstance();
}

uint64_t sub_10010C3E4()
{
  v0 = type metadata accessor for UTType();
  __chkstk_darwin(v0 - 8);
  static UTType.item.getter();
  sub_10010EAE0();
  return DataRepresentation.init(exportedContentType:exporting:)();
}

uint64_t sub_10010C4C4()
{
  v0 = type metadata accessor for UTType();
  __chkstk_darwin(v0 - 8);
  static UTType.item.getter();
  return DataRepresentation.init(exportedContentType:exporting:)();
}

uint64_t sub_10010C570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10010C670, 0, 0);
}

uint64_t sub_10010C670()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_10010F590(&qword_10020D940, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10010F590(&qword_10020D948, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10010C800;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10010C800()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10010C9BC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10010C9BC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10010CA28(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UTType();
  sub_10010F590(&qword_10020D8F0, &type metadata accessor for UTType);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
  sub_10018B588();
  v2 = Hasher._finalize()();

  return sub_10010CD60(a1, v2);
}

unint64_t sub_10010CB08(uint64_t a1)
{
  Hasher.init(_seed:)();
  _s3__C8CFStringCMa_0(0);
  sub_10010F590(&qword_10020D8D8, _s3__C8CFStringCMa_0);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10010D0CC(a1, v2);
}

unint64_t sub_10010CBBC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10010D1D8(a1, v2);
}

unint64_t sub_10010CC50(uint64_t a1)
{
  type metadata accessor for UTTagClass();
  sub_10010F590(&qword_10020D910, &type metadata accessor for UTTagClass);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10010D2DC(a1, v2);
}

unint64_t sub_10010CCE8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10010D49C(a1, a2, v4);
}

unint64_t sub_10010CD60(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return v10;
  }

  v11 = ~v9;
  v12 = *(v6 + 72);
  while (1)
  {
    sub_10010FA98(*(v2 + 48) + v12 * v10, v8, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
    if (static UTType.== infix(_:_:)())
    {
      break;
    }

    sub_10010EA80(v8, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
LABEL_4:
    v10 = (v10 + 1) & v11;
    if (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return v10;
    }
  }

  v13 = &v8[*(v5 + 20)];
  v23 = *(v13 + 4);
  v14 = *(v13 + 1);
  v21 = *v13;
  v22 = v14;
  v15 = (a1 + *(v5 + 20));
  v26 = *(v15 + 4);
  v16 = v15[1];
  v24 = *v15;
  v25 = v16;
  if (*&v21 != *&v24 || *(&v21 + 1) != *(&v24 + 1))
  {
    goto LABEL_24;
  }

  if (BYTE8(v22))
  {
    if ((BYTE8(v25) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((BYTE8(v25) & 1) != 0 || v22 != v25)
  {
    goto LABEL_24;
  }

  if (BYTE9(v22) != BYTE9(v25) || BYTE10(v22) != BYTE10(v25) || BYTE11(v22) != BYTE11(v25) || BYTE12(v22) != BYTE12(v25) || BYTE13(v22) != BYTE13(v25) || BYTE14(v22) != BYTE14(v25))
  {
    goto LABEL_24;
  }

  if (v23)
  {
    if (v26)
    {
      type metadata accessor for CGColor(0);
      v19 = v17;
      sub_10010E394(&v21, v20);
      sub_10010E394(&v24, v20);
      sub_10010F590(&qword_10020D950, type metadata accessor for CGColor);
      if (static _CFObject.== infix(_:_:)())
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

LABEL_24:
    sub_10010E394(&v21, v20);
    sub_10010E394(&v24, v20);
LABEL_25:
    sub_10010EA80(v8, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
    sub_10010E2A8(&v24);
    sub_10010E2A8(&v21);
    goto LABEL_4;
  }

  if (v26)
  {
    goto LABEL_24;
  }

  sub_10010E394(&v21, v20);
  sub_10010E394(&v24, v20);
LABEL_28:
  sub_10010EA80(v8, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
  sub_10010E2A8(&v24);
  sub_10010E2A8(&v21);
  return v10;
}

unint64_t sub_10010D0CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    _s3__C8CFStringCMa_0(0);
    sub_10010F590(&qword_10020D8D8, _s3__C8CFStringCMa_0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10010D1D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
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

unint64_t sub_10010D2DC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UTTagClass();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
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
      sub_10010F590(&qword_10020D918, &type metadata accessor for UTTagClass);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
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

unint64_t sub_10010D49C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10010D554(uint64_t result)
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

  result = sub_10013E29C(result, v11, 1, v3);
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

uint64_t sub_10010D640(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 <= 1)
      {
        if (*v3)
        {
          v8 = 1734701162;
        }

        else
        {
          v8 = 1667851624;
        }

        v7 = 0xE400000000000000;
      }

      else if (v6 == 2)
      {
        v7 = 0xE300000000000000;
        v8 = 6710384;
      }

      else if (v6 == 3)
      {
        v7 = 0xE300000000000000;
        v8 = 6778480;
      }

      else
      {
        v7 = 0xE400000000000000;
        v8 = 1717987700;
      }

      v9 = *v4;
      if (v9 <= 1)
      {
        if (*v4)
        {
          v11 = 1734701162;
        }

        else
        {
          v11 = 1667851624;
        }

        v10 = 0xE400000000000000;
        if (v8 != v11)
        {
LABEL_5:
          v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0xE300000000000000;
        if (v8 != 6710384)
        {
          goto LABEL_5;
        }
      }

      else if (v9 == 3)
      {
        v10 = 0xE300000000000000;
        if (v8 != 6778480)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0xE400000000000000;
        if (v8 != 1717987700)
        {
          goto LABEL_5;
        }
      }

      if (v7 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10010D7F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x6550736C65786970;
      }

      else
      {
        v5 = 0xD000000000000013;
      }

      if (*v3)
      {
        v6 = 0xED000068636E4972;
      }

      else
      {
        v6 = 0x80000001001B5EA0;
      }

      if (*v4)
      {
        v7 = 0x6550736C65786970;
      }

      else
      {
        v7 = 0xD000000000000013;
      }

      if (*v4)
      {
        v8 = 0xED000068636E4972;
      }

      else
      {
        v8 = 0x80000001001B5EA0;
      }

      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void sub_10010D914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
  v45 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v41 - v7;
  v8 = sub_1000FF5D8(&qword_10020D958);
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - v10;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v42 = a1;
    v43 = v11;
    v13 = 0;
    v16 = *(a1 + 64);
    v15 = a1 + 64;
    v14 = v16;
    v17 = 1 << *(v15 - 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v14;
    v20 = (v17 + 63) >> 6;
    v47 = &v41 - v10;
    while (v19)
    {
      v48 = (v19 - 1) & v19;
      v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
      v26 = v42;
      v27 = v44;
      sub_10010FA98(*(v42 + 48) + *(v45 + 72) * v21, v44, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
      v28 = *(*(v26 + 56) + 8 * v21);
      v29 = sub_1000FF5D8(&qword_10020D960);
      v30 = *(v29 + 48);
      v31 = v43;
      sub_1001101F8(v27, v43, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
      *(v31 + v30) = v28;
      (*(*(v29 - 8) + 56))(v31, 0, 1, v29);
      v12 = v47;
LABEL_17:
      sub_100110260(v31, v12);
      v32 = sub_1000FF5D8(&qword_10020D960);
      if ((*(*(v32 - 8) + 48))(v12, 1, v32) != 1)
      {
        v33 = *(v32 + 48);
        v34 = v46;
        sub_1001101F8(v12, v46, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
        v35 = *&v12[v33];
        v36 = sub_10010CA28(v34);
        v38 = v37;
        sub_10010EA80(v34, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
        if (v38)
        {
          v12 = v47;
          v19 = v48;
          if (*(*(a2 + 56) + 8 * v36) == v35)
          {
            continue;
          }
        }
      }

      return;
    }

    if (v20 <= v13 + 1)
    {
      v22 = v13 + 1;
    }

    else
    {
      v22 = v20;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v24 >= v20)
      {
        v39 = sub_1000FF5D8(&qword_10020D960);
        v40 = v43;
        (*(*(v39 - 8) + 56))(v43, 1, 1, v39);
        v48 = 0;
        v13 = v23;
        v31 = v40;
        goto LABEL_17;
      }

      v25 = *(v15 + 8 * v24);
      ++v13;
      if (v25)
      {
        v48 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) | (v24 << 6);
        v13 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

unint64_t sub_10010DD28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000FF5D8(&qword_10020D8F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1001102D0(v4, &v11, &qword_10020D900);
      v5 = v11;
      result = sub_10010CBBC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10010F7F8(&v12, (v3[7] + 32 * result));
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

unint64_t sub_10010DE50(uint64_t a1)
{
  v2 = sub_1000FF5D8(&qword_10020D968);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000FF5D8(&qword_10020D970);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1001102D0(v9, v5, &qword_10020D968);
      result = sub_10010CA28(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
      result = sub_1001101F8(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for ExportSheetViewModel.EstimationCacheKey);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
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

uint64_t sub_10010E144()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__selectedFormat;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_10010E1DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__resolutionUnit;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_10010E23C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  sub_10010E394(v5, v4);
  return sub_100104F80(a1);
}

unint64_t sub_10010E49C()
{
  result = qword_10020D608;
  if (!qword_10020D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020D608);
  }

  return result;
}

uint64_t sub_10010E4F0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v3 + ((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v3;
  swift_unknownObjectRelease();
  v6 = *(v2 + 8);
  v6(v0 + v4, v1);

  v6(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_10010E5FC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v9);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v1 + ((v6 + v9 + 8) & ~v6);
  v14 = *(v13 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100110344;

  return sub_10010A860(a1, v11, v12, v1 + v7, v10, v13, v14);
}

uint64_t sub_10010E744()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10010E814(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10010E934;

  return sub_10010BC74(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_10010E934()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10010EA28(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_10010EA80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10010EAE0()
{
  result = qword_10020D618;
  if (!qword_10020D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020D618);
  }

  return result;
}

unint64_t sub_10010EB38()
{
  result = qword_10020D620;
  if (!qword_10020D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020D620);
  }

  return result;
}

unint64_t sub_10010EB90()
{
  result = qword_10020D628;
  if (!qword_10020D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020D628);
  }

  return result;
}

unint64_t sub_10010EBE8()
{
  result = qword_10020D630;
  if (!qword_10020D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020D630);
  }

  return result;
}

uint64_t sub_10010EC80(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10010ED4C()
{
  result = type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExportSheetViewModel.ExportOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExportSheetViewModel.ExportOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExportSheetViewModel.ImageFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExportSheetViewModel.ImageFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10010F178(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010F1B0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10010F2DC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10010EC80(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10010F338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10010F418(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UTType();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = a2;
  }

  return result;
}

uint64_t sub_10010F4D4()
{
  result = type metadata accessor for UTType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10010F590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010F5D8(uint64_t a1, uint64_t a2)
{
  if (static UTType.== infix(_:_:)())
  {
    v4 = type metadata accessor for ExportSheetViewModel.EstimationCacheKey(0);
    v5 = (a1 + *(v4 + 20));
    v21 = *(v5 + 4);
    v6 = v5[1];
    v20[0] = *v5;
    v20[1] = v6;
    v8 = *v5;
    v7 = v5[1];
    v19 = *(v5 + 4);
    v17 = v8;
    v18 = v7;
    v9 = (a2 + *(v4 + 20));
    v23 = *(v9 + 4);
    v10 = v9[1];
    v22[0] = *v9;
    v22[1] = v10;
    v11 = v9[1];
    v14 = *v9;
    v15 = v11;
    v16 = *(v9 + 4);
    sub_10010E394(v20, v26);
    sub_10010E394(v22, v26);
    v12 = sub_10018E424(&v17, &v14);
    v24[0] = v14;
    v24[1] = v15;
    v25 = v16;
    sub_10010E2A8(v24);
    v26[0] = v17;
    v26[1] = v18;
    v27 = v19;
    sub_10010E2A8(v26);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_10010F6D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000FF5D8(&qword_10020D8E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1001102D0(v4, &v11, &qword_10020D8E8);
      v5 = v11;
      result = sub_10010CB08(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10010F7F8(&v12, (v3[7] + 32 * result));
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

_OWORD *sub_10010F7F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10010F808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000FF5D8(&qword_10020D908);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10010CCE8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_10010F930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentConverter(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10010F994()
{
  result = qword_10020D920;
  if (!qword_10020D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020D920);
  }

  return result;
}

uint64_t *sub_10010F9E8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10010FA4C(uint64_t a1)
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

uint64_t sub_10010FA98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010FB00()
{
  v1 = *(type metadata accessor for DocumentConverter(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v13 = type metadata accessor for URL();
  v4 = *(v13 - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v10 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = (*(v8 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9(v0 + v2, v7);
  (*(v4 + 8))(v0 + v5, v13);
  v9(v0 + v10, v7);

  return swift_deallocObject();
}

uint64_t sub_10010FCB0()
{
  v2 = *(type metadata accessor for DocumentConverter(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UTType() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10010FE70;

  return sub_100108D34(v0 + v3, v0 + v6, v0 + v9, v0 + v10);
}

uint64_t sub_10010FE70(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10010FF6C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10010FFAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100110344;

  return sub_100108394(a1, v4, v5, v7, v6);
}

uint64_t sub_10011006C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001100B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10010E934;

  return sub_100108DEC(a1, v4, v5, v7, v6);
}

uint64_t sub_100110174(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000FF5D8(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001101F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100110260(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020D958);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001102D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000FF5D8(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100110370()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_PreviewFoundation();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100110584()
{
  swift_getKeyPath();
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 16);
}

uint64_t sub_100110638@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t type metadata accessor for DownloadStatusViewModel()
{
  result = qword_10020D9D0;
  if (!qword_10020D9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100110794(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 16) == v2)
  {
    *(v1 + 16) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1001108B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

void (*sub_10011090C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100110A4C;
}

void sub_100110A4C(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_100110AD0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v1 + 17);
  return result;
}

uint64_t sub_100110B78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

unsigned __int8 *sub_100110C94(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + 17);
  if (v3 != 2)
  {
    if (v2 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 17) = v2;
    return result;
  }

  if (v2 == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void *sub_100110DC0()
{
  swift_getKeyPath();
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_100110E68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_100110F24(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100110F84(v1);
}

void sub_100110F54(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100110F84(v1);
}

void sub_100110F84(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100115160();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

uint64_t sub_100111104()
{
  swift_getKeyPath();
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v0[32] == 1 && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , (v0[33] & 1) == 0))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v1 = v0[16] ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_100111248()
{
  swift_getKeyPath();
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_1001112E8()
{
  swift_getKeyPath();
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 33);
}

void sub_100111388(char a1)
{
  swift_getKeyPath();
  v12 = v1;
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 32) == 1 && (a1 & 1) == 0)
  {
    if (qword_10020D080 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100101048(v3, qword_10020E6D8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      type metadata accessor for URL();
      sub_100115058(&qword_10020DA90, &type metadata accessor for URL);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = sub_100125658(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_100000000, v4, v5, "Setting wasDownloadedAtSomePoint to true for %s", v6, 0xCu);
      sub_10010FA4C(v7);
    }

    if (*(v1 + 33) == 1)
    {
      *(v1 + 33) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v12 = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t sub_10011165C(uint64_t result)
{
  if (*(v1 + 33) == (result & 1))
  {
    *(v1 + 33) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10011176C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

void sub_100111840(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 32) == (a1 & 1))
  {
    sub_100111388(a1 & 1);
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100111958@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_100111A2C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 512;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  v3 = (v2 + OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_progressObservation);
  *v3 = 0u;
  v3[1] = 0u;
  ObservationRegistrar.init()();
  v4 = OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_url;
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 32))(v2 + v4, a1, v5);
  return v2;
}

uint64_t sub_100111AE4(uint64_t a1)
{
  *(v1 + 16) = 512;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v3 = (v1 + OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_progressObservation);
  *v3 = 0u;
  v3[1] = 0u;
  ObservationRegistrar.init()();
  v4 = OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_url;
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

void sub_100111B88()
{
  sub_100111BB0();

  sub_100111D08();
}

uint64_t sub_100111BB0()
{
  v1 = v0;
  v2 = objc_opt_self();
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_url);
  v4 = v3;
  v5 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100114E84;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001139DC;
  aBlock[3] = &unk_1001F6F28;
  v6 = _Block_copy(aBlock);

  v7 = [v2 addSubscriberForFileURL:v4 withPublishingHandler:v6];
  _Block_release(v6);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v8 = OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_progressObservation;
  swift_beginAccess();
  sub_100114EA4(aBlock, v1 + v8);
  return swift_endAccess();
}

void sub_100111D08()
{
  v1 = v0;
  v2 = sub_1000FF5D8(&qword_10020D600);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  swift_getKeyPath();
  v17 = v0;
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 33))
  {
    if (qword_10020D080 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100101048(v5, qword_10020E6D8);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136315138;
      type metadata accessor for URL();
      sub_100115058(&qword_10020DA90, &type metadata accessor for URL);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = sub_100125658(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_100000000, v6, v7, "Item was downloaded at some point, skipping fetching the download status for: %s", v8, 0xCu);
      sub_10010FA4C(v9);
    }
  }

  else
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v1;
    sub_100128F38(0, 0, v4, &unk_1001A5100, v15);
  }
}

uint64_t (*sub_100112024(void *a1))()
{
  v2 = type metadata accessor for URL();
  v125 = *(v2 - 8);
  __chkstk_darwin(v2);
  v123 = &v111[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1000FF5D8(&qword_10020DAA0);
  __chkstk_darwin(v4);
  v6 = &v111[-v5];
  v7 = sub_1000FF5D8(&qword_10020DAA8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v111[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v111[-v12];
  v14 = __chkstk_darwin(v11);
  v122 = &v111[-v15];
  v16 = __chkstk_darwin(v14);
  v18 = &v111[-v17];
  __chkstk_darwin(v16);
  v20 = &v111[-v19];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v22 = result;
  v23 = [a1 fileOperationKind];
  v124 = v2;
  if (!v23)
  {
    v117 = v10;
    v118 = v13;
    v28 = [a1 userInfo];
    type metadata accessor for ProgressUserInfoKey(0);
    sub_100115058(&qword_10020D490, type metadata accessor for ProgressUserInfoKey);
    v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v29 + 16) && (v30 = sub_10011034C(NSProgressFileOperationKindKey), (v31 & 1) != 0))
    {
      sub_1001150A0(*(v29 + 56) + 32 * v30, v126);

      type metadata accessor for FileOperationKind(0);
      if (swift_dynamicCast())
      {
        v23 = v126[4];
      }

      else
      {
        v23 = 0;
      }

      v10 = v117;
      v13 = v118;
      if (v23)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v32 = 0;
LABEL_15:
    if (qword_10020D080 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100101048(v33, qword_10020E6D8);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v34, v35))
    {

      return 0;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v126[0] = v37;
    *v36 = 136315138;
    v38 = v124;
    v39 = v125;
    v40 = v123;
    (*(v125 + 16))(v123, v22 + OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_url, v124);
    sub_100115058(&qword_10020DA90, &type metadata accessor for URL);
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v121 = v32;
    v42 = v41;
    v44 = v43;
    (*(v39 + 8))(v40, v38);
    v45 = sub_100125658(v42, v44, v126);

    *(v36 + 4) = v45;
    _os_log_impl(&dword_100000000, v34, v35, "Not observing progress for non-downloading file URL: %s", v36, 0xCu);
    sub_10010FA4C(v37);

LABEL_48:

    return 0;
  }

LABEL_3:
  v118 = v13;
  v119 = a1;
  v117 = v10;
  v120 = v22;
  v121 = v23;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {

    goto LABEL_21;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v46 & 1) == 0)
  {
    v22 = v120;
    v32 = v121;
    goto LABEL_15;
  }

LABEL_21:
  v47 = [v119 fileURL];
  v48 = v120;
  if (v47)
  {
    v49 = v47;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = v124;
  v52 = v125;
  v53 = *(v125 + 56);
  v53(v20, v50, 1, v124);
  v54 = *(v52 + 16);
  v115 = OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_url;
  v116 = v54;
  v55 = v48 + OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_url;
  v56 = v51;
  v54(v18, v55, v51);
  v114 = v53;
  v53(v18, 0, 1, v51);
  v57 = *(v4 + 48);
  sub_100114F14(v20, v6);
  sub_100114F14(v18, &v6[v57]);
  v58 = *(v52 + 48);
  v59 = v58(v6, 1, v51);
  v113 = v58;
  if (v59 != 1)
  {
    v61 = v58;
    v62 = v122;
    sub_100114F14(v6, v122);
    if (v61(&v6[v57], 1, v56) != 1)
    {
      v81 = v125;
      v82 = &v6[v57];
      v83 = v123;
      (*(v125 + 32))(v123, v82, v56);
      sub_100115058(&qword_10020DAB8, &type metadata accessor for URL);
      v112 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = *(v81 + 8);
      v84(v83, v124);
      sub_100110174(v18, &qword_10020DAA8);
      sub_100110174(v20, &qword_10020DAA8);
      v84(v62, v124);
      sub_100110174(v6, &qword_10020DAA8);
      v60 = v119;
      if (v112)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    sub_100110174(v18, &qword_10020DAA8);
    sub_100110174(v20, &qword_10020DAA8);
    (*(v125 + 8))(v62, v124);
LABEL_29:
    sub_100110174(v6, &qword_10020DAA0);
    v60 = v119;
LABEL_30:
    if (qword_10020D080 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100101048(v63, qword_10020E6D8);
    v64 = v60;
    v65 = v120;

    v34 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v66))
    {
      v67 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v126[0] = v119;
      *v67 = 136315394;
      v68 = v123;
      v69 = v124;
      v122 = (v52 + 16);
      v116(v123, &v115[v65], v124);
      sub_100115058(&qword_10020DA90, &type metadata accessor for URL);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v73 = *(v125 + 8);
      v74 = v68;
      v75 = v69;
      v125 += 8;
      v115 = v73;
      (v73)(v74, v69);
      v76 = sub_100125658(v70, v72, v126);

      *(v67 + 4) = v76;
      *(v67 + 12) = 2080;
      v77 = [v64 fileURL];
      if (v77)
      {
        v78 = v117;
        v79 = v77;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v80 = 0;
      }

      else
      {
        v80 = 1;
        v78 = v117;
      }

      v114(v78, v80, 1, v75);
      v103 = v118;
      sub_100114F84(v78, v118);
      if (v113(v103, 1, v75))
      {
        sub_100110174(v103, &qword_10020DAA8);
        v104 = 0xE300000000000000;
        v105 = 4271950;
      }

      else
      {
        v106 = v123;
        v116(v123, v103, v75);
        sub_100110174(v103, &qword_10020DAA8);
        v107 = v75;
        v108 = URL.description.getter();
        v104 = v109;
        (v115)(v106, v107);
        v105 = v108;
      }

      v110 = sub_100125658(v105, v104, v126);

      *(v67 + 14) = v110;
      _os_log_impl(&dword_100000000, v34, v66, "Not observing progress %s != %s", v67, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_48;
  }

  sub_100110174(v18, &qword_10020DAA8);
  sub_100110174(v20, &qword_10020DAA8);
  if (v58(&v6[v57], 1, v124) != 1)
  {
    goto LABEL_29;
  }

  sub_100110174(v6, &qword_10020DAA8);
  v60 = v119;
LABEL_38:
  if (qword_10020D080 != -1)
  {
    swift_once();
  }

  v85 = type metadata accessor for Logger();
  sub_100101048(v85, qword_10020E6D8);
  v86 = v60;
  v87 = v120;

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v126[0] = v122;
    *v90 = 138412546;
    *(v90 + 4) = v86;
    *v91 = v86;
    *(v90 + 12) = 2080;
    v92 = v123;
    v93 = v124;
    v116(v123, &v115[v87], v124);
    sub_100115058(&qword_10020DA90, &type metadata accessor for URL);
    v94 = v86;
    v95 = dispatch thunk of CustomStringConvertible.description.getter();
    v97 = v96;
    (*(v125 + 8))(v92, v93);
    v98 = sub_100125658(v95, v97, v126);

    *(v90 + 14) = v98;
    _os_log_impl(&dword_100000000, v88, v89, "Progress %@ published for %s", v90, 0x16u);
    sub_100110174(v91, &qword_10020DAB0);

    sub_10010FA4C(v122);
  }

  v99 = type metadata accessor for MainActor();
  __chkstk_darwin(v99);
  *&v111[-16] = v87;
  *&v111[-8] = v86;
  sub_100112F88(sub_100114FF4, &v111[-32]);

  v100 = swift_allocObject();
  swift_weakInit();

  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  *(v101 + 24) = v86;
  v102 = v86;
  return sub_100115050;
}

uint64_t sub_100112ED8(uint64_t a1, void *a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = a2;
  sub_100110F84(a2);
}

uint64_t sub_100112F88(uint64_t a1, uint64_t a2)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_10005F93C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v8._object = 0x80000001001B13F0;
    v8._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v8);
    v9._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100113110(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_10020D080 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100101048(v9, qword_10020E6D8);
    v10 = a2;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      v23 = swift_slowAlloc();
      v24 = v23;
      *v13 = 138412546;
      *(v13 + 4) = v10;
      *v14 = v10;
      *(v13 + 12) = 2080;
      (*(v4 + 16))(v6, v8 + OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_url, v3);
      sub_100115058(&qword_10020DA90, &type metadata accessor for URL);
      v15 = v10;
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v4 + 8))(v6, v3);
      v19 = sub_100125658(v16, v18, &v24);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_100000000, v11, v12, "Progress %@ unpublished for %s", v13, 0x16u);
      sub_100110174(v22, &qword_10020DAB0);

      sub_10010FA4C(v23);
    }

    v20 = type metadata accessor for MainActor();
    __chkstk_darwin(v20);
    *(&v21 - 2) = v10;
    *(&v21 - 1) = v8;
    sub_100112F88(sub_1001150FC, (&v21 - 4));
  }

  return result;
}

uint64_t sub_100113474(void *a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ([a1 isFinished])
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      sub_100111388(0);
      *(a2 + 32) = 0;
      if (!*(a2 + 24))
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ([a1 isCancelled])
  {
    if (qword_10020D080 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100101048(v4, qword_10020E6D8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_100000000, v5, v6, "Download was cancelled while user was waiting for item.", v7, 2u);
    }

    if (*(a2 + 17))
    {
      *(a2 + 17) = 1;
      if (!*(a2 + 24))
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (qword_10020D080 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100101048(v8, qword_10020E6D8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_100000000, v9, v10, "Progress was unexpectedly unpublished while user was waiting for item.", v11, 2u);
    }

    v12 = *(a2 + 17);
    if (v12 != 2 && (v12 & 1) == 0)
    {
      *(a2 + 17) = 0;
      if (!*(a2 + 24))
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(a2 + 24))
  {
LABEL_24:
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

LABEL_25:
  sub_100111D08();
}

id sub_1001139DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();
  v7 = v6;

  if (v5)
  {
    v9[4] = v5;
    v9[5] = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10015FD7C;
    v9[3] = &unk_1001F6F50;
    v5 = _Block_copy(v9);
  }

  return v5;
}

uint64_t sub_100113ABC()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100113B68;

  return sub_100113D04();
}

uint64_t sub_100113B68()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100113CA4, v1, v0);
}

uint64_t sub_100113CA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100113D04()
{
  v1[11] = v0;
  sub_1000FF5D8(&qword_10020D600);
  v1[12] = swift_task_alloc();
  v2 = type metadata accessor for URLResourceValues();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_100113DFC, 0, 0);
}

uint64_t sub_100113DFC()
{
  v35 = v0;
  if (qword_10020D080 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100101048(v1, qword_10020E6D8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v34[0] = v5;
    *v4 = 136315138;
    type metadata accessor for URL();
    sub_100115058(&qword_10020DA90, &type metadata accessor for URL);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_100125658(v6, v7, v34);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_100000000, v2, v3, "Will fetch download status for: %s", v4, 0xCu);
    sub_10010FA4C(v5);
  }

  sub_1000FF5D8(&qword_10020DA98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10019A9F0;
  *(inited + 32) = NSURLUbiquitousItemDownloadingStatusKey;
  v10 = NSURLUbiquitousItemDownloadingStatusKey;
  sub_1001312E4(inited);
  swift_setDeallocating();
  sub_100114C84(inited + 32);
  URL.resourceValues(forKeys:)();

  v11 = URLResourceValues.ubiquitousItemDownloadingStatus.getter();
  v12 = v11;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34[0] = swift_slowAlloc();
    *v15 = 136315394;
    if (v11)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 4271950;
    }

    v19 = sub_100125658(v16, v18, v34);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    type metadata accessor for URL();
    sub_100115058(&qword_10020DA90, &type metadata accessor for URL);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = sub_100125658(v20, v21, v34);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_100000000, v13, v14, "Did fetch download status %s for: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  if (v11)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  (*(v0[14] + 8))(v0[15], v0[13]);
  v28 = v0[11];
  v27 = v0[12];
  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  type metadata accessor for MainActor();

  v30 = static MainActor.shared.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = &protocol witness table for MainActor;
  *(v31 + 32) = v28;
  *(v31 + 40) = v11 & 1;
  sub_100128F38(0, 0, v27, &unk_1001A5120, v31);

  v32 = v0[1];

  return v32();
}

uint64_t sub_10011451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 24) = a4;
  type metadata accessor for MainActor();
  *(v5 + 32) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001145B8, v7, v6);
}

uint64_t sub_1001145B8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_100115058(&qword_10020D980, type metadata accessor for DownloadStatusViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v1 == *(v2 + 32))
  {
  }

  else
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    *(v0 + 16) = v4;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (qword_10020D080 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100101048(v6, qword_10020E6D8);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 24);
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      swift_getKeyPath();
      *(v0 + 16) = v10;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v11 + 4) = *(v2 + 32);

      _os_log_impl(&dword_100000000, v7, v8, "Setting needsDownload to %{BOOL}d", v11, 8u);
    }

    else
    {
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10011486C()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100110174(v0 + OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_progressObservation, &qword_10020D998);
  v3 = OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_100114934()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100110174(v0 + OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel_progressObservation, &qword_10020D998);
  v3 = OBJC_IVAR____TtC17PreviewFoundation23DownloadStatusViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t sub_100114A3C()
{
  result = qword_10020D9A0;
  if (!qword_10020D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020D9A0);
  }

  return result;
}

uint64_t sub_100114A98()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100114BD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10010E934;

  return sub_100113ABC();
}

uint64_t sub_100114C84(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100114CE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100114D34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100110344;

  return sub_10011451C(a1, v4, v5, v6, v7);
}

void sub_100114DF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100111388(v2);
  *(v1 + 32) = v2;
}

uint64_t sub_100114E4C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100114E8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100114EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020D998);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100114F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020DAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100114F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020DAA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100115010()
{

  return swift_deallocObject();
}

uint64_t sub_100115058(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001150A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100115118()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

unint64_t sub_100115160()
{
  result = qword_10020DAC0;
  if (!qword_10020DAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020DAC0);
  }

  return result;
}

uint64_t sub_100115248()
{
  v0 = swift_allocObject();
  UUID.init()();
  v1 = (v0 + OBJC_IVAR____TtC17PreviewFoundation30DocumentCreationTargetProvider_target);
  *v1 = 0;
  v1[1] = 0;
  return v0;
}

uint64_t sub_10011529C()
{
  UUID.init()();
  v1 = (v0 + OBJC_IVAR____TtC17PreviewFoundation30DocumentCreationTargetProvider_target);
  *v1 = 0;
  v1[1] = 0;
  return v0;
}

uint64_t sub_100115324(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17PreviewFoundation30DocumentCreationTargetProvider_target);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1001153E8()
{
  v1 = (v0 + OBJC_IVAR____TtC17PreviewFoundation30DocumentCreationTargetProvider_target);
  swift_beginAccess();
  if (!*v1)
  {
    return 0;
  }

  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_100115494()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundation30DocumentCreationTargetProvider_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_100115504()
{
  v1 = OBJC_IVAR____TtC17PreviewFoundation30DocumentCreationTargetProvider_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001155BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100115634@<X0>(uint64_t result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

uint64_t sub_1001156C0(uint64_t a1, void *a2)
{
  swift_allocObject();
  v4 = sub_1001263BC(a1, a2);

  return v4;
}

uint64_t sub_100115718(uint64_t a1, void *a2)
{
  v3 = sub_1001263BC(a1, a2);

  return v3;
}

uint64_t sub_100115748(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

unsigned __int8 *sub_100115858(unsigned __int8 *result)
{
  v2 = *result;
  v3 = result[1];
  v4 = (v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState);
  if (v2 != *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState))
  {
    goto LABEL_2;
  }

  v6 = v4[1];
  if (v6 != 2)
  {
    if (v3 != 2 && ((v6 ^ v3) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_2:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (v3 != 2)
  {
    goto LABEL_2;
  }

LABEL_8:
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1001159D0(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown) = v2;

    return sub_10011ABFC(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100115BE8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__itemForPresentedShareSheet;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_100127010(&qword_10020DAB8, &type metadata accessor for URL);
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
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(a1, v4);
}

uint64_t sub_100115E90(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___isVisualSearchActive) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___isVisualSearchActive) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100116034(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = a1 & 1;
  v8 = *a2;
  v9 = swift_beginAccess();
  if (*(v5 + v8) == v7)
  {
    *(v5 + v8) = v7;
    return a5(v9);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10011615C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    return sub_100117154();
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100116288(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isDarkModeSupportEnabled;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
    v5 = [objc_opt_self() standardUserDefaults];
    swift_getKeyPath();
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v7 = String._bridgeToObjectiveC()();
    [v5 setObject:v6 forKey:v7];

    swift_unknownObjectRelease();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001164B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__searchText);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100116AEC(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100116C08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__eligibleFPActions;

  v5 = sub_100125C00(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    return sub_100117154();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100116D68(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__contentType;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_100127010(&qword_10020DC50, &type metadata accessor for UTType);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_100117154();
    v10(v7, v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_100117024(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__exportSheetViewModel;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100117154()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v131 = *(v2 - 8);
  v132 = v2;
  __chkstk_darwin(v2);
  v4 = &v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v130 - v10;
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  v164 = v1;
  v13 = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  v133 = v12;
  v134 = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__contentType;
  swift_beginAccess();
  (*(v6 + 16))(v11, v1 + v14, v5);
  static UTType.pdf.getter();
  LOBYTE(v14) = UTType.conforms(to:)();
  v15 = *(v6 + 8);
  v15(v9, v5);
  if (v14)
  {
    v15(v11, v5);
    v16 = 0;
    v17 = 2;
  }

  else
  {
    static UTType.image.getter();
    v18 = UTType.conforms(to:)();
    v15(v9, v5);
    v15(v11, v5);
    v17 = v18 & 1;
    v16 = v18 ^ 1;
  }

  if (qword_10020D100 != -1)
  {
    swift_once();
  }

  v19 = sub_100124E24(qword_10020F020, 0, v1, v17, v16 & 1) & 1;
  v20 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleMarkupActive;
  swift_beginAccess();
  if (v19 == *(v1 + v20))
  {
    *(v1 + v20) = v19;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v19;
    v163 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D108 != -1)
  {
    swift_once();
  }

  v22 = sub_100124E24(qword_10020F028, 0, v1, v17, v16 & 1) & 1;
  v23 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleFillForm;
  swift_beginAccess();
  if (v22 == *(v1 + v23))
  {
    *(v1 + v23) = v22;
  }

  else
  {
    v24 = swift_getKeyPath();
    __chkstk_darwin(v24);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v22;
    v162 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D110 != -1)
  {
    swift_once();
  }

  v25 = sub_100124E24(qword_10020F030, 0, v1, v17, v16 & 1) & 1;
  v26 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleInCanvasSelectionMode;
  swift_beginAccess();
  if (v25 == *(v1 + v26))
  {
    *(v1 + v26) = v25;
  }

  else
  {
    v27 = swift_getKeyPath();
    __chkstk_darwin(v27);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v25;
    v161 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D0B8 != -1)
  {
    swift_once();
  }

  v28 = sub_100124E24(qword_10020EFD8, 0, v1, v17, v16 & 1) & 1;
  v29 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRotateCCW;
  swift_beginAccess();
  if (v28 == *(v1 + v29))
  {
    *(v1 + v29) = v28;
  }

  else
  {
    v30 = swift_getKeyPath();
    __chkstk_darwin(v30);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v28;
    v160 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D0C0 != -1)
  {
    swift_once();
  }

  v31 = sub_100124E24(qword_10020EFE0, 0, v1, v17, v16 & 1) & 1;
  v32 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRotateCW;
  swift_beginAccess();
  if (v31 == *(v1 + v32))
  {
    *(v1 + v32) = v31;
  }

  else
  {
    v33 = swift_getKeyPath();
    __chkstk_darwin(v33);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v31;
    v159 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D090 != -1)
  {
    swift_once();
  }

  v34 = sub_100124E24(qword_10020EFB0, 0, v1, v17, v16 & 1) & 1;
  v35 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canZoomIn;
  swift_beginAccess();
  if (v34 == *(v1 + v35))
  {
    *(v1 + v35) = v34;
  }

  else
  {
    v36 = swift_getKeyPath();
    __chkstk_darwin(v36);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v34;
    v158 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D098 != -1)
  {
    swift_once();
  }

  v37 = sub_100124E24(qword_10020EFB8, 0, v1, v17, v16 & 1) & 1;
  v38 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canZoomOut;
  swift_beginAccess();
  if (v37 == *(v1 + v38))
  {
    *(v1 + v38) = v37;
  }

  else
  {
    v39 = swift_getKeyPath();
    __chkstk_darwin(v39);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v37;
    v157 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D0A0 != -1)
  {
    swift_once();
  }

  v40 = sub_100124E24(qword_10020EFC0, 0, v1, v17, v16 & 1) & 1;
  v41 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canZoomToFit;
  swift_beginAccess();
  if (v40 == *(v1 + v41))
  {
    *(v1 + v41) = v40;
  }

  else
  {
    v42 = swift_getKeyPath();
    __chkstk_darwin(v42);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v40;
    v156 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D0A8 != -1)
  {
    swift_once();
  }

  v43 = sub_100124E24(qword_10020EFC8, 0, v1, v17, v16 & 1) & 1;
  v44 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canZoomToActualSize;
  swift_beginAccess();
  if (v43 == *(v1 + v44))
  {
    *(v1 + v44) = v43;
  }

  else
  {
    v45 = swift_getKeyPath();
    __chkstk_darwin(v45);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v43;
    v155 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D120 != -1)
  {
    swift_once();
  }

  v46 = sub_100124E24(qword_10020F040, 0, v1, v17, v16 & 1) & 1;
  v47 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleAddBookmark;
  swift_beginAccess();
  if (v46 == *(v1 + v47))
  {
    *(v1 + v47) = v46;
  }

  else
  {
    v48 = swift_getKeyPath();
    __chkstk_darwin(v48);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v46;
    v154 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D138 != -1)
  {
    swift_once();
  }

  v49 = sub_100124E24(qword_10020F058, 0, v1, v17, v16 & 1) & 1;
  v50 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRemoveBackground;
  swift_beginAccess();
  if (v49 == *(v1 + v50))
  {
    *(v1 + v50) = v49;
  }

  else
  {
    v51 = swift_getKeyPath();
    __chkstk_darwin(v51);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v49;
    v153 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D0C8 != -1)
  {
    swift_once();
  }

  v52 = sub_100124E24(qword_10020EFE8, 0, v1, v17, v16 & 1) & 1;
  v53 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canFlipHorizontally;
  swift_beginAccess();
  if (v52 == *(v1 + v53))
  {
    *(v1 + v53) = v52;
  }

  else
  {
    v54 = swift_getKeyPath();
    __chkstk_darwin(v54);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v52;
    v152 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D0D0 != -1)
  {
    swift_once();
  }

  v55 = sub_100124E24(qword_10020EFF0, 0, v1, v17, v16 & 1) & 1;
  v56 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canFlipVertically;
  swift_beginAccess();
  if (v55 == *(v1 + v56))
  {
    *(v1 + v56) = v55;
  }

  else
  {
    v57 = swift_getKeyPath();
    __chkstk_darwin(v57);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v55;
    v151 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D0D8 != -1)
  {
    swift_once();
  }

  v58 = sub_100124E24(qword_10020EFF8, 0, v1, v17, v16 & 1) & 1;
  v59 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canGoToPreviousItem;
  swift_beginAccess();
  if (v58 == *(v1 + v59))
  {
    *(v1 + v59) = v58;
  }

  else
  {
    v60 = swift_getKeyPath();
    __chkstk_darwin(v60);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v58;
    v150 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D0E0 != -1)
  {
    swift_once();
  }

  v61 = sub_100124E24(qword_10020F000, 0, v1, v17, v16 & 1) & 1;
  v62 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canGoToNextItem;
  swift_beginAccess();
  if (v61 == *(v1 + v62))
  {
    *(v1 + v62) = v61;
  }

  else
  {
    v63 = swift_getKeyPath();
    __chkstk_darwin(v63);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v61;
    v149 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D0E8 != -1)
  {
    swift_once();
  }

  v64 = sub_100124E24(qword_10020F008, 0, v1, v17, v16 & 1) & 1;
  v65 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canGoToPage;
  swift_beginAccess();
  if (v64 == *(v1 + v65))
  {
    *(v1 + v65) = v64;
  }

  else
  {
    v66 = swift_getKeyPath();
    __chkstk_darwin(v66);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v64;
    v148 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D140 != -1)
  {
    swift_once();
  }

  v67 = sub_100124E24(qword_10020F060, 0, v1, v17, v16 & 1) & 1;
  v68 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canSaveToPhotos;
  swift_beginAccess();
  if (v67 == *(v1 + v68))
  {
    *(v1 + v68) = v67;
  }

  else
  {
    v69 = swift_getKeyPath();
    __chkstk_darwin(v69);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v67;
    v147 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D150 != -1)
  {
    swift_once();
  }

  v70 = 0;
  if (sub_100124E24(qword_10020F070, 0, v1, v17, v16 & 1))
  {
    swift_getKeyPath();
    v147 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v71 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
    swift_beginAccess();
    v70 = *(v1 + v71) < 2u;
  }

  v72 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canExport;
  swift_beginAccess();
  if (v70 == *(v1 + v72))
  {
    *(v1 + v72) = v70;
  }

  else
  {
    v73 = swift_getKeyPath();
    __chkstk_darwin(v73);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v70;
    v146 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D148 != -1)
  {
    swift_once();
  }

  v74 = 0;
  if (sub_100124E24(qword_10020F068, 0, v1, v17, v16 & 1))
  {
    v75 = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel_document);
    v76 = type metadata accessor for Document(0);
    v135.receiver = v75;
    v135.super_class = v76;
    v77 = objc_msgSendSuper2(&v135, "fileURL");
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v78 = objc_opt_self();
    if ([v78 isPrintingAvailable])
    {
      URL._bridgeToObjectiveC()(v79);
      v81 = v80;
      v74 = [v78 canPrintURL:v80];
    }

    else
    {
      v74 = 0;
    }

    (*(v131 + 8))(v4, v132);
  }

  v82 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canPrint;
  swift_beginAccess();
  if (v74 == *(v1 + v82))
  {
    *(v1 + v82) = v74;
  }

  else
  {
    v83 = swift_getKeyPath();
    __chkstk_darwin(v83);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v74;
    v145 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D118 != -1)
  {
    swift_once();
  }

  v84 = qword_10020F038;
  v85 = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel_document);
  v86 = &selRef_addGestureRecognizer_;
  if (([v85 documentState] | v16))
  {
    v87 = 0;
  }

  else
  {
    v88 = OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec;
    v89 = v84 + *(type metadata accessor for PreviewActionSpec(0) + 20) + v88;
    v87 = (~*(v89 + *(type metadata accessor for PreviewActionSpec.Internals(0) + 32)) & v17) == 0;
  }

  v90 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleInspectorVisible;
  swift_beginAccess();
  if (v87 == *(v1 + v90))
  {
    *(v1 + v90) = v87;
  }

  else
  {
    v91 = swift_getKeyPath();
    __chkstk_darwin(v91);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v87;
    v144 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v86 = &selRef_addGestureRecognizer_;
  }

  if (qword_10020D158 != -1)
  {
    swift_once();
  }

  v92 = qword_10020F078;
  if (([v85 v86[181]] | v16))
  {
    v93 = 0;
  }

  else
  {
    v94 = OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec;
    v95 = v92 + *(type metadata accessor for PreviewActionSpec(0) + 20) + v94;
    v93 = (~*(v95 + *(type metadata accessor for PreviewActionSpec.Internals(0) + 32)) & v17) == 0;
  }

  v96 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canShare;
  swift_beginAccess();
  if (v93 == *(v1 + v96))
  {
    *(v1 + v96) = v93;
  }

  else
  {
    v97 = swift_getKeyPath();
    __chkstk_darwin(v97);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v93;
    v143 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D160 != -1)
  {
    swift_once();
  }

  v98 = sub_100124E24(qword_10020F080, 0, v1, v17, v16 & 1) & 1;
  v99 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canSearch;
  swift_beginAccess();
  if (v98 == *(v1 + v99))
  {
    *(v1 + v99) = v98;
  }

  else
  {
    v100 = swift_getKeyPath();
    __chkstk_darwin(v100);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v98;
    v142 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D168 != -1)
  {
    swift_once();
  }

  if ((sub_100124E24(qword_10020F088, 0, v1, v17, v16 & 1) & 1) != 0 && (swift_getKeyPath(), v142 = v1, ObservationRegistrar.access<A, B>(_:keyPath:)(), , swift_beginAccess(), swift_unknownObjectWeakLoadStrong()))
  {
    swift_unknownObjectRelease();
    v101 = 1;
  }

  else
  {
    v101 = 0;
  }

  v102 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canAdjustSize;
  swift_beginAccess();
  if (v101 == *(v1 + v102))
  {
    *(v1 + v102) = v101;
  }

  else
  {
    v103 = swift_getKeyPath();
    __chkstk_darwin(v103);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v101;
    v141 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D128 != -1)
  {
    swift_once();
  }

  v104 = sub_100124E24(qword_10020F048, 0, v1, v17, v16 & 1) & 1;
  v105 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleVisualIntelligence;
  swift_beginAccess();
  if (v104 == *(v1 + v105))
  {
    *(v1 + v105) = v104;
  }

  else
  {
    v106 = swift_getKeyPath();
    __chkstk_darwin(v106);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v104;
    v140 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D130 != -1)
  {
    swift_once();
  }

  v107 = 0;
  if (sub_100124E24(qword_10020F050, 0, v1, v17, v16 & 1))
  {
    swift_getKeyPath();
    v140 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v108 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isDarkModeEnabled;
    swift_beginAccess();
    v107 = *(v1 + v108);
  }

  v109 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleDarkModeSupport;
  swift_beginAccess();
  if (v107 == *(v1 + v109))
  {
    *(v1 + v109) = v107;
  }

  else
  {
    v110 = swift_getKeyPath();
    __chkstk_darwin(v110);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v107;
    v139 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D188 != -1)
  {
    swift_once();
  }

  v111 = 0;
  if (sub_100124E24(qword_10020F0A8, 0, v1, v17, v16 & 1))
  {
    swift_getKeyPath();
    v139 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v112 = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__eligibleFPActions);
    v113 = FPActionCopy;

    v111 = sub_10012F8FC(v113, v112);
  }

  v114 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canDuplicateDocument;
  swift_beginAccess();
  v115 = v111 & 1;
  if (v115 == *(v1 + v114))
  {
    *(v1 + v114) = v115;
  }

  else
  {
    v116 = swift_getKeyPath();
    __chkstk_darwin(v116);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v115;
    v138 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D190 != -1)
  {
    swift_once();
  }

  v117 = 0;
  if (sub_100124E24(qword_10020F0B0, 0, v1, v17, v16 & 1))
  {
    swift_getKeyPath();
    v138 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v118 = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__eligibleFPActions);
    v119 = FPActionRename;

    v117 = sub_10012F8FC(v119, v118);
  }

  v120 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRenameDocument;
  swift_beginAccess();
  v121 = v117 & 1;
  if (v121 == *(v1 + v120))
  {
    *(v1 + v120) = v121;
  }

  else
  {
    v122 = swift_getKeyPath();
    __chkstk_darwin(v122);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v121;
    v137 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_10020D198 != -1)
  {
    swift_once();
  }

  v123 = 0;
  if (sub_100124E24(qword_10020F0B8, 0, v1, v17, v16 & 1))
  {
    swift_getKeyPath();
    v137 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v124 = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__eligibleFPActions);
    v125 = FPActionReparent;

    v123 = sub_10012F8FC(v125, v124);
  }

  v126 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canMoveDocument;
  result = swift_beginAccess();
  v128 = v123 & 1;
  if (v128 == *(v1 + v126))
  {
    *(v1 + v126) = v128;
  }

  else
  {
    v129 = swift_getKeyPath();
    __chkstk_darwin(v129);
    *(&v130 - 2) = v1;
    *(&v130 - 8) = v128;
    v136 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t (*sub_100119380(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001193E4;
}

uint64_t sub_100119478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__contentType;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_100117154();
  return (*(v5 + 8))(v8, v4);
}

void (*sub_1001195B4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100119380(v4);
  return sub_1001196EC;
}

uint64_t sub_1001196F8()
{
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1001197B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__exportSheetViewModel;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1001198AC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__exportSheetViewModel;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void (*sub_10011991C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100119A64;
}

uint64_t sub_100119A70()
{
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);
}

uint64_t sub_100119B18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode);
  return result;
}

BOOL sub_100119C00()
{
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) == 1;
}

uint64_t sub_100119CB0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) == 1;
  return result;
}

uint64_t sub_100119D68(uint64_t result)
{
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) != 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v4 = v1;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    LOWORD(v4) = 512;
    return sub_100115858(&v4);
  }

  else if (*(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode))
  {
    v3 = swift_getKeyPath();
    __chkstk_darwin(v3);
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

unsigned __int8 *sub_100119F60(_BYTE *a1)
{
  v3 = a1[1];
  LOBYTE(v6) = *a1;
  v2 = v6;
  BYTE1(v6) = v3;
  result = sub_100115858(&v6);
  if (v2 == 1 && *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) != 2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v6 = v1;
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t (*sub_10011A090(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(a1 + 16) = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) == 1;
  return sub_10011A160;
}

uint64_t sub_10011A188@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState + 1);
  *a1 = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState);
  a1[1] = v4;
  return result;
}

unsigned __int8 *sub_10011A248(unsigned __int8 *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return sub_100115858(v3);
}

uint64_t sub_10011A288@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState + 1);
  *a2 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState);
  a2[1] = v5;
  return result;
}

void (*sub_10011A344(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState + 1);
  *(v4 + 32) = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___formFillingState);
  *(v4 + 33) = v5;
  return sub_10011A450;
}

void sub_10011A450(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 33);
  if (a2)
  {
    v9[0] = *(*a1 + 32);
    v9[1] = v4;
    sub_100115858(v9);
    if (v3)
    {
      v5 = v2[1];
      if (*(v5 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) != 2)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *v2 = v5;
LABEL_8:
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  else
  {
    v10[0] = *(*a1 + 32);
    v10[1] = v4;
    sub_100115858(v10);
    if (v3)
    {
      v7 = v2[1];
      if (*(v7 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) != 2)
      {
        v8 = swift_getKeyPath();
        __chkstk_darwin(v8);
        *v2 = v7;
        goto LABEL_8;
      }
    }
  }

  free(v2);
}

BOOL sub_10011A5E8()
{
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) == 3;
}

uint64_t sub_10011A698@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) == 3;
  return result;
}

uint64_t sub_10011A750(uint64_t result)
{
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) == 3)
    {
      return result;
    }
  }

  else if (!*(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode))
  {
    return result;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t (*sub_10011A904(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  swift_getKeyPath();
  *a1 = v1;
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(a1 + 16) = *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__activeMode) == 3;
  return sub_10011A9D4;
}

uint64_t sub_10011AA4C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isSearchActive;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_10011AAA8(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011ABF0;
}

uint64_t sub_10011ABFC(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown) != v3)
  {
    v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isShareSheetShown;
    result = swift_beginAccess();
    if (*(v2 + v5))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v2 + v5) = 0;
    }
  }

  return result;
}

uint64_t sub_10011ADBC(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown);
  *(a1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown) = a2;
  return sub_10011ABFC(v3);
}

void (*sub_10011ADF8(uint64_t *a1))(char **a1)
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
  *(v3 + 8) = v1;
  swift_getKeyPath();
  v4[2] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[3] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown;
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isInspectorShown;
  *v4 = *(v1 + v5);
  return sub_10011AF38;
}

void sub_10011AF38(char **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v3 = *(*a1 + 1);
  v4 = **a1;
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_10011ABFC(v5);
  *v1 = *(v1 + 1);
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_10011AFCC()
{
  swift_getKeyPath();
  v11 = v0;
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isExportSheetShown;
  result = swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    swift_getKeyPath();
    v10 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__exportSheetViewModel;
    swift_beginAccess();
    swift_getKeyPath();
    v9 = v0;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v0 + v3);
    swift_getKeyPath();
    v9 = v4;
    sub_100127010(&qword_10020D5F8, type metadata accessor for ExportSheetViewModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC17PreviewFoundation20ExportSheetViewModel__supportedFormats;
    swift_beginAccess();
    v6 = *(v4 + v5);

    if (*(v6 + 16))
    {
      v7 = *(v6 + 32);
    }

    else
    {
      v7 = 5;
    }

    v8 = v7;
    sub_100104C7C(&v8);
  }

  return result;
}

uint64_t (*sub_10011B220(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10011B284;
}

uint64_t sub_10011B2D8(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isExportSheetShown;
  swift_beginAccess();
  *(a1 + v4) = a2;
  return sub_10011AFCC();
}

void (*sub_10011B33C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_10011B220(v4);
  return sub_10011B474;
}

void (*sub_10011B4D0(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011B618;
}

void (*sub_10011B674(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011B7BC;
}

void (*sub_10011B818(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011B960;
}

void (*sub_10011B9BC(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011BB04;
}

uint64_t sub_10011BB38@<X0>(uint64_t *a1@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v10 = v3;
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v10 + v7, v8);
}

uint64_t sub_10011BC60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  v9 = a3(0);
  return (*(*(v9 - 8) + 16))(a4, v7 + v8, v9);
}

uint64_t sub_10011BD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10011BE64(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__itemForPresentedShareSheet;
  swift_beginAccess();
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

void (*sub_10011BF00(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011C048;
}

uint64_t sub_10011C0A4(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isVisualIntelligenceActive;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_10011C100(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011C248;
}

uint64_t sub_10011C2B4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_10011C354@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_10011C408(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___isVisualSearchActive) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___isVisualSearchActive) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void (*sub_10011C520(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___isVisualSearchActive;
  *(v4 + 32) = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___isVisualSearchActive;
  *(v4 + 40) = *(v1 + v5);
  return sub_10011C624;
}

void sub_10011C624(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 40);
  if (a2)
  {
    if ((v5 ^ *(v4 + v3)))
    {
      goto LABEL_5;
    }

LABEL_6:
    *(v4 + v3) = v5;
    goto LABEL_7;
  }

  if (((v5 ^ *(v4 + v3)) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_5:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  *v2 = v4;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_7:
  free(v2);
}

uint64_t sub_10011C7CC(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__hasDetectedForm;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_10011C828(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011C970;
}

uint64_t sub_10011C9CC(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__hasDetectedSubjectInContext;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void (*sub_10011CA28(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011CB70;
}

uint64_t sub_10011CB7C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isExportSheetShown;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    return 1;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isResizeSheetShown;
  swift_beginAccess();
  if (*(v1 + v3))
  {
    return 1;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isShareSheetShown;
  swift_beginAccess();
  if (*(v1 + v4))
  {
    return 1;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isDuplicateSheetShown;
  swift_beginAccess();
  if (*(v1 + v5))
  {
    return 1;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isMoveSheetShown;
  swift_beginAccess();
  if (*(v1 + v6))
  {
    return 1;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isGoToPageChooserShown;
  swift_beginAccess();
  return *(v1 + v8);
}

uint64_t (*sub_10011CE04(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100128C18;
}

void (*sub_10011CEB8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_10011CE04(v4);
  return sub_10011CFF0;
}

uint64_t (*sub_10011CFFC(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100128C18;
}

uint64_t sub_10011D060(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_10011D0A4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  result = swift_beginAccess();
  *a1 = *(v5 + v3);
  return result;
}

uint64_t sub_10011D168@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10011D264(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__encryptionState;
  swift_beginAccess();
  *(a1 + v4) = a2;
  return sub_100117154();
}

void (*sub_10011D2C8(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_10011CFFC(v4);
  return sub_10011D400;
}

void (*sub_10011D420(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isDarkModeSupportEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_10011D4A8;
}

void sub_10011D4A8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = [objc_opt_self() standardUserDefaults];
    swift_getKeyPath();
    *v3 = v5;
    sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *v3 = *(v5 + v4);
    v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v8 = String._bridgeToObjectiveC()();
    [v6 setObject:v7 forKey:v8];

    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_10011D638(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__isDarkModeSupportEnabled;
  swift_beginAccess();
  *(a1 + v4) = a2;
  v5 = [objc_opt_self() standardUserDefaults];
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = String._bridgeToObjectiveC()();
  [v5 setObject:v6 forKey:v7];

  swift_unknownObjectRelease();
}

void (*sub_10011D798(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_10011D420(v4);
  return sub_10011D8D0;
}

uint64_t sub_10011D8DC()
{
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__searchText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_10011D9AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__searchText);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t sub_10011DA78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1001164B4(v1, v2);
}

uint64_t sub_10011DAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__searchText);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

void (*sub_10011DB2C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011DC74;
}

void (*sub_10011DC80(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10011DD20;
}

void sub_10011DD20(uint64_t a1, char a2)
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
    sub_100117154();
  }

  free(v3);
}

uint64_t sub_10011DDB0()
{
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10011DE78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_10011DF48()
{
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10011E018()
{
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t sub_10011E0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__delegate;
  swift_beginAccess();
  *(v4 + 8) = a3;
  swift_unknownObjectWeakAssign();
  return sub_100117154();
}

void (*sub_10011E178(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_10011DC80(v4);
  return sub_10011E2B0;
}

void (*sub_10011E30C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011E454;
}

void (*sub_10011E4B0(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011E5F8;
}

void (*sub_10011E654(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011E79C;
}

void (*sub_10011E7F8(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011E940;
}

void (*sub_10011E99C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011EAE4;
}

void (*sub_10011EB40(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011EC88;
}

void (*sub_10011ECE4(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011EE2C;
}

void (*sub_10011EE88(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011EFD0;
}

void (*sub_10011F02C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011F174;
}

void (*sub_10011F1D0(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011F318;
}

void (*sub_10011F374(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011F4BC;
}

void (*sub_10011F518(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011F660;
}

void (*sub_10011F6BC(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011F804;
}

void (*sub_10011F860(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011F9A8;
}

void (*sub_10011FA04(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011FB4C;
}

void (*sub_10011FBA8(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011FCF0;
}

void (*sub_10011FD4C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10011FE94;
}

void (*sub_10011FEF0(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100120038;
}

void (*sub_100120080(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1001201C8;
}

void (*sub_100120224(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10012036C;
}

void (*sub_1001203C8(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100120510;
}

void (*sub_10012056C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1001206B4;
}

void (*sub_100120710(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100120858;
}

void (*sub_1001208B4(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1001209FC;
}

void (*sub_100120A58(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100120BA0;
}

void (*sub_100120BFC(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100120D44;
}

void (*sub_100120DA0(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100120EE8;
}

void (*sub_100120F44(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_10012108C;
}

void (*sub_1001210E8(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100121230;
}

void (*sub_10012128C(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1001213D4;
}

uint64_t sub_1001213F4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_1001214BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void (*sub_1001215AC(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_1001216F4;
}

uint64_t sub_100121700(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for RotateAction(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    if (*(v4 + *(*v4 + 104)) == 1)
    {
      swift_getKeyPath();
      v24[0] = v1;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRotateCCW;
    }

    else
    {
      swift_getKeyPath();
      v24[0] = v1;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRotateCW;
    }

    goto LABEL_14;
  }

  type metadata accessor for FlipContentAction(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    if (*(v6 + *(*v6 + 104)))
    {
      swift_getKeyPath();
      v24[0] = v1;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canFlipVertically;
    }

    else
    {
      swift_getKeyPath();
      v24[0] = v1;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canFlipHorizontally;
    }

    goto LABEL_14;
  }

  type metadata accessor for ZoomAction(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = *(v7 + *(*v7 + 104));
    if (v8 <= 1)
    {
      if (*(v7 + *(*v7 + 104)))
      {
        swift_getKeyPath();
        v24[0] = v1;
        sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canZoomOut;
      }

      else
      {
        swift_getKeyPath();
        v24[0] = v1;
        sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canZoomIn;
      }

      goto LABEL_14;
    }

    if (v8 == 2)
    {
      swift_getKeyPath();
      v24[0] = v1;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canZoomToFit;
      goto LABEL_14;
    }

    if (v8 == 3)
    {
      swift_getKeyPath();
      v24[0] = v1;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canZoomToActualSize;
LABEL_14:
      swift_beginAccess();
      return *(v2 + v5);
    }

    return 1;
  }

  else
  {
    type metadata accessor for GoToAction(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10 + *(*v10 + 104);
      if (*(v11 + 9) == 1)
      {
        if (*v11 | *(v11 + 8))
        {
          swift_getKeyPath();
          v24[0] = v1;
          sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canGoToNextItem;
        }

        else
        {
          swift_getKeyPath();
          v24[0] = v1;
          sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canGoToPreviousItem;
        }
      }

      else
      {
        swift_getKeyPath();
        v24[0] = v1;
        sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canGoToPage;
      }

      goto LABEL_14;
    }

    type metadata accessor for UndoManagerAction(0);
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      if (*(v12 + *(*v12 + 104)) == 1)
      {
        swift_getKeyPath();
        v24[0] = v1;
        sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRedo;
      }

      else
      {
        swift_getKeyPath();
        v24[0] = v1;
        sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canUndo;
      }

      goto LABEL_14;
    }

    if (qword_10020D148 != -1)
    {
      swift_once();
    }

    v13 = *(a1 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec);
    v14 = *(a1 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8);
    v15 = *(qword_10020F068 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F068 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canPrint;
      goto LABEL_14;
    }

    if (qword_10020D158 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F078 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F078 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canShare;
      goto LABEL_14;
    }

    if (qword_10020D140 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F060 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F060 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canSaveToPhotos;
      goto LABEL_14;
    }

    if (qword_10020D138 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F058 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F058 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRemoveBackground;
      goto LABEL_14;
    }

    if (qword_10020D150 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F070 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F070 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canExport;
      goto LABEL_14;
    }

    if (qword_10020D160 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F080 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F080 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canSearch;
      goto LABEL_14;
    }

    if (qword_10020D168 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F088 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F088 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canAdjustSize;
      goto LABEL_14;
    }

    if (qword_10020D118 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F038 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F038 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleInspectorVisible;
      goto LABEL_14;
    }

    if (qword_10020D100 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F020 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F020 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleMarkupActive;
      goto LABEL_14;
    }

    if (qword_10020D188 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F0A8 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F0A8 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canDuplicateDocument;
      goto LABEL_14;
    }

    if (qword_10020D190 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F0B0 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F0B0 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canRenameDocument;
      goto LABEL_14;
    }

    if (qword_10020D198 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F0B8 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F0B8 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canMoveDocument;
      goto LABEL_14;
    }

    if (qword_10020D108 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F028 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F028 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleFillForm;
      goto LABEL_14;
    }

    if (qword_10020D110 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F030 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F030 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleInCanvasSelectionMode;
      goto LABEL_14;
    }

    if (qword_10020D120 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F040 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F040 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleAddBookmark;
      goto LABEL_14;
    }

    if (qword_10020D128 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F048 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F048 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleVisualIntelligence;
      goto LABEL_14;
    }

    if (qword_10020D130 != -1)
    {
      swift_once();
    }

    if (*(qword_10020F050 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec) == v13 && *(qword_10020F050 + OBJC_IVAR____TtC17PreviewFoundation13PreviewAction_spec + 8) == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      v24[0] = v2;
      sub_100127010(&qword_10020DAD8, type metadata accessor for ToolbarViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = OBJC_IVAR____TtC17PreviewFoundation16ToolbarViewModel__canToggleDarkModeSupport;
      goto LABEL_14;
    }

    if (qword_10020D058 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100101048(v16, qword_10020E660);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24[0] = v20;
      *v19 = 136315138;
      v24[3] = a1;
      type metadata accessor for PreviewAction(0);

      v21 = String.init<A>(describing:)();
      v23 = sub_100125658(v21, v22, v24);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_100000000, v17, v18, "Got unexpected action (%s) in canPerform() invocation", v19, 0xCu);
      sub_10010FA4C(v20);
    }

    return 0;
  }
}