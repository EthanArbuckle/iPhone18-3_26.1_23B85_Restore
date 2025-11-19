uint64_t sub_10036A738(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_100784360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10036A7A0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000035 && 0x80000001006C8710 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0x1000000000000054;
  }

  if (a1 == 0xD000000000000048 && 0x80000001006C8820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0x1000000000000059;
  }

  if (a1 == 0xD000000000000038 && 0x80000001006C86D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0x100000000000008DLL;
  }

  if (a1 == 0xD000000000000040 && 0x80000001006C8680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0x1000000000000085;
  }

  if (a1 == 0xD000000000000047 && 0x80000001006C87D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0xD000000000000035;
  }

  if (a1 == 0xD00000000000003CLL && 0x80000001006C8640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0xD00000000000002DLL;
  }

  if (a1 == 0xD000000000000043 && 0x80000001006C85F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0xD000000000000017;
  }

  if (a1 == 0xD000000000000044 && 0x80000001006C85A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0xD00000000000002DLL;
  }

  if (a1 == 0xD000000000000044 && 0x80000001006C8550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0xD000000000000017;
  }

  if (a1 == 0xD000000000000045 && 0x80000001006C8500 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0xD000000000000034;
  }

  v6 = 0x65766F72707041;
  if (a1 == 0xD000000000000025 && 0x80000001006C9F70 == a2)
  {
    return v6;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return v6;
  }

  v6 = 0x656E696C636544;
  if (a1 == 0xD000000000000025 && 0x80000001006C9F10 == a2)
  {
    return v6;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return v6;
  }

  if (a1 == 0xD000000000000049 && 0x80000001006C84B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 0x1000000000000028;
  }

  if (a1 == 0xD000000000000038 && 0x80000001006CA150 == a2)
  {
    return 0x6DA0C26E7261654CLL;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0x6DA0C26E7261654CLL;
  if ((v7 & 1) == 0)
  {
    if (a1 == 0xD00000000000003BLL && 0x80000001006C8790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0xD000000000000011;
    }

    else if (a1 == 0xD00000000000003ALL && 0x80000001006C8750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0xD000000000000062;
    }

    else if (a1 == 0xD000000000000040 && 0x80000001006C8460 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0xD000000000000014;
    }

    else if (a1 == 0xD00000000000003FLL && 0x80000001006C8420 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 0xD000000000000098;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10036AE70(uint64_t a1)
{
  if ((*(a1 + 64) & 0x3Fu) <= 0x28)
  {
    return *(a1 + 64) & 0x3F;
  }

  else
  {
    return (*a1 + 41);
  }
}

__n128 sub_10036AE8C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10036AEB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD7 && *(a1 + 65))
  {
    return (*a1 + 215);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0x29)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10036AEF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD6)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 215;
    if (a3 >= 0xD7)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD7)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_10036AF50(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x29)
  {
    *result = a2 - 41;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 41;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t sub_10036AF8C()
{
  v0 = type metadata accessor for SecureButtonTag.ButtonImagePlacement();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  SecureButtonTag.imagePlacement.getter();
  v7 = *(v1 + 104);
  v7(v4, enum case for SecureButtonTag.ButtonImagePlacement.top(_:), v0);
  sub_10036BAEC(&qword_100784FC0, &type metadata accessor for SecureButtonTag.ButtonImagePlacement);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = *(v1 + 8);
  v8(v4, v0);
  result = (v8)(v6, v0);
  if (v10[1] != v10[0])
  {
    SecureButtonTag.imagePlacement.getter();
    v7(v4, enum case for SecureButtonTag.ButtonImagePlacement.bottom(_:), v0);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v8(v4, v0);
    return (v8)(v6, v0);
  }

  return result;
}

id sub_10036B1FC(void *a1)
{
  v3 = *(v1 + 1);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = v1[7];
  v6 = *(v1 + 2);
  v7 = String._bridgeToObjectiveC()();
  sub_1001F0C48(&qword_100781718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069F6E0;
  *(inited + 32) = kCTFontAttributeName;
  type metadata accessor for CTFont(0);
  *(inited + 40) = v6;
  *(inited + 64) = v9;
  *(inited + 72) = kCTForegroundColorAttributeName;
  type metadata accessor for CGColor(0);
  *(inited + 104) = v10;
  *(inited + 80) = a1;
  v11 = kCTFontAttributeName;
  v12 = v6;
  v13 = kCTForegroundColorAttributeName;
  v14 = a1;
  sub_1005289DC(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100781720);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_10036BAEC(&qword_10077E8A8, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [objc_allocWithZone(UISTextLineDrawing) initWithString:v7 attributes:isa lineBreakMode:2 textAlignment:0 width:NAN scale:v5];

  return v16;
}

void sub_10036B3D4(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1001F0C48(&qword_100781708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = kCTFontNameAttribute;
  v7 = kCTFontNameAttribute;
  *(inited + 40) = [a1 fontContentSizeCategory];
  sub_10052A2DC(inited);
  swift_setDeallocating();
  sub_10036BA84(inited + 32);
  type metadata accessor for CFString(0);
  sub_10036BAEC(&qword_10077E8A8, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = CTFontDescriptorCreateWithAttributes(isa);

  SecureButtonTag.fontSize.getter();
  v78 = v9;
  v81 = CTFontCreateWithFontDescriptor(v9, v10, 0);
  v76 = [a1 fontContentSizeCategory];
  v11 = [a1 displayScale];
  v12 = SecureButtonTag.label.getter();
  v14 = v13;

  SecureButtonTag.imageName.getter();
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();

    v17 = [a1 assetGlyphWithName:v16 glyphSize:3 textStyle:kCTUIFontTextStyleShortBody];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  v20 = GenericRGB;
  if (v17)
  {
    v79 = [objc_allocWithZone(UISVectorGlyphDrawing) initWithVectorGlyph:v18 tintColor:GenericRGB];
  }

  else
  {
    v79 = 0;
  }

  v77 = v17;
  v21 = v11;
  v22 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v22 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v74 = String._bridgeToObjectiveC()();
    sub_1001F0C48(&qword_100781718);
    v23 = a1;
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10069F6E0;
    *(v24 + 32) = kCTFontAttributeName;
    type metadata accessor for CTFont(0);
    v73 = v14;
    *(v24 + 40) = v81;
    *(v24 + 64) = v25;
    *(v24 + 72) = kCTForegroundColorAttributeName;
    type metadata accessor for CGColor(0);
    *(v24 + 104) = v26;
    *(v24 + 80) = v20;
    v72 = v81;
    v27 = kCTFontAttributeName;
    v28 = kCTForegroundColorAttributeName;
    v29 = v20;
    sub_1005289DC(v24);
    a1 = v23;
    swift_setDeallocating();
    sub_1001F0C48(&qword_100781720);
    swift_arrayDestroy();
    v30 = Dictionary._bridgeToObjectiveC()().super.isa;

    v31 = [objc_allocWithZone(UISTextLineDrawing) initWithString:v74 attributes:v30 lineBreakMode:2 textAlignment:0 width:NAN scale:v21];

    v32 = v73;

    if (v31)
    {
      v33 = v79;
      if (v79)
      {
        [v79 drawingSize];
        [v31 drawingSize];
        sub_10036AF8C();
        v35 = v34;
        v37 = v36;
        [v79 alignmentRect];
        [v31 alignmentRect];
        v38 = v37;
        sub_10036AF8C();
        v40 = v39;
        v42 = v41;
        [v79 alignmentRect];
        [v79 alignmentRect];
        [v31 alignmentRect];
        v43 = v42;
        sub_10036AF8C();
        v45 = v44;
        v47 = v46;
      }

      else
      {
        [v31 drawingSize];
        v35 = v54;
        v38 = v55;
        [v31 alignmentRect];
        v40 = v56;
        v43 = v57;
        [v31 alignmentRect];
        v45 = v58;
        v47 = v59;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v32 = v14;
  }

  v33 = v79;
  if (v79)
  {
    [v79 drawingSize];
    v35 = v48;
    v38 = v49;
    [v79 alignmentRect];
    v40 = v50;
    v43 = v51;
    [v79 alignmentRect];
    v45 = v52;
    [v79 alignmentRect];
    v47 = v53;
    v31 = 0;
  }

  else
  {
    v31 = 0;
    v47 = 0.0;
    v45 = 0.0;
    v38 = 0.0;
    v35 = 0.0;
    v40 = 0.0;
    v43 = 0.0;
  }

LABEL_18:
  v60 = [a1 preferredContentSizeCategory];
  v61 = 0.0;
  if (v60 >= 7)
  {
    v62 = [a1 preferredContentSizeCategory];
    if (v62 < 7)
    {
      __break(1u);
      return;
    }

    v61 = (v62 - 6) * 4.0;
  }

  if (1.0 / v21 <= 1.0)
  {
    v63 = 1.0 / v21;
  }

  else
  {
    v63 = 1.0;
  }

  v64 = v40 + 32.0 + v61;
  if (v64 <= v35)
  {
    v64 = v35;
  }

  v80 = v64;
  v65 = v43 + 16.0;
  if (v43 + 16.0 <= v38)
  {
    v65 = v38;
  }

  v75 = v65;
  SecureButtonTag.borderWidth.getter();
  v67 = v45 + 16.0 + v66 + v66;
  if (v67 > v35)
  {
    v68 = v67;
  }

  else
  {
    v68 = v35;
  }

  SecureButtonTag.borderWidth.getter();
  v70 = v69;

  v71 = v47 + 16.0 + v70 + v70;
  if (v71 <= v38)
  {
    v71 = v38;
  }

  *a3 = v12;
  *(a3 + 8) = v32;
  *(a3 + 16) = v81;
  *(a3 + 24) = v77;
  *(a3 + 32) = v40;
  *(a3 + 40) = v43;
  *(a3 + 48) = v76;
  *(a3 + 56) = v21;
  *(a3 + 64) = v80;
  *(a3 + 72) = v75;
  *(a3 + 80) = v68 - v63;
  *(a3 + 88) = v71 - v63;
}

uint64_t sub_10036BA84(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_100781710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10036BAEC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10036BB34(char a1)
{
  if (a1 == 1)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      v2 = objc_allocWithZone(NSUserDefaults);
      v3 = String._bridgeToObjectiveC()();

      v4 = [v2 initWithSuiteName:v3];

      return v4;
    }
  }

  return [objc_opt_self() standardUserDefaults];
}

uint64_t sub_10036BCD8(uint64_t a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(18);

  strcpy(v9, "Error code: ");
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = a2;
  v7._object = a3;
  String.append(_:)(v7);
  return v9[0];
}

uint64_t sub_10036BDA0(uint64_t a1)
{
  v2 = sub_10036E5F0();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10036BDDC(uint64_t a1)
{
  v2 = sub_10036E5F0();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_10036BE24()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  sub_1001F0C48(&unk_100784480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v4;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  v5 = sub_100528684(inited);
  swift_setDeallocating();
  sub_1000032A8(inited + 32, &unk_10077F9B0);
  return v5;
}

void sub_10036BEFC(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v29 = a4;
  v7 = type metadata accessor for URL.DirectoryHint();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for URL();
  v31 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v36 = sub_1001F0C48(&qword_1007813C0);
  v37 = sub_100361EA4();
  LOWORD(v34) = 1;
  *(&v34 + 1) = a2;
  v35 = a3;
  sub_1001F0C48(&qword_1007813D0);
  inited = swift_initStackObject();
  v33 = xmmword_10069E680;
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v34, inited + 32);
  sub_1001F0C48(&qword_1007813D8);
  v14 = swift_initStackObject();
  *(v14 + 16) = v33;
  *(v14 + 32) = inited;

  v15 = sub_1005AEA84(v14);
  swift_setDeallocating();
  sub_1000032A8(v14 + 32, &qword_10077FA00);
  v16 = sub_100513920(0, 0, v15, sub_1005138AC, 0, v12);

  if (v16 && (v17 = v16, v18 = sub_100511A44(2, v17), v20 = v19, v17, (v20 & 1) == 0))
  {
    type metadata accessor for LicenseStorageDatabaseTransaction(0);
    *&v34 = v18;
    *&v34 = dispatch thunk of CustomStringConvertible.description.getter();
    *(&v34 + 1) = v21;
    v22 = v30;
    (*(v30 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
    sub_100005E50();
    URL.appending<A>(component:directoryHint:)();
    (*(v22 + 8))(v9, v7);

    v23 = v38;
    v24 = Data.init(contentsOf:options:)();
    if (v23)
    {
      (*(v31 + 8))(v11, v32);
    }

    else
    {
      v26 = v24;
      v27 = v25;
      (*(v31 + 8))(v11, v32);

      v28 = v29;
      *v29 = v26;
      v28[1] = v27;
    }
  }

  else
  {
    type metadata accessor for InternalError();
    sub_10036E4F4(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_10036C328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 112) = v13;
  *(v8 + 96) = v12;
  *(v8 + 80) = a6;
  *(v8 + 88) = a8;
  *(v8 + 236) = a7;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 40) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 120) = v9;
  *(v8 + 128) = *(v9 - 8);
  *(v8 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_10036C438, 0, 0);
}

uint64_t sub_10036C438()
{
  *(v0 + 200) = *(v0 + 40);
  *(v0 + 32) = 0;
  *(v0 + 232) = 0;
  v1 = *(v0 + 236);
  *(v0 + 216) = *(v0 + 56);
  v2 = sub_10020A9E4((v0 + 200), 32);
  v4 = v3;
  *(v0 + 144) = v2;
  *(v0 + 152) = v3;
  if (v1 == 1)
  {
    v6 = *(v0 + 72);
    v5 = *(v0 + 80);
    sub_10020ABFC(v6, v5);
    v7 = sub_1005F1ED0(v6, v5);
    sub_10020ABFC(v2, v4);
    v8 = sub_1005F1ED0(v2, v4);
    v9 = v8[2];
    if (HIDWORD(v9))
    {
      __break(1u);
    }

    else
    {
      v10 = v7[2];
      if (!HIDWORD(v10))
      {
        sub_10004EAC8((v8 + 4), v9, (v7 + 4), v10, v0 + 32, v0 + 232);
        v12 = v11;

        if (v12)
        {
          v14 = *(v0 + 88);
          v13 = *(v0 + 96);
          _StringGuts.grow(_:)(34);

          v15._countAndFlagsBits = v14;
          v15._object = v13;
          String.append(_:)(v15);
          sub_1002FF858();
          swift_allocError();
          *v16 = v12;
          *(v16 + 8) = 0xD000000000000020;
          *(v16 + 16) = 0x80000001006CA270;
LABEL_8:
          swift_willThrow();
          v23 = v2;
          v24 = v4;
LABEL_9:
          sub_100007158(v23, v24);

          v25 = *(v0 + 8);

          return v25();
        }

        v31 = *(v0 + 32);
        if (!v31)
        {
          v40 = *(v0 + 144);
          v41 = *(v0 + 152);
          v42 = type metadata accessor for MarketplaceKitError();
          sub_10036E4F4(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
          swift_allocError();
          (*(*(v42 - 8) + 104))(v43, enum case for MarketplaceKitError.featureUnavailable(_:), v42);
          swift_willThrow();
          v23 = v40;
          v24 = v41;
          goto LABEL_9;
        }

        v32 = *(v0 + 236);
        v33 = sub_100396364(*(v0 + 232), *(v0 + 32));
        v34 = sub_1005F3F28(v33);
        v36 = v35;

        if (v32 == 1)
        {
          v37 = sub_10002B7E0(v31);
          if (v37 != noErr.getter())
          {
            static Logger.daemon.getter();
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.error.getter();
            v48 = os_log_type_enabled(v46, v47);
            v50 = *(v0 + 144);
            v49 = *(v0 + 152);
            if (v48)
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              *v51 = 138412546;
              v53 = sub_100625FA0();
              *(v51 + 4) = v53;
              *v52 = v53;
              *(v51 + 12) = 1026;
              *(v51 + 14) = v37;
              _os_log_impl(&_mh_execute_header, v46, v47, "[%@] Unable to dispose of provisioning data: %{public}d", v51, 0x12u);
              sub_1000032A8(v52, &qword_10077F920);

              sub_100007158(v50, v49);
            }

            else
            {
              sub_100007158(*(v0 + 144), *(v0 + 152));
            }

            (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
            goto LABEL_26;
          }

          v38 = *(v0 + 144);
          v39 = *(v0 + 152);
        }

        else
        {
          v45 = *(v0 + 144);
          v44 = *(v0 + 152);
          qENIaLkr();
          v38 = v45;
          v39 = v44;
        }

        sub_100007158(v38, v39);
LABEL_26:

        v54 = *(v0 + 8);

        return v54(v34, v36);
      }
    }

    __break(1u);
  }

  *(v0 + 160) = sub_10060C8EC();
  *(v0 + 168) = v17;
  if (v17 >> 60 == 15)
  {
    v19 = *(v0 + 88);
    v18 = *(v0 + 96);
    type metadata accessor for InternalError();
    sub_10036E4F4(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v21 = v20;
    _StringGuts.grow(_:)(28);

    v22._countAndFlagsBits = v19;
    v22._object = v18;
    String.append(_:)(v22);
    *v21 = 0xD00000000000001ALL;
    v21[1] = 0x80000001006CA250;
    swift_storeEnumTagMultiPayload();
    goto LABEL_8;
  }

  v28 = *(v0 + 88);
  v27 = *(v0 + 96);
  v29 = swift_task_alloc();
  *(v0 + 176) = v29;
  *(v29 + 16) = v28;
  *(v29 + 24) = v27;
  v30 = swift_task_alloc();
  *(v0 + 184) = v30;
  *v30 = v0;
  v30[1] = sub_10036CA94;

  return sub_1003B2E3C(v0 + 16, sub_10036E648, v29);
}

uint64_t sub_10036CA94()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_10036D1FC;
  }

  else
  {

    v2 = sub_10036CBE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10036CBE4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (qword_10077E580 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  sub_10020ABFC(v4, v3);
  v9 = sub_1005F1ED0(v4, v3);
  sub_10020ABFC(v2, v1);
  v10 = sub_1005F1ED0(v2, v1);
  sub_10020ABFC(v8, v7);
  v11 = sub_1005F1ED0(v8, v7);
  sub_10020ABFC(v6, v5);
  if (HIDWORD(sub_1005F1ED0(v6, v5)[2]))
  {
    __break(1u);
    goto LABEL_53;
  }

  if (HIDWORD(v11[2]))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v12 = *(v0 + 168) >> 62;
  if (v12 <= 1)
  {
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (v12 != 2)
  {
    goto LABEL_17;
  }

  v13 = *(*(v0 + 160) + 16);
  v14 = *(*(v0 + 160) + 24);
  v15 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
    __break(1u);
LABEL_12:
    v16 = *(v0 + 160);
    v17 = *(v0 + 164);
    v18 = __OFSUB__(v17, v16);
    v19 = v17 - v16;
    if (v18)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
    }

    v15 = v19;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (HIDWORD(v15))
  {
    __break(1u);
  }

LABEL_17:
  v20 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_29;
    }

    v22 = *(v2 + 16);
    v21 = *(v2 + 24);
    v23 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  else if (!v20)
  {
    goto LABEL_29;
  }

  if (__OFSUB__(HIDWORD(v2), v2))
  {
    goto LABEL_57;
  }

  v23 = HIDWORD(v2) - v2;
LABEL_26:
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (HIDWORD(v23))
  {
    __break(1u);
  }

LABEL_29:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003627B0(0, *(v9 + 2), 0, v9);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003627B0(0, *(v10 + 2), 0, v10);
  }

  v59 = *(v0 + 192);
  v25 = *(v0 + 88);
  v24 = *(v0 + 96);
  v26 = g4Bksweo();
  swift_bridgeObjectRelease_n();

  sub_1005F4F84(v26, v25, v24);
  v28 = *(v0 + 160);
  v27 = *(v0 + 168);
  if (v59)
  {
    v30 = *(v0 + 144);
    v29 = *(v0 + 152);

    sub_100007158(v2, v1);
    sub_10020B0E0(v28, v27);
    v31 = v30;
    v32 = v29;
LABEL_35:
    sub_100007158(v31, v32);

    v33 = *(v0 + 8);

    return v33();
  }

  sub_100007158(v2, v1);
  sub_10020B0E0(v28, v27);
  v35 = *(v0 + 32);
  if (!v35)
  {
    v44 = *(v0 + 144);
    v45 = *(v0 + 152);
    v46 = type metadata accessor for MarketplaceKitError();
    sub_10036E4F4(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v46 - 8) + 104))(v47, enum case for MarketplaceKitError.featureUnavailable(_:), v46);
    swift_willThrow();
    v31 = v44;
    v32 = v45;
    goto LABEL_35;
  }

  v36 = *(v0 + 236);
  v37 = sub_100396364(*(v0 + 232), *(v0 + 32));
  v38 = sub_1005F3F28(v37);
  v40 = v39;

  if (v36 == 1)
  {
    v41 = sub_10002B7E0(v35);
    if (v41 != noErr.getter())
    {
      static Logger.daemon.getter();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      v52 = os_log_type_enabled(v50, v51);
      v54 = *(v0 + 144);
      v53 = *(v0 + 152);
      if (v52)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412546;
        v57 = sub_100625FA0();
        *(v55 + 4) = v57;
        *v56 = v57;
        *(v55 + 12) = 1026;
        *(v55 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v50, v51, "[%@] Unable to dispose of provisioning data: %{public}d", v55, 0x12u);
        sub_1000032A8(v56, &qword_10077F920);

        sub_100007158(v54, v53);
      }

      else
      {
        sub_100007158(*(v0 + 144), *(v0 + 152));
      }

      (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
      goto LABEL_49;
    }

    v42 = *(v0 + 144);
    v43 = *(v0 + 152);
  }

  else
  {
    v49 = *(v0 + 144);
    v48 = *(v0 + 152);
    qENIaLkr();
    v42 = v49;
    v43 = v48;
  }

  sub_100007158(v42, v43);
LABEL_49:

  v58 = *(v0 + 8);

  return v58(v38, v40);
}

uint64_t sub_10036D1FC()
{
  v1 = v0[21];
  v2 = v0[20];
  sub_100007158(v0[18], v0[19]);
  sub_10020B0E0(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10036D2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[16] = a2;
  v7[17] = a3;
  v7[15] = a1;

  return _swift_task_switch(sub_10036D354, 0, 0);
}

uint64_t sub_10036D354()
{
  v1 = audit_token_t.signingIdentifier.getter(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  *(v0 + 176) = v1;
  *(v0 + 184) = v2;
  if (!v2)
  {
    v6 = type metadata accessor for MarketplaceKitError();
    sub_10036E4F4(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for MarketplaceKitError.featureUnavailable(_:), v6);
    swift_willThrow();
LABEL_4:
    v8 = *(v0 + 8);

    return v8();
  }

  v3 = v1;
  v4 = v2;
  v5 = objc_allocWithZone(LSApplicationRecord);

  *(v0 + 192) = sub_10049E57C(v3, v4, 0);
  sub_10061A948(v0 + 56);
  if (!*(v0 + 80))
  {
    sub_1000032A8(v0 + 56, &unk_10077FA50);
    v12 = swift_task_alloc();
    *(v0 + 288) = v12;
    *v12 = v0;
    v13 = sub_10036E264;
    goto LABEL_11;
  }

  sub_1001DFDBC((v0 + 56), v0 + 16);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  sub_100006D8C((v0 + 16), v10);
  if ((*(v11 + 48))(v10, v11))
  {
    v12 = swift_task_alloc();
    *(v0 + 200) = v12;
    *v12 = v0;
    v13 = sub_10036D888;
LABEL_11:
    v12[1] = v13;
    v14 = *(v0 + 160);
    v15 = *(v0 + 144);
    v16 = *(v0 + 152);
    v17 = *(v0 + 128);
    v18 = *(v0 + 136);
    v19 = *(v0 + 120);

    return sub_10036C328(v19, v17, v18, v15, v16, v14, 1, v3);
  }

  v21 = *(v0 + 136);
  v20 = *(v0 + 144);
  v23 = *(v0 + 120);
  v22 = *(v0 + 128);
  *(v0 + 112) = 0;
  *(v0 + 352) = 0;
  *(v0 + 320) = v23;
  *(v0 + 328) = v22;
  *(v0 + 336) = v21;
  *(v0 + 344) = v20;
  v24 = sub_10020A9E4((v0 + 320), 32);
  v26 = v25;
  *(v0 + 232) = v24;
  *(v0 + 240) = v25;
  *(v0 + 248) = sub_10060C8EC();
  *(v0 + 256) = v27;
  if (v27 >> 60 == 15)
  {
    type metadata accessor for InternalError();
    sub_10036E4F4(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    v29 = v28;
    _StringGuts.grow(_:)(28);

    v30._countAndFlagsBits = v3;
    v30._object = v4;
    String.append(_:)(v30);

    *v29 = 0xD00000000000001ALL;
    v29[1] = 0x80000001006CA250;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_100007158(v24, v26);

    sub_10000710C(v0 + 16);
    goto LABEL_4;
  }

  v31 = swift_task_alloc();
  *(v0 + 264) = v31;
  *(v31 + 16) = v3;
  *(v31 + 24) = v4;
  v32 = swift_task_alloc();
  *(v0 + 272) = v32;
  *v32 = v0;
  v32[1] = sub_10036DB38;

  return sub_1003B2E3C(v0 + 96, sub_10036E53C, v31);
}

uint64_t sub_10036D888(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 208) = v2;

  if (v2)
  {
    v7 = sub_10036DAA0;
  }

  else
  {
    *(v6 + 216) = a2;
    *(v6 + 224) = a1;
    v7 = sub_10036DA04;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10036DA04()
{
  sub_10000710C(v0 + 16);
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_10036DAA0()
{
  sub_10000710C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036DB38()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10036E18C;
  }

  else
  {

    v2 = sub_10036DC88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10036DC88()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  if (qword_10077E580 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v6 = *(v0 + 232);
  v5 = *(v0 + 240);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  sub_10020ABFC(v4, v3);
  v9 = sub_1005F1ED0(v4, v3);
  sub_10020ABFC(v2, v1);
  v10 = sub_1005F1ED0(v2, v1);
  sub_10020ABFC(v8, v7);
  v11 = sub_1005F1ED0(v8, v7);
  sub_10020ABFC(v6, v5);
  if (HIDWORD(sub_1005F1ED0(v6, v5)[2]))
  {
    __break(1u);
    goto LABEL_44;
  }

  if (HIDWORD(v11[2]))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v12 = *(v0 + 256) >> 62;
  if (v12 <= 1)
  {
    if (!v12)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (v12 != 2)
  {
    goto LABEL_17;
  }

  v13 = *(*(v0 + 248) + 16);
  v14 = *(*(v0 + 248) + 24);
  v15 = v14 - v13;
  if (__OFSUB__(v14, v13))
  {
    __break(1u);
LABEL_12:
    v16 = *(v0 + 248);
    v17 = *(v0 + 252);
    v18 = __OFSUB__(v17, v16);
    v19 = v17 - v16;
    if (v18)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }

    v15 = v19;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (HIDWORD(v15))
  {
    __break(1u);
  }

LABEL_17:
  v20 = v1 >> 62;
  if ((v1 >> 62) > 1)
  {
    if (v20 != 2)
    {
      goto LABEL_29;
    }

    v22 = *(v2 + 16);
    v21 = *(v2 + 24);
    v23 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  else if (!v20)
  {
    goto LABEL_29;
  }

  if (__OFSUB__(HIDWORD(v2), v2))
  {
    goto LABEL_48;
  }

  v23 = HIDWORD(v2) - v2;
LABEL_26:
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (HIDWORD(v23))
  {
    __break(1u);
  }

LABEL_29:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003627B0(0, *(v9 + 2), 0, v9);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003627B0(0, *(v10 + 2), 0, v10);
  }

  v43 = *(v0 + 280);
  v25 = *(v0 + 176);
  v24 = *(v0 + 184);
  v26 = g4Bksweo();
  swift_bridgeObjectRelease_n();

  sub_1005F4F84(v26, v25, v24);
  v28 = *(v0 + 248);
  v27 = *(v0 + 256);
  if (v43)
  {
    v30 = *(v0 + 232);
    v29 = *(v0 + 240);

    sub_100007158(v2, v1);
    sub_10020B0E0(v28, v27);
    sub_100007158(v30, v29);

LABEL_35:

    sub_10000710C(v0 + 16);
    v31 = *(v0 + 8);

    return v31();
  }

  sub_100007158(v2, v1);
  sub_10020B0E0(v28, v27);

  v33 = *(v0 + 232);
  v34 = *(v0 + 240);
  if (!*(v0 + 112))
  {
    v41 = type metadata accessor for MarketplaceKitError();
    sub_10036E4F4(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v41 - 8) + 104))(v42, enum case for MarketplaceKitError.featureUnavailable(_:), v41);
    swift_willThrow();
    sub_100007158(v33, v34);
    goto LABEL_35;
  }

  v35 = *(v0 + 192);
  v36 = sub_100396364(*(v0 + 352), *(v0 + 112));
  v37 = sub_1005F3F28(v36);
  v39 = v38;

  qENIaLkr();
  sub_100007158(v33, v34);

  sub_10000710C(v0 + 16);
  v40 = *(v0 + 8);

  return v40(v37, v39);
}

uint64_t sub_10036E18C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);
  sub_100007158(*(v0 + 232), *(v0 + 240));
  sub_10020B0E0(v2, v1);

  sub_10000710C(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10036E264(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 296) = v2;

  if (v2)
  {
    v7 = sub_10036E45C;
  }

  else
  {
    *(v6 + 304) = a2;
    *(v6 + 312) = a1;
    v7 = sub_10036E3C0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10036E3C0()
{

  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_10036E45C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10036E4F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10036E558(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10036E5A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10036E5F0()
{
  result = qword_100781728;
  if (!qword_100781728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781728);
  }

  return result;
}

uint64_t sub_10036E680(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100781730);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_10036EBB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 48);
    v10[15] = 3;
    sub_1001F0C48(&qword_100781740);
    sub_10036EC08();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10036E898()
{
  v1 = 0x5265736E6563696CLL;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0x6449794273707061;
  }

  if (*v0)
  {
    v1 = 0x4B65736E6563696CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10036E928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10036ED10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10036E950(uint64_t a1)
{
  v2 = sub_10036EBB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10036E98C(uint64_t a1)
{
  v2 = sub_10036EBB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10036E9E0()
{
  if (*v0)
  {
    return 0x736E6563696C6E75;
  }

  else
  {
    return 0x65736E6563696CLL;
  }
}

uint64_t sub_10036EA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65736E6563696CLL && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6563696C6E75 && a2 == 0xEE00737070416465)
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

uint64_t sub_10036EB0C(uint64_t a1)
{
  v2 = sub_10036F090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10036EB48(uint64_t a1)
{
  v2 = sub_10036F090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10036EB84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10036EE8C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_10036EBB4()
{
  result = qword_100781738;
  if (!qword_100781738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781738);
  }

  return result;
}

unint64_t sub_10036EC08()
{
  result = qword_100781748;
  if (!qword_100781748)
  {
    sub_1001F76D0(&qword_100781740);
    sub_10036EC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781748);
  }

  return result;
}

unint64_t sub_10036EC94()
{
  result = qword_100781750;
  if (!qword_100781750)
  {
    sub_1001F76D0(&qword_100781758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781750);
  }

  return result;
}

uint64_t sub_10036ED10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5265736E6563696CLL && a2 == 0xEE00747365757165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B65736E6563696CLL && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006CA2A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449794273707061 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10036EE8C(void *a1)
{
  v3 = sub_1001F0C48(&qword_100781760);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_10036F090();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[31] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1001F0C48(&unk_10077FB40);
    v9[15] = 1;
    sub_10035CEB4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

unint64_t sub_10036F090()
{
  result = qword_100781768;
  if (!qword_100781768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781768);
  }

  return result;
}

unint64_t sub_10036F108()
{
  result = qword_100781770;
  if (!qword_100781770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781770);
  }

  return result;
}

unint64_t sub_10036F160()
{
  result = qword_100781778;
  if (!qword_100781778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781778);
  }

  return result;
}

unint64_t sub_10036F1B8()
{
  result = qword_100781780;
  if (!qword_100781780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781780);
  }

  return result;
}

unint64_t sub_10036F210()
{
  result = qword_100781788;
  if (!qword_100781788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781788);
  }

  return result;
}

unint64_t sub_10036F268()
{
  result = qword_100781790;
  if (!qword_100781790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781790);
  }

  return result;
}

unint64_t sub_10036F2C0()
{
  result = qword_100781798;
  if (!qword_100781798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781798);
  }

  return result;
}

void sub_10036F314(uint64_t a1, void *a2, void *a3)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1001F0C48(&qword_1007817A0);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_1001F0C48(&qword_1007817A0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10036F3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_1001F0C48(&qword_1007817A0);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_10036F514, 0, 0);
}

uint64_t sub_10036F514()
{
  if ([*(v0 + 152) isPlaceholder])
  {
    static Logger.appActions.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      v5 = sub_100625FA0();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Can't launch placeholder", v3, 0xCu);
      sub_1001F8084(v4);
    }

    v6 = *(v0 + 216);
LABEL_5:
    v7 = *(v0 + 200);
    v8 = *(v0 + 208);

    (*(v8 + 8))(v6, v7);
LABEL_17:
    sub_100370860();
    swift_allocError();
    *v25 = 0;
LABEL_18:
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }

  v9 = [*(v0 + 152) bundleIdentifier];
  *(v0 + 248) = v9;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  if (*(v0 + 168))
  {
    v11 = [*(v0 + 152) iTunesMetadata];
    v12 = [v11 distributorInfo];

    v13 = [v12 distributorID];
    if (!v13)
    {
LABEL_14:

      static Logger.appActions.getter();
      v1 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v1, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = sub_100625FA0();
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&_mh_execute_header, v1, v21, "[%@] Can't launch app not installed by the requesting distributor", v22, 0xCu);
        sub_1001F8084(v23);
      }

      v6 = *(v0 + 240);
      goto LABEL_5;
    }

    v15 = *(v0 + 160);
    v14 = *(v0 + 168);
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (v16 == v15 && v14 == v18)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  if ([*(v0 + 152) isLaunchProhibited])
  {

    static Logger.appActions.getter();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = sub_100625FA0();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%@] App is launch prohibited", v30, 0xCu);
      sub_1001F8084(v31);
    }

    v33 = *(v0 + 224);
    v34 = *(v0 + 200);
    v35 = *(v0 + 208);

    (*(v35 + 8))(v33, v34);
    sub_100370860();
    swift_allocError();
    *v36 = 1;
    goto LABEL_18;
  }

  v37 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  *(v0 + 256) = v37;
  if (!v37)
  {

    static Logger.appActions.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      v47 = sub_100625FA0();
      *(v45 + 4) = v47;
      *v46 = v47;
      _os_log_impl(&_mh_execute_header, v43, v44, "[%@] Unable to find open service", v45, 0xCu);
      sub_1001F8084(v46);
    }

    v48 = *(v0 + 232);
    v49 = *(v0 + 200);
    v50 = *(v0 + 208);

    (*(v50 + 8))(v48, v49);
    sub_100370860();
    swift_allocError();
    *v51 = 2;
    goto LABEL_18;
  }

  v38 = v37;
  v39 = *(v0 + 184);
  v40 = *(v0 + 192);
  v41 = *(v0 + 176);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10036FC58;
  swift_continuation_init();
  *(v0 + 136) = v41;
  v42 = sub_10020A748((v0 + 112));
  sub_100006190(0, &qword_1007817B0);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v39 + 32))(v42, v40, v41);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10036F314;
  *(v0 + 104) = &unk_100760E10;
  [v38 openApplication:v10 withOptions:0 completion:?];
  (*(v39 + 8))(v42, v41);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10036FC58()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_10036FE1C;
  }

  else
  {
    v2 = sub_10036FD68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10036FD68()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10036FE1C()
{
  v1 = v0[32];
  v2 = v0[31];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10036FECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = type metadata accessor for Logger();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10036FFA8, 0, 0);
}

