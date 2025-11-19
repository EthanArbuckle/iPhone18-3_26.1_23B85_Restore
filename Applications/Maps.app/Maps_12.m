uint64_t sub_1001AA448@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000CE6B8(&qword_101910350);
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = sub_1000CE6B8(&qword_101910358);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  if ((*(v1 + *(_s9DelimiterVMa(0) + 24)) & 1) == 0)
  {
    sub_1000CE6B8(&qword_10190F6E0);
    ScaledMetric.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v20 = v56;
    v21 = BYTE8(v56);
    v22 = v57;
    v23 = BYTE8(v57);
    LOBYTE(v49) = 1;
    v65 = BYTE8(v56);
    v64 = BYTE8(v57);
    *v8 = 0;
    v8[8] = 1;
    *(v8 + 2) = v20;
    v8[24] = v21;
    *(v8 + 4) = v22;
    v8[40] = v23;
    *(v8 + 3) = v58;
    swift_storeEnumTagMultiPayload();
    sub_1000CE6B8(&qword_101910370);
    sub_1001C9B90();
    sub_1001C9C14();
    return _ConditionalContent<>.init(storage:)();
  }

  v45 = v5;
  v46 = v6;
  v47 = v3;
  v48 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  static Font.subheadline.getter();
  v14 = Text.font(_:)();
  v43 = v15;
  v44 = v16;
  v42 = v17;

  sub_1000F0A40(v9, v11, v13 & 1);

  v18 = *v1;
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v18;
    static Published.subscript.getter();

    if (v56)
    {
      if (qword_101906598 == -1)
      {
        goto LABEL_8;
      }
    }

    else if (qword_1019065A0 == -1)
    {
LABEL_8:

      v25 = v42;
      v26 = v43;
      v27 = Text.foregroundColor(_:)();
      v40 = v28;
      v41 = v27;
      v30 = v29;
      v39 = v31;

      sub_1000F0A40(v14, v26, v25 & 1);

      KeyPath = swift_getKeyPath();
      v33 = static Edge.Set.horizontal.getter();
      sub_1000CE6B8(&qword_10190F6E0);
      ScaledMetric.wrappedValue.getter();
      EdgeInsets.init(_all:)();
      v65 = v30 & 1;
      v64 = 0;
      v63 = 0;
      *&v49 = v41;
      *(&v49 + 1) = v40;
      LOBYTE(v50) = v30 & 1;
      *(&v50 + 1) = v39;
      *&v51 = KeyPath;
      *(&v51 + 1) = 1;
      LOBYTE(v52) = 0;
      BYTE8(v52) = v33;
      *&v53 = v34;
      *(&v53 + 1) = v35;
      *&v54 = v36;
      *(&v54 + 1) = v37;
      v55 = 0;
      sub_1000CE6B8(&qword_101910360);
      sub_1001C9B04();
      v38 = v45;
      View.accessibilityHidden(_:)();
      v60 = v53;
      v61 = v54;
      v62 = v55;
      v56 = v49;
      v57 = v50;
      v58 = v51;
      v59 = v52;
      sub_100024F64(&v56, &qword_101910360);
      sub_1000D2DFC(v38, v8, &qword_101910350);
      swift_storeEnumTagMultiPayload();
      sub_1000CE6B8(&qword_101910370);
      sub_1001C9B90();
      sub_1001C9C14();
      _ConditionalContent<>.init(storage:)();
      return sub_100024F64(v38, &qword_101910350);
    }

    swift_once();
    goto LABEL_8;
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001AA9CC@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for AccessibilityTraits();
  v69 = *(v2 - 8);
  v70 = v2;
  __chkstk_darwin(v2);
  v68 = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s26MultipleCuratedCollectionsVMa(0);
  v65 = *(v4 - 8);
  __chkstk_darwin(v4);
  v77 = v5;
  v78 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1000CE6B8(&qword_10190FFC8);
  __chkstk_darwin(v75);
  v66 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = v59 - v8;
  __chkstk_darwin(v9);
  v71 = v59 - v10;
  __chkstk_darwin(v11);
  v72 = v59 - v12;
  v13 = sub_1000CE6B8(&qword_10190FFD0);
  __chkstk_darwin(v13);
  v15 = v59 - v14;
  v16 = sub_1000CE6B8(&qword_10190FFD8);
  __chkstk_darwin(v16);
  v18 = v59 - v17;
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v1;
  v26 = *(v1 + *(v4 + 40));
  v73 = v13;
  v74 = v27;
  if (v26 == 1)
  {
    v28 = *v1;
    if (!*v1)
    {
LABEL_11:
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    if (*(v28 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) == 2)
    {
      v78 = v59 - v24;
      v29 = v1 + *(v4 + 36);
      v30 = v25;
      v31 = *&v29[*(type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0) + 20)];
      v32 = (v31 - 1);
      if (!__OFSUB__(v31, 1))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v33 = v28;
        static Published.subscript.getter();

        v34 = v78;
        sub_1001AB4D8(v32, LOBYTE(v93._countAndFlagsBits), v78);
        *v18 = static VerticalAlignment.bottom.getter();
        *(v18 + 1) = 0x4000000000000000;
        v18[16] = 0;
        sub_1001AC15C(v30, v34, &v18[*(v16 + 44)]);
        sub_1000D2DFC(v18, v15, &qword_10190FFD8);
        swift_storeEnumTagMultiPayload();
        sub_1001C85C0();
        sub_1001C86A4();
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v18, &qword_10190FFD8);
        return (*(v20 + 8))(v34, v74);
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  v62 = v16;
  v63 = v20;
  v64 = v15;
  v36 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
  v37 = *v1;
  if (!*v1)
  {
    goto LABEL_11;
  }

  v38 = *(v1 + *(v4 + 36) + *(v36 + 20));
  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v37;
  static Published.subscript.getter();

  sub_1001AB4D8(v38, LOBYTE(v93._countAndFlagsBits), v22);
  v40 = v78;
  sub_1001C48C0(v1, v78, _s26MultipleCuratedCollectionsVMa);
  v41 = (v65[80] + 16) & ~v65[80];
  v59[1] = v65[80];
  v42 = swift_allocObject();
  v60 = v41;
  sub_1001C4928(v40, v42 + v41, _s26MultipleCuratedCollectionsVMa);
  v43 = static VerticalAlignment.center.getter();
  v83 = 0;
  v61 = v1;
  v65 = v22;
  sub_1001AE108(v1, v22, &v93);
  v88 = v97;
  v89 = v98;
  v90[0] = v99[0];
  *(v90 + 9) = *(v99 + 9);
  v84 = v93;
  v85 = v94;
  v86 = v95;
  v87 = v96;
  v91[0] = v93;
  v91[1] = v94;
  v91[2] = v95;
  v91[3] = v96;
  v91[4] = v97;
  v91[5] = v98;
  v92[0] = v99[0];
  *(v92 + 9) = *(v99 + 9);
  sub_1000D2DFC(&v84, &v79, &qword_10190FFE0);
  sub_100024F64(v91, &qword_10190FFE0);
  *(&v82[4] + 7) = v88;
  *(&v82[5] + 7) = v89;
  *(&v82[6] + 7) = v90[0];
  v82[7] = *(v90 + 9);
  *(v82 + 7) = v84;
  *(&v82[1] + 7) = v85;
  *(&v82[2] + 7) = v86;
  *(&v82[3] + 7) = v87;
  *&v81[65] = v82[4];
  *&v81[81] = v82[5];
  *&v81[97] = v82[6];
  *&v81[113] = *(v90 + 9);
  *&v81[1] = v82[0];
  *&v81[17] = v82[1];
  *&v81[33] = v82[2];
  v79._countAndFlagsBits = sub_1001CD044;
  v79._object = v42;
  *&v80 = v43;
  *(&v80 + 1) = 0x4010000000000000;
  v81[0] = v83;
  *&v81[49] = v82[3];
  sub_1000CE6B8(&qword_10190FFE8);
  sub_1000414C8(&unk_10190FFF0, &qword_10190FFE8);
  v44 = v66;
  View.accessibility(identifier:)();
  v99[2] = *&v81[96];
  v99[3] = *&v81[112];
  v100 = v81[128];
  v97 = *&v81[32];
  v98 = *&v81[48];
  v99[0] = *&v81[64];
  v99[1] = *&v81[80];
  v93 = v79;
  v94 = v80;
  v95 = *v81;
  v96 = *&v81[16];
  sub_100024F64(&v93, &qword_10190FFE8);
  v45 = v67;
  ModifiedContent<>.accessibilityAutomationType(_:)();
  sub_100024F64(v44, &qword_10190FFC8);
  v46 = v68;
  static AccessibilityTraits.isButton.getter();
  v47 = v71;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v69 + 8))(v46, v70);
  sub_100024F64(v45, &qword_10190FFC8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v101._object = 0x8000000101222060;
  v48._countAndFlagsBits = 0x69754720776F6853;
  v48._object = 0xEB00000000736564;
  v49._object = 0x8000000101222040;
  v101._countAndFlagsBits = 0xD00000000000004FLL;
  v49._countAndFlagsBits = 0xD00000000000001BLL;
  v79 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, qword_1019600D8, v48, v101);
  sub_1000E5580();
  v50 = Text.init<A>(_:)();
  v52 = v51;
  v54 = v53;
  v55 = v78;
  sub_1001C48C0(v61, v78, _s26MultipleCuratedCollectionsVMa);
  v56 = v60;
  v57 = swift_allocObject();
  sub_1001C4928(v55, v57 + v56, _s26MultipleCuratedCollectionsVMa);
  v58 = v72;
  ModifiedContent<>.accessibilityAction(named:_:)();

  sub_1000F0A40(v50, v52, v54 & 1);

  sub_100024F64(v47, &qword_10190FFC8);
  sub_1000D2DFC(v58, v64, &qword_10190FFC8);
  swift_storeEnumTagMultiPayload();
  sub_1001C85C0();
  sub_1001C86A4();
  _ConditionalContent<>.init(storage:)();
  sub_100024F64(v58, &qword_10190FFC8);
  return (*(v63 + 8))(v65, v74);
}

uint64_t sub_1001AB4D8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v84 = a1;
  *&v77 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v77);
  v76 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v75 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v9 = sub_1000CE6B8(&unk_10190D5F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v69 - v10;
  v12 = sub_1000CE6B8(&qword_10190B850);
  __chkstk_darwin(v12 - 8);
  v78 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = &v69 - v15;
  v16 = sub_1000CE6B8(&unk_10190D600);
  v79 = *(v16 - 8);
  __chkstk_darwin(v16);
  v72 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v71 = &v69 - v19;
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  __chkstk_darwin(v23);
  v69 = &v69 - v24;
  v25 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v25 - 8);
  v26 = type metadata accessor for AttributedString();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v83 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v69 - v30;
  IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
  v81 = v26;
  v82 = a3;
  v74 = a2;
  v80 = v27;
  if (!IsEnabled_SearchAndDiscovery)
  {
    goto LABEL_8;
  }

  if (*v73)
  {
    if (*(*v73 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) == 2)
    {
      v76 = v22;
      v78 = v11;
      v83 = v16;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v33 = qword_1019600D8;
      v34 = String._bridgeToObjectiveC()();
      v35 = String._bridgeToObjectiveC()();
      v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000CE6B8(&unk_10190D5C0);
      v37 = swift_allocObject();
      v77 = xmmword_1011E1D30;
      *(v37 + 16) = xmmword_1011E1D30;
      *(v37 + 56) = &type metadata for Int;
      *(v37 + 64) = &protocol witness table for Int;
      v38 = v84;
      *(v37 + 32) = v84;
      static String.localizedStringWithFormat(_:_:)();

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      v39 = String._bridgeToObjectiveC()();
      v40 = String._bridgeToObjectiveC()();
      v41 = [v33 localizedStringForKey:v39 value:v40 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = swift_allocObject();
      *(v42 + 16) = v77;
      *(v42 + 56) = &type metadata for Int;
      *(v42 + 64) = &protocol witness table for Int;
      *(v42 + 32) = v38;
      v43 = static String.localizedStringWithFormat(_:_:)();
      v45 = v44;

      v85 = v43;
      v86 = v45;
      v46 = type metadata accessor for Locale();
      v47 = v78;
      (*(*(v46 - 8) + 56))(v78, 1, 1, v46);
      sub_1001C3C48(&qword_101910100, &type metadata accessor for AttributedString);
      sub_1000E5580();
      v48 = v70;
      v49 = v81;
      AttributedStringProtocol.range<A>(of:options:locale:)();
      sub_100024F64(v47, &unk_10190D5F0);

      if ((*(v79 + 48))(v48, 1, v83) == 1)
      {
        v50 = &qword_10190B850;
        v51 = v48;
LABEL_19:
        sub_100024F64(v51, v50);
        return (*(v80 + 32))(v82, v31, v49);
      }

      v62 = v69;
      sub_1000F11C4(v48, v69, &unk_10190D600);
      v63 = v76;
      sub_1000D2DFC(v62, v76, &unk_10190D600);
      if (v74)
      {
        v66 = static Color.white.getter();
      }

      else
      {
        v66 = static Color.blue.getter();
      }

      v65 = v66;
      sub_1000414C8(&qword_10190B858, &unk_10190D600);
LABEL_18:
      v67 = AttributedString.subscript.modify();
      v87 = v65;
      sub_10016EB80();
      AttributedSubstring.subscript.setter();
      v67(&v85, 0);
      sub_100024F64(v63, &unk_10190D600);
      v51 = v62;
      v50 = &unk_10190D600;
      goto LABEL_19;
    }

LABEL_8:
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v52._countAndFlagsBits = 0x6465727574616546;
    v52._object = 0xEC000000206E6920;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v52);
    v85 = v84;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v53._countAndFlagsBits = 0x73656469754720;
    v53._object = 0xE700000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v53);
    String.LocalizationValue.init(stringInterpolation:)();
    v54 = type metadata accessor for Locale();
    v55 = *(*(v54 - 8) + 56);
    v55(v11, 1, 1, v54);
    v85 = _swiftEmptyArrayStorage;
    sub_1001C3C48(&qword_1019100E8, &type metadata accessor for AttributedString.FormattingOptions);
    v56 = v11;
    sub_1000CE6B8(&qword_1019100F0);
    v57 = v16;
    sub_1000414C8(&qword_1019100F8, &qword_1019100F0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v58 = v83;
    AttributedString.init(localized:options:table:bundle:locale:comment:)();
    v87 = v84;
    v85 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v59;
    v60._countAndFlagsBits = 0x73656469754720;
    v60._object = 0xE700000000000000;
    String.append(_:)(v60);
    v55(v11, 1, 1, v54);
    v49 = v81;
    sub_1001C3C48(&qword_101910100, &type metadata accessor for AttributedString);
    sub_1000E5580();
    v61 = v78;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_100024F64(v56, &unk_10190D5F0);

    if ((*(v79 + 48))(v61, 1, v57) == 1)
    {
      sub_100024F64(v61, &qword_10190B850);
      v31 = v58;
      return (*(v80 + 32))(v82, v31, v49);
    }

    v62 = v71;
    sub_1000F11C4(v61, v71, &unk_10190D600);
    v63 = v72;
    sub_1000D2DFC(v62, v72, &unk_10190D600);
    if (v74)
    {
      v64 = static Color.white.getter();
    }

    else
    {
      v64 = static Color.blue.getter();
    }

    v65 = v64;
    sub_1000414C8(&qword_10190B858, &unk_10190D600);
    v31 = v83;
    goto LABEL_18;
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001AC15C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v152 = a2;
  v159 = a3;
  v156 = sub_1000CE6B8(&qword_101910030);
  __chkstk_darwin(v156);
  v154 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v155 = &v126 - v6;
  __chkstk_darwin(v7);
  v158 = &v126 - v8;
  __chkstk_darwin(v9);
  v157 = &v126 - v10;
  v11 = type metadata accessor for AccessibilityTraits();
  v163 = *(v11 - 8);
  v164 = v11;
  __chkstk_darwin(v11);
  v162 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s26MultipleCuratedCollectionsVMa(0);
  v14 = v13 - 8;
  v161 = *(v13 - 8);
  __chkstk_darwin(v13);
  v142 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = v15;
  __chkstk_darwin(v16);
  v165 = &v126 - v17;
  v144 = sub_1000CE6B8(&qword_101910038);
  __chkstk_darwin(v144);
  v143 = (&v126 - v18);
  v166 = sub_1000CE6B8(&unk_101910040);
  v151 = *(v166 - 8);
  __chkstk_darwin(v166);
  v141 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v145 = &v126 - v21;
  __chkstk_darwin(v22);
  v24 = &v126 - v23;
  v25 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v25 - 8);
  v148 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000CE6B8(&qword_10190D5A0);
  __chkstk_darwin(v27 - 8);
  v29 = &v126 - v28;
  v30 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v140 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v149 = v35;
  v150 = &v126 - v34;
  __chkstk_darwin(v36);
  v38 = &v126 - v37;
  v39 = sub_1000CE6B8(&qword_101910050);
  __chkstk_darwin(v39 - 8);
  v153 = &v126 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v167 = &v126 - v42;
  v43 = *(v14 + 44);
  v44 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
  sub_1000D2DFC(a1 + *(v44 + 28) + v43, v29, &qword_10190D5A0);
  v138 = v31;
  v45 = (*(v31 + 48))(v29, 1, v30);
  v169 = a1;
  if (v45 == 1)
  {
    sub_100024F64(v29, &qword_10190D5A0);
    v46 = 1;
    v47 = v167;
    v49 = v165;
    v48 = v166;
    v50 = v161;
  }

  else
  {
    v146 = v24;
    sub_1001C4928(v29, v38, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
    sub_1000CE6B8(&unk_10190D5C0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1011E1D30;
    v52 = *(v30 + 24);
    v160 = v38;
    v53 = &v38[v52];
    v54 = a1;
    v55 = *v53;
    v56 = *(v53 + 1);
    *(v51 + 56) = &type metadata for String;
    *(v51 + 64) = sub_1000DA61C();
    *(v51 + 32) = v55;
    *(v51 + 40) = v56;

    v57 = static String.localizedStringWithFormat(_:_:)();
    v59 = v58;

    *&v180[0] = v57;
    *(&v180[0] + 1) = v59;
    sub_1000E5580();
    v60 = Text.init<A>(_:)();
    v63 = *v54;
    if (!*v54)
    {
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    v64 = v60;
    v65 = v61;
    v66 = v62;
    swift_getKeyPath();
    swift_getKeyPath();
    v67 = v63;
    static Published.subscript.getter();

    if (v180[0])
    {
      static Color.white.getter();
    }

    else
    {
      static Color.blue.getter();
    }

    v139 = Text.foregroundColor(_:)();
    v134 = v68;
    v135 = v69;
    v133 = v70;

    sub_1000F0A40(v64, v65, v66 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v71);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v72);
    LocalizedStringKey.init(stringInterpolation:)();
    v147 = Text.init(_:tableName:bundle:comment:)();
    v136 = v73;
    v137 = v74;
    LODWORD(v148) = v75;
    v76 = v169;
    v77 = v165;
    v126 = _s26MultipleCuratedCollectionsVMa;
    sub_1001C48C0(v169, v165, _s26MultipleCuratedCollectionsVMa);
    v78 = v150;
    v127 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide;
    sub_1001C48C0(v160, v150, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
    v79 = *(v161 + 80);
    v80 = *(v138 + 80);
    v81 = (v79 + 16) & ~v79;
    v132 = v81;
    v82 = (v168 + v80 + v81) & ~v80;
    v138 = v79 | v80;
    v128 = v82;
    v83 = swift_allocObject();
    v131 = _s26MultipleCuratedCollectionsVMa;
    sub_1001C4928(v77, v83 + v81, _s26MultipleCuratedCollectionsVMa);
    v129 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide;
    sub_1001C4928(v78, v83 + v82, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
    v84 = v140;
    sub_1001C48C0(v160, v140, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
    v85 = v142;
    sub_1001C48C0(v76, v142, _s26MultipleCuratedCollectionsVMa);
    v86 = v143;
    v87 = v144;
    *v143 = sub_1001CD048;
    *(v86 + 8) = v83;
    v88 = v86 + *(v87 + 36);

    *v88 = static VerticalAlignment.center.getter();
    *(v88 + 8) = 0x4010000000000000;
    *(v88 + 16) = 0;
    v89 = sub_1000CE6B8(&qword_101910070);
    sub_1001AD2A4(v84, v85, v147, v136, v148 & 1, v137, v88 + *(v89 + 44));

    v130 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide;
    sub_1001C4CC4(v84, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
    sub_1001C4CC4(v85, _s26MultipleCuratedCollectionsVMa);
    sub_1000414C8(&unk_101910078, &qword_101910038);
    v90 = v141;
    View.accessibility(identifier:)();
    sub_100024F64(v86, &qword_101910038);
    v91 = v145;
    ModifiedContent<>.accessibilityAutomationType(_:)();
    sub_100024F64(v90, &unk_101910040);
    v92 = v162;
    static AccessibilityTraits.isButton.getter();
    ModifiedContent<>.accessibilityRemoveTraits(_:)();
    (*(v163 + 8))(v92, v164);
    sub_100024F64(v91, &unk_101910040);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v93._countAndFlagsBits = 0x20776F6853;
    v93._object = 0xE500000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v93);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v94._countAndFlagsBits = 0;
    v94._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v94);
    LocalizedStringKey.init(stringInterpolation:)();
    v95 = Text.init(_:tableName:bundle:comment:)();
    v145 = v96;
    LOBYTE(v85) = v97;
    v49 = v165;
    sub_1001C48C0(v169, v165, v126);
    v98 = v150;
    sub_1001C48C0(v160, v150, v127);
    v99 = v128;
    v100 = swift_allocObject();
    sub_1001C4928(v49, v100 + v132, v131);
    sub_1001C4928(v98, v100 + v99, v129);
    v47 = v167;
    v101 = v145;
    v102 = v146;
    ModifiedContent<>.accessibilityAction(named:_:)();
    v50 = v161;

    v103 = v101;
    a1 = v169;
    sub_1000F0A40(v95, v103, v85 & 1);

    sub_1000F0A40(v139, v134, v133 & 1);

    sub_1000F0A40(v147, v136, v148 & 1);

    sub_100024F64(v102, &unk_101910040);
    sub_1001C4CC4(v160, v130);
    v48 = v166;
    v46 = 0;
  }

  (*(v151 + 56))(v47, v46, 1, v48);
  sub_1001C48C0(a1, v49, _s26MultipleCuratedCollectionsVMa);
  v104 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v105 = swift_allocObject();
  v166 = v104;
  sub_1001C4928(v49, v105 + v104, _s26MultipleCuratedCollectionsVMa);
  v177._countAndFlagsBits = sub_1001C878C;
  v177._object = v105;
  sub_1001ADD0C(v152, a1, v178);
  v174 = v178[3];
  v175 = v178[4];
  v176[0] = v179[0];
  *(v176 + 9) = *(v179 + 9);
  v170 = v177;
  v171 = v178[0];
  v172 = v178[1];
  v173 = v178[2];
  sub_1000CE6B8(&qword_101910058);
  sub_1000414C8(&qword_101910060, &qword_101910058);
  v106 = v154;
  View.accessibility(identifier:)();
  v180[4] = v174;
  v180[5] = v175;
  v181[0] = v176[0];
  *(v181 + 9) = *(v176 + 9);
  v180[0] = v170;
  v180[1] = v171;
  v180[2] = v172;
  v180[3] = v173;
  sub_100024F64(v180, &qword_101910058);
  v107 = v155;
  v108 = v49;
  ModifiedContent<>.accessibilityAutomationType(_:)();
  sub_100024F64(v106, &qword_101910030);
  v109 = v162;
  static AccessibilityTraits.isButton.getter();
  v110 = v158;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v163 + 8))(v109, v164);
  sub_100024F64(v107, &qword_101910030);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v182._object = 0x8000000101222060;
  v111._countAndFlagsBits = 0x69754720776F6853;
  v111._object = 0xEB00000000736564;
  v112._object = 0x8000000101222040;
  v182._countAndFlagsBits = 0xD00000000000004FLL;
  v112._countAndFlagsBits = 0xD00000000000001BLL;
  v170 = NSLocalizedString(_:tableName:bundle:value:comment:)(v112, 0, qword_1019600D8, v111, v182);
  sub_1000E5580();
  v113 = Text.init<A>(_:)();
  v115 = v114;
  v117 = v116;
  sub_1001C48C0(v169, v108, _s26MultipleCuratedCollectionsVMa);
  v118 = v166;
  v119 = swift_allocObject();
  sub_1001C4928(v108, v119 + v118, _s26MultipleCuratedCollectionsVMa);
  v120 = v157;
  ModifiedContent<>.accessibilityAction(named:_:)();

  sub_1000F0A40(v113, v115, v117 & 1);

  sub_100024F64(v110, &qword_101910030);
  v121 = v167;
  v122 = v153;
  sub_1000D2DFC(v167, v153, &qword_101910050);
  sub_1000D2DFC(v120, v110, &qword_101910030);
  v123 = v159;
  sub_1000D2DFC(v122, v159, &qword_101910050);
  v124 = sub_1000CE6B8(&qword_101910068);
  sub_1000D2DFC(v110, v123 + *(v124 + 48), &qword_101910030);
  sub_100024F64(v120, &qword_101910030);
  sub_100024F64(v121, &qword_101910050);
  sub_100024F64(v110, &qword_101910030);
  return sub_100024F64(v122, &qword_101910050);
}

uint64_t sub_1001AD2A4@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v74 = a4;
  v75 = a6;
  v72 = a5;
  v73 = a3;
  v70 = a2;
  v77 = a7;
  v9 = type metadata accessor for RoundedRectangle();
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v69 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1000CE6B8(&qword_101910088) - 8;
  __chkstk_darwin(v71);
  v76 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  v20 = *(a1 + *(type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0) + 20));
  Image.init(uiImage:)();
  (*(v13 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v12);
  v68 = Image.resizable(capInsets:resizingMode:)();

  (*(v13 + 8))(v15, v12);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v67 = v88;
  v66 = v89;
  v21 = v91;
  v64 = v92;
  v65 = v90;
  v63 = v93;
  v22 = *(a2 + *(_s26MultipleCuratedCollectionsVMa(0) + 44));
  v23 = &v19[*(sub_1000CE6B8(&qword_101910090) + 36)];
  v24 = *(v10 + 28);
  v25 = enum case for RoundedCornerStyle.continuous(_:);
  v26 = type metadata accessor for RoundedCornerStyle();
  v27 = *(*(v26 - 8) + 104);
  v27(&v23[v24], v25, v26);
  *v23 = v22;
  *(v23 + 1) = v22;
  v28 = sub_1000CE6B8(&qword_10191E590);
  *&v23[*(v28 + 36)] = 256;
  v29 = v67;
  *v19 = v68;
  *(v19 + 1) = v29;
  v19[16] = v66;
  v30 = v64;
  *(v19 + 3) = v65;
  v19[32] = v21;
  v31 = v63;
  *(v19 + 5) = v30;
  *(v19 + 6) = v31;
  v32 = &v19[*(sub_1000CE6B8(&qword_101910098) + 36)];
  v27(&v32[*(v10 + 28)], v25, v26);
  *v32 = v22;
  *(v32 + 1) = v22;
  *&v32[*(v28 + 36)] = 256;
  v33 = *(v10 + 28);
  v34 = v69;
  v27(&v69[v33], v25, v26);
  *v34 = v22;
  v34[1] = v22;
  v35 = v34;
  v36 = [objc_opt_self() secondarySystemFillColor];
  v37 = Color.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v38 = &v19[*(sub_1000CE6B8(&qword_1019100A0) + 36)];
  sub_1001C48C0(v35, v38, &type metadata accessor for RoundedRectangle);
  v39 = v38 + *(sub_1000CE6B8(&qword_1019100A8) + 36);
  v40 = v95;
  *v39 = v94;
  *(v39 + 16) = v40;
  *(v39 + 32) = v96;
  v41 = sub_1000CE6B8(&qword_1019100B0);
  *(v38 + *(v41 + 52)) = v37;
  *(v38 + *(v41 + 56)) = 256;
  v42 = static Alignment.center.getter();
  v44 = v43;
  sub_1001C4CC4(v35, &type metadata accessor for RoundedRectangle);
  v45 = (v38 + *(sub_1000CE6B8(&qword_1019100B8) + 36));
  *v45 = v42;
  v45[1] = v44;
  v46 = static Alignment.center.getter();
  v48 = v47;
  v49 = (v38 + *(sub_1000CE6B8(&qword_1019100C0) + 36));
  *v49 = v46;
  v49[1] = v48;
  v50 = v70;
  v19[*(v71 + 44)] = 1;
  v51 = *v50;
  if (*v50)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v52 = v51;
    static Published.subscript.getter();

    sub_1001AD984(v86[0], v73, v74, v72 & 1, v75, &v78);
    v53 = v76;
    sub_1000D2DFC(v19, v76, &qword_101910088);
    v54 = v77;
    sub_1000D2DFC(v53, v77, &qword_101910088);
    v55 = v54 + *(sub_1000CE6B8(&qword_1019100C8) + 48);
    v57 = v81;
    v56 = v82;
    v84[3] = v81;
    v84[4] = v82;
    v58 = v83;
    v85 = v83;
    v59 = v79;
    v84[1] = v79;
    v84[2] = v80;
    v60 = v78;
    v84[0] = v78;
    *(v55 + 32) = v80;
    *(v55 + 48) = v57;
    *(v55 + 64) = v56;
    *(v55 + 80) = v58;
    *v55 = v60;
    *(v55 + 16) = v59;
    sub_1000D2DFC(v84, v86, &qword_1019100D0);
    sub_100024F64(v19, &qword_101910088);
    v86[2] = v80;
    v86[3] = v81;
    v86[4] = v82;
    v87 = v83;
    v86[0] = v78;
    v86[1] = v79;
    sub_100024F64(v86, &qword_1019100D0);
    return sub_100024F64(v53, &qword_101910088);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AD984@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  sub_1001C8AFC(a2, a3, a4 & 1);
  if (a1)
  {
    v14 = qword_101906598;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = &qword_10195FBA8;
  }

  else
  {
    v16 = qword_1019065A0;

    if (v16 != -1)
    {
      swift_once();
    }

    v15 = &qword_10195FBB0;
  }

  v17 = *v15;

  v18 = swift_getKeyPath();
  v19 = a4 & 1;
  v36 = v19;
  *&v25 = a2;
  *(&v25 + 1) = a3;
  LOBYTE(v26) = v19;
  *(&v26 + 1) = a5;
  *&v27 = KeyPath;
  *(&v27 + 1) = v12;
  *&v28 = v18;
  *(&v28 + 1) = v17;
  v20 = swift_getKeyPath();
  v21 = v26;
  *a6 = v25;
  *(a6 + 16) = v21;
  v22 = v28;
  *(a6 + 32) = v27;
  *(a6 + 48) = v22;
  *(a6 + 64) = v20;
  *(a6 + 72) = 1;
  *(a6 + 80) = 0;
  v29[0] = a2;
  v29[1] = a3;
  v30 = v19;
  v31 = a5;
  v32 = KeyPath;
  v33 = v12;
  v34 = v18;
  v35 = v17;
  sub_1000D2DFC(&v25, v24, &unk_1019100D8);
  return sub_100024F64(v29, &unk_1019100D8);
}

