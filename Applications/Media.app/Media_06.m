Class sub_10008017C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_100081224();

  if (v6)
  {
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

uint64_t sub_100080200(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(v3 + qword_1000EE3E8) + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return IndexPath.init(item:section:)();
  }

  v24 = qword_1000EE3E8;

  v7 = 0;
  v8 = (v4 + 48);
  while (1)
  {
    if (v7 >= *(v4 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    v10 = *v8;
    if (*v8)
    {
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = *(v8 - 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v11)
      {
        break;
      }
    }

LABEL_4:
    ++v7;
    v8 += 4;
    if (v5 == v7)
    {

      v15 = *(*(v3 + v24) + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);
      if (!*(v15 + 16))
      {
        return IndexPath.init(item:section:)();
      }

      v16 = *(v15 + 16);
      v17 = *(*(v3 + v24) + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);

      v18 = 0;
      v19 = (v15 + 48);
      while (v18 < *(v15 + 16))
      {
        v20 = *(v19 - 2);
        v21 = *v19;
        if (!*v19)
        {
          goto LABEL_21;
        }

        v22 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v22 = *(v19 - 1) & 0xFFFFFFFFFFFFLL;
        }

        if (v22)
        {

          String.subscript.getter();
          Character.uppercased()();
        }

        else
        {
LABEL_21:
        }

        sub_100020F58();
        v23 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        if (v23 != -1)
        {
          ++v18;
          v19 += 4;
          if (v16 != v18)
          {
            continue;
          }
        }

        return IndexPath.init(item:section:)();
      }

      goto LABEL_31;
    }
  }

  v12 = *(v8 - 2);
  v13 = *v8;

  String.subscript.getter();
  v14 = Character.uppercased()();

  if (v14._countAndFlagsBits != a2 || v14._object != a3)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      goto LABEL_26;
    }

    goto LABEL_4;
  }

LABEL_26:

  return IndexPath.init(item:section:)();
}

Class sub_10008050C(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a3;
  v14 = a1;
  sub_100080200(v14, v10, v12);

  v15.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);

  return v15.super.isa;
}

uint64_t sub_100080644(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_10000368C(&qword_1000ED440, &qword_1000B8B40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v32 - v8;
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v15 == a3)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v34 = 0xD000000000000010;
      v35 = 0x80000001000BC8C0;
      v18._countAndFlagsBits = a2;
      v18._object = a3;
      String.append(_:)(v18);
      goto LABEL_13;
    }
  }

  v33 = v10;
  v19 = String._bridgeToObjectiveC()();
  type metadata accessor for RadioSectionHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v23 = [a1 dequeueReusableSupplementaryViewOfKind:v19 withReuseIdentifier:v21 forIndexPath:isa];

  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = v24;
    v26 = *(v32[1] + qword_1000EE3E8);

    v27 = IndexPath.section.getter();
    sub_100025278(v27);

    static UIListContentConfiguration.header()();

    UIListContentConfiguration.text.setter();
    v28 = v33;
    v36 = v33;
    v37 = &protocol witness table for UIListContentConfiguration;
    v29 = sub_10005AD6C(&v34);
    (*(v11 + 16))(v29, v14, v28);
    UICollectionViewCell.contentConfiguration.setter();
    static UIBackgroundConfiguration.clear()();
    v30 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
    UICollectionViewCell.backgroundConfiguration.setter();

    (*(v11 + 8))(v14, v28);
    return v25;
  }

LABEL_13:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100080A30(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a1;
  v15 = sub_100080644(v13, v10, v12);

  (*(v6 + 8))(v9, v5);

  return v15;
}

void sub_100080B70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000368C(&qword_1000EC548, &qword_1000B5820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = qword_1000EE3F0;
  v11 = *(v2 + qword_1000EE3E8);
  v12 = *(v11 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_filteringStrategy) != 5 && (*(v11 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) - 1 > 1 || *(v11 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8));
  v13 = *(v2 + qword_1000EE3F0);
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v14 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  (*(v6 + 8))(v9, v5);
  if (v14 != v12)
  {
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_15:
    v37 = *(v3 + v10);
    if (!v37)
    {
      return;
    }

    v23 = v37;
    if (a2)
    {
      v35.super.isa = String._bridgeToObjectiveC()();
    }

    else
    {
      v35.super.isa = 0;
    }

    [v23 setText:v35.super.isa];
    goto LABEL_21;
  }

  if ((a2 != 0) == (v13 != 0))
  {
    goto LABEL_15;
  }

  if (!a2)
  {
LABEL_12:
    v36 = *(v3 + v10);
    if (v36)
    {
      [v36 removeFromSuperview];
      v35.super.isa = *(v3 + v10);
    }

    else
    {
      v35.super.isa = 0;
    }

    *(v3 + v10) = 0;
    goto LABEL_22;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  v17 = [objc_allocWithZone(UILabel) init];
  [v17 setTextAlignment:1];
  v18 = String._bridgeToObjectiveC()();
  [v17 setText:v18];

  v19 = v17;
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [objc_opt_self() secondaryLabelColor];
  [v19 setTextColor:v20];

  v21 = [objc_opt_self() boldSystemFontOfSize:18.0];
  [v19 setFont:v21];

  [v19 setNumberOfLines:0];
  v22 = *(v3 + v10);
  *(v3 + v10) = v19;
  v23 = v19;

  v24 = v16;
  [v24 addSubview:v23];
  v25 = objc_opt_self();
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000B6BD0;
  v27 = [v23 centerYAnchor];
  v28 = [v24 safeAreaLayoutGuide];
  v29 = [v28 centerYAnchor];

  v30 = [v27 constraintEqualToAnchor:v29];
  *(v26 + 32) = v30;
  v31 = [v23 centerXAnchor];

  v32 = [v24 safeAreaLayoutGuide];
  v33 = [v32 centerXAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  *(v26 + 40) = v34;
  sub_100075A4C();
  v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:v35.super.isa];

LABEL_21:
LABEL_22:
}

uint64_t sub_10008103C()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + qword_1000EE3E8);

  return swift_unknownObjectWeakDestroy();
}

id sub_10008109C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioStationDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000810D4(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  v2 = *(a1 + qword_1000EE3E8);

  return swift_unknownObjectWeakDestroy();
}

void sub_100081140()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_100081180(unint64_t a1)
{
  v2 = *(v1 + qword_1000EE3E8);
  if (*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy) - 1 <= 1 && !*(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8))
  {
    return 1;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(v2 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections);
  if (*(v3 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    return _CocoaArrayWrapper.endIndex.getter();
  }

  v4 = v3 + 32 * a1;
  if (*(v4 + 56))
  {
    return 1;
  }

  v6 = *(v4 + 32);
  if (!(v6 >> 62))
  {
    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_100081224()
{
  v1 = *(v0 + qword_1000EE3E8);
  if (*(*(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_sections) + 16) >= 2uLL)
  {
    v2 = *(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_groupingStrategy);
    if ((v2 - 1) > 1)
    {
      if (v2 != 3)
      {
        goto LABEL_4;
      }
    }

    else if (*(v1 + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_activeCategory + 8))
    {
LABEL_4:
      v3 = [objc_opt_self() currentCollation];
      v4 = [v3 sectionIndexTitles];

      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      return v5;
    }
  }

  return 0;
}

uint64_t sub_10008130C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100081344(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a1, a2, *a3, a3[1]);
}

void sub_100081374(unint64_t a1)
{
  v3 = [v1 media];
  if (!v3)
  {
    return;
  }

  v119 = v3;
  if (!sub_100082858(a1) || (v4 = [v1 media]) == 0)
  {
LABEL_26:

    return;
  }

  v5 = v4;
  v6 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];

  v9 = String._bridgeToObjectiveC()();

  v10 = [v1 mediaSourceWithIdentifier:v9];

  if (!v10)
  {
    v25 = [v5 mediaSources];
    if (v25)
    {
      v26 = v25;
      sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v116 = v6;
      if (v27 >> 62)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
      v30 = a1;
      swift_beginAccess();
      if (v28)
      {
        v31 = 0;
        v6 = (v27 & 0xC000000000000001);
        a1 = v27 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v6)
          {
            v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v31 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_69;
            }

            v32 = *(v27 + 8 * v31 + 32);
          }

          v10 = v32;
          v33 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if ([v32 mediaSourceSemanticType] == *(v30 + v29))
          {

            a1 = v30;
            v6 = v116;
            goto LABEL_5;
          }

          ++v31;
          if (v33 == v28)
          {
            goto LABEL_42;
          }
        }

LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        swift_once();
LABEL_54:
        v66 = type metadata accessor for Logger();
        sub_100006928(v66, qword_1000F3B70);

        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v120[0] = swift_slowAlloc();
          *v69 = 136446466;
          v70 = a1;
          v72 = *v6;
          v71 = v6[1];

          v73 = sub_100043AF0(v72, v71, v120);

          *(v69 + 4) = v73;
          *(v69 + 12) = 2082;
          v74 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
          swift_beginAccess();
          v75 = *(v70 + v74);
          v76 = CAFMediaSourceSemanticType.description.getter();
          v78 = sub_100043AF0(v76, v77, v120);

          *(v69 + 14) = v78;
          _os_log_impl(&_mh_execute_header, v67, v68, "Unable to match a media source with identifier %{public}s of type %{public}s", v69, 0x16u);
          swift_arrayDestroy();
        }

        return;
      }

LABEL_42:
    }

    else
    {
    }

    return;
  }

LABEL_5:

  if (![v10 hasMediaItems] || (v11 = objc_msgSend(v10, "mediaItems")) == 0)
  {
LABEL_44:
    if ([v10 hasCurrentFrequency])
    {
      v34 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
      swift_beginAccess();
      if (*(a1 + v34))
      {
        if (qword_1000EACE0 != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        sub_100006928(v35, qword_1000F3B70);

        v36 = v10;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v121 = swift_slowAlloc();
          *v39 = 136446978;
          v40 = [v36 identifier];
          v41 = a1;
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;

          v45 = sub_100043AF0(v42, v44, &v121);

          *(v39 + 4) = v45;
          *(v39 + 12) = 2082;
          sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
          sub_1000845A8();
          v46 = CAFObserved<>.observable.getter();
          v47 = sub_100083338();
          v49 = v48;

          v50 = sub_100043AF0(v47, v49, &v121);

          *(v39 + 14) = v50;
          *(v39 + 22) = 2082;
          v51 = TerrestrialRadioStation.debugDisplayName.getter();
          v53 = sub_100043AF0(v51, v52, &v121);

          *(v39 + 24) = v53;
          *(v39 + 32) = 2082;
          aBlock = TerrestrialRadioStation.formattedFrequency.getter();
          v123 = v54;
          v55._countAndFlagsBits = 32;
          v55._object = 0xE100000000000000;
          String.append(_:)(v55);
          v56 = (v41 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
          swift_beginAccess();
          v57 = *v56;
          v58 = v56[1];

          v59._countAndFlagsBits = v57;
          v59._object = v58;
          String.append(_:)(v59);

          v60 = sub_100043AF0(aBlock, v123, &v121);

          *(v39 + 34) = v60;
          a1 = v41;
          _os_log_impl(&_mh_execute_header, v37, v38, "Source %{public}s %{public}s tuning to station %{public}s with frequency %{public}s", v39, 0x2Au);
          swift_arrayDestroy();
        }

        v61 = *(a1 + v34);
        v62 = [v36 identifier];
        if (!v62)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = String._bridgeToObjectiveC()();
        }

        v63 = swift_allocObject();
        *(v63 + 16) = a1;
        *(v63 + 24) = v36;
        v126 = sub_100084684;
        v127 = v63;
        aBlock = _NSConcreteStackBlock;
        v123 = 1107296256;
        v124 = sub_10009959C;
        v125 = &unk_1000E1A38;
        v64 = _Block_copy(&aBlock);

        v65 = v36;

        [v119 tuneToFrequency:v61 inSourceWithIdentifier:v62 completion:v64];
        _Block_release(v64);

        return;
      }
    }

    if (qword_1000EACE0 == -1)
    {
      goto LABEL_54;
    }

    goto LABEL_70;
  }

  v12 = v11;
  v13 = [v11 mediaItems];

  sub_100005A50(0, &qword_1000EDFE8, CAFMediaItem_ptr);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v115 = v6;
  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v114 = a1;
  v117 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  if (!v15)
  {
LABEL_43:

    a1 = v114;
    v6 = v115;
    goto LABEL_44;
  }

  a1 = 0;
  v6 = (v14 & 0xC000000000000001);
  while (1)
  {
    if (v6)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      if (a1 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_68;
      }

      v16 = *(v14 + 8 * a1 + 32);
      v17 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_25;
      }
    }

    v118 = v16;
    v18 = [v16 identifier];
    if (!v18)
    {
      goto LABEL_11;
    }

    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (!v22)
    {
      goto LABEL_11;
    }

    if (v20 == *v117 && v22 == v117[1])
    {
      break;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_62;
    }

LABEL_11:

    ++a1;
    if (v17 == v15)
    {
      goto LABEL_43;
    }
  }

LABEL_62:

  v79 = v114;
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  sub_100006928(v80, qword_1000F3B70);

  v81 = v10;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v128[0] = swift_slowAlloc();
    *v84 = 136316162;
    v85 = [v81 identifier];
    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;

    v89 = sub_100043AF0(v86, v88, v128);

    *(v84 + 4) = v89;
    *(v84 + 12) = 2080;
    sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
    sub_1000845A8();
    v90 = CAFObserved<>.observable.getter();
    v91 = sub_100083338();
    v93 = v92;

    v94 = sub_100043AF0(v91, v93, v128);

    *(v84 + 14) = v94;
    *(v84 + 22) = 2080;
    v95 = TerrestrialRadioStation.debugDisplayName.getter();
    v97 = sub_100043AF0(v95, v96, v128);

    *(v84 + 24) = v97;
    *(v84 + 32) = 2080;
    v98 = *v117;
    v99 = v117[1];

    v100 = sub_100043AF0(v98, v99, v128);

    *(v84 + 34) = v100;
    *(v84 + 42) = 2080;
    aBlock = TerrestrialRadioStation.formattedFrequency.getter();
    v123 = v101;
    v102._countAndFlagsBits = 32;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    v103 = (v114 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
    swift_beginAccess();
    v104 = *v103;
    v105 = v103[1];

    v106._countAndFlagsBits = v104;
    v106._object = v105;
    String.append(_:)(v106);

    v107 = sub_100043AF0(aBlock, v123, v128);

    *(v84 + 44) = v107;
    _os_log_impl(&_mh_execute_header, v82, v83, "Source %s %s tuning to station %s with identifier %s freq. %s", v84, 0x34u);
    swift_arrayDestroy();

    v79 = v114;
  }

  v108 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v109 = *(v79 + v108);
  v110 = swift_allocObject();
  *(v110 + 16) = v79;
  *(v110 + 24) = v81;
  v126 = sub_100084610;
  v127 = v110;
  aBlock = _NSConcreteStackBlock;
  v123 = 1107296256;
  v124 = sub_10009959C;
  v125 = &unk_1000E1A88;
  v111 = _Block_copy(&aBlock);

  v112 = v81;
  v113 = v109;

  [v119 tuneToMediaItem:v113 inSource:v112 completion:v111];
  _Block_release(v111);
}

uint64_t sub_1000820E4(char a1)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v1 = NSStringFromMediaCategory();
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

LABEL_8:
    v11 = [objc_opt_self() mainBundle];
    v19._object = 0xE000000000000000;
    v12._object = 0x80000001000BB7B0;
    v12._countAndFlagsBits = 0xD000000000000012;
    v13.value._countAndFlagsBits = 0x6F69646152;
    v13.value._object = 0xE500000000000000;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

    goto LABEL_9;
  }

  strcpy(&v17, "MediaCategory");
  HIWORD(v17._object) = -4864;
  v7._countAndFlagsBits = v3;
  v7._object = v5;
  String.append(_:)(v7);

  v8 = [objc_opt_self() mainBundle];
  v18._object = 0xE000000000000000;
  v9.value._countAndFlagsBits = 0x6F69646152;
  v9.value._object = 0xE500000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v9, v8, v10, v18);

LABEL_9:
  v15 = String.init(format:_:)();

  return v15;
}

void sub_1000822A8(unsigned int a1, unsigned __int8 a2)
{
  v5 = [v2 media];
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = v5;
  v7 = [v5 mediaSources];
  if (!v7)
  {

LABEL_27:
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006928(v39, qword_1000F3B70);
    osloga = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(osloga, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      v43 = CAFMediaSourceSemanticType.description.getter();
      v45 = sub_100043AF0(v43, v44, aBlock);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, osloga, v40, "Unable to match a media source with semantic type %s", v41, 0xCu);
      sub_100006960(v42);
    }

    else
    {
    }

    return;
  }

  v8 = v7;
  sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  oslog = a1;
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_5:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if ([v12 mediaSourceSemanticType] == a2)
    {
      break;
    }

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_26;
    }
  }

  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006928(v15, qword_1000F3B70);
  v16 = v13;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = &off_1000E7000;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v20 = 136315906;
    v21 = [v16 identifier];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = sub_100043AF0(v22, v24, aBlock);

    *(v20 + 4) = v25;
    LOBYTE(v22) = v18;
    *(v20 + 12) = 2080;
    sub_1000845A8();
    v26 = CAFObserved<>.observable.getter();
    v27 = sub_100083338();
    v29 = v28;

    v30 = sub_100043AF0(v27, v29, aBlock);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2080;
    v31 = CAFMediaSourceSemanticType.description.getter();
    v33 = sub_100043AF0(v31, v32, aBlock);
    v19 = &off_1000E7000;

    *(v20 + 24) = v33;
    *(v20 + 32) = 1024;
    v34 = oslog;
    *(v20 + 34) = oslog;
    _os_log_impl(&_mh_execute_header, v17, v22, "Tuning to source %s %s with type %s freq. %u", v20, 0x26u);
    swift_arrayDestroy();
  }

  else
  {

    v34 = oslog;
  }

  v35 = [v16 v19[233]];
  if (!v35)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = String._bridgeToObjectiveC()();
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v16;
  aBlock[4] = sub_100084664;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009959C;
  aBlock[3] = &unk_1000E1AD8;
  v37 = _Block_copy(aBlock);
  v38 = v16;

  [v6 tuneToFrequency:v34 inSourceWithIdentifier:v35 completion:v37];
  _Block_release(v37);
}

BOOL sub_100082858(unint64_t a1)
{
  v3 = [v1 media];
  if (!v3)
  {
    goto LABEL_44;
  }

  v4 = v3;
  v5 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  v8 = String._bridgeToObjectiveC()();

  v9 = [v1 mediaSourceWithIdentifier:v8];

  if (!v9)
  {
    v23 = [v4 mediaSources];
    if (v23)
    {
      v24 = v23;
      sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v25 >> 62)
      {
        v26 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v27 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
      v28 = a1;
      swift_beginAccess();
      if (v26)
      {
        a1 = 0;
        while (1)
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a1 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v29 = *(v25 + 8 * a1 + 32);
          }

          v9 = v29;
          v30 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            break;
          }

          if ([v29 mediaSourceSemanticType] == *(v28 + v27))
          {

            a1 = v28;
            goto LABEL_3;
          }

          ++a1;
          if (v30 == v26)
          {
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        swift_once();
LABEL_45:
        v48 = type metadata accessor for Logger();
        sub_100006928(v48, qword_1000F3B70);

        v12 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v12, v49))
        {
          v50 = swift_slowAlloc();
          v72[0] = swift_slowAlloc();
          *v50 = 136446722;
          v51 = a1;
          v52 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
          swift_beginAccess();
          v54 = *v52;
          v53 = v52[1];

          v55 = sub_100043AF0(v54, v53, v72);

          *(v50 + 4) = v55;
          *(v50 + 12) = 2082;
          v56 = (v51 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier);
          swift_beginAccess();
          v58 = *v56;
          v57 = v56[1];

          v59 = sub_100043AF0(v58, v57, v72);

          *(v50 + 14) = v59;
          *(v50 + 22) = 2082;
          v60 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
          swift_beginAccess();
          v61 = *(v51 + v60);
          v62 = CAFMediaSourceSemanticType.description.getter();
          v64 = sub_100043AF0(v62, v63, v72);

          *(v50 + 24) = v64;
          _os_log_impl(&_mh_execute_header, v12, v49, "Unable to match a source for station %{public}s in source with identifier %{public}s of type %{public}s", v50, 0x20u);
          swift_arrayDestroy();
        }

        goto LABEL_47;
      }

