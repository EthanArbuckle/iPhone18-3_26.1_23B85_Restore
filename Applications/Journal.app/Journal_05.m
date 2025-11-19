id sub_100085C70()
{
  v1 = OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___outerStackView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___outerStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___outerStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:1];
    [v4 setAxis:1];
    [v4 setAlignment:1];
    [v4 setDistribution:0];
    [v4 setSpacing:8.0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100085D48()
{
  v1 = OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerStackView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:1];
    [v4 setAxis:0];
    [v4 setAlignment:3];
    [v4 setSpacing:8.0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100085E54()
{
  v1 = sub_1000F24EC(&qword_100AE2508);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = type metadata accessor for MergeableWritingDirection();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_1000082B4(v0, v3, &qword_100AE2508);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100004F84(v3, &qword_100AE2508);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 88))(v8, v4);
  if (v12 == enum case for MergeableWritingDirection.natural(_:))
  {
    v11 = -1;
LABEL_9:
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  if (v12 == enum case for MergeableWritingDirection.leftToRight(_:))
  {
    v11 = 0;
    goto LABEL_9;
  }

  if (v12 == enum case for MergeableWritingDirection.rightToLeft(_:))
  {
    v11 = 1;
    goto LABEL_9;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_1000860E8()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.866666667 green:0.352941176 blue:0.345098039 alpha:1.0];
  qword_100B30318 = result;
  return result;
}

void sub_100086138()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001009045F0;
  v1._countAndFlagsBits = 0x6B72616D6B6F6F42;
  v1._object = 0xEA00000000006465;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000036;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30B80 = v3;
}

uint64_t sub_1000861EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for UnknownProperties();
  __chkstk_darwin(v3 - 8);
  v82 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100ADAD28);
  __chkstk_darwin(v5 - 8);
  v79 = &v71 - v6;
  v7 = type metadata accessor for MergeableEntryAssetsPlacement();
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = __chkstk_darwin(v7);
  v76 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = &v71 - v10;
  v87 = sub_1000F24EC(&unk_100AD6240);
  v77 = *(v87 - 8);
  v11 = __chkstk_darwin(v87);
  v74 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v86 = &v71 - v13;
  v85 = sub_1000F24EC(&qword_100AE4C80);
  v75 = *(v85 - 8);
  v14 = __chkstk_darwin(v85);
  v73 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v88 = &v71 - v16;
  v84 = type metadata accessor for UUID();
  v17 = *(v84 - 8);
  __chkstk_darwin(v84);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000F24EC(&qword_100AD1420);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v71 - v24;
  if (qword_100AD0278 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000617C(v26, qword_100B30208);
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v89[0] = v31;
    *v30 = 136315138;
    v32 = [v27 id];
    if (v32)
    {
      v33 = v32;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = *(v17 + 56);
      v35 = v23;
      v36 = 0;
    }

    else
    {
      v34 = *(v17 + 56);
      v35 = v23;
      v36 = 1;
    }

    v37 = v84;
    v34(v35, v36, 1, v84);
    sub_100021CEC(v23, v25, &qword_100AD1420);
    if ((*(v17 + 48))(v25, 1, v37))
    {
      sub_100004F84(v25, &qword_100AD1420);
      v38 = 0xE500000000000000;
      v39 = 0x3E6C696E3CLL;
    }

    else
    {
      (*(v17 + 16))(v19, v25, v37);
      sub_100004F84(v25, &qword_100AD1420);
      v40 = v37;
      v41 = UUID.uuidString.getter();
      v38 = v42;
      (*(v17 + 8))(v19, v40);
      v39 = v41;
    }

    v43 = sub_100008458(v39, v38, v89);

    *(v30 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v28, v29, "Creating mergeable attributes for existing entry: %s", v30, 0xCu);
    sub_10000BA7C(v31);
  }

  v44 = [v27 text];
  if (v44)
  {
    v45 = v44;
    v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = Data.getAttributedString()();
    sub_1000340DC(v46, v48);
  }

  else
  {
    v49 = 0;
  }

  v50 = objc_opt_self();
  v72 = v49;
  v51 = [v50 currentTraitCollection];
  v52 = type metadata accessor for CustomAttributeProviderConcrete();
  v53 = sub_100786420(&qword_100AE2470, type metadata accessor for CustomAttributeProviderConcrete);
  v89[3] = v52;
  v89[4] = v53;
  v54 = sub_10001A770(v89);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  Logger.init(subsystem:category:)();
  v56 = v55 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
  *(v56 + 4) = 0;
  *v56 = 2;
  *v54 = v55;
  type metadata accessor for MergeableTextAttributeScope();
  sub_100786420(&qword_100AE4B80, &type metadata accessor for MergeableTextAttributeScope);
  CRAttributedString<>.init(nsAttributedString:traitCollection:customAttributeProvider:)();
  v57 = [v27 title];
  if (!v57 || (v58 = v57, v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v61 = v60, v58, v62 = Data.getAttributedString()(), sub_1000340DC(v59, v61), !v62))
  {
    v62 = [objc_allocWithZone(NSAttributedString) init];
  }

  type metadata accessor for MergeableTitleAttributeScope();
  sub_100786420(&qword_100AE2478, &type metadata accessor for MergeableTitleAttributeScope);
  v71 = v62;
  v63 = v86;
  CRAttributedString.init(_:)();
  v64 = v27;
  v65 = v78;
  MergeableEntryAssetsPlacement.init(fromLegacyOrderingFieldsOf:)();
  v66 = v77;
  (*(v77 + 16))(v74, v63, v87);
  v67 = v75;
  (*(v75 + 16))(v73, v88, v85);
  v69 = v80;
  v68 = v81;
  (*(v80 + 16))(v76, v65, v81);
  sub_100786420(&qword_100AD4B40, &type metadata accessor for UUID);
  CRSet.init()();
  UnknownProperties.init()();
  MergeableEntryAttributes.init(title:text:assetPlacement:associatedJournalIDs:unknownProperties:)();

  (*(v69 + 8))(v65, v68);
  (*(v66 + 8))(v86, v87);
  return (*(v67 + 8))(v88, v85);
}

uint64_t sub_100086C04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100086C68()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  qword_100B30ED8 = v1;
}

uint64_t sub_100086CF8()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE6B60);
  v1 = sub_10000617C(v0, qword_100AE6B60);
  if (qword_100AD0198 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100086DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F24EC(&qword_100AE2520);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  switch(a1)
  {
    case 1:
      v13 = &enum case for MergeableWritingDirection.rightToLeft(_:);
      goto LABEL_7;
    case 0:
      v13 = &enum case for MergeableWritingDirection.leftToRight(_:);
      goto LABEL_7;
    case -1:
      v13 = &enum case for MergeableWritingDirection.natural(_:);
LABEL_7:
      v14 = *v13;
      v15 = type metadata accessor for MergeableWritingDirection();
      v16 = *(v15 - 8);
      (*(v16 + 104))(v9, v14, v15);
      (*(v16 + 56))(v9, 0, 1, v15);
      goto LABEL_9;
  }

  v15 = type metadata accessor for MergeableWritingDirection();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
LABEL_9:
  sub_100021CEC(v9, v12, &qword_100AE2520);
  sub_100021CEC(v12, v6, &qword_100AE2520);
  type metadata accessor for MergeableWritingDirection();
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v6, 1, v15) == 1)
  {
    sub_100004F84(v6, &qword_100AE2520);
    v18 = 1;
  }

  else
  {
    (*(v17 + 32))(a2, v6, v15);
    v18 = 0;
  }

  return (*(v17 + 56))(a2, v18, 1, v15);
}

uint64_t sub_100087090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F24EC(&qword_100AE2518);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  if (a1 <= 1)
  {
    if (!a1)
    {
      v13 = &enum case for MergeableTextAlignment.left(_:);
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      v13 = &enum case for MergeableTextAlignment.center(_:);
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v13 = &enum case for MergeableTextAlignment.right(_:);
        goto LABEL_12;
      case 3:
        v13 = &enum case for MergeableTextAlignment.justified(_:);
        goto LABEL_12;
      case 4:
        v13 = &enum case for MergeableTextAlignment.natural(_:);
LABEL_12:
        v14 = *v13;
        v15 = type metadata accessor for MergeableTextAlignment();
        v16 = *(v15 - 8);
        (*(v16 + 104))(v9, v14, v15);
        (*(v16 + 56))(v9, 0, 1, v15);
        goto LABEL_13;
    }
  }

  v15 = type metadata accessor for MergeableTextAlignment();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
LABEL_13:
  sub_100021CEC(v9, v12, &qword_100AE2518);
  sub_100021CEC(v12, v6, &qword_100AE2518);
  type metadata accessor for MergeableTextAlignment();
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v6, 1, v15) == 1)
  {
    sub_100004F84(v6, &qword_100AE2518);
    v18 = 1;
  }

  else
  {
    (*(v17 + 32))(a2, v6, v15);
    v18 = 0;
  }

  return (*(v17 + 56))(a2, v18, 1, v15);
}

void sub_100087390(double a1)
{
  if (qword_100ACFEC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AE6B60);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    sub_1000F24EC(&unk_100AD5B10);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100940080;
    Current = CFAbsoluteTimeGetCurrent();
    *(v6 + 56) = &type metadata for Double;
    *(v6 + 64) = &protocol witness table for Double;
    *(v6 + 32) = Current - a1;
    v8 = String.init(format:_:)();
    v10 = sub_100008458(v8, v9, &v12);

    *(v4 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v3, "JournalSortingUtilities.updateSortingColumnsForAllEntries completed in %s seconds", v4, 0xCu);
    sub_10000BA7C(v5);
  }
}

uint64_t sub_100087554()
{
  v1 = *v0;
  v2 = *(*v0 + 48);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_1000B1E2C, v4, v3);
}

Swift::Int sub_100087730()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000877E4(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_10006F5AC(&qword_100ADFEA0, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100087898(a1, v2);
}

unint64_t sub_100087898(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10006F5AC(&qword_100ADFEA0, type metadata accessor for CFString);
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

void sub_1000879A4()
{
  sub_100087AA8();
  if (v0 <= 0x3F)
  {
    sub_100087C9C();
    if (v1 <= 0x3F)
    {
      sub_100087D8C(319, &qword_100AF70F0, &type metadata accessor for Calendar);
      if (v2 <= 0x3F)
      {
        sub_100087D8C(319, &unk_100ADED38, type metadata accessor for EntryListType);
        if (v3 <= 0x3F)
        {
          sub_10032209C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100087AA8()
{
  if (!qword_100ADED30)
  {
    type metadata accessor for JournalEntryMO();
    sub_100052258(&qword_100ADECB8, &type metadata accessor for JournalEntryMO);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADED30);
    }
  }
}

char *sub_100087B3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal18EntryListViewModel_fetchedResultsController);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 sections];
  if (v3)
  {
    sub_1000F24EC(&qword_100ADE7A0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
LABEL_22:
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v3 = 0;
    while (v5 != v6)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v6, 1))
        {
LABEL_15:
          __break(1u);
          return 0;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v7 = *(v4 + 8 * v6 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v6, 1))
        {
          goto LABEL_15;
        }
      }

      v8 = [v7 numberOfObjects];
      swift_unknownObjectRelease();
      ++v6;
      v9 = __OFADD__(v3, v8);
      v3 = &v8[v3];
      if (v9)
      {
        goto LABEL_21;
      }
    }
  }

  return v3;
}

unint64_t sub_100087C9C()
{
  result = qword_100AD3AD0;
  if (!qword_100AD3AD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100AD3AD0);
  }

  return result;
}

uint64_t type metadata accessor for AppStoreRatingManager()
{
  result = qword_100AEFE50;
  if (!qword_100AEFE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100087D38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100087D8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100087DE0()
{
  v1 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000880C0();
  if (v8)
  {
    v9 = v8;
    static Date.now.getter();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1000881C0(0, v9[2] + 1, 1, v9);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1000881C0(v10 > 1, v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
    sub_1000881E8(6uLL, v9);
    v12 = *(v0 + 16);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = String._bridgeToObjectiveC()();
    [v12 setValue:isa forKey:v14];
  }

  else
  {
    sub_1000F24EC(&qword_100AD6508);
    *(swift_allocObject() + 16) = xmmword_100940080;
    static Date.now.getter();
    v15 = *(v0 + 16);
    v16 = Array._bridgeToObjectiveC()().super.isa;

    v17 = String._bridgeToObjectiveC()();
    [v15 setValue:v16 forKey:v17];

    static Date.now.getter();
    (*(v5 + 56))(v3, 0, 1, v4);
    sub_100749180(v3);
  }
}

uint64_t sub_1000880C0()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
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
    sub_1000F24EC(&qword_100ADB2B8);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100004F84(v8, &qword_100AD13D0);
    return 0;
  }
}

void *sub_1000881E8(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return _swiftEmptyArrayStorage;
  }

  v9 = *(a2 + 16);
  v29 = a1;
  if (v9 >= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = v9;
  }

  v36 = _swiftEmptyArrayStorage;
  sub_1000884F4(0, v10, 0);
  v34 = v36;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = 0;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v33 = v14;
    v15 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v28[1] = a2;
    v16 = a2 + v15;
    v17 = *(v13 + 56);
    v30 = (v13 + 24);
    v31 = (v13 + 16);
    v18 = v29;
    do
    {
      v21 = v8;
      result = v33(v8, v16, v4);
      v23 = v34;
      v22 = v34[2];
      if (v22 < v18)
      {
        v32 = v12;
        v36 = v34;
        v19 = v34[3];
        if (v22 >= v19 >> 1)
        {
          sub_1000884F4(v19 > 1, v22 + 1, 1);
          v18 = v29;
          v23 = v36;
        }

        v23[2] = v22 + 1;
        v34 = v23;
        v20 = v23 + v15 + v22 * v17;
        v8 = v21;
        (*v31)(v20, v21, v4);
        v12 = v32;
      }

      else
      {
        if (v12 >= v22)
        {
          __break(1u);
          goto LABEL_27;
        }

        v8 = v21;
        (*v30)(v34 + v15 + v17 * v12, v21, v4);
        if ((v12 + 1) < v18)
        {
          ++v12;
        }

        else
        {
          v12 = 0;
        }
      }

      v16 += v17;
      --v11;
    }

    while (v11);

    if (!v12)
    {
      return v34;
    }

    v24 = v34[2];
    v35 = _swiftEmptyArrayStorage;
    result = sub_1000884F4(0, v24, 0);
    if (v24 >= v12)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v25 = v34;
      v26 = v34[2];
      if (v26 >= v12 && v26 >= v24)
      {

        sub_100088538(v27, v25 + v15, v12, (2 * v24) | 1);
        sub_100088538(v25, v25 + v15, 0, (2 * v12) | 1);
        return v35;
      }

      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  return v34;
}

size_t sub_1000884F4(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6508, &unk_1009451D0, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

uint64_t sub_100088538(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v58 = a2;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&unk_100AD4790);
  v13 = __chkstk_darwin(v12 - 8);
  v67 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v55 = &v52 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v52 - v18;
  v20 = a4 >> 1;
  v59 = a3;
  v21 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v22 = *v4;
  v23 = *(*v4 + 16);
  v24 = v23 + v21;
  if (__OFADD__(v23, v21))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v62 = v20;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v22;
  if (result)
  {
    v25 = *(v22 + 24) >> 1;
    if (v25 >= v24)
    {
      goto LABEL_12;
    }

    if (v23 <= v24)
    {
      v26 = v23 + v21;
    }

    else
    {
      v26 = v23;
    }
  }

  else if (v23 <= v24)
  {
    v26 = v23 + v21;
  }

  else
  {
    v26 = v23;
  }

  result = sub_1000884F4(result, v26, 1);
  v22 = *v4;
  v25 = *(*v4 + 24) >> 1;
LABEL_12:
  v63 = v11;
  v27 = a1;
  v28 = v22;
  v29 = v25 - *(v22 + 16);
  if (v62 == v59)
  {
    if (v21 <= 0)
    {
      v30 = v59;
      if (v29)
      {
        goto LABEL_42;
      }

LABEL_20:
      v52 = v27;
      v34 = *(v22 + 16);
      v60 = *(v9 + 56);
      v61 = v9 + 56;
      v60(v19, 1, 1, v8);
      v35 = v55;
      sub_100088AC8(v19, v55);
      v65 = *(v9 + 48);
      v66 = v9 + 48;
      if (v65(v35, 1, v8) != 1)
      {
        v36 = v9;
        v37 = (v9 + 32);
        v57 = (v36 + 16);
        v64 = v36;
        v53 = (v36 + 8);
        v54 = v4;
        v38 = v63;
        do
        {
          sub_100004F84(v35, &unk_100AD4790);
          v40 = *(v28 + 24);
          if (v34 + 1 > (v40 >> 1))
          {
            sub_1000884F4(v40 > 1, v34 + 1, 1);
          }

          v41 = *v4;
          v42 = *(*v4 + 24);
          v43 = *(v64 + 80);
          v44 = v67;
          sub_100088AC8(v19, v67);
          v45 = v65(v44, 1, v8);
          v56 = v41;
          if (v45 != 1)
          {
            v48 = v41 + ((v43 + 32) & ~v43);
            v49 = *v37;
            if (v34 <= (v42 >> 1))
            {
              v47 = v42 >> 1;
            }

            else
            {
              v47 = v34;
            }

            v46 = v67;
            while (1)
            {
              v49(v38, v46, v8);
              if (v47 == v34)
              {
                (*v53)(v38, v8);
                v34 = v47;
                goto LABEL_24;
              }

              sub_100004F84(v19, &unk_100AD4790);
              v51 = *(v64 + 72);
              result = (v49)(v48 + v51 * v34, v38, v8);
              if (v30 == v62)
              {
                v50 = 1;
                v30 = v62;
              }

              else
              {
                if (v30 < v59 || v30 >= v62)
                {
                  __break(1u);
                  goto LABEL_45;
                }

                (*v57)(v19, v58 + v51 * v30, v8);
                v50 = 0;
                ++v30;
              }

              v60(v19, v50, 1, v8);
              v46 = v67;
              sub_100088AC8(v19, v67);
              ++v34;
              if (v65(v46, 1, v8) == 1)
              {
                goto LABEL_29;
              }
            }
          }

          v46 = v67;
LABEL_29:
          sub_100004F84(v46, &unk_100AD4790);
          v47 = v34;
LABEL_24:
          v35 = v55;
          v28 = v56;
          *(v56 + 16) = v47;
          sub_100088AC8(v19, v35);
          v39 = v65(v35, 1, v8);
          v4 = v54;
        }

        while (v39 != 1);
      }

      sub_100004F84(v19, &unk_100AD4790);
      swift_unknownObjectRelease();
      result = sub_100004F84(v35, &unk_100AD4790);
      goto LABEL_43;
    }

    goto LABEL_47;
  }

  if (v29 < v21)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  result = swift_arrayInitWithCopy();
  if (v21 <= 0)
  {
    v30 = v62;
    if (v21 == v29)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

  v31 = *(v22 + 16);
  v32 = __OFADD__(v31, v21);
  v33 = v31 + v21;
  v30 = v62;
  if (!v32)
  {
    *(v22 + 16) = v33;
    if (v21 == v29)
    {
      goto LABEL_20;
    }

LABEL_42:
    result = swift_unknownObjectRelease();
LABEL_43:
    *v4 = v28;
    return result;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_100088AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100088B38(void *a1)
{
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AssetType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1 + OBJC_IVAR____TtC7Journal5Asset_type, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for AssetType.photo(_:) || v10 == enum case for AssetType.livePhoto(_:) || v10 == enum case for AssetType.video(_:))
  {
    if ((*((swift_isaMask & *a1) + 0x228))())
    {
      (*(v3 + 104))(v5, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v2);
      v13 = JournalFeatureFlags.isEnabled.getter();
      (*(v3 + 8))(v5, v2);
      if (v13)
      {
        return 0;
      }
    }
  }

  else if (v10 != enum case for AssetType.music(_:) && v10 != enum case for AssetType.podcast(_:) && v10 != enum case for AssetType.book(_:) && v10 != enum case for AssetType.visit(_:) && v10 != enum case for AssetType.multiPinMap(_:) && v10 != enum case for AssetType.genericMap(_:) && v10 != enum case for AssetType.confetti(_:))
  {
    (*(v7 + 8))(v9, v6);
    return 2;
  }

  return 1;
}

unint64_t sub_100088E10()
{
  result = qword_100AF2AB8;
  if (!qword_100AF2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF2AB8);
  }

  return result;
}

uint64_t sub_100088E64(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032EC8;

  return sub_10018ACB4(a1, v4);
}

uint64_t sub_100088F1C()
{
  v0 = type metadata accessor for JournalFeatureFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v0);
  v4 = JournalFeatureFlags.isEnabled.getter();
  result = (*(v1 + 8))(v3, v0);
  v6 = 5;
  if (v4)
  {
    v6 = 9;
  }

  qword_100B30F70 = v6;
  return result;
}