uint64_t sub_1001ADB40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (*(a1 + 32) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4();
    (*(v5 + 8))(v7, v4);
    v8 = v14;
  }

  sub_1000CE6B8(&qword_101908400);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1011E47B0;
  v11 = *(a2 + *(type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0) + 32));
  *(v10 + 32) = v11;
  v14 = v10;
  v12 = v11;
  v8(&v14);
}

uint64_t sub_1001ADD0C@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = static VerticalAlignment.center.getter();
  v31 = 0;
  (*(v7 + 16))(v9, a1, v6);
  v11 = Text.init(_:)();
  v15 = *a2;
  if (*a2)
  {
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v15;
    static Published.subscript.getter();

    sub_1001AD984(v27[15], v16, v17, v18 & 1, v19, v28);
    sub_1000F0A40(v16, v17, v18 & 1);

    *&v30[7] = v28[0];
    *&v30[23] = v28[1];
    v30[87] = v29;
    *&v30[71] = v28[4];
    *&v30[55] = v28[3];
    *&v30[39] = v28[2];
    v22 = v31;
    *a3 = v10;
    *(a3 + 8) = 0x4010000000000000;
    *(a3 + 16) = v22;
    v23 = *v30;
    *(a3 + 33) = *&v30[16];
    *(a3 + 17) = v23;
    v24 = *&v30[32];
    v25 = *&v30[48];
    v26 = *&v30[64];
    *(a3 + 97) = *&v30[80];
    *(a3 + 81) = v26;
    *(a3 + 65) = v25;
    *(a3 + 49) = v24;
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001ADF70(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (*(a1 + 32) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4();
    (*(v3 + 8))(v5, v2);
    v6 = v10;
  }

  v8 = a1 + *(_s26MultipleCuratedCollectionsVMa(0) + 36);
  v10 = *(v8 + *(type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0) + 24));
  v6(&v10);
}

uint64_t sub_1001AE108@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = Image.init(systemName:)();
  v39 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v9 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    static Published.subscript.getter();

    if (v50[0])
    {
      v11 = static Color.white.getter();
    }

    else
    {
      v11 = static Color.secondary.getter();
    }

    v37 = v11;
    v36 = swift_getKeyPath();
    (*(v6 + 16))(v8, v35, v5);
    v12 = Text.init(_:)();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v10;
    static Published.subscript.getter();

    sub_1001AD984(v50[0], v12, v14, v16 & 1, v18, &v42);
    sub_1000F0A40(v12, v14, v16 & 1);

    v20 = v45;
    v21 = v45;
    v22 = v44;
    v23 = v44;
    v48[2] = v44;
    v48[3] = v45;
    v24 = v46;
    v48[4] = v46;
    *(a3 + 104) = v46;
    *(a3 + 88) = v20;
    *(a3 + 72) = v22;
    v25 = v43;
    v26 = v42;
    v27 = v42;
    v48[0] = v42;
    v48[1] = v43;
    *(a3 + 56) = v43;
    *(a3 + 40) = v26;
    v28 = v47;
    v49 = v47;
    v29 = v39;
    v31 = v37;
    v30 = KeyPath;
    *a3 = v40;
    *(a3 + 8) = v30;
    v32 = v36;
    *(a3 + 16) = v29;
    *(a3 + 24) = v32;
    *(a3 + 32) = v31;
    *(a3 + 120) = v28;
    v50[0] = v27;
    v50[1] = v25;
    v51 = v47;
    v50[3] = v21;
    v50[4] = v24;
    v50[2] = v23;

    sub_1000D2DFC(v48, &v41, &qword_1019100D0);
    sub_100024F64(v50, &qword_1019100D0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AE4AC@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v95 = type metadata accessor for AccessibilityTraits();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = _s18SingleCuratedGuideVMa(0);
  v87 = *(v3 - 8);
  __chkstk_darwin(v3);
  v89 = (&v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = v4;
  __chkstk_darwin(v5);
  v107 = &v81 - v6;
  v91 = sub_1000CE6B8(&qword_101910038);
  __chkstk_darwin(v91);
  v90 = (&v81 - v7);
  v96 = sub_1000CE6B8(&unk_101910040);
  __chkstk_darwin(v96);
  v88 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v92 = &v81 - v10;
  __chkstk_darwin(v11);
  v109 = &v81 - v12;
  v13 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v110 = v3;
  v14 = v1 + *(v3 + 32);
  v15 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  v16 = *(v15 + 28);
  v101 = v14;
  v17 = &v14[v16];
  v18 = v17[1];
  v112 = *v17;
  v113 = v18;
  v19 = sub_1000E5580();

  v104 = v19;
  v20 = Text.init<A>(_:)();
  v111 = v1;
  v23 = *v1;
  if (*v1)
  {
    v24 = v20;
    v25 = v21;
    v26 = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v23;
    static Published.subscript.getter();

    if (v112)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.blue.getter();
    }

    v105 = Text.foregroundColor(_:)();
    v106 = v28;
    v103 = v29;
    v102 = v30;

    sub_1000F0A40(v24, v25, v26 & 1);

    sub_1000CE6B8(&unk_10190D5C0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1011E1D30;
    v32 = &v101[*(v15 + 24)];
    v33 = *v32;
    v34 = v32[1];
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_1000DA61C();
    *(v31 + 32) = v33;
    *(v31 + 40) = v34;

    v35 = static String.localizedStringWithFormat(_:_:)();
    v37 = v36;

    v112 = v35;
    v113 = v37;
    v38 = Text.init<A>(_:)();
    v40 = v39;
    v42 = v41;
    swift_getKeyPath();
    swift_getKeyPath();
    v43 = v27;
    static Published.subscript.getter();

    if (v112 == 1)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.blue.getter();
    }

    v44 = Text.foregroundColor(_:)();
    v99 = v45;
    v100 = v44;
    v98 = v46;
    v101 = v47;

    sub_1000F0A40(v38, v40, v42 & 1);

    if (*(v111 + *(v110 + 36)) == 1 && *(v43 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) == 2)
    {
      v48 = v98;
      v49 = v99;
      v50 = v100;
      sub_1001C8AFC(v100, v99, v98 & 1);

      v110 = v49;
      v86 = v51;
    }

    else
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v52);
      v53._countAndFlagsBits = v33;
      v53._object = v34;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v53);
      v54._countAndFlagsBits = 8250;
      v54._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v54);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v55);
      LocalizedStringKey.init(stringInterpolation:)();
      v50 = Text.init(_:tableName:bundle:comment:)();
      v110 = v56;
      v48 = v57;
      v86 = v58;
    }

    v59 = v111;
    v60 = v107;
    v83 = _s18SingleCuratedGuideVMa;
    sub_1001C48C0(v111, v107, _s18SingleCuratedGuideVMa);
    v87 = *(v87 + 80);
    v61 = (v87 + 16) & ~v87;
    v84 = v61;
    v62 = swift_allocObject();
    v85 = _s18SingleCuratedGuideVMa;
    sub_1001C4928(v60, v62 + v61, _s18SingleCuratedGuideVMa);
    v63 = v89;
    sub_1001C48C0(v59, v89, _s18SingleCuratedGuideVMa);
    v64 = v90;
    *v90 = sub_1001CD04C;
    *(v64 + 8) = v62;
    v65 = v64 + *(v91 + 36);

    *v65 = static VerticalAlignment.center.getter();
    *(v65 + 8) = 0x4010000000000000;
    *(v65 + 16) = 0;
    v66 = v65 + *(sub_1000CE6B8(&qword_101910070) + 44);
    LODWORD(v104) = v48;
    sub_1001AEF94(v63, v50, v110, v48 & 1, v86, v66);

    sub_1001C4CC4(v63, _s18SingleCuratedGuideVMa);
    sub_1000414C8(&unk_101910078, &qword_101910038);
    v82 = v50;
    v67 = v88;
    View.accessibility(identifier:)();
    sub_100024F64(v64, &qword_101910038);
    v68 = v92;
    ModifiedContent<>.accessibilityAutomationType(_:)();
    sub_100024F64(v67, &unk_101910040);
    v69 = v93;
    static AccessibilityTraits.isButton.getter();
    ModifiedContent<>.accessibilityRemoveTraits(_:)();
    (*(v94 + 8))(v69, v95);
    sub_100024F64(v68, &unk_101910040);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v70._countAndFlagsBits = 0x20776F6853;
    v70._object = 0xE500000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v70);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v71);
    LocalizedStringKey.init(stringInterpolation:)();
    v72 = Text.init(_:tableName:bundle:comment:)();
    v74 = v73;
    LOBYTE(v68) = v75;
    v76 = v107;
    sub_1001C48C0(v111, v107, v83);
    v77 = v84;
    v78 = swift_allocObject();
    sub_1001C4928(v76, v78 + v77, v85);
    v79 = v109;
    ModifiedContent<>.accessibilityAction(named:_:)();

    sub_1000F0A40(v72, v74, v68 & 1);

    sub_1000F0A40(v105, v103, v102 & 1);

    sub_1000F0A40(v82, v110, v104 & 1);

    sub_1000F0A40(v100, v99, v98 & 1);

    return sub_100024F64(v79, &unk_101910040);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AEF94@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a3;
  v73 = a5;
  v70 = a4;
  v71 = a2;
  v75 = a6;
  v7 = type metadata accessor for RoundedRectangle();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Image.ResizingMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000CE6B8(&qword_101910088) - 8;
  __chkstk_darwin(v69);
  v74 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  v18 = _s18SingleCuratedGuideVMa(0);
  v19 = a1 + *(v18 + 32);
  v67 = a1;
  v20 = *(v19 + *(type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0) + 20));
  Image.init(uiImage:)();
  (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
  v66 = Image.resizable(capInsets:resizingMode:)();

  (*(v11 + 8))(v13, v10);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v65 = v86;
  v64 = v87;
  v63 = v88;
  v62 = v89;
  v60 = v91;
  v61 = v90;
  v21 = *(a1 + *(v18 + 40));
  v22 = &v17[*(sub_1000CE6B8(&qword_101910090) + 36)];
  v23 = *(v8 + 28);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = type metadata accessor for RoundedCornerStyle();
  v26 = *(*(v25 - 8) + 104);
  v26(&v22[v23], v24, v25);
  *v22 = v21;
  *(v22 + 1) = v21;
  v27 = sub_1000CE6B8(&qword_10191E590);
  *&v22[*(v27 + 36)] = 256;
  v28 = v65;
  *v17 = v66;
  *(v17 + 1) = v28;
  v17[16] = v64;
  *(v17 + 3) = v63;
  v17[32] = v62;
  v29 = v60;
  *(v17 + 5) = v61;
  *(v17 + 6) = v29;
  v30 = &v17[*(sub_1000CE6B8(&qword_101910098) + 36)];
  v26(&v30[*(v8 + 28)], v24, v25);
  *v30 = v21;
  *(v30 + 1) = v21;
  *&v30[*(v27 + 36)] = 256;
  v31 = v68;
  v26(&v68[*(v8 + 28)], v24, v25);
  *v31 = v21;
  v31[1] = v21;
  v32 = v31;
  v33 = [objc_opt_self() secondarySystemFillColor];
  v34 = Color.init(_:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v35 = &v17[*(sub_1000CE6B8(&qword_1019100A0) + 36)];
  sub_1001C48C0(v32, v35, &type metadata accessor for RoundedRectangle);
  v36 = v35 + *(sub_1000CE6B8(&qword_1019100A8) + 36);
  v37 = v93;
  *v36 = v92;
  *(v36 + 16) = v37;
  *(v36 + 32) = v94;
  v38 = sub_1000CE6B8(&qword_1019100B0);
  *(v35 + *(v38 + 52)) = v34;
  *(v35 + *(v38 + 56)) = 256;
  v39 = static Alignment.center.getter();
  v41 = v40;
  sub_1001C4CC4(v32, &type metadata accessor for RoundedRectangle);
  v42 = (v35 + *(sub_1000CE6B8(&qword_1019100B8) + 36));
  *v42 = v39;
  v42[1] = v41;
  v43 = static Alignment.center.getter();
  v45 = v44;
  v46 = sub_1000CE6B8(&qword_1019100C0);
  v47 = v67;
  v48 = (v35 + *(v46 + 36));
  *v48 = v43;
  v48[1] = v45;
  v17[*(v69 + 44)] = 1;
  v49 = *v47;
  if (*v47)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = v49;
    static Published.subscript.getter();

    sub_1001AD984(v84[0], v71, v72, v70 & 1, v73, &v76);
    v51 = v74;
    sub_1000D2DFC(v17, v74, &qword_101910088);
    v52 = v75;
    sub_1000D2DFC(v51, v75, &qword_101910088);
    v53 = v52 + *(sub_1000CE6B8(&qword_1019100C8) + 48);
    v55 = v79;
    v54 = v80;
    v82[3] = v79;
    v82[4] = v80;
    v56 = v81;
    v83 = v81;
    v57 = v77;
    v82[1] = v77;
    v82[2] = v78;
    v58 = v76;
    v82[0] = v76;
    *(v53 + 32) = v78;
    *(v53 + 48) = v55;
    *(v53 + 64) = v54;
    *(v53 + 80) = v56;
    *v53 = v58;
    *(v53 + 16) = v57;
    sub_1000D2DFC(v82, v84, &qword_1019100D0);
    sub_100024F64(v17, &qword_101910088);
    v84[2] = v78;
    v84[3] = v79;
    v84[4] = v80;
    v85 = v81;
    v84[0] = v76;
    v84[1] = v77;
    sub_100024F64(v84, &qword_1019100D0);
    return sub_100024F64(v51, &qword_101910088);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AF684(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (*(a1 + 32) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4();
    (*(v3 + 8))(v5, v2);
    v6 = v13;
  }

  sub_1000CE6B8(&qword_101908400);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1011E47B0;
  v9 = a1 + *(_s18SingleCuratedGuideVMa(0) + 32);
  v10 = *(v9 + *(type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0) + 32));
  *(v8 + 32) = v10;
  v13 = v8;
  v11 = v10;
  v6(&v13);
}

uint64_t sub_1001AF860@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessibilityTraits();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s18UserGeneratedGuideVMa(0);
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v64 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v7;
  v61 = sub_1000CE6B8(&qword_10190FFC8);
  __chkstk_darwin(v61);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v47 - v10;
  __chkstk_darwin(v11);
  v62 = &v47 - v12;
  v13 = type metadata accessor for AttributedString();
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0);
  v17 = *v1;
  if (*v1)
  {
    v18 = (v1 + *(v6 + 28) + *(v16 + 20));
    v19 = v18[1];
    v47._countAndFlagsBits = *v18;
    countAndFlagsBits = v47._countAndFlagsBits;
    v47._object = v19;
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v1;
    v22 = v17;
    static Published.subscript.getter();

    sub_1001B004C(countAndFlagsBits, v19, v80, v15);
    v23 = Text.init(_:)();
    v52 = v24;
    v53 = v23;
    v25 = v24;
    LOBYTE(countAndFlagsBits) = v26;
    v54 = v26;
    v28 = v27;
    v50 = _s18UserGeneratedGuideVMa;
    v51 = v27;
    v29 = v21;
    v30 = v64;
    sub_1001C48C0(v21, v64, _s18UserGeneratedGuideVMa);
    v49 = *(v49 + 80);
    v31 = (v49 + 16) & ~v49;
    v32 = swift_allocObject();
    v48 = _s18UserGeneratedGuideVMa;
    sub_1001C4928(v30, v32 + v31, _s18UserGeneratedGuideVMa);

    v33 = static VerticalAlignment.center.getter();
    v70 = 0;
    sub_1001B0584(v29, v23, v25, countAndFlagsBits & 1, v28, &v80);
    v75 = v84;
    v76 = v85;
    v77[0] = v86[0];
    *(v77 + 9) = *(v86 + 9);
    v71 = v80;
    v72 = v81;
    v73 = v82;
    v74 = v83;
    v78[0] = v80;
    v78[1] = v81;
    v78[2] = v82;
    v78[3] = v83;
    v78[4] = v84;
    v78[5] = v85;
    v79[0] = v86[0];
    *(v79 + 9) = *(v86 + 9);
    sub_1000D2DFC(&v71, &v66, &qword_10190FFE0);
    sub_100024F64(v78, &qword_10190FFE0);

    *(&v69[4] + 7) = v75;
    *(&v69[5] + 7) = v76;
    *(&v69[6] + 7) = v77[0];
    v69[7] = *(v77 + 9);
    *(v69 + 7) = v71;
    *(&v69[1] + 7) = v72;
    *(&v69[2] + 7) = v73;
    *(&v69[3] + 7) = v74;
    *(&v68[4] + 1) = v69[4];
    *(&v68[5] + 1) = v69[5];
    *(&v68[6] + 1) = v69[6];
    *(&v68[7] + 1) = *(v77 + 9);
    *(v68 + 1) = v69[0];
    *(&v68[1] + 1) = v69[1];
    *(&v68[2] + 1) = v69[2];
    *&v66 = sub_1001CD050;
    *(&v66 + 1) = v32;
    *&v67 = v33;
    *(&v67 + 1) = 0x4010000000000000;
    LOBYTE(v68[0]) = v70;
    *(&v68[3] + 1) = v69[3];
    sub_1000CE6B8(&qword_10190FFE8);
    sub_1000414C8(&unk_10190FFF0, &qword_10190FFE8);
    v34 = v55;
    View.accessibility(identifier:)();
    v86[2] = v68[6];
    v86[3] = v68[7];
    v87 = v68[8];
    v84 = v68[2];
    v85 = v68[3];
    v86[0] = v68[4];
    v86[1] = v68[5];
    v80 = v66;
    v81 = v67;
    v82 = v68[0];
    v83 = v68[1];
    sub_100024F64(&v80, &qword_10190FFE8);
    v35 = v56;
    ModifiedContent<>.accessibilityAutomationType(_:)();
    sub_100024F64(v34, &qword_10190FFC8);
    v36 = v58;
    static AccessibilityTraits.isButton.getter();
    v37 = v62;
    ModifiedContent<>.accessibilityRemoveTraits(_:)();
    (*(v59 + 8))(v36, v60);
    sub_100024F64(v35, &qword_10190FFC8);
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v38._countAndFlagsBits = 0x20776F6853;
    v38._object = 0xE500000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v47);
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v39);
    LocalizedStringKey.init(stringInterpolation:)();
    v40 = Text.init(_:tableName:bundle:comment:)();
    v42 = v41;
    LOBYTE(v25) = v43;
    v44 = v64;
    sub_1001C48C0(v29, v64, v50);
    v45 = swift_allocObject();
    sub_1001C4928(v44, v45 + v31, v48);
    ModifiedContent<>.accessibilityAction(named:_:)();

    sub_1000F0A40(v40, v42, v25 & 1);

    sub_1000F0A40(v53, v52, v54 & 1);

    return sub_100024F64(v37, &qword_10190FFC8);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B004C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v35 = a4;
  v6 = sub_1000CE6B8(&unk_10190D5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1000CE6B8(&qword_10190B850);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_1000CE6B8(&unk_10190D600);
  v33 = *(v12 - 8);
  v34 = v12;
  __chkstk_darwin(v12);
  v31 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v30 = &v29 - v15;
  v16 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v16 - 8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v38._object = 0x800000010121F660;
  v17._countAndFlagsBits = 0x4025206E49;
  v18._countAndFlagsBits = 0xD00000000000002BLL;
  v18._object = 0x800000010121F630;
  v17._object = 0xE500000000000000;
  v38._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, qword_1019600D8, v17, v38);
  sub_1000CE6B8(&unk_10190D5C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1011E1D30;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000DA61C();
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;

  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v37[0] = a1;
  v37[1] = a2;
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  type metadata accessor for AttributedString();
  sub_1001C3C48(&qword_101910100, &type metadata accessor for AttributedString);
  sub_1000E5580();

  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_100024F64(v8, &unk_10190D5F0);

  if ((*(v33 + 48))(v11, 1, v34) == 1)
  {
    v21 = &qword_10190B850;
    v22 = v11;
  }

  else
  {
    v23 = v30;
    sub_1000F11C4(v11, v30, &unk_10190D600);
    v24 = v31;
    sub_1000D2DFC(v23, v31, &unk_10190D600);
    if (v32)
    {
      v25 = static Color.white.getter();
    }

    else
    {
      v25 = static Color.blue.getter();
    }

    v26 = v25;
    sub_1000414C8(&qword_10190B858, &unk_10190D600);
    v27 = AttributedString.subscript.modify();
    v36 = v26;
    sub_10016EB80();
    AttributedSubstring.subscript.setter();
    v27(v37, 0);
    sub_100024F64(v24, &unk_10190D600);
    v22 = v23;
    v21 = &unk_10190D600;
  }

  return sub_100024F64(v22, v21);
}

