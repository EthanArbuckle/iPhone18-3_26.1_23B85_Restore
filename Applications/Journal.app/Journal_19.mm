char *sub_10020D3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v14 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 collectionView];
  if (v8)
  {
    v9 = v8;
    sub_1000F24EC(&unk_100AD8A90);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100940050;
    *(v10 + 32) = a1;
    result = [v9 numberOfItemsInSection:a1];
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      *(v10 + 40) = result - 1;
      IndexPath.init(arrayLiteral:)();
      sub_10020AB78(v7, a2);

      return (*(v14 + 8))(v7, v5);
    }
  }

  else
  {
    v12 = *(v14 + 56);

    return v12(a2, 1, 1, v5);
  }

  return result;
}

uint64_t sub_10020D564()
{
  sub_100004DF8(*(v0 + 16));
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

__n128 sub_10020D5E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10020D604(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 82))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 81);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10020D658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 81) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10020D6C4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 88) = 0;
  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 96) = xmmword_1009481C0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 128) = &_swiftEmptyDictionarySingleton;
  return v0;
}

double sub_10020D740@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  (*(v2 + 16))(v7, *a1);
  v4 = v7[1];
  *a2 = v7[0];
  a2[1] = v4;
  result = *&v8;
  v6 = v9;
  a2[2] = v8;
  a2[3] = v6;
  return result;
}

uint64_t sub_10020D78C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100ADFB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020D800(uint64_t a1, uint64_t a2)
{
  v5 = sub_1000F24EC(&qword_100AD8740);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for MotionActivityAssetMetadata();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata))
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_11;
  }

  sub_10025DF64(v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_11:
    sub_100004F84(v7, &qword_100AD8740);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  v12 = MotionActivityAssetMetadata.activityType.getter();
  if (!a2)
  {

    goto LABEL_13;
  }

  if (v12 != a1 || v13 != a2)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_17;
    }

LABEL_13:
    v17 = MotionActivityAssetMetadata.activityType.getter();
    v19 = v18;
    v20 = sub_10009B77C(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = v20[2];
    v22 = v20[3];
    v23 = v21 + 1;
    if (v21 >= v22 >> 1)
    {
      v33 = v20;
      v34 = v20[2];
      v35 = sub_10009B77C((v22 > 1), v21 + 1, 1, v33);
      v21 = v34;
      v20 = v35;
    }

    v20[2] = v23;
    v24 = &v20[2 * v21];
    v24[4] = v17;
    v24[5] = v19;
    goto LABEL_18;
  }

LABEL_17:
  v20 = _swiftEmptyArrayStorage;
LABEL_18:
  v25 = MotionActivityAssetMetadata.steps.getter();
  v27 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_10009B77C(0, v20[2] + 1, 1, v20);
  }

  v29 = v20[2];
  v28 = v20[3];
  if (v29 >= v28 >> 1)
  {
    v20 = sub_10009B77C((v28 > 1), v29 + 1, 1, v20);
  }

  v20[2] = v29 + 1;
  v30 = &v20[2 * v29];
  v30[4] = v25;
  v30[5] = v27;
  sub_10009BB20(8236, 0xE200000000000000, v20);
  v32 = v31;

  (*(v9 + 8))(v11, v8);
  return v32;
}

uint64_t sub_10020DB44()
{
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v35[1] = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v35[0] = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD1EC8);
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v7 = v35 - v6;
  v8 = sub_1000F24EC(&qword_100AD1ED8);
  __chkstk_darwin(v8 - 8);
  v38 = v35 - v9;
  v10 = type metadata accessor for MotionActivityAssetMetadata();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AD8740);
  __chkstk_darwin(v14 - 8);
  v16 = v35 - v15;
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v18 = sub_1000F24EC(&qword_100AD1ED0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v35 - v20;
  static Locale.autoupdatingCurrent.getter();
  sub_1000F6568();
  IntegerFormatStyle.init(locale:)();
  if (*(v0 + OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata))
  {

    sub_10025DF64(v16);

    if ((*(v11 + 48))(v16, 1, v10))
    {
      (*(v19 + 8))(v21, v18);
      v22 = &qword_100AD8740;
      v23 = v16;
LABEL_9:
      sub_100004F84(v23, v22);
      return 0;
    }

    (*(v11 + 16))(v13, v16, v10);
    sub_100004F84(v16, &qword_100AD8740);
    MotionActivityAssetMetadata.steps.getter();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    if (v25)
    {
      String.subscript.getter();

      sub_10020F6E4();
      dispatch thunk of RegexComponent.regex.getter();
      v26 = v37;
      Regex.firstMatch(in:)();
      (*(v36 + 8))(v7, v26);

      v27 = sub_1000F24EC(&qword_100AD1EE0);
      v28 = *(v27 - 8);
      v29 = v38;
      if ((*(v28 + 48))(v38, 1, v27) != 1)
      {
        Regex.Match.output.getter();
        v31 = v39;
        (*(v28 + 8))(v29, v27);
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v32._countAndFlagsBits = 0;
        v32._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
        v39 = v31;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v33._countAndFlagsBits = 0x2973287065747320;
        v33._object = 0xE800000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        v34 = String.init(localized:table:bundle:locale:comment:)();
        (*(v19 + 8))(v21, v18);
        return v34;
      }

      (*(v19 + 8))(v21, v18);
      v22 = &qword_100AD1ED8;
      v23 = v29;
      goto LABEL_9;
    }
  }

  (*(v19 + 8))(v21, v18);
  return 0;
}

id sub_10020E26C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MotionActivityAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MotionActivityAsset()
{
  result = qword_100AD8AD8;
  if (!qword_100AD8AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10020E3A0()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v49[2] = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790);
  v7 = __chkstk_darwin(v6 - 8);
  v50 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v49 - v9;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AD8740);
  __chkstk_darwin(v15 - 8);
  v17 = v49 - v16;
  v18 = type metadata accessor for MotionActivityAssetMetadata();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v0;
  if (!*(v0 + OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata))
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_12;
  }

  sub_10025DF64(v17);

  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_12:
    sub_100004F84(v17, &qword_100AD8740);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  static UTType.item.getter();
  v22 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v24 = [v22 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  v25 = MotionActivityAssetMetadata.localizedActivityName.getter();
  if (v26)
  {
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      goto LABEL_9;
    }
  }

  MotionActivityAssetMetadata.activityType.getter();
LABEL_9:
  v28 = String._bridgeToObjectiveC()();

  [v24 setDisplayName:v28];

  sub_10020DB44();
  v49[1] = v3;
  if (v29)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  [v24 setContentDescription:v30];

  v31 = v50;
  MotionActivityAssetMetadata.startTime.getter();
  v32 = v31;
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  if (v35(v32, 1, v33) == 1)
  {
    v36 = *(v51 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    if (v36)
    {
      v37 = [v36 entry];
      if (v37)
      {
        v38 = v37;
        JournalEntryMO.displayDate.getter();

        v39 = 0;
      }

      else
      {
        v39 = 1;
      }

      v32 = v50;
    }

    else
    {
      v39 = 1;
    }

    (*(v34 + 56))(v10, v39, 1, v33);
    if (v35(v32, 1, v33) != 1)
    {
      sub_100004F84(v32, &unk_100AD4790);
    }
  }

  else
  {
    (*(v34 + 32))(v10, v32, v33);
    (*(v34 + 56))(v10, 0, 1, v33);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v40 = String.init(localized:table:bundle:locale:comment:)();
  v42 = v41;
  sub_1000F24EC(&unk_100AD9A60);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100940080;
  v44 = sub_10012C00C(v40, v42, v10);
  v46 = v45;

  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v47 = Array._bridgeToObjectiveC()().super.isa;

  [v24 setAlternateNames:v47];

  sub_100004F84(v10, &unk_100AD4790);
  (*(v19 + 8))(v21, v18);
  return v24;
}

uint64_t sub_10020EAD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MotionActivityAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_10020EB14(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(char *, uint64_t, uint64_t), uint64_t a12, uint64_t a13)
{
  v100 = a8;
  v91 = a7;
  v90 = a6;
  v98 = a4;
  v99 = a5;
  v109 = a3;
  v86 = a2;
  v107 = a1;
  v101 = sub_1000F24EC(&qword_100AD8B30);
  __chkstk_darwin(v101);
  v102 = v83 - v13;
  v14 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v14 - 8);
  v95 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = v83 - v17;
  v18 = sub_1000F24EC(&qword_100AD8B38);
  __chkstk_darwin(v18 - 8);
  v89 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v92 = v83 - v21;
  v96 = type metadata accessor for MotionActivityAssetMetadata();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v104);
  v105 = (v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = type metadata accessor for UUID();
  v111 = *(v108 - 8);
  v24 = v111;
  __chkstk_darwin(v108);
  v103 = (v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v26);
  v106 = v83 - v27;
  v28 = type metadata accessor for AssetSource();
  v110 = *(v28 - 8);
  v29 = v110;
  __chkstk_darwin(v28);
  v88 = v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v83 - v32;
  v87 = v83 - v32;
  v34 = type metadata accessor for AssetType();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = v83 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v38);
  v41 = v83 - v40;
  v42 = *(v35 + 104);
  v84 = v34;
  v42(v83 - v40, enum case for AssetType.motionActivity(_:), v34, v39);
  v85 = *(v29 + 16);
  v85(v33, v107, v28);
  v43 = v106;
  UUID.init()();
  v44 = objc_allocWithZone(type metadata accessor for MotionActivityAsset());
  *&v44[OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata] = 0;
  v45 = v103;
  (*(v24 + 16))(v103, v43, v108);
  (*(v35 + 16))(v37, v41, v34);
  v46 = v88;
  v47 = v87;
  v85(v88, v87, v28);
  v48 = sub_100285908(v45, v37, v46);
  v49 = *(v111 + 8);
  v50 = v106;
  v111 += 8;
  v103 = v49;
  v49();
  v51 = *(v110 + 8);
  v52 = v28;
  v53 = v48;
  v88 = v52;
  v110 += 8;
  v87 = v51;
  (v51)(v47);
  (*(v35 + 8))(v41, v84);
  v54 = v86;
  if (v86)
  {
    v55 = v105;
    *v105 = v86;
    swift_storeEnumTagMultiPayload();
    v56 = v54;
    UUID.init()();
    v57 = UUID.uuidString.getter();
    v59 = v58;
    (v103)(v50, v108);
    type metadata accessor for AssetAttachment(0);
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    sub_1001700CC(v55, v60 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
    v61 = (v60 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v61 = v57;
    v61[1] = v59;
    v62 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v53[v62] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v53[v62] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v85 = a11;
  v84 = a10;
  v83[1] = a9;
  if (v109)
  {
    v63 = v109;
    v64 = v105;
    *v105 = v109;
    swift_storeEnumTagMultiPayload();
    v65 = v63;
    UUID.init()();
    v66 = UUID.uuidString.getter();
    v68 = v67;
    (v103)(v50, v108);
    type metadata accessor for AssetAttachment(0);
    v69 = swift_allocObject();
    *(v69 + 16) = 1;
    sub_1001700CC(v64, v69 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
    v70 = (v69 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v70 = v66;
    v70[1] = v68;
    v71 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v53[v71] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v53[v71] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v72 = v89;
  MotionActivityTypeEnum.init(rawValue:)();
  v73 = type metadata accessor for MotionActivityTypeEnum();
  v74 = *(v73 - 8);
  v75 = *(v74 + 48);
  if (v75(v72, 1, v73) == 1)
  {
    v76 = v92;
    (*(v74 + 104))(v92, enum case for MotionActivityTypeEnum.walking(_:), v73);
    if (v75(v72, 1, v73) != 1)
    {
      sub_100004F84(v72, &qword_100AD8B38);
    }
  }

  else
  {
    v76 = v92;
    (*(v74 + 32))(v92, v72, v73);
  }

  (*(v74 + 56))(v76, 0, 1, v73);
  sub_100088AC8(a12, v97);
  sub_100088AC8(a13, v95);
  v77 = v93;
  MotionActivityAssetMetadata.init(activityType:activityTypeEnum:localizedActivityName:steps:startTime:endTime:)();

  sub_100004F84(a13, &unk_100AD4790);
  sub_100004F84(a12, &unk_100AD4790);
  (v87)(v107, v88);
  v78 = v102;
  (*(v94 + 32))(v102, v77, v96);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD8B40);
  v79 = swift_allocObject();
  v80 = *(*v79 + 104);
  v81 = sub_1000F24EC(&qword_100AD8740);
  (*(*(v81 - 8) + 56))(v79 + v80, 1, 1, v81);
  *(v79 + *(*v79 + 112)) = xmmword_100941EE0;
  sub_10020F674(v78, v79 + *(*v79 + 120));
  *&v53[OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata] = v79;

  return v53;
}

uint64_t sub_10020F674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD8B30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10020F6E4()
{
  result = qword_100AD1EE8;
  if (!qword_100AD1EE8)
  {
    sub_1000F2A18(&qword_100AD1ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1EE8);
  }

  return result;
}

void sub_10020F784()
{
  v1 = v0;
  v44.receiver = v0;
  v44.super_class = type metadata accessor for MacSettingsTabHostingController();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC7Journal31MacSettingsTabHostingController_contentViewController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [v2 view];
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  type metadata accessor for UILayoutPriority(0);
  sub_1001E80F8();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v7) = v43;
  [v6 setContentHuggingPriority:1 forAxis:v7];

  v8 = [v1 view];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  v10 = [v2 view];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  [v9 addSubview:v10];

  sub_1000F24EC(&unk_100AD4780);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100941830;
  v13 = [v2 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v1 view];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  *(v12 + 32) = v19;
  v20 = [v2 view];
  if (!v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = v20;
  v22 = [v20 leadingAnchor];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = [v22 constraintEqualToAnchor:v25];
  *(v12 + 40) = v26;
  v27 = [v2 view];
  if (!v27)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v1 view];
  if (!v30)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v29 constraintEqualToAnchor:v32];
  *(v12 + 48) = v33;
  v34 = [v2 view];
  if (!v34)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v35 = v34;
  v36 = [v34 trailingAnchor];

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    v39 = objc_opt_self();
    v40 = [v38 trailingAnchor];

    v41 = [v36 constraintEqualToAnchor:v40];
    *(v12 + 56) = v41;
    sub_1001AD130();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v39 activateConstraints:isa];

    return;
  }

LABEL_25:
  __break(1u);
}

id sub_10020FC54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MacSettingsTabHostingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10020FCBC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD8B78);
  v1 = sub_10000617C(v0, qword_100AD8B78);
  if (qword_100AD0218 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10020FD84(double a1, double a2, double a3, double a4)
{
  v17.receiver = v4;
  v17.super_class = type metadata accessor for RouteAssetView.CutOutView();
  v9 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 blackColor];
  v13 = [v12 colorWithAlphaComponent:0.65];

  [v11 setBackgroundColor:v13];
  v14 = [v11 layer];
  [v14 setCompositingFilter:kCAFilterDestOut];

  v15 = [v11 layer];
  [v15 setMasksToBounds:1];

  return v11;
}

uint64_t sub_10020FF5C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  sub_10021062C();
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  sub_1003E9628(0, 0, v4, &unk_100948448, v8);

  v10 = *(v1 + OBJC_IVAR____TtC7Journal14RouteAssetView_routeAsset);
  if (v10)
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = &v10[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v13 = *&v10[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    *v12 = sub_100216430;
    v12[1] = v11;
    v14 = v10;

    sub_100004DF8(v13);
  }

  return result;
}

void sub_100210140()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v11[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10021062C();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;

    sub_1003E9628(0, 0, v2, &unk_100948450, v10);
  }
}

id sub_1002102F4(double a1, double a2, double a3, double a4)
{
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = OBJC_IVAR____TtC7Journal14RouteAssetView_routeImageView;
  *&v4[v12] = [objc_allocWithZone(UIImageView) init];
  v13 = OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel;
  *&v4[v14] = [objc_allocWithZone(UILabel) init];
  v15 = OBJC_IVAR____TtC7Journal14RouteAssetView_shadowView;
  *&v4[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutView;
  type metadata accessor for RouteAssetView.CutOutView();
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewCenterXConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewHeightConstraint] = 0;
  v17 = OBJC_IVAR____TtC7Journal14RouteAssetView_labelTextProvider;
  type metadata accessor for RouteAssetView.LabelTextProvider();
  v18 = swift_allocObject();
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = 0;
  *&v4[v17] = v18;
  *&v4[OBJC_IVAR____TtC7Journal14RouteAssetView_routeAsset] = 0;
  v19 = OBJC_IVAR____TtC7Journal14RouteAssetView_latestImageRequestID;
  v20 = type metadata accessor for UUID();
  (*(*(v20 - 8) + 56))(&v4[v19], 1, 1, v20);
  v4[OBJC_IVAR____TtC7Journal14RouteAssetView_previousSizeType] = 8;
  v21 = type metadata accessor for RouteAssetView();
  v29.receiver = v4;
  v29.super_class = v21;
  v22 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v25 = v22;

  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v24;

  sub_1003E9628(0, 0, v11, &unk_1009484B8, v27);

  return v25;
}

void sub_10021062C()
{
  v1 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v1 - 8);
  v3 = &v44[-v2];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  __chkstk_darwin(v7);
  v9 = &v44[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v55 = &v44[-v15];
  v16 = *&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_routeAsset];
  if (v16)
  {
    v51 = v14;
    v52 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v53 = v6;
    v50 = v4;
    v17 = v0[OBJC_IVAR____TtC7Journal14RouteAssetView_previousSizeType];
    v18 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v54 = v16;
    v19 = v3;
    if (v17 == 8)
    {
      v20 = v16;
      goto LABEL_9;
    }

    v21 = v0[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
    v47 = v16;
    if ((sub_10003C2FC(v21, v17) & 1) == 0 || (v22 = [*&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_routeImageView] image]) == 0)
    {
LABEL_9:
      Date.init()();
      v24 = v0[v18];
      v48 = v12;
      v49 = v10;
      if (v24 > 6)
      {
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v25 & 1) == 0)
        {
          if (qword_100ACFB90 != -1)
          {
            swift_once();
          }

          v26 = &qword_100B2F628;
LABEL_18:
          v47 = *v26;
          UUID.init()();
          v27 = v9;
          v28 = *(v5 + 16);
          v29 = v19;
          v30 = v19;
          v46 = v27;
          v31 = v50;
          v28(v30, v27, v50);
          (*(v5 + 56))(v29, 0, 1, v31);
          v32 = OBJC_IVAR____TtC7Journal14RouteAssetView_latestImageRequestID;
          swift_beginAccess();
          sub_100075184(v29, &v0[v32]);
          swift_endAccess();
          v45 = v0[v18];
          v33 = v52;
          v28(v52, v27, v31);
          v34 = v51;
          v35 = v49;
          (*(v11 + 16))(v51, v55, v49);
          v36 = (*(v5 + 80) + 24) & ~*(v5 + 80);
          v37 = (v53 + *(v11 + 80) + v36) & ~*(v11 + 80);
          v38 = swift_allocObject();
          *(v38 + 16) = v0;
          (*(v5 + 32))(v38 + v36, v33, v31);
          (*(v11 + 32))(v38 + v37, v34, v35);
          v39 = objc_opt_self();
          v40 = v0;
          v41 = [v39 currentTraitCollection];
          v42 = v47;
          v43 = v54;
          sub_100076220(v45, 0, 1, v47, v41, sub_100217414, v38);

          (*(v5 + 8))(v46, v31);
          (*(v11 + 8))(v55, v35);
          return;
        }
      }

      if (qword_100ACFB98 != -1)
      {
        swift_once();
      }

      v26 = &qword_100B2F630;
      goto LABEL_18;
    }

    v55 = v22;

    v23 = v55;
  }
}

uint64_t sub_100210C5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v29 = a2;
  v30 = a3;
  v32 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v31 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v13, v30, v10);
  v15 = v7;
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v7);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = (v12 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = v32;
  *(v18 + 16) = v14;
  *(v18 + 24) = v19;
  (*(v11 + 32))(v18 + v16, v13, v10);
  (*(v8 + 32))(v18 + v17, v27, v15);
  aBlock[4] = sub_1002174EC;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A61778;
  v20 = _Block_copy(aBlock);
  v21 = v19;

  v22 = v33;
  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_100006964(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
  v24 = v34;
  v23 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v31;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v38 + 8))(v24, v23);
  (*(v36 + 8))(v22, v37);
}