uint64_t sub_10008901C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1000A0564();
    v3 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel;
    v4 = *&v2[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel];
    sub_1000746FC();

    v5 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel;
    v6 = *&v2[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel];
    sub_1000746FC();

    v7 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
    v8 = *&v2[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView];
    sub_1000746FC();

    sub_10008FA14();
    [*&v2[v5] setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    [*&v2[v3] setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    [*&v2[v5] setAdjustsFontForContentSizeCategory:1];
    [*&v2[v3] setAdjustsFontForContentSizeCategory:1];
    v9 = *&v2[v7];
    v10 = [v9 superview];
    if (v10)
    {
      v11 = v10;
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      v12 = [v9 centerYAnchor];
      v13 = [v11 centerYAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      [v14 setConstant:0.0];
      if (v14)
      {
        [v14 setActive:1];
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v2[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
    if (v15 > 3)
    {
      if (v15 - 4 >= 2)
      {
        if (v15 == 6)
        {
          [*&v2[v3] setHidden:1];
          [*&v2[v5] setHidden:1];
          v16 = *&v2[v7];
          sub_100013178(8.0);
        }

        else
        {
          sub_1007B6CD8();
        }
      }

      else
      {
        sub_1007B5C00();
      }
    }

    else if (v15 >= 3)
    {
      sub_10008FDDC();
    }

    else
    {
      sub_1007B6470();
    }

    [v2 layoutIfNeeded];
    [*&v2[v3] layoutIfNeeded];
    [*&v2[v5] layoutIfNeeded];
    [*&v2[v7] layoutIfNeeded];
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10008932C()
{
  v1 = *(v0 + 136);
  v2 = type metadata accessor for Locale();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  *v3 = v0;
  v3[1] = sub_1006A6A68;
  v4 = *(v0 + 136);

  return sub_100089408(v4);
}

uint64_t sub_100089408(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1000F24EC(&qword_100AD1350);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for Locale();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(sub_1000A6164, v5, v4);
}

uint64_t sub_100089540()
{
  v1 = sub_1000897B4(&off_100A58888, v0[16]);

  if (v1)
  {
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[6];
    v5 = type metadata accessor for CalendarBinningUnit(0);
    v6 = *(*(v5 - 8) + 56);
    v6(v2, 1, 1, v5);
    *(v2 + *(v3 + 20)) = 0;
    *(v2 + *(v3 + 24)) = 1;
    sub_10003E8B0(v2, &qword_100AD6FB8, v4);
    v7 = type metadata accessor for InsightsDataManager.EntrySummaryGroup(0);
    v8 = v4 + v7[5];
    *v8 = 0;
    *(v8 + 8) = 1;
    v9 = v7[6];
    v6(v2, 1, 1, v5);
    *(v2 + *(v3 + 20)) = 0;
    *(v2 + *(v3 + 24)) = 1;
    sub_10003E8B0(v2, &qword_100AD6FB8, v4 + v9);
    v10 = v7[7];
    v6(v2, 1, 1, v5);
    *(v2 + *(v3 + 20)) = 0;
    *(v2 + *(v3 + 24)) = 1;
    sub_10003E8B0(v2, &qword_100AD6FB8, v4 + v10);
    v11 = v4 + v7[8];
    *v11 = 0;
    *(v11 + 8) = 1;
    static Date.distantFuture.getter();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v0[17] = static MainActor.shared.getter();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000A46A4, v15, v14);
  }
}

uint64_t sub_1000897B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (*(a2 + 16))
    {
      v7 = *(v5 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v7);
      v8 = Hasher._finalize()();
      v9 = -1 << *(a2 + 32);
      v10 = v8 & ~v9;
      if ((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        break;
      }
    }

LABEL_4:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v11 = ~v9;
  while (*(*(a2 + 48) + v10) != v7)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_1000898BC()
{
  v1 = sub_1000405A8(3, v0[7]);

  if (v1)
  {
    v0[8] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000A4718, v3, v2);
  }

  else
  {
    v4 = v0[2];
    v5 = type metadata accessor for Date();
    v6 = *(*(v5 - 8) + 56);
    v6(v4, 1, 1, v5);
    v7 = type metadata accessor for StreakSummary();
    v6(v4 + v7[5], 1, 1, v5);
    v6(v4 + v7[6], 1, 1, v5);
    *(v4 + v7[7]) = 0;
    v8 = type metadata accessor for InsightsDataManager.Streaks(0);
    v9 = v4 + v8[5];
    v6(v9, 1, 1, v5);
    v6(v9 + v7[5], 1, 1, v5);
    v6(v9 + v7[6], 1, 1, v5);
    *(v9 + v7[7]) = 0;
    v10 = v4 + v8[6];
    v6(v10, 1, 1, v5);
    v6(v10 + v7[5], 1, 1, v5);
    v6(v10 + v7[6], 1, 1, v5);
    *(v10 + v7[7]) = 0;
    v11 = v4 + v8[7];
    v6(v11, 1, 1, v5);
    v6(v11 + v7[5], 1, 1, v5);
    v6(v11 + v7[6], 1, 1, v5);
    *(v11 + v7[7]) = 0;
    v12 = v4 + v8[8];
    v6(v12, 1, 1, v5);
    v6(v12 + v7[5], 1, 1, v5);
    v6(v12 + v7[6], 1, 1, v5);
    *(v12 + v7[7]) = 0;
    v13 = v4 + v8[9];
    v6(v13, 1, 1, v5);
    v6(v13 + v7[5], 1, 1, v5);
    v6(v13 + v7[6], 1, 1, v5);
    *(v13 + v7[7]) = 0;
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100089C84()
{
  v1 = sub_1000405A8(2, v0[14]);

  if (v1)
  {
    v0[15] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000A4B08, v3, v2);
  }

  else
  {
    v4 = v0[6];
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = _swiftEmptyArrayStorage;

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100089D80()
{
  v1 = sub_1000405A8(4, *(v0 + 48));

  if (v1)
  {
    *(v0 + 56) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1000A4B7C, v3, v2);
  }

  else
  {
    **(v0 + 16) = _swiftEmptyArrayStorage;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100089E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000F24EC(&qword_100AE6860);
  v4[3] = swift_task_alloc();
  v5 = sub_1000F24EC(&qword_100AE6868);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AE6870);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100AE6878);
  v4[10] = v7;
  v4[11] = *(v7 - 8);
  v4[12] = swift_task_alloc();

  return _swift_task_switch(sub_10008A044, 0, 0);
}

uint64_t sub_10008A044()
{
  type metadata accessor for MainActor();
  *(v0 + 104) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A4D60, v2, v1);
}

uint64_t sub_10008A0E0()
{
  *(v0 + 160) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A6DFC, v2, v1);
}

uint64_t sub_10008A16C()
{
  sub_10008A1EC(v0[12], v0[13]);
  v0[14] = v1;

  v2 = v0[7];
  v3 = v0[8];

  return _swift_task_switch(sub_1000B4774, v2, v3);
}

void sub_10008A1EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 120);
  if (*(v6 + 16))
  {

    v7 = sub_100094E98(a1, a2);
    if (v8)
    {
      *(*(v6 + 56) + 8 * v7);

      return;
    }
  }

  v9 = *(v3 + 112);
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() _systemImageNamed:v10 withConfiguration:v9];

  if (v11)
  {
    swift_beginAccess();
    v11;

    sub_100094CA4(v11, a1, a2);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void *sub_10008A328(uint64_t a1, uint64_t a2)
{
  if (qword_100AD0AE0 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v4 = qword_100AF2118;
    sub_1000065A8(0, &unk_100AD43A0);
    if (qword_100ACFB88 != -1)
    {
      swift_once();
    }

    if (static NSObject.== infix(_:_:)())
    {
      v5 = &OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueLowPriority;
    }

    else
    {
      if (qword_100ACFB98 != -1)
      {
        swift_once();
      }

      v6 = static NSObject.== infix(_:_:)();
      v5 = &OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueRegularPriority;
      if (v6)
      {
        v5 = &OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueHighPriority;
      }
    }

    v7 = [*(v4 + *v5) operations];
    sub_1000065A8(0, &unk_100AF2190);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      break;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_32;
    }

LABEL_12:
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      type metadata accessor for ThumbnailCacheOperation();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        v16 = *(v14 + qword_100AF0110) == a1 && *(v14 + qword_100AF0110 + 8) == a2;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ![v15 isCancelled])
        {

          return v15;
        }
      }

      ++v10;
      if (v13 == v9)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_32:

  return 0;
}

void sub_10008A5C8(uint64_t a1, uint64_t a2)
{
  if (qword_100AD0AE0 != -1)
  {
    swift_once();
  }

  v4 = qword_100AF2118;
  sub_1000F24EC(&unk_100AD4780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100941D70;
  v6 = *(v4 + OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueHighPriority);
  *(inited + 32) = v6;
  v7 = *(v4 + OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueRegularPriority);
  *(inited + 40) = v7;
  v8 = *(v4 + OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueLowPriority);
  *(inited + 48) = v8;
  v9 = inited & 0xC000000000000001;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

    v13 = v10;
  }

  v14 = v13;
  v15 = [v13 underlyingQueue];
  if (v15)
  {
    v16 = v15;
    v17 = sub_10008A328(a1, a2);

    if (v17)
    {
      goto LABEL_23;
    }

    v14 = v16;
  }

  if (v9)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_26;
    }

    v18 = *(inited + 40);
  }

  v19 = v18;
  v20 = [v18 underlyingQueue];
  if (v20)
  {
    v21 = v20;
    v22 = sub_10008A328(a1, a2);

    if (!v22)
    {
      v19 = v21;
      goto LABEL_17;
    }

LABEL_23:

    return;
  }

LABEL_17:

  if (!v9)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v23 = *(inited + 48);
      goto LABEL_21;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_21:
  v24 = v23;
  v25 = [v23 underlyingQueue];
  if (v25)
  {
    v26 = v25;
    v27 = sub_10008A328(a1, a2);

    if (v27)
    {
      goto LABEL_23;
    }

    v24 = v26;
  }
}

id sub_10008A81C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10029A8C8;
  *(v7 + 24) = v6;
  v8 = *&a1[qword_100AE7BA8];

  os_unfair_lock_lock(v8 + 10);
  sub_10029A8B0(&v8[4]);
  os_unfair_lock_unlock(v8 + 10);

  sub_1000065A8(0, &unk_100AD43A0);
  if (qword_100ACFB88 != -1)
  {
    swift_once();
  }

  if (static NSObject.== infix(_:_:)())
  {
    [a1 setQualityOfService:9];
  }

  else
  {
    if (qword_100ACFB90 != -1)
    {
      swift_once();
    }

    if (static NSObject.== infix(_:_:)())
    {
      v9 = a1;
      v10 = -1;
    }

    else
    {
      v9 = a1;
      v10 = 25;
    }

    [v9 setQualityOfService:v10];
  }

  return sub_10008AB58(a1);
}

uint64_t sub_10008A9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t), uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(a1 + 8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a5(0, *(v12 + 16) + 1, 1, v12);
    v12 = result;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  if (v15 >= v14 >> 1)
  {
    result = a5(v14 > 1, v15 + 1, 1, v12);
    v12 = result;
  }

  *(v12 + 16) = v15 + 1;
  v16 = v12 + 16 * v15;
  *(v16 + 32) = a6;
  *(v16 + 40) = v11;
  *(a1 + 8) = v12;
  return result;
}

id sub_10008AB58(uint64_t a1)
{
  if (qword_100AD0AE0 != -1)
  {
    swift_once();
  }

  v2 = qword_100AF2118;
  sub_1000065A8(0, &unk_100AD43A0);
  if (qword_100ACFB88 != -1)
  {
    swift_once();
  }

  if (static NSObject.== infix(_:_:)())
  {
    v3 = &OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueLowPriority;
  }

  else
  {
    if (qword_100ACFB98 != -1)
    {
      swift_once();
    }

    v4 = static NSObject.== infix(_:_:)();
    v3 = &OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueRegularPriority;
    if (v4)
    {
      v3 = &OBJC_IVAR____TtC7Journal17OperationsManager_cacheQueueHighPriority;
    }
  }

  v5 = *(v2 + *v3);

  return [v5 addOperation:a1];
}

void sub_10008ACA4(void *a1)
{
  v1 = a1;
  sub_10008ACEC();
}

void sub_10008ACEC()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  sub_1000F2A18(&qword_100AD5BC0);
  v2 = type metadata accessor for Result();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-v7];
  if ([v0 isCancelled])
  {
    type metadata accessor for CancellationError();
    sub_10051D058();
    v9 = swift_allocError();
    CancellationError.init()();
    *v5 = v9;
    swift_storeEnumTagMultiPayload();
    sub_10007F214(v5);
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v0;
    v12 = v0;
    v13 = sub_1003E9628(0, 0, v8, &unk_10095B440, v11);
    v14 = String._bridgeToObjectiveC()();
    [v12 willChangeValueForKey:v14];

    v15 = *(v12 + qword_100AE7BA8);
    __chkstk_darwin(v16);
    *&v20[-16] = v1;
    *&v20[-8] = v13;
    type metadata accessor for OperationBase.Locked();
    v17 = *(*v15 + class metadata base offset for ManagedBuffer + 16);
    v18 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v15 + v18));
    sub_10008B094(v15 + v17);
    os_unfair_lock_unlock((v15 + v18));
    v19 = String._bridgeToObjectiveC()();
    [v12 didChangeValueForKey:v19];
  }
}

uint64_t sub_10008B054()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008B094(uint64_t a1)
{
  v3 = *(v1 + 24);
  *a1 = 1;

  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10008B0E8()
{
  sub_10004D8C8();
  type metadata accessor for OperationBase.State();
  swift_getWitnessTable();
  return == infix<A>(_:_:)() & 1;
}

uint64_t sub_10008B190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10008B244(a1, v4, v5, v6);
}

uint64_t sub_10008B244(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = *((swift_isaMask & *a4) + 0x50);
  v4[3] = v5;
  sub_1000F2A18(&qword_100AD5BC0);
  v6 = type metadata accessor for Result();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();
  v7 = type metadata accessor for Optional();
  v4[7] = v7;
  v4[8] = *(v7 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10004F808, 0, 0);
}

uint64_t sub_10008B400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10008DA74;

  return sub_10008B4A8(a2, a3);
}

uint64_t sub_10008B4A8(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v8 = (*((swift_isaMask & *v2) + 0xF0) + **((swift_isaMask & *v2) + 0xF0));
  v6 = swift_task_alloc();
  v3[22] = v6;
  *v6 = v3;
  v6[1] = sub_10008D4E0;

  return v8(a1, a2);
}

uint64_t sub_10008B5E8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v5 = type metadata accessor for OSSignpostError();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = type metadata accessor for AssetType();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v8 = type metadata accessor for OSSignpostID();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v3[25] = v9;
  v3[26] = v11;

  return _swift_task_switch(sub_10008B814, v9, v11);
}

uint64_t sub_10008B814()
{
  v0[27] = qword_100AF0120;
  static OSSignpostID.exclusive.getter();
  v1 = OSSignposter.logHandle.getter();
  v2 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, v2, v4, "Image attachment loading", "", v3, 2u);
  }

  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[21];

  (*(v8 + 16))(v5, v6, v7);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[28] = OSSignpostIntervalState.init(id:isOpen:)();
  v9 = *(v8 + 8);
  v0[29] = v9;
  v0[30] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v6, v7);
  if (qword_100ACFCB0 != -1)
  {
    swift_once();
  }

  v10 = v0[10];
  v0[31] = qword_100B2F850;
  v11 = (v10 + qword_100AF0110);
  v12 = *v11;
  v0[32] = *v11;
  v13 = v11[1];
  v0[33] = v13;
  v14 = sub_1000594E0(v12, v13);
  if (v14 && (v15 = v14, v16 = [v14 imageByPreparingForDisplay], v15, v16))
  {
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Cache hit.", v19, 2u);
    }

    v20 = v0[10];

    sub_10008D238(v20, "Image attachment loading", 24, 2);

    v21 = v0[1];

    return v21(v16);
  }

  else
  {
    v23 = swift_task_alloc();
    v0[34] = v23;
    *v23 = v0;
    v23[1] = sub_10008C890;
    v24 = v0[8];

    return sub_10008BB78(v24);
  }
}

uint64_t sub_10008BB78(uint64_t a1)
{
  v2[10] = v1;
  v4 = type metadata accessor for UIImageReader();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for UIImageReader.Configuration();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD7C40);
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for UTType();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for FileStoreConfiguration();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v2[31] = v8;
  v2[32] = *(v8 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = type metadata accessor for AssetAttachment.AssetType(0);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v2[39] = v9;
  v2[40] = v11;

  return _swift_task_switch(sub_10008BF08, v9, v11);
}