uint64_t sub_1001B0584@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = Image.init(systemName:)();
  v11 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v13 = *a1;
  if (*a1)
  {
    v14 = KeyPath;
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v13;
    static Published.subscript.getter();

    if (v40[0])
    {
      v16 = static Color.white.getter();
    }

    else
    {
      v16 = static Color.secondary.getter();
    }

    v17 = v16;
    v18 = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = v15;
    static Published.subscript.getter();

    sub_1001AD984(v40[0], a2, a3, a4 & 1, a5, &v32);
    v20 = v35;
    v21 = v33;
    v22 = v34;
    v38[2] = v34;
    v38[3] = v35;
    v23 = v35;
    v38[4] = v36;
    *(a6 + 104) = v36;
    *(a6 + 88) = v20;
    *(a6 + 72) = v22;
    v24 = v34;
    v25 = v32;
    v26 = v32;
    v38[0] = v32;
    v38[1] = v33;
    *(a6 + 56) = v33;
    v27 = v37;
    v39 = v37;
    *a6 = v10;
    *(a6 + 8) = v14;
    *(a6 + 16) = v11;
    *(a6 + 24) = v18;
    *(a6 + 32) = v17;
    *(a6 + 120) = v27;
    *(a6 + 40) = v25;
    v40[0] = v26;
    v40[1] = v21;
    v41 = v37;
    v40[3] = v23;
    v40[4] = v36;
    v40[2] = v24;

    sub_1000D2DFC(v38, v31, &qword_1019100D0);
    sub_100024F64(v40, &qword_1019100D0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B0860(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (*(a1 + 32) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4();
    (*(v3 + 8))(v5, v2);
    v6 = v10;
  }

  v8 = a1 + *(_s18UserGeneratedGuideVMa(0) + 28);
  v10 = *(v8 + *(type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0) + 24));
  v6(&v10);
}

uint64_t sub_1001B09FC@<X0>(uint64_t a1@<X8>)
{
  v126 = a1;
  v125 = sub_1000CE6B8(&qword_101910148);
  __chkstk_darwin(v125);
  v108 = (&v102 - v2);
  v121 = sub_1000CE6B8(&qword_101910150);
  __chkstk_darwin(v121);
  v124 = &v102 - v3;
  v123 = sub_1000CE6B8(&qword_101910158);
  __chkstk_darwin(v123);
  v107 = (&v102 - v4);
  v5 = sub_1000CE6B8(&qword_101910160);
  __chkstk_darwin(v5 - 8);
  v122 = &v102 - v6;
  v118 = sub_1000CE6B8(&qword_101910168);
  __chkstk_darwin(v118);
  v106 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v120 = (&v102 - v9);
  v10 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v110 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1000CE6B8(&qword_101910170);
  __chkstk_darwin(v117);
  v116 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v119 = &v102 - v14;
  v15 = sub_1000CE6B8(&qword_101910140);
  __chkstk_darwin(v15 - 8);
  v130 = &v102 - v16;
  v17 = sub_1000CE6B8(&qword_101910178);
  __chkstk_darwin(v17 - 8);
  v105 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v129 = &v102 - v20;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v21 = qword_1019600D8;
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = sub_1000CE6B8(&unk_10190D5C0);
  v26 = swift_allocObject();
  v128 = xmmword_1011E1D30;
  *(v26 + 16) = xmmword_1011E1D30;
  v27 = _s17ThirdPartyRatingsVMa(0);
  v28 = v1 + *(v27 + 28);
  v29 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(0);
  v30 = *&v28[v29[7]];
  *(v26 + 56) = &type metadata for Int;
  *(v26 + 64) = &protocol witness table for Int;
  *(v26 + 32) = v30;
  v114 = static String.localizedStringWithFormat(_:_:)();
  v115 = v31;

  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v21 localizedStringForKey:v32 value:v33 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = v25;
  v35 = swift_allocObject();
  *(v35 + 16) = v128;
  v36 = *&v28[v29[5]];
  *(v35 + 56) = &type metadata for Float;
  *(v35 + 64) = &protocol witness table for Float;
  *(v35 + 32) = v36;
  v111 = static String.localizedStringWithFormat(_:_:)();
  v38 = v37;

  Image.init(systemName:)();
  v39 = enum case for Image.TemplateRenderingMode.template(_:);
  v40 = type metadata accessor for Image.TemplateRenderingMode();
  v41 = *(v40 - 8);
  v42 = v130;
  (*(v41 + 104))(v130, v39, v40);
  (*(v41 + 56))(v42, 0, 1, v40);
  v43 = Image.renderingMode(_:)();

  sub_100024F64(v42, &qword_101910140);
  v113 = v27;
  LODWORD(v130) = *(v1 + *(v27 + 32));
  v127 = v1;
  v112 = v38;
  v104 = v28;
  v103 = v29;
  if (v130 == 1)
  {
    v44 = *v1;
    if (!*v1)
    {
      goto LABEL_30;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v45 = v44;
    static Published.subscript.getter();

    if (v131)
    {
      v46 = v43;
      if (qword_101906598 != -1)
      {
        swift_once();
      }

      v48 = qword_10195FBA8;
    }

    else
    {
      v46 = v43;
      if (qword_1019065A0 != -1)
      {
        swift_once();
      }

      v48 = qword_10195FBB0;
    }
  }

  else
  {
    v46 = v43;
    v47 = *&v28[v29[6]];
    v48 = Color.init(uiColor:)();
  }

  KeyPath = swift_getKeyPath();
  static Font.caption.getter();
  static Font.Weight.semibold.getter();
  v50 = Font.weight(_:)();

  v51 = swift_getKeyPath();
  v131 = v46;
  v132 = KeyPath;
  v133 = v48;
  v134 = v51;
  v135 = v50;
  v136 = 0x4059000000000000;
  v143 = 0xD000000000000010;
  v144 = 0x8000000101222170;
  v52._countAndFlagsBits = 0x6567616D49;
  v52._object = 0xE500000000000000;
  String.append(_:)(v52);
  sub_1000CE6B8(&qword_101910180);
  sub_1001C8E44();
  View.accessibilityIdentifier(_:)();

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v53);
  v54 = swift_allocObject();
  *(v54 + 16) = v128;
  *(v54 + 56) = &type metadata for Float;
  *(v54 + 64) = &protocol witness table for Float;
  *(v54 + 32) = v36;
  v55._countAndFlagsBits = String.init(format:_:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v55);

  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v56);
  LocalizedStringKey.init(stringInterpolation:)();
  v57 = Text.init(_:tableName:bundle:comment:)();
  v59 = v58;
  v61 = v60;
  if (v130)
  {
    v62 = *v127;
    if (*v127)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v63 = v62;
      static Published.subscript.getter();

      if (v131)
      {
        if (qword_101906598 == -1)
        {
          goto LABEL_21;
        }
      }

      else if (qword_1019065A0 == -1)
      {
LABEL_21:

        goto LABEL_22;
      }

      swift_once();
      goto LABEL_21;
    }

LABEL_30:
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v64 = *&v104[v103[6]];
  Color.init(uiColor:)();
LABEL_22:
  v65 = Text.foregroundColor(_:)();
  v67 = v66;
  v69 = v68;

  sub_1000F0A40(v57, v59, v61 & 1);

  static Font.subheadline.getter();
  if (v130)
  {
    static Font.Weight.regular.getter();
  }

  else
  {
    static Font.Weight.bold.getter();
  }

  v70 = v129;
  Font.weight(_:)();

  v71 = Text.font(_:)();
  v73 = v72;
  v75 = v74;
  v77 = v76;

  sub_1000F0A40(v65, v67, v69 & 1);

  v78 = swift_getKeyPath();
  v142 = v75 & 1;
  v141 = 0;
  v131 = v71;
  v132 = v73;
  LOBYTE(v133) = v75 & 1;
  *(&v133 + 1) = v143;
  HIDWORD(v133) = *(&v143 + 3);
  v134 = v77;
  v135 = v78;
  v136 = 1;
  v137 = 0;
  *v138 = *v140;
  *&v138[3] = *&v140[3];
  v139 = 0x4059000000000000;
  sub_1000CE6B8(&qword_1019101C0);
  sub_1001C906C();
  v79 = v116;
  View.accessibilityIdentifier(_:)();
  sub_1000F0A40(v71, v73, v75 & 1);

  v131 = v111;
  v132 = v112;
  sub_1000E5580();
  v80 = v119;
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_100024F64(v79, &qword_101910170);

  sub_1000CE6B8(&qword_10190F6E0);
  v81 = v127;
  ScaledMetric.wrappedValue.getter();
  v82 = v131;
  v83 = static VerticalAlignment.center.getter();
  v84 = v120;
  *v120 = v83;
  *(v84 + 8) = v82;
  *(v84 + 16) = 0;
  v85 = sub_1000CE6B8(&qword_1019101D0);
  v86 = v114;
  v87 = v115;
  sub_1001B1B20(v80, v81, v114, v115, v84 + *(v85 + 44));
  *(v84 + *(v118 + 36)) = 0;
  if (v130)
  {
    v88 = static VerticalAlignment.center.getter();
    v89 = v107;
    *v107 = v88;
    *(v89 + 8) = 0x4008000000000000;
    *(v89 + 16) = 0;
    v90 = sub_1000CE6B8(&qword_101910218);
    sub_1001B22AC(v70, v80, v81, v86, v87, v89 + *(v90 + 44));

    *(v89 + *(v123 + 36)) = 0x4024000000000000;
    v91 = &qword_101910158;
    sub_1000D2DFC(v89, v124, &qword_101910158);
  }

  else
  {

    v93 = static VerticalAlignment.center.getter();
    v89 = v108;
    *v108 = v93;
    *(v89 + 8) = 0x4008000000000000;
    *(v89 + 16) = 0;
    v94 = v89 + *(sub_1000CE6B8(&qword_1019101D8) + 44);
    v95 = v70;
    v96 = v105;
    sub_1000D2DFC(v95, v105, &qword_101910178);
    v97 = v106;
    sub_1000D2DFC(v84, v106, &qword_101910168);
    sub_1000D2DFC(v96, v94, &qword_101910178);
    v98 = sub_1000CE6B8(&qword_1019101E0);
    sub_1000D2DFC(v97, v94 + *(v98 + 48), &qword_101910168);
    sub_100024F64(v97, &qword_101910168);
    v99 = v96;
    v70 = v129;
    sub_100024F64(v99, &qword_101910178);
    v100 = v89 + *(v125 + 36);
    *v100 = 0xD000000000000016;
    *(v100 + 8) = 0x80000001012221B0;
    *(v100 + 16) = 9;
    v91 = &qword_101910148;
    sub_1000D2DFC(v89, v124, &qword_101910148);
  }

  swift_storeEnumTagMultiPayload();
  sub_1001C9124();
  sub_1001C9208();
  v92 = v122;
  _ConditionalContent<>.init(storage:)();
  sub_100024F64(v89, v91);
  sub_1000F11C4(v92, v126, &qword_101910160);
  sub_100024F64(v84, &qword_101910168);
  sub_100024F64(v80, &qword_101910170);
  return sub_100024F64(v70, &qword_101910178);
}

uint64_t sub_1001B1B20@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v76 = a3;
  *(&v76 + 1) = a4;
  v74 = a5;
  v7 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v75 = sub_1000CE6B8(&qword_101910250);
  __chkstk_darwin(v75);
  v80 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v65 - v10;
  __chkstk_darwin(v11);
  v77 = &v65 - v12;
  v13 = sub_1000CE6B8(&qword_101910170);
  __chkstk_darwin(v13 - 8);
  v79 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v78 = &v65 - v16;
  sub_1000D2DFC(a1, &v65 - v16, &qword_101910170);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 40;
  v17._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
  v18 = a2 + *(_s17ThirdPartyRatingsVMa(0) + 28);
  v71 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(0);
  v72 = v18;
  *&v93[0] = *&v18[*(v71 + 28)];
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v19._countAndFlagsBits = 41;
  v19._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
  LocalizedStringKey.init(stringInterpolation:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v24 = *a2;
  if (*a2)
  {
    v25 = v20;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v24;
    static Published.subscript.getter();

    sub_1001AD984(v93[0], v25, v26, v27 & 1, v28, &v95);
    sub_1000F0A40(v25, v26, v27 & 1);

    v93[0] = v95;
    v93[1] = v96;
    LOBYTE(v94) = v100;
    v93[3] = v98;
    v93[4] = v99;
    v93[2] = v97;
    *(&v94 + 1) = 0x4059000000000000;
    v89 = v97;
    v90 = v98;
    v91 = v99;
    v92 = v94;
    v87 = v95;
    v88 = v96;
    sub_1000CE6B8(&qword_101910288);
    sub_1001C94E8();
    v30 = v73;
    View.accessibilityIdentifier(_:)();
    sub_100024F64(v93, &qword_101910288);
    v87 = v76;
    sub_1000E5580();
    v31 = v77;
    ModifiedContent<>.accessibilityLabel<A>(_:)();
    sub_100024F64(v30, &qword_101910250);
    v32 = &v72[*(v71 + 32)];
    v33 = v32[1];
    if (!v33)
    {
      goto LABEL_7;
    }

    v34 = *v32;
    v35 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v35 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v36._countAndFlagsBits = 2125423;
      v36._object = 0xE300000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v36);
      v37._countAndFlagsBits = v34;
      v37._object = v33;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v37);
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
      LocalizedStringKey.init(stringInterpolation:)();
      v39 = Text.init(_:tableName:bundle:comment:)();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      swift_getKeyPath();
      swift_getKeyPath();
      v46 = v29;
      static Published.subscript.getter();

      sub_1001AD984(v87, v39, v41, v43 & 1, v45, &v87);
      sub_1000F0A40(v39, v41, v43 & 1);

      v72 = *(&v87 + 1);
      v73 = v87;
      v70 = *(&v88 + 1);
      v71 = v88;
      v68 = *(&v89 + 1);
      v69 = v89;
      v66 = *(&v90 + 1);
      v67 = v90;
      v65 = v91;
      v75 = 0x4024000000000000;
      *&v76 = v92;
      *(&v76 + 1) = *(&v91 + 1);
    }

    else
    {
LABEL_7:
      v72 = 0;
      v73 = 0;
      v70 = 0;
      v71 = 0;
      v68 = 0;
      v69 = 0;
      v66 = 0;
      v67 = 0;
      v65 = 0;
      v76 = 0uLL;
      v75 = 0;
    }

    v47 = v79;
    sub_1000D2DFC(v78, v79, &qword_101910170);
    v48 = v80;
    sub_1000D2DFC(v31, v80, &qword_101910250);
    v49 = v74;
    sub_1000D2DFC(v47, v74, &qword_101910170);
    v50 = sub_1000CE6B8(&qword_101910298);
    sub_1000D2DFC(v48, v49 + *(v50 + 48), &qword_101910250);
    v51 = (v49 + *(v50 + 64));
    v52 = v72;
    v53 = v73;
    *&v81 = v73;
    *(&v81 + 1) = v72;
    v54 = v70;
    v55 = v71;
    *&v82 = v71;
    *(&v82 + 1) = v70;
    v57 = v68;
    v56 = v69;
    *&v83 = v69;
    *(&v83 + 1) = v68;
    v59 = v66;
    v58 = v67;
    *&v84 = v67;
    *(&v84 + 1) = v66;
    v60 = v65;
    *&v85 = v65;
    *(&v85 + 1) = *(&v76 + 1);
    *&v86 = v76;
    *(&v86 + 1) = v75;
    v61 = v84;
    v51[2] = v83;
    v51[3] = v61;
    v62 = v82;
    *v51 = v81;
    v51[1] = v62;
    v63 = v86;
    v51[4] = v85;
    v51[5] = v63;
    sub_1000D2DFC(&v81, &v87, &qword_101910138);
    sub_100024F64(v77, &qword_101910250);
    sub_100024F64(v78, &qword_101910170);
    *&v87 = v53;
    *(&v87 + 1) = v52;
    *&v88 = v55;
    *(&v88 + 1) = v54;
    *&v89 = v56;
    *(&v89 + 1) = v57;
    *&v90 = v58;
    *(&v90 + 1) = v59;
    *&v91 = v60;
    *(&v91 + 1) = *(&v76 + 1);
    *&v92 = v76;
    *(&v92 + 1) = v75;
    sub_100024F64(&v87, &qword_101910138);
    sub_100024F64(v80, &qword_101910250);
    return sub_100024F64(v79, &qword_101910170);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B22AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v82 = a4;
  *(&v82 + 1) = a5;
  v84 = a3;
  v85 = a2;
  v83 = a1;
  v88 = a6;
  v6 = sub_1000CE6B8(&qword_101910220);
  __chkstk_darwin(v6 - 8);
  v89 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v80 - v9;
  v10 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v90 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_101910228);
  __chkstk_darwin(v12 - 8);
  v87 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v91 = &v80 - v15;
  v16 = sub_1000CE6B8(&qword_101910170);
  __chkstk_darwin(v16 - 8);
  v18 = &v80 - v17;
  v19 = sub_1000CE6B8(&qword_101910178);
  __chkstk_darwin(v19 - 8);
  v21 = &v80 - v20;
  v22 = sub_1000CE6B8(&qword_101910230);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v86 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v80 - v26;
  *v27 = static VerticalAlignment.center.getter();
  *(v27 + 1) = 0x4008000000000000;
  v27[16] = 0;
  v28 = &v27[*(sub_1000CE6B8(&qword_101910238) + 44)];
  sub_1000D2DFC(v83, v21, &qword_101910178);
  sub_1000D2DFC(v85, v18, &qword_101910170);
  sub_1000D2DFC(v21, v28, &qword_101910178);
  v29 = sub_1000CE6B8(&qword_101910240);
  sub_1000D2DFC(v18, v28 + *(v29 + 48), &qword_101910170);
  v30 = v18;
  v31 = v84;
  sub_100024F64(v30, &qword_101910170);
  sub_100024F64(v21, &qword_101910178);
  *&v27[*(sub_1000CE6B8(&qword_101910248) + 36)] = 0x4059000000000000;
  v32 = *(v23 + 44);
  v85 = v27;
  v33 = &v27[v32];
  *v33 = 0xD000000000000016;
  *(v33 + 1) = 0x80000001012221B0;
  v33[16] = 9;
  v34 = v31 + *(_s17ThirdPartyRatingsVMa(0) + 28);
  v35 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(0);
  if (*(v34 + v35[9]) == 1)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v36._countAndFlagsBits = 40;
    v36._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v36);
    v81 = v35;
    v37 = v35[7];
    v83 = v34;
    *&v99 = *(v34 + v37);
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v38._countAndFlagsBits = 41;
    v38._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
    LocalizedStringKey.init(stringInterpolation:)();
    v39 = Text.init(_:tableName:bundle:comment:)();
    v43 = *v31;
    if (!*v31)
    {
      goto LABEL_13;
    }

    v44 = v39;
    v45 = v40;
    v46 = v41;
    v47 = v42;
    swift_getKeyPath();
    swift_getKeyPath();
    v48 = v43;
    static Published.subscript.getter();

    sub_1001AD984(v99, v44, v45, v46 & 1, v47, v105);
    sub_1000F0A40(v44, v45, v46 & 1);

    v95 = v105[2];
    v96 = v105[3];
    v97 = v105[4];
    LOBYTE(v98) = v106;
    v93 = v105[0];
    v94 = v105[1];
    *(&v98 + 1) = 0x4024000000000000;
    v107 = v82;
    sub_1000CE6B8(&qword_101910288);
    sub_1001C94E8();
    sub_1000E5580();
    v49 = v91;
    View.accessibilityLabel<A>(_:)();
    v101 = v95;
    v102 = v96;
    v103 = v97;
    v104 = v98;
    v99 = v93;
    v100 = v94;
    sub_100024F64(&v99, &qword_101910288);
    v50 = sub_1000CE6B8(&qword_101910250);
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v34 = v83;
    v35 = v81;
  }

  else
  {
    v51 = sub_1000CE6B8(&qword_101910250);
    v49 = v91;
    (*(*(v51 - 8) + 56))(v91, 1, 1, v51);
  }

  v52 = (v34 + v35[8]);
  v53 = v52[1];
  if (!v53)
  {
    goto LABEL_11;
  }

  v54 = *v52;
  v55 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v55 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (!v55)
  {
LABEL_11:
    v71 = sub_1000CE6B8(&qword_101910258);
    (*(*(v71 - 8) + 56))(v92, 1, 1, v71);
    goto LABEL_12;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v56);
  v57._countAndFlagsBits = v54;
  v57._object = v53;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v57);
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v58);
  LocalizedStringKey.init(stringInterpolation:)();
  v59 = Text.init(_:tableName:bundle:comment:)();
  v63 = *v31;
  if (*v31)
  {
    v64 = v59;
    v65 = v60;
    v66 = v61;
    v67 = v62;
    swift_getKeyPath();
    swift_getKeyPath();
    v68 = v63;
    static Published.subscript.getter();

    sub_1001AD984(v99, v64, v65, v66 & 1, v67, &v99);
    sub_1000F0A40(v64, v65, v66 & 1);

    v95 = v101;
    v96 = v102;
    v97 = v103;
    LOBYTE(v98) = v104;
    v93 = v99;
    v94 = v100;
    v109 = v101;
    v110 = v102;
    v111 = v103;
    v112 = v104;
    v107 = v99;
    v108 = v100;
    sub_1000CE6B8(&qword_1019100D0);
    sub_1001C92C0();
    v69 = v92;
    View.accessibilityIdentifier(_:)();
    sub_100024F64(&v93, &qword_1019100D0);
    v70 = sub_1000CE6B8(&qword_101910258);
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
LABEL_12:
    v72 = v85;
    v73 = v86;
    sub_1000D2DFC(v85, v86, &qword_101910230);
    v74 = v87;
    sub_1000D2DFC(v49, v87, &qword_101910228);
    v75 = v92;
    v76 = v89;
    sub_1000D2DFC(v92, v89, &qword_101910220);
    v77 = v88;
    sub_1000D2DFC(v73, v88, &qword_101910230);
    v78 = sub_1000CE6B8(&qword_101910260);
    sub_1000D2DFC(v74, v77 + *(v78 + 48), &qword_101910228);
    sub_1000D2DFC(v76, v77 + *(v78 + 64), &qword_101910220);
    sub_100024F64(v75, &qword_101910220);
    sub_100024F64(v91, &qword_101910228);
    sub_100024F64(v72, &qword_101910230);
    sub_100024F64(v76, &qword_101910220);
    sub_100024F64(v74, &qword_101910228);
    return sub_100024F64(v73, &qword_101910230);
  }

LABEL_13:
  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B2D48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v17 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_101910108);
  v7 = *(v6 - 8);
  v18 = v6;
  v19 = v7;
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  _s17FirstPartyRatingsVMa(0);
  sub_1000CE6B8(&qword_10190F6E0);
  ScaledMetric.wrappedValue.getter();
  v10 = v40;
  v11 = static VerticalAlignment.center.getter();
  v24 = 0;
  sub_1001B31AC(v2, &v40);
  v35 = v50;
  v36 = v51;
  v37 = v52;
  v38 = v53;
  v31 = v46;
  v32 = v47;
  v33 = v48;
  v34 = v49;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  v30 = v45;
  v25 = v40;
  v26 = v41;
  v39[10] = v50;
  v39[11] = v51;
  v39[12] = v52;
  v39[13] = v53;
  v39[6] = v46;
  v39[7] = v47;
  v39[8] = v48;
  v39[9] = v49;
  v39[2] = v42;
  v39[3] = v43;
  v39[4] = v44;
  v39[5] = v45;
  v39[0] = v40;
  v39[1] = v41;
  sub_1000D2DFC(&v25, &v21, &qword_101910110);
  sub_100024F64(v39, &qword_101910110);
  *&v23[167] = v35;
  *&v23[183] = v36;
  *&v23[199] = v37;
  *&v23[215] = v38;
  *&v23[103] = v31;
  *&v23[119] = v32;
  *&v23[135] = v33;
  *&v23[151] = v34;
  *&v23[39] = v27;
  *&v23[55] = v28;
  *&v23[71] = v29;
  *&v23[87] = v30;
  *&v23[7] = v25;
  *&v23[23] = v26;
  *&v22[177] = *&v23[176];
  *&v22[193] = *&v23[192];
  *&v22[209] = *&v23[208];
  *&v22[113] = *&v23[112];
  *&v22[129] = *&v23[128];
  *&v22[145] = *&v23[144];
  *&v22[161] = *&v23[160];
  *&v22[49] = *&v23[48];
  *&v22[65] = *&v23[64];
  *&v22[81] = *&v23[80];
  *&v22[97] = *&v23[96];
  *&v22[1] = *v23;
  *&v22[17] = *&v23[16];
  *&v21 = v11;
  *(&v21 + 1) = v10;
  v22[0] = v24;
  *&v22[224] = *(&v38 + 1);
  *&v22[33] = *&v23[32];
  static AccessibilityChildBehavior.combine.getter();
  v12 = sub_1000CE6B8(&qword_101910118);
  v13 = sub_1000414C8(&qword_101910120, &qword_101910118);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v17);
  v52 = *&v22[176];
  v53 = *&v22[192];
  v54 = *&v22[208];
  v55 = *&v22[224];
  v48 = *&v22[112];
  v49 = *&v22[128];
  v50 = *&v22[144];
  v51 = *&v22[160];
  v44 = *&v22[48];
  v45 = *&v22[64];
  v46 = *&v22[80];
  v47 = *&v22[96];
  v40 = v21;
  v41 = *v22;
  v42 = *&v22[16];
  v43 = *&v22[32];
  sub_100024F64(&v40, &qword_101910118);
  *&v21 = v12;
  *(&v21 + 1) = v13;
  swift_getOpaqueTypeConformance2();
  v14 = v18;
  View.accessibility(identifier:)();
  return (*(v19 + 8))(v9, v14);
}

uint64_t sub_1001B31AC@<X0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  LOBYTE(v54[0]) = 0;
  sub_1001B35E4(a1, &v55);
  v62 = *&v56[48];
  v63 = *&v56[64];
  v64 = *&v56[80];
  v58 = v55;
  v59 = *v56;
  v60 = *&v56[16];
  v61 = *&v56[32];
  v65[0] = v55;
  v65[1] = *v56;
  v65[2] = *&v56[16];
  v65[3] = *&v56[32];
  v65[4] = *&v56[48];
  v65[5] = *&v56[64];
  v66 = *&v56[80];
  sub_1000D2DFC(&v58, &v46, &qword_101910128);
  sub_100024F64(v65, &qword_101910128);
  *&v57[55] = v61;
  *&v57[71] = v62;
  *&v57[87] = v63;
  *&v57[7] = v58;
  *&v57[23] = v59;
  *&v57[103] = v64;
  *&v57[39] = v60;
  v5 = v54[0];
  PartyRatingsVMa = _s17FirstPartyRatingsVMa(0);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (*(a1 + *(PartyRatingsVMa + 36)))
  {
    goto LABEL_4;
  }

  v33 = v4;
  v19 = (a1 + *(PartyRatingsVMa + 24));
  v20 = v19[1];
  *&v55 = *v19;
  *(&v55 + 1) = v20;
  sub_1000E5580();

  v21 = Text.init<A>(_:)();
  v25 = *a1;
  if (*a1)
  {
    v26 = v21;
    v27 = v22;
    v28 = v23;
    v29 = v24;
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v25;
    static Published.subscript.getter();

    sub_1001AD984(v55, v26, v27, v28 & 1, v29, &v55);
    sub_1000F0A40(v26, v27, v28 & 1);

    v8 = *(&v55 + 1);
    v7 = v55;
    v9 = *v56;
    v10 = *&v56[8];
    v11 = *&v56[16];
    v12 = *&v56[24];
    v13 = *&v56[32];
    v14 = *&v56[40];
    v15 = *&v56[48];
    v16 = *&v56[56];
    v18 = 0xBFF0000000000000;
    v17 = v56[64];
    v4 = v33;
LABEL_4:
    *&v46 = v4;
    *(&v46 + 1) = 0x4010000000000000;
    LOBYTE(v47[0]) = v5;
    *(v47 + 1) = *v57;
    *(&v47[1] + 1) = *&v57[16];
    *(&v47[2] + 1) = *&v57[32];
    *(&v47[5] + 1) = *&v57[80];
    *(&v47[4] + 1) = *&v57[64];
    *(&v47[3] + 1) = *&v57[48];
    v47[6] = *&v57[95];
    v34 = v47[1];
    v35 = v47[2];
    v38 = v47[5];
    v39 = *&v57[95];
    v36 = v47[3];
    v37 = v47[4];
    *&v48 = v7;
    *(&v48 + 1) = v8;
    *&v49 = v9;
    *(&v49 + 1) = v10;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    *&v51 = v13;
    *(&v51 + 1) = v14;
    *&v52 = v15;
    *(&v52 + 1) = v16;
    *&v53 = v17;
    *(&v53 + 1) = v18;
    v40 = v48;
    v41 = v49;
    v44 = v52;
    v45 = v53;
    v42 = v50;
    v43 = v51;
    v31 = v47[0];
    *a2 = v46;
    a2[1] = v31;
    a2[4] = v36;
    a2[5] = v37;
    a2[2] = v34;
    a2[3] = v35;
    a2[8] = v40;
    a2[9] = v41;
    a2[6] = v38;
    a2[7] = v39;
    a2[12] = v44;
    a2[13] = v45;
    a2[10] = v42;
    a2[11] = v43;
    v54[0] = v7;
    v54[1] = v8;
    v54[2] = v9;
    v54[3] = v10;
    v54[4] = v11;
    v54[5] = v12;
    v54[6] = v13;
    v54[7] = v14;
    v54[8] = v15;
    v54[9] = v16;
    v54[10] = v17;
    v54[11] = v18;
    sub_1000D2DFC(&v46, &v55, &qword_101910130);
    sub_1000D2DFC(&v48, &v55, &qword_101910138);
    sub_100024F64(v54, &qword_101910138);
    *&v56[49] = *&v57[48];
    *&v56[65] = *&v57[64];
    *&v56[81] = *&v57[80];
    *&v56[96] = *&v57[95];
    *&v56[1] = *v57;
    *&v56[17] = *&v57[16];
    *&v55 = v4;
    *(&v55 + 1) = 0x4010000000000000;
    v56[0] = v5;
    *&v56[33] = *&v57[32];
    return sub_100024F64(&v55, &qword_101910130);
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B35E4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000CE6B8(&qword_101910140);
  __chkstk_darwin(v4 - 8);
  v6 = v48 - v5;
  Image.init(systemName:)();
  v7 = enum case for Image.TemplateRenderingMode.template(_:);
  v8 = type metadata accessor for Image.TemplateRenderingMode();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = Image.renderingMode(_:)();

  sub_100024F64(v6, &qword_101910140);
  PartyRatingsVMa = _s17FirstPartyRatingsVMa(0);
  v12 = PartyRatingsVMa;
  v13 = *(a1 + *(PartyRatingsVMa + 36));
  if (v13 == 1)
  {
    v14 = *a1;
    if (!*a1)
    {
      goto LABEL_27;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v14;
    static Published.subscript.getter();

    if (v56)
    {
      if (qword_101906598 != -1)
      {
        swift_once();
      }

      v16 = &qword_10195FBA8;
    }

    else
    {
      if (qword_1019065A0 != -1)
      {
        swift_once();
      }

      v16 = &qword_10195FBB0;
    }
  }

  else
  {
    v16 = (a1 + *(PartyRatingsVMa + 28));
  }

  v53 = *v16;

  KeyPath = swift_getKeyPath();
  static Font.caption.getter();
  static Font.Weight.bold.getter();
  v51 = Font.weight(_:)();

  v50 = swift_getKeyPath();
  v54 = v10;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
  v56 = *(a1 + *(v12 + 32));
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  if (v13)
  {
    v18 = 37;
    v19 = 0xE100000000000000;
  }

  else
  {
    v18 = 9504;
    v19 = 0xE200000000000000;
  }

  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v18);
  LocalizedStringKey.init(stringInterpolation:)();
  v20 = Text.init(_:tableName:bundle:comment:)();
  v22 = v21;
  v24 = v23;
  static Font.subheadline.getter();
  if (v13)
  {
    static Font.Weight.regular.getter();
  }

  else
  {
    static Font.Weight.bold.getter();
  }

  Font.weight(_:)();

  v48[0] = Text.font(_:)();
  v48[1] = v25;
  v27 = v26;
  v29 = v28;

  sub_1000F0A40(v20, v22, v24 & 1);

  if (!v13)
  {
    goto LABEL_24;
  }

  v30 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = v30;
    static Published.subscript.getter();

    if (v56)
    {
      if (qword_101906598 == -1)
      {
        goto LABEL_24;
      }
    }

    else if (qword_1019065A0 == -1)
    {
LABEL_24:

      v32 = v48[0];
      v33 = Text.foregroundColor(_:)();
      v35 = v34;
      v37 = v36;
      v39 = v38;

      sub_1000F0A40(v32, v27, v29 & 1);

      v40 = swift_getKeyPath();
      v41 = v37 & 1;
      LOBYTE(v56) = v37 & 1;
      v55 = 0;
      v42 = v53;
      v43 = v49;
      v44 = v50;
      v46 = v51;
      v45 = KeyPath;
      *v49 = v54;
      v43[1] = v45;
      v43[2] = v42;
      v43[3] = v44;
      v43[4] = v46;
      v43[5] = v33;
      v43[6] = v35;
      *(v43 + 56) = v41;
      v43[8] = v39;
      v43[9] = v40;
      v43[10] = 1;
      *(v43 + 88) = 0;
      v43[12] = 0x3FF0000000000000;

      sub_1001C8AFC(v33, v35, v41);

      sub_1000F0A40(v33, v35, v41);
    }

    swift_once();
    goto LABEL_24;
  }

