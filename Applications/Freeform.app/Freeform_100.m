void sub_100CD1644()
{
  v1 = v0[10];
  if (v1 != *(*v0 + 16) || v1 != *(v0[1] + 16) || v1 != *(v0[2] + 16) || v1 != *(v0[3] + 16) || v1 != *(v0[4] + 16) || v1 != *(v0[5] + 16) || v1 != *(v0[6] + 16))
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v25);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_1005CF000();
    *(inited + 96) = v12;
    v13 = sub_100CD7ADC(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 141;
    v15 = v25;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "The CRLPKStrokePathData object has inconsistent point counts.", 61, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:141 isFatal:0 format:v24 args:v21];
  }
}

void *sub_100CD1A6C()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F6990);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v46 - v4;
  v6 = *(v0 + 80);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(v0 + 96);
  v8 = type metadata accessor for CRLPKStrokePathData();
  v9 = objc_allocWithZone(CRLPKStrokePathCompactData);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithCapacity:v6 randomSeed:v7 creationDate:isa];

  LODWORD(v12) = *(v1 + v8[18]);
  [v11 setRenderScaleX:v12];
  LODWORD(v13) = *(v1 + v8[19]);
  [v11 setRenderScaleY:v13];
  sub_10000BE14(v1 + v8[20], v5, &qword_1019F6990);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v5, 1, v14) != 1)
  {
    v16 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v15 + 8))(v5, v14);
  }

  [v11 setRenderGroupID:v16];

  [v11 setShouldSolveMath:*(v1 + v8[24])];
  [v11 setIsSynthesizedStroke:*(v1 + v8[25])];
  v17 = (v1 + v8[21]);
  if ((v17[2] & 1) == 0)
  {
    [v11 setAnchorPointForTexture:{*v17, v17[1]}];
  }

  [v11 setParticleOffset:*(v1 + v8[22])];
  result = [v11 setSecondaryParticleOffset:*(v1 + v8[23])];
  if (!v6)
  {
    return v11;
  }

  v18 = v1[2];
  if (v6 > *(v18 + 16))
  {
    goto LABEL_21;
  }

  v19 = v1[3];
  if (v6 > *(v19 + 16))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = v1[1];
  if (v6 > *(v20 + 16))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = *v1;
  if (v6 > *(*v1 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v22 = v1[4];
  if (v6 > *(v22 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = v1[5];
  if (v6 > *(v23 + 16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v1[6];
  if (v6 > *(v24 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = v1[7];
  if (v6 > *(v25 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = v1[8];
  if (v6 > *(v26 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  result = v1[9];
  if (v6 <= result[2])
  {
    v27 = 0;
    v49 = v18 + 32;
    v48 = v19 + 32;
    v47 = v20 + 32;
    v28 = v21 + 32;
    v29 = v22 + 32;
    v30 = v6;
    v31 = v23 + 32;
    v32 = v24 + 32;
    v33 = v25 + 32;
    v34 = v26 + 32;
    v35 = (result + 4);
    do
    {
      v36 = *(v48 + 2 * v27);
      v37 = *(v47 + 2 * v27);
      v38 = *(v28 + 2 * v27);
      v39 = *(v29 + 4 * v27);
      v40 = *(v31 + 4 * v27);
      v41 = *(v32 + 4 * v27);
      v42 = *(v33 + 4 * v27);
      v43 = *(v34 + 2 * v27);
      v44 = *&v35[2 * v27];
      v45 = v27 + 1;
      v50[0] = *(v49 + 2 * v27);
      v50[1] = v36;
      v50[2] = v37;
      v50[3] = v38;
      v51 = v39;
      v52 = v40;
      v53 = v41;
      v54 = v42;
      v55 = v43;
      v56 = v44;
      [v11 appendStrokePointCompactData:v50];
      v27 = v45;
    }

    while (v30 != v45);
    return v11;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100CD1E58(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return result;
    }

    v3 = result;
    if (result > result >> 32)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v4 = __DataStorage._bytes.getter();
    if (!v4)
    {
LABEL_20:
      result = __DataStorage._length.getter();
      __break(1u);
      return result;
    }

    v5 = v4;
    v6 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, v6))
    {
      goto LABEL_17;
    }

    v7 = (v3 - v6 + v5);
    result = __DataStorage._length.getter();
    if (v7)
    {
      return *v7;
    }

    __break(1u);
  }

  if (v2 == 2)
  {
    v8 = *(result + 16);
    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
LABEL_18:
      __DataStorage._length.getter();
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v10 = v9;
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v8, v11))
    {
      v7 = (v8 - v11 + v10);
      __DataStorage._length.getter();
      if (v7)
      {
        return *v7;
      }

      goto LABEL_19;
    }

    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_100CD1F3C(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return result;
    }

    v3 = *(result + 16);
    v4 = __DataStorage._bytes.getter();
    if (!v4)
    {
      goto LABEL_17;
    }

    v5 = v4;
    v6 = __DataStorage._offset.getter();
    if (!__OFSUB__(v3, v6))
    {
      v7 = v3 - v6 + v5;
      result = __DataStorage._length.getter();
      if (v7)
      {
        return result;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (!v2)
  {
    return result;
  }

  v8 = result;
  if (result > result >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __DataStorage._length.getter();
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
LABEL_19:
    result = __DataStorage._length.getter();
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  v11 = __DataStorage._offset.getter();
  if (__OFSUB__(v8, v11))
  {
    goto LABEL_16;
  }

  v12 = v8 - v11 + v10;
  result = __DataStorage._length.getter();
  if (!v12)
  {
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_100CD2028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRLProto_Path(0);
  v356 = *(v4 - 8);
  v357 = v4;
  __chkstk_darwin(v4);
  v343 = (&v330 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CRLProto_PKStrokePathData.StrokePoint(0);
  v364 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v363 = (&v330 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1005B981C(&qword_101A1ACF8);
  __chkstk_darwin(v8 - 8);
  v342 = &v330 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v361 = &v330 - v11;
  v12 = type metadata accessor for CRLProto_Point(0);
  v358 = *(v12 - 8);
  v359 = v12;
  __chkstk_darwin(v12);
  v345 = (&v330 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1005B981C(&qword_101A15CE8);
  __chkstk_darwin(v14 - 8);
  v344 = &v330 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v373 = &v330 - v17;
  v374 = type metadata accessor for CRLProto_Data(0);
  v372 = *(v374 - 1);
  __chkstk_darwin(v374);
  v354 = (&v330 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v19 - 8);
  v355 = &v330 - v20;
  v21 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v21 - 8);
  v353 = &v330 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v371 = &v330 - v24;
  v25 = type metadata accessor for CRLProto_Date(0);
  v369 = *(v25 - 1);
  v370 = v25;
  __chkstk_darwin(v25);
  v349 = (&v330 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for Date();
  v350 = *(v27 - 8);
  v351 = v27;
  __chkstk_darwin(v27);
  v348 = &v330 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1005B981C(&qword_101A1ACE8);
  __chkstk_darwin(v29 - 8);
  v347 = &v330 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v360 = &v330 - v32;
  v33 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v33 - 8);
  v375 = &v330 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = type metadata accessor for CRLProto_PKStrokePathData(0);
  __chkstk_darwin(v365);
  v366 = (&v330 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 56) = _swiftEmptyArrayStorage;
  *(a2 + 64) = _swiftEmptyArrayStorage;
  *(a2 + 72) = _swiftEmptyArrayStorage;
  v36 = type metadata accessor for CRLPKStrokePathData();
  *(a2 + 80) = 0;
  v362 = (a2 + 80);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  v346 = v36[17];
  static Date.now.getter();
  v367 = v36[18];
  *&v367[a2] = 1065353216;
  v368 = v36[19];
  *&v368[a2] = 1065353216;
  v37 = v36[20];
  v38 = type metadata accessor for UUID();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v352 = v37;
  v340 = v40;
  v341 = v38;
  v339 = v39 + 56;
  (v40)(a2 + v37, 1, 1);
  v41 = a2 + v36[21];
  *v41 = 0;
  *(v41 + 8) = 1;
  v42 = a1;
  v43 = v36[22];
  *(a2 + v43) = 0;
  v44 = v36[23];
  *(a2 + v44) = 0;
  v45 = v36[24];
  *(a2 + v45) = 0;
  v46 = v36[25];
  v46[a2] = 0;
  v47 = v376;
  dispatch thunk of CRDecoder.valueContainer()();
  if (v47)
  {

    return sub_100CD7954(a2, type metadata accessor for CRLPKStrokePathData);
  }

  v333 = v41;
  v334 = v43;
  v335 = v44;
  v336 = v45;
  v376 = v46;
  v337 = v42;
  v338 = a2;
  v48 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
  v50 = v49;

  memset(__src, 0, sizeof(__src));
  sub_100024E98(v48, v50);
  BinaryDecodingOptions.init()();
  sub_100CD7ADC(&qword_101A1ACF0, type metadata accessor for CRLProto_PKStrokePathData);
  v51 = v366;
  v52 = v365;
  Message.init(serializedData:extensions:partial:options:)();
  v330 = v48;
  v331 = v50;
  v54 = v51 + v52[7];
  if ((*(v54 + 4) & 1) == 0)
  {
    *(v338 + 96) = *v54;
  }

  v55 = v52[8];
  v56 = v366;
  v57 = v360;
  sub_10000BE14(v366 + v55, v360, &qword_101A1ACE8);
  v58 = v370;
  v59 = *(v369 + 6);
  v60 = v59(v57, 1, v370);
  v61 = v57;
  v62 = v56;
  sub_10000CAAC(v61, &qword_101A1ACE8);
  v332 = 0;
  if (v60 != 1)
  {
    v63 = v56 + v55;
    v64 = v347;
    sub_10000BE14(v63, v347, &qword_101A1ACE8);
    if (v59(v64, 1, v58) == 1)
    {
      v65 = v59;
      v66 = v349;
      *v349 = 0;
      UnknownStorage.init()();
      v67 = v65(v64, 1, v58);
      v68 = v338;
      v70 = v350;
      v69 = v351;
      v71 = v348;
      if (v67 != 1)
      {
        sub_10000CAAC(v64, &qword_101A1ACE8);
      }
    }

    else
    {
      v66 = v349;
      sub_100CD78EC(v64, v349, type metadata accessor for CRLProto_Date);
      v68 = v338;
      v70 = v350;
      v69 = v351;
      v71 = v348;
    }

    sub_100CD7954(v66, type metadata accessor for CRLProto_Date);
    Date.init(timeIntervalSinceReferenceDate:)();
    (*(v70 + 40))(v68 + v346, v71, v69);
  }

  v72 = v365;
  v73 = v62 + v365[9];
  if ((*(v73 + 4) & 1) == 0)
  {
    *&v367[v338] = *v73;
  }

  v74 = v62 + v72[10];
  v75 = v374;
  v76 = v371;
  if ((*(v74 + 4) & 1) == 0)
  {
    *&v368[v338] = *v74;
  }

  v77 = v72[12];
  sub_10000BE14(v62 + v77, v76, &qword_1019F67C0);
  v78 = *(v372 + 6);
  v79 = v78(v76, 1, v75);
  v80 = v62;
  v81 = v79;
  sub_10000CAAC(v76, &qword_1019F67C0);
  if (v81 == 1)
  {
    v82 = v80;
    v83 = v338;
    v84 = v373;
  }

  else
  {
    v85 = v353;
    sub_10000BE14(v80 + v77, v353, &qword_1019F67C0);
    v86 = v374;
    v82 = v80;
    if (v78(v85, 1, v374) == 1)
    {
      v87 = v354;
      *v354 = xmmword_10146F370;
      UnknownStorage.init()();
      v88 = v78(v85, 1, v86);
      v89 = v331;
      v84 = v373;
      v90 = v352;
      if (v88 != 1)
      {
        sub_10000CAAC(v85, &qword_1019F67C0);
      }
    }

    else
    {
      v87 = v354;
      sub_100CD78EC(v85, v354, type metadata accessor for CRLProto_Data);
      v89 = v331;
      v84 = v373;
      v90 = v352;
    }

    v91 = *v87;
    v92 = v87[1];
    sub_100024E98(*v87, v92);
    sub_100CD7954(v87, type metadata accessor for CRLProto_Data);
    v93 = v355;
    v94 = v332;
    UUID.init(crl_data:)(v91, v92);
    v332 = v94;
    if (v94)
    {
      sub_10002640C(v330, v89);

      sub_100CD7954(v82, type metadata accessor for CRLProto_PKStrokePathData);
      a2 = v338;
      return sub_100CD7954(a2, type metadata accessor for CRLPKStrokePathData);
    }

    v340(v93, 0, 1, v341);
    v83 = v338;
    sub_100803880(v93, v338 + v90);
  }

  v95 = v365[11];
  sub_10000BE14(v82 + v95, v84, &qword_101A15CE8);
  v96 = v359;
  v375 = *(v358 + 48);
  v97 = (v375)(v84, 1, v359);
  sub_10000CAAC(v84, &qword_101A15CE8);
  v98 = v366;
  if (v97 != 1)
  {
    v99 = v344;
    sub_10000BE14(v366 + v95, v344, &qword_101A15CE8);
    v100 = v375;
    if ((v375)(v99, 1, v96) == 1)
    {
      v101 = v345;
      *v345 = 0;
      UnknownStorage.init()();
      v102 = (v100)(v99, 1, v96);
      v103 = v333;
      if (v102 != 1)
      {
        sub_10000CAAC(v99, &qword_101A15CE8);
      }
    }

    else
    {
      v101 = v345;
      sub_100CD78EC(v99, v345, type metadata accessor for CRLProto_Point);
      v103 = v333;
    }

    v104 = *v101;
    sub_100CD7954(v101, type metadata accessor for CRLProto_Point);
    *v103 = v104;
    *(v103 + 8) = 0;
  }

  v105 = v365;
  v106 = v98 + v365[15];
  if ((*(v106 + 8) & 1) == 0)
  {
    *(v83 + v334) = *v106;
  }

  v107 = v98 + v105[16];
  v109 = v362;
  v108 = v363;
  v110 = v361;
  v111 = v336;
  if ((*(v107 + 8) & 1) == 0)
  {
    *(v83 + v335) = *v107;
  }

  v112 = *(v98 + v105[13]);
  v113 = v364;
  if (v112 != 2)
  {
    *(v83 + v111) = v112 & 1;
  }

  v114 = *(v98 + v105[14]);
  if (v114 != 2)
  {
    v376[v83] = v114 & 1;
  }

  v115 = 2;
  v116 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v116[2] = 2;
  v116[4] = 0;
  v117 = *v366;
  v350 = *(*v366 + 16);
  v351 = v117;
  if (v350)
  {
    LODWORD(v358) = 0;
    LODWORD(v359) = 0;
    LODWORD(v352) = 0;
    LODWORD(v353) = 0;
    LODWORD(v354) = 0;
    LODWORD(v355) = 0;
    v118 = 0;
    v349 = (v117 + ((*(v113 + 80) + 32) & ~*(v113 + 80)));
    v119 = 0.0;
    v120 = 0.0;
    v367 = _swiftEmptyArrayStorage;
    v368 = _swiftEmptyArrayStorage;
    v369 = _swiftEmptyArrayStorage;
    v370 = _swiftEmptyArrayStorage;
    v371 = _swiftEmptyArrayStorage;
    v372 = _swiftEmptyArrayStorage;
    v373 = _swiftEmptyArrayStorage;
    v374 = _swiftEmptyArrayStorage;
    v375 = _swiftEmptyArrayStorage;
    v376 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v118 >= *(v117 + 16))
      {
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
LABEL_354:
        __break(1u);
LABEL_355:
        swift_once();
LABEL_322:
        v315 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v116;
        v317 = sub_1005CF000();
        *(inited + 96) = v317;
        v318 = sub_100CD7ADC(&qword_1019F52E0, sub_1005CF000);
        *(inited + 104) = v318;
        *(inited + 72) = v115;
        *(inited + 136) = &type metadata for String;
        v319 = sub_1000053B0();
        *(inited + 112) = v83;
        *(inited + 120) = v110;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v319;
        *(inited + 152) = 277;
        v320 = __src[0];
        *(inited + 216) = v317;
        *(inited + 224) = v318;
        *(inited + 192) = v320;
        v321 = v115;
        v322 = v320;
        v323 = static os_log_type_t.error.getter();
        sub_100005404(v315, &_mh_execute_header, v323, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v324 = static os_log_type_t.error.getter();
        sub_100005404(v315, &_mh_execute_header, v324, "The CRLPKStrokePathData object has inconsistent point counts.", 61, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v325 = swift_allocObject();
        v325[2] = 8;
        v325[3] = 0;
        v325[4] = 0;
        v325[5] = 0;
        v326 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v327 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v328 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v329 = String._bridgeToObjectiveC()();

        [v376 handleFailureInFunction:v327 file:v328 lineNumber:277 isFatal:0 format:v329 args:v326];

        goto LABEL_323;
      }

      v121 = *(v113 + 72);
      v360 = v118;
      sub_100CD7A08(v349 + v121 * v118, v108, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
      v122 = *v108;
      v123 = v108[1];
      v124 = v123 >> 62;
      if ((v123 >> 62) > 1)
      {
        if (v124 == 2)
        {
          v126 = *(v122 + 16);
          v125 = *(v122 + 24);
          v127 = __OFSUB__(v125, v126);
          v128 = v125 - v126;
          if (v127)
          {
            goto LABEL_328;
          }

          if (v128 == 2)
          {
            goto LABEL_50;
          }
        }
      }

      else if (v124)
      {
        if (__OFSUB__(HIDWORD(v122), v122))
        {
          goto LABEL_327;
        }

        if (HIDWORD(v122) - v122 == 2)
        {
LABEL_50:
          v115 = v83;
          LODWORD(v355) = sub_100CD1E58(v122, v123);
        }
      }

      else if (BYTE6(v123) == 2)
      {
        goto LABEL_50;
      }

      v129 = v108[2];
      v130 = v108[3];
      v131 = v130 >> 62;
      if ((v130 >> 62) > 1)
      {
        if (v131 == 2)
        {
          v133 = *(v129 + 16);
          v132 = *(v129 + 24);
          v127 = __OFSUB__(v132, v133);
          v134 = v132 - v133;
          if (v127)
          {
            goto LABEL_329;
          }

          if (v134 == 2)
          {
            goto LABEL_58;
          }
        }
      }

      else if (v131)
      {
        if (__OFSUB__(HIDWORD(v129), v129))
        {
          goto LABEL_330;
        }

        if (HIDWORD(v129) - v129 == 2)
        {
LABEL_58:
          v115 = v83;
          LODWORD(v354) = sub_100CD1E58(v129, v130);
        }
      }

      else if (BYTE6(v130) == 2)
      {
        goto LABEL_58;
      }

      v135 = v108[4];
      v136 = v108[5];
      v137 = v136 >> 62;
      if ((v136 >> 62) > 1)
      {
        if (v137 == 2)
        {
          v139 = *(v135 + 16);
          v138 = *(v135 + 24);
          v127 = __OFSUB__(v138, v139);
          v140 = v138 - v139;
          if (v127)
          {
            goto LABEL_332;
          }

          if (v140 == 2)
          {
            goto LABEL_66;
          }
        }
      }

      else if (v137)
      {
        if (__OFSUB__(HIDWORD(v135), v135))
        {
          goto LABEL_331;
        }

        if (HIDWORD(v135) - v135 == 2)
        {
LABEL_66:
          v115 = v83;
          LODWORD(v353) = sub_100CD1E58(v135, v136);
        }
      }

      else if (BYTE6(v136) == 2)
      {
        goto LABEL_66;
      }

      v141 = v108[6];
      v142 = v108[7];
      v143 = v142 >> 62;
      if ((v142 >> 62) > 1)
      {
        if (v143 == 2)
        {
          v145 = *(v141 + 16);
          v144 = *(v141 + 24);
          v127 = __OFSUB__(v144, v145);
          v146 = v144 - v145;
          if (v127)
          {
            goto LABEL_333;
          }

          if (v146 == 2)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v143)
      {
        if (__OFSUB__(HIDWORD(v141), v141))
        {
          goto LABEL_334;
        }

        if (HIDWORD(v141) - v141 == 2)
        {
LABEL_74:
          v115 = v83;
          LODWORD(v352) = sub_100CD1E58(v141, v142);
        }
      }

      else if (BYTE6(v142) == 2)
      {
        goto LABEL_74;
      }

      v147 = v108[14];
      v148 = v108[15];
      v149 = v148 >> 62;
      if ((v148 >> 62) > 1)
      {
        if (v149 == 2)
        {
          v151 = *(v147 + 16);
          v150 = *(v147 + 24);
          v127 = __OFSUB__(v150, v151);
          v152 = v150 - v151;
          if (v127)
          {
            goto LABEL_335;
          }

          if (v152 >= 1)
          {
            goto LABEL_82;
          }
        }
      }

      else if (v149)
      {
        if (__OFSUB__(HIDWORD(v147), v147))
        {
          goto LABEL_336;
        }

        if (HIDWORD(v147) - v147 >= 1)
        {
LABEL_82:
          v115 = v83;
          LODWORD(v359) = sub_100CD1E58(v147, v148);
        }
      }

      else if (BYTE6(v148))
      {
        goto LABEL_82;
      }

      v153 = v108[16];
      v154 = v108[17];
      v155 = v154 >> 62;
      if ((v154 >> 62) > 1)
      {
        if (v155 == 2)
        {
          v157 = *(v153 + 16);
          v156 = *(v153 + 24);
          v127 = __OFSUB__(v156, v157);
          v158 = v156 - v157;
          if (v127)
          {
            goto LABEL_338;
          }

          if (v158 >= 1)
          {
            goto LABEL_90;
          }
        }
      }

      else if (v155)
      {
        if (__OFSUB__(HIDWORD(v153), v153))
        {
          goto LABEL_337;
        }

        if (HIDWORD(v153) - v153 >= 1)
        {
LABEL_90:
          v115 = v83;
          LODWORD(v358) = sub_100CD1E58(v153, v154);
        }
      }

      else if (BYTE6(v154))
      {
        goto LABEL_90;
      }

      v159 = v108[10];
      v160 = v108[11];
      v161 = v160 >> 62;
      if ((v160 >> 62) > 1)
      {
        if (v161 != 2)
        {
          goto LABEL_127;
        }

        v163 = *(v159 + 16);
        v162 = *(v159 + 24);
        v127 = __OFSUB__(v162, v163);
        v164 = v162 - v163;
        if (v127)
        {
          goto LABEL_340;
        }

        if (v164 == 4)
        {
LABEL_102:
          v115 = v83;
          sub_100CD1F3C(v159, v160);
          v120 = v165;
          goto LABEL_127;
        }
      }

      else if (v161)
      {
        if (__OFSUB__(HIDWORD(v159), v159))
        {
          goto LABEL_339;
        }

        if (HIDWORD(v159) - v159 == 4)
        {
          goto LABEL_102;
        }
      }

      else if (BYTE6(v160) == 4)
      {
        goto LABEL_102;
      }

      if (v161 == 2)
      {
        v167 = *(v159 + 16);
        v166 = *(v159 + 24);
        v127 = __OFSUB__(v166, v167);
        v168 = v166 - v167;
        if (v127)
        {
          goto LABEL_347;
        }

        if (v168 == 2)
        {
LABEL_126:
          v115 = v83;
          v120 = sub_100CD1E58(v159, v160);
        }
      }

      else if (v161 == 1)
      {
        if (__OFSUB__(HIDWORD(v159), v159))
        {
          goto LABEL_348;
        }

        if (HIDWORD(v159) - v159 == 2)
        {
          goto LABEL_126;
        }
      }

      else if (BYTE6(v160) == 2)
      {
        goto LABEL_126;
      }

LABEL_127:
      v169 = v108[12];
      v170 = v108[13];
      v171 = v170 >> 62;
      if ((v170 >> 62) > 1)
      {
        if (v171 != 2)
        {
          goto LABEL_147;
        }

        v173 = *(v169 + 16);
        v172 = *(v169 + 24);
        v127 = __OFSUB__(v172, v173);
        v174 = v172 - v173;
        if (v127)
        {
          goto LABEL_342;
        }

        if (v174 == 4)
        {
LABEL_138:
          v115 = v83;
          sub_100CD1F3C(v169, v170);
          v119 = v175;
          goto LABEL_147;
        }
      }

      else if (v171)
      {
        if (__OFSUB__(HIDWORD(v169), v169))
        {
          goto LABEL_341;
        }

        if (HIDWORD(v169) - v169 == 4)
        {
          goto LABEL_138;
        }
      }

      else if (BYTE6(v170) == 4)
      {
        goto LABEL_138;
      }

      if (v171 == 2)
      {
        v177 = *(v169 + 16);
        v176 = *(v169 + 24);
        v127 = __OFSUB__(v176, v177);
        v178 = v176 - v177;
        if (v127)
        {
          goto LABEL_349;
        }

        if (v178 == 2)
        {
LABEL_146:
          v115 = v83;
          v119 = sub_100CD1E58(v169, v170);
        }
      }

      else if (v171 == 1)
      {
        if (__OFSUB__(HIDWORD(v169), v169))
        {
          goto LABEL_350;
        }

        if (HIDWORD(v169) - v169 == 2)
        {
          goto LABEL_146;
        }
      }

      else if (BYTE6(v170) == 2)
      {
        goto LABEL_146;
      }

LABEL_147:
      v179 = v108[8];
      v180 = v108[9];
      v181 = v180 >> 62;
      if ((v180 >> 62) > 1)
      {
        if (v181 != 2)
        {
          goto LABEL_259;
        }

        v183 = *(v179 + 16);
        v182 = *(v179 + 24);
        v127 = __OFSUB__(v182, v183);
        v184 = v182 - v183;
        if (v127)
        {
          goto LABEL_344;
        }

        if (v184 < 1)
        {
          goto LABEL_259;
        }
      }

      else if (v181)
      {
        if (__OFSUB__(HIDWORD(v179), v179))
        {
          goto LABEL_343;
        }

        if (HIDWORD(v179) - v179 < 1)
        {
          goto LABEL_259;
        }
      }

      else if (!BYTE6(v180))
      {
        goto LABEL_259;
      }

      if (v181 == 2)
      {
        v188 = v179 + 16;
        v186 = *(v179 + 16);
        v187 = *(v188 + 8);
        v127 = __OFSUB__(v187, v186);
        v189 = v187 - v186;
        if (v127)
        {
          goto LABEL_346;
        }

        if (v189 != 4)
        {
          goto LABEL_212;
        }

        goto LABEL_166;
      }

      if (v181 == 1)
      {
        v127 = __OFSUB__(HIDWORD(v179), v179);
        v185 = HIDWORD(v179) - v179;
        if (v127)
        {
          goto LABEL_345;
        }

        if (v185 != 4)
        {
          goto LABEL_212;
        }

LABEL_166:

        v190 = v108[8];
        v191 = v108[9];
        v192 = v191 >> 62;
        if ((v191 >> 62) > 1)
        {
          if (v192 != 2)
          {
            goto LABEL_197;
          }

          v195 = *(v190 + 16);
          v196 = *(v190 + 24);
          v115 = v191 & 0x3FFFFFFFFFFFFFFFLL;
          v197 = __DataStorage._bytes.getter();
          if (v197)
          {
            v116 = v197;
            v115 = v191 & 0x3FFFFFFFFFFFFFFFLL;
            v198 = __DataStorage._offset.getter();
            if (__OFSUB__(v195, v198))
            {
              goto LABEL_358;
            }

            v199 = v116 + v195 - v198;
          }

          else
          {
            v199 = 0;
          }

          v127 = __OFSUB__(v196, v195);
          v211 = v196 - v195;
          if (v127)
          {
            goto LABEL_354;
          }

          v115 = v191 & 0x3FFFFFFFFFFFFFFFLL;
          v212 = __DataStorage._length.getter();
          if (!v199)
          {
            goto LABEL_197;
          }

          v213 = v212 >= v211 ? v211 : v212;
          if ((v213 + 1) < 3)
          {
            goto LABEL_197;
          }

          v214 = v213;
          v115 = v213 / 2;
          v193 = sub_100B39C1C(v213 / 2, 0);
          sub_100F867B8(v193 + 4, v214 / 2, v199, v214 / 2);
          if (v215 != v115)
          {
            goto LABEL_364;
          }
        }

        else
        {
          if (!v192)
          {
            __src[0] = v108[8];
            LOWORD(__src[1]) = v191;
            BYTE2(__src[1]) = BYTE2(v191);
            BYTE3(__src[1]) = BYTE3(v191);
            BYTE4(__src[1]) = BYTE4(v191);
            v115 = (v191 >> 49) & 0x7F;
            BYTE5(__src[1]) = BYTE5(v191);
            if (v115)
            {
              v193 = sub_100B39C1C((v191 >> 49) & 0x7F, 0);
              sub_100F867B8(v193 + 4, (v191 >> 49) & 0x7F, __src, (v191 >> 49) & 0x7F);
              if (v194 != v115)
              {
                goto LABEL_359;
              }

              goto LABEL_198;
            }

LABEL_197:
            v193 = _swiftEmptyArrayStorage;
            goto LABEL_198;
          }

          v200 = v190;
          v201 = v190 >> 32;
          v202 = v201 - v200;
          if (v201 < v200)
          {
            goto LABEL_353;
          }

          v203 = __DataStorage._bytes.getter();
          if (!v203)
          {
            v115 = v191 & 0x3FFFFFFFFFFFFFFFLL;
            __DataStorage._length.getter();
            goto LABEL_197;
          }

          v204 = v203;
          v205 = __DataStorage._offset.getter();
          if (__OFSUB__(v200, v205))
          {
            goto LABEL_360;
          }

          v206 = (v200 - v205 + v204);
          v115 = v191 & 0x3FFFFFFFFFFFFFFFLL;
          v207 = __DataStorage._length.getter();
          if (!v206)
          {
            goto LABEL_197;
          }

          v208 = v207 >= v202 ? v202 : v207;
          if ((v208 + 1) < 3)
          {
            goto LABEL_197;
          }

          v209 = v208;
          v115 = v208 / 2;
          v193 = sub_100B39C1C(v208 / 2, 0);
          sub_100F867B8(v193 + 4, v209 / 2, v206, v209 / 2);
          if (v210 != v115)
          {
            goto LABEL_366;
          }
        }

LABEL_198:
        v216 = v193[2];
        if (v216)
        {
          __src[0] = _swiftEmptyArrayStorage;
          v115 = __src;
          sub_100776CA4(0, v216, 0);
          v217 = __src[0];
          v218 = *(__src[0] + 2);
          v219 = 32;
          do
          {
            v220 = *(v193 + v219);
            __src[0] = v217;
            v221 = v217[3];
            if (v218 >= v221 >> 1)
            {
              v115 = __src;
              sub_100776CA4((v221 > 1), v218 + 1, 1);
              v217 = __src[0];
            }

            v217[2] = v218 + 1;
            *(v217 + v218 + 16) = v220;
            v219 += 2;
            ++v218;
            --v216;
          }

          while (v216);

          v110 = v361;
          v222 = v217[2];
          if (v222)
          {
LABEL_204:
            __src[0] = _swiftEmptyArrayStorage;
            v115 = __src;
            sub_100776624(0, v222, 0);
            v116 = __src[0];
            v223 = *(__src[0] + 2);
            v224 = 32;
            do
            {
              v225 = *(v217 + v224);
              __src[0] = v116;
              v226 = v116[3];
              if (v223 >= v226 >> 1)
              {
                v115 = __src;
                sub_100776624((v226 > 1), v223 + 1, 1);
                v116 = __src[0];
              }

              v116[2] = v223 + 1;
              *(v116 + v223 + 8) = v225;
              v224 += 2;
              ++v223;
              --v222;
            }

            while (v222);

            v83 = v338;
            v110 = v361;
            goto LABEL_211;
          }
        }

        else
        {

          v217 = _swiftEmptyArrayStorage;
          v222 = _swiftEmptyArrayStorage[2];
          if (v222)
          {
            goto LABEL_204;
          }
        }

        v116 = _swiftEmptyArrayStorage;
        v83 = v338;
LABEL_211:
        v108 = v363;
        v113 = v364;
        v109 = v362;
        goto LABEL_212;
      }

      if (BYTE6(v180) == 4)
      {
        goto LABEL_166;
      }

LABEL_212:
      v227 = v108[8];
      v228 = v108[9];
      v229 = v228 >> 62;
      if ((v228 >> 62) > 1)
      {
        if (v229 != 2)
        {
          goto LABEL_259;
        }

        v232 = v227 + 16;
        v230 = *(v227 + 16);
        v231 = *(v232 + 8);
        v127 = __OFSUB__(v231, v230);
        v233 = v231 - v230;
        if (v127)
        {
          goto LABEL_351;
        }

        if (v233 != 8)
        {
          goto LABEL_259;
        }

LABEL_222:

        v235 = v108[8];
        v236 = v108[9];
        v237 = v236 >> 62;
        if ((v236 >> 62) > 1)
        {
          if (v237 == 2)
          {
            v241 = *(v235 + 16);
            v242 = *(v235 + 24);
            v243 = __DataStorage._bytes.getter();
            if (v243)
            {
              v244 = __DataStorage._offset.getter();
              if (__OFSUB__(v241, v244))
              {
                goto LABEL_362;
              }

              v243 += v241 - v244;
            }

            v127 = __OFSUB__(v242, v241);
            v245 = v242 - v241;
            if (v127)
            {
              goto LABEL_357;
            }

            v246 = __DataStorage._length.getter();
            if (v243)
            {
              v247 = v246 >= v245 ? v245 : v246;
              if ((v247 + 3) >= 7)
              {
                v248 = v247 / 4;
                v239 = sub_100B39FD8(v247 / 4, 0);
                sub_100F86748(v239 + 4, v248, v243, v248);
                if (v249 != v248)
                {
                  goto LABEL_365;
                }

                goto LABEL_251;
              }
            }
          }
        }

        else if (v237)
        {
          v250 = v235;
          v251 = v235 >> 32;
          v252 = v251 - v250;
          if (v251 < v250)
          {
            __break(1u);
LABEL_357:
            __break(1u);
LABEL_358:
            __break(1u);
LABEL_359:
            __break(1u);
LABEL_360:
            __break(1u);
LABEL_361:
            __break(1u);
LABEL_362:
            __break(1u);
LABEL_363:
            __break(1u);
LABEL_364:
            __break(1u);
LABEL_365:
            __break(1u);
LABEL_366:
            __break(1u);
LABEL_367:
            __break(1u);
          }

          v253 = __DataStorage._bytes.getter();
          if (v253)
          {
            v254 = v253;
            v255 = __DataStorage._offset.getter();
            if (__OFSUB__(v250, v255))
            {
              goto LABEL_363;
            }

            v256 = (v250 - v255 + v254);
            v257 = __DataStorage._length.getter();
            if (v256)
            {
              v258 = v257 >= v252 ? v252 : v257;
              if ((v258 + 3) >= 7)
              {
                v259 = v258 / 4;
                v239 = sub_100B39FD8(v258 / 4, 0);
                sub_100F86748(v239 + 4, v259, v256, v259);
                if (v260 != v259)
                {
                  goto LABEL_367;
                }

                goto LABEL_251;
              }
            }
          }

          else
          {
            __DataStorage._length.getter();
          }
        }

        else
        {
          __src[0] = v235;
          LOWORD(__src[1]) = v236;
          BYTE2(__src[1]) = BYTE2(v236);
          BYTE3(__src[1]) = BYTE3(v236);
          BYTE4(__src[1]) = BYTE4(v236);
          v238 = (v236 >> 50) & 0x3F;
          BYTE5(__src[1]) = BYTE5(v236);
          if (v238)
          {
            v239 = sub_100B39FD8((v236 >> 50) & 0x3F, 0);
            sub_100F86748(v239 + 4, (v236 >> 50) & 0x3F, __src, (v236 >> 50) & 0x3F);
            if (v240 != v238)
            {
              goto LABEL_361;
            }

            goto LABEL_251;
          }
        }

        v239 = _swiftEmptyArrayStorage;
LABEL_251:
        v261 = v239[2];
        if (v261)
        {
          __src[0] = _swiftEmptyArrayStorage;
          sub_100776624(0, v261, 0);
          v116 = __src[0];
          v262 = *(__src[0] + 2);
          v263 = 32;
          do
          {
            v264 = *(v239 + v263);
            __src[0] = v116;
            v265 = v116[3];
            if (v262 >= v265 >> 1)
            {
              sub_100776624((v265 > 1), v262 + 1, 1);
              v116 = __src[0];
            }

            v116[2] = v262 + 1;
            *(v116 + v262 + 8) = v264;
            v263 += 4;
            ++v262;
            --v261;
          }

          while (v261);

          v110 = v361;
        }

        else
        {

          v116 = _swiftEmptyArrayStorage;
        }

        v108 = v363;
        v113 = v364;
        v109 = v362;
        goto LABEL_259;
      }

      if (v229)
      {
        v127 = __OFSUB__(HIDWORD(v227), v227);
        v234 = HIDWORD(v227) - v227;
        if (v127)
        {
          goto LABEL_352;
        }

        if (v234 != 8)
        {
          goto LABEL_259;
        }

        goto LABEL_222;
      }

      if (BYTE6(v228) == 8)
      {
        goto LABEL_222;
      }

LABEL_259:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v375 = sub_100B3593C(0, *(v375 + 2) + 1, 1, v375);
      }

      v267 = *(v375 + 2);
      v266 = *(v375 + 3);
      if (v267 >= v266 >> 1)
      {
        v375 = sub_100B3593C((v266 > 1), v267 + 1, 1, v375);
      }

      v268 = v375;
      *(v375 + 2) = v267 + 1;
      *&v268[2 * v267 + 32] = v355;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v376 = sub_100B3593C(0, *(v376 + 2) + 1, 1, v376);
      }

      v270 = *(v376 + 2);
      v269 = *(v376 + 3);
      if (v270 >= v269 >> 1)
      {
        v376 = sub_100B3593C((v269 > 1), v270 + 1, 1, v376);
      }

      v271 = v376;
      *(v376 + 2) = v270 + 1;
      *&v271[2 * v270 + 32] = v354;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v374 = sub_100B3593C(0, *(v374 + 2) + 1, 1, v374);
      }

      v273 = *(v374 + 2);
      v272 = *(v374 + 3);
      if (v273 >= v272 >> 1)
      {
        v374 = sub_100B3593C((v272 > 1), v273 + 1, 1, v374);
      }

      v274 = v374;
      *(v374 + 2) = v273 + 1;
      *&v274[2 * v273 + 32] = v353;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v373 = sub_100B3593C(0, *(v373 + 2) + 1, 1, v373);
      }

      v276 = *(v373 + 2);
      v275 = *(v373 + 3);
      if (v276 >= v275 >> 1)
      {
        v373 = sub_100B3593C((v275 > 1), v276 + 1, 1, v373);
      }

      v277 = v373;
      *(v373 + 2) = v276 + 1;
      *&v277[2 * v276 + 32] = v352;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v372 = sub_100B35838(0, *(v372 + 2) + 1, 1, v372);
      }

      v279 = *(v372 + 2);
      v278 = *(v372 + 3);
      if (v279 >= v278 >> 1)
      {
        v372 = sub_100B35838((v278 > 1), v279 + 1, 1, v372);
      }

      v280 = v372;
      *(v372 + 2) = v279 + 1;
      *&v280[4 * v279 + 32] = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v371 = sub_100B35838(0, *(v371 + 2) + 1, 1, v371);
      }

      v282 = *(v371 + 2);
      v281 = *(v371 + 3);
      if (v282 >= v281 >> 1)
      {
        v371 = sub_100B35838((v281 > 1), v282 + 1, 1, v371);
      }

      v283 = v371;
      *(v371 + 2) = v282 + 1;
      *&v283[4 * v282 + 32] = v119;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v370 = sub_100B3593C(0, *(v370 + 2) + 1, 1, v370);
      }

      v285 = *(v370 + 2);
      v284 = *(v370 + 3);
      if (v285 >= v284 >> 1)
      {
        v370 = sub_100B3593C((v284 > 1), v285 + 1, 1, v370);
      }

      v286 = v370;
      *(v370 + 2) = v285 + 1;
      *&v286[2 * v285 + 32] = v359;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v369 = sub_100B3593C(0, *(v369 + 2) + 1, 1, v369);
      }

      v288 = *(v369 + 2);
      v287 = *(v369 + 3);
      v115 = v288 + 1;
      if (v288 >= v287 >> 1)
      {
        v369 = sub_100B3593C((v287 > 1), v288 + 1, 1, v369);
      }

      v289 = v369;
      *(v369 + 2) = v115;
      *&v289[2 * v288 + 32] = v358;
      if (!v116[2])
      {
        goto LABEL_325;
      }

      v290 = *(v116 + 8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v368 = sub_100B35838(0, *(v368 + 2) + 1, 1, v368);
      }

      v292 = *(v368 + 2);
      v291 = *(v368 + 3);
      v115 = v292 + 1;
      if (v292 >= v291 >> 1)
      {
        v368 = sub_100B35838((v291 > 1), v292 + 1, 1, v368);
      }

      v293 = v368;
      *(v368 + 2) = v115;
      *&v293[4 * v292 + 32] = v290;
      if (v116[2] < 2uLL)
      {
        goto LABEL_326;
      }

      v294 = *(v116 + 9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v367 = sub_100B35838(0, *(v367 + 2) + 1, 1, v367);
      }

      v296 = *(v367 + 2);
      v295 = *(v367 + 3);
      v297 = v360;
      if (v296 >= v295 >> 1)
      {
        v299 = sub_100B35838((v295 > 1), v296 + 1, 1, v367);
        v297 = v360;
        v367 = v299;
      }

      v298 = v367;
      *(v367 + 2) = v296 + 1;
      *&v298[4 * v296 + 32] = v294;
      v115 = v297 + 1;
      sub_100CD7954(v108, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
      v118 = v115;
      v117 = v351;
      if (v115 == v350)
      {

        v300 = v367;
        *(v83 + 32) = v368;
        *(v83 + 40) = v300;
        v301 = v369;
        *(v83 + 64) = v370;
        *(v83 + 72) = v301;
        v302 = v371;
        *(v83 + 48) = v372;
        *(v83 + 56) = v302;
        v303 = v373;
        *(v83 + 16) = v374;
        *(v83 + 24) = v303;
        v304 = v375;
        *v83 = v376;
        *(v83 + 8) = v304;
        goto LABEL_304;
      }
    }
  }

  v368 = _swiftEmptyArrayStorage;
  v369 = _swiftEmptyArrayStorage;
  v370 = _swiftEmptyArrayStorage;
  v371 = _swiftEmptyArrayStorage;
  v372 = _swiftEmptyArrayStorage;
  v373 = _swiftEmptyArrayStorage;
  v374 = _swiftEmptyArrayStorage;
  v375 = _swiftEmptyArrayStorage;
  v367 = _swiftEmptyArrayStorage;
  v376 = _swiftEmptyArrayStorage;
LABEL_304:
  v364 = *(v351 + 16);
  *v109 = v364;
  v305 = v365[6];
  sub_10000BE14(v366 + v305, v110, &qword_101A1ACF8);
  v306 = v357;
  v307 = *(v356 + 48);
  v308 = v307(v110, 1, v357);
  sub_10000CAAC(v110, &qword_101A1ACF8);
  if (v308 != 1)
  {
    v309 = v342;
    sub_10000BE14(v366 + v305, v342, &qword_101A1ACF8);
    if (v307(v309, 1, v306) == 1)
    {
      v310 = v306;
      v311 = v343;
      *v343 = _swiftEmptyArrayStorage;
      UnknownStorage.init()();
      if (v307(v309, 1, v310) != 1)
      {
        sub_10000CAAC(v309, &qword_101A1ACF8);
      }
    }

    else
    {
      v311 = v343;
      sub_100CD78EC(v309, v343, type metadata accessor for CRLProto_Path);
    }

    *(v83 + 88) = sub_100C59324(v311);
  }

  if (v364 != *(v376 + 2) || v364 != *(v375 + 2) || v364 != *(v374 + 2) || v364 != *(v373 + 2) || v364 != *(v372 + 2) || v364 != *(v371 + 2) || v364 != *(v370 + 2) || v364 != *(v369 + 2) || v364 != *(v368 + 2) || v364 != *(v367 + 2))
  {
    v376 = objc_opt_self();
    LODWORD(v116) = [v376 _atomicIncrementAssertCount];
    __src[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, __src);
    StaticString.description.getter();
    v115 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v312 = String._bridgeToObjectiveC()();

    v313 = [v312 lastPathComponent];

    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v110 = v314;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_355;
    }

    goto LABEL_322;
  }

LABEL_323:
  sub_10002640C(v330, v331);
  return sub_100CD7954(v366, type metadata accessor for CRLProto_PKStrokePathData);
}

uint64_t sub_100CD4594(uint64_t a1)
{
  v2 = v1;
  v179 = a1;
  v192 = type metadata accessor for CRLProto_Path(0);
  v3 = *(v192 - 8);
  __chkstk_darwin(v192);
  v180 = (&v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v202 = type metadata accessor for CRLProto_PKStrokePathData.StrokePoint(0);
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v199 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v163 - v7;
  v196 = type metadata accessor for CRLProto_Point(0);
  *&v203 = *(v196 - 8);
  __chkstk_darwin(v196);
  v178 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019F67C0);
  __chkstk_darwin(v10 - 8);
  v176 = &v163 - v11;
  v200 = type metadata accessor for CRLProto_Data(0);
  v197 = *(v200 - 8);
  __chkstk_darwin(v200);
  v177 = (&v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v173 = (&v163 - v14);
  v15 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v15 - 8);
  v191 = &v163 - v16;
  v195 = type metadata accessor for UUID();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&qword_101A1ACE8);
  __chkstk_darwin(v18 - 8);
  v184 = &v163 - v19;
  v20 = type metadata accessor for CRLProto_Date(0);
  v183 = *(v20 - 8);
  v21 = v183;
  __chkstk_darwin(v20);
  v187 = (&v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v25 = (&v163 - v24);
  v26 = type metadata accessor for CRLProto_PKStrokePathData(0);
  __chkstk_darwin(v26);
  v28 = &v163 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v28 = _swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v29 = *(v3 + 56);
  v164 = v26[6];
  v166 = v3 + 56;
  v165 = v29;
  v29(&v28[v164], 1, 1, v192);
  v30 = &v28[v26[7]];
  *v30 = 0;
  v181 = v30;
  v30[4] = 1;
  v31 = v26[8];
  v32 = *(v21 + 56);
  v32(&v28[v31], 1, 1, v20);
  v33 = &v28[v26[9]];
  *v33 = 0.0;
  v167 = v33;
  *(v33 + 4) = 1;
  v34 = &v28[v26[10]];
  *v34 = 0.0;
  v168 = v34;
  *(v34 + 4) = 1;
  v35 = *(v203 + 56);
  v174 = v26[11];
  *&v203 = v203 + 56;
  v175 = v35;
  v35(&v28[v174], 1, 1, v196);
  v36 = *(v197 + 56);
  v188 = v26[12];
  v190 = v197 + 56;
  v189 = v36;
  v36(&v28[v188], 1, 1, v200);
  v171 = v26[13];
  v28[v171] = 2;
  v172 = v26[14];
  v28[v172] = 2;
  v37 = &v28[v26[15]];
  *v37 = 0.0;
  v169 = v37;
  *(v37 + 8) = 1;
  v163 = v26;
  v38 = v26[16];
  v39 = v184;
  v40 = &v28[v38];
  *v40 = 0.0;
  v170 = v40;
  *(v40 + 8) = 1;
  *v25 = 0;
  UnknownStorage.init()();
  sub_10000CAAC(&v28[v31], &qword_101A1ACE8);
  sub_100CD78EC(v25, &v28[v31], type metadata accessor for CRLProto_Date);
  *&v185 = v32;
  v32(&v28[v31], 0, 1, v20);
  v186 = type metadata accessor for CRLPKStrokePathData();
  Date.timeIntervalSinceReferenceDate.getter();
  v42 = v41;
  v198 = v28;
  v43 = v183;
  sub_10000BE14(&v28[v31], v39, &qword_101A1ACE8);
  v44 = *(v43 + 48);
  if (v44(v39, 1, v20) == 1)
  {
    v45 = v187;
    UnknownStorage.init()();
    v46 = v44(v39, 1, v20);
    v47 = v45;
    if (v46 != 1)
    {
      sub_10000CAAC(v39, &qword_101A1ACE8);
    }
  }

  else
  {
    v47 = v187;
    sub_100CD78EC(v39, v187, type metadata accessor for CRLProto_Date);
  }

  *v47 = v42;
  v48 = v198;
  sub_10000CAAC(&v198[v31], &qword_101A1ACE8);
  sub_100CD78EC(v47, v48 + v31, type metadata accessor for CRLProto_Date);
  (v185)(v48 + v31, 0, 1, v20);
  v49 = *(v2 + 96);
  v50 = v195;
  v51 = v193;
  v52 = v186;
  if (v49)
  {
    v53 = v181;
    *v181 = v49;
    *(v53 + 4) = 0;
  }

  v54 = *(v2 + v52[18]);
  v55 = v194;
  v56 = v191;
  if (v54 != 1.0)
  {
    v57 = v167;
    *v167 = v54;
    *(v57 + 4) = 0;
  }

  v58 = *(v2 + v52[19]);
  if (v58 != 1.0)
  {
    v59 = v168;
    *v168 = v58;
    *(v59 + 4) = 0;
  }

  if (*(v2 + v52[24]) == 1)
  {
    *(v48 + v171) = 1;
  }

  if (*(v2 + v52[25]) == 1)
  {
    *(v48 + v172) = 1;
  }

  sub_10000BE14(v2 + v52[20], v56, &qword_1019F6990);
  if ((*(v55 + 48))(v56, 1, v50) == 1)
  {
    sub_10000CAAC(v56, &qword_1019F6990);
  }

  else
  {
    (*(v55 + 32))(v51, v56, v50);
    v60 = v173;
    v185 = xmmword_10146F370;
    *v173 = xmmword_10146F370;
    UnknownStorage.init()();
    v61 = v188;
    sub_10000CAAC(v48 + v188, &qword_1019F67C0);
    sub_100CD78EC(v60, v48 + v61, type metadata accessor for CRLProto_Data);
    v189(v48 + v61, 0, 1, v200);
    v191 = UUID.crl_data()();
    v187 = v62;
    v63 = v48 + v61;
    v64 = v176;
    v65 = v200;
    sub_10000BE14(v63, v176, &qword_1019F67C0);
    v50 = v194;
    v66 = v197 + 48;
    v55 = *(v197 + 48);
    if ((v55)(v64, 1, v65) == 1)
    {
      v197 = v66;
      v67 = v64;
      v51 = v177;
      *v177 = v185;
      UnknownStorage.init()();
      v68 = *(v50 + 8);
      LODWORD(v50) = v50 + 8;
      v68(v193, v195);
      if ((v55)(v67, 1, v65) != 1)
      {
        sub_10000CAAC(v67, &qword_1019F67C0);
      }
    }

    else
    {
      v69 = *(v50 + 8);
      LODWORD(v50) = v50 + 8;
      v69(v193, v195);
      v70 = v64;
      v51 = v177;
      sub_100CD78EC(v70, v177, type metadata accessor for CRLProto_Data);
    }

    sub_10002640C(*v51, *(v51 + 8));
    v71 = v187;
    *v51 = v191;
    *(v51 + 8) = v71;
    v72 = v188;
    sub_10000CAAC(v48 + v188, &qword_1019F67C0);
    sub_100CD78EC(v51, v48 + v72, type metadata accessor for CRLProto_Data);
    v189(v48 + v72, 0, 1, v65);
  }

  v73 = (v2 + v52[21]);
  if ((v73[1] & 1) == 0)
  {
    v74 = *v73;
    v55 = v196;
    v50 = v178;
    UnknownStorage.init()();
    *v50 = v74;
    v75 = v174;
    sub_10000CAAC(v48 + v174, &qword_101A15CE8);
    sub_100CD78EC(v50, v48 + v75, type metadata accessor for CRLProto_Point);
    v175(v48 + v75, 0, 1, v55);
  }

  v76 = *(v2 + v52[22]);
  if (v76 != 0.0)
  {
    v77 = v169;
    *v169 = v76;
    *(v77 + 8) = 0;
  }

  v78 = *(v2 + v52[23]);
  if (v78 != 0.0)
  {
    v79 = v170;
    *v170 = v78;
    *(v79 + 8) = 0;
  }

  v80 = *(v2 + 80);
  v81 = v199;
  if (v80 < 0)
  {
    goto LABEL_126;
  }

  if (v80)
  {
    v50 = 0;
    v82 = _swiftEmptyArrayStorage;
    v51 = 32;
    v203 = xmmword_10146F370;
    v200 = v80;
    while (1)
    {
      v83 = v203;
      *v8 = v203;
      *(v8 + 1) = v83;
      *(v8 + 2) = v83;
      *(v8 + 3) = v83;
      *(v8 + 4) = v83;
      *(v8 + 5) = v83;
      *(v8 + 6) = v83;
      *(v8 + 7) = v83;
      *(v8 + 8) = v83;
      UnknownStorage.init()();
      v84 = *(v2 + 8);
      v85 = *(v84 + 16);
      v86 = v84 + 2 * v50;
      if (!v50)
      {
        goto LABEL_35;
      }

      if (v50 >= v85)
      {
        goto LABEL_114;
      }

      if (*(v86 + 32) == *(v86 + 30))
      {
        v55 = 0;
        v87 = 0xC000000000000000;
      }

      else
      {
LABEL_35:
        if (v50 >= v85)
        {
          goto LABEL_108;
        }

        LOWORD(v204) = *(v86 + 32);
        v55 = sub_100AE5050(&v204, &v204 + 2);
        v87 = v88;
      }

      sub_10002640C(*v8, *(v8 + 1));
      *v8 = v55;
      *(v8 + 1) = v87;
      v89 = *(*v2 + 16);
      v90 = *v2 + 2 * v50;
      if (!v50)
      {
        goto LABEL_41;
      }

      if (v50 >= v89)
      {
        goto LABEL_115;
      }

      if (*(v90 + 32) == *(v90 + 30))
      {
        v55 = 0;
        v91 = 0xC000000000000000;
      }

      else
      {
LABEL_41:
        if (v50 >= v89)
        {
          goto LABEL_109;
        }

        LOWORD(v204) = *(v90 + 32);
        v55 = sub_100AE5050(&v204, &v204 + 2);
        v91 = v92;
      }

      sub_10002640C(*(v8 + 2), *(v8 + 3));
      *(v8 + 2) = v55;
      *(v8 + 3) = v91;
      v93 = *(v2 + 16);
      v94 = *(v93 + 16);
      v95 = v93 + 2 * v50;
      if (!v50)
      {
        goto LABEL_47;
      }

      if (v50 >= v94)
      {
        goto LABEL_116;
      }

      if (*(v95 + 32) == *(v95 + 30))
      {
        v55 = 0;
        v96 = 0xC000000000000000;
      }

      else
      {
LABEL_47:
        if (v50 >= v94)
        {
          goto LABEL_110;
        }

        LOWORD(v204) = *(v95 + 32);
        v55 = sub_100AE5050(&v204, &v204 + 2);
        v96 = v97;
      }

      sub_10002640C(*(v8 + 4), *(v8 + 5));
      *(v8 + 4) = v55;
      *(v8 + 5) = v96;
      v98 = *(v2 + 24);
      v99 = *(v98 + 16);
      v100 = v98 + 2 * v50;
      if (!v50)
      {
        goto LABEL_53;
      }

      if (v50 >= v99)
      {
        goto LABEL_117;
      }

      if (*(v100 + 32) == *(v100 + 30))
      {
        v55 = 0;
        v101 = 0xC000000000000000;
      }

      else
      {
LABEL_53:
        if (v50 >= v99)
        {
          goto LABEL_111;
        }

        LOWORD(v204) = *(v100 + 32);
        v55 = sub_100AE5050(&v204, &v204 + 2);
        v101 = v102;
      }

      sub_10002640C(*(v8 + 6), *(v8 + 7));
      *(v8 + 6) = v55;
      *(v8 + 7) = v101;
      v103 = *(v2 + 48);
      v104 = *(v103 + 16);
      if (!v50)
      {
        goto LABEL_59;
      }

      if (v50 >= v104)
      {
        goto LABEL_118;
      }

      if (*(v103 + v51) == *(v103 + 4 * v50 + 28))
      {
        v55 = 0;
        v105 = 0xC000000000000000;
      }

      else
      {
LABEL_59:
        if (v50 >= v104)
        {
          goto LABEL_123;
        }

        LODWORD(v204) = *(v103 + v51);
        v55 = sub_100AE5050(&v204, &v204 + 4);
        v105 = v106;
      }

      sub_10002640C(*(v8 + 10), *(v8 + 11));
      *(v8 + 10) = v55;
      *(v8 + 11) = v105;
      v107 = *(v2 + 56);
      v108 = *(v107 + 16);
      if (!v50)
      {
        goto LABEL_65;
      }

      if (v50 >= v108)
      {
        goto LABEL_119;
      }

      if (*(v107 + v51) == *(v107 + 4 * v50 + 28))
      {
        v55 = 0;
        v109 = 0xC000000000000000;
      }

      else
      {
LABEL_65:
        if (v50 >= v108)
        {
          goto LABEL_124;
        }

        LODWORD(v204) = *(v107 + v51);
        v55 = sub_100AE5050(&v204, &v204 + 4);
        v109 = v110;
      }

      sub_10002640C(*(v8 + 12), *(v8 + 13));
      *(v8 + 12) = v55;
      *(v8 + 13) = v109;
      v111 = *(v2 + 64);
      v112 = *(v111 + 16);
      v113 = v111 + 2 * v50;
      if (!v50)
      {
        goto LABEL_71;
      }

      if (v50 >= v112)
      {
        goto LABEL_120;
      }

      if (*(v113 + 32) == *(v113 + 30))
      {
        v55 = 0;
        v114 = 0xC000000000000000;
      }

      else
      {
LABEL_71:
        if (v50 >= v112)
        {
          goto LABEL_112;
        }

        LOWORD(v204) = *(v113 + 32);
        v55 = sub_100AE5050(&v204, &v204 + 2);
        v114 = v115;
      }

      sub_10002640C(*(v8 + 14), *(v8 + 15));
      *(v8 + 14) = v55;
      *(v8 + 15) = v114;
      v116 = *(v2 + 72);
      v117 = *(v116 + 16);
      v118 = v116 + 2 * v50;
      if (!v50)
      {
        goto LABEL_77;
      }

      if (v50 >= v117)
      {
        goto LABEL_121;
      }

      if (*(v118 + 32) == *(v118 + 30))
      {
        v55 = 0;
        v119 = 0xC000000000000000;
      }

      else
      {
LABEL_77:
        if (v50 >= v117)
        {
          goto LABEL_113;
        }

        LOWORD(v204) = *(v118 + 32);
        v55 = sub_100AE5050(&v204, &v204 + 2);
        v119 = v120;
      }

      sub_10002640C(*(v8 + 16), *(v8 + 17));
      *(v8 + 16) = v55;
      *(v8 + 17) = v119;
      if (!v50)
      {
        goto LABEL_85;
      }

      v121 = *(v2 + 32);
      if (v50 >= *(v121 + 16))
      {
        goto LABEL_122;
      }

      if (*(v121 + 4 * v50 + 32) == *(v121 + 4 * v50 + 28))
      {
        v122 = *(v2 + 40);
        if (v50 >= *(v122 + 16))
        {
          goto LABEL_125;
        }

        v123 = v122 + 4 * v50;
        v125 = *(v123 + 28);
        v124 = *(v123 + 32);
        sub_10002640C(*(v8 + 8), *(v8 + 9));
        *(v8 + 4) = v203;
        if (v124 == v125)
        {
          goto LABEL_89;
        }
      }

      else
      {
LABEL_85:
        sub_10002640C(*(v8 + 8), *(v8 + 9));
        *(v8 + 4) = v203;
      }

      v126 = *(v2 + 32);
      if (v50 >= *(v126 + 16))
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
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
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        swift_once();
LABEL_98:
        v138 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v50;
        v140 = sub_1005CF000();
        *(inited + 96) = v140;
        v141 = sub_100CD7ADC(&qword_1019F52E0, sub_1005CF000);
        *(inited + 104) = v141;
        *(inited + 72) = v55;
        *(inited + 136) = &type metadata for String;
        v142 = sub_1000053B0();
        *(inited + 112) = v81;
        *(inited + 120) = v51;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v142;
        *(inited + 152) = 370;
        v143 = v204;
        *(inited + 216) = v140;
        *(inited + 224) = v141;
        *(inited + 192) = v143;
        v144 = v55;
        v145 = v143;
        v146 = static os_log_type_t.error.getter();
        sub_100005404(v138, &_mh_execute_header, v146, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v147 = static os_log_type_t.error.getter();
        sub_100005404(v138, &_mh_execute_header, v147, "Encoded inconsistent point counts.", 34, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v148 = swift_allocObject();
        v148[2] = 8;
        v148[3] = 0;
        v148[4] = 0;
        v148[5] = 0;
        v149 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v150 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v151 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v152 = String._bridgeToObjectiveC()();

        [v203 handleFailureInFunction:v150 file:v151 lineNumber:370 isFatal:0 format:v152 args:v149];

        goto LABEL_99;
      }

      LODWORD(v204) = *(v126 + 4 * v50 + 32);
      v127 = sub_100AE5050(&v204, &v204 + 4);
      v81 = v128;
      v55 = (v8 + 64);
      Data.append(_:)();
      sub_10002640C(v127, v81);
      v129 = *(v2 + 40);
      if (v50 >= *(v129 + 16))
      {
        goto LABEL_107;
      }

      LODWORD(v204) = *(v129 + 4 * v50 + 32);
      v130 = sub_100AE5050(&v204, &v204 + 4);
      v132 = v131;
      Data.append(_:)();
      sub_10002640C(v130, v132);
      v81 = v199;
LABEL_89:
      sub_100CD7A08(v8, v81, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_100B38D08(0, v82[2] + 1, 1, v82);
      }

      v134 = v82[2];
      v133 = v82[3];
      v55 = v134 + 1;
      if (v134 >= v133 >> 1)
      {
        v82 = sub_100B38D08(v133 > 1, v134 + 1, 1, v82);
      }

      ++v50;
      v82[2] = v55;
      sub_100CD78EC(v81, v82 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v134, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
      sub_100CD7954(v8, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint);
      v51 += 4;
      v80 = v200;
      if (v200 == v50)
      {
        *v198 = v82;
        goto LABEL_96;
      }
    }
  }

  v82 = _swiftEmptyArrayStorage;
LABEL_96:
  if (v80 != v82[2])
  {
    *&v203 = objc_opt_self();
    LODWORD(v50) = [v203 _atomicIncrementAssertCount];
    v204 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v204);
    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v135 = String._bridgeToObjectiveC()();

    v136 = [v135 lastPathComponent];

    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v137;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_127;
    }

    goto LABEL_98;
  }

LABEL_99:
  v153 = *(v2 + 88);
  if (v153)
  {
    v154 = v180;
    v155 = v182;
    sub_100C57B44(v153, v180);
    v156 = v155;
    if (v155)
    {
      return sub_100CD7954(v198, type metadata accessor for CRLProto_PKStrokePathData);
    }

    v157 = v198;
    v158 = v164;
    sub_10000CAAC(&v198[v164], &qword_101A1ACF8);
    sub_100CD78EC(v154, &v157[v158], type metadata accessor for CRLProto_Path);
    v165(&v157[v158], 0, 1, v192);
  }

  else
  {
    v156 = v182;
  }

  dispatch thunk of CREncoder.valueContainer()();
  if (!v156)
  {
    sub_100CD7ADC(&qword_101A1ACF0, type metadata accessor for CRLProto_PKStrokePathData);
    v159 = Message.serializedData(partial:)();
    v161 = v160;
    dispatch thunk of CREncoder.CRValueContainer.encode(_:)();
    sub_10002640C(v159, v161);
  }

  return sub_100CD7954(v198, type metadata accessor for CRLProto_PKStrokePathData);
}

uint64_t sub_100CD5E34(char a1)
{
  result = 0x446874756D697A61;
  switch(a1)
  {
    case 1:
      return 0x6564757469746C61;
    case 2:
      v3 = 0x446563726F66;
      goto LABEL_16;
    case 3:
      return 0x447974696361706FLL;
    case 4:
      v3 = 0x4458657A6973;
      goto LABEL_16;
    case 5:
      v3 = 0x4459657A6973;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 6:
      result = 0x7366664F656D6974;
      break;
    case 7:
      result = 0x4432737569646172;
      break;
    case 8:
      result = 0x7464695765676465;
      break;
    case 9:
      result = 0x6C6F687365726874;
      break;
    case 10:
      result = 0x756F43746E696F70;
      break;
    case 11:
      result = 0x687461506B73616DLL;
      break;
    case 12:
      result = 0x65536D6F646E6172;
      break;
    case 13:
      result = 0x6E6F697461657263;
      break;
    case 14:
    case 15:
      result = 0x63537265646E6572;
      break;
    case 16:
      result = 0x72477265646E6572;
      break;
    case 17:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0x656C636974726170;
      break;
    case 19:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0x6F53646C756F6873;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100CD60D0(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A1AD20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100CD79B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v16 = 0;
  sub_1005B981C(&qword_101A1AD10);
  sub_100CD7A70(&qword_101A1AD28);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = v3[1];
    v16 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[2];
    v16 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[3];
    v16 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[4];
    v16 = 4;
    sub_1005B981C(&qword_101A13AF8);
    v13[1] = sub_100B99D44(&qword_101A13B30);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[5];
    v16 = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[6];
    v16 = 6;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[7];
    v16 = 7;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[8];
    v16 = 8;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3[9];
    v16 = 9;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = v3[11];
    v16 = 11;
    sub_1009CF2EC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = type metadata accessor for CRLPKStrokePathData();
    LOBYTE(v14) = 13;
    type metadata accessor for Date();
    sub_100CD7ADC(&qword_101A19AD0, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 16;
    type metadata accessor for UUID();
    sub_100CD7ADC(&qword_1019F43C0, &type metadata accessor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = v3 + *(v9 + 84);
    v11 = *v10;
    LOBYTE(v10) = v10[8];
    v14 = v11;
    v15 = v10;
    v16 = 17;
    sub_1009CF3B0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 20;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 21;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100CD6770@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v42 = a2;
  v2 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v2 - 8);
  v49 = v34 - v3;
  v47 = type metadata accessor for Date();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A1AD00);
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v7 = v34 - v6;
  v8 = type metadata accessor for CRLPKStrokePathData();
  v9 = (v8 - 8);
  __chkstk_darwin(v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = _swiftEmptyArrayStorage;
  *(v11 + 1) = _swiftEmptyArrayStorage;
  *(v11 + 2) = _swiftEmptyArrayStorage;
  *(v11 + 3) = _swiftEmptyArrayStorage;
  *(v11 + 4) = _swiftEmptyArrayStorage;
  *(v11 + 5) = _swiftEmptyArrayStorage;
  *(v11 + 6) = _swiftEmptyArrayStorage;
  *(v11 + 7) = _swiftEmptyArrayStorage;
  *(v11 + 8) = _swiftEmptyArrayStorage;
  *(v11 + 9) = _swiftEmptyArrayStorage;
  *(v11 + 10) = 0;
  v48 = (v11 + 80);
  *(v11 + 11) = 0;
  *(v11 + 24) = 0;
  v44 = v9[19];
  static Date.now.getter();
  v43 = v9[20];
  *&v11[v43] = 1065353216;
  v39 = v9[21];
  *&v11[v39] = 1065353216;
  v12 = v9[22];
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 56);
  v40 = v12;
  v14(&v11[v12], 1, 1, v13);
  v15 = &v11[v9[23]];
  *v15 = 0;
  v15[8] = 1;
  v41 = v9[24];
  *&v11[v41] = 0;
  v16 = v9[25];
  *&v11[v16] = 0;
  v17 = v9[26];
  v11[v17] = 0;
  v18 = v9[27];
  v54 = v11;
  v11[v18] = 0;
  sub_100020E58(v55, v55[3]);
  sub_100CD79B4();
  v52 = v7;
  v19 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    v30 = v54;
  }

  else
  {
    v53 = v13;
    v35 = v15;
    v36 = v16;
    v37 = v17;
    v38 = v18;
    v20 = v49;
    sub_1005B981C(&qword_101A1AD10);
    v58 = 0;
    sub_100CD7A70(&qword_101A1AD18);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v54;
    *v54 = v56;
    v58 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22[1] = v56;
    v58 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22[2] = v56;
    v58 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22[3] = v56;
    sub_1005B981C(&qword_101A13AF8);
    v58 = 4;
    v34[1] = sub_100B99D44(&qword_101A13B00);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22[4] = v56;
    v58 = 5;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22[5] = v56;
    v58 = 6;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22[6] = v56;
    v58 = 7;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22[7] = v56;
    v58 = 8;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22[8] = v56;
    v58 = 9;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v54 + 9) = v56;
    LOBYTE(v56) = 10;
    *v48 = KeyedDecodingContainer.decode(_:forKey:)();
    v58 = 11;
    sub_1009CF1DC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v54 + 11) = v56;
    LOBYTE(v56) = 12;
    *(v54 + 24) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v56) = 13;
    sub_100CD7ADC(&qword_101A19C70, &type metadata accessor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v45 + 40))(&v54[v44], v46, v47);
    LOBYTE(v56) = 14;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v54[v43] = v23;
    LOBYTE(v56) = 15;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v54[v39] = v24;
    LOBYTE(v56) = 16;
    sub_100CD7ADC(&qword_1019F43A8, &type metadata accessor for UUID);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100803880(v20, &v54[v40]);
    v58 = 17;
    sub_1009CF230();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v57;
    v26 = v35;
    *v35 = v56;
    v26[8] = v25;
    LOBYTE(v56) = 18;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v54[v41] = v27;
    LOBYTE(v56) = 19;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v54[v36] = v28;
    LOBYTE(v56) = 20;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v54;
    v54[v37] = v29 & 1;
    LOBYTE(v56) = 21;
    v31 = v51;
    v32 = v52;
    v33 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v50 + 8))(v32, v31);
    *(v30 + v38) = v33 & 1;
    sub_100CD7A08(v30, v42, type metadata accessor for CRLPKStrokePathData);
  }

  sub_100005070(v55);
  return sub_100CD7954(v30, type metadata accessor for CRLPKStrokePathData);
}

uint64_t sub_100CD7140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100CD7D7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100CD7174(uint64_t a1)
{
  v2 = sub_100CD79B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100CD71B0(uint64_t a1)
{
  v2 = sub_100CD79B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100CD7280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100CD7ADC(&qword_101A1AD30, type metadata accessor for CRLPKStrokePathData);
  v7 = sub_100CD7ADC(&qword_101A1AD38, type metadata accessor for CRLPKStrokePathData);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100CD7394(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = *(*a1 + 16);
  if (v17 != *(*a2 + 16))
  {
    goto LABEL_32;
  }

  if (v17 && v15 != v16)
  {
    v18 = (v15 + 32);
    v19 = (v16 + 32);
    while (*v18 == *v19)
    {
      ++v18;
      ++v19;
      if (!--v17)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_32;
  }

LABEL_7:
  v20 = v12;
  if ((sub_100671D58(a1[1], a2[1]) & 1) == 0 || (sub_100671D58(a1[2], a2[2]) & 1) == 0 || (sub_100671D58(a1[3], a2[3]) & 1) == 0 || (sub_1006709AC(a1[4], a2[4]) & 1) == 0 || (sub_1006709AC(a1[5], a2[5]) & 1) == 0 || (sub_1006709AC(a1[6], a2[6]) & 1) == 0 || (sub_1006709AC(a1[7], a2[7]) & 1) == 0 || (sub_100671D58(a1[8], a2[8]) & 1) == 0 || (sub_100671D58(a1[9], a2[9]) & 1) == 0 || a1[10] != a2[10])
  {
    goto LABEL_32;
  }

  v21 = a1[11];
  v22 = a2[11];
  if (v21)
  {
    if (!v22 || !sub_10067063C(v21, v22))
    {
      goto LABEL_32;
    }
  }

  else if (v22)
  {
    goto LABEL_32;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_32;
  }

  v23 = type metadata accessor for CRLPKStrokePathData();
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(a1 + v23[18]) != *(a2 + v23[18]) || *(a1 + v23[19]) != *(a2 + v23[19]))
  {
    goto LABEL_32;
  }

  v24 = v23[20];
  v25 = *(v20 + 48);
  sub_10000BE14(a1 + v24, v14, &qword_1019F6990);
  v37 = v25;
  sub_10000BE14(a2 + v24, &v14[v25], &qword_1019F6990);
  v26 = *(v5 + 48);
  if (v26(v14, 1, v4) == 1)
  {
    if (v26(&v14[v37], 1, v4) == 1)
    {
      sub_10000CAAC(v14, &qword_1019F6990);
      goto LABEL_35;
    }

LABEL_31:
    sub_10000CAAC(v14, &unk_101A0AFE0);
    goto LABEL_32;
  }

  sub_10000BE14(v14, v10, &qword_1019F6990);
  if (v26(&v14[v37], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_31;
  }

  (*(v5 + 32))(v7, &v14[v37], v4);
  sub_100CD7ADC(&qword_1019F37C0, &type metadata accessor for UUID);
  v29 = dispatch thunk of static Equatable.== infix(_:_:)();
  v30 = *(v5 + 8);
  v30(v7, v4);
  v30(v10, v4);
  sub_10000CAAC(v14, &qword_1019F6990);
  if ((v29 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  v31 = v23[21];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (v35)
    {
      goto LABEL_41;
    }

LABEL_32:
    v27 = 0;
    return v27 & 1;
  }

  if (v35)
  {
    goto LABEL_32;
  }

  v27 = 0;
  if (COERCE_FLOAT(*v32) == COERCE_FLOAT(*v34) && COERCE_FLOAT(HIDWORD(*v32)) == COERCE_FLOAT(HIDWORD(*v34)))
  {
LABEL_41:
    if (*(a1 + v23[22]) == *(a2 + v23[22]) && *(a1 + v23[23]) == *(a2 + v23[23]) && *(a1 + v23[24]) == *(a2 + v23[24]))
    {
      v27 = *(a1 + v23[25]) ^ *(a2 + v23[25]) ^ 1;
      return v27 & 1;
    }

    goto LABEL_32;
  }

  return v27 & 1;
}

uint64_t sub_100CD78EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100CD7954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100CD79B4()
{
  result = qword_101A1AD08;
  if (!qword_101A1AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD08);
  }

  return result;
}

uint64_t sub_100CD7A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100CD7A70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A1AD10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100CD7ADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for CRLPKStrokePathData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLPKStrokePathData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100CD7C78()
{
  result = qword_101A1AD40;
  if (!qword_101A1AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD40);
  }

  return result;
}

unint64_t sub_100CD7CD0()
{
  result = qword_101A1AD48;
  if (!qword_101A1AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD48);
  }

  return result;
}

unint64_t sub_100CD7D28()
{
  result = qword_101A1AD50;
  if (!qword_101A1AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD50);
  }

  return result;
}

uint64_t sub_100CD7D7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x446874756D697A61 && a2 == 0xEB00000000617461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xEC00000061746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446563726F66 && a2 == 0xE900000000000061 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x447974696361706FLL && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614458657A6973 && a2 == 0xE900000000000061 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614459657A6973 && a2 == 0xE900000000000061 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7366664F656D6974 && a2 == 0xEE00617461447465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4432737569646172 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7464695765676465 && a2 == 0xED00006174614468 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xED00006174614464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x756F43746E696F70 && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x687461506B73616DLL && a2 == 0xEC00000061746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x63537265646E6572 && a2 == 0xEC00000058656C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x63537265646E6572 && a2 == 0xEC00000059656C61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x72477265646E6572 && a2 == 0xED0000444970756FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101599BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x656C636974726170 && a2 == 0xEE0074657366664FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101599BC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6F53646C756F6873 && a2 == 0xEF6874614D65766CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101599BE0 == a2)
  {

    return 21;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 21;
    }

    else
    {
      return 22;
    }
  }
}