uint64_t sub_10036FFA8()
{
  v29 = v0;
  static Logger.appActions.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v26 = v0[8];
    v27 = v0[12];
    v24 = v0[7];
    v25 = v0[9];
    v23 = v0[6];
    v3 = v0[4];
    v4 = v0[5];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v5 = 138412802;
    v7 = sub_100625FA0();
    *(v5 + 4) = v7;
    *v6 = v7;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_1002346CC(v3, v4, v28);
    *(v5 + 22) = 2082;
    v0[2] = v23;
    v0[3] = v24;

    sub_1001F0C48(&unk_10077FA80);
    v8 = String.init<A>(describing:)();
    v10 = sub_1002346CC(v8, v9, v28);

    *(v5 + 24) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Handling app launch request of %{public}s for %{public}s", v5, 0x20u);
    sub_1001F8084(v6);

    swift_arrayDestroy();

    v11 = *(v25 + 8);
    v11(v27, v26);
  }

  else
  {
    v12 = v0[12];
    v13 = v0[8];
    v14 = v0[9];

    v11 = *(v14 + 8);
    v11(v12, v13);
  }

  v0[13] = v11;
  v15 = v0[4];
  v16 = v0[5];
  objc_allocWithZone(LSApplicationRecord);

  v17 = sub_10049E57C(v15, v16, 1);
  v0[14] = v17;
  v18 = v17;
  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_100370414;
  v20 = v0[6];
  v21 = v0[7];

  return sub_10036F3C4(v18, v20, v21);
}