uint64_t sub_10008BF08()
{
  v1 = v0[10];
  v2 = *(v1 + qword_100B302C0);
  if (v2 >> 62)
  {
LABEL_53:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v1 = v0[10];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_43:

    v46 = v0[1];

    return v46(0);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_43;
  }

LABEL_3:
  v4 = 0;
  v5 = (v1 + qword_100B302E8);
  v6 = v0[32];
  v7 = v2 & 0xC000000000000001;
  v76 = v2 & 0xFFFFFFFFFFFFFF8;
  v70 = (v6 + 56);
  v8 = v0[20];
  v68 = v2;
  v69 = (v6 + 32);
  v71 = (v6 + 48);
  v72 = v2 & 0xC000000000000001;
  v66 = (v8 + 48);
  v67 = v3;
  v63 = (v8 + 32);
  v62 = (v8 + 8);
  v64 = (v0[24] + 8);
  v65 = (v6 + 8);
  v73 = v5;
  while (1)
  {
    if (v7)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v76 + 16))
      {
        goto LABEL_52;
      }

      v11 = *(v2 + 8 * v4 + 32);
    }

    v0[41] = v11;
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v78 = *v5;
    v79 = *(v5 + 8);
    v77 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
    sub_100068AC8(v11 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v0[38], type metadata accessor for AssetAttachment.AssetType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v14 = type metadata accessor for AssetAttachment.AssetType;
      }

      sub_100069140(v0[38], v14);
      if (v79)
      {
        goto LABEL_41;
      }

      v19 = *(v11 + 16);
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {
      v9 = v0[38];

      v10 = v9;
LABEL_5:
      sub_100069140(v10, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      goto LABEL_6;
    }

    v15 = v0[37];

    sub_100068AC8(v11 + v77, v15, type metadata accessor for AssetAttachment.AssetType);
    v16 = swift_getEnumCaseMultiPayload();
    v17 = v0[37];
    if (v16 <= 1)
    {
      if (v16)
      {
        sub_100069140(v17, type metadata accessor for AssetAttachment.AssetType);
        v29 = 1;
        goto LABEL_28;
      }
    }

    else if ((v16 - 2) >= 2)
    {
      v18 = v0[37];

      v17 = v18 + *(sub_1000F24EC(&qword_100AD33B8) + 48);
    }

    v20 = v0[27];
    v21 = v0[28];
    sub_100068CF4(v17, v21);
    sub_100068AC8(v21, v20, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v0[30];
      v23 = v0[31];
      v24 = v0[27];
      sub_100069140(v0[28], type metadata accessor for AssetAttachment.AssetType.FilePathType);
      (*v69)(v22, v24, v23);
    }

    else
    {
      v25 = v0[28];
      v26 = v0[25];
      v27 = v0[23];
      static FileStoreConfiguration.shared.getter();
      v3 = v67;
      FileStoreConfiguration.getAttachmentURL(from:)();

      v28 = v27;
      v2 = v68;
      (*v64)(v26, v28);
      sub_100069140(v25, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v29 = 0;
    v7 = v72;
    v5 = v73;
LABEL_28:
    v75 = v0[38];
    v30 = v0[30];
    v31 = v0[31];
    (*v70)(v30, v29, 1, v31);
    v74 = *(sub_1000F24EC(&qword_100AD33B8) + 48);
    if ((*v71)(v30, 1, v31) == 1)
    {
      v32 = v0[30];

      sub_100004F84(v32, &unk_100AD6DD0);
LABEL_38:
      v10 = v75 + v74;
      goto LABEL_5;
    }

    v34 = v0[18];
    v33 = v0[19];
    (*v69)(v0[35], v0[30], v0[31]);
    URL.pathExtension.getter();
    static UTType.data.getter();
    UTType.init(filenameExtension:conformingTo:)();
    v35 = (*v66)(v34, 1, v33);
    v36 = v0[35];
    v37 = v0[31];
    if (v35 == 1)
    {
      v38 = v0[18];

      (*v65)(v36, v37);
      sub_100004F84(v38, &unk_100AD7C40);
LABEL_37:
      v3 = v67;
      v2 = v68;
      v7 = v72;
      v5 = v73;
      goto LABEL_38;
    }

    v40 = v0[21];
    v39 = v0[22];
    v41 = v0[19];
    (*v63)(v39, v0[18], v41);
    static UTType.image.getter();
    v61 = UTType.conforms(to:)();
    v42 = *v62;
    (*v62)(v40, v41);
    v42(v39, v41);
    (*v65)(v36, v37);
    if ((v61 & 1) == 0)
    {

      goto LABEL_37;
    }

    v2 = v68;
    v7 = v72;
    v5 = v73;
    if (v79)
    {
      break;
    }

    v19 = *(v11 + 16);
    sub_100069140(v75 + v74, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v3 = v67;
LABEL_21:
    if (v19 == v78)
    {
      goto LABEL_41;
    }

LABEL_6:
    ++v4;
    if (v12 == v3)
    {
      goto LABEL_43;
    }
  }

  sub_100069140(v75 + v74, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_41:
  v43 = v0[31];
  v44 = v0[29];
  sub_1000A7D30(v44);
  if ((*v71)(v44, 1, v43) == 1)
  {
    v45 = v0[29];

    sub_100004F84(v45, &unk_100AD6DD0);
    goto LABEL_43;
  }

  v48 = v0[10];
  (*v69)(v0[34], v0[29], v0[31]);
  UIImageReader.Configuration.init()();
  UIImageReader.Configuration.prefersHighDynamicRange.setter();
  if (sub_100512604(*(v48 + qword_100B302E0)))
  {
    v49 = v0[10];
    sub_10029D254();
    UIImageReader.Configuration.preferredThumbnailSize.setter();
    v50 = *(v49 + qword_100B302F0);
    [v50 displayScale];
    v52 = v51;
    v53 = UIImageReader.Configuration.preferredThumbnailSize.modify();
    *v54 = v52 * *v54;
    v53(v0 + 2, 0);
    [v50 displayScale];
    v56 = v55;
    v57 = UIImageReader.Configuration.preferredThumbnailSize.modify();
    *(v58 + 8) = v56 * *(v58 + 8);
    v57(v0 + 6, 0);
  }

  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  UIImageReader.init(configuration:)();
  v59 = swift_task_alloc();
  v0[42] = v59;
  *v59 = v0;
  v59[1] = sub_100752CB8;
  v60 = v0[34];

  return UIImageReader.image(contentsOf:)(v60);
}

uint64_t sub_10008C890(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 280) = a1;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);

  return _swift_task_switch(sub_10008C9B8, v4, v3);
}

uint64_t sub_10008C9B8()
{
  v1 = v0[35];
  if (v1)
  {
    v2 = v0[10];
    sub_10003B9B4();
    v3 = sub_10059B604(v1);
    if (sub_100511E4C(*(v2 + qword_100B302E0)))
    {
      sub_100752914(v3, v0[32], v0[33]);
    }

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Image file attachment found.", v6, 2u);
    }

    v7 = v0[10];

    sub_10008D238(v7, "Image attachment loading", 24, 2);
    goto LABEL_34;
  }

  (*(v0[18] + 104))(v0[19], enum case for AssetType.photo(_:), v0[17]);
  sub_10008D1F0(&qword_100AD5B40, &type metadata accessor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    (*(v9 + 8))(v0[19], v0[17]);
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v9 + 8))(v8, v10);

    if ((v11 & 1) == 0)
    {
      v26 = v0[10];
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[10];
      if (v29)
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        v32 = *&v30[qword_100B302C0];
        if (v32 >> 62)
        {
          v49 = v31;
          v33 = _CocoaArrayWrapper.endIndex.getter();
          v31 = v49;
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v34 = v0[10];
        *(v31 + 4) = v33;
        v35 = v31;

        _os_log_impl(&_mh_execute_header, v27, v28, "did not find image file attachment, attachments.count=%ld", v35, 0xCu);
      }

      else
      {
      }

      v25 = v0[10];
LABEL_33:
      sub_10008D238(v25, "Image attachment loading", 24, 2);
      v3 = 0;
LABEL_34:

      v48 = v0[1];

      return v48(v3);
    }
  }

  v0[36] = qword_100AF0118;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Will try to get image from Core Data (legacy support)", v14, 2u);
  }

  v15 = v0[10];

  v16 = *(v15 + qword_100B302D8);
  v0[37] = v16;
  if (!v16)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "context is nil", v23, 2u);
    }

    v24 = v0[10];

    v25 = v24;
    goto LABEL_33;
  }

  v17 = *(v0[10] + qword_100B302D0);
  v0[38] = v17;
  if (!v17)
  {
    v36 = v16;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "assetID is nil", v39, 2u);
    }

    v40 = v0[10];

    v25 = v40;
    goto LABEL_33;
  }

  v18 = v16;
  v19 = v17;
  if ([v18 concurrencyType] == 1)
  {
    v20 = v18;
  }

  else
  {
    v20 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
    [v20 setParentContext:v18];
  }

  v0[39] = v20;
  v41 = v0[10];
  (*(v0[15] + 104))(v0[16], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[14]);
  v42 = swift_allocObject();
  v0[40] = v42;
  v42[2] = v20;
  v42[3] = v19;
  v42[4] = v41;
  v43 = v19;
  v20;
  v44 = v41;
  v45 = swift_task_alloc();
  v0[41] = v45;
  v46 = sub_1000F24EC(&qword_100AD64D8);
  *v45 = v0;
  v45[1] = sub_1007521C4;
  v47 = v0[16];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 6, v47, sub_100753990, v42, v46);
}

uint64_t sub_10008D0D0()
{

  return swift_deallocObject();
}

uint64_t sub_10008D118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008D160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008D1A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008D1F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008D238(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v20, v18, v15, v16, v17, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10008D4E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 184) = a1;

  if (v3)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(v2 + 192) = v4;
  *(v2 + 200) = v6;

  return _swift_task_switch(sub_10008D630, v4, v6);
}

uint64_t sub_10008D630()
{
  v11 = v0;
  static Task<>.checkCancellation()();
  v1 = *(v0[21] + qword_100AE7BA8);
  v2 = swift_task_alloc();
  *v2 = sub_10003B9B4();
  KeyPath = swift_getKeyPath();

  v4 = swift_task_alloc();
  *(v4 + 16) = sub_10004DA5C;
  *(v4 + 24) = KeyPath;

  os_unfair_lock_lock((v1 + 40));
  sub_10008D95C((v1 + 16), v10);
  os_unfair_lock_unlock((v1 + 40));

  LOBYTE(KeyPath) = v10[0];

  v5 = v0[23];
  if ((KeyPath & 1) != 0 || !v5)
  {
    v7 = v0[1];
    v8 = v0[23];

    return v7(v8);
  }

  else
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100752794;
    v6 = swift_continuation_init();
    v0[17] = sub_1000F24EC(&qword_100AE9DD8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1004A75BC;
    v0[13] = &unk_100A7C1F8;
    v0[14] = v6;
    [v5 prepareForDisplayWithCompletionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10008D8A4()
{
  sub_1000F2A18(&qword_100AD5BC0);
  type metadata accessor for Result();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Array();

  return swift_getWitnessTable();
}

uint64_t sub_10008D95C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result & 1;
  return result;
}

uint64_t sub_10008D9A8@<X0>(_BYTE *a1@<X8>)
{
  sub_1000F2A18(&qword_100AD5BC0);
  type metadata accessor for Result();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10008DA74(uint64_t a1)
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

void sub_10008DB9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = 2;
  *a2 = *(a1 + 8);

  sub_10008DBE8();
}

void sub_10008DBE8()
{
  sub_1000F2A18(&qword_100AD5BC0);
  type metadata accessor for Result();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Array();
  Array.removeAll(keepingCapacity:)(0);
}

void sub_10008DC78(void *a1, char a2, void (*a3)(id *))
{
  if (a2)
  {
    v5 = a1;
    sub_1000F24EC(&qword_100AD5BC0);
    swift_willThrowTypedImpl();
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  v5 = v4;
  a3(&v5);
}

uint64_t sub_10008DD10(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_10008DD80(void *a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10008DDF4(a1, v4, v5);
}

uint64_t sub_10008DDF4(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v24 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v22, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v17 = v23;
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  (*(v10 + 32))(v16 + v15, v12, v9);
  aBlock[4] = sub_100090ABC;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A7DBB8;
  v18 = _Block_copy(aBlock);
  v19 = v17;

  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10008E2D4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_10000B58C(&qword_100AD1530, &unk_100AD6220);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v24;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v8, v26);
}

uint64_t sub_10008E208()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10008E2D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008E31C(void *a1)
{
  sub_1000F24EC(&qword_100AE9470);

  return sub_100286180(a1);
}

void sub_10008E3A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v149 = a4;
  v150 = a6;
  v158 = a5;
  v155 = a3;
  v12 = sub_1000F24EC(&qword_100AD8D78);
  __chkstk_darwin(v12 - 8);
  v147 = &v144 - v13;
  v153 = a1;
  v154 = a2;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v151 = a7;
  v152 = a8;
  if ((a8 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a8) & 0xF;
  }

  else
  {
    v15 = a7 & 0xFFFFFFFFFFFFLL;
  }

  v159 = v14;
  v146 = v15;
  if (v14)
  {
    sub_1000F24EC(&unk_100AD5B10);
    v16 = swift_allocObject();
    if (v15)
    {
      *(v16 + 16) = xmmword_100941FE0;
      *(v16 + 56) = &type metadata for String;
      v17 = sub_100031B20();
      v18 = v154;
      *(v16 + 32) = v153;
      *(v16 + 40) = v18;
      *(v16 + 96) = &type metadata for String;
      *(v16 + 104) = v17;
      v19 = v155;
      *(v16 + 64) = v17;
      *(v16 + 72) = v19;
      v21 = v149;
      v20 = v150;
      *(v16 + 80) = v149;
      *(v16 + 136) = &type metadata for String;
      *(v16 + 144) = v17;
      v22 = v158;
      *(v16 + 112) = v158;
      *(v16 + 120) = v20;
      *(v16 + 176) = &type metadata for String;
      *(v16 + 184) = v17;
      v23 = v152;
      *(v16 + 152) = v151;
      *(v16 + 160) = v23;
    }

    else
    {
      *(v16 + 16) = xmmword_100942000;
      *(v16 + 56) = &type metadata for String;
      v28 = sub_100031B20();
      v29 = v154;
      *(v16 + 32) = v153;
      *(v16 + 40) = v29;
      *(v16 + 96) = &type metadata for String;
      *(v16 + 104) = v28;
      v30 = v155;
      *(v16 + 64) = v28;
      *(v16 + 72) = v30;
      v21 = v149;
      v20 = v150;
      *(v16 + 80) = v149;
      *(v16 + 136) = &type metadata for String;
      *(v16 + 144) = v28;
      v22 = v158;
      *(v16 + 112) = v158;
      *(v16 + 120) = v20;
    }
  }

  else
  {
    sub_1000F24EC(&unk_100AD5B10);
    v24 = swift_allocObject();
    if (v15)
    {
      *(v24 + 16) = xmmword_100942000;
      *(v24 + 56) = &type metadata for String;
      v25 = sub_100031B20();
      v22 = v158;
      v21 = v149;
      v20 = v150;
      *(v24 + 32) = v158;
      *(v24 + 40) = v20;
      *(v24 + 96) = &type metadata for String;
      *(v24 + 104) = v25;
      v26 = v155;
      *(v24 + 64) = v25;
      *(v24 + 72) = v26;
      *(v24 + 80) = v21;
      *(v24 + 136) = &type metadata for String;
      *(v24 + 144) = v25;
      v27 = v152;
      *(v24 + 112) = v151;
      *(v24 + 120) = v27;
    }

    else
    {
      *(v24 + 16) = xmmword_100940050;
      *(v24 + 56) = &type metadata for String;
      v31 = sub_100031B20();
      v22 = v158;
      v21 = v149;
      v20 = v150;
      *(v24 + 32) = v158;
      *(v24 + 40) = v20;
      *(v24 + 96) = &type metadata for String;
      *(v24 + 104) = v31;
      v32 = v155;
      *(v24 + 64) = v31;
      *(v24 + 72) = v32;
      *(v24 + 80) = v21;
    }
  }

  v33 = static String.localizedStringWithFormat(_:_:)();
  v35 = v34;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v163 = &_swiftEmptyDictionarySingleton;
  sub_10009CF5C(v33, v35, 7u, isUniquelyReferenced_nonNull_native);
  *&v162 = v163;
  v37 = sub_1000F24EC(&unk_100AD5B10);
  v38 = swift_allocObject();
  v156 = xmmword_100940050;
  *(v38 + 16) = xmmword_100940050;
  *(v38 + 56) = &type metadata for String;
  v39 = sub_100031B20();
  *(v38 + 32) = v22;
  *(v38 + 40) = v20;
  *(v38 + 96) = &type metadata for String;
  *(v38 + 104) = v39;
  v40 = v155;
  *(v38 + 64) = v39;
  *(v38 + 72) = v40;
  *(v38 + 80) = v21;

  v41 = static String.localizedStringWithFormat(_:_:)();
  v43 = v42;

  v44 = v159;
  if (v159)
  {

    v45 = swift_allocObject();
    *(v45 + 16) = v156;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = v39;
    *(v45 + 32) = v153;
    *(v45 + 40) = v154;
    *(v45 + 96) = &type metadata for String;
    *(v45 + 104) = v39;
    *(v45 + 72) = v40;
    *(v45 + 80) = v21;

    v41 = static String.localizedStringWithFormat(_:_:)();
    v43 = v46;
  }

  v47 = v162;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v163 = v47;
  sub_10009CF5C(v41, v43, 3u, v48);
  v49 = v163;
  v50 = swift_allocObject();
  v162 = xmmword_100940080;
  *(v50 + 16) = xmmword_100940080;
  *(v50 + 56) = &type metadata for String;
  *(v50 + 64) = v39;
  *(v50 + 32) = v158;
  *(v50 + 40) = v20;

  v51 = static String.localizedStringWithFormat(_:_:)();
  v53 = v52;

  if (v44)
  {

    v54 = swift_allocObject();
    *(v54 + 16) = v162;
    *(v54 + 56) = &type metadata for String;
    *(v54 + 64) = v39;
    *(v54 + 32) = v153;
    *(v54 + 40) = v154;

    v51 = static String.localizedStringWithFormat(_:_:)();
    v53 = v55;
  }

  v56 = swift_isUniquelyReferenced_nonNull_native();
  v163 = v49;
  sub_10009CF5C(v51, v53, 4u, v56);
  v157 = v163;
  v57 = swift_allocObject();
  v148 = xmmword_100942000;
  *(v57 + 16) = xmmword_100942000;
  *(v57 + 56) = &type metadata for String;
  *(v57 + 64) = v39;
  v58 = v155;
  *(v57 + 32) = v155;
  *(v57 + 40) = v21;
  *(v57 + 96) = &type metadata for String;
  *(v57 + 104) = v39;
  *(v57 + 72) = v158;
  *(v57 + 80) = v20;
  *(v57 + 136) = &type metadata for String;
  *(v57 + 144) = v39;
  v59 = v152;
  *(v57 + 112) = v151;
  *(v57 + 120) = v59;

  v60 = static String.localizedStringWithFormat(_:_:)();
  v62 = v61;

  v160 = v39;
  v161 = v37;
  if (v159)
  {

    v63 = swift_allocObject();
    *(v63 + 16) = v148;
    *(v63 + 56) = &type metadata for String;
    *(v63 + 64) = v39;
    *(v63 + 32) = v153;
    *(v63 + 40) = v154;
    *(v63 + 96) = &type metadata for String;
    *(v63 + 104) = v39;
    *(v63 + 72) = v58;
    *(v63 + 80) = v21;
    *(v63 + 136) = &type metadata for String;
    *(v63 + 144) = v39;
    *(v63 + 112) = v158;
    *(v63 + 120) = v20;

    v60 = static String.localizedStringWithFormat(_:_:)();
    v62 = v64;
  }

  else
  {
    if (v146)
    {
      v65 = v157;
      goto LABEL_25;
    }

    v140 = swift_allocObject();
    *(v140 + 16) = v156;
    v141 = v160;
    *(v140 + 56) = &type metadata for String;
    *(v140 + 64) = v141;
    v142 = v150;
    *(v140 + 32) = v158;
    *(v140 + 40) = v142;
    *(v140 + 96) = &type metadata for String;
    *(v140 + 104) = v141;
    *(v140 + 72) = v155;
    *(v140 + 80) = v149;

    v60 = static String.localizedStringWithFormat(_:_:)();
    v62 = v143;
  }

  v65 = v157;

LABEL_25:

  v66 = swift_isUniquelyReferenced_nonNull_native();
  v163 = v65;
  sub_10009CF5C(v60, v62, 2u, v66);
  v67 = v163;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v163 = v67;
  sub_10009CF5C(v60, v62, 1u, v68);
  v69 = v163;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v163 = v69;
  sub_10009CF5C(0, 0xE000000000000000, 6u, v70);
  v71 = 0;
  v73 = v163 + 64;
  v72 = *(v163 + 8);
  *&v148 = v163;
  v74 = 1 << v163[32];
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v163 = &_swiftEmptyDictionarySingleton;
  v76 = v75 & v72;
  v77 = (v74 + 63) >> 6;
  v78 = NSForegroundColorAttributeName;
  v144 = NSFontAttributeName;
  v79 = &selRef_initWithName_managedObjectModel_;
  v146 = v73;
  for (i = v77; ; v77 = i)
  {
    v85 = v78;
    if (!v76)
    {
      break;
    }

LABEL_37:
    v87 = __clz(__rbit64(v76)) | (v71 << 6);
    v88 = *(v148 + 56);
    LODWORD(v159) = *(*(v148 + 48) + v87);
    v89 = (v88 + 16 * v87);
    v91 = *v89;
    v90 = v89[1];
    v92 = objc_allocWithZone(NSMutableAttributedString);

    *&v156 = v91;
    v157 = v90;
    v93 = String._bridgeToObjectiveC()();
    v94 = [v92 initWithString:v93];

    if (qword_100AD0338 != -1)
    {
      swift_once();
    }

    v95 = qword_100B30330;
    v96 = swift_allocObject();
    *(v96 + 16) = v162;
    v97 = v160;
    *(v96 + 56) = &type metadata for String;
    *(v96 + 64) = v97;
    *(v96 + 32) = v153;
    *(v96 + 40) = v154;

    static String.localizedStringWithFormat(_:_:)();

    v98 = [v94 v79[125]];
    v99 = String._bridgeToObjectiveC()();

    v100 = [v98 rangeOfString:v99 options:1];
    v101 = v79;
    v103 = v102;

    [v94 addAttribute:v85 value:v95 range:{v100, v103}];
    if (qword_100AD0340 != -1)
    {
      swift_once();
    }

    v104 = qword_100B30338;
    v105 = swift_allocObject();
    *(v105 + 16) = v162;
    v106 = v160;
    *(v105 + 56) = &type metadata for String;
    *(v105 + 64) = v106;
    *(v105 + 32) = v155;
    *(v105 + 40) = v149;

    static String.localizedStringWithFormat(_:_:)();

    v107 = [v94 v101[125]];
    v108 = String._bridgeToObjectiveC()();

    v109 = [v107 rangeOfString:v108 options:1];
    v111 = v110;

    [v94 addAttribute:v85 value:v104 range:{v109, v111}];
    if (qword_100AD0328 != -1)
    {
      swift_once();
    }

    v112 = qword_100B30320;
    v113 = swift_allocObject();
    *(v113 + 16) = v162;
    v114 = v160;
    *(v113 + 56) = &type metadata for String;
    *(v113 + 64) = v114;
    *(v113 + 32) = v158;
    *(v113 + 40) = v150;

    static String.localizedStringWithFormat(_:_:)();

    v115 = [v94 v101[125]];
    v116 = String._bridgeToObjectiveC()();

    v117 = [v115 rangeOfString:v116 options:1];
    v119 = v118;

    [v94 addAttribute:v85 value:v112 range:{v117, v119}];
    if (qword_100AD0330 != -1)
    {
      swift_once();
    }

    v120 = qword_100B30328;
    v121 = swift_allocObject();
    *(v121 + 16) = v162;
    v122 = v160;
    *(v121 + 56) = &type metadata for String;
    *(v121 + 64) = v122;
    *(v121 + 32) = v151;
    *(v121 + 40) = v152;

    static String.localizedStringWithFormat(_:_:)();

    v123 = [v94 v101[125]];
    v124 = String._bridgeToObjectiveC()();

    v125 = [v123 rangeOfString:v124 options:1];
    v127 = v126;

    [v94 addAttribute:v85 value:v120 range:{v125, v127}];
    v78 = v85;
    if (v159 > 3)
    {
      if (v159 > 5)
      {
        v128 = &selRef_initWithName_managedObjectModel_;
        v129 = &selRef_initWithName_managedObjectModel_;
        if (v159 != 6)
        {

          goto LABEL_54;
        }
      }

      else
      {
        v128 = &selRef_initWithName_managedObjectModel_;
        v129 = &selRef_initWithName_managedObjectModel_;
      }
    }

    else
    {
      v128 = &selRef_initWithName_managedObjectModel_;
      v129 = &selRef_initWithName_managedObjectModel_;
    }

    v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v130 & 1) == 0)
    {
      v131 = &qword_100B303F8;
      if (qword_100AD0400 != -1)
      {
        swift_once();
        v131 = &qword_100B303F8;
      }

      goto LABEL_56;
    }

LABEL_54:
    v131 = &qword_100B303A0;
    if (qword_100AD03A8 != -1)
    {
      swift_once();
      v131 = &qword_100B303A0;
    }

LABEL_56:
    v132 = *v131;
    v133 = [v94 v128[125]];
    v134 = String._bridgeToObjectiveC()();

    v135 = [v133 v129[126]];
    v137 = v136;

    [v94 addAttribute:v144 value:v132 range:{v135, v137}];
    v138 = v159;
    if (v159 > 3)
    {
      if (v159 > 5)
      {
        v79 = &selRef_initWithName_managedObjectModel_;
        if (v159 != 6)
        {

          goto LABEL_29;
        }
      }

      else
      {
        v79 = &selRef_initWithName_managedObjectModel_;
      }
    }

    else
    {
      v79 = &selRef_initWithName_managedObjectModel_;
    }

    v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v139 & 1) == 0)
    {
      v80 = &qword_100B303F0;
      if (qword_100AD03F8 != -1)
      {
        swift_once();
        v80 = &qword_100B303F0;
      }

      goto LABEL_31;
    }