id sub_100CD8490(void *a1, double a2, double a3)
{
  v6 = sub_1005B981C(&unk_1019FFD10);
  v116 = *(v6 - 8);
  v117 = v6;
  __chkstk_darwin(v6);
  v8 = &v108 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v115 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v108 - v19;
  result = [a1 smartFieldAtPoint:{a2, a3}];
  if (result)
  {
    v21 = result;
    v114 = v16;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22 && (v23 = v22, (v24 = [v22 url]) != 0))
    {
      v112 = v21;
      v113 = v15;
      v25 = v23;
      v26 = v118;
      v27 = v24;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v111 = v25;
      if (sub_1006C1280())
      {
        v28 = [a1 interactiveCanvasController];
        if (!v28)
        {
          goto LABEL_32;
        }

        v29 = v28;
        if (![v28 allowedToShowHyperlinkContextMenuForRep:a1] || (v30 = objc_msgSend(v29, "editorController")) == 0)
        {

          goto LABEL_32;
        }

        v31 = v30;
        v32 = [v30 currentEditors];

        sub_1005B981C(&qword_101A09750);
        v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v33 >> 62)
        {
          v34 = _CocoaArrayWrapper.endIndex.getter();
          if (v34)
          {
LABEL_10:
            v35 = __OFSUB__(v34, 1);
            v36 = v34 - 1;
            if (v35)
            {
              __break(1u);
            }

            else if ((v33 & 0xC000000000000001) == 0)
            {
              if ((v36 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v36 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                swift_unknownObjectRetain();
LABEL_15:

                objc_opt_self();
                v37 = swift_dynamicCastObjCClass();
                if (v37)
                {
                  v33 = [v37 wpEditors];
                  swift_unknownObjectRelease();
                  type metadata accessor for CRLWPEditor();
                  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  if (!(v32 >> 62))
                  {
                    v38 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v38)
                    {
                      goto LABEL_18;
                    }

                    goto LABEL_46;
                  }

LABEL_51:
                  v38 = _CocoaArrayWrapper.endIndex.getter();
                  if (v38)
                  {
LABEL_18:
                    v35 = __OFSUB__(v38, 1);
                    v39 = v38 - 1;
                    if (v35)
                    {
                      __break(1u);
                    }

                    else if ((v32 & 0xC000000000000001) == 0)
                    {
                      if ((v39 & 0x8000000000000000) != 0)
                      {
                        __break(1u);
                      }

                      else if (v39 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v40 = *(v32 + 8 * v39 + 32);
                        goto LABEL_23;
                      }

                      __break(1u);
                      goto LABEL_57;
                    }

                    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
                    v41 = v40;

                    v42 = *(*&v41[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
                    if (v42)
                    {
                      v43 = *&v42[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
                      if (v43)
                      {
                        v110 = v41;
                        (*(*v43 + 896))(result);
                        sub_1005E0A78(&v11[v9[5]], v14);
                        v44 = v42;
                        sub_1005E0ADC(v11, type metadata accessor for CRLWPShapeItemCRDTData);
                        v46 = v116;
                        v45 = v117;
                        (*(v116 + 16))(v8, v14, v117);
                        sub_1005E0ADC(v14, type metadata accessor for CRLWPStorageCRDTData);
                        v47 = CRAttributedString.attributedString.getter();
                        (*(v46 + 8))(v8, v45);
                        v48 = [v47 string];

                        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v51 = v50;

                        v52 = [v111 parentStorage];
                        v109 = v29;
                        if (v52)
                        {
                          v53 = [v52 string];
                          swift_unknownObjectRelease();
                          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                          v56 = v55;

                          v57 = v118;
                          if (v49 == v54 && v51 == v56)
                          {

                            goto LABEL_42;
                          }

                          v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v81)
                          {
LABEL_42:
                            v11 = objc_opt_self();
                            LODWORD(v33) = [v11 _atomicIncrementAssertCount];
                            v119 = [objc_allocWithZone(NSString) init];
                            sub_100604538(_swiftEmptyArrayStorage, &v119);
                            StaticString.description.getter();
                            v9 = String._bridgeToObjectiveC()();

                            StaticString.description.getter();
                            v82 = String._bridgeToObjectiveC()();

                            v83 = [v82 lastPathComponent];

                            v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v17 = v84;

                            if (qword_1019F20A0 == -1)
                            {
LABEL_43:
                              v85 = static OS_os_log.crlAssert;
                              sub_1005B981C(&qword_1019F54E0);
                              inited = swift_initStackObject();
                              *(inited + 16) = xmmword_10146CA70;
                              *(inited + 56) = &type metadata for Int32;
                              *(inited + 64) = &protocol witness table for Int32;
                              *(inited + 32) = v33;
                              v87 = sub_100006370(0, &qword_1019F4D30);
                              *(inited + 96) = v87;
                              v88 = sub_1005CF04C();
                              *(inited + 104) = v88;
                              *(inited + 72) = v9;
                              *(inited + 136) = &type metadata for String;
                              v89 = sub_1000053B0();
                              *(inited + 112) = v32;
                              *(inited + 120) = v17;
                              *(inited + 176) = &type metadata for UInt;
                              *(inited + 184) = &protocol witness table for UInt;
                              *(inited + 144) = v89;
                              *(inited + 152) = 35;
                              v90 = v119;
                              *(inited + 216) = v87;
                              *(inited + 224) = v88;
                              *(inited + 192) = v90;
                              v91 = v9;
                              v92 = v90;
                              v93 = static os_log_type_t.error.getter();
                              sub_100005404(v85, &_mh_execute_header, v93, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
                              swift_setDeallocating();
                              sub_1005B981C(&unk_1019F5670);
                              swift_arrayDestroy();
                              v94 = static os_log_type_t.error.getter();
                              sub_100005404(v85, &_mh_execute_header, v94, "The hyperlink content should not be edited while generating preview.", 68, 2, _swiftEmptyArrayStorage);

                              type metadata accessor for __VaListBuilder();
                              v95 = swift_allocObject();
                              v95[2] = 8;
                              v95[3] = 0;
                              v95[4] = 0;
                              v95[5] = 0;
                              v96 = __VaListBuilder.va_list()();
                              StaticString.description.getter();
                              v97 = String._bridgeToObjectiveC()();

                              StaticString.description.getter();
                              v79 = String._bridgeToObjectiveC()();

                              StaticString.description.getter();
                              v80 = String._bridgeToObjectiveC()();

                              [v11 handleFailureInFunction:v97 file:v79 lineNumber:35 isFatal:0 format:v80 args:v96];

LABEL_35:

                              (*(v114 + 8))(v118, v113);
                              return 0;
                            }

LABEL_57:
                            swift_once();
                            goto LABEL_43;
                          }
                        }

                        else
                        {

                          v57 = v118;
                        }

                        if ((sub_100CD94AC(v111) & 1) == 0)
                        {
                          v98 = v114;
                          v99 = v115;
                          v116 = *(v114 + 16);
                          (v116)(v115, v57, v113);
                          v100 = (*(v98 + 80) + 16) & ~*(v98 + 80);
                          v117 = swift_allocObject();
                          v101 = *(v98 + 32);
                          v102 = v113;
                          v101(v117 + v100, v99, v113);
                          (v116)(v99, v57, v102);
                          v103 = swift_allocObject();
                          v101(v103 + v100, v99, v102);
                          v104 = objc_opt_self();
                          v123 = sub_100CDA1E4;
                          v124 = v117;
                          v119 = _NSConcreteStackBlock;
                          v120 = *"";
                          v121 = sub_1006499AC;
                          v122 = &unk_1018A0598;
                          v105 = _Block_copy(&v119);
                          swift_retain_n();

                          v123 = sub_100CDA244;
                          v124 = v103;
                          v119 = _NSConcreteStackBlock;
                          v120 = *"";
                          v121 = sub_1006465C4;
                          v122 = &unk_1018A05C0;
                          v106 = _Block_copy(&v119);

                          v107 = [v104 configurationWithIdentifier:0 previewProvider:v105 actionProvider:v106];

                          _Block_release(v106);
                          _Block_release(v105);

                          (*(v114 + 8))(v118, v102);
                          return v107;
                        }

                        goto LABEL_42;
                      }
                    }

                    else
                    {
                      __break(1u);
                    }

                    __break(1u);
                    return result;
                  }

                  goto LABEL_46;
                }

                swift_unknownObjectRelease();
LABEL_32:
                v58 = objc_opt_self();
                v59 = [v58 _atomicIncrementAssertCount];
                v119 = [objc_allocWithZone(NSString) init];
                sub_100604538(_swiftEmptyArrayStorage, &v119);
                StaticString.description.getter();
                v60 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v61 = String._bridgeToObjectiveC()();

                v62 = [v61 lastPathComponent];

                v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v65 = v64;

                if (qword_1019F20A0 != -1)
                {
                  swift_once();
                }

                v66 = static OS_os_log.crlAssert;
                sub_1005B981C(&qword_1019F54E0);
                v67 = swift_initStackObject();
                *(v67 + 16) = xmmword_10146CA70;
                *(v67 + 56) = &type metadata for Int32;
                *(v67 + 64) = &protocol witness table for Int32;
                *(v67 + 32) = v59;
                v68 = sub_100006370(0, &qword_1019F4D30);
                *(v67 + 96) = v68;
                v69 = sub_1005CF04C();
                *(v67 + 104) = v69;
                *(v67 + 72) = v60;
                *(v67 + 136) = &type metadata for String;
                v70 = sub_1000053B0();
                *(v67 + 112) = v63;
                *(v67 + 120) = v65;
                *(v67 + 176) = &type metadata for UInt;
                *(v67 + 184) = &protocol witness table for UInt;
                *(v67 + 144) = v70;
                *(v67 + 152) = 29;
                v71 = v119;
                *(v67 + 216) = v68;
                *(v67 + 224) = v69;
                *(v67 + 192) = v71;
                v72 = v60;
                v73 = v71;
                v74 = static os_log_type_t.error.getter();
                sub_100005404(v66, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v67);
                swift_setDeallocating();
                sub_1005B981C(&unk_1019F5670);
                swift_arrayDestroy();
                v75 = static os_log_type_t.error.getter();
                sub_100005404(v66, &_mh_execute_header, v75, "Unable to build context menu configuration", 42, 2, _swiftEmptyArrayStorage);

                type metadata accessor for __VaListBuilder();
                v76 = swift_allocObject();
                v76[2] = 8;
                v76[3] = 0;
                v76[4] = 0;
                v76[5] = 0;
                v77 = __VaListBuilder.va_list()();
                StaticString.description.getter();
                v78 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v79 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v80 = String._bridgeToObjectiveC()();

                [v58 handleFailureInFunction:v78 file:v79 lineNumber:29 isFatal:0 format:v80 args:v77];

                goto LABEL_35;
              }

              __break(1u);
              goto LABEL_51;
            }

            specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_15;
          }
        }

        else
        {
          v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v34)
          {
            goto LABEL_10;
          }
        }

LABEL_46:

        goto LABEL_32;
      }

      (*(v114 + 8))(v26, v113);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id sub_100CD94AC(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = [result editorController];

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for CRLWPEditor();
  v6 = [v5 currentEditorsOfClass:swift_getObjCClassFromMetadata()];

  sub_1005B981C(&qword_101A09750);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = v7 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v8 < 1)
  {
    return 0;
  }

  result = [*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionForEditor:v1];
  if (!result)
  {
    return result;
  }

  v9 = result;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

    return 0;
  }

  v11 = [v10 range];
  v13 = v12;
  v14 = [a1 range];
  v16 = v15;

  return (v11 <= v14 && &v11[v13] >= &v14[v16]);
}

id sub_100CD964C()
{
  v0 = objc_allocWithZone(CRLSelectionAwareSafariViewController);
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = [v0 initWithURL:v2];

  return v4;
}

UIMenu sub_100CD96A4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v19 = sub_100006370(0, &qword_1019F6C00);
  sub_1005B981C(&unk_1019F4D60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101465920;
  v18 = sub_100006370(0, &qword_1019F6190);
  v7 = [objc_opt_self() mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() systemImageNamed:v11];

  (*(v4 + 16))(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  (*(v4 + 32))(v14 + v13, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v6 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v15, 0, v20, 0, 0xFFFFFFFFFFFFFFFFLL, v6, v17);
}

uint64_t sub_100CD9990(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v4 + 32))(v11 + v10, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_10064191C(0, 0, v8, &unk_1014AAF68, v11);
}

uint64_t sub_100CD9B80()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CD9C14, v2, v1);
}