void sub_100211130(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v78 = a4;
  v81 = a3;
  v5 = type metadata accessor for Date();
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = __chkstk_darwin(v5);
  v74 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v73 = &v72 - v8;
  v9 = sub_1000F24EC(&unk_100AD4790);
  v10 = __chkstk_darwin(v9 - 8);
  v75 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v72 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v76 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v17);
  v19 = &v72 - v18;
  v20 = sub_1000F24EC(&qword_100AD1420);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v72 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v77 = a2;
    if (a2)
    {
      v72 = v13;
      (*(v15 + 16))(v25, v81, v14);
      (*(v15 + 56))(v25, 0, 1, v14);
      v28 = OBJC_IVAR____TtC7Journal14RouteAssetView_latestImageRequestID;
      swift_beginAccess();
      v29 = *(v17 + 48);
      sub_1000082B4(v25, v19, &qword_100AD1420);
      sub_1000082B4(v27 + v28, &v19[v29], &qword_100AD1420);
      v30 = *(v15 + 48);
      if (v30(v19, 1, v14) == 1)
      {
        v31 = v77;
        v32 = v77;
        sub_100004F84(v25, &qword_100AD1420);
        if (v30(&v19[v29], 1, v14) == 1)
        {
          sub_100004F84(v19, &qword_100AD1420);
          goto LABEL_19;
        }
      }

      else
      {
        sub_1000082B4(v19, v23, &qword_100AD1420);
        v43 = v30(&v19[v29], 1, v14);
        v31 = v77;
        if (v43 != 1)
        {
          v45 = &v19[v29];
          v46 = v76;
          (*(v15 + 32))(v76, v45, v14);
          sub_100006964(&qword_100AD9220, &type metadata accessor for UUID);
          v81 = v31;
          v47 = dispatch thunk of static Equatable.== infix(_:_:)();
          v48 = *(v15 + 8);
          v48(v46, v14);
          sub_100004F84(v25, &qword_100AD1420);
          v48(v23, v14);
          v31 = v77;
          sub_100004F84(v19, &qword_100AD1420);
          if ((v47 & 1) == 0)
          {

            return;
          }

LABEL_19:
          *(v27 + OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading) = 1;
          v49 = v27;
          sub_100213060();
          v50 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v51 = swift_allocObject();
          *(v51 + 16) = v50;
          *(v51 + 24) = v31;
          v52 = v31;
          v53 = v49[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
          v54 = v52;

          if (v53 > 3)
          {
            v55 = v79;
            if (v53 > 5 && v53 != 6)
            {

              v57 = v72;
              v69 = v80;
              (*(v55 + 16))(v72, v78, v80);
              (*(v55 + 56))(v57, 0, 1, v69);
              goto LABEL_31;
            }
          }

          else
          {
            v55 = v79;
          }

          v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v57 = v72;
          v58 = v80;
          (*(v55 + 16))(v72, v78, v80);
          (*(v55 + 56))(v57, 0, 1, v58);
          if ((v56 & 1) == 0)
          {
            v59 = v75;
            sub_1000082B4(v57, v75, &unk_100AD4790);
            if ((*(v55 + 48))(v59, 1, v58) == 1)
            {
              sub_100004F84(v59, &unk_100AD4790);
LABEL_29:
              v65 = v57;
              v66 = objc_opt_self();
              aBlock[4] = sub_1002175BC;
              aBlock[5] = v51;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100006C7C;
              aBlock[3] = &unk_100A617C8;
              v67 = _Block_copy(aBlock);

              [v66 animateWithDuration:0x10000 delay:v67 options:0 animations:0.1 completion:0.0];
              _Block_release(v67);

              v68 = v65;
LABEL_35:
              sub_100004F84(v68, &unk_100AD4790);

              return;
            }

            v60 = v73;
            (*(v55 + 32))(v73, v59, v58);
            v61 = v74;
            static Date.now.getter();
            Date.timeIntervalSince(_:)();
            v63 = v62;
            v64 = *(v55 + 8);
            v64(v61, v58);
            v64(v60, v58);
            v57 = v72;
            if (v63 >= 0.1)
            {
              goto LABEL_29;
            }
          }

LABEL_31:
          swift_beginAccess();
          v70 = swift_unknownObjectWeakLoadStrong();
          if (v70)
          {
            v71 = v70;
            sub_100211D88(0);
            [*&v71[OBJC_IVAR____TtC7Journal14RouteAssetView_routeImageView] setImage:v54];
          }

          else
          {
          }

          v68 = v57;
          goto LABEL_35;
        }

        v44 = v77;
        sub_100004F84(v25, &qword_100AD1420);
        (*(v15 + 8))(v23, v14);
      }

      sub_100004F84(v19, &unk_100AEEE20);

      return;
    }
  }

  if (qword_100ACFAD0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000617C(v33, qword_100AD8B78);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    swift_beginAccess();
    v38 = swift_unknownObjectWeakLoadStrong();
    *(v36 + 4) = v38;
    *v37 = v38;
    _os_log_impl(&_mh_execute_header, v34, v35, "%@.getImage returned nil", v36, 0xCu);
    sub_100004F84(v37, &unk_100AD4BB0);
  }

  swift_beginAccess();
  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    sub_100211D88(1);
  }

  swift_beginAccess();
  v41 = swift_unknownObjectWeakLoadStrong();
  if (v41)
  {
    v42 = v41;
    *(v41 + OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading) = 1;
    sub_100213060();
  }
}

void sub_100211D10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100211D88(0);
    [*&v4[OBJC_IVAR____TtC7Journal14RouteAssetView_routeImageView] setImage:a2];
  }
}

id sub_100211D88(char a1)
{
  if (a1)
  {
    v3 = [objc_opt_self() clearColor];
  }

  else
  {
    if (qword_100AD0348 != -1)
    {
      swift_once();
    }

    v3 = qword_100B30340;
  }

  v4 = v3;
  [v1 setBackgroundColor:v3];

  LOBYTE(v4) = ~a1;
  [*&v1[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView] setHidden:(a1 & 1) == 0];
  v5 = OBJC_IVAR____TtC7Journal14RouteAssetView_routeImageView;
  v6 = *&v1[OBJC_IVAR____TtC7Journal14RouteAssetView_routeImageView];
  if (v4)
  {
    v11 = qword_100AD0348;
    v12 = v6;
    if (v11 != -1)
    {
      swift_once();
    }

    v9 = qword_100B30340;
    v10 = 1.0;
  }

  else
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 clearColor];
    v10 = 0.0;
  }

  [v6 setBackgroundColor:v9];

  [*&v1[v5] setAlpha:v10];
  [*&v1[OBJC_IVAR____TtC7Journal14RouteAssetView_shadowView] setAlpha:v10];
  [*&v1[OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel] setAlpha:v10];
  v13 = *&v1[OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel];

  return [v13 setAlpha:v10];
}

uint64_t sub_100211F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1000F24EC(&qword_100AD5B28);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutRouteAssetMetadata();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[11] = v7;
  v4[12] = v6;

  return _swift_task_switch(sub_1002120A4, v7, v6);
}

uint64_t sub_1002120A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC7Journal14RouteAssetView_routeAsset];
    v0[14] = v2;
    if (v2)
    {
      v3 = *&v2[OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata];
      v0[15] = v3;
      v4 = v0[10];
      if (v3)
      {
        v5 = v2;

        if (v4)
        {
          swift_getObjectType();
          v6 = dispatch thunk of Actor.unownedExecutor.getter();
          v8 = v7;
        }

        else
        {
          v6 = 0;
          v8 = 0;
        }

        return _swift_task_switch(sub_100212258, v6, v8);
      }

      v10 = v0[7];
      v11 = v0[8];
      v12 = v0[6];

      (*(v11 + 56))(v12, 1, 1, v10);
      sub_100004F84(v0[6], &qword_100AD5B28);
    }

    else
    {
      v9 = Strong;
    }
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100212258()
{
  sub_10025B758(v0[6]);

  v1 = v0[11];
  v2 = v0[12];

  return _swift_task_switch(sub_1002122D4, v1, v2);
}

uint64_t sub_1002122D4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 112);

    sub_100004F84(*(v0 + 48), &qword_100AD5B28);
  }

  else
  {
    v5 = *(v0 + 104);
    (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 48), *(v0 + 56));
    v6 = v5;
    WorkoutRouteAssetMetadata.type.getter();
    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
    }

    else
    {
      v8 = 0;
    }

    [*(v0 + 104) setAccessibilityLabel:v8];

    sub_100691BF8(0, 0);
    if (v9)
    {
      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 56);
    [v11 setAccessibilityValue:v10];

    sub_100215504();

    sub_100214CF8();

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1002124AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for JournalFeatureFlags();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002125A0, v7, v6);
}

uint64_t sub_1002125A0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setIsAccessibilityElement:1];
    v3 = v2;
    [v3 setAccessibilityIgnoresInvertColors:1];
    v4 = OBJC_IVAR____TtC7Journal14RouteAssetView_routeImageView;
    [*&v3[OBJC_IVAR____TtC7Journal14RouteAssetView_routeImageView] setContentMode:2];
    v5 = OBJC_IVAR____TtC7Journal14RouteAssetView_shadowView;
    [*&v3[OBJC_IVAR____TtC7Journal14RouteAssetView_shadowView] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v3[v4] setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
    v7 = *&v3[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v8 = v3;
    [v8 addSubview:v7];
    v9 = *&v3[v6];
    sub_100013178(0.0);

    [v8 addSubview:*&v3[v4]];
    [*&v3[v4] addSubview:*&v3[v5]];
    v10 = qword_100AD0350;
    v11 = *&v3[v5];
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = [qword_100B30348 colorWithAlphaComponent:0.75];
    [v11 setBackgroundColor:v12];

    v13 = *&v3[v5];
    sub_100013178(0.0);

    v14 = OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutView;
    [*&v3[v5] addSubview:*&v8[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutView]];
    [*&v8[v14] setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [*&v8[v14] centerYAnchor];
    v16 = [*&v3[v5] centerYAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setActive:1];
    v18 = v8[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];

    [v8 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v61.origin.x = v20;
    v61.origin.y = v22;
    v61.size.width = v24;
    v61.size.height = v26;
    Height = CGRectGetHeight(v61);
    if (v18 == 3)
    {
      v33 = -70.0;
    }

    else if (v18 == 7)
    {
      v29 = v0[7];
      v28 = v0[8];
      v30 = v0[6];
      v31 = Height;
      (*(v29 + 104))(v28, enum case for JournalFeatureFlags.fullScreenViewer(_:), v30);
      v32 = JournalFeatureFlags.isEnabled.getter();
      (*(v29 + 8))(v28, v30);
      Height = v31;
      v33 = -116.0;
      if (v32)
      {
        v33 = -145.0;
      }
    }

    else
    {
      v33 = -16.0;
    }

    v34 = (Height + v33) * 0.5;
    v35 = [*&v8[v14] widthAnchor];
    v36 = v34 + v34;
    v37 = [v35 constraintEqualToConstant:v36];

    v38 = *&v8[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewWidthConstraint];
    *&v8[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewWidthConstraint] = v37;
    v39 = v37;

    [v39 setActive:1];
    v40 = [*&v8[v14] heightAnchor];
    v41 = [v40 constraintEqualToConstant:v36];

    v42 = *&v8[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewHeightConstraint];
    *&v8[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewHeightConstraint] = v41;
    v43 = v41;

    [v43 setActive:1];
    sub_1002150C0();
    v44 = *&v3[v4];
    sub_100013178(0.0);

    v45 = *&v3[v5];
    sub_100013178(0.0);

    v46 = sub_100212B80(v8);
    v47 = OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel;
    v48 = *&v8[OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel];
    *&v8[OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel] = v46;
    v49 = v46;

    [v8 addSubview:v49];
    v50 = sub_100212DDC(v8);
    v51 = OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel;
    v52 = *&v8[OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel];
    *&v8[OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel] = v50;
    v53 = v50;

    [v8 addSubview:v53];
    LODWORD(v54) = 1144750080;
    [*&v8[v47] setContentCompressionResistancePriority:1 forAxis:v54];
    LODWORD(v55) = 1132068864;
    [*&v3[v4] setContentCompressionResistancePriority:1 forAxis:v55];
    LODWORD(v56) = 1144750080;
    [*&v3[v5] setContentCompressionResistancePriority:1 forAxis:v56];
    LODWORD(v57) = 1144750080;
    [*&v8[v51] setContentCompressionResistancePriority:1 forAxis:v57];
    sub_100211D88(1);
  }

  v58 = v0[1];

  return v58();
}

id sub_100212B80(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  if (*(a1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      if (qword_100AD0408 != -1)
      {
        swift_once();
      }

      v4 = &qword_100B30400;
      goto LABEL_10;
    }
  }

  if (qword_100AD03C8 != -1)
  {
    swift_once();
  }

  v4 = &qword_100B303C0;
LABEL_10:
  [v2 setFont:*v4];
  v5 = [objc_opt_self() whiteColor];
  [v2 setTextColor:v5];

  [v2 setTextAlignment:0];
  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setLineBreakMode:4];
  return v2;
}

id sub_100212DDC(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) init];
  if (*(a1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      if (qword_100AD0400 != -1)
      {
        swift_once();
      }

      v4 = &qword_100B303F8;
      goto LABEL_10;
    }
  }

  if (qword_100AD0388 != -1)
  {
    swift_once();
  }

  v4 = &qword_100B30380;
LABEL_10:
  [v2 setFont:*v4];
  v5 = [objc_opt_self() tertiaryLabelColor];
  [v2 setTextColor:v5];

  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setLineBreakMode:4];
  [v2 setTextAlignment:0];
  return v2;
}

uint64_t sub_100213060()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v6 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v7 = *((swift_isaMask & *v5) + 0x58);
  v8 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v9 = v5;
  v7(9, v8);

  v10 = *(v1 + OBJC_IVAR____TtC7Journal14RouteAssetView_previousSizeType);
  if (v10 == 8 || (result = sub_10003C2FC(*(v1 + v6), v10), (result & 1) == 0))
  {
    result = [*(v1 + OBJC_IVAR____TtC7Journal14RouteAssetView_routeImageView) superview];
    if (result)
    {

      result = [*(v1 + OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel) superview];
      if (result)
      {

        result = [*(v1 + OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel) superview];
        if (result)
        {

          v12 = type metadata accessor for TaskPriority();
          (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
          v13 = swift_allocObject();
          swift_unknownObjectWeakInit();
          type metadata accessor for MainActor();

          v14 = static MainActor.shared.getter();
          v15 = swift_allocObject();
          v15[2] = v14;
          v15[3] = &protocol witness table for MainActor;
          v15[4] = v13;

          sub_1003E9628(0, 0, v4, &unk_1009484A0, v15);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1002132C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100213358, v6, v5);
}

uint64_t sub_100213358()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel;
    v4 = *(Strong + OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel);
    sub_1000746FC();

    v5 = OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel;
    v6 = *&v2[OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel];
    sub_1000746FC();

    sub_100214CF8();
    [*&v2[v5] setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    [*&v2[v3] setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    [*&v2[v5] setAdjustsFontForContentSizeCategory:1];
    [*&v2[v3] setAdjustsFontForContentSizeCategory:1];
    v7 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v8 = v2[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
    if (v8 > 3)
    {
      if (v8 - 4 >= 2)
      {
        if (v8 == 6)
        {
          v11 = *&v2[v3];
          v12 = v2;
          [v11 setHidden:1];
          [*&v2[v5] setHidden:1];
        }

        else
        {
          v14 = v2;
          sub_10021475C();
        }
      }

      else
      {
        v10 = v2;
        sub_10021357C();
      }
    }

    else if (v8 >= 3)
    {
      v13 = v2;
      sub_1002141C8();
    }

    else
    {
      v9 = v2;
      sub_100213B98();
    }

    sub_10021062C();
    sub_1002150C0();
    v15 = v2[v7];

    v2[OBJC_IVAR____TtC7Journal14RouteAssetView_previousSizeType] = v15;
    [v2 layoutIfNeeded];
    [*&v2[v3] layoutIfNeeded];
    [*&v2[v5] layoutIfNeeded];
    [*&v2[OBJC_IVAR____TtC7Journal14RouteAssetView_shadowView] layoutIfNeeded];
  }

  v16 = *(v0 + 8);

  return v16();
}

id sub_10021357C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel;
  [*&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel] setHidden:0];
  v46 = OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel;
  [*&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel] setHidden:0];
  v3 = [*&v0[v2] leadingAnchor];
  v45 = *&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutView];
  v4 = [v45 trailingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:8.0];

  [v5 setActive:1];
  v6 = [*&v0[v2] bottomAnchor];
  v7 = [v0 centerYAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  [v8 setActive:1];
  v9 = *&v0[v2];
  v10 = [v9 superview];
  v11 = &selRef_setSuggestedName_;
  if (v10)
  {
    v12 = v10;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [v9 trailingAnchor];
    v14 = [v12 trailingAnchor];
    v15 = [v13 constraintLessThanOrEqualToAnchor:v14];

    [v15 setConstant:-8.0];
    if (v15)
    {
      [v15 setActive:1];
    }

    v11 = &selRef_setSuggestedName_;
  }

  else
  {
    v15 = 0;
    v12 = v9;
  }

  [*&v0[v2] setTextAlignment:0];
  v16 = *&v0[v2];
  v17 = [v16 superview];
  if (v17)
  {
    v18 = v17;
    v19 = v11;
    [v16 v11[278]];
    v20 = [v16 topAnchor];
    v21 = [v18 topAnchor];
    v22 = [v20 constraintGreaterThanOrEqualToAnchor:v21];

    [v22 setConstant:8.0];
    if (v22)
    {
      [v22 setActive:1];
    }

    v11 = v19;
  }

  else
  {
    v22 = 0;
    v18 = v16;
  }

  v23 = *&v0[v2];
  v24 = *&v0[v46];
  v25 = v23;
  [v24 v11[278]];
  v26 = [v24 topAnchor];
  v27 = [v25 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  [v28 setConstant:0.0];
  [v28 setActive:1];

  v29 = [*&v0[v46] leadingAnchor];
  v30 = [v45 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:8.0];

  [v31 setActive:1];
  v32 = [*&v1[v46] topAnchor];
  v33 = [v1 centerYAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  [v34 setActive:1];
  v35 = *&v1[v46];
  v36 = [v35 superview];
  if (v36)
  {
    v37 = v36;
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [v35 trailingAnchor];
    v39 = [v37 trailingAnchor];
    v40 = [v38 constraintLessThanOrEqualToAnchor:v39];

    [v40 setConstant:-8.0];
    if (v40)
    {
      [v40 setActive:1];
    }
  }

  else
  {
    v40 = 0;
    v37 = v35;
  }

  v41 = *&v1[v46];
  v42 = sub_100028DA0(2, 1, 8.0);

  v43 = *&v1[v46];

  return [v43 setTextAlignment:0];
}

id sub_100213B98()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel;
  [*&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel] setHidden:0];
  v3 = OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel;
  [*&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel] setHidden:0];
  v4 = [*&v0[v2] leadingAnchor];
  v47 = *&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutView];
  v5 = [v47 trailingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:8.0];

  [v6 setActive:1];
  v7 = [*&v0[v2] bottomAnchor];
  v8 = [v0 centerYAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  [v9 setActive:1];
  v10 = *&v0[v2];
  v11 = [v10 superview];
  v12 = &selRef_setSuggestedName_;
  if (v11)
  {
    v13 = v11;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v10 trailingAnchor];
    v15 = [v13 trailingAnchor];
    v16 = [v14 constraintLessThanOrEqualToAnchor:v15];

    [v16 setConstant:-8.0];
    if (v16)
    {
      [v16 setActive:1];
    }

    v12 = &selRef_setSuggestedName_;
  }

  else
  {
    v16 = 0;
    v13 = v10;
  }

  [*&v0[v2] setTextAlignment:0];
  v17 = *&v0[v2];
  v18 = [v17 superview];
  if (v18)
  {
    v19 = v18;
    v20 = v12;
    [v17 v12[278]];
    v21 = [v17 topAnchor];
    v22 = [v19 topAnchor];
    v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22];

    [v23 setConstant:12.0];
    if (v23)
    {
      [v23 setActive:1];
    }

    v12 = v20;
  }

  else
  {
    v23 = 0;
    v19 = v17;
  }

  v24 = *&v1[v2];
  v25 = *&v1[v3];
  v26 = v24;
  [v25 v12[278]];
  v27 = [v25 topAnchor];
  v28 = [v26 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  [v29 setConstant:0.0];
  [v29 setActive:1];

  v30 = [*&v1[v3] leadingAnchor];
  v31 = [v47 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:8.0];

  [v32 setActive:1];
  v33 = [*&v1[v3] topAnchor];
  v34 = [v1 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  [v35 setActive:1];
  v36 = *&v1[v3];
  v37 = [v36 superview];
  if (v37)
  {
    v38 = v37;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [v36 trailingAnchor];
    v40 = [v38 trailingAnchor];
    v41 = [v39 constraintLessThanOrEqualToAnchor:v40];

    [v41 setConstant:-12.0];
    if (v41)
    {
      [v41 setActive:1];
    }
  }

  else
  {
    v41 = 0;
    v38 = v36;
  }

  v42 = *&v1[v3];
  v43 = sub_100028DA0(2, 1, 8.0);

  if (v43)
  {
    LODWORD(v44) = 1132068864;
    [v43 setPriority:v44];
  }

  v45 = *&v1[v3];

  return [v45 setTextAlignment:0];
}

void sub_1002141C8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel) setHidden:0];
  v3 = OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel) setHidden:0];
  [*(v0 + v3) setTextAlignment:1];
  [*(v0 + v2) setTextAlignment:1];
  v4 = *(v0 + v2);
  v5 = [v4 superview];
  v6 = &selRef_setSuggestedName_;
  if (v5)
  {
    v7 = v5;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v4 topAnchor];
    v9 = [v7 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    [v10 setConstant:12.0];
    if (v10)
    {
      [v10 setActive:1];
    }

    v6 = &selRef_setSuggestedName_;
  }

  else
  {
    v10 = 0;
    v7 = v4;
  }

  v11 = *(v1 + v2);
  v12 = [v11 superview];
  if (v12)
  {
    v13 = v12;
    [v11 v6[278]];
    v14 = [v11 leadingAnchor];
    v15 = [v13 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setConstant:8.0];
    if (v16)
    {
      [v16 setActive:1];
    }

    v6 = &selRef_setSuggestedName_;
  }

  else
  {
    v16 = 0;
    v13 = v11;
  }

  v17 = *(v1 + v2);
  v18 = [v17 superview];
  if (v18)
  {
    v19 = v18;
    [v17 v6[278]];
    v20 = [v17 trailingAnchor];
    v21 = [v19 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    [v22 setConstant:-8.0];
    if (v22)
    {
      [v22 setActive:1];
    }

    v6 = &selRef_setSuggestedName_;
  }

  else
  {
    v22 = 0;
    v19 = v17;
  }

  v23 = [*(v1 + v3) topAnchor];
  v24 = [*(v1 + OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutView) bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:5.0];

  [v25 setActive:1];
  v26 = *(v1 + v3);
  v27 = sub_100028DA0(0, 1, 12.0);

  v28 = *(v1 + v3);
  v29 = [v28 superview];
  if (v29)
  {
    v30 = v29;
    [v28 v6[278]];
    v31 = [v28 leadingAnchor];
    v32 = [v30 leadingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    [v33 setConstant:12.0];
    if (v33)
    {
      [v33 setActive:1];
    }

    v6 = &selRef_setSuggestedName_;
  }

  else
  {
    v33 = 0;
    v30 = v28;
  }

  v34 = *(v1 + v3);
  v35 = [v34 superview];
  if (v35)
  {
    v36 = v35;
    [v34 v6[278]];
    v37 = [v34 trailingAnchor];
    v38 = [v36 trailingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    [v39 setConstant:-12.0];
    if (v39)
    {
      [v39 setActive:1];
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
    v36 = v34;
  }
}

id sub_10021475C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel) setHidden:0];
  v3 = OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel) setHidden:0];
  v4 = qword_100AD03C8;
  v5 = *(v0 + v2);
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_100B303C0;
  [v5 setFont:qword_100B303C0];

  [*(v1 + v2) setFont:v6];
  v7 = *(v1 + v2);
  v8 = [v7 superview];
  v9 = &selRef_setSuggestedName_;
  v10 = &selRef_setSuggestedName_;
  if (v8)
  {
    v11 = v8;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v7 topAnchor];
    v13 = [v11 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:25.0];
    if (v14)
    {
      [v14 setActive:1];
    }

    v10 = &selRef_setSuggestedName_;
    v9 = &selRef_setSuggestedName_;
  }

  else
  {
    v14 = 0;
    v11 = v7;
  }

  v15 = *(v1 + v2);
  v16 = [v15 superview];
  v17 = &selRef_setSuggestedName_;
  if (v16)
  {
    v18 = v16;
    [v15 v9[278]];
    v19 = v10;
    v20 = [v15 leadingAnchor];
    v21 = [v18 leadingAnchor];
    v22 = [v20 v19[207]];

    [v22 setConstant:20.0];
    if (v22)
    {
      [v22 setActive:1];
    }

    v10 = &selRef_setSuggestedName_;
    v17 = &selRef_setSuggestedName_;
  }

  else
  {
    v22 = 0;
    v18 = v15;
  }

  v23 = *(v1 + v2);
  v24 = [v23 superview];
  if (v24)
  {
    v25 = v24;
    v49 = v3;
    v26 = v17;
    [v23 v9[278]];
    v27 = v10;
    v28 = [v23 trailingAnchor];
    v29 = [v25 trailingAnchor];
    v30 = [v28 v27[207]];

    [v30 setConstant:-20.0];
    if (v30)
    {
      [v30 setActive:1];
    }

    v17 = v26;

    v10 = &selRef_setSuggestedName_;
    v3 = v49;
  }

  else
  {
    v30 = 0;
    v25 = v23;
  }

  [*(v1 + v2) setTextAlignment:1];
  v31 = *(v1 + v3);
  v32 = sub_100028DA0(0, 1, 25.0);

  v33 = *(v1 + v3);
  v34 = [v33 superview];
  if (v34)
  {
    v35 = v34;
    [v33 v9[278]];
    v36 = v10;
    v37 = [v33 v17[232]];
    v38 = [v35 v17[232]];
    v39 = [v37 v36[207]];

    [v39 setConstant:20.0];
    if (v39)
    {
      [v39 setActive:1];
    }

    v10 = &selRef_setSuggestedName_;
  }

  else
  {
    v39 = 0;
    v35 = v33;
  }

  v40 = *(v1 + v3);
  v41 = [v40 superview];
  if (v41)
  {
    v42 = v41;
    [v40 v9[278]];
    v43 = v10;
    v44 = [v40 trailingAnchor];
    v45 = [v42 trailingAnchor];
    v46 = [v44 v43[207]];

    [v46 setConstant:-20.0];
    if (v46)
    {
      [v46 setActive:1];
    }
  }

  else
  {
    v46 = 0;
    v42 = v40;
  }

  v47 = *(v1 + v3);

  return [v47 setTextAlignment:1];
}

