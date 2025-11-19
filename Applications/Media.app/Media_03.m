uint64_t TerrestrialRadioStation.mergeWithMediaItem(_:)(void *a1)
{
  v3 = [a1 frequency];
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  swift_beginAccess();
  *(v1 + v4) = v3;
  v5 = [a1 mediaItemName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v10 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
  swift_beginAccess();
  v11 = v10[1];
  *v10 = v7;
  v10[1] = v9;

  v12 = [a1 identifier];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v18 = v17[1];
  *v17 = v14;
  v17[1] = v16;

  v19 = [a1 mediaItemShortName];
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_callsign);
  swift_beginAccess();
  v25 = v24[1];
  *v24 = v21;
  v24[1] = v23;

  v26 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v27 = *(v1 + v26);
  *(v1 + v26) = a1;
  v28 = a1;

  v29 = [v28 mediaItemImageIdentifier];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier);
  swift_beginAccess();
  v35 = v34[1];
  *v34 = v31;
  v34[1] = v33;
}

Swift::Void __swiftcall TerrestrialRadioStation.setImage(_:)(UIImage_optional a1)
{
  isa = a1.value.super.isa;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = isa;

  static Published.subscript.setter();
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 delegate];

  if (v5)
  {
    type metadata accessor for AppDelegate();
    swift_dynamicCastClassUnconditional();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_unknownObjectRelease();
    if (!isa || ([(objc_class *)isa contentScaleFactor], v7 = v6, isa, v7 < 2.0))
    {
      v7 = 2.0;
    }

    v8 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
    swift_beginAccess();
    v9 = 56.0;
    if (*(v1 + v8) != 3)
    {
      v9 = 36.0;
    }

    if (isa)
    {
      v10 = v7 * v9;
      v11 = v7 * 36.0;
      v12 = v3;
      [(objc_class *)v12 size];
      if (v11 < v13 || ([(objc_class *)v12 size], v10 < v14))
      {
        v15 = [(objc_class *)v12 imageByPreparingThumbnailOfSize:v10, v11];
        swift_getKeyPath();
        swift_getKeyPath();

        v16 = v15;
        static Published.subscript.setter();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall TerrestrialRadioStation.setFavorite(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v22 == v4)
  {
    return;
  }

  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  v5 = qword_1000F3CF0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v22)
  {
    v7 = v22;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v24 = v7;
  if (!a1)
  {

    v8 = sub_100044590(&v24, v2);

    if (v24 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (v9 >= v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v8)
      {
LABEL_13:
        sub_1000449F4(v8, v9);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v22 = v2;
  __chkstk_darwin(v6);
  v21[2] = &v22;
  if ((sub_10003E1F0(sub_100044ACC, v21, v7) & 1) == 0)
  {
    if (!(v7 >> 62))
    {
LABEL_10:

      sub_100045810(0, 0, v2, sub_1000A91EC, sub_100044444);

      goto LABEL_14;
    }

LABEL_23:
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      return;
    }

    goto LABEL_10;
  }

LABEL_14:
  if (qword_1000EACE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006928(v10, qword_1000F3B70);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 67109634;
    *(v13 + 4) = a1;
    *(v13 + 8) = 2080;
    v15 = (v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    swift_beginAccess();
    v17 = *v15;
    v16 = v15[1];

    v18 = sub_100043AF0(v17, v16, &v23);

    *(v13 + 10) = v18;
    *(v13 + 18) = 1024;
    v19 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
    swift_beginAccess();
    *(v13 + 20) = *(v2 + v19);

    _os_log_impl(&_mh_execute_header, v11, v12, "Setting favorite %{BOOL}d for station %s %u", v13, 0x18u);
    sub_100006960(v14);
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v23) = a1;

  static Published.subscript.setter();
  v20 = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v20;
  v5;
  static Published.subscript.setter();
  sub_100091510();
}

uint64_t static TerrestrialRadioStation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t TerrestrialRadioStation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10000368C(&qword_1000EC968, &unk_1000B6380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  sub_10000CBDC(a1, a1[3]);
  sub_100044AEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  swift_beginAccess();
  v12 = *(v3 + v11);
  v41 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = (v3 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier);
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v40 = 1;

    KeyedEncodingContainer.encode(_:forKey:)();

    v17 = (v3 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
    swift_beginAccess();
    v18 = *v17;
    v19 = v17[1];
    v39 = 3;

    KeyedEncodingContainer.encode(_:forKey:)();

    v20 = (v3 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
    swift_beginAccess();
    v21 = *v20;
    v22 = v20[1];
    v38 = 2;

    KeyedEncodingContainer.encode(_:forKey:)();

    v23 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
    swift_beginAccess();
    v24 = *(v3 + v23);
    v37 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = (v3 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    swift_beginAccess();
    v26 = *v25;
    v27 = v25[1];
    v36 = 5;

    KeyedEncodingContainer.encode(_:forKey:)();

    v28 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_callsign;
    swift_beginAccess();
    v35 = *(v3 + v28);
    v33 = 6;
    sub_10000368C(&unk_1000EC2C8, &qword_1000B5750);
    sub_100044B40(&qword_1000EC978, &unk_1000EC2C8, &qword_1000B5750);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v29 = (v3 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
    swift_beginAccess();
    v30 = v29[1];
    v33 = *v29;
    v34 = v30;
    LOBYTE(v32) = 7;
    sub_10000368C(&qword_1000EC980, &qword_1000B6390);
    sub_100044B40(&qword_1000EC988, &qword_1000EC980, &qword_1000B6390);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier;
    swift_beginAccess();
    v32 = *(v3 + v31);
    v42 = 8;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TerrestrialRadioStation.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  TerrestrialRadioStation.init(from:)(a1);
  return v5;
}

uint64_t TerrestrialRadioStation.init(from:)(uint64_t *a1)
{
  v117 = a1;
  v2 = sub_10000368C(&qword_1000EC990, &qword_1000B6398);
  v101 = *(v2 - 8);
  v102 = v2;
  v3 = *(v101 + 64);
  __chkstk_darwin(v2);
  v109 = &v88 - v4;
  v5 = sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  v112 = *(v5 - 8);
  v113 = v5;
  v6 = v112[8];
  __chkstk_darwin(v5);
  v8 = &v88 - v7;
  v9 = sub_10000368C(&qword_1000EC948, &qword_1000B6248);
  v110 = *(v9 - 8);
  v111 = v9;
  v10 = *(v110 + 64);
  __chkstk_darwin(v9);
  v107 = &v88 - v11;
  v106 = sub_10000368C(&qword_1000EC938, &qword_1000B61F8);
  v12 = *(*(v106 - 8) + 64);
  v13 = __chkstk_darwin(v106);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v88 - v16;
  v18 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v88 - v21;
  v23 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__favorite;
  LOBYTE(v116) = 0;
  Published.init(initialValue:)();
  v103 = v23;
  v104 = v19;
  v24 = *(v19 + 32);
  v105 = v18;
  v24(v1 + v23, v22, v18);
  v25 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__matchedStation;
  v26 = type metadata accessor for Station();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  sub_1000077CC(v17, v15, &qword_1000EC938, &qword_1000B61F8);
  v27 = v107;
  Published.init(initialValue:)();
  sub_10003ECA4(v17);
  v28 = *(v110 + 32);
  v106 = v25;
  v28(v1 + v25, v27, v111);
  v29 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__stationImage;
  v116 = 0;
  sub_10000368C(&qword_1000EC950, &qword_1000B6250);
  Published.init(initialValue:)();
  v30 = v112[4];
  v107 = v29;
  v31 = v1 + v29;
  v32 = v113;
  v30(v31, v8, v113);
  v33 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__thumbnailImage;
  v116 = 0;
  Published.init(initialValue:)();
  v30(v1 + v33, v8, v32);
  v34 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_callsign);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  *(v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast) = 256;
  v36 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier);
  *v36 = 0;
  v36[1] = 0;
  v37 = v117[4];
  sub_10000CBDC(v117, v117[3]);
  sub_100044AEC();
  v38 = v108;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v38)
  {
    (*(v104 + 8))(v1 + v103, v105);
    (*(v110 + 8))(v1 + v106, v111);
    v43 = v113;
    v44 = v112[1];
    v44(&v107[v1], v113);
    v44((v1 + v33), v43);
    v45 = v34[1];

    v46 = v36[1];

    type metadata accessor for TerrestrialRadioStation();
    v47 = *(*v1 + 48);
    v48 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v116) = 0;
    LODWORD(v108) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v116) = 1;
    v39 = KeyedDecodingContainer.decode(_:forKey:)();
    v100 = v40;
    LOBYTE(v116) = 3;
    v98 = KeyedDecodingContainer.decode(_:forKey:)();
    v99 = v41;
    LOBYTE(v116) = 2;
    v96 = KeyedDecodingContainer.decode(_:forKey:)();
    v97 = v42;
    LOBYTE(v116) = 4;
    v95 = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v116) = 5;
    v93 = KeyedDecodingContainer.decode(_:forKey:)();
    v94 = v50;
    LOBYTE(v116) = 6;
    v91 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v92 = v51;
    LOBYTE(v116) = 7;
    v90 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v116) = 8;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v88 = v53;
    v89 = v52;
    *(v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency) = v108;
    v54 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
    v55 = v99;
    *v54 = v98;
    v54[1] = v55;
    v56 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier);
    v57 = v100;
    *v56 = v39;
    v56[1] = v57;
    v58 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName);
    v59 = v97;
    *v58 = v96;
    v58[1] = v59;
    *(v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType) = v95;
    v60 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    v61 = v94;
    *v60 = v93;
    v60[1] = v61;
    swift_beginAccess();
    v62 = v34[1];
    v63 = v92;
    *v34 = v91;
    v34[1] = v63;

    swift_beginAccess();
    v64 = BYTE1(v90);
    *v35 = v90;
    v35[1] = v64 & 1;
    swift_beginAccess();
    v65 = v36[1];
    v66 = v88;
    *v36 = v89;
    v36[1] = v66;

    sub_10000368C(&qword_1000EF2C0, &qword_1000B63A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000B6180;
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v68;
    AnyHashable.init<A>(_:)();
    v69 = objc_allocWithZone(NSNumber);
    v70 = [v69 initWithUnsignedInt:v108];
    v71 = sub_100005A50(0, &qword_1000EC830, NSNumber_ptr);
    *(inited + 96) = v71;
    *(inited + 72) = v70;
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v72;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for String;
    v73 = v94;
    *(inited + 144) = v93;
    *(inited + 152) = v73;
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v74;
    AnyHashable.init<A>(_:)();
    *(inited + 240) = &type metadata for String;
    v75 = v99;
    *(inited + 216) = v98;
    *(inited + 224) = v75;
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v76;
    AnyHashable.init<A>(_:)();
    *(inited + 312) = &type metadata for String;
    v77 = v91;
    v78 = v92;
    if (!v92)
    {
      v77 = 0;
      v78 = 0xE000000000000000;
    }

    *(inited + 288) = v77;
    *(inited + 296) = v78;
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v79;
    AnyHashable.init<A>(_:)();
    *(inited + 384) = &type metadata for String;
    v80 = v89;
    if (v66)
    {
      v81 = v66;
    }

    else
    {
      v80 = 0;
      v81 = 0xE000000000000000;
    }

    *(inited + 360) = v80;
    *(inited + 368) = v81;
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v82;
    AnyHashable.init<A>(_:)();
    if ((v90 & 0x100) != 0)
    {
      v83 = 0;
    }

    else
    {
      v83 = v90;
    }

    v84 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v83];
    *(inited + 456) = v71;
    *(inited + 432) = v84;
    sub_10004424C(inited);
    swift_setDeallocating();
    sub_10000368C(&qword_1000EC998, &qword_1000B63A8);
    swift_arrayDestroy();
    v85 = objc_allocWithZone(CAFMediaItem);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v87 = [v85 initWithDictionary:isa];

    (*(v101 + 8))(v109, v102);
    *(v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem) = v87;
  }

  sub_100006960(v117);
  return v1;
}

uint64_t TerrestrialRadioStation.deinit()
{
  v1 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__favorite;
  v2 = sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__matchedStation;
  v4 = sub_10000368C(&qword_1000EC948, &qword_1000B6248);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation__stationImage;
  v6 = sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation__thumbnailImage, v6);
  v8 = *(v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName + 8);

  v9 = *(v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceIdentifier + 8);

  v10 = *(v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceName + 8);

  v11 = *(v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier + 8);

  v12 = *(v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_callsign + 8);

  v13 = *(v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_artworkIdentifier + 8);

  return v0;
}