LABEL_27:
  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B3CB4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v27 = sub_1000CE6B8(&qword_1019102A0);
  __chkstk_darwin(v27);
  v3 = &v19 - v2;
  v25 = sub_1000CE6B8(&qword_1019102A8);
  __chkstk_darwin(v25);
  v26 = &v19 - v4;
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_1019102B0);
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v24 = sub_1000CE6B8(&qword_1019102B8);
  __chkstk_darwin(v24);
  v12 = &v19 - v11;
  if (*(v1 + 48))
  {
    v13 = static VerticalAlignment.center.getter();
    v33 = 0;
    sub_1001B43C8(v1, &v48);
    v38 = v52;
    v39 = v53;
    v40[0] = *v54;
    *(v40 + 9) = *&v54[9];
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v47[0] = *v54;
    *(v47 + 9) = *&v54[9];
    v20 = v8;
    sub_1000D2DFC(&v34, &v30, &qword_1019102C0);
    sub_100024F64(&v41, &qword_1019102C0);
    *(&v29[4] + 7) = v38;
    *(&v29[5] + 7) = v39;
    *(&v29[6] + 7) = v40[0];
    v29[7] = *(v40 + 9);
    *(v29 + 7) = v34;
    *(&v29[1] + 7) = v35;
    *(&v29[2] + 7) = v36;
    *(&v29[3] + 7) = v37;
    *&v31[65] = v29[4];
    *&v31[81] = v29[5];
    *&v31[97] = v29[6];
    *&v31[113] = *(v40 + 9);
    *&v31[1] = v29[0];
    *&v31[17] = v29[1];
    *&v31[33] = v29[2];
    *&v30 = v13;
    *(&v30 + 1) = 0x4010000000000000;
    v31[0] = v33;
    *&v31[49] = v29[3];
    static AccessibilityChildBehavior.combine.getter();
    v14 = sub_1000CE6B8(&qword_1019102C8);
    v15 = sub_1000414C8(&qword_1019102D0, &qword_1019102C8);
    View.accessibilityElement(children:)();
    (*(v21 + 8))(v7, v22);
    *v54 = *&v31[80];
    *&v54[16] = *&v31[96];
    v55 = *&v31[112];
    v56 = v31[128];
    v50 = *&v31[16];
    v51 = *&v31[32];
    v52 = *&v31[48];
    v53 = *&v31[64];
    v48 = v30;
    v49 = *v31;
    sub_100024F64(&v48, &qword_1019102C8);
    *&v30 = v14;
    *(&v30 + 1) = v15;
    swift_getOpaqueTypeConformance2();
    v16 = v20;
    View.accessibility(identifier:)();
    (*(v23 + 8))(v10, v16);
    sub_1000D2DFC(v12, v26, &qword_1019102B8);
    swift_storeEnumTagMultiPayload();
    sub_1001C95A0();
    sub_1001C96CC();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v12, &qword_1019102B8);
  }

  else
  {
    v18 = static VerticalAlignment.center.getter();
    v33 = 0;
    sub_1001B4798(v1, &v48);
    v38 = v52;
    v39 = v53;
    v40[0] = *v54;
    *(v40 + 9) = *&v54[9];
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v47[0] = *v54;
    *(v47 + 9) = *&v54[9];
    sub_1000D2DFC(&v34, &v30, &qword_1019102C0);
    sub_100024F64(&v41, &qword_1019102C0);
    *(&v32[4] + 7) = v38;
    *(&v32[5] + 7) = v39;
    *(&v32[6] + 7) = v40[0];
    v32[7] = *(v40 + 9);
    *(v32 + 7) = v34;
    *(&v32[1] + 7) = v35;
    *(&v32[2] + 7) = v36;
    *(&v32[3] + 7) = v37;
    *&v31[65] = v32[4];
    *&v31[81] = v32[5];
    *&v31[97] = v32[6];
    *&v31[113] = *(v40 + 9);
    *&v31[1] = v32[0];
    *&v31[17] = v32[1];
    *&v31[33] = v32[2];
    *&v30 = v18;
    *(&v30 + 1) = 0x4010000000000000;
    v31[0] = v33;
    *&v31[49] = v32[3];
    sub_1000CE6B8(&qword_1019102C8);
    sub_1000414C8(&qword_1019102D0, &qword_1019102C8);
    View.accessibility(identifier:)();
    *v54 = *&v31[80];
    *&v54[16] = *&v31[96];
    v55 = *&v31[112];
    v56 = v31[128];
    v50 = *&v31[16];
    v51 = *&v31[32];
    v52 = *&v31[48];
    v53 = *&v31[64];
    v48 = v30;
    v49 = *v31;
    sub_100024F64(&v48, &qword_1019102C8);
    sub_1000D2DFC(v3, v26, &qword_1019102A0);
    swift_storeEnumTagMultiPayload();
    sub_1001C95A0();
    sub_1001C96CC();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v3, &qword_1019102A0);
  }
}

uint64_t sub_1001B43C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_101910140);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  Image.init(systemName:)();
  v7 = enum case for Image.TemplateRenderingMode.template(_:);
  v8 = type metadata accessor for Image.TemplateRenderingMode();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v39 = Image.renderingMode(_:)();

  sub_100024F64(v6, &qword_101910140);
  v38 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  static Font.caption.getter();
  static Font.Weight.bold.getter();
  v36 = Font.weight(_:)();

  v35 = swift_getKeyPath();
  v10 = *(a1 + 24);
  *&v43[0] = *(a1 + 16);
  *(&v43[0] + 1) = v10;
  sub_1000E5580();

  v11 = Text.init<A>(_:)();
  v15 = *a1;
  if (*a1)
  {
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v15;
    static Published.subscript.getter();

    sub_1001AD984(v43[0], v16, v17, v18 & 1, v19, &v45);
    sub_1000F0A40(v16, v17, v18 & 1);

    v22 = v46;
    v21 = v47;
    v24 = v47;
    v23 = v48;
    v41[2] = v47;
    v41[3] = v48;
    v25 = v48;
    v41[4] = v49;
    *(a2 + 104) = v49;
    *(a2 + 88) = v23;
    *(a2 + 72) = v21;
    v41[0] = v45;
    v27 = v45;
    v26 = v45;
    v41[1] = v46;
    *(a2 + 56) = v46;
    v28 = v50;
    v42 = v50;
    v29 = v38;
    v31 = v36;
    v30 = KeyPath;
    *a2 = v39;
    *(a2 + 8) = v30;
    v32 = v35;
    *(a2 + 16) = v29;
    *(a2 + 24) = v32;
    *(a2 + 32) = v31;
    *(a2 + 120) = v28;
    *(a2 + 40) = v26;
    v43[0] = v27;
    v43[1] = v22;
    v44 = v50;
    v43[3] = v25;
    v43[4] = v49;
    v43[2] = v24;

    sub_1000D2DFC(v41, &v40, &qword_1019100D0);
    sub_100024F64(v43, &qword_1019100D0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B4798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_101910140);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  Image.init(systemName:)();
  v7 = enum case for Image.TemplateRenderingMode.template(_:);
  v8 = type metadata accessor for Image.TemplateRenderingMode();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v40 = Image.renderingMode(_:)();

  sub_100024F64(v6, &qword_101910140);
  v10 = [objc_opt_self() _maps_systemGrayColor];
  v39 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v37 = static Font.caption.getter();
  v36 = swift_getKeyPath();
  v11 = *(a1 + 40);
  *&v44[0] = *(a1 + 32);
  *(&v44[0] + 1) = v11;
  sub_1000E5580();

  v12 = Text.init<A>(_:)();
  v16 = *a1;
  if (*a1)
  {
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v16;
    static Published.subscript.getter();

    sub_1001AD984(v44[0], v17, v18, v19 & 1, v20, &v46);
    sub_1000F0A40(v17, v18, v19 & 1);

    v23 = v47;
    v22 = v48;
    v25 = v48;
    v24 = v49;
    v42[2] = v48;
    v42[3] = v49;
    v26 = v49;
    v42[4] = v50;
    *(a2 + 104) = v50;
    *(a2 + 88) = v24;
    *(a2 + 72) = v22;
    v42[0] = v46;
    v28 = v46;
    v27 = v46;
    v42[1] = v47;
    *(a2 + 56) = v47;
    v29 = v51;
    v43 = v51;
    v30 = v39;
    v32 = v37;
    v31 = KeyPath;
    *a2 = v40;
    *(a2 + 8) = v31;
    v33 = v36;
    *(a2 + 16) = v30;
    *(a2 + 24) = v33;
    *(a2 + 32) = v32;
    *(a2 + 120) = v29;
    *(a2 + 40) = v27;
    v44[0] = v28;
    v44[1] = v23;
    v45 = v51;
    v44[3] = v26;
    v44[4] = v50;
    v44[2] = v25;

    sub_1000D2DFC(v42, &v41, &qword_1019100D0);
    sub_100024F64(v44, &qword_1019100D0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B4BB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&qword_1019102E8);
  __chkstk_darwin(v4);
  v6 = v87 - v5;
  v106 = sub_1000CE6B8(&qword_1019102F0);
  __chkstk_darwin(v106);
  v8 = v87 - v7;
  v104 = sub_1000CE6B8(&qword_1019102F8);
  __chkstk_darwin(v104);
  v105 = v87 - v9;
  v10 = type metadata accessor for AccessibilityTraits();
  v100 = *(v10 - 1);
  v101 = v10;
  __chkstk_darwin(v10);
  v99 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1000CE6B8(&qword_101910300);
  __chkstk_darwin(v107);
  v97 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = v87 - v14;
  __chkstk_darwin(v15);
  v102 = v87 - v16;
  __chkstk_darwin(v17);
  v103 = v87 - v18;
  v19 = type metadata accessor for AttributedString();
  __chkstk_darwin(v19 - 8);
  v96 = v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v21 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = *&v122[0];
  if (!*&v122[0])
  {
    goto LABEL_7;
  }

  v23 = [*&v122[0] name];
  if (!v23)
  {

LABEL_7:
    AttributedString.init(stringLiteral:)();
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    v39 = EnvironmentObject.init()();
    v41 = v40;
    KeyPath = swift_getKeyPath();
    v43 = _s5LabelVMa(0);
    *&v6[v43[12]] = KeyPath;
    sub_1000CE6B8(&qword_10190A1A0);
    swift_storeEnumTagMultiPayload();
    v44 = &v6[v43[5]];
    *v44 = 0;
    *(v44 + 1) = 0;
    *&v6[v43[6]] = 0;
    *&v6[v43[7]] = 0;
    *&v6[v43[8]] = 0;
    *&v6[v43[9]] = 0;
    v45 = &v6[v43[10]];
    *v45 = 1;
    v45[8] = 0;
    v46 = &v6[v43[11]];
    *v46 = v39;
    v46[1] = v41;
    v47 = static Color.clear.getter();
    v48 = swift_getKeyPath();
    v49 = &v6[*(v4 + 36)];
    *v49 = v48;
    v49[1] = v47;
    sub_1001C97B4();
    View.accessibilityHidden(_:)();
    sub_100024F64(v6, &qword_1019102E8);
    sub_1000D2DFC(v8, v105, &qword_1019102F0);
    swift_storeEnumTagMultiPayload();
    sub_1001C989C();
    sub_1001C9984();
    _ConditionalContent<>.init(storage:)();
    v50 = v8;
    v51 = &qword_1019102F0;
    return sub_100024F64(v50, v51);
  }

  v89 = v22;
  v90 = a1;
  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
  v91._countAndFlagsBits = v25;
  v91._object = v27;
  v29._countAndFlagsBits = v25;
  v29._object = v27;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v29);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
  LocalizedStringKey.init(stringInterpolation:)();
  v31 = Text.init(_:tableName:bundle:comment:)();
  v34 = *v2;
  if (*v2)
  {
    v35 = v31;
    v36 = v32;
    v37 = v33;
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v34;
    static Published.subscript.getter();

    if (v122[0])
    {
      static Color.white.getter();
    }

    else
    {
      static Color.blue.getter();
    }

    v52 = Text.foregroundColor(_:)();
    v93 = v53;
    v94 = v52;
    v92 = v54;
    v95 = v55;

    sub_1000F0A40(v35, v36, v37 & 1);

    if (*(v2 + 88))
    {
      v56 = v38[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase];

      object = v91._object;
      if (v56 == 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        sub_1001B5810(v91._countAndFlagsBits, object, LOBYTE(v122[0]), v96);
        v58 = Text.init(_:)();
LABEL_14:
        v64 = v58;
        v96 = v59;
        v65 = v60;
        v66 = v61;
        v87[0] = v58;
        v87[1] = v61;
        v67 = swift_allocObject();
        v68 = *(v2 + 48);
        *(v67 + 48) = *(v2 + 32);
        *(v67 + 64) = v68;
        *(v67 + 80) = *(v2 + 64);
        *(v67 + 89) = *(v2 + 73);
        v69 = *(v2 + 16);
        *(v67 + 16) = *v2;
        *(v67 + 32) = v69;
        v70 = v89;
        *(v67 + 112) = v89;
        *&v119 = sub_1001CD070;
        *(&v119 + 1) = v67;
        sub_1001C4D78(v2, v122);
        v89 = v70;

        v88 = v65;
        sub_1001B5D44(v2, v64, v96, v65 & 1, v66, v120);

        v116 = v120[7];
        v117 = v120[8];
        v118 = v121;
        v112 = v120[3];
        v113 = v120[4];
        v114 = v120[5];
        v115 = v120[6];
        v108 = v119;
        v109 = v120[0];
        v110 = v120[1];
        v111 = v120[2];
        sub_1000CE6B8(&qword_101910320);
        sub_1000414C8(&qword_101910318, &qword_101910320);
        v71 = v97;
        View.accessibility(identifier:)();
        v122[8] = v116;
        v122[9] = v117;
        v123 = v118;
        v122[4] = v112;
        v122[5] = v113;
        v122[6] = v114;
        v122[7] = v115;
        v122[0] = v108;
        v122[1] = v109;
        v122[2] = v110;
        v122[3] = v111;
        sub_100024F64(v122, &qword_101910320);
        v72 = v98;
        ModifiedContent<>.accessibilityAutomationType(_:)();
        sub_100024F64(v71, &qword_101910300);
        v73 = v99;
        static AccessibilityTraits.isButton.getter();
        v74 = v102;
        ModifiedContent<>.accessibilityRemoveTraits(_:)();
        (*(v100 + 8))(v73, v101);
        sub_100024F64(v72, &qword_101910300);
        LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v75._countAndFlagsBits = 0x206F74206F47;
        v75._object = 0xE600000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v75);
        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v91);

        v76._countAndFlagsBits = 0;
        v76._object = 0xE000000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v76);
        LocalizedStringKey.init(stringInterpolation:)();
        v77 = Text.init(_:tableName:bundle:comment:)();
        v79 = v78;
        LOBYTE(v73) = v80;
        v81 = swift_allocObject();
        v82 = *(v2 + 48);
        *(v81 + 48) = *(v2 + 32);
        *(v81 + 64) = v82;
        *(v81 + 80) = *(v2 + 64);
        *(v81 + 89) = *(v2 + 73);
        v83 = *(v2 + 16);
        *(v81 + 16) = *v2;
        *(v81 + 32) = v83;
        v84 = v89;
        *(v81 + 112) = v89;
        sub_1001C4D78(v2, &v108);
        v101 = v84;
        v85 = v103;
        ModifiedContent<>.accessibilityAction(named:_:)();

        sub_1000F0A40(v77, v79, v73 & 1);

        sub_100024F64(v74, &qword_101910300);
        sub_1000D2DFC(v85, v105, &qword_101910300);
        swift_storeEnumTagMultiPayload();
        sub_1001C989C();
        sub_1001C9984();
        _ConditionalContent<>.init(storage:)();
        sub_1000F0A40(v94, v93, v92 & 1);

        sub_1000F0A40(v87[0], v96, v88 & 1);

        v50 = v85;
        v51 = &qword_101910300;
        return sub_100024F64(v50, v51);
      }
    }

    else
    {
    }

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v62._countAndFlagsBits = 0x6E6F697461636F4CLL;
    v62._object = 0xE900000000000020;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v62);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v63._countAndFlagsBits = 0;
    v63._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v63);
    LocalizedStringKey.init(stringInterpolation:)();
    v58 = Text.init(_:tableName:bundle:comment:)();
    goto LABEL_14;
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B5810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v35 = a4;
  v6 = sub_1000CE6B8(&unk_10190D5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1000CE6B8(&qword_10190B850);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_1000CE6B8(&unk_10190D600);
  v33 = *(v12 - 8);
  v34 = v12;
  __chkstk_darwin(v12);
  v31 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v30 = &v29 - v15;
  v16 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v16 - 8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v38._object = 0x8000000101222280;
  v17._countAndFlagsBits = 0x4025206E49;
  v18._object = 0x8000000101222250;
  v38._countAndFlagsBits = 0xD000000000000023;
  v18._countAndFlagsBits = 0xD000000000000022;
  v17._object = 0xE500000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, qword_1019600D8, v17, v38);
  sub_1000CE6B8(&unk_10190D5C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1011E1D30;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000DA61C();
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;

  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v37[0] = a1;
  v37[1] = a2;
  v20 = type metadata accessor for Locale();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  type metadata accessor for AttributedString();
  sub_1001C3C48(&qword_101910100, &type metadata accessor for AttributedString);
  sub_1000E5580();

  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_100024F64(v8, &unk_10190D5F0);

  if ((*(v33 + 48))(v11, 1, v34) == 1)
  {
    v21 = &qword_10190B850;
    v22 = v11;
  }

  else
  {
    v23 = v30;
    sub_1000F11C4(v11, v30, &unk_10190D600);
    v24 = v31;
    sub_1000D2DFC(v23, v31, &unk_10190D600);
    if (v32)
    {
      v25 = static Color.white.getter();
    }

    else
    {
      v25 = static Color.blue.getter();
    }

    v26 = v25;
    sub_1000414C8(&qword_10190B858, &unk_10190D600);
    v27 = AttributedString.subscript.modify();
    v36 = v26;
    sub_10016EB80();
    AttributedSubstring.subscript.setter();
    v27(v37, 0);
    sub_100024F64(v24, &unk_10190D600);
    v22 = v23;
    v21 = &unk_10190D600;
  }

  return sub_100024F64(v22, v21);
}

uint64_t sub_1001B5D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a1 + 88))
  {
    v12 = static VerticalAlignment.center.getter();
    LOBYTE(v30) = 0;
    sub_1001B60A4(a1, a2, a3, a4 & 1, a5, &v42);
    v25 = v46;
    v26 = v47;
    v27[0] = *v48;
    *(v27 + 9) = *&v48[9];
    v21 = v42;
    v22 = v43;
    v23 = v44;
    v24 = v45;
    v28[0] = v42;
    v28[1] = v43;
    v28[2] = v44;
    v28[3] = v45;
    v28[4] = v46;
    v28[5] = v47;
    v29[0] = *v48;
    *(v29 + 9) = *&v48[9];
    sub_1000D2DFC(&v21, &v40, &qword_10190FFE0);
    sub_100024F64(v28, &qword_10190FFE0);
    *&v20[71] = v25;
    *&v20[87] = v26;
    *&v20[103] = v27[0];
    *&v20[7] = v21;
    *&v20[23] = v22;
    *&v20[39] = v23;
    *&v20[55] = v24;
    *&v41[1] = *v20;
    *&v41[17] = *&v20[16];
    *&v41[33] = *&v20[32];
    *&v41[113] = *(v27 + 9);
    *&v41[97] = *&v20[96];
    *&v41[81] = *&v20[80];
    *&v41[65] = *&v20[64];
    *&v40 = v12;
    *(&v40 + 1) = 0x4010000000000000;
    v41[0] = v30;
    *&v41[49] = *&v20[48];
    sub_1001C9AD0(&v40);
LABEL_5:
    v36 = *&v41[80];
    v37 = *&v41[96];
    v38 = *&v41[112];
    v39 = *&v41[128];
    v32 = *&v41[16];
    v33 = *&v41[32];
    v34 = *&v41[48];
    v35 = *&v41[64];
    v30 = v40;
    v31 = *v41;
    sub_1000CE6B8(&qword_101910338);
    sub_1000CE6B8(&qword_1019100D0);
    sub_1000414C8(&qword_101910340, &qword_101910338);
    sub_1001C92C0();
    result = _ConditionalContent<>.init(storage:)();
    v16 = *&v48[16];
    *(a6 + 96) = *v48;
    *(a6 + 112) = v16;
    *(a6 + 128) = v49;
    *(a6 + 144) = v50;
    v17 = v45;
    *(a6 + 32) = v44;
    *(a6 + 48) = v17;
    v18 = v47;
    *(a6 + 64) = v46;
    *(a6 + 80) = v18;
    v19 = v43;
    *a6 = v42;
    *(a6 + 16) = v19;
    return result;
  }

  v13 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v13;
    static Published.subscript.getter();

    sub_1001AD984(v42, a2, a3, a4 & 1, a5, &v40);
    sub_1001C9AC4(&v40);
    goto LABEL_5;
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B60A4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = Image.init(_internalSystemName:)();
  v11 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v13 = *a1;
  if (*a1)
  {
    v14 = KeyPath;
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v13;
    static Published.subscript.getter();

    if (v39[0])
    {
      v16 = static Color.white.getter();
    }

    else
    {
      v16 = static Color.secondary.getter();
    }

    v17 = v16;
    v18 = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1001AD984(v39[0], a2, a3, a4 & 1, a5, &v31);
    v19 = v34;
    v20 = v32;
    v21 = v33;
    v37[2] = v33;
    v37[3] = v34;
    v22 = v34;
    v37[4] = v35;
    *(a6 + 104) = v35;
    *(a6 + 88) = v19;
    *(a6 + 72) = v21;
    v23 = v33;
    v24 = v31;
    v25 = v31;
    v37[0] = v31;
    v37[1] = v32;
    *(a6 + 56) = v32;
    v26 = v36;
    v38 = v36;
    *a6 = v10;
    *(a6 + 8) = v14;
    *(a6 + 16) = v11;
    *(a6 + 24) = v18;
    *(a6 + 32) = v17;
    *(a6 + 120) = v26;
    *(a6 + 40) = v24;
    v39[0] = v25;
    v39[1] = v20;
    v40 = v36;
    v39[3] = v22;
    v39[4] = v35;
    v39[2] = v23;

    sub_1000D2DFC(v37, v30, &qword_1019100D0);
    sub_100024F64(v39, &qword_1019100D0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B6380(uint64_t a1, void (*a2)(void))
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);
  v12 = *(a1 + 16);
  v8 = v12;
  if (v13 == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v12, &qword_101910330);
    (*(v5 + 8))(v7, v4);
    v8 = v11;
  }

  v11 = a2;
  v8(&v11);
}

uint64_t sub_1001B6564(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (*(a1 + 32) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4();
    (*(v3 + 8))(v5, v2);
    v6 = v10;
  }

  v8 = a1 + *(_s13TappableEntryVMa(0) + 24);
  v10 = *(v8 + *(type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0) + 24));
  v6(&v10);
}

uint64_t sub_1001B66FC@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_10190F380);
  __chkstk_darwin(v4 - 8);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v51 - v7;
  v54 = type metadata accessor for AttributedString();
  v9 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v11;
    static Published.subscript.getter();

    if ((v56 & 1) == 0 || (v13 = _s13TappableEntryVMa(0), v14 = a1 + *(v13 + 24), v15 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0), v16 = *(v15 + 20), v17 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0), v18 = v16 + v17[12], v51 = v14, sub_1000D2DFC(&v14[v18], v8, &qword_10190F380), v19 = *(v9 + 48), v20 = v19(v8, 1, v54), v52 = a1, v21 = v20, sub_100024F64(v8, &qword_10190F380), v22 = v21 == 1, a1 = v52, v22))
    {
      v13 = _s13TappableEntryVMa(0);
      v23 = a1 + *(v13 + 24);
      v15 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
      v24 = *(v15 + 20);
      v17 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
      v25 = v9;
      v26 = v9;
      v27 = a1;
      v28 = *(v25 + 16);
      v29 = &v23[v24 + v17[5]];
      v31 = v54;
      v30 = v55;
      v28(v55, v29, v54);
LABEL_8:
      v28(a2, v30, v31);
      _s13TappableEntryVMa(0);
      v34 = v27 + *(v13 + 24);
      type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
      v35 = &v34[*(v15 + 20)];
      type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
      v36 = v17[7];
      v37 = &v35[v17[6]];
      v38 = v37[1];
      v52 = *v37;
      v39 = *&v35[v36];
      v40 = *&v35[v17[8]];
      v41 = &v35[v17[11]];
      v54 = *v41;
      LODWORD(v53) = v41[8];
      type metadata accessor for PlaceSummaryViewModelTemplate(0);
      sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);

      v42 = EnvironmentObject.init()();
      v44 = v43;
      (*(v26 + 8))(v55, v31);
      KeyPath = swift_getKeyPath();
      v46 = _s5LabelVMa(0);
      *&a2[v46[12]] = KeyPath;
      sub_1000CE6B8(&qword_10190A1A0);
      result = swift_storeEnumTagMultiPayload();
      v48 = &a2[v46[5]];
      *v48 = v52;
      v48[1] = v38;
      *&a2[v46[6]] = v39;
      *&a2[v46[7]] = v40;
      *&a2[v46[8]] = 0;
      *&a2[v46[9]] = 0;
      v49 = &a2[v46[10]];
      *v49 = v54;
      v49[8] = v53;
      v50 = &a2[v46[11]];
      *v50 = v42;
      v50[1] = v44;
      return result;
    }

    v32 = v53;
    sub_1000D2DFC(&v51[v18], v53, &qword_10190F380);
    v33 = v54;
    if (v19(v32, 1, v54) != 1)
    {
      v30 = v55;
      (*(v9 + 32))(v55, v32, v33);
      v28 = *(v9 + 16);
      v31 = v33;
      v26 = v9;
      v27 = v52;
      goto LABEL_8;
    }

    __break(1u);
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001B6C1C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1001C48C0(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s13TappableEntryVMa);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1001C4928(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, _s13TappableEntryVMa);
  *a2 = sub_1001C9AD8;
  *(a2 + 1) = v7;
  v8 = sub_1000CE6B8(&qword_101910348);
  return sub_1001B66FC(v2, &a2[*(v8 + 36)]);
}

uint64_t sub_1001B6D54()
{
  v1 = _s5LabelVMa(0);
  v2 = (v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_101910388);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 16))(v4, v0, v8);
  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  v9 = EnvironmentObject.init()();
  v11 = v10;
  *&v4[v2[14]] = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190A1A0);
  swift_storeEnumTagMultiPayload();
  v12 = &v4[v2[7]];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[v2[8]] = 0;
  *&v4[v2[9]] = 0;
  *&v4[v2[10]] = 0;
  *&v4[v2[11]] = 0;
  v13 = &v4[v2[12]];
  *v13 = 1;
  v13[8] = 0;
  v14 = &v4[v2[13]];
  *v14 = v9;
  v14[1] = v11;
  if (*(v0 + *(_s5HoursVMa(0) + 20)))
  {
    v15 = 10.0;
  }

  else
  {
    v15 = 0.0;
  }

  sub_1001C4928(v4, v7, _s5LabelVMa);
  *&v7[*(v5 + 36)] = v15;
  sub_1001C9CD0();
  View.accessibility(identifier:)();
  return sub_100024F64(v7, &qword_101910388);
}