void sub_100214CF8()
{
  v1 = type metadata accessor for AttributedString();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v27 - v5;
  v7 = sub_1000F24EC(&qword_100AD8D78);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = *(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel);
  v14 = *(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_labelTextProvider);
  if (*(v14 + 24))
  {
    v15 = v13;

    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = v13;
    v16 = 0;
  }

  [v13 setText:v16];

  v18 = *(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel);
  v19 = *(v14 + 32);
  if (v19)
  {
    if (*(v19 + 16))
    {
      v20 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
      v21 = v18;

      v22 = sub_10009D0BC(v20);
      if (v23)
      {
        (*(v2 + 16))(v12, *(v19 + 56) + *(v2 + 72) * v22, v1);

        (*(v2 + 56))(v12, 0, 1, v1);
      }

      else
      {

        (*(v2 + 56))(v12, 1, 1, v1);
      }
    }

    else
    {
      (*(v2 + 56))(v12, 1, 1, v1);
      v25 = v18;
    }

    sub_1000082B4(v12, v10, &qword_100AD8D78);
    if ((*(v2 + 48))(v10, 1, v1) != 1)
    {
      (*(v2 + 32))(v6, v10, v1);
      sub_1000065A8(0, &qword_100AE4890);
      (*(v2 + 16))(v28, v6, v1);
      v26 = NSAttributedString.init(_:)();
      (*(v2 + 8))(v6, v1);
      sub_100004F84(v12, &qword_100AD8D78);
      goto LABEL_15;
    }

    sub_100004F84(v12, &qword_100AD8D78);
  }

  else
  {
    v24 = v18;
  }

  v26 = 0;
LABEL_15:
  [v18 setAttributedText:v26];
}

void sub_1002150C0()
{
  v1 = type metadata accessor for JournalFeatureFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_shadowView];
  v6 = [v5 subviews];
  sub_1000065A8(0, &qword_100ADC670);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = *&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutView];
  v28 = v8;
  v27 = &v28;
  v9 = sub_10005B088(sub_1002173AC, v26, v7);

  if (v9)
  {
    v10 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v11 = v0[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
    [v0 bounds];
    Height = CGRectGetHeight(v29);
    if (v11 == 3)
    {
      v15 = -70.0;
    }

    else if (v11 == 7)
    {
      v13 = Height;
      (*(v2 + 104))(v4, enum case for JournalFeatureFlags.fullScreenViewer(_:), v1);
      v14 = JournalFeatureFlags.isEnabled.getter();
      (*(v2 + 8))(v4, v1);
      Height = v13;
      v15 = -116.0;
      if (v14)
      {
        v15 = -145.0;
      }
    }

    else
    {
      v15 = -16.0;
    }

    v16 = (Height + v15) * 0.5;
    [*&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewWidthConstraint] setConstant:v16 + v16];
    [*&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewHeightConstraint] setConstant:v16 + v16];
    v17 = OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewCenterXConstraint;
    v18 = *&v0[OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewCenterXConstraint];
    if (v18)
    {
      [v18 setActive:0];
    }

    if (((1 << v0[v10]) & 0x37) != 0)
    {
      v19 = [v8 centerXAnchor];
      v20 = [v5 leadingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20 constant:v16 + 12.0];
    }

    else
    {
      v19 = [v8 centerXAnchor];
      v20 = [v5 centerXAnchor];
      v21 = [v19 constraintEqualToAnchor:v20];
    }

    v22 = v21;

    v23 = *&v0[v17];
    *&v0[v17] = v22;
    v24 = v22;

    if (v24)
    {
      [v24 setActive:1];
    }

    v25 = [v8 layer];
    [v25 setCornerRadius:v16];
  }
}

void *sub_1002154C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_routeAsset);
  v2 = v1;
  return v1;
}

uint64_t sub_100215504()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v44 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD8D38);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1000F24EC(&qword_100AD8D40);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v43 = sub_1000F24EC(&qword_100AD8D48);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v11 = &v39 - v10;
  v45 = sub_1000F24EC(&qword_100AD8D50);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v13 = &v39 - v12;
  v14 = sub_1000F24EC(&qword_100AD8D58);
  v39 = *(v14 - 8);
  v40 = v14;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = WorkoutRouteAssetMetadata.type.getter();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v18)
  {
    v20 = v18;
  }

  *(v0 + 16) = v19;
  *(v0 + 24) = v20;

  v50 = WorkoutRouteAssetMetadata.route.getter();
  v21 = WorkoutRouteAssetMetadata.distance.getter();
  v48 = v22;
  v49 = v21;
  v23 = WorkoutRouteAssetMetadata.calories.getter();
  if (v24)
  {
    countAndFlagsBits = v23;
    object = v24;
  }

  else
  {
    WorkoutRouteAssetMetadata.caloriesBurnt.getter();
    v27 = [objc_opt_self() kilocalories];
    sub_1000065A8(0, &qword_100AD8D60);
    Measurement.init(value:unit:)();
    static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
    static MeasurementFormatUnitUsage<>.workout.getter();
    static Locale.autoupdatingCurrent.getter();
    sub_10009BA68();
    FloatingPointFormatStyle.init(locale:)();
    v28 = sub_1000F24EC(&qword_100AD8D68);
    (*(*(v28 - 8) + 56))(v6, 0, 1, v28);
    static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
    sub_100004F84(v6, &qword_100AD8D38);
    (*(v46 + 8))(v9, v47);
    (*(v41 + 8))(v11, v43);
    sub_10000B58C(&qword_100AD8D70, &qword_100AD8D50);
    v29 = v40;
    v30 = v45;
    Measurement<>.formatted<A>(_:)();
    (*(v42 + 8))(v13, v30);
    (*(v39 + 8))(v16, v29);
    v31 = String.uppercased()();
    countAndFlagsBits = v31._countAndFlagsBits;
    object = v31._object;
  }

  WorkoutRouteAssetMetadata.duration.getter();
  if (v32)
  {
    sub_100215AC8();
  }

  if (v48)
  {
    v33 = v48;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  if (v48)
  {
    v34 = v49;
  }

  else
  {
    v34 = 0;
  }

  static Duration.seconds(_:)();
  v35 = Duration.formatted()();
  sub_100216438(v34, v33, v35._countAndFlagsBits, v35._object, countAndFlagsBits, object);
  v37 = v36;

  *(v1 + 32) = v37;
}

double sub_100215AC8()
{
  v0 = type metadata accessor for Calendar();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DateComponents();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  WorkoutRouteAssetMetadata.startTime.getter();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    Date.init()();
    if (v18(v10, 1, v11) != 1)
    {
      sub_100004F84(v10, &unk_100AD4790);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  WorkoutRouteAssetMetadata.endTime.getter();
  if (v18(v8, 1, v11) == 1)
  {
    Date.init()();
    if (v18(v8, 1, v11) != 1)
    {
      sub_100004F84(v8, &unk_100AD4790);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v8, v11);
  }

  static Calendar.current.getter();
  sub_1000F24EC(&qword_100AD3BF0);
  v19 = type metadata accessor for Calendar.Component();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100940080;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_10005FF80(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v29;
  Calendar.dateComponents(_:from:to:)();

  (*(v32 + 8))(v2, v33);
  v24 = DateComponents.second.getter();
  LOBYTE(v22) = v25;
  (*(v30 + 8))(v23, v31);
  v26 = *(v12 + 8);
  v26(v15, v11);
  v26(v17, v11);
  result = v24;
  if (v22)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_100215FC8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100216008()
{

  return sub_100004F84(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_latestImageRequestID, &qword_100AD1420);
}

id sub_1002160F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for RouteAssetView()
{
  result = qword_100AD8C18;
  if (!qword_100AD8C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100216268()
{
  sub_10006D1E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10021637C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100211F78(a1, v4, v5, v6);
}

void sub_100216438(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = sub_1000F24EC(&qword_100AD8D78);
  __chkstk_darwin(v12 - 8);
  v118 = &v115 - v13;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  sub_1000F24EC(&unk_100AD5B10);
  v124 = a5;
  v125 = a6;
  v121 = a1;
  v122 = a2;
  v132 = v14;
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100942000;
    *(v15 + 56) = &type metadata for String;
    v16 = sub_100031B20();
    *(v15 + 32) = a1;
    *(v15 + 40) = a2;
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v16;
    *(v15 + 64) = v16;
    *(v15 + 72) = a3;
    *(v15 + 80) = a4;
    *(v15 + 136) = &type metadata for String;
    *(v15 + 144) = v16;
    *(v15 + 112) = a5;
    *(v15 + 120) = a6;

    v17 = static String.localizedStringWithFormat(_:_:)();
    v19 = v18;
    *&v131 = a2;
    a6 = a2;
    a5 = a1;
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100940050;
    *(v20 + 56) = &type metadata for String;
    v21 = sub_100031B20();
    *(v20 + 32) = a5;
    *(v20 + 40) = a6;
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v21;
    *(v20 + 64) = v21;
    *(v20 + 72) = a3;
    *(v20 + 80) = a4;

    v17 = static String.localizedStringWithFormat(_:_:)();
    v19 = v22;
    *&v131 = a4;
  }

  v23 = a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v133 = &_swiftEmptyDictionarySingleton;
  sub_10009CF5C(v17, v19, 7u, isUniquelyReferenced_nonNull_native);
  v25 = v133;
  sub_1000F24EC(&unk_100AD5B10);
  v26 = swift_allocObject();
  v129 = xmmword_100940050;
  *(v26 + 16) = xmmword_100940050;
  *(v26 + 56) = &type metadata for String;
  v27 = sub_100031B20();
  *(v26 + 32) = a5;
  *(v26 + 40) = a6;
  *(v26 + 96) = &type metadata for String;
  *(v26 + 104) = v27;
  *(v26 + 64) = v27;
  *(v26 + 72) = v23;
  *(v26 + 80) = a4;

  v28 = static String.localizedStringWithFormat(_:_:)();
  v30 = v29;

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v25;
  sub_10009CF5C(v28, v30, 3u, v31);
  v32 = v133;
  sub_1000F24EC(&unk_100AD5B10);
  v33 = swift_allocObject();
  v131 = xmmword_100940080;
  *(v33 + 16) = xmmword_100940080;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = v27;
  *(v33 + 32) = a5;
  *(v33 + 40) = a6;

  v34 = static String.localizedStringWithFormat(_:_:)();
  v36 = v35;

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v32;
  sub_10009CF5C(v34, v36, 4u, v37);
  v38 = v133;
  sub_1000F24EC(&unk_100AD5B10);
  v119 = v23;
  v120 = a4;
  if (v132)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100942000;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = v27;
    v40 = v122;
    *(v39 + 32) = v121;
    *(v39 + 40) = v40;
    *(v39 + 96) = &type metadata for String;
    *(v39 + 104) = v27;
    *(v39 + 72) = v23;
    *(v39 + 80) = a4;
    *(v39 + 136) = &type metadata for String;
    *(v39 + 144) = v27;
    *(v39 + 112) = v124;
    *(v39 + 120) = v125;
  }

  else
  {
    v41 = swift_allocObject();
    *(v41 + 16) = v129;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = v27;
    *(v41 + 32) = v124;
    *(v41 + 40) = v125;
    *(v41 + 96) = &type metadata for String;
    *(v41 + 104) = v27;
    *(v41 + 72) = v23;
    *(v41 + 80) = a4;
  }

  v42 = static String.localizedStringWithFormat(_:_:)();
  v44 = v43;

  v45 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v38;
  sub_10009CF5C(v42, v44, 2u, v45);
  v46 = v133;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v46;
  sub_10009CF5C(v42, v44, 1u, v47);
  v48 = v133;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v48;
  sub_10009CF5C(0, 0xE000000000000000, 6u, v49);
  v50 = 0;
  v52 = v133 + 64;
  v51 = *(v133 + 8);
  v123 = v133;
  v53 = 1 << v133[32];
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v133 = &_swiftEmptyDictionarySingleton;
  v55 = v54 & v51;
  v56 = (v53 + 63) >> 6;
  v132 = NSForegroundColorAttributeName;
  v115 = NSFontAttributeName;
  v57 = &selRef_initWithName_managedObjectModel_;
  v117 = v52;
  v116 = v56;
  v130 = v27;
  while (v55)
  {
LABEL_22:
    v64 = __clz(__rbit64(v55)) | (v50 << 6);
    v65 = *(v123 + 7);
    v128 = *(*(v123 + 6) + v64);
    v66 = (v65 + 16 * v64);
    v68 = *v66;
    v67 = v66[1];
    v69 = objc_allocWithZone(NSMutableAttributedString);

    v126 = v68;
    v127 = v67;
    v70 = String._bridgeToObjectiveC()();
    v71 = [v69 initWithString:v70];

    v72 = [objc_opt_self() whiteColor];
    v73 = v71;
    v74 = [v73 string];
    v75 = v132;
    if (!v74)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = String._bridgeToObjectiveC()();
    }

    v76 = [v73 v57[125]];
    v77 = [v76 rangeOfString:v74 options:1];
    v79 = v78;

    [v73 addAttribute:v75 value:v72 range:{v77, v79}];
    if (qword_100AD0338 != -1)
    {
      swift_once();
    }

    v80 = qword_100B30330;
    sub_1000F24EC(&unk_100AD5B10);
    v81 = swift_allocObject();
    *(v81 + 16) = v131;
    v82 = v130;
    *(v81 + 56) = &type metadata for String;
    *(v81 + 64) = v82;
    *(v81 + 32) = v121;
    *(v81 + 40) = v122;

    static String.localizedStringWithFormat(_:_:)();

    v83 = [v73 mutableString];
    v84 = String._bridgeToObjectiveC()();

    v85 = [v83 rangeOfString:v84 options:1];
    v87 = v86;

    [v73 addAttribute:v132 value:v80 range:{v85, v87}];
    if (qword_100AD0340 != -1)
    {
      swift_once();
    }

    v88 = qword_100B30338;
    v89 = swift_allocObject();
    *(v89 + 16) = v131;
    v90 = v130;
    *(v89 + 56) = &type metadata for String;
    *(v89 + 64) = v90;
    *(v89 + 32) = v119;
    *(v89 + 40) = v120;

    static String.localizedStringWithFormat(_:_:)();

    v91 = [v73 mutableString];
    v92 = String._bridgeToObjectiveC()();

    v93 = [v91 rangeOfString:v92 options:1];
    v95 = v94;

    [v73 addAttribute:v132 value:v88 range:{v93, v95}];
    if (qword_100AD0328 != -1)
    {
      swift_once();
    }

    v96 = qword_100B30320;
    v97 = swift_allocObject();
    *(v97 + 16) = v131;
    *(v97 + 56) = &type metadata for String;
    *(v97 + 64) = v130;
    *(v97 + 32) = v124;
    *(v97 + 40) = v125;

    static String.localizedStringWithFormat(_:_:)();

    v57 = &selRef_initWithName_managedObjectModel_;
    v98 = [v73 mutableString];
    v99 = String._bridgeToObjectiveC()();

    v100 = [v98 rangeOfString:v99 options:1];
    v102 = v101;

    *&v129 = v73;
    [v73 addAttribute:v132 value:v96 range:{v100, v102}];
    if (v128 > 3)
    {
      if (v128 > 5)
      {
        v103 = &selRef_initWithName_managedObjectModel_;
        if (v128 != 6)
        {

          goto LABEL_39;
        }
      }

      else
      {
        v103 = &selRef_initWithName_managedObjectModel_;
      }
    }

    else
    {
      v103 = &selRef_initWithName_managedObjectModel_;
    }

    v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v104 & 1) == 0)
    {
      v105 = &qword_100B303F8;
      if (qword_100AD0400 != -1)
      {
        swift_once();
        v105 = &qword_100B303F8;
      }

      goto LABEL_41;
    }

LABEL_39:
    v105 = &qword_100B303A0;
    if (qword_100AD03A8 != -1)
    {
      swift_once();
      v105 = &qword_100B303A0;
    }

LABEL_41:
    v106 = *v105;
    v107 = v129;
    v108 = [v129 mutableString];
    v109 = String._bridgeToObjectiveC()();

    v110 = [v108 v103[126]];
    v112 = v111;

    [v107 addAttribute:v115 value:v106 range:{v110, v112}];
    v113 = v128;
    if (v128 > 3)
    {
      v52 = v117;
      v56 = v116;
      if (v128 > 6)
      {

        goto LABEL_14;
      }
    }

    else
    {
      v52 = v117;
      v56 = v116;
    }

    v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v114 & 1) == 0)
    {
      v58 = &qword_100B303F0;
      v59 = v129;
      if (qword_100AD03F8 != -1)
      {
        swift_once();
        v58 = &qword_100B303F0;
      }

      goto LABEL_16;
    }

LABEL_14:
    v58 = &qword_100B30398;
    v59 = v129;
    if (qword_100AD03A0 != -1)
    {
      swift_once();
      v58 = &qword_100B30398;
    }

LABEL_16:
    v55 &= v55 - 1;
    v60 = *v58;
    sub_10009D8F8(v60);

    v61 = v118;
    AttributedString.init(_:)();
    v62 = type metadata accessor for AttributedString();
    (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
    sub_10009E328(v61, v113);
  }

  while (1)
  {
    v63 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v63 >= v56)
    {

      return;
    }

    v55 = *&v52[8 * v63];
    ++v50;
    if (v55)
    {
      v50 = v63;
      goto LABEL_22;
    }
  }

  __break(1u);
}

uint64_t sub_1002172F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1002132C0(a1, v4, v5, v6);
}

uint64_t sub_100217414(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100210C5C(a1, v7, v1 + v4, v8);
}

void sub_1002174EC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_100211130(v5, v6, (v0 + v2), v7);
}

void sub_1002175C4()
{
  v1 = OBJC_IVAR____TtC7Journal14RouteAssetView_routeImageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC7Journal14RouteAssetView_exerciseNameLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC7Journal14RouteAssetView_workoutDataLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC7Journal14RouteAssetView_shadowView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutView;
  type metadata accessor for RouteAssetView.CutOutView();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewCenterXConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_cutOutViewHeightConstraint) = 0;
  v6 = OBJC_IVAR____TtC7Journal14RouteAssetView_labelTextProvider;
  type metadata accessor for RouteAssetView.LabelTextProvider();
  v7 = swift_allocObject();
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = 0;
  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_routeAsset) = 0;
  v8 = OBJC_IVAR____TtC7Journal14RouteAssetView_latestImageRequestID;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtC7Journal14RouteAssetView_previousSizeType) = 8;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10021777C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1002124AC(a1, v4, v5, v6);
}

__n128 sub_100217830@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DynamicTypeSize();
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100673E7C();
  EnvironmentValues.dynamicTypeSize.getter();
  sub_100538CC4(v5, v4, v10);
  v6 = v10[5];
  *(a1 + 64) = v10[4];
  *(a1 + 80) = v6;
  *(a1 + 96) = v11;
  v7 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v7;
  result = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1002178F0@<X0>(uint64_t a1@<X8>)
{
  sub_1000F24EC(&qword_100AD8D88);
  result = static Binding.constant(_:)();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_100217958()
{
  sub_100217998();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_100217998()
{
  result = qword_100AD8D80;
  if (!qword_100AD8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D80);
  }

  return result;
}

uint64_t sub_1002179FC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD8D90);
  v1 = sub_10000617C(v0, qword_100AD8D90);
  if (qword_100AD01A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_100217AC4()
{
  sub_100026188();
  v0 = static NSUserDefaults.shared.getter();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 integerForKey:v1];

  if (v2 <= 0)
  {
    if (qword_100ACFAD8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000617C(v3, qword_100AD8D90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = v2;
      *(v6 + 12) = 2048;
      *(v6 + 14) = 1;
      _os_log_impl(&_mh_execute_header, v4, v5, "Stored CloudKit schema version %ld is behind the newest %ld", v6, 0x16u);
    }
  }

  return v2 < 1;
}

uint64_t sub_100217C1C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD8DA8);
  v1 = sub_10000617C(v0, qword_100AD8DA8);
  if (qword_100AD0188 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF38);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100217CE4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_opt_self() weakObjectsHashTable];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_100217D58()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v30 - v4;
  if (*(v0 + 40) != 1)
  {
    return result;
  }

  v6 = Notification.name.getter();
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    goto LABEL_9;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {

LABEL_9:
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v1;
    sub_1003E9628(0, 0, v5, &unk_1009485A0, v15);

    result = sub_100219F2C();
    if ((result & 1) == 0 && *(v1 + 24))
    {

      sub_1000F24EC(&qword_100AD5BC0);
      Task.cancel()();
    }

    return result;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

    goto LABEL_19;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {

LABEL_19:
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    type metadata accessor for MainActor();

    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = &protocol witness table for MainActor;
    v24[4] = v1;
    sub_1003E9628(0, 0, v5, &unk_100948590, v24);
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v29 & 1) == 0)
    {
      return result;
    }
  }

  return sub_100218550();
}