uint64_t TerrestrialRadioStation.__deallocating_deinit()
{
  TerrestrialRadioStation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100042FD0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TerrestrialRadioStation();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100043010@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for TerrestrialRadioStation();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = TerrestrialRadioStation.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_100043090@<X0>(void *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TerrestrialRadioStation.hash(into:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  String.hash(into:)();
}

Swift::Int TerrestrialRadioStation.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = (v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000431D8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = (v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100043278()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = (v1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000432F8()
{
  v1 = (*v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  String.hash(into:)();
}

Swift::Int sub_100043370()
{
  Hasher.init(_seed:)();
  v1 = (*v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static TerrestrialRadioStation.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v10 = v5;
  v11 = v7;
  LOBYTE(v9) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

  return v9 & 1;
}

uint64_t sub_1000434AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  v9 = *(v2 + v8);
  v10 = v5;
  v11 = v7;
  LOBYTE(v9) = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

  return v9 & 1;
}

uint64_t sub_100043578(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  v9 = *(a1 + v8);
  v10 = v5;
  v11 = v7;
  v12 = CAFMediaItem.isOrderedAscending(preferringFrequency:to:in:)();

  return v12 & 1;
}

uint64_t sub_100043648(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  if (*(a1 + v4) == 3)
  {
    v5 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
    swift_beginAccess();
    v28 = *v5;
    v29 = v5[1];
    v6 = (a2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationName);
    swift_beginAccess();
    v26 = *v6;
    v27 = v6[1];
    sub_100020F58();
    v7 = StringProtocol.caseInsensitiveCompare<A>(_:)();
    if (v7 == -1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v9 = *(a1 + v8);
    CAFMediaItem.primaryDisplayName(in:)();

    v10 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v11 = *(a2 + v10);
    v12 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
    swift_beginAccess();
    v13 = *(a2 + v12);
    v14 = v11;
    CAFMediaItem.primaryDisplayName(in:)();

    sub_100020F58();
    v7 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    if (v7 == -1)
    {
      goto LABEL_12;
    }
  }

  if (v7 != 1)
  {
    v15 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v16 = *(a1 + v15);
    CAFMediaItem.secondaryDisplayName.getter();

    v17 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v18 = *(a2 + v17);
    CAFMediaItem.secondaryDisplayName.getter();

    sub_100020F58();
    v19 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    if (v19 != -1)
    {
      if (v19 != 1)
      {
        v20 = TerrestrialRadioStation.formattedFrequency.getter();
        v22 = v21;
        if (v20 != TerrestrialRadioStation.formattedFrequency.getter() || v22 != v23)
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          return v24 & 1;
        }
      }

      goto LABEL_11;
    }

LABEL_12:
    v24 = 1;
    return v24 & 1;
  }

LABEL_11:
  v24 = 0;
  return v24 & 1;
}

void sub_100043968(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3;
  static Published.subscript.setter();
  sub_100091510();
}

uint64_t sub_100043A00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100043A7C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_100043AF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100043BBC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000CB2C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006960(v11);
  return v7;
}

unint64_t sub_100043BBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100043CC8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100043CC8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100043D14(a1, a2);
  sub_100043E44(&off_1000DF088);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100043D14(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100043F30(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100043F30(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100043E44(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100043FA4(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100043F30(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000368C(&qword_1000ECD48, &qword_1000BA740);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100043FA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000368C(&qword_1000ECD48, &qword_1000BA740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100044098(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = (v2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  if (v4 == *v6 && v5 == v6[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_100044148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000368C(&unk_1000EC610, &unk_1000B6700);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1000275D8(v5, v6);
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

unint64_t sub_10004424C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000368C(&qword_1000ECD50, &unk_1000B6710);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077CC(v4, v13, &qword_1000EC998, &qword_1000B63A8);
      result = sub_1000276E4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100045918(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_100044388()
{
  result = qword_1000EC568;
  if (!qword_1000EC568)
  {
    sub_100005780(&qword_1000EC560, &unk_1000B5920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC568);
  }

  return result;
}

uint64_t sub_100044444(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for TerrestrialRadioStation();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_100044590(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v27 = *a1 >> 62;
  v3 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v27)
  {
    goto LABEL_70;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = (a2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
  swift_beginAccess();
  v6 = 0;
  while (v4 != v6)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_66;
      }

      v7 = *(v2 + 8 * v6 + 32);
    }

    v8 = (v7 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
    swift_beginAccess();
    if (*v8 == *v5 && v8[1] == v5[1])
    {

LABEL_20:
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      while (1)
      {
        if (v2 >> 62)
        {
          if (v12 == _CocoaArrayWrapper.endIndex.getter())
          {
            return v6;
          }
        }

        else if (v12 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v6;
        }

        v3 = v2 & 0xC000000000000001;
        if ((v2 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            v25 = a2;
            v26 = _CocoaArrayWrapper.endIndex.getter();
            a2 = v25;
            v4 = v26;
            goto LABEL_3;
          }

          if (v12 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          v13 = *(v2 + 8 * v12 + 32);
        }

        v14 = (v13 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
        swift_beginAccess();
        if (*v14 == *v5 && v14[1] == v5[1])
        {
LABEL_23:
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v16 & 1) == 0)
          {
            if (v6 != v12)
            {
              if (v3)
              {
                v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v6 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_72:
                  __break(1u);
LABEL_73:
                  __break(1u);
                  return result;
                }

                v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v6 >= v20)
                {
                  goto LABEL_72;
                }

                if (v12 >= v20)
                {
                  goto LABEL_73;
                }

                v18 = *(v2 + 32 + 8 * v6);
                v19 = *(v2 + 32 + 8 * v12);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_100050B50(v2);
                v21 = (v2 >> 62) & 1;
              }

              else
              {
                LODWORD(v21) = 0;
              }

              v3 = v2 & 0xFFFFFFFFFFFFFF8;
              v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v19;

              if ((v2 & 0x8000000000000000) != 0 || v21)
              {
                v2 = sub_100050B50(v2);
                v3 = v2 & 0xFFFFFFFFFFFFFF8;
                if ((v12 & 0x8000000000000000) != 0)
                {
LABEL_60:
                  __break(1u);
                  return _CocoaArrayWrapper.endIndex.getter();
                }
              }

              else if ((v12 & 0x8000000000000000) != 0)
              {
                goto LABEL_60;
              }

              if (v12 >= *(v3 + 16))
              {
                goto LABEL_69;
              }

              v23 = v3 + 8 * v12;
              v24 = *(v23 + 32);
              *(v23 + 32) = v18;

              *a1 = v2;
            }

            v11 = __OFADD__(v6++, 1);
            if (v11)
            {
              goto LABEL_68;
            }
          }
        }

        v11 = __OFADD__(v12++, 1);
        if (v11)
        {
          goto LABEL_65;
        }
      }
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_20;
    }

    v11 = __OFADD__(v6++, 1);
    if (v11)
    {
      goto LABEL_67;
    }
  }

  if (v27)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *(v3 + 16);
  }
}

uint64_t sub_1000448F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for TerrestrialRadioStation();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000449F4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1000A91EC(result, 1);

  return sub_1000448F4(v4, v2, 0);
}

unint64_t sub_100044AEC()
{
  result = qword_1000EC970;
  if (!qword_1000EC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC970);
  }

  return result;
}

uint64_t sub_100044B40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005780(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for TerrestrialRadioStation()
{
  result = qword_1000EC9D0;
  if (!qword_1000EC9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100044C04()
{
  result = qword_1000EC9A0;
  if (!qword_1000EC9A0)
  {
    type metadata accessor for TerrestrialRadioStation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EC9A0);
  }

  return result;
}

uint64_t sub_100044D30@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100044D88(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_100044E60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100044EB8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_100044F18@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t sub_100044FB8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  result = swift_beginAccess();
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_100045014(char *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

id sub_100045074@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_100045114()
{
  sub_10000B5F0();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100045298(319, &qword_1000EC9E0, &qword_1000EC938, &qword_1000B61F8);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100045298(319, &unk_1000EC9E8, &qword_1000EC950, &qword_1000B6250);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100045298(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100005780(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TerrestrialRadioStation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TerrestrialRadioStation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100045440()
{
  result = qword_1000ECD18;
  if (!qword_1000ECD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECD18);
  }

  return result;
}

unint64_t sub_100045498()
{
  result = qword_1000ECD20;
  if (!qword_1000ECD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECD20);
  }

  return result;
}

unint64_t sub_1000454F0()
{
  result = qword_1000ECD28;
  if (!qword_1000ECD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECD28);
  }

  return result;
}

unint64_t sub_100045544(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000DF598, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100045590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000368C(&qword_1000ECD30, &qword_1000B66E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077CC(v4, &v11, &qword_1000ECD38, &unk_1000B66E8);
      v5 = v11;
      result = sub_100027728(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100045918(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

char *sub_1000456B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_100005A50(0, &unk_1000EBD80, UIBarButtonItem_ptr);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_100045810(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    v17 = a5;
    if (!v11)
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v13 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 1 - v13;
  if (__OFSUB__(1, v13))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v11)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (v16)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v17(v9, v7, 1, v5);
}

_OWORD *sub_100045918(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100045960@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000368C(&qword_1000ECD60, &qword_1000B6800);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  *v12 = static HorizontalAlignment.leading.getter();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  v13 = sub_10000368C(&qword_1000ECD68, &qword_1000B6808);
  sub_100045AF4(a1, a2 & 1, &v12[*(v13 + 44)]);
  KeyPath = swift_getKeyPath();
  sub_1000077CC(v12, v10, &qword_1000ECD60, &qword_1000B6800);
  sub_1000077CC(v10, a3, &qword_1000ECD60, &qword_1000B6800);
  v15 = sub_10000368C(&qword_1000ECD70, &qword_1000B6838);
  v16 = a3 + *(v15 + 48);
  *v16 = 0x403E000000000000;
  *(v16 + 8) = 0;
  v17 = a3 + *(v15 + 64);
  *v17 = KeyPath;
  *(v17 + 8) = 0;

  sub_100007834(v12, &qword_1000ECD60, &qword_1000B6800);

  return sub_100007834(v10, &qword_1000ECD60, &qword_1000B6800);
}

uint64_t sub_100045AF4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v62 = a3;
  v5 = sub_10000368C(&qword_1000EBBF0, &qword_1000B6840);
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  __chkstk_darwin(v5);
  v8 = &v53 - v7;
  v53 = type metadata accessor for MediaProgressView(0);
  v9 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10000368C(&qword_1000EB110, &qword_1000B3F98);
  v12 = *(*(v54 - 8) + 64);
  v13 = __chkstk_darwin(v54);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v55 = &v53 - v16;
  __chkstk_darwin(v15);
  v56 = &v53 - v17;
  v18 = type metadata accessor for EnvironmentValues();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000368C(&qword_1000EBBF8, &qword_1000B4F70);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v59 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v53 - v27;
  KeyPath = swift_getKeyPath();

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v19 + 8))(v22, v18);
    a1 = v73;
  }

  swift_getKeyPath();
  *&v73 = a1;
  sub_100007530();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(a1 + 44);

  if (v30 == 1)
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v64[55] = v69;
    *&v64[71] = v70;
    *&v64[87] = v71;
    *&v64[103] = v72;
    *&v64[7] = v66;
    *&v64[23] = v67;
    v65 = 0;
    *&v64[39] = v68;
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    v31 = v53;
    v32 = *(v53 + 20);
    *&v11[v32] = swift_getKeyPath();
    sub_10000368C(&qword_1000EB118, &qword_1000B3FD0);
    swift_storeEnumTagMultiPayload();
    v33 = &v11[*(v31 + 24)];
    v34 = type metadata accessor for PlaybackTimeObserver(0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v63 = sub_100063724();
    State.init(wrappedValue:)();
    v37 = *(&v73 + 1);
    *v33 = v73;
    *(v33 + 1) = v37;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v38 = v55;
    sub_1000076F8(v11, v55);
    v39 = (v38 + *(v54 + 36));
    v40 = v78;
    v39[4] = v77;
    v39[5] = v40;
    v39[6] = v79;
    v41 = v74;
    *v39 = v73;
    v39[1] = v41;
    v42 = v76;
    v39[2] = v75;
    v39[3] = v42;
    v43 = v56;
    sub_10001721C(v38, v56, &qword_1000EB110, &qword_1000B3F98);
    v44 = v57;
    sub_1000077CC(v43, v57, &qword_1000EB110, &qword_1000B3F98);
    v45 = *&v64[80];
    *(v8 + 73) = *&v64[64];
    *(v8 + 89) = v45;
    *(v8 + 105) = *&v64[96];
    v46 = *&v64[16];
    *(v8 + 9) = *v64;
    *(v8 + 25) = v46;
    v47 = *&v64[48];
    *(v8 + 41) = *&v64[32];
    *v8 = 0x4030000000000000;
    v8[8] = 0;
    *(v8 + 15) = *&v64[111];
    *(v8 + 57) = v47;
    v48 = sub_10000368C(&qword_1000EBC10, &qword_1000B68B0);
    sub_1000077CC(v44, &v8[*(v48 + 48)], &qword_1000EB110, &qword_1000B3F98);
    sub_100007834(v43, &qword_1000EB110, &qword_1000B3F98);
    sub_100007834(v44, &qword_1000EB110, &qword_1000B3F98);
    sub_10001721C(v8, v28, &qword_1000EBBF0, &qword_1000B6840);
    (*(v60 + 56))(v28, 0, 1, v61);
  }

  else
  {
    (*(v60 + 56))(v28, 1, 1, v61);
  }

  v49 = v59;
  sub_1000077CC(v28, v59, &qword_1000EBBF8, &qword_1000B4F70);
  v50 = v62;
  *v62 = KeyPath;
  *(v50 + 8) = 0;
  v51 = sub_10000368C(&qword_1000ECD78, &qword_1000B6870);
  sub_1000077CC(v49, v50 + *(v51 + 48), &qword_1000EBBF8, &qword_1000B4F70);

  sub_100007834(v28, &qword_1000EBBF8, &qword_1000B4F70);
  sub_100007834(v49, &qword_1000EBBF8, &qword_1000B4F70);
}

uint64_t sub_1000461E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_10000368C(&qword_1000ECD58, &qword_1000B67F8);
  return sub_100045960(v3, v4, a1 + *(v5 + 44));
}

unint64_t sub_100046264()
{
  result = qword_1000ECD80;
  if (!qword_1000ECD80)
  {
    sub_100005780(&qword_1000ECD88, &qword_1000B68B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECD80);
  }

  return result;
}

uint64_t sub_1000462C8(__int16 a1)
{
  if ((a1 & 0x100) == 0)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  v2 = 0x6F662E776F727261;
  v3 = 0x2E6E6F7276656863;
  if (a1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  if (!a1)
  {
    v4 = 0;
  }

  if (a1 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000463B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10004642C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1000464A0()
{
  if (!swift_weakLoadStrong())
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v29;
  if (!v29)
  {
    return;
  }

  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v1 = v29;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = CAFMediaSource.station(for:)();

  v26 = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  if (!(v29 >> 62))
  {
    v3 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v3;
    if (!v3)
    {
      goto LABEL_22;
    }

    goto LABEL_7;
  }

LABEL_21:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  v27 = v3;
  if (v3)
  {
LABEL_7:
    v4 = v0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = v1;
    v1 &= 0xFFFFFFFFFFFFFF8uLL;
    while (1)
    {
      if (v6)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:

          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.setter();
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.setter();
LABEL_18:

          return;
        }
      }

      else
      {
        if (v5 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v8 = *(v7 + 8 * v5 + 32);

        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_16;
        }
      }

      v10 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v0 = *(v8 + v10);
      v11 = CAFMediaItem.isEquivalent(to:)();

      if ((v11 & 1) == 0)
      {

        ++v5;
        if (v9 != v27)
        {
          continue;
        }
      }

      v0 = v4;
      v1 = v7;
      v3 = v27;
      break;
    }
  }

LABEL_22:
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25 = v0;
  v12 = CAFMediaSource.stations(for:)();

  if (!v3)
  {
LABEL_44:

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();

    return;
  }

  v13 = 0;
  while ((v1 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = __OFADD__(v13, 1);
    v16 = v13 + 1;
    if (v15)
    {
      goto LABEL_48;
    }

LABEL_29:
    v28 = v16;
    if (v12 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v19 = 0;
    do
    {
      if (v17 == v19)
      {

        goto LABEL_25;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v20 = *(v12 + 8 * v19 + 32);
      }

      v21 = v20;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v22 = *(v14 + v18);
      v23 = CAFMediaItem.isEquivalent(to:)();

      ++v19;
    }

    while ((v23 & 1) == 0);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v24 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_25:
    v13 = v28;
    if (v28 == v27)
    {
      goto LABEL_44;
    }
  }

  if (v13 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_49;
  }

  v14 = *(v1 + 32 + 8 * v13);

  v15 = __OFADD__(v13, 1);
  v16 = v13 + 1;
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_100046A58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100046ACC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

void sub_100046B4C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_1000464A0();
}

uint64_t sub_100046BD4()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v2)
    {
      v1 = [v2 mediaSourceSemanticType];

      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100046C90(__int16 a1)
{
  v2 = type metadata accessor for CAFMediaSource.SeekDirection();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000EACF8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006928(v7, qword_1000F3BB8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = v2;
    v11 = v3;
    v12 = v10;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_1000462C8(a1 & 0x1FF);
    v16 = sub_100043AF0(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Dialer button pressed: %s", v12, 0xCu);
    sub_100006960(v13);

    v3 = v11;
    v2 = v18;
  }

  if ((a1 & 0x100) != 0)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {

        sub_100047220();
      }
    }

    else if (a1 == 2)
    {

      sub_100047A2C();
    }

    else
    {
      if (a1 == 3)
      {
        v17 = &enum case for CAFMediaSource.SeekDirection.next(_:);
      }

      else
      {
        v17 = &enum case for CAFMediaSource.SeekDirection.previous(_:);
      }

      (*(v3 + 104))(v6, *v17, v2);
      sub_100047490();
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {

    sub_100046F88(a1);
  }
}

uint64_t sub_100046F88(__int16 a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A634();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  *(v14 + 25) = HIBYTE(a1) & 1;
  aBlock[4] = sub_10004A6B8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = &unk_1000E0B08;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100011378();
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_10004A6EC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100047220()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004A634();
  v11 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10004A780;
  v15 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100064D70;
  aBlock[3] = &unk_1000E0B30;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100011378();
  sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
  sub_10004A6EC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void sub_100047490()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  isa = v33[-1].isa;
  v8 = *(isa + 8);
  __chkstk_darwin(v33);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000EACF8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006928(v10, qword_1000F3BB8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Incrementing to next/prev step", v13, 2u);
  }

  v14 = sub_10004972C();
  if (v14)
  {
    v15 = v14;
    sub_10004A634();
    v16 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v1;
    *(v17 + 24) = v15;
    v38 = sub_10004A814;
    v39 = v17;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100064D70;
    v37 = &unk_1000E0BD0;
    v18 = _Block_copy(&aBlock);

    v19 = v32;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100011378();
    sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
    sub_10004A6EC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v3 + 8))(v6, v2);
LABEL_9:
    (*(isa + 1))(v19, v33);
    return;
  }

  v31 = v3;
  v20 = sub_100049C18();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    sub_10004A634();
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    v25[2] = v1;
    v25[3] = v22;
    v25[4] = v23;
    v38 = sub_10004A7C8;
    v39 = v25;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100064D70;
    v37 = &unk_1000E0B80;
    v26 = _Block_copy(&aBlock);

    v19 = v32;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100011378();
    sub_10000368C(&unk_1000EC7D0, &qword_1000B5D50);
    sub_10004A6EC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v31 + 8))(v6, v2);
    goto LABEL_9;
  }

  v33 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v33, v27, "Failed to increment to next/prev step", v28, 2u);
  }

  v29 = v33;
}

void sub_100047A2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = v26;
  if (v26)
  {
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        sub_100081374(v26);
      }
    }

    if (qword_1000EACF8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006928(v2, qword_1000F3BB8);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v5 = 136315394;
      v6 = (v0 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      v8 = *v6;
      v7 = v6[1];

      v9 = sub_100043AF0(v8, v7, &v25);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v10 = sub_100043AF0(v23[0], v23[1], &v25);

      *(v5 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Tuning with identifier: %s | dialedStationString: %s", v5, 0x16u);
      swift_arrayDestroy();

      return;
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v11 = sub_10004A160();
    v12 = sub_10007DF30(v11, 0, v27);

    if ((v12 & 0x100000000) != 0 || (sub_100048398() & 1) == 0)
    {
      if (qword_1000EACF8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006928(v21, qword_1000F3BB8);

      v3 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v3, v16))
      {
        goto LABEL_24;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v22 = sub_100043AF0(v26, v27, v24);

      *(v17 + 4) = v22;
      v20 = "Could not tune to station: %s";
    }

    else
    {
      if (swift_weakLoadStrong())
      {
        swift_beginAccess();
        v13 = swift_unknownObjectWeakLoadStrong();

        if (v13)
        {
          v14 = sub_100046BD4();
          sub_1000822A8(v12, v14);
        }
      }

      if (qword_1000EACF8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006928(v15, qword_1000F3BB8);

      v3 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v3, v16))
      {
        goto LABEL_24;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v19 = sub_100043AF0(v24[0], v24[1], v23);

      *(v17 + 4) = v19;
      v20 = "Tuning with dialedStationString: %s";
    }

    _os_log_impl(&_mh_execute_header, v3, v16, v20, v17, 0xCu);
    sub_100006960(v18);
  }

LABEL_24:
}

uint64_t sub_100048060(__int16 a1)
{
  if ((a1 & 0x100) == 0)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      countAndFlagsBits = v18._countAndFlagsBits;
      v3 = *(v18._countAndFlagsBits + 16);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      countAndFlagsBits = _swiftEmptyArrayStorage;
      v3 = _swiftEmptyArrayStorage[2];
      if (v3)
      {
LABEL_4:
        v4 = 0;
        v5 = countAndFlagsBits + 5;
        do
        {
          v6 = &v5[2 * v4];
          v7 = v4;
          while (1)
          {
            if (v7 >= countAndFlagsBits[2])
            {
              __break(1u);
              return result;
            }

            v9 = *(v6 - 1);
            v8 = *v6;
            v4 = v7 + 1;
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
            String.append(_:)(v10);

            v11 = String.hasPrefix(_:)(v18);

            if (v11)
            {
              break;
            }

            v6 += 2;
            ++v7;
            if (v3 == v4)
            {
              goto LABEL_26;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1000A2C90(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v13 = _swiftEmptyArrayStorage[2];
          v12 = _swiftEmptyArrayStorage[3];
          if (v13 >= v12 >> 1)
          {
            result = sub_1000A2C90((v12 > 1), v13 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v13 + 1;
          v14 = &_swiftEmptyArrayStorage[2 * v13];
          v14[4] = v9;
          v14[5] = v8;
          v5 = countAndFlagsBits + 5;
        }

        while (v3 - 1 != v7);
      }
    }

LABEL_26:

    v17 = _swiftEmptyArrayStorage[2];

    v16 = v17 == 0;
    return !v16;
  }

  if (a1 <= 2u)
  {
    if (!a1)
    {
      return 0;
    }

    if (a1 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v15 = (v18._object >> 56) & 0xF;
      if ((v18._object & 0x2000000000000000) == 0)
      {
        v15 = v18._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v16 = v15 == 0;
      return !v16;
    }
  }

  return sub_100048398();
}

uint64_t sub_100048398()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = sub_10004A160();
  v1 = sub_10007DF30(v0, v24, v25);

  if ((v1 & 0x100000000) != 0)
  {
    goto LABEL_19;
  }

  if (!swift_weakLoadStrong())
  {
    goto LABEL_19;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v24;
  if (!v24)
  {
    goto LABEL_19;
  }

  v3 = [v24 mediaSourceSemanticType];
  if (v3 - 1 >= 2 && v3 != 8)
  {
    if (v3 == 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      return 1;
    }

    if (qword_1000EACF8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  v5 = [v24 currentFrequencyRange];
  if (![v5 valueIsInRange:v1])
  {

    goto LABEL_18;
  }

  v6 = [v5 minimumValue];
  v7 = v1 - v6;
  if (v1 < v6)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_15:
    v9 = type metadata accessor for Logger();
    sub_100006928(v9, qword_1000F3BB8);
    v10 = v24;
    v2 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      [v10 mediaSourceSemanticType];
      v14 = CAFMediaSourceSemanticType.description.getter();
      v16 = sub_100043AF0(v14, v15, &v24);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v2, v11, "Using dialer on unsupported media type: %s", v12, 0xCu);
      sub_100006960(v13);

      goto LABEL_19;
    }

LABEL_18:
    goto LABEL_19;
  }

  v8 = [v5 stepValue];

  if (!v8 || !(v7 % v8))
  {
    return 1;
  }

LABEL_19:
  if (qword_1000EACF8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006928(v17, qword_1000F3BB8);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = sub_100043AF0(v24, v25, &v23);

    *(v20 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v18, v19, "Can not tune to target frequency: %s", v20, 0xCu);
    sub_100006960(v21);
  }

  return 0;
}

uint64_t sub_100048854()
{
  v1 = OBJC_IVAR____TtC5Media20RadioDialerViewModel__dialedStation;
  v2 = sub_10000368C(&unk_1000ED150, &unk_1000B6130);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC5Media20RadioDialerViewModel__matchingMulticastStations;
  v4 = sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC5Media20RadioDialerViewModel__dialedStationString;
  v6 = sub_10000368C(&qword_1000ECE88, &unk_1000B6938);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_weakDestroy();
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v7, v8);
}

uint64_t type metadata accessor for RadioDialerViewModel()
{
  result = qword_1000ECDD0;
  if (!qword_1000ECDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000489F8()
{
  sub_100045298(319, &qword_1000ECDE0, &qword_1000EC5B0, &qword_1000B7D80);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100045298(319, &qword_1000ECDE8, &qword_1000EEF30, &qword_1000B68E0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100048B34();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100048B34()
{
  if (!qword_1000ECDF0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000ECDF0);
    }
  }
}

Swift::Int sub_100048B84(__int16 a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100) != 0)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        v2 = 2;
      }

      else
      {
        v2 = 0;
      }
    }

    else if (a1 == 2)
    {
      v2 = 3;
    }

    else if (a1 == 3)
    {
      v2 = 4;
    }

    else
    {
      v2 = 5;
    }

    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
  }

  return Hasher._finalize()();
}

uint64_t sub_100048C2C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

BOOL sub_100048C7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1] != 1)
  {
    if ((v4 & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1 <= 1u)
  {
    if (*a1)
    {
      v5 = v3 == 1;
    }

    else
    {
      v5 = v3 == 0;
    }
  }

  else if (v2 == 2)
  {
    v5 = v3 == 2;
  }

  else
  {
    if (v2 != 3)
    {
      if (v3 <= 3)
      {
        v4 = 0;
      }

      return v4 == 1;
    }

    v5 = v3 == 3;
  }

  if (!v5)
  {
    LOBYTE(v4) = 0;
  }

  return (v4 & 1) != 0;
}

void sub_100048D1C()
{
  v1 = *v0;
  if (v0[1] == 1)
  {
    if (*v0 <= 1u)
    {
      if (*v0)
      {
        v2 = 2;
      }

      else
      {
        v2 = 0;
      }
    }

    else if (v1 == 2)
    {
      v2 = 3;
    }

    else if (v1 == 3)
    {
      v2 = 4;
    }

    else
    {
      v2 = 5;
    }

    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int sub_100048DA8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    if (v1 <= 1)
    {
      if (v1)
      {
        v3 = 2;
      }

      else
      {
        v3 = 0;
      }
    }

    else if (v1 == 2)
    {
      v3 = 3;
    }

    else if (v1 == 3)
    {
      v3 = 4;
    }

    else
    {
      v3 = 5;
    }

    Hasher._combine(_:)(v3);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void sub_100048E50(uint64_t a1, __int16 a2)
{
  v2 = sub_1000462C8(a2 & 0x1FF);
  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_1000464A0();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100020F58();
  v6 = StringProtocol.contains<A>(_:)();

  if ((v6 & 1) == 0)
  {
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      countAndFlagsBits = v25._countAndFlagsBits;
      v8 = *(v25._countAndFlagsBits + 16);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      countAndFlagsBits = _swiftEmptyArrayStorage;
      v8 = _swiftEmptyArrayStorage[2];
      if (v8)
      {
LABEL_4:
        v9 = 0;
        v10 = countAndFlagsBits + 5;
        v11 = _swiftEmptyArrayStorage;
        do
        {
          v24 = v11;
          v12 = &v10[2 * v9];
          v13 = v9;
          while (1)
          {
            if (v13 >= countAndFlagsBits[2])
            {
              __break(1u);
              return;
            }

            v15 = *(v12 - 1);
            v14 = *v12;
            v9 = v13 + 1;
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            v16._countAndFlagsBits = 46;
            v16._object = 0xE100000000000000;
            String.append(_:)(v16);
            v17 = String.hasPrefix(_:)(v25);

            if (v17)
            {
              break;
            }

            v12 += 2;
            ++v13;
            if (v8 == v9)
            {
              v11 = v24;
              goto LABEL_18;
            }
          }

          v18 = v24;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000A2C90(0, v24[2] + 1, 1);
            v18 = v24;
          }

          v20 = v18[2];
          v19 = v18[3];
          if (v20 >= v19 >> 1)
          {
            sub_1000A2C90((v19 > 1), v20 + 1, 1);
            v18 = v24;
          }

          v18[2] = v20 + 1;
          v21 = &v18[2 * v20];
          v21[4] = v15;
          v21[5] = v14;
          v10 = countAndFlagsBits + 5;
          v11 = v18;
        }

        while (v8 - 1 != v13);
        goto LABEL_18;
      }
    }

    v11 = _swiftEmptyArrayStorage;
LABEL_18:

    v22 = v11[2];

    if (v22)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v23._countAndFlagsBits = 46;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
      sub_1000464A0();
    }
  }
}

void sub_100049290()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v0 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v1 = sub_100049644(v10, v11);
    v3 = v2;

    if (v3)
    {
      if (v1 == 46 && v3 == 0xE100000000000000)
      {

        goto LABEL_14;
      }

      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
LABEL_14:
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v9 = String.count.getter();

        if (v9 >= 2)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          sub_1000496C4();

          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.setter();
          sub_1000464A0();
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1000496C4();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    sub_1000464A0();
    return;
  }

  if (qword_1000EACF8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006928(v4, qword_1000F3BB8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Dialer attempting to backspace on empty string", v7, 2u);
  }
}

uint64_t sub_100049644(uint64_t a1, unint64_t a2)
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

uint64_t sub_1000496C4()
{
  v1 = v0[1];
  if ((v1 & 0x2000000000000000) == 0)
  {
    if ((*v0 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v1 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  String.index(before:)();

  return String.remove(at:)();
}

uint64_t sub_10004972C()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v24;
  if (!v24)
  {
    if (qword_1000EACF8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006928(v9, qword_1000F3BB8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Cannot step to next/prev multicast - dialedStation is nil!", v12, 2u);
    }

    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v24 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  if (v3 < 0)
  {
    goto LABEL_33;
  }

  v4 = 0;
  do
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v24 + 8 * v4 + 32);
    }

    ++v4;
    v6 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v7 = *(v5 + v6);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v8 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v3 != v4);
LABEL_17:

  v13 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
  swift_beginAccess();
  v14 = *(v24 + v13);
  v2 = Array<A>.multicastNeighbor(for:direction:)();

  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v1 = v23;
    if (v23 >> 62)
    {
      goto LABEL_34;
    }

    v15 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      while (1)
      {
        v16 = 0;
        while ((v1 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_24:
          v19 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
          swift_beginAccess();
          v20 = *(v17 + v19);
          v21 = CAFMediaItem.isEquivalent(to:)();

          if (v21)
          {

            return v17;
          }

          ++v16;
          if (v18 == v15)
          {
            goto LABEL_35;
          }
        }

        if (v16 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v15 = _CocoaArrayWrapper.endIndex.getter();
        if (!v15)
        {
          goto LABEL_35;
        }
      }

      v17 = *(v1 + 8 * v16 + 32);

      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

LABEL_35:
  }

  else
  {
LABEL_30:
  }

  return 0;
}

uint64_t sub_100049B9C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100049C18()
{
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v0 = v26;
  }

  else
  {
    v0 = _swiftEmptyArrayStorage;
  }

  v1 = v0[2];

  if (!v1)
  {
    if (qword_1000EACF8 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = sub_10004A160();
  v3 = sub_10007DF30(v2, v26, v27);

  if ((v3 & 0x100000000) != 0)
  {
    if (qword_1000EACF8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006928(v22, qword_1000F3BB8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Cannot step to next/prev frequency - dialedStationString cannot be converted to UInt32!";
LABEL_34:
      _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);
    }

LABEL_35:

    return 0;
  }

  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v4 = 0;
    v5 = v26[2];
    v6 = v26 + 5;
    v25 = _swiftEmptyArrayStorage;
LABEL_8:
    v7 = &v6[2 * v4];
    while (1)
    {
      if (v5 == v4)
      {

        break;
      }

      if (v4 >= v26[2])
      {
        __break(1u);
LABEL_41:
        swift_once();
LABEL_28:
        v17 = type metadata accessor for Logger();
        sub_100006928(v17, qword_1000F3BB8);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          v21 = "Cannot step to next/prev frequency - tunable frequencies is empty!";
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      v11 = *(v7 - 1);
      v10 = *v7;
      if (swift_weakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (v26)
        {
          v12 = [v26 mediaSourceSemanticType];

          if (v12 == 2 || v12 == 8)
          {
            v8 = 1000;
          }

          else
          {
            v8 = 1;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }

      v8 = 1;
LABEL_11:
      ++v4;
      v7 += 2;
      v9 = sub_10007DF30(v8, v11, v10);

      if ((v9 & 0x100000000) == 0)
      {
        v14 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1000A2734(0, *(v25 + 2) + 1, 1, v25);
        }

        v6 = v26 + 5;
        v16 = *(v14 + 2);
        v15 = *(v14 + 3);
        if (v16 >= v15 >> 1)
        {
          v14 = sub_1000A2734((v15 > 1), v16 + 1, 1, v14);
        }

        *(v14 + 2) = v16 + 1;
        v25 = v14;
        *&v14[4 * v16 + 32] = v9;
        goto LABEL_8;
      }
    }
  }

  v24 = Array<A>.frequencyNeighbor(for:direction:)();

  if ((v24 & 0x100000000) != 0)
  {
    return 0;
  }

  sub_100046BD4();
  return UInt32.formattedUserEnteredFrequency(mediaSourceType:)();
}

void sub_10004A0D0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_1000464A0();
}

uint64_t sub_10004A160()
{
  if (!swift_weakLoadStrong())
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v3)
  {
    return 1;
  }

  v0 = [v3 mediaSourceSemanticType];

  if (v0 == 2 || v0 == 8)
  {
    return 1000;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10004A228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10004A2A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10004A324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10004A3A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10004A420()
{
  v1 = sub_10000368C(&unk_1000ED150, &unk_1000B6130);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC5Media20RadioDialerViewModel__dialedStation;
  v11 = 0;
  sub_10000368C(&qword_1000EC5B0, &qword_1000B7D80);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  swift_weakInit();
  swift_weakAssign();
  swift_beginAccess();
  v9 = 0;
  v10 = 0xE000000000000000;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  (*(v2 + 8))(v0 + v6, v1);
  v9 = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v9 = _swiftEmptyArrayStorage;
  sub_10000368C(&qword_1000EEF30, &qword_1000B68E0);
  Published.init(initialValue:)();
  swift_endAccess();
  return v0;
}

unint64_t sub_10004A634()
{
  result = qword_1000EC7C0;
  if (!qword_1000EC7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000EC7C0);
  }

  return result;
}

uint64_t sub_10004A680()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_10004A6D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004A6EC()
{
  result = qword_1000EB850;
  if (!qword_1000EB850)
  {
    sub_100005780(&unk_1000EC7D0, &qword_1000B5D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EB850);
  }

  return result;
}

uint64_t sub_10004A788()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10004A7C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_10004A0D0();
}

uint64_t sub_10004A7D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004A814()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_100049B9C();
}

uint64_t getEnumTagSinglePayload for DialerButtonType(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for DialerButtonType(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_10004A94C(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10004A96C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

unint64_t sub_10004A9A4()
{
  result = qword_1000ECE90;
  if (!qword_1000ECE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECE90);
  }

  return result;
}

void *sub_10004AA10(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_1000A2D34(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = _HashTable.startBucket.getter();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_10004B294(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = v46;
        v51 = v46;
        v25 = v46[2];
        v24 = v46[3];
        if (v25 >= v24 >> 1)
        {
          sub_1000A2D34(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        v23[2] = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          sub_10000368C(&unk_1000ECF50, qword_1000B6BB0);
          v14 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_10002D0A8(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_10002D0A8(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_10002D0A8(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_10004AE1C()
{
  sub_100005A50(0, &qword_1000ECF68, NSString_ptr);
  result = NSString.init(stringLiteral:)();
  qword_1000ECEA0 = result;
  return result;
}

void sub_10004AF34(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v11 = a3;
    v9 = [v8 sharedApplication];
    v10 = [v9 delegate];

    if (v10)
    {
      type metadata accessor for AppDelegate();
      swift_dynamicCastClassUnconditional();
      a4(v7);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10004B180()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioWindowSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10004B294(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100005A50(0, &qword_1000ECF40, UIOpenURLContext_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100005A50(0, &qword_1000ECF40, UIOpenURLContext_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_10004B4B8(void *a1, void *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = a1;
  v8 = [a2 role];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {

LABEL_8:
      if (qword_1000EACD8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100006928(v15, qword_1000F3B58);
      oslog = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v16, "Received an unknown scene, ignoring.", v17, 2u);
      }

      return;
    }
  }

  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000B4FC0;
  *(v18 + 32) = v2;
  v19 = v2;
  sub_10000368C(&qword_1000ECF60, &qword_1000B6BC8);
  v20.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (qword_1000EAD18 != -1)
  {
    swift_once();
  }

  [v6 _registerSettingsDiffActionArray:v20.super.isa forKey:qword_1000ECEA0];

  v21 = [objc_opt_self() sharedApplication];
  v22 = [v21 delegate];

  if (v22)
  {
    type metadata accessor for AppDelegate();
    swift_dynamicCastClassUnconditional();
    sub_1000A9568(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_10004B7DC(void *a1)
{
  v2 = [a1 session];
  v3 = [v2 role];

  CAFSignpostEmit_SceneWillEnterForeground();
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = a1;
    v8 = [v6 sharedApplication];
    v9 = [v8 delegate];

    if (v9)
    {
      type metadata accessor for AppDelegate();
      swift_dynamicCastClassUnconditional();
      sub_1000AAD14(v5);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10004B910(uint64_t a1)
{
  if (qword_1000EACD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006928(v2, qword_1000F3B58);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    sub_10004AA10(a1);
    type metadata accessor for URL();
    v7 = Array.description.getter();
    v9 = v8;

    v10 = sub_100043AF0(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received URL contexts %{public}s", v5, 0xCu);
    sub_100006960(v6);
  }

  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 delegate];

  if (v12)
  {
    type metadata accessor for AppDelegate();
    swift_dynamicCastClassUnconditional();
    sub_1000AB230(a1);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_10004BB24(void *a1, uint64_t a2)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = [a1 _FBSScene];
  v10 = [v3 settings];

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    if (a2)
    {
      v5 = v4;
      sub_100005A50(0, &qword_1000ECF30, UIWindowScene_ptr);
      v6 = [swift_getObjCClassFromMetadata() _sceneForFBSScene:a2];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 traitOverrides];
        v9 = [v5 iconStyleConfiguration];
        sub_100005A50(0, &qword_1000ECF38, SBSUITraitHomeScreenIconStyle_ptr);
        [v8 setObject:v9 forTrait:swift_getObjCClassFromMetadata()];

        swift_unknownObjectRelease();
      }

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

LABEL_6:
}

unint64_t sub_10004BC80()
{
  result = qword_1000ECF48;
  if (!qword_1000ECF48)
  {
    sub_100005A50(255, &qword_1000ECF40, UIOpenURLContext_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ECF48);
  }

  return result;
}

void sub_10004BD10()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for RadioFavoritesViewController();
  objc_msgSendSuper2(&v18, "viewDidLayoutSubviews");
  v1 = 5;
  do
  {
    v2 = [v0 view];
    if (!v2)
    {
      __break(1u);
      return;
    }

    v3 = v2;
    v4 = [v2 safeAreaLayoutGuide];

    [v4 layoutFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v19.origin.x = v6;
    v19.origin.y = v8;
    v19.size.width = v10;
    v19.size.height = v12;
    v13 = floor(CGRectGetWidth(v19) + -45.0 + -12.0) / (v1 + 1);
    v14 = floor(v13);
    if (v1 < 2)
    {
      break;
    }

    --v1;
  }

  while (v14 < 87.0);
  v15 = floor(v13 + 6.0 + 26.0);
  v16 = &v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_itemSize];
  if (v14 != *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_itemSize] || v15 != *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_itemSize + 8])
  {
    *v16 = v14;
    v16[1] = v15;
    sub_10004FC40();
  }
}

void sub_10004BECC()
{
  v1 = v0;
  v118 = sub_10000368C(&qword_1000ED118, &qword_1000B6CC8);
  v2 = *(v118 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v118);
  v117 = v98 - v4;
  v112 = sub_10000368C(&qword_1000EBDC0, &qword_1000B61F0);
  v111 = *(v112 - 8);
  v5 = *(v111 + 64);
  __chkstk_darwin(v112);
  v110 = (v98 - v6);
  v124 = sub_10000368C(&unk_1000EC7F0, &unk_1000B59F0);
  v114 = *(v124 - 1);
  v7 = *(v114 + 64);
  __chkstk_darwin(v124);
  v113 = v98 - v8;
  v107 = sub_10000368C(&unk_1000ED120, &qword_1000B6CD0);
  v106 = *(v107 - 8);
  v9 = *(v106 + 64);
  __chkstk_darwin(v107);
  v105 = v98 - v10;
  v11 = sub_10000368C(&qword_1000EC5A8, &unk_1000B5A10);
  v115 = *(v11 - 1);
  v116 = v11;
  v12 = *(v115 + 64);
  __chkstk_darwin(v11);
  v108 = v98 - v13;
  v14 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v123 = v98 - v16;
  v101 = sub_10000368C(&unk_1000ED130, &unk_1000B50E0);
  v100 = *(v101 - 1);
  v17 = *(v100 + 64);
  __chkstk_darwin(v101);
  v99 = v98 - v18;
  v104 = sub_10000368C(&unk_1000EBDA0, &qword_1000BA850);
  v103 = *(v104 - 8);
  v19 = *(v103 + 64);
  __chkstk_darwin(v104);
  v102 = v98 - v20;
  v21 = type metadata accessor for RadioFavoritesViewController();
  v128.receiver = v0;
  v128.super_class = v21;
  objc_msgSendSuper2(&v128, "viewDidLoad");
  if (_UISolariumEnabled())
  {
    v22 = [v0 view];
    if (!v22)
    {
LABEL_41:
      __break(1u);
      return;
    }

    v23 = v22;
    v24 = objc_opt_self();
    v25 = [v24 clearColor];
    [v23 setBackgroundColor:v25];

    v26 = *&v1[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView];
    v27 = [v24 clearColor];
    [v26 setBackgroundColor:v27];
  }

  else
  {
    v26 = *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView];
    sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
    v27 = static UIColor.cafui_tableBackground.getter();
    [v26 setBackgroundColor:v27];
  }

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  type metadata accessor for RadioFavoritesCollectionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  [v26 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v29];

  v30 = [v1 view];
  if (!v30)
  {
    __break(1u);
    goto LABEL_35;
  }

  v31 = v30;
  v98[0] = v2;
  [v30 addSubview:v26];

  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1000B4FB0;
  v33 = [v26 leadingAnchor];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v35 = v34;
  v36 = [v34 safeAreaLayoutGuide];

  v37 = [v36 leadingAnchor];
  v38 = [v33 constraintEqualToAnchor:v37];

  *(v32 + 32) = v38;
  v39 = [v26 trailingAnchor];
  v40 = [v1 view];
  if (!v40)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v41 = v40;
  v42 = [v40 safeAreaLayoutGuide];

  v43 = [v42 trailingAnchor];
  v44 = [v39 constraintEqualToAnchor:v43];

  *(v32 + 40) = v44;
  v45 = [v26 bottomAnchor];
  v46 = [v1 view];
  if (!v46)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v47 = v46;
  v48 = v1;
  v49 = [v46 bottomAnchor];

  v50 = [v45 constraintEqualToAnchor:v49];
  *(v32 + 48) = v50;
  v51 = [v26 topAnchor];
  v52 = [v1 view];
  if (!v52)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v53 = v52;
  v54 = objc_opt_self();
  v55 = [v53 topAnchor];

  v56 = [v51 constraintEqualToAnchor:v55];
  *(v32 + 56) = v56;
  sub_100005A50(0, &qword_1000EBDD8, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v54 activateConstraints:isa];

  [v26 setDelegate:v48];
  [v26 setDataSource:v48];
  [v26 setDragInteractionEnabled:0];
  [v26 setAllowsMultipleSelection:0];
  v58 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v48 action:"longPressGestureChangedWithGesture:"];
  v59 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_longPressRecognizer;
  v60 = *&v48[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_longPressRecognizer];
  *&v48[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_longPressRecognizer] = v58;
  v61 = v58;

  if (!v61)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v61 setMinimumPressDuration:0.25];

  if (!*&v48[v59])
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v26 addGestureRecognizer:?];
  sub_1000505B8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v63 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v64 = Strong;

    if (v63)
    {
      swift_beginAccess();
      sub_10000368C(&unk_1000EEFB0, &unk_1000B5A20);
      v109 = v63;
      v65 = v99;
      Published.projectedValue.getter();
      swift_endAccess();
      v66 = objc_opt_self();
      v67 = [v66 mainRunLoop];
      v127 = v67;
      v68 = type metadata accessor for NSRunLoop.SchedulerOptions();
      v69 = *(v68 - 8);
      v70 = *(v69 + 56);
      v121 = v69 + 56;
      v122 = v70;
      v71 = v123;
      v70(v123, 1, 1, v68);
      v120 = sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
      v98[1] = &protocol conformance descriptor for Published<A>.Publisher;
      sub_100005870(&unk_1000EBE10, &unk_1000ED130, &unk_1000B50E0);
      v119 = sub_10001ADF4();
      v72 = v102;
      v73 = v101;
      Publisher.receive<A>(on:options:)();
      sub_1000057C8(v71);

      (*(v100 + 8))(v65, v73);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v101 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
      sub_100005870(&qword_1000EEFC0, &unk_1000EBDA0, &qword_1000BA850);
      v74 = v104;
      Publisher<>.sink(receiveValue:)();

      (*(v103 + 8))(v72, v74);
      v75 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_cancelSet;
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      swift_beginAccess();
      sub_10000368C(&unk_1000ED150, &unk_1000B6130);
      v76 = v105;
      Published.projectedValue.getter();
      swift_endAccess();
      v77 = [v66 mainRunLoop];
      v127 = v77;
      v122(v71, 1, 1, v68);
      sub_100005870(&qword_1000EC910, &unk_1000ED120, &qword_1000B6CD0);
      v78 = v108;
      v79 = v107;
      Publisher.receive<A>(on:options:)();
      sub_1000057C8(v71);

      (*(v106 + 8))(v76, v79);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100005870(&unk_1000ED160, &qword_1000EC5A8, &unk_1000B5A10);
      v80 = v116;
      Publisher<>.sink(receiveValue:)();

      (*(v115 + 8))(v78, v80);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      swift_beginAccess();
      sub_10000368C(&unk_1000EBE20, &unk_1000B5120);
      v81 = v110;
      Published.projectedValue.getter();
      swift_endAccess();
      v116 = v66;
      v82 = [v66 mainRunLoop];
      v127 = v82;
      v115 = v68;
      v122(v71, 1, 1, v68);
      sub_100005870(&unk_1000EC800, &qword_1000EBDC0, &qword_1000B61F0);
      v83 = v113;
      v84 = v112;
      Publisher.receive<A>(on:options:)();
      sub_1000057C8(v71);

      v85 = v109;
      (*(v111 + 8))(v81, v84);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100005870(&qword_1000EC810, &unk_1000EC7F0, &unk_1000B59F0);
      v86 = v124;
      Publisher<>.sink(receiveValue:)();

      (*(v114 + 8))(v83, v86);
      swift_beginAccess();
      v114 = v75;
      AnyCancellable.store(in:)();
      swift_endAccess();

      v87 = OBJC_IVAR____TtC5Media18NowPlayingObserver_mediaSourceObservers;
      swift_beginAccess();
      v88 = *(v85 + v87);
      if (v88)
      {
        v89 = v88 & 0xFFFFFFFFFFFFFF8;
        if (v88 >> 62)
        {
          goto LABEL_33;
        }

        v90 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

        if (v90)
        {
          v91 = 0;
          v113 = (v88 & 0xC000000000000001);
          v110 = (v98[0] + 8);
          v112 = v88;
          v111 = v89;
          do
          {
            if (v113)
            {
              v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v93 = v91 + 1;
              if (__OFADD__(v91, 1))
              {
LABEL_28:
                __break(1u);
                break;
              }
            }

            else
            {
              if (v91 >= *(v89 + 16))
              {
                __break(1u);
LABEL_33:
                v90 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_19;
              }

              v92 = *(v88 + 8 * v91 + 32);
              v93 = v91 + 1;
              if (__OFADD__(v91, 1))
              {
                goto LABEL_28;
              }
            }

            v124 = v92;
            v125 = dispatch thunk of CAFMediaSourceObservable.$disabled.getter();
            v94 = [v116 mainRunLoop];
            v126 = v94;
            v95 = v123;
            v122(v123, 1, 1, v115);
            sub_10000368C(&qword_1000ED170, &qword_1000B6CD8);
            sub_100005870(&qword_1000ED178, &qword_1000ED170, &qword_1000B6CD8);
            v96 = v117;
            Publisher.receive<A>(on:options:)();
            sub_1000057C8(v95);

            swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_100005870(&unk_1000ED180, &qword_1000ED118, &qword_1000B6CC8);
            v97 = v118;
            Publisher<>.sink(receiveValue:)();

            (*v110)(v96, v97);
            swift_beginAccess();
            v88 = v112;
            AnyCancellable.store(in:)();
            swift_endAccess();

            v89 = v111;

            ++v91;
          }

          while (v93 != v90);
        }
      }
    }
  }

  sub_10004E3C0();
}

void sub_10004D1C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10004FC40();
  }
}

void sub_10004D21C()
{
  v36 = type metadata accessor for IndexPath();
  v0 = *(v36 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v36);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v28 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
      v10 = v8;

      if (v9)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v37 == 1)
        {
          sub_10004DB14();
LABEL_25:

          return;
        }
      }
    }

    v11 = &v7[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex];
    *v11 = 0;
    v11[8] = 1;
    v29 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView;
    v12 = [*&v7[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView] indexPathsForVisibleItems];
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v13 + 16);
    v34 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
    swift_beginAccess();
    v35 = v14;
    if (!v14)
    {
      v16 = _swiftEmptyArrayStorage;
LABEL_22:

      if (v16[2])
      {
        v26 = *&v7[v29];
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v26 reconfigureItemsAtIndexPaths:isa];

        v7 = isa;
      }

      else
      {
      }

      goto LABEL_25;
    }

    v15 = 0;
    v33 = v0 + 16;
    v31 = (v0 + 32);
    v16 = _swiftEmptyArrayStorage;
    v30 = v7;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        return;
      }

      v17 = (*(v0 + 80) + 32) & ~*(v0 + 80);
      v18 = *(v0 + 72);
      (*(v0 + 16))(v5, v13 + v17 + v18 * v15, v36);
      v19 = IndexPath.item.getter();
      v20 = *&v7[v34];
      if (v20 >> 62)
      {
        if (v19 >= _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_8;
        }
      }

      else if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

      if (!IndexPath.section.getter())
      {
        v21 = *v31;
        (*v31)(v32, v5, v36);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000A2CB0(0, v16[2] + 1, 1);
          v16 = v38;
        }

        v24 = v16[2];
        v23 = v16[3];
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          v28 = v21;
          sub_1000A2CB0(v23 > 1, v24 + 1, 1);
          v25 = v24 + 1;
          v21 = v28;
          v16 = v38;
        }

        v16[2] = v25;
        v21(v16 + v17 + v24 * v18, v32, v36);
        v7 = v30;
        goto LABEL_9;
      }

LABEL_8:
      (*(v0 + 8))(v5, v36);
LABEL_9:
      if (v35 == ++v15)
      {
        goto LABEL_22;
      }
    }
  }
}

void sub_10004D64C(unsigned __int8 *a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (v9)
    {
      sub_10004DB14();
LABEL_23:

      return;
    }

    v12 = Strong + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex;
    *v12 = 0;
    *(v12 + 8) = 1;
    v28 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView;
    v13 = [*(Strong + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView) indexPathsForVisibleItems];
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v14 + 16);
    v35 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
    swift_beginAccess();
    v36 = v15;
    if (!v15)
    {
      v32 = _swiftEmptyArrayStorage;
LABEL_20:

      if (v32[2])
      {
        v26 = *&v11[v28];
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v26 reconfigureItemsAtIndexPaths:isa];

        v11 = isa;
      }

      else
      {
      }

      goto LABEL_23;
    }

    v16 = 0;
    v34 = v3 + 16;
    v31 = (v3 + 32);
    v32 = _swiftEmptyArrayStorage;
    v29 = v11;
    while (1)
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        return;
      }

      v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v18 = *(v3 + 72);
      (*(v3 + 16))(v8, v14 + v17 + v18 * v16, v2);
      v19 = IndexPath.item.getter();
      v20 = *&v11[v35];
      if (v20 >> 62)
      {
        if (v19 >= _CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_6;
        }
      }

      else if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

      if (!IndexPath.section.getter())
      {
        v30 = *v31;
        v30(v33, v8, v2);
        v21 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000A2CB0(0, v21[2] + 1, 1);
          v21 = v37;
        }

        v24 = v21[2];
        v23 = v21[3];
        v25 = (v24 + 1);
        if (v24 >= v23 >> 1)
        {
          v32 = (v24 + 1);
          sub_1000A2CB0(v23 > 1, v24 + 1, 1);
          v25 = v32;
          v21 = v37;
        }

        v21[2] = v25;
        v32 = v21;
        v30(v21 + v17 + v24 * v18, v33, v2);
        v11 = v29;
        goto LABEL_7;
      }

LABEL_6:
      (*(v3 + 8))(v8, v2);
LABEL_7:
      if (v36 == ++v16)
      {
        goto LABEL_20;
      }
    }
  }
}

void sub_10004DB14()
{
  v1 = type metadata accessor for IndexPath();
  v81 = *(v1 - 8);
  v2 = *(v81 + 64);
  v3 = __chkstk_darwin(v1);
  v75 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v71 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = (&v71 - v9);
  __chkstk_darwin(v8);
  v12 = &v71 - v11;
  v76 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v77 = v1;
  if (Strong)
  {
    v14 = *(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_nowPlayingManager);
    v15 = Strong;

    if (v14)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v1 = v77;

      v78 = v85;
      if (v85)
      {
        v16 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
        v73 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
        v17 = v76;
        swift_beginAccess();
        v7 = *(v17 + v16);
        v74 = v10;
        if (v7 >> 62)
        {
          goto LABEL_71;
        }

        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }
    }
  }

  v25 = v76;
  v26 = v76 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex;
  *v26 = 0;
  *(v26 + 8) = 1;
  v73 = *(v25 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView);
  v27 = [v73 indexPathsForVisibleItems];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = *(v12 + 2);
  v29 = v25;
  v79 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  swift_beginAccess();
  v80 = v28;
  if (!v28)
  {
    v32 = _swiftEmptyArrayStorage;
LABEL_29:

    if (v32[2])
    {
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v73 reconfigureItemsAtIndexPaths:isa];

      return;
    }

    goto LABEL_66;
  }

  v30 = 0;
  v78 = v81 + 16;
  v31 = (v81 + 8);
  v74 = (v81 + 32);
  v32 = _swiftEmptyArrayStorage;
  while (v30 < *(v12 + 2))
  {
    v33 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v34 = *(v81 + 72);
    (*(v81 + 16))(v7, &v12[v33 + v34 * v30], v1);
    v35 = IndexPath.item.getter();
    v36 = *(v29 + v79);
    if (v36 >> 62)
    {
      v41 = v35;
      v42 = _CocoaArrayWrapper.endIndex.getter();
      v43 = v41;
      v29 = v76;
      if (v43 >= v42)
      {
        goto LABEL_15;
      }
    }

    else if (v35 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    if (!IndexPath.section.getter())
    {
      v37 = *v74;
      (*v74)(v75, v7, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000A2CB0(0, v32[2] + 1, 1);
        v32 = v84;
      }

      v40 = v32[2];
      v39 = v32[3];
      if (v40 >= v39 >> 1)
      {
        sub_1000A2CB0(v39 > 1, v40 + 1, 1);
        v32 = v84;
      }

      v32[2] = v40 + 1;
      v1 = v77;
      v37(v32 + v33 + v40 * v34, v75, v77);
      v29 = v76;
      goto LABEL_16;
    }

LABEL_15:
    (*v31)(v7, v1);
LABEL_16:
    if (v80 == ++v30)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  v19 = _swiftEmptyArrayStorage;
  if (!v18)
  {
LABEL_33:
    if (v19 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v46 = 0;
    while (1)
    {
      if (v7 == v46)
      {
        v52 = 0;
        goto LABEL_47;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v46 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v47 = *(v19 + 8 * v46 + 32);
      }

      v48 = v47;
      v49 = *(v78 + v45);
      v50 = CAFMediaItem.isEquivalent(to:)();

      if (v50)
      {
        break;
      }

      if (__OFADD__(v46++, 1))
      {
        goto LABEL_70;
      }
    }

    v52 = v46;
LABEL_47:

    v53 = v76;
    v54 = v76 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex;
    *v54 = v52;
    *(v54 + 8) = v7 == v46;
    v72 = *(v53 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView);
    v55 = [v72 indexPathsForVisibleItems];
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = *(v7 + 16);
    if (v80)
    {
      v56 = 0;
      v79 = v81 + 16;
      v57 = (v81 + 8);
      v75 = (v81 + 32);
      v58 = _swiftEmptyArrayStorage;
      v60 = v73;
      v59 = v74;
      while (1)
      {
        if (v56 >= *(v7 + 16))
        {
          goto LABEL_68;
        }

        v61 = (*(v81 + 80) + 32) & ~*(v81 + 80);
        v62 = *(v81 + 72);
        (*(v81 + 16))(v12, v7 + v61 + v62 * v56, v77);
        v63 = IndexPath.item.getter();
        v64 = *&v60[v76];
        if (v64 >> 62)
        {
          if (v63 >= _CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_49;
          }
        }

        else if (v63 >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        if (!IndexPath.section.getter())
        {
          v65 = *v75;
          (*v75)(v59, v12, v77);
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v82 = v58;
          if ((v66 & 1) == 0)
          {
            sub_1000A2CB0(0, v58[2] + 1, 1);
            v58 = v82;
          }

          v68 = v58[2];
          v67 = v58[3];
          if (v68 >= v67 >> 1)
          {
            sub_1000A2CB0(v67 > 1, v68 + 1, 1);
            v58 = v82;
          }

          v58[2] = v68 + 1;
          v69 = v58 + v61 + v68 * v62;
          v59 = v74;
          v65(v69, v74, v77);
          v60 = v73;
          goto LABEL_50;
        }

LABEL_49:
        (*v57)(v12, v77);
LABEL_50:
        if (v80 == ++v56)
        {
          goto LABEL_63;
        }
      }
    }

    v58 = _swiftEmptyArrayStorage;
LABEL_63:

    if (v58[2])
    {
      v70 = Array._bridgeToObjectiveC()().super.isa;

      [v72 reconfigureItemsAtIndexPaths:v70];
    }

    else
    {
    }

LABEL_66:

    return;
  }

  v83 = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v18 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(v7 + 8 * v20 + 32);
      }

      ++v20;
      v22 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
      swift_beginAccess();
      v23 = *(v21 + v22);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v24 = v83[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v18 != v20);

    v19 = v83;
    goto LABEL_33;
  }

  __break(1u);
}

uint64_t sub_10004E3C0()
{
  v0 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v22 - v2;
  v4 = sub_10000368C(&qword_1000EC880, &qword_1000B60F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = sub_10000368C(&qword_1000ED0F0, &qword_1000B6C60);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = sub_10000368C(&qword_1000ED0F8, &qword_1000B6C68);
  v22 = *(v14 - 8);
  v23 = v14;
  v15 = *(v22 + 64);
  __chkstk_darwin(v14);
  v17 = &v22 - v16;
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10000368C(&unk_1000EC8F0, &unk_1000B6C70);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000368C(&qword_1000EEF30, &qword_1000B68E0);
  sub_100005870(&qword_1000ED100, &qword_1000EC880, &qword_1000B60F0);
  Publisher.map<A>(_:)();
  (*(v5 + 8))(v8, v4);
  v18 = [objc_opt_self() mainRunLoop];
  v24 = v18;
  v19 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
  sub_100005870(&qword_1000ED108, &qword_1000ED0F0, &qword_1000B6C60);
  sub_10001ADF4();
  Publisher.receive<A>(on:options:)();
  sub_1000057C8(v3);

  (*(v10 + 8))(v13, v9);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005870(&qword_1000ED110, &qword_1000ED0F8, &qword_1000B6C68);
  v20 = v23;
  Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v17, v20);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10004E8C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v3 = v2;
  }

  *a2 = v3;
}