LABEL_42:

      a1 = v28;
    }

LABEL_44:
    if (qword_1000EACE0 == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_60;
  }

LABEL_3:

  if ([v9 disabled])
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006928(v10, qword_1000F3B70);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v71[0] = swift_slowAlloc();
      *v14 = 136446466;
      v15 = [v11 identifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_100043AF0(v16, v18, v71);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      [v11 mediaSourceSemanticType];
      v20 = CAFMediaSourceSemanticType.description.getter();
      v22 = sub_100043AF0(v20, v21, v71);

      *(v14 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "Source is disabled with identifier %{public}s, type %{public}s", v14, 0x16u);
      swift_arrayDestroy();

      return 0;
    }

LABEL_47:
    return 0;
  }

  if ([v9 hasMediaItems])
  {
    v31 = [v9 mediaItems];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 mediaItems];

      sub_100005A50(0, &qword_1000EDFE8, CAFMediaItem_ptr);
      v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v34 >> 62)
      {
        v35 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v68 = a1;
      v69 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      if (v35)
      {
        a1 = 0;
        v70 = v34 & 0xC000000000000001;
        v36 = v34 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v70)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (a1 >= *(v36 + 16))
            {
              goto LABEL_59;
            }

            v37 = *(v34 + 8 * a1 + 32);
          }

          v38 = v37;
          v39 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_58;
          }

          v40 = [v37 identifier];
          if (v40)
          {
            v41 = v34;
            v42 = v40;
            v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;

            v34 = v41;
            if (v45)
            {
              if (v43 == *v69 && v45 == v69[1])
              {

                goto LABEL_55;
              }

              v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v47)
              {

LABEL_55:

                return 1;
              }
            }
          }

          ++a1;
        }

        while (v39 != v35);
      }

      a1 = v68;
    }
  }

  v66 = [v9 hasCurrentFrequency];

  if (!v66)
  {
    return 0;
  }

  v67 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  swift_beginAccess();
  return *(a1 + v67) != 0;
}

id sub_100083044()
{
  result = [v0 mediaItemType];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = String.lowercased()();

      v8 = v7._countAndFlagsBits == 28001 && v7._object == 0xE200000000000000;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v7._countAndFlagsBits == 28006 ? (v12 = v7._object == 0xE200000000000000) : (v12 = 0), v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7._countAndFlagsBits == 6447460 && v7._object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7._countAndFlagsBits == 0x73756C70626164 && v7._object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7._countAndFlagsBits == 0x6D78737569726973 && v7._object == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        v9 = String._bridgeToObjectiveC()();
        v10 = sub_100084518(v9);

        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v11;
      }

      if (v7._countAndFlagsBits != 25704 || v7._object != 0xE200000000000000)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_100083338()
{
  v0 = dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
  if (v0 <= 7u && ((1 << v0) & 0x91) != 0)
  {
    v2 = CAFMediaSourceObservable.observed.getter();
    v3 = [v2 hasUserVisibleLabel];

    if (v3)
    {
      v4 = dispatch thunk of CAFMediaSourceObservable.userVisibleLabel.getter();
      if (v5)
      {
        v6 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          v6 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v6)
        {
          v7 = v4;
          if (String.count.getter() >= 16)
          {
            sub_100084474(15);

            v7 = static String._fromSubstring(_:)();
          }

          return v7;
        }
      }
    }
  }

  dispatch thunk of CAFMediaSourceObservable.mediaSourceSemanticType.getter();
  result = CAFMediaSourceSemanticType.title.getter();
  if (!v9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100083460()
{
  v1 = [v0 mediaItemType];
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 1;
  }

  v7 = String.lowercased()();

  if (v7._countAndFlagsBits == 25704 && v7._object == 0xE200000000000000)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 1;
    }
  }

  if ([v0 multicast] && objc_msgSend(v0, "multicast") < 8)
  {
    return 1;
  }

  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006928(v10, qword_1000F3B70);
  v11 = v0;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136446466;
    v16 = [v11 identifier];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v20 = 0xE600000000000000;
      v18 = 0x29656E6F6E28;
    }

    v22 = sub_100043AF0(v18, v20, &v24);

    *(v14 + 4) = v22;
    *(v14 + 12) = 258;
    v23 = [v11 multicast];

    *(v14 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v12, v13, "HD Media item with identifier %{public}s has invalid multicast: %{public}hhu", v14, 0xFu);
    sub_100006960(v15);

    return 0;
  }

  else
  {

    return 0;
  }
}