uint64_t sub_100218140()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002181EC;

  return sub_1002190B4();
}

uint64_t sub_1002181EC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10021A4AC, v1, v0);
}

uint64_t sub_100218328()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001F0D04;

  return sub_1002190B4();
}

uint64_t sub_100218550()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (*(v0 + 24))
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;

  *(v1 + 24) = sub_1004EC158(0, 0, v4, &unk_100948580, v8);
}

uint64_t sub_100218704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for ContinuousClock.Instant();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v8;
  v4[20] = v7;

  return _swift_task_switch(sub_100218860, v8, v7);
}

uint64_t sub_100218860()
{
  swift_beginAccess();
  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = static Duration.seconds(_:)();
    v5 = v4;
    static Clock<>.continuous.getter();
    *(v0 + 64) = v3;
    *(v0 + 72) = v5;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;

    return _swift_task_switch(sub_100218970, 0, 0);
  }
}

uint64_t sub_100218970()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = sub_100040494(&qword_100AD5BC8, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100040494(&unk_100AD5BD0, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v5 = *(v2 + 8);
  v0[21] = v5;
  v0[22] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_100218AF4;
  v8 = v0[14];
  v7 = v0[15];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 5, v7, v4);
}

uint64_t sub_100218AF4()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    (*(v2 + 168))(*(v2 + 112), *(v2 + 88));
    v3 = sub_100218F7C;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 128);
    v6 = *(v2 + 136);
    v8 = *(v2 + 120);
    (*(v2 + 168))(*(v2 + 112), *(v2 + 88));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 152);
    v5 = *(v2 + 160);
    v3 = sub_100218C54;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100218C54()
{
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[26] = v2;
    *v2 = v0;
    v2[1] = sub_100218D5C;

    return sub_1002190B4();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100218D5C()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100218E7C, v3, v2);
}

uint64_t sub_100218E7C()
{

  if (static Task<>.isCancelled.getter())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = static Duration.seconds(_:)();
    v5 = v4;
    static Clock<>.continuous.getter();
    *(v0 + 64) = v3;
    *(v0 + 72) = v5;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;

    return _swift_task_switch(sub_100218970, 0, 0);
  }
}

uint64_t sub_100218F7C()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[19];
  v2 = v0[20];

  return _swift_task_switch(sub_100218FF0, v1, v2);
}

uint64_t sub_100218FF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002190B4()
{
  v1[3] = v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10021914C, v3, v2);
}

uint64_t sub_10021914C()
{
  if (*(*(v0 + 24) + 40) != 1)
  {
    goto LABEL_11;
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (!Strong)
  {
    goto LABEL_11;
  }

  v2 = Strong;
  sub_100219DD4();
  v3 = OBJC_IVAR____TtC7Journal14EntryViewModel_textChanged;
  if (*(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_textChanged))
  {
LABEL_4:
    *(v0 + 64) = 0;
    if (qword_100ACFAE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AD8DA8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "🛟 Autosave: about to write changed text to Core Data", v7, 2u);
    }

    v8 = *(v0 + 32);

    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v9[1] = sub_1002195C4;

    return sub_100780A08(v8);
  }

  NSManagedObjectContext.performAndWait<A>(_:)();
  if (*(v0 + 96) == 1)
  {
    if (*(v2 + v3) == 1)
    {
      goto LABEL_4;
    }

    NSManagedObjectContext.performAndWait<A>(_:)();
    v12 = *(v0 + 32);
    if (*(v0 + 97) == 1)
    {

      v13 = swift_task_alloc();
      *(v0 + 80) = v13;
      *v13 = v0;
      v13[1] = sub_100219910;

      return sub_10077A4E4(v12);
    }

    if (qword_100ACFAE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000617C(v19, qword_100AD8DA8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_25;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "🛟 Autosave: Skipping autosave, journalEntry.hasChanges == false";
  }

  else
  {

    if (qword_100ACFAE0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000617C(v14, qword_100AD8DA8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_25;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "🛟 Autosave: No changes to save";
  }

  _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);

LABEL_25:

LABEL_11:

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1002195C4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100219708, v3, v2);
}

uint64_t sub_100219708()
{
  NSManagedObjectContext.performAndWait<A>(_:)();
  v1 = *(v0 + 32);
  if (*(v0 + 97) == 1)
  {

    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_100219910;

    return sub_10077A4E4(v1);
  }

  else
  {

    if (qword_100ACFAE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000617C(v4, qword_100AD8DA8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "🛟 Autosave: Skipping autosave, journalEntry.hasChanges == false", v7, 2u);
    }

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100219910()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100219B8C;
  }

  else
  {
    v5 = sub_100219A64;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100219A64()
{

  if (qword_100ACFAE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AD8DA8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "🛟 Autosave completed successfully!", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100219B8C()
{
  v16 = v0;

  if (qword_100ACFAE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AD8DA8);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136315394;
    v0[2] = v5;
    type metadata accessor for EntryViewModel();

    v9 = String.init<A>(describing:)();
    v11 = sub_100008458(v9, v10, &v15);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v12;
    *v7 = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "🛟 Autosave: error while saving %s: %@", v6, 0x16u);
    sub_10012B714(v7);

    sub_10000BA7C(v8);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100219DD4()
{
  v0 = sub_100217CE4();
  v1 = [v0 allObjects];

  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }

LABEL_8:
      swift_unknownObjectRetain();
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v5)
      {
        sub_10057ED3C();
      }

      swift_unknownObjectRelease_n();
      ++v4;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v5 = *(v2 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

uint64_t sub_100219F2C()
{
  v0 = sub_100217CE4();
  v1 = [v0 allObjects];

  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v2 >> 62)
  {
LABEL_19:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v10 = 1;
            goto LABEL_21;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v5 = *(v2 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_16;
          }
        }

        swift_unknownObjectRetain();
        swift_getObjectType();
        if (swift_conformsToProtocol2() && v5 && sub_10057A648())
        {
          v8 = v7;
          ObjectType = swift_getObjectType();
          LOBYTE(v8) = sub_100885D80(ObjectType, v8);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease_n();
          if (v8)
          {
            goto LABEL_17;
          }
        }

        else
        {
          swift_unknownObjectRelease_n();
        }

        ++v4;
      }

      while (v6 != v3);
    }
  }

  v10 = 0;
LABEL_21:

  return v10;
}

uint64_t sub_10021A0C8()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10021A134()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  swift_weakInit();
  *(v0 + 40) = 0;
  swift_weakAssign();
  sub_100218550();
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:"receivedNotification:" name:UIApplicationWillResignActiveNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:"receivedNotification:" name:UIApplicationWillTerminateNotification object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:"receivedNotification:" name:UIApplicationDidBecomeActiveNotification object:0];

  return v0;
}

uint64_t sub_10021A278(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_100218704(a1, v4, v5, v6);
}

uint64_t sub_10021A32C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_100218328();
}

uint64_t sub_10021A3E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032EC8;

  return sub_100218140();
}

uint64_t sub_10021A4B0()
{
  v1 = sub_1000F24EC(&qword_100AD8F98);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for AudioAssetMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal10AudioAsset_metadata))
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_9;
  }

  sub_1000A8960(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_9:
    sub_100004F84(v3, &qword_100AD8F98);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  *&v8 = COERCE_DOUBLE(AudioAssetMetadata.duration.getter());
  if ((v9 & 1) == 0)
  {
    v10 = *&v8;
    if (qword_100AD02E0 != -1)
    {
      v16 = *&v8;
      swift_once();
      v10 = v16;
    }

    v11 = [qword_100AF0050 stringFromTimeInterval:v10 + 0.5];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 8))(v7, v4);
      return v13;
    }
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_10021A71C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v42 = sub_1000F24EC(&qword_100AD8FA0);
  __chkstk_darwin(v42);
  v43 = &v36[-v7];
  v8 = type metadata accessor for AudioAssetMetadata();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v41 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000F24EC(&unk_100AD4790);
  v12 = __chkstk_darwin(v11 - 8);
  v40 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v36[-v14];
  v16 = sub_1000F24EC(&qword_100AD8F98);
  v17 = __chkstk_darwin(v16);
  v19 = &v36[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v17);
  v22 = &v36[-v21];
  v23 = __chkstk_darwin(v20);
  v25 = &v36[-v24];
  result = __chkstk_darwin(v23);
  v29 = &v36[-v27];
  if (a2)
  {
    if (!(a3 | a4))
    {
      return result;
    }

    v38 = v28;
    v39 = result;
    sub_1000A8720(&v36[-v27]);
    if ((*(v9 + 48))(v29, 1, v8) == 1)
    {
      sub_100004F84(v29, &qword_100AD8F98);
      v44 = 0;
      v37 = 1;
      if (!a3)
      {
LABEL_7:
        sub_1000A8720(v25);
        if ((*(v9 + 48))(v25, 1, v8) == 1)
        {
          sub_100004F84(v25, &qword_100AD8F98);
        }

        else
        {
          AudioAssetMetadata.intensities.getter();
          (*(v9 + 8))(v25, v8);
        }
      }
    }

    else
    {
      v44 = AudioAssetMetadata.duration.getter();
      v37 = v30;
      (*(v9 + 8))(v29, v8);
      if (!a3)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v38 = v28;
    v39 = result;
    v37 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  v31 = v45;
  if (!a4)
  {
    sub_1000A8720(v22);
    if ((*(v9 + 48))(v22, 1, v8) == 1)
    {
      sub_100004F84(v22, &qword_100AD8F98);
    }

    else
    {
      AudioAssetMetadata.transcriptSegments.getter();
      (*(v9 + 8))(v22, v8);
    }
  }

  sub_1000A8720(v19);
  if ((*(v9 + 48))(v19, 1, v8) == 1)
  {
    sub_100004F84(v19, &qword_100AD8F98);
    v32 = type metadata accessor for Date();
    (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
  }

  else
  {
    AudioAssetMetadata.recordingDate.getter();
    (*(v9 + 8))(v19, v8);
  }

  sub_100088AC8(v15, v40);
  v33 = v41;
  AudioAssetMetadata.init(duration:intensities:recordingDate:transcriptSegments:)();
  sub_100004F84(v15, &unk_100AD4790);
  v34 = v43;
  (*(v9 + 32))(v43, v33, v8);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD8FA8);
  v35 = swift_allocObject();
  (*(v38 + 56))(v35 + *(*v35 + 104), 1, 1, v39);
  *(v35 + *(*v35 + 112)) = xmmword_100941EE0;
  sub_10021B8C8(v34, v35 + *(*v35 + 120));
  *(v31 + OBJC_IVAR____TtC7Journal10AudioAsset_metadata) = v35;
}

id sub_10021AD58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10021ADBC()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v56 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AudioAssetMetadata();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v52 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD8F98);
  __chkstk_darwin(v8 - 8);
  v10 = v51 - v9;
  v11 = sub_1000F24EC(&unk_100AD4790);
  v12 = __chkstk_darwin(v11 - 8);
  v55 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v51 - v14;
  v16 = type metadata accessor for UTType();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v0;
  v21 = sub_1000A98A0();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v25 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v51[1] = v3;
      static UTType.audio.getter();
      v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
      isa = UTType._bridgeToObjectiveC()().super.isa;
      v28 = [v26 initWithContentType:isa];

      (*(v17 + 8))(v19, v16);
      sub_10012B77C(0, 0, v23, v24);

      v29 = v55;
      if (*(v20 + OBJC_IVAR____TtC7Journal10AudioAsset_metadata))
      {

        sub_1000A8960(v10);

        v31 = v53;
        v30 = v54;
        if (!(*(v53 + 48))(v10, 1, v54))
        {
          v39 = v52;
          (*(v31 + 16))(v52, v10, v30);
          sub_100004F84(v10, &qword_100AD8F98);
          AudioAssetMetadata.recordingDate.getter();
          (*(v31 + 8))(v39, v30);
          v40 = type metadata accessor for Date();
          v41 = *(v40 - 8);
          if ((*(v41 + 48))(v29, 1, v40) != 1)
          {
            (*(v41 + 32))(v15, v29, v40);
            (*(v41 + 56))(v15, 0, 1, v40);
LABEL_19:
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v42 = String.init(localized:table:bundle:locale:comment:)();
            v44 = v43;
            sub_1000F24EC(&unk_100AD9A60);
            v45 = swift_allocObject();
            *(v45 + 16) = xmmword_100940080;
            v46 = sub_10012C00C(v42, v44, v15);
            v48 = v47;

            *(v45 + 32) = v46;
            *(v45 + 40) = v48;
            v49 = Array._bridgeToObjectiveC()().super.isa;

            [v28 setAlternateNames:v49];

            sub_100004F84(v15, &unk_100AD4790);
            return v28;
          }

LABEL_9:
          v33 = *(v20 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
          if (v33 && (v34 = [v33 entry]) != 0)
          {
            v35 = v34;
            JournalEntryMO.displayDate.getter();

            v36 = 0;
          }

          else
          {
            v36 = 1;
          }

          v37 = type metadata accessor for Date();
          v38 = *(v37 - 8);
          (*(v38 + 56))(v15, v36, 1, v37);
          if ((*(v38 + 48))(v29, 1, v37) != 1)
          {
            sub_100004F84(v29, &unk_100AD4790);
          }

          goto LABEL_19;
        }

        sub_100004F84(v10, &qword_100AD8F98);
      }

      v32 = type metadata accessor for Date();
      (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t sub_10021B4F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = sub_1000F24EC(&qword_100AD8F98);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_1000A8720(&v11 - v5);
  v7 = type metadata accessor for AudioAssetMetadata();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100004F84(v6, &qword_100AD8F98);
    return 0;
  }

  else
  {
    v10 = a3();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

uint64_t sub_10021B628()
{
  v0 = sub_1000F24EC(&qword_100AD8F98);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1000A8720(&v7 - v1);
  v3 = type metadata accessor for AudioAssetMetadata();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100004F84(v2, &qword_100AD8F98);
    return 0;
  }

  else
  {
    v6 = AudioAssetMetadata.duration.getter();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t sub_10021B760@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100AD8F98);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_1000A8720(&v9 - v3);
  v5 = type metadata accessor for AudioAssetMetadata();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100004F84(v4, &qword_100AD8F98);
    v7 = type metadata accessor for Date();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    AudioAssetMetadata.recordingDate.getter();
    return (*(v6 + 8))(v4, v5);
  }
}

uint64_t sub_10021B8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD8FA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10021B938(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_subtitleLabel;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_captionLabel;
  *&v4[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleStack;
  *&v4[v12] = [objc_allocWithZone(UIStackView) init];
  v13 = &v4[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_symbolName];
  v14 = type metadata accessor for SymbolAndTextFallbackView();
  *v13 = 0;
  *(v13 + 1) = 0;
  v17.receiver = v4;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_10021BA9C();

  return v15;
}

id sub_10021BA9C()
{
  swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView] setContentMode:1];
  v1 = *&v0[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleLabel];
  v2 = objc_opt_self();
  v3 = [v2 secondaryLabelColor];
  [v1 setTextColor:v3];

  if (qword_100AD03F0 != -1)
  {
    swift_once();
  }

  [v1 setFont:qword_100B303E8];
  [v1 setMinimumScaleFactor:0.6];
  [v1 setAdjustsFontForContentSizeCategory:1];
  [v1 setNumberOfLines:2];
  v4 = *&v0[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_subtitleLabel];
  v5 = [v2 secondaryLabelColor];
  [v4 setTextColor:v5];

  if (qword_100AD03E0 != -1)
  {
    swift_once();
  }

  v6 = qword_100B303D8;
  [v4 setFont:qword_100B303D8];
  [v4 setAdjustsFontSizeToFitWidth:1];
  [v4 setMinimumScaleFactor:0.6];
  v7 = *&v0[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_captionLabel];
  v8 = [v2 tertiaryLabelColor];
  [v7 setTextColor:v8];

  [v7 setFont:v6];
  [v7 setAdjustsFontSizeToFitWidth:1];
  [v7 setMinimumScaleFactor:0.6];
  v9 = [v0 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  LOBYTE(v9) = UIContentSizeCategory.isAccessibilityCategory.getter();
  [v1 setAdjustsFontSizeToFitWidth:v9 & 1];
  [v4 setAdjustsFontForContentSizeCategory:v9 & 1];
  [v7 setAdjustsFontForContentSizeCategory:v9 & 1];
  sub_1000F24EC(&unk_100AEBEC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100940080;
  *(v11 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v11 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  LODWORD(v12) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v12];
  type metadata accessor for UILayoutPriority(0);
  sub_1001E80F8();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v13) = v16;
  [v4 setContentCompressionResistancePriority:1 forAxis:v13];
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v14) = v16;
  return [v7 setContentCompressionResistancePriority:1 forAxis:v14];
}

void sub_10021BE90(void *a1)
{
  v3 = v1;
  v5 = [v3 subviews];
  sub_10021DE14();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_116;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [v9 removeFromSuperview];
  }