void sub_10004E8DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = a2;
    v11 = Strong + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex;
    *v11 = 0;
    *(v11 + 8) = 1;
    v12 = Strong;
    v37 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView;
    v13 = [*(Strong + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView) indexPathsForVisibleItems];
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v14 + 16);
    v45 = v12;
    v43 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
    swift_beginAccess();
    v44 = v15;
    if (v15)
    {
      v16 = 0;
      v42 = v4 + 16;
      v40 = (v4 + 32);
      v17 = _swiftEmptyArrayStorage;
      v39 = v3;
      while (1)
      {
        if (v16 >= *(v14 + 16))
        {
          __break(1u);
          return;
        }

        v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
        v19 = *(v4 + 72);
        (*(v4 + 16))(v9, v14 + v18 + v19 * v16, v3);
        v20 = IndexPath.item.getter();
        v21 = *(v45 + v43);
        if (v21 >> 62)
        {
          if (v20 >= _CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_4;
          }
        }

        else if (v20 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_4;
        }

        if (!IndexPath.section.getter())
        {
          v22 = *v40;
          (*v40)(v41, v9, v3);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000A2CB0(0, v17[2] + 1, 1);
            v17 = v46;
          }

          v25 = v17[2];
          v24 = v17[3];
          v26 = v25 + 1;
          if (v25 >= v24 >> 1)
          {
            v36 = v22;
            sub_1000A2CB0(v24 > 1, v25 + 1, 1);
            v26 = v25 + 1;
            v22 = v36;
            v17 = v46;
          }

          v17[2] = v26;
          v27 = v17 + v18 + v25 * v19;
          v3 = v39;
          v22(v27, v41, v39);
          goto LABEL_5;
        }

LABEL_4:
        (*(v4 + 8))(v9, v3);
LABEL_5:
        if (v44 == ++v16)
        {
          goto LABEL_18;
        }
      }
    }

    v17 = _swiftEmptyArrayStorage;