uint64_t sub_100CD9C14()
{
  v1 = *(v0 + 16);

  sub_100878B04(v1);
  v2 = *(v0 + 8);

  return v2();
}

id sub_100CD9C7C(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = [v7 interactiveCanvasController];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v8 layerHost];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  if (([v10 respondsToSelector:"asiOSCVC"] & 1) == 0)
  {

    swift_unknownObjectRelease();
LABEL_13:

    return 0;
  }

  v12 = [v11 asiOSCVC];
  swift_unknownObjectRelease();
  v13 = [v12 canvasView];

  if (!v13)
  {
LABEL_12:

    goto LABEL_13;
  }

  v14 = [v7 smartFieldAtPoint:{a3, a4}];
  if (!v14)
  {

    goto LABEL_12;
  }

  v15 = v14;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {

    return 0;
  }

  v17 = v16;
  if ((sub_1006C1280() & 1) == 0)
  {

    goto LABEL_13;
  }

  v18 = [v17 range];
  v20 = [objc_allocWithZone(CRLWPSelection) initWithRange:{v18, v19}];
  if (v20)
  {
    v21 = v20;
    [v7 rectForSelection:v20 includeRuby:0 includePaginatedAttachments:0];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
  }

  else
  {
    v23 = 0.0;
    v25 = 0.0;
    v27 = 0.0;
    v29 = 0.0;
  }

  [v7 convertNaturalRectToUnscaledCanvas:{v23, v25, v27, v29}];
  [v9 convertUnscaledToBoundsRect:?];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  bottom = UIEdgeInsetsZero.bottom;
  v40 = v13;
  v41 = [v40 resizableSnapshotViewFromRect:1 afterScreenUpdates:v32 withCapInsets:{v34, v36, v38, UIEdgeInsetsZero.top, left, bottom, right}];
  if (v41)
  {
    v42 = v41;

    v43 = sub_100120414(v32, v34, v36, v38);
    v45 = [objc_allocWithZone(UIPreviewTarget) initWithContainer:v40 center:{v43, v44}];

    v46 = [objc_allocWithZone(UIPreviewParameters) init];
    v47 = [objc_opt_self() clearColor];
    [v46 setBackgroundColor:v47];

    v48 = [objc_allocWithZone(UITargetedPreview) initWithView:v42 parameters:v46 target:v45];
    return v48;
  }

  v49 = [v7 repForSelecting];
  if (!v49)
  {

    goto LABEL_12;
  }

  v50 = v49;
  sub_100006370(0, &qword_1019FB7A0);
  v51 = static NSObject.== infix(_:_:)();

  if (v51)
  {

    return 0;
  }

  [v7 convertNaturalPointToUnscaledCanvas:{a3, a4}];
  [v50 convertNaturalPointFromUnscaledCanvas:?];
  v52 = [v50 contextMenuPreviewForHighlightingMenuAtPoint:a1 withConfiguration:?];

  return v52;
}