uint64_t sub_1001B6FE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Button();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v14[-v9];
  v15 = v2;
  v16 = v3;
  v17 = v1;

  Button.init(action:label:)();
  WitnessTable = swift_getWitnessTable();
  sub_10010ADFC(v7, v4, WitnessTable);
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_10010ADFC(v10, v4, WitnessTable);
  return (v12)(v10, v4);
}

uint64_t sub_1001B7188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s16BorderlessButtonVMa();
  sub_10010ADFC(a1 + *(v9 + 36), a2, a3);
  sub_10010ADFC(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_1001B7284@<X0>(uint64_t a1@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v30 = 0;
  sub_1001B7490(v1, &v18);
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v42[8] = v26;
  v42[9] = v27;
  v42[10] = v28;
  v42[4] = v22;
  v42[5] = v23;
  v42[6] = v24;
  v42[7] = v25;
  v42[0] = v18;
  v42[1] = v19;
  v42[2] = v20;
  v42[3] = v21;
  sub_1000D2DFC(&v31, &v17, &qword_101910398);
  sub_100024F64(v42, &qword_101910398);
  *&v29[119] = v38;
  *&v29[135] = v39;
  *&v29[151] = v40;
  *&v29[167] = v41;
  *&v29[55] = v34;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[103] = v37;
  *&v29[7] = v31;
  *&v29[23] = v32;
  *&v29[39] = v33;
  v4 = v30;
  v5 = static Edge.Set.leading.getter();
  _s28RealTimeAvailableChargerViewVMa(0);
  sub_1000CE6B8(&qword_10191DA40);
  ScaledMetric.wrappedValue.getter();
  result = EdgeInsets.init(_all:)();
  v7 = *&v29[144];
  *(a1 + 145) = *&v29[128];
  *(a1 + 161) = v7;
  *(a1 + 177) = *&v29[160];
  v8 = *&v29[80];
  *(a1 + 81) = *&v29[64];
  *(a1 + 97) = v8;
  v9 = *&v29[112];
  *(a1 + 113) = *&v29[96];
  *(a1 + 129) = v9;
  v10 = *&v29[16];
  *(a1 + 17) = *v29;
  *(a1 + 33) = v10;
  v11 = *&v29[48];
  *(a1 + 49) = *&v29[32];
  *a1 = v3;
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = v4;
  v12 = *&v29[175];
  *(a1 + 65) = v11;
  *(a1 + 192) = v12;
  *(a1 + 200) = 0xD000000000000018;
  *(a1 + 208) = 0x80000001012222D0;
  *(a1 + 216) = 13;
  *(a1 + 224) = v5;
  *(a1 + 232) = v13;
  *(a1 + 240) = v14;
  *(a1 + 248) = v15;
  *(a1 + 256) = v16;
  *(a1 + 264) = 0;
  return result;
}

uint64_t sub_1001B7490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v4 - 8);

  v34 = Image.init(systemName:)();
  static Font.caption2.getter();
  static Font.Weight.bold.getter();
  v33 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v31 = static Color.secondary.getter();
  v30 = swift_getKeyPath();
  v5 = *(a1 + *(_s28RealTimeAvailableChargerViewVMa(0) + 32));
  static UnitPoint.center.getter();
  v7 = v6;
  v9 = v8;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v52);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  LocalizedStringKey.init(stringInterpolation:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v28 = v13;
  v29 = v14;
  v16 = v15;
  static Font.subheadline.getter();
  static Font.Weight.medium.getter();
  v27 = Font.weight(_:)();

  v26 = swift_getKeyPath();
  v17 = v16 & 1;
  LOBYTE(v52._countAndFlagsBits) = v16 & 1;
  v24 = sub_100220C10();
  v25 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LODWORD(v52._countAndFlagsBits))
  {

    v18 = Image.init(systemName:)();
    static Font.subheadline.getter();
    static Font.Weight.medium.getter();
    v19 = Font.weight(_:)();

    v20 = swift_getKeyPath();
    v21 = sub_100220C10();
    v22 = swift_getKeyPath();
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v19 = 0;
    v22 = 0;
    v21 = 0;
  }

  *&v43 = v34;
  *(&v43 + 1) = KeyPath;
  *&v44 = v33;
  *(&v44 + 1) = v30;
  *&v45 = v31;
  *(&v45 + 1) = v5;
  *&v46 = v7;
  *(&v46 + 1) = v9;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  *&v47 = v12;
  *(&v47 + 1) = v28;
  LOBYTE(v48) = v17;
  DWORD1(v48) = *(v66 + 3);
  *(&v48 + 1) = v66[0];
  *(&v48 + 1) = v29;
  LOWORD(v49) = 256;
  WORD3(v49) = v65;
  *(&v49 + 2) = v64;
  *(&v49 + 1) = v26;
  *&v50 = v27;
  *(&v50 + 1) = v25;
  v51 = v24;
  v41 = v49;
  v42 = v50;
  v39 = v47;
  v40 = v48;
  sub_1000D2DFC(&v43, &v52, &qword_1019103A0);
  sub_1000D2DFC(&v47, &v52, &qword_10190FEF0);
  sub_1001C9DB8(v18);
  sub_1001C9E28(v18);
  *(a2 + 96) = v41;
  *(a2 + 112) = v42;
  *(a2 + 32) = v37;
  *(a2 + 48) = v38;
  *(a2 + 64) = v39;
  *(a2 + 80) = v40;
  *a2 = v35;
  *(a2 + 16) = v36;
  *(a2 + 128) = v24;
  *(a2 + 136) = v18;
  *(a2 + 144) = v20;
  *(a2 + 152) = v19;
  *(a2 + 160) = v22;
  *(a2 + 168) = v21;
  sub_1001C9E28(v18);
  v52._countAndFlagsBits = v12;
  v52._object = v28;
  v53 = v17;
  *v54 = v66[0];
  *&v54[3] = *(v66 + 3);
  v55 = v29;
  v56 = 256;
  v57 = v64;
  v58 = v65;
  v59 = v26;
  v60 = v27;
  v61 = v25;
  v62 = v24;
  sub_100024F64(&v52, &qword_10190FEF0);
  v63[0] = v34;
  v63[1] = KeyPath;
  v63[2] = v33;
  v63[3] = v30;
  v63[4] = v31;
  v63[5] = v5;
  v63[6] = v7;
  v63[7] = v9;
  return sub_100024F64(v63, &qword_1019103A0);
}

uint64_t sub_1001B79B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = sub_1000CE6B8(&qword_1019103A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v61 - v5;
  v7 = sub_1000CE6B8(&qword_1019103B0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v61 - v9;
  v62 = sub_1000CE6B8(&qword_1019103B8);
  __chkstk_darwin(v62);
  v65 = &v61 - v11;
  v63 = sub_1000CE6B8(&qword_1019103C0);
  __chkstk_darwin(v63);
  v68 = &v61 - v12;
  v64 = sub_1000CE6B8(&qword_1019103C8);
  __chkstk_darwin(v64);
  v67 = &v61 - v13;
  v66 = sub_1000CE6B8(&qword_1019103D0);
  __chkstk_darwin(v66);
  v69 = &v61 - v14;
  static Axis.Set.horizontal.getter();
  v71 = v2;
  sub_1000CE6B8(&qword_1019103D8);
  sub_1000414C8(&qword_1019103E0, &qword_1019103D8);
  ScrollView.init(_:showsIndicators:content:)();
  v15 = swift_allocObject();
  v16 = v2[3];
  v15[3] = v2[2];
  v15[4] = v16;
  v15[5] = v2[4];
  v17 = v2[1];
  v15[1] = *v2;
  v15[2] = v17;
  sub_1001C4C5C(v2, v72);
  sub_1000414C8(&qword_1019103E8, &qword_1019103A8);
  View.onScrollPhaseChange(_:)();

  (*(v4 + 8))(v6, v3);
  v18 = &v10[*(sub_1000CE6B8(&qword_1019103F0) + 36)];
  *v18 = 0x6C6C6F726373;
  *(v18 + 1) = 0xE600000000000000;
  v19 = &v10[*(v8 + 44)];
  *v19 = xmmword_1011EC710;
  v19[16] = 13;
  v20 = *(v2 + 2);
  if (v20)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v20;
    static Published.subscript.getter();

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v22 = v65;
    sub_1000F11C4(v10, v65, &qword_1019103B0);
    v23 = (v22 + *(v62 + 36));
    v24 = v72[5];
    v23[4] = v72[4];
    v23[5] = v24;
    v23[6] = v72[6];
    v25 = v72[1];
    *v23 = v72[0];
    v23[1] = v25;
    v26 = v72[3];
    v23[2] = v72[2];
    v23[3] = v26;
    static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v78 = v27;
    v79 = v28;
    v80 = v29;
    v81 = v30;
    v82 = 0;
    v31 = v68;
    SafeAreaPaddingModifier.init(edges:insets:)();
    sub_1000F11C4(v22, v31, &qword_1019103B8);
    static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v73 = v32;
    v74 = v33;
    v75 = v34;
    v76 = v35;
    v77 = 0;
    v36 = v67;
    SafeAreaPaddingModifier.init(edges:insets:)();
    sub_1000F11C4(v31, v36, &qword_1019103C0);
    v37 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v69;
    sub_1000F11C4(v36, v69, &qword_1019103C8);
    v47 = v46 + *(v66 + 36);
    *v47 = v37;
    *(v47 + 8) = v39;
    *(v47 + 16) = v41;
    *(v47 + 24) = v43;
    *(v47 + 32) = v45;
    *(v47 + 40) = 0;
    v48 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v46;
    v58 = v70;
    sub_1000F11C4(v57, v70, &qword_1019103D0);
    result = sub_1000CE6B8(&qword_1019103F8);
    v60 = v58 + *(result + 36);
    *v60 = v48;
    *(v60 + 8) = v50;
    *(v60 + 16) = v52;
    *(v60 + 24) = v54;
    *(v60 + 32) = v56;
    *(v60 + 40) = 0;
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B8144()
{
  v0 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v0);
  static VerticalAlignment.center.getter();
  sub_1001C3C48(&qword_10190F488, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_1000CE6B8(&qword_101910410);
  sub_1001C9EAC();
  return LazyHStack.init(alignment:spacing:pinnedViews:content:)();
}

id sub_1001B827C(uint64_t a1)
{
  result = [*(*(a1 + 8) + OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel_mapItem) _searchResultPhotoCarousel];
  if (result)
  {
    v3 = result;
    sub_1000CE6B8(&qword_10190ABA0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v5, 1))
    {
      __break(1u);
    }

    else if (((v5 - 1) & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v11 = v5 - 1;
      swift_getKeyPath();
      v6 = swift_allocObject();
      v7 = *(a1 + 48);
      v6[3] = *(a1 + 32);
      v6[4] = v7;
      v6[5] = *(a1 + 64);
      v8 = *(a1 + 16);
      v6[1] = *a1;
      v6[2] = v8;
      sub_1001C4C5C(a1, v9);
      sub_1000CE6B8(&qword_101910458);
      sub_1000CE6B8(&qword_101910428);
      sub_1001CA0AC();
      sub_1001C9F30();
      return ForEach<>.init(_:id:content:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B8424(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityTraits();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_101910438);
  __chkstk_darwin(v8);
  v10 = (&v19 - v9);
  v11 = sub_1000CE6B8(&qword_101910428);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = *a1;
  *v10 = static Alignment.leading.getter();
  v10[1] = v15;
  v16 = sub_1000CE6B8(&qword_101910470);
  sub_1001B865C(a2, v14, v10 + *(v16 + 44));
  v17 = v10 + *(v8 + 36);
  *v17 = xmmword_1011EC720;
  v17[16] = 3;
  sub_1001C9FEC();
  View.accessibilityAutomationType(_:)();
  sub_100024F64(v10, &qword_101910438);
  static AccessibilityTraits.isButton.getter();
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v5 + 8))(v7, v4);
  return sub_100024F64(v13, &qword_101910428);
}

uint64_t sub_1001B865C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v94 = a3;
  v4 = type metadata accessor for Image.ResizingMode();
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin(v4);
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_101910478);
  v90 = *(v6 - 8);
  v91 = v6;
  __chkstk_darwin(v6);
  v84 = &v74 - v7;
  v8 = sub_1000CE6B8(&qword_101910480);
  __chkstk_darwin(v8 - 8);
  v93 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v74 - v11;
  v12 = type metadata accessor for Color.RGBColorSpace();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000CE6B8(&qword_101910488);
  __chkstk_darwin(v16);
  v89 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v74 - v19;
  __chkstk_darwin(v21);
  v23 = &v74 - v22;
  v24 = [objc_opt_self() tertiarySystemFillColor];
  v87 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  (*(v13 + 104))(v15, enum case for Color.RGBColorSpace.sRGBLinear(_:), v12);
  v25 = Color.init(_:white:opacity:)();
  v88 = a1;
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = v25;
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v26;
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v105 = 1;
    v29 = &v20[*(v16 + 36)];
    v80 = type metadata accessor for RoundedRectangle();
    v30 = *(v80 + 20);
    v31 = enum case for RoundedCornerStyle.continuous(_:);
    v32 = type metadata accessor for RoundedCornerStyle();
    v33 = *(v32 - 8);
    v34 = *(v33 + 104);
    v79 = v31;
    v77 = v33 + 104;
    v78 = v34;
    v34(&v29[v30], v31, v32);
    __asm { FMOV            V0.2D, #6.0 }

    v76 = _Q0;
    *v29 = _Q0;
    v40 = sub_1000CE6B8(&qword_10191E590);
    *&v29[*(v40 + 36)] = 256;
    v41 = v87;
    *v20 = KeyPath;
    *(v20 + 1) = v41;
    *(v20 + 2) = v27;
    *(v20 + 24) = xmmword_1011EC730;
    *(v20 + 5) = 0x4010000000000000;
    v42 = v103;
    *(v20 + 3) = v102;
    *(v20 + 4) = v42;
    *(v20 + 5) = v104;
    *(v20 + 12) = 0;
    *(v20 + 52) = 257;
    sub_1000F11C4(v20, v23, &qword_101910488);
    v43 = v88;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v44 = v95[0];
    v45 = v23;
    if (v95[0])
    {
      if (*(v95[0] + 16))
      {
        v46 = sub_100298E64(v85);
        if (v47)
        {
          v48 = *(*(v44 + 56) + 8 * v46);
          if (v48)
          {
            v75 = v48;

            Image.init(uiImage:)();
            v50 = v82;
            v49 = v83;
            v51 = *(v82 + 104);
            KeyPath = v40;
            v52 = v81;
            v51(v81, enum case for Image.ResizingMode.stretch(_:), v83);
            v53 = Image.resizable(capInsets:resizingMode:)();

            (*(v50 + 8))(v52, v49);
            swift_getKeyPath();
            v87 = v45;
            swift_getKeyPath();
            static Published.subscript.getter();

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            static Alignment.center.getter();
            _FrameLayout.init(width:height:alignment:)();
            v99 = 1;
            *&v98[22] = v107;
            *&v98[38] = v108;
            *&v98[6] = v106;
            v96 = v53;
            *v97 = 257;
            *&v97[2] = *v98;
            *&v97[18] = *&v98[16];
            *&v97[34] = *&v98[32];
            *&v97[48] = *(&v108 + 1);
            v54 = swift_allocObject();
            v55 = v43[3];
            *(v54 + 48) = v43[2];
            *(v54 + 64) = v55;
            *(v54 + 80) = v43[4];
            v56 = v43[1];
            *(v54 + 16) = *v43;
            *(v54 + 32) = v56;
            v57 = v85;
            *(v54 + 96) = v85;
            sub_1001C4C5C(v43, v95);
            sub_1000CE6B8(&qword_101910498);
            sub_1001CA1F8();
            v58 = v84;
            v45 = v87;
            View.onTapGesture(count:perform:)();

            v100[1] = *v97;
            v100[2] = *&v97[16];
            v100[3] = *&v97[32];
            v101 = *&v97[48];
            v100[0] = v96;
            sub_100024F64(v100, &qword_101910498);
            v59 = swift_allocObject();
            *(v59 + 16) = v57;
            v60 = *v43;
            *(v59 + 40) = v43[1];
            v61 = v43[3];
            *(v59 + 56) = v43[2];
            *(v59 + 72) = v61;
            *(v59 + 88) = v43[4];
            *(v59 + 24) = v60;
            v62 = &v58[*(sub_1000CE6B8(&qword_1019104B8) + 36)];
            *v62 = sub_1001CA308;
            v62[1] = v59;
            v62[2] = 0;
            v62[3] = 0;
            v63 = &v58[*(sub_1000CE6B8(&qword_1019104C0) + 36)];
            *v63 = 0;
            *(v63 + 4) = 257;
            v64 = &v58[*(sub_1000CE6B8(&qword_1019104C8) + 36)];
            v78(&v64[*(v80 + 20)], v79, v32);
            *v64 = v76;
            *&v64[*(KeyPath + 36)] = 256;
            v65 = v91;
            v58[*(v91 + 36)] = 1;
            v66 = v58;
            v67 = v92;
            sub_1000F11C4(v66, v92, &qword_101910478);
            (*(v90 + 56))(v67, 0, 1, v65);
            sub_1001C4C5C(v43, v95);
LABEL_9:
            v68 = v89;
            sub_1000D2DFC(v45, v89, &qword_101910488);
            v69 = v93;
            sub_1000D2DFC(v67, v93, &qword_101910480);
            v70 = v45;
            v71 = v94;
            sub_1000D2DFC(v68, v94, &qword_101910488);
            v72 = sub_1000CE6B8(&qword_101910490);
            sub_1000D2DFC(v69, v71 + *(v72 + 48), &qword_101910480);
            sub_100024F64(v67, &qword_101910480);
            sub_100024F64(v70, &qword_101910488);
            sub_100024F64(v69, &qword_101910480);
            return sub_100024F64(v68, &qword_101910488);
          }
        }
      }
    }

    v67 = v92;
    (*(v90 + 56))(v92, 1, 1, v91);
    goto LABEL_9;
  }

  type metadata accessor for PlaceSummaryViewModelTemplate(0);
  sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

id sub_1001B91C0(uint64_t a1, void (*a2)(void))
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 48);
  v12 = *(a1 + 32);
  v8 = v12;
  if (v13 == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v12, &qword_1019104D0);
    (*(v5 + 8))(v7, v4);
    v8 = v11;
  }

  v11 = a2;
  v8(&v11);

  return [objc_opt_self() didTapPhotoCarouselPhoto:a2];
}

id sub_1001B9374(uint64_t a1, uint64_t a2)
{
  result = [*(*(a2 + 8) + OBJC_IVAR____TtC4Maps34PlaceSummaryPhotoCarouselViewModel_mapItem) _searchResultPhotoCarousel];
  if (!result)
  {
    goto LABEL_12;
  }

  v4 = result;
  sub_1000CE6B8(&qword_10190ABA0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v6, 1))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 - 1 == a1)
  {
    v7 = objc_opt_self();

    return [v7 didScrollPhotoCarouselToEnd];
  }

  return result;
}

uint64_t sub_1001B9470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ScrollGeometry();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static ScrollPhase.== infix(_:_:)();
  if (result)
  {
    result = static ScrollPhase.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      v24 = *(a4 + 56);
      v25 = *(a4 + 72);
      v26 = v25;
      v22 = *(a4 + 56);
      v23 = *(a4 + 72);
      sub_1000D2DFC(&v26, &v19, &qword_101910400);
      sub_1000CE6B8(&qword_101910408);
      State.wrappedValue.getter();
      v10 = *&v19;
      ScrollPhaseChangeContext.geometry.getter();
      ScrollGeometry.contentOffset.getter();
      v12 = v11;
      v13 = *(v6 + 8);
      v13(v8, v5);
      v14 = objc_opt_self();
      v15 = &selRef_didScrollPhotoCarouselToRight;
      if (v10 >= v12)
      {
        v15 = &selRef_didScrollPhotoCarouselToLeft;
      }

      [v14 *v15];
      ScrollPhaseChangeContext.geometry.getter();
      ScrollGeometry.contentOffset.getter();
      v17 = v16;
      v13(v8, v5);
      v22 = v24;
      v23 = v25;
      State.wrappedValue.getter();
      v19 = v24;
      v20 = v25;
      v18[0] = v17;
      v18[1] = v21;
      State.wrappedValue.setter();
      return sub_100024F64(&v24, &qword_101910408);
    }
  }

  return result;
}

uint64_t sub_1001B96F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessibilityTraits();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v76 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_1019104D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v75 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  __chkstk_darwin(v12);
  v79 = &v61 - v13;
  v14 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v94 != 1)
  {
    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  v68 = v11;
  v69 = v7;
  v70 = v6;
  v71 = a1;
  v15 = *(v1 + 80);
  *&v94 = *(v1 + 72);
  *(&v94 + 1) = v15;
  v16 = sub_1000E5580();

  v67 = v16;
  v17 = Text.init<A>(_:)();
  LODWORD(v65) = v19;
  v20 = *v1;
  if (*v1)
  {
    v21 = v17;
    v22 = v18;
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v20;
    static Published.subscript.getter();

    if (v94)
    {
      static Color.white.getter();
    }

    else
    {
      static Color.blue.getter();
    }

    v25 = v65;
    v26 = Text.foregroundColor(_:)();
    v72 = v27;
    v73 = v26;
    v66 = v28;
    v74 = v29;

    sub_1000F0A40(v21, v22, v25 & 1);

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(*(v1 + 56));
    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v32);
    LocalizedStringKey.init(stringInterpolation:)();
    v33 = Text.init(_:tableName:bundle:comment:)();
    v62 = v34;
    v63 = v33;
    v35 = v34;
    v37 = v36;
    v64 = v36;
    v39 = v38;
    v65 = v38;
    v40 = swift_allocObject();
    v41 = *(v2 + 80);
    *(v40 + 80) = *(v2 + 64);
    *(v40 + 96) = v41;
    *(v40 + 112) = *(v2 + 96);
    v42 = *(v2 + 16);
    *(v40 + 16) = *v2;
    *(v40 + 32) = v42;
    v43 = *(v2 + 48);
    *(v40 + 48) = *(v2 + 32);
    *(v40 + 64) = v43;
    sub_1001C4BF4(v2, &v94);

    v44 = static VerticalAlignment.center.getter();
    v84 = 0;
    sub_1001B9F48(v2, v33, v35, v37 & 1, v39, &v94);
    v89 = v98;
    v90 = v99;
    v91[0] = v100[0];
    *(v91 + 9) = *(v100 + 9);
    v85 = v94;
    v86 = v95;
    v87 = v96;
    v88 = v97;
    v92[0] = v94;
    v92[1] = v95;
    v92[2] = v96;
    v92[3] = v97;
    v92[4] = v98;
    v92[5] = v99;
    v93[0] = v100[0];
    *(v93 + 9) = *(v100 + 9);
    sub_1000D2DFC(&v85, &v80, &qword_10190FFE0);
    sub_100024F64(v92, &qword_10190FFE0);

    *(&v83[4] + 7) = v89;
    *(&v83[5] + 7) = v90;
    *(&v83[6] + 7) = v91[0];
    v83[7] = *(v91 + 9);
    *(v83 + 7) = v85;
    *(&v83[1] + 7) = v86;
    *(&v83[2] + 7) = v87;
    *(&v83[3] + 7) = v88;
    *(&v82[4] + 1) = v83[4];
    *(&v82[5] + 1) = v83[5];
    *(&v82[6] + 1) = v83[6];
    *(&v82[7] + 1) = *(v91 + 9);
    *(v82 + 1) = v83[0];
    *(&v82[1] + 1) = v83[1];
    *(&v82[2] + 1) = v83[2];
    *&v80 = sub_1001CD034;
    *(&v80 + 1) = v40;
    *&v81 = v44;
    *(&v81 + 1) = 0x4010000000000000;
    LOBYTE(v82[0]) = v84;
    *(&v82[3] + 1) = v83[3];
    *(&v82[8] + 8) = xmmword_1011EC740;
    BYTE8(v82[9]) = 0;
    sub_1000CE6B8(&qword_1019104E0);
    sub_1001CA314();
    v45 = v75;
    View.accessibilityAutomationType(_:)();
    v100[2] = v82[6];
    v100[3] = v82[7];
    v101[0] = v82[8];
    *(v101 + 9) = *(&v82[8] + 9);
    v98 = v82[2];
    v99 = v82[3];
    v100[0] = v82[4];
    v100[1] = v82[5];
    v94 = v80;
    v95 = v81;
    v96 = v82[0];
    v97 = v82[1];
    sub_100024F64(&v94, &qword_1019104E0);
    v46 = v76;
    static AccessibilityTraits.isButton.getter();
    v47 = v68;
    v48 = v70;
    ModifiedContent<>.accessibilityRemoveTraits(_:)();
    (*(v77 + 8))(v46, v78);
    sub_100024F64(v45, &qword_1019104D8);
    v49 = *(v2 + 96);
    *&v80 = *(v2 + 88);
    *(&v80 + 1) = v49;

    v50 = Text.init<A>(_:)();
    v52 = v51;
    v54 = v53;
    v55 = swift_allocObject();
    v56 = *(v2 + 80);
    *(v55 + 80) = *(v2 + 64);
    *(v55 + 96) = v56;
    *(v55 + 112) = *(v2 + 96);
    v57 = *(v2 + 16);
    *(v55 + 16) = *v2;
    *(v55 + 32) = v57;
    v58 = *(v2 + 48);
    *(v55 + 48) = *(v2 + 32);
    *(v55 + 64) = v58;
    sub_1001C4BF4(v2, &v80);
    v59 = v79;
    ModifiedContent<>.accessibilityAction(named:_:)();

    sub_1000F0A40(v50, v52, v54 & 1);

    sub_1000F0A40(v73, v72, v66 & 1);

    sub_1000F0A40(v63, v62, v64 & 1);

    sub_100024F64(v47, &qword_1019104D8);
    v60 = v71;
    sub_1000F11C4(v59, v71, &qword_1019104D8);
    return (*(v69 + 56))(v60, 0, 1, v48);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B9F48@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = Image.init(systemName:)();
  v11 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v13 = *a1;
  if (*a1)
  {
    v14 = KeyPath;
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v13;
    static Published.subscript.getter();

    if (v39[0])
    {
      v16 = static Color.white.getter();
    }

    else
    {
      v16 = static Color.secondary.getter();
    }

    v17 = v16;
    v18 = swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1001AD984(v39[0], a2, a3, a4 & 1, a5, &v31);
    v19 = v34;
    v20 = v32;
    v21 = v33;
    v37[2] = v33;
    v37[3] = v34;
    v22 = v34;
    v37[4] = v35;
    *(a6 + 104) = v35;
    *(a6 + 88) = v19;
    *(a6 + 72) = v21;
    v23 = v33;
    v24 = v31;
    v25 = v31;
    v37[0] = v31;
    v37[1] = v32;
    *(a6 + 56) = v32;
    v26 = v36;
    v38 = v36;
    *a6 = v10;
    *(a6 + 8) = v14;
    *(a6 + 16) = v11;
    *(a6 + 24) = v18;
    *(a6 + 32) = v17;
    *(a6 + 120) = v26;
    *(a6 + 40) = v24;
    v39[0] = v25;
    v39[1] = v20;
    v40 = v36;
    v39[3] = v22;
    v39[4] = v35;
    v39[2] = v23;

    sub_1000D2DFC(v37, v30, &qword_1019100D0);
    sub_100024F64(v39, &qword_1019100D0);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BA224(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v10 = *(a1 + 16);
  v6 = v10;
  if (v11 == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v10, &qword_101910330);
    (*(v3 + 8))(v5, v2);
    v6 = v9;
  }

  v9 = *(*(a1 + 48) + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit11UserLibrary_mapItem);
  v6(&v9);
}

uint64_t sub_1001BA418@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for AccessibilityTraits();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000CE6B8(&qword_1019104F0);
  __chkstk_darwin(v29);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  __chkstk_darwin(v11);
  v28 = &v28 - v12;
  v13 = swift_allocObject();
  v14 = *(v1 + 48);
  *(v13 + 48) = *(v1 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v1 + 64);
  v15 = *(v1 + 16);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v15;
  *&v40 = sub_1001CD038;
  *(&v40 + 1) = v13;
  sub_1001C4990(v1, v43);

  sub_1001BA830(v1, v41);

  v37 = v41[3];
  v38 = v41[4];
  v39 = v42;
  v33 = v40;
  v34 = v41[0];
  v35 = v41[1];
  v36 = v41[2];
  sub_1000CE6B8(&qword_1019104F8);
  sub_1000414C8(&qword_101910500, &qword_1019104F8);
  View.accessibility(identifier:)();
  v43[4] = v37;
  v43[5] = v38;
  v44 = v39;
  v43[0] = v33;
  v43[1] = v34;
  v43[2] = v35;
  v43[3] = v36;
  sub_100024F64(v43, &qword_1019104F8);
  ModifiedContent<>.accessibilityAutomationType(_:)();
  sub_100024F64(v7, &qword_1019104F0);
  v16 = v5;
  static AccessibilityTraits.isButton.getter();
  v17 = v28;
  ModifiedContent<>.accessibilityRemoveTraits(_:)();
  (*(v30 + 8))(v16, v31);
  sub_100024F64(v10, &qword_1019104F0);
  v18 = *(v1 + 64);
  *&v33 = *(v2 + 56);
  *(&v33 + 1) = v18;
  sub_1000E5580();

  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  v24 = swift_allocObject();
  v25 = *(v2 + 48);
  *(v24 + 48) = *(v2 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v2 + 64);
  v26 = *(v2 + 16);
  *(v24 + 16) = *v2;
  *(v24 + 32) = v26;
  sub_1001C4990(v2, &v33);
  ModifiedContent<>.accessibilityAction(named:_:)();

  sub_1000F0A40(v19, v21, v23 & 1);

  return sub_100024F64(v17, &qword_1019104F0);
}