LABEL_18:

    if (v17[2])
    {
      v28 = v45;
      v29 = *(v45 + v37);
      v30.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v29 reconfigureItemsAtIndexPaths:v30.super.isa];
    }

    else
    {

      v30.super.isa = v45;
    }
  }

  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = v31;
    sub_10004FC40();
  }

  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    sub_10004DB14();
  }
}

id sub_10004ECE8(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = [a1 state];
  if (v11 == 3)
  {
    [*(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView) endInteractiveMovement];
LABEL_12:

    return sub_10004E3C0();
  }

  if (v11 != 2)
  {
    if (v11 == 1)
    {
      v12 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesObserverSet;
      swift_beginAccess();
      v13 = *(v1 + v12);
      *(v1 + v12) = &_swiftEmptySetSingleton;

      v14 = *(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView);
      [a1 locationInView:v14];
      result = [v14 indexPathForItemAtPoint:?];
      if (result)
      {
        v16 = result;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v4 + 32))(v10, v8, v3);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v14 beginInteractiveMovementForItemAtIndexPath:isa];

        return (*(v4 + 8))(v10, v3);
      }

      return result;
    }

    [*(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView) cancelInteractiveMovement];
    goto LABEL_12;
  }

  v18 = *(v1 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView);
  [a1 locationInView:v18];

  return [v18 updateInteractiveMovementTargetPosition:?];
}

