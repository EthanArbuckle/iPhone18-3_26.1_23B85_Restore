id sub_1000D53EC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_retryButton;
  *&v1[v4] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_titleLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC16MusicRecognition18AmbientNoMatchView_stackView;
  *&v1[v6] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_1000D47E0();
  }

  return v8;
}

unint64_t sub_1000D55A4()
{
  result = qword_100147EE8;
  if (!qword_100147EE8)
  {
    type metadata accessor for AttributedString.FormattingOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147EE8);
  }

  return result;
}

unint64_t sub_1000D55FC()
{
  result = qword_100147EF8;
  if (!qword_100147EF8)
  {
    sub_100004370(&qword_100147EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147EF8);
  }

  return result;
}

unint64_t sub_1000D5660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D44(&qword_100147F20);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000B8EA0(v5, v6);
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

unint64_t sub_1000D5774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D44(&qword_100146E70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007FDC(v4, &v13, &qword_100144580);
      v5 = v13;
      v6 = v14;
      result = sub_1000B8EA0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000B2D80(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1000D58A4(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100144958);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100002D44(&qword_100144960);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007FDC(v9, v5, &qword_100144958);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1000B8EA0(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Playlist();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_1000D5A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D44(&qword_100147F28);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000B8EA0(v5, v6);
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

unint64_t sub_1000D5B94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D44(&qword_100147F18);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007FDC(v4, &v11, &qword_100147F10);
      v5 = v11;
      result = sub_1000B974C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000B2D80(&v12, (v3[7] + 32 * result));
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

uint64_t sub_1000D5CBC(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100147F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D5D50()
{
  result = static Font.title3.getter();
  qword_100147F30 = result;
  return result;
}

uint64_t sub_1000D5D70()
{
  result = static Font.Weight.regular.getter();
  qword_100147F38 = v1;
  return result;
}

uint64_t sub_1000D5D90()
{
  result = static Font.title.getter();
  qword_100147F40 = result;
  return result;
}

uint64_t sub_1000D5DB0()
{
  v0 = [objc_opt_self() tertiaryLabelColor];
  result = Color.init(uiColor:)();
  qword_100147F48 = result;
  return result;
}

__n128 sub_1000D5DF0@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_100002D44(&qword_100147F50);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0x4014000000000000;
  v5[16] = 0;
  v6 = sub_100002D44(&qword_100147F58);
  sub_1000D5F34(v1, &v5[*(v6 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000D680C(v5, a1);
  v7 = a1 + *(sub_100002D44(&qword_100147F60) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_1000D5F34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v97 = a2;
  v91 = type metadata accessor for Text.Suffix();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100002D44(&qword_100147F68);
  v4 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v80 - v5;
  v6 = sub_100002D44(&qword_100147F70);
  __chkstk_darwin(v6);
  v83 = &v80 - v7;
  v8 = sub_100002D44(&qword_100147F78);
  v95 = *(v8 - 8);
  v96 = v8;
  __chkstk_darwin(v8);
  v94 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v99 = &v80 - v11;
  v12 = *(a1 + 8);
  v88 = *a1;
  v89 = v12;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  LODWORD(v82) = *(a1 + 32);
  v102 = v13;
  v103 = v14;
  v15 = sub_10000B730();

  v98 = v15;
  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  if (qword_100141D50 != -1)
  {
    swift_once();
  }

  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_10000BFBC(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  v85 = v21;
  v102 = v21;
  v103 = v23;
  v84 = v23;
  v29 = v25;
  v104 = v25 & 1;
  v86 = v27;
  v105 = v27;
  v106 = KeyPath;
  v107 = 3;
  v108 = 0;
  if (v82)
  {
    v80 = KeyPath;
    v81 = v6;
    v82 = v4;
    v100 = 3028656112;
    v101 = 0xA400000000000000;
    v30 = Text.init<A>(_:)();
    v32 = v31;
    v34 = v33;
    if (qword_100141D58 != -1)
    {
      swift_once();
    }

    v35 = Text.foregroundColor(_:)();
    v37 = v36;
    v39 = v38;
    sub_10000BFBC(v30, v32, v34 & 1);

    static Font.title2.getter();
    v40 = Text.font(_:)();
    v42 = v41;
    v44 = v43;

    sub_10000BFBC(v35, v37, v39 & 1);

    v45 = v87;
    static Text.Suffix.alwaysVisible(_:)();
    v46 = v42;
    v47 = v45;
    sub_10000BFBC(v40, v46, v44 & 1);

    v48 = v93;
    v4 = v82;
    v6 = v81;
  }

  else
  {
    v47 = v87;
    static Text.Suffix.none.getter();
    v48 = v93;
  }

  sub_100002D44(&qword_100142990);
  sub_1000149E0();
  v49 = v92;
  View.textSuffix(_:)();
  (*(v90 + 8))(v47, v91);
  sub_10000BFBC(v85, v84, v29 & 1);

  v50 = v83;
  v51 = &v83[*(v6 + 36)];
  v52 = *(sub_100002D44(&qword_100147F80) + 28);
  v53 = enum case for Image.Scale.small(_:);
  v54 = type metadata accessor for Image.Scale();
  (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
  *v51 = swift_getKeyPath();
  (*(v4 + 32))(v50, v49, v48);
  static Font.Weight.bold.getter();
  sub_1000D6974();
  View.fontWeight(_:)();
  sub_1000D6A68(v50);
  v102 = v88;
  v103 = v89;

  v55 = Text.init<A>(_:)();
  v57 = v56;
  v59 = v58;
  if (qword_100141D40 != -1)
  {
    swift_once();
  }

  v60 = Text.font(_:)();
  v62 = v61;
  v64 = v63;
  sub_10000BFBC(v55, v57, v59 & 1);

  if (qword_100141D48 != -1)
  {
    swift_once();
  }

  v65 = Text.fontWeight(_:)();
  v67 = v66;
  LODWORD(v93) = v68;
  v98 = v69;
  sub_10000BFBC(v60, v62, v64 & 1);

  v70 = swift_getKeyPath();
  v72 = v94;
  v71 = v95;
  v73 = *(v95 + 16);
  v74 = v99;
  v75 = v96;
  v73(v94, v99, v96);
  v76 = v97;
  v73(v97, v72, v75);
  v77 = &v76[*(sub_100002D44(&qword_100147F98) + 48)];
  *v77 = v65;
  *(v77 + 1) = v67;
  LOBYTE(v76) = v93 & 1;
  v77[16] = v93 & 1;
  *(v77 + 3) = v98;
  *(v77 + 4) = v70;
  *(v77 + 5) = 2;
  v77[48] = 0;
  sub_100003B04(v65, v67, v76);
  v78 = *(v71 + 8);

  v78(v74, v75);
  sub_10000BFBC(v65, v67, v76);

  return (v78)(v72, v75);
}

uint64_t sub_1000D680C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100147F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D68A8(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.imageScale.setter();
}

unint64_t sub_1000D6974()
{
  result = qword_100147F88;
  if (!qword_100147F88)
  {
    sub_100004370(&qword_100147F70);
    sub_100004370(&qword_100142990);
    sub_1000149E0();
    swift_getOpaqueTypeConformance2();
    sub_100004610(&qword_100147F90, &qword_100147F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147F88);
  }

  return result;
}

uint64_t sub_1000D6A68(uint64_t a1)
{
  v2 = sub_100002D44(&qword_100147F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000D6AD4()
{
  result = qword_100147FA0;
  if (!qword_100147FA0)
  {
    sub_100004370(&qword_100147F60);
    sub_100004610(qword_100147FA8, &qword_100147F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100147FA0);
  }

  return result;
}

uint64_t sub_1000D6B8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000D6BC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D6BE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1000D6C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v23 = a6;
  v21 = a7;
  v22 = a5;
  v19 = a1;
  v20 = a3;
  v9 = type metadata accessor for CoordinateSpace();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SizeModifier();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v19 - v16;
  (*(v10 + 16))(v12, a2, v9, v15);
  sub_100082968(v19, v12, v20, a4, v17);

  View.modifier<A>(_:)();
  return (*(v14 + 8))(v17, v13);
}

uint64_t getEnumTagSinglePayload for MusicRecognitionLifeCycle.OriginType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicRecognitionLifeCycle.OriginType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000D6F50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 50;
  v4 = 0xE100000000000000;
  v5 = 57;
  if (a1 != 5)
  {
    v5 = 12337;
    v4 = 0xE200000000000000;
  }

  v6 = 55;
  if (a1 != 3)
  {
    v6 = 56;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE100000000000000;
  }

  v7 = 51;
  if (a1 != 1)
  {
    v7 = 53;
  }

  if (a1)
  {
    v3 = v7;
  }

  if (a1 <= 2u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = 0xE100000000000000;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 2u)
  {
    v10 = 0xE100000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v8 != 51)
        {
          goto LABEL_38;
        }
      }

      else if (v8 != 53)
      {
        goto LABEL_38;
      }
    }

    else if (v8 != 50)
    {
      goto LABEL_38;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v10 = 0xE100000000000000;
      if (v8 != 57)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v10 = 0xE200000000000000;
      if (v8 != 12337)
      {
LABEL_38:
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_39;
      }
    }
  }

  else
  {
    v10 = 0xE100000000000000;
    if (a2 == 3)
    {
      if (v8 != 55)
      {
        goto LABEL_38;
      }
    }

    else if (v8 != 56)
    {
      goto LABEL_38;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_38;
  }

  v11 = 1;
LABEL_39:

  return v11 & 1;
}

Swift::Int sub_1000D70D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D71A4()
{
  v0 = type metadata accessor for Logger();
  sub_10000D0C8(v0, qword_100148030);
  sub_10000BEC4(v0, qword_100148030);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000D7220(char a1)
{
  result = 0x6572616873;
  switch(a1)
  {
    case 1:
      result = 0x6973754D6E65706FLL;
      break;
    case 2:
      result = 2036427888;
      break;
    case 3:
      result = 0x7265764F6E65706FLL;
      break;
    case 4:
      result = 0x726968546E65706FLL;
      break;
    case 5:
      result = 0x7A6168536E65706FLL;
      break;
    case 6:
      result = 0x64616F6C6E776F64;
      break;
    case 7:
      result = 0x62694C6F54646461;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x73616C436E65706FLL;
      break;
    case 10:
      result = 0x616C506F54646461;
      break;
    case 11:
      v3 = 1852141679;
      goto LABEL_6;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x6C65636E6163;
      break;
    case 14:
      result = 0x7972746572;
      break;
    case 15:
      result = 0x7473694877656976;
      break;
    case 16:
      v3 = 2003134838;
LABEL_6:
      result = v3 | 0x6374614D00000000;
      break;
    case 17:
      result = 0x74726F53706174;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000D7488(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 49;
    v7 = 52;
    v8 = 53;
    if (a1 != 3)
    {
      v8 = 54;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 51;
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
    v1 = 12337;
    v2 = 12849;
    if (a1 != 9)
    {
      v2 = 13105;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 55;
    v4 = 56;
    if (a1 != 6)
    {
      v4 = 57;
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

uint64_t sub_1000D75C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000D856C();
  *a1 = result;
  return result;
}

uint64_t sub_1000D75F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D7220(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000D7634(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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

Swift::Int sub_1000D76E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D7764(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_1000D77D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000D783C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D85C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000D786C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000D7488(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000D789C()
{
  result = qword_100148048;
  if (!qword_100148048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148048);
  }

  return result;
}

uint64_t sub_1000D7908()
{
  String.hash(into:)();
}

unint64_t sub_1000D79C8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D882C(*a1);
  *a2 = result;
  return result;
}

void sub_1000D79F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 50;
  v5 = 0xE100000000000000;
  v6 = 57;
  if (v2 != 5)
  {
    v6 = 12337;
    v5 = 0xE200000000000000;
  }

  v7 = 55;
  if (v2 != 3)
  {
    v7 = 56;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE100000000000000;
  }

  v8 = 51;
  if (v2 != 1)
  {
    v8 = 53;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE100000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000D7A80(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1000D7BE0(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1000D7CDC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1000D7BE0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    v14 = (*(a3 + 56) + 16 * v11);
    v16 = *v14;
    v15 = v14[1];
    v17 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v18 = v17;
    }

    if (v18)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1000D7D54(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_1000D7D54(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000D7CDC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1000D7BE0(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1000D7D54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100002D44(&qword_100147F20);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000D7FAC(char a1, unsigned __int8 a2, char a3)
{
  v6 = a2;
  sub_100002D44(&qword_100144F68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F6160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v8;
  *(inited + 48) = sub_1000D7220(a1);
  *(inited + 56) = v9;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v10;
  if (v6 == 11)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v11 = sub_1000D7488(a2);
  }

  *(inited + 80) = v11;
  *(inited + 88) = v12;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v13;
  if (a3 != 2)
  {
    if (a3)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (a3)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = v15;
    String.append(_:)(*&v14);
  }

  *(inited + 112) = 0;
  *(inited + 120) = 0xE000000000000000;
  v17 = sub_1000D5660(inited);
  swift_setDeallocating();
  sub_100002D44(&unk_100144F70);
  swift_arrayDestroy();
  v18 = sub_1000D7A80(v17);

  sub_100002D44(&qword_100148050);
  result = static _DictionaryStorage.copy(original:)();
  v20 = result;
  v21 = 0;
  v39 = result;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v18 + 64);
  v25 = (v22 + 63) >> 6;
  v38 = result + 64;
  if (v24)
  {
    while (1)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_21:
      v29 = v26 | (v21 << 6);
      v30 = (*(v18 + 48) + 16 * v29);
      v31 = *v30;
      v32 = v30[1];

      v33 = String._bridgeToObjectiveC()();

      v20 = v39;
      *(v38 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v34 = (v39[6] + 16 * v29);
      *v34 = v31;
      v34[1] = v32;
      *(v39[7] + 8 * v29) = v33;
      v35 = v39[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        break;
      }

      v39[2] = v37;
      if (!v24)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {

        return v20;
      }

      v28 = *(v18 + 64 + 8 * v21);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D82A0(char a1, unsigned __int8 a2)
{
  sub_100002D44(&qword_100144F68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F7970;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = 48;
  if (a1)
  {
    v6 = 49;
  }

  *(inited + 40) = v5;
  *(inited + 48) = v6;
  v7 = 0xE100000000000000;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v8;
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = 51;
      }

      else
      {
        v9 = 53;
      }
    }

    else
    {
      v9 = 50;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v9 = 57;
    }

    else
    {
      v7 = 0xE200000000000000;
      v9 = 12337;
    }
  }

  else if (a2 == 3)
  {
    v9 = 55;
  }

  else
  {
    v9 = 56;
  }

  *(inited + 80) = v9;
  *(inited + 88) = v7;
  v10 = sub_1000D5660(inited);
  swift_setDeallocating();
  sub_100002D44(&unk_100144F70);
  swift_arrayDestroy();
  v11 = sub_1000D7A80(v10);

  sub_100002D44(&qword_100148050);
  result = static _DictionaryStorage.copy(original:)();
  v13 = result;
  v14 = 0;
  v32 = result;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v11 + 64);
  v18 = (v15 + 63) >> 6;
  v31 = result + 64;
  if (v17)
  {
    while (1)
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_25:
      v22 = v19 | (v14 << 6);
      v23 = (*(v11 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];

      v26 = String._bridgeToObjectiveC()();

      v13 = v32;
      *(v31 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v27 = (v32[6] + 16 * v22);
      *v27 = v24;
      v27[1] = v25;
      *(v32[7] + 8 * v22) = v26;
      v28 = v32[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v32[2] = v30;
      if (!v17)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        return v13;
      }

      v21 = *(v11 + 64 + 8 * v14);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D856C()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1000D85C0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100135178, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for MusicRecognitionLifeCycle.ActionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicRecognitionLifeCycle.ActionType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000D8770()
{
  result = qword_100148058;
  if (!qword_100148058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148058);
  }

  return result;
}

unint64_t sub_1000D87D8()
{
  result = qword_100148060;
  if (!qword_100148060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148060);
  }

  return result;
}

unint64_t sub_1000D882C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001352A0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D8914@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1000D93F4(&qword_1001476F8, type metadata accessor for SongArtworkViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *a1;
  swift_beginAccess();
  return sub_100008790(v2 + v5, a2);
}

uint64_t sub_1000D89F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000D93F4(&qword_1001476F8, type metadata accessor for SongArtworkViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  return sub_100008790(v5 + v6, a3);
}

uint64_t sub_1000D8AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_100008790(a1, &v11 - v8);
  return sub_1000D8BC0(v9, a5);
}

uint64_t sub_1000D8BC0(uint64_t a1, uint64_t *a2)
{
  v5 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  v8 = *a2;
  swift_beginAccess();
  sub_100008790(v2 + v8, v7);
  LOBYTE(a2) = sub_1000D900C(v7, a1);
  sub_100007E14(v7, &unk_100144630);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[2] = v2;
    sub_1000D93F4(&qword_1001476F8, type metadata accessor for SongArtworkViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_1000D92FC(a1, v2 + v8);
    swift_endAccess();
  }

  return sub_100007E14(a1, &unk_100144630);
}

uint64_t sub_1000D8DA0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_1000D92FC(a2, a1 + v5);
  return swift_endAccess();
}

uint64_t sub_1000D8E08()
{
  sub_100007E14(v0 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel__artworkURL, &unk_100144630);
  sub_100007E14(v0 + OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___animatedArtworkURL, &unk_100144630);
  v1 = OBJC_IVAR____TtC16MusicRecognition20SongArtworkViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for SongArtworkViewModel()
{
  result = qword_1001480A8;
  if (!qword_1001480A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D8F40()
{
  sub_1000085D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000D900C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_100002D44(&qword_100148140);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_100008790(a1, &v21 - v13);
  sub_100008790(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100008790(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1000D93F4(&qword_100144DF0, &type metadata accessor for URL);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100007E14(v14, &unk_100144630);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_100007E14(v14, &qword_100148140);
    v17 = 1;
    return v17 & 1;
  }

  sub_100007E14(v14, &unk_100144630);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1000D92FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&unk_100144630);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D93F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D94C4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1000D9520(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000D9580()
{
  v1 = *v0;
  v8 = LocalizedStringKey.init(stringLiteral:)();
  v9 = v2;
  LOBYTE(v10) = v3 & 1;
  v11 = v4;
  v5 = objc_allocWithZone(sub_100002D44(&qword_100148148));
  v6 = UIHostingController.init(rootView:)();
  if (v1)
  {
    [v1 setPresentingViewController:{v6, v8, v9, v10, v11}];
  }

  return v6;
}

uint64_t sub_1000D9620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D9714();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000D9684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000D9714();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000D96E8()
{
  sub_1000D9714();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000D9714()
{
  result = qword_100148150;
  if (!qword_100148150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148150);
  }

  return result;
}

uint64_t sub_1000D9768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a5;
  v30[1] = a4;
  v32 = a6;
  v9 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  v12 = type metadata accessor for ShazamUpsellOverlayModifier(0);
  __chkstk_darwin(v12);
  v14 = (v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v30 - v20;
  sub_100007FDC(a1, v11, &unk_100144630);
  sub_100089B20(v11, v14);
  v22 = v12[6];
  *(v14 + v22) = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8);
  swift_storeEnumTagMultiPayload();
  v23 = v12[7];
  *(v14 + v23) = swift_getKeyPath();
  sub_100002D44(&qword_1001420D8);
  swift_storeEnumTagMultiPayload();
  v35 = 0x4051800000000000;
  sub_100080214();
  ScaledMetric.init(wrappedValue:)();
  v24 = (v14 + v12[5]);
  *v24 = a2;
  v24[1] = a3;
  sub_10002F7D4(a2);
  v25 = v31;
  View.modifier<A>(_:)();
  sub_1000DABE8(v14);
  v26 = sub_1000DBFE4(&qword_100143A20, type metadata accessor for ShazamUpsellOverlayModifier);
  v33 = v25;
  v34 = v26;
  WitnessTable = swift_getWitnessTable();
  sub_1000B03E4(v18, v15, WitnessTable);
  v28 = *(v16 + 8);
  v28(v18, v15);
  sub_1000B03E4(v21, v15, WitnessTable);
  return (v28)(v21, v15);
}

double sub_1000D9AD8()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002D44(&qword_100144138);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_100002D44(&qword_1001420F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  type metadata accessor for ShazamUpsellOverlay(0);
  sub_1000413BC(v15);
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_100007FDC(v15, v6, &qword_1001420F8);
  sub_100007FDC(v12, &v6[v16], &qword_1001420F8);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_100007E14(v12, &qword_1001420F8);
    sub_100007E14(v15, &qword_1001420F8);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_100007E14(v6, &qword_1001420F8);
      return 8.0;
    }

    goto LABEL_6;
  }

  sub_100007FDC(v6, v9, &qword_1001420F8);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_100007E14(v12, &qword_1001420F8);
    sub_100007E14(v15, &qword_1001420F8);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_100007E14(v6, &qword_100144138);
    return 80.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_1000DBFE4(&qword_1001441B8, &type metadata accessor for UserInterfaceSizeClass);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_100007E14(v12, &qword_1001420F8);
  sub_100007E14(v15, &qword_1001420F8);
  v22(v9, v0);
  sub_100007E14(v6, &qword_1001420F8);
  result = 80.0;
  if (v21)
  {
    return 8.0;
  }

  return result;
}

double sub_1000D9F44()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002D44(&qword_100144138);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = sub_100002D44(&qword_1001420F8);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  type metadata accessor for ShazamUpsellOverlay(0);
  sub_1000413BC(v15);
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_100007FDC(v15, v6, &qword_1001420F8);
  sub_100007FDC(v12, &v6[v16], &qword_1001420F8);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) == 1)
  {
    sub_100007E14(v12, &qword_1001420F8);
    sub_100007E14(v15, &qword_1001420F8);
    if (v17(&v6[v16], 1, v0) == 1)
    {
      sub_100007E14(v6, &qword_1001420F8);
      return 10.0;
    }

    goto LABEL_6;
  }

  sub_100007FDC(v6, v9, &qword_1001420F8);
  if (v17(&v6[v16], 1, v0) == 1)
  {
    sub_100007E14(v12, &qword_1001420F8);
    sub_100007E14(v15, &qword_1001420F8);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_100007E14(v6, &qword_100144138);
    return 28.0;
  }

  v19 = &v6[v16];
  v20 = v24;
  (*(v1 + 32))(v24, v19, v0);
  sub_1000DBFE4(&qword_1001441B8, &type metadata accessor for UserInterfaceSizeClass);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v1 + 8);
  v22(v20, v0);
  sub_100007E14(v12, &qword_1001420F8);
  sub_100007E14(v15, &qword_1001420F8);
  v22(v9, v0);
  sub_100007E14(v6, &qword_1001420F8);
  result = 28.0;
  if (v21)
  {
    return 10.0;
  }

  return result;
}

uint64_t sub_1000DA3A8@<X0>(uint64_t a1@<X8>)
{
  v48[1] = a1;
  v48[0] = sub_100002D44(&qword_100142950);
  __chkstk_darwin(v48[0]);
  v54 = v48 - v2;
  v3 = type metadata accessor for ShazamUpsellOverlay(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v53 = sub_100002D44(&qword_100148318);
  __chkstk_darwin(v53);
  v8 = v48 - v7;
  v9 = (v1 + *(v4 + 32));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[3];
  v51 = v9[2];
  v52 = v10;
  sub_1000DC5B4(v1, v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShazamUpsellOverlay);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1000DBE0C(v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_1000DC5B4(v1, v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShazamUpsellOverlay);
  v15 = swift_allocObject();
  sub_1000DBE0C(v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);

  LOBYTE(v4) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v55 = 0;
  v24 = static Alignment.center.getter();
  v49 = v25;
  v50 = v24;
  v26 = &v8[*(sub_100002D44(&qword_100148320) + 36)];
  v27 = *(type metadata accessor for RoundedRectangle() + 20);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  __asm { FMOV            V0.2D, #16.0 }

  *v26 = _Q0;
  *&v26[*(sub_100002D44(&qword_100143758) + 36)] = 256;
  v35 = v51;
  *v8 = v52;
  *(v8 + 1) = v11;
  v37 = v53;
  v36 = v54;
  *(v8 + 2) = v35;
  *(v8 + 3) = v12;
  *(v8 + 2) = 0u;
  *(v8 + 3) = 0u;
  *(v8 + 8) = sub_1000DC620;
  *(v8 + 9) = v14;
  *(v8 + 10) = sub_1000DC9A4;
  *(v8 + 11) = v15;
  v8[96] = v4;
  *(v8 + 97) = *v57;
  *(v8 + 25) = *&v57[3];
  *(v8 + 13) = v17;
  *(v8 + 14) = v19;
  *(v8 + 15) = v21;
  *(v8 + 16) = v23;
  v8[136] = 0;
  *(v8 + 35) = *&v56[3];
  *(v8 + 137) = *v56;
  *(v8 + 18) = 9;
  v38 = v49;
  *(v8 + 19) = v50;
  *(v8 + 20) = v38;
  v39 = sub_1000D9AD8();
  v40 = sub_1000D9F44();
  v41 = sub_1000D9AD8();
  LOBYTE(v28) = static Edge.Set.all.getter();
  v42 = &v8[*(sub_100002D44(&qword_100148328) + 36)];
  *v42 = v28;
  *(v42 + 1) = 0x4020000000000000;
  *(v42 + 2) = v39;
  *(v42 + 3) = v40;
  *(v42 + 4) = v41;
  v42[40] = 0;
  static Color.black.getter();
  v43 = Color.opacity(_:)();

  v44 = &v8[*(v37 + 36)];
  *v44 = v43;
  v44[1] = 0x4034000000000000;
  v44[2] = 0;
  v44[3] = 0;
  v45 = enum case for DynamicTypeSize.xLarge(_:);
  v46 = type metadata accessor for DynamicTypeSize();
  (*(*(v46 - 8) + 104))(v36, v45, v46);
  sub_1000DBFE4(&qword_1001429E8, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1000DCA14();
    sub_100004610(&qword_1001429F0, &qword_100142950);
    View.dynamicTypeSize<A>(_:)();
    sub_100007E14(v36, &qword_100142950);
    return sub_100007E14(v8, &qword_100148318);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000DA8B8(uint64_t a1)
{
  v16 = type metadata accessor for OpenURLAction();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for ShazamUpsellOverlay(0) + 24);
  v13 = type metadata accessor for ShazamUpsellViewModel();
  sub_100007FDC(v12 + *(v13 + 24), v7, &unk_100144630);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100007E14(v7, &unk_100144630);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_100041144(v4);
  OpenURLAction.callAsFunction(_:)();
  (*(v2 + 8))(v4, v16);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000DAB1C(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  result = type metadata accessor for ShazamUpsellOverlay(0);
  v10 = (a2 + *(result + 28));
  if (*v10)
  {
    return (*v10)();
  }

  return result;
}

uint64_t sub_1000DABE8(uint64_t a1)
{
  v2 = type metadata accessor for ShazamUpsellOverlayModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DAC58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ShazamUpsellViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  v14 = sub_100002D44(&qword_100143280);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v15 = *(v14 - 8);
    v16 = a3[6];
LABEL_13:
    v9 = *(v15 + 48);
    v10 = a1 + v16;
    goto LABEL_14;
  }

  v17 = sub_100002D44(&qword_100143E20);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v15 = *(v17 - 8);
    v16 = a3[7];
    goto LABEL_13;
  }

  v18 = sub_100002D44(&qword_100148158);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[8];

  return v19(v20, a2, v18);
}

uint64_t sub_1000DAE58(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for ShazamUpsellViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5]) = a2;
    return result;
  }

  v13 = sub_100002D44(&qword_100143280);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100002D44(&qword_100143E20);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v17 = sub_100002D44(&qword_100148158);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[8];

  return v18(v19, a2, a2, v17);
}

void sub_1000DB038()
{
  type metadata accessor for ShazamUpsellViewModel();
  if (v0 <= 0x3F)
  {
    sub_1000DB178(319, &qword_100142230, &qword_100142238, &unk_1000FE070, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000DC45C(319, &qword_1001432F0, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_1000DB178(319, &qword_100143E90, &qword_1001420F8, &unk_1000F52A0, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1000DB1DC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000DB178(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100004370(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1000DB1DC()
{
  if (!qword_1001481C8)
  {
    sub_100080214();
    v0 = type metadata accessor for ScaledMetric();
    if (!v1)
    {
      atomic_store(v0, &qword_1001481C8);
    }
  }
}

uint64_t sub_1000DB254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v54 = sub_100002D44(&qword_100148220);
  __chkstk_darwin(v54);
  v56 = &v45 - v3;
  v55 = sub_100002D44(&qword_100148228);
  __chkstk_darwin(v55);
  v47 = &v45 - v4;
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002D44(&qword_100144138);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v49 = &v45 - v9;
  v10 = sub_100002D44(&qword_1001420F8);
  __chkstk_darwin(v10 - 8);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v58 = &v45 - v13;
  __chkstk_darwin(v14);
  v59 = &v45 - v15;
  v16 = type metadata accessor for ShazamUpsellOverlay(0);
  v17 = (v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_100002D44(&qword_100148230);
  __chkstk_darwin(v20);
  v22 = &v45 - v21;
  sub_1000DC5B4(a1, v19 + v17[8], type metadata accessor for ShazamUpsellViewModel);
  v23 = (a1 + *(type metadata accessor for ShazamUpsellOverlayModifier(0) + 20));
  v24 = *v23;
  v25 = v23[1];
  *v19 = swift_getKeyPath();
  sub_100002D44(&qword_1001422A0);
  swift_storeEnumTagMultiPayload();
  v26 = v17[7];
  *(v19 + v26) = swift_getKeyPath();
  sub_100002D44(&qword_1001420D8);
  v27 = v49;
  swift_storeEnumTagMultiPayload();
  v28 = (v19 + v17[9]);
  *v28 = v24;
  v28[1] = v25;
  sub_10002F7D4(v24);
  sub_100002D44(&qword_100148158);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_1000DBE0C(v19, v22);
  v52 = v20;
  v53 = v22;
  v29 = &v22[*(v20 + 36)];
  v30 = v50;
  v31 = v51;
  v32 = v61;
  *v29 = v60;
  *(v29 + 1) = v32;
  *(v29 + 2) = v62;
  v33 = v59;
  sub_1000413BC(v59);
  v34 = v58;
  (*(v30 + 104))(v58, enum case for UserInterfaceSizeClass.compact(_:), v31);
  (*(v30 + 56))(v34, 0, 1, v31);
  v35 = *(v8 + 56);
  sub_100007FDC(v33, v27, &qword_1001420F8);
  sub_100007FDC(v34, v27 + v35, &qword_1001420F8);
  v36 = *(v30 + 48);
  if (v36(v27, 1, v31) == 1)
  {
    sub_100007E14(v34, &qword_1001420F8);
    sub_100007E14(v33, &qword_1001420F8);
    v37 = v36(v27 + v35, 1, v31);
    v38 = v53;
    if (v37 == 1)
    {
      sub_100007E14(v27, &qword_1001420F8);
LABEL_9:
      v43 = v47;
      sub_1000DBA6C(v38, v47);
      sub_100007FDC(v43, v56, &qword_100148228);
      swift_storeEnumTagMultiPayload();
      sub_1000DBE70();
      sub_1000DBF28();
      _ConditionalContent<>.init(storage:)();
      sub_100007E14(v43, &qword_100148228);
      return sub_100007E14(v38, &qword_100148230);
    }

    goto LABEL_6;
  }

  v39 = v48;
  sub_100007FDC(v27, v48, &qword_1001420F8);
  if (v36(v27 + v35, 1, v31) == 1)
  {
    sub_100007E14(v58, &qword_1001420F8);
    sub_100007E14(v59, &qword_1001420F8);
    (*(v30 + 8))(v39, v31);
    v38 = v53;
LABEL_6:
    sub_100007E14(v27, &qword_100144138);
    goto LABEL_7;
  }

  v40 = v46;
  (*(v30 + 32))(v46, v27 + v35, v31);
  sub_1000DBFE4(&qword_1001441B8, &type metadata accessor for UserInterfaceSizeClass);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = *(v30 + 8);
  v42(v40, v31);
  sub_100007E14(v58, &qword_1001420F8);
  sub_100007E14(v59, &qword_1001420F8);
  v42(v39, v31);
  sub_100007E14(v27, &qword_1001420F8);
  v38 = v53;
  if (v41)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_100007FDC(v38, v56, &qword_100148230);
  swift_storeEnumTagMultiPayload();
  sub_1000DBE70();
  sub_1000DBF28();
  _ConditionalContent<>.init(storage:)();
  return sub_100007E14(v38, &qword_100148230);
}

__n128 sub_1000DBA6C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  sub_100002D44(&qword_100148260);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000F7970;
  type metadata accessor for ShazamUpsellOverlayModifier(0);
  sub_10004116C(v10);
  (*(v5 + 104))(v7, enum case for ColorScheme.light(_:), v4);
  v12 = static ColorScheme.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v7, v4);
  v13(v10, v4);
  if (v12)
  {
    v14 = [objc_opt_self() systemGray6Color];
    v15 = Color.init(uiColor:)();
  }

  else
  {
    v15 = static Color.black.getter();
  }

  *(v11 + 32) = v15;
  *(v11 + 40) = static Color.clear.getter();
  Gradient.init(colors:)();
  static UnitPoint.bottom.getter();
  static UnitPoint.center.getter();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v16 = v20[1];
  v17 = static Edge.Set.all.getter();
  sub_100007FDC(a1, a2, &qword_100148230);
  v18 = a2 + *(sub_100002D44(&qword_100148228) + 36);
  *v18 = v16;
  result = v21;
  *(v18 + 24) = v22;
  *(v18 + 8) = result;
  *(v18 + 40) = v17;
  return result;
}

uint64_t sub_1000DBCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = static HorizontalAlignment.center.getter();
  v7 = a2 + *(sub_100002D44(&qword_100148208) + 36);
  sub_1000DB254(v3, v7);
  VerticalEdge.rawValue.getter();
  LOBYTE(v3) = Edge.init(rawValue:)();
  v8 = static SafeAreaRegions.container.getter();
  v9 = v7 + *(sub_100002D44(&qword_100148210) + 36);
  *v9 = v8;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  *(v9 + 17) = v3;
  *(v9 + 24) = v6;
  v10 = sub_100002D44(&qword_100148218);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_1000DBE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamUpsellOverlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000DBE70()
{
  result = qword_100148238;
  if (!qword_100148238)
  {
    sub_100004370(&qword_100148228);
    sub_1000DBF28();
    sub_100004610(&qword_100148250, &qword_100148258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148238);
  }

  return result;
}

unint64_t sub_1000DBF28()
{
  result = qword_100148240;
  if (!qword_100148240)
  {
    sub_100004370(&qword_100148230);
    sub_1000DBFE4(&qword_100148248, type metadata accessor for ShazamUpsellOverlay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148240);
  }

  return result;
}

uint64_t sub_1000DBFE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000DC040(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002D44(&qword_1001421C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002D44(&qword_100143E20);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for ShazamUpsellViewModel();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1000DC1CC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002D44(&qword_1001421C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100002D44(&qword_100143E20);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for ShazamUpsellViewModel();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000DC334()
{
  sub_1000DC45C(319, &qword_100142248, &type metadata accessor for OpenURLAction);
  if (v0 <= 0x3F)
  {
    sub_1000DB178(319, &qword_100143E90, &qword_1001420F8, &unk_1000F52A0, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ShazamUpsellViewModel();
      if (v2 <= 0x3F)
      {
        sub_1000DB178(319, &qword_100142230, &qword_100142238, &unk_1000FE070, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000DC45C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000DC4B4()
{
  result = qword_100148300;
  if (!qword_100148300)
  {
    sub_100004370(&qword_100148208);
    sub_100004610(&qword_100148308, &qword_100148218);
    sub_100004610(&qword_100148310, &qword_100148210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148300);
  }

  return result;
}

uint64_t sub_1000DC5B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DC620()
{
  v1 = *(type metadata accessor for ShazamUpsellOverlay(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000DA8B8(v2);
}

uint64_t sub_1000DC680()
{
  v1 = type metadata accessor for ShazamUpsellOverlay(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v17 = (v2 + 16) & ~v2;
  v18 = v0;
  v3 = v0 + v17;
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  else
  {
  }

  v5 = v1[5];
  sub_100002D44(&qword_1001420D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for UserInterfaceSizeClass();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v3 + v1[6];

  v9 = type metadata accessor for ShazamUpsellViewModel();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v8 + v10, 1, v11))
  {
    (*(v12 + 8))(v8 + v10, v11);
  }

  v14 = *(v9 + 40);
  if (!v13(v8 + v14, 1, v11))
  {
    (*(v12 + 8))(v8 + v14, v11);
  }

  if (*(v3 + v1[7]))
  {
  }

  return _swift_deallocObject(v18, v17 + v16, v2 | 7);
}

uint64_t sub_1000DC9A4(uint64_t a1)
{
  v3 = *(type metadata accessor for ShazamUpsellOverlay(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000DAB1C(a1, v4);
}

unint64_t sub_1000DCA14()
{
  result = qword_100148330;
  if (!qword_100148330)
  {
    sub_100004370(&qword_100148318);
    sub_1000DCACC(&qword_100148338, &qword_100148328, &unk_1000FE1D8, sub_1000DCB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148330);
  }

  return result;
}

uint64_t sub_1000DCACC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000DCB50()
{
  result = qword_100148340;
  if (!qword_100148340)
  {
    sub_100004370(&qword_100148320);
    sub_1000DCC08();
    sub_100004610(&qword_100145808, &qword_100143758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148340);
  }

  return result;
}

unint64_t sub_1000DCC08()
{
  result = qword_100148348;
  if (!qword_100148348)
  {
    sub_100004370(&qword_100148350);
    sub_1000DCACC(&qword_100148358, &qword_100148360, &unk_1000FE1E8, sub_10006EB60);
    sub_100004610(&qword_100148368, &qword_100148370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148348);
  }

  return result;
}

uint64_t sub_1000DCCEC()
{
  sub_100004370(&qword_100148318);
  sub_100004370(&qword_100142950);
  sub_1000DCA14();
  sub_100004610(&qword_1001429F0, &qword_100142950);
  return swift_getOpaqueTypeConformance2();
}

id sub_1000DCDB4()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.447058824 green:0.447058824 blue:0.447058824 alpha:0.6];
  qword_100148378 = result;
  return result;
}

int64x2_t sub_1000DCE04()
{
  result = vdupq_n_s64(0x4042000000000000uLL);
  xmmword_100148380 = result;
  return result;
}

void sub_1000DCE1C()
{
  v1 = v0;
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v2];
  v3 = objc_opt_self();
  sub_100002D44(&qword_100142810);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000F57E0;
  v5 = [v2 centerXAnchor];
  v6 = [v1 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 centerYAnchor];
  v9 = [v1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v2 heightAnchor];
  if (qword_100141D70 != -1)
  {
    swift_once();
  }

  v12 = [v11 constraintEqualToConstant:*(&xmmword_100148380 + 1)];

  *(v4 + 48) = v12;
  v13 = [v2 widthAnchor];
  v14 = [v13 constraintEqualToConstant:*&xmmword_100148380];

  *(v4 + 56) = v14;
  sub_1000123E4(0, &qword_100143260);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];
}

void sub_1000DD230()
{
  sub_100002D44(&qword_100142810);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000FE200;
  v2 = objc_opt_self();
  *(v1 + 32) = [v2 whiteColor];
  *(v1 + 40) = [v2 whiteColor];
  if (qword_100141D68 != -1)
  {
    swift_once();
  }

  v3 = qword_100148378;
  *(v1 + 48) = qword_100148378;
  sub_1000123E4(0, &qword_100142E20);
  v4 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [objc_opt_self() configurationWithPaletteColors:isa];

  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

  v10 = *(v0 + OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView);
  [v10 setImage:v9];
  [v10 transform];
  CGAffineTransformScale(&v14, &aBlock, 0.9, 0.9);
  aBlock = v14;
  [v10 setTransform:&aBlock];
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&aBlock.tx = sub_1000DD624;
  *&aBlock.ty = v12;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1000C1C84;
  *&aBlock.d = &unk_10013A518;
  v13 = _Block_copy(&aBlock);

  [v11 animateWithDuration:24 delay:v13 options:0 animations:1.2 completion:0.0];

  _Block_release(v13);
}

void sub_1000DD52C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16MusicRecognition30AmbientCompactMatchingFlowView_imageView);

    v3[0] = 0x3FF0000000000000;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = 0x3FF0000000000000;
    v3[4] = 0;
    v3[5] = 0;
    [v2 setTransform:v3];
  }
}

uint64_t sub_1000DD5EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000DD62C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000DD644()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  qword_1001483C0 = v2;
}

uint64_t sub_1000DD6B4(uint64_t *a1, int a2)
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

uint64_t sub_1000DD6FC(uint64_t result, int a2, int a3)
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

__n128 sub_1000DD768@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100002D44(&qword_1001483C8);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v9 = sub_100002D44(&qword_1001483D0);
  sub_1000DD8B8(a1, a2, &v8[*(v9 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000DF634(v8, a3);
  v10 = a3 + *(sub_100002D44(&qword_1001483D8) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_1000DD8B8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_100002D44(&qword_1001483E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_100002D44(&qword_1001483E8);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  v21 = static HorizontalAlignment.leading.getter();
  v22 = 0x3FF0000000000000;
  if (a2)
  {
    v22 = 0x4000000000000000;
  }

  *v17 = v21;
  *(v17 + 1) = v22;
  v17[16] = 0;
  v23 = sub_100002D44(&qword_1001483F0);
  sub_1000DDAFC(a1, a2, &v17[*(v23 + 44)]);
  sub_10002F250(v17, v20, &qword_1001483E8);
  sub_1000DE7B0(v11);
  sub_100007FDC(v20, v14, &qword_1001483E8);
  sub_1000DF6A4(v11, v8);
  sub_100007FDC(v14, a3, &qword_1001483E8);
  v24 = sub_100002D44(&qword_1001483F8);
  sub_1000DF6A4(v8, a3 + *(v24 + 48));
  sub_1000DF714(v11);
  sub_100007E14(v20, &qword_1001483E8);
  sub_1000DF714(v8);
  return sub_100007E14(v14, &qword_1001483E8);
}

uint64_t sub_1000DDAFC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v5 = sub_100002D44(&qword_100148460);
  __chkstk_darwin(v5 - 8);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v40 - v8;
  v9 = sub_100002D44(&qword_1001462D0);
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_100002D44(&qword_100148468);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v19 = sub_100002D44(&qword_100148470);
  __chkstk_darwin(v19 - 8);
  v44 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v40 - v23;
  v25 = [a1 title];
  if (v25)
  {
    v41 = v15;
    v26 = v24;
    v27 = a2;
    v28 = a1;
    v29 = v11;
    v30 = v25;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = v29;
    a1 = v28;
    a2 = v27;
    v24 = v26;
    *v18 = static VerticalAlignment.center.getter();
    *(v18 + 1) = 0x4014000000000000;
    v18[16] = 0;
    v31 = sub_100002D44(&qword_100148480);
    sub_1000DEED8(a1, a2 & 1, &v18[*(v31 + 44)]);

    sub_10002F250(v18, v26, &qword_100148468);
    (*(v16 + 56))(v26, 0, 1, v41);
  }

  else
  {
    (*(v16 + 56))(v24, 1, 1, v15);
  }

  sub_1000DE014(a1, v14);
  if (a2)
  {
    sub_1000DE2E4(a1, v11);
    sub_10002F250(v11, v47, &qword_1001462D0);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = v47;
  (*(v42 + 7))(v47, v32, 1, v43);
  v34 = v44;
  sub_100007FDC(v24, v44, &qword_100148470);
  sub_100007FDC(v14, v11, &qword_1001462D0);
  v43 = v14;
  v35 = v45;
  sub_100007FDC(v33, v45, &qword_100148460);
  v42 = v24;
  v36 = v33;
  v37 = v46;
  sub_100007FDC(v34, v46, &qword_100148470);
  v38 = sub_100002D44(&qword_100148478);
  sub_100007FDC(v11, v37 + *(v38 + 48), &qword_1001462D0);
  sub_100007FDC(v35, v37 + *(v38 + 64), &qword_100148460);
  sub_100007E14(v36, &qword_100148460);
  sub_100007E14(v43, &qword_1001462D0);
  sub_100007E14(v42, &qword_100148470);
  sub_100007E14(v35, &qword_100148460);
  sub_100007E14(v11, &qword_1001462D0);
  return sub_100007E14(v34, &qword_100148470);
}

uint64_t sub_1000DE014@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002D44(&qword_100143B50);
  v28 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = [a1 subtitle];
  if (v8 || (v8 = [a1 artist]) != 0)
  {
    v26 = v4;
    v27 = a2;
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static Font.caption.getter();
    v10 = Text.font(_:)();
    v12 = v11;
    v14 = v13;

    v29 = Color.init(_:bundle:)();
    v15 = Text.foregroundStyle<A>(_:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_10000BFBC(v10, v12, v14 & 1);

    v29 = v15;
    v30 = v17;
    v19 &= 1u;
    v31 = v19;
    v32 = v21;
    View.accessibilityIdentifier(_:)();
    sub_10000BFBC(v15, v17, v19);

    v22 = v27;
    sub_10002F250(v7, v27, &qword_100143B50);
    return (*(v28 + 56))(v22, 0, 1, v26);
  }

  else
  {
    v24 = *(v28 + 56);

    return v24(a2, 1, 1, v4);
  }
}

uint64_t sub_1000DE2E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v43 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.DateStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100002D44(&qword_100143B50);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v40 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v19 = [a1 creationDate];
  if (v19)
  {
    v20 = v19;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v41 = v11;
    v42 = v12;
    v21 = *(v12 + 32);
    v40 = v18;
    v21(v18, v14, v11);
    static Date.FormatStyle.DateStyle.long.getter();
    static Date.FormatStyle.TimeStyle.shortened.getter();
    Date.formatted(date:time:)();
    (*(v3 + 8))(v5, v43);
    (*(v7 + 8))(v9, v6);
    static Font.caption.getter();
    v22 = Text.font(_:)();
    v24 = v23;
    v26 = v25;

    v48 = Color.init(_:bundle:)();
    v27 = Text.foregroundStyle<A>(_:)();
    v29 = v28;
    v31 = v30;
    v32 = v46;
    v34 = v33;
    sub_10000BFBC(v22, v24, v26 & 1);

    v48 = v27;
    v49 = v29;
    LOBYTE(v22) = v31 & 1;
    v50 = v31 & 1;
    v51 = v34;
    v35 = v44;
    View.accessibilityIdentifier(_:)();
    sub_10000BFBC(v27, v29, v22);

    (*(v42 + 8))(v40, v41);
    sub_10002F250(v35, v32, &qword_100143B50);
    return (*(v47 + 56))(v32, 0, 1, v45);
  }

  else
  {
    v37 = v46;
    v38 = *(v47 + 56);
    v39 = v45;

    return v38(v37, 1, 1, v39);
  }
}

uint64_t sub_1000DE7B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002D44(&qword_100142950);
  __chkstk_darwin(v2);
  v4 = &v48 - v3;
  v5 = sub_100002D44(&qword_100148400);
  __chkstk_darwin(v5 - 8);
  v7 = &v48 - v6;
  v8 = type metadata accessor for Font.TextStyle();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100002D44(&qword_100148408);
  __chkstk_darwin(v59);
  v12 = &v48 - v11;
  v56 = sub_100002D44(&qword_100148410);
  __chkstk_darwin(v56);
  v14 = &v48 - v13;
  v15 = sub_100002D44(&qword_100148418);
  v60 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = &v48 - v16;
  type metadata accessor for SHLibrary();
  v17 = static SHLibrary.localizedAttribution(for:)();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v49 = v15;
    v50 = v2;
    v51 = a1;
    v53 = static Edge.Set.all.getter();
    LOBYTE(v63[0]) = 0;
    LOBYTE(v62[0]) = 0;
    v21 = [objc_opt_self() systemGray6Color];
    v22 = Color.init(uiColor:)();
    v54 = v4;
    v52 = v22;
    v23 = v14;
    v24 = static Edge.Set.all.getter();
    v25 = &v12[*(sub_100002D44(&qword_100148420) + 36)];
    v26 = *(type metadata accessor for RoundedRectangle() + 20);
    v27 = enum case for RoundedCornerStyle.continuous(_:);
    v28 = type metadata accessor for RoundedCornerStyle();
    (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
    __asm { FMOV            V0.2D, #4.0 }

    *v25 = _Q0;
    *&v25[*(sub_100002D44(&qword_100143758) + 36)] = 256;
    *v12 = v19;
    *(v12 + 1) = v20;
    v12[16] = 0;
    *(v12 + 17) = v63[0];
    *(v12 + 5) = *(v63 + 3);
    *(v12 + 3) = _swiftEmptyArrayStorage;
    v12[32] = v53;
    *(v12 + 33) = v62[0];
    *(v12 + 9) = *(v62 + 3);
    *(v12 + 40) = xmmword_1000FE240;
    *(v12 + 56) = xmmword_1000FE240;
    v12[72] = 0;
    *(v12 + 73) = *v61;
    *(v12 + 19) = *&v61[3];
    *(v12 + 10) = v52;
    v34 = v54;
    v12[88] = v24;
    v36 = v57;
    v35 = v58;
    (*(v57 + 104))(v10, enum case for Font.TextStyle.caption2(_:), v58);
    v37 = type metadata accessor for Font.Design();
    (*(*(v37 - 8) + 56))(v7, 1, 1, v37);
    static Font.Weight.semibold.getter();
    v38 = static Font.system(_:design:weight:)();
    sub_100007E14(v7, &qword_100148400);
    (*(v36 + 8))(v10, v35);
    KeyPath = swift_getKeyPath();
    v40 = &v12[*(sub_100002D44(&qword_100148428) + 36)];
    *v40 = KeyPath;
    v40[1] = v38;
    *&v12[*(v59 + 36)] = Color.init(_:bundle:)();
    sub_1000DF784();
    View.accessibilityIdentifier(_:)();
    sub_100007E14(v12, &qword_100148408);
    v41 = enum case for DynamicTypeSize.xxxLarge(_:);
    v42 = type metadata accessor for DynamicTypeSize();
    (*(*(v42 - 8) + 104))(v34, v41, v42);
    sub_1000800EC(&qword_1001429E8, &type metadata accessor for DynamicTypeSize);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_1000DFA64();
      sub_100004610(&qword_1001429F0, &qword_100142950);
      v44 = v55;
      View.dynamicTypeSize<A>(_:)();
      sub_100007E14(v34, &qword_100142950);
      sub_100007E14(v23, &qword_100148410);
      v45 = v51;
      v46 = v49;
      (*(v60 + 32))(v51, v44, v49);
      return (*(v60 + 56))(v45, 0, 1, v46);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v47 = *(v60 + 56);

    return v47(a1, 1, 1, v15);
  }

  return result;
}

uint64_t sub_1000DEED8@<X0>(void *a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v58 = a2;
  v59 = a1;
  v65 = a3;
  v55 = sub_100002D44(&qword_100148488);
  __chkstk_darwin(v55);
  v4 = (&v55 - v3);
  v62 = sub_100002D44(&qword_100148490);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = &v55 - v7;
  v8 = sub_100002D44(&qword_100148498);
  __chkstk_darwin(v8 - 8);
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v60 = &v55 - v11;
  v12 = sub_100002D44(&qword_1001484A0);
  __chkstk_darwin(v12 - 8);
  v61 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v55 - v15;

  static Font.callout.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  LODWORD(v71[0]) = static HierarchicalShapeStyle.primary.getter();
  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v19;
  v30 = v16;
  sub_10000BFBC(v17, v29, v21 & 1);

  v31 = v58 & 1;
  if (v58)
  {
    v32 = 0;
  }

  else
  {
    v32 = 2;
  }

  KeyPath = swift_getKeyPath();
  v34 = swift_getKeyPath();
  v74 = v26 & 1;
  v73 = v31;
  *&v66 = v22;
  *(&v66 + 1) = v24;
  LOBYTE(v67) = v26 & 1;
  *(&v67 + 1) = v28;
  *&v68 = KeyPath;
  *(&v68 + 1) = v32;
  LOBYTE(v69) = v31;
  *(&v69 + 1) = v34;
  v70 = 0;
  sub_100002D44(&qword_100145A28);
  sub_1000DFB30();
  View.accessibilityIdentifier(_:)();
  v71[2] = v68;
  v71[3] = v69;
  v72 = v70;
  v71[0] = v66;
  v71[1] = v67;
  sub_100007E14(v71, &qword_100145A28);
  if ([v59 explicitContent])
  {
    v35 = Image.init(systemName:)();
    v36 = static Font.caption.getter();
    v37 = swift_getKeyPath();
    v38 = (v4 + *(sub_100002D44(&qword_1001484B8) + 36));
    v39 = *(sub_100002D44(&qword_100143AF8) + 28);
    static SymbolRenderingMode.palette.getter();
    v40 = type metadata accessor for SymbolRenderingMode();
    (*(*(v40 - 8) + 56))(v38 + v39, 0, 1, v40);
    *v38 = swift_getKeyPath();
    *v4 = v35;
    v4[1] = v37;
    v4[2] = v36;
    v41 = static Color.white.getter();
    v42 = Color.init(_:bundle:)();
    v43 = (v4 + *(v55 + 36));
    *v43 = v41;
    v43[1] = v42;
    sub_1000DFBF0();
    v44 = v57;
    View.accessibilityIdentifier(_:)();
    sub_100007E14(v4, &qword_100148488);
    LocalizedStringKey.init(_:)();
    v45 = v56;
    v46 = v62;
    ModifiedContent<>.accessibilityLabel(_:)();

    sub_100007E14(v44, &qword_100148490);
    v47 = v60;
    sub_10002F250(v45, v60, &qword_100148490);
    v48 = 0;
    v49 = v46;
  }

  else
  {
    v48 = 1;
    v49 = v62;
    v47 = v60;
  }

  (*(v63 + 56))(v47, v48, 1, v49);
  v50 = v61;
  sub_100007FDC(v30, v61, &qword_1001484A0);
  v51 = v64;
  sub_100007FDC(v47, v64, &qword_100148498);
  v52 = v65;
  sub_100007FDC(v50, v65, &qword_1001484A0);
  v53 = sub_100002D44(&qword_1001484B0);
  sub_100007FDC(v51, v52 + *(v53 + 48), &qword_100148498);
  sub_100007E14(v47, &qword_100148498);
  sub_100007E14(v30, &qword_1001484A0);
  sub_100007E14(v51, &qword_100148498);
  return sub_100007E14(v50, &qword_1001484A0);
}

uint64_t sub_1000DF634(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001483C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DF6A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001483E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DF714(uint64_t a1)
{
  v2 = sub_100002D44(&qword_1001483E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DF784()
{
  result = qword_100148430;
  if (!qword_100148430)
  {
    sub_100004370(&qword_100148408);
    sub_1000DF83C();
    sub_100004610(&qword_100142A88, &unk_100142A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148430);
  }

  return result;
}

unint64_t sub_1000DF83C()
{
  result = qword_100148438;
  if (!qword_100148438)
  {
    sub_100004370(&qword_100148428);
    sub_1000DF8F4();
    sub_100004610(&qword_100141F70, &qword_100141F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148438);
  }

  return result;
}

unint64_t sub_1000DF8F4()
{
  result = qword_100148440;
  if (!qword_100148440)
  {
    sub_100004370(&qword_100148420);
    sub_1000DF9AC();
    sub_100004610(&qword_100145808, &qword_100143758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148440);
  }

  return result;
}

unint64_t sub_1000DF9AC()
{
  result = qword_100148448;
  if (!qword_100148448)
  {
    sub_100004370(&qword_100148450);
    sub_10002DBB0();
    sub_100004610(&qword_1001457F8, &qword_100145800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148448);
  }

  return result;
}

unint64_t sub_1000DFA64()
{
  result = qword_100148458;
  if (!qword_100148458)
  {
    sub_100004370(&qword_100148410);
    sub_1000DF784();
    sub_1000800EC(&qword_100141FC0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148458);
  }

  return result;
}

unint64_t sub_1000DFB30()
{
  result = qword_1001484A8;
  if (!qword_1001484A8)
  {
    sub_100004370(&qword_100145A28);
    sub_1000149E0();
    sub_100004610(&qword_100143D78, &qword_100143D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001484A8);
  }

  return result;
}

unint64_t sub_1000DFBF0()
{
  result = qword_1001484C0;
  if (!qword_1001484C0)
  {
    sub_100004370(&qword_100148488);
    sub_1000DFCA8();
    sub_100004610(&qword_100143370, &qword_100143378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001484C0);
  }

  return result;
}

unint64_t sub_1000DFCA8()
{
  result = qword_1001484C8;
  if (!qword_1001484C8)
  {
    sub_100004370(&qword_1001484B8);
    sub_10003E3A8();
    sub_100004610(&qword_100143AF0, &qword_100143AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001484C8);
  }

  return result;
}

unint64_t sub_1000DFD64()
{
  result = qword_1001484D0;
  if (!qword_1001484D0)
  {
    sub_100004370(&qword_1001483D8);
    sub_100004610(qword_1001484D8, &qword_1001483C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001484D0);
  }

  return result;
}

uint64_t sub_1000DFE1C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000DFEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v30 = a1;
  v31 = a7;
  v25 = a6;
  type metadata accessor for SafeAreaModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_100004370(&qword_100145AB8);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  v36 = sub_100082A0C();
  WitnessTable = swift_getWitnessTable();
  v26 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  v24[1] = swift_getWitnessTable();
  v24[2] = type metadata accessor for _BackgroundModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = v25;
  v15[2] = a5;
  v15[3] = v16;
  v17 = v28;
  v15[4] = v27;
  v15[5] = v17;
  v15[6] = v29;

  v34 = GeometryReader.init(content:)();
  v35 = v18;
  static Alignment.center.getter();
  v19 = swift_getWitnessTable();
  View.background<A>(_:alignment:)();

  v20 = swift_getWitnessTable();
  v32 = v19;
  v33 = v20;
  v21 = swift_getWitnessTable();
  sub_1000B03E4(v11, v8, v21);
  v22 = *(v9 + 8);
  v22(v11, v8);
  sub_1000B03E4(v14, v8, v21);
  return (v22)(v14, v8);
}

uint64_t sub_1000E0210@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24[4] = a3;
  v26 = a1;
  v27 = a6;
  v24[1] = a4;
  v24[2] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v24 - v8;
  v24[0] = sub_100004370(&qword_100145AB8);
  v24[3] = type metadata accessor for _PreferenceWritingModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v24 - v15;
  v17 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v31 = v17;
  v18 = GeometryProxy.safeAreaInsets.getter();
  a2(v18);
  v19 = sub_100082A0C();
  View.preference<A>(key:value:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);

  WitnessTable = swift_getWitnessTable();
  v28 = v19;
  v29 = WitnessTable;
  v21 = swift_getWitnessTable();
  sub_1000B03E4(v13, v10, v21);
  v22 = *(v11 + 8);
  v22(v13, v10);
  sub_1000B03E4(v16, v10, v21);
  return (v22)(v16, v10);
}

uint64_t sub_1000E04F8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000E0540@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000E056C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000E05F0()
{
  type metadata accessor for SafeAreaModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_100004370(&qword_100145AB8);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  sub_100082A0C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_1000E0808()
{
  sub_1000E08B0();
  if (v0 <= 0x3F)
  {
    sub_10006A3FC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v2 <= 0x3F)
      {
        type metadata accessor for StreamingService();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1000E08B0()
{
  if (!qword_1001485E0)
  {
    type metadata accessor for URL();
    sub_100004370(&qword_100142238);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1001485E0);
    }
  }
}

void sub_1000E0A54()
{
  sub_10006F07C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000E0B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000E0C38(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

unint64_t sub_1000E0D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_10006A3FC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000E0DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&qword_1001421C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000E0F0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&qword_1001421C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000E1060()
{
  sub_10006F07C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_10006A3FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000E1128()
{
  v1 = type metadata accessor for OpenAction(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  v5 = sub_100002D44(&qword_100142340);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  sub_1000E33C8(v0, &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for OpenAction);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000E345C(&v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for OpenAction);
  v17 = v0;
  sub_100002D44(&qword_100141F68);
  sub_100004610(&qword_100141F60, &qword_100141F68);
  Button.init(action:label:)();
  v11 = (v0 + *(v2 + 28));
  v12 = v11[1];
  v18 = *v11;
  v19 = v12;

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x6E6F74747542;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);

  sub_100004610(&qword_100142338, &qword_100142340);
  View.accessibilityIdentifier(_:)();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000E1408(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100041144(v5);
  v6 = type metadata accessor for OpenAction(0);
  OpenURLAction.callAsFunction(_:)();
  v7 = (*(v3 + 8))(v5, v2);
  return (*(a1 + *(v6 + 32)))(v7);
}

uint64_t sub_1000E150C()
{
  v1 = type metadata accessor for _OpenAction(0);
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  v5 = sub_100002D44(&qword_100142340);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-v7];
  sub_1000E33C8(v0, &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for _OpenAction);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1000E345C(&v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for _OpenAction);
  v17 = v0;
  sub_100002D44(&qword_100141F68);
  sub_100004610(&qword_100141F60, &qword_100141F68);
  Button.init(action:label:)();
  v11 = (v0 + *(v2 + 28));
  v12 = v11[1];
  v18 = *v11;
  v19 = v12;

  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x6E6F74747542;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);

  sub_100004610(&qword_100142338, &qword_100142340);
  View.accessibilityIdentifier(_:)();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000E17EC(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_1001422A0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for OpenURLAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E3B44(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for _OpenAction(0);
  OpenURLAction.callAsFunction(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000E1A68@<X0>(uint64_t a1@<X8>)
{
  v20[1] = a1;
  v2 = type metadata accessor for ShareAction(0);
  v3 = v2 - 8;
  v20[0] = *(v2 - 8);
  v4 = *(v20[0] + 64);
  __chkstk_darwin(v2);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002D44(&qword_1001489A8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v20 - v12;
  (*(v6 + 16))(v8, &v1[*(v3 + 32)], v5, v11);
  sub_1000E33C8(v1, v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShareAction);
  v14 = (*(v20[0] + 80) + 16) & ~*(v20[0] + 80);
  v15 = swift_allocObject();
  sub_1000E345C(v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for ShareAction);
  ShareLink<>.init<>(item:subject:message:onPresentationChanged:)();
  v16 = *(v1 + 1);
  v20[2] = *v1;
  v20[3] = v16;

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x6E6F74747542;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);

  sub_100004610(&qword_1001489B0, &qword_1001489A8);
  View.accessibilityIdentifier(_:)();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000E1D9C@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v2 = type metadata accessor for SyncAction(0);
  v3 = v2 - 8;
  v21[0] = *(v2 - 8);
  v4 = *(v21[0] + 64);
  __chkstk_darwin(v2);
  v5 = sub_100002D44(&qword_100143C20);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - v6;
  v8 = sub_100002D44(&qword_100142340);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v12 = *(v3 + 32);
  v13 = type metadata accessor for ButtonRole();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, &v1[v12], v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  sub_1000E33C8(v1, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SyncAction);
  v15 = (*(v21[0] + 80) + 16) & ~*(v21[0] + 80);
  v16 = swift_allocObject();
  sub_1000E345C(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for SyncAction);
  v22 = v1;
  sub_100002D44(&qword_100141F68);
  sub_100004610(&qword_100141F60, &qword_100141F68);
  Button.init(role:action:label:)();
  v17 = *(v1 + 1);
  v23 = *v1;
  v24 = v17;

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x6E6F74747542;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);

  sub_100004610(&qword_100142338, &qword_100142340);
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000E2160@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v2 = type metadata accessor for AsyncAction(0);
  v3 = v2 - 8;
  v21[0] = *(v2 - 8);
  v4 = *(v21[0] + 64);
  __chkstk_darwin(v2);
  v5 = sub_100002D44(&qword_100143C20);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - v6;
  v8 = sub_100002D44(&qword_100142340);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v12 = *(v3 + 32);
  v13 = type metadata accessor for ButtonRole();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, &v1[v12], v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  sub_1000E33C8(v1, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AsyncAction);
  v15 = (*(v21[0] + 80) + 16) & ~*(v21[0] + 80);
  v16 = swift_allocObject();
  sub_1000E345C(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AsyncAction);
  v22 = v1;
  sub_100002D44(&qword_100141F68);
  sub_100004610(&qword_100141F60, &qword_100141F68);
  Button.init(role:action:label:)();
  v17 = *(v1 + 1);
  v23 = *v1;
  v24 = v17;

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x6E6F74747542;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);

  sub_100004610(&qword_100142338, &qword_100142340);
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000E2504(uint64_t a1)
{
  v2 = type metadata accessor for AsyncAction(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1000E33C8(a1, v5, type metadata accessor for AsyncAction);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_1000E345C(v5, v12 + v11, type metadata accessor for AsyncAction);
  sub_1000C8AF8(0, 0, v8, &unk_1000FE868, v12);
}

uint64_t sub_1000E26D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1000E2770, v6, v5);
}

uint64_t sub_1000E2770()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for AsyncAction(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_100043010;

  return v5();
}

uint64_t sub_1000E2870@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v2 = type metadata accessor for AsyncThrowingAction(0);
  v3 = v2 - 8;
  v21[0] = *(v2 - 8);
  v4 = *(v21[0] + 64);
  __chkstk_darwin(v2);
  v5 = sub_100002D44(&qword_100143C20);
  __chkstk_darwin(v5 - 8);
  v7 = v21 - v6;
  v8 = sub_100002D44(&qword_100142340);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v12 = *(v3 + 32);
  v13 = type metadata accessor for ButtonRole();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v7, &v1[v12], v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  sub_1000E33C8(v1, v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AsyncThrowingAction);
  v15 = (*(v21[0] + 80) + 16) & ~*(v21[0] + 80);
  v16 = swift_allocObject();
  sub_1000E345C(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AsyncThrowingAction);
  v22 = v1;
  sub_100002D44(&qword_100141F68);
  sub_100004610(&qword_100141F60, &qword_100141F68);
  Button.init(role:action:label:)();
  v17 = *(v1 + 1);
  v23 = *v1;
  v24 = v17;

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0x6E6F74747542;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);

  sub_100004610(&qword_100142338, &qword_100142340);
  View.accessibilityIdentifier(_:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000E2C14(uint64_t a1)
{
  v2 = type metadata accessor for AsyncThrowingAction(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1000E33C8(a1, v5, type metadata accessor for AsyncThrowingAction);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_1000E345C(v5, v12 + v11, type metadata accessor for AsyncThrowingAction);
  sub_1000C8DF8(0, 0, v8, &unk_1000FE878, v12);
}

uint64_t sub_1000E2DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1000E2E80, v6, v5);
}

uint64_t sub_1000E2E80()
{
  v1 = *(v0 + 24);
  v2 = (v1 + *(type metadata accessor for AsyncThrowingAction(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1000E2F7C;

  return v5();
}

uint64_t sub_1000E2F7C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000E4078;
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000E30A4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000E30A4()
{
  v1 = v0[8];
  v2 = v0[2];

  *v2 = v1 != 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000E318C()
{
  v1 = type metadata accessor for OpenAction(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 28);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000E33C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E345C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E34C4(char a1)
{
  result = type metadata accessor for ShareAction(0);
  if (a1)
  {
    return (*(v1 + *(result + 28) + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80))))();
  }

  return result;
}

uint64_t sub_1000E3564(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(*v4 + 64);

  v8 = v4[8];
  v9 = a2(0);
  (*(*(v9 - 8) + 8))(v2 + v6 + v8, v9);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000E36A8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1000E3750@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  v6 = (a1 + *(a2(0) + 24));
  v7 = *v6;
  v8 = v6[1];

  result = a3(v7, v8);
  *a4 = result;
  return result;
}

uint64_t sub_1000E37CC(uint64_t a1)
{
  v4 = *(type metadata accessor for AsyncAction(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000789C;

  return sub_1000E26D8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000E38BC()
{
  v1 = type metadata accessor for _OpenAction(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_100002D44(&qword_1001422A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 28);
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000E3A9C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = (v4 + *(a1(0) + 20));
  v6 = v5[1];
  *a2 = *v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1000E3B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001422A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E3C24(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);
  swift_unknownObjectRelease();

  v6 = v2[8];
  v7 = type metadata accessor for ButtonRole();
  (*(*(v7 - 8) + 8))(v1 + v4 + v6, v7);

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_1000E3D3C(uint64_t a1)
{
  v4 = *(type metadata accessor for AsyncThrowingAction(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100012EC8;

  return sub_1000E2DE8(a1, v6, v7, v1 + v5);
}

uint64_t sub_1000E3F4C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_1000E3F70@<X0>(uint64_t *a1@<X8>)
{

  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

unint64_t sub_1000E3FC0()
{
  result = qword_1001489B8;
  if (!qword_1001489B8)
  {
    sub_100004370(&qword_1001489C0);
    sub_100004610(&qword_1001489B0, &qword_1001489A8);
    sub_100058CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001489B8);
  }

  return result;
}

uint64_t sub_1000E40B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&unk_100144630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100002D44(&qword_100148158);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100002D44(&qword_100143280);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000E422C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002D44(&unk_100144630);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100002D44(&qword_100148158);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100002D44(&qword_100143280);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for LibraryItemArtwork()
{
  result = qword_100148A30;
  if (!qword_100148A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E43E8()
{
  sub_1000E44E4(319, &qword_100142180, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000DB1DC();
    if (v1 <= 0x3F)
    {
      sub_1000E44E4(319, &qword_1001432F0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000E44E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000E4564@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v46 = a2;
  v8 = type metadata accessor for URLRequest();
  v44 = *(v8 - 8);
  v45 = v8;
  __chkstk_darwin(v8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  v20 = sub_100002D44(qword_100144D30);
  __chkstk_darwin(v20 - 8);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v38 - v24;
  v43 = a1;
  sub_100007FDC(a1, v12, &unk_100144630);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100007E14(v12, &unk_100144630);
    v26 = 1;
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    (*(v14 + 8))(v19, v13);
    v26 = 0;
  }

  v28 = v44;
  v27 = v45;
  (*(v44 + 56))(v25, v26, 1, v45);
  v29 = sub_100002D44(&qword_100148A98);
  v30 = *(v29 + 44);
  sub_10002F250(v25, a6 + v30, qword_100144D30);
  v31 = [objc_opt_self() defaultSessionConfiguration];
  v32 = v46;
  [v31 setURLCache:v46];
  *(a6 + *(v29 + 48)) = [objc_opt_self() sessionWithConfiguration:v31];
  v33 = v40;
  *(a6 + 16) = v41;
  *(a6 + 24) = v42;
  *(a6 + 32) = v33;
  v47 = 0x8000000000000000;
  State.init(wrappedValue:)();
  v34 = v48;
  *a6 = v48;
  sub_100007FDC(a6 + v30, v22, qword_100144D30);
  if ((*(v28 + 48))(v22, 1, v27) == 1)
  {
    sub_100007E14(v43, &unk_100144630);

    return sub_100007E14(v22, qword_100144D30);
  }

  else
  {
    v36 = v39;
    (*(v28 + 32))(v39, v22, v27);
    v37 = sub_1000E4AB4();
    if (v37)
    {
      v47 = v37;
      State.init(wrappedValue:)();

      sub_100007E14(v43, &unk_100144630);
      (*(v28 + 8))(v36, v27);
      sub_10006B3EC(v34);

      *a6 = v48;
    }

    else
    {

      sub_100007E14(v43, &unk_100144630);
      return (*(v28 + 8))(v36, v27);
    }
  }

  return result;
}

uint64_t sub_1000E4AB4()
{
  v1 = [*(v0 + *(sub_100002D44(&qword_100148A98) + 48)) configuration];
  v2 = [v1 URLCache];

  if (v2)
  {
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v4 = [v2 cachedResponseForRequest:isa];

    if (v4)
    {
      v5 = [v4 data];
      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = objc_allocWithZone(UIImage);
      v10 = Data._bridgeToObjectiveC()().super.isa;
      v11 = [v9 initWithData:v10];

      if (v11)
      {
        v12 = Image.init(uiImage:)();

        sub_10005B7AC(v6, v8);
        return v12;
      }

      sub_10005B7AC(v6, v8);
    }
  }

  return 0;
}

uint64_t sub_1000E4C14()
{
  result = static Solarium.isEnabled.getter();
  v1 = 8.0;
  if (result)
  {
    v1 = 12.0;
  }

  qword_1001489C8 = *&v1;
  return result;
}

uint64_t sub_1000E4C44()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = Color.init(_:red:green:blue:opacity:)();
  qword_1001489D0 = result;
  return result;
}

uint64_t sub_1000E4D24@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = type metadata accessor for LibraryItemArtwork();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v8 = sub_100002D44(&qword_100148A70);
  __chkstk_darwin(v8);
  v10 = v18 - v9;
  sub_100007FDC(v1, v7, &unk_100144630);
  static Animation.easeInOut.getter();
  v11 = Transaction.init(animation:)();
  sub_1000802D4(v1, v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_1000E6278(v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for LibraryItemArtwork);
  v14 = [objc_opt_self() sharedURLCache];
  sub_1000E4564(v7, v14, v11, sub_1000E5E3C, v13, v10);
  sub_100002D44(&qword_100148158);
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = &v10[*(sub_100002D44(&qword_100148A78) + 36)];
  v16 = v20;
  *v15 = v19;
  *(v15 + 1) = v16;
  *(v15 + 2) = v21;
  v10[*(v8 + 36)] = 1;
  sub_1000E5EBC();
  View.accessibilityHidden(_:)();
  return sub_100007E14(v10, &qword_100148A70);
}

uint64_t sub_1000E5018@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38[1] = a2;
  v47 = a3;
  v45 = type metadata accessor for AccessibilityChildBehavior();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100002D44(&qword_100148AA8);
  __chkstk_darwin(v39);
  v6 = (v38 - v5);
  v7 = sub_100002D44(&qword_100148AB0);
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v38[0] = v38 - v8;
  v48 = sub_100002D44(&qword_100148AB8);
  __chkstk_darwin(v48);
  v44 = v38 - v9;
  v46 = sub_100002D44(&qword_100148AC0);
  __chkstk_darwin(v46);
  v11 = v38 - v10;
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002D44(&qword_100148AC8);
  __chkstk_darwin(v16);
  v18 = (v38 - v17);
  v19 = sub_100002D44(&qword_100148AD0);
  v20 = __chkstk_darwin(v19);
  v22 = v38 - v21;
  if (a1 >> 62)
  {
    *v6 = static Alignment.center.getter();
    v6[1] = v30;
    v31 = sub_100002D44(&qword_100148AD8);
    sub_1000E5748(v6 + *(v31 + 44));
    v32 = v40;
    static AccessibilityChildBehavior.combine.getter();
    v33 = sub_100004610(&qword_100148AE0, &qword_100148AA8);
    v34 = v38[0];
    v35 = v39;
    View.accessibilityElement(children:)();
    (*(v43 + 8))(v32, v45);
    sub_100007E14(v6, &qword_100148AA8);
    v49 = v35;
    v50 = v33;
    swift_getOpaqueTypeConformance2();
    v36 = v44;
    v37 = v42;
    View.accessibilityIdentifier(_:)();
    (*(v41 + 8))(v34, v37);
    sub_1000E6054(v36, v11);
    swift_storeEnumTagMultiPayload();
    sub_1000E632C(&qword_100148AE8, &qword_100148AD0, &unk_1000FE988, sub_1000E60C4);
    sub_1000E617C();
    _ConditionalContent<>.init(storage:)();
    return sub_100007E14(v36, &qword_100148AB8);
  }

  else
  {
    v45 = v19;
    (*(v13 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v12, v20);
    v23 = Image.resizable(capInsets:resizingMode:)();
    (*(v13 + 8))(v15, v12);
    if (qword_100141D80 != -1)
    {
      swift_once();
    }

    v24 = qword_1001489C8;
    v25 = (v18 + *(v16 + 36));
    v26 = *(type metadata accessor for RoundedRectangle() + 20);
    v27 = enum case for RoundedCornerStyle.continuous(_:);
    v28 = type metadata accessor for RoundedCornerStyle();
    (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
    *v25 = v24;
    v25[1] = v24;
    *(v25 + *(sub_100002D44(&qword_100143758) + 36)) = 256;
    *v18 = v23;
    sub_1000E60C4();
    View.accessibilityIdentifier(_:)();
    sub_100007E14(v18, &qword_100148AC8);
    sub_100007FDC(v22, v11, &qword_100148AD0);
    swift_storeEnumTagMultiPayload();
    sub_1000E632C(&qword_100148AE8, &qword_100148AD0, &unk_1000FE988, sub_1000E60C4);
    sub_1000E617C();
    _ConditionalContent<>.init(storage:)();
    return sub_100007E14(v22, &qword_100148AD0);
  }
}

uint64_t sub_1000E5748@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v8);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_100002D44(&qword_100148B00);
  __chkstk_darwin(v37);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  if (qword_100141D80 != -1)
  {
    swift_once();
  }

  v18 = qword_1001489C8;
  v19 = *(v8 + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  (*(*(v21 - 8) + 104))(v10 + v19, v20, v21);
  *v10 = v18;
  v10[1] = v18;
  sub_100002D44(&qword_100148260);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000F7970;
  type metadata accessor for LibraryItemArtwork();
  sub_10004116C(v7);
  (*(v2 + 104))(v4, enum case for ColorScheme.light(_:), v1);
  LOBYTE(v19) = static ColorScheme.== infix(_:_:)();
  v23 = *(v2 + 8);
  v23(v4, v1);
  v23(v7, v1);
  if (v19)
  {
    v24 = [objc_opt_self() systemGray5Color];
    v25 = Color.init(uiColor:)();
  }

  else
  {
    v25 = static Color.gray.getter();
  }

  *(v22 + 32) = v25;
  if (qword_100141D88 != -1)
  {
    swift_once();
  }

  *(v22 + 40) = qword_1001489D0;

  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  sub_1000E6278(v10, v14, &type metadata accessor for RoundedRectangle);
  v26 = v37;
  v27 = &v14[*(v37 + 52)];
  v28 = v41;
  *v27 = v40;
  *(v27 + 1) = v28;
  *(v27 + 4) = v42;
  *&v14[*(v26 + 56)] = 256;
  sub_10002F250(v14, v17, &qword_100148B00);
  v29 = Image.init(_internalSystemName:)();
  v30 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v32 = static Color.white.getter();
  v33 = v38;
  sub_100007FDC(v17, v38, &qword_100148B00);
  v34 = v39;
  sub_100007FDC(v33, v39, &qword_100148B00);
  v35 = (v34 + *(sub_100002D44(&qword_100148B08) + 48));
  *v35 = v29;
  v35[1] = KeyPath;
  v35[2] = v30;
  v35[3] = v32;

  sub_100007E14(v17, &qword_100148B00);

  return sub_100007E14(v33, &qword_100148B00);
}

uint64_t sub_1000E5C64()
{
  v1 = type metadata accessor for LibraryItemArtwork();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v1 + 20);
  v9 = sub_100002D44(&qword_100148158);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = *(v1 + 24);
  sub_100002D44(&qword_1001420C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000E5E3C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LibraryItemArtwork() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000E5018(a1, v6, a2);
}

unint64_t sub_1000E5EBC()
{
  result = qword_100148A80;
  if (!qword_100148A80)
  {
    sub_100004370(&qword_100148A70);
    sub_1000E5F48();
    sub_1000E6000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148A80);
  }

  return result;
}

unint64_t sub_1000E5F48()
{
  result = qword_100148A88;
  if (!qword_100148A88)
  {
    sub_100004370(&qword_100148A78);
    sub_100004610(&qword_100148A90, &qword_100148A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148A88);
  }

  return result;
}

unint64_t sub_1000E6000()
{
  result = qword_100148AA0;
  if (!qword_100148AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148AA0);
  }

  return result;
}

uint64_t sub_1000E6054(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_100148AB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E60C4()
{
  result = qword_100148AF0;
  if (!qword_100148AF0)
  {
    sub_100004370(&qword_100148AC8);
    sub_100004610(&qword_100145808, &qword_100143758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148AF0);
  }

  return result;
}

unint64_t sub_1000E617C()
{
  result = qword_100148AF8;
  if (!qword_100148AF8)
  {
    sub_100004370(&qword_100148AB8);
    sub_100004370(&qword_100148AA8);
    sub_100004610(&qword_100148AE0, &qword_100148AA8);
    swift_getOpaqueTypeConformance2();
    sub_100058CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148AF8);
  }

  return result;
}

uint64_t sub_1000E6278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E632C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004370(a2);
    a4();
    sub_100058CAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E63B0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000E6490(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1000E71BC(a1, a2);
  return v4;
}

void *sub_1000E64E0(uint64_t a1)
{
  v93 = *v1;
  v95 = *(v93 + 80);
  v92 = *(v95 - 8);
  v2 = *(v92 + 64);
  __chkstk_darwin(a1);
  v91 = &v80 - v3;
  v4 = _s14descr1001347F1V6ActionOMa(0);
  __chkstk_darwin(v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContextMenuItemSection(0);
  v98 = *(v7 - 8);
  v99 = v7;
  __chkstk_darwin(v7);
  v87 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v80 - v10;
  __chkstk_darwin(v11);
  v13 = &v80 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v85 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v97 = &v80 - v18;
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v80 - v24;
  v90 = *(v1 + 2);
  v26 = [v90 webURL];
  v27 = &unk_1000F5000;
  v101 = v15;
  v102 = v4;
  v100 = v1;
  v86 = v14;
  v94 = v6;
  if (v26)
  {
    v88 = v2;
    v28 = v26;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v15 + 32))(v25, v21, v14);
    sub_100002D44(&qword_100148BA0);
    v29 = (type metadata accessor for ContextMenuItem(0) - 8);
    v30 = v15;
    v31 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000F57C0;
    v33 = sub_100002D44(&qword_100145FD0);
    v34 = v99;
    v35 = &v6[*(v33 + 48)];
    (*(v30 + 16))(v6, v25, v14);
    v36 = v100;
    *v35 = sub_1000E75C8;
    v35[1] = v36;
    v1 = v100;
    swift_storeEnumTagMultiPayload();

    UUID.init()();
    sub_1000E7558(v6, v32 + v31 + v29[7], _s14descr1001347F1V6ActionOMa);
    UUID.init()();
    v37 = &v13[*(v34 + 20)];
    *v37 = 0;
    *(v37 + 1) = 0;
    *&v13[*(v34 + 24)] = v32;
    v38 = sub_100058190(0, 1, 1, _swiftEmptyArrayStorage);
    v40 = v38[2];
    v39 = v38[3];
    if (v40 >= v39 >> 1)
    {
      v38 = sub_100058190(v39 > 1, v40 + 1, 1, v38);
    }

    v89 = v38;
    (*(v101 + 8))(v25, v14);
    v38[2] = v40 + 1;
    sub_1000E7558(v13, v38 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v40, type metadata accessor for ContextMenuItemSection);
    v2 = v88;
    v27 = &unk_1000F5000;
  }

  else
  {
    v89 = _swiftEmptyArrayStorage;
  }

  v41 = sub_100002D44(&qword_100148BA0);
  v42 = type metadata accessor for ContextMenuItem(0);
  v43 = *(*(v42 - 8) + 80);
  v44 = (v43 + 32) & ~v43;
  v82 = *(*(v42 - 8) + 72);
  v81 = v43;
  v84 = v41;
  v45 = swift_allocObject();
  v80 = v27[124];
  *(v45 + 16) = v80;
  v83 = v44;
  v88 = v45 + v44;
  v47 = v91;
  v46 = v92;
  v48 = v95;
  (*(v92 + 16))(v91, v1 + *(*v1 + 104), v95);
  v49 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v50 = (v2 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v48;
  *(v51 + 24) = *(v93 + 88);
  (*(v46 + 32))(v51 + v49, v47, v48);
  v52 = v90;
  *(v51 + v50) = v90;
  *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v53 = v94;
  *v94 = &unk_1000FEA78;
  *(v53 + 8) = v51;
  swift_storeEnumTagMultiPayload();

  v54 = v52;
  v55 = v88;
  UUID.init()();
  v95 = v42;
  sub_1000E7558(v53, v55 + *(v42 + 20), _s14descr1001347F1V6ActionOMa);
  v56 = v96;
  UUID.init()();
  v57 = v99;
  v58 = (v56 + *(v99 + 20));
  *v58 = 0;
  v58[1] = 0;
  *(v56 + *(v57 + 24)) = v45;
  v59 = v89;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v59 = sub_100058190(0, v59[2] + 1, 1, v59);
  }

  v61 = v59[2];
  v60 = v59[3];
  if (v61 >= v60 >> 1)
  {
    v59 = sub_100058190(v60 > 1, v61 + 1, 1, v59);
  }

  v59[2] = v61 + 1;
  v62 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v63 = *(v98 + 72);
  sub_1000E7558(v56, v59 + v62 + v63 * v61, type metadata accessor for ContextMenuItemSection);
  v64 = [v54 webURL];
  if (v64)
  {
    v96 = v63;
    v98 = v62;
    v65 = v85;
    v66 = v64;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = v101;
    v68 = v97;
    v69 = v86;
    (*(v101 + 32))(v97, v65, v86);
    v70 = v83;
    v71 = swift_allocObject();
    *(v71 + 16) = v80;
    v72 = v71 + v70;
    v73 = (v53 + *(sub_100002D44(&qword_100145FD0) + 48));
    (*(v67 + 16))(v53, v68, v69);
    v74 = v100;
    *v73 = sub_1000E75C0;
    v73[1] = v74;
    swift_storeEnumTagMultiPayload();

    UUID.init()();
    sub_1000E7558(v53, v72 + *(v95 + 20), _s14descr1001347F1V6ActionOMa);
    v75 = v87;
    UUID.init()();
    v76 = (v75 + *(v57 + 20));
    *v76 = 0;
    v76[1] = 0;
    *(v75 + *(v57 + 24)) = v71;
    v78 = v59[2];
    v77 = v59[3];
    if (v78 >= v77 >> 1)
    {
      v59 = sub_100058190(v77 > 1, v78 + 1, 1, v59);
    }

    (*(v101 + 8))(v97, v69);
    v59[2] = v78 + 1;
    sub_1000E7558(v75, v59 + v98 + v78 * v96, type metadata accessor for ContextMenuItemSection);
  }

  return v59;
}

uint64_t sub_1000E6E8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v3[2] = type metadata accessor for MainActor();
  v3[3] = static MainActor.shared.getter();
  v6 = *(v5 + 88);
  v3[4] = v6;
  v7 = *(v6 + 40);
  v8 = *(v5 + 80);
  v3[5] = v8;
  v11 = (v7 + *v7);
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_1000E700C;

  return v11(a2, v8, v6);
}

uint64_t sub_1000E700C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E7148, v1, v0);
}

uint64_t sub_1000E7148()
{

  sub_1000E7600(0x12u);
  v1 = *(v0 + 8);

  return v1();
}

char *sub_1000E71BC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  ObservationRegistrar.init()();
  *(v2 + 2) = a1;
  (*(*(*(v5 + 80) - 8) + 32))(&v2[*(*v2 + 104)], a2);
  return v2;
}

id *sub_1000E7268()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 13));
  v2 = *(*v0 + 14);
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1000E7334()
{
  sub_1000E7268();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000E73A4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000E7448()
{
  v2 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v3 = (*(*(*(v0 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000789C;

  return sub_1000E6E8C(v0 + v2, v4, v5);
}

uint64_t sub_1000E7558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E7600(unsigned __int8 a1)
{
  v2 = type metadata accessor for MusicSubscription();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002D44(&qword_100142FA0);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  if (qword_100141D20 != -1)
  {
    swift_once();
  }

  v9 = qword_10014FF90;
  swift_getKeyPath();
  v14[1] = v9;
  sub_10005B1D0();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC16MusicRecognition33MusicSubscriptionStatusController__musicSubscription;
  swift_beginAccess();
  sub_10005B228(v9 + v10, v8);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1000717A0(v8);
    v11 = 0;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1000717A0(v8);
    v12 = MusicSubscription.canPlayCatalogContent.getter();
    (*(v3 + 8))(v5, v2);
    if (v12)
    {
      v11 = 0x10000;
    }

    else
    {
      v11 = 0;
    }
  }

  return sub_1000C3900(v11 | a1 | 0x300u, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_1000E785C()
{
  swift_getKeyPath();
  sub_1000E80CC(&qword_100142308, type metadata accessor for ContextMenuViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow);
}

uint64_t sub_1000E7904(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E80CC(&qword_100142308, type metadata accessor for ContextMenuViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000E7A1C()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow) == 1)
  {
    *(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000E80CC(&qword_100142308, type metadata accessor for ContextMenuViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
  {
    v2 = 66304;
  }

  else
  {
    v2 = 768;
  }

  return sub_1000C3900(v2, 0xD000000000000028, 0x80000001000FF5D0);
}

uint64_t sub_1000E7B74(uint64_t (*a1)(uint64_t))
{
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000BEC4(v3, qword_10014FEA0);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    type metadata accessor for URL();
    sub_1000E80CC(&qword_100142378, &type metadata accessor for URL);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000BA1EC(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Opening Shazam App Store URL %s", v6, 0xCu);
    sub_100007E74(v7);
  }

  if (*(v1 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_member))
  {
    v11 = 66309;
  }

  else
  {
    v11 = 773;
  }

  v12 = sub_1000C3900(v11, 0xD000000000000028, 0x80000001000FF5D0);
  return a1(v12);
}

uint64_t sub_1000E7D78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000E80CC(&qword_100142308, type metadata accessor for ContextMenuViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel__shareSheetFromOverflow);
  return result;
}

uint64_t sub_1000E7E50()
{
  v1 = OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamAppStoreURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel_shazamURL, v2);
  v4 = OBJC_IVAR____TtC16MusicRecognition20ContextMenuViewModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v6, v7);
}

uint64_t type metadata accessor for ContextMenuViewModel()
{
  result = qword_100148BE8;
  if (!qword_100148BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000E7FB0()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000E80CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E8158@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100002D44(&unk_100144630);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for LibraryItemArtwork();
  __chkstk_darwin(v40);
  v42 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  __chkstk_darwin(v19);
  v21 = &v38 - v20;
  v41 = a3;
  if (a2)
  {
    v22 = *&a1;
    v23 = *&a1;
  }

  else
  {
    sub_1000E8610(a1, 0);
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100069CB4(a1, 0);
    v39 = a4;
    v25 = *(v12 + 8);
    v25(v14, v11);
    v23 = *&v43;

    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100069CB4(a1, 0);
    v25(v14, v11);
    a4 = v39;
    v22 = *&v43;
  }

  v27 = v41;
  v28 = [v41 artworkURLForSize:{v23 * 60.0, v22 * 60.0}];
  if (v28)
  {
    v29 = v28;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = type metadata accessor for URL();
  (*(*(v31 - 8) + 56))(v10, v30, 1, v31);
  sub_100007F6C(v10, v18);
  v32 = v40;
  v43 = 0x404E000000000000;
  sub_100080214();
  ScaledMetric.init(wrappedValue:)();
  v33 = *(v32 + 24);
  *&v18[v33] = swift_getKeyPath();
  sub_100002D44(&qword_1001420C8);
  swift_storeEnumTagMultiPayload();
  sub_100080270(v18, v21);
  v34 = v42;
  sub_1000802D4(v21, v42);
  sub_1000802D4(v34, a4);
  v35 = a4 + *(sub_100002D44(&qword_100148D10) + 48);
  *v35 = v27;
  *(v35 + 8) = 0;
  v36 = v27;
  sub_1000803A8(v21);

  return sub_1000803A8(v34);
}

uint64_t sub_1000E8598@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v6 = sub_100002D44(&qword_100148D08);
  return sub_1000E8158(v3, v4, v5, a1 + *(v6 + 44));
}

uint64_t sub_1000E8610(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1000E8628()
{
  result = qword_100148D18;
  if (!qword_100148D18)
  {
    sub_100004370(&qword_100148D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148D18);
  }

  return result;
}

uint64_t sub_1000E868C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000E86D4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000E874C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static Alignment.center.getter();
  v6 = v5;
  sub_1000E8AA0(v1, &v53);
  v47 = v63;
  v48 = v64;
  v43 = v59;
  v44 = v60;
  v45 = v61;
  v46 = v62;
  v39 = v55;
  v40 = v56;
  v41 = v57;
  v42 = v58;
  v37 = v53;
  v38 = v54;
  v50[10] = v63;
  v50[11] = v64;
  v50[6] = v59;
  v50[7] = v60;
  v50[8] = v61;
  v50[9] = v62;
  v50[2] = v55;
  v50[3] = v56;
  v50[4] = v57;
  v50[5] = v58;
  v49 = v65;
  v51 = v65;
  v50[0] = v53;
  v50[1] = v54;
  sub_100007FDC(&v37, v34, &qword_100148D28);
  sub_100007E14(v50, &qword_100148D28);
  v63 = v47;
  v64 = v48;
  v65 = v49;
  v59 = v43;
  v60 = v44;
  v61 = v45;
  v62 = v46;
  v55 = v39;
  v56 = v40;
  v57 = v41;
  v58 = v42;
  v53 = v37;
  v54 = v38;
  v33 = *(v1 + 1);
  v34[0] = v33;
  sub_100002D44(&qword_100148D30);
  State.wrappedValue.getter();
  v7 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v33) = 0;
  v16 = (a1 + *(sub_100002D44(&qword_100148D38) + 36));
  v17 = sub_100002D44(&qword_100148D40);
  v18 = *(v17 + 36);
  v19 = enum case for CoordinateSpace.local(_:);
  v20 = type metadata accessor for CoordinateSpace();
  (*(*(v20 - 8) + 104))(&v16[v18], v19, v20);
  *v16 = &type metadata for CircularWidthHeightPreferenceKey;
  v21 = &v16[*(v17 + 40)];
  *v21 = sub_10004CB50;
  v21[1] = 0;
  *a1 = v4;
  *(a1 + 8) = v6;
  v22 = v64;
  *(a1 + 176) = v63;
  *(a1 + 192) = v22;
  *(a1 + 208) = v65;
  v23 = v60;
  *(a1 + 112) = v59;
  *(a1 + 128) = v23;
  v24 = v62;
  *(a1 + 144) = v61;
  *(a1 + 160) = v24;
  v25 = v56;
  *(a1 + 48) = v55;
  *(a1 + 64) = v25;
  v26 = v58;
  *(a1 + 80) = v57;
  *(a1 + 96) = v26;
  v27 = v54;
  *(a1 + 16) = v53;
  *(a1 + 32) = v27;
  *(a1 + 216) = v7;
  *(a1 + 217) = *v52;
  *(a1 + 220) = *&v52[3];
  *(a1 + 224) = v9;
  *(a1 + 232) = v11;
  *(a1 + 240) = v13;
  *(a1 + 248) = v15;
  *(a1 + 256) = 0;
  v28 = *v2;
  v35 = v2[3];
  v36 = v28;
  v29 = swift_allocObject();
  v30 = *(v2 + 1);
  *(v29 + 1) = *v2;
  *(v29 + 2) = v30;
  *(v29 + 3) = *(v2 + 2);
  v31 = (a1 + *(sub_100002D44(&qword_100148D48) + 36));
  *v31 = sub_1000E8F30;
  v31[1] = v29;
  sub_1000E8F38(&v36, &v33);
  sub_100007FDC(v34, &v33, &qword_100148D30);
  sub_1000E8F94(&v35, &v33);
}

uint64_t sub_1000E8AA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *a1;

  v33 = Color.opacity(_:)();
  sub_100002D44(&qword_100148D30);
  State.wrappedValue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v3 = v53;
  v32 = DWORD2(v53);
  v4 = v54;
  v5 = v55;
  v6 = static Alignment.center.getter();
  v34 = v7;
  sub_100002D44(&qword_100148D50);
  Binding.wrappedValue.getter();
  v8 = *&v60[0];
  State.wrappedValue.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v9 = static Alignment.center.getter();
  v30 = v10;
  v31 = v9;
  static UnitPoint.center.getter();
  v12 = v11;
  v14 = v13;
  v15 = static Animation.easeOut.getter();
  Binding.wrappedValue.getter();
  v16 = *&v60[0];
  v56[0] = v53;
  v17 = HIDWORD(v53);
  v56[1] = v54;
  *&v57 = v55;
  *(&v57 + 1) = v33;
  LOWORD(v58) = 256;
  *(&v58 + 1) = v6;
  v18 = v57;
  v19 = v58;
  *&v60[0] = 0;
  *(&v60[0] + 1) = v8;
  v60[1] = v50;
  v60[2] = v51;
  v20 = v52;
  *&v61 = v52;
  *(&v61 + 1) = v35;
  LOWORD(v62) = 256;
  *(&v62 + 1) = v31;
  *&v63 = v30;
  *(&v63 + 1) = 0xBFF921FB54442D18;
  *&v64 = v12;
  *(&v64 + 1) = v14;
  *&v65 = v15;
  *(&v65 + 1) = v16;
  *&v49[56] = v61;
  *&v49[40] = v51;
  *&v49[24] = v50;
  *&v49[8] = v60[0];
  *&v49[120] = v65;
  *&v49[104] = v64;
  *&v49[88] = v63;
  *&v49[72] = v62;
  v22 = v53;
  v21 = v54;
  *(a2 + 192) = v16;
  v59 = v34;
  *v49 = v34;
  v47 = v18;
  v48 = v19;
  v45 = v22;
  v46 = v21;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *a2 = v22;
  *(a2 + 16) = v21;
  v23 = *v49;
  v24 = *&v49[16];
  v25 = *&v49[48];
  *(a2 + 96) = *&v49[32];
  *(a2 + 112) = v25;
  *(a2 + 64) = v23;
  *(a2 + 80) = v24;
  v26 = *&v49[64];
  v27 = *&v49[80];
  v28 = *&v49[112];
  *(a2 + 160) = *&v49[96];
  *(a2 + 176) = v28;
  *(a2 + 128) = v26;
  *(a2 + 144) = v27;
  v66[0] = 0;
  v66[1] = v8;
  v67 = v50;
  v68 = v51;
  v69 = v20;
  v70 = v35;
  v71 = 256;
  v72 = v31;
  v73 = v30;
  v74 = 0xBFF921FB54442D18;
  v75 = v12;
  v76 = v14;
  v77 = v15;
  v78 = v16;
  sub_100007FDC(v56, &v36, &qword_100148D58);
  sub_100007FDC(v60, &v36, &qword_100148D60);
  sub_100007E14(v66, &qword_100148D60);
  v36 = v3;
  v37 = v32;
  v38 = v17;
  v39 = v4;
  v40 = v5;
  v41 = v33;
  v42 = 256;
  v43 = v6;
  v44 = v34;
  return sub_100007E14(&v36, &qword_100148D58);
}

uint64_t sub_1000E8EE0()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_1000E9004()
{
  result = qword_100148D68;
  if (!qword_100148D68)
  {
    sub_100004370(&qword_100148D48);
    sub_1000E90BC();
    sub_100004610(&qword_100148DA0, &qword_100148DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148D68);
  }

  return result;
}

unint64_t sub_1000E90BC()
{
  result = qword_100148D70;
  if (!qword_100148D70)
  {
    sub_100004370(&qword_100148D38);
    sub_1000E9174();
    sub_100004610(&qword_100148D98, &qword_100148D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148D70);
  }

  return result;
}

unint64_t sub_1000E9174()
{
  result = qword_100148D78;
  if (!qword_100148D78)
  {
    sub_100004370(&qword_100148D80);
    sub_100004610(&qword_100148D88, &qword_100148D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148D78);
  }

  return result;
}

unint64_t sub_1000E922C(uint64_t a1)
{
  result = sub_1000E9254();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E9254()
{
  result = qword_100148DB0;
  if (!qword_100148DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148DB0);
  }

  return result;
}

uint64_t sub_1000E92A8()
{
  v0 = type metadata accessor for Logger();
  sub_10000D0C8(v0, qword_10014FFD0);
  sub_10000BEC4(v0, qword_10014FFD0);
  return Logger.init(subsystem:category:)();
}

void sub_1000E931C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && a2)
  {
    swift_errorRetain();
    if (qword_100141A70 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000BEC4(v10, qword_10014FEA0);
    (*(v7 + 16))(v9, a3, v6);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v13 = 136315394;
      sub_100099E38();
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v7 + 8))(v9, v6);
      v18 = sub_1000BA1EC(v15, v17, &v21);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v19;
      *v14 = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to launch url: %s error: %@", v13, 0x16u);
      sub_1000157BC(v14);

      sub_100007E74(v20);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_1000E95DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1000E9654(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = [objc_allocWithZone(_LSOpenConfiguration) init];
  sub_100002D44(&qword_100144578);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F7970;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  sub_1000D5774(inited);
  swift_setDeallocating();
  sub_100002D44(&qword_100144580);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 setFrontBoardOptions:isa];

  v10 = objc_opt_self();
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  (*(v3 + 16))(&aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  (*(v3 + 32))(v15 + v14, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  aBlock[4] = sub_1000E99D4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E95DC;
  aBlock[3] = &unk_10013AAA0;
  v16 = _Block_copy(aBlock);
  v17 = v5;

  [v10 openWithURL:v13 configuration:v17 completionHandler:v16];
  _Block_release(v16);
}

uint64_t sub_1000E994C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000E99D4(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1000E931C(a1, a2, v6);
}

uint64_t sub_1000E9A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E9A7C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000DC80(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1000E9AD0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000DC80(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1000E9B24()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000DC80(v0, v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t sub_1000E9B7C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000DC80(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

unint64_t sub_1000E9BE4()
{
  result = qword_100148DB8;
  if (!qword_100148DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100148DB8);
  }

  return result;
}

uint64_t sub_1000E9C38()
{
  v1[2] = v0;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1000E9D04, 0, 0);
}

uint64_t sub_1000E9D04()
{
  v1 = [*(v0 + 16) artworkURL];
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  if (v1)
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = v1;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v2, v3, v4);
    v7 = swift_task_alloc();
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = sub_1000E9E58;
    v8 = *(v0 + 48);

    return sub_10005B2BC(v8);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_1000E9E58(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1000EA00C;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1000E9F84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E9F84()
{
  v1 = v0[8];
  (*(v0[4] + 8))(v0[6], v0[3]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1000EA00C()
{
  (*(v0[4] + 8))(v0[6], v0[3]);

  v1 = v0[1];

  return v1(0);
}

uint64_t sub_1000EA090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  sub_100002D44(&qword_100148DC0);
  v5[13] = swift_task_alloc();
  sub_100002D44(&qword_1001467E8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_100002D44(&qword_100148DC8);
  v5[16] = swift_task_alloc();
  sub_100002D44(&qword_1001467E0);
  v5[17] = swift_task_alloc();
  v6 = sub_100002D44(&qword_1001449B8);
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  sub_100002D44(&qword_1001467F0);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v7 = sub_100002D44(&qword_100148DD0);
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v8 = sub_100002D44(&qword_100148DD8);
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  v9 = type metadata accessor for MusicDataRequest.ExecutionMethod();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v10 = type metadata accessor for MusicAuthorization.Status();
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();

  return _swift_task_switch(sub_1000EA434, 0, 0);
}

uint64_t sub_1000EA434()
{
  (*(v0[31] + 104))(v0[32], enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v0[30]);
  static MusicDataRequest.preferredExecutionMethod.setter();
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_1000EA4FC;
  v2 = v0[36];

  return static MusicAuthorization.request()(v2);
}

uint64_t sub_1000EA4FC()
{

  return _swift_task_switch(sub_1000EA5F8, 0, 0);
}

uint64_t sub_1000EA5F8()
{
  (*(v0[34] + 104))(v0[35], enum case for MusicAuthorization.Status.authorized(_:), v0[33]);
  sub_1000EBE18(&qword_100148DE0, &type metadata accessor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[12];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v6 = *(v4 + 8);
    v6(v0[35], v0[33]);
    v6(v1, v3);

    if (!v5)
    {
LABEL_10:
      if (qword_100141A70 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000BEC4(v14, qword_10014FEA0);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Unexpected MusicKit authorization status", v17, 2u);
      }

      v19 = v0[9];
      v18 = v0[10];
      v20 = v0[8];

      v21 = type metadata accessor for Song();
      (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
      v22 = type metadata accessor for Artist();
      (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
      v23 = type metadata accessor for Album();
      (*(*(v23 - 8) + 56))(v18, 1, 1, v23);

      v24 = v0[1];

      return v24();
    }
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v8 = *(v4 + 8);
    v8(v2, v3);
    v8(v1, v3);

    if ((v7 & 1) == 0 || !v5)
    {
      goto LABEL_10;
    }
  }

  swift_getKeyPath();

  v0[6] = MusicItemID.init(_:)();
  v0[7] = v9;
  v0[38] = type metadata accessor for Song();
  sub_1000EBE18(&qword_100148DE8, &type metadata accessor for Song);
  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v0[39] = sub_100002D44(&qword_100142810);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000FE200;
  sub_100002D44(&qword_100148DF0);
  *(v10 + 32) = static PartialMusicProperty<A>.albums.getter();
  *(v10 + 40) = static PartialMusicProperty<A>.artists.getter();
  *(v10 + 48) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  MusicCatalogResourceRequest.properties.setter();
  MusicCatalogResourceRequest.limit.setter();
  v11 = swift_task_alloc();
  v0[40] = v11;
  *v11 = v0;
  v11[1] = sub_1000EAB7C;
  v12 = v0[26];
  v13 = v0[27];

  return MusicCatalogResourceRequest.response()(v12, v13);
}

uint64_t sub_1000EAB7C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1000EBA3C;
  }

  else
  {
    v2 = sub_1000EAC90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EAC90()
{
  v1 = v0[38];
  v2 = v0[23];
  v3 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  MusicCatalogResourceResponse.items.getter();
  sub_10006056C(v2);
  (*(v5 + 8))(v4, v6);
  sub_1000EBE60(v2, v3);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = v0[22];
    v10 = &qword_1001467F0;
LABEL_5:
    sub_100007E14(v9, v10);
    v16 = v0[17];
    v17 = type metadata accessor for Album();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    goto LABEL_7;
  }

  v11 = v0[38];
  v12 = v0[22];
  v13 = v0[16];
  Song.albums.getter();
  (*(v7 + 8))(v12, v11);
  v14 = sub_100002D44(&qword_100144998);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v9 = v0[16];
    v10 = &unk_100148DC8;
    goto LABEL_5;
  }

  v18 = v0[16];
  sub_10006059C(v0[17]);
  (*(v15 + 8))(v18, v14);
LABEL_7:
  v19 = v0[38];
  v20 = v0[21];
  sub_1000EBE60(v0[23], v20);
  if (v8(v20, 1, v19) == 1)
  {
    v22 = v0[28];
    v21 = v0[29];
    v23 = v0[27];
    v24 = v0[21];
    (*(v0[25] + 8))(v0[26], v0[24]);
    (*(v22 + 8))(v21, v23);
    v25 = &qword_1001467F0;
LABEL_13:
    sub_100007E14(v24, v25);
    v41 = v0[15];
    v42 = type metadata accessor for Artist();
    (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    v43 = v0[17];
    v44 = v0[15];
    v46 = v0[9];
    v45 = v0[10];
    sub_10002F250(v0[23], v0[8], &qword_1001467F0);
    sub_10002F250(v44, v46, &qword_1001467E8);
    sub_10002F250(v43, v45, &qword_1001467E0);

    v47 = v0[1];

    return v47();
  }

  v26 = v0[38];
  v27 = v0[21];
  v28 = v0[13];
  Song.artists.getter();
  (*(v7 + 8))(v27, v26);
  v29 = sub_100002D44(&qword_1001449A8);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    v32 = v0[28];
    v31 = v0[29];
    v33 = v0[27];
    v24 = v0[13];
    (*(v0[25] + 8))(v0[26], v0[24]);
    (*(v32 + 8))(v31, v33);
    v25 = &unk_100148DC0;
    goto LABEL_13;
  }

  v34 = v0[13];
  v35 = v0[14];
  sub_1000605CC(v35);
  (*(v30 + 8))(v34, v29);
  v36 = type metadata accessor for Artist();
  v0[42] = v36;
  v37 = *(v36 - 8);
  v0[43] = v37;
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    v39 = v0[28];
    v38 = v0[29];
    v40 = v0[27];
    v24 = v0[14];
    (*(v0[25] + 8))(v0[26], v0[24]);
    (*(v39 + 8))(v38, v40);
    v25 = &qword_1001467E8;
    goto LABEL_13;
  }

  v49 = swift_allocObject();
  v0[44] = v49;
  *(v49 + 16) = xmmword_1000F8490;
  sub_100002D44(&qword_100148DF8);
  *(v49 + 32) = static PartialMusicProperty<A>.biography.getter();
  v50 = swift_task_alloc();
  v0[45] = v50;
  *v50 = v0;
  v50[1] = sub_1000EB31C;
  v51 = v0[15];

  return dispatch thunk of MusicPropertyContainer.with(_:)(v51, v49, v36, &protocol witness table for Artist);
}

uint64_t sub_1000EB31C()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_1000EB638;
  }

  else
  {
    (*(v2[43] + 8))(v2[14], v2[42]);
    v3 = sub_1000EB46C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000EB46C()
{
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v6 = v0[15];
  (*(v0[25] + 8))(v0[26], v0[24]);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 56))(v6, 0, 1, v1);
  v7 = v0[17];
  v8 = v0[15];
  v10 = v0[9];
  v9 = v0[10];
  sub_10002F250(v0[23], v0[8], &qword_1001467F0);
  sub_10002F250(v8, v10, &qword_1001467E8);
  sub_10002F250(v7, v9, &qword_1001467E0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000EB638()
{
  v30 = v0;
  v1 = v0[42];
  v2 = v0[43];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[14];
  sub_100007E14(v0[17], &qword_1001467E0);
  sub_100007E14(v6, &qword_1001467F0);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v7, v1);
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000BEC4(v8, qword_10014FEA0);

  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[27];
  if (v11)
  {
    v28 = v0[29];
    v15 = v0[11];
    v16 = v0[12];
    v27 = v0[27];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v17 = 136315394;
    *(v17 + 4) = sub_1000BA1EC(v15, v16, &v29);
    *(v17 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v20;
    *v18 = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error fetching metadata for song %s: %@", v17, 0x16u);
    sub_100007E14(v18, &unk_100142880);

    sub_100007E74(v19);

    (*(v13 + 8))(v28, v27);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v21 = v0[9];
  v22 = v0[10];
  (*(*(v0[38] - 8) + 56))(v0[8], 1, 1);
  v23 = type metadata accessor for Artist();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  v24 = type metadata accessor for Album();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_1000EBA3C()
{
  v23 = v0;
  if (qword_100141A70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BEC4(v1, qword_10014FEA0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  if (v4)
  {
    v21 = v0[29];
    v8 = v0[11];
    v9 = v0[12];
    v20 = v0[27];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_1000BA1EC(v8, v9, &v22);
    *(v10 + 12) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching metadata for song %s: %@", v10, 0x16u);
    sub_100007E14(v11, &unk_100142880);

    sub_100007E74(v12);

    (*(v6 + 8))(v21, v20);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v14 = v0[9];
  v15 = v0[10];
  (*(*(v0[38] - 8) + 56))(v0[8], 1, 1);
  v16 = type metadata accessor for Artist();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = type metadata accessor for Album();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1000EBDD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000DC80(a1, a1[3]);
  result = dispatch thunk of SongFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000EBE18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000EBE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D44(&qword_1001467F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EBEE4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Logger();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000EBFA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LocationManager()
{
  result = qword_100148E58;
  if (!qword_100148E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000EC094()
{
  result = sub_1000EC118();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000EC118()
{
  result = qword_100148E68;
  if (!qword_100148E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100148E68);
  }

  return result;
}

void sub_1000EC164()
{
  v1 = type metadata accessor for LocationManager();
  v2 = __chkstk_darwin(v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  if ([*v0 authorizationStatus])
  {
    sub_1000EC348(v0, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      v9 = [*v4 authorizationStatus];
      sub_1000EC3AC(v4);
      *(v8 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v6, v7, "Location status is %d, not requesting authorization", v8, 8u);
    }

    else
    {
      sub_1000EC3AC(v4);
    }
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Location status is notDetermined, requesting authorization", v12, 2u);
    }

    [v5 requestWhenInUseAuthorization];
  }
}

uint64_t sub_1000EC348(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationManager();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EC3AC(uint64_t a1)
{
  v2 = type metadata accessor for LocationManager();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EC41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002D44(&unk_100144630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000EC4FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002D44(&unk_100144630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AnySong()
{
  result = qword_100148EF0;
  if (!qword_100148EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EC610()
{
  sub_1000085D0();
  if (v0 <= 0x3F)
  {
    sub_1000EC694();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000EC694()
{
  result = qword_100148F00;
  if (!qword_100148F00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100148F00);
  }

  return result;
}

uint64_t sub_1000EC6F8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 8))(v3, v4);
}

uint64_t sub_1000EC750(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 16))(v3, v4);
}

uint64_t sub_1000EC7A8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 24))(v3, v4);
}

uint64_t sub_1000EC800(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 32))(v3, v4);
}

uint64_t sub_1000EC858(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 40))(v3, v4);
}

uint64_t sub_1000EC8B8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000DC80(v2, v3);
  return (*(v4 + 48))(v3, v4);
}

uint64_t sub_1000EC918(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_100002D44(&unk_100144630);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(sub_1000ECA50, v5, v4);
}

uint64_t sub_1000ECA50()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView);
  v2 = [*(v0 + 16) artworkURL];
  if (v2)
  {
    v3 = *(v0 + 64);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v3, v4, v6);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v2 != 0;
  v9 = *(v0 + 64);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(*(v0 + 40) + 56);
  v13 = 1;
  v12(v9, v7, 1, *(v0 + 32));
  sub_10001719C(v9);
  [v1 setHidden:v8];
  v14 = *(v11 + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView);
  *(v0 + 96) = v14;
  v15 = [v10 artworkURL];
  if (v15)
  {
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v19 + 32))(v16, v17, v18);
    v13 = 0;
  }

  v20 = *(v0 + 56);
  v12(v20, v13, 1, *(v0 + 32));
  sub_10001719C(v20);
  [v14 setHidden:v15 == 0];
  v21 = swift_task_alloc();
  *(v0 + 104) = v21;
  *v21 = v0;
  v21[1] = sub_1000ECC64;

  return sub_1000E9C38();
}

uint64_t sub_1000ECC64(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_1000ECD8C, v4, v3);
}

uint64_t sub_1000ECD8C()
{
  v1 = v0[14];
  v2 = v0[12];

  [v2 setImage:v1];

  v3 = v0[1];

  return v3();
}

id sub_1000ECE60(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + *a2) centerYAnchor];
    v7 = [*(v2 + OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtContainerView) centerYAnchor];
    v8 = [v6 constraintEqualToAnchor:v7 constant:391.0];

    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

id sub_1000ECF34()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  qword_100148F30 = result;
  return result;
}

id sub_1000ECF80()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.447058824 green:0.447058824 blue:0.447058824 alpha:0.6];
  qword_100148F38 = result;
  return result;
}

void sub_1000ECFD0()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 colorWithAlphaComponent:0.15];

  qword_100148F40 = v1;
}

id sub_1000ED040()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0980392157 green:0.0980392157 blue:0.0980392157 alpha:1.0];
  qword_100148F48 = result;
  return result;
}

__n128 sub_1000ED088()
{
  __asm { FMOV            V0.2D, #24.0 }

  xmmword_100148F50 = result;
  return result;
}

void sub_1000ED09C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for ArtworkUnavailableView();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  ArtworkUnavailableView.init(placeholderImage:widthRatio:heightRatio:)();
  v18 = objc_allocWithZone(sub_100002D44(&qword_100148FE8));
  (*(v12 + 16))(v14, v17, v11);
  v19 = UIHostingController.init(rootView:)();
  (*(v12 + 8))(v17, v11);
  v20 = [v19 view];

  if (v20)
  {
    *&v5[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView] = v20;
    v21 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtContainerView;
    *&v5[v21] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v22 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView;
    *&v5[v22] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v23 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_titleLabel;
    *&v5[v23] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v24 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_artistLabel;
    *&v5[v24] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v25 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamLogoImageView;
    *&v5[v25] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v26 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountLabel;
    *&v5[v26] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v27 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_trackDetailsStackView;
    *&v5[v27] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v28 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountStackView;
    *&v5[v28] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v29 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_appleMusicButton;
    *&v5[v29] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    *&v5[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView____lazy_storage___albumArtImageViewCenterYConstraint] = 0;
    *&v5[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView____lazy_storage___placeholderViewCenterYConstraint] = 0;
    v31.receiver = v5;
    v31.super_class = ObjectType;
    v30 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
    sub_1000ED454();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000ED454()
{
  v1 = v0;
  v2 = sub_100002D44(&qword_100146198);
  __chkstk_darwin(v2 - 8);
  v145 = v140 - v3;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v143 = *(v4 - 8);
  v144 = v4;
  __chkstk_darwin(v4);
  v142 = v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration();
  v154 = *(v6 - 8);
  v155 = v6;
  v7 = __chkstk_darwin(v6);
  v153 = v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 setTranslatesAutoresizingMaskIntoConstraints:{0, v7}];
  v9 = *&v0[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_trackDetailsStackView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v9];
  v10 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_titleLabel];
  [v9 addArrangedSubview:v10];
  v11 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_artistLabel];
  [v9 addArrangedSubview:v11];
  [v9 setAxis:1];
  [v9 setDistribution:0];
  v150 = v9;
  [v9 setAlignment:0];
  v12 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtContainerView];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v12];
  v13 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 addSubview:v13];
  [v13 _setContinuousCornerRadius:20.0];
  [v13 setClipsToBounds:1];
  v14 = [v13 layer];
  if (qword_100141DA8 != -1)
  {
    swift_once();
  }

  v15 = qword_100148F40;
  v16 = [qword_100148F40 CGColor];
  [v14 setBorderColor:v16];

  v17 = [v13 layer];
  [v17 setBorderWidth:0.5];

  v18 = [v13 layer];
  [v18 setBorderPathIsBounds:1];

  v19 = String._bridgeToObjectiveC()();
  v141 = v13;
  [v13 setAccessibilityIdentifier:v19];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = objc_opt_self();
  v21 = [v20 systemFontOfSize:38.0 weight:UIFontWeightSemibold];
  [v10 setFont:v21];

  v22 = objc_opt_self();
  v23 = [v22 whiteColor];
  [v10 setTextColor:v23];

  [v10 setNumberOfLines:2];
  LODWORD(v24) = 1132068864;
  [v10 setContentCompressionResistancePriority:0 forAxis:v24];
  v25 = String._bridgeToObjectiveC()();
  [v10 setAccessibilityIdentifier:v25];

  v26 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v140[0] = v12;
  [v12 addSubview:v26];
  [v26 _setContinuousCornerRadius:20.0];
  [v26 setClipsToBounds:1];
  v27 = String._bridgeToObjectiveC()();
  [v26 setAccessibilityIdentifier:v27];

  v28 = [v26 layer];
  v29 = [v15 CGColor];
  [v28 setBorderColor:v29];

  v30 = [v26 layer];
  [v30 setBorderWidth:0.5];

  v31 = [v26 layer];
  [v31 setBorderPathIsBounds:1];

  v149 = v26;
  [v26 setOverrideUserInterfaceStyle:2];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v151 = v20;
  v32 = [v20 systemFontOfSize:34.0 weight:UIFontWeightRegular];
  [v11 setFont:v32];

  [v11 setNumberOfLines:1];
  if (qword_100141D98 != -1)
  {
    swift_once();
  }

  [v11 setTextColor:qword_100148F30];
  LODWORD(v33) = 1132068864;
  [v11 setContentCompressionResistancePriority:0 forAxis:v33];
  v34 = String._bridgeToObjectiveC()();
  [v11 setAccessibilityIdentifier:v34];

  v35 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountStackView];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v35];
  v36 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamLogoImageView];
  [v35 addArrangedSubview:v36];
  v152 = v36;
  [v35 setCustomSpacing:v36 afterView:4.0];
  v37 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountLabel];
  [v35 addArrangedSubview:v37];
  [v35 setAxis:0];
  [v35 setDistribution:0];
  v146 = v35;
  [v35 setAlignment:0];
  v140[1] = sub_100002D44(&qword_100142810);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000FE200;
  *(v38 + 32) = [v22 blackColor];
  *(v38 + 40) = [v22 blackColor];
  if (qword_100141DA0 != -1)
  {
    swift_once();
  }

  v39 = qword_100148F38;
  *(v38 + 48) = qword_100148F38;
  sub_1000123E4(0, &qword_100142E20);
  v40 = v39;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v42 = [objc_opt_self() configurationWithPaletteColors:isa];

  v43 = v42;
  v44 = String._bridgeToObjectiveC()();
  v45 = objc_opt_self();
  v46 = [v45 systemImageNamed:v44 withConfiguration:v43];

  v148 = v43;
  v147 = v46;
  [v152 setImage:v46];
  v47 = [v151 systemFontOfSize:20.0 weight:UIFontWeightMedium];
  [v37 setFont:v47];

  [v37 setAdjustsFontForContentSizeCategory:1];
  [v37 setTextColor:v40];
  LODWORD(v48) = 1132068864;
  [v37 setContentCompressionResistancePriority:0 forAxis:v48];
  v49 = String._bridgeToObjectiveC()();
  [v37 setAccessibilityIdentifier:v49];

  v50 = *&v1[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_appleMusicButton];
  [v50 setTranslatesAutoresizingMaskIntoConstraints:0];
  v51 = String._bridgeToObjectiveC()();
  [v50 setAccessibilityIdentifier:v51];

  v52 = [objc_opt_self() mainBundle];
  v156._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD00000000000001FLL;
  v53._object = 0x8000000100102540;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v156._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v156);

  v55 = String._bridgeToObjectiveC()();

  [v50 setAccessibilityLabel:v55];

  [v1 addSubview:v50];
  v56 = v153;
  static UIButton.Configuration.filled()();
  v57 = String._bridgeToObjectiveC()();
  v58 = [v45 imageNamed:v57];

  UIButton.Configuration.image.setter();
  v59 = v141;
  v60 = v140[0];
  if (qword_100141DB0 != -1)
  {
    swift_once();
  }

  v61 = qword_100148F48;
  UIButton.Configuration.baseBackgroundColor.setter();
  (*(v143 + 104))(v142, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v144);
  UIButton.Configuration.cornerStyle.setter();
  v62 = v154;
  v63 = v155;
  v64 = v145;
  (*(v154 + 16))(v145, v56, v155);
  (*(v62 + 56))(v64, 0, 1, v63);
  UIButton.configuration.setter();
  v65 = [objc_opt_self() mainScreen];
  [v65 bounds];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;

  v157.origin.x = v67;
  v157.origin.y = v69;
  v157.size.width = v71;
  v157.size.height = v73;
  v74 = CGRectGetWidth(v157) + -98.0;
  v151 = objc_opt_self();
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1000FEFF0;
  v76 = [v60 leadingAnchor];
  v77 = [v1 leadingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 constant:24.0];

  *(v75 + 32) = v78;
  v79 = [v60 heightAnchor];
  v80 = [v79 constraintEqualToConstant:v74];

  *(v75 + 40) = v80;
  v81 = [v60 widthAnchor];
  v82 = [v60 heightAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  *(v75 + 48) = v83;
  v84 = [v60 centerYAnchor];
  v85 = [v1 centerYAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];

  *(v75 + 56) = v86;
  v87 = [v59 centerXAnchor];
  v88 = [v60 centerXAnchor];
  v89 = [v87 constraintEqualToAnchor:v88];

  *(v75 + 64) = v89;
  v90 = [v59 heightAnchor];
  v91 = [v60 heightAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v75 + 72) = v92;
  v93 = [v59 widthAnchor];
  v94 = [v60 widthAnchor];
  v95 = [v93 constraintEqualToAnchor:v94];

  *(v75 + 80) = v95;
  *(v75 + 88) = sub_1000ECE60(&OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView____lazy_storage___albumArtImageViewCenterYConstraint, &OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView);
  v96 = v150;
  v97 = [v150 leadingAnchor];
  v98 = [v60 trailingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98 constant:38.0];

  *(v75 + 96) = v99;
  v100 = [v96 trailingAnchor];
  v101 = [v1 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  *(v75 + 104) = v102;
  v103 = [v96 centerYAnchor];
  v104 = [v1 centerYAnchor];
  v105 = [v103 constraintEqualToAnchor:v104];

  *(v75 + 112) = v105;
  v106 = [v50 trailingAnchor];
  v107 = [v1 trailingAnchor];
  v108 = [v106 constraintEqualToAnchor:v107];

  *(v75 + 120) = v108;
  v109 = [v50 widthAnchor];
  v110 = [v109 constraintEqualToConstant:149.0];

  *(v75 + 128) = v110;
  v111 = [v50 heightAnchor];
  v112 = [v111 constraintEqualToConstant:50.0];

  *(v75 + 136) = v112;
  v113 = [v50 bottomAnchor];
  v114 = [v60 bottomAnchor];
  v115 = [v113 constraintEqualToAnchor:v114];

  *(v75 + 144) = v115;
  v116 = v146;
  v117 = [v146 leadingAnchor];
  v118 = [v96 leadingAnchor];
  v119 = [v117 constraintEqualToAnchor:v118];

  *(v75 + 152) = v119;
  v120 = [v116 centerYAnchor];
  v121 = [v50 centerYAnchor];
  v122 = [v120 constraintEqualToAnchor:v121];

  *(v75 + 160) = v122;
  v123 = v152;
  v124 = [v152 heightAnchor];
  if (qword_100141DB8 != -1)
  {
    swift_once();
  }

  v125 = [v124 constraintEqualToConstant:*(&xmmword_100148F50 + 1)];

  *(v75 + 168) = v125;
  v126 = [v123 widthAnchor];
  v127 = [v126 constraintEqualToConstant:*&xmmword_100148F50];

  *(v75 + 176) = v127;
  v128 = v149;
  v129 = [v149 centerXAnchor];
  v130 = [v60 centerXAnchor];
  v131 = [v129 constraintEqualToAnchor:v130];

  *(v75 + 184) = v131;
  v132 = [v128 heightAnchor];
  v133 = [v60 heightAnchor];
  v134 = [v132 constraintEqualToAnchor:v133];

  *(v75 + 192) = v134;
  v135 = [v128 widthAnchor];
  v136 = [v60 widthAnchor];
  v137 = [v135 constraintEqualToAnchor:v136];

  *(v75 + 200) = v137;
  *(v75 + 208) = sub_1000ECE60(&OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView____lazy_storage___placeholderViewCenterYConstraint, &OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView);
  sub_1000123E4(0, &qword_100143260);
  v138 = Array._bridgeToObjectiveC()().super.isa;

  [v151 activateConstraints:v138];

  return (*(v154 + 8))(v153, v155);
}

void sub_1000EE9F4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ArtworkUnavailableView();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  ArtworkUnavailableView.init(placeholderImage:widthRatio:heightRatio:)();
  v12 = objc_allocWithZone(sub_100002D44(&qword_100148FE8));
  (*(v6 + 16))(v8, v11, v5);
  v13 = UIHostingController.init(rootView:)();
  (*(v6 + 8))(v11, v5);
  v14 = [v13 view];

  if (v14)
  {
    *&v2[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_placeholderArtworkView] = v14;
    v15 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtContainerView;
    *&v2[v15] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v16 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_albumArtImageView;
    *&v2[v16] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v17 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_titleLabel;
    *&v2[v17] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v18 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_artistLabel;
    *&v2[v18] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v19 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamLogoImageView;
    *&v2[v19] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v20 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountLabel;
    *&v2[v20] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v21 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_trackDetailsStackView;
    *&v2[v21] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v22 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_shazamCountStackView;
    *&v2[v22] = [objc_allocWithZone(UIStackView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v23 = OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView_appleMusicButton;
    *&v2[v23] = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    *&v2[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView____lazy_storage___albumArtImageViewCenterYConstraint] = 0;
    *&v2[OBJC_IVAR____TtC16MusicRecognition16AmbientMatchView____lazy_storage___placeholderViewCenterYConstraint] = 0;
    v26.receiver = v2;
    v26.super_class = ObjectType;
    v24 = objc_msgSendSuper2(&v26, "initWithCoder:", a1);
    if (v24)
    {
      v25 = v24;
      sub_1000ED454();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000EEF04(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_10014FE90 == -1)
  {
    if (qword_10014FE98)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000EF3CC();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10014FE98)
    {
      return _availability_version_check();
    }
  }

  if (qword_10014FE88 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000EF3E4();
    a3 = v10;
    a4 = v9;
    v8 = dword_10014FE78 < v11;
    if (dword_10014FE78 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10014FE7C > a3)
      {
        return 1;
      }

      if (dword_10014FE7C >= a3)
      {
        return dword_10014FE80 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10014FE78 < a2;
  if (dword_10014FE78 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000EF098(uint64_t result)
{
  v1 = qword_10014FE98;
  if (qword_10014FE98)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10014FE98 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10014FE78, &dword_10014FE7C, &dword_10014FE80);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

uint64_t EntityProperty<>.init(title:)()
{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t ModifiedContent<>.accessibilityLabel(_:)()
{
  return ModifiedContent<>.accessibilityLabel(_:)();
}

{
  return ModifiedContent<>.accessibilityLabel(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.toolbar<A>(content:)()
{
  return View.toolbar<A>(content:)();
}

{
  return View.toolbar<A>(content:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CMTime __swiftcall CMTime.init(value:timescale:)(Swift::Int64 value, Swift::Int32 timescale)
{
  v2 = CMTime.init(value:timescale:)(value, *&timescale);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = HIDWORD(v3);
  result.value = v2;
  return result;
}