uint64_t sub_1001BA830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  String.append(_:)(*(*(a1 + 48) + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_userNote));

  v4._countAndFlagsBits = 10322146;
  v4._object = 0xA300000000000000;
  String.append(_:)(v4);

  sub_1000E5580();
  v5 = Text.init<A>(_:)();
  v9 = *a1;
  if (*a1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v9;
    static Published.subscript.getter();

    sub_1001AD984(226, v10, v11, v12 & 1, v13, v18);
    sub_1000F0A40(v10, v11, v12 & 1);

    v16 = v18[3];
    *(a2 + 32) = v18[2];
    *(a2 + 48) = v16;
    *(a2 + 64) = v18[4];
    *(a2 + 80) = v19;
    v17 = v18[1];
    *a2 = v18[0];
    *(a2 + 16) = v17;
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BAA0C(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  v10 = *(a1 + 16);
  v6 = v10;
  if (v11 == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v10, &qword_101910330);
    (*(v3 + 8))(v5, v2);
    v6 = v9;
  }

  v9 = *(*(a1 + 48) + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_mapItem);
  v6(&v9);
}

uint64_t sub_1001BABF8@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = type metadata accessor for AccessibilityTraits();
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v4 = _s5LabelVMa(0);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_101910508);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v31 == 1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v32._object = 0x800000010121F4E0;
    v14._countAndFlagsBits = 0x64657469736956;
    v15._object = 0x800000010121F4C0;
    v32._countAndFlagsBits = 0xD00000000000002CLL;
    v15._countAndFlagsBits = 0xD000000000000018;
    v14._object = 0xE700000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, qword_1019600D8, v14, v32);
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    type metadata accessor for PlaceSummaryViewModelTemplate(0);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    v16 = EnvironmentObject.init()();
    v18 = v17;
    *&v6[v4[12]] = swift_getKeyPath();
    sub_1000CE6B8(&qword_10190A1A0);
    swift_storeEnumTagMultiPayload();
    v19 = &v6[v4[5]];
    *v19 = 0xD00000000000001BLL;
    *(v19 + 1) = 0x80000001012222F0;
    *&v6[v4[6]] = 0;
    *&v6[v4[7]] = 0;
    *&v6[v4[8]] = 0;
    *&v6[v4[9]] = 0;
    v20 = &v6[v4[10]];
    *v20 = 1;
    v20[8] = 0;
    v21 = &v6[v4[11]];
    *v21 = v16;
    v21[1] = v18;
    sub_1001C3C48(&qword_10190F150, _s5LabelVMa);
    View.accessibility(identifier:)();
    sub_1001C4CC4(v6, _s5LabelVMa);
    v22 = v27;
    static AccessibilityTraits.isButton.getter();
    ModifiedContent<>.accessibilityRemoveTraits(_:)();
    (*(v28 + 8))(v22, v29);
    sub_100024F64(v10, &qword_101910508);
    v23 = v30;
    sub_1000F11C4(v13, v30, &qword_101910508);
    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v30;
  }

  return (*(v8 + 56))(v23, v24, 1, v7);
}

uint64_t sub_1001BB110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v266 = a2;
  v251 = sub_1000CE6B8(&qword_10190F390);
  __chkstk_darwin(v251);
  v254 = (&v231 - v3);
  v272 = sub_1000CE6B8(&qword_10190F398);
  __chkstk_darwin(v272);
  v256 = &v231 - v4;
  v250 = sub_1000CE6B8(&qword_10190F3A0);
  __chkstk_darwin(v250);
  v255 = &v231 - v5;
  v236 = sub_1000CE6B8(&qword_10190F3A8);
  __chkstk_darwin(v236);
  v237 = (&v231 - v6);
  v7 = sub_1000CE6B8(&qword_10190F3B0);
  __chkstk_darwin(v7);
  v239 = &v231 - v8;
  v234 = sub_1000CE6B8(&qword_10190F3B8);
  __chkstk_darwin(v234);
  v235 = &v231 - v9;
  v10 = sub_1000CE6B8(&qword_10190F3C0);
  __chkstk_darwin(v10);
  v238 = &v231 - v11;
  v245 = sub_1000CE6B8(&qword_10190F3C8);
  __chkstk_darwin(v245);
  v246 = &v231 - v12;
  v242 = sub_1000CE6B8(&qword_10190F3D0);
  __chkstk_darwin(v242);
  v244 = &v231 - v13;
  v243 = sub_1000CE6B8(&qword_10190F3D8);
  __chkstk_darwin(v243);
  v233 = &v231 - v14;
  v15 = sub_1000CE6B8(&qword_10190F3E0);
  __chkstk_darwin(v15);
  v248 = a1;
  v249 = &v231 - v16;
  v17 = *(a1 + 16);
  v240 = *(a1 + 24);
  v18 = _s9ImageViewVMa();
  type metadata accessor for AccessibilityAttachmentModifier();
  v19 = type metadata accessor for ModifiedContent();
  v20 = type metadata accessor for _ConditionalContent();
  v253 = *(v20 - 8);
  __chkstk_darwin(v20);
  v252 = &v231 - v21;
  v271 = v22;
  v259 = v10;
  v23 = type metadata accessor for _ConditionalContent();
  v258 = *(v23 - 8);
  __chkstk_darwin(v23);
  v257 = &v231 - v24;
  v269 = v25;
  v260 = v7;
  v26 = type metadata accessor for _ConditionalContent();
  v262 = *(v26 - 8);
  __chkstk_darwin(v26);
  v261 = &v231 - v27;
  v247 = *(v17 - 8);
  __chkstk_darwin(v28);
  v30 = &v231 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = v18;
  v31 = *(v18 - 8);
  __chkstk_darwin(v32);
  v34 = &v231 - v33;
  v270 = v19;
  v35 = *(v19 - 8);
  __chkstk_darwin(v36);
  v38 = &v231 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v231 - v40;
  __chkstk_darwin(v42);
  v44 = &v231 - v43;
  v267 = v45;
  v265 = type metadata accessor for _ConditionalContent();
  __chkstk_darwin(v265);
  v268 = &v231 - v46;
  v47 = *v263;
  v48 = *v263 >> 61;
  v264 = v49;
  if (v48 > 1)
  {
    if (v48 == 2)
    {
      v88 = qword_101906768;
      v89 = v47;

      v65 = v268;
      if (v88 != -1)
      {
        swift_once();
      }

      v372._countAndFlagsBits = 0xD00000000000001FLL;
      v372._object = 0x800000010121F530;
      v90._countAndFlagsBits = 0x706F745320646441;
      v90._object = 0xEE005D52504D5B20;
      v91._countAndFlagsBits = 6579265;
      v91._object = 0xE300000000000000;
      v92 = NSLocalizedString(_:tableName:bundle:value:comment:)(v90, 0, qword_1019600D8, v91, v372);
      KeyPath = swift_getKeyPath();
      LOBYTE(v338) = 0;
      v349 = KeyPath;
      LOBYTE(v350) = 0;
      v351[0] = 0xD000000000000010;
      v351[1] = 0x8000000101221D50;
      v352 = v92;
      v353 = v89;
      sub_1001C4F6C();

      v94 = v89;
      v95 = v255;
      View.accessibility(identifier:)();

      v241 = v94;
      sub_10013BD88(v94);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v96 = v349;
      v97 = swift_getKeyPath();
      v98 = swift_allocObject();
      *(v98 + 16) = (v96 & 1) == 0;
      v99 = (v95 + *(v250 + 36));
      *v99 = v97;
      v99[1] = sub_100109DD8;
      v99[2] = v98;
      sub_1000D2DFC(v95, v254, &qword_10190F3A0);
      swift_storeEnumTagMultiPayload();
      sub_1001C4DF8();
      sub_1001C4FC0();
      v100 = v256;
      _ConditionalContent<>.init(storage:)();
      WitnessTable = swift_getWitnessTable();
      v102 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
      v347 = WitnessTable;
      v348 = v102;
      v103 = swift_getWitnessTable();
      v104 = sub_1001C5014();
      v345 = v103;
      v346 = v104;
      v105 = swift_getWitnessTable();
      v106 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
      v343 = v105;
      v344 = v106;
      v107 = swift_getWitnessTable();
      v108 = sub_1001C51B0();
      v341 = v107;
      v342 = v108;
      v109 = v267;
      swift_getWitnessTable();
      sub_1001C539C();
      sub_1001A2480(v100, v109, v272);
      sub_10013BD88(v241);
      sub_100024F64(v100, &qword_10190F398);
      v110 = v255;
      v111 = &qword_10190F3A0;
    }

    else
    {
      v50 = v269;
      if (v48 == 3)
      {
        v51 = v47;
        sub_10013BAE8(v47);
        type metadata accessor for HikeRouteSnapshotViewModel(0);
        sub_1001C3C48(&qword_10190F3E8, type metadata accessor for HikeRouteSnapshotViewModel);

        v52 = ObservedObject.init(wrappedValue:)();
        v53 = v254;
        *v254 = v52;
        v53[1] = v54;
        v263 = v54;
        swift_storeEnumTagMultiPayload();
        sub_1001C4DF8();
        sub_1001C4FC0();

        v55 = v256;
        _ConditionalContent<>.init(storage:)();
        v56 = swift_getWitnessTable();
        v57 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
        v370 = v56;
        v371 = v57;
        v58 = swift_getWitnessTable();
        v59 = sub_1001C5014();
        v368 = v58;
        v369 = v59;
        v60 = swift_getWitnessTable();
        v61 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
        v366 = v60;
        v367 = v61;
        v62 = swift_getWitnessTable();
        v63 = sub_1001C51B0();
        v364 = v62;
        v365 = v63;
        v64 = v267;
        swift_getWitnessTable();
        sub_1001C539C();
        v65 = v268;
        sub_1001A2480(v55, v64, v272);

        sub_10013BD88(v51);
        sub_100024F64(v55, &qword_10190F398);
        v66 = v265;
        goto LABEL_31;
      }

      v112 = v267;
      v65 = v268;
      v113 = __ROR8__(v47 ^ 0x8000000000000000, 3);
      if (v113 > 2)
      {
        if (v113 != 3)
        {
          v135 = v269;
          if (v113 == 4)
          {
            v338 = swift_getKeyPath();
            v263 = v338;
            v339 = 0;
            v340 = 0;
            sub_1001C52F4();
            sub_1001C5348();

            _ConditionalContent<>.init(storage:)();
            v136 = v350;
            v137 = BYTE1(v350);
            v138 = v237;
            *v237 = v349;
            *(v138 + 16) = v136;
            *(v138 + 17) = v137;
            swift_storeEnumTagMultiPayload();
            sub_1000CE6B8(&qword_10190F458);
            v139 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
            sub_1001C5268();
            v140 = v239;
            _ConditionalContent<>.init(storage:)();
            v141 = swift_getWitnessTable();
            v142 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
            v328 = v141;
            v329 = v142;
            v143 = swift_getWitnessTable();
            v144 = sub_1001C5014();
            v326 = v143;
            v327 = v144;
            v324 = swift_getWitnessTable();
            v325 = v139;
            v145 = swift_getWitnessTable();
            v146 = sub_1001C51B0();
            v147 = v261;
            sub_1001A2480(v140, v50, v260);
            sub_100024F64(v140, &qword_10190F3B0);
            v322 = v145;
            v323 = v146;
            swift_getWitnessTable();
            sub_1001C539C();
            sub_1001A2388(v147, v112);

            (*(v262 + 8))(v147, v112);
          }

          else
          {
            v339 = 0;
            v338 = 0;
            v340 = 256;
            sub_1001C52F4();
            sub_1001C5348();
            _ConditionalContent<>.init(storage:)();
            v219 = v350;
            v220 = BYTE1(v350);
            v221 = v237;
            *v237 = v349;
            *(v221 + 16) = v219;
            *(v221 + 17) = v220;
            swift_storeEnumTagMultiPayload();
            sub_1000CE6B8(&qword_10190F458);
            v222 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
            sub_1001C5268();
            v223 = v239;
            _ConditionalContent<>.init(storage:)();
            v224 = swift_getWitnessTable();
            v225 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
            v336 = v224;
            v337 = v225;
            v226 = swift_getWitnessTable();
            v227 = sub_1001C5014();
            v334 = v226;
            v335 = v227;
            v332 = swift_getWitnessTable();
            v333 = v222;
            v228 = swift_getWitnessTable();
            v229 = sub_1001C51B0();
            v230 = v261;
            sub_1001A2480(v223, v135, v260);
            sub_100024F64(v223, &qword_10190F3B0);
            v330 = v228;
            v331 = v229;
            swift_getWitnessTable();
            sub_1001C539C();
            sub_1001A2388(v230, v112);
            (*(v262 + 8))(v230, v112);
          }

          goto LABEL_30;
        }

        v182 = v47;
        v183 = swift_getKeyPath();
        LOBYTE(v338) = 0;
        v349 = v183;
        LOBYTE(v350) = 0;
        v351[0] = 0x697261666173;
        v351[1] = 0xE600000000000000;
        v352 = 0uLL;
        v353 = v182;
        sub_1001C4F6C();
        v184 = v246;
        View.accessibility(identifier:)();

        sub_1000D2DFC(v184, v235, &qword_10190F3C8);
        swift_storeEnumTagMultiPayload();
        sub_1001C4EB0();
        v185 = v238;
        _ConditionalContent<>.init(storage:)();
        sub_1000D2DFC(v185, v237, &qword_10190F3C0);
        swift_storeEnumTagMultiPayload();
        sub_1000CE6B8(&qword_10190F458);
        v186 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
        sub_1001C5268();
        v187 = v239;
        v188 = v269;
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v185, &qword_10190F3C0);
        v189 = swift_getWitnessTable();
        v190 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
        v320 = v189;
        v321 = v190;
        v191 = swift_getWitnessTable();
        v192 = sub_1001C5014();
        v318 = v191;
        v319 = v192;
        v316 = swift_getWitnessTable();
        v317 = v186;
        v193 = swift_getWitnessTable();
        v194 = sub_1001C51B0();
        v128 = v261;
        sub_1001A2480(v187, v188, v260);
        sub_100024F64(v187, &qword_10190F3B0);
        v314 = v193;
        v315 = v194;
        v181 = v267;
      }

      else
      {
        v114 = v47;
        if (v113)
        {
          if (v113 == 1)
          {
            v115 = swift_getKeyPath();
            LOBYTE(v338) = 0;
            v349 = v115;
            LOBYTE(v350) = 0;
            v351[0] = 0x616C75636F6E6962;
            v351[1] = 0xEF6C6C69662E7372;
            v352 = 0uLL;
            v353 = v114;
            sub_1001C4F6C();
            v116 = v246;
            View.accessibility(identifier:)();

            sub_1000D2DFC(v116, v235, &qword_10190F3C8);
            swift_storeEnumTagMultiPayload();
            sub_1001C4EB0();
            v117 = v238;
            _ConditionalContent<>.init(storage:)();
            v118 = swift_getWitnessTable();
            v119 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
            v304 = v118;
            v305 = v119;
            v120 = swift_getWitnessTable();
            v121 = sub_1001C5014();
            v302 = v120;
            v303 = v121;
            v122 = swift_getWitnessTable();
            v123 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
            v124 = v257;
            sub_1001A2480(v117, v271, v259);
            sub_100024F64(v117, &qword_10190F3C0);
            v300 = v122;
            v301 = v123;
            v65 = v268;
            v125 = v269;
            v126 = swift_getWitnessTable();
            v127 = sub_1001C51B0();
            v128 = v261;
            sub_1001A2388(v124, v125);
            (*(v258 + 8))(v124, v125);
            v298 = v126;
            v299 = v127;
          }

          else
          {
            v195 = swift_getKeyPath();
            LOBYTE(v338) = 0;
            v349 = v195;
            LOBYTE(v350) = 0;
            strcpy(v351, "phone.fill");
            BYTE3(v351[1]) = 0;
            HIDWORD(v351[1]) = -369098752;
            v352 = 0uLL;
            v353 = v114;
            sub_1001C4F6C();
            v196 = v246;
            View.accessibility(identifier:)();

            sub_1000D2DFC(v196, v235, &qword_10190F3C8);
            swift_storeEnumTagMultiPayload();
            sub_1001C4EB0();
            v197 = v238;
            _ConditionalContent<>.init(storage:)();
            sub_1000D2DFC(v197, v237, &qword_10190F3C0);
            swift_storeEnumTagMultiPayload();
            sub_1000CE6B8(&qword_10190F458);
            v198 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
            sub_1001C5268();
            v199 = v239;
            _ConditionalContent<>.init(storage:)();
            sub_100024F64(v197, &qword_10190F3C0);
            v200 = swift_getWitnessTable();
            v201 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
            v312 = v200;
            v313 = v201;
            v202 = swift_getWitnessTable();
            v203 = sub_1001C5014();
            v310 = v202;
            v311 = v203;
            v308 = swift_getWitnessTable();
            v309 = v198;
            v204 = v269;
            v205 = swift_getWitnessTable();
            v206 = sub_1001C51B0();
            v128 = v261;
            sub_1001A2480(v199, v204, v260);
            sub_100024F64(v199, &qword_10190F3B0);
            v306 = v205;
            v307 = v206;
          }

          v181 = v267;
        }

        else
        {
          v168 = swift_getKeyPath();
          LOBYTE(v338) = 0;
          v349 = v168;
          LOBYTE(v350) = 0;
          strcpy(v351, "buildings.3d");
          BYTE5(v351[1]) = 0;
          HIWORD(v351[1]) = -5120;
          v352 = 0uLL;
          v353 = v114;
          sub_1001C4F6C();
          v169 = v246;
          View.accessibility(identifier:)();

          sub_1000D2DFC(v169, v235, &qword_10190F3C8);
          swift_storeEnumTagMultiPayload();
          sub_1001C4EB0();
          v170 = v238;
          _ConditionalContent<>.init(storage:)();
          v171 = swift_getWitnessTable();
          v172 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
          v296 = v171;
          v297 = v172;
          v173 = swift_getWitnessTable();
          v174 = sub_1001C5014();
          v294 = v173;
          v295 = v174;
          v175 = swift_getWitnessTable();
          v176 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
          v177 = v257;
          sub_1001A2480(v170, v271, v259);
          v178 = v269;
          sub_100024F64(v170, &qword_10190F3C0);
          v292 = v175;
          v293 = v176;
          v65 = v268;
          v179 = swift_getWitnessTable();
          v180 = sub_1001C51B0();
          v128 = v261;
          sub_1001A2388(v177, v178);
          (*(v258 + 8))(v177, v178);
          v290 = v179;
          v291 = v180;
          v181 = v267;
        }
      }

      swift_getWitnessTable();
      sub_1001C539C();
      sub_1001A2388(v128, v181);
      (*(v262 + 8))(v128, v181);
      v110 = v246;
      v111 = &qword_10190F3C8;
    }

    sub_100024F64(v110, v111);
LABEL_30:
    v66 = v265;
    goto LABEL_31;
  }

  v231 = v44;
  v232 = v38;
  v255 = v35;
  v256 = v15;
  v241 = v47;
  if (!v48)
  {
    if (*(v47 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius + 8))
    {
      v67 = 0.0;
    }

    else
    {
      v67 = *(v47 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius);
    }

    (*(v247 + 16))(v30, v263 + *(v248 + 36), v17);
    swift_retain_n();
    sub_1001A3DF8(v30, v17, v34, v67);
    v68 = v273;
    v69 = swift_getWitnessTable();
    View.accessibility(identifier:)();
    (*(v31 + 8))(v34, v68);
    v70 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    v280 = v69;
    v281 = v70;
    v71 = v270;
    v72 = swift_getWitnessTable();
    v73 = v231;
    sub_10010ADFC(v41, v71, v72);
    v263 = *(v255 + 1);
    (v263)(v41, v71);
    v74 = v232;
    sub_10010ADFC(v73, v71, v72);
    v75 = sub_1001C5014();
    v76 = v252;
    sub_1001A2388(v74, v71);
    v278 = v72;
    v279 = v75;
    v77 = v271;
    v78 = swift_getWitnessTable();
    v79 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
    v80 = v257;
    sub_1001A2388(v76, v77);
    (*(v253 + 8))(v76, v77);
    v276 = v78;
    v277 = v79;
    v81 = v269;
    v82 = swift_getWitnessTable();
    v83 = sub_1001C51B0();
    v84 = v261;
    sub_1001A2388(v80, v81);
    (*(v258 + 8))(v80, v81);
    v274 = v82;
    v275 = v83;
    v85 = v267;
    swift_getWitnessTable();
    sub_1001C539C();
    v86 = v268;
    sub_1001A2388(v84, v85);
    sub_10013BD88(v241);
    (*(v262 + 8))(v84, v85);
    v87 = v263;
    (v263)(v232, v71);
    v65 = v86;
    (v87)(v231, v71);
    goto LABEL_30;
  }

  v129 = v47;
  if (*((v47 & 0x1FFFFFFFFFFFFFFFLL) + OBJC_IVAR____TtC4Maps18DirectionsETAModel_showETA))
  {
    sub_10013BAE8(v47);
    sub_10013BAE8(v129);
    type metadata accessor for DirectionsETAModel(0);
    sub_1001C3C48(&qword_10190F478, type metadata accessor for DirectionsETAModel);

    *&v349 = ObservedObject.init(wrappedValue:)();
    *(&v349 + 1) = v130;
    v350 = v129;
    v351[0] = 0xD000000000000028;
    v351[1] = 0x8000000101221E60;
    sub_1001C515C();
    v131 = v233;
    View.accessibility(identifier:)();

    sub_10013BD88(v129);
    v132 = &qword_10190F3D8;
    sub_1000D2DFC(v131, v244, &qword_10190F3D8);
    swift_storeEnumTagMultiPayload();
    sub_1001C50A0();
    sub_1001C4EB0();
    v133 = v249;
    _ConditionalContent<>.init(storage:)();
    v134 = v131;
  }

  else
  {
    v148 = swift_getKeyPath();
    LOBYTE(v338) = 0;
    v349 = v148;
    LOBYTE(v350) = 0;
    v351[0] = 0xD000000000000028;
    v351[1] = 0x8000000101221E60;
    v352 = 0uLL;
    v353 = v129;
    sub_10013BAE8(v129);
    sub_1001C4F6C();

    v149 = v246;
    View.accessibility(identifier:)();

    sub_10013BD88(v129);
    v132 = &qword_10190F3C8;
    sub_1000D2DFC(v149, v244, &qword_10190F3C8);
    swift_storeEnumTagMultiPayload();
    sub_1001C50A0();
    sub_1001C4EB0();
    v133 = v249;
    _ConditionalContent<>.init(storage:)();
    v134 = v149;
  }

  sub_100024F64(v134, v132);
  v150 = v270;
  v151 = v271;
  v65 = v268;
  v152 = v269;
  v153 = v267;
  v154 = v252;
  v155 = v256;
  v156 = swift_getWitnessTable();
  v157 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
  v288 = v156;
  v289 = v157;
  v158 = swift_getWitnessTable();
  v159 = sub_1001C5014();
  v160 = v150;
  v161 = v159;
  sub_1001A2480(v133, v160, v155);
  v286 = v158;
  v287 = v161;
  v162 = swift_getWitnessTable();
  v163 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
  v164 = v257;
  sub_1001A2388(v154, v151);
  (*(v253 + 8))(v154, v151);
  v284 = v162;
  v285 = v163;
  v165 = swift_getWitnessTable();
  v166 = sub_1001C51B0();
  v167 = v261;
  sub_1001A2388(v164, v152);
  (*(v258 + 8))(v164, v152);
  v282 = v165;
  v283 = v166;
  swift_getWitnessTable();
  sub_1001C539C();
  sub_1001A2388(v167, v153);
  sub_10013BD88(v241);
  (*(v262 + 8))(v167, v153);
  sub_100024F64(v249, &qword_10190F3E0);
  v66 = v265;
LABEL_31:
  v207 = swift_getWitnessTable();
  v208 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
  v362 = v207;
  v363 = v208;
  v209 = swift_getWitnessTable();
  v210 = sub_1001C5014();
  v360 = v209;
  v361 = v210;
  v211 = swift_getWitnessTable();
  v212 = sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
  v358 = v211;
  v359 = v212;
  v213 = swift_getWitnessTable();
  v214 = sub_1001C51B0();
  v356 = v213;
  v357 = v214;
  v215 = swift_getWitnessTable();
  v216 = sub_1001C539C();
  v354 = v215;
  v355 = v216;
  v217 = swift_getWitnessTable();
  sub_10010ADFC(v65, v66, v217);
  return (*(v264 + 8))(v65, v66);
}

uint64_t sub_1001BD838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v5 = *(a1 + 16);
  type metadata accessor for AccessibilityAttachmentModifier();
  v6 = type metadata accessor for ModifiedContent();
  v50 = *(v6 - 8);
  __chkstk_darwin(v6);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = &v47 - v9;
  sub_1000D6664(&qword_1019105E0);
  sub_1000D6664(&qword_1019105E8);
  v47 = a1;
  v10 = *(a1 + 24);
  v54 = v5;
  v59 = v10;
  _s12ContactBadgeVMa();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for ZStack();
  v52 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v58 = v14;
  v15 = type metadata accessor for ModifiedContent();
  v53 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  v60 = v6;
  v21 = type metadata accessor for _ConditionalContent();
  v55 = *(v21 - 8);
  __chkstk_darwin(v21);
  v57 = &v47 - v22;
  v23 = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v24 = v75;
  if (v75)
  {
    v25 = static Alignment.bottomTrailing.getter();
    __chkstk_darwin(v25);
    v26 = v54;
    v54 = v21;
    v27 = v59;
    *(&v47 - 4) = v26;
    *(&v47 - 3) = v27;
    *(&v47 - 2) = v24;
    *(&v47 - 1) = v23;
    ZStack.init(alignment:content:)();
    v28 = v58;
    v29 = swift_getWitnessTable();
    View.accessibility(identifier:)();
    (*(v52 + 8))(v13, v28);
    v30 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    v63 = v29;
    v64 = v30;
    v31 = swift_getWitnessTable();
    sub_10010ADFC(v17, v15, v31);
    v32 = *(v53 + 8);
    v32(v17, v15);
    sub_10010ADFC(v20, v15, v31);
    v61 = v27;
    v62 = v30;
    v21 = v54;
    swift_getWitnessTable();
    sub_1001A2388(v17, v15);

    v32(v17, v15);
    v32(v20, v15);
  }

  else
  {
    v33 = v49;
    v34 = v59;
    View.accessibility(identifier:)();
    v35 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    v73 = v34;
    v74 = v35;
    v36 = v60;
    v37 = swift_getWitnessTable();
    v38 = v48;
    sub_10010ADFC(v33, v36, v37);
    v39 = *(v50 + 8);
    v39(v33, v36);
    sub_10010ADFC(v38, v36, v37);
    v71 = swift_getWitnessTable();
    v72 = v35;
    swift_getWitnessTable();
    sub_1001A2480(v33, v15, v36);
    v39(v33, v36);
    v39(v38, v36);
  }

  v40 = swift_getWitnessTable();
  v41 = sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
  v69 = v40;
  v70 = v41;
  v42 = swift_getWitnessTable();
  v67 = v59;
  v68 = v41;
  v43 = swift_getWitnessTable();
  v65 = v42;
  v66 = v43;
  v44 = swift_getWitnessTable();
  v45 = v57;
  sub_10010ADFC(v57, v21, v44);
  return (*(v55 + 8))(v45, v21);
}