void sub_100083720(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 3u)
  {
    if (a1 < 3u)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  if (a1 <= 5u)
  {
    if (a1 == 4)
    {
LABEL_17:
      v8 = String._bridgeToObjectiveC()();
      v9 = [objc_opt_self() _systemImageNamed:v8];

      if (v9)
      {
        return;
      }

      __break(1u);
      goto LABEL_19;
    }

    if (a1 != 5)
    {
      goto LABEL_21;
    }

    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    if (v5)
    {
      return;
    }

    __break(1u);
LABEL_14:
    if (v1 != 3)
    {
      goto LABEL_21;
    }

    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() _systemImageNamed:v6];

    if (v7)
    {
      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (a1 == 6)
  {
    goto LABEL_8;
  }

  if (a1 == 7)
  {
LABEL_19:
    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() _systemImageNamed:v10];

    if (v11)
    {
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (a1 != 8)
  {
LABEL_21:
    v12 = String._bridgeToObjectiveC()();
    v13 = [objc_opt_self() systemImageNamed:v12];

    if (!v13)
    {
      __break(1u);
      goto LABEL_23;
    }

    return;
  }

LABEL_8:
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  if (!v3)
  {
LABEL_23:
    __break(1u);
  }
}

void sub_100083988(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006928(v4, qword_1000F3B70);
    swift_errorRetain();

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v7 = 136446466;
      v10 = TerrestrialRadioStation.debugDisplayName.getter();
      v12 = sub_100043AF0(v10, v11, &v29);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2114;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v13;
      *v8 = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to tune to station %{public}s with %{public}@", v7, 0x16u);
      sub_1000113D0(v8);

      sub_100006960(v9);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006928(v15, qword_1000F3B70);

    v16 = a3;
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v18 = 136446466;
      v19 = (a2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      v21 = *v19;
      v20 = v19[1];

      v22 = sub_100043AF0(v21, v20, &v30);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2082;
      v23 = [v16 identifier];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_100043AF0(v24, v26, &v30);

      *(v18 + 14) = v27;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Tuned successfully to %{public}s in source %{public}s!", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_100083D7C(uint64_t a1, int a2, void *a3)
{
  if (!a1)
  {
    if (qword_1000EACE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006928(v10, qword_1000F3B70);
    v11 = a3;
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 67109378;
      *(v13 + 4) = a2;
      *(v13 + 8) = 2080;
      v15 = [v11 identifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_100043AF0(v16, v18, &v21);

      *(v13 + 10) = v19;
      _os_log_impl(&_mh_execute_header, oslog, v12, "Tuned successfully to %u in source %s!", v13, 0x12u);
      sub_100006960(v14);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006928(v3, qword_1000F3B70);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Failed to tune to frequency with %@", v5, 0xCu);
    sub_1000113D0(v6);

LABEL_10:

    return;
  }
}

void sub_10008406C(id *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v47 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v43 = a3;
    v8 = 0;
    v45 = i;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v10 = *(a2 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = [v10 identifier];
      if (v13)
      {
        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = [v47 mediaItemImageIdentifier];
      if (!v18)
      {
        if (!v17)
        {
          goto LABEL_26;
        }

LABEL_21:

        goto LABEL_6;
      }

      a3 = v18;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (v17)
      {
        if (!v21)
        {
          goto LABEL_21;
        }

        if (v15 == v19 && v17 == v21)
        {

LABEL_26:
          v22 = [v11 imageData];

          if (v22)
          {
            v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = v24;

            v26 = objc_allocWithZone(UIImage);
            isa = Data._bridgeToObjectiveC()().super.isa;
            v22 = [v26 initWithData:isa];

            sub_100072620(v23, v25);
          }

LABEL_28:
          a3 = v43;
          goto LABEL_33;
        }

        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v21)
        {
          goto LABEL_26;
        }
      }

LABEL_6:
      ++v8;
      if (v12 == v45)
      {
        v22 = 0;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v22 = 0;
LABEL_33:
  v28 = v47;
  v29 = [v28 multicast];
  v30 = type metadata accessor for TerrestrialRadioStation();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v48 = v22;
  v46 = TerrestrialRadioStation.init(station:source:multicast:logo:)(v28, a3, v29, v22);
  v33 = a4;
  if (a4 >> 62)
  {
LABEL_47:
    v42 = _CocoaArrayWrapper.endIndex.getter();
    v33 = a4;
    v34 = v42;
  }

  else
  {
    v34 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = 0;
  v36 = v33 & 0xC000000000000001;
  do
  {
    v37 = v35;
    if (v34 == v35)
    {
      break;
    }

    if (v36)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v37, 1))
      {
LABEL_44:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v35 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_47;
      }

      v38 = *(v33 + 8 * v35 + 32);

      if (__OFADD__(v37, 1))
      {
        goto LABEL_44;
      }
    }

    v39 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v40 = *(v38 + v39);
    v41 = CAFMediaItem.isEquivalent(to:)();

    v35 = v37 + 1;
    v33 = a4;
  }

  while ((v41 & 1) == 0);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();

  *a5 = v46;
}

uint64_t sub_100084474(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

id sub_100084518(void *a1)
{
  v1 = a1;
  v2 = CAFUIFrameworkBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1000E3070 table:@"Localizable"];

  return v3;
}

uint64_t sub_100084590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000845A8()
{
  result = qword_1000EAFE8;
  if (!qword_1000EAFE8)
  {
    sub_100005A50(255, &qword_1000EAFE0, CAFMediaSource_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EAFE8);
  }

  return result;
}

uint64_t sub_10008462C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100084688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000846D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

double sub_10008473C@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PinnedScrollableViews();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);

  static HorizontalAlignment.leading.getter();
  LODWORD(v6) = 0;
  sub_10008786C(&qword_1000EE450, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10000368C(&qword_1000EE458, &qword_1000B8C38);
  sub_100084B54();
  LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
  if (qword_1000EAD38 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = (a1 + *(sub_10000368C(&qword_1000EE470, &qword_1000B8C40) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

uint64_t sub_100084934(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10007760C();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  sub_10000368C(&qword_1000EE478, &unk_1000B8C48);
  sub_100005870(&qword_1000EE480, &qword_1000EE478, &unk_1000B8C48);
  sub_100084BD8();
  sub_100086938();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100084A5C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_10000368C(&qword_1000EB9E0, &qword_1000B48F0);
  Binding.projectedValue.getter();
  type metadata accessor for RadioDialerViewModel();
  sub_10008786C(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
  result = EnvironmentObject.init()();
  *a2 = v3;
  *(a2 + 1) = v4;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  *(a2 + 40) = v6;
  return result;
}

double sub_100084B34@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  return sub_10008473C(a1);
}

unint64_t sub_100084B54()
{
  result = qword_1000EE460;
  if (!qword_1000EE460)
  {
    sub_100005780(&qword_1000EE458, &qword_1000B8C38);
    sub_100084BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE460);
  }

  return result;
}

unint64_t sub_100084BD8()
{
  result = qword_1000EE468;
  if (!qword_1000EE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE468);
  }

  return result;
}

uint64_t sub_100084C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = type metadata accessor for EnvironmentValues();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000368C(&qword_1000EE580, &qword_1000B9078);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v44 = sub_10000368C(&qword_1000EE588, &qword_1000B9080);
  v13 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v15 = &v42 - v14;
  v45 = sub_10000368C(&qword_1000EE590, &qword_1000B9088);
  v16 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v18 = &v42 - v17;
  v19 = v2[3];
  KeyPath = swift_getKeyPath();
  v21 = sub_10000368C(&qword_1000EE598, &qword_1000B9090);
  (*(*(v21 - 8) + 16))(v12, a1, v21);
  v22 = &v12[*(sub_10000368C(&qword_1000EE5A0, &qword_1000B9098) + 36)];
  *v22 = KeyPath;
  v22[1] = v19;
  v23 = v2[2];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v24 = &v12[*(v9 + 44)];
  v25 = v49;
  *v24 = v48;
  *(v24 + 1) = v25;
  *(v24 + 2) = v50;
  v52 = *(v2 + 8);
  v26 = *v2;
  v51 = *v2;
  v27 = v52;
  if (v52 == 1)
  {
    v28 = v43;
    if ((v26 & 1) == 0)
    {
LABEL_3:
      v29 = v2[5];

      goto LABEL_6;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007834(&v51, &qword_1000EBA80, &qword_1000B4AF0);
    v28 = v43;
    (*(v43 + 8))(v7, v4);
    if (v47 != 1)
    {
      goto LABEL_3;
    }
  }

  v32 = [objc_opt_self() radio_carSystemFocusLabelColor];
  v30 = Color.init(uiColor:)();
LABEL_6:
  v47 = v30;
  v33 = AnyShapeStyle.init<A>(_:)();
  sub_10001721C(v12, v15, &qword_1000EE580, &qword_1000B9078);
  *&v15[*(v44 + 36)] = v33;
  if (!v27)
  {

    static os_log_type_t.fault.getter();
    v35 = v28;
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007834(&v51, &qword_1000EBA80, &qword_1000B4AF0);
    (*(v35 + 8))(v7, v4);
    if (v47 != 1)
    {
      goto LABEL_8;
    }

LABEL_10:
    v37 = [objc_opt_self() radio_carSystemFocusColor];
    v34 = Color.init(uiColor:)();
    goto LABEL_11;
  }

  if (v26)
  {
    goto LABEL_10;
  }

LABEL_8:
  v34 = v2[4];

LABEL_11:
  v38 = static Edge.Set.all.getter();
  sub_10001721C(v15, v18, &qword_1000EE588, &qword_1000B9080);
  v39 = &v18[*(v45 + 36)];
  *v39 = v34;
  v39[8] = v38;
  v40 = v46;
  sub_10001721C(v18, v46, &qword_1000EE590, &qword_1000B9088);
  result = sub_10000368C(&qword_1000EE5A8, &unk_1000B90A0);
  *(v40 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100085148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a1;
  v5 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v41 - v7;
  v42 = type metadata accessor for Font.TextStyle();
  v9 = *(v42 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v42);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EnvironmentValues();
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 1))
  {
    v17 = *v2;
    v18 = v2[1];

    LOBYTE(v18) = sub_100048060(v17 | (v18 << 8));

    if ((v18 & 1) == 0)
    {
      static Color.white.getter();
      v21 = Color.opacity(_:)();

      goto LABEL_10;
    }

    v50 = v2[32];
    v19 = *(v2 + 3);
    v49 = *(v3 + 3);
    if (v50 == 1)
    {
      if ((v19 & 1) == 0)
      {
LABEL_5:
        v20 = static Color.primary.getter();
LABEL_9:
        v21 = v20;
LABEL_10:
        if (ButtonStyleConfiguration.isPressed.getter())
        {
          v24 = [objc_opt_self() whiteColor];
          [v24 colorWithAlphaComponent:0.6];

LABEL_17:
          v26 = Color.init(uiColor:)();
          goto LABEL_18;
        }

        v48 = v3[32];
        v25 = *(v3 + 3);
        v47 = v25;
        if (v48 == 1)
        {
          if ((v25 & 1) == 0)
          {
LABEL_14:
            static Color.white.getter();
            v26 = Color.opacity(_:)();

LABEL_18:
            ButtonStyleConfiguration.label.getter();
            v29 = v42;
            (*(v9 + 104))(v12, enum case for Font.TextStyle.title3(_:), v42);
            v30 = type metadata accessor for Font.Design();
            (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
            static Font.Weight.medium.getter();
            v31 = static Font.system(_:design:weight:)();
            sub_100007834(v8, &qword_1000ED388, &unk_1000B6FF0);
            (*(v9 + 8))(v12, v29);
            KeyPath = swift_getKeyPath();
            v33 = (a2 + *(sub_10000368C(&qword_1000EE558, &qword_1000B9020) + 36));
            *v33 = KeyPath;
            v33[1] = v31;
            static Alignment.center.getter();
            _FrameLayout.init(width:height:alignment:)();
            v34 = (a2 + *(sub_10000368C(&qword_1000EE560, &qword_1000B9028) + 36));
            v35 = v45;
            *v34 = v44;
            v34[1] = v35;
            v34[2] = v46;
            LOBYTE(v31) = static Edge.Set.all.getter();
            v36 = a2 + *(sub_10000368C(&qword_1000EE568, &qword_1000B9030) + 36);
            *v36 = v26;
            *(v36 + 8) = v31;
            v37 = swift_getKeyPath();
            v38 = (a2 + *(sub_10000368C(&qword_1000EE570, &qword_1000B9068) + 36));
            *v38 = v37;
            v38[1] = v21;
            result = sub_10000368C(&qword_1000EE578, &qword_1000B9070);
            *(a2 + *(result + 36)) = 256;
            return result;
          }
        }

        else
        {

          static os_log_type_t.fault.getter();
          v27 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_100007834(&v47, &qword_1000EBA80, &qword_1000B4AF0);
          (*(v41 + 8))(v16, v13);
          if (v44 != 1)
          {
            goto LABEL_14;
          }
        }

        v28 = [objc_opt_self() radio_carSystemFocusColor];
        goto LABEL_17;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v22 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100007834(&v49, &qword_1000EBA80, &qword_1000B4AF0);
      (*(v41 + 8))(v16, v13);
      if (v44 != 1)
      {
        goto LABEL_5;
      }
    }

    v23 = [objc_opt_self() radio_carSystemFocusLabelColor];
    v20 = Color.init(uiColor:)();
    goto LABEL_9;
  }

  v40 = *(v2 + 2);
  type metadata accessor for RadioDialerViewModel();
  sub_10008786C(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000857AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v85 = a1;
  v72 = sub_10000368C(&qword_1000EE4A8, &qword_1000B8D68);
  v71 = *(v72 - 8);
  v3 = *(v71 + 64);
  __chkstk_darwin(v72);
  v5 = &v66 - v4;
  v6 = sub_10000368C(&qword_1000EE4B0, &qword_1000B8D70);
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = *(v74 + 64);
  __chkstk_darwin(v6);
  v73 = &v66 - v8;
  v81 = sub_10000368C(&qword_1000EE4B8, &qword_1000B8D78);
  v9 = *(*(v81 - 8) + 64);
  v10 = __chkstk_darwin(v81);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v76 = (&v66 - v13);
  v83 = sub_10000368C(&qword_1000EE4C0, &qword_1000B8D80);
  v14 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v84 = (&v66 - v15);
  v78 = sub_10000368C(&qword_1000EE4C8, &qword_1000B8D88);
  v16 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v79 = &v66 - v17;
  v82 = sub_10000368C(&qword_1000EE4D0, &qword_1000B8D90);
  v18 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v80 = &v66 - v19;
  v69 = type metadata accessor for PlainButtonStyle();
  v68 = *(v69 - 8);
  v20 = *(v68 + 64);
  __chkstk_darwin(v69);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000368C(&qword_1000EE4D8, &qword_1000B8D98);
  v67 = *(v23 - 8);
  v24 = *(v67 + 64);
  __chkstk_darwin(v23);
  v26 = &v66 - v25;
  v27 = sub_10000368C(&qword_1000EE4E0, &qword_1000B8DA0);
  v70 = *(v27 - 8);
  v28 = *(v70 + 64);
  __chkstk_darwin(v27);
  v30 = &v66 - v29;
  v31 = sub_10000368C(&qword_1000EE4E8, &qword_1000B8DA8);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31);
  v35 = &v66 - v34;
  v36 = *v2;
  if (v2[1])
  {
    if (v36 != 1)
    {
      v62 = v84;
      *v84 = 0;
      *(v62 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      sub_100086C34();
      return _ConditionalContent<>.init(storage:)();
    }

    v77 = v33;
    if (*(v2 + 4))
    {
      v37 = *(v2 + 4);

      v38 = sub_100048060(257);

      if (v38)
      {
        v39 = *(v2 + 2);
        v86[0] = *(v2 + 1);
        v40 = swift_allocObject();
        v76 = &v66;
        v41 = *(v2 + 1);
        *(v40 + 16) = *v2;
        *(v40 + 32) = v41;
        *(v40 + 48) = *(v2 + 2);
        *(v40 + 64) = 257;
        __chkstk_darwin(v40);
        *(&v66 - 8) = v42;

        sub_100014414(v86, v88);

        sub_10000368C(&qword_1000EE530, &unk_1000B8E18);
        sub_100087138();
        Button.init(action:label:)();
        PlainButtonStyle.init()();
        sub_100005870(&qword_1000EE500, &qword_1000EE4D8, &qword_1000B8D98);
        sub_10008786C(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle);
        v43 = v69;
        View.buttonStyle<A>(_:)();
        (*(v68 + 8))(v22, v43);
        (*(v67 + 8))(v26, v23);
        v44 = v70;
        (*(v70 + 32))(v35, v30, v27);
        (*(v44 + 56))(v35, 0, 1, v27);
      }

      else
      {
        (*(v70 + 56))(v35, 1, 1, v27);
      }

      v58 = &qword_1000EE4E8;
      v59 = &qword_1000B8DA8;
      sub_1000077CC(v35, v79, &qword_1000EE4E8, &qword_1000B8DA8);
      swift_storeEnumTagMultiPayload();
      sub_100086CC0();
      sub_100086E04();
      v64 = v80;
      _ConditionalContent<>.init(storage:)();
      sub_1000077CC(v64, v84, &qword_1000EE4D0, &qword_1000B8D90);
      swift_storeEnumTagMultiPayload();
      sub_100086C34();
      _ConditionalContent<>.init(storage:)();
      sub_100007834(v64, &qword_1000EE4D0, &qword_1000B8D90);
      v61 = v35;
      return sub_100007834(v61, v58, v59);
    }

    v65 = *(v2 + 5);
LABEL_14:
    type metadata accessor for RadioDialerViewModel();
    sub_10008786C(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v77 = v33;
  v45 = *(v2 + 2);
  v88[0] = *(v2 + 1);
  v47 = *(v2 + 4);
  v46 = *(v2 + 5);
  v48 = swift_allocObject();
  v49 = *(v2 + 1);
  *(v48 + 16) = *v2;
  *(v48 + 32) = v49;
  *(v48 + 48) = *(v2 + 2);
  *(v48 + 64) = v36;
  *(v48 + 65) = 0;
  __chkstk_darwin(v48);
  *(&v66 - 16) = v36;
  *(&v66 - 15) = 0;

  sub_100014414(v88, v86);

  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  LOWORD(v86[0]) = v36;
  v86[1] = v47;
  v86[2] = v46;
  v86[3] = KeyPath;
  v87 = 0;
  sub_100005870(&qword_1000EE510, &qword_1000EE4A8, &qword_1000B8D68);
  sub_100086F40();
  v52 = v72;
  v51 = v73;
  View.buttonStyle<A>(_:)();

  (*(v71 + 8))(v5, v52);
  if (!v47)
  {
    goto LABEL_14;
  }

  v53 = sub_100048060(v36);

  v54 = swift_getKeyPath();
  v55 = swift_allocObject();
  *(v55 + 16) = (v53 & 1) == 0;
  (*(v74 + 32))(v12, v51, v75);
  v56 = &v12[*(v81 + 36)];
  *v56 = v54;
  v56[1] = sub_100087020;
  v56[2] = v55;
  v57 = v76;
  sub_100087038(v12, v76);
  v58 = &qword_1000EE4B8;
  v59 = &qword_1000B8D78;
  sub_1000077CC(v57, v79, &qword_1000EE4B8, &qword_1000B8D78);
  swift_storeEnumTagMultiPayload();
  sub_100086CC0();
  sub_100086E04();
  v60 = v80;
  _ConditionalContent<>.init(storage:)();
  sub_1000077CC(v60, v84, &qword_1000EE4D0, &qword_1000B8D90);
  swift_storeEnumTagMultiPayload();
  sub_100086C34();
  _ConditionalContent<>.init(storage:)();
  sub_100007834(v60, &qword_1000EE4D0, &qword_1000B8D90);
  v61 = v57;
  return sub_100007834(v61, v58, v59);
}

uint64_t sub_10008634C@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000462C8(a1 & 0x1FF);
  v13 = Image.init(systemName:)();
  (*(v9 + 104))(v12, enum case for Font.TextStyle.callout(_:), v8);
  v14 = type metadata accessor for Font.Design();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  static Font.Weight.medium.getter();
  v15 = static Font.system(_:design:weight:)();
  sub_100007834(v7, &qword_1000ED388, &unk_1000B6FF0);
  (*(v9 + 8))(v12, v8);
  v16 = static Color.clear.getter();
  v17 = static Color.secondary.getter();
  result = swift_getKeyPath();
  *a2 = v13;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x4044000000000000;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
  return result;
}

uint64_t sub_100086550(uint64_t a1, __int16 a2)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);

    sub_100046C90(a2 & 0x1FF);
  }

  else
  {
    v5 = *(a1 + 40);
    type metadata accessor for RadioDialerViewModel();
    sub_10008786C(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100086600@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x100) == 0)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  sub_100020F58();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100086720@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (v1[1] == 1)
  {
    v4 = 0xED00006472617772;
    v5 = 0x6F662E776F727261;
    v6 = 0xEF64726177726F66;
    v7 = 0x2E6E6F7276656863;
    if (v3 != 3)
    {
      v7 = 0xD000000000000010;
      v6 = 0x80000001000BBAB0;
    }

    if (v3 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xE000000000000000;
    v9 = 0xD000000000000014;
    if (*v1)
    {
      v8 = 0x80000001000BBC80;
    }

    else
    {
      v9 = 0;
    }

    if (*v1 <= 1u)
    {
      result = v9;
    }

    else
    {
      result = v5;
    }

    if (*v1 <= 1u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  else
  {
    v12 = *v1;
    result = dispatch thunk of CustomStringConvertible.description.getter();
  }

  *a1 = result;
  a1[1] = v11;
  return result;
}

uint64_t sub_10008681C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100086848(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_100086874@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000868E0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100086928@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  return sub_100084A5C(a1, a2);
}

unint64_t sub_100086938()
{
  result = qword_1000EE488;
  if (!qword_1000EE488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE488);
  }

  return result;
}

__n128 sub_10008698C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000869A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000869E8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for NumpadButtonViewModel(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for NumpadButtonViewModel(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t sub_100086B60()
{
  result = qword_1000EE490;
  if (!qword_1000EE490)
  {
    sub_100005780(&qword_1000EE470, &qword_1000B8C40);
    sub_100005870(&qword_1000EE498, &qword_1000EE4A0, &qword_1000B8CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE490);
  }

  return result;
}

unint64_t sub_100086C34()
{
  result = qword_1000EE4F0;
  if (!qword_1000EE4F0)
  {
    sub_100005780(&qword_1000EE4D0, &qword_1000B8D90);
    sub_100086CC0();
    sub_100086E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE4F0);
  }

  return result;
}

unint64_t sub_100086CC0()
{
  result = qword_1000EE4F8;
  if (!qword_1000EE4F8)
  {
    sub_100005780(&qword_1000EE4E8, &qword_1000B8DA8);
    sub_100005780(&qword_1000EE4D8, &qword_1000B8D98);
    type metadata accessor for PlainButtonStyle();
    sub_100005870(&qword_1000EE500, &qword_1000EE4D8, &qword_1000B8D98);
    sub_10008786C(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE4F8);
  }

  return result;
}

unint64_t sub_100086E04()
{
  result = qword_1000EE508;
  if (!qword_1000EE508)
  {
    sub_100005780(&qword_1000EE4B8, &qword_1000B8D78);
    sub_100005780(&qword_1000EE4A8, &qword_1000B8D68);
    sub_100005870(&qword_1000EE510, &qword_1000EE4A8, &qword_1000B8D68);
    sub_100086F40();
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EE520, &qword_1000EE528, &qword_1000B8DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE508);
  }

  return result;
}

unint64_t sub_100086F40()
{
  result = qword_1000EE518;
  if (!qword_1000EE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE518);
  }

  return result;
}

uint64_t sub_100086FB8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100087038(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000368C(&qword_1000EE4B8, &qword_1000B8D78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000870A8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 66, 7);
}

unint64_t sub_100087138()
{
  result = qword_1000EE538;
  if (!qword_1000EE538)
  {
    sub_100005780(&qword_1000EE530, &unk_1000B8E18);
    sub_1000871C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE538);
  }

  return result;
}

unint64_t sub_1000871C4()
{
  result = qword_1000EE540;
  if (!qword_1000EE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE540);
  }

  return result;
}

uint64_t sub_100087218(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_100087274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000872DC(uint64_t a1, int a2)
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

uint64_t sub_100087324(uint64_t result, int a2, int a3)
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

unint64_t sub_100087384()
{
  result = qword_1000EE548;
  if (!qword_1000EE548)
  {
    sub_100005780(&qword_1000EE550, &qword_1000B8F58);
    sub_100086C34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE548);
  }

  return result;
}

uint64_t sub_100087450@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008747C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

unint64_t sub_1000874AC()
{
  result = qword_1000EE5B0;
  if (!qword_1000EE5B0)
  {
    sub_100005780(&qword_1000EE578, &qword_1000B9070);
    sub_100087564();
    sub_100005870(&qword_1000EE600, &qword_1000EE608, &qword_1000B90C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE5B0);
  }

  return result;
}

unint64_t sub_100087564()
{
  result = qword_1000EE5B8;
  if (!qword_1000EE5B8)
  {
    sub_100005780(&qword_1000EE570, &qword_1000B9068);
    sub_10008761C();
    sub_100005870(&qword_1000EE5F0, &qword_1000EE5F8, &qword_1000B90B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE5B8);
  }

  return result;
}

unint64_t sub_10008761C()
{
  result = qword_1000EE5C0;
  if (!qword_1000EE5C0)
  {
    sub_100005780(&qword_1000EE568, &qword_1000B9030);
    sub_100087700(&qword_1000EE5C8, &qword_1000EE560, &qword_1000B9028, sub_100087784);
    sub_100005870(&qword_1000EE5E0, &qword_1000EE5E8, &qword_1000B90B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE5C0);
  }

  return result;
}

uint64_t sub_100087700(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100087784()
{
  result = qword_1000EE5D0;
  if (!qword_1000EE5D0)
  {
    sub_100005780(&qword_1000EE558, &qword_1000B9020);
    sub_10008786C(&qword_1000EE5D8, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100005870(&qword_1000EBB00, &qword_1000EBB08, &qword_1000B4B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE5D0);
  }

  return result;
}

uint64_t sub_10008786C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000878B8()
{
  result = qword_1000EE610;
  if (!qword_1000EE610)
  {
    sub_100005780(&qword_1000EE5A8, &unk_1000B90A0);
    sub_100087970();
    sub_100005870(&qword_1000EE600, &qword_1000EE608, &qword_1000B90C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE610);
  }

  return result;
}

unint64_t sub_100087970()
{
  result = qword_1000EE618;
  if (!qword_1000EE618)
  {
    sub_100005780(&qword_1000EE590, &qword_1000B9088);
    sub_100087A28();
    sub_100005870(&qword_1000EE5E0, &qword_1000EE5E8, &qword_1000B90B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE618);
  }

  return result;
}

unint64_t sub_100087A28()
{
  result = qword_1000EE620;
  if (!qword_1000EE620)
  {
    sub_100005780(&qword_1000EE588, &qword_1000B9080);
    sub_100087700(&qword_1000EE628, &qword_1000EE580, &qword_1000B9078, sub_100087B0C);
    sub_100005870(&qword_1000EE640, &qword_1000EE648, &qword_1000B90C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE620);
  }

  return result;
}

unint64_t sub_100087B0C()
{
  result = qword_1000EE630;
  if (!qword_1000EE630)
  {
    sub_100005780(&qword_1000EE5A0, &qword_1000B9098);
    sub_100005870(&qword_1000EE638, &qword_1000EE598, &qword_1000B9090);
    sub_100005870(&qword_1000EBB00, &qword_1000EBB08, &qword_1000B4B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE630);
  }

  return result;
}

uint64_t sub_100087BF8(uint64_t a1, int a2)
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

uint64_t sub_100087C40(uint64_t result, int a2, int a3)
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

uint64_t sub_100087CAC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RadioDialerViewModel();
  sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  sub_10000368C(&qword_1000EB9E0, &qword_1000B48F0);
  Binding.projectedValue.getter();
  v5 = v16;
  v6 = v17;
  v7 = EnvironmentObject.init()();
  v9 = v8;
  KeyPath = swift_getKeyPath();
  v11 = *v15;
  *(&v17 + 1) = *v15;
  DWORD1(v17) = *&v15[3];
  *v18 = v9;
  *&v18[8] = KeyPath;
  v18[16] = 0;
  *&v18[17] = 258;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 63) = *&v18[15];
  v16 = v5;
  LOBYTE(v17) = v6;
  *(&v17 + 1) = v7;
  v12 = *v18;
  *(a1 + 32) = v17;
  *(a1 + 48) = v12;
  *(a1 + 16) = v5;
  v19 = v5;
  v20 = v6;
  *&v21[3] = *&v15[3];
  *v21 = v11;
  v22 = v7;
  v23 = v9;
  v24 = KeyPath;
  v25 = 0;
  v26 = 258;

  sub_10008B7A8(&v16, v14);
  sub_10008B7E0(&v19);
}

double sub_100087E50@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = static HorizontalAlignment.center.getter();
  v17 = 0;
  sub_100087CAC(&v12);
  v20 = v14;
  v21[0] = *v15;
  *(v21 + 15) = *&v15[15];
  v18 = v12;
  v19 = v13;
  v22[1] = v13;
  v22[2] = v14;
  v23[0] = *v15;
  *(v23 + 15) = *&v15[15];
  v22[0] = v12;
  sub_1000077CC(&v18, v11, &qword_1000EE650, &unk_1000B9170);
  sub_100007834(v22, &qword_1000EE650, &unk_1000B9170);
  *&v16[7] = v18;
  *&v16[70] = *(v21 + 15);
  *&v16[55] = v21[0];
  *&v16[39] = v20;
  *&v16[23] = v19;
  v7 = *v16;
  *(a1 + 33) = *&v16[16];
  v8 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  *(a1 + 65) = v8;
  result = *&v16[58];
  *(a1 + 75) = *&v16[58];
  v10 = v17;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 17) = v7;
  return result;
}

uint64_t sub_100087F70@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RadioDialerViewModel();
  sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  v5 = EnvironmentObject.init()();
  v7 = v6;
  result = EnvironmentObject.init()();
  *a1 = 260;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v5;
  *(a1 + 48) = v7;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 3;
  *(a1 + 73) = 1;
  *(a1 + 80) = result;
  *(a1 + 88) = v9;
  return result;
}

double sub_100088074@<D0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v16 = 0;
  sub_100087F70(&v9);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v17 = v9;
  v18 = v10;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v23[5] = v14;
  v23[0] = v9;
  v23[1] = v10;
  sub_1000077CC(&v17, &v8, &qword_1000EE6B8, &unk_1000B94B0);
  sub_100007834(v23, &qword_1000EE6B8, &unk_1000B94B0);
  *&v15[39] = v19;
  *&v15[55] = v20;
  *&v15[71] = v21;
  *&v15[87] = v22;
  *&v15[7] = v17;
  *&v15[23] = v18;
  v3 = *&v15[32];
  *(a1 + 65) = *&v15[48];
  v4 = *&v15[80];
  *(a1 + 81) = *&v15[64];
  *(a1 + 97) = v4;
  v6 = *v15;
  result = *&v15[16];
  *(a1 + 33) = *&v15[16];
  *(a1 + 49) = v3;
  v7 = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 112) = *&v15[95];
  *(a1 + 17) = v6;
  return result;
}

uint64_t sub_100088178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v37 = type metadata accessor for Font.TextStyle();
  v7 = *(v37 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v37);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000368C(&qword_1000EE740, &qword_1000B9808);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v34 = sub_10000368C(&qword_1000EE748, &qword_1000B9810);
  v15 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v17 = &v33 - v16;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    sub_100020F58();
    v18 = Text.init<A>(_:)();
    v20 = v19;
    *&v39 = v18;
    *(&v39 + 1) = v19;
    v22 = v21 & 1;
    LOBYTE(v40) = v21 & 1;
    *(&v40 + 1) = v23;
    View.lineLimit(_:reservesSpace:)();
    sub_100021B08(v18, v20, v22);

    v24 = v37;
    (*(v7 + 104))(v10, enum case for Font.TextStyle.title3(_:), v37);
    v25 = type metadata accessor for Font.Design();
    (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
    static Font.Weight.medium.getter();
    v26 = static Font.system(_:design:weight:)();
    sub_100007834(v6, &qword_1000ED388, &unk_1000B6FF0);
    (*(v7 + 8))(v10, v24);
    KeyPath = swift_getKeyPath();
    (*(v35 + 32))(v17, v14, v36);
    v28 = &v17[*(v34 + 36)];
    *v28 = KeyPath;
    v28[1] = v26;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v29 = v38;
    sub_10001721C(v17, v38, &qword_1000EE748, &qword_1000B9810);
    result = sub_10000368C(&qword_1000EE770, &qword_1000B98B0);
    v31 = (v29 + *(result + 36));
    v32 = v40;
    *v31 = v39;
    v31[1] = v32;
    v31[2] = v41;
  }

  else
  {
    type metadata accessor for RadioDialerViewModel();
    sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000885EC@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v7 = type metadata accessor for PlainButtonStyle();
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000368C(&qword_1000EE4D8, &qword_1000B8D98);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v27 - v15;
  v28 = sub_10000368C(&qword_1000EE4E0, &qword_1000B8DA0);
  v17 = *(v28 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v28);
  v20 = v27 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 17) = HIBYTE(a1) & 1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  v27[1] = a3;
  *(v21 + 40) = a1;
  *(v21 + 41) = HIBYTE(a1) & 1;
  v32 = a1 & 0x1FF;

  sub_10000368C(&qword_1000EE530, &unk_1000B8E18);
  sub_100087138();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100005870(&qword_1000EE500, &qword_1000EE4D8, &qword_1000B8D98);
  sub_10008BAA4(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle);
  v22 = v29;
  View.buttonStyle<A>(_:)();
  (*(v30 + 8))(v11, v22);
  (*(v13 + 8))(v16, v12);
  if (a2)
  {

    v23 = sub_100048060(a1 & 0x1FF);

    if (v23)
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.0;
    }

    v25 = v31;
    (*(v17 + 32))(v31, v20, v28);
    result = sub_10000368C(&qword_1000EE778, &qword_1000B98B8);
    *(v25 + *(result + 36)) = v24;
  }

  else
  {
    type metadata accessor for RadioDialerViewModel();
    sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000889E8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if (a2)
  {

    sub_100046C90(a4 & 0x1FF);
  }

  else
  {
    type metadata accessor for RadioDialerViewModel();
    sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100088A98@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19[-v6];
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000462C8(a1 & 0x1FF);
  v13 = Image.init(systemName:)();
  (*(v9 + 104))(v12, enum case for Font.TextStyle.callout(_:), v8);
  v14 = type metadata accessor for Font.Design();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  static Font.Weight.semibold.getter();
  v15 = static Font.system(_:design:weight:)();
  sub_100007834(v7, &qword_1000ED388, &unk_1000B6FF0);
  (*(v9 + 8))(v12, v8);
  v16 = static Color.secondary.getter();
  v17 = static Color.primary.getter();
  result = swift_getKeyPath();
  *a2 = v13;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0x4044000000000000;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
  return result;
}

uint64_t sub_100088CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    if (!v16 || (v3 = (v16 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast), swift_beginAccess(), v4 = *v3, LOBYTE(v3) = v3[1], , (v3 & 1) != 0))
    {

      goto LABEL_5;
    }

    v7 = sub_100046BD4();

    if (v7 == 2)
    {
    }

    else
    {
      v8 = sub_100046BD4();

      if (v8 != 8)
      {
LABEL_5:
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v13)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v5 = sub_100046BD4();

          if (v5 == 3)
          {
            v6 = v13;
            Image.init(uiImage:)();
            sub_10008BBA0();
            sub_10008BBF4();
            swift_retain_n();
            _ConditionalContent<>.init(storage:)();
            j__swift_retain(v13, *(&v13 + 1));
            sub_10000368C(&qword_1000EE698, &qword_1000B9460);
            sub_10008BB14();
            _ConditionalContent<>.init(storage:)();

            j__swift_release(v13, *(&v13 + 1));

LABEL_15:
            sub_10008BC48(v13, *(&v13 + 1), v14, v15);
            type metadata accessor for RadioDialerViewModel();
            sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
            v9 = EnvironmentObject.init()();
            v11 = v10;
            sub_10008BC48(v13, *(&v13 + 1), v14, v15);

            sub_10008BC5C(v13, *(&v13 + 1), v14, v15);
            *a2 = v13;
            *(a2 + 16) = v14;
            *(a2 + 18) = v15;
            *(a2 + 24) = v9;
            *(a2 + 32) = v11;
            *(a2 + 40) = 0;
            *(a2 + 48) = 0;

            return sub_10008BC5C(v13, *(&v13 + 1), v14, v15);
          }
        }

        else
        {
        }

        sub_10000368C(&qword_1000EE698, &qword_1000B9460);
        sub_10008BB14();
        _ConditionalContent<>.init(storage:)();
        goto LABEL_15;
      }
    }

    type metadata accessor for RadioDialerViewModel();
    sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
    EnvironmentObject.init()();
    sub_10008BBA0();
    sub_10008BBF4();

    _ConditionalContent<>.init(storage:)();
    sub_10000368C(&qword_1000EE698, &qword_1000B9460);
    sub_10008BB14();
    _ConditionalContent<>.init(storage:)();

    goto LABEL_15;
  }

  type metadata accessor for RadioDialerViewModel();
  sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