LABEL_10:

  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      [v3 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v11 = [objc_allocWithZone(UIView) init];
      v168 = v11;
      if (qword_100AD0358 != -1)
      {
        swift_once();
        v11 = v168;
      }

      [v11 setBackgroundColor:qword_100B30350];
      [v3 addSubview:v168];
      v12 = [v168 superview];
      if (v12)
      {
        v13 = v12;
        [v168 setTranslatesAutoresizingMaskIntoConstraints:0];
        v14 = [v168 leadingAnchor];
        v15 = [v13 leadingAnchor];
        v16 = [v14 constraintEqualToAnchor:v15];

        [v16 setConstant:0.0];
        [v16 setActive:1];
      }

      v17 = [v168 superview];
      if (v17)
      {
        v18 = v17;
        [v168 setTranslatesAutoresizingMaskIntoConstraints:0];
        v19 = [v168 topAnchor];
        v20 = [v18 topAnchor];
        v21 = [v19 constraintEqualToAnchor:v20];

        [v21 setConstant:0.0];
        [v21 setActive:1];
      }

      v22 = [v168 widthAnchor];
      v23 = [v3 heightAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];

      [v24 setActive:1];
      v25 = *&v3[OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView];
      v26 = *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_symbolName + 8];
      v27 = qword_100ACFC10;

      if (v27 != -1)
      {
        swift_once();
      }

      v28 = qword_100B2F7A0;
      if (v26)
      {
        v29 = String._bridgeToObjectiveC()();
      }

      else
      {
        v29 = 0;
      }

      v103 = [objc_opt_self() _systemImageNamed:v29 withConfiguration:v28];

      [v25 setImage:v103];
      if (qword_100AD0368 != -1)
      {
        swift_once();
      }

      [v25 setTintColor:qword_100B30360];
      [v168 addSubview:v25];
      v104 = [v25 superview];
      if (v104)
      {
        v105 = v104;
        [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
        v106 = [v105 centerXAnchor];
        v107 = [v25 centerXAnchor];
        v108 = [v107 constraintEqualToAnchor:v106];

        [v108 setConstant:0.0];
        [v108 setActive:1];
      }

      v109 = [v25 superview];
      if (v109)
      {
        v110 = v109;
        [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
        v111 = [v25 centerYAnchor];
        v112 = [v110 centerYAnchor];
        v113 = [v111 constraintEqualToAnchor:v112];

        [v113 setConstant:0.0];
        [v113 setActive:1];
      }

      v114 = *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleLabel];
      if (qword_100AD03F0 != -1)
      {
        swift_once();
      }

      [v114 setFont:qword_100B303E8];
      v115 = *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleStack];
      [v115 setAlignment:1];
      [v115 addArrangedSubview:v114];
      [v115 addArrangedSubview:*&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_subtitleLabel]];
      v116 = *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_captionLabel];
      v117 = [v116 text];
      if (v117)
      {

        v118 = [objc_allocWithZone(UIStackView) init];
        [v118 setAxis:1];
        [v118 setDistribution:4];
        [v118 setAlignment:1];
        [v118 setSpacing:5.0];
        [v118 addArrangedSubview:v115];
        [v118 addArrangedSubview:v116];
        [v3 addSubview:v118];
        [v118 setTranslatesAutoresizingMaskIntoConstraints:0];
        v119 = [v118 leadingAnchor];
        v120 = [v168 trailingAnchor];
        v121 = [v119 constraintEqualToAnchor:v120];

        [v121 setConstant:12.0];
        [v121 setActive:1];

        v122 = [v118 superview];
        if (v122)
        {
          v123 = v122;
          [v118 setTranslatesAutoresizingMaskIntoConstraints:0];
          v124 = [v118 centerYAnchor];
          v125 = [v123 centerYAnchor];
          v126 = [v124 constraintEqualToAnchor:v125];

          [v126 setConstant:0.0];
          [v126 setActive:1];
        }

        v127 = [v118 superview];
        if (v127)
        {
          v167 = v127;
          [v118 setTranslatesAutoresizingMaskIntoConstraints:0];
          v128 = [v118 trailingAnchor];
          v129 = [v167 trailingAnchor];
          v130 = [v128 constraintEqualToAnchor:v129];

          [v130 setConstant:-12.0];
          [v130 setActive:1];

LABEL_113:
          v67 = v167;
          goto LABEL_52;
        }
      }

      else
      {
        [v3 addSubview:v115];
        [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
        v155 = [v115 leadingAnchor];
        v156 = [v168 trailingAnchor];
        v157 = [v155 constraintEqualToAnchor:v156];

        [v157 setConstant:12.0];
        [v157 setActive:1];

        v158 = [v115 superview];
        if (v158)
        {
          v159 = v158;
          [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
          v160 = [v115 centerYAnchor];
          v161 = [v159 centerYAnchor];
          v162 = [v160 constraintEqualToAnchor:v161];

          [v162 setConstant:0.0];
          [v162 setActive:1];
        }

        v163 = [v115 superview];
        if (v163)
        {
          v167 = v163;
          [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
          v164 = [v115 trailingAnchor];
          v165 = [v167 trailingAnchor];
          v166 = [v164 constraintEqualToAnchor:v165];

          [v166 setConstant:-12.0];
          [v166 setActive:1];

          goto LABEL_113;
        }
      }

LABEL_51:
      v67 = v168;
LABEL_52:

      return;
    }

    [v3 setMaximumContentSizeCategory:0];
    v6 = *&v3[OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView];
    [v3 addSubview:v6];
    a1 = *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleStack];
    [v3 addSubview:a1];
    v2 = *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_symbolName + 8];
    v35 = qword_100ACFC08;

    if (v35 == -1)
    {
LABEL_28:
      v36 = qword_100B2F798;
      if (v2)
      {
        v37 = String._bridgeToObjectiveC()();
      }

      else
      {
        v37 = 0;
      }

      v43 = [objc_opt_self() _systemImageNamed:v37 withConfiguration:v36];

      [v6 setImage:v43];
      if (qword_100AD0368 != -1)
      {
        swift_once();
      }

      [v6 setTintColor:qword_100B30360];
      v44 = [v6 superview];
      if (v44)
      {
        v45 = v44;
        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
        v46 = [v45 centerXAnchor];
        v47 = [v6 centerXAnchor];
        v48 = [v47 constraintEqualToAnchor:v46];

        [v48 setConstant:0.0];
        if (v48)
        {
          [v48 setActive:1];
        }
      }

      v49 = [v6 superview];
      if (v49)
      {
        v50 = v49;
        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
        v51 = [v6 topAnchor];
        v52 = [v50 topAnchor];
        v53 = [v51 constraintGreaterThanOrEqualToAnchor:v52];

        [v53 setConstant:12.0];
        [v53 setActive:1];
      }

      v54 = *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleLabel];
      if (qword_100AD03F0 != -1)
      {
        swift_once();
      }

      [v54 setFont:qword_100B303E8];
      [a1 setAlignment:3];
      [a1 addArrangedSubview:v54];
      [a1 addArrangedSubview:*&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_subtitleLabel]];
      v55 = [a1 superview];
      if (v55)
      {
        v56 = v55;
        [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
        v57 = [a1 leadingAnchor];
        v58 = [v56 leadingAnchor];
        v59 = [v57 constraintEqualToAnchor:v58];

        [v59 setConstant:12.0];
        [v59 setActive:1];
      }

      v60 = [a1 superview];
      if (v60)
      {
        v61 = v60;
        [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
        v62 = [a1 trailingAnchor];
        v63 = [v61 trailingAnchor];
        v64 = [v62 constraintEqualToAnchor:v63];

        [v64 setConstant:-12.0];
        [v64 setActive:1];
      }

      v65 = [a1 topAnchor];
      v66 = [v6 bottomAnchor];
      v168 = [v65 constraintEqualToAnchor:v66 constant:20.0];

      [v168 setActive:1];
      goto LABEL_51;
    }

LABEL_116:
    swift_once();
    goto LABEL_28;
  }

  if (a1 - 5 < 2)
  {
    [v3 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
    v30 = *&v3[OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView];
    [v3 addSubview:v30];
    v31 = *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_symbolName + 8];
    v32 = qword_100ACFC10;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = qword_100B2F7A0;
    if (v31)
    {
      v34 = String._bridgeToObjectiveC()();
    }

    else
    {
      v34 = 0;
    }

    v71 = [objc_opt_self() _systemImageNamed:v34 withConfiguration:v33];

    [v30 setImage:v71];
    if (qword_100AD0368 != -1)
    {
      swift_once();
    }

    [v30 setTintColor:qword_100B30360];
    v72 = [v30 superview];
    if (v72)
    {
      v73 = v72;
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v74 = [v73 centerXAnchor];
      v75 = [v30 centerXAnchor];
      v76 = [v75 constraintEqualToAnchor:v74];

      [v76 setConstant:0.0];
      if (v76)
      {
        [v76 setActive:1];
      }
    }

    v77 = [v30 superview];
    if (v77)
    {
      v78 = v77;
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v79 = [v30 topAnchor];
      v80 = [v78 topAnchor];
      v81 = [v79 constraintGreaterThanOrEqualToAnchor:v80];

      [v81 setConstant:12.0];
      [v81 setActive:1];
    }

    v38 = *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_captionLabel];
    v82 = [v38 text];
    if (v82)
    {

      [v3 addSubview:v38];
      v83 = [v38 superview];
      if (v83)
      {
        v84 = v83;
        [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
        v85 = [v38 leadingAnchor];
        v86 = [v84 leadingAnchor];
        v87 = [v85 constraintEqualToAnchor:v86];

        [v87 setConstant:8.0];
        [v87 setActive:1];
      }

      v88 = [v38 superview];
      if (v88)
      {
        v89 = v88;
        [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
        v90 = [v38 trailingAnchor];
        v91 = [v89 trailingAnchor];
        v92 = [v90 constraintEqualToAnchor:v91];

        [v92 setConstant:-8.0];
        [v92 setActive:1];
      }
    }

    else
    {
      v38 = *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_subtitleLabel];
      [v3 addSubview:v38];
      v93 = [v38 superview];
      if (v93)
      {
        v94 = v93;
        [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
        v95 = [v38 leadingAnchor];
        v96 = [v94 leadingAnchor];
        v97 = [v95 constraintEqualToAnchor:v96];

        [v97 setConstant:8.0];
        [v97 setActive:1];
      }

      v98 = [v38 superview];
      if (v98)
      {
        v99 = v98;
        [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
        v100 = [v38 trailingAnchor];
        v101 = [v99 trailingAnchor];
        v102 = [v100 constraintEqualToAnchor:v101];

        [v102 setConstant:-8.0];
        [v102 setActive:1];
      }
    }

LABEL_105:
    v152 = [v38 topAnchor];
    v153 = [v30 bottomAnchor];
    v154 = [v152 constraintEqualToAnchor:v153 constant:6.0];

    [v154 setActive:1];
    v68 = "setTextAlignment:";
    v69 = v38;
    v70 = 1;
    goto LABEL_106;
  }

  if (a1 == 4)
  {
    [v3 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
    v30 = *&v3[OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView];
    [v3 addSubview:v30];
    v38 = *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleLabel];
    [v3 addSubview:v38];
    v39 = *&v3[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_symbolName + 8];
    v40 = qword_100ACFC10;

    if (v40 != -1)
    {
      swift_once();
    }

    v41 = qword_100B2F7A0;
    if (v39)
    {
      v42 = String._bridgeToObjectiveC()();
    }

    else
    {
      v42 = 0;
    }

    v131 = [objc_opt_self() _systemImageNamed:v42 withConfiguration:v41];

    [v30 setImage:v131];
    if (qword_100AD0368 != -1)
    {
      swift_once();
    }

    [v30 setTintColor:qword_100B30360];
    v132 = [v30 superview];
    if (v132)
    {
      v133 = v132;
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v134 = [v133 centerXAnchor];
      v135 = [v30 centerXAnchor];
      v136 = [v135 constraintEqualToAnchor:v134];

      [v136 setConstant:0.0];
      if (v136)
      {
        [v136 setActive:1];
      }
    }

    v137 = [v30 superview];
    if (v137)
    {
      v138 = v137;
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v139 = [v30 topAnchor];
      v140 = [v138 topAnchor];
      v141 = [v139 constraintGreaterThanOrEqualToAnchor:v140];

      [v141 setConstant:12.0];
      [v141 setActive:1];
    }

    if (qword_100AD03E0 != -1)
    {
      swift_once();
    }

    [v38 setFont:qword_100B303D8];
    v142 = [v38 superview];
    if (v142)
    {
      v143 = v142;
      [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
      v144 = [v38 leadingAnchor];
      v145 = [v143 leadingAnchor];
      v146 = [v144 constraintEqualToAnchor:v145];

      [v146 setConstant:8.0];
      [v146 setActive:1];
    }

    v147 = [v38 superview];
    if (v147)
    {
      v148 = v147;
      [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
      v149 = [v38 trailingAnchor];
      v150 = [v148 trailingAnchor];
      v151 = [v149 constraintEqualToAnchor:v150];

      [v151 setConstant:-8.0];
      [v151 setActive:1];
    }

    goto LABEL_105;
  }

  v68 = "setMaximumContentSizeCategory:";
  v69 = v3;
  v70 = 0;
LABEL_106:

  [v69 v68];
}

uint64_t sub_10021DCC8()
{
}

id sub_10021DD3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolAndTextFallbackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10021DE14()
{
  result = qword_100ADC670;
  if (!qword_100ADC670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADC670);
  }

  return result;
}

void sub_10021DE64()
{
  v1 = OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_subtitleLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_captionLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleStack;
  *(v0 + v4) = [objc_allocWithZone(UIStackView) init];
  v5 = (v0 + OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_symbolName);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10021DF54(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = UIContentSizeCategory.isAccessibilityCategory.getter();
  [*&a1[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_titleLabel] setAdjustsFontSizeToFitWidth:v4 & 1];
  [*&a1[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_subtitleLabel] setAdjustsFontForContentSizeCategory:v4 & 1];
  v5 = *&a1[OBJC_IVAR____TtC7Journal25SymbolAndTextFallbackView_captionLabel];

  return [v5 setAdjustsFontForContentSizeCategory:v4 & 1];
}

uint64_t sub_10021E01C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD9000);
  v1 = sub_10000617C(v0, qword_100AD9000);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10021E0E4()
{
  v1 = OBJC_IVAR____TtC7Journal12MapAssetView____lazy_storage___platterBlurMaskView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal12MapAssetView____lazy_storage___platterBlurMaskView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal12MapAssetView____lazy_storage___platterBlurMaskView);
  }

  else
  {
    sub_1000F24EC(&unk_100AD4780);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100941D70;
    v5 = objc_opt_self();
    *(v4 + 32) = [v5 clearColor];
    v6 = [v5 whiteColor];
    v7 = [v6 colorWithAlphaComponent:0.85];

    *(v4 + 40) = v7;
    *(v4 + 48) = [v5 whiteColor];
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
    v8 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = v10;
    static UIView.Invalidating.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.setter();
    v12 = *(v0 + v1);
    *(v0 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

CGFloat sub_10021E364(double a1, double a2, double a3, double a4)
{
  [v4 bounds];
  v12 = sub_10007BDE0(v8, v9, v10, v11, a1, a2);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [*&v4[OBJC_IVAR____TtC7Journal12MapAssetView_labelView] sizeThatFits:{v15, v17}];
  Width = ceil(v19) + a2 + a4;
  v23.origin.x = v12;
  v23.origin.y = v14;
  v23.size.width = v16;
  v23.size.height = v18;
  if (Width >= CGRectGetWidth(v23))
  {
    v24.origin.x = v12;
    v24.origin.y = v14;
    v24.size.width = v16;
    v24.size.height = v18;
    Width = CGRectGetWidth(v24);
  }

  [v4 bounds];
  v21 = v25.origin.x + CGRectGetWidth(v25) * 0.5 - Width * 0.5;
  v26.origin.x = v12;
  v26.origin.y = v14;
  v26.size.width = v16;
  v26.size.height = v18;
  CGRectGetMaxY(v26);
  return v21;
}

uint64_t sub_10021E498()
{
  sub_100038534(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_delegate);

  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_latestImageRequestID, &qword_100AD1420);

  return swift_unknownObjectRelease();
}

id sub_10021E598()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset];
  if (v1)
  {
    [*(v1 + OBJC_IVAR____TtC7Journal5Asset_delegates) removeObject:v0];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for MapAssetView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10021E738(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal12MapAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal12MapAssetView_mapView] = 0;
  v1[OBJC_IVAR____TtC7Journal12MapAssetView_mapType] = 0;
  v3 = OBJC_IVAR____TtC7Journal12MapAssetView_mapThumbnailView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView;
  v5 = [objc_opt_self() effectWithStyle:6];
  v6 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v5];

  *&v1[v4] = v6;
  v7 = OBJC_IVAR____TtC7Journal12MapAssetView_labelView;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC7Journal12MapAssetView_placeholderView;
  type metadata accessor for SymbolAndPlatterFallbackView();
  *&v1[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC7Journal12MapAssetView____lazy_storage___platterBlurMaskView] = 0;
  *&v1[OBJC_IVAR____TtC7Journal12MapAssetView_locations] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7Journal12MapAssetView_annotationsDict] = &_swiftEmptyDictionarySingleton;
  v9 = OBJC_IVAR____TtC7Journal12MapAssetView_latestImageRequestID;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset] = 0;
  v11 = &v1[OBJC_IVAR____TtC7Journal12MapAssetView_platterPadding];
  *v11 = xmmword_100948650;
  v11[1] = xmmword_100948650;
  v12 = &v1[OBJC_IVAR____TtC7Journal12MapAssetView_platterLabelPadding];
  __asm { FMOV            V1.2D, #12.0 }

  *v12 = xmmword_100948660;
  v12[1] = _Q1;
  v18 = &v1[OBJC_IVAR____TtC7Journal12MapAssetView_gradientLabelPadding];
  *v18 = xmmword_100948670;
  v18[1] = xmmword_100948670;
  v19 = OBJC_IVAR____TtC7Journal12MapAssetView_clusterAnnotationsDict;
  *&v1[v19] = sub_100073348(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC7Journal12MapAssetView_newReplacementAnnotation] = 0;
  v1[OBJC_IVAR____TtC7Journal12MapAssetView_needsMapLoad] = 0;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for MapAssetView();
  v20 = objc_msgSendSuper2(&v24, "initWithCoder:", a1);
  v21 = v20;
  if (v20)
  {
    v22 = v20;
    sub_10007361C();
  }

  return v21;
}

id sub_10021EA48()
{
  v1 = OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView;
  v2 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_labelView];
  v3 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView];
  [v2 frame];
  v4 = CGRectGetMinY(v14) + -12.0;
  [v0 bounds];
  Width = CGRectGetWidth(v15);
  [v2 frame];
  [v3 setFrame:{0.0, v4, Width, CGRectGetHeight(v16) + 12.0 + 12.0}];

  v6 = [*&v0[v1] layer];
  [v6 setCornerRadius:0.0];

  v7 = [*&v0[v1] layer];
  LODWORD(v8) = 1.0;
  [v7 setOpacity:v8];

  [*&v0[v1] setClipsToBounds:0];
  v9 = sub_10021E0E4();
  [*&v0[v1] bounds];
  [v9 setFrame:?];

  v10 = *&v0[v1];
  v11 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView____lazy_storage___platterBlurMaskView];

  return [v10 setMaskView:v11];
}

id sub_10021EBC8()
{
  v1 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for AttributedString();
  __chkstk_darwin(v2 - 8);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
  sub_1000065A8(0, &qword_100AE4890);

  AttributeContainer.init()();
  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
  sub_10005C484();
  AttributeContainer.subscript.setter();
  LOBYTE(v7) = 0;
  sub_100221DFC();
  AttributeContainer.subscript.setter();
  AttributedString.init(_:attributes:)();
  v5 = NSAttributedString.init(_:)();
  [v3 setAttributedText:{v5, 2, v7}];

  [v3 setNumberOfLines:2];
  return [v3 setFrame:{sub_10021E364(12.0, 8.0, 12.0, 8.0)}];
}

uint64_t sub_10021EDBC(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v66 = a4;
  v54._object = a2;
  v55 = a3;
  v54._countAndFlagsBits = a1;
  v52 = 0xEA00000000006C6CLL;
  v5 = sub_1000F24EC(&unk_100AD91E0);
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin(v5);
  v63 = &v52 - v6;
  v7 = sub_1000F24EC(&unk_100AF3620);
  v57 = *(v7 - 8);
  v58 = v7;
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = type metadata accessor for AttributeContainer();
  v61 = *(v10 - 8);
  v62 = v10;
  v11 = __chkstk_darwin(v10);
  v60 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v52 - v13;
  v15 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v15 - 8);
  v17 = &v52 - v16;
  v18 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v20 - 8);
  v59 = type metadata accessor for AttributedString();
  v21 = *(v59 - 8);
  v22 = __chkstk_darwin(v59);
  v56 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v52 - v24;
  v26 = [v4 traitCollection];
  v53 = [v26 horizontalSizeClass];

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v54);
  v28._countAndFlagsBits = 548913696;
  v28._object = 0xA400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
  v29._countAndFlagsBits = v55;
  v29._object = v66;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v29);
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
  String.LocalizationValue.init(stringInterpolation:)();
  static AttributedString.FormattingOptions.applyReplacementIndexAttribute.getter();
  v31 = type metadata accessor for Locale();
  (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
  AttributedString.init(localized:defaultValue:options:table:bundle:locale:comment:)();
  v32 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v66 = v4;
  v33 = v4[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  if (v33 > 3 && v4[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] <= 5u && v33 != 4)
  {
    goto LABEL_7;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v35 = &UIFontTextStyleCaption2;
  if ((v34 & 1) == 0)
  {
    if (v66[v32] == 6)
    {
      v52 = 0xE500000000000000;
LABEL_7:

      v35 = &UIFontTextStyleCaption2;
      goto LABEL_12;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v37 = &UIFontTextStyleSubheadline;
    if (v53 == 1)
    {
      v37 = &UIFontTextStyleFootnote;
    }

    if ((v36 & 1) == 0)
    {
      v35 = v37;
    }
  }

LABEL_12:
  v38 = *v35;
  v39 = [objc_opt_self() preferredFontForTextStyle:v38];

  v67 = v39;
  sub_10005C484();
  AttributedString.subscript.setter();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  static AttributeContainer.subscript.getter();

  v67 = 1;
  v41 = v58;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v57 + 8))(v9, v41);
  v42 = swift_getKeyPath();
  __chkstk_darwin(v42);
  swift_getKeyPath();
  sub_100221DFC();
  v43 = v63;
  static AttributeContainer.subscript.getter();

  v67 = 2;
  v44 = v60;
  v45 = v65;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v64 + 8))(v43, v45);
  AttributedString.replaceAttributes(_:with:)();
  v46 = v62;
  v47 = *(v61 + 8);
  v47(v44, v62);
  v47(v14, v46);
  v48 = *&v66[OBJC_IVAR____TtC7Journal12MapAssetView_labelView];
  sub_1000065A8(0, &qword_100AE4890);
  v49 = v59;
  (*(v21 + 16))(v56, v25, v59);
  v50 = NSAttributedString.init(_:)();
  [v48 setAttributedText:v50];

  [v48 setNumberOfLines:1];
  [v48 setFrame:{sub_10021E364(8.0, 12.0, 12.0, 12.0)}];
  return (*(v21 + 8))(v25, v49);
}

uint64_t sub_10021F79C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for MultiPinMapAssetMetadata();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC7Journal12MapAssetView_mapView;
  v16 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapView];
  if (v16 || (v17 = [objc_allocWithZone(MKMapView) initWithFrame:{0.0, 0.0, 0.0, 0.0}], v18 = *&v0[v15], *&v0[v15] = v17, v18, (v16 = *&v0[v15]) != 0))
  {
    v19 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset];
    if (v19)
    {
      v35 = v2;
      v20 = v16;
      v21 = v19;
      sub_10007F460(v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {

        sub_100004F84(v10, &unk_100AD5B30);
      }

      else
      {
        v34 = v21;
        (*(v12 + 32))(v14, v10, v11);
        v22 = MultiPinMapAssetMetadata.visitsData.getter();
        if (v22)
        {
          v23 = v22;
          sub_1000065A8(0, &unk_100AD91D0);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          [v20 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:MKMapViewDefaultClusterAnnotationViewReuseIdentifier];
          [v20 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:MKMapViewDefaultAnnotationViewReuseIdentifier];
          [v20 setShowsAttribution:0];
          sub_1000065A8(0, &qword_100AD6210);
          v33 = static OS_dispatch_queue.main.getter();
          v25 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v26 = swift_allocObject();
          v26[2] = v25;
          v26[3] = v20;
          v26[4] = v23;
          aBlock[4] = sub_100221D80;
          aBlock[5] = v26;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100006C7C;
          aBlock[3] = &unk_100A619D8;
          v27 = _Block_copy(aBlock);
          v28 = v20;

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_100006964(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000F24EC(&unk_100AD6220);
          sub_100006610();
          v29 = v35;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v30 = v33;
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v27);
          (*(v38 + 8))(v4, v29);
          (*(v36 + 8))(v7, v37);
          return (*(v12 + 8))(v14, v11);
        }

        (*(v12 + 8))(v14, v11);
      }
    }
  }

  v1[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
  v32 = *&v1[v15];
  if (v32)
  {
    [v32 setHidden:1];
  }

  [*&v1[OBJC_IVAR____TtC7Journal12MapAssetView_mapThumbnailView] setHidden:1];
  [*&v1[OBJC_IVAR____TtC7Journal12MapAssetView_placeholderView] setHidden:0];
  [v1 setNeedsLayout];
  return sub_1000738CC(10, 7u);
}