uint64_t sub_1001BE098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a2;
  v103 = a1;
  v100 = a4;
  v85 = *(a3 - 8);
  __chkstk_darwin(a1);
  v83 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s12ContactBadgeVMa();
  v88 = *(v6 - 8);
  __chkstk_darwin(v6);
  v84 = &v81 - v7;
  v106 = v8;
  v9 = type metadata accessor for ModifiedContent();
  v89 = *(v9 - 8);
  __chkstk_darwin(v9);
  v86 = &v81 - v10;
  v105 = v11;
  v12 = type metadata accessor for ModifiedContent();
  v92 = *(v12 - 8);
  __chkstk_darwin(v12);
  v91 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = &v81 - v15;
  v93 = sub_1000D6664(&qword_1019105E8);
  v104 = v12;
  v101 = type metadata accessor for _ConditionalContent();
  v16 = type metadata accessor for Optional();
  v98 = *(v16 - 8);
  v99 = v16;
  __chkstk_darwin(v16);
  v95 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v97 = &v81 - v19;
  v20 = type metadata accessor for Image.ResizingMode();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000CE6B8(&qword_101910140);
  __chkstk_darwin(v24 - 8);
  v26 = &v81 - v25;
  v102 = sub_1000CE6B8(&qword_1019105E0);
  __chkstk_darwin(v102);
  v96 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v81 - v29;
  v87 = a3;
  v82 = _s9ImageViewVMa();
  v31 = v94;

  sub_10021FE34(v26);

  v32 = type metadata accessor for Image.TemplateRenderingMode();
  (*(*(v32 - 8) + 56))(v26, 0, 1, v32);
  Image.renderingMode(_:)();
  sub_100024F64(v26, &qword_101910140);
  (*(v21 + 104))(v23, enum case for Image.ResizingMode.stretch(_:), v20);
  v103 = Image.resizable(capInsets:resizingMode:)();

  (*(v21 + 8))(v23, v20);
  v33 = [objc_opt_self() tertiaryLabelColor];
  v34 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v36 = v31;

  v37 = sub_10022003C();

  LOBYTE(v31) = static Edge.Set.all.getter();
  LOBYTE(v108) = 1;
  v38 = *(v36 + 16);
  v39 = v36;
  v40 = &v30[*(sub_1000CE6B8(&qword_1019105F0) + 36)];
  v41 = *(type metadata accessor for RoundedRectangle() + 20);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = type metadata accessor for RoundedCornerStyle();
  (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
  *v40 = v38;
  *(v40 + 1) = v38;
  *&v40[*(sub_1000CE6B8(&qword_10191E590) + 36)] = 256;
  *v30 = v103;
  *(v30 + 1) = 0;
  *(v30 + 8) = 257;
  *(v30 + 3) = KeyPath;
  *(v30 + 4) = v34;
  *(v30 + 5) = v37;
  v30[48] = v31;
  v44 = *(v102 + 36);
  v103 = v30;
  v30[v44] = 1;

  LOBYTE(v34) = sub_10021FAB4();

  if (v34)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v115[0]) = v119;
    v108 = v116[6];
    LOBYTE(v109) = v117;
    v110 = v118;
    v111 = v119;
    __asm { FMOV            V1.2D, #4.0 }

    v112 = v120;
    v113 = _Q1;
    v50 = sub_1001CA6E8();
    v107[4] = swift_getWitnessTable();
    v107[5] = &protocol witness table for _FrameLayout;
    v107[2] = swift_getWitnessTable();
    v107[3] = &protocol witness table for _OffsetEffect;
    WitnessTable = swift_getWitnessTable();
    v52 = v95;
    sub_1001A2388(&v108, v93);
    (*(*(v101 - 8) + 56))(v52, 0, 1, v101);
    v107[0] = v50;
    v53 = v107;
  }

  else
  {
    v55 = v104;
    v54 = v105;
    v56 = v106;

    v57 = sub_10021FC78();

    if (v57)
    {
      v58 = v85;
      v59 = v39 + *(v82 + 40);
      v60 = v83;
      v61 = v87;
      (*(v85 + 16))(v83, v59, v87);
      v62 = v84;
      *v84 = v57;
      (*(v58 + 32))(&v62[*(v56 + 36)], v60, v61);

      static Alignment.center.getter();
      v63 = swift_getWitnessTable();
      v64 = v86;
      View.frame(width:height:alignment:)();
      (*(v88 + 8))(v62, v56);
      v114[4] = v63;
      v114[5] = &protocol witness table for _FrameLayout;
      v65 = swift_getWitnessTable();
      v66 = v91;
      View.offset(x:y:)();
      (*(v89 + 8))(v64, v54);
      v114[2] = v65;
      v114[3] = &protocol witness table for _OffsetEffect;
      WitnessTable = swift_getWitnessTable();
      v67 = v90;
      sub_10010ADFC(v66, v55, WitnessTable);
      v68 = *(v92 + 8);
      v68(v66, v55);
      sub_10010ADFC(v67, v55, WitnessTable);
      v69 = sub_1001CA6E8();
      v70 = v95;
      sub_1001A2480(v66, v93, v55);

      v68(v66, v55);
      v52 = v70;
      v68(v67, v55);
      (*(*(v101 - 8) + 56))(v70, 0, 1, v101);
      v114[0] = v69;
      v53 = v114;
    }

    else
    {
      v52 = v95;
      (*(*(v101 - 8) + 56))(v95, 1, 1, v101);
      v71 = sub_1001CA6E8();
      v116[4] = swift_getWitnessTable();
      v116[5] = &protocol witness table for _FrameLayout;
      v116[2] = swift_getWitnessTable();
      v116[3] = &protocol witness table for _OffsetEffect;
      WitnessTable = swift_getWitnessTable();
      v116[0] = v71;
      v53 = v116;
    }
  }

  v53[1] = WitnessTable;
  v95 = &protocol conformance descriptor for <> _ConditionalContent<A, B>;
  swift_getWitnessTable();
  v73 = v97;
  v72 = v98;
  v74 = *(v98 + 16);
  v75 = v99;
  v74(v97, v52, v99);
  v76 = *(v72 + 8);
  v76(v52, v75);
  v77 = v96;
  sub_1000D2DFC(v103, v96, &qword_1019105E0);
  v108 = v77;
  v74(v52, v73, v75);
  v109 = v52;
  v115[0] = v102;
  v115[1] = v75;
  v114[13] = sub_1001CA854();
  v78 = sub_1001CA6E8();
  v114[11] = swift_getWitnessTable();
  v114[12] = &protocol witness table for _FrameLayout;
  v114[9] = swift_getWitnessTable();
  v114[10] = &protocol witness table for _OffsetEffect;
  v79 = swift_getWitnessTable();
  v114[7] = v78;
  v114[8] = v79;
  v114[6] = swift_getWitnessTable();
  v114[14] = swift_getWitnessTable();
  sub_1001A21B8(&v108, 2uLL, v115);
  v76(v73, v75);
  sub_100024F64(v103, &qword_1019105E0);
  v76(v52, v75);
  return sub_100024F64(v77, &qword_1019105E0);
}

uint64_t sub_1001BEDE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000CE6B8(&qword_1019109C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = objc_opt_self();
  v6 = [v5 _maps_systemGrayColor];
  *(&v34 + 1) = Color.init(uiColor:)();
  *&v34 = swift_getKeyPath();
  v7 = [v5 systemBackgroundColor];
  v8 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v9 = v35;
  v11 = v36;
  v10 = v37;
  v12 = v38;
  v13 = v39;
  v14 = v40;
  v15 = static Alignment.center.getter();
  v17 = v16;
  v18 = static Alignment.center.getter();
  *&v41 = v9;
  *(&v41 + 1) = __PAIR64__(v10, v11);
  *&v42 = v12;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v8;
  LOWORD(v44) = 256;
  *(&v44 + 1) = v15;
  *&v45 = v17;
  *(&v45 + 1) = v18;
  v46 = v19;
  v64 = v19;
  v61 = v43;
  v62 = v44;
  v63 = v45;
  v59 = v41;
  v60 = v42;
  v47 = v9;
  v48 = v11;
  v49 = v10;
  v50 = v12;
  v51 = v13;
  v52 = v14;
  v53 = v8;
  v54 = 256;
  v55 = v15;
  v56 = v17;
  v57 = v18;
  v58 = v19;
  sub_1000D2DFC(&v41, v67, &qword_1019109C8);
  sub_100024F64(&v47, &qword_1019109C8);
  v20 = Image.init(systemName:)();
  v21 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  static Font.Weight.semibold.getter();
  v23 = type metadata accessor for Font.Design();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  v24 = static Font.system(size:weight:design:)();
  sub_100024F64(v4, &qword_1019109C0);
  v25 = swift_getKeyPath();
  v26 = v34;
  v65[0] = v34;
  v27 = v59;
  v65[1] = v59;
  v65[2] = v60;
  v29 = v62;
  v28 = v63;
  v65[4] = v62;
  v65[5] = v63;
  v30 = v61;
  v65[3] = v61;
  v31 = v64;
  v66 = v64;
  *(a1 + 32) = v60;
  *(a1 + 48) = v30;
  *(a1 + 64) = v29;
  *(a1 + 80) = v28;
  *a1 = v65[0];
  *(a1 + 16) = v27;
  *(a1 + 96) = v31;
  *(a1 + 104) = v20;
  *(a1 + 112) = KeyPath;
  *(a1 + 120) = v21;
  *(a1 + 128) = v25;
  *(a1 + 136) = v24;
  *(a1 + 144) = xmmword_1011EC750;
  sub_1000D2DFC(v65, v67, &qword_1019109D0);
  v67[0] = v26;
  v67[3] = v61;
  v67[4] = v62;
  v67[5] = v63;
  v68 = v64;
  v67[1] = v59;
  v67[2] = v60;
  return sub_100024F64(v67, &qword_1019109D0);
}

double sub_1001BF148@<D0>(uint64_t a1@<X8>)
{
  v2 = static Alignment.center.getter();
  v4 = v3;
  sub_1001BEDE8(&v12);
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v22 = v12;
  v23 = v13;
  v32[6] = v18;
  v32[7] = v19;
  v32[8] = v20;
  v32[9] = v21;
  v32[2] = v14;
  v32[3] = v15;
  v32[4] = v16;
  v32[5] = v17;
  v32[0] = v12;
  v32[1] = v13;
  sub_1000D2DFC(&v22, &v11, &qword_1019109B8);
  sub_100024F64(v32, &qword_1019109B8);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v29;
  *(a1 + 112) = v28;
  *(a1 + 128) = v5;
  v6 = v31;
  *(a1 + 144) = v30;
  *(a1 + 160) = v6;
  v7 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v7;
  v8 = v27;
  *(a1 + 80) = v26;
  *(a1 + 96) = v8;
  result = *&v22;
  v10 = v23;
  *(a1 + 16) = v22;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_1001BF244(uint64_t a1)
{
  sub_1000D6664(&qword_1019109D0);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  _s9ImageViewVMa();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v5 = type metadata accessor for ZStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v15[-v10];
  static Alignment.center.getter();
  v16 = v3;
  v17 = v4;
  v18 = v1;
  ZStack.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_10010ADFC(v8, v5, WitnessTable);
  v13 = *(v6 + 8);
  v13(v8, v5);
  sub_10010ADFC(v11, v5, WitnessTable);
  return (v13)(v11, v5);
}

uint64_t sub_1001BF44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a3;
  v42 = a4;
  v39 = *(a2 - 8);
  v40 = a1;
  __chkstk_darwin(a1);
  v38 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s9ImageViewVMa();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v34 - v9;
  v10 = objc_opt_self();
  v11 = [v10 _maps_systemGrayColor];
  *(&v34 + 1) = Color.init(uiColor:)();
  *&v34 = swift_getKeyPath();
  v12 = [v10 systemBackgroundColor];
  v13 = Color.init(uiColor:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v14 = v53[2];
  v15 = v54;
  v16 = v55;
  v17 = v56;
  v18 = v57;
  v19 = v58;
  v20 = static Alignment.center.getter();
  v22 = v21;
  v23 = static Alignment.center.getter();
  *&v59 = v14;
  *(&v59 + 1) = __PAIR64__(v16, v15);
  *&v60 = v17;
  *(&v60 + 1) = v18;
  *&v61 = v19;
  *(&v61 + 1) = v13;
  LOWORD(v62) = 256;
  *(&v62 + 1) = v20;
  *&v63 = v22;
  *(&v63 + 1) = v23;
  v64 = v24;
  *&v89 = v24;
  v86 = v61;
  v87 = v62;
  v88 = v63;
  v84 = v59;
  v85 = v60;
  v65 = v14;
  v66 = v15;
  v67 = v16;
  v68 = v17;
  v69 = v18;
  v70 = v19;
  v71 = v13;
  v72 = 256;
  v73 = v20;
  v74 = v22;
  v75 = v23;
  v76 = v24;
  sub_1000D2DFC(&v59, &v77, &qword_1019109C8);
  sub_100024F64(&v65, &qword_1019109C8);
  v77 = v34;
  v80 = v86;
  v81 = v87;
  v82 = v88;
  v83 = v89;
  v78 = v84;
  v79 = v85;
  v25 = v40;
  v26 = v35;
  v27 = v25 + *(_s12ContactBadgeVMa() + 36);
  v28 = v38;
  (*(v39 + 16))(v38, v27, v26);

  sub_1001A3DF8(v28, v26, v7, 0.0);
  WitnessTable = swift_getWitnessTable();
  v30 = v37;
  sub_10010ADFC(v7, v5, WitnessTable);
  v31 = v41;
  v32 = *(v41 + 8);
  v32(v7, v5);
  v50 = v81;
  v51 = v82;
  v52 = v83;
  v46 = v77;
  v47 = v78;
  v48 = v79;
  v49 = v80;
  v53[0] = &v46;
  (*(v31 + 16))(v7, v30, v5);
  v53[1] = v7;
  sub_1000D2DFC(&v77, &v84, &qword_1019109D0);
  v45[0] = sub_1000CE6B8(&qword_1019109D0);
  v45[1] = v5;
  v43 = sub_1001CCB28();
  v44 = WitnessTable;
  sub_1001A21B8(v53, 2uLL, v45);
  sub_100024F64(&v77, &qword_1019109D0);
  v32(v30, v5);
  v32(v7, v5);
  v88 = v50;
  v89 = v51;
  v90 = v52;
  v84 = v46;
  v85 = v47;
  v86 = v48;
  v87 = v49;
  return sub_100024F64(&v84, &qword_1019109D0);
}

uint64_t sub_1001BF8F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000CE6B8(&qword_101910A10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8[1])
  {
    sub_1000CE6B8(&qword_101910A18);
    type metadata accessor for UUID();
    sub_1000CE6B8(&qword_101910A20);
    sub_1000414C8(&qword_101910A28, &qword_101910A18);
    sub_1001CCBE0();
    sub_1001C3C48(&qword_101910A48, type metadata accessor for PlaceSummaryImageViewModel);
    ForEach<>.init(_:content:)();
    (*(v3 + 32))(a1, v5, v2);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return (*(v3 + 56))(a1, v6, 1, v2);
}

double sub_1001BFB48@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for PlaceSummaryImageViewModel(0);
  sub_1001C3C48(&qword_10190F480, type metadata accessor for PlaceSummaryImageViewModel);

  v2 = ObservedObject.init(wrappedValue:)();
  v4 = v3;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 40) = v7;
  result = *&v8;
  *(a1 + 56) = v8;
  return result;
}

uint64_t sub_1001BFC1C@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.lastTextBaseline.getter();
  *(a1 + 8) = 0xC014000000000000;
  *(a1 + 16) = 0;
  v2 = sub_1000CE6B8(&qword_101910A08);
  return sub_1001BF8F8(a1 + *(v2 + 44));
}

double sub_1001BFC80@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *(v1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10013BAE8(v3);
  static Published.subscript.getter();

  swift_getKeyPath();
  *(swift_allocObject() + 16) = (v5 & 1) == 0;
  sub_1000CE6B8(&qword_101910660);
  sub_1001CAB5C();
  _ConditionalContent<>.init(storage:)();
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = *v9;
  *(a1 + 73) = *&v9[9];
  result = *&v5;
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_1001BFF30(__int128 *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v10 = *a1;
  v6 = v10;
  if (v11 == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v10, &unk_101910518);
    (*(v3 + 8))(v5, v2);
    v6 = v9;
  }

  v9 = *(a1 + 7);
  v6(&v9);
}

uint64_t sub_1001C00C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_1000CE6B8(&qword_101910558);
  sub_1001C01B8(a1, (a2 + *(v5 + 44)));
  v6 = a2 + *(sub_1000CE6B8(&qword_101910528) + 36);
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #6.0 }

  *v6 = _Q0;
  result = sub_1000CE6B8(&qword_10191E590);
  *&v6[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1001C01B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_101910560);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = [objc_opt_self() tertiarySystemFillColor];
  v11 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0x4014000000000000;
  v9[16] = 0;
  v13 = sub_1000CE6B8(&qword_101910568);
  sub_1001C0360(a1, &v9[*(v13 + 44)]);
  sub_1000D2DFC(v9, v6, &qword_101910560);
  *a2 = KeyPath;
  a2[1] = v11;
  v14 = sub_1000CE6B8(&qword_101910570);
  sub_1000D2DFC(v6, a2 + *(v14 + 48), &qword_101910560);

  sub_100024F64(v9, &qword_101910560);
  sub_100024F64(v6, &qword_101910560);
}

uint64_t sub_1001C0360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_1000CE6B8(&qword_101910578);
  v81 = *(v3 - 8);
  v82 = v3;
  __chkstk_darwin(v3);
  v72 = &v65 - v4;
  v5 = sub_1000CE6B8(&qword_101910580);
  __chkstk_darwin(v5 - 8);
  v84 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v83 = &v65 - v8;
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000CE6B8(&qword_101910588);
  v78 = *(v13 - 8);
  v79 = v13;
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v77 = sub_1000CE6B8(&qword_101910590);
  __chkstk_darwin(v77);
  v76 = &v65 - v16;
  v75 = sub_1000CE6B8(&qword_101910598);
  __chkstk_darwin(v75);
  v80 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v73 = &v65 - v19;
  __chkstk_darwin(v20);
  v86 = &v65 - v21;

  v22 = Image.init(_internalSystemName:)();
  v23 = *(a1 + 48);
  v66 = *(a1 + 40);
  v74 = v23;
  if (v23)
  {

    static Font.headline.getter();
  }

  else
  {
    static Font.title3.getter();
  }

  static Font.Weight.semibold.getter();
  v24 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v26 = static Color.blue.getter();
  *&v91 = v22;
  *(&v91 + 1) = KeyPath;
  *&v92 = v24;
  *(&v92 + 1) = v26;
  v27 = *(v10 + 104);
  v69 = enum case for DynamicTypeSize.medium(_:);
  v70 = v10 + 104;
  v68 = v27;
  v27(v12);
  sub_1000CE6B8(&qword_1019105A0);
  sub_1001CA60C();
  View.dynamicTypeSize(_:)();
  v28 = *(v10 + 8);
  v65 = v12;
  v71 = v10 + 8;
  v67 = v28;
  v28(v12, v9);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = v76;
  (*(v78 + 32))(v76, v15, v79);
  v30 = &v29[*(v77 + 36)];
  v31 = v92;
  *v30 = v91;
  *(v30 + 1) = v31;
  *(v30 + 2) = v93;
  v32 = v29;
  v33 = v73;
  sub_1000F11C4(v32, v73, &qword_101910590);
  v34 = v33 + *(v75 + 36);
  *v34 = 0;
  v35 = 1;
  *(v34 + 8) = 1;
  sub_1000F11C4(v33, v86, &qword_101910598);
  if (v74)
  {
    v87 = v66;
    v88 = v74;
    sub_1000E5580();
    v36 = Text.init<A>(_:)();
    v38 = v37;
    v40 = v39;
    static Font.caption2.getter();
    v41 = v9;
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v42 = Text.font(_:)();
    v44 = v43;
    v46 = v45;
    v48 = v47;

    sub_1000F0A40(v36, v38, v40 & 1);

    v87 = v42;
    v88 = v44;
    v89 = v46 & 1;
    v90 = v48;
    v49 = v65;
    v68(v65, v69, v41);
    v50 = v72;
    View.dynamicTypeSize(_:)();
    v67(v49, v41);
    sub_1000F0A40(v42, v44, v46 & 1);

    v51 = static Color.blue.getter();
    *(v50 + *(sub_1000CE6B8(&qword_1019105C8) + 36)) = v51;
    LOBYTE(v51) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v52 = v82;
    v53 = v83;
    v54 = v50 + *(v82 + 36);
    *v54 = v51;
    *(v54 + 8) = v55;
    *(v54 + 16) = v56;
    *(v54 + 24) = v57;
    *(v54 + 32) = v58;
    *(v54 + 40) = 0;
    sub_1000F11C4(v50, v53, &qword_101910578);
    v35 = 0;
  }

  else
  {
    v52 = v82;
    v53 = v83;
  }

  (*(v81 + 56))(v53, v35, 1, v52);
  v59 = v86;
  v60 = v80;
  sub_1000D2DFC(v86, v80, &qword_101910598);
  v61 = v84;
  sub_1000D2DFC(v53, v84, &qword_101910580);
  v62 = v85;
  sub_1000D2DFC(v60, v85, &qword_101910598);
  v63 = sub_1000CE6B8(&qword_1019105C0);
  sub_1000D2DFC(v61, v62 + *(v63 + 48), &qword_101910580);
  sub_100024F64(v53, &qword_101910580);
  sub_100024F64(v59, &qword_101910598);
  sub_100024F64(v61, &qword_101910580);
  return sub_100024F64(v60, &qword_101910598);
}

uint64_t sub_1001C0B80()
{
  v1 = type metadata accessor for DefaultButtonStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000CE6B8(&qword_101910510);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  v9 = v0[1];
  v19[0] = *v0;
  v19[1] = v9;
  v10 = v0[3];
  v19[2] = v0[2];
  v20 = v10;
  v21 = v19[0];
  v22 = *(v0 + 16);
  v11 = *(v0 + 40);
  v23 = *(v0 + 24);
  v24 = v11;
  v25 = *(&v20 + 1);
  v12 = swift_allocObject();
  v13 = v0[1];
  v12[1] = *v0;
  v12[2] = v13;
  v14 = v0[3];
  v12[3] = v0[2];
  v12[4] = v14;
  v17 = v19;
  sub_1000D2DFC(&v21, v18, &unk_101910518);
  sub_100147688(&v23, v18);
  sub_1000D2DFC(&v24, v18, &unk_10190D010);
  sub_1001CA4CC(&v25, v18);
  sub_1000CE6B8(&qword_101910528);
  sub_1001CA528();
  Button.init(action:label:)();
  DefaultButtonStyle.init()();
  sub_1000414C8(&qword_101910548, &qword_101910510);
  sub_1001C3C48(&qword_101910550, &type metadata accessor for DefaultButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001C0E8C(void (*a1)(unint64_t *), uint64_t a2, char a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4();
    (*(v6 + 8))(v8, v5);
    a1 = v11;
  }

  v11 = 0x8000000000000020;
  a1(&v11);
}

double sub_1001C1008@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v16 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = v20;
  LOBYTE(v3) = v21;
  v7 = v22;
  v8 = v23;
  v9 = v24;
  v10 = v25;
  v11 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v18 = v3;
  v17 = v8;
  v19 = 1;
  v13 = static Edge.Set.all.getter();
  *a1 = v16;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v11;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = v13;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t sub_1001C11E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_1000CDA08();
  sub_1000CE6B8(&qword_101910670);
  sub_1001CAC20();

  return Button.init(action:label:)();
}

uint64_t sub_1001C12B8@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for DynamicTypeSize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_1019106B8);
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v30 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v27 = v26 - v8;
  v9 = [objc_opt_self() systemGray5Color];
  v29 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v10 = Image.init(systemName:)();
  v26[1] = v10;
  v11 = static Color.blue.getter();
  v12 = swift_getKeyPath();
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  v13 = Font.weight(_:)();

  v14 = swift_getKeyPath();
  v34 = v10;
  v35 = v12;
  v36 = v11;
  v37 = v14;
  v38 = v13;
  (*(v2 + 104))(v4, enum case for DynamicTypeSize.medium(_:), v1);
  sub_1000CE6B8(&qword_101910198);
  sub_1001C8EFC();
  v15 = v27;
  View.dynamicTypeSize(_:)();
  (*(v2 + 8))(v4, v1);

  v16 = v30;
  v17 = v31;
  v18 = *(v31 + 16);
  v19 = v32;
  v18(v30, v15, v32);
  v20 = v33;
  v21 = v29;
  *v33 = KeyPath;
  v20[1] = v21;
  v22 = v20;
  v23 = sub_1000CE6B8(&qword_1019106C0);
  v18(v22 + *(v23 + 48), v16, v19);
  v24 = *(v17 + 8);

  v24(v15, v19);
  v24(v16, v19);
}

uint64_t sub_1001C1618@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v2;
  v3 = sub_1000CE6B8(&qword_1019106B0);
  return sub_1001C12B8((a1 + *(v3 + 44)));
}