__n128 sub_100089258@<Q0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = static HorizontalAlignment.center.getter();
  sub_100088CB8(v4, v8);
  *&v7[39] = v8[2];
  *&v7[23] = v8[1];
  *&v7[7] = v8[0];
  *(a1 + 17) = *v7;
  v7[55] = v9;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 33) = *&v7[16];
  result = *&v7[32];
  *(a1 + 49) = *&v7[32];
  *(a1 + 65) = *&v7[48];
  return result;
}

id sub_1000892F4@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  result = [objc_opt_self() systemFontOfSize:UIFontSystemFontDesignRounded weight:12.0 design:UIFontWeightMedium];
  if (result)
  {
    v5 = Font.init(_:)();
    v6 = static VerticalAlignment.center.getter();
    v32 = 0;
    sub_100089540(v5, a1, &v23);
    v38 = v27;
    v39 = v28;
    v40 = v29;
    v41 = v30;
    v34 = v23;
    v35 = v24;
    v36 = v25;
    v37 = v26;
    v42[0] = v23;
    v42[1] = v24;
    v42[2] = v25;
    v42[3] = v26;
    v42[4] = v27;
    v42[5] = v28;
    v42[6] = v29;
    v43 = v30;
    sub_1000077CC(&v34, &v22, &qword_1000EE6E8, &qword_1000B9748);
    sub_100007834(v42, &qword_1000EE6E8, &qword_1000B9748);
    *&v31[71] = v38;
    *&v31[87] = v39;
    *&v31[103] = v40;
    *&v31[7] = v34;
    *&v31[23] = v35;
    *&v31[39] = v36;
    v31[119] = v41;
    *&v31[55] = v37;
    v7 = v32;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v33[7] = v23;
    *&v33[23] = v24;
    *&v33[39] = v25;
    v8 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v17 = *&v31[80];
    *(a2 + 81) = *&v31[64];
    *(a2 + 97) = v17;
    *(a2 + 113) = *&v31[96];
    v18 = *&v31[16];
    *(a2 + 17) = *v31;
    *(a2 + 33) = v18;
    v19 = *&v31[48];
    *(a2 + 49) = *&v31[32];
    *(a2 + 65) = v19;
    *(a2 + 184) = *&v33[47];
    v20 = *&v33[16];
    *(a2 + 169) = *&v33[32];
    v21 = *v33;
    *(a2 + 153) = v20;
    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = v7;
    *(a2 + 129) = *&v31[112];
    *(a2 + 137) = v21;
    *(a2 + 192) = v8;
    *(a2 + 200) = v10;
    *(a2 + 208) = v12;
    *(a2 + 216) = v14;
    *(a2 + 224) = v16;
    *(a2 + 232) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100089540(uint64_t a1@<X0>, int a2@<W3>, void *a3@<X8>)
{
  v53 = a2;
  v54 = a1;
  v52 = a3;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000368C(&qword_1000ED390, &qword_1000B9750);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v47 - v12;
  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() _systemImageNamed:v14];

  if (v15)
  {
    Image.init(uiImage:)();
    v16 = enum case for Image.TemplateRenderingMode.template(_:);
    v17 = type metadata accessor for Image.TemplateRenderingMode();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v13, v16, v17);
    (*(v18 + 56))(v13, 0, 1, v17);
    Image.renderingMode(_:)();

    sub_100007834(v13, &qword_1000ED390, &qword_1000B9750);
    (*(v6 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v5);
    v51 = Image.resizable(capInsets:resizingMode:)();

    (*(v6 + 8))(v9, v5);
    KeyPath = swift_getKeyPath();
    v19 = v54;

    v49 = static Color.secondary.getter();
    v48 = swift_getKeyPath();
    v73 = 1;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v20);
    LOBYTE(v63[0]) = v53;
    LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
    LocalizedStringKey.init(stringInterpolation:)();
    v22 = Text.init(_:tableName:bundle:comment:)();
    v24 = v23;
    LOBYTE(v16) = v25;
    v26 = v19;
    v27 = Text.font(_:)();
    v29 = v28;
    v31 = v30;
    sub_100021B08(v22, v24, v16 & 1);

    static Color.secondary.getter();
    v32 = Text.foregroundColor(_:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;

    sub_100021B08(v27, v29, v31 & 1);

    v58 = 0;
    v39 = v51;
    v59 = v51;
    LOWORD(v60) = 1;
    *(&v60 + 2) = v71;
    WORD3(v60) = v72;
    v40 = KeyPath;
    *(&v60 + 1) = KeyPath;
    *&v61 = v26;
    v41 = v48;
    v42 = v49;
    *(&v61 + 1) = v48;
    v62 = v49;
    *&v57[55] = v49;
    *&v57[39] = v61;
    *&v57[23] = v60;
    *&v57[7] = v51;
    v56 = v36 & 1;
    v55 = 0;
    v43 = v52;
    *v52 = 0;
    *(v43 + 8) = 0;
    v44 = *v57;
    v45 = *&v57[16];
    v46 = *&v57[32];
    *(v43 + 7) = *&v57[47];
    *(v43 + 41) = v46;
    *(v43 + 25) = v45;
    *(v43 + 9) = v44;
    v43[9] = v32;
    v43[10] = v34;
    *(v43 + 88) = v36 & 1;
    v43[12] = v38;
    v43[13] = 0;
    *(v43 + 112) = 0;
    sub_1000077CC(&v59, v63, &qword_1000EE6F0, &qword_1000B97B8);
    sub_100021B18(v32, v34, v36 & 1);

    sub_100021B08(v32, v34, v36 & 1);

    v63[0] = v39;
    v63[1] = 0;
    v64 = 1;
    v65 = v71;
    v66 = v72;
    v67 = v40;
    v68 = v54;
    v69 = v41;
    v70 = v42;
    sub_100007834(v63, &qword_1000EE6F0, &qword_1000B97B8);
  }

  else
  {
    __break(1u);
  }
}

id sub_100089B08@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1000892F4(*(v1 + 16), a1);
}

uint64_t sub_100089B14@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v23 = 0;
  sub_100089D04(&v15);
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v32[1] = v16;
  v32[0] = v15;
  v32[2] = v17;
  v32[4] = v19;
  v32[3] = v18;
  v32[5] = v20;
  v33 = v21;
  sub_1000077CC(&v25, &v14, &qword_1000EE6F8, &qword_1000B97C0);
  sub_100007834(v32, &qword_1000EE6F8, &qword_1000B97C0);
  *&v22[55] = v28;
  *&v22[71] = v29;
  *&v22[87] = v30;
  v22[103] = v31;
  *&v22[7] = v25;
  *&v22[23] = v26;
  *&v22[39] = v27;
  v3 = v23;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v24[7] = v15;
  *&v24[23] = v16;
  *&v24[39] = v17;
  v4 = static Edge.Set.bottom.getter();
  result = EdgeInsets.init(_all:)();
  v6 = *&v22[32];
  *(a1 + 65) = *&v22[48];
  v7 = *&v22[80];
  *(a1 + 81) = *&v22[64];
  *(a1 + 97) = v7;
  v8 = *&v22[16];
  *(a1 + 17) = *v22;
  *(a1 + 33) = v8;
  *(a1 + 49) = v6;
  *(a1 + 168) = *&v24[47];
  *(a1 + 153) = *&v24[32];
  v9 = *v24;
  *(a1 + 137) = *&v24[16];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 113) = *&v22[96];
  *(a1 + 121) = v9;
  *(a1 + 176) = v4;
  *(a1 + 184) = v10;
  *(a1 + 192) = v11;
  *(a1 + 200) = v12;
  *(a1 + 208) = v13;
  *(a1 + 216) = 0;
  return result;
}

uint64_t sub_100089D04@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v7 = Image.resizable(capInsets:resizingMode:)();
  (*(v3 + 8))(v6, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v16[19] = v17;
  *&v16[11] = *&v16[35];
  *&v16[3] = *&v16[27];
  v15 = 0;
  v18[0] = v7;
  v18[1] = 0;
  *v19 = 1;
  *&v19[48] = *(&v17 + 1);
  *&v19[34] = *&v16[16];
  *&v19[18] = *&v16[8];
  *&v19[2] = *v16;
  *(v14 + 7) = v7;
  *(&v14[4] + 7) = *&v19[48];
  *(&v14[3] + 7) = *&v19[32];
  *(&v14[2] + 7) = *&v19[16];
  *(&v14[1] + 7) = *v19;
  v13[72] = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v8 = v14[1];
  *(a1 + 9) = v14[0];
  v9 = v14[2];
  v10 = v14[3];
  *(a1 + 72) = *(&v14[3] + 15);
  *(a1 + 57) = v10;
  *(a1 + 41) = v9;
  *(a1 + 25) = v8;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v20[0] = v7;
  v20[1] = 0;
  v21 = 1;
  *&v24[14] = *&v16[23];
  *v24 = *&v16[16];
  v23 = *&v16[8];
  v22 = *v16;
  sub_1000077CC(v18, v13, &qword_1000EE700, &qword_1000B97C8);
  return sub_100007834(v20, &qword_1000EE700, &qword_1000B97C8);
}

uint64_t sub_100089F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000368C(&qword_1000EE708, &qword_1000B97D0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = v28 - v9;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = &v10[*(sub_10000368C(&qword_1000EE710, &qword_1000B97D8) + 44)];
  sub_10008A184(a1, a2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = &v10[*(v7 + 44)];
  v13 = v28[4];
  *v12 = v28[3];
  *(v12 + 1) = v13;
  *(v12 + 2) = v28[5];
  sub_10000368C(&qword_1000EE718, &qword_1000B97E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000B5700;
  v15 = static Edge.Set.leading.getter();
  *(inited + 32) = v15;
  v16 = static Edge.Set.trailing.getter();
  *(inited + 33) = v16;
  v17 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v15)
  {
    v17 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v17 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10001721C(v10, a3, &qword_1000EE708, &qword_1000B97D0);
  result = sub_10000368C(&qword_1000EE720, &qword_1000B97E8);
  v27 = a3 + *(result + 36);
  *v27 = v17;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_10008B00C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000368C(&qword_1000EE668, &qword_1000B93C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = sub_10000368C(&qword_1000EE670, &qword_1000B93C8);
  v28 = *(v13 - 8);
  v29 = v13;
  v14 = *(v28 + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  v17 = swift_allocObject();
  v18 = *(v2 + 16);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v2 + 32);
  *(v17 + 63) = *(v2 + 47);
  sub_10008B7A8(v2, v31);
  sub_10000368C(&qword_1000EE678, &qword_1000B93D0);
  sub_10008B9EC();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_100005870(&qword_1000EE688, &qword_1000EE668, &qword_1000B93C0);
  sub_10008BAA4(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  if (*(v2 + 24))
  {
    v19 = *(v2 + 49);
    v20 = *(v2 + 50);

    LOBYTE(v20) = sub_100048060(v19 | (v20 << 8));

    KeyPath = swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = (v20 & 1) == 0;
    v23 = v30;
    (*(v28 + 32))(v30, v16, v29);
    result = sub_10000368C(&qword_1000EE690, &unk_1000B9408);
    v25 = (v23 + *(result + 36));
    *v25 = KeyPath;
    v25[1] = sub_10008BB04;
    v25[2] = v22;
  }

  else
  {
    v26 = *(v2 + 32);
    type metadata accessor for RadioDialerViewModel();
    sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10008B430(__int128 *a1)
{
  if (*(a1 + 3))
  {
    v2 = *(a1 + 49);
    v3 = *(a1 + 50);
    v4 = *(a1 + 3);

    sub_100046C90(v2 | (v3 << 8));

    v7 = *a1;
    v8 = *(a1 + 16);
    sub_10000368C(&qword_1000EB9E0, &qword_1000B48F0);
    return Binding.wrappedValue.setter();
  }

  else
  {
    v6 = *(a1 + 4);
    type metadata accessor for RadioDialerViewModel();
    sub_10008BAA4(&qword_1000EB990, type metadata accessor for RadioDialerViewModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10008B51C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Image.init(systemName:)();
  (*(v7 + 104))(v10, enum case for Font.TextStyle.title3(_:), v6);
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  static Font.Weight.semibold.getter();
  v13 = static Font.system(_:design:weight:)();
  sub_100007834(v5, &qword_1000ED388, &unk_1000B6FF0);
  (*(v7 + 8))(v10, v6);
  v14 = [objc_opt_self() systemGreenColor];
  v15 = Color.init(uiColor:)();
  v16 = static Color.white.getter();
  result = swift_getKeyPath();
  *a1 = v11;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0x4044000000000000;
  *(a1 + 32) = v13;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = 256;
  return result;
}

uint64_t sub_10008B760@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[15] = *(v1 + 47);
  return sub_10008B00C(a1);
}

__n128 sub_10008B810(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10008B82C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_10008B874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008B990()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  sub_1000143A4(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 67, 7);
}

unint64_t sub_10008B9EC()
{
  result = qword_1000EE680;
  if (!qword_1000EE680)
  {
    sub_100005780(&qword_1000EE678, &qword_1000B93D0);
    sub_100087138();
    sub_100005870(&qword_1000EE600, &qword_1000EE608, &qword_1000B90C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE680);
  }

  return result;
}

uint64_t sub_10008BAA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10008BB14()
{
  result = qword_1000EE6A0;
  if (!qword_1000EE6A0)
  {
    sub_100005780(&qword_1000EE698, &qword_1000B9460);
    sub_10008BBA0();
    sub_10008BBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE6A0);
  }

  return result;
}

unint64_t sub_10008BBA0()
{
  result = qword_1000EE6A8;
  if (!qword_1000EE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE6A8);
  }

  return result;
}

unint64_t sub_10008BBF4()
{
  result = qword_1000EE6B0;
  if (!qword_1000EE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE6B0);
  }

  return result;
}

uint64_t sub_10008BC48(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return j__swift_retain(result, a2, a3, (a3 >> 8) & 1);
  }

  return result;
}

uint64_t sub_10008BC5C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return j__swift_release(result, a2, a3, (a3 >> 8) & 1);
  }

  return result;
}

uint64_t sub_10008BCA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_10008BCFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10008BD60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_10008BDBC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10008BE1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_10008BE78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10008BEE0()
{
  result = qword_1000EE6C0;
  if (!qword_1000EE6C0)
  {
    sub_100005780(&qword_1000EE690, &unk_1000B9408);
    sub_100005780(&qword_1000EE668, &qword_1000B93C0);
    type metadata accessor for PlainButtonStyle();
    sub_100005870(&qword_1000EE688, &qword_1000EE668, &qword_1000B93C0);
    sub_10008BAA4(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EE520, &qword_1000EE528, &qword_1000B8DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE6C0);
  }

  return result;
}

uint64_t sub_10008C18C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 42, 7);
}

unint64_t sub_10008C258()
{
  result = qword_1000EE790;
  if (!qword_1000EE790)
  {
    sub_100005780(&qword_1000EE798, &qword_1000B9908);
    sub_100005870(&qword_1000EE7A0, &qword_1000EE7A8, &qword_1000B9910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE790);
  }

  return result;
}

unint64_t sub_10008C354()
{
  result = qword_1000EE7C0;
  if (!qword_1000EE7C0)
  {
    sub_100005780(&qword_1000EE7C8, &qword_1000B9920);
    sub_100005870(&qword_1000EE7D0, &qword_1000EE7D8, &qword_1000B9928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE7C0);
  }

  return result;
}

uint64_t sub_10008C450(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008C4D4()
{
  result = qword_1000EE7E8;
  if (!qword_1000EE7E8)
  {
    sub_100005780(&qword_1000EE708, &qword_1000B97D0);
    sub_100005870(&qword_1000EE7F0, &qword_1000EE7F8, &qword_1000B9930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE7E8);
  }

  return result;
}

unint64_t sub_10008C590()
{
  result = qword_1000EE800;
  if (!qword_1000EE800)
  {
    sub_100005780(&qword_1000EE770, &qword_1000B98B0);
    sub_10008C61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE800);
  }

  return result;
}

unint64_t sub_10008C61C()
{
  result = qword_1000EE808;
  if (!qword_1000EE808)
  {
    sub_100005780(&qword_1000EE748, &qword_1000B9810);
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EBB00, &qword_1000EBB08, &qword_1000B4B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE808);
  }

  return result;
}

unint64_t sub_10008C708()
{
  result = qword_1000EE810;
  if (!qword_1000EE810)
  {
    sub_100005780(&qword_1000EE778, &qword_1000B98B8);
    sub_100005780(&qword_1000EE4D8, &qword_1000B8D98);
    type metadata accessor for PlainButtonStyle();
    sub_100005870(&qword_1000EE500, &qword_1000EE4D8, &qword_1000B8D98);
    sub_10008BAA4(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE810);
  }

  return result;
}