LABEL_29:
    v80 = &qword_100B30398;
    if (qword_100AD03A0 != -1)
    {
      swift_once();
      v80 = &qword_100B30398;
    }

LABEL_31:
    v76 &= v76 - 1;
    v81 = *v80;
    sub_10009D8F8(v81);

    v82 = v94;
    v83 = v147;
    AttributedString.init(_:)();
    v84 = type metadata accessor for AttributedString();
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
    sub_10009E328(v83, v138);

    v73 = v146;
  }

  while (1)
  {
    v86 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v86 >= v77)
    {

      return;
    }

    v76 = *&v73[8 * v86];
    ++v71;
    if (v76)
    {
      v71 = v86;
      goto LABEL_37;
    }
  }

  __break(1u);
}

uint64_t sub_10008F5AC@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 24))(*a1, *(a1 + 1), *(a1 + 2));
  *a2 = result;
  return result;
}

uint64_t sub_10008F5F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100ADA888);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA890);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA890);
  v13 = sub_1000F24EC(&qword_100AE4280);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_100021CEC(v11, a1, &qword_100AE4280);
  }

  sub_100004F84(v11, &qword_100ADA890);
  sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100ADA888);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for WorkoutIconAssetMetadata();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a1, v5, v15);
    (*(v16 + 56))(a1, 0, 1, v15);
  }

  else
  {
    v19 = *v5;
    v18 = v5[1];
    type metadata accessor for WorkoutIconAssetMetadata();
    sub_10004A6D8(&qword_100ADA898, &type metadata accessor for WorkoutIconAssetMetadata);
    Data.asObject<A>(of:)();
    sub_1000340DC(v19, v18);
  }

  sub_1000082B4(a1, v9, &qword_100AE4280);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_100014318(v9, v1 + v12, &qword_100ADA890);
  return swift_endAccess();
}

uint64_t sub_10008F998()
{
  sub_10008F5F4(v0[6]);

  v1 = v0[11];
  v2 = v0[12];

  return _swift_task_switch(sub_10009A64C, v1, v2);
}

void sub_10008FA14()
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
  v13 = *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel);
  v14 = *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_labelTextProvider);
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

  v18 = *(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel);
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

void sub_10008FDDC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel) setHidden:0];
  v3 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel;
  [*(v0 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel) setHidden:0];
  v60 = v3;
  [*(v0 + v3) setTextAlignment:1];
  [*(v0 + v2) setTextAlignment:1];
  v4 = *(v0 + v2);
  v5 = [v4 superview];
  if (v5)
  {
    v6 = v5;
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v4 topAnchor];
    v8 = [v6 topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    [v9 setConstant:12.0];
    if (v9)
    {
      [v9 setActive:1];
    }
  }

  else
  {
    v9 = 0;
    v6 = v4;
  }

  v10 = *(v1 + v2);
  v11 = [v10 superview];
  if (v11)
  {
    v12 = v11;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [v10 leadingAnchor];
    v14 = [v12 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    [v15 setConstant:8.0];
    if (v15)
    {
      [v15 setActive:1];
    }
  }

  else
  {
    v15 = 0;
    v12 = v10;
  }

  v16 = *(v1 + v2);
  v17 = [v16 superview];
  if (v17)
  {
    v18 = v17;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v16 trailingAnchor];
    v20 = [v18 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    [v21 setConstant:-8.0];
    if (v21)
    {
      [v21 setActive:1];
    }
  }

  else
  {
    v21 = 0;
    v18 = v16;
  }

  v22 = *&v60[v1];
  v23 = sub_100028DA0(0, 1, 12.0);

  v24 = *&v60[v1];
  v25 = [v24 superview];
  if (v25)
  {
    v26 = v25;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v24 leadingAnchor];
    v28 = [v26 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    [v29 setConstant:12.0];
    if (v29)
    {
      [v29 setActive:1];
    }
  }

  else
  {
    v29 = 0;
    v26 = v24;
  }

  v30 = *&v60[v1];
  v31 = [v30 superview];
  if (v31)
  {
    v32 = v31;
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [v30 trailingAnchor];
    v34 = [v32 trailingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    [v35 setConstant:-12.0];
    if (v35)
    {
      [v35 setActive:1];
    }
  }

  else
  {
    v35 = 0;
    v32 = v30;
  }

  v36 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
  v37 = *(v1 + v2);
  v38 = *(v1 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView);
  v39 = v37;
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = [v38 topAnchor];
  v41 = [v39 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  [v42 setConstant:5.0];
  [v42 setActive:1];

  v43 = *&v60[v1];
  v44 = *(v1 + v36);
  v45 = v43;
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  v46 = [v44 bottomAnchor];
  v47 = [v45 topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  [v48 setConstant:-5.0];
  [v48 setActive:1];

  v49 = *(v1 + v36);
  v50 = [v49 superview];
  if (v50)
  {
    v51 = v50;
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = [v49 leadingAnchor];
    v53 = [v51 leadingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];

    [v54 setConstant:12.0];
    if (v54)
    {
      [v54 setActive:1];
    }
  }

  else
  {
    v54 = 0;
    v51 = v49;
  }

  v55 = *(v1 + v36);
  v56 = [v55 superview];
  if (v56)
  {
    v57 = v56;
    [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = [v55 trailingAnchor];
    v59 = [v57 trailingAnchor];
    v61 = [v58 constraintEqualToAnchor:v59];

    [v61 setConstant:-12.0];
    if (v61)
    {
      [v61 setActive:1];
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v61 = 0;
    v57 = v55;
  }
}

uint64_t sub_100090620()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100090728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1000907DC(a1, v4, v5, v6);
}

uint64_t sub_1000907DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1000F24EC(&qword_100AE4280);
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutIconAssetMetadata();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[11] = v7;
  v4[12] = v6;

  return _swift_task_switch(sub_100090908, v7, v6);
}

uint64_t sub_100090908()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset];
    v0[14] = v2;
    if (v2)
    {
      v3 = *&v2[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata];
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

        return _swift_task_switch(sub_10008F998, v6, v8);
      }

      v10 = v0[7];
      v11 = v0[8];
      v12 = v0[6];

      (*(v11 + 56))(v12, 1, 1, v10);
      sub_100004F84(v0[6], &qword_100AE4280);
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

void sub_100090ABC()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_100090B20(v2, v3, v4);
}

void sub_100090B20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_1000F24EC(&unk_100AD4790);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v32 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a2)
    {
      v35 = a3;
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = a2;
      v36 = v21;
      v22 = v19[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
      v33 = v11;
      if (v22 > 3 && v22 > 6)
      {
        v24 = 1;
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v34 = a2;

      v23 = v19;

      (*(v6 + 16))(v17, v35, v5);
      (*(v6 + 56))(v17, 0, 1, v5);
      if (v24)
      {
        goto LABEL_11;
      }

      sub_1000082B4(v17, v15, &unk_100AD4790);
      if ((*(v6 + 48))(v15, 1, v5) == 1)
      {
        sub_100004F84(v15, &unk_100AD4790);
      }

      else
      {
        v26 = v33;
        (*(v6 + 32))(v33, v15, v5);
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v28 = v27;
        v29 = *(v6 + 8);
        v29(v9, v5);
        v29(v26, v5);
        if (v28 < 0.1)
        {
LABEL_11:
          v25 = v34;
          sub_1007B58F8(v20, v34);

LABEL_16:
          sub_100004F84(v17, &unk_100AD4790);

          goto LABEL_17;
        }
      }

      v30 = objc_opt_self();
      aBlock[4] = sub_1007B7D80;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      aBlock[3] = &unk_100A7DC08;
      v31 = _Block_copy(aBlock);

      [v30 animateWithDuration:0x10000 delay:v31 options:0 animations:0.1 completion:0.0];

      _Block_release(v31);

      goto LABEL_16;
    }
  }

  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
LABEL_17:
    v23[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
  }
}

uint64_t sub_100091090()
{

  return swift_deallocObject();
}

uint64_t sub_1000910F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 41);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_1000911D0(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_1000911D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 121) = a6;
  *(v6 + 120) = a5;
  *(v6 + 40) = a4;
  type metadata accessor for MainActor();
  *(v6 + 48) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 56) = v8;
  *(v6 + 64) = v7;

  return _swift_task_switch(sub_100091270, v8, v7);
}

uint64_t sub_100091270()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    if (((1 << *(v0 + 120)) & 0x74) != 0)
    {
      v2 = qword_100ACFC28;
      v3 = &qword_100ADE7C8;
    }

    else
    {
      v2 = qword_100ACFC20;
      v3 = &qword_100ADE7C0;
    }

    if (v2 != -1)
    {
      v8 = Strong;
      swift_once();
      Strong = v8;
    }

    v6 = *v3;
    *(v0 + 80) = v6;
    *(v0 + 88) = *(Strong + OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView);
    *(v0 + 96) = sub_1000913E0(*(v0 + 121));
    *(v0 + 104) = v7;
    swift_retain_n();

    return _swift_task_switch(sub_10008A16C, v6, 0);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

unint64_t sub_1000913E0(char a1)
{
  result = 0x6F746F6870;
  switch(a1)
  {
    case 1:
      result = 0x6F65646976;
      break;
    case 2:
      result = 0x636973756DLL;
      break;
    case 3:
      result = 0x7374736163646F70;
      break;
    case 4:
      result = 1802465122;
      break;
    case 5:
      result = 0x6D726F6665766177;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x722E657275676966;
      break;
    case 8:
      result = 0x772E657275676966;
      break;
    case 9:
      result = 0x6574756F72;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6F6E2E636973756DLL;
      break;
    case 13:
      result = 0x6F702E7974726170;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100091598(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [*(Strong + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkView) alpha];
    if (a2)
    {
      if (v7 != 1.0)
      {
        v8 = *&v6[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkViewLeadingSpaceConstraint];
        if (v8)
        {
          [v8 setActive:1];
        }

        if (a3)
        {
          v9 = 0.3;
        }

        else
        {
          v9 = 0.0;
        }

        v10 = objc_opt_self();
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23 = sub_100600D88;
        v24 = v11;
        aBlock = _NSConcreteStackBlock;
        v20 = 1107296256;
        v21 = sub_100006C7C;
        v22 = &unk_100A75B98;
        v12 = _Block_copy(&aBlock);

        [v10 animateWithDuration:4 delay:v12 options:0 animations:v9 completion:0.0];

        goto LABEL_16;
      }
    }

    else if (v7 != 0.0)
    {
      if (a3)
      {
        v13 = 0.3;
      }

      else
      {
        v13 = 0.0;
      }

      v14 = objc_opt_self();
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = sub_100600D78;
      v24 = v15;
      aBlock = _NSConcreteStackBlock;
      v20 = 1107296256;
      v21 = sub_100006C7C;
      v22 = &unk_100A75B48;
      v12 = _Block_copy(&aBlock);
      v16 = v6;

      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v23 = sub_100600D80;
      v24 = v17;
      aBlock = _NSConcreteStackBlock;
      v20 = 1107296256;
      v21 = sub_10003264C;
      v22 = &unk_100A75B70;
      v18 = _Block_copy(&aBlock);

      [v14 animateWithDuration:4 delay:v12 options:v18 animations:v13 completion:0.0];

      _Block_release(v18);
LABEL_16:
      _Block_release(v12);
      return;
    }
  }
}

void sub_1000918D8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v6 = type metadata accessor for Date();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = __chkstk_darwin(v6);
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v62 = &v58 - v9;
  v10 = sub_1000F24EC(&unk_100AD4790);
  v11 = __chkstk_darwin(v10 - 8);
  v64 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v58 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v18);
  v20 = &v58 - v19;
  v21 = sub_1000F24EC(&qword_100AD1420);
  v22 = __chkstk_darwin(v21 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v58 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v59 = v17;
      v61 = a2;
      v28 = Strong;
      (*(v15 + 16))(v26, a3, v14);
      (*(v15 + 56))(v26, 0, 1, v14);
      v29 = OBJC_IVAR____TtC7Journal12MapAssetView_latestImageRequestID;
      swift_beginAccess();
      v30 = *(v18 + 48);
      sub_1000082B4(v26, v20, &qword_100AD1420);
      v60 = v28;
      sub_1000082B4(&v28[v29], &v20[v30], &qword_100AD1420);
      v31 = *(v15 + 48);
      if (v31(v20, 1, v14) == 1)
      {
        v32 = v61;
        v33 = v61;
        sub_100004F84(v26, &qword_100AD1420);
        if (v31(&v20[v30], 1, v14) == 1)
        {
          sub_100004F84(v20, &qword_100AD1420);
          goto LABEL_16;
        }
      }

      else
      {
        sub_1000082B4(v20, v24, &qword_100AD1420);
        v36 = v31(&v20[v30], 1, v14);
        v32 = v61;
        if (v36 != 1)
        {
          v39 = v59;
          (*(v15 + 32))(v59, &v20[v30], v14);
          sub_100006964(&qword_100AD9220, &type metadata accessor for UUID);
          v40 = v32;
          v41 = dispatch thunk of static Equatable.== infix(_:_:)();
          v42 = *(v15 + 8);
          v42(v39, v14);
          sub_100004F84(v26, &qword_100AD1420);
          v42(v24, v14);
          v32 = v61;
          sub_100004F84(v20, &qword_100AD1420);
          if (v41)
          {
LABEL_16:
            v43 = v60;
            [*&v60[OBJC_IVAR____TtC7Journal12MapAssetView_mapThumbnailView] setImage:v32];
            v44 = swift_allocObject();
            swift_unknownObjectWeakInit();
            if (v43[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 3u)
            {
              v45 = v67;
              v46 = v68;
              v47 = v66;
              if (v43[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 6u)
              {
                v48 = 1;
LABEL_20:

                v32 = v60;

                (*(v47 + 16))(v46, v65, v45);
                (*(v47 + 56))(v46, 0, 1, v45);
                if (v48)
                {
LABEL_21:
                  sub_10009239C();
                  goto LABEL_26;
                }

                v49 = v64;
                sub_1000082B4(v46, v64, &unk_100AD4790);
                if ((*(v47 + 48))(v49, 1, v45) == 1)
                {
                  sub_100004F84(v49, &unk_100AD4790);
                }

                else
                {
                  v50 = v62;
                  (*(v47 + 32))(v62, v49, v45);
                  v51 = v63;
                  static Date.now.getter();
                  Date.timeIntervalSince(_:)();
                  v53 = v52;
                  v54 = *(v47 + 8);
                  v54(v51, v45);
                  v54(v50, v45);
                  if (v53 < 0.1)
                  {
                    goto LABEL_21;
                  }
                }

                v55 = objc_opt_self();
                aBlock[4] = sub_100092514;
                aBlock[5] = v44;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_100006C7C;
                aBlock[3] = &unk_100A61AB8;
                v56 = _Block_copy(aBlock);

                [v55 animateWithDuration:0x10000 delay:v56 options:0 animations:0.1 completion:0.0];
                _Block_release(v56);
LABEL_26:

                sub_100004F84(v46, &unk_100AD4790);

                [v32 setNeedsLayout];

                v57 = v32[OBJC_IVAR____TtC7Journal12MapAssetView_mapType];
                if (!v57)
                {
                  v32[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
                }

                goto LABEL_28;
              }
            }

            else
            {
              v45 = v67;
              v46 = v68;
              v47 = v66;
            }

            v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
            goto LABEL_20;
          }

          goto LABEL_14;
        }

        v37 = v61;
        sub_100004F84(v26, &qword_100AD1420);
        (*(v15 + 8))(v24, v14);
      }

      sub_100004F84(v20, &unk_100AEEE20);
LABEL_14:
      v38 = v60;
      [v60 setNeedsLayout];

      goto LABEL_28;
    }
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v34[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
  }

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v32 = v35;
    [v35 setNeedsLayout];
LABEL_28:
  }
}

void sub_1000922C4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1000918D8(v5, v6, v0 + v2, v7);
}