uint64_t sub_100370414()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100370694;
  }

  else
  {
    v2 = sub_100370528;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100370528()
{
  static Logger.appActions.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Successfully launched", v3, 0xCu);
    sub_1001F8084(v4);
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v0 + 64);

  v6(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100370694()
{
  static Logger.appActions.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412546;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    v4[1] = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Error launching app: %{public}@", v3, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v7 = *(v0 + 104);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);

  v7(v8, v9);
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_100370860()
{
  result = qword_1007817A8;
  if (!qword_1007817A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007817A8);
  }

  return result;
}

uint64_t sub_1003708BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for Logger();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1003709D0, 0, 0);
}

uint64_t sub_1003709D0()
{
  v62 = v0;
  static Logger.appActions.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[8];
  if (v3)
  {
    v7 = v0[5];
    v59 = v0[6];
    v60 = v0[12];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v61 = v11;
    *v9 = 138412802;
    v12 = sub_100625FA0();
    *(v9 + 4) = v12;
    *v10 = v12;
    *(v9 + 12) = 2050;
    *(v9 + 14) = v8;
    *(v9 + 22) = 2082;
    *(v9 + 24) = sub_1002346CC(v7, v59, &v61);
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Handling app delete request of %{public}llu for %{public}s", v9, 0x20u);
    sub_1001F8084(v10);

    sub_10000710C(v11);

    v13 = *(v6 + 8);
    v13(v60, v5);
  }

  else
  {

    v13 = *(v6 + 8);
    v13(v4, v5);
  }

  v0[13] = v13;
  v14 = v0[4];
  v15 = objc_allocWithZone(LSApplicationRecord);
  v0[2] = 0;
  v16 = [v15 initWithStoreItemIdentifier:v14 error:v0 + 2];
  v0[14] = v16;
  v17 = v0[2];
  if (v16)
  {
    v18 = v16;
    v19 = v17;
    v20 = [v18 iTunesMetadata];
    v21 = [v20 distributorInfo];

    v22 = [v21 distributorID];
    if (v22)
    {
      v24 = v0[5];
      v23 = v0[6];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      if (v25 == v24 && v27 == v23)
      {

LABEL_11:
        v30 = [v18 bundleIdentifier];
        if (v30)
        {
          v31 = v30;
          v32 = [objc_allocWithZone(IXApplicationIdentity) initWithBundleIdentifier:v30];
          v0[15] = v32;

          if (v32)
          {
            v33 = [objc_allocWithZone(IXUninstallOptions) init];
            v0[16] = v33;
            if (v33)
            {
              v34 = v33;
              [v33 setRequestUserConfirmation:0];
              v35 = sub_100006190(0, &qword_10077FC30);
              v36 = swift_task_alloc();
              v0[17] = v36;
              v36[2] = v35;
              v36[3] = v32;
              v36[4] = v34;
              v37 = swift_task_alloc();
              v0[18] = v37;
              type metadata accessor for IXUninstallDisposition(0);
              *v37 = v0;
              v37[1] = sub_100371104;

              return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD00000000000001BLL, 0x80000001006C4EE0, sub_100271CF0, v36, v38);
            }

            sub_100370860();
            swift_allocError();
            *v57 = 2;
            swift_willThrow();

            goto LABEL_21;
          }
        }

LABEL_20:
        sub_100370860();
        swift_allocError();
        *v46 = 0;
        swift_willThrow();
LABEL_21:

        goto LABEL_22;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_11;
      }
    }

    static Logger.appActions.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = sub_100625FA0();
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&_mh_execute_header, v39, v40, "[%@] Can't delete app not installed by the requesting distributor", v41, 0xCu);
      sub_1001F8084(v42);
    }

    v44 = v0[10];
    v45 = v0[7];

    v13(v44, v45);
    goto LABEL_20;
  }

  v28 = v17;
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_22:
  static Logger.appActions.getter();
  swift_errorRetain();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412546;
    v51 = sub_100625FA0();
    *(v49 + 4) = v51;
    *v50 = v51;
    *(v49 + 12) = 2114;
    swift_errorRetain();
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 14) = v52;
    v50[1] = v52;
    _os_log_impl(&_mh_execute_header, v47, v48, "[%@] Error deleting app app: %{public}@", v49, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v53 = v0[13];
  v54 = v0[9];
  v55 = v0[7];

  v53(v54, v55);
  swift_willThrow();

  v56 = v0[1];

  return v56();
}

uint64_t sub_100371104()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10037140C;
  }

  else
  {

    v2 = sub_100371254;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100371254()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);

  static Logger.appActions.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = sub_100625FA0();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Successfully deleted", v5, 0xCu);
    sub_1001F8084(v6);
  }

  v8 = *(v0 + 104);
  v9 = *(v0 + 88);
  v10 = *(v0 + 56);

  v8(v9, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10037140C()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];

  static Logger.appActions.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    v8 = sub_100625FA0();
    *(v6 + 4) = v8;
    *v7 = v8;
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error deleting app app: %{public}@", v6, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v10 = v0[13];
  v11 = v0[9];
  v12 = v0[7];

  v10(v11, v12);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100371620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100371728, 0, 0);
}

uint64_t sub_100371728()
{
  v38 = v0;
  static Logger.appActions.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[10];
  v5 = v0[6];
  v6 = v0[7];
  if (v3)
  {
    v7 = v0[4];
    v35 = v0[5];
    v36 = v0[10];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37 = v11;
    *v9 = 138412802;
    v12 = sub_100625FA0();
    *(v9 + 4) = v12;
    *v10 = v12;
    *(v9 + 12) = 2050;
    *(v9 + 14) = v8;
    *(v9 + 22) = 2082;
    *(v9 + 24) = sub_1002346CC(v7, v35, &v37);
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Handling app launch request of %{public}llu for %{public}s", v9, 0x20u);
    sub_1001F8084(v10);

    sub_10000710C(v11);

    v13 = *(v6 + 8);
    v13(v36, v5);
  }

  else
  {

    v13 = *(v6 + 8);
    v13(v4, v5);
  }

  v0[11] = v13;
  v14 = v0[3];
  v15 = objc_allocWithZone(LSApplicationRecord);
  v0[2] = 0;
  v16 = [v15 initWithStoreItemIdentifier:v14 error:v0 + 2];
  v0[12] = v16;
  v17 = v0[2];
  if (v16)
  {
    v18 = v16;
    v19 = v0[5];
    v20 = v17;
    v21 = swift_task_alloc();
    v0[13] = v21;
    *v21 = v0;
    v21[1] = sub_100371B6C;
    v22 = v0[4];

    return sub_10036F3C4(v18, v22, v19);
  }

  else
  {
    v24 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Logger.appActions.getter();
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412546;
      v29 = sub_100625FA0();
      *(v27 + 4) = v29;
      *v28 = v29;
      *(v27 + 12) = 2114;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v30;
      v28[1] = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "[%@] Error launching app: %{public}@", v27, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[6];

    v31(v32, v33);
    swift_willThrow();

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_100371B6C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100371E44;
  }

  else
  {
    v2 = sub_100371CAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100371CAC()
{
  static Logger.appActions.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Successfully launched", v3, 0xCu);
    sub_1001F8084(v4);
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);

  v6(v7, v8);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100371E44()
{
  static Logger.appActions.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412546;
    v5 = sub_100625FA0();
    *(v3 + 4) = v5;
    *v4 = v5;
    *(v3 + 12) = 2114;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    v4[1] = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Error launching app: %{public}@", v3, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  v7 = *(v0 + 88);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);

  v7(v8, v9);
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_100372050()
{
  result = qword_1007817B8;
  if (!qword_1007817B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007817B8);
  }

  return result;
}

uint64_t sub_1003720A4(_BYTE *a1)
{
  v2 = type metadata accessor for AppInstallRequestType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v9 = &v30[-v8];
  __chkstk_darwin(v7);
  v11 = &v30[-v10];
  v12 = *(v3 + 16);
  v12(&v30[-v10], a1, v2);
  v12(v9, a1, v2);
  v13 = *(v3 + 88);
  v14 = v13(v9, v2);
  if (v14 != enum case for AppInstallRequestType.automaticInstall(_:))
  {
    v15 = v14;
    if (v14 != enum case for AppInstallRequestType.install(_:))
    {
      if (v14 == enum case for AppInstallRequestType.automaticUpdate(_:))
      {
        v31 = enum case for AppInstallRequestType.update(_:);
        goto LABEL_3;
      }

      if (v14 != enum case for AppInstallRequestType.update(_:) && v14 != enum case for AppInstallRequestType.promotion(_:))
      {
        v31 = enum case for AppInstallRequestType.update(_:);
        v29 = v14 == enum case for AppInstallRequestType.restore(_:) || v14 == enum case for AppInstallRequestType.deviceVPP(_:) || v14 == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || v14 == enum case for AppInstallRequestType.userVPP(_:) || v14 == enum case for AppInstallRequestType.userVPPUpdate(_:) || v14 == enum case for AppInstallRequestType.upp(_:) || v14 == enum case for AppInstallRequestType.restoreUpdate(_:);
        v15 = enum case for AppInstallRequestType.automaticUpdate(_:);
        if (!v29)
        {
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        goto LABEL_3;
      }
    }

    v21 = *(v3 + 8);
    v21(a1, v2);
    v21(v11, v2);
    return 2;
  }

  v15 = enum case for AppInstallRequestType.automaticUpdate(_:);
  v31 = enum case for AppInstallRequestType.update(_:);
LABEL_3:
  v16 = *(v3 + 8);
  v16(a1, v2);
  (*(v3 + 32))(v6, v11, v2);
  v17 = v13(v6, v2);
  if (v17 == v15 || v17 == v31 || v17 == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || v17 == enum case for AppInstallRequestType.userVPPUpdate(_:))
  {
    return 4;
  }

  v16(v6, v2);
  return 1;
}

uint64_t sub_100372410(uint64_t a1, char a2)
{
  v4 = type metadata accessor for AppInstallRequestType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
    (*(v5 + 8))(a1, v4);
    return 3;
  }

  if (v8 == enum case for AppInstallRequestType.install(_:))
  {
    goto LABEL_4;
  }

  if (v8 == enum case for AppInstallRequestType.automaticUpdate(_:))
  {
    (*(v5 + 8))(a1, v4);
    return 5;
  }

  if (v8 == enum case for AppInstallRequestType.update(_:))
  {
    goto LABEL_4;
  }

  if (v8 == enum case for AppInstallRequestType.promotion(_:) || v8 == enum case for AppInstallRequestType.restore(_:))
  {
LABEL_10:
    (*(v5 + 8))(a1, v4);
    return 2;
  }

  if (v8 == enum case for AppInstallRequestType.deviceVPP(_:))
  {
    goto LABEL_4;
  }

  if (v8 == enum case for AppInstallRequestType.deviceVPPUpdate(_:))
  {
    goto LABEL_14;
  }

  if (v8 == enum case for AppInstallRequestType.userVPP(_:))
  {
LABEL_4:
    (*(v5 + 8))(a1, v4);
    return 1;
  }

  if (v8 != enum case for AppInstallRequestType.userVPPUpdate(_:))
  {
    if (v8 != enum case for AppInstallRequestType.upp(_:))
    {
      if (v8 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      goto LABEL_10;
    }

    goto LABEL_4;
  }

LABEL_14:
  (*(v5 + 8))(a1, v4);
  if (a2)
  {
    return 1;
  }

  else
  {
    return 5;
  }
}

uint64_t sub_1003726D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 208) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_1001F0C48(&qword_100786FD0);
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  sub_1001F0C48(&qword_1007817C0);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  v9 = type metadata accessor for Platform();
  *(v7 + 112) = v9;
  *(v7 + 120) = *(v9 - 8);
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  v10 = sub_1001F0C48(&qword_100780EB0);
  *(v7 + 144) = v10;
  *(v7 + 152) = *(v10 - 8);
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_1003728D8, 0, 0);
}

uint64_t sub_1003728D8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = *(v2 + 48);
  v9 = *(v0 + 208);
  *v1 = v7;
  *(v1 + 8) = v6;
  v10 = v9 & 1;
  *(v1 + 16) = v9 & 1;
  (*(v4 + 16))(v1 + v8, v5, v3);
  sub_1001DFDA4(v7, v6, v10);
  v11 = sub_100362F38(0, 1, 1, _swiftEmptyArrayStorage);
  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_100362F38(v12 > 1, v13 + 1, 1, v11);
  }

  v14 = *(v0 + 168);
  v15 = *(v0 + 152);
  v16 = *(v0 + 136);
  v17 = *(v0 + 112);
  v18 = *(v0 + 120);
  v11[2] = v13 + 1;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v37 = *(v15 + 72);
  sub_10020A668(v14, v11 + v19 + v37 * v13, &qword_100780EB0);
  static Platform.visionOS.getter();
  sub_10037E0EC(&qword_100780F10, &type metadata accessor for Platform);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v18 + 8))(v16, v17);
  if (v20)
  {
    v36 = v19;
    v21 = *(v0 + 160);
    v22 = v2;
    v24 = *(v0 + 120);
    v23 = *(v0 + 128);
    v25 = *(v0 + 112);
    v27 = *(v0 + 24);
    v26 = *(v0 + 32);
    v28 = *(v0 + 208) & 1;
    sub_1001DFDA4(v27, v26, v28);
    static Platform.iOS.getter();
    v29 = *(v22 + 48);
    *v21 = v27;
    *(v21 + 8) = v26;
    *(v21 + 16) = v28;
    (*(v24 + 32))(v21 + v29, v23, v25);
    v31 = v11[2];
    v30 = v11[3];
    if (v31 >= v30 >> 1)
    {
      v11 = sub_100362F38(v30 > 1, v31 + 1, 1, v11);
    }

    v32 = *(v0 + 160);
    v11[2] = v31 + 1;
    sub_10020A668(v32, v11 + v36 + v31 * v37, &qword_100780EB0);
  }

  *(v0 + 176) = v11;
  v33 = swift_task_alloc();
  *(v0 + 184) = v33;
  *v33 = v0;
  v33[1] = sub_100372BB0;
  v34 = *(v0 + 48);

  return sub_100373724(v11, v34);
}