uint64_t sub_10008C85C()
{
  sub_10003E05C();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10008C8D4()
{
  v0 = type metadata accessor for RadioNowPlayingViewModel(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100009A7C(3, 0, 0, _swiftEmptyArrayStorage);
  qword_1000EE818 = result;
  return result;
}

uint64_t sub_10008C928@<X0>(void *a1@<X8>)
{
  if (qword_1000EAD40 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1000EE818;
}

uint64_t sub_10008C998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10008E6CC(&qword_1000EE820, type metadata accessor for RadioNowPlayingViewModel);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

double sub_10008CA2C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];

  v11 = a1;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    v11 = v43;
  }

  swift_getKeyPath();
  *&v43 = v11;
  sub_10008E6CC(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v11 + 17);

  if (v13 > 3)
  {
    if (v13 != 4)
    {
      if (v13 == 5)
      {
        KeyPath = swift_getKeyPath();

        v15 = a1;
        if ((a2 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v16 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v7 + 8))(v10, v6);
          v15 = v43;
        }

        swift_getKeyPath();
        *&v43 = v15;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v17 = *(v15 + 16);

        v18 = swift_allocObject();
        *(v18 + 16) = a1;
        *(v18 + 24) = a2 & 1;
        *v40 = KeyPath;
        *&v40[16] = v17;
        *&v40[24] = sub_10008E720;
        *&v40[32] = v18;
        LOBYTE(v41) = 0;

        sub_10000368C(&qword_1000EE898, &qword_1000B9AE8);
        sub_10000368C(&qword_1000EE8B0, &qword_1000B9AF0);
        sub_10008D9A8();
        sub_10008DA88();
        _ConditionalContent<>.init(storage:)();
        *v40 = v43;
        *&v40[16] = v44;
        *&v40[32] = v45;
        LOBYTE(v41) = v46;
        HIBYTE(v41) = 1;
      }

      else
      {
        v29 = swift_getKeyPath();

        v30 = a1;
        if ((a2 & 1) == 0)
        {
          static os_log_type_t.fault.getter();
          v31 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          EnvironmentValues.init()();
          swift_getAtKeyPath();

          (*(v7 + 8))(v10, v6);
          v30 = v43;
        }

        swift_getKeyPath();
        *&v43 = v30;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v32 = *(v30 + 16);

        v33 = swift_allocObject();
        *(v33 + 16) = a1;
        *(v33 + 24) = a2 & 1;
        *v40 = v29;
        *&v40[16] = v32;
        *&v40[24] = sub_10008E720;
        *&v40[32] = v33;
        LOBYTE(v41) = 1;

        sub_10000368C(&qword_1000EE898, &qword_1000B9AE8);
        sub_10000368C(&qword_1000EE8B0, &qword_1000B9AF0);
        sub_10008D9A8();
        sub_10008DA88();
        _ConditionalContent<>.init(storage:)();
        *v40 = v43;
        *&v40[16] = v44;
        *&v40[32] = v45;
        LOBYTE(v41) = v46;
        HIBYTE(v41) = 1;
      }

      goto LABEL_21;
    }

    v24 = swift_getKeyPath();

    v25 = a1;
    if ((a2 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v26 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v10, v6);
      v25 = v43;
    }

    swift_getKeyPath();
    *&v43 = v25;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = *(v25 + 16);

    v28 = swift_allocObject();
    *(v28 + 16) = a1;
    *(v28 + 24) = a2 & 1;
    *v40 = v24;
    *&v40[16] = v27;
    *&v40[24] = sub_10008DBFC;
    *&v40[32] = v28;
    LOBYTE(v41) = 1;
  }

  else
  {
    if ((v13 - 1) < 2)
    {
      *v40 = swift_getKeyPath();
      memset(&v40[8], 0, 32);
      v41 = 0;
      v42 = 1;
      sub_10000368C(&qword_1000EE828, &qword_1000B9AC0);
      sub_10008D5F0();
      sub_10008DB68();
      _ConditionalContent<>.init(storage:)();
      goto LABEL_25;
    }

    v19 = swift_getKeyPath();

    v20 = a1;
    if ((a2 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v21 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v7 + 8))(v10, v6);
      v20 = v43;
    }

    swift_getKeyPath();
    *&v43 = v20;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v20 + 16);

    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a2 & 1;
    *v40 = v19;
    *&v40[16] = v22;
    *&v40[24] = sub_10008E720;
    *&v40[32] = v23;
    LOBYTE(v41) = 0;
  }

  sub_10000368C(&qword_1000EE850, &qword_1000B9AD0);
  sub_10000368C(&qword_1000EE870, &qword_1000B9AD8);
  sub_10008D708();
  sub_10008D83C();
  _ConditionalContent<>.init(storage:)();
  *v40 = v43;
  *&v40[16] = v44;
  *&v40[32] = v45;
  v41 = v46;
LABEL_21:
  sub_10000368C(&qword_1000EE840, &qword_1000B9AC8);
  sub_10000368C(&qword_1000EE888, &qword_1000B9AE0);
  sub_10008D67C();
  sub_10008D91C();
  _ConditionalContent<>.init(storage:)();
  if (HIBYTE(v46))
  {
    v34 = 256;
  }

  else
  {
    v34 = 0;
  }

  *v40 = v43;
  *&v40[16] = v44;
  *&v40[32] = v45;
  v41 = v34 | v46;
  v42 = 0;
  sub_10000368C(&qword_1000EE828, &qword_1000B9AC0);
  sub_10008D5F0();
  sub_10008DB68();
  _ConditionalContent<>.init(storage:)();

LABEL_25:
  result = *&v43;
  v36 = v44;
  v37 = v45;
  v38 = v46;
  v39 = v47;
  *a3 = v43;
  *(a3 + 16) = v36;
  *(a3 + 32) = v37;
  *(a3 + 40) = v38;
  *(a3 + 42) = v39;
  return result;
}

void sub_10008D3C4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v8, v4);
    a1 = v14;
  }

  swift_getKeyPath();
  v14 = a1;
  sub_10008E6CC(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(a1 + 16);

  if (v10 == 1)
  {
    v11 = [objc_opt_self() sharedApplication];
    v12 = [v11 delegate];

    if (v12)
    {
      sub_1000ACC00();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_10008D5F0()
{
  result = qword_1000EE830;
  if (!qword_1000EE830)
  {
    sub_100005780(&qword_1000EE828, &qword_1000B9AC0);
    sub_10008D67C();
    sub_10008D91C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE830);
  }

  return result;
}

unint64_t sub_10008D67C()
{
  result = qword_1000EE838;
  if (!qword_1000EE838)
  {
    sub_100005780(&qword_1000EE840, &qword_1000B9AC8);
    sub_10008D708();
    sub_10008D83C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE838);
  }

  return result;
}

unint64_t sub_10008D708()
{
  result = qword_1000EE848;
  if (!qword_1000EE848)
  {
    sub_100005780(&qword_1000EE850, &qword_1000B9AD0);
    sub_10008D794();
    sub_10008D7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE848);
  }

  return result;
}

unint64_t sub_10008D794()
{
  result = qword_1000EE858;
  if (!qword_1000EE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE858);
  }

  return result;
}

unint64_t sub_10008D7E8()
{
  result = qword_1000EE860;
  if (!qword_1000EE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE860);
  }

  return result;
}

unint64_t sub_10008D83C()
{
  result = qword_1000EE868;
  if (!qword_1000EE868)
  {
    sub_100005780(&qword_1000EE870, &qword_1000B9AD8);
    sub_10008D8C8();
    sub_10008D7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE868);
  }

  return result;
}

unint64_t sub_10008D8C8()
{
  result = qword_1000EE878;
  if (!qword_1000EE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE878);
  }

  return result;
}

unint64_t sub_10008D91C()
{
  result = qword_1000EE880;
  if (!qword_1000EE880)
  {
    sub_100005780(&qword_1000EE888, &qword_1000B9AE0);
    sub_10008D9A8();
    sub_10008DA88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE880);
  }

  return result;
}

unint64_t sub_10008D9A8()
{
  result = qword_1000EE890;
  if (!qword_1000EE890)
  {
    sub_100005780(&qword_1000EE898, &qword_1000B9AE8);
    sub_10008DA34();
    sub_10008D7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE890);
  }

  return result;
}

unint64_t sub_10008DA34()
{
  result = qword_1000EE8A0;
  if (!qword_1000EE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE8A0);
  }

  return result;
}

unint64_t sub_10008DA88()
{
  result = qword_1000EE8A8;
  if (!qword_1000EE8A8)
  {
    sub_100005780(&qword_1000EE8B0, &qword_1000B9AF0);
    sub_10008DB14();
    sub_10008D7E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE8A8);
  }

  return result;
}

unint64_t sub_10008DB14()
{
  result = qword_1000EE8B8;
  if (!qword_1000EE8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE8B8);
  }

  return result;
}

unint64_t sub_10008DB68()
{
  result = qword_1000EE8C0;
  if (!qword_1000EE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE8C0);
  }

  return result;
}

uint64_t sub_10008DBC4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10008DC1C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v33 = sub_10000368C(&qword_1000EE8D8, &qword_1000B9BB0);
  v7 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v9 = v28 - v8;
  v10 = sub_10000368C(&qword_1000EE8E0, &qword_1000B9BB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v28 - v13;
  v34 = sub_10000368C(&qword_1000EE8E8, &qword_1000B9BC0);
  v15 = *(v34 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v34);
  v19 = v28 - v18;
  if (a2)
  {
    v28[1] = v28;
    __chkstk_darwin(v17);
    v31 = a4;
    v28[-2] = a1;

    v20 = sub_10000368C(&qword_1000EE8F0, &qword_1000B9BC8);
    v29 = v9;
    v30 = v20;
    sub_100005870(&qword_1000EE908, &qword_1000EE8F0, &qword_1000B9BC8);
    Button.init(action:label:)();
    v21 = sub_100005870(&qword_1000EE8F8, &qword_1000EE8E0, &qword_1000B9BB8);
    v22 = sub_10008E2F0();
    View.buttonStyle<A>(_:)();
    (*(v11 + 8))(v14, v10);
    v23 = v34;
    (*(v15 + 16))(v29, v19, v34);
    swift_storeEnumTagMultiPayload();
    v35 = v10;
    v36 = &type metadata for WidgetBackgroundButtonStyle;
    v37 = v21;
    v38 = v22;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v15 + 8))(v19, v23);
  }

  else
  {
    v25 = sub_10000368C(&qword_1000EE8F0, &qword_1000B9BC8);
    (*(*(v25 - 8) + 16))(v9, a1, v25);
    swift_storeEnumTagMultiPayload();
    v26 = sub_100005870(&qword_1000EE8F8, &qword_1000EE8E0, &qword_1000B9BB8);
    v27 = sub_10008E2F0();
    v35 = v10;
    v36 = &type metadata for WidgetBackgroundButtonStyle;
    v37 = v26;
    v38 = v27;
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EE908, &qword_1000EE8F0, &qword_1000B9BC8);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10008E0C4@<X0>(uint64_t a1@<X8>)
{
  ButtonStyleConfiguration.label.getter();
  v2 = static Alignment.center.getter();
  v4 = v3;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    static Color.black.getter();
    v5 = Color.opacity(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = (a1 + *(sub_10000368C(&qword_1000EE920, &qword_1000B9C30) + 36));
  *v6 = v5;
  v6[1] = v2;
  v6[2] = v4;
  v7 = static Alignment.center.getter();
  v9 = v8;
  static Color.white.getter();
  v10 = Color.opacity(_:)();

  result = sub_10000368C(&qword_1000EE928, &qword_1000B9C38);
  v12 = (a1 + *(result + 36));
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  return result;
}

uint64_t sub_10008E1AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10008E1F4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10008E248()
{
  result = qword_1000EE8C8;
  if (!qword_1000EE8C8)
  {
    sub_100005780(&qword_1000EE8D0, &qword_1000B9B58);
    sub_10008D5F0();
    sub_10008DB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE8C8);
  }

  return result;
}

unint64_t sub_10008E2F0()
{
  result = qword_1000EE900;
  if (!qword_1000EE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE900);
  }

  return result;
}

uint64_t sub_10008E344@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_10000368C(&qword_1000EE8F0, &qword_1000B9BC8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_10008E3D0()
{
  result = qword_1000EE910;
  if (!qword_1000EE910)
  {
    sub_100005780(&qword_1000EE918, &qword_1000B9BF0);
    sub_100005780(&qword_1000EE8E0, &qword_1000B9BB8);
    sub_100005870(&qword_1000EE8F8, &qword_1000EE8E0, &qword_1000B9BB8);
    sub_10008E2F0();
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EE908, &qword_1000EE8F0, &qword_1000B9BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE910);
  }

  return result;
}

unint64_t sub_10008E52C()
{
  result = qword_1000EE930;
  if (!qword_1000EE930)
  {
    sub_100005780(&qword_1000EE928, &qword_1000B9C38);
    sub_10008E5E4();
    sub_100005870(&qword_1000EE950, &qword_1000EE958, &qword_1000B9C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE930);
  }

  return result;
}

unint64_t sub_10008E5E4()
{
  result = qword_1000EE938;
  if (!qword_1000EE938)
  {
    sub_100005780(&qword_1000EE920, &qword_1000B9C30);
    sub_10008E6CC(&qword_1000EE5D8, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100005870(&qword_1000EE940, &qword_1000EE948, &qword_1000B9C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE938);
  }

  return result;
}

uint64_t sub_10008E6CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008E7A0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ButtonStyleConfiguration.Label();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000368C(&qword_1000EEAC0, &qword_1000BA180);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = sub_10000368C(&qword_1000EEAC8, &qword_1000BA188);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v17 = 0.7;
  }

  else
  {
    v17 = 1.0;
  }

  (*(v3 + 32))(v11, v6, v2);
  *&v11[*(v8 + 44)] = v17;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v18 = 0.8;
  }

  else
  {
    v18 = 1.0;
  }

  static UnitPoint.center.getter();
  v20 = v19;
  v22 = v21;
  sub_10001721C(v11, v16, &qword_1000EEAC0, &qword_1000BA180);
  v23 = &v16[*(v13 + 44)];
  *v23 = v18;
  *(v23 + 1) = v18;
  *(v23 + 2) = v20;
  *(v23 + 3) = v22;
  v24 = static Animation.easeOut(duration:)();
  v25 = ButtonStyleConfiguration.isPressed.getter();
  sub_10001721C(v16, a1, &qword_1000EEAC8, &qword_1000BA188);
  result = sub_10000368C(&qword_1000EEAD0, &qword_1000BA190);
  v27 = a1 + *(result + 36);
  *v27 = v24;
  *(v27 + 8) = v25 & 1;
  return result;
}

uint64_t sub_10008EA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = sub_10000368C(&qword_1000EEA30, &qword_1000B9FB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = *(a2 + 49);
  if (v10)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v24 & 1) == 0)
    {
      if (!*(a2 + 40) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v23 != 1))
      {
        v13 = static Color.primary.getter();
        goto LABEL_8;
      }
    }

    v11 = [objc_opt_self() radio_carSystemFocusLabelColor];
  }

  else
  {
    v11 = [objc_opt_self() _carSystemTertiaryColor];
  }

  v12 = v11;
  v13 = Color.init(uiColor:)();
LABEL_8:
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  v16 = __chkstk_darwin(v13);
  *(&v22 - 4) = a1;
  *(&v22 - 3) = a2;
  *(&v22 - 2) = v16;

  sub_10000368C(&qword_1000EEA38, &qword_1000B9FB8);
  sub_100090A28();
  Button.init(action:label:)();
  sub_100005870(&qword_1000EEA88, &qword_1000EEA30, &qword_1000B9FB0);
  sub_100090C50();
  v17 = v22;
  View.buttonStyle<A>(_:)();

  (*(v6 + 8))(v9, v5);
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v10 ^ 1;
  result = sub_10000368C(&qword_1000EEA98, &qword_1000BA018);
  v21 = (v17 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = sub_10008BB04;
  v21[2] = v19;
  return result;
}

uint64_t sub_10008ED34@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10000368C(&qword_1000EEA60, &qword_1000B9FC8);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = (v30 - v9);
  v11 = sub_10000368C(&qword_1000EEA50, &qword_1000B9FC0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = v30 - v14;
  *v10 = static Alignment.center.getter();
  v10[1] = v16;
  v17 = sub_10000368C(&qword_1000EEAA0, &unk_1000BA0B0);
  sub_10008EFCC(a1, a2, (v10 + *(v17 + 44)));
  static Color.white.getter();
  v18 = Color.opacity(_:)();

  v19 = static Edge.Set.all.getter();
  v20 = v10 + *(v7 + 44);
  *v20 = v18;
  v20[8] = v19;
  v21 = a1[5];
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001721C(v10, v15, &qword_1000EEA60, &qword_1000B9FC8);
  v22 = &v15[*(v12 + 44)];
  v23 = v30[5];
  *(v22 + 4) = v30[4];
  *(v22 + 5) = v23;
  *(v22 + 6) = v30[6];
  v24 = v30[1];
  *v22 = v30[0];
  *(v22 + 1) = v24;
  v25 = v30[3];
  *(v22 + 2) = v30[2];
  *(v22 + 3) = v25;
  v26 = a3 + *(sub_10000368C(&qword_1000EEA38, &qword_1000B9FB8) + 36);
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = type metadata accessor for RoundedCornerStyle();
  (*(*(v28 - 8) + 104))(v26, v27, v28);
  *(v26 + *(sub_10000368C(&qword_1000EEA80, &qword_1000B9FE0) + 36)) = 0;
  return sub_10001721C(v15, a3, &qword_1000EEA50, &qword_1000B9FC0);
}