void sub_10009239C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView);

    [v2 setAlpha:1.0];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);

    [v5 setAlpha:1.0];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtC7Journal12MapAssetView_mapThumbnailView);

    [v8 setAlpha:1.0];
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 + OBJC_IVAR____TtC7Journal12MapAssetView_placeholderView);

    [v11 setHidden:1];
  }
}

void sub_100092524()
{
  *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading) = 1;
  if (qword_100ACFAE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AD9000);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Error loading map: %@", v3, 0xCu);
    sub_100004F84(v4, &unk_100AD4BB0);
  }
}

void sub_100092698()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_100092768(v5, v6, v0 + v2, v7);
}

void sub_100092768(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = a4;
  v6 = type metadata accessor for Date();
  v69 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v65 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v60 - v9;
  v10 = sub_1000F24EC(&unk_100AD4790);
  v11 = __chkstk_darwin(v10 - 8);
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = &v60 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v67 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v17);
  v19 = &v60 - v18;
  v20 = sub_1000F24EC(&qword_100AD1420);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v60 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v61 = v6;
      v62 = a2;
      v27 = Strong;
      (*(v15 + 16))(v25, a3, v14);
      (*(v15 + 56))(v25, 0, 1, v14);
      v28 = OBJC_IVAR____TtC7Journal14VideoAssetView_latestImageRequestID;
      swift_beginAccess();
      v29 = *(v17 + 48);
      sub_1000082B4(v25, v19, &qword_100AD1420);
      v63 = v27;
      sub_1000082B4(&v27[v28], &v19[v29], &qword_100AD1420);
      v30 = *(v15 + 48);
      if (v30(v19, 1, v14) == 1)
      {
        v31 = v62;
        v32 = v62;
        sub_100004F84(v25, &qword_100AD1420);
        if (v30(&v19[v29], 1, v14) == 1)
        {
          sub_100004F84(v19, &qword_100AD1420);
          goto LABEL_15;
        }
      }

      else
      {
        sub_1000082B4(v19, v23, &qword_100AD1420);
        v36 = v30(&v19[v29], 1, v14);
        v31 = v62;
        if (v36 != 1)
        {
          v38 = &v19[v29];
          v39 = v67;
          (*(v15 + 32))(v67, v38, v14);
          sub_100006964(&qword_100AD9220, &type metadata accessor for UUID);
          v40 = v31;
          v41 = dispatch thunk of static Equatable.== infix(_:_:)();
          v42 = *(v15 + 8);
          v42(v39, v14);
          sub_100004F84(v25, &qword_100AD1420);
          v42(v23, v14);
          v31 = v62;
          sub_100004F84(v19, &qword_100AD1420);
          if ((v41 & 1) == 0)
          {

            return;
          }

LABEL_15:
          v43 = v63;
          [*&v63[OBJC_IVAR____TtC7Journal14VideoAssetView_thumbnailView] setImage:v31];
          v44 = 1;
          (*((swift_isaMask & *v43) + 0x250))(1);
          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          if (*(v43 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 3u)
          {
            v47 = v69;
            v46 = v70;
            v48 = v61;
            if (*(v43 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 5u && *(v43 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) != 6)
            {
LABEL_22:

              (*(v47 + 16))(v46, v68, v48);
              (*(v47 + 56))(v46, 0, 1, v48);
              if (v44)
              {
                goto LABEL_23;
              }

              v52 = v66;
              sub_1000082B4(v46, v66, &unk_100AD4790);
              if ((*(v47 + 48))(v52, 1, v48) == 1)
              {
                sub_100004F84(v52, &unk_100AD4790);
              }

              else
              {
                v53 = v64;
                (*(v47 + 32))(v64, v52, v48);
                v54 = v65;
                static Date.now.getter();
                Date.timeIntervalSince(_:)();
                v56 = v55;
                v57 = *(v47 + 8);
                v57(v54, v48);
                v57(v53, v48);
                if (v56 < 0.1)
                {
LABEL_23:
                  swift_beginAccess();
                  v49 = swift_unknownObjectWeakLoadStrong();
                  if (v49)
                  {
                    v50 = v49;
                    v51 = *(v49 + OBJC_IVAR____TtC7Journal14VideoAssetView_thumbnailView);

                    [v51 setAlpha:1.0];

LABEL_30:
                    sub_100004F84(v46, &unk_100AD4790);

                    return;
                  }

LABEL_29:

                  goto LABEL_30;
                }
              }

              v58 = objc_opt_self();
              aBlock[4] = sub_1000B4208;
              aBlock[5] = v45;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100006C7C;
              aBlock[3] = &unk_100A820D0;
              v59 = _Block_copy(aBlock);

              [v58 animateWithDuration:0x10000 delay:v59 options:0 animations:0.1 completion:0.0];
              _Block_release(v59);
              goto LABEL_29;
            }
          }

          else
          {
            v47 = v69;
            v46 = v70;
            v48 = v61;
          }

          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_22;
        }

        v37 = v62;
        sub_100004F84(v25, &qword_100AD1420);
        (*(v15 + 8))(v23, v14);
      }

      sub_100004F84(v19, &unk_100AEEE20);

      return;
    }
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v33[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    (*((swift_isaMask & *v34) + 0x250))(0);
  }
}

uint64_t sub_100093208()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005508();
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000B4AC0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A7DC58;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006BA4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000934C0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100093520(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100817678(a1, v7, v1 + v4, v8);
}

uint64_t sub_1000935F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1000936B8(a1, v4, v5, v7, v6);
}

uint64_t sub_1000936B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_1000F24EC(&qword_100ADA6B0);
  v5[9] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AF0B70);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100AD5B80);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_1000F24EC(&qword_100AF0B78);
  v5[17] = swift_task_alloc();
  v8 = sub_1000F24EC(&qword_100AF0B80);
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = sub_1000F24EC(&qword_100AF0B88);
  v5[22] = swift_task_alloc();
  v5[23] = type metadata accessor for MainActor();
  v5[24] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[25] = v10;
  v5[26] = v9;

  return _swift_task_switch(sub_10009393C, v10, v9);
}

uint64_t sub_10009393C()
{
  v1 = v0[20];
  v14 = v0[19];
  v13 = v0[18];
  v2 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  NSManagedObjectContext.didMergeChangesNotifications.getter();
  NSManagedObjectContext.didSaveNotifications.getter();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  merge<A, B>(_:_:)();
  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v2, v4);
  sub_10000B58C(&qword_100AF0B90, &qword_100AF0B78);
  AsyncFilterSequence.init(_:isIncluded:)();
  static Duration.seconds(_:)();
  sub_10000B58C(&qword_100AF0B98, &qword_100AF0B80);
  AsyncSequence.debounce<>(for:tolerance:)();
  (*(v14 + 8))(v1, v13);
  v8 = AsyncDebounceSequence.makeAsyncIterator()();
  v0[27] = v8;
  v0[5] = v8;
  swift_beginAccess();
  v0[28] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v0[29] = v9;
  v10 = sub_1000F24EC(&qword_100AF0BA0);
  *v9 = v0;
  v9[1] = sub_100772408;
  v11 = v0[9];

  return AsyncDebounceSequence.Iterator.next()(v11, v10);
}

uint64_t sub_100093C08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v3 - 8);
  v63 = &v51 - v4;
  v68 = type metadata accessor for UTType();
  v5 = *(v68 - 8);
  v6 = __chkstk_darwin(v68);
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v51 - v8;
  v61 = type metadata accessor for FileStoreConfiguration();
  v9 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v11 = __chkstk_darwin(v65);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v51 - v17;
  v19 = type metadata accessor for AssetAttachment.AssetType(0);
  v20 = __chkstk_darwin(v19);
  v69 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v51 - v22;
  v24 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_attachments);
  v55 = a1;
  if (v24 >> 62)
  {
LABEL_42:
    v25 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v69;
  if (v25)
  {
    v27 = v9;
    v9 = 0;
    v72 = v24 & 0xFFFFFFFFFFFFFF8;
    v73 = v24 & 0xC000000000000001;
    v56 = (v27 + 8);
    v59 = (v5 + 48);
    v52 = (v5 + 32);
    v51 = (v5 + 8);
    v66 = v15;
    v67 = v13;
    v64 = v19;
    v70 = v25;
    v71 = v24;
    v57 = v23;
    v58 = v18;
    while (1)
    {
      if (v73)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }
      }

      else
      {
        if (v9 >= *(v72 + 16))
        {
          __break(1u);
          goto LABEL_42;
        }

        v5 = *(v24 + 8 * v9 + 32);

        v30 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_35;
        }
      }

      v31 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
      sub_100068AC8(v5 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v23, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        v37 = v70;
        if (EnumCaseMultiPayload)
        {

          v28 = type metadata accessor for AssetAttachment.AssetType;
        }

        else
        {

          v28 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
        }

        sub_10004FECC(v23, v28);
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload != 2)
      {
        break;
      }

      sub_10004FECC(v23, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v37 = v70;
LABEL_7:
      ++v9;
      v29 = v30 == v37;
      v24 = v71;
      if (v29)
      {
        goto LABEL_36;
      }
    }

    if (EnumCaseMultiPayload != 4)
    {

      sub_10004FECC(v23, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_39:
      sub_1000A7D30(v55);
    }

    sub_100068AC8(v5 + v31, v26, type metadata accessor for AssetAttachment.AssetType);
    v33 = swift_getEnumCaseMultiPayload();
    v34 = v33;
    if (v33 <= 1)
    {
      v36 = v26;
      if (v34)
      {
        sub_10004FECC(v26, type metadata accessor for AssetAttachment.AssetType);
        v40 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      v35 = v33 - 2;
      v36 = v26;
      if (v35 >= 2)
      {

        v36 = v26 + *(sub_1000F24EC(&qword_100AD33B8) + 48);
      }
    }

    sub_100068CF4(v36, v15);
    sub_100068AC8(v15, v13, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10004FECC(v15, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v38 = type metadata accessor for URL();
      (*(*(v38 - 8) + 32))(v18, v13, v38);
    }

    else
    {
      v39 = v60;
      static FileStoreConfiguration.shared.getter();
      FileStoreConfiguration.getAttachmentURL(from:)();

      (*v56)(v39, v61);
      v19 = v64;
      sub_10004FECC(v15, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v40 = 0;
LABEL_25:
    v41 = type metadata accessor for URL();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v18, v40, 1, v41);
    if ((*(v42 + 48))(v18, 1, v41) == 1)
    {
      sub_100004F84(v18, &unk_100AD6DD0);
    }

    else
    {
      URL.pathExtension.getter();
      v43 = v62;
      static UTType.data.getter();
      v44 = v63;
      UTType.init(filenameExtension:conformingTo:)();
      if ((*v59)(v44, 1, v68) != 1)
      {
        v46 = v54;
        (*v52)();
        static UTType.audio.getter();
        v53 = UTType.conforms(to:)();
        v47 = *v51;
        (*v51)(v43, v68);
        v47(v46, v68);
        v18 = v58;
        (*(v42 + 8))(v58, v41);
        v48 = sub_1000F24EC(&qword_100AD33B8);
        v23 = v57;
        sub_10004FECC(&v57[*(v48 + 48)], type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v15 = v66;
        v13 = v67;
        v19 = v64;
        if (v53)
        {

          goto LABEL_39;
        }

        goto LABEL_31;
      }

      sub_100004F84(v44, &unk_100AD7C40);
      v18 = v58;
      (*(v42 + 8))(v58, v41);
      v19 = v64;
      v23 = v57;
    }

    v45 = sub_1000F24EC(&qword_100AD33B8);
    sub_10004FECC(&v23[*(v45 + 48)], type metadata accessor for AssetAttachment.AssetType.FilePathType);
    v15 = v66;
    v13 = v67;
LABEL_31:

    v26 = v69;
    v37 = v70;
    goto LABEL_7;
  }

LABEL_36:

  v49 = type metadata accessor for URL();
  return (*(*(v49 - 8) + 56))(v55, 1, 1, v49);
}

void sub_100094550(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100094E98(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_100094E98(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

uint64_t sub_1000946E4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100180CD0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1000948A0(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1000F24EC(a3);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_100094B3C()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_10048E678;
  }

  else
  {
    v3 = sub_100094D9C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100094CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100094F10(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100094E98(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100822448();
        v14 = v16;
      }

      result = sub_100201074(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_100094D9C()
{
  v1 = *(v0 + 160);

  sub_100004F84(v1, &qword_100AF6E60);
  v2 = sub_10001DDD0(&qword_100AD5F58, &type metadata accessor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_100031E04;
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

unint64_t sub_100094E98(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100094F3C(a1, a2, v4);
}

unint64_t sub_100094F3C(uint64_t a1, uint64_t a2, uint64_t a3)
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

id sub_10009503C()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for JournalDividerView();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v3 = 1.0;
  if ((v1 & 1) == 0)
  {
    v4 = [v0 traitCollection];
    [v4 displayScale];
    v6 = v5;

    v3 = 1.0 / fmax(v6, 1.0);
  }

  v7 = *&v0[OBJC_IVAR____TtC7Journal18JournalDividerView_dividerView];
  [v0 bounds];
  return [v7 setFrame:{0.0, 0.0, CGRectGetWidth(v10), v3}];
}

double sub_100095150(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  memset(&slice, 0, sizeof(slice));
  v8 = a3 * 0.5;
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(*&a1, &slice, &remainder, a3 * 0.5, CGRectMinXEdge);
  x = slice.origin.x;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectDivide(v13, &slice, &remainder, v8, CGRectMaxXEdge);
  return x;
}

unint64_t sub_100095244()
{
  result = qword_100AD43D0;
  if (!qword_100AD43D0)
  {
    type metadata accessor for CustomJournalsController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD43D0);
  }

  return result;
}

void sub_10009532C()
{
  v1 = v0;
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CanvasTextView();
  v34.receiver = v1;
  v34.super_class = v6;
  objc_msgSendSuper2(&v34, "layoutSubviews");
  (*(v3 + 104))(v5, enum case for JournalFeatureFlags.followupPrompts(_:), v2);
  v7 = JournalFeatureFlags.isEnabled.getter();
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    v8 = [v1 textStorage];
    v9 = [v1 textStorage];
    v10 = [v9 length];

    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1002D7DD0;
    *(v12 + 24) = v11;
    v32 = sub_1002D826C;
    v33 = v12;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_10007E0A4;
    v31 = &unk_100A64C98;
    v13 = _Block_copy(&aBlock);
    v14 = v1;

    [v8 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v10 usingBlock:{0, v13}];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }
  }

  v16 = [v1 isEditable];
  [v1 frame];
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = 0.0;
  v36.size.height = 0.0;
  v17 = CGRectEqualToRect(v35, v36);
  if (v17)
  {
    return;
  }

  v18 = __chkstk_darwin(v17);
  *(&aBlock - 2) = v1;
  *(&aBlock - 8) = v16;
  __chkstk_darwin(v18);
  *(&aBlock - 2) = sub_10022DC30;
  *(&aBlock - 1) = v19;
  v20 = [v1 textStorage];
  v21 = [v20 length];

  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  v22 = [v1 textStorage];
  v23 = NSParagraphAttachmentAttributeName;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1002D835C;
  *(v24 + 24) = &aBlock - 4;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1002D8270;
  *(v25 + 24) = v24;
  v32 = sub_1002D826C;
  v33 = v25;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_10007E0A4;
  v31 = &unk_100A64C20;
  v26 = _Block_copy(&aBlock);

  [v22 enumerateAttribute:v23 inRange:0 options:v21 usingBlock:{0, v26}];

  _Block_release(v26);
  v27 = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
LABEL_11:
    __break(1u);
  }
}

uint64_t sub_10009581C()
{

  return swift_deallocObject();
}

id sub_1000958AC(uint64_t a1)
{
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 dataAttachments];
  if (!v7)
  {
    sub_1000065A8(0, &qword_100ADB750);
    v7 = NSSet.init(arrayLiteral:)();
  }

  NSSet.makeIterator()();

  NSFastEnumerationIterator.next()();
  while (v14)
  {
    sub_10002432C(&v13, &v12);
    type metadata accessor for JournalEntryAssetAttachmentMO();
    if (swift_dynamicCast())
    {
      v8 = v11;
      if ([v11 index] == a1)
      {
        goto LABEL_10;
      }
    }

    NSFastEnumerationIterator.next()();
  }

  v8 = 0;
LABEL_10:
  (*(v4 + 8))(v6, v3);
  return v8;
}

void sub_100095A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t))
{
  sub_1000082B4(a1, v9, &qword_100AD13D0);
  if (v10)
  {
    sub_1000065A8(0, &qword_100ADC5F0);
    if (swift_dynamicCast())
    {
      a5(v8, a2, a3);
    }
  }

  else
  {
    sub_100004F84(v9, &qword_100AD13D0);
  }
}

void sub_100095BD4(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  sub_10005D974(a1, v11);
  if (v12)
  {
    type metadata accessor for ResizableViewTextAttachment();
    if (swift_dynamicCast())
    {
      v5 = v10[1];
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
      type metadata accessor for MainActor();
      v7 = v5;
      v8 = static MainActor.shared.getter();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = &protocol witness table for MainActor;
      v9[4] = v7;
      sub_1003E9628(0, 0, v4, &unk_100949220, v9);
    }
  }

  else
  {
    sub_100004F84(v11, &qword_100AD13D0);
  }
}

uint64_t sub_100095D60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_100095DB0(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);

  v15 = a2;
  v14 = a3;
  v13(v15, v14, a4, a5, a6, a7);
}

void sub_100095E64(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + OBJC_IVAR____TtC7Journal15JournalTextView_blockQuoteLayerView);
    v15 = String._bridgeToObjectiveC()();
    [a1 addRenderingSurface:v14 key:v15 group:1 placement:0];

    (*((swift_isaMask & *v13) + 0x168))(a2, a3, a4, a5, a6);
  }
}