uint64_t sub_100372BB0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {

    v4 = sub_100372FB4;
  }

  else
  {
    v4 = sub_100372CCC;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100372CCC()
{
  v1 = v0[24];
  v18 = *(v1 + 16);
  if (v18)
  {
    v2 = 0;
    v3 = v0[9];
    while (v2 < *(v1 + 16))
    {
      sub_100005934(v0[24] + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2, v0[11], &qword_100786FD0);
      if (static StoreAppIdentifier.== infix(_:_:)())
      {
        v5 = v0[13];
        v6 = v0[11];

        sub_10020A668(v6, v5, &qword_100786FD0);
        v4 = 0;
        goto LABEL_8;
      }

      ++v2;
      sub_1000032A8(v0[11], &qword_100786FD0);
      if (v18 == v2)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v4 = 1;
LABEL_8:
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[8];
    v10 = v0[9];
    v11 = 1;
    (*(v10 + 56))(v7, v4, 1, v9);
    sub_10020A668(v7, v8, &qword_1007817C0);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v12 = v0[10];
      v13 = v0[8];
      v14 = v0[2];
      sub_10020A668(v0[12], v12, &qword_100786FD0);
      sub_1001DFEBC(*v12, *(v12 + 8), *(v12 + 16));
      sub_100381C80(v12 + *(v13 + 48), v14, type metadata accessor for MediaAPIApp);
      v11 = 0;
    }

    v15 = v0[2];
    v16 = type metadata accessor for MediaAPIApp(0);
    (*(*(v16 - 8) + 56))(v15, v11, 1, v16);

    v17 = v0[1];

    v17();
  }
}

uint64_t sub_100372FB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100373074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v80 = a4;
  *&v79 = a1;
  v7 = type metadata accessor for Platform();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v101 = &v78 - v13;
  v14 = __chkstk_darwin(v12);
  v85 = &v78 - v15;
  __chkstk_darwin(v14);
  v17 = &v78 - v16;
  v18 = *(v4 + *(type metadata accessor for MediaAPIApp(0) + 24));
  *&v81 = v8;
  *(&v83 + 1) = *(v8 + 16);
  v84 = v8 + 16;
  (*(&v83 + 1))(v17, a2, v7);
  v19 = sub_10037DE18(v17);
  if (!*(v18 + 16) || (v20 = sub_100522C58(v19), (v21 & 1) == 0))
  {
    *&v83 = v18;
    v87 = v11;
    v40 = *(a3 + 16);
    v41 = v85;
    if (!v40)
    {
LABEL_20:
      type metadata accessor for InternalError();
      sub_10037E0EC(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      *v77 = 0xD000000000000012;
      v77[1] = 0x80000001006C3280;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v42 = a3 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v43 = (v81 + 8);
    *&v82 = *(v81 + 72);
    while (1)
    {
      v86 = v40;
      v44 = *(&v83 + 1);
      (*(&v83 + 1))(v41, v42, v7);
      v45 = v43;
      v46 = v17;
      v47 = v101;
      v44(v101, v41, v7);
      v48 = v47;
      v17 = v46;
      v43 = v45;
      v44(v87, v48, v7);
      static Platform.macOS.getter();
      sub_10037E0EC(&qword_100780F10, &type metadata accessor for Platform);
      v49 = dispatch thunk of static Equatable.== infix(_:_:)();
      v50 = *v45;
      (*v45)(v17, v7);
      if (v49)
      {
        v51 = 0;
      }

      else
      {
        static Platform.iOS.getter();
        v52 = dispatch thunk of static Equatable.== infix(_:_:)();
        v50(v17, v7);
        if (v52)
        {
          goto LABEL_10;
        }

        static Platform.tvOS.getter();
        v53 = dispatch thunk of static Equatable.== infix(_:_:)();
        v50(v17, v7);
        if (v53)
        {
          v51 = 2;
          goto LABEL_16;
        }

        static Platform.watchOS.getter();
        v54 = dispatch thunk of static Equatable.== infix(_:_:)();
        v50(v17, v7);
        if (v54)
        {
LABEL_10:
          v51 = 1;
        }

        else
        {
          static Platform.visionOS.getter();
          v55 = dispatch thunk of static Equatable.== infix(_:_:)();
          v50(v17, v7);
          if ((v55 & 1) == 0)
          {
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v51 = 3;
        }
      }

LABEL_16:
      v41 = v85;
      v56 = v83;
      v50(v87, v7);
      v50(v101, v7);
      if (*(v56 + 16))
      {
        v57 = sub_100522C58(v51);
        if (v58)
        {
          v59 = *(v56 + 56) + 184 * v57;
          v61 = *(v59 + 32);
          v60 = *(v59 + 48);
          v62 = *(v59 + 16);
          v89 = *v59;
          v90 = v62;
          v91 = v61;
          v92 = v60;
          v63 = *(v59 + 64);
          v64 = *(v59 + 80);
          v65 = *(v59 + 112);
          v95 = *(v59 + 96);
          v96 = v65;
          v93 = v63;
          v94 = v64;
          v66 = *(v59 + 128);
          v67 = *(v59 + 144);
          v68 = *(v59 + 160);
          v100 = *(v59 + 176);
          v98 = v67;
          v99 = v68;
          v97 = v66;
          (*(v81 + 32))(v79, v41, v7);
          LODWORD(v101) = v100;
          v86 = *(&v99 + 1);
          v87 = v99;
          v84 = *(&v97 + 1);
          v85 = v97;
          v83 = v98;
          v33 = *(&v96 + 1);
          v32 = v96;
          v81 = v94;
          v82 = v95;
          v35 = *(&v92 + 1);
          v34 = v92;
          v36 = *(&v93 + 1);
          v37 = v93;
          v38 = v90;
          v39 = v91;
          goto LABEL_19;
        }
      }

      v50(v41, v7);
      v42 += v82;
      v40 = v86 - 1;
      if (v86 == 1)
      {
        goto LABEL_20;
      }
    }
  }

  v22 = *(v18 + 56) + 184 * v20;
  v24 = *(v22 + 32);
  v23 = *(v22 + 48);
  v25 = *(v22 + 16);
  v89 = *v22;
  v90 = v25;
  v91 = v24;
  v92 = v23;
  v26 = *(v22 + 64);
  v27 = *(v22 + 80);
  v28 = *(v22 + 112);
  v95 = *(v22 + 96);
  v96 = v28;
  v93 = v26;
  v94 = v27;
  v29 = *(v22 + 128);
  v30 = *(v22 + 144);
  v31 = *(v22 + 160);
  v100 = *(v22 + 176);
  v98 = v30;
  v99 = v31;
  v97 = v29;
  (*(&v83 + 1))(v79, a2, v7);
  LODWORD(v101) = v100;
  v86 = *(&v99 + 1);
  v87 = v99;
  v84 = *(&v97 + 1);
  v85 = v97;
  v83 = v98;
  v33 = *(&v96 + 1);
  v32 = v96;
  v81 = v94;
  v82 = v95;
  v35 = *(&v92 + 1);
  v34 = v92;
  v36 = *(&v93 + 1);
  v37 = v93;
  v38 = v90;
  v39 = v91;
LABEL_19:
  v79 = v39;
  v78 = v38;
  v69 = v89;
  result = sub_10037E134(&v89, &v88);
  v71 = v80;
  *v80 = v69;
  v72 = v79;
  v71[1] = v78;
  v71[2] = v72;
  *(v71 + 6) = v34;
  *(v71 + 7) = v35;
  *(v71 + 8) = v37;
  *(v71 + 9) = v36;
  v73 = v82;
  v71[5] = v81;
  v71[6] = v73;
  *(v71 + 14) = v32;
  *(v71 + 15) = v33;
  v74 = v84;
  *(v71 + 16) = v85;
  *(v71 + 17) = v74;
  v75 = *(&v83 + 1);
  *(v71 + 18) = v83;
  *(v71 + 19) = v75;
  v76 = v86;
  *(v71 + 20) = v87;
  *(v71 + 21) = v76;
  *(v71 + 176) = v101;
  return result;
}

uint64_t sub_100373724(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_1001F0C48(&qword_100780EB0);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100373800, 0, 0);
}

uint64_t sub_100373800()
{
  v42 = v0;
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 120);
    v36 = *(v0 + 128);
    v35 = *(v0 + 112);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v34 = *(v3 + 72);
    v5 = _swiftEmptyArrayStorage;
    v6 = &unk_1006A3018;
    do
    {
      v38 = v2;
      v39 = v5;
      v9 = *(v0 + 128);
      v8 = *(v0 + 136);
      sub_100005934(v4, v8, &qword_100780EB0);
      sub_100005934(v8, v9, &qword_100780EB0);
      v10 = *v9;
      v11 = *(v36 + 8);
      v12 = v6;
      v13 = *(v36 + 16);
      v37 = *(v35 + 48);
      v14 = StoreAppIdentifier.itemID.getter();
      v16 = v15;
      sub_1001DFEBC(v10, v11, v13);
      v17 = *(v0 + 136);
      if (v16)
      {
        sub_1000032A8(*(v0 + 136), &qword_100780EB0);
        v7 = type metadata accessor for Platform();
        (*(*(v7 - 8) + 8))(v9 + v37, v7);
        v5 = v39;
        v6 = v12;
      }

      else
      {
        *(v0 + 80) = v14;
        v18 = dispatch thunk of CustomStringConvertible.description.getter();
        v20 = v19;
        sub_1000032A8(v17, &qword_100780EB0);
        v21 = type metadata accessor for Platform();
        (*(*(v21 - 8) + 8))(v9 + v37, v21);
        v5 = v39;
        v6 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100009530(0, *(v39 + 2) + 1, 1, v39);
        }

        v23 = *(v5 + 2);
        v22 = *(v5 + 3);
        if (v23 >= v22 >> 1)
        {
          v5 = sub_100009530((v22 > 1), v23 + 1, 1, v5);
        }

        *(v5 + 2) = v23 + 1;
        v24 = &v5[16 * v23];
        *(v24 + 4) = v18;
        *(v24 + 5) = v20;
      }

      v4 += v34;
      v2 = v38 - 1;
    }

    while (v38 != 1);
    v1 = *(v0 + 88);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v25 = sub_1005DA314(v5);
  *(v0 + 144) = v25;

  *(v0 + 16) = v1;
  *(v0 + 24) = sub_100374B34;
  *(v0 + 32) = 0;
  *(v0 + 40) = sub_10037DB68;
  *(v0 + 48) = 0;
  *(v0 + 56) = sub_10037DBF8;
  *(v0 + 64) = 0;
  v41 = _swiftEmptyDictionarySingleton;

  sub_10037D00C((v0 + 16), 1, &v41);
  v26 = v41;
  *(v0 + 152) = v41;
  v40 = *(v0 + 96);
  v27 = String._bridgeToObjectiveC()();
  v28 = String._bridgeToObjectiveC()();
  v29 = [objc_opt_self() bagForProfile:v27 profileVersion:v28];
  *(v0 + 160) = v29;

  v30 = sub_1001F0C48(&qword_100780EB8);
  v31 = swift_task_alloc();
  *(v0 + 168) = v31;
  v31[1].i64[0] = v25;
  v31[1].i64[1] = v29;
  v31[2] = vextq_s8(v40, v40, 8uLL);
  v31[3].i64[0] = v26;
  v32 = swift_task_alloc();
  *(v0 + 176) = v32;
  *v32 = v0;
  v32[1] = sub_100373C94;
  v44 = v30;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 72, v30, v30, 0, 0, &unk_1006A4B38, v31, v30);
}

uint64_t sub_100373C94()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_100373E54;
  }

  else
  {

    v2 = sub_100373DCC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100373DCC()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100373E54()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100373EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10037E57C;
  *(v8 + 24) = v7;
  v9 = *(v2 + *(type metadata accessor for MediaAPIApp(0) + 24) + 8);
  if (v9)
  {
    v10 = swift_allocObject();
    v11 = *(a1 + 80);
    v10[5] = *(a1 + 64);
    v10[6] = v11;
    *(v10 + 111) = *(a1 + 95);
    v12 = *(a1 + 16);
    v10[1] = *a1;
    v10[2] = v12;
    v13 = *(a1 + 48);
    v10[3] = *(a1 + 32);
    v10[4] = v13;
    v21[0] = v9;
    v21[1] = sub_10037906C;
    v21[2] = 0;
    v21[3] = sub_10037E648;
    v21[4] = v10;

    sub_10020A7AC(a1, v18);
    sub_100374768(v21, sub_10037E5DC, v20);

    v19[0] = v20[0];
    v19[1] = v20[1];
    v19[2] = v20[2];
    v19[3] = v20[3];
    if (*(&v20[0] + 1))
    {
      sub_1000032A8(v19, &qword_100781820);
      v14 = [objc_opt_self() bytes];
      sub_100006190(0, &qword_10077E900);
      Measurement.init(value:unit:)();

      v15 = sub_1001F0C48(&qword_100780E18);
      return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
    }
  }

  else
  {
  }

  v17 = sub_1001F0C48(&qword_100780E18);
  return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
}

uint64_t sub_10037419C@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_1001F0C48(&qword_100780E08);
  __chkstk_darwin(v2 - 8);
  v44 = &v33 - v3;
  v4 = type metadata accessor for TimeZone();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v41 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v8 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date.ISO8601FormatStyle();
  v19 = __chkstk_darwin(v18);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 40))
  {
    v34 = v20;
    v35 = v19;
    v33 = *(v1 + 32);
    (*(v15 + 104))(v17, enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:), v14);
    (*(v11 + 104))(v13, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v10);
    (*(v8 + 104))(v40, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v37);
    (*(v38 + 104))(v41, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v39);
    v23 = v44;
    TimeZone.init(secondsFromGMT:)();
    v25 = v42;
    v24 = v43;
    result = (*(v42 + 48))(v23, 1, v43);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v25 + 32))(v36, v23, v24);
      Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
      v27 = v45;
      Date.ISO8601FormatStyle.parse(_:)();
      (*(v34 + 8))(v22, v35);
      v32 = type metadata accessor for Date();
      return (*(*(v32 - 8) + 56))(v27, 0, 1, v32);
    }
  }

  else
  {
    v28 = type metadata accessor for Date();
    v29 = *(*(v28 - 8) + 56);
    v30 = v28;
    v31 = v45;

    return v29(v31, 1, 1, v30);
  }

  return result;
}