id sub_100CDA1E4()
{
  type metadata accessor for URL();

  return sub_100CD964C();
}

UIMenu sub_100CDA244(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100CD96A4(a1, v4);
}

uint64_t sub_100CDA2B4(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100CD9990(a1, v4);
}

uint64_t sub_100CDA324(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_100CD9B60(a1, v6, v7, v1 + v5);
}

uint64_t sub_100CDA41C()
{
  v0 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_10061655C(v10, qword_101AD7AB8);
  sub_1005EB3DC(v10, qword_101AD7AB8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100CDA710()
{
  v0 = sub_1005B981C(&qword_1019F8B00);
  __chkstk_darwin(v0 - 8);
  v58 = &v32 - v1;
  v2 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v2 - 8);
  v57 = &v32 - v3;
  v34 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  v54 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v45 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A1ADC0);
  v12 = sub_1005B981C(&qword_101A14768);
  v55 = v12;
  v13 = *(v12 - 8);
  v40 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v41 = 2 * v40;
  v15 = swift_allocObject();
  v48 = xmmword_10146C4D0;
  v42 = v15;
  *(v15 + 16) = xmmword_10146C4D0;
  v46 = v15 + v14;
  v39 = *(v12 + 48);
  *(v15 + v14) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v4 + 104);
  v56 = v4 + 104;
  v18 = v34;
  v17(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v34);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53 = *(v10 + 56);
  v53(v57, 1, 1, v9);
  v51 = type metadata accessor for DisplayRepresentation.Image();
  v19 = *(v51 - 8);
  v50 = *(v19 + 56);
  v52 = v19 + 56;
  v50(v58, 1, 1, v51);
  v38 = sub_1005B981C(&qword_101A08C08);
  v49 = v10 + 56;
  v20 = *(v10 + 72);
  v37 = *(v10 + 80);
  v35 = (v37 + 32) & ~v37;
  v44 = v20;
  v47 = 2 * v20;
  v36 = 3 * v20;
  v33 = swift_allocObject();
  *(v33 + 16) = v48;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = v16;
  v22 = v16;
  v23 = v17;
  v17(v6, v22, v18);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v43 = v21;
  v17(v6, v21, v18);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17(v6, v21, v18);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = v46;
  v26 = v57;
  v25 = v58;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v39 = (v24 + v40);
  v40 = *(v55 + 48);
  *v39 = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v27 = v43;
  v23(v6, v43, v18);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53(v26, 1, 1, v54);
  v50(v25, 1, 1, v51);
  v38 = swift_allocObject();
  *(v38 + 16) = v48;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23(v6, v27, v18);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23(v6, v27, v18);
  v32 = v23;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23(v6, v27, v18);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v28 = v57;
  v29 = v58;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  *&v48 = *(v55 + 48);
  *(v46 + v41) = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v6, v43, v18);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53(v28, 1, 1, v54);
  v50(v29, 1, 1, v51);
  DisplayRepresentation.init(title:subtitle:image:)();
  v30 = sub_100BD901C(v42);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101AD7AD0 = v30;
  return result;
}