uint64_t sub_100095FB4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void sub_1000960A4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  sub_1000082B4(a1, v17, &qword_100AD13D0);
  if (v18)
  {
    sub_1000065A8(0, &qword_100ADFF70);
    if (swift_dynamicCast())
    {
      [v16 firstLineHeadIndent];
      *v9.i64 = *v8.i64 - trunc(*v8.i64);
      v10.f64[0] = NAN;
      v10.f64[1] = NAN;
      v15 = vnegq_f64(v10);
      v11 = *vbslq_s8(v15, v9, v8).i64 + -0.1;
      [v16 headIndent];
      v14 = v12;

      if (fabs(v11) < 0.01)
      {
        *v13.i64 = *v14.i64 - trunc(*v14.i64);
        if (fabs(*vbslq_s8(v15, v13, v14).i64 + -0.1) < 0.01)
        {
          *a5 = a2;
          return;
        }
      }
    }
  }

  else
  {
    sub_100004F84(v17, &qword_100AD13D0);
  }

  *a4 = 1;
}

uint64_t sub_1000961EC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  String.index(before:)();
  return String.subscript.getter();
}

void sub_100096310(double a1, double a2, double a3, double a4)
{
  v55 = type metadata accessor for CGPathFillRule();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BlockQuoteLayerView();
  v58.receiver = v4;
  v58.super_class = v11;
  objc_msgSendSuper2(&v58, "drawRect:", a1, a2, a3, a4);
  v12 = UIGraphicsGetCurrentContext();
  if (v12)
  {
    v56 = v12;
    CGContextSaveGState(v12);
    v13 = OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_quoteAreas;
    swift_beginAccess();
    v57 = v13;
    v14 = *&v4[v13];
    v15 = *(v14 + 16);
    v51 = OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_barInset;
    v52 = OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_topInset;

    v53 = v15;
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v48 = enum case for CGPathFillRule.winding(_:);
      v47 = (v9 + 104);
      v46 = (v9 + 8);
      v19 = (v14 + 64);
      v49 = v14;
      v50 = v4;
      while (1)
      {
        if (v17 >= *(v14 + 16))
        {
          __break(1u);
          return;
        }

        v25 = *(v19 - 3);
        v26 = *(v19 - 1);
        v27 = v17 + 1;
        v28 = *v19;
        if (v17 && (v29 = *&v4[v57], v30 = *(v29 + 16), v17 <= v30) && vabdd_f64(*(v29 + v16) + *(v29 + v16 + 16), v25) < 1.0)
        {
          v31 = v28;
          v32 = v17 >= v30 || v27 >= v30;
          v33 = v18;
          if (v32)
          {
            v34 = -4;
            p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
            goto LABEL_30;
          }

          v43 = 1;
          p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
        }

        else
        {
          v33 = v18;
          if (v28)
          {
            v35 = v28;

            v33 = v28;
          }

          p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
          v29 = *&v4[v57];
          v36 = *(v29 + 16);
          if (v17 >= v36 || v27 >= v36)
          {
            goto LABEL_29;
          }

          v43 = 0;
        }

        if (vabdd_f64(*(v29 + v16 + 80), v25 + v26) < 1.0)
        {
          if (v43)
          {
            v34 = -16;
          }

          else
          {
            v34 = -13;
          }

          goto LABEL_30;
        }

        if ((v43 & 1) == 0)
        {
LABEL_29:
          v34 = -1;
          goto LABEL_30;
        }

        v34 = -4;
LABEL_30:
        v38 = [objc_opt_self() bezierPathWithRoundedRect:v34 byRoundingCorners:*&v4[v51] cornerRadii:{v25 + *&v4[v52], 4.0, v26, 2.0, 2.0}];
        v39 = [v38 CGPath];

        v40 = v56;
        CGContextAddPath(v56, v39);
        if (qword_100AD0370 != -1)
        {
          swift_once();
        }

        v21 = [qword_100B30368 p:0.45 ivar:v46lyt[404]];
        v41 = v33;
        v42 = p_ivar_lyt;
        if (v33 || (v41 = v28) != 0)
        {
          v18 = v33;
          v20 = [v41 v42[404]];

          v21 = v20;
        }

        else
        {
          v18 = 0;
        }

        v22 = [v21 CGColor];
        CGContextSetFillColorWithColor(v40, v22);

        CGContextClosePath(v40);
        v23 = v54;
        v24 = v55;
        (*v47)(v54, v48, v55);
        CGContextRef.fillPath(using:)();

        (*v46)(v23, v24);
        v19 += 5;
        v16 += 40;
        v17 = v27;
        v14 = v49;
        v4 = v50;
        if (v53 == v27)
        {
          goto LABEL_36;
        }
      }
    }

    v18 = 0;
LABEL_36:

    v45 = v56;
    CGContextRestoreGState(v56);
  }
}

uint64_t sub_10009679C()
{
  *(v0 + 136) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10024AF94, v2, v1);
}

uint64_t sub_100096828()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  v5 = swift_allocObject();
  v0[15] = v5;
  *(v5 + 16) = &_swiftEmptyDictionarySingleton;
  v6 = swift_allocObject();
  v0[16] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v7 = v4;

  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1000A3970;
  v9 = v0[14];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_10025A788, v6, &type metadata for () + 8);
}

uint64_t sub_10009697C()
{

  return swift_deallocObject();
}

uint64_t sub_1000969B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000969F4()
{
  v0 = type metadata accessor for Calendar.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  sub_100006118(v4, qword_100B31258);
  sub_10000617C(v4, qword_100B31258);
  (*(v1 + 104))(v3, enum case for Calendar.Identifier.gregorian(_:), v0);
  Calendar.init(identifier:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100096B14()
{
  if (qword_100AD0BA0 != -1)
  {
    swift_once();
  }

  v38 = v0[27];
  v24 = v0[26];
  v42 = v0[25];
  v43 = v0[24];
  v31 = v0[23];
  v1 = v0[20];
  v37 = v0[21];
  v2 = v0[19];
  v39 = v0[18];
  v28 = v0[22];
  v29 = v0[17];
  v27 = v0[16];
  v40 = v0[14];
  v41 = v0[15];
  v3 = v0[12];
  v30 = v0[13];
  v36 = v3;
  v4 = v0[11];
  v33 = v0[9];
  v34 = v0[8];
  v35 = v0[10];
  v26 = v0[7];
  v32 = v0[6];
  v25 = sub_10000617C(v4, qword_100B31258);
  v5 = *(v3 + 56);
  v5(v1, 1, 1, v4);
  v6 = type metadata accessor for TimeZone();
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v5(v1, 1, 1, v4);
  v7(v2, 1, 1, v6);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  type metadata accessor for InsightsDataManager.Streaks(0);
  v23 = swift_allocBox();
  v0[28] = v23;
  v0[29] = v8;
  sub_100097248(v8);
  (*(v27 + 16))(v39, v26, v41);
  (*(v3 + 16))(v40, v25, v4);
  v9 = *(v28 + 16);
  v9(v42, v38, v37);
  v9(v43, v24, v37);
  v10 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v11 = (v29 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v36 + 80) + v11 + 8) & ~*(v36 + 80);
  v13 = (v30 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v28 + 80);
  v15 = (v14 + v13 + 8) & ~v14;
  v16 = (v31 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  v0[30] = v17;
  (*(v27 + 32))(v17 + v10, v39, v41);
  *(v17 + v11) = v32;
  (*(v36 + 32))(v17 + v12, v40, v4);
  *(v17 + v13) = v23;
  v18 = *(v28 + 32);
  v18(v17 + v15, v42, v37);
  v18(v17 + v16, v43, v37);
  (*(v33 + 104))(v35, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v34);
  v19 = v32;

  v20 = swift_task_alloc();
  v0[31] = v20;
  *v20 = v0;
  v20[1] = sub_10024A99C;
  v21 = v0[10];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_10025A8E0, v17, &type metadata for () + 8);
}

uint64_t sub_10009701C()
{
  v15 = type metadata accessor for Date();
  v1 = *(v15 - 8);
  v13 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v11 = (*(v1 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = type metadata accessor for Calendar();
  v2 = *(v14 - 8);
  v12 = (v11 + *(v2 + 80) + 8) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v6 + 8) & ~v6;
  v8 = (*(v5 + 64) + v6 + v7) & ~v6;
  (*(v1 + 8))(v0 + v13, v15);

  (*(v2 + 8))(v0 + v12, v14);

  v9 = *(v5 + 8);
  v9(v0 + v7, v4);
  v9(v0 + v8, v4);

  return swift_deallocObject();
}

uint64_t sub_100097248@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);
  v3(a1, 1, 1, v2);
  v4 = type metadata accessor for StreakSummary();
  v3(a1 + v4[5], 1, 1, v2);
  v3(a1 + v4[6], 1, 1, v2);
  *(a1 + v4[7]) = 0;
  v5 = type metadata accessor for InsightsDataManager.Streaks(0);
  v6 = a1 + v5[5];
  v3(v6, 1, 1, v2);
  v3(v6 + v4[5], 1, 1, v2);
  v3(v6 + v4[6], 1, 1, v2);
  *(v6 + v4[7]) = 0;
  v7 = a1 + v5[6];
  v3(v7, 1, 1, v2);
  v3(v7 + v4[5], 1, 1, v2);
  v3(v7 + v4[6], 1, 1, v2);
  *(v7 + v4[7]) = 0;
  v8 = a1 + v5[7];
  v3(v8, 1, 1, v2);
  v3(v8 + v4[5], 1, 1, v2);
  v3(v8 + v4[6], 1, 1, v2);
  *(v8 + v4[7]) = 0;
  v9 = a1 + v5[8];
  v3(v9, 1, 1, v2);
  v3(v9 + v4[5], 1, 1, v2);
  v3(v9 + v4[6], 1, 1, v2);
  *(v9 + v4[7]) = 0;
  v10 = a1 + v5[9];
  v3(v10, 1, 1, v2);
  v3(v10 + v4[5], 1, 1, v2);
  result = (v3)(v10 + v4[6], 1, 1, v2);
  *(v10 + v4[7]) = 0;
  return result;
}

uint64_t sub_100097540()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100097674;
  v5 = v0[10];
  v6 = v0[3];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

unint64_t sub_10009761C()
{
  result = qword_100AD5B40;
  if (!qword_100AD5B40)
  {
    type metadata accessor for AssetType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5B40);
  }

  return result;
}

uint64_t sub_100097674()
{

  return _swift_task_switch(sub_10009789C, 0, 0);
}

uint64_t sub_100097770()
{
  type metadata accessor for AssetType();
  sub_100824E08(&qword_100AD5B40, &type metadata accessor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

uint64_t type metadata accessor for VideoAssetGridView()
{
  result = qword_100AF1C80;
  if (!qword_100AF1C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009789C()
{
  v1 = v0[14];
  v2 = v0[3];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) == 1)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = *(v1 + 48);
    type metadata accessor for WidgetCenter();
    static WidgetCenter.shared.getter();
    dispatch thunk of WidgetCenter.reloadTimelines(ofKind:)();

    static WidgetCenter.shared.getter();
    dispatch thunk of WidgetCenter.reloadTimelines(ofKind:)();

    static WidgetCenter.shared.getter();
    v6._object = 0x80000001008F7C90;
    v6._countAndFlagsBits = 0xD000000000000012;
    WidgetCenter.invalidateRelevance(ofKind:)(v6);

    static WidgetCenter.shared.getter();
    v7._object = 0x80000001008F7CB0;
    v7._countAndFlagsBits = 0xD000000000000012;
    WidgetCenter.invalidateRelevance(ofKind:)(v7);

    sub_1000B973C(v2 + v5, type metadata accessor for StreakSummary);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_100097674;
    v9 = v0[10];
    v10 = v0[3];

    return AsyncStream.Iterator.next(isolation:)(v10, 0, 0, v9);
  }
}

uint64_t getEnumTagSinglePayload for AudioRecordingLiveActivityStopButton.Phase(unsigned __int8 *a1, unsigned int a2)
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

uint64_t type metadata accessor for VideoAssetView()
{
  result = qword_100AF4000;
  if (!qword_100AF4000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100097C08()
{
  v0 = type metadata accessor for JournalEntryCollectionViewController.State(0);
  __chkstk_darwin(v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [v8 presentingViewController];
    if ((v9 || (v9 = [v8 parentViewController]) != 0) && (v9, (objc_msgSend(v8, "isBeingDismissed") & 1) == 0))
    {
      v10 = [v8 isMovingFromParentViewController];

      if ((v10 & 1) == 0)
      {
        sub_100004F84(v5, &qword_100AD1420);
        v11 = *&v8[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];

        sub_1000082B4(v11 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v5, &qword_100AD1420);

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

LABEL_9:
  sub_1000082B4(v5, v2, &qword_100AD1420);
  v2[*(v0 + 20)] = 1;
  type metadata accessor for JournalEntryCollectionViewController(0);
  sub_1000249D4(&qword_100AD8488, type metadata accessor for JournalEntryCollectionViewController);
  RestorableController.addRestorableState(_:to:)();
  sub_100014124(v2, type metadata accessor for JournalEntryCollectionViewController.State);
  return sub_100004F84(v5, &qword_100AD1420);
}

void sub_100097ECC()
{
  sub_10006D1E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_10009822C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal14VideoAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC7Journal14VideoAssetView_timeObserver];
  *v9 = 0u;
  v9[1] = 0u;
  *&v4[OBJC_IVAR____TtC7Journal14VideoAssetView_playerStatusObserver] = 0;
  *&v4[OBJC_IVAR____TtC7Journal14VideoAssetView_playerTimeControlStatusObserver] = 0;
  v10 = OBJC_IVAR____TtC7Journal14VideoAssetView_thumbnailView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView] = 0;
  v11 = &v4[OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC7Journal14VideoAssetView_isLoaded] = 0;
  v4[OBJC_IVAR____TtC7Journal14VideoAssetView_didThumbnailFinishLoading] = 0;
  *&v4[OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset] = 0;
  *&v4[OBJC_IVAR____TtC7Journal14VideoAssetView_thumbnailOverride] = 0;
  v12 = OBJC_IVAR____TtC7Journal14VideoAssetView_latestImageRequestID;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v4[OBJC_IVAR____TtC7Journal14VideoAssetView_isAutoPlaying] = 0;
  v14 = CADynamicRangeHigh;
  *&v4[OBJC_IVAR____TtC7Journal14VideoAssetView_preferredVideoDynamicRange] = CADynamicRangeHigh;
  *&v4[OBJC_IVAR____TtC7Journal14VideoAssetView_resourceConservationLevelWhilePaused] = 0;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for VideoAssetView();
  v15 = v14;
  v16 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v17 = *((swift_isaMask & *v16) + 0x290);
  v18 = v16;
  v17(v18, v19);

  return v18;
}

uint64_t sub_10009844C(void *a1)
{
  v2 = sub_1000F24EC(&qword_100ADD460);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000CA14(a1, a1[3]);
  sub_10000F4A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for SceneSplitViewController.ContentType(0);
  sub_10000C59C(&qword_100ADD468, type metadata accessor for SceneSplitViewController.ContentType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000985C4(void *a1)
{
  v2 = sub_1000F24EC(&qword_100ADD4C0);
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v31 = &v24 - v3;
  v29 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v29);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100ADD4C8);
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_1000F24EC(&qword_100ADD4D0);
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100ADD4D8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  sub_10000CA14(a1, a1[3]);
  sub_10000F6EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10000D6E8(v34, v13, type metadata accessor for SceneSplitViewController.ContentType);
  v18 = sub_1000F24EC(&unk_100AD4BA0);
  v19 = (*(*(v18 - 8) + 48))(v13, 2, v18);
  if (v19)
  {
    if (v19 == 1)
    {
      v35 = 0;
      sub_1002EC13C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      v36 = 1;
      sub_1002EC0E8();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v27 + 8))(v7, v28);
    }

    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v20 = v30;
    sub_10001DB98(v13, v30, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v37 = 2;
    sub_10000F958();
    v21 = v31;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_10000C59C(&qword_100ADD4E0, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v22 = v33;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v32 + 8))(v21, v22);
    sub_10000D628(v20, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    return (*(v15 + 8))(v17, v14);
  }
}

uint64_t sub_100098B08(void *a1)
{
  v35 = sub_1000F24EC(&qword_100AE8068);
  v31 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v27 - v2;
  v3 = type metadata accessor for UUID();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v36 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AE8070);
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = sub_1000F24EC(&qword_100AE8078);
  v27 = *(v8 - 8);
  v28 = v8;
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AE8080);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  sub_10000CA14(a1, a1[3]);
  sub_10000D450();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1002A6868(v37, v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v18 = sub_1000F24EC(&qword_100AD47A0);
  v19 = (*(*(v18 - 8) + 48))(v13, 2, v18);
  if (v19)
  {
    if (v19 == 1)
    {
      v38 = 0;
      sub_100524F68();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v27 + 8))(v10, v28);
    }

    else
    {
      v39 = 1;
      sub_10001DA40();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v29 + 8))(v7, v30);
    }

    return (*(v15 + 8))(v17, v14);
  }

  else
  {
    v20 = v31;
    v21 = v33;
    v22 = v13;
    v23 = v34;
    (*(v33 + 32))(v36, v22, v34);
    v40 = 2;
    sub_100524F14();
    v24 = v32;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_1005239D8(&qword_100AD8280, &type metadata accessor for UUID);
    v25 = v35;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v20 + 8))(v24, v25);
    (*(v21 + 8))(v36, v23);
    return (*(v15 + 8))(v17, v14);
  }
}

void sub_10009907C()
{
  sub_1008154A0();
  v1 = [objc_opt_self() defaultCenter];
  v2 = String._bridgeToObjectiveC()();
  [v1 addObserver:v0 selector:"handleAllowedVideosNotification:" name:v2 object:0];
}

uint64_t sub_100099130()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1000A78D4;
  v2 = *(v0 + 16);

  return sub_1000994F4(v2);
}