uint64_t sub_10004F354(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_100050B50(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_10004F798(void *a1)
{
  v2 = v1;
  type metadata accessor for RadioFavoritesCollectionCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:isa];

  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = v8;
  v10 = IndexPath.row.getter();
  v11 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  swift_beginAccess();
  v12 = *(v2 + v11);
  if ((v12 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 8 * v10 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v27 = *(v2 + v11);

  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_8:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v15 = Strong, v16 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar], v15, v16))
  {
    v17 = sub_100082858(v13);

    if (v17)
    {
      v18 = 0x10000;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex + 8))
  {
    v19 = 0;
  }

  else
  {
    v20 = *(v2 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex);
    v19 = IndexPath.item.getter() == v20;
  }

  if (*(v2 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites))
  {
    v21 = 256;
  }

  else
  {
    v21 = 0;
  }

  v22 = v18 | v19 | v21;
  v23 = &v9[OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config];
  v24 = *&v9[OBJC_IVAR____TtC5Media28RadioFavoritesCollectionCell_config];
  *v23 = v13;
  v23[10] = BYTE2(v18);
  *(v23 + 4) = v22;
  swift_retain_n();

  v25 = v7;
  [v9 setNeedsUpdateConfiguration];

  return v9;
}

void sub_10004FC40()
{
  v1 = sub_10000368C(&unk_1000EC7E0, &unk_1000B5100);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v43 = &v36 - v3;
  v44 = sub_10000368C(&unk_1000EC890, &unk_1000B6100);
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v44);
  v42 = &v36 - v6;
  v41 = sub_10000368C(&unk_1000ED0B0, &unk_1000BA840);
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v41);
  v10 = &v36 - v9;
  if (qword_1000EAD48 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v49)
  {
    v11 = v49;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = (v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesCancelSet);
  swift_beginAccess();
  v13 = *v12;
  v40 = v12;
  *v12 = &_swiftEmptySetSingleton;

  v36 = v11 >> 62;
  v46 = v0;
  v47 = v11;
  if (v11 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    v45 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v45 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  v39 = objc_opt_self();
  if (v14 < 1)
  {
    __break(1u);
    return;
  }

  v15 = 0;
  v37 = (v4 + 8);
  v38 = v47 & 0xC000000000000001;
  v16 = (v7 + 8);
  v17 = v42;
  do
  {
    if (v38)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v18 = *(v47 + 8 * v15 + 32);
    }

    ++v15;
    swift_beginAccess();
    sub_10000368C(&unk_1000EEFD0, &unk_1000B5A50);
    Published.projectedValue.getter();
    swift_endAccess();
    v19 = [v39 mainRunLoop];
    v48 = v19;
    v20 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v21 = v43;
    (*(*(v20 - 8) + 56))(v43, 1, 1, v20);
    sub_100005A50(0, &unk_1000ED0C0, NSRunLoop_ptr);
    sub_100005870(&unk_1000EC8E0, &unk_1000EC890, &unk_1000B6100);
    sub_10001ADF4();
    v22 = v44;
    Publisher.receive<A>(on:options:)();
    sub_1000057C8(v21);

    (*v37)(v17, v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v18;
    sub_100005870(&unk_1000EEFE0, &unk_1000ED0B0, &unk_1000BA840);

    v25 = v41;
    Publisher<>.sink(receiveValue:)();

    (*v16)(v10, v25);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  while (v45 != v15);
LABEL_15:
  if (qword_1000EAD08 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006928(v26, qword_1000F3BE8);
  v27 = v47;

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v46;
  if (v30)
  {
    v32 = swift_slowAlloc();
    *v32 = 134349056;
    if (v36)
    {
      v33 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v33 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v32 + 4) = v33;

    _os_log_impl(&_mh_execute_header, v28, v29, "Reloading %{public}ld favorite(s)", v32, 0xCu);
  }

  else
  {
  }

  v34 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  swift_beginAccess();
  v35 = *(v31 + v34);
  *(v31 + v34) = v27;

  [*(v31 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView) reloadData];
  sub_1000505B8();
  if (!v45)
  {
    if (*(v31 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites))
    {
      *(v31 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites) = 0;
      sub_10004FC40();
    }
  }
}

void sub_100050318(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
    swift_beginAccess();
    v7 = *&v5[v6];
    if (v7 >> 62)
    {
LABEL_25:
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = (a3 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);

    swift_beginAccess();
    a3 = 0;
    while (1)
    {
      if (v8 == a3)
      {

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v10 = *(v7 + 8 * a3 + 32);
      }

      v11 = (v10 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_stationIdentifier);
      swift_beginAccess();
      if (*v11 == *v9 && v11[1] == v9[1])
      {

        goto LABEL_21;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        break;
      }

      if (__OFADD__(a3++, 1))
      {
        goto LABEL_24;
      }
    }

LABEL_21:
    v15 = *&v5[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView];
    sub_10000368C(&unk_1000ED0E0, &unk_1000B6C50);
    v16 = *(type metadata accessor for IndexPath() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    *(swift_allocObject() + 16) = xmmword_1000B4760;
    v19 = v15;
    IndexPath.init(item:section:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 reconfigureItemsAtIndexPaths:isa];
  }
}

void sub_1000505B8()
{
  v1 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_emptyLabel;
  v2 = *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_emptyLabel);
  v3 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v32 = *(v0 + v3);
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((v2 == 0) == (v5 == 0))
  {
    if (v5)
    {
      v6 = *(v0 + v1);
      if (v6)
      {
        [v6 removeFromSuperview];
        isa = *(v0 + v1);
      }

      else
      {
        isa = 0;
      }

      *(v0 + v1) = 0;
    }

    else
    {
      v8 = [objc_allocWithZone(UILabel) init];
      [v8 setTextAlignment:1];
      v9 = [objc_opt_self() mainBundle];
      v33._object = 0xE000000000000000;
      v10._countAndFlagsBits = 0x524F5641465F4F4ELL;
      v10._object = 0xEC00000053455449;
      v11.value._countAndFlagsBits = 0x6F69646152;
      v11.value._object = 0xE500000000000000;
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      v33._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v33);

      String.init(format:_:)();

      v13 = String._bridgeToObjectiveC()();

      [v8 setText:v13];

      v14 = v8;
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      v15 = [objc_opt_self() secondaryLabelColor];
      [v14 setTextColor:v15];

      v16 = [objc_opt_self() boldSystemFontOfSize:18.0];
      [v14 setFont:v16];

      v17 = v14;
      v18 = String._bridgeToObjectiveC()();
      [v17 setAccessibilityIdentifier:v18];

      v19 = *(v0 + v1);
      *(v0 + v1) = v17;
      v20 = v17;

      v21 = *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView);
      [v21 addSubview:v20];
      v22 = objc_opt_self();
      sub_10000368C(&unk_1000EC820, &qword_1000B5090);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000B6BD0;
      v24 = [v20 centerYAnchor];
      v25 = [v21 safeAreaLayoutGuide];
      v26 = [v25 centerYAnchor];

      v27 = [v24 constraintEqualToAnchor:v26];
      *(v23 + 32) = v27;
      v28 = [v20 centerXAnchor];

      v29 = [v21 safeAreaLayoutGuide];
      v30 = [v29 centerXAnchor];

      v31 = [v28 constraintEqualToAnchor:v30];
      *(v23 + 40) = v31;
      sub_100005A50(0, &qword_1000EBDD8, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v22 activateConstraints:isa];
    }
  }
}

id sub_100050A4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RadioFavoritesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100050B50(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_100050BBC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050BF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100050C4C()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_emptyLabel] = 0;
  v1 = &_swiftEmptySetSingleton;
  v2 = &_swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v2 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    v1 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_cancelSet] = v2;
  v3 = &v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_itemSize];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites] = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesCancelSet;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v5 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v5 = &_swiftEmptySetSingleton;
    }

    *&v0[v4] = v5;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v1 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v1 = &_swiftEmptySetSingleton;
    }
  }

  else
  {
    *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesCancelSet] = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesObserverSet] = v1;
  *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_longPressRecognizer] = 0;
  v6 = &v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex];
  *v6 = 0;
  v6[8] = 1;
  v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites] = 0;
  swift_unknownObjectWeakAssign();
  v7 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  v8 = [objc_allocWithZone(UICollectionView) initWithFrame:v7 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v0[OBJC_IVAR____TtC5Media28RadioFavoritesViewController_collectionView] = v8;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for RadioFavoritesViewController();
  return objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
}