uint64_t sub_100CDB174(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701079400;
  if (v2 != 1)
  {
    v5 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 2003789939;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1701079400;
  if (*a2 != 1)
  {
    v8 = 0x656C67676F74;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2003789939;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
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

unint64_t sub_100CDB258()
{
  result = qword_101A1AD58;
  if (!qword_101A1AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD58);
  }

  return result;
}

Swift::Int sub_100CDB2AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100CDB33C()
{
  String.hash(into:)();
}

Swift::Int sub_100CDB3B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100CDB444@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100CDBA9C(*a1);
  *a2 = result;
  return result;
}

void sub_100CDB474(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701079400;
  if (v2 != 1)
  {
    v5 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2003789939;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100CDB4C4()
{
  result = qword_101A1AD60;
  if (!qword_101A1AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD60);
  }

  return result;
}

unint64_t sub_100CDB51C()
{
  result = qword_101A1AD68;
  if (!qword_101A1AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD68);
  }

  return result;
}

unint64_t sub_100CDB574()
{
  result = qword_101A1AD70;
  if (!qword_101A1AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD70);
  }

  return result;
}

unint64_t sub_100CDB5CC()
{
  result = qword_101A1AD78;
  if (!qword_101A1AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD78);
  }

  return result;
}

unint64_t sub_100CDB620()
{
  result = qword_101A1AD80;
  if (!qword_101A1AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD80);
  }

  return result;
}

unint64_t sub_100CDB674()
{
  result = qword_101A1AD88;
  if (!qword_101A1AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD88);
  }

  return result;
}

unint64_t sub_100CDB6CC()
{
  result = qword_101A1AD90;
  if (!qword_101A1AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD90);
  }

  return result;
}

uint64_t sub_100CDB720@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F2010 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1005EB3DC(v2, qword_101AD7AB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100CDB818(uint64_t a1)
{
  v2 = sub_10077C964();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100CDB868()
{
  result = qword_101A1AD98;
  if (!qword_101A1AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AD98);
  }

  return result;
}

unint64_t sub_100CDB8C0()
{
  result = qword_101A1ADA0;
  if (!qword_101A1ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ADA0);
  }

  return result;
}

unint64_t sub_100CDB918()
{
  result = qword_101A1ADA8;
  if (!qword_101A1ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ADA8);
  }

  return result;
}

uint64_t sub_100CDB96C()
{
  if (qword_1019F2018 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100CDB9C8(uint64_t a1)
{
  v2 = sub_100CDB6CC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100CDBA18()
{
  result = qword_101A1ADB0;
  if (!qword_101A1ADB0)
  {
    sub_1005C4E5C(&qword_101A1ADB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ADB0);
  }

  return result;
}

unint64_t sub_100CDBA9C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101876A70, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id sub_100CDBAF0()
{
  UTType.identifier.getter();
  v0 = String._bridgeToObjectiveC()();

  v1 = [objc_opt_self() typeWithIdentifier:v0];

  if (v1)
  {
    type metadata accessor for UTType();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v3 = [v1 crl_conformsToAnyUTType:isa];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_1005CF000();
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 14;
    v17 = v28;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:14 isFatal:0 format:v26 args:v23];

    return 0;
  }

  return v3;
}

uint64_t sub_100CDBFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_10064191C(0, 0, v10, &unk_1014A0130, v14);
}

uint64_t sub_100CDC1B0(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  type metadata accessor for MainActor();
  v3[39] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[40] = v5;
  v3[41] = v4;

  return _swift_task_switch(sub_100CDC24C, v5, v4);
}

uint64_t sub_100CDC24C()
{
  if (qword_1019F22E0 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = v0[38];
  v3 = static OS_os_log.crlSurface;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = sub_100C709DC();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = static os_log_type_t.debug.getter();
  sub_100005404(v3, &_mh_execute_header, v11, "(AppEx:CoreRE) [%{public}@] createSurfaceModel(%@)", 50, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v12 = v2;
  sub_100C7833C(v1, (v0 + 2));
  v13 = swift_task_alloc();
  v0[42] = v13;
  *v13 = v0;
  v13[1] = sub_100CDC4A4;
  v15 = v0[37];
  v14 = v0[38];
  v16 = v0[36];

  return sub_100CDF240(v16, 0xD000000000000014, 0x8000000101599DE0, v14, v14, v15);
}

uint64_t sub_100CDC4A4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);
  if (v0)
  {
    v5 = sub_100CDC644;
  }

  else
  {
    v5 = sub_100CDC5E0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100CDC5E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CDC644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CDC6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[109] = a3;
  v3[108] = a2;
  v3[107] = a1;
  sub_1005B981C(&unk_1019F33C0);
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();
  v3[114] = swift_task_alloc();
  v3[115] = swift_task_alloc();
  v3[116] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  v3[117] = swift_task_alloc();
  v3[118] = type metadata accessor for MainActor();
  v3[119] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[120] = v5;
  v3[121] = v4;

  return _swift_task_switch(sub_100CDC808, v5, v4);
}

uint64_t sub_100CDC808()
{
  v1 = *(v0 + 864);
  v2 = CACurrentMediaTime();
  *(v0 + 976) = v2;
  v3 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend__backendState;
  *(v0 + 984) = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend__backendState;
  v4 = *(**(v1 + v3) + 128);

  v4(v5);

  v6 = *(v0 + 664);
  v7 = *(v0 + 680);
  v8 = *(v0 + 688) >> 62;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      sub_100BFD514(v6, *(v0 + 672), *(v0 + 680), *(v0 + 688));
      v9 = *(v1 + v3);
      *(v0 + 712) = 0;
      *(v0 + 696) = 0u;
      *(v0 + 720) = 0xC000000000000000;
      v10 = *(*v9 + 136);

      v10(v0 + 696);

      v11 = swift_task_alloc();
      *(v0 + 1296) = v11;
      *v11 = v0;
      v11[1] = sub_100CDE9B0;
      v12 = *(v0 + 872);
      v13 = *(v0 + 856);

      return sub_100CDC1B0(v13, v12);
    }

    else
    {
      v17 = *(v0 + 936);
      v18 = *(v0 + 864);
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
      v20 = v18;
      v21 = static MainActor.shared.getter();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = &protocol witness table for MainActor;
      v22[4] = v20;
      v23 = sub_10079759C(0, 0, v17, &unk_1014AB438, v22);
      v24 = *(v1 + v3);
      *(v0 + 760) = v23;
      *(v0 + 776) = 0;
      *(v0 + 784) = 0;
      *(v0 + 768) = 0;
      v25 = *(*v24 + 136);

      v25(v0 + 760);

      if (qword_1019F22E0 != -1)
      {
        swift_once();
      }

      v26 = static OS_os_log.crlSurface;
      *(v0 + 992) = static OS_os_log.crlSurface;
      *(v0 + 1000) = sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      *(v0 + 1008) = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend_uuid;
      UUID.uuidString.getter();
      String.index(_:offsetBy:)();
      String.subscript.getter();

      v28 = static String._fromSubstring(_:)();
      v30 = v29;

      *(inited + 56) = &type metadata for String;
      v31 = sub_1000053B0();
      *(v0 + 1016) = v31;
      *(inited + 64) = v31;
      *(inited + 32) = v28;
      *(inited + 40) = v30;
      v32 = CACurrentMediaTime();
      *(inited + 96) = &type metadata for Double;
      *(inited + 104) = &protocol witness table for Double;
      *(inited + 72) = (v32 - v2) * 1000.0;
      v33 = static os_log_type_t.debug.getter();
      sub_100005404(v26, &_mh_execute_header, v33, "(AppEx:CoreRE) [%{public}@] createSurfaceModel() +%{public}.0fms: extension renderer connected", 94, 2, inited);
      swift_setDeallocating();
      *(v0 + 1024) = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v34 = *(**(v1 + v3) + 128);

      v34(v35);

      v36 = *(v0 + 792);
      *(v0 + 1032) = v36;
      v37 = *(v0 + 800);
      *(v0 + 1040) = v37;
      v38 = *(v0 + 808);
      *(v0 + 1048) = v38;
      v39 = *(v0 + 816);
      *(v0 + 1056) = v39;
      if (v39 >> 62)
      {
        v43 = *(v0 + 856);
        sub_100BFD514(v36, v37, v38, v39);

        v44 = type metadata accessor for URL();
        (*(*(v44 - 8) + 56))(v43, 1, 1, v44);

        v45 = *(v0 + 8);

        return v45();
      }

      else
      {
        v40 = swift_task_alloc();
        *(v0 + 1064) = v40;
        v41 = sub_1005B981C(&qword_1019FFCC8);
        v42 = sub_1005B981C(&unk_1019F6B40);
        *v40 = v0;
        v40[1] = sub_100CDCF14;

        return Task.value.getter(v0 + 624, v36, v41, v42, &protocol self-conformance witness table for Error);
      }
    }
  }

  else
  {
    if (v8)
    {
    }

    else
    {
      sub_100BFD514(v6, *(v0 + 672), *(v0 + 680), *(v0 + 688));
    }

    *(v0 + 1136) = static MainActor.shared.getter();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 1144) = v16;
    *(v0 + 1152) = v15;

    return _swift_task_switch(sub_100CDD658, v16, v15);
  }
}