void sub_10021FD84(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1000F24EC(&unk_100AD4790);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v145 = &v123 - v9;
  p_ivar_lyt = type metadata accessor for VisitAssetMetadata();
  v11 = *(p_ivar_lyt - 8);
  __chkstk_darwin(p_ivar_lyt);
  v13 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [a2 setDelegate:Strong];
    isa = [a2 annotations];
    if (!isa)
    {
      sub_1000F24EC(&unk_100AD91C0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [a2 removeAnnotations:isa];

    v144 = OBJC_IVAR____TtC7Journal12MapAssetView_locations;
    *&v15[OBJC_IVAR____TtC7Journal12MapAssetView_locations] = _swiftEmptyArrayStorage;

    v17 = &v15[OBJC_IVAR____TtC7Journal12MapAssetView_annotationsDict];
    swift_beginAccess();
    v143 = v17;
    *v17 = &_swiftEmptyDictionarySingleton;

    v18 = OBJC_IVAR____TtC7Journal12MapAssetView_clusterAnnotationsDict;
    swift_beginAccess();
    *&v15[v18] = &_swiftEmptyDictionarySingleton;

    v19 = [a2 annotations];
    v123 = sub_1000F24EC(&unk_100AD91C0);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v130 = a2;
    if (v20 >> 62)
    {
LABEL_61:
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v131 = v15;
    if (!v21)
    {
      v40 = a3[2];
      if (v40)
      {
        v43 = *(v11 + 16);
        v42 = v11 + 16;
        v41 = v43;
        v44 = a3 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
        v147 = (v42 - 8);
        v124 = OBJC_IVAR____TtC7Journal12MapAssetView_mapView;
        v146 = *(v42 + 56);
        v129 = v8;
        v128 = p_ivar_lyt;
        v127 = v42;
        v126 = v13;
        v125 = v43;
        do
        {
          v148 = v44;
          v41(v13);
          v48 = VisitAssetMetadata.latitude.getter();
          if ((v49 & 1) == 0)
          {
            v50 = *&v48;
            v51 = VisitAssetMetadata.longitude.getter();
            if ((v52 & 1) == 0)
            {
              v53 = *&v51;
              v142 = v40;
              v54 = v144;
              v55 = *&v15[v144];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v15[v54] = v55;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v55 = sub_10007AF8C(0, *(v55 + 2) + 1, 1, v55);
                *&v15[v144] = v55;
              }

              v58 = *(v55 + 2);
              v57 = *(v55 + 3);
              if (v58 >= v57 >> 1)
              {
                v55 = sub_10007AF8C((v57 > 1), v58 + 1, 1, v55);
              }

              *(v55 + 2) = v58 + 1;
              v59 = &v55[16 * v58];
              *(v59 + 4) = v50;
              *(v59 + 5) = v53;
              *&v15[v144] = v55;
              v60 = VisitAssetMetadata.typeOfPlace.getter();
              if (v61)
              {
                v140 = v61;
                v141 = v60;
              }

              else
              {
                v62 = VisitAssetMetadata.mapItemData.getter();
                if (v63 >> 60 != 15 && (v64 = v62, v65 = v63, sub_1000065A8(0, &qword_100AD5A90), v66 = static NSCoding<>.create(from:)(), sub_10003A5C8(v64, v65), v66) && (v67 = [v66 _firstLocalizedCategoryName], v66, v67) || (v68 = VisitAssetMetadata.mapItemData.getter(), v69 >> 60 != 15) && (v70 = v68, v71 = v69, sub_1000065A8(0, &qword_100AD5A90), v72 = static NSCoding<>.create(from:)(), sub_10003A5C8(v70, v71), v72) && (v67 = objc_msgSend(v72, "pointOfInterestCategory"), v72, v67))
                {
                  v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v140 = v73;
                }

                else
                {
                  v141 = 0;
                  v140 = 0;
                }
              }

              v74 = v50;
              v75 = v53;
              v139 = VisitAssetMetadata.id.getter();
              v138 = v76;
              v137 = VisitAssetMetadata.placeName.getter();
              v136 = v77;
              v135 = VisitAssetMetadata.city.getter();
              v134 = v78;
              VisitAssetMetadata.visitStartTime.getter();
              VisitAssetMetadata.createdDate.getter();
              v79 = VisitAssetMetadata.styleData.getter();
              if (v80 >> 60 != 15)
              {
                v81 = v79;
                v82 = v80;
                sub_1000065A8(0, &qword_100AD5A80);
                v83 = static NSCoding<>.create(from:)();
                sub_10003A5C8(v81, v82);
                if (v83)
                {
                  goto LABEL_51;
                }
              }

              v84 = VisitAssetMetadata.mapItemData.getter();
              if (v85 >> 60 == 15)
              {
                v86 = 0;
              }

              else
              {
                v87 = v84;
                v88 = v85;
                sub_1000065A8(0, &qword_100AD5A90);
                v86 = static NSCoding<>.create(from:)();
                sub_10003A5C8(v87, v88);
              }

              v83 = [v86 _styleAttributes];

              if (v83)
              {
LABEL_51:
                v133 = v83;
              }

              else
              {
                v133 = [objc_opt_self() markerStyleAttributes];
              }

              v132 = type metadata accessor for StyledMKPointAnnotation();
              v89 = objc_allocWithZone(v132);
              v90 = &v89[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID];
              *v90 = 0;
              v90[1] = 0;
              v91 = &v89[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName];
              *v91 = 0;
              v91[1] = 0;
              v92 = &v89[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_city];
              *v92 = 0;
              v92[1] = 0;
              v93 = &v89[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_typeOfPlace];
              *v93 = 0;
              v93[1] = 0;
              v94 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitStartTime;
              v95 = type metadata accessor for Date();
              v96 = *(*(v95 - 8) + 56);
              v96(&v89[v94], 1, 1, v95);
              v97 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_createdDate;
              v96(&v89[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_createdDate], 1, 1, v95);
              v98 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_styleAttributes;
              *&v89[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_styleAttributes] = 0;
              v99 = OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_entryIds;
              *&v89[OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_entryIds] = 0;
              v100 = v138;
              *v90 = v139;
              v90[1] = v100;
              v101 = v136;
              *v91 = v137;
              v91[1] = v101;
              v102 = v134;
              *v92 = v135;
              v92[1] = v102;

              v103 = v140;
              *v93 = v141;
              v93[1] = v103;

              swift_beginAccess();
              v104 = v145;
              sub_100221D8C(v145, &v89[v94]);
              swift_endAccess();
              swift_beginAccess();
              v8 = v129;
              sub_100221D8C(v129, &v89[v97]);
              swift_endAccess();
              v105 = *&v89[v98];
              v106 = v133;
              *&v89[v98] = v133;
              v107 = v106;

              *&v89[v99] = &_swiftEmptySetSingleton;

              v150.receiver = v89;
              v150.super_class = v132;
              v108 = objc_msgSendSuper2(&v150, "init");
              [v108 setCoordinate:{v74, v75}];

              sub_100004F84(v8, &unk_100AD4790);
              sub_100004F84(v104, &unk_100AD4790);
              v109 = v108;
              [v109 coordinate];
              v112 = v110;
              v113 = v111;
              v15 = v131;
              if (!*(*v143 + 16) || (sub_1003623A4(v110, v111), (v114 & 1) == 0))
              {
                v45 = v143;
                swift_beginAccess();
                v46 = v109;
                v47 = swift_isUniquelyReferenced_nonNull_native();
                v149 = *v45;
                *v45 = 0x8000000000000000;
                sub_100221C20(v46, v47, &v149, v112, v113);
                *v45 = v149;
                swift_endAccess();
                [*&v15[v124] addAnnotation:v46];
              }

              p_ivar_lyt = v128;
              v13 = v126;
              v40 = v142;
              v41 = v125;
            }
          }

          (*v147)(v13, p_ivar_lyt);
          v44 = &v148[v146];
          --v40;
        }

        while (v40);
      }
    }

    v22 = objc_allocWithZone(MKPointOfInterestFilter);
    type metadata accessor for MKPointOfInterestCategory(0);
    v23 = Array._bridgeToObjectiveC()().super.isa;
    v24 = [v22 initIncludingCategories:v23];

    v25 = v130;
    [v130 setPointOfInterestFilter:v24];

    sub_100220B68();
    v26 = [objc_opt_self() clearColor];
    [v25 setBackgroundColor:v26];

    [v15 addSubview:v25];
    sub_10007BFCC();
    v27 = OBJC_IVAR____TtC7Journal12MapAssetView_newReplacementAnnotation;
    a3 = *&v15[OBJC_IVAR____TtC7Journal12MapAssetView_newReplacementAnnotation];
    if (!a3)
    {
      goto LABEL_64;
    }

    v28 = *&v15[OBJC_IVAR____TtC7Journal12MapAssetView_mapView];
    if (!v28)
    {
      goto LABEL_64;
    }

    swift_unknownObjectRetain();
    v29 = [v28 annotations];
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
    [a3 coordinate];
    v32 = v31;
    v34 = v33;
    if (v30 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (v35)
      {
LABEL_11:
        v36 = 0;
        v11 = v30 & 0xC000000000000001;
        v13 = (v30 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v11)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v15 = (v36 + 1);
            if (__OFADD__(v36, 1))
            {
              goto LABEL_59;
            }
          }

          else
          {
            if (v36 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v8 = *(v30 + 8 * v36 + 32);
            swift_unknownObjectRetain();
            v15 = (v36 + 1);
            if (__OFADD__(v36, 1))
            {
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }
          }

          [v8 coordinate];
          if (v32 == v38 && v34 == v37)
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v36;
          if (v15 == v35)
          {
            swift_unknownObjectRelease();

            v15 = v131;
            v25 = v130;
            goto LABEL_64;
          }
        }

        v15 = v131;
        v115 = *&v131[OBJC_IVAR____TtC7Journal12MapAssetView_mapView];
        swift_unknownObjectRetain();
        v25 = v130;
        if (v115)
        {
          [v115 selectAnnotation:v8 animated:1];
        }

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        *&v15[v27] = 0;
        swift_unknownObjectRelease();
LABEL_64:
        v116 = v15[OBJC_IVAR____TtC7Journal12MapAssetView_mapType];
        if (v116 == 2)
        {
          v119 = [v25 _panningGestureRecognizer];
          if (v119)
          {
            v118 = v119;
            [v119 setMinimumNumberOfTouches:1];
            goto LABEL_70;
          }
        }

        else
        {
          if (v116 != 1)
          {
            goto LABEL_71;
          }

          v117 = [v25 _panningGestureRecognizer];
          if (v117)
          {
            v118 = v117;
            [v117 setMinimumNumberOfTouches:2];
LABEL_70:

LABEL_71:
            v120 = &v15[OBJC_IVAR____TtC7Journal12MapAssetView_delegate];
            if (swift_unknownObjectWeakLoadStrong())
            {
              v121 = *(v120 + 1);
              ObjectType = swift_getObjectType();
              (*(v121 + 24))(ObjectType, v121);

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_11;
      }
    }

    swift_unknownObjectRelease();

    v15 = v131;
    goto LABEL_64;
  }
}

uint64_t sub_100220B68()
{
  v1 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v1 - 8);
  v3 = &v28 - v2;
  v4 = type metadata accessor for MultiPinMapAssetMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset];
  if (!v8 || !*(v8 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    return sub_100004F84(v3, &unk_100AD5B30);
  }

  v9 = v0;

  sub_1000768B4(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100004F84(v3, &unk_100AD5B30);
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = MultiPinMapAssetMetadata.visitsData.getter();
  if (v10)
  {
    v11 = v10;
    if (!*(v10 + 16))
    {
      (*(v5 + 8))(v7, v4);
    }

    [v0 frame];
    Width = CGRectGetWidth(v29);
    [v0 frame];
    v13 = Width * CGRectGetHeight(v30);
    if (v13 == 0.0)
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      [v0 frame];
      v14 = v17;
      v15 = v18;
    }

    v19 = MultiPinMapAssetMetadata.mapCameraData.getter();
    if (v20 >> 60 == 15 || (v21 = v19, v22 = v20, sub_1000065A8(0, &qword_100AD91B0), v23 = static NSCoding<>.create(from:)(), sub_10003A5C8(v21, v22), !v23))
    {
      v24 = sub_10032BED4(v11);

      v25 = [objc_opt_self() currentTraitCollection];
      v26 = sub_100505EC0(v24, 0, 7u, v14, v15, v13 == 0.0, v25, 1);

      v23 = [v26 camera];
    }

    else
    {
    }

    v27 = *&v9[OBJC_IVAR____TtC7Journal12MapAssetView_mapView];
    if (v27)
    {
      [v27 setCamera:v23 animated:1];
    }
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_100220F10(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC7Journal12MapAssetView_locations);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    for (i = (v3 + 40); *(i - 1) != a1 || *i != a2; i += 2)
    {
      if (v4 == ++v5)
      {
        return;
      }
    }

    sub_1006918E4(v5);
  }
}

id sub_100220F74()
{
  sub_1000738CC(10, v0[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType]);
  v0[OBJC_IVAR____TtC7Journal12MapAssetView_needsMapLoad] = 1;

  return [v0 setNeedsLayout];
}

void *sub_100220FE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset);
  v2 = v1;
  return v1;
}

uint64_t sub_100221014()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_mapType))
  {
    return sub_10021F79C();
  }

  else
  {
    return sub_10007BFCC();
  }
}

uint64_t sub_10022102C(char *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      return 0;
    }

    v36 = [a1 dequeueReusableAnnotationViewWithIdentifier:MKMapViewDefaultAnnotationViewReuseIdentifier forAnnotation:a2];
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      v38 = v37;
      [v37 setAnnotation:a2];
    }

    else
    {

      v39 = [objc_allocWithZone(MKMarkerAnnotationView) initWithAnnotation:a2 reuseIdentifier:MKMapViewDefaultAnnotationViewReuseIdentifier];
      v38 = v39;
      if (v39)
      {
        [v39 setCanShowCallout:1];
      }
    }

    type metadata accessor for StyledMKPointAnnotation();
    v40 = swift_dynamicCastClass();
    if (v40)
    {
      v41 = *(v40 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_styleAttributes);
      if (v41)
      {
        if (v38)
        {
          v42 = v40;
          v43 = objc_opt_self();
          swift_unknownObjectRetain();
          v44 = v41;
          v45 = [v43 styleAttributesForMapFeatureAttributes:v44 elevatedGround:1];
          [v38 _setStyleAttributes:v45];

          v46 = *(v42 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName + 8);
          if (v46)
          {
            v47 = *(v42 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName);

            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v48._countAndFlagsBits = 0x3A6E69502070614DLL;
            v48._object = 0xE900000000000020;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
            v49._countAndFlagsBits = v47;
            v49._object = v46;
            String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v49);

            v50._countAndFlagsBits = 0;
            v50._object = 0xE000000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v50);
            String.LocalizationValue.init(stringInterpolation:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
            v51 = String._bridgeToObjectiveC()();

            [v38 setAccessibilityLabel:v51];

            swift_unknownObjectRelease();
            goto LABEL_41;
          }
        }

        else
        {
          v52 = *(v40 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_placeName + 8);
          swift_unknownObjectRetain();
          v53 = v41;
          if (v52)
          {
            v54 = v53;
            swift_unknownObjectRelease();

            return 0;
          }
        }

        swift_unknownObjectRelease();
      }
    }

    if (!v38)
    {
      return v38;
    }

LABEL_41:
    v55 = [v38 _styleAttributes];
    if (!v55 || (v56 = v55, [v55 poiType], v56, (v57 = objc_msgSend(v38, "_styleAttributes")) != 0) && (v58 = v57, v59 = objc_msgSend(v57, "poiType"), v58, v59 == 348))
    {
      v60 = [objc_opt_self() systemIndigoColor];
      [v38 setMarkerTintColor:v60];
    }

    [v38 setClusteringIdentifier:MKMapViewDefaultClusterAnnotationViewReuseIdentifier];
    return v38;
  }

  v10 = [v9 memberAnnotations];
  sub_1000F24EC(&unk_100AD91C0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    goto LABEL_50;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &unk_100AD9000; v12; i = &unk_100AD9000)
  {
    v72 = a1;
    v73 = a2;
    a1 = 0;
    v75 = v11;
    v76 = v11 & 0xC000000000000001;
    v14 = OBJC_IVAR____TtC7Journal12MapAssetView_clusterAnnotationsDict;
    v74 = v11 & 0xFFFFFFFFFFFFFF8;
    while (v76)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v15 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_46;
      }

LABEL_14:
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {
        goto LABEL_7;
      }

      a2 = v16;
      v11 = v12;
      [v16 coordinate];
      v18 = v17;
      v20 = v19;
      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = *(v3 + v14);
      v22 = v77;
      v23 = v3;
      *(v3 + v14) = 0x8000000000000000;
      v24 = sub_1003623A4(v18, v20);
      v26 = v22[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_47;
      }

      v3 = v25;
      if (v22[3] < v29)
      {
        sub_10081EB34(v29, isUniquelyReferenced_nonNull_native);
        v24 = sub_1003623A4(v18, v20);
        if ((v3 & 1) != (v30 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_20:
        v31 = v77;
        if ((v3 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v35 = v24;
      sub_100823198();
      v24 = v35;
      v31 = v77;
      if ((v3 & 1) == 0)
      {
LABEL_21:
        v31[(v24 >> 6) + 8] |= 1 << v24;
        v32 = (v31[6] + 16 * v24);
        *v32 = v18;
        v32[1] = v20;
        *(v31[7] + 8 * v24) = a2;
        v33 = v31[2];
        v28 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v28)
        {
          goto LABEL_49;
        }

        v31[2] = v34;
        goto LABEL_6;
      }

LABEL_5:
      *(v31[7] + 8 * v24) = a2;
      swift_unknownObjectRelease();
LABEL_6:
      v3 = v23;
      *(v23 + v14) = v31;

      swift_endAccess();
      v12 = v11;
      v11 = v75;
LABEL_7:
      swift_unknownObjectRelease();
      ++a1;
      if (v15 == v12)
      {

        a1 = v72;
        a2 = v73;
        i = &unk_100AD9000;
        goto LABEL_52;
      }
    }

    if (a1 >= *(v74 + 16))
    {
      goto LABEL_48;
    }

    swift_unknownObjectRetain();
    v15 = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      goto LABEL_14;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_52:
  swift_getObjectType();
  [a2 coordinate];
  v62 = v61;
  v64 = v63;
  v65 = i[18];
  swift_beginAccess();
  swift_unknownObjectRetain();
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *(v3 + v65);
  *(v3 + v65) = 0x8000000000000000;
  sub_100221C20(a2, v66, &v77, v62, v64);
  *(v3 + v65) = v77;
  swift_endAccess();
  v67 = [a1 dequeueReusableAnnotationViewWithIdentifier:MKMapViewDefaultClusterAnnotationViewReuseIdentifier forAnnotation:a2];
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (v38)
  {
    v68 = objc_opt_self();
    v69 = v67;
    v70 = [v68 systemIndigoColor];
    [v38 setMarkerTintColor:v70];
  }

  else
  {
  }

  return v38;
}

unint64_t sub_100221BCC()
{
  result = qword_100AD91A0;
  if (!qword_100AD91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD91A0);
  }

  return result;
}

unint64_t sub_100221C20(uint64_t a1, char a2, void *a3, double a4, double a5)
{
  v10 = *a3;
  result = sub_1003623A4(a4, a5);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 < v16 || (a2 & 1) != 0)
    {
      sub_10081EB34(v16, a2 & 1);
      result = sub_1003623A4(a4, a5);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100823198();
      result = v19;
    }
  }

  v21 = *a3;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    v22 = (v21[6] + 16 * result);
    *v22 = a4;
    v22[1] = a5;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_100221D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100221DFC()
{
  result = qword_100AD91F0;
  if (!qword_100AD91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD91F0);
  }

  return result;
}

uint64_t sub_100221E60()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_100221EC0();
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_100221EC0()
{
  v0 = type metadata accessor for CachePolicy();
  __chkstk_darwin(v0 - 8);
  v18 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000F24EC(&qword_100AD93A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v19 = type metadata accessor for SessionConfiguration();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  sub_1000F24EC(&qword_100AD93A8);
  v11 = type metadata accessor for ModelBundle();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100940080;

  ModelBundle.init(identifier:)();
  result = (*(v12 + 48))(v4, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v14 + v13, v4, v11);
    static CachePolicy.inMemory.getter();
    SessionConfiguration.init(identifier:useCaseID:preferredModelBundles:handlesSensitiveData:cachePolicy:onBehalfOf:)();
    v16 = v19;
    (*(v5 + 16))(v7, v10, v19);
    type metadata accessor for TokenGenerator();
    swift_allocObject();
    v17 = TokenGenerator.init(configuration:)();
    (*(v5 + 8))(v10, v16);
    return v17;
  }

  return result;
}

uint64_t sub_1002221F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[26] = a2;
  v3[27] = a3;
  v3[25] = a1;
  v4 = sub_1000F24EC(&qword_100AD9318);
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD9320);
  v3[31] = swift_task_alloc();
  v3[32] = sub_1000F24EC(&qword_100AD9328);
  v3[33] = swift_task_alloc();
  v5 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v3[34] = v5;
  v3[35] = *(v5 - 8);
  v3[36] = swift_task_alloc();
  v6 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v3[37] = v6;
  v3[38] = *(v6 - 8);
  v3[39] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD9330);
  v3[40] = swift_task_alloc();
  v7 = type metadata accessor for FunctionIdentifier();
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD9338);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v8 = sub_1000F24EC(&qword_100AD9340);
  v3[47] = v8;
  v3[48] = *(v8 - 8);
  v3[49] = swift_task_alloc();
  type metadata accessor for SensitiveContentSettings();
  v3[50] = swift_task_alloc();
  type metadata accessor for StringResponseSanitizer.Guardrails();
  v3[51] = swift_task_alloc();
  v9 = sub_1000F24EC(&qword_100AD9348);
  v3[52] = v9;
  v3[53] = *(v9 - 8);
  v3[54] = swift_task_alloc();
  v10 = type metadata accessor for ChatMessagesPrompt();
  v3[55] = v10;
  v3[56] = *(v10 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();

  return _swift_task_switch(sub_10022267C, 0, 0);
}

uint64_t sub_10022267C()
{
  v1 = v0[57];
  v14 = v0[58];
  v2 = v0[55];
  v3 = v0[54];
  v19 = v0[52];
  v20 = v0[59];
  v18 = v0[53];
  v15 = v0[56];
  v4 = v0[49];
  v23 = v0[48];
  v24 = v0[47];
  v21 = v0[46];
  v22 = v0[45];
  v25 = v0[40];
  v5 = v0[26];
  v6 = v0[27];
  ChatMessagesPrompt.init(_:)();
  sub_1000F24EC(&qword_100AD9350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  *(inited + 32) = 0x746E6F4372657375;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = 0xEB00000000746E65;
  *(inited + 48) = v5;
  *(inited + 56) = v6;

  sub_1003638A8(inited);
  swift_setDeallocating();
  sub_100004F84(inited + 32, &qword_100AD9358);
  v0[61] = sub_100223BD8(&qword_100AD9360, &type metadata accessor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.bindVariables(_:)();

  v8 = v15 + 8;
  v16 = *(v15 + 8);
  v0[62] = v16;
  v0[63] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v1, v2);
  sub_1000F24EC(&qword_100AD9368);
  type metadata accessor for SensitiveContentSettings.Sanitizer();
  *(swift_allocObject() + 16) = xmmword_100940050;
  static SensitiveContentSettings.Sanitizer.offensiveVulgarSensitive.getter();
  static SensitiveContentSettings.Sanitizer.textSanitization.getter();
  SensitiveContentSettings.init(sanitizers:)();
  StringResponseSanitizer.Guardrails.init(sensitiveContentSettings:)();
  StringResponseSanitizer.init(guardrails:)();
  v17 = enum case for OverrideHint.constant<A>(_:);
  (*(v18 + 104))(v3);
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  (*(v18 + 8))(v3, v19);
  v16(v14, v2);
  static SamplingStrategy.topK(_:)();
  v9 = type metadata accessor for SamplingStrategy();
  (*(*(v9 - 8) + 56))(v21, 0, 1, v9);
  sub_1006A699C(0x8000000000000000);
  sub_100223B68(v21, v22);
  SamplingParameters.init(strategy:temperature:frequencyPenalty:lengthPenalty:maximumTokens:stopSequences:randomSeed:timeout:)();
  SamplingParameters.promptLookupDraftSteps.setter();
  SamplingParameters.speculativeSampling.setter();
  SamplingParameters.tokenHealing.setter();
  sub_100004F84(v21, &qword_100AD9338);
  (*(v23 + 104))(v4, v17, v24);
  GenerativeConfigurationProtocol.samplingParameters(_:)();
  (*(v23 + 8))(v4, v24);
  v16(v20, v2);
  v10 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  (*(*(v10 - 8) + 56))(v25, 1, 1, v10);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v11 = swift_task_alloc();
  v0[64] = v11;
  *v11 = v0;
  v11[1] = sub_100222BF4;
  v12 = v0[31];

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v12, 0xD00000000000001CLL, 0x80000001008E68E0);
}