void sub_100050E4C()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_emptyLabel) = 0;
  v1 = &_swiftEmptySetSingleton;
  v2 = &_swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v2 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }
  }

  *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_cancelSet) = v2;
  v3 = (v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_itemSize);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesCancelSet;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v5 = sub_100003210(_swiftEmptyArrayStorage);
    }

    else
    {
      v5 = &_swiftEmptySetSingleton;
    }

    *(v0 + v4) = v5;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      v1 = sub_100003210(_swiftEmptyArrayStorage);
    }
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesCancelSet) = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favoritesObserverSet) = v1;
  *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_longPressRecognizer) = 0;
  v6 = v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex;
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100050FD8()
{
  v1 = IndexPath.row.getter();
  v2 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  result = swift_beginAccess();
  v4 = *(v0 + v2);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_5:
    if (*(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites) == 1)
    {
      TerrestrialRadioStation.setFavorite(_:)(0);
    }

    if ((*(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex + 8) & 1) != 0 || (v6 = *(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_currentPlayingIndex), IndexPath.item.getter() != v6))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
      }

      v10 = Strong;
      v8 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

      if (!v8)
      {
      }

      sub_100081374(v5);
    }

    else
    {
      v7 = swift_unknownObjectWeakLoadStrong();
      if (!v7)
      {
      }

      v8 = v7;
      sub_100010040();
    }
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 8 * v1 + 32);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100051154()
{
  if (*(v0 + OBJC_IVAR____TtC5Media28RadioFavoritesViewController_isEditingFavorites))
  {
    return 1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  v4 = [*(Strong + OBJC_IVAR____TtC5Media15RadioCarManager_carManager) currentCar];

  if (!v4)
  {
    return 0;
  }

  v5 = v0;
  v6 = IndexPath.row.getter();
  v7 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  result = swift_beginAccess();
  v9 = *(v5 + v7);
  if ((v9 & 0xC000000000000001) != 0)
  {

    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_9;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 8 * v6 + 32);

LABEL_9:
    v1 = sub_100082858(v10);

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10005129C(uint64_t a1, uint64_t a2)
{
  v4 = IndexPath.row.getter();
  v5 = OBJC_IVAR____TtC5Media28RadioFavoritesViewController_favorites;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v13 = *(v2 + v5);

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (v4 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v4 = *(v6 + 8 * v4 + 32);
  }

  v7 = IndexPath.row.getter();
  swift_beginAccess();
  sub_10004F354(v7);
  swift_endAccess();

  a2 = IndexPath.row.getter();
  swift_beginAccess();
  v8 = *(v2 + v5);
  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a2)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  if (_CocoaArrayWrapper.endIndex.getter() < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_7:
  if (a2 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_100044564(a2, a2, v4);
  swift_endAccess();

  if (qword_1000EAD48 != -1)
  {
LABEL_16:
    swift_once();
  }

  v9 = qword_1000F3CF0;
  v10 = *(v2 + v5);
  swift_getKeyPath();
  swift_getKeyPath();

  v11 = v9;
  static Published.subscript.setter();
  sub_100091510();
  sub_10004DB14();
}

void *sub_1000514E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = _swiftEmptyArrayStorage;
    sub_1000A2D14(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000A2D14((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_100045918(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_100051694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10000368C(&qword_1000ED440, &qword_1000B8B40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v47 - v11;
  v13 = OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_segmentedControl;
  v14 = *&v4[OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_segmentedControl];
  if (v14)
  {
    [v14 removeFromSuperview];
  }

  v15 = &v4[OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler];
  v16 = *&v4[OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler];
  v17 = *&v4[OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_handler + 8];
  *v15 = a3;
  *(v15 + 1) = a4;

  sub_10003DEF8(v16);
  sub_1000514E4(a1);
  v18 = objc_allocWithZone(UISegmentedControl);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = [v18 initWithItems:isa];

  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 clearColor];
  [v22 setBackgroundColor:v23];

  v24 = [v21 clearColor];
  [v22 _setBackgroundTintColor:v24];

  v25 = [v21 _carSystemQuaternaryColor];
  [v22 setSelectedSegmentTintColor:v25];

  [v22 setSelectedSegmentIndex:a2];
  [v22 addTarget:v4 action:"controlChangedWithSender:" forControlEvents:4096];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = *&v4[v13];
  *&v4[v13] = v22;
  v27 = v22;

  v28 = [v4 contentView];
  [v28 addSubview:v27];

  v29 = [v4 contentView];
  v30 = [v21 clearColor];
  [v29 setBackgroundColor:v30];

  static UIBackgroundConfiguration.clear()();
  v31 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
  UICollectionViewCell.backgroundConfiguration.setter();
  v32 = objc_opt_self();
  sub_10000368C(&unk_1000EC820, &qword_1000B5090);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000B6D30;
  v34 = [v27 leadingAnchor];
  v35 = [v4 contentView];
  v36 = [v35 leadingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36];
  *(v33 + 32) = v37;
  v38 = [v27 trailingAnchor];
  v39 = [v4 contentView];
  v40 = [v39 trailingAnchor];

  v41 = [v38 constraintEqualToAnchor:v40];
  *(v33 + 40) = v41;
  v42 = [v27 centerYAnchor];

  v43 = [v4 contentView];
  v44 = [v43 centerYAnchor];

  v45 = [v42 constraintEqualToAnchor:v44 constant:-0.5];
  *(v33 + 48) = v45;
  sub_100005A50(0, &qword_1000EBDD8, NSLayoutConstraint_ptr);
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:v46];
}

void sub_100051C4C(void *a1, uint64_t a2)
{
  v3 = v2;
  v44.receiver = v3;
  v44.super_class = type metadata accessor for RadioCategoryFilterCell();
  objc_msgSendSuper2(&v44, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v6 = [a1 nextFocusedView];
  if (v6)
  {
    v7 = v6;
    sub_100005A50(0, &qword_1000ED650, UIView_ptr);
    v8 = static NSObject.== infix(_:_:)();
    v9 = OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_segmentedControl;
    v10 = *&v3[OBJC_IVAR____TtC5Media23RadioCategoryFilterCell_segmentedControl];
    if (v8)
    {
      if (!v10)
      {
        goto LABEL_12;
      }

      v11 = objc_opt_self();
      v12 = v10;
      v13 = [v11 radio_carSystemFocusColor];
      [v12 setSelectedSegmentTintColor:v13];

      v14 = *&v3[v9];
      if (!v14)
      {
        goto LABEL_12;
      }

      sub_10000368C(&qword_1000ED658, &unk_1000B7350);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000B4760;
      *(inited + 32) = NSForegroundColorAttributeName;
      v16 = objc_opt_self();
      v17 = v14;
      v18 = NSForegroundColorAttributeName;
      v19 = [v16 radio_carSystemFocusLabelColor];
      v20 = sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
      *(inited + 64) = v20;
      *(inited + 40) = v19;
      sub_100045590(inited);
      swift_setDeallocating();
      sub_100007834(inited + 32, &qword_1000ECD38, &unk_1000B66E8);
      type metadata accessor for Key(0);
      sub_10005BF48(&qword_1000EAEB8, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v17 setTitleTextAttributes:isa forState:4];

      v22 = *&v3[v9];
      if (!v22)
      {
        goto LABEL_12;
      }

      sub_10000368C(&qword_1000ED658, &unk_1000B7350);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_1000B4760;
      *(v23 + 32) = v18;
      v24 = v23 + 32;
      v25 = objc_opt_self();
      v26 = v22;
      v27 = v18;
      v28 = [v25 radio_carSystemFocusLabelColor];
    }

    else
    {
      if (!v10)
      {
        goto LABEL_12;
      }

      v29 = objc_opt_self();
      v30 = v10;
      v31 = [v29 clearColor];
      [v30 setSelectedSegmentTintColor:v31];

      v32 = *&v3[v9];
      if (!v32)
      {
        goto LABEL_12;
      }

      sub_10000368C(&qword_1000ED658, &unk_1000B7350);
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_1000B4760;
      *(v33 + 32) = NSForegroundColorAttributeName;
      v34 = objc_opt_self();
      v35 = v32;
      v36 = NSForegroundColorAttributeName;
      v37 = [v34 radio_carSystemFocusColor];
      v20 = sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
      *(v33 + 64) = v20;
      *(v33 + 40) = v37;
      sub_100045590(v33);
      swift_setDeallocating();
      sub_100007834(v33 + 32, &qword_1000ECD38, &unk_1000B66E8);
      type metadata accessor for Key(0);
      sub_10005BF48(&qword_1000EAEB8, type metadata accessor for Key);
      v38 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v35 setTitleTextAttributes:v38 forState:4];

      v39 = *&v3[v9];
      if (!v39)
      {
        goto LABEL_12;
      }

      sub_10000368C(&qword_1000ED658, &unk_1000B7350);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_1000B4760;
      *(v23 + 32) = v36;
      v24 = v23 + 32;
      v40 = objc_opt_self();
      v26 = v39;
      v41 = v36;
      v28 = [v40 radio_carSystemFocusColor];
    }

    v42 = v28;
    *(v23 + 64) = v20;
    *(v23 + 40) = v42;
    sub_100045590(v23);
    swift_setDeallocating();
    sub_100007834(v24, &qword_1000ECD38, &unk_1000B66E8);
    v43 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v26 setTitleTextAttributes:v43 forState:1];

LABEL_12:
  }
}

uint64_t sub_10005250C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10000368C(&qword_1000ED440, &qword_1000B8B40);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v34 = &v31 - v3;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000368C(&qword_1000ED610, &qword_1000B7318);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  if (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isFocused.getter())
  {
    v16 = 1;
  }

  else
  {
    v16 = UICellConfigurationState.isSelected.getter();
  }

  v17 = __chkstk_darwin(v16);
  *(&v31 - 16) = v17 & 1;
  *(&v31 - 1) = v0;
  v18 = &selRef__carSystemFocusColor;
  if ((v17 & 1) == 0)
  {
    v18 = &selRef_clearColor;
  }

  v31 = v0;
  v32 = v18;
  if (v17)
  {
    v19 = &selRef__carSystemFocusLabelColor;
  }

  else
  {
    v19 = &selRef_secondaryLabelColor;
  }

  v33 = v19;
  sub_10000368C(&qword_1000ED618, &qword_1000B7320);
  sub_100005870(&qword_1000ED620, &qword_1000ED618, &qword_1000B7320);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.horizontal.getter();
  UIHostingConfiguration.margins(_:_:)();
  v20 = *(v9 + 8);
  v20(v13, v8);
  static Edge.Set.vertical.getter();
  v38[3] = v8;
  v38[4] = sub_100005870(&qword_1000ED628, &qword_1000ED610, &qword_1000B7318);
  sub_10005AD6C(v38);
  UIHostingConfiguration.margins(_:_:)();
  v20(v15, v8);
  UICollectionViewCell.contentConfiguration.setter();
  static UIBackgroundConfiguration.clear()();
  v21 = [objc_opt_self() *v32];
  UIBackgroundConfiguration.backgroundColor.setter();
  UIBackgroundConfiguration.cornerRadius.setter();
  v22 = v34;
  v23 = v35;
  v24 = v36;
  (*(v35 + 16))(v34, v7, v36);
  (*(v23 + 56))(v22, 0, 1, v24);
  UICollectionViewCell.backgroundConfiguration.setter();
  sub_10000368C(&qword_1000ED630, &qword_1000B7328);
  v25 = *(type metadata accessor for UICellAccessory() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000B4760;
  v29 = [objc_opt_self() *v33];
  sub_1000530C0(v29, v28 + v27);

  UICollectionViewListCell.accessories.setter();
  return (*(v23 + 8))(v7, v24);
}

double sub_1000529E0@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = static VerticalAlignment.center.getter();
  v26 = 0;
  sub_100052C20(a1, a2, &v15);
  v35 = v23;
  v36[0] = v24[0];
  *(v36 + 9) = *(v24 + 9);
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v37[7] = v22;
  v37[8] = v23;
  v38[0] = v24[0];
  *(v38 + 9) = *(v24 + 9);
  v37[4] = v19;
  v37[5] = v20;
  v37[6] = v21;
  v37[0] = v15;
  v37[1] = v16;
  v37[2] = v17;
  v37[3] = v18;
  sub_1000077CC(&v27, &v14, &qword_1000ED648, &unk_1000B7340);
  sub_100007834(v37, &qword_1000ED648, &unk_1000B7340);
  *(&v25[7] + 7) = v34;
  *(&v25[8] + 7) = v35;
  *(&v25[9] + 7) = v36[0];
  v25[10] = *(v36 + 9);
  *(&v25[3] + 7) = v30;
  *(&v25[4] + 7) = v31;
  *(&v25[5] + 7) = v32;
  *(&v25[6] + 7) = v33;
  *(v25 + 7) = v27;
  *(&v25[1] + 7) = v28;
  *(&v25[2] + 7) = v29;
  v7 = v25[6];
  *(a3 + 129) = v25[7];
  v8 = v25[9];
  *(a3 + 145) = v25[8];
  *(a3 + 161) = v8;
  *(a3 + 177) = v25[10];
  v9 = v25[2];
  *(a3 + 65) = v25[3];
  v10 = v25[5];
  *(a3 + 81) = v25[4];
  *(a3 + 97) = v10;
  *(a3 + 113) = v7;
  result = *v25;
  v12 = v25[1];
  *(a3 + 17) = v25[0];
  *(a3 + 33) = v12;
  v13 = v26;
  *a3 = v6;
  *(a3 + 8) = 0x4028000000000000;
  *(a3 + 16) = v13;
  *(a3 + 49) = v9;
  return result;
}

uint64_t sub_100052C20@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = Image.init(_internalSystemName:)();
  v53 = static Font.callout.getter();
  KeyPath = swift_getKeyPath();
  v6 = objc_opt_self();
  v7 = &selRef__carSystemFocusLabelColor;
  v8 = &selRef_secondaryLabelColor;
  if (a1)
  {
    v8 = &selRef__carSystemFocusLabelColor;
  }

  v50 = v8;
  if ((a1 & 1) == 0)
  {
    v7 = &selRef_labelColor;
  }

  v47 = v7;
  v9 = [v6 *v8];
  v49 = Color.init(uiColor:)();
  v55 = *(a2 + OBJC_IVAR____TtC5Media14RadioGenreCell_title);
  v57 = *(a2 + OBJC_IVAR____TtC5Media14RadioGenreCell_title + 8);
  sub_100020F58();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.callout.getter();
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  sub_100021B08(v10, v12, v14 & 1);

  v20 = [objc_opt_self() *v47];
  Color.init(uiColor:)();
  v21 = Text.foregroundStyle<A>(_:)();
  v46 = v22;
  v48 = v21;
  v43 = v23;
  v45 = v24;
  sub_100021B08(v15, v17, v19 & 1);

  v44 = swift_getKeyPath();
  v56 = *(a2 + OBJC_IVAR____TtC5Media14RadioGenreCell_subtitle);
  v58 = *(a2 + OBJC_IVAR____TtC5Media14RadioGenreCell_subtitle + 8);

  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  static Font.callout.getter();
  v30 = Text.font(_:)();
  v32 = v31;
  LOBYTE(v12) = v33;

  sub_100021B08(v25, v27, v29 & 1);

  v34 = [objc_opt_self() *v50];
  Color.init(uiColor:)();
  v39 = Text.foregroundStyle<A>(_:)();
  v42 = v35;
  LOBYTE(v17) = v36;
  v51 = v37;
  sub_100021B08(v30, v32, v12 & 1);

  v40 = swift_getKeyPath();
  *a3 = v54;
  *(a3 + 8) = KeyPath;
  *(a3 + 16) = v53;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = v49;
  *(a3 + 48) = v48;
  *(a3 + 56) = v46;
  *(a3 + 64) = v43 & 1;
  *(a3 + 72) = v45;
  *(a3 + 80) = v44;
  *(a3 + 88) = 2;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 1;
  *(a3 + 120) = v39;
  *(a3 + 128) = v42;
  *(a3 + 136) = v17 & 1;
  *(a3 + 144) = v51;
  *(a3 + 152) = v40;
  *(a3 + 160) = 1;
  *(a3 + 168) = 0;

  sub_100021B18(v48, v46, v43 & 1);

  sub_100021B18(v39, v42, v17 & 1);

  sub_100021B08(v39, v42, v17 & 1);

  sub_100021B08(v48, v46, v43 & 1);
}

uint64_t sub_1000530C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = sub_10000368C(&qword_1000ED638, &qword_1000B7330);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v26 - v4;
  v6 = type metadata accessor for UICellAccessory.Placement();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() systemImageNamed:v15];

  if (v16)
  {
    sub_100005A50(0, &qword_1000EC138, UIFont_ptr);
    v17 = static UIFont.preferredFont(forTextStyle:weight:)();
    v18 = [objc_opt_self() configurationWithFont:v17];

    v19 = [v16 imageWithConfiguration:v18];
  }

  else
  {
    v19 = 0;
  }

  [objc_allocWithZone(UIImageView) initWithImage:v19];

  v20 = &v10[*(sub_10000368C(&qword_1000ED640, &qword_1000B7338) + 48)];
  v21 = enum case for UICellAccessory.DisplayedState.always(_:);
  v22 = type metadata accessor for UICellAccessory.DisplayedState();
  (*(*(v22 - 8) + 104))(v10, v21, v22);
  *v20 = variable initialization expression of TerrestrialRadioStation._thumbnailImage;
  v20[1] = 0;
  (*(v7 + 104))(v10, enum case for UICellAccessory.Placement.trailing(_:), v6);
  v23 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  v24 = v28;
  UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
  static UICellAccessory.customView(configuration:)();
  return (*(v11 + 8))(v14, v27);
}

id sub_1000536B8(void *a1, uint64_t a2, uint64_t (*a3)(void), SEL *a4)
{
  v6.receiver = a1;
  v6.super_class = a3();
  return objc_msgSendSuper2(&v6, *a4);
}

void sub_10005371C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), const char **a5)
{
  v9.receiver = a1;
  v9.super_class = a4();
  v7 = *a5;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  [v8 setNeedsUpdateConfiguration];
}

void sub_1000537A8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  v10.receiver = a1;
  v10.super_class = a5();
  v7 = a3;
  v8 = a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, "didUpdateFocusInContext:withAnimationCoordinator:", v7, v8);
  [v9 setNeedsUpdateConfiguration];
}

uint64_t sub_10005383C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000368C(&qword_1000ED440, &qword_1000B8B40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v51 - v7;
  v9 = type metadata accessor for UIBackgroundConfiguration();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000368C(&qword_1000ED448, &qword_1000B7150);
  v15 = *(*(v14 - 8) + 64);
  result = __chkstk_darwin(v14);
  v19 = &v51 - v18;
  v20 = *(v2 + OBJC_IVAR____TtC5Media16RadioStationCell_config);
  if (v20)
  {
    v52 = v17;
    v53 = result;
    v58 = v9;
    v59 = v2;
    v60 = *(v2 + OBJC_IVAR____TtC5Media16RadioStationCell_config + 8);

    v21 = UICellConfigurationState.isHighlighted.getter();
    v57 = v10;
    v55 = v13;
    v54 = a1;
    v51 = ObjectType;
    if (v21)
    {
      v22 = &selRef_radio_carSystemFocusSecondaryColor;
      v23 = &selRef_radio_carSystemFocusLabelColor;
    }

    else
    {
      v22 = &selRef_radio_carSystemFocusSecondaryColor;
      v23 = &selRef_radio_carSystemFocusLabelColor;
      if ((UICellConfigurationState.isSelected.getter() & 1) == 0 && (UICellConfigurationState.isFocused.getter() & 1) == 0)
      {
        v23 = &selRef_labelColor;
        v22 = &selRef_secondaryLabelColor;
      }
    }

    v56 = v8;
    v24 = objc_opt_self();
    v62 = [v24 *v23];
    v61 = [v24 *v22];
    v25 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem;
    swift_beginAccess();
    v26 = *(v20 + v25);
    v27 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
    swift_beginAccess();
    v28 = *(v20 + v27);

    v29 = v26;
    v30 = CAFMediaItem.primaryDisplayName(in:)();
    v32 = v31;

    v33 = *(v20 + v25);

    v34 = v33;
    v35 = CAFMediaItem.secondaryDisplayName.getter();
    v37 = v36;

    v64 = v35;
    v65 = v37;
    if (*(v20 + v27) == 3)
    {
      v38 = 56.0;
    }

    else
    {
      v38 = 36.0;
    }

    if (v30 == v35 && v32 == v37 || (v39 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v39 & 1) != 0))
    {

      v64 = 0;
      v65 = 0xE000000000000000;
    }

    __chkstk_darwin(v39);
    *(&v51 - 12) = v20;
    v40 = BYTE1(v60);
    *(&v51 - 88) = v60 & 1;
    *(&v51 - 87) = v40 & 1;
    *(&v51 - 10) = v38;
    v41 = v59;
    *(&v51 - 9) = v54;
    *(&v51 - 8) = v41;
    *(&v51 - 7) = v62;
    *(&v51 - 6) = v30;
    *(&v51 - 5) = v32;
    *(&v51 - 4) = &v64;
    v42 = v51;
    *(&v51 - 3) = v61;
    *(&v51 - 2) = v42;
    sub_10000368C(&qword_1000ED450, &qword_1000B7158);
    sub_100005870(&qword_1000ED458, &qword_1000ED450, &qword_1000B7158);
    UIHostingConfiguration<>.init(content:)();

    static Edge.Set.all.getter();
    v43 = v53;
    v63[3] = v53;
    v63[4] = sub_100005870(&qword_1000ED460, &qword_1000ED448, &qword_1000B7150);
    sub_10005AD6C(v63);
    UIHostingConfiguration.margins(_:_:)();
    (*(v52 + 8))(v19, v43);
    UICollectionViewCell.contentConfiguration.setter();
    v44 = v55;
    static UIBackgroundConfiguration.clear()();
    if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
    {
      v45 = objc_opt_self();
      v46 = &selRef_radio_carSystemFocusColor;
    }

    else
    {
      v45 = objc_opt_self();
      v46 = &selRef_clearColor;
      if (v60)
      {
        v46 = &selRef__carSystemQuaternaryColor;
      }
    }

    v47 = v57;
    v48 = v56;
    v49 = [v45 *v46];
    UIBackgroundConfiguration.backgroundColor.setter();
    UIBackgroundConfiguration.cornerRadius.setter();
    v50 = v58;
    (*(v47 + 16))(v48, v44, v58);
    (*(v47 + 56))(v48, 0, 1, v50);
    UICollectionViewCell.backgroundConfiguration.setter();

    (*(v47 + 8))(v44, v50);
  }

  return result;
}

uint64_t sub_100053E74@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>, void *a10)
{
  *a9 = static Alignment.center.getter();
  a9[1] = v18;
  v19 = sub_10000368C(&qword_1000ED468, &qword_1000B7160);
  return sub_100053F40(a1, a2 & 0x101, a3, a4, a5, a6, a7, a8, a9 + *(v19 + 44), a10);
}

uint64_t sub_100053F40@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  *a9 = static VerticalAlignment.center.getter();
  *(a9 + 8) = 0x4020000000000000;
  *(a9 + 16) = 0;
  v18 = sub_10000368C(&qword_1000ED470, &qword_1000B7168);
  return sub_100054014(a1, a2 & 0x101, a3, a4, a5, a6, a7, a8, a9 + *(v18 + 44), a10);
}