uint64_t sub_100CDCF14()
{
  v2 = *v1;
  *(*v1 + 1072) = v0;

  v3 = *(v2 + 968);
  v4 = *(v2 + 960);
  if (v0)
  {
    v5 = sub_100CDEAEC;
  }

  else
  {
    v5 = sub_100CDD050;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100CDD050()
{
  v1 = v0[123];
  v2 = v0[108];
  v3 = v0[78];
  v0[135] = v3;
  v4 = v0[79];
  v0[136] = v4;
  v5 = v0[80];
  v0[137] = v5;
  v6 = v0[81];
  v0[138] = v6;
  v7 = v0[82];
  v0[139] = v7;
  v8 = *(v2 + v1);
  v0[103] = v4;
  v0[104] = v5;
  v0[105] = v6;
  v0[106] = v7 | 0x4000000000000000;
  v9 = *(*v8 + 136);

  v10 = v6;

  v9(v0 + 103);

  sub_100CDF07C(v3);
  v11 = swift_task_alloc();
  v0[140] = v11;
  *v11 = v0;
  v11[1] = sub_100CDD1AC;
  v12 = v0[116];
  v13 = v0[109];

  return sub_1008C7544(v12, v13);
}

uint64_t sub_100CDD1AC()
{
  v2 = *v1;
  *(*v1 + 1128) = v0;

  v3 = *(v2 + 968);
  v4 = *(v2 + 960);
  if (v0)
  {
    v5 = sub_100CDEBDC;
  }

  else
  {
    v5 = sub_100CDD2E8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100CDD2E8()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 976);
  v3 = *(v0 + 928);
  v4 = *(v0 + 920);

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v6 = static String._fromSubstring(_:)();
  v8 = v7;

  *(inited + 32) = v6;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 40) = v8;
  v9 = CACurrentMediaTime();
  *(inited + 96) = &type metadata for Double;
  *(inited + 104) = &protocol witness table for Double;
  *(inited + 72) = (v9 - v2) * 1000.0;
  sub_10001ACF0(v3, v4);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v4, 1, v10);
  v13 = *(v0 + 1016);
  v14 = *(v0 + 920);
  if (v12 == 1)
  {
    sub_100686028(*(v0 + 920));
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v13;
  }

  else
  {
    v15 = URL.absoluteString.getter();
    v17 = v16;
    (*(v11 + 8))(v14, v10);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v13;
    if (v17)
    {
      v18 = v15;
      goto LABEL_6;
    }
  }

  v17 = 0xE300000000000000;
  v18 = 7104878;
LABEL_6:
  v27 = *(v0 + 1104);
  v19 = *(v0 + 1056);
  v20 = *(v0 + 1048);
  v21 = *(v0 + 1040);
  v22 = *(v0 + 1032);
  v23 = *(v0 + 992);
  v29 = *(v0 + 928);
  v28 = *(v0 + 856);
  *(inited + 112) = v18;
  *(inited + 120) = v17;
  v24 = static os_log_type_t.debug.getter();
  sub_100005404(v23, &_mh_execute_header, v24, "(AppEx:CoreRE) [%{public}@] createSurfaceModel() +%{public}.0fms: first url %@", 78, 2, inited);

  sub_100BFD514(v22, v21, v20, v19);

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_100044B68(v29, v28);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100CDD658()
{
  v1 = *(**(v0[108] + v0[123]) + 128);

  v1(v2);

  v3 = v0[91];
  v0[145] = v3;
  v4 = v0[92];
  v0[146] = v4;
  v5 = v0[93];
  v0[147] = v5;
  v6 = v0[94];
  v0[148] = v6;
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      sub_100BFD514(v3, v4, v5, v6);
    }

    v11 = v0[107];

    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = v0[121];
    v14 = v0[120];

    return _swift_task_switch(sub_100CDE018, v14, v13);
  }

  else if (v7)
  {
    v0[151] = static MainActor.shared.getter();
    v15 = swift_task_alloc();
    v0[152] = v15;
    *v15 = v0;
    v15[1] = sub_100CDDA08;
    v16 = v0[114];
    v17 = v0[109];

    return sub_1008C7544(v16, v17);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[149] = v8;
    v9 = sub_1005B981C(&qword_1019FFCC8);
    v10 = sub_1005B981C(&unk_1019F6B40);
    *v8 = v0;
    v8[1] = sub_100CDD8CC;

    return Task.value.getter(v0 + 73, v3, v9, v10, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_100CDD8CC()
{
  v2 = *v1;
  *(*v1 + 1200) = v0;

  v3 = *(v2 + 1152);
  v4 = *(v2 + 1144);
  if (v0)
  {
    v5 = sub_100CDE850;
  }

  else
  {
    v5 = sub_100CDE0F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100CDDA08()
{
  *(*v1 + 1224) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100CDDE70;
  }

  else
  {
    v4 = sub_100CDDB64;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100CDDB64()
{

  if (qword_1019F22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 976);
  v2 = *(v0 + 912);
  v3 = *(v0 + 904);
  v24 = static OS_os_log.crlSurface;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 64) = v8;
  *(inited + 40) = v7;
  v9 = CACurrentMediaTime();
  *(inited + 96) = &type metadata for Double;
  *(inited + 104) = &protocol witness table for Double;
  *(inited + 72) = (v9 - v1) * 1000.0;
  sub_10001ACF0(v2, v3);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v3, 1, v10);
  v13 = *(v0 + 904);
  if (v12 == 1)
  {
    sub_100686028(*(v0 + 904));
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v8;
  }

  else
  {
    v14 = URL.absoluteString.getter();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v8;
    if (v16)
    {
      v17 = v14;
      goto LABEL_8;
    }
  }

  v16 = 0xE300000000000000;
  v17 = 7104878;
LABEL_8:
  v18 = *(v0 + 912);
  v19 = *(v0 + 856);
  *(inited + 112) = v17;
  *(inited + 120) = v16;
  v20 = static os_log_type_t.debug.getter();
  sub_100005404(v24, &_mh_execute_header, v20, "(AppEx:CoreRE) [%{public}@] createSurfaceModel() +%{public}.0fms: new url %@", 76, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_100044B68(v18, v19);
  v21 = *(v0 + 1152);
  v22 = *(v0 + 1144);

  return _swift_task_switch(sub_100CDDF7C, v22, v21);
}

uint64_t sub_100CDDE70()
{

  v1 = *(v0 + 1152);
  v2 = *(v0 + 1144);

  return _swift_task_switch(sub_100CDDED8, v2, v1);
}

uint64_t sub_100CDDED8()
{
  v1 = v0[147];

  v0[161] = v0[153];
  v2 = v0[121];
  v3 = v0[120];

  return _swift_task_switch(sub_100CDE8D8, v3, v2);
}

uint64_t sub_100CDDF7C()
{
  v1 = v0[147];

  v2 = v0[121];
  v3 = v0[120];

  return _swift_task_switch(sub_100CDE018, v3, v2);
}

uint64_t sub_100CDE018()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CDE0F0()
{

  *(v0 + 1232) = *(v0 + 592);
  *(v0 + 1240) = *(v0 + 600);
  *(v0 + 1248) = *(v0 + 608);
  *(v0 + 1264) = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  *(v0 + 1272) = v1;
  *v1 = v0;
  v1[1] = sub_100CDE1B8;
  v2 = *(v0 + 888);
  v3 = *(v0 + 872);

  return sub_1008C7544(v2, v3);
}

uint64_t sub_100CDE1B8()
{
  *(*v1 + 1280) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100CDE620;
  }

  else
  {
    v4 = sub_100CDE314;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100CDE314()
{

  if (qword_1019F22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 976);
  v2 = *(v0 + 888);
  v3 = *(v0 + 880);
  v24 = static OS_os_log.crlSurface;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 64) = v8;
  *(inited + 40) = v7;
  v9 = CACurrentMediaTime();
  *(inited + 96) = &type metadata for Double;
  *(inited + 104) = &protocol witness table for Double;
  *(inited + 72) = (v9 - v1) * 1000.0;
  sub_10001ACF0(v2, v3);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v3, 1, v10);
  v13 = *(v0 + 880);
  if (v12 == 1)
  {
    sub_100686028(*(v0 + 880));
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v8;
  }

  else
  {
    v14 = URL.absoluteString.getter();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v8;
    if (v16)
    {
      v17 = v14;
      goto LABEL_8;
    }
  }

  v16 = 0xE300000000000000;
  v17 = 7104878;
LABEL_8:
  v18 = *(v0 + 896);
  v19 = *(v0 + 888);
  *(inited + 112) = v17;
  *(inited + 120) = v16;
  v20 = static os_log_type_t.debug.getter();
  sub_100005404(v24, &_mh_execute_header, v20, "(AppEx:CoreRE) [%{public}@] createSurfaceModel() +%{public}.0fms: new url %@", 76, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_100044B68(v19, v18);
  v21 = *(v0 + 1152);
  v22 = *(v0 + 1144);

  return _swift_task_switch(sub_100CDE760, v22, v21);
}

uint64_t sub_100CDE620()
{

  v1 = *(v0 + 1152);
  v2 = *(v0 + 1144);

  return _swift_task_switch(sub_100CDE688, v2, v1);
}

uint64_t sub_100CDE688()
{
  v1 = v0[156];
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[146];
  v5 = v0[145];

  sub_100BFD514(v5, v4, v3, v2);

  v0[161] = v0[160];
  v6 = v0[121];
  v7 = v0[120];

  return _swift_task_switch(sub_100CDE8D8, v7, v6);
}

uint64_t sub_100CDE760()
{
  v1 = v0[156];
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[146];
  v5 = v0[145];
  v10 = v0[112];
  v6 = v0[107];

  sub_100BFD514(v5, v4, v3, v2);

  sub_100044B68(v10, v6);
  v7 = v0[121];
  v8 = v0[120];

  return _swift_task_switch(sub_100CDE018, v8, v7);
}

uint64_t sub_100CDE850()
{
  sub_100BFD514(*(v0 + 1160), *(v0 + 1168), *(v0 + 1176), *(v0 + 1184));

  *(v0 + 1288) = *(v0 + 1200);
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);

  return _swift_task_switch(sub_100CDE8D8, v2, v1);
}

uint64_t sub_100CDE8D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CDE9B0()
{
  v2 = *v1;
  *(*v1 + 1304) = v0;

  v3 = *(v2 + 968);
  v4 = *(v2 + 960);
  if (v0)
  {
    v5 = sub_100CDED18;
  }

  else
  {
    v5 = sub_100CE3ED0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100CDEAEC()
{
  sub_100BFD514(*(v0 + 1032), *(v0 + 1040), *(v0 + 1048), *(v0 + 1056));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CDEBDC()
{
  v1 = v0[138];
  v2 = v0[132];
  v3 = v0[131];
  v4 = v0[130];
  v5 = v0[129];

  sub_100BFD514(v5, v4, v3, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100CDED18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CDEDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  type metadata accessor for CRLUSDRenderingExtensionConnector();
  swift_initStaticObject();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_100CDEEB0;

  return sub_100B81A40();
}

uint64_t sub_100CDEEB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100BFB3E8, v7, v6);
  }

  else
  {
    v8 = v4[3];

    v9 = v8;
    v10 = swift_task_alloc();
    v4[9] = v10;
    *v10 = v5;
    v10[1] = sub_100BFB144;
    v11 = v4[3];

    return (sub_100CE373C)(a1, v11);
  }
}

uint64_t sub_100CDF07C(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = *(a1 + 16);
  v13 = sub_100CE3078;
  v14 = v4;
  v9 = _NSConcreteStackBlock;
  v10 = *"";
  v11 = sub_100007638;
  v12 = &unk_1018A0830;
  v6 = _Block_copy(&v9);

  [v5 setInterruptionHandler:v6];
  _Block_release(v6);
  v13 = sub_100CE3078;
  v14 = v4;
  v9 = _NSConcreteStackBlock;
  v10 = *"";
  v11 = sub_100007638;
  v12 = &unk_1018A0858;
  v7 = _Block_copy(&v9);

  [v5 setInvalidationHandler:v7];
  _Block_release(v7);
}

uint64_t sub_100CDF240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[43] = a5;
  v6[44] = a6;
  v6[41] = a3;
  v6[42] = a4;
  v6[40] = a2;
  v6[45] = type metadata accessor for MainActor();
  v6[46] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v6[47] = v10;
  *v10 = v6;
  v10[1] = sub_100CDF314;

  return sub_100CDC6A8(a1, a5, a6);
}

uint64_t sub_100CDF314()
{
  *(*v1 + 384) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100CDF4E0;
  }

  else
  {
    v4 = sub_100CDF46C;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100CDF46C()
{
  v1 = v0[43];
  v2 = v0[44];

  sub_1008CF410(v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100CDF4E0()
{

  if (qword_1019F22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 384);
  v2 = *(v0 + 328);
  v20 = *(v0 + 320);
  v21 = static OS_os_log.crlSurface;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 64) = v7;
  *(inited + 72) = v20;
  *(inited + 80) = v2;
  swift_getErrorValue();

  v8 = Error.localizedDescription.getter();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v10, "(AppEx:CoreRE) [%{public}@] %{public}@ error: %{public}@", 56, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  *(v0 + 296) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    v13 = *(v0 + 264);
  }

  else
  {
    *(v0 + 304) = *(v0 + 384);
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 272);
      v12 = *(v0 + 280);
      v13 = 4;
    }

    else
    {
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v12 = v14;
      v13 = 2;
    }
  }

  v15 = *(v0 + 344);
  v22 = *(v0 + 352);
  v16 = *(*(v0 + 336) + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend__backendState);
  *(v0 + 168) = v11;
  *(v0 + 176) = v12;
  *(v0 + 184) = v13;
  *(v0 + 192) = 0x8000000000000000;
  v17 = *(*v16 + 136);

  sub_10086756C(v11, v12, v13);
  v17(v0 + 168);

  sub_100863EEC(v11, v12, v13);
  swift_willThrow();

  sub_1008CF410(v22);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100CDF864(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  type metadata accessor for MainActor();
  v2[38] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[39] = v4;
  v2[40] = v3;

  return _swift_task_switch(sub_100CDF8FC, v4, v3);
}

uint64_t sub_100CDF8FC()
{
  if (qword_1019F22E0 != -1)
  {
    swift_once();
  }

  v1 = v0[36];
  v2 = v0[37];
  v3 = static OS_os_log.crlSurface;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = sub_100C709DC();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = static os_log_type_t.debug.getter();
  sub_100005404(v3, &_mh_execute_header, v11, "(AppEx:CoreRE) [%{public}@] createSurfaceSnapshot(%@)", 53, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v12 = v2;
  sub_100C7833C(v1, (v0 + 2));
  v13 = swift_task_alloc();
  v0[41] = v13;
  *v13 = v0;
  v13[1] = sub_100CDFB4C;
  v15 = v0[36];
  v14 = v0[37];

  return sub_100CE3140(0xD000000000000017, 0x8000000101599F40, v14, v14, v15);
}

uint64_t sub_100CDFB4C(uint64_t a1)
{
  v4 = *v2;
  v4[42] = v1;

  v5 = v4[37];
  v6 = v4[36];
  if (v1)
  {
    sub_1008CF410(v6);

    v7 = v4[39];
    v8 = v4[40];
    v9 = sub_100CDFD18;
  }

  else
  {
    v4[43] = a1;
    sub_1008CF410(v6);

    v7 = v4[39];
    v8 = v4[40];
    v9 = sub_100CDFCB0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100CDFCB0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 344);

  return v1(v2);
}

uint64_t sub_100CDFD18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CDFD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[86] = a3;
  v3[85] = a2;
  v3[84] = a1;
  sub_1005B981C(&qword_1019FB750);
  v3[87] = swift_task_alloc();
  v3[88] = type metadata accessor for MainActor();
  v3[89] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[90] = v5;
  v3[91] = v4;

  return _swift_task_switch(sub_100CDFE5C, v5, v4);
}

uint64_t sub_100CDFE5C()
{
  v1 = *(v0 + 680);
  v2 = CACurrentMediaTime();
  *(v0 + 736) = v2;
  v3 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend__backendState;
  *(v0 + 744) = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend__backendState;
  v4 = *(**(v1 + v3) + 128);

  v4(v5);

  v6 = *(v0 + 480);
  v7 = *(v0 + 496);
  v8 = *(v0 + 504) >> 62;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      sub_100BFD514(v6, *(v0 + 488), *(v0 + 496), *(v0 + 504));
      v9 = *(v1 + v3);
      *(v0 + 528) = 0;
      *(v0 + 512) = 0u;
      *(v0 + 536) = 0xC000000000000000;
      v10 = *(*v9 + 136);

      v10(v0 + 512);

      v11 = swift_task_alloc();
      *(v0 + 1176) = v11;
      *v11 = v0;
      v11[1] = sub_100CE2318;
      v12 = *(v0 + 688);

      return sub_100CDF864(v12);
    }

    else
    {
      v16 = *(v0 + 696);
      v17 = *(v0 + 680);
      v18 = type metadata accessor for TaskPriority();
      (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
      v19 = v17;
      v20 = static MainActor.shared.getter();
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = &protocol witness table for MainActor;
      v21[4] = v19;
      v22 = sub_10079759C(0, 0, v16, &unk_1014AB480, v21);
      v23 = *(v1 + v3);
      *(v0 + 576) = v22;
      *(v0 + 592) = 0;
      *(v0 + 600) = 0;
      *(v0 + 584) = 0;
      v24 = *(*v23 + 136);

      v24(v0 + 576);

      if (qword_1019F22E0 != -1)
      {
        swift_once();
      }

      v25 = static OS_os_log.crlSurface;
      *(v0 + 752) = static OS_os_log.crlSurface;
      *(v0 + 760) = sub_1005B981C(&qword_1019F54E0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10146BDE0;
      *(v0 + 768) = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend_uuid;
      UUID.uuidString.getter();
      String.index(_:offsetBy:)();
      String.subscript.getter();

      v27 = static String._fromSubstring(_:)();
      v29 = v28;

      *(v26 + 56) = &type metadata for String;
      v30 = sub_1000053B0();
      *(v0 + 776) = v30;
      *(v26 + 64) = v30;
      *(v26 + 32) = v27;
      *(v26 + 40) = v29;
      v31 = CACurrentMediaTime();
      *(v26 + 96) = &type metadata for Double;
      *(v26 + 104) = &protocol witness table for Double;
      *(v26 + 72) = (v31 - v2) * 1000.0;
      v32 = static os_log_type_t.debug.getter();
      sub_100005404(v25, &_mh_execute_header, v32, "(AppEx:CoreRE) [%{public}@] createSurfaceSnapshot() +%{public}.0fms: extension renderer connected", 97, 2, v26);
      swift_setDeallocating();
      *(v0 + 784) = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v33 = *(**(v1 + v3) + 128);

      v33(v34);

      v35 = *(v0 + 608);
      *(v0 + 792) = v35;
      v36 = *(v0 + 616);
      *(v0 + 800) = v36;
      v37 = *(v0 + 624);
      *(v0 + 808) = v37;
      v38 = *(v0 + 632);
      *(v0 + 816) = v38;
      if (v38 >> 62)
      {
        v42 = *(v0 + 672);
        sub_100BFD514(v35, v36, v37, v38);

        *v42 = 0;

        v43 = *(v0 + 8);

        return v43();
      }

      else
      {
        v39 = swift_task_alloc();
        *(v0 + 824) = v39;
        v40 = sub_1005B981C(&qword_1019FFCC8);
        v41 = sub_1005B981C(&unk_1019F6B40);
        *v39 = v0;
        v39[1] = sub_100CE04DC;

        return Task.value.getter(v0 + 440, v35, v40, v41, &protocol self-conformance witness table for Error);
      }
    }
  }

  else
  {
    if (v8)
    {
    }

    else
    {
      sub_100BFD514(v6, *(v0 + 488), *(v0 + 496), *(v0 + 504));
    }

    *(v0 + 936) = static MainActor.shared.getter();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 944) = v15;
    *(v0 + 952) = v14;

    return _swift_task_switch(sub_100CE0E40, v15, v14);
  }
}

uint64_t sub_100CE04DC()
{
  v2 = *v1;
  *(*v1 + 832) = v0;

  v3 = *(v2 + 728);
  v4 = *(v2 + 720);
  if (v0)
  {
    v5 = sub_100CE24C0;
  }

  else
  {
    v5 = sub_100CE0618;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100CE0618()
{
  v1 = v0[93];
  v2 = v0[85];
  v4 = v0[55];
  v3 = v0[56];
  v0[105] = v4;
  v0[106] = v3;
  v5 = v0[57];
  v6 = v0[58];
  v0[107] = v5;
  v0[108] = v6;
  v7 = v0[59];
  v0[109] = v7;
  v8 = *(v2 + v1);
  v0[80] = v3;
  v0[81] = v5;
  v0[82] = v6;
  v0[83] = v7 | 0x4000000000000000;
  v9 = *(*v8 + 136);

  v10 = v6;

  v9(v0 + 80);

  sub_100CDF07C(v4);
  v0[110] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[111] = v12;
  v0[112] = v11;

  return _swift_task_switch(sub_100CE0768, v12, v11);
}

uint64_t sub_100CE0768()
{
  v1 = v0[107];
  v2 = v0[86];
  v3 = swift_task_alloc();
  v0[113] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[114] = v4;
  *v4 = v0;
  v4[1] = sub_100CE0864;

  return sub_1008613A4(0xD000000000000019, 0x80000001015746E0, sub_100CE3EE0, v3);
}

uint64_t sub_100CE0864(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 920) = a1;
  *(v4 + 928) = v1;

  v5 = *(v3 + 896);
  v6 = *(v3 + 888);
  if (v1)
  {
    v7 = sub_100CE09C8;
  }

  else
  {
    v7 = sub_100CE0B18;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100CE09C8()
{

  v1 = *(v0 + 728);
  v2 = *(v0 + 720);

  return _swift_task_switch(sub_100CE0A30, v2, v1);
}

uint64_t sub_100CE0A30()
{
  v1 = v0[108];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[99];

  sub_100BFD514(v5, v4, v3, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100CE0B18()
{

  v1 = *(v0 + 728);
  v2 = *(v0 + 720);

  return _swift_task_switch(sub_100CE0B80, v2, v1);
}

uint64_t sub_100CE0B80()
{
  v1 = *(v0 + 920);
  v2 = *(v0 + 776);
  v3 = *(v0 + 736);

  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(v4 + 32) = v5;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = v2;
  *(v4 + 40) = v7;
  v8 = CACurrentMediaTime();
  *(v4 + 96) = &type metadata for Double;
  *(v4 + 104) = &protocol witness table for Double;
  *(v4 + 72) = (v8 - v3) * 1000.0;
  if (v1)
  {
    v9 = *(v0 + 920);
    Width = CGImageGetWidth(v9);
    *(v4 + 136) = &type metadata for Int;
    *(v4 + 144) = &protocol witness table for Int;
    *(v4 + 112) = Width;
    Height = CGImageGetHeight(v9);
  }

  else
  {
    Height = 0;
    *(v4 + 136) = &type metadata for Int;
    *(v4 + 144) = &protocol witness table for Int;
    *(v4 + 112) = 0;
  }

  v20 = *(v0 + 864);
  v12 = *(v0 + 816);
  v13 = *(v0 + 808);
  v14 = *(v0 + 800);
  v15 = *(v0 + 792);
  v16 = *(v0 + 752);
  v21 = *(v0 + 672);
  v22 = *(v0 + 920);
  *(v4 + 176) = &type metadata for Int;
  *(v4 + 184) = &protocol witness table for Int;
  *(v4 + 152) = Height;
  v17 = static os_log_type_t.debug.getter();
  sub_100005404(v16, &_mh_execute_header, v17, "(AppEx:CoreRE) [%{public}@] createSurfaceSnapshot() +%{public}.0fms: first snapshot %ix%i", 89, 2, v4);

  sub_100BFD514(v15, v14, v13, v12);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *v21 = v22;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100CE0E40()
{
  v1 = *(**(*(v0 + 680) + *(v0 + 744)) + 128);

  v1(v2);

  v3 = *(v0 + 544);
  *(v0 + 960) = v3;
  v4 = *(v0 + 552);
  *(v0 + 968) = v4;
  v5 = *(v0 + 560);
  *(v0 + 976) = v5;
  v6 = *(v0 + 568);
  *(v0 + 984) = v6;
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      sub_100BFD514(v3, v4, v5, v6);
    }

    **(v0 + 672) = 0;
    v13 = *(v0 + 728);
    v15 = *(v0 + 720);
    v14 = sub_100CE1914;
  }

  else
  {
    if (!v7)
    {
      v8 = swift_task_alloc();
      *(v0 + 992) = v8;
      v9 = sub_1005B981C(&qword_1019FFCC8);
      v10 = sub_1005B981C(&unk_1019F6B40);
      *v8 = v0;
      v8[1] = sub_100CE1050;

      return Task.value.getter(v0 + 400, v3, v9, v10, &protocol self-conformance witness table for Error);
    }

    *(v0 + 1008) = static MainActor.shared.getter();
    *(v0 + 1016) = static MainActor.shared.getter();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    *(v0 + 1024) = v11;
    *(v0 + 1032) = v12;
    v14 = sub_100CE118C;
    v15 = v11;
  }

  return _swift_task_switch(v14, v15, v13);
}

uint64_t sub_100CE1050()
{
  v2 = *v1;
  *(*v1 + 1000) = v0;

  v3 = *(v2 + 952);
  v4 = *(v2 + 944);
  if (v0)
  {
    v5 = sub_100CE2224;
  }

  else
  {
    v5 = sub_100CE1980;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100CE118C()
{
  v1 = v0[121];
  v2 = v0[86];
  v3 = swift_task_alloc();
  v0[130] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[131] = v4;
  *v4 = v0;
  v4[1] = sub_100CE1284;

  return sub_1008613A4(0xD000000000000019, 0x80000001015746E0, sub_1008CDABC, v3);
}

uint64_t sub_100CE1284(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1056) = a1;
  *(v4 + 1064) = v1;

  v5 = *(v3 + 1032);
  v6 = *(v3 + 1024);
  if (v1)
  {
    v7 = sub_100CE13E8;
  }

  else
  {
    v7 = sub_100CE157C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100CE13E8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CE1470, v1, v0);
}

uint64_t sub_100CE1470()
{

  v1 = *(v0 + 952);
  v2 = *(v0 + 944);

  return _swift_task_switch(sub_100CE14D8, v2, v1);
}

uint64_t sub_100CE14D8()
{
  v1 = v0[122];

  v0[146] = v0[133];
  v2 = v0[91];
  v3 = v0[90];

  return _swift_task_switch(sub_100CE22AC, v3, v2);
}

uint64_t sub_100CE157C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CE1604, v1, v0);
}

uint64_t sub_100CE1604()
{

  if (qword_1019F22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1056);
  v2 = *(v0 + 736);
  v3 = static OS_os_log.crlSurface;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 64) = v8;
  *(inited + 40) = v7;
  v9 = CACurrentMediaTime();
  *(inited + 96) = &type metadata for Double;
  *(inited + 104) = &protocol witness table for Double;
  *(inited + 72) = (v9 - v2) * 1000.0;
  if (v1)
  {
    v10 = *(v0 + 1056);
    Width = CGImageGetWidth(v10);
    *(inited + 136) = &type metadata for Int;
    *(inited + 144) = &protocol witness table for Int;
    *(inited + 112) = Width;
    Height = CGImageGetHeight(v10);
  }

  else
  {
    Height = 0;
    *(inited + 136) = &type metadata for Int;
    *(inited + 144) = &protocol witness table for Int;
    *(inited + 112) = 0;
  }

  *(inited + 176) = &type metadata for Int;
  *(inited + 184) = &protocol witness table for Int;
  *(inited + 152) = Height;
  v13 = static os_log_type_t.debug.getter();
  sub_100005404(v3, &_mh_execute_header, v13, "(AppEx:CoreRE) [%{public}@] createSurfaceSnapshot() +%{public}.0fms: new snapshot %ix%i", 87, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v14 = *(v0 + 952);
  v15 = *(v0 + 944);

  return _swift_task_switch(sub_100CE186C, v15, v14);
}

uint64_t sub_100CE186C()
{
  v1 = *(v0 + 976);

  **(v0 + 672) = *(v0 + 1056);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);

  return _swift_task_switch(sub_100CE1914, v3, v2);
}

uint64_t sub_100CE1914()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CE1980()
{

  v1 = *(v0 + 424);
  *(v0 + 1072) = *(v0 + 408);
  *(v0 + 1088) = v1;
  *(v0 + 1104) = static MainActor.shared.getter();
  *(v0 + 1112) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1120) = v3;
  *(v0 + 1128) = v2;

  return _swift_task_switch(sub_100CE1A30, v3, v2);
}

uint64_t sub_100CE1A30()
{
  v1 = v0[135];
  v2 = v0[86];
  v3 = swift_task_alloc();
  v0[142] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[143] = v4;
  *v4 = v0;
  v4[1] = sub_100CE1B2C;

  return sub_1008613A4(0xD000000000000019, 0x80000001015746E0, sub_100CE3EE0, v3);
}

uint64_t sub_100CE1B2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 1152) = a1;
  *(v4 + 1160) = v1;

  v5 = *(v3 + 1128);
  v6 = *(v3 + 1120);
  if (v1)
  {
    v7 = sub_100CE1C90;
  }

  else
  {
    v7 = sub_100CE1E58;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100CE1C90()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CE1D18, v1, v0);
}

uint64_t sub_100CE1D18()
{

  v1 = *(v0 + 952);
  v2 = *(v0 + 944);

  return _swift_task_switch(sub_100CE1D80, v2, v1);
}

uint64_t sub_100CE1D80()
{
  v1 = v0[136];
  v2 = v0[123];
  v3 = v0[122];
  v4 = v0[121];
  v5 = v0[120];

  sub_100BFD514(v5, v4, v3, v2);

  v0[146] = v0[145];
  v6 = v0[91];
  v7 = v0[90];

  return _swift_task_switch(sub_100CE22AC, v7, v6);
}

uint64_t sub_100CE1E58()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CE1EE0, v1, v0);
}

uint64_t sub_100CE1EE0()
{

  if (qword_1019F22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1152);
  v2 = *(v0 + 736);
  v3 = static OS_os_log.crlSurface;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 32) = v5;
  *(inited + 64) = v8;
  *(inited + 40) = v7;
  v9 = CACurrentMediaTime();
  *(inited + 96) = &type metadata for Double;
  *(inited + 104) = &protocol witness table for Double;
  *(inited + 72) = (v9 - v2) * 1000.0;
  if (v1)
  {
    v10 = *(v0 + 1152);
    Width = CGImageGetWidth(v10);
    *(inited + 136) = &type metadata for Int;
    *(inited + 144) = &protocol witness table for Int;
    *(inited + 112) = Width;
    Height = CGImageGetHeight(v10);
  }

  else
  {
    Height = 0;
    *(inited + 136) = &type metadata for Int;
    *(inited + 144) = &protocol witness table for Int;
    *(inited + 112) = 0;
  }

  *(inited + 176) = &type metadata for Int;
  *(inited + 184) = &protocol witness table for Int;
  *(inited + 152) = Height;
  v13 = static os_log_type_t.debug.getter();
  sub_100005404(v3, &_mh_execute_header, v13, "(AppEx:CoreRE) [%{public}@] createSurfaceSnapshot() +%{public}.0fms: new snapshot %ix%i", 87, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v14 = *(v0 + 952);
  v15 = *(v0 + 944);

  return _swift_task_switch(sub_100CE2148, v15, v14);
}

uint64_t sub_100CE2148()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 984);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);

  sub_100BFD514(v5, v4, v3, v2);

  **(v0 + 672) = *(v0 + 1152);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);

  return _swift_task_switch(sub_100CE1914, v7, v6);
}