void sub_10008EFCC(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v31 = a2;
  v32 = a3;
  v4 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_10000368C(&qword_1000EEAA8, &qword_1000BA0C0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = a1[5];
  v18 = a1[2];
  v17 = a1[3];
  v30 = v16;

  v19 = Image.init(_internalSystemName:)();
  v20 = a1[4];
  v21 = type metadata accessor for Font.Design();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = static Font.system(size:weight:design:)();
  sub_100090CCC(v7);
  KeyPath = swift_getKeyPath();
  v33 = v19;
  v34 = KeyPath;
  v35 = v22;
  static Font.Weight.medium.getter();
  sub_10000368C(&qword_1000EBAF0, &unk_1000B7050);
  sub_100014710();
  View.fontWeight(_:)();

  v24 = &v15[*(sub_10000368C(&qword_1000ED398, &qword_1000B7008) + 36)];
  v25 = *(sub_10000368C(&qword_1000ED3B0, &qword_1000B7060) + 28);
  v26 = enum case for Image.Scale.medium(_:);
  v27 = type metadata accessor for Image.Scale();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  *&v15[*(v9 + 44)] = v31;
  sub_1000077CC(v15, v13, &qword_1000EEAA8, &qword_1000BA0C0);
  v28 = v32;
  *v32 = v16;
  v29 = sub_10000368C(&qword_1000EEAB0, &qword_1000BA128);
  sub_1000077CC(v13, v28 + *(v29 + 48), &qword_1000EEAA8, &qword_1000BA0C0);

  sub_100007834(v15, &qword_1000EEAA8, &qword_1000BA0C0);
  sub_100007834(v13, &qword_1000EEAA8, &qword_1000BA0C0);
}

uint64_t sub_10008F308@<X0>(void *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v51 = a3;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  __chkstk_darwin(v5);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10000368C(&qword_1000EE970, &qword_1000B9D80);
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  v12 = __chkstk_darwin(v10);
  v48 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v15 = &v42[-v14];

  v16 = a1;
  v43 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 1))(v9, v5);
    v16 = v53;
  }

  swift_getKeyPath();
  v53 = v16;
  v52 = sub_1000910B8(&qword_1000EB0F0, type metadata accessor for RadioNowPlayingViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = v16[6];

  v53 = _swiftEmptyArrayStorage;
  if (v18 >> 62)
  {
LABEL_31:
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v9;
  v45 = v6;
  v46 = v5;
  v47 = v15;
  if (v19)
  {
    v9 = 0;
    v15 = (v18 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v6 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v21 = v53;
          goto LABEL_20;
        }
      }

      else
      {
        if (v9 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_31;
        }

        v20 = *(v18 + 8 * v9 + 32);

        v6 = (v9 + 1);
        if (__OFADD__(v9, 1))
        {
          goto LABEL_17;
        }
      }

      if ((*(v20 + 48) & 1) != 0 || *(v20 + 32) <= 0.0)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = v53[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v9;
      if (v6 == v19)
      {
        goto LABEL_18;
      }
    }
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_20:

  v22 = sub_100090370(v21);

  v53 = v22;
  swift_getKeyPath();
  sub_10000368C(&qword_1000EE978, &qword_1000B9DD0);
  sub_10000368C(&qword_1000EE980, &qword_1000B9DD8);
  sub_100005870(&qword_1000EE988, &qword_1000EE978, &qword_1000B9DD0);
  sub_100005870(&qword_1000EE990, &qword_1000EE980, &qword_1000B9DD8);
  v23 = v47;
  ForEach<>.init(_:id:content:)();

  v24 = a1;
  v26 = v45;
  v25 = v46;
  v27 = v44;
  v28 = v43;
  if ((v43 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v26[1](v27, v25);
    v24 = v53;
  }

  swift_getKeyPath();
  v53 = v24;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v24 + 16);

  if ((v30 & 1) == 0)
  {
    goto LABEL_28;
  }

  if ((v28 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v26[1](v27, v25);
    a1 = v53;
  }

  swift_getKeyPath();
  v53 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(a1 + 17);

  if (v32 == 3)
  {

LABEL_28:
    v34 = 1;
    goto LABEL_29;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v34 = 0;
  if (v33)
  {
    goto LABEL_28;
  }

LABEL_29:
  v36 = v48;
  v35 = v49;
  v37 = *(v49 + 16);
  v38 = v50;
  v37(v48, v23, v50);
  v39 = v51;
  v37(v51, v36, v38);
  v39[*(sub_10000368C(&qword_1000EE998, &qword_1000B9E08) + 64)] = v34;
  v40 = *(v35 + 8);
  v40(v23, v38);
  return (v40)(v36, v38);
}

uint64_t sub_10008FAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v40 = a1;
  v41 = a3;
  v39 = sub_10000368C(&qword_1000EE9A0, &qword_1000B9E38);
  v4 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v6 = (&v36 - v5);
  v7 = type metadata accessor for CircularProgressViewStyle();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000368C(&qword_1000EE9A8, &qword_1000B9E40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v38 = sub_10000368C(&qword_1000EE9B0, &qword_1000B9E48);
  v16 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v18 = &v36 - v17;
  v19 = sub_10000368C(&qword_1000EE9B8, &qword_1000B9E50);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v36 - v24;
  if (*(a2 + 72) == 1)
  {
    ProgressView<>.init<>()();
    CircularProgressViewStyle.init()();
    sub_100005870(&qword_1000EE9E0, &qword_1000EE9A8, &qword_1000B9E40);
    sub_1000910B8(&qword_1000EE9E8, &type metadata accessor for CircularProgressViewStyle);
    View.progressViewStyle<A>(_:)();
    (*(v37 + 8))(v10, v7);
    (*(v12 + 8))(v15, v11);
    v26 = static HierarchicalShapeStyle.secondary.getter();
    *&v18[*(sub_10000368C(&qword_1000EE9D8, &unk_1000B9E58) + 36)] = v26;
    v27 = &v18[*(v38 + 36)];
    v28 = *(sub_10000368C(&qword_1000EE9F8, &qword_1000B9E68) + 28);
    v29 = enum case for ControlSize.regular(_:);
    v30 = type metadata accessor for ControlSize();
    (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
    *v27 = swift_getKeyPath();
    sub_1000077CC(v18, v6, &qword_1000EE9B0, &qword_1000B9E48);
    swift_storeEnumTagMultiPayload();
    sub_100090570();
    sub_1000907A0();
    _ConditionalContent<>.init(storage:)();
    sub_100007834(v18, &qword_1000EE9B0, &qword_1000B9E48);
  }

  else
  {
    type metadata accessor for RadioNowPlayingViewModel.ButtonConfig(0);
    sub_1000910B8(&qword_1000EE9C0, type metadata accessor for RadioNowPlayingViewModel.ButtonConfig);

    *v6 = ObservedObject.init(wrappedValue:)();
    v6[1] = v31;
    swift_storeEnumTagMultiPayload();
    sub_100090570();
    sub_1000907A0();
    _ConditionalContent<>.init(storage:)();
  }

  v32 = v40 < 1;
  sub_1000077CC(v25, v23, &qword_1000EE9B8, &qword_1000B9E50);
  v33 = v41;
  *v41 = v32;
  v34 = sub_10000368C(&qword_1000EEA08, &qword_1000B9E70);
  sub_1000077CC(v23, &v33[*(v34 + 48)], &qword_1000EE9B8, &qword_1000B9E50);
  sub_100007834(v25, &qword_1000EE9B8, &qword_1000B9E50);
  return sub_100007834(v23, &qword_1000EE9B8, &qword_1000B9E50);
}

uint64_t sub_100090054@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_10000368C(&qword_1000EE960, &qword_1000B9D38);
  sub_10008F308(v3, v4, (a1 + *(v5 + 44)));
  KeyPath = swift_getKeyPath();
  v7 = (a1 + *(sub_10000368C(&qword_1000EE968, &unk_1000B9D70) + 36));
  v8 = *(sub_10000368C(&qword_1000ED900, &unk_1000B7818) + 28);
  v9 = enum case for LayoutDirection.leftToRight(_:);
  v10 = type metadata accessor for LayoutDirection();
  result = (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = KeyPath;
  return result;
}

__n128 sub_1000901B8@<Q0>(uint64_t a1@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v3[71] = v8;
  *&v3[55] = v7;
  *&v3[103] = v10;
  *&v3[87] = v9;
  *&v3[23] = v5;
  *&v3[7] = v4;
  *&v3[39] = v6;
  *(a1 + 73) = *&v3[64];
  *(a1 + 89) = *&v3[80];
  *(a1 + 105) = *&v3[96];
  *(a1 + 9) = *v3;
  *(a1 + 25) = *&v3[16];
  result = *&v3[32];
  *(a1 + 41) = *&v3[32];
  *a1 = 0x4028000000000000;
  *(a1 + 8) = 0;
  *(a1 + 120) = *(&v10 + 1);
  *(a1 + 57) = *&v3[48];
  return result;
}

uint64_t sub_1000902A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_100090370(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = &_swiftEmptyArrayStorage[4];
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = _CocoaArrayWrapper.endIndex.getter();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_10000368C(&qword_1000EEA10, &qword_1000B9EA8);
        v15 = swift_allocObject();
        v16 = j__malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_100090570()
{
  result = qword_1000EE9C8;
  if (!qword_1000EE9C8)
  {
    sub_100005780(&qword_1000EE9B0, &qword_1000B9E48);
    sub_100090628();
    sub_100005870(&qword_1000EE9F0, &qword_1000EE9F8, &qword_1000B9E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE9C8);
  }

  return result;
}

unint64_t sub_100090628()
{
  result = qword_1000EE9D0;
  if (!qword_1000EE9D0)
  {
    sub_100005780(&qword_1000EE9D8, &unk_1000B9E58);
    sub_100005780(&qword_1000EE9A8, &qword_1000B9E40);
    type metadata accessor for CircularProgressViewStyle();
    sub_100005870(&qword_1000EE9E0, &qword_1000EE9A8, &qword_1000B9E40);
    sub_1000910B8(&qword_1000EE9E8, &type metadata accessor for CircularProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EC0A0, &qword_1000EC0A8, &unk_1000B54F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EE9D0);
  }

  return result;
}

unint64_t sub_1000907A0()
{
  result = qword_1000EEA00;
  if (!qword_1000EEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEA00);
  }

  return result;
}

uint64_t sub_100090858(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000908A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100090900()
{
  result = qword_1000EEA18;
  if (!qword_1000EEA18)
  {
    sub_100005780(&qword_1000EE968, &unk_1000B9D70);
    sub_100005870(&qword_1000EEA20, &qword_1000EEA28, qword_1000B9F08);
    sub_100005870(&qword_1000ED928, &qword_1000ED900, &unk_1000B7818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEA18);
  }

  return result;
}

unint64_t sub_100090A28()
{
  result = qword_1000EEA40;
  if (!qword_1000EEA40)
  {
    sub_100005780(&qword_1000EEA38, &qword_1000B9FB8);
    sub_100090AE0();
    sub_100005870(&qword_1000EEA78, &qword_1000EEA80, &qword_1000B9FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEA40);
  }

  return result;
}

unint64_t sub_100090AE0()
{
  result = qword_1000EEA48;
  if (!qword_1000EEA48)
  {
    sub_100005780(&qword_1000EEA50, &qword_1000B9FC0);
    sub_100090B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEA48);
  }

  return result;
}

unint64_t sub_100090B6C()
{
  result = qword_1000EEA58;
  if (!qword_1000EEA58)
  {
    sub_100005780(&qword_1000EEA60, &qword_1000B9FC8);
    sub_100005870(&qword_1000EEA68, &qword_1000EEA70, &unk_1000B9FD0);
    sub_100005870(&qword_1000EE5E0, &qword_1000EE5E8, &qword_1000B90B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEA58);
  }

  return result;
}

unint64_t sub_100090C50()
{
  result = qword_1000EEA90;
  if (!qword_1000EEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEA90);
  }

  return result;
}

uint64_t sub_100090CCC(uint64_t a1)
{
  v2 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100090D58()
{
  result = qword_1000EEAB8;
  if (!qword_1000EEAB8)
  {
    sub_100005780(&qword_1000EEA98, &qword_1000BA018);
    sub_100005780(&qword_1000EEA30, &qword_1000B9FB0);
    sub_100005870(&qword_1000EEA88, &qword_1000EEA30, &qword_1000B9FB0);
    sub_100090C50();
    swift_getOpaqueTypeConformance2();
    sub_100005870(&qword_1000EE520, &qword_1000EE528, &qword_1000B8DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEAB8);
  }

  return result;
}

unint64_t sub_100090EB8()
{
  result = qword_1000EEAD8;
  if (!qword_1000EEAD8)
  {
    sub_100005780(&qword_1000EEAD0, &qword_1000BA190);
    sub_100090F70();
    sub_100005870(&qword_1000EEAF0, &qword_1000EEAF8, &qword_1000BA198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEAD8);
  }

  return result;
}

unint64_t sub_100090F70()
{
  result = qword_1000EEAE0;
  if (!qword_1000EEAE0)
  {
    sub_100005780(&qword_1000EEAC8, &qword_1000BA188);
    sub_100090FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEAE0);
  }

  return result;
}

unint64_t sub_100090FFC()
{
  result = qword_1000EEAE8;
  if (!qword_1000EEAE8)
  {
    sub_100005780(&qword_1000EEAC0, &qword_1000BA180);
    sub_1000910B8(&qword_1000EE5D8, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEAE8);
  }

  return result;
}

uint64_t sub_1000910B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100091100(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000073;
  v3 = *a1;
  v4 = 0x657469726F766166;
  if (v3 == 1)
  {
    v5 = 0xE900000000000073;
  }

  else
  {
    v4 = 0x696669746E656469;
    v5 = 0xEA00000000007265;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x636E657571657266;
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000079;
  }

  v8 = 0x657469726F766166;
  if (*a2 != 1)
  {
    v8 = 0x696669746E656469;
    v2 = 0xEA00000000007265;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x636E657571657266;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100091208()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000912B4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10009134C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000913F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100093E88(*a1);
  *a2 = result;
  return result;
}

void sub_100091424(uint64_t *a1@<X8>)
{
  v2 = 0x657469726F766166;
  v3 = 0xEA00000000007265;
  if (*v1 == 1)
  {
    v3 = 0xE900000000000073;
  }

  else
  {
    v2 = 0x696669746E656469;
  }

  if (*v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x636E657571657266;
  }

  if (*v1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE900000000000079;
  }

  *a1 = v4;
  a1[1] = v5;
}

id sub_10009148C()
{
  result = [objc_allocWithZone(type metadata accessor for RadioPreferences()) init];
  qword_1000F3CF0 = result;
  return result;
}

void sub_100091510()
{
  v1._countAndFlagsBits = 0x6F69646152;
  v1._object = 0xE500000000000000;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = *(v0 + OBJC_IVAR____TtC5Media16RadioPreferences_defaults);
  v3 = String._bridgeToObjectiveC()();

  [v2 removeObjectForKey:v3];
}

uint64_t RadioPreferences.favoriteStations.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void RadioPreferences.favoriteStations.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  static Published.subscript.setter();
  sub_100091510();
}

void (*RadioPreferences.favoriteStations.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = a1[1];
  return sub_100091A9C;
}

void sub_100091A9C(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  v5 = a1[2];
  if (a2)
  {

    v6 = v5;
    static Published.subscript.setter();
    sub_100091510();
    v7 = *a1;
  }

  else
  {
    v8 = v5;
    static Published.subscript.setter();
    sub_100091510();
  }
}

uint64_t RadioPreferences.$favoriteStations.getter()
{
  swift_beginAccess();
  sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t RadioPreferences.$favoriteStations.setter(uint64_t a1)
{
  v2 = sub_10000368C(&qword_1000EC880, &qword_1000B60F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*RadioPreferences.$favoriteStations.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10000368C(&qword_1000EC880, &qword_1000B60F0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC5Media16RadioPreferences__favoriteStations;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10003EA34;
}

uint64_t RadioPreferences.nowPlayingObserver.setter()
{
  swift_beginAccess();
  swift_weakAssign();
  sub_100092458();
}

void (*RadioPreferences.nowPlayingObserver.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC5Media16RadioPreferences_nowPlayingObserver;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091FE8;
}

void sub_100091FE8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    v7 = v3[4];
    swift_endAccess();

    sub_100092458();
  }

  free(v3);
}

BOOL RadioPreferences.hasFavorites.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3)
  {
    v0 = v3;
  }

  else
  {
    v0 = _swiftEmptyArrayStorage;
  }

  if (v0 >> 62)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 0;
}

id sub_100092134()
{
  v1 = sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC5Media16RadioPreferences__favoriteStations;
  v13 = 0;
  sub_10000368C(&qword_1000EEB00, &qword_1000BA1B0);
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v6], v5, v1);
  swift_weakInit();
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = sub_100003210(_swiftEmptyArrayStorage);
  }

  else
  {
    v7 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC5Media16RadioPreferences_cancelSet] = v7;
  v8 = [objc_opt_self() standardUserDefaults];
  *&v0[OBJC_IVAR____TtC5Media16RadioPreferences_defaults] = v8;
  v9 = type metadata accessor for RadioPreferences();
  v12.receiver = v0;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, "init");
}

void sub_1000922F8(uint8_t a1)
{
  v2 = v1;
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3B70);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 16777472;
    v7[4] = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Caching last sort order %hhu", v7, 5u);
  }

  v8 = *(v2 + OBJC_IVAR____TtC5Media16RadioPreferences_defaults);
  isa = UInt8._bridgeToObjectiveC()().super.super.isa;
  v10 = String._bridgeToObjectiveC()();
  [v8 setObject:isa forKey:v10];
}

void sub_100092458()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = *&v0[OBJC_IVAR____TtC5Media16RadioPreferences_defaults];
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    v3._countAndFlagsBits = 0x6F69646152;
    v3._object = 0xE500000000000000;
    String.append(_:)(v3);
    LOBYTE(v47) = 1;
    _print_unlocked<A, B>(_:_:)();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v2 arrayForKey:v4];

    if (v5)
    {
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = sub_100092B28(v6);

      if (v7)
      {
        v42 = v1;
        v8 = type metadata accessor for JSONDecoder();
        v9 = *(v8 + 48);
        v10 = *(v8 + 52);
        swift_allocObject();
        v11 = JSONDecoder.init()();
        v12 = *(v7 + 16);
        if (v12)
        {
          v47 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v13 = 0;
          do
          {
            if (v13 >= *(v7 + 16))
            {
              goto LABEL_35;
            }

            v44 = *(v7 + 16 * v13 + 32);
            sub_1000725CC(v44, *(&v44 + 1));
            sub_100092C54(&v44, &v45, &v46);
            ++v13;
            sub_100072620(v44, *(&v44 + 1));
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v14 = *(v47 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v12 != v13);

          v7 = v47;
        }

        else
        {

          v7 = _swiftEmptyArrayStorage;
        }

        if (qword_1000EAD08 != -1)
        {
LABEL_36:
          swift_once();
        }

        v15 = type metadata accessor for Logger();
        sub_100006928(v15, qword_1000F3BE8);

        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 134349056;
          if (v7)
          {
            if (v7 >> 62)
            {
              v19 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }
          }

          else
          {
            v19 = 0;
          }

          *(v18 + 4) = v19;

          _os_log_impl(&_mh_execute_header, v16, v17, "Decoded to %{public}ld favorite stations", v18, 0xCu);
        }

        else
        {
        }

        v20 = _swiftEmptyArrayStorage;
        if (v7)
        {
          v46 = _swiftEmptyArrayStorage;
          v47 = &_swiftEmptySetSingleton;
          v21 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v7 >> 62)
          {
            v22 = _CocoaArrayWrapper.endIndex.getter();
            if (v22)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v22 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v22)
            {
LABEL_22:
              v23 = 0;
              v24 = v7 & 0xC000000000000001;
              v25 = &OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
              v43 = v7 & 0xC000000000000001;
              while (1)
              {
                if (v24)
                {
                  v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v27 = v23 + 1;
                  if (__OFADD__(v23, 1))
                  {
LABEL_32:
                    __break(1u);
LABEL_33:
                    v35 = v46;
                    goto LABEL_39;
                  }
                }

                else
                {
                  if (v23 >= *(v21 + 16))
                  {
                    __break(1u);
LABEL_35:
                    __break(1u);
                    goto LABEL_36;
                  }

                  v26 = *(v7 + 8 * v23 + 32);

                  v27 = v23 + 1;
                  if (__OFADD__(v23, 1))
                  {
                    goto LABEL_32;
                  }
                }

                v28 = *v25;
                swift_beginAccess();
                LOBYTE(v28) = sub_10007B798(&v45, *(v26 + v28));

                if (v28)
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  v29 = v22;
                  v30 = v21;
                  v31 = v7;
                  v32 = v25;
                  v33 = v11;
                  v34 = v46[2];
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  v11 = v33;
                  v25 = v32;
                  v7 = v31;
                  v21 = v30;
                  v22 = v29;
                  v24 = v43;
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                }

                else
                {
                }

                ++v23;
                if (v27 == v22)
                {
                  goto LABEL_33;
                }
              }
            }
          }

          v35 = _swiftEmptyArrayStorage;
LABEL_39:

          if ((v35 & 0x8000000000000000) != 0 || (v35 & 0x4000000000000000) != 0)
          {
            type metadata accessor for TerrestrialRadioStation();
            v20 = _bridgeCocoaArray<A>(_:)();
          }

          else
          {

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            type metadata accessor for TerrestrialRadioStation();
            v20 = v35;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v47 = v20;
        v36 = v42;
        static Published.subscript.setter();
        sub_100091510();
        v37 = v36;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();
        if (!os_log_type_enabled(v38, v39))
        {

          return;
        }

        v40 = swift_slowAlloc();
        *v40 = 134349056;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v47)
        {
          if (v47 >> 62)
          {
            v41 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v41 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
          v41 = 0;
        }

        *(v40 + 4) = v41;

        _os_log_impl(&_mh_execute_header, v38, v39, "Finalized to %{public}ld favorite stations", v40, 0xCu);
      }
    }
  }
}