uint64_t sub_100054014@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, id a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v158 = a8;
  v155 = a6;
  v156 = a7;
  v141 = a9;
  v15 = type metadata accessor for PlainButtonStyle();
  v139 = *(v15 - 8);
  v140 = v15;
  v16 = *(v139 + 64);
  __chkstk_darwin(v15);
  v138 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000368C(&qword_1000ED478, &qword_1000B7170);
  v136 = *(v18 - 8);
  v137 = v18;
  v19 = *(v136 + 64);
  __chkstk_darwin(v18);
  v135 = &v127 - v20;
  v134 = sub_10000368C(&qword_1000ED480, &qword_1000B7178);
  v21 = *(*(v134 - 8) + 64);
  v22 = __chkstk_darwin(v134);
  v162 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v161 = &v127 - v24;
  v25 = sub_10000368C(&qword_1000ED488, &qword_1000B7180);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v163 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = (&v127 - v29);
  *v30 = static Alignment.center.getter();
  v30[1] = v31;
  v32 = *(sub_10000368C(&qword_1000ED490, &qword_1000B7188) + 44);
  v160 = v30;
  v142 = a2;
  v157 = a3;
  sub_1000551A8(a1, a2 & 0x101, a3, v30 + v32);
  v33 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
  swift_beginAccess();
  v34 = *(a1 + v33);
  v35 = [a4 traitCollection];
  v36 = [v35 preferredContentSizeCategory];

  sub_10005B48C(v34);
  v37 = *(a1 + v33);
  v144 = a1;
  v145 = a5;
  if ((v37 == 1 || v37 == 2 || v37 == 8 || v37 == 3) && (v38 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_frequency, swift_beginAccess(), *(a1 + v38)))
  {
    v159 = v33;
    v127 = a4;
    *&v189 = TerrestrialRadioStation.formattedFrequency.getter();
    *(&v189 + 1) = v39;
    sub_100020F58();
    v40 = Text.init<A>(_:)();
    v42 = v41;
    v44 = v43;
    static Font.callout.getter();
    Font.monospacedDigit()();

    v45 = Text.font(_:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;

    sub_100021B08(v40, v42, v44 & 1);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    LOBYTE(v207[0]) = v49 & 1;
    a5 = v145;
    v52 = v145;
    v53 = Color.init(uiColor:)();
    *&v189 = v45;
    *(&v189 + 1) = v47;
    LOBYTE(v190[0]) = v49 & 1;
    *(&v190[0] + 1) = v51;
    v190[5] = v176[4];
    v190[6] = v176[5];
    v190[7] = v176[6];
    v190[1] = v176[0];
    v190[2] = v176[1];
    v190[4] = v176[3];
    v190[3] = v176[2];
    *&v190[8] = v53;
    nullsub_1(&v189);
    v218 = v190[5];
    v219 = v190[6];
    v220 = v190[7];
    v221 = *&v190[8];
    v214 = v190[1];
    v215 = v190[2];
    v216 = v190[3];
    v217 = v190[4];
    v212 = v189;
    v213 = v190[0];
    a4 = v127;
    a1 = v144;
    v33 = v159;
  }

  else
  {
    sub_10005B670(&v212);
  }

  v54 = v142;
  v143 = v142 & 0x100;
  v159 = static HorizontalAlignment.leading.getter();
  LOBYTE(v191[0]) = 0;
  sub_10005666C(v155, v156, a5, v158, &v189);
  v204 = v190[9];
  v205 = v190[10];
  v200 = v190[5];
  v201 = v190[6];
  v203 = v190[8];
  v202 = v190[7];
  v196 = v190[1];
  v197 = v190[2];
  v199 = v190[4];
  v198 = v190[3];
  v195 = v190[0];
  v194 = v189;
  v207[10] = v190[9];
  v207[11] = v190[10];
  v207[6] = v190[5];
  v207[7] = v190[6];
  v207[9] = v190[8];
  v207[8] = v190[7];
  v207[2] = v190[1];
  v207[3] = v190[2];
  v207[5] = v190[4];
  v207[4] = v190[3];
  v206 = *&v190[11];
  v208 = *&v190[11];
  v207[1] = v190[0];
  v207[0] = v189;
  sub_1000077CC(&v194, v176, &qword_1000ED498, &qword_1000B7190);
  sub_100007834(v207, &qword_1000ED498, &qword_1000B7190);
  *(&v193[9] + 7) = v203;
  *(&v193[10] + 7) = v204;
  *(&v193[11] + 7) = v205;
  *(&v193[5] + 7) = v199;
  *(&v193[6] + 7) = v200;
  *(&v193[7] + 7) = v201;
  *(&v193[8] + 7) = v202;
  *(&v193[1] + 7) = v195;
  *(&v193[2] + 7) = v196;
  *(&v193[3] + 7) = v197;
  *(&v193[4] + 7) = v198;
  *(&v193[12] + 7) = v206;
  *(v193 + 7) = v194;
  LODWORD(v158) = LOBYTE(v191[0]);
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v55 = (a1 + OBJC_IVAR____TtC5Media23TerrestrialRadioStation_multicast);
  swift_beginAccess();
  v56 = 0;
  if (v55[1])
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    if (*v55)
    {
      if (v143 && (v54 & 1) != 0)
      {
        sub_100005A50(0, &unk_1000ED140, UIColor_ptr);
        static UIColor.cafui_HDOrangeColor.getter();
      }

      else
      {
        if ((UICellConfigurationState.isHighlighted.getter() & 1) == 0 && (UICellConfigurationState.isSelected.getter() & 1) == 0 && (UICellConfigurationState.isFocused.getter() & 1) == 0)
        {
          v66 = static Color.secondary.getter();
          goto LABEL_19;
        }

        v65 = [objc_opt_self() radio_carSystemFocusLabelColor];
      }

      v66 = Color.init(uiColor:)();
LABEL_19:
      v67 = v66;
      v56 = static VerticalAlignment.center.getter();
      LOBYTE(v176[0]) = 0;
      sub_100056AEC(v54 & 0x101, v67, &v189);

      v59 = *(&v189 + 1);
      v58 = v189;
      v61 = *(&v190[0] + 1);
      v60 = *&v190[0];
      v62 = *(&v190[1] + 1);
      LOBYTE(v189) = v190[1];
      v64 = LOBYTE(v176[0]);
      v63 = LOBYTE(v190[1]);
      v57 = 0x4000000000000000;
    }
  }

  v150 = v64;
  v151 = v63;
  v152 = v57;
  v153 = v62;
  v154 = v61;
  v155 = v60;
  v156 = v59;
  v157 = v58;
  if (*(a1 + v33) == 8 && (v68 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_mediaItem, swift_beginAccess(), v69 = *(a1 + v68), v70 = sub_100083044(), v72 = v71, v69, v72))
  {
    v149 = a10;
    *&v189 = v70;
    *(&v189 + 1) = v72;
    sub_100020F58();
    v73 = Text.init<A>(_:)();
    v75 = v74;
    v77 = v76;
    v127 = a4;
    static Font.callout.getter();
    v78 = Text.font(_:)();
    v80 = v79;
    v82 = v81;
    v148 = v83;

    sub_100021B08(v73, v75, v77 & 1);
    a4 = v127;

    v84 = v149;
    *&v189 = Color.init(uiColor:)();
    v85 = Text.foregroundStyle<A>(_:)();
    v132 = v86;
    v133 = v85;
    LOBYTE(v75) = v87;
    v131 = v88;
    sub_100021B08(v78, v80, v82 & 1);

    static Alignment.trailing.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v189) = v75 & 1;
    v129 = v223;
    v130 = v222;
    v128 = v225;
    v148 = v226;
    v149 = v224;
    v146 = v75 & 1;
    v147 = v227;
  }

  else
  {
    v132 = 0;
    v133 = 0;
    v130 = 0;
    v131 = 0;
    v128 = 0;
    v129 = 0;
    v148 = 0;
    v149 = 0;
    v146 = 0;
    v147 = 0;
  }

  v89 = swift_allocObject();
  *(v89 + 16) = a4;
  __chkstk_darwin(v89);
  v90 = a4;
  sub_10000368C(&qword_1000ED4A0, &qword_1000B7198);
  sub_10005BC08(&qword_1000ED4A8, &qword_1000ED4A0, &qword_1000B7198, sub_10005B6BC);
  v91 = v135;
  Button.init(action:label:)();
  v92 = v138;
  PlainButtonStyle.init()();
  sub_100005870(&qword_1000ED4D0, &qword_1000ED478, &qword_1000B7170);
  sub_10005BF48(&qword_1000EBAD8, &type metadata accessor for PlainButtonStyle);
  v93 = v161;
  v94 = v137;
  v95 = v140;
  View.buttonStyle<A>(_:)();
  (*(v139 + 8))(v92, v95);
  (*(v136 + 8))(v91, v94);
  *(v93 + *(v134 + 36)) = 0;
  v96 = v163;
  sub_1000077CC(v160, v163, &qword_1000ED488, &qword_1000B7180);
  v170 = v218;
  v171 = v219;
  v172 = v220;
  v173 = v221;
  v166 = v214;
  v167 = v215;
  v168 = v216;
  v169 = v217;
  v164 = v212;
  v165 = v213;
  sub_1000077CC(v93, v162, &qword_1000ED480, &qword_1000B7178);
  v97 = v96;
  v98 = v141;
  sub_1000077CC(v97, v141, &qword_1000ED488, &qword_1000B7180);
  v99 = sub_10000368C(&qword_1000ED4D8, &qword_1000B71B0);
  v100 = v99[12];
  v102 = v170;
  v101 = v171;
  v174[6] = v170;
  v174[7] = v171;
  v103 = v172;
  v174[8] = v172;
  v104 = v169;
  v174[4] = v168;
  v174[5] = v169;
  v106 = v166;
  v105 = v167;
  v174[2] = v166;
  v174[3] = v167;
  v107 = v164;
  v108 = v165;
  v174[0] = v164;
  v174[1] = v165;
  v109 = v98 + v100;
  *(v109 + 64) = v168;
  *(v109 + 80) = v104;
  *(v109 + 32) = v106;
  *(v109 + 48) = v105;
  *(v109 + 112) = v101;
  *(v109 + 128) = v103;
  v175 = v173;
  *(v109 + 144) = v173;
  *(v109 + 96) = v102;
  *v109 = v107;
  *(v109 + 16) = v108;
  v110 = v99[16];
  *(&v176[10] + 1) = v193[9];
  *(&v176[11] + 1) = v193[10];
  *(&v176[12] + 1) = v193[11];
  *(&v176[6] + 1) = v193[5];
  *(&v176[7] + 1) = v193[6];
  *(&v176[8] + 1) = v193[7];
  *(&v176[9] + 1) = v193[8];
  *(&v176[2] + 1) = v193[1];
  *(&v176[3] + 1) = v193[2];
  *&v176[0] = v159;
  *(&v176[0] + 1) = 0x3FF0000000000000;
  LOBYTE(v176[1]) = v158;
  *(&v176[4] + 1) = v193[3];
  *(&v176[5] + 1) = v193[4];
  *(&v176[1] + 1) = v193[0];
  v176[13] = *(&v193[11] + 15);
  v176[14] = v209;
  v176[15] = v210;
  v176[16] = v211;
  memcpy((v98 + v110), v176, 0x110uLL);
  v111 = v98 + v99[20];
  *v111 = 0;
  *(v111 + 8) = 1;
  v112 = v98 + v99[24];
  *&v177 = v56;
  *(&v177 + 1) = v152;
  *&v178 = v150;
  *(&v178 + 1) = v157;
  *&v179 = v156;
  *(&v179 + 1) = v155;
  *&v180 = v154;
  *(&v180 + 1) = v151;
  v145 = v56;
  v113 = v153;
  v181 = v153;
  v114 = v180;
  *(v112 + 32) = v179;
  *(v112 + 48) = v114;
  *(v112 + 64) = v113;
  v115 = v178;
  *v112 = v177;
  *(v112 + 16) = v115;
  v116 = (v98 + v99[28]);
  v118 = v132;
  v117 = v133;
  *&v182 = v133;
  *(&v182 + 1) = v132;
  *&v183 = v146;
  v120 = v130;
  v119 = v131;
  *(&v183 + 1) = v131;
  *&v184 = v130;
  v121 = v128;
  v122 = v129;
  *(&v184 + 1) = v129;
  *&v185 = v149;
  *(&v185 + 1) = v128;
  *&v186 = v148;
  *(&v186 + 1) = v147;
  v123 = v183;
  *v116 = v182;
  v116[1] = v123;
  v124 = v185;
  v116[2] = v184;
  v116[3] = v124;
  v116[4] = v186;
  v125 = v162;
  sub_1000077CC(v162, v98 + v99[32], &qword_1000ED480, &qword_1000B7178);
  sub_1000077CC(v174, &v189, &qword_1000ED4E0, &qword_1000B71B8);
  sub_1000077CC(v176, &v189, &qword_1000ED4E8, &qword_1000B71C0);
  sub_1000077CC(&v177, &v189, &qword_1000ED4F0, &qword_1000B71C8);
  sub_1000077CC(&v182, &v189, &qword_1000ED4F8, &qword_1000B71D0);
  sub_100007834(v161, &qword_1000ED480, &qword_1000B7178);
  sub_100007834(v160, &qword_1000ED488, &qword_1000B7180);
  sub_100007834(v125, &qword_1000ED480, &qword_1000B7178);
  v187[0] = v117;
  v187[1] = v118;
  v187[2] = v146;
  v187[3] = v119;
  v187[4] = v120;
  v187[5] = v122;
  v187[6] = v149;
  v187[7] = v121;
  v187[8] = v148;
  v187[9] = v147;
  sub_100007834(v187, &qword_1000ED4F8, &qword_1000B71D0);
  v188[0] = v145;
  v188[1] = v152;
  v188[2] = v150;
  v188[3] = v157;
  v188[4] = v156;
  v188[5] = v155;
  v188[6] = v154;
  v188[7] = v151;
  v188[8] = v153;
  sub_100007834(v188, &qword_1000ED4F0, &qword_1000B71C8);
  *(&v190[9] + 1) = v193[9];
  *(&v190[10] + 1) = v193[10];
  *(&v190[11] + 1) = v193[11];
  *(&v190[5] + 1) = v193[5];
  *(&v190[6] + 1) = v193[6];
  *(&v190[7] + 1) = v193[7];
  *(&v190[8] + 1) = v193[8];
  *(&v190[1] + 1) = v193[1];
  *(&v190[2] + 1) = v193[2];
  *&v189 = v159;
  *(&v189 + 1) = 0x3FF0000000000000;
  LOBYTE(v190[0]) = v158;
  *(&v190[3] + 1) = v193[3];
  *(&v190[4] + 1) = v193[4];
  *(v190 + 1) = v193[0];
  v190[12] = *(&v193[11] + 15);
  v190[13] = v209;
  v190[14] = v210;
  v190[15] = v211;
  sub_100007834(&v189, &qword_1000ED4E8, &qword_1000B71C0);
  v191[6] = v170;
  v191[7] = v171;
  v191[8] = v172;
  v192 = v173;
  v191[2] = v166;
  v191[3] = v167;
  v191[4] = v168;
  v191[5] = v169;
  v191[0] = v164;
  v191[1] = v165;
  sub_100007834(v191, &qword_1000ED4E0, &qword_1000B71B8);
  return sub_100007834(v163, &qword_1000ED488, &qword_1000B7180);
}