uint64_t sub_100CE2224()
{
  sub_100BFD514(*(v0 + 960), *(v0 + 968), *(v0 + 976), *(v0 + 984));

  *(v0 + 1168) = *(v0 + 1000);
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);

  return _swift_task_switch(sub_100CE22AC, v2, v1);
}

uint64_t sub_100CE22AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CE2318(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1184) = v1;

  if (v1)
  {
    v5 = v4[91];
    v6 = v4[90];
    v7 = sub_100CE2544;
  }

  else
  {
    v4[149] = a1;
    v5 = v4[91];
    v6 = v4[90];
    v7 = sub_100CE2448;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100CE2448()
{
  v1 = v0[149];
  v2 = v0[84];

  *v2 = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100CE24C0()
{
  sub_100BFD514(*(v0 + 792), *(v0 + 800), *(v0 + 808), *(v0 + 816));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CE2544()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CE25B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  type metadata accessor for CRLUSDRenderingExtensionConnector();
  swift_initStaticObject();
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_100CE2670;

  return sub_100B81A40();
}

uint64_t sub_100CE2670(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100CE3ED4, v7, v6);
  }

  else
  {
    v8 = v4[3];

    v9 = v8;
    v10 = swift_task_alloc();
    v4[9] = v10;
    *v10 = v5;
    v10[1] = sub_100CE283C;
    v11 = v4[3];

    return sub_100CE373C(a1, v11);
  }
}

uint64_t sub_100CE283C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 80) = v4;

  if (v4)
  {
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    v14 = sub_100CE3ED8;
  }

  else
  {
    v10[11] = a4;
    v10[12] = a3;
    v10[13] = a2;
    v10[14] = a1;
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v15;
    v14 = sub_100CE3EF8;
  }

  return _swift_task_switch(v14, v11, v13);
}

uint64_t sub_100CE29DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  v9[5] = a2;
  sub_10064191C(0, 0, v6, &unk_1014AB448, v9);
}

uint64_t sub_100CE2B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  type metadata accessor for MainActor();
  v5[14] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CE2BA4, v7, v6);
}

uint64_t sub_100CE2BA4()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    if (!v3)
    {
LABEL_6:

      goto LABEL_9;
    }

    v4 = v3;
    v5 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend__backendState;
    v6 = *(**&v2[OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend__backendState] + 128);

    v6(v7);

    v9 = v0[2];
    v8 = v0[3];
    v11 = v0[4];
    v10 = v0[5];
    if (v10 >> 62 == 1)
    {
      if (v4 != v9)
      {

        sub_100BFD514(v9, v8, v11, v10);
        goto LABEL_6;
      }

      v12 = *&v2[v5];
      *(v0 + 1) = xmmword_101463530;
      *(v0 + 2) = xmmword_10149FEE0;
      v13 = *(*v12 + 136);

      v13(v0 + 2);

      sub_100BFD514(v9, v8, v11, v10);
    }

    else
    {

      sub_100BFD514(v9, v8, v11, v10);
    }
  }

LABEL_9:
  v14 = v0[1];

  return v14();
}

uint64_t _s19AppExSurfaceBackendCMa()
{
  result = qword_101A1AE00;
  if (!qword_101A1AE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100CE2E5C(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100CE2E88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1007FCF88;

  return sub_100CDF864(a1);
}

uint64_t sub_100CE2F1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_100CDC1B0(a1, a2);
}

uint64_t sub_100CE2FC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100CDEDF0(a1, v4, v5, v6);
}

uint64_t sub_100CE3080(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_100CE2B0C(a1, v4, v5, v7, v6);
}

uint64_t sub_100CE3140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[42] = a2;
  v5[43] = a3;
  v5[41] = a1;
  v5[44] = type metadata accessor for MainActor();
  v5[45] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[46] = v8;
  *v8 = v5;
  v8[1] = sub_100CE320C;

  return sub_100CDFD7C((v5 + 36), a4, a5);
}

uint64_t sub_100CE320C()
{
  *(*v1 + 376) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100CE33CC;
  }

  else
  {
    v4 = sub_100CE3364;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100CE3364()
{

  v1 = *(v0 + 288);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100CE33CC()
{

  if (qword_1019F22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 376);
  v2 = *(v0 + 336);
  v19 = *(v0 + 328);
  v20 = static OS_os_log.crlSurface;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  UUID.uuidString.getter();
  String.index(_:offsetBy:)();
  String.subscript.getter();

  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 64) = v7;
  *(inited + 72) = v19;
  *(inited + 80) = v2;
  swift_getErrorValue();

  v8 = Error.localizedDescription.getter();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v7;
  *(inited + 112) = v8;
  *(inited + 120) = v9;
  v10 = static os_log_type_t.error.getter();
  sub_100005404(v20, &_mh_execute_header, v10, "(AppEx:CoreRE) [%{public}@] %{public}@ error: %{public}@", 56, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  *(v0 + 304) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    v13 = *(v0 + 264);
  }

  else
  {
    *(v0 + 312) = *(v0 + 376);
    swift_errorRetain();
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 272);
      v12 = *(v0 + 280);
      v13 = 4;
    }

    else
    {
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v12 = v14;
      v13 = 2;
    }
  }

  v15 = *(*(v0 + 344) + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend__backendState);
  *(v0 + 168) = v11;
  *(v0 + 176) = v12;
  *(v0 + 184) = v13;
  *(v0 + 192) = 0x8000000000000000;
  v16 = *(*v15 + 136);

  sub_10086756C(v11, v12, v13);
  v16(v0 + 168);

  sub_100863EEC(v11, v12, v13);
  swift_willThrow();
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100CE373C(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = type metadata accessor for UUID();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v6;
  v2[14] = v5;

  return _swift_task_switch(sub_100CE3848, v6, v5);
}

uint64_t sub_100CE3848()
{
  receiver = v0[5].receiver;
  v2 = v0[3].receiver;
  super_class = v0[3].super_class;
  v4 = v0[2].super_class;
  v5 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend_uuid;
  v6 = *(super_class + 2);
  v0[7].super_class = v6;
  v0[8].receiver = ((super_class + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  (v6)(receiver, v4 + v5, v2);
  v7 = type metadata accessor for CRLUSDRendererExtensionShared.RendererDelegateReceiverProxy();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtCO8Freeform29CRLUSDRendererExtensionShared29RendererDelegateReceiverProxy_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1018A0758;
  swift_unknownObjectWeakAssign();
  v0[1].receiver = v8;
  v0[1].super_class = v7;

  v9 = objc_msgSendSuper2(v0 + 1, "init");
  v0[8].super_class = v9;
  v10 = v9;
  v0[9].receiver = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[9].super_class = v12;
  v0[10].receiver = v11;

  return _swift_task_switch(sub_100CE3984, v12, v11);
}

uint64_t sub_100CE3984()
{
  v1 = v0[17];
  v2 = v0[10];
  v3 = swift_task_alloc();
  v0[21] = v3;
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = 1;
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_100CE3A88;

  return sub_100860D0C(0xD00000000000002CLL, 0x800000010156F7C0, sub_1008671B4, v3);
}

uint64_t sub_100CE3A88(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {

    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_100BFDE74;
  }

  else
  {
    v4[24] = a1;

    v5 = v4[19];
    v6 = v4[20];
    v7 = sub_100CE3BD0;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100CE3BD0()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100CE3C3C, v1, v2);
}

uint64_t sub_100CE3C3C()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  v1(v2, v3, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, v2, v5);
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  v10 = AnyCancellable.init(_:)();

  (*(v4 + 8))(v3, v5);

  v11 = v0[1];
  v12 = v0[24];
  v13 = v0[17];
  v14 = v0[4];

  return v11(v14, v12, v13, v10);
}

uint64_t sub_100CE3DA4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100CDBFB4(v2, v3);
}

uint64_t sub_100CE3E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100CE25B0(a1, v4, v5, v6);
}

uint64_t sub_100CE3EFC(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100CE3F14(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100CE3F34()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x746144616964656DLL;
  }
}

uint64_t sub_100CE3F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746144616964656DLL && a2 == 0xE900000000000061;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
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

uint64_t sub_100CE4074(uint64_t a1, uint64_t a2)
{
  v4 = sub_100CE49E0();
  v5 = sub_100CE4A38();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_100CE40CC(uint64_t a1)
{
  v2 = sub_100CE4A38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100CE4108(uint64_t a1)
{
  v2 = sub_100CE4A38();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_100CE4144()
{
  v1 = *(v0 + 312);
  v22 = *(v0 + 296);
  v23 = v1;
  v2 = *(v0 + 344);
  v24 = *(v0 + 328);
  v25 = v2;
  v3 = *(v0 + 248);
  v18 = *(v0 + 232);
  v19 = v3;
  v4 = *(v0 + 280);
  v20 = *(v0 + 264);
  v21 = v4;
  if (sub_10074A978(&v18) == 1)
  {
    return 0;
  }

  v26[2] = v20;
  v26[3] = v21;
  v26[4] = v22;
  v27 = v23;
  v26[0] = v18;
  v26[1] = v19;
  v6 = *(&v23 + 1);
  v7 = v24;
  v8 = *(&v24 + 2);
  v9 = v25;
  sub_100CE5068();
  v16[3] = v21;
  v16[4] = v22;
  v17 = v23;
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  sub_10074A990(v26, v15);
  v10 = sub_1008B0490(v16);
  v11 = *&v6;
  v12 = *(&v6 + 1);
  if (v9)
  {
    v13 = [objc_allocWithZone(CRLCurvedShadow) initWithOffset:v10 angle:1 radius:v12 curve:v11 opacity:*&v7 color:v8 enabled:*(&v7 + 1)];
  }

  else
  {
    v13 = [objc_allocWithZone(CRLDropShadow) initWithAngle:v10 offset:1 radius:v11 opacity:v12 color:*&v7 enabled:*(&v7 + 1)];
  }

  v14 = v13;

  return v14;
}

uint64_t sub_100CE42DC(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A1AE90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100CE4A38();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v13, v3, 0x178uLL);
  memcpy(v12, v3, sizeof(v12));
  v13[399] = 0;
  sub_100CE4F64(v13, v11);
  sub_100CE4FC0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v11, v12, sizeof(v11));
  sub_100CE4ED8(v11);
  if (!v2)
  {
    v10[1] = v3[47];
    v13[398] = 1;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100CE44E4(uint64_t a1)
{

  *(v1 + 376) = a1;
  return result;
}

uint64_t sub_100CE4530(uint64_t *__src, void *a2)
{
  memcpy(v7, __src, sizeof(v7));
  v4 = __src[47];
  memcpy(__dst, a2, sizeof(__dst));
  v5 = a2[47];
  if ((sub_10110A0A0(v7, __dst) & 1) == 0)
  {
    return 0;
  }

  return sub_100B3216C(v4, v5);
}

void *sub_100CE45CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100CE4BFC(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x180uLL);
  }

  return result;
}

uint64_t sub_100CE4630(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B6D4C4();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100CE4684(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B6D4C4();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100CE46D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007E614();
  v7 = sub_100CE5014();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100CE4748(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B6D4C4();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_100CE482C(uint64_t a1)
{
  v2 = sub_100CE4BA8();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_100CE4880()
{
  result = qword_101A1AE20;
  if (!qword_101A1AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE20);
  }

  return result;
}

unint64_t sub_100CE48D8()
{
  result = qword_101A1AE28;
  if (!qword_101A1AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE28);
  }

  return result;
}

unint64_t sub_100CE4930()
{
  result = qword_101A1AE30;
  if (!qword_101A1AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE30);
  }

  return result;
}

unint64_t sub_100CE4988()
{
  result = qword_101A1AE38;
  if (!qword_101A1AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE38);
  }

  return result;
}

unint64_t sub_100CE49E0()
{
  result = qword_101A1AE40;
  if (!qword_101A1AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE40);
  }

  return result;
}

unint64_t sub_100CE4A38()
{
  result = qword_101A1AE48;
  if (!qword_101A1AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE48);
  }

  return result;
}

unint64_t sub_100CE4A90()
{
  result = qword_101A1AE50;
  if (!qword_101A1AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE50);
  }

  return result;
}

unint64_t sub_100CE4AE8()
{
  result = qword_101A1AE58;
  if (!qword_101A1AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE58);
  }

  return result;
}

unint64_t sub_100CE4B40()
{
  result = qword_101A1AE60;
  if (!qword_101A1AE60)
  {
    sub_1005C4E5C(&qword_101A1AE68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE60);
  }

  return result;
}

unint64_t sub_100CE4BA8()
{
  result = qword_101A1AE70;
  if (!qword_101A1AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE70);
  }

  return result;
}

void *sub_100CE4BFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v4 = sub_1005B981C(&qword_101A1AE80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_100020E58(a1, a1[3]);
  sub_100CE4A38();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v8 = v12;
  v18[399] = 0;
  sub_100CE4E84();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  memcpy(v18, v17, 0x178uLL);
  sub_1005B981C(&unk_101A0D960);
  v18[398] = 1;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v5 + 8))(v7, v4);
  v9 = v16;
  memcpy(v13, v18, 0x178uLL);
  v13[47] = v16;
  sub_100CE4F2C(v13, v14);
  sub_100005070(a1);
  memcpy(v14, v18, sizeof(v14));
  v15 = v9;
  sub_1009CCE88(v14);
  return memcpy(v8, v13, 0x180uLL);
}

unint64_t sub_100CE4E84()
{
  result = qword_101A1AE88;
  if (!qword_101A1AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE88);
  }

  return result;
}

unint64_t sub_100CE4FC0()
{
  result = qword_101A1AE98;
  if (!qword_101A1AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE98);
  }

  return result;
}

unint64_t sub_100CE5014()
{
  result = qword_101A1AEA0;
  if (!qword_101A1AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AEA0);
  }

  return result;
}

unint64_t sub_100CE5068()
{
  result = qword_101A00EB0;
  if (!qword_101A00EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A00EB0);
  }

  return result;
}

unint64_t sub_100CE50C8()
{
  result = qword_101A1AEA8;
  if (!qword_101A1AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AEA8);
  }

  return result;
}

void *sub_100CE511C(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  if (result)
  {
    v3 = result;
    v4 = [result title];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100CE51A4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))();
  v3 = sub_100CE5200(v2);

  return v3;
}

uint64_t sub_100CE5200(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v2 = v1[3];
  v3 = v1[4];
  sub_100020E58(v1, v2);
  v5 = (*(v3 + 32))(v2, v3);
  result = 0;
  if (v4 >> 60 != 15)
  {
    v7 = v4;
    sub_100006370(0, &qword_101A1AEB0);
    sub_100006370(0, &unk_101A23D30);
    v8 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    sub_100025870(v5, v7);
    return v8;
  }

  return result;
}

uint64_t static PHPickerViewController.crl_makePicker(delegate:allowMultiSelect:filter:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_100CE57A8(a1, a3, a4, v4, ObjectType, a2);
}

id PHPickerViewController.crl_loadFileRepresentations(for:supportedTypeIdentifiers:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for PHPickerResult();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v24[1] = a2;
    v25 = a3;
    v26 = a4;
    v27 = v4;
    aBlock[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = *(v10 + 16);
    v14 = v10 + 16;
    v28 = v15;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    do
    {
      v28(v12, v16, v9);
      PHPickerResult.itemProvider.getter();
      (*(v14 - 8))(v12, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 += v17;
      --v13;
    }

    while (v13);
    a4 = v26;
    v18 = v27;
    a3 = v25;
  }

  else
  {
    v18 = v4;
  }

  sub_100006370(0, &unk_101A23D20);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = Array._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100CE56F8;
  aBlock[3] = &unk_1018A0AB8;
  v21 = _Block_copy(aBlock);

  v22 = [v18 crl_loadFileRepresentationsForResultItemProviders:isa supportedTypeIdentifiers:v20 completionHandler:v21];
  _Block_release(v21);

  return v22;
}

uint64_t sub_100CE56F8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    type metadata accessor for URL();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a2;
  v9 = a4;
  v7(a2, v5, a4);
}

uint64_t sub_100CE57A8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[0] = a3;
  v23[1] = a6;
  v7 = sub_1005B981C(&qword_101A10B10);
  __chkstk_darwin(v7 - 8);
  v9 = v23 - v8;
  v10 = type metadata accessor for PHPickerConfiguration.AssetRepresentationMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PHPickerConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v23 - v19;
  PHPickerConfiguration.init()();
  (*(v11 + 104))(v13, enum case for PHPickerConfiguration.AssetRepresentationMode.current(_:), v10);
  PHPickerConfiguration.preferredAssetRepresentationMode.setter();
  if (a2)
  {
    PHPickerConfiguration.selectionLimit.setter();
  }

  sub_100CE5A28(v23[0], v9);
  PHPickerConfiguration.filter.setter();
  sub_100006370(0, &unk_1019F6BC0);
  (*(v15 + 16))(v17, v20, v14);
  v21 = PHPickerViewController.init(configuration:)();
  swift_unknownObjectRetain();
  PHPickerViewController.delegate.setter();
  (*(v15 + 8))(v20, v14);
  return v21;
}

uint64_t sub_100CE5A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A10B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100CE5BA8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for CRLShadowLayer();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_100CE5BF4(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v25.receiver = a1;
  v25.super_class = type metadata accessor for CRLShadowLayer();
  v12 = *a7;
  v13 = v25.receiver;
  objc_msgSendSuper2(&v25, v12, a2, a3, a4, a5);
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v13 cornerRadius];
  v23 = [objc_opt_self() bezierPathWithContinuousCornerRoundedRect:v15 cornerRadius:{v17, v19, v21, v22}];
  v24 = [v23 CGPath];

  [v13 setShadowPath:v24];
}

id sub_100CE5F6C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

id sub_100CE6000(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100CE6438(void *a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = OBJC_IVAR____TtC8Freeform21CRLFileRepPlaceHolder_previewItemURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[OBJC_IVAR____TtC8Freeform21CRLFileRepPlaceHolder_fileRep] = a1;
  v9 = a1;
  v10 = sub_100BACB7C();
  v11 = &v2[OBJC_IVAR____TtC8Freeform21CRLFileRepPlaceHolder_previewItemTitle];
  *v11 = v10;
  v11[1] = v12;
  v13 = sub_100BAC798();
  if (v11[1])
  {
    v14 = *v11;
    v15 = v11[1];
  }

  else
  {
    v15 = 0xE400000000000000;
    v14 = 1701603686;
  }

  v16 = sub_101259F90(v6, v14, v15);

  swift_beginAccess();
  sub_10067DE0C(v6, &v2[v7]);
  swift_endAccess();
  v17 = type metadata accessor for CRLFileRepPlaceHolder();
  v23.receiver = v2;
  v23.super_class = v17;
  v18 = objc_msgSendSuper2(&v23, "init");
  v19 = v18;
  if (v16)
  {
    [v16 setAssociatedLifetimeObject:v9];

    sub_100686028(v6);
  }

  else
  {
    v20 = v18;
    sub_100686028(v6);
  }

  return v19;
}

id sub_100CE6650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFileRepPlaceHolder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLFileRepPlaceHolder()
{
  result = qword_101A1AF38;
  if (!qword_101A1AF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100CE673C()
{
  sub_10084E720();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100CE67E4(double a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() animationWithKeyPath:v3];

  v5 = v4;
  [v5 setDuration:a1];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v5 setToValue:isa];

  [v5 setRemovedOnCompletion:0];
  [v5 setFillMode:kCAFillModeForwards];

  v7 = String._bridgeToObjectiveC()();
  [v1 addAnimation:v5 forKey:v7];
}

void sub_100CE6920(double a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() animationWithKeyPath:v3];

  v5 = v4;
  [v5 setDuration:a1];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v5 setFromValue:isa];

  [v5 setRemovedOnCompletion:1];
  [v1 opacity];
  v7 = Float._bridgeToObjectiveC()().super.super.isa;
  [v5 setToValue:v7];

  v8 = String._bridgeToObjectiveC()();
  [v1 addAnimation:v5 forKey:v8];

  v9 = String._bridgeToObjectiveC()();
  [v1 removeAnimationForKey:v9];
}

void sub_100CE6AA0(void *a1, void *a2, void *a3)
{
  *(v3 + OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_textEditingAccessoryViewController) = 0;
  *(v3 + OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_icc) = a1;
  v6 = a1;
  v7 = [v6 layerHost];
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = v7;
  v9 = a3;
  v10 = sub_100734EF4(v8, v9);
  objc_allocWithZone(type metadata accessor for CRLiOSMiniFormatterTextEditingAccessoryViewController());
  v11 = v10;
  v12 = v6;
  v13 = v9;
  v14 = v11;
  v15 = a2;
  v16 = sub_101061ABC(v12, a2, v13, v14);
  v17 = OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_textEditingAccessoryViewController;
  v18 = *&v14[OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_textEditingAccessoryViewController];
  *&v14[OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_textEditingAccessoryViewController] = v16;

  v19 = *&v14[v17];
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v20 = *(v19 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_textBuilder);
  if (v20)
  {
    v21 = v20;
    v22 = sub_10061167C();

    v23 = *&v14[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_observedObjects];
    *&v14[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_observedObjects] = v22;
    sub_1007351F0(v23);

    sub_1007351FC(v24);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100CE6C28(uint64_t a1, uint64_t a2)
{
  result = sub_100CE7490();
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = result + 32;
    v9 = _swiftEmptyArrayStorage;
    while (v7 < *(v5 + 16))
    {
      sub_10000630C(v8, &v16);
      v10 = v17;
      v11 = v18;
      sub_100020E58(&v16, v17);
      if ((*(v11 + 24))(a1, a2, v10, v11))
      {
        sub_100050F74(&v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776A64(0, v9[2] + 1, 1);
          v9 = v19;
        }

        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          sub_100776A64((v13 > 1), v14 + 1, 1);
          v9 = v19;
        }

        v9[2] = v14 + 1;
        result = sub_100050F74(v15, &v9[5 * v14 + 4]);
      }

      else
      {
        result = sub_100005070(&v16);
      }

      ++v7;
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_13:

    return v9;
  }

  return result;
}

uint64_t sub_100CE6DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100CE7490();
  v6[2] = a1;
  v6[3] = a2;
  return sub_1009A4108(sub_100CE7A80, v6, v4);
}

uint64_t sub_100CE6E00()
{
  result = sub_100CE7490();
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = _swiftEmptyArrayStorage;
    while (v3 < *(v1 + 16))
    {
      sub_10000630C(v4, &v12);
      v6 = v13;
      v7 = v14;
      sub_100020E58(&v12, v13);
      if ((*(v7 + 32))(v6, v7))
      {
        sub_100050F74(&v12, v11);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776A64(0, v5[2] + 1, 1);
          v5 = v15;
        }

        v10 = v5[2];
        v9 = v5[3];
        if (v10 >= v9 >> 1)
        {
          sub_100776A64((v9 > 1), v10 + 1, 1);
          v5 = v15;
        }

        v5[2] = v10 + 1;
        result = sub_100050F74(v11, &v5[5 * v10 + 4]);
      }

      else
      {
        result = sub_100005070(&v12);
      }

      ++v3;
      v4 += 40;
      if (v2 == v3)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_13:

    return v5;
  }

  return result;
}