uint64_t sub_1001C1660@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_101910140);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v44 = sub_1000CE6B8(&qword_1019105D8);
  v9 = *(v44 - 8);
  __chkstk_darwin(v44);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v43 = &v40 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v47)
  {
    return (*(v9 + 56))(a1, 1, 1, v44);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v42 = a1;
  static Published.subscript.getter();

  v14 = v45;
  v15 = type metadata accessor for Image.TemplateRenderingMode();
  v16 = *(v15 - 8);
  v17 = &enum case for Image.TemplateRenderingMode.template(_:);
  if (!v14)
  {
    v17 = &enum case for Image.TemplateRenderingMode.original(_:);
  }

  (*(*(v15 - 8) + 104))(v8, *v17, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  Image.renderingMode(_:)();
  sub_100024F64(v8, &qword_101910140);
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v41 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  v18 = objc_opt_self();
  v19 = [v18 tertiaryLabelColor];
  v40 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v21 = [v18 systemGray5Color];
  v22 = Color.init(uiColor:)();
  v23 = static Edge.Set.all.getter();

  v46 = 1;
  v24 = v44;
  v25 = &v11[*(v44 + 36)];
  v26 = *(type metadata accessor for RoundedRectangle() + 20);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  __asm { FMOV            V0.2D, #6.0 }

  *v25 = _Q0;
  *&v25[*(sub_1000CE6B8(&qword_10191E590) + 36)] = 256;
  v34 = v40;
  *v11 = v41;
  *(v11 + 1) = KeyPath;
  *(v11 + 2) = v34;
  *(v11 + 3) = v22;
  v11[32] = v23;
  *(v11 + 5) = 0;
  *(v11 + 24) = 1;
  v35 = v11;
  v36 = v43;
  sub_1000F11C4(v35, v43, &qword_1019105D8);
  v37 = v36;
  v38 = v42;
  sub_1000F11C4(v37, v42, &qword_1019105D8);
  return (*(v9 + 56))(v38, 0, 1, v24);
}

uint64_t sub_1001C1B58@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v2;
  v3 = sub_1000CE6B8(&qword_1019105D0);
  return sub_1001C1660(a1 + *(v3 + 44));
}

uint64_t sub_1001C1BB4()
{
  v0 = sub_1000CE6B8(&unk_10190F560);
  __chkstk_darwin(v0);
  v2 = (&v16 - v1);
  v3 = [objc_opt_self() systemGray5Color];
  v4 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v6 = v2 + *(v0 + 36);
  v7 = *(type metadata accessor for RoundedRectangle() + 20);
  v8 = enum case for RoundedCornerStyle.continuous(_:);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #8.0 }

  *v6 = _Q0;
  *&v6[*(sub_1000CE6B8(&qword_10191E590) + 36)] = 256;
  *v2 = KeyPath;
  v2[1] = v4;
  sub_1001C5A08();
  View.accessibility(identifier:)();
  return sub_100024F64(v2, &unk_10190F560);
}

uint64_t sub_1001C1D74()
{
  v0 = [objc_opt_self() systemGray5Color];
  Color.init(uiColor:)();
  swift_getKeyPath();
  sub_1000CE6B8(&qword_10190F538);
  sub_1001C58FC();
  View.accessibility(identifier:)();
}

uint64_t sub_1001C1E5C@<X0>(uint64_t a1@<X8>)
{
  v2 = static Color.clear.getter();
  result = static Edge.Set.all.getter();
  *a1 = v2;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001C1E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v4);
  sub_1001C5428(a1);
  static HorizontalAlignment.center.getter();
  sub_1001C3C48(&qword_10190F488, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_1000CE6B8(&qword_10190F490);
  sub_1001C5688();
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  result = sub_1000CE6B8(&qword_10190F4A8);
  v6 = a2 + *(result + 36);
  *v6 = 0xD00000000000001DLL;
  *(v6 + 8) = 0x8000000101221F30;
  *(v6 + 16) = 9;
  return result;
}

uint64_t sub_1001C2020()
{

  sub_1000CE6B8(&qword_10190F4B0);
  type metadata accessor for UUID();
  _s12ActionButtonVMa(0);
  sub_1000414C8(&qword_10190F4B8, &qword_10190F4B0);
  sub_1001C3C48(&qword_10190F4A0, _s12ActionButtonVMa);
  sub_1001C3C48(&qword_10190F4C0, type metadata accessor for PlaceSummaryViewModelActionButtons.Button);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1001C2170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s12ActionButtonVMa(0);
  sub_1001C48C0(a1, a2 + *(v4 + 20), type metadata accessor for PlaceSummaryViewModelActionButtons.Button);
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1001C21DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = _s12ActionButtonVMa(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_1000CE6B8(&qword_1019106C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = sub_1000CE6B8(&qword_1019106D0);
  v11 = *(v10 - 8);
  v21 = v10;
  v22 = v11;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  sub_1001C48C0(v2, &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s12ActionButtonVMa);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_1001C4928(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, _s12ActionButtonVMa);
  v24 = v2;
  sub_1000CE6B8(&qword_1019106D8);
  sub_1001CAEA0();
  Button.init(action:label:)();
  v16 = sub_1000414C8(&qword_1019106F8, &qword_1019106C8);
  v17 = sub_1001CAF58();
  View.buttonStyle<A>(_:)();
  (*(v7 + 8))(v9, v6);
  v25 = v6;
  v26 = &_s17ActionButtonStyleVN;
  v27 = v16;
  v28 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  View.accessibility(identifier:)();
  return (*(v22 + 8))(v13, v18);
}

uint64_t sub_1001C2540(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (*(a1 + 16) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4();
    (*(v3 + 8))(v5, v2);
    v6 = v14;
  }

  v8 = a1 + *(_s12ActionButtonVMa(0) + 20);
  v9 = type metadata accessor for PlaceSummaryViewModelActionButtons.Button(0);
  v10 = *(v8 + *(v9 + 24));
  v13 = *(v8 + *(v9 + 28));
  v14 = v10;
  v6(&v14, &v13);
}

__n128 sub_1001C26E0@<Q0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v15 = 1;
  sub_1001C28B0(&v17);
  v28 = v21;
  v29 = v22;
  v30 = v23;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v31[0] = v17;
  v31[1] = v18;
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v31[5] = v22;
  v32 = v23;
  sub_1000D2DFC(&v24, v13, qword_101910708);
  sub_100024F64(v31, qword_101910708);
  *&v14[55] = v27;
  *&v14[71] = v28;
  *&v14[87] = v29;
  *&v14[7] = v24;
  *&v14[23] = v25;
  v14[103] = v30;
  *&v14[39] = v26;
  v3 = v15;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v16[55] = v20;
  *&v16[71] = v21;
  *&v16[87] = v22;
  *&v16[103] = v23;
  *&v16[7] = v17;
  *&v16[23] = v18;
  *&v16[39] = v19;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  v4 = *&v14[32];
  *(a1 + 65) = *&v14[48];
  v5 = *&v14[80];
  *(a1 + 81) = *&v14[64];
  *(a1 + 97) = v5;
  *(a1 + 113) = *&v14[96];
  v6 = *&v14[16];
  *(a1 + 17) = *v14;
  *(a1 + 33) = v6;
  *(a1 + 49) = v4;
  v7 = *v16;
  v8 = *&v16[16];
  v9 = *&v16[32];
  *(a1 + 169) = *&v16[48];
  *(a1 + 153) = v9;
  *(a1 + 137) = v8;
  *(a1 + 121) = v7;
  result = *&v16[64];
  v11 = *&v16[80];
  v12 = *&v16[96];
  *(a1 + 232) = *&v16[111];
  *(a1 + 217) = v12;
  *(a1 + 201) = v11;
  *(a1 + 185) = result;
  return result;
}

uint64_t sub_1001C28B0@<X0>(uint64_t a1@<X8>)
{
  _s12ActionButtonVMa(0);
  type metadata accessor for PlaceSummaryViewModelActionButtons.Button(0);
  sub_1000E5580();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1000F0A40(v2, v4, v6 & 1);

  LOBYTE(v2) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = swift_getKeyPath();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v2;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21;
  *(a1 + 72) = 0;
  *(a1 + 80) = result;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_1001C2A38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000CE6B8(&qword_1019109E8);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v28 - v4;
  v6 = sub_1000CE6B8(&qword_1019109F0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  ButtonStyleConfiguration.label.getter();
  v10 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  v12 = &v5[*(sub_1000CE6B8(&qword_1019109F8) + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  v13 = [objc_opt_self() tertiarySystemFillColor];
  v14 = Color.init(uiColor:)();
  v15 = static Edge.Set.all.getter();
  v16 = &v5[*(v3 + 44)];
  *v16 = v14;
  v16[8] = v15;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v17 = 0.85;
  }

  else
  {
    v17 = 1.0;
  }

  sub_1000F11C4(v5, v9, &qword_1019109E8);
  *&v9[*(v7 + 44)] = v17;
  v18 = (a1 + *(sub_1000CE6B8(&qword_101910A00) + 36));
  v19 = *(type metadata accessor for RoundedRectangle() + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #10.0 }

  *v18 = _Q0;
  *&v18[*(sub_1000CE6B8(&qword_10191E590) + 36)] = 256;
  return sub_1000F11C4(v9, a1, &qword_1019109F0);
}

uint64_t sub_1001C2C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = static VerticalAlignment.center.getter();
  *(a5 + 8) = 0x4018000000000000;
  *(a5 + 16) = 0;
  v10 = sub_1000CE6B8(&qword_10190F4E8);
  return sub_1001C2D24(a1, a2, a3 & 1, a4, (a5 + *(v10 + 44)));
}

uint64_t sub_1001C2D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_1000CE6B8(&qword_10190F4F0);
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  __chkstk_darwin(v10);
  v38 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v37 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v36 = KeyPath;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v53[0] = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3 & 1;
  *(v17 + 40) = a4;
  swift_bridgeObjectRetain_n();
  sub_1000CDA08();
  sub_1000CE6B8(&qword_10190F4F8);
  type metadata accessor for UUID();
  sub_1000CE6B8(&qword_10190F500);
  sub_1000414C8(&qword_10190F508, &qword_10190F4F8);
  sub_1001C578C();
  sub_1001C3C48(&qword_10190F520, type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button);
  v35 = v15;
  ForEach<>.init(_:content:)();
  v18 = static Color.clear.getter();
  v19 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = *(v40 + 16);
  v21 = v38;
  v22 = v15;
  v23 = v39;
  v20(v38, v22, v39);
  *&v47[0] = KeyPath;
  v24 = v37;
  *(&v47[0] + 1) = v37;
  v25 = v44;
  v47[1] = v44;
  v47[2] = v45;
  v26 = v46;
  v47[3] = v46;
  *(a5 + 2) = v45;
  *(a5 + 3) = v26;
  *a5 = v47[0];
  *(a5 + 1) = v25;
  v27 = sub_1000CE6B8(&qword_10190F528);
  v20(&a5[*(v27 + 48)], v21, v23);
  v28 = &a5[*(v27 + 64)];
  *&v48[0] = v19;
  *(&v48[0] + 1) = v18;
  v29 = v41;
  v30 = v42;
  v48[1] = v41;
  v48[2] = v42;
  v31 = v43;
  v48[3] = v43;
  *v28 = v48[0];
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  sub_1000D2DFC(v47, v53, &qword_10190F530);
  sub_1000D2DFC(v48, v53, &qword_10190F530);
  v32 = *(v40 + 8);
  v32(v35, v23);
  v49[0] = v19;
  v49[1] = v18;
  v50 = v41;
  v51 = v42;
  v52 = v43;
  sub_100024F64(v49, &qword_10190F530);
  v32(v21, v23);
  v53[0] = v36;
  v53[1] = v24;
  v54 = v44;
  v55 = v45;
  v56 = v46;
  return sub_100024F64(v53, &qword_10190F530);
}

uint64_t sub_1001C315C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v27 = a3;
  v25 = a2;
  v8 = type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RefinementBarButton(0);
  __chkstk_darwin(v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v16 = (a1 + *(v9 + 28));
  v17 = *v16;
  v18 = v16[1];
  v26 = *(a1 + *(v9 + 36));
  sub_1001C48C0(a1, v12, type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button);
  v19 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = v27;
  *(v20 + 32) = v28 & 1;
  *(v20 + 40) = v29;
  sub_1001C4928(v12, v20 + v19, type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button);
  v21 = &v15[v13[5]];
  *v21 = v17;
  *(v21 + 1) = v18;
  v22 = &v15[v13[6]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v15[v13[7]] = v26;
  v15[v13[8]] = 0;
  v23 = &v15[v13[9]];
  *v23 = sub_1001C5878;
  v23[1] = v20;

  sub_1000CDA08();
  sub_1001C3C48(&qword_10190F518, type metadata accessor for RefinementBarButton);

  View.accessibility(identifier:)();
  return sub_1001C4CC4(v15, type metadata accessor for RefinementBarButton);
}

uint64_t sub_1001C3404(uint64_t a1, void (*a2)(void), uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000CD8F4();
    (*(v10 + 8))(v12, v9);
    a2 = v15;
  }

  v15 = *(a6 + *(type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button(0) + 24));
  a2(&v15);
}

uint64_t sub_1001C358C()
{
  v1 = sub_1000CE6B8(&qword_10190F4C8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-v3];
  v5 = *v0;
  v6 = v0[1];
  v7 = *(v0 + 16);
  v8 = v0[3];
  static Axis.Set.horizontal.getter();
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_1000CE6B8(&qword_10190F4D0);
  sub_1000414C8(&qword_10190F4D8, &qword_10190F4D0);
  ScrollView.init(_:showsIndicators:content:)();
  sub_1000414C8(&qword_10190F4E0, &qword_10190F4C8);
  View.accessibility(identifier:)();
  return (*(v2 + 8))(v4, v1);
}

unint64_t sub_1001C3850()
{
  result = qword_10190F0F0;
  if (!qword_10190F0F0)
  {
    sub_1000D6664(&qword_10190F0D0);
    sub_1001C38DC();
    sub_1001C46D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F0F0);
  }

  return result;
}

unint64_t sub_1001C38DC()
{
  result = qword_10190F0F8;
  if (!qword_10190F0F8)
  {
    sub_1000D6664(&qword_10190F100);
    sub_1001C3968();
    sub_1001C40C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F0F8);
  }

  return result;
}

unint64_t sub_1001C3968()
{
  result = qword_10190F108;
  if (!qword_10190F108)
  {
    sub_1000D6664(&qword_10190F110);
    sub_1001C39F4();
    sub_1001C3DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F108);
  }

  return result;
}

unint64_t sub_1001C39F4()
{
  result = qword_10190F118;
  if (!qword_10190F118)
  {
    sub_1000D6664(&qword_10190F120);
    sub_1001C3A80();
    sub_1001C3CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F118);
  }

  return result;
}

unint64_t sub_1001C3A80()
{
  result = qword_10190F128;
  if (!qword_10190F128)
  {
    sub_1000D6664(&qword_10190F130);
    sub_1001C3B3C();
    sub_1001C3C48(&qword_10190F150, _s5LabelVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F128);
  }

  return result;
}

unint64_t sub_1001C3B3C()
{
  result = qword_10190F138;
  if (!qword_10190F138)
  {
    sub_1000D6664(&qword_10190F140);
    sub_1001C3C48(&qword_10190F148, _s10TitleLabelVMa);
    sub_1001C3C48(&qword_10190F150, _s5LabelVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F138);
  }

  return result;
}

uint64_t sub_1001C3C48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001C3CB0()
{
  result = qword_10190F158;
  if (!qword_10190F158)
  {
    sub_1000D6664(&qword_10190F160);
    sub_1001C3C48(&qword_10190F168, _s26MultipleCuratedCollectionsVMa);
    sub_1001C3C48(&qword_10190F170, _s18SingleCuratedGuideVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F158);
  }

  return result;
}

unint64_t sub_1001C3DDC()
{
  result = qword_10190F178;
  if (!qword_10190F178)
  {
    sub_1000D6664(&qword_10190F180);
    sub_1001C3E68();
    sub_1001C3F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F178);
  }

  return result;
}

unint64_t sub_1001C3E68()
{
  result = qword_10190F188;
  if (!qword_10190F188)
  {
    sub_1000D6664(&qword_10190F190);
    sub_1001C3C48(&qword_10190F198, _s18UserGeneratedGuideVMa);
    sub_1001C3C48(&qword_10190F1A0, _s17FirstPartyRatingsVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F188);
  }

  return result;
}

unint64_t sub_1001C3F94()
{
  result = qword_10190F1A8;
  if (!qword_10190F1A8)
  {
    sub_1000D6664(&qword_10190F1B0);
    sub_1001C3C48(&qword_10190F1B8, _s17ThirdPartyRatingsVMa);
    sub_1001C4070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F1A8);
  }

  return result;
}

unint64_t sub_1001C4070()
{
  result = qword_10190F1C0;
  if (!qword_10190F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F1C0);
  }

  return result;
}

unint64_t sub_1001C40C4()
{
  result = qword_10190F1C8;
  if (!qword_10190F1C8)
  {
    sub_1000D6664(&qword_10190F1D0);
    sub_1001C4150();
    sub_1001C43E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F1C8);
  }

  return result;
}

unint64_t sub_1001C4150()
{
  result = qword_10190F1D8;
  if (!qword_10190F1D8)
  {
    sub_1000D6664(&qword_10190F1E0);
    sub_1001C41DC();
    sub_1001C42BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F1D8);
  }

  return result;
}

unint64_t sub_1001C41DC()
{
  result = qword_10190F1E8;
  if (!qword_10190F1E8)
  {
    sub_1000D6664(&unk_10190F1F0);
    sub_10016E9EC();
    sub_1001C4268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F1E8);
  }

  return result;
}

unint64_t sub_1001C4268()
{
  result = qword_10190F200;
  if (!qword_10190F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F200);
  }

  return result;
}

unint64_t sub_1001C42BC()
{
  result = qword_10190F208;
  if (!qword_10190F208)
  {
    sub_1000D6664(&qword_10190F210);
    sub_1001C3C48(&qword_10190F218, _s13TappableEntryVMa);
    sub_1001C3C48(&qword_10190F220, _s9DelimiterVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F208);
  }

  return result;
}

unint64_t sub_1001C43E8()
{
  result = qword_10190F228;
  if (!qword_10190F228)
  {
    sub_1000D6664(&qword_10190F230);
    sub_1001C4474();
    sub_1001C45A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F228);
  }

  return result;
}

unint64_t sub_1001C4474()
{
  result = qword_10190F238;
  if (!qword_10190F238)
  {
    sub_1000D6664(&qword_10190F240);
    sub_1001C3C48(&qword_10190F248, _s5HoursVMa);
    sub_1001C3C48(&qword_10190F250, _s28RealTimeAvailableChargerViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F238);
  }

  return result;
}

unint64_t sub_1001C45A0()
{
  result = qword_10190F258;
  if (!qword_10190F258)
  {
    sub_1000D6664(&qword_10190F260);
    sub_1001C462C();
    sub_1001C4680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F258);
  }

  return result;
}

unint64_t sub_1001C462C()
{
  result = qword_10190F268;
  if (!qword_10190F268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F268);
  }

  return result;
}

unint64_t sub_1001C4680()
{
  result = qword_10190F270;
  if (!qword_10190F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F270);
  }

  return result;
}

unint64_t sub_1001C46D4()
{
  result = qword_10190F278;
  if (!qword_10190F278)
  {
    sub_1000D6664(&qword_10190F280);
    sub_1001C4760();
    sub_1001C47B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F278);
  }

  return result;
}

unint64_t sub_1001C4760()
{
  result = qword_10190F288;
  if (!qword_10190F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F288);
  }

  return result;
}

unint64_t sub_1001C47B4()
{
  result = qword_10190F290;
  if (!qword_10190F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F290);
  }

  return result;
}

unint64_t sub_1001C4808()
{
  result = qword_10190F2A0;
  if (!qword_10190F2A0)
  {
    sub_1000D6664(&qword_10190F0C0);
    sub_1000414C8(&qword_10190F2A8, &unk_10190F2B0);
    sub_10013C338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F2A0);
  }

  return result;
}

uint64_t sub_1001C48C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C4928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C49F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  type metadata accessor for PlaceSummaryViewModelUnit.UserLibrary(0);
  sub_1001C3C48(&qword_10190F388, type metadata accessor for PlaceSummaryViewModelUnit.UserLibrary);
  v8 = ObservedObject.init(wrappedValue:)();
  v10 = v9;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v11.super.isa = qword_1019600D8;
  v26._object = 0x800000010121F6F0;
  v12._countAndFlagsBits = 0x6F74206465646441;
  v12._object = 0xE800000000000000;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0xD000000000000022;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, qword_1019600D8, v13, v26);
  v27._object = 0x800000010121F6F0;
  v15._countAndFlagsBits = 0x736563616C50;
  v15._object = 0xE600000000000000;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0xD000000000000022;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v11, v16, v27);
  v28._object = 0x8000000101221D10;
  v18._countAndFlagsBits = 0x616C5020776F6853;
  v18._object = 0xEB00000000736563;
  v28._countAndFlagsBits = 0xD00000000000003ELL;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v11, v19, v28);
  result = v21._countAndFlagsBits;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  *(a6 + 40) = v8;
  *(a6 + 48) = v10;
  *(a6 + 56) = v14;
  *(a6 + 72) = v17;
  *(a6 + 88) = v21;
  return result;
}

uint64_t sub_1001C4CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001C4D24()
{
  result = qword_10190F360;
  if (!qword_10190F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F360);
  }

  return result;
}

unint64_t sub_1001C4DF8()
{
  result = qword_10190F3F0;
  if (!qword_10190F3F0)
  {
    sub_1000D6664(&qword_10190F3A0);
    sub_1001C4EB0();
    sub_1000414C8(&unk_10190F410, &qword_101915760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F3F0);
  }

  return result;
}

unint64_t sub_1001C4EB0()
{
  result = qword_10190F3F8;
  if (!qword_10190F3F8)
  {
    sub_1000D6664(&qword_10190F3C8);
    sub_1001C4F6C();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F3F8);
  }

  return result;
}

unint64_t sub_1001C4F6C()
{
  result = qword_10190F400;
  if (!qword_10190F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F400);
  }

  return result;
}

unint64_t sub_1001C4FC0()
{
  result = qword_10190F420;
  if (!qword_10190F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F420);
  }

  return result;
}

unint64_t sub_1001C5014()
{
  result = qword_10190F428;
  if (!qword_10190F428)
  {
    sub_1000D6664(&qword_10190F3E0);
    sub_1001C50A0();
    sub_1001C4EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F428);
  }

  return result;
}

unint64_t sub_1001C50A0()
{
  result = qword_10190F430;
  if (!qword_10190F430)
  {
    sub_1000D6664(&qword_10190F3D8);
    sub_1001C515C();
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F430);
  }

  return result;
}

unint64_t sub_1001C515C()
{
  result = qword_10190F438;
  if (!qword_10190F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F438);
  }

  return result;
}

unint64_t sub_1001C51B0()
{
  result = qword_10190F448;
  if (!qword_10190F448)
  {
    sub_1000D6664(&qword_10190F3B0);
    sub_1001CC85C(&qword_10190F440, &qword_10190F3C0, &unk_1011ECD00, sub_1001C4EB0);
    sub_1001C5268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F448);
  }

  return result;
}

unint64_t sub_1001C5268()
{
  result = qword_10190F450;
  if (!qword_10190F450)
  {
    sub_1000D6664(&qword_10190F458);
    sub_1001C52F4();
    sub_1001C5348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F450);
  }

  return result;
}

unint64_t sub_1001C52F4()
{
  result = qword_10190F460;
  if (!qword_10190F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F460);
  }

  return result;
}

unint64_t sub_1001C5348()
{
  result = qword_10190F468;
  if (!qword_10190F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F468);
  }

  return result;
}

unint64_t sub_1001C539C()
{
  result = qword_10190F470;
  if (!qword_10190F470)
  {
    sub_1000D6664(&qword_10190F398);
    sub_1001C4DF8();
    sub_1001C4FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F470);
  }

  return result;
}

void *sub_1001C5428(uint64_t a1)
{
  v16 = type metadata accessor for GridItem.Size();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for GridItem();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v13.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = enum case for GridItem.Size.adaptive(_:);
  v8 = *(v2 + 104);
  v9 = _swiftEmptyArrayStorage;
  v13 = vdupq_n_s64(0x7FF0000000000000uLL);
  do
  {
    *v4 = v13;
    v8(v4, v14, v16);
    GridItem.init(_:spacing:alignment:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1003570AC(0, v9[2] + 1, 1, v9);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1003570AC(v10 > 1, v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v15);
    --a1;
  }

  while (a1);
  return v9;
}

unint64_t sub_1001C5688()
{
  result = qword_10190F498;
  if (!qword_10190F498)
  {
    sub_1000D6664(&qword_10190F490);
    sub_1001C3C48(&qword_10190F4A0, _s12ActionButtonVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F498);
  }

  return result;
}

unint64_t sub_1001C578C()
{
  result = qword_10190F510;
  if (!qword_10190F510)
  {
    sub_1000D6664(&qword_10190F500);
    sub_1001C3C48(&qword_10190F518, type metadata accessor for RefinementBarButton);
    sub_1001C3C48(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F510);
  }

  return result;
}

uint64_t sub_1001C5878(uint64_t a1)
{
  v3 = *(type metadata accessor for PlaceSummaryViewModelRefinementButtons.Button(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1001C3404(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1001C58FC()
{
  result = qword_10190F540;
  if (!qword_10190F540)
  {
    sub_1000D6664(&qword_10190F538);
    sub_1001C59B4();
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F540);
  }

  return result;
}

unint64_t sub_1001C59B4()
{
  result = qword_10190F548;
  if (!qword_10190F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F548);
  }

  return result;
}

unint64_t sub_1001C5A08()
{
  result = qword_10190F570;
  if (!qword_10190F570)
  {
    sub_1000D6664(&unk_10190F560);
    sub_1001C5AC0();
    sub_1000414C8(&unk_10190F590, &qword_10191E590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F570);
  }

  return result;
}

unint64_t sub_1001C5AC0()
{
  result = qword_10190F578;
  if (!qword_10190F578)
  {
    sub_1000D6664(&qword_10190F580);
    sub_1001C5B78();
    sub_1000414C8(&unk_10190F550, &qword_10191E550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F578);
  }

  return result;
}

unint64_t sub_1001C5B78()
{
  result = qword_10190F588;
  if (!qword_10190F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190F588);
  }

  return result;
}

uint64_t sub_1001C5BCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1001C5C14(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1001C5C64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C5CAC(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

__n128 sub_1001C5D0C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001C5D38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C5D80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001C5DE8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1001C5E04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1001C5E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001C5ED8()
{
  sub_1001C5F98();
  if (v0 <= 0x3F)
  {
    sub_1001C63DC(319, &unk_10190F610, sub_1001C4D24);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001C5F98()
{
  if (!qword_10190F608)
  {
    type metadata accessor for PlaceSummaryEVChargerViewModel(255);
    sub_1001C3C48(&unk_101918A60, type metadata accessor for PlaceSummaryEVChargerViewModel);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10190F608);
    }
  }
}

uint64_t sub_1001C6040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001C6124(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1001C61F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001C6298()
{
  sub_1001C6348();
  if (v0 <= 0x3F)
  {
    sub_1001C63DC(319, &qword_10191DE90, sub_10018C5CC);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001C6348()
{
  if (!qword_10190F750[0])
  {
    type metadata accessor for PlaceSummaryViewModelTemplate(255);
    sub_1001C3C48(&qword_10190BE38, type metadata accessor for PlaceSummaryViewModelTemplate);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, qword_10190F750);
    }
  }
}

void sub_1001C63DC(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ScaledMetric();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1001C6464()
{
  sub_1001C6348();
  if (v0 <= 0x3F)
  {
    sub_1001C75FC(319, &qword_10190F7F8, &unk_10190F800);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_1001C6518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1001C653C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C6584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001C65EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001C6608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1001C6650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001C66D8()
{
  sub_1001C6348();
  if (v0 <= 0x3F)
  {
    sub_1001C63DC(319, &qword_10191DE90, sub_10018C5CC);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C67D0()
{
  sub_1001C6348();
  if (v0 <= 0x3F)
  {
    sub_1001C63DC(319, &qword_10191DE90, sub_10018C5CC);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001C68CC()
{
  sub_1001C6348();
  if (v0 <= 0x3F)
  {
    sub_1001C75FC(319, &qword_10190F9E0, &unk_10190F9E8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C69B0()
{
  sub_1001C6348();
  if (v0 <= 0x3F)
  {
    sub_1001C75FC(319, &qword_10190FA88, &unk_10190FA90);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C6AB4()
{
  sub_1001C6348();
  if (v0 <= 0x3F)
  {
    sub_1001C75FC(319, &qword_10190FA88, &unk_10190FA90);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C6BB4()
{
  type metadata accessor for AttributedString();
  if (v0 <= 0x3F)
  {
    sub_1001C6D88(319, &qword_10190FBF0);
    if (v1 <= 0x3F)
    {
      sub_1001C6D88(319, &qword_10190FBF8);
      if (v2 <= 0x3F)
      {
        sub_1001C6EC8(319, &qword_10190FC00, type metadata accessor for PlaceSummaryImageViewModel, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001C6EC8(319, &qword_10190FC08, type metadata accessor for PlaceSummaryStackedImageViewModel, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1001C6D88(319, qword_10190FC10);
            if (v5 <= 0x3F)
            {
              sub_1001C6348();
              if (v6 <= 0x3F)
              {
                sub_1001C6EC8(319, &qword_10190A258, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
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

void sub_1001C6D88(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1001C6DFC()
{
  sub_1001C6348();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AttributedString();
    if (v1 <= 0x3F)
    {
      sub_1001C6EC8(319, &unk_10190FCD0, &type metadata accessor for AttributedString, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C6EC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1001C6F5C(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_1001C6F78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C6FC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001C7030()
{
  sub_1001C74A4();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001C70C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}