void *sub_100092B28(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = _swiftEmptyArrayStorage;
  sub_1000A2C70(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000CB2C(i, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v9;
      v11 = v3;
      v7 = v3[2];
      v6 = v3[3];
      if (v7 >= v6 >> 1)
      {
        sub_1000A2C70((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v3 = v11;
      }

      v3[2] = v7 + 1;
      *&v3[2 * v7 + 4] = v5;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_100093DC8(0, 0xF000000000000000);
    return 0;
  }

  return v3;
}

void sub_100092C54(uint64_t *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  type metadata accessor for TerrestrialRadioStation();
  sub_100093DDC(&qword_1000EEB60);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
    *a2 = v3;
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v131 = 1;

  v126 = v132;
  static Published.subscript.setter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_19;
  }

  v9 = Strong;
  v10 = [Strong media];

  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = [v10 mediaSources];

  if (!v11)
  {
    goto LABEL_19;
  }

  sub_100005A50(0, &qword_1000EAFE0, CAFMediaSource_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v125 = a3;
  if (v12 >> 62)
  {
LABEL_87:
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  if (!v13)
  {
LABEL_18:

    a3 = v125;
LABEL_19:
    if (qword_1000EAD08 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006928(v18, qword_1000F3BE8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v127[0] = swift_slowAlloc();
      *v21 = 136446722;
      v22 = (v126 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      v23 = *v22;
      v24 = v22[1];

      v25 = sub_100043AF0(v23, v24, v127);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v26 = (v126 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier);
      swift_beginAccess();
      v27 = *v26;
      v28 = v26[1];

      v29 = sub_100043AF0(v27, v28, v127);

      *(v21 + 14) = v29;
      *(v21 + 22) = 2082;
      v30 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
      swift_beginAccess();
      v31 = *(v126 + v30);
      v32 = CAFMediaSourceSemanticType.description.getter();
      v34 = sub_100043AF0(v32, v33, v127);

      *(v21 + 24) = v34;
      _os_log_impl(&_mh_execute_header, v19, v20, "Couldn't match a media source to augment %{public}s, source %{public}s, type %{public}s", v21, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    *a3 = v126;
    return;
  }

  v15 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v16 = *(v12 + 8 * v15 + 32);
    }

    v11 = v16;
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if ([v16 mediaSourceSemanticType] == *(v132 + v14))
    {

      v35 = [v11 mediaItems];
      v36 = v125;
      if (v35)
      {
        v37 = v35;
        v38 = [v35 mediaItems];

        sub_100005A50(0, &qword_1000EDFE8, CAFMediaItem_ptr);
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v12 >> 62)
        {
          goto LABEL_90;
        }

        for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v121 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          if (!i)
          {
LABEL_38:

            break;
          }

          v40 = 0;
          v120 = v12 & 0xC000000000000001;
          v41 = v12 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v120)
            {
              v42 = v12;
              v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v40 >= *(v41 + 16))
              {
                goto LABEL_86;
              }

              v42 = v12;
              v43 = *(v12 + 8 * v40 + 32);
            }

            v44 = v43;
            v45 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }

            v46 = *(v132 + v121);
            v47 = CAFMediaItem.isEquivalent(to:)();

            if (v47)
            {
              break;
            }

            ++v40;
            v36 = v125;
            v12 = v42;
            if (v45 == i)
            {
              goto LABEL_38;
            }
          }

          TerrestrialRadioStation.mergeWithMediaItem(_:)(v44);

          v59 = &off_1000E7000;
          v117 = v44;
          v60 = [v44 mediaItemImageIdentifier];
          v36 = v125;
          if (!v60)
          {
            goto LABEL_93;
          }

          v61 = v60;
          v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v122 = v63;

          v64 = [v11 mediaItemImages];
          if (!v64)
          {

            goto LABEL_93;
          }

          v12 = v64;
          v65 = [v64 mediaItemImages];

          sub_100005A50(0, &qword_1000EDFF0, CAFMediaItemImage_ptr);
          v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v66 >> 62)
          {
            v67 = _CocoaArrayWrapper.endIndex.getter();
            v68 = v62;
            if (!v67)
            {
LABEL_92:

              v36 = v125;
              v59 = &off_1000E7000;
              goto LABEL_93;
            }
          }

          else
          {
            v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v68 = v62;
            if (!v67)
            {
              goto LABEL_92;
            }
          }

          v69 = 0;
          v118 = v66 & 0xFFFFFFFFFFFFFF8;
          v119 = v66 & 0xC000000000000001;
          while (1)
          {
            if (v119)
            {
              v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v69 >= *(v118 + 16))
              {
                goto LABEL_89;
              }

              v70 = *(v66 + 8 * v69 + 32);
            }

            v36 = v70;
            v71 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              break;
            }

            v72 = [v70 identifier];
            if (v72)
            {
              v73 = v72;
              v120 = v36;
              v74 = v66;
              v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v77 = v76;

              if (v75 == v68 && v77 == v122)
              {
                goto LABEL_68;
              }

              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v66 = v74;
              v36 = v120;
              if (v12)
              {
                goto LABEL_69;
              }
            }

            ++v69;
            if (v71 == v67)
            {
              goto LABEL_92;
            }
          }

          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          ;
        }
      }

      if (qword_1000EAD08 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_100006928(v48, qword_1000F3BE8);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        *v51 = 136446722;
        v52 = (v126 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
        swift_beginAccess();
        v53 = *v52;
        v54 = v52[1];

        v55 = sub_100043AF0(v53, v54, &v128);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2082;
        v56 = (v126 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier);
        swift_beginAccess();
        if (v56[1])
        {
          v57 = *v56;
          v58 = v56[1];
        }

        else
        {
          v57 = 0x29656E6F6E28;
          v58 = 0xE600000000000000;
        }

        v79 = sub_100043AF0(v57, v58, &v128);

        *(v51 + 14) = v79;
        *(v51 + 22) = 1026;
        v80 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
        v81 = v126;
        swift_beginAccess();
        *(v51 + 24) = *(v126 + v80);
        _os_log_impl(&_mh_execute_header, v49, v50, "Unable to locate any matching station for favorite %{public}s artworkIdentifier %{public}s, frequency %{public}u", v51, 0x1Cu);
        swift_arrayDestroy();

        goto LABEL_64;
      }

LABEL_99:

      *v36 = v132;
      return;
    }

    ++v15;
    if (v17 == v13)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:

  v36 = v120;
LABEL_69:

  v82 = [v36 imageData];

  v36 = v125;
  v59 = &off_1000E7000;
  if (v82)
  {
    v83 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    v86 = v85 >> 62;
    if ((v85 >> 62) > 1)
    {
      if (v86 != 2)
      {
        goto LABEL_84;
      }

      v87 = *(v83 + 16);
      v88 = *(v83 + 24);
    }

    else
    {
      if (!v86)
      {
        if ((v85 & 0xFF000000000000) == 0)
        {
          goto LABEL_84;
        }

LABEL_78:
        v89 = objc_allocWithZone(UIImage);
        sub_1000725CC(v83, v85);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v91 = [v89 initWithData:isa];

        sub_100072620(v83, v85);
        if (v91)
        {
          v123 = v91;
          if (qword_1000EAD08 != -1)
          {
            swift_once();
          }

          v92 = type metadata accessor for Logger();
          sub_100006928(v92, qword_1000F3BE8);
          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            v96 = swift_slowAlloc();
            v130 = v96;
            *v95 = 136446210;
            v97 = (v126 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
            swift_beginAccess();
            v98 = *v97;
            v99 = v97[1];

            v100 = sub_100043AF0(v98, v99, &v130);

            *(v95 + 4) = v100;
            _os_log_impl(&_mh_execute_header, v93, v94, "Applying new artwork to favorite %{public}s", v95, 0xCu);
            sub_100006960(v96);
          }

          v101 = v123;
          v133.value.super.isa = v123;
          TerrestrialRadioStation.setImage(_:)(v133);

          sub_100072620(v83, v85);
          *v125 = v126;
          return;
        }

LABEL_84:
        sub_100072620(v83, v85);
        goto LABEL_93;
      }

      v87 = v83;
      v88 = v83 >> 32;
    }

    if (v87 == v88)
    {
      goto LABEL_84;
    }

    goto LABEL_78;
  }

LABEL_93:
  if (qword_1000EAD08 != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  sub_100006928(v102, qword_1000F3BE8);
  v103 = v117;
  v49 = Logger.logObject.getter();
  v104 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v49, v104))
  {

    goto LABEL_99;
  }

  v105 = swift_slowAlloc();
  v129[0] = swift_slowAlloc();
  *v105 = 136446722;
  v106 = (v126 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v107 = *v106;
  v108 = v106[1];

  v109 = sub_100043AF0(v107, v108, v129);

  *(v105 + 4) = v109;
  *(v105 + 12) = 2082;
  v110 = [v103 v59[236]];
  v124 = v104;
  if (v110)
  {
    v111 = v110;
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;
  }

  else
  {
    v112 = 0x29656E6F6E28;
    v114 = 0xE600000000000000;
  }

  v115 = sub_100043AF0(v112, v114, v129);

  *(v105 + 14) = v115;
  *(v105 + 22) = 1026;
  v116 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  v81 = v126;
  swift_beginAccess();
  *(v105 + 24) = *(v126 + v116);
  _os_log_impl(&_mh_execute_header, v49, v124, "Unable to locate any matching artwork for favorite %{public}s artworkIdentifier %{public}s, frequency %{public}u", v105, 0x1Cu);
  swift_arrayDestroy();

LABEL_64:
  *v125 = v81;
}

id RadioPreferences.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioPreferences();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RadioPreferences()
{
  result = qword_1000EEB48;
  if (!qword_1000EEB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100093C5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RadioPreferences();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100093CA4()
{
  sub_100093D5C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100093D5C()
{
  if (!qword_1000EEB58)
  {
    sub_100005780(&qword_1000EEB00, &qword_1000BA1B0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000EEB58);
    }
  }
}

uint64_t sub_100093DC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100072620(a1, a2);
  }

  return a1;
}

uint64_t sub_100093DDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TerrestrialRadioStation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100093E34()
{
  result = qword_1000EEB70;
  if (!qword_1000EEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EEB70);
  }

  return result;
}

unint64_t sub_100093E88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000DF758, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void *sub_100093ED4(void *a1, unint64_t a2)
{
  if ([a1 hasCurrentFrequency])
  {
    sub_10009ED3C(&off_1000DF1B8);
  }

  if (a2 >> 62)
  {
LABEL_57:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a2 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v4, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:

LABEL_21:
        sub_10009ED3C(&off_1000DF1E0);
        break;
      }
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v6 = *(a2 + 8 * v4 + 32);

      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }
    }

    v7 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v8 = *(v6 + v7);
    v9 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
    swift_beginAccess();
    v10 = *(v6 + v9);
    v11 = v8;
    v12 = CAFMediaItem.primaryDisplayName(in:)();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      goto LABEL_20;
    }

    v16 = *(v6 + v7);
    v17 = CAFMediaItem.secondaryDisplayName.getter();
    v19 = v18;

    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    ++v4;
    if (v20)
    {
      goto LABEL_21;
    }
  }

  v21 = [a1 mediaSourceSemanticType];
  if (v21 == 6 || v21 == 8)
  {
    v23 = 0;
    while (v3 != v23)
    {
      if (v5)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v23, 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v23 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v27 = *(a2 + 8 * v23 + 32);

        if (__OFADD__(v23, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          sub_10009ED3C(&off_1000DF230);
          break;
        }
      }

      v28 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v29 = [*(v27 + v28) ensemble];
      if (v29)
      {
        v30 = v29;
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v32;

        v24 = v31 & 0xFFFFFFFFFFFFLL;
      }

      else
      {

        v24 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v26 = v24;
      }

      ++v23;
      if (v26)
      {
        goto LABEL_41;
      }
    }
  }

  v33 = 0;
  while (v3 != v33)
  {
    if (v5)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v33, 1))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        sub_10009ED3C(&off_1000DF258);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      if (v33 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v34 = *(a2 + 8 * v33 + 32);

      if (__OFADD__(v33, 1))
      {
        goto LABEL_51;
      }
    }

    v35 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v36 = *(v34 + v35);
    v37 = [v36 mediaItemCategory];

    ++v33;
    if (v37)
    {
      goto LABEL_52;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100094288(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_100098E8C, v5);
}

void sub_10009431C(uint64_t a1, uint64_t a2)
{
  sub_100005A50(0, &qword_1000EDFE0, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_1000943C0()
{
  v1 = v0;
  v2 = sub_10000368C(&qword_1000EC880, &qword_1000B60F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v80 - v5;
  v109 = sub_10000368C(&qword_1000EC888, &qword_1000B60F8);
  v107 = *(v109 - 8);
  v7 = *(v107 + 64);
  __chkstk_darwin(v109);
  v9 = v80 - v8;
  v98 = sub_10000368C(&unk_1000ED130, &unk_1000B50E0);
  v10 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v96 = v80 - v11;
  v95 = sub_10000368C(&unk_1000EC860, &qword_1000B50F0);
  v12 = *(*(v95 - 8) + 64);
  v13 = __chkstk_darwin(v95);
  v94 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = v80 - v15;
  v16 = sub_10000368C(&qword_1000EEC20, &qword_1000BA4C0);
  v99 = *(v16 - 8);
  v100 = v16;
  v17 = *(v99 + 64);
  __chkstk_darwin(v16);
  v97 = v80 - v18;
  v19 = sub_10000368C(&qword_1000EEC28, &unk_1000BA4C8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v101 = v80 - v22;
  v23 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v108 = v80 - v25;
  v102 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v88 = *(v102 - 8);
  v26 = v88[8];
  __chkstk_darwin(v102);
  v92 = v80 - v27;
  v91 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v90 = *(v91 - 8);
  v28 = *(v90 + 64);
  __chkstk_darwin(v91);
  v89 = v80 - v29;
  v30 = type metadata accessor for RadioRootViewController();
  v111.receiver = v0;
  v111.super_class = v30;
  objc_msgSendSuper2(&v111, "viewDidLoad");
  v31 = [v0 view];
  if (v31)
  {
    v32 = v31;
    v105 = v3;
    v106 = v2;
    v33 = [objc_opt_self() clearColor];
    [v32 setBackgroundColor:v33];

    v103 = *&v1[OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl];
    [v103 addTarget:v1 action:"segmentedControlChangedWithSender:" forControlEvents:4096];
    v34 = *&v1[OBJC_IVAR____TtC5Media23RadioRootViewController_sourcePickerButton];
    [v34 setShowsMenuAsPrimaryAction:1];
    Strong = swift_unknownObjectWeakLoadStrong();
    v104 = v6;
    v87 = v19;
    v86 = v20;
    if (Strong && (v36 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v37 = Strong, , v37, v36))
    {
      v85 = sub_100005A50(0, &unk_1000EEF90, UIMenu_ptr);
      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1000B4FC0;
      v39 = objc_opt_self();
      v40 = v9;
      v41 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_100099530;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100094288;
      aBlock[3] = &unk_1000E28E8;
      v42 = _Block_copy(aBlock);

      v43 = [v39 elementWithUncachedProvider:v42];
      v44 = v42;
      v9 = v40;
      _Block_release(v44);
      *(v38 + 32) = v43;
      v45 = v109;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v112.value.super.isa = 0;
      v112.is_nil = 0;
      v47.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v46, 0, v112, 0, 0xFFFFFFFFFFFFFFFFLL, v38, v79).super.super.isa;
    }

    else
    {
      v47.super.super.isa = 0;
      v45 = v109;
    }

    [v34 setMenu:v47.super.super.isa];

    v48 = *&v1[OBJC_IVAR____TtC5Media23RadioRootViewController_optionsButton];
    v49 = String._bridgeToObjectiveC()();
    v50 = [objc_opt_self() systemImageNamed:v49];

    [v48 setImage:v50 forState:0];
    [v48 setShowsMenuAsPrimaryAction:1];
    isa = sub_100097FB0().super.super.isa;
    [v48 setMenu:isa];

    v52 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"segmentedControlKnobSelectWithSender:"];
    sub_100005A50(0, &qword_1000EC830, NSNumber_ptr);
    v53 = v52;
    v54 = Array._bridgeToObjectiveC()().super.isa;
    [v53 setAllowedTouchTypes:v54];

    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1000B4FC0;
    *(v55 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:4];
    v56 = Array._bridgeToObjectiveC()().super.isa;

    [v53 setAllowedPressTypes:v56];

    [v103 addGestureRecognizer:v53];
    v57 = swift_unknownObjectWeakLoadStrong();
    if (v57)
    {
      v58 = *(v57 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
      v59 = v57;

      if (v58)
      {
        v85 = v53;
        v103 = v9;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (aBlock[0])
        {

          sub_1000963F8(1);
        }

        swift_beginAccess();
        sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
        v60 = v92;
        Published.projectedValue.getter();
        swift_endAccess();
        v84 = objc_opt_self();
        v61 = [v84 mainRunLoop];
        aBlock[0] = v61;
        v82 = type metadata accessor for NSRunLoop.SchedulerOptions();
        v62 = *(v82 - 8);
        v81 = *(v62 + 56);
        v83 = v62 + 56;
        v63 = v108;
        v81(v108, 1, 1, v82);
        v80[3] = sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
        v80[0] = &protocol conformance descriptor for Published<A>.Publisher;
        v80[1] = sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0);
        v80[2] = sub_10001ADF4();
        v64 = v89;
        v65 = v102;
        Publisher.receive<A>(on:options:)();
        sub_1000057C8(v63);

        (v88[1])(v60, v65);
        *(swift_allocObject() + 16) = v1;
        v88 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
        sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0);
        v66 = v1;
        v67 = v91;
        Publisher<>.sink(receiveValue:)();

        (*(v90 + 8))(v64, v67);
        v91 = OBJC_IVAR____TtC5Media23RadioRootViewController_subscribers;
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        swift_beginAccess();
        sub_10000368C(&unk_1000EBDE0, &unk_1000B3CB0);
        Published.projectedValue.getter();
        swift_endAccess();
        swift_beginAccess();
        Published.projectedValue.getter();
        swift_endAccess();
        swift_beginAccess();
        sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
        Published.projectedValue.getter();
        swift_endAccess();
        swift_beginAccess();
        Published.projectedValue.getter();
        swift_endAccess();
        sub_100005870(&unk_1000EBDF0, &unk_1000EC860, &qword_1000B50F0);
        sub_100005870(&unk_1000EBE10, &unk_1000ED130, &unk_1000B50E0);
        v68 = v97;
        Publishers.CombineLatest4.init(_:_:_:_:)();
        v69 = [v84 mainRunLoop];
        aBlock[0] = v69;
        v81(v63, 1, 1, v82);
        sub_100005870(&qword_1000EEC30, &qword_1000EEC20, &qword_1000BA4C0);
        v71 = v100;
        v70 = v101;
        Publisher.receive<A>(on:options:)();
        sub_1000057C8(v63);

        (*(v99 + 8))(v68, v71);
        *(swift_allocObject() + 16) = v66;
        sub_100005870(&qword_1000EEC38, &qword_1000EEC28, &unk_1000BA4C8);
        v72 = v66;
        v73 = v87;
        Publisher<>.sink(receiveValue:)();

        (*(v86 + 8))(v70, v73);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();

        v45 = v109;
        v9 = v103;
        v53 = v85;
      }
    }

    if (qword_1000EAD48 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
    v74 = v104;
    Published.projectedValue.getter();
    swift_endAccess();
    v75 = [objc_opt_self() mainRunLoop];
    aBlock[0] = v75;
    v76 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v77 = v108;
    (*(*(v76 - 8) + 56))(v108, 1, 1, v76);
    sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
    sub_100005870(&qword_1000ED100, &qword_1000EC880, &qword_1000B60F0);
    sub_10001ADF4();
    v78 = v106;
    Publisher.receive<A>(on:options:)();
    sub_1000057C8(v77);

    (*(v105 + 8))(v74, v78);
    *(swift_allocObject() + 16) = v1;
    sub_100005870(&unk_1000EC900, &qword_1000EC888, &qword_1000B60F8);
    v1;
    Publisher<>.sink(receiveValue:)();

    (*(v107 + 8))(v9, v45);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_1000963F8(1);
  }

  else
  {
    __break(1u);
  }
}

void sub_10009568C(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for RadioRootViewController();
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController];
  if (v3)
  {
    type metadata accessor for RadioStationListViewController();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
      if (v5)
      {
        if (*(*&v5[qword_1000EE3E8] + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation))
        {
          v6 = v3;
          v7 = v5;

          sub_100026200(v8);
        }
      }
    }
  }
}