uint64_t sub_100222BF4()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_1002234E8;
  }

  else
  {
    v2 = sub_100222D08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100222D08()
{
  v1 = v0[31];
  v2 = sub_1000F24EC(&qword_100AD9370);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_100004F84(v1, &qword_100AD9320);
  }

  else
  {
    v36 = v0[62];
    v31 = v0[59];
    v32 = v0[60];
    v34 = v0[55];
    v35 = v0[56];
    v25 = v0[43];
    v26 = v0[42];
    v27 = v0[41];
    v28 = v0[44];
    v37 = v0[39];
    v33 = v0[38];
    v3 = v0[37];
    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[32];
    v7 = v0[33];
    v29 = v0[25];
    v30 = v4;
    v23 = *(v2 + 48);
    v24 = v0[36];
    v22 = *(v6 + 48);
    v8 = *(v33 + 32);
    v8(v7, v1, v3);
    v9 = *(v4 + 32);
    v9(v7 + v22, v1 + v23, v5);
    v10 = *(v6 + 48);
    v8(v37, v7, v3);
    v9(v24, v7 + v10, v5);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v26 + 8))(v28, v27);
    (*(v26 + 32))(v28, v25, v27);
    sub_1003638A8(_swiftEmptyArrayStorage);
    sub_100363528(_swiftEmptyArrayStorage);
    sub_1000F24EC(&qword_100AD9380);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = 0xD000000000000013;
    *(inited + 40) = 0x80000001008E6900;
    v12 = OBJC_IVAR____TtC7Journal21JournalTokenGenerator_promptTemplate;
    v13 = type metadata accessor for PromptTemplate();
    *(inited + 72) = v13;
    *(inited + 80) = sub_100223BD8(&qword_100AD9388, &type metadata accessor for PromptTemplate);
    v14 = sub_10001A770((inited + 48));
    (*(*(v13 - 8) + 16))(v14, v29 + v12, v13);
    sub_1003639DC(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &qword_100AD9390);
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();

    (*(v30 + 8))(v24, v5);
    (*(v33 + 8))(v37, v3);
    v36(v32, v34);
    (*(v35 + 32))(v32, v31, v34);
  }

  v15 = v0[62];
  v16 = v0[59];
  v17 = v0[55];
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  v0[24] = sub_100221E60();
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:)();

  v15(v16, v17);
  v18 = swift_task_alloc();
  v0[66] = v18;
  v19 = sub_100223BD8(&qword_100AD9378, &type metadata accessor for TokenGenerator);
  *v18 = v0;
  v18[1] = sub_1002231D4;
  v20 = v0[28];

  return GenerativeConfigurationRunnable<>.run(returning:)(v20, v19);
}