uint64_t sub_100374768@<X0>(void *a1@<X0>, uint64_t (*a2)(_OWORD *, _OWORD *)@<X1>, _OWORD *a3@<X8>)
{
  v30 = a1[1];
  v5 = (*a1 + 64);
  v4 = *v5;
  v47 = *a1;
  v3 = v47;
  v6 = -1 << *(v47 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = a1[2];
  v29 = a1[3];
  sub_100005934(&v47, &v43, &qword_100781828);
  v10 = (63 - v6) >> 6;
  v52 = v9;

  v12 = 0;
  if (v8)
  {
    while (1)
    {
      v13 = v12;
LABEL_10:
      v15 = __clz(__rbit64(v8)) | (v13 << 6);
      v16 = (*(v3 + 48) + 16 * v15);
      v17 = *(*(v3 + 56) + 8 * v15);
      v18 = v16[1];
      v8 &= v8 - 1;
      *&v39 = *v16;
      *(&v39 + 1) = v18;
      *&v40 = v17;

      v30(&v43, &v39);

      result = v29(&v43);
      if (result)
      {
        break;
      }

      v39 = v43;
      v40 = v44;
      v41 = v45;
      v42 = v46;
      result = sub_1000032A8(&v39, &qword_100781830);
      v12 = v13;
      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v39 = v43;
    v40 = v44;
    v41 = v45;
    v42 = v46;
    if (v8)
    {
      goto LABEL_18;
    }

LABEL_19:
    v20 = v13;
    while (1)
    {
      v19 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v19 >= v10)
      {
        sub_1001DFE18();

        v25 = v40;
        *a3 = v39;
        a3[1] = v25;
        v26 = v42;
        a3[2] = v41;
        a3[3] = v26;
        return result;
      }

      v8 = v5[v19];
      ++v20;
      if (v8)
      {
        while (1)
        {
          v21 = __clz(__rbit64(v8)) | (v19 << 6);
          v22 = (*(v3 + 48) + 16 * v21);
          v23 = *(*(v3 + 56) + 8 * v21);
          v24 = v22[1];
          v8 &= v8 - 1;
          *&v31 = *v22;
          *(&v31 + 1) = v24;
          *&v32 = v23;

          v30(&v35, &v31);

          if ((v29(&v35) & 1) == 0)
          {
            break;
          }

          v31 = v35;
          v32 = v36;
          v33 = v37;
          v34 = v38;
          v48[0] = v35;
          v48[1] = v36;
          v48[2] = v37;
          v49 = v38;
          v50[0] = v39;
          v50[1] = v40;
          v50[2] = v41;
          v51 = v42;
          if ((a2(v48, v50) & 1) == 0)
          {
            goto LABEL_17;
          }

          result = sub_1000032A8(&v39, &qword_100781830);
          v39 = v31;
          v40 = v32;
          v41 = v33;
          v42 = v34;
          v13 = v19;
          if (!v8)
          {
            goto LABEL_19;
          }

LABEL_18:
          v19 = v13;
        }

        v31 = v35;
        v32 = v36;
        v33 = v37;
        v34 = v38;
LABEL_17:
        result = sub_1000032A8(&v31, &qword_100781830);
        v13 = v19;
        if (!v8)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_6:
    v14 = v12;
    while (1)
    {
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        sub_1001DFE18();

        a3[2] = 0u;
        a3[3] = 0u;
        *a3 = 0u;
        a3[1] = 0u;
        return result;
      }

      v8 = v5[v13];
      ++v14;
      if (v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100374B34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1001F0C48(&qword_100780EB0);
  v5 = __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  sub_100005934(a1, &v27 - v8, &qword_100780EB0);
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  v13 = StoreAppIdentifier.bundleID.getter();
  v15 = v14;
  sub_1001DFEBC(v10, v11, v12);
  if (v15)
  {
    v16 = sub_1001F0C48(&qword_100781818);
    v17 = *(v16 + 48);
    *a2 = v13;
    a2[1] = v15;
    sub_100005934(a1, v7, &qword_100780EB0);
    v18 = *v7;
    v19 = *(v7 + 1);
    v20 = v7[16];

    sub_1001DFEBC(v18, v19, v20);
    v21 = *(v4 + 48);
    v22 = type metadata accessor for Platform();
    (*(*(v22 - 8) + 32))(a2 + v17, &v7[v21], v22);
    (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }

  else
  {
    v23 = sub_1001F0C48(&qword_100781818);
    (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  v24 = *(v4 + 48);
  v25 = type metadata accessor for Platform();
  return (*(*(v25 - 8) + 8))(&v9[v24], v25);
}

uint64_t sub_100374D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = a3;
  v98 = a2;
  v4 = sub_1001F0C48(&qword_10077F360);
  __chkstk_darwin(v4 - 8);
  v95 = &v92 - v5;
  v97 = type metadata accessor for Locale.Language();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v93 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Platform();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v92 - v13;
  v15 = __chkstk_darwin(v12);
  v111 = &v92 - v16;
  __chkstk_darwin(v15);
  v18 = &v92 - v17;
  v19 = objc_allocWithZone(AMSMediaTask);
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v99 = [v19 initWithType:0 clientIdentifier:v20 clientVersion:v21 bag:a1];

  v22 = sub_1004FF904();
  v23 = v22[2];
  if (v23)
  {
    v107 = v11;
    v108 = v14;
    v112 = _swiftEmptyArrayStorage;
    sub_1005268C0(0, v23, 0);
    v24 = v112;
    v26 = *(v8 + 16);
    v25 = v8 + 16;
    v105 = v26;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v92 = v22;
    v28 = v22 + v27;
    v104 = *(v25 + 56);
    v29 = (v25 - 8);
    v100 = AMSMediaTaskPlatformAppleWatch;
    v101 = AMSMediaTaskPlatformAppleTV;
    v102 = AMSMediaTaskPlatformiPhone;
    v103 = AMSMediaTaskPlatformMac;
    v109 = v25;
    v106 = v18;
    while (1)
    {
      v110 = v24;
      v30 = v105;
      v105(v18, v28, v7);
      v31 = v111;
      v30(v111, v18, v7);
      v32 = v108;
      v30(v108, v31, v7);
      v33 = v107;
      static Platform.macOS.getter();
      sub_10037E0EC(&qword_100780F10, &type metadata accessor for Platform);
      LOBYTE(v31) = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *v29;
      (*v29)(v33, v7);
      v35 = v103;
      if ((v31 & 1) == 0)
      {
        static Platform.iOS.getter();
        v36 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34(v33, v7);
        v35 = v102;
        if ((v36 & 1) == 0)
        {
          static Platform.tvOS.getter();
          v37 = dispatch thunk of static Equatable.== infix(_:_:)();
          v34(v33, v7);
          v35 = v101;
          if ((v37 & 1) == 0)
          {
            static Platform.watchOS.getter();
            v38 = dispatch thunk of static Equatable.== infix(_:_:)();
            v34(v33, v7);
            v35 = v100;
            if ((v38 & 1) == 0)
            {
              break;
            }
          }
        }
      }

      v34(v32, v7);
      v39 = v35;
      v34(v111, v7);
      v18 = v106;
      v34(v106, v7);
      v24 = v110;
      v112 = v110;
      v41 = v110[2];
      v40 = v110[3];
      if (v41 >= v40 >> 1)
      {
        sub_1005268C0((v40 > 1), v41 + 1, 1);
        v24 = v112;
      }

      v24[2] = v41 + 1;
      v24[v41 + 4] = v39;
      v28 += v104;
      if (!--v23)
      {
        goto LABEL_10;
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_10:

    type metadata accessor for AMSMediaTaskPlatform(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v99 setAdditionalPlatforms:isa];

    sub_1001F0C48(&qword_10077E988);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069F6E0;
    *(inited + 32) = 0x73646C656966;
    v110 = inited;
    v111 = (inited + 32);
    *(inited + 40) = 0xE600000000000000;
    v112 = _swiftEmptyArrayStorage;
    sub_100526304(0, 13, 0);
    v44 = 0;
    v45 = v112;
    v46 = 0x80000001006C3350;
    v47 = 0x80000001006C3320;
    v48 = 0x80000001006C32F0;
    v49 = 0x80000001006C32D0;
    do
    {
      v50 = 0xE400000000000000;
      v51 = 1701667182;
      switch(*(&off_1007593D0 + v44 + 32))
      {
        case 1:
          v51 = 0xD000000000000010;
          v50 = 0x80000001006C32A0;
          break;
        case 2:
          break;
        case 3:
          v50 = 0xE800000000000000;
          v51 = 0x656C746974627573;
          break;
        case 4:
          v51 = 0x614E747369747261;
          v50 = 0xEA0000000000656DLL;
          break;
        case 5:
          v51 = 0xD00000000000001ALL;
          v50 = v49;
          break;
        case 6:
          v51 = 0xD000000000000016;
          v50 = v48;
          break;
        case 7:
          v51 = 0x6146656369766564;
          v50 = 0xEE007365696C696DLL;
          break;
        case 8:
          v51 = 0xD00000000000001ALL;
          v50 = v47;
          break;
        case 9:
          v50 = 0xE900000000000074;
          v51 = 0x6867697279706F63;
          break;
        case 0xA:
          v50 = 0xE700000000000000;
          v51 = 0x616C7545736168;
          break;
        case 0xB:
          v51 = 0xD000000000000010;
          v50 = v46;
          break;
        case 0xC:
          v50 = 0xEA00000000006C72;
          v51 = 0x5565746973626577;
          break;
        default:
          v51 = 0xD000000000000012;
          v50 = 0x80000001006C3280;
          break;
      }

      v112 = v45;
      v53 = v45[2];
      v52 = v45[3];
      if (v53 >= v52 >> 1)
      {
        v108 = v48;
        v109 = v46;
        v55 = v47;
        v107 = v49;
        sub_100526304((v52 > 1), v53 + 1, 1);
        v49 = v107;
        v48 = v108;
        v47 = v55;
        v46 = v109;
        v45 = v112;
      }

      ++v44;
      v45[2] = v53 + 1;
      v54 = &v45[2 * v53];
      v54[4] = v51;
      v54[5] = v50;
    }

    while (v44 != 13);
    v112 = _swiftEmptyArrayStorage;
    sub_100526304(0, 10, 0);
    v56 = 0;
    v57 = v112;
    v58 = 0x80000001006C3260;
    v59 = 0x80000001006C3240;
    v60 = 0x80000001006C3210;
    do
    {
      v61 = *(&off_100759400 + v56 + 32);
      if (v61 == 8)
      {
        v62 = 0x656C746974627573;
      }

      else
      {
        v62 = 0xD000000000000010;
      }

      if (v61 == 8)
      {
        v63 = 0xE800000000000000;
      }

      else
      {
        v63 = v58;
      }

      if (v61 == 7)
      {
        v62 = 0xD000000000000011;
        v63 = v59;
      }

      if (v61 == 5)
      {
        v64 = 0x73726566666FLL;
      }

      else
      {
        v64 = 0x6B726F77747261;
      }

      if (v61 == 5)
      {
        v65 = 0xE600000000000000;
      }

      else
      {
        v65 = 0xE700000000000000;
      }

      if (*(&off_100759400 + v56 + 32) <= 6u)
      {
        v62 = v64;
        v63 = v65;
      }

      if (v61 == 3)
      {
        v66 = 0xD000000000000010;
      }

      else
      {
        v66 = 0x7470697263736564;
      }

      if (v61 == 3)
      {
        v67 = v60;
      }

      else
      {
        v67 = 0xEB000000006E6F69;
      }

      if (v61 == 2)
      {
        v66 = 0xD000000000000011;
        v67 = 0x80000001006C31F0;
      }

      if (*(&off_100759400 + v56 + 32))
      {
        v68 = 0xD000000000000011;
      }

      else
      {
        v68 = 0x6449656C646E7562;
      }

      if (*(&off_100759400 + v56 + 32))
      {
        v69 = 0x80000001006C31D0;
      }

      else
      {
        v69 = 0xE800000000000000;
      }

      if (*(&off_100759400 + v56 + 32) <= 1u)
      {
        v66 = v68;
        v67 = v69;
      }

      if (*(&off_100759400 + v56 + 32) <= 4u)
      {
        v70 = v66;
      }

      else
      {
        v70 = v62;
      }

      if (*(&off_100759400 + v56 + 32) <= 4u)
      {
        v71 = v67;
      }

      else
      {
        v71 = v63;
      }

      v112 = v57;
      v73 = *(v57 + 16);
      v72 = *(v57 + 24);
      if (v73 >= v72 >> 1)
      {
        v107 = v60;
        v108 = v59;
        v109 = v58;
        sub_100526304((v72 > 1), v73 + 1, 1);
        v60 = v107;
        v59 = v108;
        v58 = v109;
        v57 = v112;
      }

      ++v56;
      *(v57 + 16) = v73 + 1;
      v74 = v57 + 16 * v73;
      *(v74 + 32) = v70;
      *(v74 + 40) = v71;
    }

    while (v56 != 10);
    v112 = v45;
    sub_1006540A0(v57);
    sub_1001F0C48(&unk_10077FB40);
    sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
    v75 = BidirectionalCollection<>.joined(separator:)();
    v77 = v76;

    v78 = v110;
    v110[6] = v75;
    v78[7] = v77;
    v78[8] = 0x6574616C6572;
    v78[9] = 0xE600000000000000;
    v78[10] = 0x7365726E6567;
    v78[11] = 0xE600000000000000;
    v79 = sub_1005288C8(v78);
    swift_setDeallocating();
    sub_1001F0C48(&qword_100784360);
    swift_arrayDestroy();
    v80 = v95;
    sub_100005934(v94, v95, &qword_10077F360);
    v81 = v96;
    v82 = v97;
    if ((*(v96 + 48))(v80, 1, v97) == 1)
    {
      sub_1000032A8(v80, &qword_10077F360);
    }

    else
    {
      v83 = v93;
      (*(v81 + 32))(v93, v80, v82);
      v84 = Locale.Language.minimalIdentifier.getter();
      v86 = v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v112 = v79;
      sub_1005C1D34(v84, v86, 108, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
      v79 = v112;
      (*(v81 + 8))(v83, v82);
    }

    v88 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v79;
    sub_1005C1D34(0x64657473696C6E75, 0xEC00000073707041, 1752459639, 0xE400000000000000, v88);
    v89 = Dictionary._bridgeToObjectiveC()().super.isa;

    v90 = v99;
    [v99 setAdditionalQueryParams:v89];

    [v90 setAccount:*(v98 + 152)];
    return v90;
  }

  return result;
}

uint64_t sub_100375B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_1001F0C48(&qword_1007817C8);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100375C64, 0, 0);
}

uint64_t sub_100375C64()
{
  v28 = v0;
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_100364970(*(v1 + 16), 0);
    v4 = sub_10027A69C(&v27, v3 + 4, v2, v1);

    v5 = sub_1001DFE18();
    if (v4 != v2)
    {
      __break(1u);
      goto LABEL_11;
    }

    v26 = v3;
    sub_10031A968(&v26);
    v10 = *(v0 + 64);
    v11 = *(v0 + 32);
    v12 = v26;
    v13 = swift_task_alloc();
    v14 = *(v0 + 48);
    *(v13 + 16) = v11;
    *(v13 + 24) = v14;
    *(v13 + 40) = v10;
    sub_100376340(v12, 100, sub_10037E250, v13);
  }

  v15 = *(v0 + 72);
  v16 = *(v15 + 16);
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = sub_100364970(*(v15 + 16), 0);
  v18 = sub_10027A544(&v27, v17 + 4, v16, v15);

  v5 = sub_1001DFE18();
  if (v18 != v16)
  {
LABEL_11:
    __break(1u);
    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v5, v6, v7, v8, v9);
  }

  v26 = v17;
  sub_10031A968(&v26);
  v19 = *(v0 + 32);
  v20 = v26;
  v21 = swift_task_alloc();
  v22 = *(v0 + 48);
  v23 = *(v0 + 64);
  *(v21 + 16) = v19;
  *(v21 + 24) = v22;
  *(v21 + 40) = v23;
  sub_100376340(v20, 100, sub_10037E25C, v21);

LABEL_7:
  sub_1001F0C48(&qword_100780EB8);
  sub_1001F0C48(&unk_10077F940);
  ThrowingTaskGroup.makeAsyncIterator()();
  *(v0 + 104) = _swiftEmptyArrayStorage;
  v24 = swift_task_alloc();
  *(v0 + 112) = v24;
  *v24 = v0;
  v24[1] = sub_100375F74;
  v8 = *(v0 + 80);
  v5 = v0 + 16;
  v9 = v0 + 24;
  v6 = 0;
  v7 = 0;

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v5, v6, v7, v8, v9);
}

uint64_t sub_100375F74()
{

  if (v0)
  {

    v1 = sub_1003762C0;
  }

  else
  {
    v1 = sub_10037608C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10037608C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5[2];
  if (v6)
  {
    v7 = v5[13];
    v8 = *(v6 + 16);
    v9 = *(v7 + 16);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v5[13];
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v12 + 24) >> 1)
      {
        if (*(v6 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v20 = v9 + v8;
        }

        else
        {
          v20 = v9;
        }

        v12 = sub_100362F14(isUniquelyReferenced_nonNull_native, v20, 1, v5[13]);
        if (*(v6 + 16))
        {
LABEL_6:
          v13 = (*(v12 + 24) >> 1) - *(v12 + 16);
          v7 = sub_1001F0C48(&qword_100786FD0);
          if (v13 >= v8)
          {
            swift_arrayInitWithCopy();

            if (!v8)
            {
              goto LABEL_18;
            }

            v14 = *(v12 + 16);
            v15 = __OFADD__(v14, v8);
            v16 = v14 + v8;
            if (!v15)
            {
              *(v12 + 16) = v16;
              goto LABEL_18;
            }

LABEL_24:
            __break(1u);
            return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v7, a2, a3, a4, a5);
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      if (!v8)
      {
LABEL_18:
        v5[13] = v12;
        v21 = swift_task_alloc();
        v5[14] = v21;
        *v21 = v5;
        v21[1] = sub_100375F74;
        a4 = v5[10];
        a5 = v5 + 3;
        v7 = (v5 + 2);
        a2 = 0;
        a3 = 0;

        return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v7, a2, a3, a4, a5);
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  (*(v5[11] + 8))(v5[12], v5[10]);

  v17 = v5[1];
  v18 = v5[13];

  return v17(v18);
}

uint64_t sub_1003762C0()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100376340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, void), uint64_t a4)
{
  v25 = a4;
  v26 = type metadata accessor for Logger();
  result = __chkstk_darwin(v26);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  if (a2 >= 1)
  {
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = 0;
      v24 = (v8 + 8);
      *&v9 = 134218496;
      v22 = v9;
      v23 = a2;
      while (1)
      {
        v14 = __OFADD__(v13, a2) ? ((v13 + a2) >> 63) ^ 0x8000000000000000 : v13 + a2;
        v15 = v12 - v13;
        if (__OFSUB__(v12, v13))
        {
          break;
        }

        if (v15 >= a2)
        {
          v15 = a2;
        }

        v16 = v13 + v15;
        if (__OFADD__(v13, v15))
        {
          goto LABEL_22;
        }

        static Logger.general.getter();

        v17 = v11;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = a3;
          v21 = swift_slowAlloc();
          *v21 = v22;
          *(v21 + 4) = v13;
          *(v21 + 12) = 2048;
          *(v21 + 14) = v16;
          *(v21 + 22) = 2048;
          *(v21 + 24) = v12;

          _os_log_impl(&_mh_execute_header, v18, v19, "[MediaAPI] Starting batch %ld ..< %ld of %ld", v21, 0x20u);
          a3 = v20;
          a2 = v23;
        }

        else
        {
        }

        v11 = v17;
        result = (*v24)(v17, v26);
        if (v16 < v13)
        {
          goto LABEL_23;
        }

        if (v12 < v13)
        {
          goto LABEL_24;
        }

        if (v13 < 0)
        {
          goto LABEL_25;
        }

        if (v12 < v16)
        {
          goto LABEL_26;
        }

        result = a3(a1, a1 + 32, v13, (2 * v16) | 1);
        v13 = v14;
        if (v14 >= v12)
        {
          return result;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  return result;
}

uint64_t sub_1003765AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v37 = a5;
  v36 = a4;
  v35 = a3;
  v34 = a2;
  v12 = sub_1001F0C48(&qword_10077F360);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v33 - v15;
  v17 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v17 - 8);
  v19 = &v33 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_1003522C8(a7, v38);
  sub_100005934(a8, v16, &qword_10077F360);
  v21 = (*(v13 + 80) + 200) & ~*(v13 + 80);
  v22 = swift_allocObject();
  v23 = v38[7];
  *(v22 + 136) = v38[6];
  *(v22 + 152) = v23;
  v24 = v38[9];
  *(v22 + 168) = v38[8];
  *(v22 + 184) = v24;
  v25 = v38[3];
  *(v22 + 72) = v38[2];
  *(v22 + 88) = v25;
  v26 = v38[5];
  *(v22 + 104) = v38[4];
  *(v22 + 120) = v26;
  v27 = v38[1];
  *(v22 + 40) = v38[0];
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = a6;
  *(v22 + 56) = v27;
  sub_10020A668(v16, v22 + v21, &qword_10077F360);
  v28 = (v22 + ((v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = v34;
  *v28 = a1;
  v28[1] = v29;
  v30 = v36;
  v28[2] = v35;
  v28[3] = v30;
  v31 = a6;
  swift_unknownObjectRetain();
  sub_100377788(v19, &unk_1006A4B90, v22);
  return sub_1000032A8(v19, &unk_100780380);
}

uint64_t sub_100376854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[31] = v14;
  v8[32] = v15;
  v8[29] = a6;
  v8[30] = a8;
  v8[27] = a4;
  v8[28] = a5;
  v8[26] = a1;
  v9 = type metadata accessor for Logger();
  v8[33] = v9;
  v8[34] = *(v9 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = *(type metadata accessor for MediaAPIApp(0) - 8);
  v8[37] = swift_task_alloc();
  v10 = sub_1001F0C48(&qword_100786FD0);
  v8[38] = v10;
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();
  v11 = sub_1001F0C48(&qword_1007817D0);
  v8[41] = v11;
  v8[42] = *(v11 - 8);
  v8[43] = swift_task_alloc();

  return _swift_task_switch(sub_100376A50, 0, 0);
}

uint64_t sub_100376A50()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = sub_100374D9C(v0[27], v0[28], v0[29]);
  v0[44] = v3;
  v4 = (v1 >> 1) - v2;
  if (__OFSUB__(v1 >> 1, v2))
  {
    goto LABEL_16;
  }

  v5 = v3;
  if (v4)
  {
    v3 = sub_100526304(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
LABEL_17:
      __break(1u);
      return _swift_continuation_await(v3);
    }

    v6 = v0[31];
    v7 = _swiftEmptyArrayStorage;
    if (v6 <= (v1 >> 1))
    {
      v8 = v1 >> 1;
    }

    else
    {
      v8 = v0[31];
    }

    v9 = v8 - v6;
    v10 = 16 * v6;
    while (v9)
    {
      v11 = (v0[30] + v10);
      v12 = v11[1];
      v0[21] = *v11;
      v0[22] = v12;

      v3 = String.init<A>(_:)();
      v26 = v7;
      v15 = v7[2];
      v14 = v7[3];
      if (v15 >= v14 >> 1)
      {
        v25 = v3;
        v17 = v13;
        sub_100526304((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v3 = v25;
        v7 = v26;
      }

      v7[2] = v15 + 1;
      v16 = &v7[2 * v15];
      v16[4] = v3;
      v16[5] = v13;
      --v9;
      v10 += 16;
      if (!--v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  v19 = v0[42];
  v18 = v0[43];
  v20 = v0[41];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setItemIdentifiers:isa];

  v22 = [v5 perform];
  v0[45] = v22;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_100376D98;
  swift_continuation_init();
  v0[17] = v20;
  v23 = sub_10020A748(v0 + 14);
  sub_100006190(0, &qword_1007817D8);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v19 + 32))(v23, v18, v20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003776D8;
  v0[13] = &unk_100760F40;
  [v22 resultWithCompletion:?];
  (*(v19 + 8))(v23, v20);
  v3 = (v0 + 2);

  return _swift_continuation_await(v3);
}

uint64_t sub_100376D98()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_10037762C;
  }

  else
  {
    v2 = sub_100376EA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

unsigned __int8 *sub_100376EA8()
{
  v52 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 184);
  v3 = [v2 data];

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001F0C48(&qword_1007817E0);
  sub_100213FA0(&qword_1007817E8, &qword_1007817E0);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v7 = *(v0 + 192);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v43 = *(v0 + 352);

    sub_100007158(v4, v6);

LABEL_76:
    **(v0 + 208) = _swiftEmptyArrayStorage;

    v44 = *(v0 + 8);

    return v44();
  }

  v45 = v6;
  v46 = v4;
  v10 = *(v0 + 312);
  v9 = *(v0 + 320);
  v47 = *(v0 + 304);
  v50 = *(v0 + 296);
  v11 = *(v0 + 288);
  result = sub_1005268E0(0, v8, 0);
  v13 = 0;
  v48 = v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v49 = v11;
  while (v13 < *(v7 + 16))
  {
    v14 = *(v0 + 296);
    result = sub_100382A20(v48 + *(v49 + 72) * v13, v14, type metadata accessor for MediaAPIApp);
    v15 = *v14;
    v16 = *(v50 + 8);
    v17 = HIBYTE(v16) & 0xF;
    v18 = v15 & 0xFFFFFFFFFFFFLL;
    if ((v16 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v16) & 0xF;
    }

    else
    {
      v19 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19)
    {
      goto LABEL_80;
    }

    if ((v16 & 0x1000000000000000) == 0)
    {
      if ((v16 & 0x2000000000000000) != 0)
      {
        v51[0] = v15;
        v51[1] = v16 & 0xFFFFFFFFFFFFFFLL;
        if (v15 == 43)
        {
          if (!v17)
          {
            goto LABEL_81;
          }

          if (--v17)
          {
            v21 = 0;
            v29 = v51 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = __CFADD__(10 * v21, v30);
              v21 = 10 * v21 + v30;
              if (v24)
              {
                break;
              }

              ++v29;
              if (!--v17)
              {
                goto LABEL_67;
              }
            }
          }
        }

        else if (v15 == 45)
        {
          if (!v17)
          {
            goto LABEL_84;
          }

          if (--v17)
          {
            v21 = 0;
            v25 = v51 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = 10 * v21 >= v26;
              v21 = 10 * v21 - v26;
              if (!v24)
              {
                break;
              }

              ++v25;
              if (!--v17)
              {
                goto LABEL_67;
              }
            }
          }
        }

        else if (v17)
        {
          v21 = 0;
          v32 = v51;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v33);
            v21 = 10 * v21 + v33;
            if (v24)
            {
              break;
            }

            ++v32;
            if (!--v17)
            {
              goto LABEL_67;
            }
          }
        }
      }

      else
      {
        if ((v15 & 0x1000000000000000) != 0)
        {
          result = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v20 = *result;
        if (v20 == 43)
        {
          if (v18 < 1)
          {
            goto LABEL_83;
          }

          v17 = v18 - 1;
          if (v18 != 1)
          {
            v21 = 0;
            if (!result)
            {
              goto LABEL_58;
            }

            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = __CFADD__(10 * v21, v28);
              v21 = 10 * v21 + v28;
              if (v24)
              {
                break;
              }

              ++v27;
              if (!--v17)
              {
                goto LABEL_67;
              }
            }
          }
        }

        else if (v20 == 45)
        {
          if (v18 < 1)
          {
            goto LABEL_82;
          }

          v17 = v18 - 1;
          if (v18 != 1)
          {
            v21 = 0;
            if (result)
            {
              v22 = result + 1;
              while (1)
              {
                v23 = *v22 - 48;
                if (v23 > 9)
                {
                  goto LABEL_66;
                }

                if (!is_mul_ok(v21, 0xAuLL))
                {
                  goto LABEL_66;
                }

                v24 = 10 * v21 >= v23;
                v21 = 10 * v21 - v23;
                if (!v24)
                {
                  goto LABEL_66;
                }

                ++v22;
                if (!--v17)
                {
                  goto LABEL_67;
                }
              }
            }

LABEL_58:
            LOBYTE(v17) = 0;
LABEL_67:
            if (v17)
            {
              goto LABEL_85;
            }

            goto LABEL_68;
          }
        }

        else
        {
          if (!v18)
          {
            goto LABEL_66;
          }

          v21 = 0;
          if (!result)
          {
            goto LABEL_58;
          }

          while (1)
          {
            v31 = *result - 48;
            if (v31 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v31);
            v21 = 10 * v21 + v31;
            if (v24)
            {
              break;
            }

            ++result;
            if (!--v18)
            {
              goto LABEL_58;
            }
          }
        }
      }

LABEL_66:
      v21 = 0;
      LOBYTE(v17) = 1;
      goto LABEL_67;
    }

    v21 = sub_1005D92D4(v15, v16, 10);
    v41 = v40;

    if (v41)
    {
      goto LABEL_85;
    }

LABEL_68:
    v34 = *(v0 + 320);
    v35 = *(v0 + 296);
    v36 = *(v47 + 48);
    *v34 = v21;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    sub_100381C80(v35, v34 + v36, type metadata accessor for MediaAPIApp);
    v38 = _swiftEmptyArrayStorage[2];
    v37 = _swiftEmptyArrayStorage[3];
    if (v38 >= v37 >> 1)
    {
      sub_1005268E0(v37 > 1, v38 + 1, 1);
    }

    ++v13;
    v39 = *(v0 + 320);
    _swiftEmptyArrayStorage[2] = v38 + 1;
    result = sub_10020A668(v39, _swiftEmptyArrayStorage + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v38, &qword_100786FD0);
    if (v13 == v8)
    {
      v42 = *(v0 + 352);
      sub_100007158(v46, v45);

      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_10037762C()
{
  v1 = v0[45];
  v2 = v0[44];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_1003776D8(uint64_t a1, void *a2, void *a3)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_1001F0C48(&qword_1007817D0);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_1001F0C48(&qword_1007817D0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100377788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_100005934(a1, v18 - v8, &unk_100780380);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(v9, &unk_100780380);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  sub_1001F0C48(&qword_100780EB8);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_100377984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a5;
  v38 = a4;
  v37 = a3;
  v36 = a2;
  v13 = sub_1001F0C48(&qword_10077F360);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v17 = &v35 - v16;
  v18 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v18 - 8);
  v20 = &v35 - v19;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_1003522C8(a7, v40);
  sub_100005934(a8, v17, &qword_10077F360);
  v22 = (*(v14 + 80) + 200) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v40[7];
  *(v24 + 136) = v40[6];
  *(v24 + 152) = v25;
  v26 = v40[9];
  *(v24 + 168) = v40[8];
  *(v24 + 184) = v26;
  v27 = v40[3];
  *(v24 + 72) = v40[2];
  *(v24 + 88) = v27;
  v28 = v40[5];
  *(v24 + 104) = v40[4];
  *(v24 + 120) = v28;
  v29 = v40[1];
  *(v24 + 40) = v40[0];
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = a6;
  *(v24 + 56) = v29;
  sub_10020A668(v17, v24 + v22, &qword_10077F360);
  v30 = (v24 + v23);
  v31 = v36;
  *v30 = a1;
  v30[1] = v31;
  v32 = v38;
  v30[2] = v37;
  v30[3] = v32;
  *(v24 + ((v23 + 39) & 0xFFFFFFFFFFFFFFF8)) = a9;
  v33 = a6;
  swift_unknownObjectRetain();

  sub_100377788(v20, &unk_1006A4B60, v24);
  return sub_1000032A8(v20, &unk_100780380);
}

uint64_t sub_100377C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 224) = v15;
  *(v8 + 208) = v14;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 160) = a1;
  *(v8 + 168) = a4;
  sub_1001F0C48(&qword_1007817C0);
  *(v8 + 232) = swift_task_alloc();
  v9 = sub_1001F0C48(&qword_100786FD0);
  *(v8 + 240) = v9;
  *(v8 + 248) = *(v9 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = *(type metadata accessor for MediaAPIApp(0) - 8);
  *(v8 + 280) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v8 + 288) = v10;
  *(v8 + 296) = *(v10 - 8);
  *(v8 + 304) = swift_task_alloc();
  type metadata accessor for String.Encoding();
  *(v8 + 312) = swift_task_alloc();
  v11 = sub_1001F0C48(&qword_1007817D0);
  *(v8 + 320) = v11;
  *(v8 + 328) = *(v11 - 8);
  *(v8 + 336) = swift_task_alloc();

  return _swift_task_switch(sub_100377EBC, 0, 0);
}

uint64_t sub_100377EBC()
{
  v1 = v0[27];
  v2 = sub_100374D9C(v0[21], v0[22], v0[23]);
  v0[43] = v2;
  if ((v1 & 1) == 0)
  {
    goto LABEL_2;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    v3 = _swiftEmptyArrayStorage;
  }

  v5 = v0[26];
  v4 = v0[27];
  v6 = v3[2];

  if (__OFSUB__(v4 >> 1, v5))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 != (v4 >> 1) - v5)
  {
LABEL_13:
    swift_unknownObjectRelease();
LABEL_2:
    sub_10037CD94(v0[24], v0[25], v0[26], v0[27]);
    goto LABEL_9;
  }

  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }

LABEL_9:
  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[40];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setBundleIdentifiers:isa];

  v11 = [v2 perform];
  v0[44] = v11;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100378198;
  swift_continuation_init();
  v0[17] = v9;
  v12 = sub_10020A748(v0 + 14);
  sub_100006190(0, &qword_1007817D8);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v8 + 32))(v12, v7, v9);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003776D8;
  v0[13] = &unk_100760EF0;
  [v11 resultWithCompletion:?];
  (*(v8 + 8))(v12, v9);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100378198()
{
  v1 = *(*v0 + 48);
  *(*v0 + 360) = v1;
  if (v1)
  {
    v2 = sub_10037886C;
  }

  else
  {
    v2 = sub_1003782A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003782A8()
{
  v44 = v0;
  v1 = v0[44];
  v2 = v0[18];
  v3 = [v2 data];

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  static String.Encoding.utf8.getter();
  v42 = v4;
  result = String.init(data:encoding:)();
  if (!v8)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = v8;
  static Logger.general.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[37];
  v14 = v0[38];
  v16 = v0[36];
  if (v13)
  {
    v39 = v6;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43 = v18;
    *v17 = 136315138;
    v19 = sub_1002346CC(v9, v10, &v43);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v17, 0xCu);
    sub_10000710C(v18);

    v6 = v39;
  }

  else
  {
  }

  (*(v15 + 8))(v14, v16);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001F0C48(&qword_1007817E0);
  sub_100213FA0(&qword_1007817E8, &qword_1007817E0);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v40 = v6;

  v20 = v0[19];
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = 0;
    v41 = v0[31];
    v23 = (v41 + 48);
    v24 = _swiftEmptyArrayStorage;
    v25 = v0[34];
    while (v22 < *(v20 + 16))
    {
      v26 = v0[35];
      v28 = v0[28];
      v27 = v0[29];
      sub_100382A20(v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v26, type metadata accessor for MediaAPIApp);
      sub_10037893C(v26, v28, v27);
      v30 = v0[29];
      v29 = v0[30];
      sub_100381C20(v0[35], type metadata accessor for MediaAPIApp);
      if ((*v23)(v30, 1, v29) == 1)
      {
        result = sub_1000032A8(v0[29], &qword_1007817C0);
      }

      else
      {
        v32 = v0[32];
        v31 = v0[33];
        sub_10020A668(v0[29], v31, &qword_100786FD0);
        sub_10020A668(v31, v32, &qword_100786FD0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_100362F14(0, v24[2] + 1, 1, v24);
        }

        v34 = v24[2];
        v33 = v24[3];
        if (v34 >= v33 >> 1)
        {
          v24 = sub_100362F14(v33 > 1, v34 + 1, 1, v24);
        }

        v35 = v0[32];
        v24[2] = v34 + 1;
        result = sub_10020A668(v35, v24 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v34, &qword_100786FD0);
        v23 = (v41 + 48);
      }

      if (v21 == ++v22)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v24 = _swiftEmptyArrayStorage;
LABEL_17:
  v36 = v0[43];
  v37 = v0[20];
  sub_100007158(v42, v40);

  *v37 = v24;

  v38 = v0[1];

  return v38();
}

uint64_t sub_10037886C()
{
  v1 = v0[44];
  v2 = v0[43];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10037893C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v53 = a3;
  v65 = a2;
  v64 = sub_1001F0C48(&qword_1007817F0);
  __chkstk_darwin(v64);
  v63 = &v50 - v4;
  v5 = type metadata accessor for Platform();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v52 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v71 = &v50 - v9;
  v10 = sub_1001F0C48(&qword_10077FE28);
  v11 = __chkstk_darwin(v10 - 8);
  v62 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v50 - v14;
  __chkstk_darwin(v13);
  v17 = &v50 - v16;
  v18 = *(type metadata accessor for MediaAPIApp(0) + 24);
  v51 = a1;
  v19 = *(a1 + v18);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v66 = (v6 + 32);
  v67 = v19;
  v25 = (v6 + 56);
  v54 = v6 + 16;
  v55 = v6;
  v60 = (v6 + 48);
  v56 = (v6 + 8);

  v27 = 0;
  v69 = v17;
  v70 = v15;
  v57 = v24;
  v58 = v20;
  v61 = (v6 + 56);
  if (!v23)
  {
LABEL_4:
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v24)
      {

        v45 = sub_1001F0C48(&qword_100786FD0);
        return (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
      }

      v23 = *(v20 + 8 * v28);
      ++v27;
      if (v23)
      {
        v27 = v28;
        goto LABEL_8;
      }
    }

    __break(1u);
    return result;
  }

  while (1)
  {
LABEL_8:
    v29 = __clz(__rbit64(v23)) | (v27 << 6);
    v30 = *(*(v67 + 48) + v29);
    v31 = (*(v67 + 56) + 184 * v29);
    v32 = v31[1];
    v68 = *v31;
    v72 = v32;

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        static Platform.tvOS.getter();
      }

      else
      {
        static Platform.visionOS.getter();
      }
    }

    else if (v30)
    {
      static Platform.iOS.getter();
    }

    else
    {
      static Platform.macOS.getter();
    }

    v59 = *v66;
    v59(v17, v71, v5);
    v33 = *v25;
    v34 = 1;
    (*v25)(v17, 0, 1, v5);
    v35 = v65;
    if (*(v65 + 16))
    {
      v36 = sub_10052213C(v68, v72);
      if (v37)
      {
        (*(v55 + 16))(v15, *(v35 + 56) + *(v55 + 72) * v36, v5);
        v34 = 0;
      }

      else
      {
        v34 = 1;
      }
    }

    v33(v15, v34, 1, v5);
    v38 = v63;
    v39 = *(v64 + 48);
    sub_100005934(v17, v63, &qword_10077FE28);
    sub_100005934(v15, v38 + v39, &qword_10077FE28);
    v40 = *v60;
    if ((*v60)(v38, 1, v5) == 1)
    {
      break;
    }

    sub_100005934(v38, v62, &qword_10077FE28);
    if (v40(v38 + v39, 1, v5) == 1)
    {
      sub_1000032A8(v70, &qword_10077FE28);
      sub_1000032A8(v69, &qword_10077FE28);
      (*v56)(v62, v5);
      v25 = v61;
      goto LABEL_24;
    }

    v42 = v52;
    v59(v52, (v38 + v39), v5);
    sub_10037E0EC(&qword_100780F10, &type metadata accessor for Platform);
    v43 = v62;
    LODWORD(v59) = dispatch thunk of static Equatable.== infix(_:_:)();
    v44 = *v56;
    (*v56)(v42, v5);
    sub_1000032A8(v70, &qword_10077FE28);
    sub_1000032A8(v69, &qword_10077FE28);
    v44(v43, v5);
    sub_1000032A8(v38, &qword_10077FE28);
    v25 = v61;
    if (v59)
    {
      goto LABEL_29;
    }

LABEL_26:
    v23 &= v23 - 1;

    v17 = v69;
    v15 = v70;
    v24 = v57;
    v20 = v58;
    if (!v23)
    {
      goto LABEL_4;
    }
  }

  sub_1000032A8(v15, &qword_10077FE28);
  sub_1000032A8(v17, &qword_10077FE28);
  v41 = v40(v38 + v39, 1, v5);
  v25 = v61;
  if (v41 != 1)
  {
LABEL_24:
    sub_1000032A8(v38, &qword_1007817F0);
    goto LABEL_26;
  }

  sub_1000032A8(v38, &qword_10077FE28);
LABEL_29:

  v46 = sub_1001F0C48(&qword_100786FD0);
  v47 = *(v46 + 48);
  v48 = v53;
  v49 = v72;
  *v53 = v68;
  v48[1] = v49;
  *(v48 + 16) = 1;
  sub_100382A20(v51, v48 + v47, type metadata accessor for MediaAPIApp);
  return (*(*(v46 - 8) + 56))(v48, 0, 1, v46);
}