uint64_t sub_100CE6F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100CE7800(&v14);
  if (v15)
  {
    sub_100050F74(&v14, v16);
    v7 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_editorController);
    if (type metadata accessor for CRLWPEditor())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v10 = [v7 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    v11 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v11 && (v12 = v17, v13 = v18, sub_100020E58(v16, v17), ((*(v13 + 8))(a1, a2, v12, v13) & 1) == 0))
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      sub_10000630C(v16, a3);
    }

    return sub_100005070(v16);
  }

  else
  {
    result = sub_10000CAAC(&v14, &qword_1019FD6C8);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100CE70B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100CE7800(&v9);
  if (v10)
  {
    sub_100050F74(&v9, v11);
    v6 = v12;
    v7 = v13;
    sub_100020E58(v11, v12);
    if ((*(v7 + 16))(a1, a2, v6, v7))
    {
      sub_10000630C(v11, a3);
    }

    else
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return sub_100005070(v11);
  }

  else
  {
    result = sub_10000CAAC(&v9, &qword_1019FD6C8);
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_100CE7198(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_textEditingAccessoryViewController);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
    if (v3)
    {
      sub_10000630C(a1, v15);
      v4 = v3;
      sub_1005B981C(&unk_1019FCBB0);
      sub_100AC7190();
      if (swift_dynamicCast())
      {
        v5 = v14;
        v6 = [v4 topViewController];
        if (v6 && (v7 = v6, v8 = v14, v9 = static NSObject.== infix(_:_:)(), v8, v7, (v9 & 1) != 0))
        {
          [v4 dismissViewControllerAnimated:1 completion:0];
        }

        else
        {
          v10 = [v4 viewControllers];
          v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v15[0] = v14;
          __chkstk_darwin(v12);
          v13[2] = v15;
          LOBYTE(v10) = sub_100C33540(sub_100CE7A28, v13, v11);

          if (v10)
          {
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100CE7394()
{
  result = [*(v0 + OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_icc) layerHost];
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector:"asiOSCVC"])
    {
      v3 = [v2 asiOSCVC];
      swift_unknownObjectRelease();
      result = [v3 delegate];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v4 = result;
      if ([result respondsToSelector:"viewControllerForMiniFormatterForCanvasViewController:"])
      {
        v5 = [v4 viewControllerForMiniFormatterForCanvasViewController:v3];

        swift_unknownObjectRelease();
        return v5;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_100CE7490()
{
  sub_1005B981C(&qword_1019FCBD0);
  result = swift_allocObject();
  *(result + 16) = xmmword_10146C6B0;
  v2 = OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_textEditingAccessoryViewController;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_textEditingAccessoryViewController);
  if (!v3)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v4 = result;
  *(result + 56) = type metadata accessor for CRLiOSMiniFormatterTextEditingAccessoryViewController();
  *(v4 + 64) = &off_1018AF4F0;
  *(v4 + 32) = v3;
  v29 = v4;
  v5 = *&v3[OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedAuxiliaryViewController];
  if (v5)
  {
    sub_100AC7190();
    v6 = v3;
    v7 = v5;
    sub_1005B981C(&unk_1019FCBE0);
    if (swift_dynamicCast())
    {
      if (*(&v26 + 1))
      {

        sub_100050F74(&v25, v28);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_10146C6B0;
        sub_100050F74(v28, v8 + 32);
        return v8;
      }
    }

    else
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
    }
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v9 = v3;
  }

  result = sub_10000CAAC(&v25, &qword_1019FCBD8);
  v10 = *(v0 + v2);
  if (!v10)
  {
    goto LABEL_32;
  }

  v11 = *(v10 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
  if (v11)
  {
    v12 = [v11 viewControllers];
    sub_100AC7190();
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *&v25 = _swiftEmptyArrayStorage;
    if (v13 >> 62)
    {
      goto LABEL_25;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      while (1)
      {
        v15 = 0;
        v16 = v13 & 0xC000000000000001;
        v17 = v13 & 0xFFFFFFFFFFFFFF8;
        v23 = v13;
        v24 = v14;
        while (v16)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v19 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v21 = v25;
            goto LABEL_27;
          }

LABEL_18:
          v20 = v18;
          sub_1005B981C(&unk_1019FCBE0);
          if (swift_dynamicCast())
          {
            sub_100005070(v28);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v13 = v23;
            v14 = v24;
          }

          else
          {
          }

          ++v15;
          if (v19 == v14)
          {
            goto LABEL_23;
          }
        }

        if (v15 < *(v17 + 16))
        {
          break;
        }

        __break(1u);
LABEL_25:
        v14 = _CocoaArrayWrapper.endIndex.getter();
        if (!v14)
        {
          goto LABEL_26;
        }
      }

      v18 = *(v13 + 8 * v15 + 32);
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

LABEL_26:
    v21 = _swiftEmptyArrayStorage;
LABEL_27:

    v22 = sub_100F222FC(v21);

    if (v22)
    {
      sub_10079AFF8(v22);
    }
  }

  return v29;
}

void sub_100CE7800(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_textEditingAccessoryViewController);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8Freeform53CRLiOSMiniFormatterTextEditingAccessoryViewController_presentedNavigationController);
    if (v4 && [v4 visibleViewController] && (sub_100AC7190(), sub_1005B981C(&unk_1019FCBB0), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v6 + 1))
      {
        sub_100050F74(&v5, a1);
        return;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
    }

    sub_10000CAAC(&v5, &qword_1019FD6C8);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    __break(1u);
  }
}

void sub_100CE78F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform51CRLiOSMiniFormatterTextEditingAccessoryStateManager_icc);
}

id sub_100CE7930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSMiniFormatterTextEditingAccessoryStateManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100CE7A80(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[3];
  v5 = a1[4];
  sub_100020E58(a1, v4);
  return (*(v5 + 16))(v3, v2, v4, v5) & 1;
}

id sub_100CE7C24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPSystemWritingToolsCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100CE7C7C()
{
  type metadata accessor for CRLCloudKitShareNameHelper();
  swift_allocObject();
  result = sub_100CE8274();
  qword_101A1AFB0 = result;
  return result;
}

uint64_t sub_100CE7CBC(char a1)
{
  v3 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v3 - 8);
  v60 = v58 - v4;
  v5 = type metadata accessor for CharacterSet();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PersonNameComponents();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v58 - v14;
  __chkstk_darwin(v13);
  v17 = v58 - v16;
  v18 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  [v18 setStyle:a1 & 1];
  v19 = [v1 userIdentity];
  v20 = [v19 nameComponents];

  if (v20)
  {
    v59 = v12;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v9 + 32))(v17, v15, v8);
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v22 = [v18 stringFromPersonNameComponents:isa];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v63 = v23;
    v64 = v25;
    static CharacterSet.whitespaces.getter();
    sub_100017CD8();
    v26 = StringProtocol.trimmingCharacters(in:)();
    v28 = v27;
    (*(v61 + 8))(v7, v62);

    (*(v9 + 8))(v17, v8);
    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {

      return v26;
    }

    v12 = v59;
  }

  v30 = sub_100CE9084();
  if (!v31)
  {
    goto LABEL_17;
  }

  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {

    goto LABEL_17;
  }

  v33 = sub_100CEA76C(v30, v31);

  if (!v33)
  {
LABEL_17:

    return 0;
  }

  v34 = [v33 namePrefix];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58[7] = v36;
  v59 = v35;

  v37 = [v33 givenName];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58[5] = v39;
  v58[6] = v38;

  v40 = [v33 middleName];
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58[3] = v42;
  v58[4] = v41;

  v43 = [v33 familyName];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58[1] = v45;
  v58[2] = v44;

  v46 = [v33 nameSuffix];
  v58[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = [v33 nickname];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v9 + 56))(v60, 1, 1, v8);
  PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
  v48 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v49 = [v18 stringFromPersonNameComponents:v48];

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v12;
  v53 = v52;

  v63 = v50;
  v64 = v53;
  static CharacterSet.whitespaces.getter();
  sub_100017CD8();
  v26 = StringProtocol.trimmingCharacters(in:)();
  v55 = v54;

  (*(v61 + 8))(v7, v62);

  (*(v9 + 8))(v51, v8);
  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {

    return 0;
  }

  return v26;
}

uint64_t sub_100CE8274()
{
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = sub_100BD471C(_swiftEmptyArrayStorage);
  v6 = sub_100006370(0, &qword_1019F2D90);
  v14[0] = "ntacts for email (%@): %@";
  v14[1] = v6;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006448(&qword_101A1DE70, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1005B981C(&unk_1019FB800);
  sub_1000067A8(&qword_101A1DE80, &unk_1019FB800);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = v15;
  *(v15 + 24) = v7;
  v9 = [objc_opt_self() defaultCenter];
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100CEAEB8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100059694;
  aBlock[3] = &unk_1018A0BE0;
  v11 = _Block_copy(aBlock);

  v12 = [v9 addObserverForName:CNContactStoreDidChangeNotification object:0 queue:0 usingBlock:v11];
  _Block_release(v11);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_100CE85EC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = *(result + 24);
    v16 = v7;
    v15 = v12;

    aBlock[4] = sub_100CEAEC0;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018A0C08;
    v13 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v17 = _swiftEmptyArrayStorage;
    sub_100006448(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v14 = v15;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v16);
  }

  return result;
}

uint64_t sub_100CE88C8()
{
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.shareState;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Received CNContactStoreDidChange notification, clearing cache", 61, 2, _swiftEmptyArrayStorage);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    *(v3 + 16) = &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100CE89B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13 = 1;
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  v7[2] = &v13;
  v7[3] = v3;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100CEB8F0;
  *(v8 + 24) = v7;
  aBlock[4] = sub_10002AAE4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10002AAB8;
  aBlock[3] = &unk_1018A0CD0;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;

    return v11;
  }

  return result;
}

void sub_100CE8B38(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a2 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_10000BE7C(a3, a4);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      v12 = v11;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v13 = *a1;
  *a1 = v11;
  sub_1000505D0(v13);
}

uint64_t sub_100CE8BDC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v4 + 24);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a1;
  aBlock[4] = sub_100CEB8E4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018A0C58;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100006448(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_100CE8EB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  v8 = a4;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  sub_100AA0A10(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_100CE8F64()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100CE8FC8(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100CE9024(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100CE9084()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 userIdentity];
  v6 = [v5 lookupInfo];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 emailAddress];

  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v13[0] = v8;
  v13[1] = v10;
  static CharacterSet.whitespaces.getter();
  sub_100017CD8();
  v11 = StringProtocol.trimmingCharacters(in:)();
  (*(v2 + 8))(v4, v1);

  return v11;
}

uint64_t sub_100CE9208(void *a1, void *a2, uint64_t a3)
{
  sub_100020E58(a1, a1[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100020E58(a2, a2[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  v7 = (*(a3 + 16))(a3, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_100CE9298(void *a1, void *a2, char a3, uint64_t a4, uint64_t (*a5)(void *, void *))
{
  if (a3)
  {
    v15 = sub_100006370(0, &qword_101A00EC0);
    v13 = v15;
    v14[0] = a2;
    v12[0] = a1;
  }

  else
  {
    v15 = sub_100006370(0, &qword_101A00EC0);
    v13 = v15;
    v14[0] = a1;
    v12[0] = a2;
  }

  v8 = a1;
  v9 = a2;
  v10 = a5(v14, v12);
  sub_100005070(v12);
  sub_100005070(v14);
  return v10;
}

Swift::Int sub_100CE9374()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  SortOrder.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100CE93D4()
{
  Hasher._combine(_:)(*(v0 + 8));

  return SortOrder.hash(into:)();
}

Swift::Int sub_100CE9424()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  SortOrder.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100CE9480(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*(a1 + 1) == *(a2 + 1))
  {
    return static SortOrder.== infix(_:_:)(*a1, *a2);
  }

  else
  {
    return 0;
  }
}

void sub_100CE94A4()
{
  v1 = [v0 containerID];
  if (v1)
  {
  }

  else
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v25);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 165;
    v15 = v25;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "The containerID of a share should never be nil. This can prevent fast sync from starting.", 89, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:165 isFatal:0 format:v24 args:v21];

    [v2 logFullBacktrace];
  }
}

void sub_100CE9894(unint64_t a1)
{
  v3 = a1;
  v4 = sub_100CEAD08(a1);
  v5 = [v1 currentUserParticipant];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 role];

    if (v7 == 1)
    {
      v2 = (v4 >> 62);
      if (!(v4 >> 62))
      {
        v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8 != 2)
        {
LABEL_5:
          v9 = v8 - 1;
          if (v8 != 1)
          {
            if (!v8)
            {

              v10 = [objc_opt_self() mainBundle];
              v11 = String._bridgeToObjectiveC()();
              v12 = String._bridgeToObjectiveC()();
              v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              return;
            }

            if (v8 >= 3)
            {
              v35 = [objc_opt_self() mainBundle];
              v36._countAndFlagsBits = 0xD000000000000014;
              v106._object = 0x800000010159A470;
              v36._object = 0x800000010159A540;
              v106._countAndFlagsBits = 0xD0000000000000A0;
              v37._countAndFlagsBits = 0;
              v37._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v106);

              if ((v4 & 0xC000000000000001) == 0)
              {
                if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v38 = *(v4 + 32);
                  goto LABEL_44;
                }

                goto LABEL_125;
              }

LABEL_121:
              v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_44:
              v39 = v38;

              v40 = sub_100CE7CBC(1);
              v42 = v41;

              if (v42)
              {
                sub_1005B981C(&qword_1019F54E0);
                v43 = swift_allocObject();
                *(v43 + 16) = xmmword_10146BDE0;
                *(v43 + 56) = &type metadata for String;
                v44 = sub_1000053B0();
                *(v43 + 32) = v40;
                *(v43 + 40) = v42;
                *(v43 + 96) = &type metadata for Int;
                *(v43 + 104) = &protocol witness table for Int;
                *(v43 + 64) = v44;
                *(v43 + 72) = v9;
                static String.localizedStringWithFormat(_:_:)();
              }

              goto LABEL_109;
            }

            if (v3 >> 62)
            {
              v100 = _CocoaArrayWrapper.endIndex.getter();
              v53 = v100 - 1;
              if (!__OFSUB__(v100, 1))
              {
                goto LABEL_56;
              }
            }

            else
            {
              v52 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v53 = v52 - 1;
              if (!__OFSUB__(v52, 1))
              {
LABEL_56:
                v54 = [objc_opt_self() mainBundle];
                v55._countAndFlagsBits = 0xD000000000000015;
                v107._object = 0x800000010159A400;
                v55._object = 0x800000010159A520;
                v56._countAndFlagsBits = 0;
                v56._object = 0xE000000000000000;
                v107._countAndFlagsBits = 0xD000000000000062;
                NSLocalizedString(_:tableName:bundle:value:comment:)(v55, 0, v54, v56, v107);

                sub_1005B981C(&qword_1019F54E0);
                v57 = swift_allocObject();
                *(v57 + 16) = xmmword_10146C6B0;
                *(v57 + 56) = &type metadata for Int;
                *(v57 + 64) = &protocol witness table for Int;
                *(v57 + 32) = v53;
                static String.localizedStringWithFormat(_:_:)();

                return;
              }
            }

            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          v31 = [objc_opt_self() mainBundle];
          v32 = String._bridgeToObjectiveC()();
          v33 = String._bridgeToObjectiveC()();
          v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (!v2)
          {
            if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_103;
            }

LABEL_49:
            if ((v4 & 0xC000000000000001) == 0)
            {
              if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_121;
              }

              v46 = *(v4 + 32);
              goto LABEL_52;
            }

LABEL_119:
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_52:
            v47 = v46;

            v48 = sub_100CE7CBC(0);
            v50 = v49;

            if (!v50)
            {
              goto LABEL_109;
            }

            sub_1005B981C(&qword_1019F54E0);
            v51 = swift_allocObject();
            *(v51 + 16) = xmmword_10146C6B0;
            *(v51 + 56) = &type metadata for String;
            *(v51 + 64) = sub_1000053B0();
            *(v51 + 32) = v48;
            *(v51 + 40) = v50;
            goto LABEL_108;
          }

          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_49;
          }

LABEL_103:

          goto LABEL_109;
        }

        goto LABEL_97;
      }

LABEL_96:
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v8 != 2)
      {
        goto LABEL_5;
      }

LABEL_97:
      v84 = [objc_opt_self() mainBundle];
      v85 = String._bridgeToObjectiveC()();
      v86 = String._bridgeToObjectiveC()();
      v87 = [v84 localizedStringForKey:v85 value:v86 table:0];

      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if ((v4 & 0xC000000000000001) != 0)
      {
        v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_100:
        v89 = v88;
        v90 = sub_100CE7CBC(1);
        v92 = v91;

        if (v92)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
            {
LABEL_126:
              __break(1u);
              return;
            }

            v93 = *(v4 + 40);
          }

          v94 = v93;

          v95 = sub_100CE7CBC(1);
          v97 = v96;

          if (!v97)
          {

            goto LABEL_109;
          }

          sub_1005B981C(&qword_1019F54E0);
          v98 = swift_allocObject();
          *(v98 + 16) = xmmword_10146BDE0;
          *(v98 + 56) = &type metadata for String;
          v99 = sub_1000053B0();
          *(v98 + 32) = v90;
          *(v98 + 40) = v92;
          *(v98 + 96) = &type metadata for String;
          *(v98 + 104) = v99;
          *(v98 + 64) = v99;
          *(v98 + 72) = v95;
          *(v98 + 80) = v97;
LABEL_108:
          String.init(format:_:)();
          goto LABEL_109;
        }

        goto LABEL_103;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v88 = *(v4 + 32);
        goto LABEL_100;
      }

      __break(1u);
      goto LABEL_116;
    }
  }

  if (v3 >> 62)
  {
LABEL_63:
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v103 = v4;
    v15 = 0;
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v16 = *(v3 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      if ([v16 role] == 1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v2 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v15;
    }

    while (v18 != v14);
    v4 = v103;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_64;
  }

LABEL_24:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_64:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_65;
    }

    goto LABEL_26;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
LABEL_65:

LABEL_109:

    return;
  }

LABEL_26:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!_swiftEmptyArrayStorage[2])
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v19 = _swiftEmptyArrayStorage[4];
  }

  v104 = v19;

  v2 = (v4 >> 62);
  if (!(v4 >> 62))
  {
    v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 != 2)
    {
      goto LABEL_31;
    }

LABEL_68:
    v63 = [objc_opt_self() mainBundle];
    v64 = String._bridgeToObjectiveC()();
    v65 = String._bridgeToObjectiveC()();
    v66 = [v63 localizedStringForKey:v64 value:v65 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v104;
    v67 = sub_100CE7CBC(1);
    if (!v68)
    {
LABEL_92:

      return;
    }

    v102 = v68;
    v101 = v67;
    if (v2)
    {
      v69 = _CocoaArrayWrapper.endIndex.getter();
      if (v69)
      {
LABEL_71:
        v70 = v4;
        v4 = 0;
        v71 = v70 & 0xC000000000000001;
        v72 = v70;
        v73 = v70 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v71)
          {
            v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v4 >= *(v73 + 16))
            {
              goto LABEL_94;
            }

            v74 = *(v72 + 8 * v4 + 32);
          }

          v2 = v74;
          v75 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          sub_100006370(0, &qword_1019F5520);
          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v3 = v104;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v4;
          if (v75 == v69)
          {
            goto LABEL_84;
          }
        }

        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }

    else
    {
      v69 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v69)
      {
        goto LABEL_71;
      }
    }

LABEL_84:

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_87:
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0)
        {
          if (!_swiftEmptyArrayStorage[2])
          {
            __break(1u);
            goto LABEL_119;
          }

          v76 = _swiftEmptyArrayStorage[4];
          goto LABEL_90;
        }

LABEL_117:
        v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_90:
        v77 = v76;

        v78 = sub_100CE7CBC(1);
        v80 = v79;

        if (v80)
        {
          sub_1005B981C(&qword_1019F54E0);
          v81 = v3;
          v82 = swift_allocObject();
          *(v82 + 16) = xmmword_10146BDE0;
          *(v82 + 56) = &type metadata for String;
          v83 = sub_1000053B0();
          *(v82 + 32) = v101;
          *(v82 + 40) = v102;
          *(v82 + 96) = &type metadata for String;
          *(v82 + 104) = v83;
          *(v82 + 64) = v83;
          *(v82 + 72) = v78;
          *(v82 + 80) = v80;
          String.init(format:_:)();

          return;
        }

        goto LABEL_92;
      }
    }

    else if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_87;
    }

    return;
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
  if (v20 == 2)
  {
    goto LABEL_68;
  }

LABEL_31:
  v21 = v20 - 1;
  if (v20 == 1)
  {

    sub_100CE7CBC(0);

    return;
  }

  if (v20 < 3)
  {
    if (v3 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v45 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v58 = v45 - 1;
    if (!__OFSUB__(v45, 1))
    {
      v59 = [objc_opt_self() mainBundle];
      v60._countAndFlagsBits = 0xD000000000000010;
      v108._object = 0x800000010159A400;
      v60._object = 0x800000010159A3E0;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      v108._countAndFlagsBits = 0xD000000000000062;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v59, v61, v108);

      sub_1005B981C(&qword_1019F54E0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_10146C6B0;
      *(v62 + 56) = &type metadata for Int;
      *(v62 + 64) = &protocol witness table for Int;
      *(v62 + 32) = v58;
      static String.localizedStringWithFormat(_:_:)();

      return;
    }

LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v22 = [objc_opt_self() mainBundle];
  v105._object = 0x800000010159A470;
  v23._countAndFlagsBits = 0x646C252026204025;
  v23._object = 0xEF73726568744F20;
  v105._countAndFlagsBits = 0xD0000000000000A0;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v105);

  v25 = sub_100CE7CBC(1);
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    sub_1005B981C(&qword_1019F54E0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10146BDE0;
    *(v29 + 56) = &type metadata for String;
    v30 = sub_1000053B0();
    *(v29 + 32) = v27;
    *(v29 + 40) = v28;
    *(v29 + 96) = &type metadata for Int;
    *(v29 + 104) = &protocol witness table for Int;
    *(v29 + 64) = v30;
    *(v29 + 72) = v21;
    static String.localizedStringWithFormat(_:_:)();
  }
}