uint64_t sub_1002231D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[67] = v2;

  v7 = v6[30];
  v8 = v6[29];
  v9 = v6[28];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_100223668;
  }

  else
  {
    v6[68] = a2;
    v6[69] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_100223364;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100223364()
{
  v1 = v0[62];
  v2 = v0[60];
  v3 = v0[55];
  (*(v0[42] + 8))(v0[44], v0[41]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[69];
  v6 = v0[68];

  return v4(v5, v6);
}

uint64_t sub_1002234E8()
{
  v1 = v0[62];
  v2 = v0[60];
  v3 = v0[55];
  (*(v0[42] + 8))(v0[44], v0[41]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100223668()
{
  v1 = v0[62];
  v2 = v0[60];
  v3 = v0[55];
  (*(v0[42] + 8))(v0[44], v0[41]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002237E8()
{
  v0 = type metadata accessor for ChatMessagesPrompt();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PromptTemplate();
  sub_100223BD8(&qword_100AD9388, &type metadata accessor for PromptTemplate);
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  sub_1000F24EC(&qword_100AD9398);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  (*(v1 + 16))(v5 + v4, v3, v0);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002239A8()
{

  v1 = OBJC_IVAR____TtC7Journal21JournalTokenGenerator_promptTemplate;
  v2 = type metadata accessor for PromptTemplate();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JournalTokenGenerator()
{
  result = qword_100AD9250;
  if (!qword_100AD9250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100223AA8()
{
  result = type metadata accessor for PromptTemplate();
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

uint64_t sub_100223B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD9338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100223BD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100223C20()
{
  v56 = type metadata accessor for UUID();
  v1 = *(v56 - 8);
  __chkstk_darwin(v56);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = &v43 - v4;
  v59 = _swiftEmptyArrayStorage;
  v50 = v0;
  v5 = sub_100584F94(1);
  v6 = sub_10060FEE0(v5);

  if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    goto LABEL_33;
  }

  for (i = *(v6 + 2); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v51 = v6 & 0xC000000000000001;
    v47 = OBJC_IVAR____TtC7Journal20CanvasViewController_playedVideoIds;
    swift_beginAccess();
    v8 = 0;
    v43 = v6 + 4;
    v54 = (v1 + 8);
    v55 = (v1 + 16);
    v9 = _swiftEmptyArrayStorage;
    v45 = _swiftEmptyArrayStorage;
    v48 = v6;
    v46 = i;
    while (1)
    {
      if (v51)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v6 + 2))
        {
          goto LABEL_32;
        }

        v10 = *&v43[v8];
      }

      v11 = v10;
      if (__OFADD__(v8++, 1))
      {
        break;
      }

      v13 = *&v10[OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset];
      if (v13)
      {
        v58 = v9;
        v14 = *(v50 + v47);
        v15 = v56;
        v16 = *v55;
        v52 = OBJC_IVAR____TtC7Journal5Asset_id;
        v17 = v49;
        v53 = v16;
        v16(v49, &v13[OBJC_IVAR____TtC7Journal5Asset_id], v56);
        v57 = v13;
        v18 = v11;

        v19 = UUID.uuidString.getter();
        v21 = v20;
        v22 = *v54;
        (*v54)(v17, v15);
        if (*(v14 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v23 = Hasher._finalize()(), v24 = -1 << *(v14 + 32), v25 = v23 & ~v24, ((*(v14 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
        {
          v26 = ~v24;
          while (1)
          {
            v27 = (*(v14 + 48) + 16 * v25);
            v28 = *v27 == v19 && v27[1] == v21;
            if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            if (((*(v14 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          v1 = v57;

          sub_10081608C(0);

          v6 = v48;
          i = v46;
          v9 = v58;
        }

        else
        {
LABEL_22:

          sub_100815D10();
          sub_1000999CC();
          v29 = &v18[OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction];
          v30 = *&v18[OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction];
          *v29 = 0;
          *(v29 + 1) = 0;
          sub_100004DF8(v30);

          v31 = v18;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v45 = v59;
          v32 = &v13[v52];
          v33 = v44;
          v34 = v56;
          v53(v44, v32, v56);
          v35 = v57;

          v36 = UUID.uuidString.getter();
          v38 = v37;
          v22(v33, v34);
          v9 = v58;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_10009BCC8(0, *(v9 + 2) + 1, 1, v9);
          }

          v6 = v48;
          v1 = *(v9 + 2);
          v39 = *(v9 + 3);
          if (v1 >= v39 >> 1)
          {
            v9 = sub_10009BCC8((v39 > 1), v1 + 1, 1, v9);
          }

          *(v9 + 2) = v1 + 1;
          v40 = &v9[16 * v1];
          *(v40 + 4) = v36;
          *(v40 + 5) = v38;
          i = v46;
        }
      }

      else
      {
      }

      if (v8 == i)
      {

        v41 = v45;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v9 = _swiftEmptyArrayStorage;
  v41 = _swiftEmptyArrayStorage;
LABEL_35:
  sub_1001E15B8(v41, v9);
}

id sub_10022419C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1002241DC()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790);
  v7 = __chkstk_darwin(v6 - 8);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v54 - v9;
  v10 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for UTType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - v18;
  v20 = type metadata accessor for PhotoLibraryAssetMetadata();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v0;
  sub_1006AC114(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_100004F84(v19, &qword_100AD5B20);
    return 0;
  }

  (*(v21 + 32))(v23, v19, v20);
  v24 = PhotoLibraryAssetMetadata.placeName.getter();
  if (!v25)
  {
    (*(v21 + 8))(v23, v20);
    return 0;
  }

  v26 = v25;
  v55 = v24;
  v56 = v3;
  static UTType.video.getter();
  v27 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v29 = [v27 initWithContentType:isa];

  (*(v14 + 8))(v16, v13);
  sub_1000B43D4(0, 1);
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  v33 = 0;
  if ((*(v31 + 48))(v12, 1, v30) != 1)
  {
    URL._bridgeToObjectiveC()(v32);
    v33 = v34;
    (*(v31 + 8))(v12, v30);
  }

  [v29 setContentURL:v33];

  sub_10012B77C(v55, v26, 0, 0);

  v35 = v59;
  PhotoLibraryAssetMetadata.date.getter();
  v36 = v35;
  v37 = type metadata accessor for Date();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v36, 1, v37) == 1)
  {
    v40 = *(v60 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    v41 = v58;
    if (v40)
    {
      v42 = [v40 entry];
      if (v42)
      {
        v43 = v42;
        JournalEntryMO.displayDate.getter();

        v44 = 0;
      }

      else
      {
        v44 = 1;
      }

      v36 = v59;
    }

    else
    {
      v44 = 1;
    }

    (*(v38 + 56))(v41, v44, 1, v37);
    if (v39(v36, 1, v37) != 1)
    {
      sub_100004F84(v36, &unk_100AD4790);
    }
  }

  else
  {
    v41 = v58;
    (*(v38 + 32))(v58, v36, v37);
    (*(v38 + 56))(v41, 0, 1, v37);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v45 = String.init(localized:table:bundle:locale:comment:)();
  v47 = v46;
  sub_1000F24EC(&unk_100AD9A60);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100940080;
  v49 = sub_10012C00C(v45, v47, v41);
  v51 = v50;

  *(v48 + 32) = v49;
  *(v48 + 40) = v51;
  v52 = Array._bridgeToObjectiveC()().super.isa;

  [v29 setAlternateNames:v52];

  sub_100004F84(v41, &unk_100AD4790);
  (*(v21 + 8))(v23, v20);
  return v29;
}

uint64_t sub_100224918(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CGFloat *a16, CGFloat *a17, double *a18)
{
  v130 = a8;
  v129 = a7;
  v137 = a6;
  v128 = a5;
  v127 = a4;
  v141 = a3;
  v138 = a2;
  v139 = a1;
  v18 = a18[1];
  v123 = *a18;
  v122 = v18;
  v19 = a18[3];
  v121 = a18[2];
  v119 = a18;
  v120 = v19;
  v20 = *a17;
  v21 = a17[1];
  v22 = a17[2];
  v23 = a17[3];
  v118 = a17;
  x = *a16;
  y = a16[1];
  width = a16[2];
  height = a16[3];
  v116 = a16;
  v131 = sub_1000F24EC(&unk_100AEE0A0);
  __chkstk_darwin(v131);
  v132 = &v105 - v28;
  v29 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v29 - 8);
  v136 = &v105 - v30;
  v126 = type metadata accessor for PhotoLibraryAssetMetadata();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v124 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v133);
  v114 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v33 - 8);
  v112 = &v105 - v34;
  v134 = type metadata accessor for URL();
  v111 = *(v134 - 8);
  __chkstk_darwin(v134);
  v113 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for UUID();
  v110 = *(v135 - 8);
  __chkstk_darwin(v135);
  v117 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v105 - v38;
  v40 = type metadata accessor for AssetSource();
  v142 = *(v40 - 8);
  v41 = v142;
  __chkstk_darwin(v40);
  v115 = &v105 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = &v105 - v44;
  v109 = &v105 - v44;
  v46 = type metadata accessor for AssetType();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v105 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v50);
  v53 = &v105 - v52;
  v54 = *(v47 + 104);
  v106 = &v105 - v52;
  v107 = v46;
  v54(&v105 - v52, enum case for AssetType.video(_:), v46, v51);
  v108 = *(v41 + 16);
  v108(v45, v139, v40);
  v55 = v39;
  v140 = v39;
  UUID.init()();
  v56 = objc_allocWithZone(type metadata accessor for VideoAsset());
  *&v56[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = 0;
  v57 = v110;
  v58 = v117;
  v59 = v55;
  v60 = v135;
  (*(v110 + 16))(v117, v59, v135);
  (*(v47 + 16))(v49, v53, v46);
  v61 = v115;
  v62 = v109;
  v108(v115, v109, v40);
  v63 = sub_100285908(v58, v49, v61);
  v64 = *(v57 + 8);
  v64(v140, v60);
  v65 = *(v142 + 8);
  v66 = v134;
  v117 = v40;
  v142 += 8;
  v115 = v65;
  (v65)(v62, v40);
  v67 = v111;
  v68 = v112;
  (*(v47 + 8))(v106, v107);
  sub_1000082B4(v138, v68, &unk_100AD6DD0);
  if ((*(v67 + 48))(v68, 1, v66) == 1)
  {
    sub_100004F84(v68, &unk_100AD6DD0);
    v69 = v63;
    v70 = v114;
    v71 = v140;
    if (!v141)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v69 = v63;
  v72 = v113;
  (*(v67 + 32))(v113, v68, v66);
  v73 = v114;
  (*(v67 + 16))(v114, v72, v66);
  type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v74 = v140;
  UUID.init()();
  v75 = UUID.uuidString.getter();
  v77 = v76;
  v64(v74, v60);
  type metadata accessor for AssetAttachment(0);
  v78 = swift_allocObject();
  *(v78 + 16) = 0;
  sub_1001700CC(v73, v78 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
  v79 = (v78 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v79 = v75;
  v79[1] = v77;
  v80 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v70 = v73;
  if (*((*&v69[v80] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v69[v80] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  (*(v67 + 8))(v113, v134);
  v60 = v135;
  v71 = v140;
  if (v141)
  {
LABEL_7:
    v81 = v60;
    v82 = v141;
    *v70 = v141;
    swift_storeEnumTagMultiPayload();
    v83 = v82;
    UUID.init()();
    v84 = UUID.uuidString.getter();
    v86 = v85;
    v64(v71, v81);
    type metadata accessor for AssetAttachment(0);
    v87 = swift_allocObject();
    *(v87 + 16) = 0;
    sub_1001700CC(v70, v87 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
    v88 = (v87 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v88 = v84;
    v88[1] = v86;
    v89 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v69[v89] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v69[v89] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

LABEL_10:
  sub_1000082B4(v137, v136, &unk_100AD4790);
  if (v116[4])
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v134 = a11;
  v135 = v69;
  v140 = a9;
  v143.origin.x = x;
  v143.origin.y = y;
  v143.size.width = width;
  v143.size.height = height;
  v90 = NSStringFromCGRect(v143);
  v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v116 = v91;

  if (v118[4])
  {
    v20 = CGRectZero.origin.x;
    v21 = CGRectZero.origin.y;
    v22 = CGRectZero.size.width;
    v23 = CGRectZero.size.height;
  }

  v144.origin.x = v20;
  v144.origin.y = v21;
  v144.size.width = v22;
  v144.size.height = v23;
  v92 = NSStringFromCGRect(v144);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v93 = v123;
  v94 = v122;
  v95 = v121;
  v96 = v120;
  if (v119[4])
  {
    v93 = CGRectZero.origin.x;
    v94 = CGRectZero.origin.y;
    v95 = CGRectZero.size.width;
    v96 = CGRectZero.size.height;
  }

  v97 = NSStringFromCGRect(*&v93);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v98 = v124;
  PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();

  sub_100004F84(v137, &unk_100AD4790);
  sub_100004F84(v138, &unk_100AD6DD0);
  (v115)(v139, v117);
  v99 = v132;
  (*(v125 + 32))(v132, v98, v126);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&unk_100AEE0B0);
  v100 = swift_allocObject();
  v101 = *(*v100 + 104);
  v102 = sub_1000F24EC(&qword_100AD5B20);
  (*(*(v102 - 8) + 56))(v100 + v101, 1, 1, v102);
  *(v100 + *(*v100 + 112)) = xmmword_100941EE0;
  sub_10017005C(v99, v100 + *(*v100 + 120));
  v103 = v135;
  *(v135 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata) = v100;

  return v103;
}

uint64_t sub_100225658(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = type metadata accessor for RenderingOptions();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[8] = v6;
  v3[9] = v8;

  return _swift_task_switch(sub_100225758, v6, v8);
}

uint64_t sub_100225758()
{
  v1 = PaperMarkup.contentsRenderFrame.getter();
  if (v7.n128_f64[0] <= 0.0)
  {
    goto LABEL_13;
  }

  v9 = v8.n128_f64[0];
  if (v8.n128_f64[0] <= 0.0)
  {
    goto LABEL_13;
  }

  v10 = v5.n128_f64[0];
  v11 = v7.n128_f64[0];
  v5.n128_u64[0] = 0xC3E0000000000001;
  if (v7.n128_f64[0] <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5.n128_u64[0] = 0x43E0000000000000;
  if (v7.n128_f64[0] >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v7.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || (v8.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  v5.n128_u64[0] = 0xC3E0000000000001;
  if (v8.n128_f64[0] <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5.n128_u64[0] = 0x43E0000000000000;
  if (v8.n128_f64[0] >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return PaperMarkup.draw(in:frame:options:)(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v12 = v6.n128_f64[0];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v14 = sub_100225BF4(v11, v9, DeviceRGB);
  v0[10] = v14;

  if (v14)
  {
    CGContextSetGrayFillColor(v14, 1.0, 1.0);
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = v11;
    v19.size.height = v9;
    CGContextFillRect(v14, v19);
    CGContextTranslateCTM(v14, 0.0, v9);
    CGContextScaleCTM(v14, 1.0, -1.0);
    CGContextTranslateCTM(v14, -v10, -v12);
    RenderingOptions.init(darkUserInterfaceStyle:layoutRightToLeft:)();
    v15 = swift_task_alloc();
    v0[11] = v15;
    *v15 = v0;
    v15[1] = sub_1002259B8;
    v4 = v0[7];
    v2 = v0[3];
    v1 = v0[2];
    v3 = v14;
    v5.n128_f64[0] = v10;
    v6.n128_f64[0] = v12;
    v7.n128_f64[0] = v11;
    v8.n128_f64[0] = v9;

    return PaperMarkup.draw(in:frame:options:)(v1, v2, v3, v4, v5, v6, v7, v8);
  }

LABEL_13:

  v16 = v0[1];

  return v16(0);
}

uint64_t sub_1002259B8()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return _swift_task_switch(sub_100225B3C, v6, v5);
}

uint64_t sub_100225B3C()
{
  Image = CGBitmapContextCreateImage(*(v0 + 80));
  v2 = *(v0 + 80);
  if (Image)
  {
    v3 = Image;
    v4 = [objc_allocWithZone(UIImage) initWithCGImage:Image];
  }

  else
  {

    v4 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100225C14()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD9420);
  sub_10000617C(v0, qword_100AD9420);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100225C94(uint64_t a1)
{
  v2[3] = v1;
  v4 = type metadata accessor for URL();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v2[8] = v5;
  v2[9] = v7;

  return _swift_task_switch(sub_100225D9C, v5, v7);
}

uint64_t sub_100225D9C()
{
  v1 = v0[3];
  v2 = *(v1 + qword_100AD9448);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_100226C08();
  *v4 = v0;
  v4[1] = sub_100225E98;

  return CKDatabase.configuredWith<A>(configuration:group:body:)(v0 + 2, v2, 0, &unk_100948B78, v3, v5);
}

uint64_t sub_100225E98()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100226470;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_100225FB4;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100225FB4()
{
  v1 = v0[2];
  if (!CKRecord.subscript.getter())
  {
    goto LABEL_7;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
LABEL_7:
    if (qword_100ACFAF0 != -1)
    {
      swift_once();
    }

    v12 = v0[3];
    v13 = type metadata accessor for Logger();
    sub_10000617C(v13, qword_100AD9420);
    v14 = v12;
    v1 = v1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[3];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      v20 = *(v17 + qword_100AD9438);
      *(v18 + 4) = v20;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v1;
      *v19 = v20;
      v19[1] = v1;
      v21 = v1;
      v22 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "error getting JournalEntryAsset.assetMetadataAsset as CKAsset for requested id: %@. Record: %@", v18, 0x16u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();
    }

    sub_100226C54();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  v3 = [v2 fileURL];
  if (!v3)
  {
    if (qword_100ACFAF0 != -1)
    {
      swift_once();
    }

    v26 = v0[3];
    v27 = type metadata accessor for Logger();
    sub_10000617C(v27, qword_100AD9420);
    v28 = v26;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[3];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = *(v31 + qword_100AD9438);
      *(v32 + 4) = v34;
      *v33 = v34;
      v35 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "ckAsset.fileURL is nil for requested recordID: %@", v32, 0xCu);
      sub_10012B714(v33);
    }

    sub_100226C54();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_12:

    goto LABEL_13;
  }

  v4 = v0[12];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v3;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v8 + 32))(v5, v6, v7);
  v11 = Data.init(contentsOf:options:)();
  if (v4)
  {
    (*(v0[5] + 8))(v0[7], v0[4], v11);

    swift_unknownObjectRelease();
LABEL_13:

    v24 = v0[1];

    return v24();
  }

  v37 = v11;
  v38 = v10;
  (*(v0[5] + 8))();
  swift_unknownObjectRelease();

  v39 = v0[1];

  return v39(v37, v38, v1);
}

uint64_t sub_100226470()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002264E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_100226508, 0, 0);
}

uint64_t sub_100226508()
{
  v1 = v0[20];
  v2 = *(v0[21] + qword_100AD9438);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10022663C;
  v3 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&qword_100AD9578);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10039677C;
  v0[13] = &unk_100A61AE0;
  v0[14] = v3;
  [v1 fetchRecordWithID:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10022663C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10022676C;
  }

  else
  {
    v2 = sub_10022674C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022676C()
{
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100226808()
{
  v1 = *(v0 + qword_100AD9448);
}

id sub_100226858()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetMetadataDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100226890(uint64_t a1)
{
  v2 = *(a1 + qword_100AD9448);
}

uint64_t type metadata accessor for AssetMetadataDownloadOperation()
{
  result = qword_100AD9478;
  if (!qword_100AD9478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100226984(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100226A2C;

  return sub_100225C94(a2);
}

uint64_t sub_100226A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_100226B58(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032ECC;

  return sub_1002264E4(a1, a2, v6);
}

unint64_t sub_100226C08()
{
  result = qword_100AD9568;
  if (!qword_100AD9568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD9568);
  }

  return result;
}

unint64_t sub_100226C54()
{
  result = qword_100AD9570;
  if (!qword_100AD9570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9570);
  }

  return result;
}

unint64_t sub_100226CBC()
{
  result = qword_100AD9580[0];
  if (!qword_100AD9580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100AD9580);
  }

  return result;
}

uint64_t sub_100226E6C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void *, void, void *)@<X2>, uint64_t a3@<X8>)
{
  result = sub_100226D54(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

void (*sub_100226EA0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x40uLL);
  }

  v6 = v5;
  *a1 = v5;
  sub_1000F2A18(&qword_100AD2688);
  v7 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6[4] = TupleTypeMetadata2;
  v9 = *(TupleTypeMetadata2 - 8);
  v6[5] = v9;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v11 = v10;
  v6[6] = v10;
  v12 = sub_100227094(v6);
  v14 = v13;
  v6[7] = v12;
  sub_100227760(v15, v11);
  (*(*(v7 - 8) + 16))(v11 + *(TupleTypeMetadata2 + 48), v14, v7);
  return sub_10022701C;
}

void sub_10022701C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_100227094(uint64_t *a1))(void *a1)
{
  sub_1000F2A18(&qword_100AD2688);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v3 = *(TupleTypeMetadata2 - 8);
  a1[1] = v3;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  a1[2] = v4;
  sub_100226DD8(v4);
  return sub_1002271B4;
}

void sub_1002271B4(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1002272A0@<X0>(uint64_t a1@<X8>)
{
  result = sub_100226D98();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1002272E0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = sub_100226D98();
  v7 = v6;
  v9 = v8;
  result = sub_10000A96C(v2, v3, v4);
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  return result;
}

uint64_t sub_10022735C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v6 = a2 + *(type metadata accessor for IndexingIterator() + 36);
  v7 = sub_100226D54(a1, &Dictionary.startIndex.getter);
  v9 = v8;
  v11 = v10;
  result = (*(v5 + 8))(v2, a1);
  *v6 = v7;
  *(v6 + 8) = v9;
  *(v6 + 16) = v11 & 1;
  return result;
}

uint64_t sub_100227478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_1002274CC(uint64_t a1)
{
  swift_getWitnessTable();
  v3 = j___ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlF();
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_1002275B0()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_10022767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_100227760(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD2688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002277D8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD9610);
  sub_10000617C(v0, qword_100AD9610);
  return Logger.init(subsystem:category:)();
}

id sub_100227858(void *a1, char a2, char a3, char a4, void *a5)
{
  if (!a1)
  {
LABEL_17:
    if ((a2 & 1) != 0 && (v31 = [objc_opt_self() workStyleAttributes]) != 0)
    {
      v20 = v31;
      if (qword_100ACFAF8 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000617C(v32, qword_100AD9610);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_31;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "[POIClustering] [RENDERING] Work";
    }

    else
    {
      if ((a3 & 1) != 0 || (a4 & 1) == 0 || (v37 = [objc_allocWithZone(GEOPlace) initWithLatitude:4 longitude:0.0 placeType:0.0], v20 = objc_msgSend(objc_opt_self(), "styleAttributesForPlace:", v37), v37, !v20))
      {
        if (qword_100ACFAF8 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_10000617C(v39, qword_100AD9610);
        v40 = a1;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = 7104878;
          v44 = swift_slowAlloc();
          v76[0] = swift_slowAlloc();
          *v44 = 136315394;
          if (a1)
          {
            v45 = [v40 name];
            if (v45)
            {
              v46 = v45;
              v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v49 = v48;
            }

            else
            {
              v49 = 0xE300000000000000;
              v47 = 7104878;
            }

            v52 = sub_100008458(v47, v49, v76);

            *(v44 + 4) = v52;
            *(v44 + 12) = 2080;
            v53 = [v40 pointOfInterestCategory];
            if (v53)
            {
              v54 = v53;
              v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v50 = v55;
            }

            else
            {
              v50 = 0xE300000000000000;
            }
          }

          else
          {
            v50 = 0xE300000000000000;
            v51 = sub_100008458(7104878, 0xE300000000000000, v76);

            *(v44 + 4) = v51;
            *(v44 + 12) = 2080;
          }

          v56 = sub_100008458(v43, v50, v76);

          *(v44 + 14) = v56;
          _os_log_impl(&_mh_execute_header, v41, v42, "[POIClustering] [RENDERING] Fallback, mkMapItem.name=%s, mkMapItem.poiCategory=%s", v44, 0x16u);
          swift_arrayDestroy();
        }

        return 0;
      }

      if (qword_100ACFAF8 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_10000617C(v38, qword_100AD9610);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_31;
      }

      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "[POIClustering] [RENDERING] City";
    }

    _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);

LABEL_31:

    goto LABEL_49;
  }

  v10 = a1;
  v11 = [v10 pointOfInterestCategory];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {

      goto LABEL_16;
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      goto LABEL_14;
    }
  }

  v19 = [v10 _styleAttributes];
  if (!v19)
  {
LABEL_14:
    v12 = v10;
LABEL_16:

    goto LABEL_17;
  }

  v20 = v19;
  if (qword_100ACFAF8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000617C(v21, qword_100AD9610);
  v22 = v10;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v77 = v26;
    *v25 = 134218242;
    v27 = [v22 name];
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v76[1] = v30;
    sub_1000F24EC(&unk_100AE4870);
    v57 = Optional<A>.hashValue.getter();

    *(v25 + 4) = v57;

    *(v25 + 12) = 2080;
    v76[0] = [v22 pointOfInterestCategory];
    sub_1000F24EC(&qword_100AD9628);
    v58 = Optional.debugDescription.getter();
    v60 = v59;

    v61 = sub_100008458(v58, v60, &v77);

    *(v25 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v23, v24, "[POIClustering] [RENDERING] POI mapItemName=%ld, mapItemPOICategory=%s", v25, 0x16u);
    sub_10000BA7C(v26);
  }

  else
  {
  }

LABEL_49:
  v62 = v20;
  [a5 displayScale];
  v64 = v63;
  v65 = [objc_allocWithZone(VKIconModifiers) init];
  [v65 setNightMode:{objc_msgSend(a5, "userInterfaceStyle") == 2}];
  result = [objc_opt_self() iconManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_57;
  }

  v67 = result;
  v68 = v64;
  v69 = String._bridgeToObjectiveC()();
  *&v70 = v68;
  v71 = [v67 imageForStyleAttributes:v62 withStylesheetName:v69 contentScale:7 sizeGroup:v65 modifiers:v70];

  if (!v71)
  {

    return 0;
  }

  result = [v71 fillColor];
  if (result)
  {
    v72 = result;
    v73 = [objc_allocWithZone(UIColor) initWithCGColor:v72];

    result = [v71 image];
    if (result)
    {
      v74 = result;
      [v71 contentScale];
      [objc_allocWithZone(UIImage) initWithCGImage:v74 scale:0 orientation:v75];

      return v73;
    }

    goto LABEL_58;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

__n128 sub_100228148@<Q0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v36 = type metadata accessor for EnvironmentValues();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v34 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InsightsCalendarView(0);
  v39 = *(v3 - 8);
  v38 = *(v39 + 64);
  v40 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v41);
  v7 = &v34 - v6;
  v8 = type metadata accessor for InsightsCalendarView.Representation(0);
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000F24EC(&qword_100AD9980) - 8;
  __chkstk_darwin(v42);
  v44 = &v34 - v11;
  sub_1000F24EC(&unk_100AD97D0);
  Binding.projectedValue.getter();
  sub_1000F24EC(&qword_100AD3A58);
  State.projectedValue.getter();
  *&v10[v8[6]] = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD9988);
  swift_storeEnumTagMultiPayload();
  *&v10[v8[7]] = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD9990);
  swift_storeEnumTagMultiPayload();
  *&v10[v8[8]] = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD9998);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for InsightsDataManager(0);
  sub_10022BA90(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  v12 = Environment.init<A>(_:)();
  v13 = &v10[v8[9]];
  *v13 = v12;
  v13[8] = v14 & 1;
  v37 = v1;
  State.wrappedValue.getter();
  v15 = v5;
  sub_10022BC1C(v1, v5, type metadata accessor for InsightsCalendarView);
  v16 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v17 = swift_allocObject();
  sub_10022BAD8(v5, v17 + v16);
  sub_10022BA90(&qword_100AD9978, type metadata accessor for InsightsCalendarView.Representation);
  sub_1001235B0();
  View.onChange<A>(of:initial:_:)();

  sub_100004F84(v7, &unk_100AD9850);
  sub_10022C254(v10, type metadata accessor for InsightsCalendarView.Representation);
  v18 = v37;
  sub_10022BC1C(v37, v5, type metadata accessor for InsightsCalendarView);
  v19 = swift_allocObject();
  v20 = v44;
  sub_10022BAD8(v15, v19 + v16);
  v21 = (v20 + *(v42 + 44));
  *v21 = sub_10022BBBC;
  v21[1] = v19;
  v21[2] = 0;
  v21[3] = 0;
  v22 = v18 + *(v40 + 32);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    if (*v22 != 2 && *v22 != 3)
    {
LABEL_8:
      static Alignment.center.getter();
      goto LABEL_9;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v25 = v34;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v23, 0);
    v26 = *(v35 + 8);
    v27 = v36;
    v26(v25, v36);
    if (v45 != 2)
    {

      static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000467F0(v23, 0);
      v26(v25, v27);
      if (v45 != 3)
      {
        goto LABEL_8;
      }
    }
  }

  static Alignment.leading.getter();
LABEL_9:
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v43;
  sub_1000C12B0(v20, v43);
  v30 = v29 + *(sub_1000F24EC(&qword_100AD99B8) + 36);
  v31 = v50;
  *(v30 + 64) = v49;
  *(v30 + 80) = v31;
  *(v30 + 96) = v51;
  v32 = v46;
  *v30 = v45;
  *(v30 + 16) = v32;
  result = v48;
  *(v30 + 32) = v47;
  *(v30 + 48) = result;
  return result;
}

uint64_t sub_100228884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DateComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a2, v7, &unk_100AD9850);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100004F84(v7, &unk_100AD9850);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = type metadata accessor for InsightsCalendarView(0);
  (*(a3 + *(v13 + 28)))(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100228A40()
{
  v0 = sub_1000F24EC(&unk_100AD9850);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v13 - v5;
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  type metadata accessor for InsightsCalendarView(0);
  sub_1000F24EC(&qword_100AD3A58);
  State.wrappedValue.getter();
  v9 = type metadata accessor for DateComponents();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v8, 1, v9);
  result = sub_100004F84(v8, &unk_100AD9850);
  if (v11 != 1)
  {
    (*(v10 + 56))(v6, 1, 1, v9);
    sub_1000082B4(v6, v3, &unk_100AD9850);
    State.wrappedValue.setter();
    return sub_100004F84(v6, &unk_100AD9850);
  }

  return result;
}

uint64_t sub_100228C18@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD9988);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for InsightsCalendarView.Representation(0);
  sub_1000082B4(v1 + *(v10 + 24), v9, &qword_100AD9988);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Locale();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100228E20@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD9990);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for InsightsCalendarView.Representation(0);
  sub_1000082B4(v1 + *(v10 + 28), v9, &qword_100AD9990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Calendar();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100229028@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD9998);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for InsightsCalendarView.Representation(0);
  sub_1000082B4(v1 + *(v10 + 32), v9, &qword_100AD9998);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for TimeZone();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_100229234()
{
  v0 = [objc_allocWithZone(UICalendarView) init];
  sub_1000F24EC(&qword_100AD99C8);
  UIViewRepresentableContext.coordinator.getter();
  [v0 setDelegate:v4];

  UIViewRepresentableContext.coordinator.getter();
  v1 = [objc_allocWithZone(UICalendarSelectionSingleDate) initWithDelegate:v4];

  [v0 setSelectionBehavior:v1];
  v2 = v0;
  [v2 setPreservesSuperviewLayoutMargins:0];
  [v2 setDirectionalLayoutMargins:{8.0, 4.0, 2.0, 4.0}];

  return v2;
}

void sub_100229348(void *a1)
{
  v2 = v1;
  v91 = a1;
  v3 = type metadata accessor for DateComponents();
  v92 = *(v3 - 8);
  v93 = v3;
  v4 = __chkstk_darwin(v3);
  v82 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v85 = &v78 - v6;
  v81 = sub_1000F24EC(&qword_100AD99C0);
  __chkstk_darwin(v81);
  v86 = &v78 - v7;
  v8 = sub_1000F24EC(&unk_100AD9850);
  v9 = __chkstk_darwin(v8 - 8);
  v90 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v79 = &v78 - v12;
  v13 = __chkstk_darwin(v11);
  v78 = &v78 - v14;
  v15 = __chkstk_darwin(v13);
  v83 = &v78 - v16;
  __chkstk_darwin(v15);
  v84 = &v78 - v17;
  v18 = type metadata accessor for TimeZone();
  v88 = *(v18 - 1);
  v89 = v18;
  __chkstk_darwin(v18);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Calendar();
  v21 = *(v87 - 8);
  __chkstk_darwin(v87);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Locale();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for InsightsCalendarView.Representation(0);
  __chkstk_darwin(v80);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100AD99C8);
  UIViewRepresentableContext.coordinator.getter();
  v30 = v100;
  sub_10022BC1C(v2, v29, type metadata accessor for InsightsCalendarView.Representation);
  v31 = OBJC_IVAR____TtCVV7Journal20InsightsCalendarViewP33_DB82E41FEC15FAA6F37A37FAA16D9E2114Representation11Coordinator_parent;
  swift_beginAccess();
  v32 = v30 + v31;
  v33 = v29;
  v35 = v92;
  v34 = v93;
  sub_10022BC84(v33, v32);
  swift_endAccess();

  sub_100228C18(v27);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v37 = v27;
  v38 = v91;
  (*(v25 + 8))(v37, v24);
  [v38 setLocale:isa];

  sub_100228E20(v23);
  v39 = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v21 + 8))(v23, v87);
  [v38 setCalendar:v39];

  sub_100229028(v20);
  v40 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v88 + 8))(v20, v89);
  [v38 setTimeZone:v40];

  v41 = UIAccessibilityTraitAdjustable;
  v42 = [v38 accessibilityTraits];
  if ((v41 & ~v42) != 0)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0;
  }

  [v38 setAccessibilityTraits:v43 | v42];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = sub_10022BCE8;
  v99 = v44;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v96 = sub_100006C7C;
  v97 = &unk_100A61CE8;
  v45 = _Block_copy(&aBlock);

  [v38 setAccessibilityIncrementBlock:v45];
  _Block_release(v45);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = sub_10022BCF0;
  v99 = v46;
  aBlock = _NSConcreteStackBlock;
  v95 = 1107296256;
  v96 = sub_100006C7C;
  v97 = &unk_100A61D10;
  v47 = _Block_copy(&aBlock);

  [v38 setAccessibilityDecrementBlock:v47];
  _Block_release(v47);
  v48 = [v38 selectionBehavior];
  if (v48)
  {
    v49 = v48;
    objc_opt_self();
    v50 = swift_dynamicCastObjCClass();
    if (!v50)
    {
LABEL_19:

      goto LABEL_20;
    }

    v89 = v50;
    v51 = [v50 selectedDate];
    if (v51)
    {
      v52 = v84;
      v53 = v51;
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = 0;
    }

    else
    {
      v54 = 1;
      v52 = v84;
    }

    v55 = v83;
    (*(v35 + 56))(v52, v54, 1, v34);
    v56 = *(v80 + 20);
    v87 = sub_1000F24EC(&unk_100AD97D0);
    v88 = v56;
    Binding.wrappedValue.getter();
    v57 = *(v81 + 48);
    v58 = v86;
    sub_1000082B4(v52, v86, &unk_100AD9850);
    v59 = v58;
    v60 = v93;
    sub_1000082B4(v55, v58 + v57, &unk_100AD9850);
    v61 = *(v35 + 48);
    if (v61(v59, 1, v60) == 1)
    {
      sub_100004F84(v55, &unk_100AD9850);
      v62 = v86;
      v34 = v93;
      sub_100004F84(v52, &unk_100AD9850);
      if (v61(v62 + v57, 1, v34) == 1)
      {
        sub_100004F84(v62, &unk_100AD9850);
        v35 = v92;
        goto LABEL_19;
      }
    }

    else
    {
      v63 = v78;
      sub_1000082B4(v59, v78, &unk_100AD9850);
      if (v61(v59 + v57, 1, v60) != 1)
      {
        v73 = v92;
        v74 = *(v92 + 32);
        v81 = v2;
        v75 = v85;
        v74(v85, v59 + v57, v60);
        sub_10022BA90(&qword_100AD99B0, &type metadata accessor for DateComponents);
        v76 = v59;
        LODWORD(v80) = dispatch thunk of static Equatable.== infix(_:_:)();
        v77 = *(v73 + 8);
        v77(v75, v60);
        sub_100004F84(v83, &unk_100AD9850);
        sub_100004F84(v84, &unk_100AD9850);
        v77(v63, v93);
        v34 = v93;
        v38 = v91;
        sub_100004F84(v76, &unk_100AD9850);
        if (v80)
        {
          v35 = v92;
          goto LABEL_19;
        }

LABEL_15:
        v64 = v79;
        Binding.wrappedValue.getter();
        if (v61(v64, 1, v34) == 1)
        {
          v65 = 0;
          v35 = v92;
        }

        else
        {
          v65 = DateComponents._bridgeToObjectiveC()().super.isa;
          v35 = v92;
          (*(v92 + 8))(v64, v34);
        }

        [v89 setSelectedDate:v65 animated:1];

        v49 = v65;
        goto LABEL_19;
      }

      sub_100004F84(v83, &unk_100AD9850);
      v62 = v86;
      v34 = v93;
      sub_100004F84(v84, &unk_100AD9850);
      (*(v92 + 8))(v63, v34);
    }

    sub_100004F84(v62, &qword_100AD99C0);
    goto LABEL_15;
  }

LABEL_20:
  sub_1000F24EC(&unk_100AD97D0);
  v66 = v90;
  Binding.wrappedValue.getter();
  if ((*(v35 + 48))(v66, 1, v34) == 1)
  {
    sub_100004F84(v66, &unk_100AD9850);
LABEL_24:
    sub_1006D6F58();
    v71 = Array._bridgeToObjectiveC()().super.isa;

    [v38 reloadDecorationsForDateComponents:v71 animated:0];

    return;
  }

  v67 = v82;
  (*(v35 + 32))(v82, v66, v34);
  v68 = [v38 visibleDateComponents];
  v69 = v85;
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10022BA90(&qword_100AD99B0, &type metadata accessor for DateComponents);
  LOBYTE(v68) = dispatch thunk of static Equatable.== infix(_:_:)();
  v70 = *(v35 + 8);
  v70(v69, v34);
  if (v68)
  {
    v70(v67, v34);
    goto LABEL_24;
  }

  v72 = DateComponents._bridgeToObjectiveC()().super.isa;
  [v38 setVisibleDateComponents:v72];

  v70(v67, v34);
}

void sub_100229FDC()
{
  v0 = type metadata accessor for DateComponents();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong visibleDateComponents];
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = DateComponents.month.getter();
    v12 = v11;
    v13 = *(v1 + 8);
    v13(v6, v0);
    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10;
    }

    if (__OFADD__(v14, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = [v8 visibleDateComponents];
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      DateComponents.month.setter();
      isa = DateComponents._bridgeToObjectiveC()().super.isa;
      v13(v4, v0);
      [v8 setVisibleDateComponents:isa];
    }
  }
}

void sub_10022A1A8()
{
  v0 = type metadata accessor for DateComponents();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v17 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong visibleDateComponents];
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = DateComponents.month.getter();
    v12 = v11;
    v13 = *(v1 + 8);
    v13(v6, v0);
    v14 = 12;
    if ((v12 & 1) == 0)
    {
      v14 = v10;
    }

    if (__OFSUB__(v14, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = [v8 visibleDateComponents];
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      DateComponents.month.setter();
      isa = DateComponents._bridgeToObjectiveC()().super.isa;
      v13(v4, v0);
      [v8 setVisibleDateComponents:isa];
    }
  }
}

uint64_t sub_10022A98C(void *a1)
{
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v41 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000F24EC(&qword_100AD99C0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v39[-v8];
  v10 = sub_1000F24EC(&unk_100AD9850);
  v11 = __chkstk_darwin(v10 - 8);
  v47 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v46 = &v39[-v14];
  v15 = __chkstk_darwin(v13);
  v50 = &v39[-v16];
  v17 = __chkstk_darwin(v15);
  v19 = &v39[-v18];
  __chkstk_darwin(v17);
  v21 = &v39[-v20];
  v22 = type metadata accessor for InsightsCalendarView.Representation(0);
  v23 = __chkstk_darwin(v22 - 8);
  v45 = &v39[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v26 = &v39[-v25];
  v27 = OBJC_IVAR____TtCVV7Journal20InsightsCalendarViewP33_DB82E41FEC15FAA6F37A37FAA16D9E2114Representation11Coordinator_parent;
  swift_beginAccess();
  v48 = v1;
  v43 = v27;
  sub_10022BC1C(v1 + v27, v26, type metadata accessor for InsightsCalendarView.Representation);
  v44 = sub_1000F24EC(&unk_100AD97D0);
  Binding.wrappedValue.getter();
  sub_10022C254(v26, type metadata accessor for InsightsCalendarView.Representation);
  v49 = a1;
  v28 = [a1 visibleDateComponents];
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = *(v4 + 56);
  v42(v19, 0, 1, v3);
  v29 = *(v7 + 56);
  sub_1000082B4(v21, v9, &unk_100AD9850);
  sub_1000082B4(v19, &v9[v29], &unk_100AD9850);
  v30 = *(v4 + 48);
  if (v30(v9, 1, v3) == 1)
  {
    sub_100004F84(v19, &unk_100AD9850);
    sub_100004F84(v21, &unk_100AD9850);
    if (v30(&v9[v29], 1, v3) == 1)
    {
      return sub_100004F84(v9, &unk_100AD9850);
    }

    goto LABEL_6;
  }

  sub_1000082B4(v9, v50, &unk_100AD9850);
  if (v30(&v9[v29], 1, v3) == 1)
  {
    sub_100004F84(v19, &unk_100AD9850);
    sub_100004F84(v21, &unk_100AD9850);
    (*(v4 + 8))(v50, v3);
LABEL_6:
    sub_100004F84(v9, &qword_100AD99C0);
LABEL_7:
    v32 = v45;
    sub_10022BC1C(v48 + v43, v45, type metadata accessor for InsightsCalendarView.Representation);
    v33 = [v49 visibleDateComponents];
    v34 = v46;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v42(v34, 0, 1, v3);
    sub_1000082B4(v34, v47, &unk_100AD9850);
    Binding.wrappedValue.setter();
    sub_100004F84(v34, &unk_100AD9850);
    return sub_10022C254(v32, type metadata accessor for InsightsCalendarView.Representation);
  }

  v35 = &v9[v29];
  v36 = v41;
  (*(v4 + 32))(v41, v35, v3);
  sub_10022BA90(&qword_100AD99B0, &type metadata accessor for DateComponents);
  v37 = v50;
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v4 + 8);
  v38(v36, v3);
  sub_100004F84(v19, &unk_100AD9850);
  sub_100004F84(v21, &unk_100AD9850);
  v38(v37, v3);
  result = sub_100004F84(v9, &unk_100AD9850);
  if ((v40 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}