uint64_t sub_1000957C0()
{
  v1 = OBJC_IVAR____TtC5Media23RadioRootViewController_subscribers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = &_swiftEmptySetSingleton;

  v3 = *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_pages);
  if (v3 >> 62)
  {
LABEL_19:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  v5 = 0;
  do
  {
    v6 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (swift_dynamicCastObjCProtocolConditional())
      {
        break;
      }

      ++v6;
      if (v5 == v4)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v9 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v5 != v4);
LABEL_20:
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    while ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_30;
      }

LABEL_26:
      [v12 invalidate];
      swift_unknownObjectRelease();
      ++v11;
      if (v13 == i)
      {
      }
    }

    if (v11 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v12 = _swiftEmptyArrayStorage[v11 + 4];
    swift_unknownObjectRetain();
    v13 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_26;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }
}

void sub_100095A60()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController);
  if (v1)
  {
    type metadata accessor for RadioStationListViewController();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC5Media30RadioStationListViewController_dataSource);
      if (v3)
      {
        if (*(*&v3[qword_1000EE3E8] + OBJC_IVAR____TtC5Media29RadioStationDataSourceStorage_currentPlayingStation))
        {
          v6 = v1;
          v4 = v3;

          sub_100026200(v5);
        }
      }
    }
  }
}

id sub_100095B44(int a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v4 = result;
    [result removeFromSuperview];

    return [a2 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100095BB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100095C08()
{
  v1 = *&v0[OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController];
  if (v1)
  {
    v2 = v1;
    [v2 willMoveToParentViewController:v0];
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

      v5 = [v2 view];
      if (v5)
      {
        v6 = v5;
        [v5 setAlpha:0.0];

        v7 = [v0 view];
        if (v7)
        {
          v8 = v7;
          v9 = [v2 view];
          if (v9)
          {
            v10 = v9;
            [v8 addSubview:v9];

            [v0 addChildViewController:v2];
            sub_10000368C(&unk_1000EC820, &qword_1000B5090);
            v11 = swift_allocObject();
            *(v11 + 16) = xmmword_1000B4FB0;
            v12 = [v2 view];
            if (v12)
            {
              v13 = v12;
              v14 = [v12 topAnchor];

              v15 = [v0 view];
              if (v15)
              {
                v16 = v15;
                v17 = [v15 topAnchor];

                v18 = [v14 constraintEqualToAnchor:v17];
                *(v11 + 32) = v18;
                v19 = [v2 view];
                if (v19)
                {
                  v20 = v19;
                  v21 = [v19 bottomAnchor];

                  v22 = [v0 view];
                  if (v22)
                  {
                    v23 = v22;
                    v24 = [v22 bottomAnchor];

                    v25 = [v21 constraintEqualToAnchor:v24];
                    *(v11 + 40) = v25;
                    v26 = [v2 view];
                    if (v26)
                    {
                      v27 = v26;
                      v28 = [v26 leadingAnchor];

                      v29 = [v0 view];
                      if (v29)
                      {
                        v30 = v29;
                        v31 = [v29 leadingAnchor];

                        v32 = [v28 constraintEqualToAnchor:v31];
                        *(v11 + 48) = v32;
                        v33 = [v2 view];
                        if (v33)
                        {
                          v34 = v33;
                          v35 = [v33 trailingAnchor];

                          v36 = [v0 view];
                          if (v36)
                          {
                            v37 = v36;
                            v38 = objc_opt_self();
                            v39 = [v37 trailingAnchor];

                            v40 = [v35 constraintEqualToAnchor:v39];
                            *(v11 + 56) = v40;
                            sub_100005A50(0, &qword_1000EBDD8, NSLayoutConstraint_ptr);
                            isa = Array._bridgeToObjectiveC()().super.isa;

                            [v38 activateConstraints:isa];

                            v42 = objc_opt_self();
                            v43 = swift_allocObject();
                            *(v43 + 16) = v2;
                            v54 = sub_100099488;
                            v55 = v43;
                            v50 = _NSConcreteStackBlock;
                            v51 = 1107296256;
                            v52 = sub_100064D70;
                            v53 = &unk_1000E2848;
                            v44 = _Block_copy(&v50);
                            v45 = v2;

                            v46 = swift_allocObject();
                            *(v46 + 16) = v45;
                            *(v46 + 24) = v0;
                            v54 = sub_1000994E8;
                            v55 = v46;
                            v50 = _NSConcreteStackBlock;
                            v51 = 1107296256;
                            v52 = sub_100095BB4;
                            v53 = &unk_1000E2898;
                            v47 = _Block_copy(&v50);
                            v48 = v45;
                            v49 = v0;

                            [v42 animateWithDuration:6 delay:v44 options:v47 animations:0.2 completion:0.0];

                            _Block_release(v47);
                            _Block_release(v44);
                            return;
                          }

LABEL_27:
                          __break(1u);
                          return;
                        }

LABEL_26:
                        __break(1u);
                        goto LABEL_27;
                      }

LABEL_25:
                      __break(1u);
                      goto LABEL_26;
                    }

LABEL_24:
                    __break(1u);
                    goto LABEL_25;
                  }

LABEL_23:
                  __break(1u);
                  goto LABEL_24;
                }

LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }
}

void sub_1000961B8(void *a1, double a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha:a2];
  }

  else
  {
    __break(1u);
  }
}

void sub_100096224()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    v2 = sub_1000ACA04();
    swift_unknownObjectRelease();
    if (v2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
        v5 = Strong;

        if (v4)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (v11)
          {
            v6 = swift_unknownObjectWeakLoadStrong();
            if (v6 && (v7 = *(v6 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v8 = v6, , v8, v7))
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              v9 = sub_100093ED4(v11, v11);

              v10 = v9[2];
            }

            else
            {
            }
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000963F8(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5Media23RadioRootViewController_pages);
  v5 = a1 & 1;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v5)
    {
      __break(1u);
      return;
    }

    v6 = *(v4 + 8 * v5 + 32);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController;
  v9 = *(v1 + OBJC_IVAR____TtC5Media23RadioRootViewController_currentChildViewController);
  if (v9)
  {
    sub_100005A50(0, &qword_1000EB870, UIViewController_ptr);
    v23 = v7;
    v10 = v9;
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {

      return;
    }

    v13 = *(v2 + v8);
    if (v13)
    {
      v14 = v13;
      [v14 willMoveToParentViewController:0];
      v24 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      v29 = sub_100099460;
      v30 = v15;
      aBlock = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_100064D70;
      v28 = &unk_1000E27A8;
      v16 = _Block_copy(&aBlock);
      v17 = v14;

      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      v29 = sub_100099480;
      v30 = v18;
      aBlock = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_100095BB4;
      v28 = &unk_1000E27F8;
      v19 = _Block_copy(&aBlock);
      v20 = v17;

      [v24 animateWithDuration:6 delay:v16 options:v19 animations:0.2 completion:0.0];

      _Block_release(v19);
      _Block_release(v16);
      v21 = *(v2 + v8);
      goto LABEL_13;
    }
  }

  else
  {
    v12 = v6;
  }

  v21 = 0;
LABEL_13:
  *(v2 + v8) = v7;
  v22 = v7;

  sub_100095C08();
  [*(v2 + OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl) setSelectedSegmentIndex:v5];
  if ((a1 & 1) != 0 && (*(v2 + OBJC_IVAR____TtC5Media23RadioRootViewController_didInitialSwitchToStations) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC5Media23RadioRootViewController_didInitialSwitchToStations) = 1;
  }

  sub_100095A60();
}

void sub_100096720()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites;
  v3 = v0[OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites];
  v4 = [v0 navigationItem];
  v5 = v4;
  if (v3)
  {
    [v4 setTitleView:0];

    v6 = [v1 navigationItem];
    v7 = [objc_opt_self() mainBundle];
    v89._object = 0xE000000000000000;
    v8._countAndFlagsBits = 0x5641465F54494445;
    v8._object = 0xEE0053455449524FLL;
    v9.value._countAndFlagsBits = 0x6F69646152;
    v9.value._object = 0xE500000000000000;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v89._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v89);

    String.init(format:_:)();

    v11 = String._bridgeToObjectiveC()();

    [v6 setTitle:v11];

    v12 = [v1 navigationItem];
    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000B4FC0;
    *(v13 + 32) = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"doneEditingFavorites"];
    sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setLeftBarButtonItems:isa];

    v15 = [v1 navigationItem];
    v82 = Array._bridgeToObjectiveC()().super.isa;
    [v15 setRightBarButtonItems:v82];

    return;
  }

  [v4 setTitle:0];

  v16 = [v1 navigationItem];
  v17 = *&v1[OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl];
  [v16 setTitleView:v17];

  v18 = [v1 view];
  if (!v18)
  {
    goto LABEL_65;
  }

  v19 = v18;
  v20 = [v18 safeAreaLayoutGuide];

  [v20 layoutFrame];
  v22 = v21;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v24 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager), v25 = Strong, , v25, v24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v81 = v85;
  }

  else
  {
    v81 = 0;
  }

  v26 = v1[v2];
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  if (v26 == 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B4FC0;
    v28 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"doneEditingFavorites"];
    v29 = inited;
    *(inited + 32) = v28;
  }

  else
  {
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1000B4FC0;
    v31 = String._bridgeToObjectiveC()();
    v32 = [objc_opt_self() systemImageNamed:v31];

    v33 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v32 style:0 target:v1 action:"showSettings"];
    v29 = v30;
    *(v30 + 32) = v33;
  }

  sub_10009F030(v29);
  v34 = &off_1000E7000;
  if (![v17 selectedSegmentIndex])
  {
    if (qword_1000EAD48 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

  sub_100096224();
  if (v35)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v37 = swift_unknownObjectWeakLoadStrong();
    v83 = v17;
    if (v37)
    {
      v38 = v37;
      v39 = [*(v37 + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

      if (v39)
      {
        v40 = [v39 audioSettings];

        if (v40)
        {
          if ((sub_100097554() & 1) == 0 && (v1[v2] & 1) == 0)
          {
            sub_10000368C(&unk_1000EC820, &qword_1000B5090);
            v41 = swift_initStackObject();
            *(v41 + 16) = xmmword_1000B4FC0;
            v42 = String._bridgeToObjectiveC()();
            v17 = [objc_opt_self() systemImageNamed:v42];

            v43 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v17 style:0 target:v1 action:"showSoundSettings"];
            *(v41 + 32) = v43;
            sub_10009F030(v41);
          }
        }
      }
    }

    v44 = [objc_allocWithZone(UIBarButtonItem) v34[396]];
    [v44 setSharesBackground:0];
    if (v1[v2])
    {
      break;
    }

    sub_10000368C(&unk_1000EC820, &qword_1000B5090);
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_1000B4FC0;
    *(v45 + 32) = v44;
    v46 = v44;
    sub_10009F030(v45);
    sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
    v87.value.super.super.isa = 0;
    v87.is_nil = 0;
    v34 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemFixedSpace, v87, v88).super.super.isa;
    [(SEL *)v34 setWidth:0.0];
    if (!(_swiftEmptyArrayStorage >> 62) || (_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      sub_1000457E4(0, 0, v34);

      break;
    }

    __break(1u);
LABEL_62:
    swift_once();
LABEL_17:
    if (RadioPreferences.hasFavorites.getter() && (v1[v2] & 1) == 0)
    {
LABEL_19:
      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_1000B4FC0;
      *(v36 + 32) = [objc_allocWithZone(UIBarButtonItem) v34[396]];
      sub_10009F030(v36);
    }
  }

  v47 = swift_unknownObjectWeakLoadStrong();
  if (v47)
  {
    v48 = *(v47 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v49 = v47;

    if (v48)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v84 == 1)
      {
        v50 = swift_unknownObjectWeakLoadStrong();
        if (v50)
        {
          v51 = *(v50 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
          v52 = v50;

          if (v51)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            if (v84 == 1 && (v1[v2] & 1) == 0)
            {
              v53 = [objc_opt_self() nowPlayingBarButtonWithTarget:v1 action:"nowPlayingTapped"];
              v54 = String._bridgeToObjectiveC()();
              [v53 setAccessibilityIdentifier:v54];

              if (v22 < 530.0)
              {
                v55 = v53;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v80 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                goto LABEL_43;
              }

              if (!(_swiftEmptyArrayStorage >> 62) || (_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
              {
                sub_1000457E4(0, 0, v53);
LABEL_43:

                goto LABEL_44;
              }

              __break(1u);
LABEL_65:
              __break(1u);
              return;
            }
          }
        }
      }
    }
  }

LABEL_44:
  v56 = [v1 navigationItem];
  sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v56 setLeftBarButtonItems:v57];

  v58 = [v1 navigationItem];
  v59 = Array._bridgeToObjectiveC()().super.isa;

  [v58 setRightBarButtonItems:v59];

  if (!v81)
  {
LABEL_48:
    if ((v1[OBJC_IVAR____TtC5Media23RadioRootViewController_didInitialSwitchToStations] & 1) == 0)
    {
      sub_1000963F8(1);
    }

    v62 = swift_unknownObjectWeakLoadStrong();
    v63 = v83;
    if (!v62)
    {
      goto LABEL_55;
    }

    v64 = *(v62 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v65 = v62;

    if (!v64)
    {
      goto LABEL_55;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v63 = v83;

    if (!v84)
    {
      goto LABEL_55;
    }

    v66 = [v84 mediaSourceSemanticType];

    if (v66 == 3)
    {
      v67 = 0x534C454E4E414843;
    }

    else
    {
LABEL_55:
      v67 = 0x534E4F4954415453;
    }

    v68 = [objc_opt_self() mainBundle];
    v90._object = 0xE000000000000000;
    v69._countAndFlagsBits = v67;
    v69._object = 0xE800000000000000;
    v70.value._countAndFlagsBits = 0x6F69646152;
    v70.value._object = 0xE500000000000000;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    v90._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v69, v70, v68, v71, v90);

    String.init(format:_:)();

    v72 = String._bridgeToObjectiveC()();

    [v63 setTitle:v72 forSegmentAtIndex:1];

    return;
  }

  v60 = v81;
  v61 = [v60 mediaSourceSemanticType];
  if (v61 <= 8 && ((1 << v61) & 0x14F) != 0)
  {

    goto LABEL_48;
  }

  v73 = [v1 navigationItem];
  [v73 setTitleView:0];

  v74 = [v1 navigationItem];
  v75 = [objc_opt_self() mainBundle];
  v91._object = 0xE000000000000000;
  v76._countAndFlagsBits = 0x455449524F564146;
  v76._object = 0xE900000000000053;
  v77.value._countAndFlagsBits = 0x6F69646152;
  v77.value._object = 0xE500000000000000;
  v78._countAndFlagsBits = 0;
  v78._object = 0xE000000000000000;
  v91._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v76, v77, v75, v78, v91);

  String.init(format:_:)();

  v79 = String._bridgeToObjectiveC()();

  [v74 setTitle:v79];

  if ([v83 selectedSegmentIndex])
  {
    sub_1000963F8(0);
  }
}

uint64_t sub_100097554()
{
  v1 = [v0 volumes];
  sub_100005A50(0, &qword_1000EEBF0, CAFVolume_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    return 0;
  }

  v4 = [v0 equalizers];
  if (v4)
  {
    v5 = v4;
    sub_100005A50(0, &unk_1000EEC00, CAFEqualizer_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v7)
    {
      return 0;
    }
  }

  v8 = [v0 soundDistribution];
  if (v8)
  {

    return 0;
  }

  return 1;
}

void *sub_1000976A0()
{
  v1 = v0;
  v2 = _swiftEmptyArrayStorage;
  v3 = *(v0 + OBJC_IVAR____TtC5Media23RadioRootViewController_segmentedControl);
  v4 = &off_1000E7000;
  if (![v3 selectedSegmentIndex])
  {
    if (qword_1000EAD48 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_3;
  }

LABEL_6:
  if ([v3 v4[305]])
  {
    sub_100096224();
    if (v13)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
        v16 = Strong;

        if (v15)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v40 = v41;
          if (v41)
          {
            v17 = swift_unknownObjectWeakLoadStrong();
            if (v17)
            {
              v18 = *(v17 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
              v19 = v17;

              if (v18)
              {
                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter();

                v20 = sub_100093ED4(v41, v41);

                v21 = v20[2];
                if (v21)
                {
                  v41 = v2;
                  specialized ContiguousArray.reserveCapacity(_:)();
                  sub_100005A50(0, &unk_1000EEC10, UIAction_ptr);
                  v22 = 32;
                  while (1)
                  {
                    v3 = v20;
                    v27 = *(v20 + v22);
                    v4 = sub_10007607C([v40 mediaSourceSemanticType], v27);
                    v2 = v28;
                    sub_1000762E4(v27);
                    if (qword_1000EAD48 != -1)
                    {
                      swift_once();
                    }

                    v29 = *(qword_1000F3CF0 + OBJC_IVAR____TtC5Media16RadioPreferences_defaults);
                    v30 = String._bridgeToObjectiveC()();
                    v31 = [v29 integerForKey:v30];

                    if ((v31 & 0x8000000000000000) != 0)
                    {
                      __break(1u);
LABEL_38:
                      __break(1u);
LABEL_39:
                      swift_once();
LABEL_3:
                      if (RadioPreferences.hasFavorites.getter() && (*(v1 + OBJC_IVAR____TtC5Media23RadioRootViewController_isEditingFavorites) & 1) == 0)
                      {
                        sub_10000368C(&unk_1000EC820, &qword_1000B5090);
                        inited = swift_initStackObject();
                        *(inited + 16) = xmmword_1000B4FC0;
                        sub_100005A50(0, &unk_1000EEC10, UIAction_ptr);
                        v6 = [objc_opt_self() mainBundle];
                        v42._object = 0xE000000000000000;
                        v7._countAndFlagsBits = 0x5641465F54494445;
                        v7._object = 0xEE0053455449524FLL;
                        v8.value._countAndFlagsBits = 0x6F69646152;
                        v8.value._object = 0xE500000000000000;
                        v9._countAndFlagsBits = 0;
                        v9._object = 0xE000000000000000;
                        v42._countAndFlagsBits = 0;
                        NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v42);

                        String.init(format:_:)();

                        v10 = String._bridgeToObjectiveC()();
                        v11 = [objc_opt_self() systemImageNamed:v10];

                        v12 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v34 = 0;
                        v36 = 0;
                        v38 = sub_100098EE8;
                        v39 = v12;
                        v37 = 0;
                        *(inited + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                        sub_10009F048(inited);
                      }

                      goto LABEL_6;
                    }

                    if (v31 > 0xFF)
                    {
                      goto LABEL_38;
                    }

                    if (v31 > 1u)
                    {
                      if (v31 == 2)
                      {
                        if (v27 == 2)
                        {
LABEL_31:
                          v23 = 1;
                          goto LABEL_17;
                        }
                      }

                      else
                      {
                        if (v31 != 3)
                        {
LABEL_15:
                          if (!v27)
                          {
                            goto LABEL_31;
                          }

                          goto LABEL_16;
                        }

                        if (v27 == 3)
                        {
                          goto LABEL_31;
                        }
                      }
                    }

                    else
                    {
                      if (v31 != 1)
                      {
                        goto LABEL_15;
                      }

                      if (v27 == 1)
                      {
                        goto LABEL_31;
                      }
                    }

LABEL_16:
                    v23 = 0;
LABEL_17:
                    v24 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v25 = swift_allocObject();
                    *(v25 + 16) = v27;
                    *(v25 + 24) = v24;
                    v35 = 0;
                    v36 = 0;
                    v38 = sub_100098EDC;
                    v39 = v25;
                    v37 = v23;
                    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                    v26 = v41[2];
                    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    specialized ContiguousArray._endMutation()();
                    ++v22;
                    --v21;
                    v20 = v3;
                    if (!v21)
                    {

                      v32 = v41;
                      goto LABEL_34;
                    }
                  }
                }

                v32 = _swiftEmptyArrayStorage;
LABEL_34:
                sub_10009F048(v32);
              }
            }
          }
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}