uint64_t sub_10037906C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = v3;
}

uint64_t sub_100379090(void *a1, void *a2)
{
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = a1[6];
  v8 = a2[2];
  v14[0] = *a1;
  v14[1] = v3;
  v13[2] = v14;
  if (sub_10020A1BC(sub_1001F7FFC, v13, v8))
  {
    if (!v7)
    {
      return 1;
    }

    v9 = a2[7];
    v10 = v9 < v5;
    if (v9 == v5 && (v11 = a2[8], v10 = v11 < v4, v11 == v4))
    {
      if (a2[9] >= v6)
      {
        return 1;
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100379144(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_1003791BC(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = a3;
  type metadata accessor for MediaAPIResponse.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedDecodingContainer();
  v12 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  v8 = sub_100006D8C(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v3)
  {
    v9 = v12;
    type metadata accessor for Array();
    v14 = v13;
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v7, v5);
    v8 = v15;
  }

  sub_10000710C(a1);
  return v8;
}

uint64_t sub_1003793AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100379144(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1003793E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10020EC90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100379410(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100379464(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

void *sub_1003794B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_1003791BC(a1, *(a2 + 16), *(a2 + 24));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100379514@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10037FC40(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100379544(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xED00006563697665;
  v6 = 0x447974696C616572;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6863746177;
  if (v2 != 4)
  {
    v8 = 6513005;
    v7 = 0xE300000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 1685016681;
  v10 = 0xE400000000000000;
  if (v2 != 2)
  {
    v9 = 30324;
    v10 = 0xE200000000000000;
  }

  if (*v1)
  {
    v4 = 1684099177;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

Swift::Int sub_100379694()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10037974C()
{
  String.hash(into:)();
}

Swift::Int sub_1003797F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003798A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100380014(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1003798D4(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7893871;
  v4 = 0xE900000000000073;
  v5 = 0x6F7674656C707061;
  if (*v1 != 2)
  {
    v5 = 0x736F6E6F69736976;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 7565161;
    v2 = 0xE300000000000000;
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

uint64_t sub_100379948@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100380350(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100379974(uint64_t a1, uint64_t a2)
{
  v4 = sub_100382BD8();

  return RawRepresentable<>.codingKey.getter(a1, a2, v4);
}

uint64_t sub_1003799C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100382BD8();

  return RawRepresentable<>.init<A>(codingKey:)(a1, a4, a2, a5, v10, a3);
}

uint64_t sub_100379A44()
{
  v1 = 0x4E657361656C6572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x446E6F6973726576;
  }
}

uint64_t sub_100379AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003804B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100379AE0(uint64_t a1)
{
  v2 = sub_1003838BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100379B1C(uint64_t a1)
{
  v2 = sub_1003838BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100379B58@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1003805E4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_100379B9C(char a1)
{
  result = 6513005;
  switch(a1)
  {
    case 1:
      result = 0x5F6F725064617069;
      break;
    case 2:
      result = 0x6F725064617069;
      break;
    case 3:
      result = 0x31315F64617069;
      break;
    case 4:
      result = 0x5F30315F64617069;
      break;
    case 5:
      result = 1684107369;
      break;
    case 6:
      result = 0x656E6F687069;
      break;
    case 7:
      result = 0x35656E6F687069;
      break;
    case 8:
      result = 0x36656E6F687069;
      break;
    case 9:
      result = 0x2B36656E6F687069;
      break;
    case 10:
      result = 0x355F656E6F687069;
      break;
    case 11:
      result = 0x365F656E6F687069;
      break;
    case 12:
      result = 0x645F656E6F687069;
      break;
    case 13:
      result = 0x645F656E6F687069;
      break;
    case 14:
    case 15:
    case 17:
    case 18:
      result = 0x746157656C707061;
      break;
    case 16:
      result = 0x5654656C707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100379D94(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x656C746974627573;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x73726566666FLL;
    if (a1 != 5)
    {
      v7 = 0x6B726F77747261;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6449656C646E7562;
    v2 = 0xD000000000000011;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0x7470697263736564;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
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
}

uint64_t sub_100379EE0()
{
  if (*v0)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x74726F6873;
  }
}

uint64_t sub_100379F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74726F6873 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000)
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

uint64_t sub_100379FF0(uint64_t a1)
{
  v2 = sub_100383964();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037A02C(uint64_t a1)
{
  v2 = sub_100383964();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037A068@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1003807E8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10037A098(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657461647075;
  }

  else
  {
    v3 = 7628135;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x657461647075;
  }

  else
  {
    v5 = 7628135;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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

Swift::Int sub_10037A134()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10037A1AC()
{
  String.hash(into:)();
}

Swift::Int sub_10037A210()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10037A284@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100759430, *a1);

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

void sub_10037A2E4(uint64_t *a1@<X8>)
{
  v2 = 7628135;
  if (*v1)
  {
    v2 = 0x657461647075;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10037A378()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x6D61726150797562;
  }
}

uint64_t sub_10037A3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D61726150797562 && a2 == 0xE900000000000073;
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

uint64_t sub_10037A494(uint64_t a1)
{
  v2 = sub_1003839B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037A4D0(uint64_t a1)
{
  v2 = sub_1003839B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037A50C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1003809B4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_10037A550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6775156 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10037A5D8(uint64_t a1)
{
  v2 = sub_100383910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037A614(uint64_t a1)
{
  v2 = sub_100383910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037A694()
{
  v1 = 0x746867696568;
  if (*v0 != 1)
  {
    v1 = 0x6874646977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_10037A6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100380BA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10037A708(uint64_t a1)
{
  v2 = sub_100380EBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037A744(uint64_t a1)
{
  v2 = sub_100380EBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037A780@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100380CB4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10037A7B0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100379B9C(*a1);
  v5 = v4;
  if (v3 == sub_100379B9C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10037A838()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100379B9C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10037A89C()
{
  sub_100379B9C(*v0);
  String.hash(into:)();
}

Swift::Int sub_10037A8F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100379B9C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10037A950@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100380F10();
  *a1 = result;
  return result;
}

uint64_t sub_10037A980@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100379B9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10037AA0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100380F64();

  return RawRepresentable<>.codingKey.getter(a1, a2, v4);
}

uint64_t sub_10037AA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100380F64();

  return RawRepresentable<>.init<A>(codingKey:)(a1, a4, a2, a5, v10, a3);
}

uint64_t sub_10037AAF4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_10037ABA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10037AC24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_10037AC94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10037ACFC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100380FB8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10037AD2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100379D94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10037AD74@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100380FB8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10037ADB8(uint64_t a1)
{
  v2 = sub_100381858();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037ADF4(uint64_t a1)
{
  v2 = sub_100381858();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10037AE30@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100381004(a1, v10);
  if (!v2)
  {
    v5 = v18;
    *(a2 + 128) = v17;
    *(a2 + 144) = v5;
    *(a2 + 160) = v19;
    *(a2 + 176) = v20;
    v6 = v14;
    *(a2 + 64) = v13;
    *(a2 + 80) = v6;
    v7 = v16;
    *(a2 + 96) = v15;
    *(a2 + 112) = v7;
    v8 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a2 + 32) = v11;
    *(a2 + 48) = v9;
  }

  return result;
}

uint64_t sub_10037AEB0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6146656369766564;
  }
}

uint64_t sub_10037AEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6146656369766564 && a2 == 0xEC000000796C696DLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006CA3B0 == a2)
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

uint64_t sub_10037AFE0(uint64_t a1)
{
  v2 = sub_100382B84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037B01C(uint64_t a1)
{
  v2 = sub_100382B84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037B058@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100381D3C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_10037B088(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0x656C746974627573;
      break;
    case 4:
      result = 0x614E747369747261;
      break;
    case 5:
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x6146656369766564;
      break;
    case 9:
      result = 0x6867697279706F63;
      break;
    case 10:
      result = 0x616C7545736168;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x5565746973626577;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_10037B208@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1001F0C48(&unk_1007809F0);
  v4 = __chkstk_darwin(v3 - 8);
  v38 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v32 - v6;
  v8 = sub_1001F0C48(&qword_100781B58);
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v10 = v32 - v9;
  v11 = type metadata accessor for MediaAPIApp.Attributes(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 68);
  v16 = type metadata accessor for URL();
  v17 = *(*(v16 - 8) + 56);
  v43 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 72);
  v44 = v14;
  v17(&v14[v18], 1, 1, v16);
  v19 = a1[3];
  v42 = a1;
  sub_100006D8C(a1, v19);
  sub_10038261C();
  v20 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    v22 = v44;
    sub_10000710C(v42);
    swift_bridgeObjectRelease_n();

    sub_1000032A8(&v22[v43], &unk_1007809F0);
    return sub_1000032A8(&v22[v18], &unk_1007809F0);
  }

  else
  {
    v41 = v16;
    v21 = v39;
    sub_1001F0C48(&qword_100781B68);
    v46 = 0;
    sub_100382670();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v44;
    *v44 = v45;
    sub_1001F0C48(&qword_100781828);
    v46 = 1;
    sub_1003827A4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = v18;
    v34 = v45;
    *(v23 + 1) = v45;
    LOBYTE(v45) = 2;
    *(v23 + 2) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v23 + 3) = v24;
    LOBYTE(v45) = 3;
    v33 = v10;
    *(v23 + 4) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v23 + 5) = v25;
    LOBYTE(v45) = 4;
    *(v23 + 6) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v23 + 7) = v26;
    sub_1001F0C48(&qword_1007819F0);
    v46 = 5;
    sub_100382828();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32[1] = v45;
    *(v23 + 8) = v45;
    v46 = 6;
    sub_100382908();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v23 + 72) = v45;
    sub_1001F0C48(&unk_100781A00);
    v46 = 7;
    sub_100383B00(&qword_100781BA8, &unk_100781A00, &unk_1006A4E08, sub_10038295C);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v23 + 11) = v45;
    LOBYTE(v45) = 8;
    v23[96] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v45) = 9;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v28;
    v29 = v44;
    *(v44 + 13) = v27;
    *(v29 + 14) = v28;
    LOBYTE(v45) = 10;
    v44[120] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v45) = 11;
    sub_10037E0EC(&qword_100781BB8, &type metadata accessor for URL);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1003829B0(v7, &v44[v43]);
    LOBYTE(v45) = 12;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v21 + 8))(v33, v40);
    v30 = v44;
    sub_1003829B0(v38, &v44[v35]);
    sub_100382A20(v30, v37, type metadata accessor for MediaAPIApp.Attributes);
    sub_10000710C(v42);
    return sub_100381C20(v30, type metadata accessor for MediaAPIApp.Attributes);
  }
}

uint64_t sub_10037BB48(uint64_t a1)
{
  v2 = sub_100383BD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037BB84(uint64_t a1)
{
  v2 = sub_100383BD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037BC04@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, void (*a3)(void)@<X5>, uint64_t *a4@<X8>)
{
  v18 = a4;
  v7 = sub_1001F0C48(a2);
  v17 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  sub_100006D8C(a1, a1[3]);
  a3();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v4)
  {
    return sub_10000710C(a1);
  }

  v10 = v17;
  v11 = v18;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  (*(v10 + 8))(v9, v7);
  result = sub_10000710C(a1);
  *v11 = v12;
  v11[1] = v14;
  return result;
}

uint64_t sub_10037BDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C70704173707061 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10037BE38(uint64_t a1)
{
  v2 = sub_100382ADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037BE74(uint64_t a1)
{
  v2 = sub_100382ADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10037BEB0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100381F20(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_10037BF3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100382094(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10037BF6C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10037B088(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10037BFB4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100382094(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10037BFF8(uint64_t a1)
{
  v2 = sub_10038261C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C034(uint64_t a1)
{
  v2 = sub_10038261C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037C088@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for MediaAPIApp.Attributes(0);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F0C48(&qword_100781B20);
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for MediaAPIApp(0);
  __chkstk_darwin(v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006D8C(a1, a1[3]);
  sub_100381BCC();
  v23 = v8;
  v12 = v24;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_10000710C(a1);
  }

  v13 = a1;
  v14 = v21;
  v15 = v22;
  v29 = 0;
  *v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[1] = v16;
  v24 = v16;
  v28 = 1;
  v11[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v11[3] = v17;
  v27 = 2;
  sub_10037E0EC(&qword_100781B30, type metadata accessor for MediaAPIApp.Attributes);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100381C80(v5, v11 + *(v9 + 24), type metadata accessor for MediaAPIApp.Attributes);
  v26 = 3;
  sub_100381CE8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = *(v9 + 28);
  (*(v14 + 8))(v23, v15);
  *(v11 + v19) = v25;
  sub_100382A20(v11, v20, type metadata accessor for MediaAPIApp);
  sub_10000710C(v13);
  return sub_100381C20(v11, type metadata accessor for MediaAPIApp);
}

uint64_t sub_10037C488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10037C510(uint64_t a1)
{
  v2 = sub_100384550();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C54C(uint64_t a1)
{
  v2 = sub_100384550();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10037C5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10037C678(uint64_t a1)
{
  v2 = sub_100384380();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C6B4(uint64_t a1)
{
  v2 = sub_100384380();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10037C6F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1003820E0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10037C71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10037C7A4(uint64_t a1)
{
  v2 = sub_100383AAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C7E0(uint64_t a1)
{
  v2 = sub_100383AAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10037C81C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100382254(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10037C85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365726E6567 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10037C8E0(uint64_t a1)
{
  v2 = sub_100382574();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037C91C(uint64_t a1)
{
  v2 = sub_100382574();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10037C958@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100382404(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_10037C990()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10037CA50()
{
  String.hash(into:)();
}

Swift::Int sub_10037CAFC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10037CBB8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100383A60(*a1);
  *a2 = result;
  return result;
}

void sub_10037CBE8(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xEA00000000007365;
  v5 = 0x7475626972747461;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6974616C6572;
    v4 = 0xED00007370696873;
  }

  if (*v1)
  {
    v3 = 1717924456;
    v2 = 0xE400000000000000;
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

uint64_t sub_10037CC64()
{
  v1 = 25705;
  v2 = 0x7475626972747461;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6974616C6572;
  }

  if (*v0)
  {
    v1 = 1717924456;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10037CCDC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100383A60(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10037CD04(uint64_t a1)
{
  v2 = sub_100381BCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10037CD40(uint64_t a1)
{
  v2 = sub_100381BCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10037CD94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1001F0C48(&qword_100784460);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10037CE6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1001F0C48(&qword_1007815B8);
      v7 = *(type metadata accessor for MediaAPIUpdates.App() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for MediaAPIUpdates.App();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_10037D00C(uint64_t *a1, int a2, void *a3)
{
  v80 = a3;
  v84 = a2;
  v87 = type metadata accessor for Platform();
  v4 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v74[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = sub_1001F0C48(&qword_100780EB0);
  v6 = *(v98 - 8);
  __chkstk_darwin(v98);
  v91 = &v74[-v7];
  v8 = sub_1001F0C48(&qword_1007817F8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v74[-v12];
  v14 = sub_1001F0C48(&qword_100781800);
  v15 = __chkstk_darwin(v14 - 8);
  v81 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v104 = &v74[-v18];
  __chkstk_darwin(v17);
  v79 = &v74[-v19];
  v103 = sub_1001F0C48(&qword_100781808);
  v20 = *(v103 - 8);
  v21 = __chkstk_darwin(v103);
  v76 = &v74[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v94 = &v74[-v24];
  __chkstk_darwin(v23);
  v82 = &v74[-v25];
  v26 = *a1;
  v90 = a1[1];
  v27 = a1[2];
  v93 = a1[3];
  v109 = v26;
  v28 = a1[4];
  v75 = a1[5];
  v29 = a1[6];
  v100 = v26;
  v99 = *(v26 + 16);
  sub_100005934(&v109, v108, &qword_100781810);
  v89 = v6;
  v96 = (v6 + 48);
  v97 = (v6 + 56);
  v30 = v11;
  v101 = (v20 + 48);
  v102 = (v20 + 56);
  v78 = v4;
  v85 = (v4 + 32);
  v92 = v27;

  v95 = v28;

  v77 = v29;

  v31 = 0;
  while (1)
  {
    while (1)
    {
      if (v31 == v99)
      {
        v32 = 1;
        v31 = v99;
      }

      else
      {
        if ((v31 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_36;
        }

        if (v31 >= *(v100 + 16))
        {
          goto LABEL_32;
        }

        sub_100005934(v100 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v31, v13, &qword_100780EB0);
        v32 = 0;
        ++v31;
      }

      v33 = v98;
      (*v97)(v13, v32, 1, v98);
      sub_10020A668(v13, v30, &qword_1007817F8);
      if ((*v96)(v30, 1, v33) != 1)
      {
        v34 = v91;
        sub_10020A668(v30, v91, &qword_100780EB0);
        v90(v34);
        sub_1000032A8(v34, &qword_100780EB0);
      }

      v35 = v103;
      v36 = *v102;
      v37 = v104;
      (*v102)();
      v38 = *v101;
      if ((*v101)(v37, 1, v35) == 1)
      {
        break;
      }

      v39 = v94;
      sub_10020A668(v37, v94, &qword_100781808);
      if (v93(v39))
      {
        v40 = v79;
        sub_10020A668(v39, v79, &qword_100781808);
        v41 = 0;
        goto LABEL_14;
      }

      sub_1000032A8(v39, &qword_100781808);
    }

    sub_1000032A8(v37, &qword_100781800);
    v41 = 1;
    v40 = v79;
LABEL_14:
    v42 = 1;
    v43 = v103;
    (v36)(v40, v41, 1, v103);
    v44 = v81;
    sub_10020A668(v40, v81, &qword_100781800);
    if (v38(v44, 1, v43) != 1)
    {
      v45 = v76;
      sub_10020A668(v81, v76, &qword_100781808);
      v75(v45);
      sub_1000032A8(v45, &qword_100781808);
      v42 = 0;
    }

    v46 = sub_1001F0C48(&qword_100781818);
    v47 = v82;
    (*(*(v46 - 8) + 56))(v82, v42, 1, v46);
    v48 = sub_1001F0C48(&qword_100781818);
    v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
    v50 = v80;
    if (v49 == 1)
    {
      sub_1000032A8(&v109, &qword_100781810);

      sub_1000032A8(&v109, &qword_100781810);
    }

    v51 = *(v48 + 48);
    v53 = *(v47 + 1);
    v108[0] = *v47;
    v52 = v108[0];
    v108[1] = v53;
    v83 = *v85;
    v83(v86, &v47[v51], v87);
    v54 = *v50;
    v88 = v52;
    v55 = v52;
    v56 = v53;
    v58 = sub_10052213C(v55, v53);
    v59 = v54[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_33;
    }

    v62 = v57;
    if (v54[3] < v61)
    {
      break;
    }

    if (v84)
    {
      if (v57)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_1005C5148();
      if (v62)
      {
        goto LABEL_27;
      }
    }

LABEL_24:
    v65 = *v50;
    v65[(v58 >> 6) + 8] |= 1 << v58;
    v66 = (v65[6] + 16 * v58);
    *v66 = v88;
    v66[1] = v56;
    v83((v65[7] + *(v78 + 72) * v58), v86, v87);
    v67 = v65[2];
    v68 = __OFADD__(v67, 1);
    v69 = v67 + 1;
    if (v68)
    {
      goto LABEL_34;
    }

    v65[2] = v69;
    v84 = 1;
  }

  sub_1005BBC78(v61, v84 & 1);
  v63 = sub_10052213C(v88, v56);
  if ((v62 & 1) != (v64 & 1))
  {
    goto LABEL_35;
  }

  v58 = v63;
  if ((v62 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v70 = swift_allocError();
  swift_willThrow();
  sub_1000032A8(&v109, &qword_100781810);

  sub_1000032A8(&v109, &qword_100781810);

  v107 = v70;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v78 + 8))(v86, v87);
  }

LABEL_36:
  v105 = 0;
  v106 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v72._object = 0x80000001006C4E90;
  v72._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v72);
  _print_unlocked<A, B>(_:_:)();
  v73._countAndFlagsBits = 39;
  v73._object = 0xE100000000000000;
  String.append(_:)(v73);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10037DC40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1001F0C48(a2);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - v9;
  sub_100005934(a1, &v13 - v9, a2);
  v11 = sub_1001F0C48(a3);
  result = (*(*(v11 - 8) + 48))(v10, 1, v11);
  if (result != 1)
  {
    return sub_10020A668(v10, a4, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_10037DD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_10034EB0C;

  return sub_100375B90(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_10037DE18(char *a1)
{
  v2 = type metadata accessor for Platform();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  (*(v3 + 16))(&v17 - v7, a1, v2);
  static Platform.macOS.getter();
  sub_10037E0EC(&qword_100780F10, &type metadata accessor for Platform);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v9)
  {
    v11 = 0;
LABEL_10:
    v10(a1, v2);
    v10(v8, v2);
    return v11;
  }

  static Platform.iOS.getter();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10(v6, v2);
  if (v12)
  {
    goto LABEL_4;
  }

  static Platform.tvOS.getter();
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10(v6, v2);
  if (v13)
  {
    v11 = 2;
    goto LABEL_10;
  }

  static Platform.watchOS.getter();
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10(v6, v2);
  if (v14)
  {
LABEL_4:
    v11 = 1;
    goto LABEL_10;
  }

  static Platform.visionOS.getter();
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10(v6, v2);
  if (v15)
  {
    v11 = 3;
    goto LABEL_10;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10037E0EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10037E16C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1001F0E54;

  return sub_10037DD48(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_10037E28C(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F360) - 8);
  v4 = (*(v3 + 80) + 200) & ~*(v3 + 80);
  v5 = v1[3];
  v12 = v1[2];
  v6 = v1[4];
  v7 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100214EFC;

  return sub_100377C48(a1, v12, v5, v6, (v1 + 5), v1 + v4, v8, v9);
}

uint64_t sub_10037E41C(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F360) - 8);
  v4 = (*(v3 + 80) + 200) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100214EFC;

  return sub_100376854(a1, v5, v6, v7, (v1 + 5), v1 + v4, v9, v10);
}

uint64_t sub_10037E57C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v8[2] = *(a1 + 32);
  v9 = *(a1 + 48);
  v6 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v6;
  v10[2] = *(a2 + 32);
  v11 = *(a2 + 48);
  return sub_10020B0C4(v8, v10, v3, v4) & 1;
}

uint64_t sub_10037E5DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v9[2] = *(a1 + 32);
  v10 = *(a1 + 48);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return v3(v9, v7) & 1;
}

char *sub_10037E650(char *result, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6)
{
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = *(*v6 + 16);
  if (v7 < a5 || v7 < a6)
  {
    goto LABEL_14;
  }

  if (a6 < 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (&a5[*v6 + 32] != (a2 + a3))
  {
    return sub_100425FB8(a5, a6, result, a2, a3, a4);
  }

  if ((a4 >> 1) < a3)
  {
    goto LABEL_16;
  }

  if (a5 != a3 || a4 >> 1 != a6)
  {
    return sub_100425FB8(a5, a6, result, a2, a3, a4);
  }

  return result;
}

char *sub_10037E6D4(char *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = sub_100364A78((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  result = memcpy(result + 32, &v6[a2], v4);
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v7 + 2);
  v9 = __OFADD__(a2, v8);
  v10 = a2 + v8;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_10037E78C(uint64_t a1, int32x2_t *a2)
{
  v4 = type metadata accessor for Platform();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F0C48(qword_100781838);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v49 - v10;
  v54 = a2[13].u8[4];
  v12 = *(v9 + 56);
  (*(v5 + 16))(&v49 - v10, a1, v4);
  v11[v12] = v54;
  static Platform.macOS.getter();
  sub_10037E0EC(&qword_100780F10, &type metadata accessor for Platform);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v5 + 8);
  v13 = v5 + 8;
  v14 = v15;
  v15(v7, v4);
  if (a1)
  {
    v14(v11, v4);
    return &off_1007579C8;
  }

  static Platform.watchOS.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v7, v4);
  if (v17)
  {
    v14(v11, v4);
    return &off_1007579F0;
  }

  static Platform.tvOS.getter();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v7, v4);
  if (v18)
  {
    v14(v11, v4);
    return &off_100757A18;
  }

  v19 = v54;
  static Platform.iOS.getter();
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v7, v4);
  if (v19 == 1)
  {
    if (v20)
    {
      v23 = a2[12].i32[0];
      v22 = a2[12].i32[1];
      v21.n128_u32[0] = a2[13].u32[0];
      if (v23 == 1024 && v21.n128_f32[0] == 0.0 && v22 == 1366 || v23 == 1366 && v21.n128_f32[0] == 0.0 && v22 == 1024)
      {
        v14(v11, v4);
        return &off_100757A40;
      }

      v33 = v23 == 1366 && v22 == 1024;
      v34 = v22 == 1366 && v23 == 1024;
      if (v34 || v33)
      {
        (v14)(v11, v4, v21);
        return &off_100757A68;
      }

      if (v23 == 834 && v22 == 1194)
      {
        goto LABEL_38;
      }

      switch(v23)
      {
        case 744:
          if (v22 != 1133)
          {
            goto LABEL_87;
          }

          goto LABEL_38;
        case 1133:
          if (v22 != 744)
          {
            goto LABEL_87;
          }

          goto LABEL_38;
        case 1194:
          if (v22 != 834)
          {
LABEL_87:
            (v14)(v11, v4, v21);
            return &off_100757B30;
          }

LABEL_38:
          (v14)(v11, v4, v21);
          return &off_100757A90;
      }

      if (v23 == 834 && v22 == 1112)
      {
        (v14)(v11, v4, v21);
        return &off_100757AB8;
      }

LABEL_81:
      if (v23 == 810)
      {
        if (v22 == 1080)
        {
          v14(v11, v4);
          return &off_100757B08;
        }
      }

      else if (v23 == 820 && v22 == 1180)
      {
        v14(v11, v4);
        return &off_100757AE0;
      }

      goto LABEL_87;
    }

LABEL_24:
    sub_1000032A8(v11, qword_100781838);
    return _swiftEmptyArrayStorage;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_24;
  }

  v24 = 0;
  v25 = &off_1007579A0;
  v53 = &off_1007579A0;
  v26 = a2[12];
  while (1)
  {
    v27 = v25;
    v28 = *(&off_1007621E0 + *(v25 + v24 + 32));
    v29 = *(v28 + 16);
    if (v29)
    {
      break;
    }

LABEL_18:

    ++v24;
    v25 = v27;
    if (v24 == 8)
    {
      v24 = 0;
      while (2)
      {
        switch(*(v27 + v24 + 32))
        {
          case 0xA:
            goto LABEL_45;
          default:
            v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v35)
            {
              goto LABEL_46;
            }

            if (++v24 != 8)
            {
              continue;
            }

            __break(1u);
            break;
        }

        goto LABEL_45;
      }
    }
  }

  v30 = 32;
  while (1)
  {
    v31 = vceq_s32(*(v28 + v30), v26);
    if (v31.i32[0] & v31.i32[1])
    {
      break;
    }

    v30 += 8;
    if (!--v29)
    {
      goto LABEL_18;
    }
  }

LABEL_45:

LABEL_46:
  v50 = v14;
  v51 = v13;
  v23 = v24 + 1;
  v22 = 1;
  v49 = v24 + 1;
  v36 = (2 * (v24 + 1)) | 1;
  v37 = v27;
  v38 = (v27 + 4);
  if (v24)
  {
    v39 = 0;
    v40 = 0;
    while (v39 >= v40)
    {
      v14 = (v36 >> 1);
      if (v39 >= v36 >> 1)
      {
        break;
      }

      if (v24 < v40 || v24 >= v14)
      {
        goto LABEL_78;
      }

      v52 = v38[v39];
      v41 = v38[v24];
      if ((v36 & 1) == 0 || (swift_isUniquelyReferenced_nonNull() & 1) == 0)
      {
        v37 = sub_10037E6D4(v38, v40, v36);
        v38 = v42;
        v40 = v43;
        v36 = v44;
        swift_unknownObjectRelease();
        v14 = (v36 >> 1);
      }

      if (v39 < v40 || v39 >= v14)
      {
        goto LABEL_79;
      }

      v38[v39] = v41;
      if ((v36 & 1) == 0)
      {
        v37 = sub_10037E6D4(v38, v40, v36);
        v38 = v45;
        v40 = v46;
        v36 = v47;
        swift_unknownObjectRelease();
        v14 = (v36 >> 1);
      }

      if (v24 < v40 || v24 >= v14)
      {
        goto LABEL_80;
      }

      v22 = v52;
      v38[v24--] = v52;
      if (++v39 >= v24)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v40 = 0;
LABEL_64:
  sub_10037E650(v37, v38, v40, v36, 0, v49);
  swift_unknownObjectRelease();
  v48 = v53;
  v50(v11, v4);
  return v48;
}

uint64_t getEnumTagSinglePayload for MediaAPIApp.Attributes.PlatformAttributes.MediaType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaAPIApp.Attributes.PlatformAttributes.MediaType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10037F1D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10037F224(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10037F23C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10037F278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_10037F2C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10037F340(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_10037F36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_10037F3B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10037F474()
{
  type metadata accessor for MediaAPIApp.Attributes(319);
  if (v0 <= 0x3F)
  {
    sub_10000585C(319, &unk_100781928);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10037F524(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10037F580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_10037F608()
{
  sub_10037F790();
  if (v0 <= 0x3F)
  {
    sub_10037F848(319, &qword_1007819D8, &qword_100781828);
    if (v1 <= 0x3F)
    {
      sub_10000585C(319, &qword_1007819E0);
      if (v2 <= 0x3F)
      {
        sub_10037F848(319, &qword_1007819E8, &qword_1007819F0);
        if (v3 <= 0x3F)
        {
          sub_10037F848(319, &qword_1007819F8, &unk_100781A00);
          if (v4 <= 0x3F)
          {
            sub_10000585C(319, &qword_1007810F8);
            if (v5 <= 0x3F)
            {
              sub_10037F89C();
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

void sub_10037F790()
{
  if (!qword_1007819C8)
  {
    sub_10037F7F4();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1007819C8);
    }
  }
}

unint64_t sub_10037F7F4()
{
  result = qword_1007819D0;
  if (!qword_1007819D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007819D0);
  }

  return result;
}

void sub_10037F848(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1001F76D0(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10037F89C()
{
  if (!qword_100780B40)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100780B40);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaAPIApp.Attributes.DeviceFamily(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaAPIApp.Attributes.DeviceFamily(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10037FA44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10037FAA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10037FB24()
{
  result = qword_100781A60;
  if (!qword_100781A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781A60);
  }

  return result;
}

unint64_t sub_10037FB7C()
{
  result = qword_100781A68;
  if (!qword_100781A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781A68);
  }

  return result;
}

unint64_t sub_10037FBD4()
{
  result = qword_100781A70;
  if (!qword_100781A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781A70);
  }

  return result;
}

uint64_t sub_10037FC40(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x656E6F687069 && a2 == 0xE600000000000000 || (v9 = v6, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    return 0;
  }

  else if (a1 == 1684107369 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1685024873 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1936684660 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6863746177 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 6513005 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x447974696C616572 && a2 == 0xED00006563697665 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else
  {
    v16 = v5;
    static Logger.general.getter();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446210;
      v15 = sub_1002346CC(a1, a2, &v17);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "[MediaAPIApp] Unknown device family: %{public}s", v13, 0xCu);
      sub_10000710C(v14);
    }

    else
    {
    }

    (*(v16 + 8))(v8, v9);
    return 7;
  }
}

uint64_t sub_100380014(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 7893871 && a2 == 0xE300000000000000 || (v9 = v6, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    return 0;
  }

  else if (a1 == 7565161 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F7674656C707061 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736F6E6F69736976 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 1936683640 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else
  {
    static Logger.general.getter();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136446210;
      v15 = sub_1002346CC(a1, a2, &v17);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "[MediaAPIApp] Unknown platform type: %{public}s", v13, 0xCu);
      sub_10000710C(v14);
    }

    else
    {
    }

    (*(v5 + 8))(v8, v9);
    return 4;
  }
}

uint64_t sub_100380350(void *a1)
{
  v3 = a1[4];
  sub_100006D8C(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100006D8C(v10, v10[3]);
    v4 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v6 = v5;

    v7 = sub_100380014(v4, v6);
    if (v7 != 4)
    {
      v3 = v7;

      sub_10000710C(v10);
      sub_10000710C(a1);
      return v3;
    }

    v3 = type metadata accessor for InternalError();
    sub_10037E0EC(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v8 = v4;
    v8[1] = v6;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_10000710C(v10);
  }

  sub_10000710C(a1);
  return v3;
}

uint64_t sub_1003804B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x446E6F6973726576 && a2 == 0xEE0079616C707369;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E657361656C6572 && a2 == 0xEC0000007365746FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001006CA3D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1003805E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100781D40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_1003838BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v25 = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v21 = v12;
  v23 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000710C(a1);
  v20 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

uint64_t sub_1003807E8(void *a1)
{
  v3 = sub_1001F0C48(&qword_100781D60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_100383964();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

uint64_t sub_1003809B4(void *a1)
{
  v3 = sub_1001F0C48(&qword_100781D70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_1003839B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[13] = 1;
    sub_100383A0C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

uint64_t sub_100380BA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}