void sub_1000991CC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v3 = *((swift_isaMask & *v2) + 0x58);
  v4 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v5 = v2;
  v3(1, v4);

  v6 = OBJC_IVAR____TtC7Journal14VideoAssetView_playerView;
  v7 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (v7)
  {
    v8 = v7;
    v9 = [v8 layer];
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
    }

    v11 = [v10 player];

    if (v11)
    {
      [v11 rate];
      v13 = v12;

      if (v13 > 0.0 && (sub_1007B7D90() & 1) == 0)
      {
        v14 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_thumbnailView);
        v15 = [v14 image];
        if (v15 && (v15, ([v14 isHidden] & 1) == 0) && (objc_msgSend(v14, "alpha"), v16 == 1.0))
        {

          sub_100815D10();
        }

        else
        {
          v17 = *(v1 + v6);
          if (v17)
          {
            v18 = v17;
            v19 = [v18 layer];
            objc_opt_self();
            v20 = swift_dynamicCastObjCClass();
            if (!v20)
            {
            }

            v21 = [v20 player];

            [v21 pause];
            v22 = *(v1 + v6);
            if (v22)
            {
              timescale = kCMTimeZero.timescale;
              flags = kCMTimeZero.flags;
              epoch = kCMTimeZero.epoch;
              v26 = v22;
              v27 = [v26 layer];
              objc_opt_self();
              v28 = swift_dynamicCastObjCClass();
              if (!v28)
              {
              }

              v29 = [v28 player];

              v37 = epoch;
              value = kCMTimeZero.value;
              v39 = timescale;
              v40 = flags;
              v41 = epoch;
              v33 = epoch;
              v34 = kCMTimeZero.value;
              v35 = timescale;
              v36 = flags;
              v30 = kCMTimeZero.value;
              v31 = timescale;
              v32 = flags;
              [v29 seekToTime:&value toleranceBefore:&v34 toleranceAfter:&v30];
            }
          }

          sub_1000999CC();
        }
      }
    }
  }
}

uint64_t sub_1000994F4(uint64_t a1)
{
  v2[23] = v1;
  if (a1)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2[24] = v3;
  v2[25] = v5;

  return _swift_task_switch(sub_100099890, v3, v5);
}

void sub_100099584(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AssetType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset;
  v9 = *(v2 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset);
  if (a1)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    type metadata accessor for VideoAsset();
    v10 = v9;
    v11 = a1;
    v12 = static NSObject.== infix(_:_:)();

    if (v12)
    {
      return;
    }

    v9 = *(v2 + v8);
    if (!v9)
    {
      goto LABEL_9;
    }
  }

  else if (!v9)
  {
    return;
  }

  (*(v5 + 16))(v7, v9 + OBJC_IVAR____TtC7Journal5Asset_type, v4);
  sub_1000751F4();
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  if (!v14)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v15 = String._bridgeToObjectiveC()();

LABEL_10:
  [v2 setAccessibilityLabel:v15];

  sub_1000999CC();
  v16 = *(v2 + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (v16)
  {
    v16 = [v16 setAlpha:0.0];
  }

  (*((swift_isaMask & *v2) + 0x2C0))(v16);
  v17 = *(v2 + v8);
  if (v17)
  {
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = &v17[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v20 = *&v17[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    *v19 = sub_100819DFC;
    v19[1] = v18;
    v21 = v17;

    sub_100004DF8(v20);

    v22 = *(v2 + v8);
    if (v22)
    {
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = &v22[OBJC_IVAR____TtC7Journal5Asset_didUpdateMediaFile];
      v25 = *&v22[OBJC_IVAR____TtC7Journal5Asset_didUpdateMediaFile];
      *v24 = sub_100819E04;
      v24[1] = v23;
      v26 = v22;

      sub_100004DF8(v25);
    }
  }
}

uint64_t sub_100099890()
{
  v1 = *(v0[23] + OBJC_IVAR____TtC7Journal13CloudKitStack_ckContainer);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1000A7670;
  v2 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&unk_100AE5E40);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000A7594;
  v0[13] = &unk_100A6F738;
  v0[14] = v2;
  [v1 accountStatusWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000999CC()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  v5 = type metadata accessor for UUID();
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  v7 = __chkstk_darwin(v5);
  v57 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = type metadata accessor for Date();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  v12 = __chkstk_darwin(v10);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v52 - v13;
  v14 = type metadata accessor for JournalFeatureFlags();
  v15 = *(v14 - 8);
  result = __chkstk_darwin(v14);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v1[OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset];
  if (v19 && !*&v1[OBJC_IVAR____TtC7Journal14VideoAssetView_thumbnailOverride])
  {
    (*(v15 + 104))(v18, enum case for JournalFeatureFlags.debug(_:), v14);
    v20 = v19;
    v21 = v1;
    v22 = JournalFeatureFlags.isEnabled.getter();
    (*(v15 + 8))(v18, v14);
    if (v22)
    {
      v23 = *&v20[OBJC_IVAR____TtC7Journal10VideoAsset_metadata];
      v24 = [v21 layer];
      v25 = v24;
      if (v23)
      {
        [v24 setBorderColor:0];
        v26 = 0.0;
      }

      else
      {
        v27 = [objc_opt_self() redColor];
        v28 = [v27 CGColor];

        [v25 setBorderColor:v28];
        v26 = 5.0;
        v25 = v28;
      }

      v29 = [v21 layer];
      [v29 setBorderWidth:v26];
    }

    Date.init()();
    v52 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v30 = v21[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
    v55 = v20;
    if (v30 > 6)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        v32 = v21;
        if (qword_100ACFB90 != -1)
        {
          swift_once();
        }

        v33 = &qword_100B2F628;
LABEL_17:
        v34 = *v33;
        v53 = v9;
        v54 = v34;
        UUID.init()();
        v36 = v60;
        v35 = v61;
        v37 = *(v60 + 16);
        v37(v4, v9, v61);
        (*(v36 + 56))(v4, 0, 1, v35);
        v38 = OBJC_IVAR____TtC7Journal14VideoAssetView_latestImageRequestID;
        swift_beginAccess();
        sub_100014318(v4, &v32[v38], &qword_100AD1420);
        swift_endAccess();
        LODWORD(v52) = v32[v52];
        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = v57;
        v37(v57, v9, v35);
        v41 = v58;
        v42 = v59;
        v43 = v56;
        (*(v58 + 16))(v56, v62, v59);
        v44 = (*(v36 + 80) + 24) & ~*(v36 + 80);
        v45 = (v6 + *(v41 + 80) + v44) & ~*(v41 + 80);
        v46 = swift_allocObject();
        *(v46 + 16) = v39;
        v47 = v61;
        (*(v36 + 32))(v46 + v44, v40, v61);
        (*(v41 + 32))(v46 + v45, v43, v42);
        v48 = objc_opt_self();

        v49 = [v48 currentTraitCollection];
        v50 = v54;
        v51 = v55;
        sub_100076220(v52, 0, 1, v54, v49, sub_100093520, v46);

        (*(v36 + 8))(v53, v47);
        (*(v41 + 8))(v62, v42);
      }
    }

    v32 = v21;
    if (qword_100ACFB98 != -1)
    {
      swift_once();
    }

    v33 = &qword_100B2F630;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_10009A154()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009A18C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

char *sub_10009A2EC(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(type metadata accessor for VideoThumbnailCacheOperation());
  v14 = v6;

  return sub_1000771E8(v14, a1, a2, a3 & 1, a4, a5, a6);
}

uint64_t type metadata accessor for VideoThumbnailCacheOperation()
{
  result = qword_100ADADB0;
  if (!qword_100ADADB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009A3CC()
{
  v2 = *(*v1 + 104);
  *(*v1 + 120) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1008A7890;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1000B4218;
  }

  return _swift_task_switch(v6, v3, v5);
}

void sub_10009A564()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100903B10;
  v1._countAndFlagsBits = 0x7974697669746341;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD000000000000028;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30B50 = v3;
}

uint64_t sub_10009A64C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 112);

    sub_100004F84(*(v0 + 48), &qword_100AE4280);
  }

  else
  {
    v5 = *(v0 + 104);
    (*(*(v0 + 64) + 32))(*(v0 + 72), *(v0 + 48), *(v0 + 56));
    v6 = qword_100AD07B8;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 104);
    v9 = String._bridgeToObjectiveC()();
    [v8 setAccessibilityLabel:v9];

    sub_10009A844(0, 0);
    if (v10)
    {
      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 56);
    [v12 setAccessibilityValue:v11];

    sub_10009BE38();

    sub_10008FA14();

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10009A844(uint64_t a1, uint64_t a2)
{
  v149 = a2;
  v150 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v144 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD8D38);
  __chkstk_darwin(v5 - 8);
  v7 = &v115 - v6;
  v8 = sub_1000F24EC(&qword_100AD8D40);
  v145 = *(v8 - 8);
  v146 = v8;
  __chkstk_darwin(v8);
  v143 = &v115 - v9;
  v141 = sub_1000F24EC(&qword_100AD8D48);
  v139 = *(v141 - 8);
  __chkstk_darwin(v141);
  v136 = &v115 - v10;
  v11 = sub_1000F24EC(&qword_100AD8D50);
  v137 = *(v11 - 8);
  v138 = v11;
  __chkstk_darwin(v11);
  v135 = &v115 - v12;
  v142 = sub_1000F24EC(&qword_100AD8D58);
  v140 = *(v142 - 8);
  __chkstk_darwin(v142);
  v148 = &v115 - v13;
  v134 = type metadata accessor for WorkoutHeartRateFormatStyle();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v132 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v147 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v131 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v115 - v18;
  v20 = sub_1000F24EC(&unk_100AD4790);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v115 - v25;
  v27 = __chkstk_darwin(v24);
  v151 = &v115 - v28;
  __chkstk_darwin(v27);
  v152 = &v115 - v29;
  v30 = sub_1000F24EC(&qword_100AE4280);
  __chkstk_darwin(v30 - 8);
  v32 = &v115 - v31;
  v33 = type metadata accessor for WorkoutIconAssetMetadata();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v115 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata))
  {
    (*(v34 + 56))(v32, 1, 1, v33);
    goto LABEL_14;
  }

  sub_10008F5F4(v32);

  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
LABEL_14:
    sub_100004F84(v32, &qword_100AE4280);
    return 0;
  }

  v130 = v7;
  v128 = v34;
  v37 = *(v34 + 32);
  v129 = v33;
  v37(v36, v32, v33);
  v38 = WorkoutIconAssetMetadata.type.getter();
  v40 = v39;
  WorkoutIconAssetMetadata.startTime.getter();
  WorkoutIconAssetMetadata.endTime.getter();
  *&v118 = COERCE_DOUBLE(WorkoutIconAssetMetadata.mindfulnessHeartRate.getter());
  v121 = v41;
  v120 = WorkoutIconAssetMetadata.caloriesBurnt.getter();
  v122 = v42;
  v127 = WorkoutIconAssetMetadata.distance.getter();
  v126 = v43;
  v44 = WorkoutIconAssetMetadata.numberOfWorkouts.getter();
  v46 = v45;
  *&v116 = COERCE_DOUBLE(WorkoutIconAssetMetadata.totalGroupWorkoutDuration.getter());
  LODWORD(v123) = v47;
  *&v117 = COERCE_DOUBLE(WorkoutIconAssetMetadata.averageGroupHeartRateBPM.getter());
  v124 = v48;
  v119 = WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurnt.getter();
  v125 = v49;
  if ((v46 & 1) == 0 && v44 >= 2)
  {

    if (qword_100AD04E8 != -1)
    {
      swift_once();
    }

    sub_1000F24EC(&unk_100AD5B10);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100940080;
    *(v50 + 56) = &type metadata for Int;
    *(v50 + 64) = &protocol witness table for Int;
    *(v50 + 32) = v44;
    v38 = static String.localizedStringWithFormat(_:_:)();
    v40 = v51;
  }

  v52 = sub_10009B77C(0, 1, 1, _swiftEmptyArrayStorage);
  v54 = v52[2];
  v53 = v52[3];
  if (v54 >= v53 >> 1)
  {
    v52 = sub_10009B77C((v53 > 1), v54 + 1, 1, v52);
  }

  v55 = v123;
  v52[2] = v54 + 1;
  v56 = &v52[2 * v54];
  v56[4] = v38;
  v56[5] = v40;
  if ((v55 & 1) == 0)
  {
    v61 = *&v116;
    v62 = v149;
    v63 = v150;
    v64 = v130;
    if (qword_100AD02E8 != -1)
    {
      swift_once();
    }

    v65 = [qword_100AF0058 stringFromTimeInterval:v61 + 0.5];
    v66 = v125;
    if (v65)
    {
      v67 = v65;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v74 = v52[2];
    v73 = v52[3];
    if (v74 >= v73 >> 1)
    {
      v52 = sub_10009B77C((v73 > 1), v74 + 1, 1, v52);
    }

    v52[2] = v74 + 1;
    v75 = &v52[2 * v74];
    v75[4] = v68;
    v75[5] = v70;
    goto LABEL_35;
  }

  sub_100088AC8(v152, v26);
  v57 = v147;
  v58 = *(v147 + 48);
  if (v58(v26, 1, v15) == 1)
  {
    v59 = v26;
  }

  else
  {
    v71 = v26;
    v72 = *(v57 + 32);
    v72(v19, v71, v15);
    sub_100088AC8(v151, v23);
    if (v58(v23, 1, v15) != 1)
    {
      v72(v131, v23, v15);
      Date.timeIntervalSince(_:)();
      if (qword_100AD02E8 != -1)
      {
        v114 = v76;
        swift_once();
        v76 = v114;
      }

      v77 = [qword_100AF0058 stringFromTimeInterval:v76 + 0.5];
      if (v77)
      {
        v78 = v77;
        v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;
      }

      else
      {
        v123 = 0;
        v80 = 0;
      }

      v64 = v130;
      v82 = v52[2];
      v81 = v52[3];
      if (v82 >= v81 >> 1)
      {
        v52 = sub_10009B77C((v81 > 1), v82 + 1, 1, v52);
      }

      v83 = *(v147 + 8);
      v83(v131, v15);
      v83(v19, v15);
      v52[2] = v82 + 1;
      v84 = &v52[2 * v82];
      v84[4] = v123;
      v84[5] = v80;
      v62 = v149;
      v63 = v150;
      goto LABEL_34;
    }

    (*(v57 + 8))(v19, v15);
    v59 = v23;
  }

  sub_100004F84(v59, &unk_100AD4790);
  v62 = v149;
  v63 = v150;
  v64 = v130;
LABEL_34:
  v66 = v125;
LABEL_35:
  if ((v124 & 1) == 0 || (v121 & 1) == 0)
  {
    v85 = *&v118;
    if ((v124 & 1) == 0)
    {
      v85 = *&v117;
    }

    if (v85 > 0.0)
    {
      v153 = v85;
      v86 = v132;
      static FormatStyle<>.beatsPerMinute.getter();
      sub_10009BA68();
      sub_100692928();
      v87 = v134;
      BinaryFloatingPoint.formatted<A>(_:)();
      (*(v133 + 8))(v86, v87);
      v88 = v154;
      v89 = v155;
      v91 = v52[2];
      v90 = v52[3];
      if (v91 >= v90 >> 1)
      {
        v52 = sub_10009B77C((v90 > 1), v91 + 1, 1, v52);
      }

      v52[2] = v91 + 1;
      v92 = &v52[2 * v91];
      v92[4] = v88;
      v92[5] = v89;
    }
  }

  if (v66 & 1) != 0 && (v122)
  {
    v93 = v52[2];
    v94 = v127;
    v95 = v126;
  }

  else
  {
    v96 = [objc_opt_self() kilocalories];
    sub_1000065A8(0, &qword_100AD8D60);
    Measurement.init(value:unit:)();
    v97 = v136;
    static Measurement<>.FormatStyle.UnitWidth.wide.getter();
    v98 = v143;
    static MeasurementFormatUnitUsage<>.workout.getter();
    static Locale.autoupdatingCurrent.getter();
    sub_10009BA68();
    FloatingPointFormatStyle.init(locale:)();
    v99 = sub_1000F24EC(&qword_100AD8D68);
    (*(*(v99 - 8) + 56))(v64, 0, 1, v99);
    v100 = v135;
    static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
    sub_100004F84(v64, &qword_100AD8D38);
    (*(v145 + 8))(v98, v146);
    (*(v139 + 8))(v97, v141);
    sub_10009BABC();
    v101 = v142;
    v102 = v138;
    Measurement<>.formatted<A>(_:)();
    (*(v137 + 8))(v100, v102);
    v103 = v154;
    v104 = v155;
    v106 = v52[2];
    v105 = v52[3];
    v93 = v106 + 1;
    if (v106 >= v105 >> 1)
    {
      v52 = sub_10009B77C((v105 > 1), v106 + 1, 1, v52);
    }

    v94 = v127;
    v95 = v126;
    (*(v140 + 8))(v148, v101);
    v52[2] = v93;
    v107 = &v52[2 * v106];
    v107[4] = v103;
    v107[5] = v104;
    v63 = v150;
  }

  v108 = v52[3];
  if (v93 >= v108 >> 1)
  {
    v52 = sub_10009B77C((v108 > 1), v93 + 1, 1, v52);
  }

  v52[2] = v93 + 1;
  v109 = &v52[2 * v93];
  v109[4] = v94;
  v109[5] = v95;
  v154 = v52;
  if (v62)
  {
    v110 = sub_1006914A0(v63, v62, v52);
    if ((v111 & 1) == 0 && !v110)
    {
      sub_100691858(0);
    }
  }

  sub_10009BB20(8236, 0xE200000000000000, v154);
  v113 = v112;

  sub_100004F84(v151, &unk_100AD4790);
  sub_100004F84(v152, &unk_100AD4790);
  (*(v128 + 8))(v36, v129);
  return v113;
}

void *sub_10009B77C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AD38F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F24EC(&unk_100AE4870);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10009B908()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for VideoAssetView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC7Journal14VideoAssetView_thumbnailView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }
}

id sub_10009B9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v5 setAllowedUnits:a2];
  [v5 setZeroFormattingBehavior:10];
  result = [v5 setUnitsStyle:3];
  *a3 = v5;
  return result;
}

unint64_t sub_10009BA68()
{
  result = qword_100AD4430;
  if (!qword_100AD4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4430);
  }

  return result;
}

unint64_t sub_10009BABC()
{
  result = qword_100AD8D70;
  if (!qword_100AD8D70)
  {
    sub_1000F2A18(&qword_100AD8D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD8D70);
  }

  return result;
}