uint64_t sub_1000551A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v169 = a3;
  v164 = a2;
  v174 = a4;
  v157 = type metadata accessor for WaveformColorPalette();
  v156 = *(v157 - 8);
  v5 = *(v156 + 64);
  __chkstk_darwin(v157);
  v155 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for WaveformState();
  v145 = *(v146 - 8);
  v7 = *(v145 + 64);
  __chkstk_darwin(v146);
  v144 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for WaveformView();
  v151 = *(v153 - 8);
  v9 = *(v151 + 64);
  __chkstk_darwin(v153);
  v149 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_10000368C(&qword_1000ED510, &qword_1000B7230);
  v152 = *(v154 - 8);
  v11 = *(v152 + 64);
  __chkstk_darwin(v154);
  v150 = &v136 - v12;
  v172 = sub_10000368C(&qword_1000ED3C0, &qword_1000B70A0);
  v170 = *(v172 - 8);
  v13 = *(v170 + 64);
  v14 = __chkstk_darwin(v172);
  v148 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v147 = &v136 - v16;
  v17 = sub_10000368C(&qword_1000ED3C8, &qword_1000B70A8);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v173 = &v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v171 = &v136 - v21;
  v165 = sub_10000368C(&qword_1000ED518, &qword_1000B7238);
  v22 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v166 = &v136 - v23;
  v24 = type metadata accessor for Image.ResizingMode();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_10000368C(&qword_1000ED520, &qword_1000B7240);
  v29 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158);
  v31 = &v136 - v30;
  v160 = sub_10000368C(&qword_1000ED528, &qword_1000B7248);
  v32 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  v34 = &v136 - v33;
  v35 = sub_10000368C(&qword_1000ED530, &qword_1000B7250);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35 - 8);
  v159 = &v136 - v37;
  v163 = sub_10000368C(&qword_1000ED538, &qword_1000B7258);
  v38 = *(*(v163 - 8) + 64);
  v39 = __chkstk_darwin(v163);
  v41 = &v136 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v161 = &v136 - v42;
  v136 = sub_10000368C(&qword_1000ED540, &qword_1000B7260);
  v43 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v45 = &v136 - v44;
  v138 = sub_10000368C(&qword_1000ED548, &qword_1000B7268);
  v46 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v137 = &v136 - v47;
  v140 = sub_10000368C(&qword_1000ED550, &qword_1000B7270);
  v48 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v139 = &v136 - v49;
  v50 = sub_10000368C(&qword_1000ED558, &qword_1000B7278);
  v51 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50 - 8);
  v141 = &v136 - v52;
  v162 = sub_10000368C(&qword_1000ED560, &qword_1000B7280);
  v53 = *(*(v162 - 8) + 64);
  v54 = __chkstk_darwin(v162);
  v142 = &v136 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v143 = &v136 - v56;
  v57 = sub_10000368C(&qword_1000ED568, &qword_1000B7288);
  v58 = *(*(v57 - 8) + 64);
  v59 = __chkstk_darwin(v57 - 8);
  v168 = &v136 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v167 = &v136 - v61;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v62 = v176;
  if (!v176)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v62 = v176;
    if (!v176)
    {
      v101 = Image.init(systemName:)();
      v102 = static Font.title2.getter();
      KeyPath = swift_getKeyPath();
      v104 = static HierarchicalShapeStyle.quaternary.getter();
      v105 = OBJC_IVAR____TtC5Media23TerrestrialRadioStation_sourceType;
      swift_beginAccess();
      if (*(a1 + v105) == 3)
      {
        v106 = 0x4032000000000000;
      }

      else
      {
        v106 = 0x4022000000000000;
      }

      v107 = static Edge.Set.all.getter();
      v175 = 0;
      v108 = &v45[*(v136 + 36)];
      v109 = *(type metadata accessor for RoundedRectangle() + 20);
      v110 = enum case for RoundedCornerStyle.continuous(_:);
      v111 = type metadata accessor for RoundedCornerStyle();
      (*(*(v111 - 8) + 104))(&v108[v109], v110, v111);
      __asm { FMOV            V0.2D, #6.0 }

      *v108 = _Q0;
      *&v108[*(sub_10000368C(&qword_1000ED570, &qword_1000B72D8) + 56)] = 256;
      *v45 = v101;
      *(v45 + 1) = KeyPath;
      *(v45 + 2) = v102;
      *(v45 + 6) = v104;
      v45[32] = v107;
      *(v45 + 33) = v183;
      *(v45 + 9) = *(&v183 + 3);
      *(v45 + 5) = 0x4018000000000000;
      *(v45 + 6) = v106;
      *(v45 + 7) = 0x4018000000000000;
      *(v45 + 8) = v106;
      v45[72] = 0;
      v113 = UICellConfigurationState.traitCollection.getter();
      v114 = [v113 userInterfaceStyle];

      v115 = objc_opt_self();
      v116 = dbl_1000B6D40[v114 == 2];
      v117 = &selRef_whiteColor;
      if (v114 != 2)
      {
        v117 = &selRef_blackColor;
      }

      v118 = [v115 *v117];
      v119 = [v118 colorWithAlphaComponent:v116];

      v120 = Color.init(uiColor:)();
      v121 = v137;
      sub_10001721C(v45, v137, &qword_1000ED540, &qword_1000B7260);
      *(v121 + *(v138 + 36)) = v120;
      v74 = v164;
      if (v164)
      {
        v122 = 0.2;
      }

      else
      {
        v122 = 1.0;
      }

      v123 = v139;
      sub_10001721C(v121, v139, &qword_1000ED548, &qword_1000B7268);
      *(v123 + *(v140 + 36)) = v122;
      sub_10005B810();
      v124 = v141;
      View.accessibilityIdentifier(_:)();
      sub_100007834(v123, &qword_1000ED550, &qword_1000B7270);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v125 = v142;
      sub_10001721C(v124, v142, &qword_1000ED558, &qword_1000B7278);
      v126 = (v125 + *(v162 + 36));
      v127 = v181;
      v126[4] = v180;
      v126[5] = v127;
      v126[6] = v182;
      v128 = v177;
      *v126 = v176;
      v126[1] = v128;
      v129 = v179;
      v126[2] = v178;
      v126[3] = v129;
      v130 = v143;
      sub_10001721C(v125, v143, &qword_1000ED560, &qword_1000B7280);
      sub_1000077CC(v130, v166, &qword_1000ED560, &qword_1000B7280);
      swift_storeEnumTagMultiPayload();
      sub_10005BB50();
      sub_10005BE84();
      v82 = v167;
      _ConditionalContent<>.init(storage:)();
      sub_100007834(v130, &qword_1000ED560, &qword_1000B7280);
      v83 = v172;
      v84 = v171;
      if (v74)
      {
        goto LABEL_7;
      }

LABEL_25:
      v100 = 1;
      goto LABEL_26;
    }
  }

  v63 = v62;
  Image.init(uiImage:)();
  (*(v25 + 104))(v28, enum case for Image.ResizingMode.stretch(_:), v24);
  v64 = Image.resizable(capInsets:resizingMode:)();

  (*(v25 + 8))(v28, v24);
  v65 = &v31[*(v158 + 36)];
  v66 = *(type metadata accessor for RoundedRectangle() + 20);
  v67 = enum case for RoundedCornerStyle.continuous(_:);
  v68 = type metadata accessor for RoundedCornerStyle();
  (*(*(v68 - 8) + 104))(&v65[v66], v67, v68);
  __asm { FMOV            V0.2D, #6.0 }

  *v65 = _Q0;
  *&v65[*(sub_10000368C(&qword_1000EBB38, &qword_1000B4B80) + 36)] = 256;
  *v31 = v64;
  *(v31 + 1) = 0;
  *(v31 + 8) = 1;
  v74 = v164;
  if (v164)
  {
    v75 = 0.2;
  }

  else
  {
    v75 = 1.0;
  }

  sub_10001721C(v31, v34, &qword_1000ED520, &qword_1000B7240);
  *&v34[*(v160 + 36)] = v75;
  sub_10005BCBC();
  v76 = v159;
  View.accessibilityIdentifier(_:)();
  sub_100007834(v34, &qword_1000ED528, &qword_1000B7248);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001721C(v76, v41, &qword_1000ED530, &qword_1000B7250);
  v77 = &v41[*(v163 + 36)];
  v78 = v181;
  *(v77 + 4) = v180;
  *(v77 + 5) = v78;
  *(v77 + 6) = v182;
  v79 = v177;
  *v77 = v176;
  *(v77 + 1) = v79;
  v80 = v179;
  *(v77 + 2) = v178;
  *(v77 + 3) = v80;
  v81 = v161;
  sub_10001721C(v41, v161, &qword_1000ED538, &qword_1000B7258);
  sub_1000077CC(v81, v166, &qword_1000ED538, &qword_1000B7258);
  swift_storeEnumTagMultiPayload();
  sub_10005BB50();
  sub_10005BE84();
  v82 = v167;
  _ConditionalContent<>.init(storage:)();

  sub_100007834(v81, &qword_1000ED538, &qword_1000B7258);
  v83 = v172;
  v84 = v171;
  if ((v74 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_7:
  if (UICellConfigurationState.isHighlighted.getter())
  {
    v85 = &selRef_radio_carSystemFocusLabelColor;
  }

  else
  {
    v85 = &selRef_radio_carSystemFocusLabelColor;
    if ((UICellConfigurationState.isSelected.getter() & 1) == 0 && (UICellConfigurationState.isFocused.getter() & 1) == 0)
    {
      v85 = &selRef_radio_carSystemFocusColor;
    }
  }

  v86 = [objc_opt_self() *v85];
  Color.init(uiColor:)();
  if ((v74 & 0x100) != 0)
  {
    v89 = enum case for WaveformState.SamplingMode.unavailable(_:);
    v90 = type metadata accessor for WaveformState.SamplingMode();
    v88 = v144;
    (*(*(v90 - 8) + 104))(v144, v89, v90);
    v87 = &enum case for WaveformState.playing(_:);
  }

  else
  {
    v87 = &enum case for WaveformState.paused(_:);
    v88 = v144;
  }

  (*(v145 + 104))(v88, *v87, v146);
  v91 = v149;
  WaveformView.init(state:)();
  swift_retain_n();
  v92 = v155;
  WaveformColorPalette.init(playingColor:pausedColor:bufferingColorMin:bufferingColorMax:)();
  sub_10005BF48(&qword_1000ED438, &type metadata accessor for WaveformView);
  v93 = v150;
  v94 = v153;
  View.waveformColorPalette(_:)();
  (*(v156 + 8))(v92, v157);
  (*(v151 + 8))(v91, v94);
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();

  v95 = v148;
  (*(v152 + 32))(v148, v93, v154);
  v96 = &v95[*(v83 + 36)];
  v97 = v184;
  *v96 = v183;
  *(v96 + 1) = v97;
  *(v96 + 2) = v185;
  v98 = v95;
  v99 = v147;
  sub_10001721C(v98, v147, &qword_1000ED3C0, &qword_1000B70A0);
  sub_10001721C(v99, v84, &qword_1000ED3C0, &qword_1000B70A0);
  v100 = 0;
LABEL_26:
  (*(v170 + 56))(v84, v100, 1, v83);
  v131 = v168;
  sub_1000077CC(v82, v168, &qword_1000ED568, &qword_1000B7288);
  v132 = v173;
  sub_1000077CC(v84, v173, &qword_1000ED3C8, &qword_1000B70A8);
  v133 = v174;
  sub_1000077CC(v131, v174, &qword_1000ED568, &qword_1000B7288);
  v134 = sub_10000368C(&qword_1000ED608, &qword_1000B7310);
  sub_1000077CC(v132, v133 + *(v134 + 48), &qword_1000ED3C8, &qword_1000B70A8);
  sub_100007834(v84, &qword_1000ED3C8, &qword_1000B70A8);
  sub_100007834(v82, &qword_1000ED568, &qword_1000B7288);
  sub_100007834(v132, &qword_1000ED3C8, &qword_1000B70A8);
  return sub_100007834(v131, &qword_1000ED568, &qword_1000B7288);
}

uint64_t sub_10005666C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v94 = a1;
  v95 = a2;
  sub_100020F58();

  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  static Font.callout.getter();
  v13 = Text.font(_:)();
  v64 = v14;
  v65 = v13;
  v16 = v15;
  v66 = v17;

  sub_100021B08(v8, v10, v12 & 1);

  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = v16 & 1;
  LOBYTE(v94) = v16 & 1;
  v19 = a3;
  v63 = Color.init(uiColor:)();
  v21 = *a4;
  v20 = a4[1];
  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = *a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v94 = *a4;
    v95 = v20;

    v23 = Text.init<A>(_:)();
    v25 = v24;
    v27 = v26;
    static Font.caption.getter();
    v28 = Text.font(_:)();
    v61 = v29;
    v62 = v28;
    v31 = v30;
    v60 = v32;

    sub_100021B08(v23, v25, v27 & 1);

    KeyPath = swift_getKeyPath();
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v94) = v31 & 1;
    LOBYTE(v87) = 0;
    v33 = v31 & 1;
    if (UICellConfigurationState.isHighlighted.getter())
    {
      v34 = &selRef_radio_carSystemFocusLabelColor;
    }

    else
    {
      v34 = &selRef_radio_carSystemFocusLabelColor;
      if ((UICellConfigurationState.isSelected.getter() & 1) == 0 && (UICellConfigurationState.isFocused.getter() & 1) == 0)
      {
        v34 = &selRef_secondaryLabelColor;
      }
    }

    v47 = [objc_opt_self() *v34];
    v46 = Color.init(uiColor:)();
    v39 = 1;
    v36 = v61;
    v35 = v62;
    v38 = KeyPath;
    v37 = v60;
    v41 = v110;
    v40 = v109;
    v42 = v111;
    v43 = v112;
    v44 = v113;
    v45 = v114;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v33 = 0;
  }

  *&v81 = v65;
  *(&v81 + 1) = v64;
  LOBYTE(v82) = v18;
  *(&v82 + 1) = *v108;
  DWORD1(v82) = *&v108[3];
  v83 = v115;
  v84 = v116;
  v85 = v117;
  *(&v82 + 1) = v66;
  v86 = v63;
  *&v87 = v35;
  *v80 = v63;
  v78 = v116;
  v79 = v117;
  v76 = v82;
  v77 = v115;
  v75 = v81;
  *(&v87 + 1) = v36;
  *&v88 = v33;
  *(&v88 + 1) = v37;
  *&v89 = v38;
  *(&v89 + 1) = v39;
  *&v90 = 0;
  *(&v90 + 1) = v40;
  *&v91 = v41;
  *(&v91 + 1) = v42;
  *&v92 = v43;
  *(&v92 + 1) = v44;
  *&v93 = v45;
  *(&v93 + 1) = v46;
  *&v80[40] = v89;
  *&v80[24] = v88;
  *&v80[8] = v87;
  *&v80[104] = v93;
  *&v80[88] = v92;
  *&v80[72] = v91;
  *&v80[56] = v90;
  v48 = v81;
  v49 = v82;
  v50 = v116;
  *(a5 + 32) = v115;
  *(a5 + 48) = v50;
  *a5 = v48;
  *(a5 + 16) = v49;
  v51 = v79;
  v52 = *v80;
  v53 = *&v80[32];
  *(a5 + 96) = *&v80[16];
  *(a5 + 112) = v53;
  *(a5 + 64) = v51;
  *(a5 + 80) = v52;
  v54 = *&v80[48];
  v55 = *&v80[64];
  v56 = *&v80[80];
  v57 = *&v80[96];
  *(a5 + 192) = *&v80[112];
  *(a5 + 160) = v56;
  *(a5 + 176) = v57;
  *(a5 + 128) = v54;
  *(a5 + 144) = v55;
  v94 = v35;
  v95 = v36;
  v96 = v33;
  v97 = v37;
  v98 = v38;
  v99 = v39;
  v100 = 0;
  v101 = v40;
  v102 = v41;
  v103 = v42;
  v104 = v43;
  v105 = v44;
  v106 = v45;
  v107 = v46;
  sub_1000077CC(&v81, v67, &qword_1000ED500, &qword_1000B7220);
  sub_1000077CC(&v87, v67, &qword_1000ED508, &qword_1000B7228);
  sub_100007834(&v94, &qword_1000ED508, &qword_1000B7228);
  v67[0] = v65;
  v67[1] = v64;
  v68 = v18;
  *v69 = *v108;
  *&v69[3] = *&v108[3];
  v70 = v66;
  v71 = v115;
  v72 = v116;
  v73 = v117;
  v74 = v63;
  return sub_100007834(v67, &qword_1000ED500, &qword_1000B7220);
}

uint64_t sub_100056AEC@<X0>(__int16 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_100005A50(0, &qword_1000EC130, UIImage_ptr);
  if ((a1 & 0x100) != 0)
  {
    static UIImage.cafui_hdRadioLogoOrange.getter();
  }

  else
  {
    static UIImage.cafui_hdRadioLogo.getter();
  }

  v22 = Image.init(uiImage:)();

  dispatch thunk of CustomStringConvertible.description.getter();
  sub_100020F58();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  sub_100005A50(0, &qword_1000EC138, UIFont_ptr);
  static UIFont.cafui_preferredFont(for:weight:size:rounded:)();
  Font.init(_:)();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_100021B08(v5, v7, v9 & 1);

  v15 = Text.foregroundStyle<A>(_:)();
  v17 = v16;
  LOBYTE(v7) = v18;
  v20 = v19;
  sub_100021B08(v10, v12, v14 & 1);

  *a3 = v22;
  *(a3 + 8) = a2;
  *(a3 + 16) = v15;
  *(a3 + 24) = v17;
  *(a3 + 32) = v7 & 1;
  *(a3 + 40) = v20;

  sub_100021B18(v15, v17, v7 & 1);

  sub_100021B08(v15, v17, v7 & 1);
}

uint64_t sub_100056D14(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC5Media16RadioStationCell_config))
  {
    v1 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    static Published.subscript.getter();

    TerrestrialRadioStation.setFavorite(_:)((v2 & 1) == 0);

    [v1 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_100056DD0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = Image.init(systemName:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v15[0]) == 1)
  {
    v5 = static Color.yellow.getter();
  }

  else
  {
    v6 = a3;
    v5 = Color.init(uiColor:)();
  }

  v17 = 0;
  *&v13 = v4;
  *(&v13 + 1) = v5;
  v14[0] = static Edge.Set.all.getter();
  __asm { FMOV            V0.2D, #8.0 }

  *&v14[8] = _Q0;
  *&v14[24] = _Q0;
  v14[40] = 0;
  sub_10000368C(&qword_1000ED4B8, &qword_1000B71A0);
  sub_10005B6BC();
  View.accessibilityIdentifier(_:)();
  v15[0] = v13;
  v15[1] = *v14;
  v16[0] = *&v14[16];
  *(v16 + 9) = *&v14[25];
  return sub_100007834(v15, &qword_1000ED4B8, &qword_1000B71A0);
}

id sub_1000571D4(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v13.receiver = a1;
  v13.super_class = a8(a7);
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

id sub_100057268(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9.receiver = a1;
  v9.super_class = a5(a4);
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", v6);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_100057328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000368C(&qword_1000ED388, &unk_1000B6FF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v43 - v6;
  v8 = sub_10000368C(&qword_1000ED6E8, &qword_1000B74B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for Image.ResizingMode();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000368C(&qword_1000ED520, &qword_1000B7240);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v43 - v19;
  if (!a1)
  {
    goto LABEL_5;
  }

  v21 = a1;
  [v21 size];
  if (v23 == 0.0 && v22 == 0.0)
  {

LABEL_5:
    v24 = Image.init(systemName:)();
    v25 = type metadata accessor for Font.Design();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    v26 = static Font.system(size:weight:design:)();
    sub_100007834(v7, &qword_1000ED388, &unk_1000B6FF0);
    KeyPath = swift_getKeyPath();
    v28 = static HierarchicalShapeStyle.secondary.getter();
    v29 = static Edge.Set.all.getter();
    v44 = 1;
    *v11 = v24;
    *(v11 + 1) = KeyPath;
    *(v11 + 2) = v26;
    *(v11 + 6) = v28;
    v11[32] = v29;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    v11[72] = 1;
    swift_storeEnumTagMultiPayload();
    sub_10000368C(&qword_1000ED598, &qword_1000B72E0);
    sub_10005BD48();
    sub_10005BA0C();
    return _ConditionalContent<>.init(storage:)();
  }

  v31 = v21;
  Image.init(uiImage:)();
  (*(v13 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v12);
  v32 = Image.resizable(capInsets:resizingMode:)();
  v43 = a2;
  v33 = v32;

  (*(v13 + 8))(v16, v12);
  v34 = &v20[*(v17 + 36)];
  v35 = *(type metadata accessor for RoundedRectangle() + 20);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = type metadata accessor for RoundedCornerStyle();
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  __asm { FMOV            V0.2D, #6.0 }

  *v34 = _Q0;
  *&v34[*(sub_10000368C(&qword_1000EBB38, &qword_1000B4B80) + 36)] = 256;
  *v20 = v33;
  *(v20 + 1) = 0;
  *(v20 + 8) = 1;
  sub_1000077CC(v20, v11, &qword_1000ED520, &qword_1000B7240);
  swift_storeEnumTagMultiPayload();
  sub_10000368C(&qword_1000ED598, &qword_1000B72E0);
  sub_10005BD48();
  sub_10005BA0C();
  _ConditionalContent<>.init(storage:)();

  return sub_100007834(v20, &qword_1000ED520, &qword_1000B7240);
}