void sub_10009BB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a3 + 40;
    v6 = &_swiftEmptyArrayStorage;
    do
    {
      v7 = (v5 + 16 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }

        v9 = *v7;
        if (*v7)
        {
          v10 = *(v7 - 1);
          v11 = HIBYTE(v9) & 0xF;
          if ((v9 & 0x2000000000000000) == 0)
          {
            v11 = v10 & 0xFFFFFFFFFFFFLL;
          }

          if (v11)
          {
            break;
          }
        }

        ++v8;
        v7 += 2;
        if (v4 == v3)
        {
          goto LABEL_18;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10009BCC8(0, *(v6 + 2) + 1, 1, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_10009BCC8((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[16 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v9;
    }

    while (v4 != v3);
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

LABEL_18:
  if (*(v6 + 2))
  {
    sub_1000F24EC(&qword_100AD60A0);
    sub_10009BDD4();
    BidirectionalCollection<>.joined(separator:)();
  }
}

char *sub_10009BCC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&unk_100AD9A60);
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

unint64_t sub_10009BDD4()
{
  result = qword_100AD2BE0;
  if (!qword_100AD2BE0)
  {
    sub_1000F2A18(&qword_100AD60A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2BE0);
  }

  return result;
}

uint64_t sub_10009BE38()
{
  v0 = type metadata accessor for WorkoutHeartRateFormatStyle();
  v79 = *(v0 - 8);
  v80 = v0;
  __chkstk_darwin(v0);
  v77 = v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v67[1] = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD8D38);
  __chkstk_darwin(v4 - 8);
  v6 = v67 - v5;
  v73 = sub_1000F24EC(&qword_100AD8D40);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = v67 - v7;
  v70 = sub_1000F24EC(&qword_100AD8D48);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v9 = v67 - v8;
  v10 = sub_1000F24EC(&qword_100AD8D50);
  v74 = *(v10 - 8);
  v75 = v10;
  __chkstk_darwin(v10);
  v72 = v67 - v11;
  v12 = sub_1000F24EC(&qword_100AD8D58);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v67 - v17;
  v78 = WorkoutIconAssetMetadata.distance.getter();
  v76 = v19;
  v20 = WorkoutIconAssetMetadata.numberOfWorkouts.getter();
  if (v21)
  {
    countAndFlagsBits = WorkoutIconAssetMetadata.type.getter();
    if (!object)
    {
      v24 = [objc_opt_self() mainBundle];
      v85._object = 0x8000000100900C90;
      v25._countAndFlagsBits = 0x74756F6B726F57;
      v25._object = 0xE700000000000000;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v85._countAndFlagsBits = 0xD000000000000018;
      v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, countAndFlagsBits, v24, v26, v85);
      countAndFlagsBits = v27._countAndFlagsBits;

      object = v27._object;
    }

    v28 = v81;
    *(v81 + 16) = countAndFlagsBits;
    *(v28 + 24) = object;

    WorkoutIconAssetMetadata.caloriesBurnt.getter();
    v29 = [objc_opt_self() kilocalories];
    sub_1000065A8(0, &qword_100AD8D60);
    Measurement.init(value:unit:)();
    v30 = WorkoutIconAssetMetadata.calories.getter();
    if (v31)
    {
      v32 = v30;
      v33 = v31;
    }

    else
    {
      static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
      v44 = v69;
      static MeasurementFormatUnitUsage<>.workout.getter();
      static Locale.autoupdatingCurrent.getter();
      sub_10009BA68();
      FloatingPointFormatStyle.init(locale:)();
      v45 = sub_1000F24EC(&qword_100AD8D68);
      (*(*(v45 - 8) + 56))(v6, 0, 1, v45);
      v46 = v72;
      static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
      sub_100004F84(v6, &qword_100AD8D38);
      (*(v71 + 8))(v44, v73);
      (*(v68 + 8))(v9, v70);
      sub_10000B58C(&qword_100AD8D70, &qword_100AD8D50);
      v47 = v75;
      Measurement<>.formatted<A>(_:)();
      (*(v74 + 8))(v46, v47);
      v48 = String.uppercased()();
      v32 = v48._countAndFlagsBits;
      v33 = v48._object;
    }

    WorkoutIconAssetMetadata.duration.getter();
    if (v50)
    {
      v49.n128_f64[0] = sub_1007B75AC();
    }

    (*(v13 + 8))(v16, v12, v49);
  }

  else
  {
    v34 = v20;
    if (qword_100AD04E8 != -1)
    {
      swift_once();
    }

    sub_1000F24EC(&unk_100AD5B10);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100940080;
    *(v35 + 56) = &type metadata for Int;
    *(v35 + 64) = &protocol witness table for Int;
    *(v35 + 32) = v34;
    v36 = static String.localizedStringWithFormat(_:_:)();
    v38 = v37;

    v39 = v81;
    *(v81 + 16) = v36;
    *(v39 + 24) = v38;

    WorkoutIconAssetMetadata.totalGroupWorkoutDuration.getter();
    WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurnt.getter();
    v40 = [objc_opt_self() kilocalories];
    sub_1000065A8(0, &qword_100AD8D60);
    Measurement.init(value:unit:)();
    v41 = WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurntWithUnit.getter();
    if (v42)
    {
      v32 = v41;
      v33 = v42;
    }

    else
    {
      static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
      v51 = v69;
      static MeasurementFormatUnitUsage<>.workout.getter();
      static Locale.autoupdatingCurrent.getter();
      sub_10009BA68();
      FloatingPointFormatStyle.init(locale:)();
      v52 = sub_1000F24EC(&qword_100AD8D68);
      (*(*(v52 - 8) + 56))(v6, 0, 1, v52);
      v53 = v72;
      static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
      sub_100004F84(v6, &qword_100AD8D38);
      (*(v71 + 8))(v51, v73);
      (*(v68 + 8))(v9, v70);
      sub_10000B58C(&qword_100AD8D70, &qword_100AD8D50);
      v54 = v75;
      Measurement<>.formatted<A>(_:)();
      (*(v74 + 8))(v53, v54);
      v55 = String.uppercased()();
      v32 = v55._countAndFlagsBits;
      v33 = v55._object;
    }

    (*(v13 + 8))(v18, v12, v43);
  }

  static Duration.seconds(_:)();
  v56 = Duration.formatted()();
  v57 = WorkoutIconAssetMetadata.mindfulnessHeartRate.getter();
  if (v58)
  {
    v57 = WorkoutIconAssetMetadata.averageGroupHeartRateBPM.getter();
    if (v59)
    {
      v57 = 0;
    }
  }

  v60 = v77;
  if (v76)
  {
    v61 = v76;
  }

  else
  {
    v61 = 0xE000000000000000;
  }

  if (v76)
  {
    v62 = v78;
  }

  else
  {
    v62 = 0;
  }

  v82 = v57;
  static FormatStyle<>.beatsPerMinute.getter();
  sub_10009BA68();
  sub_10008E2D4(&qword_100AEC7A0, &type metadata accessor for WorkoutHeartRateFormatStyle);
  v63 = v80;
  BinaryFloatingPoint.formatted<A>(_:)();
  (*(v79 + 8))(v60, v63);
  sub_10008E3A0(v62, v61, v56._countAndFlagsBits, v56._object, v32, v33, v83, v84);
  v65 = v64;

  *(v81 + 32) = v65;
}

unint64_t sub_10009C8B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&unk_100ADFE70);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1000517E0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_10009C9A4(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100ADFE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10009CA0C(uint64_t a1, void *a2, id *a3, void *a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = *a3;
  v6 = [v5 fontDescriptor];

  sub_1000F24EC(&qword_100ADFE20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  *(inited + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_1000F24EC(&qword_100ADFE50);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100940080;
  sub_1000F24EC(&qword_100ADFE58);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_100940050;
  v10 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(v9 + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  v11 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(v9 + 40) = 38;
  *(v9 + 48) = v11;
  *(v9 + 56) = 1;
  v12 = UIFontDescriptorFeatureSettingsAttribute;
  v13 = v10;
  v14 = v11;
  v15 = sub_10009C8B8(v9);
  swift_setDeallocating();
  sub_1000F24EC(&qword_100ADFE60);
  swift_arrayDestroy();
  *(v8 + 32) = v15;
  *(inited + 64) = sub_1000F24EC(&qword_100ADFE68);
  *(inited + 40) = v8;
  sub_10009D100(inited);
  swift_setDeallocating();
  sub_10009C9A4(inited + 32);
  type metadata accessor for AttributeName(0);
  sub_10009D7C4();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = [v6 fontDescriptorByAddingAttributes:isa];

  v18 = *a3;
  [v18 pointSize];
  v20 = v19;

  v21 = [objc_opt_self() fontWithDescriptor:v17 size:v20];
  *a4 = v21;
}

id sub_10009CCA8()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.349019608 green:0.666666667 blue:0.878431373 alpha:1.0];
  qword_100B30330 = result;
  return result;
}

id sub_10009CD00()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.976470588 green:0.847058824 blue:0.290196078 alpha:1.0];
  qword_100B30338 = result;
  return result;
}

id sub_10009CD54()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.980392157 green:0.0666666667 blue:0.309803922 alpha:1.0];
  qword_100B30320 = result;
  return result;
}

id sub_10009CDA8()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.921568627 green:0.305882353 blue:0.243137255 alpha:1.0];
  qword_100B30328 = result;
  return result;
}

Swift::Int sub_10009CE28()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10009CF5C(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10009D0BC(a3);
  v13 = *(v10 + 16);
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
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10009D124(v16, a4 & 1);
      result = sub_10009D0BC(a3);
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
      sub_100823030();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_10009D0BC(unsigned __int8 a1)
{
  v2 = sub_10009CE28();

  return sub_10009D4B8(a1, v2);
}

uint64_t sub_10009D124(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000F24EC(&qword_100AF41E0);
  v32 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_10009D4B8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xEA00000000006C6CLL;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      if (v7 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v7 == 6)
          {
            v13 = 0xE500000000000000;
            v12 = 0x6C6C616D73;
          }

          else
          {
            v13 = 0xEA00000000006E65;
            v12 = 0x657263536C6C7566;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v12 = 0x6D756964656DLL;
          }

          else
          {
            v12 = 0x61546D756964656DLL;
          }

          if (v7 == 4)
          {
            v13 = 0xE600000000000000;
          }

          else
          {
            v13 = 0xEA00000000006C6CLL;
          }
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x69576D756964656DLL;
        }

        else
        {
          v8 = 0x656772616CLL;
        }

        if (v7 == 2)
        {
          v9 = 0xEA00000000006564;
        }

        else
        {
          v9 = 0xE500000000000000;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0x656772614C78;
        }

        else
        {
          v10 = 0x6154656772614C78;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xEA00000000006C6CLL;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }
      }

      v14 = 0xEA00000000006E65;
      v15 = 0x657263536C6C7566;
      if (v6 == 6)
      {
        v15 = 0x6C6C616D73;
        v14 = 0xE500000000000000;
      }

      v16 = 0x61546D756964656DLL;
      if (v6 == 4)
      {
        v16 = 0x6D756964656DLL;
        v17 = 0xE600000000000000;
      }

      else
      {
        v17 = 0xEA00000000006C6CLL;
      }

      if (v6 <= 5)
      {
        v15 = v16;
        v14 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x69576D756964656DLL;
      }

      else
      {
        v18 = 0x656772616CLL;
      }

      if (v6 == 2)
      {
        v19 = 0xEA00000000006564;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v6)
      {
        v20 = 0x656772614C78;
      }

      else
      {
        v20 = 0x6154656772614C78;
      }

      if (v6)
      {
        v5 = 0xE600000000000000;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v6 <= 3 ? v18 : v15;
      v22 = v6 <= 3 ? v19 : v14;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        v5 = 0xEA00000000006C6CLL;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10009D740()
{
  result = qword_100AE74A8;
  if (!qword_100AE74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE74A8);
  }

  return result;
}

unint64_t sub_10009D7C4()
{
  result = qword_100AD1C78;
  if (!qword_100AD1C78)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1C78);
  }

  return result;
}

id sub_10009D81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void sub_10009D8F8(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(NSRegularExpression);
  v5 = sub_10009D81C(0x5D7D4C7B705C5BLL, 0xE700000000000000, 0);
  if (v5)
  {
    v6 = [v1 string];
    if (!v6)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = String._bridgeToObjectiveC()();
    }

    v7 = [v2 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = String.count.getter();

    v9 = [v5 matchesInString:v6 options:0 range:{0, v8}];

    sub_1000065A8(0, &qword_100AD44D8);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v2;
    v28 = v5;
    if (v10 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v32[0] = NSFontAttributeName;
        v32[4] = sub_1000065A8(0, &qword_100AD2A78);
        v32[1] = a1;
        sub_1000F24EC(&qword_100AF41D0);
        v16 = static _DictionaryStorage.allocate(capacity:)();
        v17 = NSFontAttributeName;
        v18 = a1;
        sub_100133850(v32, &v30);
        v19 = v30;
        v20 = sub_100051964(v30);
        if (v21)
        {
          goto LABEL_18;
        }

        v16[(v20 >> 6) + 8] |= 1 << v20;
        *(v16[6] + 8 * v20) = v19;
        sub_10002432C(&v31, (v16[7] + 32 * v20));
        v22 = v16[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_19;
        }

        v16[2] = v24;
        sub_100004F84(v32, &unk_100AD9210);
        type metadata accessor for Key(0);
        sub_1000AA710(&qword_100ADC650, type metadata accessor for Key);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v26 = [v14 range];
        [v29 addAttributes:isa range:{v26, v27}];

        ++v12;
        if (v15 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_21:
  }
}

uint64_t sub_10009DCB4(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for AttributedString();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_10009DD60(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = type metadata accessor for AttributedString();
  v5 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000F24EC(&qword_100AF41D8);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = (v5 + 16);
    v35 = v5;
    v37 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v24 = v21 | (v10 << 6);
      v25 = *(*(v7 + 48) + v24);
      v26 = *(v5 + 72);
      v27 = *(v7 + 56) + v26 * v24;
      if (v36)
      {
        (*v37)(v38, v27, v39);
      }

      else
      {
        (*v34)(v38, v27, v39);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v9 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v16 + 8 * (v18 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v17) >> 6;
        while (++v19 != v29 || (v28 & 1) == 0)
        {
          v30 = v19 == v29;
          if (v19 == v29)
          {
            v19 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v19);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v19 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v16 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v9 + 48) + v20) = v25;
      result = (*v37)(*(v9 + 56) + v26 * v20, v38, v39);
      ++*(v9 + 16);
      v5 = v35;
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}

uint64_t sub_10009E1C0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10009D0BC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_100822DC8();
      goto LABEL_7;
    }

    sub_10009DD60(v13, a3 & 1);
    v24 = sub_10009D0BC(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = type metadata accessor for AttributedString();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_10009DCB4(v10, a2, a1, v16);
}

uint64_t sub_10009E328(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&qword_100AD8D78);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100004F84(a1, &qword_100AD8D78);
    v13 = sub_10009D0BC(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100822DC8();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1002013B0(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100004F84(v8, &qword_100AD8D78);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_10009E1C0(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_10009E578(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (static String._unconditionallyBridgeFromObjectiveC(_:)(), Hasher.init(_seed:)(), String.hash(into:)(), v3 = Hasher._finalize()(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_10009E6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v10 = NLTagger.tag(at:unit:scheme:)();
  if (v10)
  {
    a5 = v10;
    if (qword_100ACFD90 != -1)
    {
      swift_once();
    }

    if (sub_10009EA44(a5, qword_100AE4468))
    {
      String.subscript.getter();
      a7 = Substring.distance(from:to:)();

      v11 = *a6 + a7;
      if (!__OFADD__(*a6, a7))
      {
        goto LABEL_14;
      }

      __break(1u);
    }
  }

  v12 = String.subscript.getter();
  if ((v12 ^ v13) >> 14)
  {
    Substring.index(before:)();
    a7 = Substring.subscript.getter();
    a5 = v14;

    if (qword_100ACFD98 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  while (1)
  {
    v11 = *a6 + 1;
    if (!__OFADD__(*a6, 1))
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_12:
    v15 = sub_10009E8A4(a7, a5, qword_100AE4470);

    if (v15)
    {
      return 1;
    }
  }

LABEL_14:
  *a6 = v11;
  return 1;
}

uint64_t sub_10009E8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Character.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_10009E99C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10009EA5C()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31550);
  sub_10000617C(v0, qword_100B31550);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

BOOL sub_10009EB04()
{
  v0 = static Runtime.hasAppProtectionLock.getter();
  v1 = sub_100014964();
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  result = 0;
  if ((v0 & 1) == 0 && v1 == 4 && (v5 & 1) == 0)
  {
    v7 = [v2 standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 integerForKey:v8];

    return v9 > 2;
  }

  return result;
}

uint64_t sub_10009ECBC()
{
  type metadata accessor for SyncOnboardingViewController.SyncOnboardingState();
  result = swift_allocObject();
  qword_100B2F4F0 = result;
  return result;
}

uint64_t sub_10009ED0C()
{
  (*(v0[4] + 104))(v0[5], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[3]);

  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_10041B8C8;
  v2 = v0[5];
  v3 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_100163FAC, v3, &type metadata for () + 8);
}

uint64_t sub_10009EE00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65706F6C65766564 && a2 == 0xED0000756E654D72;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6165537972746E65 && a2 == 0xEB00000000686372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E456B6E616C62 && a2 == 0xEA00000000007972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972746E65 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_10009F00C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_labelTextProvider;
  type metadata accessor for WorkoutActivityGridView.LabelTextProvider();
  v13 = swift_allocObject();
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = 0;
  *&v4[v12] = v13;
  *&v4[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for WorkoutActivityGridView();
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_10009F184();

  return v14;
}

unint64_t sub_10009F12C()
{
  result = qword_100AD4CC8;
  if (!qword_100AD4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4CC8);
  }

  return result;
}

id sub_10009F184()
{
  v1 = v0;
  [v0 setAccessibilityIgnoresInvertColors:1];
  v2 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  [v1 addSubview:*&v1[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView]];
  v3 = *&v1[v2];
  sub_100013178(0.0);

  v4 = sub_10009F354(v1, UIContentSizeCategoryExtraExtraExtraLarge);
  v5 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel;
  v6 = *&v1[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel];
  *&v1[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_exerciseNameLabel] = v4;
  v7 = v4;

  [v1 addSubview:v7];
  v8 = sub_10009FF84(v1, UIContentSizeCategoryExtraExtraExtraLarge);
  v9 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel;
  v10 = *&v1[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel];
  *&v1[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutDataLabel] = v8;
  v11 = v8;

  [v1 addSubview:v11];
  v12 = OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView;
  [v1 addSubview:*&v1[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutImageView]];
  [*&v1[v5] setAlpha:0.0];
  [*&v1[v9] setAlpha:0.0];
  [*&v1[v12] setAlpha:0.0];
  LODWORD(v13) = 1144750080;
  [*&v1[v5] setContentCompressionResistancePriority:1 forAxis:v13];
  LODWORD(v14) = 1132068864;
  [*&v1[v12] setContentCompressionResistancePriority:1 forAxis:v14];
  LODWORD(v15) = 1144750080;
  [*&v1[v9] setContentCompressionResistancePriority:1 forAxis:v15];
  v16 = *&v1[v12];

  return [v16 setContentMode:1];
}

id sub_10009F354(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(UILabel) init];
  if (*(a1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      if (qword_100AD0408 != -1)
      {
        swift_once();
      }

      v6 = &qword_100B30400;
      goto LABEL_10;
    }
  }

  if (qword_100AD03C8 != -1)
  {
    swift_once();
  }

  v6 = &qword_100B303C0;
LABEL_10:
  [v4 setFont:*v6];
  v7 = [objc_opt_self() whiteColor];
  [v4 setTextColor:v7];

  [v4 setTextAlignment:0];
  [v4 setLineBreakMode:4];
  [v4 setAdjustsFontForContentSizeCategory:1];
  [v4 setMaximumContentSizeCategory:a2];
  return v4;
}

uint64_t sub_10009F5C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v8);

  return (*(v6 + 8))(v8, v5);
}

void sub_10009F6C0(uint64_t a1, id *a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = *a2;
  v7 = [v5 preferredFontForTextStyle:v6];

  v8 = [v7 fontDescriptor];
  v9 = [v7 fontDescriptor];
  v10 = [v9 symbolicTraits];

  v11 = [v8 fontDescriptorWithSymbolicTraits:v10 | 2];
  if (v11)
  {
    v12 = [v5 fontWithDescriptor:v11 size:0.0];

    v7 = v12;
  }

  *a3 = v7;
}