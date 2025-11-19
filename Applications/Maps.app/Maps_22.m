uint64_t sub_1002BFA18(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for MapsElevationChartViewModel.ElevationDatum(0) + 20);

  return sub_1002BFA60(v1);
}

uint64_t sub_1002BFA60(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101918920);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = sub_1000CE6B8(&qword_10191B3A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - v7;
  v19[3] = v9;
  v19[4] = sub_1002BFDA8();
  v10 = sub_10001A848(v19);
  (*(v6 + 16))(v10, a1, v5);
  sub_10005EB40(v19, v18);
  sub_1000CE6B8(&qword_101918930);
  v11 = swift_dynamicCast();
  v12 = *(v6 + 56);
  if (v11)
  {
    v12(v4, 0, 1, v5);
    (*(v6 + 32))(v8, v4, v5);
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      (*(v6 + 8))(v8, v5);
      v13 = -1;
    }

    else
    {
      v14 = dispatch thunk of static Comparable.> infix(_:_:)();
      (*(v6 + 8))(v8, v5);
      v13 = v14 & 1;
    }

    sub_10004E3D0(v19);
    return v13;
  }

  else
  {
    v12(v4, 1, 1, v5);
    sub_100024F64(v4, &qword_101918920);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    _print_unlocked<A, B>(_:_:)();
    v16._countAndFlagsBits = 0x20646E6120;
    v16._object = 0xE500000000000000;
    String.append(_:)(v16);
    _print_unlocked<A, B>(_:_:)();
    v17._object = 0x800000010122C360;
    v17._countAndFlagsBits = 0xD000000000000020;
    String.append(_:)(v17);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1002BFDA8()
{
  result = qword_101918928;
  if (!qword_101918928)
  {
    sub_1000D6664(&qword_10191B3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101918928);
  }

  return result;
}

void sub_1002BFF14(uint64_t (*a1)(unint64_t))
{
  v2 = *v1;
  if (*v1 >> 62)
  {
    goto LABEL_27;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    while (!__OFSUB__(v3, 1))
    {
      if (v4 < 1)
      {
        return;
      }

      v5 = 0;
      v6 = v3 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v7 = v3 - 1;
        if ((v2 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_10;
        }

        v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5 >= v8)
        {
          break;
        }

        if (v7 >= v8)
        {
          goto LABEL_25;
        }

        v9 = *(v2 + 8 * v3 + 24);
        v10 = *(v2 + 8 * v5 + 32);
        v11 = v9;
LABEL_10:
        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = a1(v2);
          v13 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v2 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v12;

        if ((v2 & 0x8000000000000000) != 0 || v13)
        {
          v2 = a1(v2);
          v14 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_24;
        }

        v16 = v14 + 8 * v3;
        v17 = *(v16 + 24);
        *(v16 + 24) = v10;

        *v1 = v2;
        if (v6 == v5)
        {
          goto LABEL_26;
        }

        ++v5;
        v18 = v3 - 2;
        --v3;
        if (v5 >= v18)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }

      v3 = _CocoaArrayWrapper.endIndex.getter();
      v4 = v3 - 1;
    }

    __break(1u);
  }
}

void sub_1002C00E0()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = sub_1004166A4(v1);
  }

  v2 = &v1[16 * v2 + 24];
  v4 = (v1 + 40);
  v5 = 1;
  while (1)
  {
    if (v5 - 1 == v3)
    {
      goto LABEL_6;
    }

    v7 = *(v1 + 2);
    if (v5 - 1 >= v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v3 >= v7)
    {
      goto LABEL_16;
    }

    v8 = *(v4 - 1);
    v9 = *v4;
    v10 = *v2;
    *(v4 - 1) = *(v2 - 8);
    *v4 = v10;
    v11 = *(v1 + 2);

    if (v3 >= v11)
    {
      break;
    }

    *(v2 - 8) = v8;
    *v2 = v9;

LABEL_6:
    --v3;
    v2 -= 16;
    v4 += 2;
    if (v5++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

uint64_t sub_1002C01DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned __int8 a10, void *a11, uint64_t a12, uint64_t a13)
{
  v141 = a1;
  v135 = a8;
  v130 = a7;
  v134 = a5;
  v136 = a4;
  v139 = a9;
  v137 = a10;
  v16 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for AttributedString();
  v131 = *(v17 - 8);
  v132 = v17;
  __chkstk_darwin(v17);
  v19 = &v129[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v20 - 8);
  v140 = &v129[-v21];
  v22 = *(a2 + 32);
  v153 = *(a2 + 16);
  v154 = v22;
  v23 = *(a2 + 64);
  v155 = *(a2 + 48);
  v156 = v23;
  v24 = *(a2 + 96);
  v157 = *(a2 + 80);
  v158 = v24;
  v138 = a2;
  v25 = *(a2 + 112);
  v159 = v25;
  v26 = v153;
  v27 = *(&v153 + 1) | ((*(&v153 + 5) | (BYTE7(v153) << 16)) << 32);
  v28 = *(&v153 + 1);
  v29 = v153 | (v27 << 8);
  v30 = *(&v24 + 1) >> 60;
  v133 = a3;
  if ((*(&v24 + 1) >> 60) <= 4)
  {
    if (v30 > 1)
    {
      v31 = v141;
      if (v30 == 2)
      {

        v36 = v140;
        sub_1002CEA28(v26 & 1, v28, v31, a12, a13, v140);
        goto LABEL_21;
      }

      v36 = v140;
      if (v30 == 3)
      {
        sub_1002D1CD4(v153, v141, v140);
      }

      else
      {
        sub_1002CF3D8(v141, v135 & 1, v153 & 1, v140);
      }

LABEL_84:
      v102 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      if ((*(*(v102 - 8) + 48))(v36, 1, v102) == 1)
      {
        goto LABEL_85;
      }

LABEL_246:
      v128 = v139;
      sub_1002E29D4(v36, v139, type metadata accessor for PlaceSummaryViewModelUnit);
      type metadata accessor for PlaceSummaryViewModelUnit(0);
      return (*(*(v102 - 8) + 56))(v128, 0, 1, v102);
    }

    v31 = v141;
    if (!v30)
    {

      v37 = [v31 _secondaryName];
      if (!v37)
      {
        sub_1002E2938(&v153);
        goto LABEL_72;
      }

      v38 = v37;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v42 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (!v42)
      {
        sub_1002E2938(&v153);

        v31 = v141;
        goto LABEL_72;
      }

      AttributeContainer.init()();
      AttributedString.init(_:attributes:)();
      v43 = v140;
      UUID.init()();
      v44 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
      v46 = v131;
      v45 = v132;
      (*(v131 + 16))(v43 + v44[5], v19, v132);
      (*(v46 + 56))(v43 + v44[12], 1, 1, v45);
      (*(v46 + 8))(v19, v45);
      v47 = v43 + v44[6];
      *v47 = v26;
      v47[7] = BYTE6(v27);
      *(v47 + 5) = WORD2(v27);
      *(v47 + 1) = v27;
      v36 = v43;
      *(v47 + 1) = v28;
      *(v43 + v44[7]) = 0;
      *(v43 + v44[8]) = 0;
      *(v43 + v44[9]) = 0;
      *(v43 + v44[10]) = 0;
      v48 = v43 + v44[11];
      *v48 = 1;
      v48[8] = 0;
      *(v43 + v44[13]) = _swiftEmptyArrayStorage;
      v49 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v49 - 8) + 56))(v43, 0, 1, v49);
LABEL_19:
      v31 = v141;
      goto LABEL_84;
    }

    v51 = v141;
    if (!a3)
    {
      v87 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      v36 = v140;
      (*(*(v87 - 8) + 56))(v140, 1, 1, v87);
      goto LABEL_85;
    }

    v52 = a3;
    v53 = objc_allocWithZone(NSNumber);
    v54 = v52;
    v55 = [v53 initWithUnsignedLongLong:v29];
    LOBYTE(v146) = 1;
    v36 = v140;
    if (v137)
    {
      v56 = [v51 _maps_distanceStringFromDetourInformation];
      if (v56)
      {
        v57 = v56;
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        goto LABEL_58;
      }
    }

    else
    {
      v88 = objc_opt_self();
      v89 = v54;
      [v51 _coordinate];
      v90 = [v88 distanceStringFromLocation:v89 toCoordinate:v51 withMapItem:&v146 showsDistance:0 onlyUseThreshold:v55 maximumDistance:1 useShortThreshold:?];

      if (v90)
      {
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v91;

        v31 = v51;
LABEL_58:
        if (MapsFeature_IsEnabled_HikingWatch() && [v31 _placeCategoryType] == 1)
        {
          if (qword_101906768 != -1)
          {
            swift_once();
          }

          v160._object = 0xEB00000000796177;
          v92._countAndFlagsBits = 0x636E61747369645BLL;
          v92._object = 0xEF79617761205D65;
          v93._countAndFlagsBits = 0x79617761204025;
          v160._countAndFlagsBits = 0x6120696D20303031;
          v93._object = 0xE700000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v92, 0, qword_1019600D8, v93, v160);
          sub_1000CE6B8(&unk_10190D5C0);
          v94 = swift_allocObject();
          *(v94 + 16) = xmmword_1011E1D30;
          *(v94 + 56) = &type metadata for String;
          *(v94 + 64) = sub_1000DA61C();
          *(v94 + 32) = v58;
          *(v94 + 40) = v60;
          v58 = String.init(format:_:)();
          v60 = v95;

          v31 = v51;
        }

        UUID.init()();

        v96 = (v36 + *(type metadata accessor for PlaceSummaryViewModelUnit.Distance(0) + 20));
        *v96 = v58;
        v96[1] = v60;
        v86 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        goto LABEL_64;
      }

      v31 = v51;
    }

    v101 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v101 - 8) + 56))(v36, 1, 1, v101);
    goto LABEL_84;
  }

  if (v30 <= 7)
  {
    if (v30 == 5)
    {
      v36 = v140;
      v31 = v141;
      sub_1002CFC90(v29, v141, v140);
      goto LABEL_84;
    }

    v31 = v141;
    if (v30 == 6)
    {
      LOBYTE(v146) = v153;
      *(&v146 + 1) = *(&v153 + 1);
      BYTE7(v146) = (*(&v153 + 1) | ((*(&v153 + 5) | (BYTE7(v153) << 16)) << 32)) >> 48;
      *(&v146 + 5) = *(&v153 + 5);
      *(&v146 + 1) = *(&v153 + 1);
      v147 = v154;
      v148 = v155;
      v149 = v156;
      v150 = v157;
      *&v151 = v158;
      *(&v151 + 1) = *(&v24 + 1) & 0xFFFFFFFFFFFFFFFLL;
      v152 = v25;
      v32 = *(v138 + 96);
      v143[4] = *(v138 + 80);
      v144 = v32;
      v33 = *(v138 + 112);
      v34 = *(v138 + 32);
      v143[0] = *(v138 + 16);
      v143[1] = v34;
      v35 = *(v138 + 64);
      v143[2] = *(v138 + 48);
      v143[3] = v35;
      *(&v144 + 1) &= 0xFFFFFFFFFFFFFFFuLL;
      v145 = v33;
      sub_1002E28DC(v143, &v142);
      v36 = v140;
      sub_1002D0BB8(&v146, 1, v140);
LABEL_21:
      sub_1002E2938(&v153);
      goto LABEL_84;
    }

    if (v136)
    {
      v61 = *(v136 + 16);
      v36 = v140;
      if (v61)
      {
        v62 = (v136 + 32);
        while (1)
        {
          v63 = v62[5];
          v64 = *(v62 + 12);
          v65 = v62[3];
          v150 = v62[4];
          v66 = v62[1];
          v67 = v62[2];
          v146 = *v62;
          v147 = v66;
          v152 = v64;
          v151 = v63;
          v148 = v67;
          v149 = v65;
          if ((BYTE8(v150) & 1) == 0 && v150 == v29)
          {
            break;
          }

          v62 = (v62 + 104);
          if (!--v61)
          {
            goto LABEL_89;
          }
        }

        sub_1002E28DC(&v146, v143);
        sub_1002D0BB8(&v146, 1, v36);
        sub_1002E2888(&v146);
        goto LABEL_84;
      }

      goto LABEL_89;
    }

LABEL_72:
    v98 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v36 = v140;
    (*(*(v98 - 8) + 56))(v140, 1, 1, v98);
    goto LABEL_85;
  }

  if (v30 == 8)
  {
    v36 = v140;
    if ((v137 & 1) == 0)
    {
      v31 = v141;
      sub_1002D2018(v153, v141, v140);
      goto LABEL_84;
    }

    v50 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v50 - 8) + 56))(v36, 1, 1, v50);
LABEL_25:
    v31 = v141;
    goto LABEL_85;
  }

  v36 = v140;
  if (v30 == 9)
  {
    v31 = v141;
    sub_1002D289C(v141, v29, v140);
    goto LABEL_84;
  }

  if (*(&v24 + 1) == 0xA000000000000000 && !(v29 | *(&v153 + 1) | v154 | *(&v154 + 1) | v155 | *(&v155 + 1) | v156 | *(&v156 + 1) | v157 | *(&v157 + 1) | v158 | v25))
  {
    v31 = v141;
    v68 = [v141 name];
    if (v68)
    {
      v69 = v68;
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;
    }

    else
    {
      v70 = 0;
      v72 = 0;
    }

    sub_1002CE5A8(v70, v72, v134, v36);

    goto LABEL_84;
  }

  v73 = v154 | *(&v153 + 1) | *(&v154 + 1) | v155 | *(&v155 + 1) | v156 | *(&v156 + 1) | v157 | *(&v157 + 1) | v158;
  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 1 && !v73)
  {
    v31 = v141;
    v74 = [v141 _firstLocalizedCategoryName];
    goto LABEL_48;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 2 && !v73)
  {
    v97 = v141;
    v31 = v141;
    if ([v141 _hasPriceDescription])
    {
      v74 = [v97 _priceDescription];
    }

    else
    {
      v74 = [v97 _priceRangeString];
    }

LABEL_48:
    v75 = v74;
    if (v75)
    {
      v76 = v75;
      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      v80 = HIBYTE(v79) & 0xF;
      if ((v79 & 0x2000000000000000) == 0)
      {
        v80 = v77 & 0xFFFFFFFFFFFFLL;
      }

      if (v80)
      {
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        UUID.init()();
        v81 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
        v83 = v131;
        v82 = v132;
        (*(v131 + 16))(v36 + v81[5], v19, v132);
        (*(v83 + 56))(v36 + v81[12], 1, 1, v82);
        (*(v83 + 8))(v19, v82);
        v84 = (v36 + v81[6]);
        *v84 = 0;
        v84[1] = 0;
        *(v36 + v81[7]) = 0;
        *(v36 + v81[8]) = 0;
        *(v36 + v81[9]) = 0;
        *(v36 + v81[10]) = 0;
        v85 = v36 + v81[11];
        *v85 = 1;
        v85[8] = 0;
        *(v36 + v81[13]) = _swiftEmptyArrayStorage;
        v86 = type metadata accessor for PlaceSummaryViewModelUnit(0);
LABEL_64:
        swift_storeEnumTagMultiPayload();
        (*(*(v86 - 8) + 56))(v36, 0, 1, v86);
        goto LABEL_84;
      }
    }

LABEL_89:
    v106 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v106 - 8) + 56))(v36, 1, 1, v106);
    goto LABEL_85;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 3 && !v73)
  {
    v31 = v141;
    if ([v141 _hasTransitLabels])
    {
      UUID.init()();
      *(v36 + *(type metadata accessor for PlaceSummaryViewModelUnit.TransitShields(0) + 20)) = v31;
      v99 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v99 - 8) + 56))(v36, 0, 1, v99);
      v100 = v31;
      goto LABEL_84;
    }

    goto LABEL_89;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 4 && !v73)
  {
    v31 = v141;
    sub_1002CFB28(v141, v140);
    goto LABEL_84;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 5 && !v73)
  {
    v31 = v141;
    sub_1002D07B4(v141, v140);
    goto LABEL_84;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 6 && !v73)
  {
    v107 = objc_opt_self();
    v31 = v141;
    if (([v107 shouldShowAppleRatingsForMapItem:v141] & 1) == 0)
    {
      goto LABEL_89;
    }

    v108 = [objc_opt_self() locallyCachedReviewedPlaceForMUID:{objc_msgSend(v31, "_muid")}];
    if (!v108)
    {
      goto LABEL_89;
    }

    v109 = v108;
    if (![v108 recommendState])
    {

      goto LABEL_89;
    }

    v110 = [v109 recommendState] == 2;
    UUID.init()();

    *(v36 + *(type metadata accessor for PlaceSummaryViewModelUnit.UGCUserRecommendations(0) + 20)) = v110;
LABEL_109:
    v102 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v102 - 8) + 56))(v36, 0, 1, v102);
    goto LABEL_246;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 7 && !v73 || !v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 8 && !v73 || !v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 9 && !v73 || (v111 = a6, !v25) && *(&v24 + 1) == 0xA000000000000000 && v29 == 10 && !v73)
  {
    v112 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v112 - 8) + 56))(v36, 1, 1, v112);
    v31 = v141;
    goto LABEL_84;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 11 && !v73 || !v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 12 && !v73)
  {
    goto LABEL_137;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 13 && !v73)
  {
    v36 = v140;
    v31 = v141;
    sub_1002D0464(v141, v140);
    goto LABEL_84;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 14 && !v73)
  {
    v114 = [v141 _maps_detourTextForIdiom:0];
    if (v114)
    {
      v115 = v114;
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;

      if (String.count.getter() >= 1)
      {
        LOBYTE(v143[0]) = 1;
        *&v146 = v116;
        *(&v146 + 1) = v118;
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        *&v150 = 0;
        BYTE8(v150) = 1;
        *&v151 = 0;
        BYTE8(v151) = 0;
        v152 = 0;
        v36 = v140;
        sub_1002D0BB8(&v146, 0, v140);
        sub_1002E2888(&v146);
        v31 = v141;
        goto LABEL_84;
      }
    }

    goto LABEL_170;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 15 && !v73)
  {
    if (MapsFeature_IsEnabled_HikingWatch())
    {
      v119 = [v141 _hikingTrailDifficultyFactoid];
      if (v119)
      {
        goto LABEL_163;
      }

      goto LABEL_171;
    }

    goto LABEL_170;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 16 && !v73)
  {
    if (MapsFeature_IsEnabled_HikingWatch())
    {
      v119 = [v141 _hikingTrailLengthFactoid];
      if (v119)
      {
LABEL_163:
        v120 = v119;
        v121 = [objc_opt_self() viewModelForFactoid:v119];
        v36 = v140;
        sub_1002DABE8(v121, v140);

        v31 = v141;
        goto LABEL_84;
      }

LABEL_171:
      v122 = type metadata accessor for PlaceSummaryViewModelUnit(v119);
      v36 = v140;
      (*(*(v122 - 8) + 56))(v140, 1, 1, v122);
      goto LABEL_25;
    }

LABEL_170:
    v119 = 0;
    goto LABEL_171;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 17 && !v73)
  {
    v36 = v140;
    v31 = v141;
    sub_1002D364C(v141, v140);
    goto LABEL_84;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 18 && !v73)
  {
    v123 = &selRef_hikeTypeNameString;
LABEL_177:
    v36 = v140;
    v31 = v141;
    sub_1002D42F0(v141, v123, v140);
    goto LABEL_84;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 19 && !v73)
  {
    v36 = v140;
    v31 = v141;
    sub_1002D3DEC(v141, v140);
    goto LABEL_84;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 20 && !v73)
  {
    v123 = &selRef_durationString;
    goto LABEL_177;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 21 && !v73)
  {
    v36 = v140;
    v31 = v141;
    sub_1002D45F4(v141, v140);
    goto LABEL_84;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 22 && !v73)
  {
    v36 = v140;
    v31 = v141;
    sub_1002D4CC8(v141, v140);
    goto LABEL_84;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 23 && !v73)
  {
    v36 = v140;
    v31 = v141;
    sub_1002D4E94(v141, v140);
    goto LABEL_84;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 24 && !v73)
  {
    if (qword_1019067D8 != -1)
    {
      swift_once();
    }

    if (byte_1019601D0)
    {
      type metadata accessor for PlaceSummaryViewModelUnit.VisitedPlace(0);
      v124 = swift_allocObject();
      v125 = v141;
      UUID.init()();
      *(v124 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit12VisitedPlace_mapItem) = v125;
      swift_beginAccess();
      LOBYTE(v143[0]) = 0;
      Published.init(initialValue:)();
      swift_endAccess();
      v36 = v140;
      *v140 = v124;
      goto LABEL_109;
    }

    goto LABEL_170;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 25 && !v73)
  {
    v36 = v140;
    v31 = v141;
    sub_1002D2EAC(v141, v111, v130 & 1, v140);
    goto LABEL_84;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 26 && !v73)
  {
    v36 = v140;
    v31 = v141;
    sub_1002D2FE4(v141, v140);
    goto LABEL_84;
  }

  if (!v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 27 && !v73 || !v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 28 && !v73 || !v25 && *(&v24 + 1) == 0xA000000000000000 && v29 == 29 && !v73)
  {
LABEL_137:
    v113 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v36 = v140;
    (*(*(v113 - 8) + 56))(v140, 1, 1, v113);
    goto LABEL_19;
  }

  if ((v25 || *(&v24 + 1) != 0xA000000000000000 || v29 != 30 || v73) && (v25 || *(&v24 + 1) != 0xA000000000000000 || v29 != 31 || v73) && (v25 || *(&v24 + 1) != 0xA000000000000000 || v29 != 32 || v73))
  {
    v36 = v140;
    sub_1002D3260(a11, v140);
    v31 = v141;
    goto LABEL_84;
  }

  v102 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v126 = *(v102 - 8);
  v36 = v140;
  (*(v126 + 56))(v140, 1, 1, v102);
  v127 = (*(v126 + 48))(v36, 1, v102);
  v31 = v141;
  if (v127 != 1)
  {
    goto LABEL_246;
  }

LABEL_85:
  sub_100024F64(v36, &qword_10190D6A8);
  v103 = *(v138 + 128);
  if (v103)
  {

    sub_1002C01DC(v31, v103, v133, v136, v134, 0, 1, v135 & 1, v137 & 1, 0, 0, 0);
  }

  else
  {
    v105 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v105 - 8) + 56))(v139, 1, 1, v105);
  }
}

unint64_t sub_1002C1A00(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1000CE6B8(&unk_101918B30);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v72 = &v64 - v8;
  v9 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v9);
  v11 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v12 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = &v64 - v16;
  v17 = type metadata accessor for URL();
  v73 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0xF000000000000007;
  }

  v69 = a3;
  v68 = v7;
  v21 = *(a2 + 16);
  if (!v21)
  {
    return 0xF000000000000007;
  }

  v64 = v20;
  v65 = v6;
  v66 = v9;
  v67 = v11;
  v22 = (a2 + 32);
  v23 = (v73 + 56);
  v70 = v14;
  while (1)
  {
    v25 = *v22++;
    v24 = v25;
    v26 = v25 <= 6;
    if (v25 >= 6)
    {
      break;
    }

    if (v24 <= 3)
    {
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          v32 = v71;
          sub_1002DB018(a1, v71);
          v33 = v73;
          if ((*(v73 + 48))(v32, 1, v17) == 1)
          {
            sub_100024F64(v32, &unk_101909B00);
            v34 = [objc_allocWithZone(MapsUIImageGEOFeatureSpec) init];
            [v34 setSize:4];
            [v34 setTransparent:1];
            v35 = [a1 _styleAttributes];
            [v34 setStyle:v35];

            v36 = sub_1000CE6B8(&qword_1019141F8);
            v37 = swift_allocBox();
            v39 = v38;
            v40 = *(v36 + 96);
            v41 = *(v36 + 112);
            *v38 = v34;
            *(v38 + 1) = 0;
            *(v38 + 3) = 0;
            v42 = enum case for Image.TemplateRenderingMode.template(_:);
            v43 = type metadata accessor for Image.TemplateRenderingMode();
            (*(*(v43 - 8) + 104))(&v39[v40], v42, v43);
            v44 = objc_opt_self();
            v45 = v34;
            v46 = [v44 systemGray5Color];
            *&v39[v41] = Color.init(uiColor:)();
            v39[16] = 0;
            v47 = v67;
            *v67 = v37;
            swift_storeEnumTagMultiPayload();
            type metadata accessor for PlaceSummaryImageViewModel(0);
            v48 = swift_allocObject();
            v74 = 0;
            sub_1000CE6B8(&unk_101918A10);
            Published.init(initialValue:)();
            UUID.init()();

            sub_1002E29D4(v47, v48 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
            result = v48;
            v49 = v48 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
          }

          else
          {
            v55 = v64;
            (*(v33 + 32))(v64, v32, v17);
            v56 = v67;
            (*(v33 + 16))(v67, v55, v17);
            swift_storeEnumTagMultiPayload();
            type metadata accessor for PlaceSummaryImageViewModel(0);
            v57 = swift_allocObject();
            v74 = 0;
            sub_1000CE6B8(&unk_101918A10);
            Published.init(initialValue:)();
            UUID.init()();
            (*(v33 + 8))(v55, v17);
            sub_1002E29D4(v56, v57 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
            result = v57;
            v49 = v57 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
          }

          *v49 = 0;
          *(v49 + 8) = 1;
          return result;
        }

LABEL_32:
        type metadata accessor for DirectionsETAModel(0);
        swift_allocObject();
        v53 = a1;
        return sub_10021E280(v24 & 1, v53, v69 & 1) | 0x2000000000000000;
      }

      v30 = [a1 _flyover];
      if (v30)
      {

        return 0x8000000000000000;
      }
    }

    else if (v24 == 4)
    {
      if ([a1 _hasLookAroundStorefront])
      {
        return 0x8000000000000008;
      }
    }

    else
    {
      if (v24 != 5)
      {
        goto LABEL_32;
      }

      v27 = [a1 phoneNumber];
      if (v27)
      {
        v28 = v27;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = String.count.getter();
        v14 = v70;

        if (v29 > 0)
        {
          return 0x8000000000000010;
        }
      }
    }

LABEL_5:
    if (!--v21)
    {
      return 0xF000000000000007;
    }
  }

  if (v26)
  {
    v31 = [a1 url];
    if (v31)
    {
      v52 = v31;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*v23)(v14, 0, 1, v17);
      sub_100024F64(v14, &unk_101909B00);
      return 0x8000000000000018;
    }

    (*v23)(v14, 1, 1, v17);
    sub_100024F64(v14, &unk_101909B00);
    goto LABEL_5;
  }

  if (v24 == 7)
  {
    goto LABEL_5;
  }

  if (v24 != 8)
  {
    if (v24 == 9)
    {
      type metadata accessor for HikeRouteSnapshotViewModel(0);
      swift_allocObject();
      return sub_10021EAB8(a1) | 0x6000000000000000;
    }

    goto LABEL_32;
  }

  v50 = [a1 _detourInfo];
  if (v50)
  {

    v51 = 1;
  }

  else
  {
    v51 = v69 ^ 1;
  }

  v58 = v65;
  v59 = v68;
  v60 = v72;
  type metadata accessor for AccessoryButtonViewModel(0);
  v61 = swift_allocObject();
  v62 = OBJC_IVAR____TtC4Maps24AccessoryButtonViewModel__isDriveable;
  LOBYTE(v74) = 1;
  v63 = a1;
  Published.init(initialValue:)();
  (*(v59 + 32))(v61 + v62, v60, v58);
  UUID.init()();
  *(v61 + OBJC_IVAR____TtC4Maps24AccessoryButtonViewModel_mapItem) = v63;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v74) = v51 & 1;

  static Published.subscript.setter();
  return v61 | 0x4000000000000000;
}

void sub_1002C2368(void *a1, void *a2, char *a3, int a4, uint64_t a5)
{
  v123 = a3;
  v124 = a5;
  v8 = sub_1000CE6B8(&unk_1019189D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v98 - v10;
  v12 = sub_1000CE6B8(&qword_101914260);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v103 = &v98 - v14;
  v15 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v15 - 8);
  v120 = &v98 - v16;
  v122 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v117 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v106 = &v98 - v20;
  __chkstk_darwin(v21);
  v112 = &v98 - v22;
  v126 = a2;
  LODWORD(v125) = a4;
  v23 = sub_10038CB6C(a1, a2, a4);
  if (!v23)
  {
    return;
  }

  v100 = v11;
  v101 = v9;
  v102 = v8;
  v104 = v23;
  v127 = [a1 mapItem];
  if (!v127)
  {

    return;
  }

  v98 = v13;
  v99 = v12;
  v118 = a1;
  v24 = [a1 mapItem];
  if (!v24)
  {
    goto LABEL_66;
  }

  v25 = v24;
  v26 = [v24 _geoMapItem];

  v27 = v126;
  if (!v26)
  {
    v28 = 0;
    if (v126)
    {
      goto LABEL_6;
    }

LABEL_9:
    v29 = 0;
    goto LABEL_10;
  }

  v28 = [v26 _identifier];
  swift_unknownObjectRelease();
  if (!v27)
  {
    goto LABEL_9;
  }

LABEL_6:
  v29 = *(v27 + OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_serverOverrides);

LABEL_10:
  sub_1002DDA08(v28, v29);
  v119 = v30;

  v31 = *&v104[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
  v111 = *(v31 + 16);
  if (v111)
  {
    v32 = 0;
    v110 = v31 + 32;
    v33 = _swiftEmptyArrayStorage;
    v34 = (v117 + 48);
    v109 = v31;
    while (v32 < *(v31 + 16))
    {
      v36 = (v110 + 16 * v32);
      v37 = *v36;
      v113 = *(v36 + 8);
      v114 = *(v36 + 9);
      if (v37 >> 62)
      {
        v38 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v115 = v32;
      v116 = v33;

      if (v38)
      {
        v39 = 0;
        v128 = (v37 & 0xC000000000000001);
        v40 = v37 & 0xFFFFFFFFFFFFFF8;
        v41 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v128)
          {
            v43 = v37;
            v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v39 >= *(v40 + 16))
            {
              goto LABEL_62;
            }

            v43 = v37;
            v44 = *(v37 + 8 * v39 + 32);
          }

          v45 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          v46 = v38;
          v47 = v120;
          sub_1002C01DC(v127, v44, v123, v119, 0, 0, 1, 0, v120, v125 & 1, v118, v126, v124);

          if ((*v34)(v47, 1, v122) == 1)
          {
            sub_100024F64(v47, &qword_10190D6A8);
          }

          else
          {
            sub_1002E29D4(v47, v121, type metadata accessor for PlaceSummaryViewModelUnit);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_100356A5C(0, v41[2] + 1, 1, v41);
            }

            v49 = v41[2];
            v48 = v41[3];
            if (v49 >= v48 >> 1)
            {
              v41 = sub_100356A5C(v48 > 1, v49 + 1, 1, v41);
            }

            v41[2] = v49 + 1;
            sub_1002E29D4(v121, v41 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v49, type metadata accessor for PlaceSummaryViewModelUnit);
          }

          ++v39;
          v38 = v46;
          v42 = v45 == v46;
          v37 = v43;
          if (v42)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        break;
      }

      v41 = _swiftEmptyArrayStorage;
LABEL_33:
      v50 = v114;
      v51 = sub_1002DBCE0(v41, v114);

      if (v51[2])
      {
        v52 = v106;
        UUID.init()();

        v53 = v107;
        *(v52 + *(v107 + 20)) = v51;
        *(v52 + *(v53 + 24)) = v113;
        *(v52 + *(v53 + 28)) = v50;
        sub_1002E29D4(v52, v112, type metadata accessor for PlaceSummaryViewModelLine);
        v33 = v116;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v109;
        v35 = v115;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_1003580F8(0, v33[2] + 1, 1, v33);
        }

        v56 = v33[2];
        v55 = v33[3];
        if (v56 >= v55 >> 1)
        {
          v33 = sub_1003580F8(v55 > 1, v56 + 1, 1, v33);
        }

        v33[2] = v56 + 1;
        sub_1002E29D4(v112, v33 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v56, type metadata accessor for PlaceSummaryViewModelLine);
      }

      else
      {

        v35 = v115;
        v33 = v116;
        v31 = v109;
      }

      v32 = v35 + 1;
      if (v32 == v111)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return;
  }

  v33 = _swiftEmptyArrayStorage;
LABEL_41:

  if (!v33[2])
  {

    return;
  }

  v57 = *&v104[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_trailingEntities];

  v58 = sub_1002C1A00(v127, v57, v125 & 1);

  v126 = v58;
  sub_10013C1B0(v58);
  v125 = static Color.clear.getter();
  v128 = type metadata accessor for PlaceSummaryViewModelTemplate(0);
  v59 = objc_allocWithZone(v128);
  v60 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__leadingEntity;
  v129 = 0xF000000000000007;
  sub_1000CE6B8(&unk_1019189E0);
  v61 = v103;
  Published.init(initialValue:)();
  v62 = v98;
  v63 = *(v98 + 32);
  v122 = v60;
  v64 = v33;
  v65 = v99;
  v63(v59 + v60, v61, v99);
  v66 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__trailingEntity;
  v129 = 0xF000000000000007;
  Published.init(initialValue:)();
  v123 = v66;
  v63(&v66[v59], v61, v65);
  v67 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__containerWidth;
  v129 = 0x4069000000000000;
  v68 = v100;
  Published.init(initialValue:)();
  v69 = v101;
  v70 = *(v101 + 32);
  v120 = v67;
  v71 = v68;
  v72 = v102;
  v70(v59 + v67, v71, v102);
  v124 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor;
  *(v59 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor) = 0;
  v73 = v59 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons;
  *v73 = 0;
  v73[1] = 0;
  v121 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons;
  *(v59 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons) = 0;
  v74 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics;
  *(v59 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics) = 0;
  *(v59 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_containsPhotoCarouselLine) = 0;
  v75 = v59 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString;
  *v75 = 0;
  v75[1] = 0;
  if (v64[2])
  {
    swift_beginAccess();
    v131 = v64;
    sub_1000CE6B8(&qword_10190BF10);
    Published.init(initialValue:)();
    swift_endAccess();
    v76 = v122;
    swift_beginAccess();
    v77 = *(v62 + 8);
    v77(v59 + v76, v65);
    v131 = 0xF000000000000007;
    Published.init(initialValue:)();
    swift_endAccess();
    v78 = v123;
    swift_beginAccess();
    v79 = v126;
    sub_10013C1B0(v126);
    v77(&v78[v59], v65);
    v131 = v79;
    Published.init(initialValue:)();
    swift_endAccess();
    *v73 = 0;
    v73[1] = 0;

    *(v59 + v121) = 0;

    *(v59 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) = 2;
    swift_beginAccess();
    LOBYTE(v131) = 0;
    Published.init(initialValue:)();
    swift_endAccess();
    *(v59 + v124) = v125;

    *(v59 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_searchAlongRoute) = 0;
    v130.receiver = v59;
    v130.super_class = v128;
    objc_msgSendSuper2(&v130, "init");

    sub_10013BD74(v79);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v80 = *(v129 + 16);

    if (v80 >= 3)
    {
      v81 = 3;
    }

    else
    {
      v81 = v80;
    }

    v82 = *(sub_10021C698(0) + 16);

    v83 = v127;
    v84 = v79;
    if (v82 >= v81 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v85 = *(v129 + 16), , v82 >= v85))
    {
LABEL_57:

      sub_10013BD74(v84);
      return;
    }

    v86 = 0;
    v128 = v81;
    while (1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v86 >= *(v129 + 16))
      {
        goto LABEL_64;
      }

      v87 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v88 = *(v108 + 72) * v86;
      v89 = v105;
      sub_1002E27C0(v129 + v87 + v88, v105, type metadata accessor for PlaceSummaryViewModelLine);

      v90 = sub_10021D368();
      sub_1002E2828(v89, type metadata accessor for PlaceSummaryViewModelLine);
      if ((v90 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v91 = static Published.subscript.modify();
        v93 = v92;
        v94 = *v92;
        v95 = swift_isUniquelyReferenced_nonNull_native();
        *v93 = v94;
        if ((v95 & 1) == 0)
        {
          v94 = sub_100416690(v94);
          *v93 = v94;
        }

        if (v86 >= v94[2])
        {
          goto LABEL_65;
        }

        *(v94 + v87 + v88 + *(v107 + 24)) = 0;
        v91(&v129, 0);

        v83 = v127;
        v81 = v128;
      }

      if (v81 == ++v86)
      {
        goto LABEL_57;
      }
    }
  }

  v96 = v126;
  sub_10013BD74(v126);

  sub_10013BD74(v96);

  v97 = *(v62 + 8);
  v97(v59 + v122, v65);
  v97(&v123[v59], v65);
  (*(v69 + 8))(v59 + v120, v72);

  swift_deallocPartialClassInstance();
}

void sub_1002C33E8(char *a1, char *a2, char *a3, char *a4, void *a5, uint64_t a6, int a7, int a8, double a9)
{
  LODWORD(v117) = a7;
  v115 = a5;
  v116 = a6;
  v113 = a3;
  v114 = a4;
  v13 = sub_1000CE6B8(&unk_1019189D0);
  v95 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v88[-v14];
  v16 = sub_1000CE6B8(&qword_101914260);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v88[-v18];
  v20 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v20 - 8);
  v22 = &v88[-v21];
  v112 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v108 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v88[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v88[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v103 = &v88[-v26];
  v27 = sub_10038D978(a1, a2);
  if (!v27)
  {
    return;
  }

  v28 = v27;
  v93 = v17;
  v94 = v16;
  v89 = a8;
  v29 = sub_100298E74();
  v109 = a2;
  if (a2)
  {
    v30 = *&a2[OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_serverOverrides];
  }

  else
  {
    v30 = 0;
  }

  v110 = a1;
  v90 = v19;
  v91 = v15;
  v92 = v13;
  sub_1002DDA08(v29, v30);
  v119 = v31;

  v96 = v28;
  v32 = *&v28[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
  v102 = *(v32 + 16);
  if (!v102)
  {
    v34 = _swiftEmptyArrayStorage;
LABEL_37:

    if (v34[2])
    {
      v55 = v34;
      if (*&v96[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities])
      {
        v56 = *&v96[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities];
      }

      else
      {
        v56 = &off_1016008D8;
      }

      v57 = v56[2];
      v58 = (v56 + 4);
      v59 = v90;
      v60 = v110;
      while (v57)
      {
        v61 = *v58++;
        --v57;
        if (v61 == 2)
        {

          sub_1002DE274(v60);
          v119 = v62;
          goto LABEL_47;
        }
      }

      v119 = 0xF000000000000007;
LABEL_47:

      v63 = [v60 hasQueryAcceleratorAffordanceEnabled];
      v64 = 0x8000000000000020;
      if (!v63)
      {
        v64 = 0xF000000000000007;
      }

      v118 = v64;
      sub_1002DF734(v60, a9);
      v109 = v65;
      v116 = v66;
      v115 = sub_1002DFAC8(v60);
      v117 = static Color.clear.getter();
      v120 = type metadata accessor for PlaceSummaryViewModelTemplate(0);
      v67 = objc_allocWithZone(v120);
      v68 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__leadingEntity;
      v123 = 0xF000000000000007;
      sub_1000CE6B8(&unk_1019189E0);
      Published.init(initialValue:)();
      v69 = v93;
      v70 = *(v93 + 32);
      v112 = v68;
      v71 = v94;
      v70(v67 + v68, v59, v94);
      v72 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__trailingEntity;
      v123 = 0xF000000000000007;
      Published.init(initialValue:)();
      v113 = v72;
      v70(&v72[v67], v59, v71);
      v73 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__containerWidth;
      v123 = 0x4069000000000000;
      v74 = v91;
      Published.init(initialValue:)();
      v75 = v95;
      v76 = *(v95 + 32);
      v110 = v73;
      v77 = v92;
      v76(&v73[v67], v74, v92);
      v114 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor;
      *(v67 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor) = 0;
      v78 = (v67 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons);
      *v78 = 0;
      v78[1] = 0;
      v111 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons;
      *(v67 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons) = 0;
      v79 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics;
      *(v67 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics) = 0;
      *(v67 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_containsPhotoCarouselLine) = 0;
      v80 = v67 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString;
      *v80 = 0;
      v80[1] = 0;
      if (v55[2])
      {
        swift_beginAccess();
        v122 = v55;
        sub_1000CE6B8(&qword_10190BF10);
        Published.init(initialValue:)();
        swift_endAccess();
        v81 = v112;
        swift_beginAccess();
        v82 = v119;
        sub_10013C1B0(v119);
        v83 = *(v69 + 8);
        v83(v67 + v81, v71);
        v122 = v82;
        Published.init(initialValue:)();
        swift_endAccess();
        v84 = v113;
        swift_beginAccess();
        v85 = v118;
        sub_10013C1B0(v118);
        v83(&v84[v67], v71);
        v122 = v85;
        Published.init(initialValue:)();
        swift_endAccess();
        v86 = v116;
        *v78 = v109;
        v78[1] = v86;

        *&v111[v67] = v115;

        *(v67 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) = 1;
        swift_beginAccess();
        LOBYTE(v122) = 0;
        Published.init(initialValue:)();
        swift_endAccess();
        *&v114[v67] = v117;

        *(v67 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_searchAlongRoute) = v89 & 1;
        v121.receiver = v67;
        v121.super_class = v120;
        objc_msgSendSuper2(&v121, "init");

        sub_10013BD74(v85);
        sub_10013BD74(v82);
      }

      else
      {

        sub_10013BD74(v118);
        sub_10013BD74(v119);

        v87 = *(v69 + 8);
        v87(v67 + v112, v71);
        v87(&v113[v67], v71);
        (*(v75 + 8))(&v110[v67], v77);

        swift_deallocPartialClassInstance();
      }
    }

    else
    {
    }

    return;
  }

  v33 = 0;
  v101 = v32 + 32;
  v34 = _swiftEmptyArrayStorage;
  v35 = (v108 + 48);
  v100 = v32;
  while (1)
  {
    if (v33 >= *(v32 + 16))
    {
      goto LABEL_55;
    }

    v107 = v34;
    v37 = (v101 + 16 * v33);
    v38 = *v37;
    v104 = *(v37 + 8);
    v105 = *(v37 + 9);
    v39 = v38 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v106 = v33;

    if (v39)
    {
      break;
    }

    v42 = _swiftEmptyArrayStorage;
LABEL_29:
    v48 = v105;
    v49 = sub_1002DBCE0(v42, v105);

    if (v49[2])
    {
      v50 = v97;
      UUID.init()();

      v51 = v99;
      *(v50 + *(v99 + 20)) = v49;
      *(v50 + *(v51 + 24)) = v104;
      *(v50 + *(v51 + 28)) = v48;
      sub_1002E29D4(v50, v103, type metadata accessor for PlaceSummaryViewModelLine);
      v34 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v100;
      v36 = v106;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_1003580F8(0, v34[2] + 1, 1, v34);
      }

      v54 = v34[2];
      v53 = v34[3];
      if (v54 >= v53 >> 1)
      {
        v34 = sub_1003580F8(v53 > 1, v54 + 1, 1, v34);
      }

      v34[2] = v54 + 1;
      sub_1002E29D4(v103, v34 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v54, type metadata accessor for PlaceSummaryViewModelLine);
    }

    else
    {

      v34 = v107;
      v32 = v100;
      v36 = v106;
    }

    v33 = v36 + 1;
    if (v33 == v102)
    {
      goto LABEL_37;
    }
  }

  v40 = 0;
  v120 = (v38 & 0xC000000000000001);
  v41 = v38 & 0xFFFFFFFFFFFFFF8;
  v42 = _swiftEmptyArrayStorage;
  while (v120)
  {
    v43 = v38;
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v45 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_53;
    }

LABEL_19:
    sub_1002C40FC(v110, v44, v113, v114, v119, v115, v116, v117 & 1, v22, v109);

    if ((*v35)(v22, 1, v112) == 1)
    {
      sub_100024F64(v22, &qword_10190D6A8);
    }

    else
    {
      sub_1002E29D4(v22, v111, type metadata accessor for PlaceSummaryViewModelUnit);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_100356A5C(0, v42[2] + 1, 1, v42);
      }

      v47 = v42[2];
      v46 = v42[3];
      if (v47 >= v46 >> 1)
      {
        v42 = sub_100356A5C(v46 > 1, v47 + 1, 1, v42);
      }

      v42[2] = v47 + 1;
      sub_1002E29D4(v111, v42 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v47, type metadata accessor for PlaceSummaryViewModelUnit);
    }

    v38 = v43;
    ++v40;
    if (v45 == v39)
    {
      goto LABEL_29;
    }
  }

  if (v40 >= *(v41 + 16))
  {
    goto LABEL_54;
  }

  v43 = v38;
  v44 = *(v38 + 8 * v40 + 32);

  v45 = v40 + 1;
  if (!__OFADD__(v40, 1))
  {
    goto LABEL_19;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_1002C40FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v32 = a5;
  v33 = a6;
  v31 = a9;
  v17 = sub_1000CE6B8(&qword_10190D6A8);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = (&v29 - v19);
  v34 = 0;
  v21 = [a1 directionIntent];
  if (v21)
  {

    v22 = [objc_allocWithZone(DirectionIntentCellViewModel) initWithLocalSearchCompletion:a1];
    v34 = v22;
  }

  else
  {
    v22 = 0;
  }

  v30 = a7;
  sub_1002D5280(a2, a1, v10, a3, a10, a8 & 1, a4, v20, &v34, v33, a7, v32);
  v23 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v20, 1, v23) == 1)
  {
    sub_100024F64(v20, &qword_10190D6A8);
    v25 = *(a2 + 128);
    if (v25)
    {

      sub_1002C40FC(a1, v25, a3, a4, v32, v33, v30, a8 & 1, 0);
    }

    else
    {

      return (*(v24 + 56))(v31, 1, 1, v23);
    }
  }

  else
  {

    v27 = v20;
    v28 = v31;
    sub_1002E29D4(v27, v31, type metadata accessor for PlaceSummaryViewModelUnit);
    return (*(v24 + 56))(v28, 0, 1, v23);
  }
}

char *sub_1002C44FC(void *a1, char *a2, int a3, char a4)
{
  v70 = a3;
  v93 = a1;
  v94 = a2;
  v5 = sub_1000CE6B8(&unk_1019189D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v72 = &v69 - v7;
  v8 = sub_1000CE6B8(&qword_101914260);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v71 = &v69 - v10;
  v11 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v11 - 8);
  v13 = &v69 - v12;
  v92 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v88 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v83 = &v69 - v17;
  result = sub_10038DC4C(a4);
  if (!result)
  {
    return result;
  }

  v73 = result;
  v19 = *&result[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
  v79 = *(v19 + 16);
  v81 = v9;
  v82 = v8;
  v69 = v5;
  v80 = v6;
  if (v79)
  {
    v20 = 0;
    v78 = v19 + 32;
    v21 = _swiftEmptyArrayStorage;
    v90 = (v88 + 48);
    v77 = v19;
    do
    {
      if (v20 >= *(v19 + 16))
      {
        goto LABEL_43;
      }

      v86 = v20;
      v22 = v78 + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      LODWORD(v22) = *(v22 + 9);
      v84 = v24;
      v85 = v22;
      if (v23 >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v87 = v21;

      v89 = v23;
      if (v25)
      {
        v26 = v23;
        v27 = 0;
        v28 = v23 & 0xC000000000000001;
        v29 = v23 & 0xFFFFFFFFFFFFFF8;
        v30 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v28)
          {
            result = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v31 = result;
            v32 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v27 >= *(v29 + 16))
            {
              goto LABEL_42;
            }

            v31 = *(v26 + 8 * v27 + 32);

            v32 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
              return result;
            }
          }

          sub_1002C5068(v93, v31, v94, v13);

          if ((*v90)(v13, 1, v92) == 1)
          {
            result = sub_100024F64(v13, &qword_10190D6A8);
          }

          else
          {
            sub_1002E29D4(v13, v91, type metadata accessor for PlaceSummaryViewModelUnit);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_100356A5C(0, v30[2] + 1, 1, v30);
            }

            v34 = v30[2];
            v33 = v30[3];
            if (v34 >= v33 >> 1)
            {
              v30 = sub_100356A5C(v33 > 1, v34 + 1, 1, v30);
            }

            v30[2] = v34 + 1;
            result = sub_1002E29D4(v91, v30 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v34, type metadata accessor for PlaceSummaryViewModelUnit);
            v26 = v89;
          }

          ++v27;
          if (v32 == v25)
          {
            goto LABEL_26;
          }
        }
      }

      v30 = _swiftEmptyArrayStorage;
LABEL_26:
      v35 = v85;
      v36 = sub_1002DBCE0(v30, v85);

      if (v36[2])
      {
        v37 = v74;
        UUID.init()();

        v38 = v76;
        *(v37 + *(v76 + 20)) = v36;
        *(v37 + *(v38 + 24)) = v84;
        *(v37 + *(v38 + 28)) = v35;
        sub_1002E29D4(v37, v83, type metadata accessor for PlaceSummaryViewModelLine);
        v21 = v87;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v8 = v82;
        v6 = v80;
        v19 = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = sub_1003580F8(0, v21[2] + 1, 1, v21);
        }

        v41 = v21[2];
        v40 = v21[3];
        if (v41 >= v40 >> 1)
        {
          v21 = sub_1003580F8(v40 > 1, v41 + 1, 1, v21);
        }

        v21[2] = v41 + 1;
        result = sub_1002E29D4(v83, v21 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v41, type metadata accessor for PlaceSummaryViewModelLine);
        v9 = v81;
      }

      else
      {

        v9 = v81;
        v8 = v82;
        v6 = v80;
        v21 = v87;
        v19 = v77;
      }

      v20 = v86 + 1;
    }

    while (v86 + 1 != v79);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  if (v21[2])
  {

    sub_1002DFE3C(v42);
    v93 = v43;

    v92 = static Color.clear.getter();
    v94 = type metadata accessor for PlaceSummaryViewModelTemplate(0);
    v44 = objc_allocWithZone(v94);
    v45 = v21;
    v46 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__leadingEntity;
    v97 = 0xF000000000000007;
    v47 = sub_1000CE6B8(&unk_1019189E0);
    v48 = v71;
    Published.init(initialValue:)();
    v49 = *(v9 + 32);
    v89 = v46;
    v49(&v44[v46], v48, v8);
    v50 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__trailingEntity;
    v97 = 0xF000000000000007;
    v88 = v47;
    Published.init(initialValue:)();
    v90 = v50;
    v51 = &v44[v50];
    v52 = v45;
    v49(v51, v48, v8);
    v53 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__containerWidth;
    v97 = 0x4069000000000000;
    v54 = v72;
    Published.init(initialValue:)();
    v55 = v6;
    v56 = v69;
    (*(v55 + 32))(&v44[v53], v54, v69);
    v91 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor;
    *&v44[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor] = 0;
    v57 = &v44[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons];
    *v57 = 0;
    v57[1] = 0;
    v58 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons;
    *&v44[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons] = 0;
    v59 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics;
    *&v44[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics] = 0;
    v44[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_containsPhotoCarouselLine] = 0;
    v60 = &v44[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString];
    *v60 = 0;
    v60[1] = 0;
    if (*(v52 + 16))
    {
      swift_beginAccess();
      v96 = v52;
      sub_1000CE6B8(&qword_10190BF10);
      Published.init(initialValue:)();
      swift_endAccess();
      v61 = v89;
      swift_beginAccess();
      v62 = v93;
      sub_10013C1B0(v93);
      v63 = v82;
      v64 = *(v81 + 8);
      v64(&v44[v61], v82);
      v96 = v62;
      Published.init(initialValue:)();
      swift_endAccess();
      v65 = v90;
      swift_beginAccess();
      v64(v65 + v44, v63);
      v96 = 0xF000000000000007;
      Published.init(initialValue:)();
      swift_endAccess();
      *v57 = 0;
      v57[1] = 0;

      *&v44[v58] = 0;

      v44[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase] = 1;
      swift_beginAccess();
      LOBYTE(v96) = 0;
      Published.init(initialValue:)();
      swift_endAccess();
      *&v44[v91] = v92;

      v44[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_searchAlongRoute] = v70 & 1;
      v95.receiver = v44;
      v95.super_class = v94;
      v66 = objc_msgSendSuper2(&v95, "init");

      sub_10013BD74(v62);
      return v66;
    }

    sub_10013BD74(v93);

    v67 = v82;
    v68 = *(v81 + 8);
    v68(&v44[v89], v82);
    v68(v90 + v44, v67);
    (*(v80 + 8))(&v44[v53], v56);

    swift_deallocPartialClassInstance();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1002C5068@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a3;
  v7 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_10190D6A8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v52 - v14;
  v16 = a2[13];
  if (v16 >> 60 != 10)
  {
    goto LABEL_27;
  }

  v17 = a2[14];
  v19 = a2[11];
  v18 = a2[12];
  v21 = a2[7];
  v20 = a2[8];
  v22 = a2[5];
  v23 = a2[6];
  v24 = a2[10] | a2[9];
  v25 = a2[2];
  v26 = a2[3];
  v27 = a2[4];
  if (v16 != 0xA000000000000000 || v17 | v25 | v18 | v19 | v24 | v20 | v21 | v23 | v22 | v27 | v26)
  {
    v33 = v19 | v18 | v24 | v20 | v21 | v23 | v22 | v27 | v26;
    if (v17 || v16 != 0xA000000000000000 || v25 != 7 || v33)
    {
      if (!v17 && v16 == 0xA000000000000000 && v25 == 27 && !v33)
      {
        v42 = [a1 locationDisplayString];
        if (v42)
        {
          v43 = v42;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          UUID.init()();
          AttributeContainer.init()();
          v44 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
          AttributedString.init(_:attributes:)();
          (*(v9 + 56))(&v15[v44[12]], 1, 1, v8);
          v45 = &v15[v44[6]];
          *v45 = 0;
          *(v45 + 1) = 0;
          *&v15[v44[7]] = 0;
          *&v15[v44[8]] = 0;
          *&v15[v44[9]] = 0;
          *&v15[v44[10]] = 0;
          v46 = &v15[v44[11]];
          *v46 = 1;
          v46[8] = 0;
          *&v15[v44[13]] = _swiftEmptyArrayStorage;
          v47 = type metadata accessor for PlaceSummaryViewModelUnit(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v47 - 8) + 56))(v15, 0, 1, v47);
LABEL_25:
          sub_1002E29D4(v15, a4, type metadata accessor for PlaceSummaryViewModelUnit);
          type metadata accessor for PlaceSummaryViewModelUnit(0);
          return (*(*(v47 - 8) + 56))(a4, 0, 1, v47);
        }
      }
    }

    else
    {
      v52 = a4;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v54._object = 0x800000010122CC90;
      v34._countAndFlagsBits = 0x5320746E65636552;
      v34._object = 0xED00006863726165;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v54._countAndFlagsBits = 0xD00000000000004DLL;
      v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, qword_1019600D8, v35, v54);
      v37 = (v36._object >> 56) & 0xF;
      if ((v36._object & 0x2000000000000000) == 0)
      {
        v37 = v36._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        UUID.init()();
        v38 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
        (*(v9 + 16))(&v15[v38[5]], v11, v8);
        (*(v9 + 56))(&v15[v38[12]], 1, 1, v8);
        (*(v9 + 8))(v11, v8);
        v39 = &v15[v38[6]];
        *v39 = 0;
        *(v39 + 1) = 0;
        *&v15[v38[7]] = 0;
        *&v15[v38[8]] = 0;
        *&v15[v38[9]] = 0;
        *&v15[v38[10]] = 0;
        v40 = &v15[v38[11]];
        *v40 = 1;
        v40[8] = 0;
        *&v15[v38[13]] = _swiftEmptyArrayStorage;
        v41 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v41 - 8) + 56))(v15, 0, 1, v41);
        a4 = v52;
        goto LABEL_24;
      }

      a4 = v52;
    }

LABEL_27:
    v49 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v49 - 8) + 56))(v15, 1, 1, v49);
    goto LABEL_28;
  }

  v28 = [a1 query];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  sub_1002CE5A8(v30, v32, v53, v15);

LABEL_24:
  v47 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  if ((*(*(v47 - 8) + 48))(v15, 1, v47) != 1)
  {
    goto LABEL_25;
  }

LABEL_28:
  sub_100024F64(v15, &qword_10190D6A8);
  v50 = a2[16];
  if (v50)
  {

    sub_1002C5068(a1, v50, v53);
  }

  else
  {
    v51 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v51 - 8) + 56))(a4, 1, 1, v51);
  }
}

char *sub_1002C58A8(void *a1, char *a2, void *a3, int a4, char a5, double a6)
{
  v75 = a4;
  v97 = a2;
  v98 = a3;
  v99 = a1;
  v8 = sub_1000CE6B8(&unk_1019189D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v77 = &v72 - v10;
  v79 = sub_1000CE6B8(&qword_101914260);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v72 - v11;
  v12 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v12 - 8);
  v14 = &v72 - v13;
  v96 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v92 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v87 = &v72 - v18;
  result = sub_10038DEB8(a5);
  if (result)
  {
    v80 = result;
    v20 = *&result[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
    v21 = *(v20 + 16);
    v74 = v8;
    v73 = v9;
    v86 = v21;
    if (v21)
    {
      v22 = 0;
      v85 = v20 + 32;
      v23 = _swiftEmptyArrayStorage;
      v94 = (v92 + 48);
      v84 = v20;
      while (v22 < *(v20 + 16))
      {
        v90 = v22;
        v91 = v23;
        v25 = v85 + 16 * v22;
        v26 = *v25;
        v27 = *(v25 + 8);
        LODWORD(v25) = *(v25 + 9);
        v88 = v27;
        v89 = v25;
        if (v26 >> 62)
        {
          v28 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v28)
        {
          v29 = 0;
          v30 = v26 & 0xC000000000000001;
          v31 = v26 & 0xFFFFFFFFFFFFFF8;
          v32 = _swiftEmptyArrayStorage;
          v93 = v26;
          while (1)
          {
            if (v30)
            {
              v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v34 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                goto LABEL_40;
              }
            }

            else
            {
              if (v29 >= *(v31 + 16))
              {
                goto LABEL_41;
              }

              v33 = *(v26 + 8 * v29 + 32);

              v34 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
LABEL_40:
                __break(1u);
LABEL_41:
                __break(1u);
LABEL_42:
                v91 = 0;
                v96 = 0;
                goto LABEL_43;
              }
            }

            sub_1002C650C(v99, v33, v97, v98, v14);

            if ((*v94)(v14, 1, v96) == 1)
            {
              sub_100024F64(v14, &qword_10190D6A8);
            }

            else
            {
              sub_1002E29D4(v14, v95, type metadata accessor for PlaceSummaryViewModelUnit);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v32 = sub_100356A5C(0, v32[2] + 1, 1, v32);
              }

              v36 = v32[2];
              v35 = v32[3];
              if (v36 >= v35 >> 1)
              {
                v32 = sub_100356A5C(v35 > 1, v36 + 1, 1, v32);
              }

              v32[2] = v36 + 1;
              sub_1002E29D4(v95, v32 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v36, type metadata accessor for PlaceSummaryViewModelUnit);
              v26 = v93;
            }

            ++v29;
            if (v34 == v28)
            {
              goto LABEL_26;
            }
          }
        }

        v32 = _swiftEmptyArrayStorage;
LABEL_26:
        v37 = v89;
        v38 = sub_1002DBCE0(v32, v89);

        if (v38[2])
        {
          v39 = v81;
          UUID.init()();

          v40 = v83;
          *(v39 + *(v83 + 20)) = v38;
          *(v39 + *(v40 + 24)) = v88;
          *(v39 + *(v40 + 28)) = v37;
          sub_1002E29D4(v39, v87, type metadata accessor for PlaceSummaryViewModelLine);
          v23 = v91;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = v84;
          v24 = v90;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = sub_1003580F8(0, v23[2] + 1, 1, v23);
          }

          v43 = v23[2];
          v42 = v23[3];
          if (v43 >= v42 >> 1)
          {
            v23 = sub_1003580F8(v42 > 1, v43 + 1, 1, v23);
          }

          v23[2] = v43 + 1;
          result = sub_1002E29D4(v87, v23 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v43, type metadata accessor for PlaceSummaryViewModelLine);
        }

        else
        {

          v24 = v90;
          v23 = v91;
          v20 = v84;
        }

        v22 = v24 + 1;
        if (v22 == v86)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
    }

    else
    {
      v23 = _swiftEmptyArrayStorage;
LABEL_34:
      if (v23[2])
      {
        v44 = *&v80[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities];

        v45 = v99;
        v46 = sub_1002DFFEC(v99, v44);

        v47 = [v45 geoMapItem];
        v98 = v46;
        if (v47)
        {
          v48 = [v47 _childItems];
          swift_unknownObjectRelease();
          v31 = v79;
          v14 = v78;
          v32 = v23;
          if (!v48)
          {
            goto LABEL_42;
          }

          sub_100014C84(0, &unk_101918A50);
          v49 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v91 = sub_1002DF380(v49, a6);
          v96 = v50;
        }

        else
        {
          v32 = v23;
          v91 = 0;
          v96 = 0;
          v31 = v79;
          v14 = v78;
        }

LABEL_43:
        v97 = static Color.clear.getter();
        v99 = type metadata accessor for PlaceSummaryViewModelTemplate(0);
        v51 = objc_allocWithZone(v99);
        v52 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__leadingEntity;
        v102 = 0xF000000000000007;
        sub_1000CE6B8(&unk_1019189E0);
        v53 = v76;
        Published.init(initialValue:)();
        v54 = *(v14 + 4);
        v93 = v52;
        v54(&v51[v52], v53, v31);
        v55 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__trailingEntity;
        v102 = 0xF000000000000007;
        Published.init(initialValue:)();
        v94 = v55;
        v54(&v51[v55], v53, v31);
        v56 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__containerWidth;
        v102 = 0x4069000000000000;
        v57 = v77;
        Published.init(initialValue:)();
        v58 = v73;
        v59 = v74;
        (*(v73 + 32))(&v51[v56], v57, v74);
        v95 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor;
        *&v51[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor] = 0;
        v60 = &v51[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons];
        *v60 = 0;
        v60[1] = 0;
        v92 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons;
        *&v51[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons] = 0;
        v61 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics;
        *&v51[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics] = 0;
        v51[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_containsPhotoCarouselLine] = 0;
        v62 = &v51[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString];
        *v62 = 0;
        v62[1] = 0;
        if (v32[2])
        {
          swift_beginAccess();
          v101 = v32;
          sub_1000CE6B8(&qword_10190BF10);
          Published.init(initialValue:)();
          swift_endAccess();
          v63 = v93;
          swift_beginAccess();
          v64 = v98;
          sub_10013C1B0(v98);
          v65 = *(v14 + 1);
          v66 = v79;
          v65(&v51[v63], v79);
          v101 = v64;
          Published.init(initialValue:)();
          swift_endAccess();
          v67 = v94;
          swift_beginAccess();
          v65(v67 + v51, v66);
          v101 = 0xF000000000000007;
          Published.init(initialValue:)();
          swift_endAccess();
          v68 = v96;
          *v60 = v91;
          v60[1] = v68;

          *&v51[v92] = 0;

          v51[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase] = 1;
          swift_beginAccess();
          LOBYTE(v101) = 0;
          Published.init(initialValue:)();
          swift_endAccess();
          *&v51[v95] = v97;

          v51[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_searchAlongRoute] = v75 & 1;
          v100.receiver = v51;
          v100.super_class = v99;
          v69 = objc_msgSendSuper2(&v100, "init");

          sub_10013BD74(v64);
          return v69;
        }

        sub_10013BD74(v98);

        v70 = *(v14 + 1);
        v71 = v79;
        v70(&v51[v93], v79);
        v70(v94 + v51, v71);
        (*(v58 + 8))(&v51[v56], v59);

        swift_deallocPartialClassInstance();
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

void sub_1002C650C(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v83 = a3;
  v85 = a2;
  v9 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &countAndFlagsBits - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(&qword_10190D6A8);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &countAndFlagsBits - v16;
  v84 = a1;
  v18 = [a1 geoMapItem];
  if (v18)
  {
    v82 = a4;
    v19 = [objc_opt_self() _itemWithGeoMapItem:v18];
    if (v19)
    {
      v77 = v11;
      v20 = v19;
      v21 = [v19 name];
      if (v21)
      {
        v80 = a5;
        v81 = v20;
        v78 = v5;
        v22 = v21;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v24;

        v25 = v85[2];
        v26 = v85[13];
        if (v26 >> 60 == 1)
        {
          v41 = [v84 geoMapItem];
          v27 = v17;
          if (v41)
          {
            v42 = [objc_allocWithZone(MKMapItem) initWithGeoMapItem:v41 isPlaceHolderPlace:0];
            if (v42)
            {
              v43 = v42;
              v38 = v82;
              if (v82)
              {
                v44 = objc_allocWithZone(NSNumber);
                v45 = v38;
                v46 = [v44 initWithUnsignedLongLong:v25];
                v86 = 1;
                v47 = objc_opt_self();
                v48 = v45;
                [v43 _coordinate];
                v49 = [v47 distanceStringFromLocation:v48 toCoordinate:v43 withMapItem:&v86 showsDistance:0 onlyUseThreshold:v46 maximumDistance:1 useShortThreshold:?];

                if (!v49)
                {

                  swift_unknownObjectRelease();

                  v70 = type metadata accessor for PlaceSummaryViewModelUnit(0);
                  (*(*(v70 - 8) + 56))(v17, 1, 1, v70);
LABEL_46:
                  v71 = type metadata accessor for PlaceSummaryViewModelUnit(0);
                  v72 = *(v71 - 8);
                  if ((*(v72 + 48))(v27, 1, v71) != 1)
                  {

                    swift_unknownObjectRelease();
                    v75 = v80;
                    sub_1002E29D4(v27, v80, type metadata accessor for PlaceSummaryViewModelUnit);
                    (*(v72 + 56))(v75, 0, 1, v71);
                    return;
                  }

                  goto LABEL_47;
                }

                v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v52 = v51;

                if ((MapsFeature_IsEnabled_HikingWatch() & 1) != 0 && [v43 _placeCategoryType] == 1)
                {
                  v77 = v52;
                  if (qword_101906768 != -1)
                  {
                    swift_once();
                  }

                  v88._object = 0xEB00000000796177;
                  v53._countAndFlagsBits = 0x636E61747369645BLL;
                  v53._object = 0xEF79617761205D65;
                  v54._countAndFlagsBits = 0x79617761204025;
                  v88._countAndFlagsBits = 0x6120696D20303031;
                  v54._object = 0xE700000000000000;
                  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, qword_1019600D8, v54, v88)._countAndFlagsBits;
                  sub_1000CE6B8(&unk_10190D5C0);
                  v55 = swift_allocObject();
                  *(v55 + 16) = xmmword_1011E1D30;
                  *(v55 + 56) = &type metadata for String;
                  *(v55 + 64) = sub_1000DA61C();
                  v56 = v77;
                  *(v55 + 32) = v50;
                  *(v55 + 40) = v56;
                  v50 = String.init(format:_:)();
                  v52 = v57;
                }

                UUID.init()();

                swift_unknownObjectRelease();

                v58 = (v27 + *(type metadata accessor for PlaceSummaryViewModelUnit.Distance(0) + 20));
                *v58 = v50;
                v58[1] = v52;
                v59 = type metadata accessor for PlaceSummaryViewModelUnit(0);
LABEL_35:
                swift_storeEnumTagMultiPayload();
                (*(*(v59 - 8) + 56))(v27, 0, 1, v59);
                goto LABEL_46;
              }

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          v27 = v17;
          if (v26 >> 60 == 10)
          {
            v28 = v85[14];
            v30 = v85[11];
            v29 = v85[12];
            v32 = v85[7];
            v31 = v85[8];
            v33 = v85[5];
            v34 = v85[6];
            v35 = v85[10] | v85[9];
            v37 = v85[3];
            v36 = v85[4];
            if (v26 == 0xA000000000000000 && !(v28 | v25 | v29 | v30 | v35 | v31 | v32 | v34 | v33 | v36 | v37))
            {
              sub_1002CE5A8(v23, v79, v83, v17);
LABEL_9:

              v38 = v82;
              goto LABEL_46;
            }

            v60 = v30 | v29 | v35 | v31 | v32 | v34 | v33 | v36 | v37;
            if (v28 || v26 != 0xA000000000000000 || v25 != 7 || v60)
            {
              if (!v28 && v26 == 0xA000000000000000 && v25 == 28 && !v60)
              {
                sub_1002D8180(v81, v17);
                goto LABEL_9;
              }
            }

            else
            {
              v38 = v82;
              if (qword_101906768 != -1)
              {
                swift_once();
              }

              v89._object = 0x800000010122CC40;
              v61._countAndFlagsBits = 0x796C746E65636552;
              v61._object = 0xEF64657765695620;
              v62._countAndFlagsBits = 0;
              v62._object = 0xE000000000000000;
              v89._countAndFlagsBits = 0xD00000000000004CLL;
              v63 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, 0, qword_1019600D8, v62, v89);
              v64 = (v63._object >> 56) & 0xF;
              if ((v63._object & 0x2000000000000000) == 0)
              {
                v64 = v63._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
              }

              if (v64)
              {
                AttributeContainer.init()();
                AttributedString.init(_:attributes:)();
                UUID.init()();
                v65 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
                v66 = v77;
                (*(v77 + 16))(&v17[v65[5]], v13, v10);
                (*(v66 + 56))(&v17[v65[12]], 1, 1, v10);

                (*(v66 + 8))(v13, v10);
                v67 = &v17[v65[6]];
                *v67 = 0;
                *(v67 + 1) = 0;
                *&v17[v65[7]] = 0;
                *&v17[v65[8]] = 0;
                *&v17[v65[9]] = 0;
                *&v17[v65[10]] = 0;
                v68 = &v17[v65[11]];
                *v68 = 1;
                v68[8] = 0;
                *&v17[v65[13]] = _swiftEmptyArrayStorage;
                v59 = type metadata accessor for PlaceSummaryViewModelUnit(0);
                goto LABEL_35;
              }
            }
          }
        }

        v69 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        (*(*(v69 - 8) + 56))(v27, 1, 1, v69);
        v38 = v82;
LABEL_47:
        sub_100024F64(v27, &qword_10190D6A8);
        v73 = v85[16];
        if (v73)
        {

          sub_1002C650C(v84, v73, v83, v38);
          swift_unknownObjectRelease();
        }

        else
        {
          v74 = type metadata accessor for PlaceSummaryViewModelUnit(0);
          (*(*(v74 - 8) + 56))(v80, 1, 1, v74);
          swift_unknownObjectRelease();
        }

        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v39 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v40 = *(*(v39 - 8) + 56);

  v40(a5, 1, 1, v39);
}

uint64_t sub_1002C7084@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v7 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_10190D6A8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v40 - v14;
  v16 = *(a2 + 16);
  v17 = *(a2 + 104);
  v42 = a1;
  if (v17 >> 60 == 3)
  {
    if (v16 == 2)
    {
      v24 = [a1 shortAddress];
      if (v24)
      {
        v25 = v24;
        v41 = a4;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v29 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {
          AttributeContainer.init()();
          AttributedString.init(_:attributes:)();
          UUID.init()();
          v30 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
          (*(v9 + 16))(&v15[v30[5]], v11, v8);
          (*(v9 + 56))(&v15[v30[12]], 1, 1, v8);
          (*(v9 + 8))(v11, v8);
          v31 = &v15[v30[6]];
          *v31 = 0;
          *(v31 + 1) = 0;
          *&v15[v30[7]] = 0;
          *&v15[v30[8]] = 0;
          *&v15[v30[9]] = 0;
          *&v15[v30[10]] = 0;
          v32 = &v15[v30[11]];
          *v32 = 1;
          v32[8] = 0;
          *&v15[v30[13]] = _swiftEmptyArrayStorage;
          v33 = type metadata accessor for PlaceSummaryViewModelUnit(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v33 - 8) + 56))(v15, 0, 1, v33);
          a4 = v41;
          goto LABEL_17;
        }

        a4 = v41;
      }
    }

LABEL_20:
    v37 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v37 - 8) + 56))(v15, 1, 1, v37);
    goto LABEL_21;
  }

  if (v17 >> 60 != 10)
  {
    goto LABEL_20;
  }

  if (v17 != 0xA000000000000000)
  {
    goto LABEL_20;
  }

  v18 = vorrq_s8(vorrq_s8(*(a2 + 40), *(a2 + 72)), vorrq_s8(*(a2 + 56), *(a2 + 88)));
  if (*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | *(a2 + 112) | *(a2 + 32) | *(a2 + 24) | v16)
  {
    goto LABEL_20;
  }

  if (![a1 isMeCard])
  {
    v19 = [a1 compositeName];
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_15:
    v21 = 0;
    v23 = 0;
    goto LABEL_16;
  }

  v19 = [a1 localizedLabel];
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_7:
  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

LABEL_16:
  sub_1002CE5A8(v21, v23, v43, v15);

LABEL_17:
  v34 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v15, 1, v34) != 1)
  {
    sub_1002E29D4(v15, a4, type metadata accessor for PlaceSummaryViewModelUnit);
    return (*(v35 + 56))(a4, 0, 1, v34);
  }

LABEL_21:
  sub_100024F64(v15, &qword_10190D6A8);
  v38 = *(a2 + 128);
  if (v38)
  {

    sub_1002C7084(v42, v38, v43);
  }

  else
  {
    v39 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v39 - 8) + 56))(a4, 1, 1, v39);
  }
}

void sub_1002C760C(uint64_t a1, char *a2, int a3)
{
  v135 = a3;
  v188 = a2;
  v4 = sub_1000CE6B8(&unk_1019189D0);
  v140 = *(v4 - 8);
  __chkstk_darwin(v4);
  v139 = &v133 - v5;
  v142 = sub_1000CE6B8(&qword_101914260);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v138 = &v133 - v6;
  v136 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v136);
  v137 = (&v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v168 = sub_1000CE6B8(&qword_101918AF0);
  v8 = *(v168 - 8);
  __chkstk_darwin(v168);
  v167 = &v133 - v9;
  v166 = sub_1000CE6B8(&qword_101918AF8);
  v10 = *(v166 - 8);
  __chkstk_darwin(v166);
  v165 = &v133 - v11;
  v164 = sub_1000CE6B8(&qword_101918B00);
  v12 = *(v164 - 8);
  __chkstk_darwin(v164);
  v163 = &v133 - v13;
  v14 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v14 - 8);
  v174 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for AttributedString();
  v16 = *(v173 - 8);
  __chkstk_darwin(v173);
  v172 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v18 - 8);
  v20 = &v133 - v19;
  v21 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v179 = *(v21 - 8);
  __chkstk_darwin(v21);
  v187 = &v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v149 = &v133 - v25;
  v26 = sub_10038E188();
  if (v26)
  {
    v134 = v26;
    v27 = *&v26[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
    v28 = *(v27 + 16);
    v178 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact;
    v133 = v4;
    v181 = a1;
    v148 = v28;
    if (v28)
    {
      v29 = 0;
      v180 = &v188[OBJC_IVAR____TtC4Maps38PlaceSummaryTextHighlightConfiguration_typedAutocompleteQuery];
      v147 = v27 + 32;
      v162 = (v10 + 104);
      v161 = (v8 + 104);
      v160 = (v8 + 8);
      v159 = (v10 + 8);
      v158 = (v12 + 8);
      v171 = (v16 + 16);
      v155 = OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle;
      v170 = (v16 + 56);
      v169 = (v16 + 8);
      v176 = OBJC_IVAR____TtC4Maps38PlaceSummaryTextHighlightConfiguration_type;
      v177 = (v179 + 56);
      v185 = (v179 + 48);
      v157 = enum case for ListFormatStyle.ListType.and<A, B>(_:);
      v156 = enum case for ListFormatStyle.Width.standard<A, B>(_:);
      v154 = xmmword_1011E47B0;
      v30 = _swiftEmptyArrayStorage;
      v182 = v21;
      v183 = v20;
      v146 = v27;
      while (1)
      {
        if (v29 >= *(v27 + 16))
        {
          goto LABEL_84;
        }

        v152 = v29;
        v31 = v147 + 16 * v29;
        v32 = *v31;
        v150 = *(v31 + 8);
        v33 = *(v31 + 9);
        v34 = v32 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v151 = v33;
        v153 = v30;

        if (v34)
        {
          break;
        }

        v192 = _swiftEmptyArrayStorage;
LABEL_62:
        v93 = v151;
        v94 = sub_1002DBCE0(v192, v151);

        if (v94[2])
        {
          v95 = v143;
          UUID.init()();

          v96 = v145;
          *(v95 + *(v145 + 20)) = v94;
          *(v95 + *(v96 + 24)) = v150;
          *(v95 + *(v96 + 28)) = v93;
          sub_1002E29D4(v95, v149, type metadata accessor for PlaceSummaryViewModelLine);
          v30 = v153;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1003580F8(0, v30[2] + 1, 1, v30);
          }

          v98 = v30[2];
          v97 = v30[3];
          if (v98 >= v97 >> 1)
          {
            v30 = sub_1003580F8(v97 > 1, v98 + 1, 1, v30);
          }

          v30[2] = v98 + 1;
          sub_1002E29D4(v149, v30 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v98, type metadata accessor for PlaceSummaryViewModelLine);
        }

        else
        {

          v30 = v153;
        }

        v29 = v152 + 1;
        v27 = v146;
        if (v152 + 1 == v148)
        {
          goto LABEL_70;
        }
      }

      v35 = 0;
      v191 = v32 & 0xC000000000000001;
      v192 = _swiftEmptyArrayStorage;
      v189 = v34;
      v190 = v32 & 0xFFFFFFFFFFFFFF8;
      v186 = v32;
      while (1)
      {
        if (v191)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v37 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_82;
          }
        }

        else
        {
          if (v35 >= *(v190 + 16))
          {
            goto LABEL_83;
          }

          v36 = *(v32 + 8 * v35 + 32);

          v37 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
            goto LABEL_87;
          }
        }

        if (*(v36 + 104) >> 60 == 3)
        {
          v184 = v37;
          v38 = sub_1002E0314(a1);
          v40 = v39;
          if (*(v38 + 2) == 1)
          {
            v41 = *(v38 + 4);
            v42 = *(v38 + 5);

            type metadata accessor for PlaceSummaryStackedImageViewModel(0);
            v43 = swift_allocObject();
            v194 = 0;
            sub_1000CE6B8(&unk_1019133B0);
            Published.init(initialValue:)();
            *(v43 + OBJC_IVAR____TtC4Maps33PlaceSummaryStackedImageViewModel_imageSpecs) = v40;
            v44 = HIBYTE(v42) & 0xF;
            if ((v42 & 0x2000000000000000) == 0)
            {
              v44 = v41 & 0xFFFFFFFFFFFFLL;
            }

            if (v44)
            {
              AttributeContainer.init()();
              v45 = v172;
              AttributedString.init(_:attributes:)();
              UUID.init()();
              v46 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
              v47 = v173;
              (*v171)(&v183[v46[5]], v45, v173);
              (*v170)(&v183[v46[12]], 1, 1, v47);
              v48 = v45;
              v20 = v183;
              (*v169)(v48, v47);
              v49 = &v20[v46[6]];
              *v49 = 0;
              *(v49 + 1) = 0;
              *&v20[v46[7]] = 0;
              *&v20[v46[8]] = 0;
              *&v20[v46[9]] = 0;
              *&v20[v46[10]] = v43;
              v50 = &v20[v46[11]];
              *v50 = 1;
              v50[8] = 0;
              *&v20[v46[13]] = _swiftEmptyArrayStorage;
              swift_storeEnumTagMultiPayload();
              (*v177)(v20, 0, 1, v21);
            }

            else
            {

              (*v177)(v20, 1, 1, v21);
            }
          }

          else
          {
            v196 = v38;
            v56 = *v162;
            v57 = v165;
            v175 = v39;
            v58 = v166;
            v56(v165, v157, v166);
            v59 = v167;
            v60 = v168;
            (*v161)(v167, v156, v168);
            sub_1000CE6B8(&unk_101909C00);
            sub_1000414C8(&qword_101918B08, &unk_101909C00);
            v61 = v163;
            static FormatStyle.list<A>(type:width:)();
            (*v160)(v59, v60);
            (*v159)(v57, v58);
            sub_1000414C8(&unk_101918B10, &qword_101918B00);
            v62 = v164;
            Sequence.formatted<A>(_:)();
            (*v158)(v61, v62);

            v64 = v194;
            v63 = v195;
            type metadata accessor for PlaceSummaryStackedImageViewModel(0);
            v65 = swift_allocObject();
            v196 = 0;
            sub_1000CE6B8(&unk_1019133B0);
            Published.init(initialValue:)();
            *(v65 + OBJC_IVAR____TtC4Maps33PlaceSummaryStackedImageViewModel_imageSpecs) = v175;
            v66 = HIBYTE(v63) & 0xF;
            if ((v63 & 0x2000000000000000) == 0)
            {
              v66 = v64 & 0xFFFFFFFFFFFFLL;
            }

            if (v66)
            {
              AttributeContainer.init()();
              v67 = v172;
              AttributedString.init(_:attributes:)();
              v68 = v183;
              UUID.init()();
              v69 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
              v70 = v173;
              (*v171)(&v68[v69[5]], v67, v173);
              (*v170)(&v68[v69[12]], 1, 1, v70);
              v71 = v67;
              v20 = v68;
              (*v169)(v71, v70);
              v72 = &v68[v69[6]];
              *v72 = 0;
              *(v72 + 1) = 0;
              *&v68[v69[7]] = 0;
              *&v68[v69[8]] = 0;
              *&v68[v69[9]] = 0;
              *&v68[v69[10]] = v65;
              v73 = &v68[v69[11]];
              *v73 = 1;
              v73[8] = 0;
              *&v68[v69[13]] = _swiftEmptyArrayStorage;
              v21 = v182;
              swift_storeEnumTagMultiPayload();
              v74 = 0;
            }

            else
            {

              v74 = 1;
              v21 = v182;
              v20 = v183;
            }

            (*v177)(v20, v74, 1, v21);
          }

          a1 = v181;
          v32 = v186;
          v37 = v184;
          goto LABEL_52;
        }

        v51 = *(a1 + v178);
        if (v51)
        {
          break;
        }

        v75 = *(a1 + v155);
        if (v75)
        {
          v76 = v75;
          Handle.prettyName.getter();
          if (!v77)
          {
            Handle.identifier.getter();
          }

          v55 = String._bridgeToObjectiveC()();

          v32 = v186;
          goto LABEL_34;
        }

        v80 = 0;
        v78 = 0;
        if (!*(v180 + 1))
        {
LABEL_44:
          sub_1000CE6B8(&qword_101908400);
          v85 = swift_allocObject();
          *(v85 + 16) = v154;
          v87 = v188;
          if (v80)
          {
            v88 = String.count.getter();
          }

          else
          {
            v88 = 0;
          }

          *(v85 + 32) = [objc_opt_self() valueWithRange:{0, v88}];
          goto LABEL_50;
        }

LABEL_43:
        v86 = v188;
        v80 = 0;
        v85 = 0;
LABEL_51:
        v89 = v188;
        sub_1002D6C7C(v78, v80, v85, *(*&v188[v176] + OBJC_IVAR____TtC4Maps29PlaceSummaryTextHighlightType_type), 1, v20);

        v21 = v182;
LABEL_52:
        if ((*v185)(v20, 1, v21) == 1)
        {
          sub_100024F64(v20, &qword_10190D6A8);
        }

        else
        {
          sub_1002E29D4(v20, v187, type metadata accessor for PlaceSummaryViewModelUnit);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v192 = sub_100356A5C(0, *(v192 + 2) + 1, 1, v192);
          }

          v91 = *(v192 + 2);
          v90 = *(v192 + 3);
          if (v91 >= v90 >> 1)
          {
            v192 = sub_100356A5C(v90 > 1, v91 + 1, 1, v192);
          }

          v92 = v192;
          *(v192 + 2) = v91 + 1;
          sub_1002E29D4(v187, v92 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v91, type metadata accessor for PlaceSummaryViewModelUnit);
        }

        ++v35;
        if (v37 == v189)
        {
          goto LABEL_62;
        }
      }

      v52 = objc_opt_self();
      v53 = v51;
      v54 = [v52 stringFromContact:v53 style:0];
      if (!v54)
      {
        v54 = [v53 givenName];
        if (!v54)
        {
          goto LABEL_85;
        }
      }

      v55 = v54;

LABEL_34:
      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;

      if (!*(v180 + 1))
      {
        goto LABEL_44;
      }

      if (v80)
      {
        v81 = v188;

        v82 = String._bridgeToObjectiveC()();
        v83 = String._bridgeToObjectiveC()();

        v84 = [v82 _maps_prefixMatchesForSearchString:v83];

        if (v84)
        {
          sub_100014C84(0, &unk_101918A40);
          v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v85 = 0;
        }

        a1 = v181;
LABEL_50:
        v32 = v186;
        goto LABEL_51;
      }

      goto LABEL_43;
    }

    v30 = _swiftEmptyArrayStorage;
LABEL_70:
    if (v30[2])
    {
      v153 = v30;
      v99 = [objc_opt_self() sharedCache];
      if (!v99)
      {
        goto LABEL_86;
      }

      v100 = v99;
      v101 = [v99 searchImage];

      v102 = v142;
      v103 = v141;
      v104 = v140;
      if (v101)
      {
        v105 = v137;
        *v137 = v101;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for PlaceSummaryImageViewModel(0);
        v106 = swift_allocObject();
        v194 = 0;
        sub_1000CE6B8(&unk_101918A10);
        Published.init(initialValue:)();
        UUID.init()();
        sub_1002E29D4(v105, v106 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
        v107 = v106 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
        *v107 = 0;
        *(v107 + 8) = 1;
        v108 = *(v181 + v178);
        if (v108 && (v109 = v108, v110 = sub_1002DDDB4(v108, 0, 0), v109, (~v110 & 0xF000000000000007) != 0))
        {

          v191 = v110;
        }

        else
        {
          v191 = v106;
        }

        v190 = static Color.clear.getter();
        v192 = type metadata accessor for PlaceSummaryViewModelTemplate(0);
        v111 = objc_allocWithZone(v192);
        v112 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__leadingEntity;
        v194 = 0xF000000000000007;
        v113 = sub_1000CE6B8(&unk_1019189E0);
        v114 = v138;
        Published.init(initialValue:)();
        v115 = *(v103 + 32);
        v187 = v112;
        v115(v111 + v112, v114, v102);
        v116 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__trailingEntity;
        v194 = 0xF000000000000007;
        v186 = v113;
        Published.init(initialValue:)();
        v188 = v116;
        v115(&v116[v111], v114, v102);
        v117 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__containerWidth;
        v194 = 0x4069000000000000;
        v118 = v139;
        Published.init(initialValue:)();
        v119 = v104;
        v120 = v133;
        (*(v104 + 32))(v111 + v117, v118, v133);
        v189 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor;
        *(v111 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor) = 0;
        v121 = v111 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons;
        *v121 = 0;
        v121[1] = 0;
        v122 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons;
        *(v111 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons) = 0;
        v123 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics;
        *(v111 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics) = 0;
        *(v111 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_containsPhotoCarouselLine) = 0;
        v124 = v111 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString;
        *v124 = 0;
        v124[1] = 0;
        v125 = v153;
        if (v153[2])
        {
          swift_beginAccess();
          v196 = v125;
          sub_1000CE6B8(&qword_10190BF10);
          Published.init(initialValue:)();
          swift_endAccess();
          v126 = v187;
          swift_beginAccess();
          v127 = v191;
          sub_10013BAE8(v191);
          v128 = *(v103 + 8);
          v129 = v142;
          v128(v111 + v126, v142);
          v196 = v127;
          Published.init(initialValue:)();
          swift_endAccess();
          v130 = v188;
          swift_beginAccess();
          v128(&v130[v111], v129);
          v196 = 0xF000000000000007;
          Published.init(initialValue:)();
          swift_endAccess();
          *v121 = 0;
          v121[1] = 0;

          *(v111 + v122) = 0;

          *(v111 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) = 1;
          swift_beginAccess();
          LOBYTE(v196) = 0;
          Published.init(initialValue:)();
          swift_endAccess();
          *(v111 + v189) = v190;

          *(v111 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_searchAlongRoute) = v135 & 1;
          v193.receiver = v111;
          v193.super_class = v192;
          objc_msgSendSuper2(&v193, "init");

          sub_10013BD88(v127);
        }

        else
        {

          sub_10013BD88(v191);

          v131 = *(v103 + 8);
          v191 = v122;
          v132 = v142;
          v131(v111 + v187, v142);
          v131(&v188[v111], v132);
          (*(v119 + 8))(v111 + v117, v120);

          swift_deallocPartialClassInstance();
        }
      }

      else
      {
LABEL_87:
        __break(1u);
      }
    }

    else
    {
    }
  }
}

char *sub_1002C8F5C(void *a1, char *a2, int a3)
{
  v63 = a3;
  v87 = a1;
  v88 = a2;
  v3 = sub_1000CE6B8(&unk_1019189D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v65 = &v62[-v5];
  v6 = sub_1000CE6B8(&qword_101914260);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v64 = &v62[-v8];
  v9 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v9 - 8);
  v11 = &v62[-v10];
  v86 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v82 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v77 = &v62[-v15];
  result = sub_10038E360();
  if (!result)
  {
    return result;
  }

  v66 = result;
  v17 = *&result[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
  v73 = *(v17 + 16);
  v74 = v4;
  v75 = v7;
  v76 = v6;
  if (v73)
  {
    v18 = 0;
    v72 = v17 + 32;
    v19 = _swiftEmptyArrayStorage;
    v84 = (v82 + 48);
    v71 = v3;
    v70 = v17;
    do
    {
      if (v18 >= *(v17 + 16))
      {
        goto LABEL_43;
      }

      v21 = v72 + 16 * v18;
      v22 = *v21;
      v23 = *(v21 + 8);
      LODWORD(v21) = *(v21 + 9);
      v78 = v23;
      v79 = v21;
      if (v22 >> 62)
      {
        v24 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v80 = v18;
      v81 = v19;

      v83 = v22;
      if (v24)
      {
        v25 = v22;
        v26 = 0;
        v27 = v22 & 0xC000000000000001;
        v28 = v22 & 0xFFFFFFFFFFFFFF8;
        v29 = _swiftEmptyArrayStorage;
        while (1)
        {
          if (v27)
          {
            result = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v30 = result;
            v31 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v26 >= *(v28 + 16))
            {
              goto LABEL_42;
            }

            v30 = *(v25 + 8 * v26 + 32);

            v31 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
              return result;
            }
          }

          sub_1002C9AB8(v87, v30, v88, v11);

          if ((*v84)(v11, 1, v86) == 1)
          {
            result = sub_100024F64(v11, &qword_10190D6A8);
          }

          else
          {
            sub_1002E29D4(v11, v85, type metadata accessor for PlaceSummaryViewModelUnit);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_100356A5C(0, v29[2] + 1, 1, v29);
            }

            v33 = v29[2];
            v32 = v29[3];
            if (v33 >= v32 >> 1)
            {
              v29 = sub_100356A5C(v32 > 1, v33 + 1, 1, v29);
            }

            v29[2] = v33 + 1;
            result = sub_1002E29D4(v85, v29 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v33, type metadata accessor for PlaceSummaryViewModelUnit);
            v25 = v83;
          }

          ++v26;
          if (v31 == v24)
          {
            goto LABEL_26;
          }
        }
      }

      v29 = _swiftEmptyArrayStorage;
LABEL_26:
      v34 = v79;
      v35 = sub_1002DBCE0(v29, v79);

      if (v35[2])
      {
        v36 = v67;
        UUID.init()();

        v37 = v69;
        *(v36 + *(v69 + 20)) = v35;
        *(v36 + *(v37 + 24)) = v78;
        *(v36 + *(v37 + 28)) = v34;
        sub_1002E29D4(v36, v77, type metadata accessor for PlaceSummaryViewModelLine);
        v19 = v81;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6 = v76;
        v4 = v74;
        v17 = v70;
        v20 = v80;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_1003580F8(0, v19[2] + 1, 1, v19);
        }

        v40 = v19[2];
        v39 = v19[3];
        if (v40 >= v39 >> 1)
        {
          v19 = sub_1003580F8(v39 > 1, v40 + 1, 1, v19);
        }

        v19[2] = v40 + 1;
        result = sub_1002E29D4(v77, v19 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v40, type metadata accessor for PlaceSummaryViewModelLine);
        v7 = v75;
      }

      else
      {

        v7 = v75;
        v6 = v76;
        v4 = v74;
        v20 = v80;
        v19 = v81;
        v17 = v70;
      }

      v18 = v20 + 1;
      v3 = v71;
    }

    while (v18 != v73);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  if (v19[2])
  {

    v87 = sub_1002E1898(v41);

    v86 = static Color.clear.getter();
    v88 = type metadata accessor for PlaceSummaryViewModelTemplate(0);
    v42 = objc_allocWithZone(v88);
    v81 = v19;
    v43 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__leadingEntity;
    v91 = 0xF000000000000007;
    sub_1000CE6B8(&unk_1019189E0);
    v44 = v64;
    Published.init(initialValue:)();
    v45 = *(v7 + 32);
    v83 = v43;
    v45(v42 + v43, v44, v6);
    v91 = 0xF000000000000007;
    v46 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__trailingEntity;
    Published.init(initialValue:)();
    v45(v42 + v46, v44, v6);
    v47 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__containerWidth;
    v91 = 0x4069000000000000;
    v48 = v65;
    Published.init(initialValue:)();
    v49 = v4;
    v50 = v81;
    (*(v49 + 32))(v42 + v47, v48, v3);
    v85 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor;
    *(v42 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor) = 0;
    v51 = v42 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons;
    *v51 = 0;
    v51[1] = 0;
    v84 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons;
    *(v42 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons) = 0;
    v52 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics;
    *(v42 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics) = 0;
    *(v42 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_containsPhotoCarouselLine) = 0;
    v53 = v3;
    v54 = v42 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString;
    *v54 = 0;
    v54[1] = 0;
    if (*(v50 + 16))
    {
      swift_beginAccess();
      v90 = v50;
      sub_1000CE6B8(&qword_10190BF10);
      Published.init(initialValue:)();
      swift_endAccess();
      v55 = v83;
      swift_beginAccess();
      v56 = v87;
      sub_10013C1B0(v87);
      v57 = v76;
      v58 = *(v75 + 8);
      v58(v42 + v55, v76);
      v90 = v56;
      Published.init(initialValue:)();
      swift_endAccess();
      swift_beginAccess();
      v58(v42 + v46, v57);
      v90 = 0xF000000000000007;
      Published.init(initialValue:)();
      swift_endAccess();
      *v51 = 0;
      v51[1] = 0;

      *&v84[v42] = 0;

      *(v42 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) = 1;
      swift_beginAccess();
      LOBYTE(v90) = 0;
      Published.init(initialValue:)();
      swift_endAccess();
      *&v85[v42] = v86;

      *(v42 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_searchAlongRoute) = v63 & 1;
      v89.receiver = v42;
      v89.super_class = v88;
      v59 = objc_msgSendSuper2(&v89, "init");

      sub_10013BD74(v56);
      return v59;
    }

    sub_10013BD74(v87);

    v60 = v76;
    v61 = *(v75 + 8);
    v61(v42 + v83, v76);
    v61(v42 + v46, v60);
    (*(v74 + 8))(v42 + v47, v53);

    swift_deallocPartialClassInstance();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1002C9AB8@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000CE6B8(&qword_10190D6A8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v36 - v10;
  v12 = a2[13];
  if (v12 >> 60 != 10)
  {
    goto LABEL_10;
  }

  v13 = a2[14];
  v15 = a2[11];
  v14 = a2[12];
  v16 = a2[9];
  v17 = a2[10];
  v19 = a2[7];
  v18 = a2[8];
  v21 = a2[5];
  v20 = a2[6];
  v23 = a2[3];
  v22 = a2[4];
  v24 = a2[2];
  if (v12 != 0xA000000000000000 || v13 | v24 | v14 | v15 | v17 | v16 | v18 | v19 | v20 | v21 | v22 | v23)
  {
    if (v12 == 0xA000000000000000 && v24 == 29 && !(v14 | v13 | v15 | v17 | v16 | v18 | v19 | v20 | v21 | v22 | v23))
    {
      sub_1002D8F6C(a1, v11);
      goto LABEL_13;
    }

LABEL_10:
    v30 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    goto LABEL_14;
  }

  v25 = [a1 address];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  sub_1002CE5A8(v27, v29, a3, v11);

LABEL_13:
  v31 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v11, 1, v31) != 1)
  {
    sub_1002E29D4(v11, a4, type metadata accessor for PlaceSummaryViewModelUnit);
    return (*(v32 + 56))(a4, 0, 1, v31);
  }

LABEL_14:
  sub_100024F64(v11, &qword_10190D6A8);
  v33 = a2[16];
  if (v33)
  {

    sub_1002C9AB8(a1, v33, a3);
  }

  else
  {
    v35 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v35 - 8) + 56))(a4, 1, 1, v35);
  }
}

char *sub_1002C9DFC(void *a1, char *a2, void *a3, int a4, double a5)
{
  v102 = a2;
  v103 = a3;
  v8 = sub_1000CE6B8(&unk_1019189D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v81 = &v77[-v10];
  v82 = sub_1000CE6B8(&qword_101914260);
  v11 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v77[-v12];
  v13 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v77[-v14];
  v101 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v97 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v77[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v18);
  v92 = &v77[-v20];
  v104 = a1;
  if ([a1 type] == 3)
  {
    result = sub_10038E370();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_10038D410(0, a4 & 1);
    if (!result)
    {
      return result;
    }
  }

  v83 = result;
  v22 = *&result[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
  v23 = *(v22 + 16);
  v78 = a4;
  v91 = v23;
  v79 = v8;
  if (v23)
  {
    v24 = 0;
    v90 = v22 + 32;
    v25 = _swiftEmptyArrayStorage;
    v99 = (v97 + 48);
    v89 = v11;
    v88 = v9;
    v87 = v22;
    do
    {
      if (v24 >= *(v22 + 16))
      {
        goto LABEL_53;
      }

      v96 = v25;
      v27 = v90 + 16 * v24;
      v28 = *v27;
      LODWORD(v93) = *(v27 + 8);
      LODWORD(v94) = *(v27 + 9);
      if (v28 >> 62)
      {
        v29 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v95 = v24;

      if (v29)
      {
        v30 = 0;
        v31 = v28 & 0xC000000000000001;
        v32 = v28 & 0xFFFFFFFFFFFFFF8;
        v33 = _swiftEmptyArrayStorage;
        v98 = v28;
        while (1)
        {
          if (v31)
          {
            result = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v34 = result;
            v35 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v30 >= *(v32 + 16))
            {
              goto LABEL_52;
            }

            v34 = *(v28 + 8 * v30 + 32);

            v35 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              return result;
            }
          }

          sub_1002CAAD8(v104, v34, v102, v103, v15);

          if ((*v99)(v15, 1, v101) == 1)
          {
            result = sub_100024F64(v15, &qword_10190D6A8);
          }

          else
          {
            sub_1002E29D4(v15, v100, type metadata accessor for PlaceSummaryViewModelUnit);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_100356A5C(0, v33[2] + 1, 1, v33);
            }

            v37 = v33[2];
            v36 = v33[3];
            if (v37 >= v36 >> 1)
            {
              v33 = sub_100356A5C(v36 > 1, v37 + 1, 1, v33);
            }

            v33[2] = v37 + 1;
            result = sub_1002E29D4(v100, v33 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v37, type metadata accessor for PlaceSummaryViewModelUnit);
            v28 = v98;
          }

          ++v30;
          if (v35 == v29)
          {
            goto LABEL_29;
          }
        }
      }

      v33 = _swiftEmptyArrayStorage;
LABEL_29:
      v38 = v94;
      v39 = sub_1002DBCE0(v33, v94);

      if (v39[2])
      {
        v40 = v84;
        UUID.init()();

        v41 = v86;
        *(v40 + *(v86 + 20)) = v39;
        *(v40 + *(v41 + 24)) = v93;
        *(v40 + *(v41 + 28)) = v38;
        sub_1002E29D4(v40, v92, type metadata accessor for PlaceSummaryViewModelLine);
        v25 = v96;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = v89;
        v9 = v88;
        v22 = v87;
        v26 = v95;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_1003580F8(0, v25[2] + 1, 1, v25);
        }

        v44 = v25[2];
        v43 = v25[3];
        if (v44 >= v43 >> 1)
        {
          v25 = sub_1003580F8(v43 > 1, v44 + 1, 1, v25);
        }

        v25[2] = v44 + 1;
        result = sub_1002E29D4(v92, v25 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v44, type metadata accessor for PlaceSummaryViewModelLine);
      }

      else
      {

        v11 = v89;
        v9 = v88;
        v26 = v95;
        v25 = v96;
        v22 = v87;
      }

      v24 = (v26 + 1);
    }

    while (v24 != v91);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  if (v25[2])
  {
    v45 = *&v83[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities];

    v46 = v104;
    v47 = sub_1002E1AA4(v104, v45);

    v48 = [v46 mapItem];
    v103 = v47;
    v96 = v25;
    if (v48)
    {
      v49 = v48;
      v50 = [v48 _geoMapItem];

      v51 = v82;
      if (v50 && (v52 = [v50 _childItems], swift_unknownObjectRelease(), v52))
      {
        sub_100014C84(0, &unk_101918A50);
        v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v95 = sub_1002DF380(v53, a5);
        v101 = v54;
      }

      else
      {
        v95 = 0;
        v101 = 0;
      }

      v55 = v51;
    }

    else
    {
      v95 = 0;
      v101 = 0;
      v55 = v82;
    }

    v102 = static Color.clear.getter();
    v104 = type metadata accessor for PlaceSummaryViewModelTemplate(0);
    v56 = objc_allocWithZone(v104);
    v57 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__leadingEntity;
    v107 = 0xF000000000000007;
    v58 = sub_1000CE6B8(&unk_1019189E0);
    v59 = v80;
    Published.init(initialValue:)();
    v60 = *(v11 + 32);
    v98 = v57;
    v60(v56 + v57, v59, v55);
    v61 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__trailingEntity;
    v107 = 0xF000000000000007;
    v94 = v58;
    Published.init(initialValue:)();
    v99 = v61;
    v60(v56 + v61, v59, v55);
    v62 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__containerWidth;
    v107 = 0x4069000000000000;
    v63 = v81;
    Published.init(initialValue:)();
    v64 = *(v9 + 32);
    v93 = v62;
    v65 = v79;
    v64(v56 + v62, v63, v79);
    v100 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor;
    *(v56 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor) = 0;
    v66 = (v56 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons);
    *v66 = 0;
    v66[1] = 0;
    v97 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons;
    *(v56 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons) = 0;
    v67 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics;
    *(v56 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics) = 0;
    *(v56 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_containsPhotoCarouselLine) = 0;
    v68 = v56 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString;
    *v68 = 0;
    v68[1] = 0;
    v69 = v96;
    if (v96[2])
    {
      swift_beginAccess();
      v106 = v69;
      sub_1000CE6B8(&qword_10190BF10);
      Published.init(initialValue:)();
      swift_endAccess();
      v70 = v98;
      swift_beginAccess();
      v71 = v103;
      sub_10013C1B0(v103);
      v72 = *(v11 + 8);
      v72(v56 + v70, v55);
      v106 = v71;
      Published.init(initialValue:)();
      swift_endAccess();
      v73 = v99;
      swift_beginAccess();
      v72(&v73[v56], v55);
      v106 = 0xF000000000000007;
      Published.init(initialValue:)();
      swift_endAccess();
      v74 = v101;
      *v66 = v95;
      v66[1] = v74;

      *(v56 + v97) = 0;

      *(v56 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) = 1;
      swift_beginAccess();
      LOBYTE(v106) = 0;
      Published.init(initialValue:)();
      swift_endAccess();
      *&v100[v56] = v102;

      *(v56 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_searchAlongRoute) = v78 & 1;
      v105.receiver = v56;
      v105.super_class = v104;
      v75 = objc_msgSendSuper2(&v105, "init");

      sub_10013BD74(v71);
      return v75;
    }

    sub_10013BD74(v103);

    v76 = *(v11 + 8);
    v76(v56 + v98, v55);
    v76(&v99[v56], v55);
    (*(v9 + 8))(v56 + v93, v65);

    swift_deallocPartialClassInstance();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1002CAAD8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = *(a2 + 104);
  if (v13 >> 60 != 10)
  {
    goto LABEL_12;
  }

  v14 = *(a2 + 112);
  v15 = *(a2 + 16);
  v16 = vorrq_s8(vorrq_s8(*(a2 + 40), *(a2 + 72)), vorrq_s8(*(a2 + 56), *(a2 + 88)));
  v17 = *&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | *(a2 + 32) | *(a2 + 24);
  if (!v14 && v13 == 0xA000000000000000 && v15 == 30 && !v17)
  {
    sub_1002D9528(a1, a3, v12);
    goto LABEL_15;
  }

  if (!v14 && v13 == 0xA000000000000000 && v15 == 31 && !v17)
  {

    sub_1002D96E8(a1, v12);
  }

  else
  {
LABEL_12:
    v18 = [a1 mapItem];
    if (!v18)
    {
      v20 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
      goto LABEL_16;
    }

    v19 = v18;
    sub_1002C01DC(v18, a2, a4, 0, a3, 0, 1, 0, v12, 0, 0, 0, 0);
  }

LABEL_15:
  v21 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v12, 1, v21) != 1)
  {
    sub_1002E29D4(v12, a5, type metadata accessor for PlaceSummaryViewModelUnit);
    return (*(v22 + 56))(a5, 0, 1, v21);
  }

LABEL_16:
  sub_100024F64(v12, &qword_10190D6A8);
  v23 = *(a2 + 128);
  if (v23)
  {

    sub_1002CAAD8(a1, v23, a3, a4);
  }

  else
  {
    v25 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v25 - 8) + 56))(a5, 1, 1, v25);
  }
}

char *sub_1002CAF28(objc_class *a1, uint64_t a2, int a3, uint64_t (*a4)(double), void (*a5)(Class, char *, uint64_t), uint64_t (*a6)(Class, uint64_t))
{
  v67 = a6;
  v92 = a5;
  v66 = a3;
  v91 = a2;
  v93 = a1;
  v7 = sub_1000CE6B8(&unk_1019189D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v69 = &v65[-v9];
  v10 = sub_1000CE6B8(&qword_101914260);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v68 = &v65[-v12];
  v13 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v13 - 8);
  v15 = &v65[-v14];
  v90 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v86 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v65[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v65[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v18);
  v81 = &v65[-v20];
  result = a4(v19);
  if (!result)
  {
    return result;
  }

  v70 = result;
  v22 = *&result[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
  v78 = *(v22 + 16);
  v79 = v7;
  v80 = v11;
  if (v78)
  {
    v23 = 0;
    v77 = v22 + 32;
    v24 = _swiftEmptyArrayStorage;
    v88 = (v86 + 48);
    v76 = v10;
    v75 = v8;
    v74 = v22;
    do
    {
      if (v23 >= *(v22 + 16))
      {
        goto LABEL_43;
      }

      v84 = v23;
      v25 = v77 + 16 * v23;
      v26 = *v25;
      v27 = *(v25 + 8);
      LODWORD(v25) = *(v25 + 9);
      v82 = v27;
      v83 = v25;
      if (v26 >> 62)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v85 = v24;

      if (v28)
      {
        v29 = 0;
        v30 = v26 & 0xC000000000000001;
        v31 = v26 & 0xFFFFFFFFFFFFFF8;
        v32 = _swiftEmptyArrayStorage;
        v87 = v26;
        while (1)
        {
          if (v30)
          {
            result = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v33 = result;
            v34 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v29 >= *(v31 + 16))
            {
              goto LABEL_42;
            }

            v33 = *(v26 + 8 * v29 + 32);

            v34 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
              return result;
            }
          }

          v92(v93, v33, v91);

          if ((*v88)(v15, 1, v90) == 1)
          {
            result = sub_100024F64(v15, &qword_10190D6A8);
          }

          else
          {
            sub_1002E29D4(v15, v89, type metadata accessor for PlaceSummaryViewModelUnit);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_100356A5C(0, v32[2] + 1, 1, v32);
            }

            v36 = v32[2];
            v35 = v32[3];
            if (v36 >= v35 >> 1)
            {
              v32 = sub_100356A5C(v35 > 1, v36 + 1, 1, v32);
            }

            v32[2] = v36 + 1;
            result = sub_1002E29D4(v89, v32 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v36, type metadata accessor for PlaceSummaryViewModelUnit);
            v26 = v87;
          }

          ++v29;
          if (v34 == v28)
          {
            goto LABEL_26;
          }
        }
      }

      v32 = _swiftEmptyArrayStorage;
LABEL_26:
      v37 = v83;
      v38 = sub_1002DBCE0(v32, v83);

      if (v38[2])
      {
        v39 = v71;
        UUID.init()();

        v40 = v73;
        *(v39 + *(v73 + 20)) = v38;
        *(v39 + *(v40 + 24)) = v82;
        *(v39 + *(v40 + 28)) = v37;
        sub_1002E29D4(v39, v81, type metadata accessor for PlaceSummaryViewModelLine);
        v24 = v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_1003580F8(0, v24[2] + 1, 1, v24);
        }

        v7 = v79;
        v8 = v75;
        v43 = v24[2];
        v42 = v24[3];
        if (v43 >= v42 >> 1)
        {
          v24 = sub_1003580F8(v42 > 1, v43 + 1, 1, v24);
        }

        v24[2] = v43 + 1;
        result = sub_1002E29D4(v81, v24 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v43, type metadata accessor for PlaceSummaryViewModelLine);
        v11 = v80;
      }

      else
      {

        v10 = v76;
        v7 = v79;
        v11 = v80;
        v8 = v75;
        v24 = v85;
      }

      v23 = v84 + 1;
      v22 = v74;
    }

    while (v84 + 1 != v78);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  if (v24[2])
  {
    v44 = *&v70[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities];

    v92 = v67(v93, v44);

    v91 = static Color.clear.getter();
    v93 = type metadata accessor for PlaceSummaryViewModelTemplate(0);
    v45 = objc_allocWithZone(v93);
    v46 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__leadingEntity;
    v96 = 0xF000000000000007;
    v47 = sub_1000CE6B8(&unk_1019189E0);
    v85 = v24;
    v48 = v68;
    Published.init(initialValue:)();
    v49 = *(v11 + 32);
    v88 = v46;
    v49(v45 + v46, v48, v10);
    v50 = v7;
    v51 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__trailingEntity;
    v96 = 0xF000000000000007;
    v86 = v47;
    Published.init(initialValue:)();
    v89 = v51;
    v49(&v51[v45], v48, v10);
    v52 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__containerWidth;
    v96 = 0x4069000000000000;
    v53 = v69;
    Published.init(initialValue:)();
    (*(v8 + 32))(v45 + v52, v53, v50);
    v90 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor;
    *(v45 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor) = 0;
    v54 = v45 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons;
    *v54 = 0;
    v54[1] = 0;
    v87 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons;
    *(v45 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons) = 0;
    v55 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics;
    *(v45 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics) = 0;
    *(v45 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_containsPhotoCarouselLine) = 0;
    v56 = v10;
    v57 = v45 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString;
    *v57 = 0;
    v57[1] = 0;
    v58 = v85;
    if (v85[2])
    {
      swift_beginAccess();
      v95 = v58;
      sub_1000CE6B8(&qword_10190BF10);
      Published.init(initialValue:)();
      swift_endAccess();
      v59 = v88;
      swift_beginAccess();
      v60 = v92;
      sub_10013C1B0(v92);
      v61 = *(v80 + 8);
      v61(&v59[v45], v56);
      v95 = v60;
      Published.init(initialValue:)();
      swift_endAccess();
      v62 = v89;
      swift_beginAccess();
      v61(&v62[v45], v56);
      v95 = 0xF000000000000007;
      Published.init(initialValue:)();
      swift_endAccess();
      *v54 = 0;
      v54[1] = 0;

      *(v45 + v87) = 0;

      *(v45 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase) = 1;
      swift_beginAccess();
      LOBYTE(v95) = 0;
      Published.init(initialValue:)();
      swift_endAccess();
      *(v45 + v90) = v91;

      *(v45 + OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_searchAlongRoute) = v66 & 1;
      v94.receiver = v45;
      v94.super_class = v93;
      v63 = [(objc_class *)&v94 init];

      sub_10013BD74(v60);
      return v63;
    }

    sub_10013BD74(v92);

    v64 = *(v80 + 8);
    v64(&v88[v45], v56);
    v64(&v89[v45], v56);
    (*(v8 + 8))(v45 + v52, v79);

    swift_deallocPartialClassInstance();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1002CBAE0@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a1;
  v7 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CE6B8(&qword_10190D6A8);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v49 - v14;
  v16 = a2[13];
  if (v16 >> 60 != 10)
  {
    goto LABEL_16;
  }

  v17 = a2[14];
  v19 = a2[11];
  v18 = a2[12];
  v20 = a2[9];
  v21 = a2[10];
  v23 = a2[7];
  v22 = a2[8];
  v25 = a2[5];
  v24 = a2[6];
  v27 = a2[3];
  v26 = a2[4];
  v28 = a2[2];
  if (v16 == 0xA000000000000000 && !(v17 | v28 | v18 | v19 | v21 | v20 | v22 | v23 | v24 | v25 | v26 | v27))
  {
    v29 = [v52 title];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    sub_1002CE5A8(v30, v32, a3, v15);

    goto LABEL_5;
  }

  if (v16 != 0xA000000000000000 || v28 != 32 || v18 | v17 | v19 | v21 | v20 | v22 | v23 | v24 | v25 | v26 | v27 || (v36 = [v52 subtitle]) == 0)
  {
LABEL_16:
    v46 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v46 - 8) + 56))(v15, 1, 1, v46);
    goto LABEL_17;
  }

  v37 = v36;
  v50 = a4;
  v51 = a3;
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {

    a4 = v50;
    a3 = v51;
    goto LABEL_16;
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  UUID.init()();
  v42 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
  (*(v9 + 16))(&v15[v42[5]], v11, v8);
  (*(v9 + 56))(&v15[v42[12]], 1, 1, v8);
  (*(v9 + 8))(v11, v8);
  v43 = &v15[v42[6]];
  *v43 = 0;
  *(v43 + 1) = 0;
  *&v15[v42[7]] = 0;
  *&v15[v42[8]] = 0;
  *&v15[v42[9]] = 0;
  *&v15[v42[10]] = 0;
  v44 = &v15[v42[11]];
  *v44 = 1;
  v44[8] = 0;
  *&v15[v42[13]] = _swiftEmptyArrayStorage;
  v45 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v45 - 8) + 56))(v15, 0, 1, v45);
  a4 = v50;
  a3 = v51;
LABEL_5:
  v33 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v15, 1, v33) != 1)
  {
    sub_1002E29D4(v15, a4, type metadata accessor for PlaceSummaryViewModelUnit);
    return (*(v34 + 56))(a4, 0, 1, v33);
  }

LABEL_17:
  sub_100024F64(v15, &qword_10190D6A8);
  v47 = a2[16];
  if (v47)
  {

    sub_1002CBAE0(v52, v47, a3);
  }

  else
  {
    v48 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v48 - 8) + 56))(a4, 1, 1, v48);
  }
}

id sub_1002CC054(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(id, id, uint64_t))
{
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a4;
  v12 = a6(v10, v11, a5);

  return v12;
}

char *sub_1002CC0E0(void *a1, char *a2, void *a3)
{
  v91 = a2;
  v92 = a3;
  v90 = a1;
  v3 = sub_1000CE6B8(&unk_1019189D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v70 = &v67 - v5;
  v71 = sub_1000CE6B8(&qword_101914260);
  v6 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v67 - v7;
  v8 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v67 - v9;
  v89 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v85 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v80 = &v67 - v14;
  result = sub_10038E768();
  if (!result)
  {
    return result;
  }

  v72 = result;
  v16 = *&result[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
  v17 = *(v16 + 16);
  v68 = v3;
  v67 = v4;
  v79 = v17;
  if (v17)
  {
    v18 = 0;
    v78 = v16 + 32;
    v19 = _swiftEmptyArrayStorage;
    v87 = (v85 + 48);
    v77 = v6;
    v76 = v16;
    do
    {
      if (v18 >= *(v16 + 16))
      {
        goto LABEL_50;
      }

      v21 = v78 + 16 * v18;
      v22 = *v21;
      v23 = *(v21 + 8);
      LODWORD(v21) = *(v21 + 9);
      v81 = v23;
      v82 = v21;
      if (v22 >> 62)
      {
        v24 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v83 = v18;
      v84 = v19;

      v25 = v22;
      if (v24)
      {
        v26 = 0;
        v27 = v22 & 0xC000000000000001;
        v28 = v25 & 0xFFFFFFFFFFFFFF8;
        v29 = _swiftEmptyArrayStorage;
        v86 = v25;
        while (1)
        {
          if (v27)
          {
            result = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v30 = result;
            v31 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v26 >= *(v28 + 16))
            {
              goto LABEL_49;
            }

            v30 = *(v25 + 8 * v26 + 32);

            v31 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              return result;
            }
          }

          sub_1002CCC94(v90, v30, v91, v92, v10);

          if ((*v87)(v10, 1, v89) == 1)
          {
            result = sub_100024F64(v10, &qword_10190D6A8);
          }

          else
          {
            sub_1002E29D4(v10, v88, type metadata accessor for PlaceSummaryViewModelUnit);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_100356A5C(0, v29[2] + 1, 1, v29);
            }

            v33 = v29[2];
            v32 = v29[3];
            if (v33 >= v32 >> 1)
            {
              v29 = sub_100356A5C(v32 > 1, v33 + 1, 1, v29);
            }

            v29[2] = v33 + 1;
            result = sub_1002E29D4(v88, v29 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v33, type metadata accessor for PlaceSummaryViewModelUnit);
            v25 = v86;
          }

          ++v26;
          if (v31 == v24)
          {
            goto LABEL_26;
          }
        }
      }

      v29 = _swiftEmptyArrayStorage;
LABEL_26:
      v34 = v82;
      v35 = sub_1002DBCE0(v29, v82);

      if (v35[2])
      {
        v36 = v73;
        UUID.init()();

        v37 = v75;
        *(v36 + *(v75 + 20)) = v35;
        *(v36 + *(v37 + 24)) = v81;
        *(v36 + *(v37 + 28)) = v34;
        sub_1002E29D4(v36, v80, type metadata accessor for PlaceSummaryViewModelLine);
        v19 = v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v6 = v77;
        v16 = v76;
        v20 = v83;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v19 = sub_1003580F8(0, v19[2] + 1, 1, v19);
        }

        v40 = v19[2];
        v39 = v19[3];
        if (v40 >= v39 >> 1)
        {
          v19 = sub_1003580F8(v39 > 1, v40 + 1, 1, v19);
        }

        v19[2] = v40 + 1;
        result = sub_1002E29D4(v80, v19 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v40, type metadata accessor for PlaceSummaryViewModelLine);
      }

      else
      {

        v6 = v77;
        v20 = v83;
        v19 = v84;
        v16 = v76;
      }

      v18 = v20 + 1;
    }

    while (v18 != v79);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  if (v19[2])
  {
    v41 = *&v72[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_leadingEntities];
    if (v41)
    {
      v42 = *(v41 + 16);
      v43 = (v41 + 32);
      v44 = v71;
      while (v42)
      {
        v45 = *v43++;
        --v42;
        if (v45 == 2)
        {
          v46 = [objc_opt_self() customSavedRouteStyleAttributes];
          v91 = sub_1002DDB7C(v46, 0, 0);

          goto LABEL_43;
        }
      }

      v91 = 0xF000000000000007;
    }

    else
    {
      v91 = 0xF000000000000007;
      v44 = v71;
    }

LABEL_43:
    v90 = static Color.clear.getter();
    v92 = type metadata accessor for PlaceSummaryViewModelTemplate(0);
    v47 = objc_allocWithZone(v92);
    v48 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__leadingEntity;
    v95 = 0xF000000000000007;
    v49 = sub_1000CE6B8(&unk_1019189E0);
    v50 = v69;
    Published.init(initialValue:)();
    v51 = *(v6 + 32);
    v87 = v48;
    v51(&v47[v48], v50, v44);
    v52 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__trailingEntity;
    v95 = 0xF000000000000007;
    v85 = v49;
    Published.init(initialValue:)();
    v88 = v52;
    v51(&v47[v52], v50, v44);
    v53 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__containerWidth;
    v95 = 0x4069000000000000;
    v54 = v70;
    Published.init(initialValue:)();
    v55 = v67;
    v56 = v68;
    (*(v67 + 32))(&v47[v53], v54, v68);
    v89 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor;
    *&v47[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor] = 0;
    v57 = &v47[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons];
    *v57 = 0;
    v57[1] = 0;
    v86 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons;
    *&v47[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons] = 0;
    v58 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics;
    *&v47[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics] = 0;
    v47[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_containsPhotoCarouselLine] = 0;
    v59 = v44;
    v60 = &v47[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString];
    *v60 = 0;
    v60[1] = 0;
    if (v19[2])
    {
      swift_beginAccess();
      v94 = v19;
      sub_1000CE6B8(&qword_10190BF10);
      Published.init(initialValue:)();
      swift_endAccess();
      v61 = v87;
      swift_beginAccess();
      v62 = v91;
      sub_10013C1B0(v91);
      v63 = *(v6 + 8);
      v63(v61 + v47, v59);
      v94 = v62;
      Published.init(initialValue:)();
      swift_endAccess();
      v64 = v88;
      swift_beginAccess();
      v63(&v47[v64], v59);
      v94 = 0xF000000000000007;
      Published.init(initialValue:)();
      swift_endAccess();
      *v57 = 0;
      v57[1] = 0;

      *&v47[v86] = 0;

      v47[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase] = 1;
      swift_beginAccess();
      LOBYTE(v94) = 0;
      Published.init(initialValue:)();
      swift_endAccess();
      *&v47[v89] = v90;

      v47[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_searchAlongRoute] = 0;
      v93.receiver = v47;
      v93.super_class = v92;
      v65 = objc_msgSendSuper2(&v93, "init");

      sub_10013BD74(v62);
      return v65;
    }

    sub_10013BD74(v91);

    v66 = *(v6 + 8);
    v66(v87 + v47, v59);
    v66(&v47[v88], v59);
    (*(v55 + 8))(&v47[v53], v56);

    swift_deallocPartialClassInstance();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1002CCC94@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v79 = a3;
  v80 = a1;
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000CE6B8(&qword_10190D6A8);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v75 - v15;
  v17 = a2[13];
  if (v17 >> 60 != 1)
  {
    if (v17 >> 60 == 10)
    {
      v18 = a2[14];
      v20 = a2[11];
      v19 = a2[12];
      v21 = a2[9];
      v22 = a2[10];
      v24 = a2[7];
      v23 = a2[8];
      v26 = a2[5];
      v25 = a2[6];
      v28 = a2[3];
      v27 = a2[4];
      v29 = a2[2];
      if (v17 == 0xA000000000000000 && !(v18 | v29 | v19 | v20 | v22 | v21 | v23 | v24 | v25 | v26 | v27 | v28))
      {
        v30 = a4;
        v31 = [v80 userProvidedName];
        v32 = a5;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        a4 = v30;
        v36 = v33;
        a5 = v32;
        sub_1002CE5A8(v36, v35, v79, v16);

        goto LABEL_25;
      }

      if (v17 == 0xA000000000000000 && v29 == 33 && !(v19 | v18 | v20 | v22 | v21 | v23 | v24 | v25 | v26 | v27 | v28))
      {
        v77 = a4;
        v78 = a5;
        v58 = [v80 addressString];
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62 = HIBYTE(v61) & 0xF;
        if ((v61 & 0x2000000000000000) == 0)
        {
          v62 = v59 & 0xFFFFFFFFFFFFLL;
        }

        if (v62)
        {
          AttributeContainer.init()();
          AttributedString.init(_:attributes:)();
          UUID.init()();
          v63 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
          (*(v10 + 16))(&v16[v63[5]], v12, v9);
          (*(v10 + 56))(&v16[v63[12]], 1, 1, v9);
          (*(v10 + 8))(v12, v9);
          v64 = &v16[v63[6]];
          *v64 = 0;
          *(v64 + 1) = 0;
          *&v16[v63[7]] = 0;
          *&v16[v63[8]] = 0;
          *&v16[v63[9]] = 0;
          *&v16[v63[10]] = 0;
          v65 = &v16[v63[11]];
          *v65 = 1;
          v65[8] = 0;
          *&v16[v63[13]] = _swiftEmptyArrayStorage;
          v66 = type metadata accessor for PlaceSummaryViewModelUnit(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v66 - 8) + 56))(v16, 0, 1, v66);
          a4 = v77;
          a5 = v78;
          goto LABEL_25;
        }

        a4 = v77;
        a5 = v78;
      }
    }

LABEL_28:
    v71 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v71 - 8) + 56))(v16, 1, 1, v71);
    goto LABEL_29;
  }

  v37 = v80;
  [v80 originCoordinate];
  v39 = v38;
  [v37 originCoordinate];
  v41 = [objc_allocWithZone(CLLocation) initWithLatitude:v39 longitude:v40];
  v42 = [objc_allocWithZone(MKMapItem) initWithCLLocation:v41];
  if (!v42)
  {

    goto LABEL_28;
  }

  v43 = v42;
  if (!a4)
  {

    goto LABEL_28;
  }

  v81 = 1;
  v44 = objc_opt_self();
  v45 = a4;
  [v43 _coordinate];
  v46 = [v44 distanceStringFromLocation:v45 toCoordinate:v43 withMapItem:&v81 showsDistance:0 onlyUseThreshold:0 maximumDistance:1 useShortThreshold:?];
  if (v46)
  {
    v47 = v46;
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v49;

    if ((MapsFeature_IsEnabled_HikingWatch() & 1) != 0 && [v43 _placeCategoryType] == 1)
    {
      v77 = a4;
      v78 = a5;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v82._object = 0xEB00000000796177;
      v50._countAndFlagsBits = 0x636E61747369645BLL;
      v50._object = 0xEF79617761205D65;
      v51._countAndFlagsBits = 0x79617761204025;
      v82._countAndFlagsBits = 0x6120696D20303031;
      v51._object = 0xE700000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, qword_1019600D8, v51, v82);
      sub_1000CE6B8(&unk_10190D5C0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1011E1D30;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = sub_1000DA61C();
      v53 = v76;
      *(v52 + 32) = v48;
      *(v52 + 40) = v53;
      v48 = String.init(format:_:)();
      v76 = v54;

      a4 = v77;
      a5 = v78;
    }

    UUID.init()();

    v55 = &v16[*(type metadata accessor for PlaceSummaryViewModelUnit.Distance(0) + 20)];
    v56 = v76;
    *v55 = v48;
    v55[1] = v56;
    v57 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v57 - 8) + 56))(v16, 0, 1, v57);
  }

  else
  {

    v67 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v67 - 8) + 56))(v16, 1, 1, v67);
  }

LABEL_25:
  v68 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v69 = *(v68 - 8);
  if ((*(v69 + 48))(v16, 1, v68) != 1)
  {
    sub_1002E29D4(v16, a5, type metadata accessor for PlaceSummaryViewModelUnit);
    return (*(v69 + 56))(a5, 0, 1, v68);
  }

LABEL_29:
  v72 = a4;
  sub_100024F64(v16, &qword_10190D6A8);
  v73 = a2[16];
  if (v73)
  {

    sub_1002CCC94(v80, v73, v79, v72);
  }

  else
  {
    v74 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v74 - 8) + 56))(a5, 1, 1, v74);
  }
}

char *sub_1002CD644(int a1)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v2.super.isa = qword_1019600D8;
  v12._object = 0x800000010122C550;
  v3._object = 0x800000010122C530;
  v12._countAndFlagsBits = 0xD00000000000002DLL;
  v3._countAndFlagsBits = 0xD000000000000012;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v4, v12);
  v13._object = 0x800000010122C5A0;
  v6._countAndFlagsBits = 0xD000000000000013;
  v6._object = 0x800000010122C580;
  v13._countAndFlagsBits = 0xD000000000000030;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v2, v7, v13);
  sub_1000CE6B8(&qword_101909BF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D60;
  *(inited + 32) = v5;
  *(inited + 48) = v8;
  v10 = sub_1002CD7D4(inited, 0x8000000000000028, 0, a1);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v10;
}

char *sub_1002CD7D4(uint64_t a1, unint64_t a2, int a3, int a4)
{
  v63 = a4;
  v64 = a3;
  v62 = a2;
  v5 = sub_1000CE6B8(&unk_1019189D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v66 = &v60 - v7;
  v8 = sub_1000CE6B8(&qword_101914260);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v65 = &v60 - v10;
  v11 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v11 - 8);
  v13 = &v60 - v12;
  v86 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v82 = *(v86 - 1);
  __chkstk_darwin(v86);
  v85 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for PlaceSummaryViewModelLine(0);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v77 = &v60 - v17;
  result = sub_10038E990(a1);
  if (!result)
  {
    return result;
  }

  v67 = result;
  v19 = *&result[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
  v74 = *(v19 + 16);
  v75 = v5;
  v76 = v8;
  v61 = v6;
  if (v74)
  {
    v20 = 0;
    v73 = v19 + 32;
    v21 = _swiftEmptyArrayStorage;
    v84 = (v82 + 48);
    v71 = v19;
    v72 = v9;
    do
    {
      if (v20 >= *(v19 + 16))
      {
        goto LABEL_43;
      }

      v22 = v73 + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      LODWORD(v22) = *(v22 + 9);
      v78 = v24;
      v79 = v22;
      if (v23 >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v80 = v20;
      v81 = v21;

      v26 = v23;
      if (v25)
      {
        v27 = 0;
        v28 = v23 & 0xC000000000000001;
        v29 = v23 & 0xFFFFFFFFFFFFFF8;
        v30 = _swiftEmptyArrayStorage;
        v83 = v23;
        while (1)
        {
          if (v28)
          {
            result = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v31 = result;
            v32 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v27 >= *(v29 + 16))
            {
              goto LABEL_42;
            }

            v31 = *(v26 + 8 * v27 + 32);

            v32 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              __break(1u);
              return result;
            }
          }

          sub_1002CE2E0(v31, v13);

          if ((*v84)(v13, 1, v86) == 1)
          {
            result = sub_100024F64(v13, &qword_10190D6A8);
          }

          else
          {
            sub_1002E29D4(v13, v85, type metadata accessor for PlaceSummaryViewModelUnit);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_100356A5C(0, v30[2] + 1, 1, v30);
            }

            v34 = v30[2];
            v33 = v30[3];
            if (v34 >= v33 >> 1)
            {
              v30 = sub_100356A5C(v33 > 1, v34 + 1, 1, v30);
            }

            v30[2] = v34 + 1;
            result = sub_1002E29D4(v85, v30 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v34, type metadata accessor for PlaceSummaryViewModelUnit);
            v26 = v83;
          }

          ++v27;
          if (v32 == v25)
          {
            goto LABEL_26;
          }
        }
      }

      v30 = _swiftEmptyArrayStorage;
LABEL_26:
      v35 = v79;
      v36 = sub_1002DBCE0(v30, v79);

      if (v36[2])
      {
        v37 = v68;
        UUID.init()();

        v38 = v70;
        *(v37 + *(v70 + 20)) = v36;
        *(v37 + *(v38 + 24)) = v78;
        *(v37 + *(v38 + 28)) = v35;
        sub_1002E29D4(v37, v77, type metadata accessor for PlaceSummaryViewModelLine);
        v21 = v81;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5 = v75;
        v8 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = sub_1003580F8(0, v21[2] + 1, 1, v21);
        }

        v9 = v72;
        v41 = v21[2];
        v40 = v21[3];
        if (v41 >= v40 >> 1)
        {
          v21 = sub_1003580F8(v40 > 1, v41 + 1, 1, v21);
        }

        v21[2] = v41 + 1;
        result = sub_1002E29D4(v77, v21 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v41, type metadata accessor for PlaceSummaryViewModelLine);
      }

      else
      {

        v5 = v75;
        v8 = v76;
        v9 = v72;
        v21 = v81;
      }

      v19 = v71;
      v20 = v80 + 1;
    }

    while (v80 + 1 != v74);
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  if (v21[2])
  {
    v85 = static Color.clear.getter();
    v86 = type metadata accessor for PlaceSummaryViewModelTemplate(0);
    v42 = objc_allocWithZone(v86);
    v43 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__leadingEntity;
    v89 = 0xF000000000000007;
    sub_1000CE6B8(&unk_1019189E0);
    v44 = v65;
    Published.init(initialValue:)();
    v45 = *(v9 + 32);
    v83 = v43;
    v45(&v42[v43], v44, v8);
    v46 = v5;
    v47 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__trailingEntity;
    v89 = 0xF000000000000007;
    Published.init(initialValue:)();
    v45(&v42[v47], v44, v8);
    v48 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate__containerWidth;
    v89 = 0x4069000000000000;
    v49 = v66;
    Published.init(initialValue:)();
    (*(v61 + 32))(&v42[v48], v49, v46);
    v84 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor;
    *&v42[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_backgroundColor] = 0;
    v50 = &v42[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_actionButtons];
    *v50 = 0;
    v50[1] = 0;
    v51 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons;
    *&v42[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_refinementButtons] = 0;
    v52 = OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics;
    *&v42[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_metrics] = 0;
    v42[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_containsPhotoCarouselLine] = 0;
    v53 = &v42[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_debugString];
    *v53 = 0;
    v53[1] = 0;
    if (v21[2])
    {
      swift_beginAccess();
      v88 = v21;
      sub_1000CE6B8(&qword_10190BF10);
      Published.init(initialValue:)();
      swift_endAccess();
      v54 = v83;
      swift_beginAccess();
      v55 = *(v9 + 8);
      v56 = v76;
      v55(&v42[v54], v76);
      v88 = v62;
      sub_10013C1B0(v62);
      Published.init(initialValue:)();
      swift_endAccess();
      swift_beginAccess();
      v55(&v42[v47], v56);
      v88 = 0xF000000000000007;
      Published.init(initialValue:)();
      swift_endAccess();
      *v50 = 0;
      v50[1] = 0;

      *&v42[v51] = 0;

      v42[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_useCase] = v63;
      swift_beginAccess();
      LOBYTE(v88) = 0;
      Published.init(initialValue:)();
      swift_endAccess();
      *(v84 + v42) = v85;

      v42[OBJC_IVAR____TtC4Maps29PlaceSummaryViewModelTemplate_searchAlongRoute] = v64 & 1;
      v87.receiver = v42;
      v87.super_class = v86;
      v57 = objc_msgSendSuper2(&v87, "init");

      return v57;
    }

    v58 = *(v9 + 8);
    v59 = v76;
    v58(&v42[v83], v76);
    v58(&v42[v47], v59);
    (*(v61 + 8))(&v42[v48], v75);

    swift_deallocPartialClassInstance();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1002CE2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_10190D6A8);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = *(a1 + 104);
  if (v7 >> 60 == 6)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 96);
    v10 = *(a1 + 32);
    v18[0] = *(a1 + 16);
    v18[1] = v10;
    v11 = *(a1 + 64);
    v18[2] = *(a1 + 48);
    v18[3] = v11;
    v18[4] = *(a1 + 80);
    v19 = v9;
    v20 = v7 & 0xFFFFFFFFFFFFFFFLL;
    v21 = v8;
    sub_1002D0BB8(v18, 1, v6);
    v12 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6, 1, v12) != 1)
    {
      sub_1002E29D4(v6, a2, type metadata accessor for PlaceSummaryViewModelUnit);
      return (*(v13 + 56))(a2, 0, 1, v12);
    }
  }

  else
  {
    v15 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  }

  sub_100024F64(v6, &qword_10190D6A8);
  if (*(a1 + 128))
  {

    sub_1002CE2E0(v16);
  }

  else
  {
    v17 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }
}

id sub_1002CE550()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceSummaryViewModelTemplateFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002CE5A8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (!*&a3[OBJC_IVAR____TtC4Maps38PlaceSummaryTextHighlightConfiguration_typedAutocompleteQuery + 8])
    {
      sub_1000CE6B8(&qword_101908400);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1011E47B0;
      v26 = a3;
      if (a2)
      {
        v27 = String.count.getter();
      }

      else
      {
        v27 = 0;
      }

      *(v18 + 32) = [objc_opt_self() valueWithRange:{0, v27}];
      goto LABEL_20;
    }

    if (a2)
    {
      v14 = a3;

      v15 = String._bridgeToObjectiveC()();
      v16 = String._bridgeToObjectiveC()();

      v17 = [v15 _maps_prefixMatchesForSearchString:v16];

      if (v17)
      {
        sub_100014C84(0, &unk_101918A40);
        v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_20:
        sub_1002D6C7C(a1, a2, v18, *(*&a3[OBJC_IVAR____TtC4Maps38PlaceSummaryTextHighlightConfiguration_type] + OBJC_IVAR____TtC4Maps29PlaceSummaryTextHighlightType_type), 1, a4);
      }
    }

    else
    {
      v30 = a3;
    }

    v18 = 0;
    goto LABEL_20;
  }

  if (!a2)
  {
    goto LABEL_13;
  }

  v19 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v19 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = v11;

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    UUID.init()();
    v21 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
    (*(v10 + 16))(a4 + v21[5], v13, v20);
    (*(v10 + 56))(a4 + v21[12], 1, 1, v20);
    (*(v10 + 8))(v13, v20);
    v22 = (a4 + v21[6]);
    *v22 = 0;
    v22[1] = 0;
    *(a4 + v21[7]) = 0;
    *(a4 + v21[8]) = 0;
    *(a4 + v21[9]) = 0;
    *(a4 + v21[10]) = 0;
    v23 = a4 + v21[11];
    *v23 = 1;
    *(v23 + 8) = 0;
    *(a4 + v21[13]) = _swiftEmptyArrayStorage;
    v24 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v24 - 8) + 56))(a4, 0, 1, v24);
  }

  else
  {
LABEL_13:
    v28 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v29 = *(*(v28 - 8) + 56);

    return v29(a4, 1, 1, v28);
  }
}

void sub_1002CEA28(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1000CE6B8(&unk_10190D5F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v69 - v13;
  v15 = sub_1000CE6B8(&qword_10190B850);
  __chkstk_darwin(v15 - 8);
  v17 = &v69 - v16;
  v18 = sub_1000CE6B8(&unk_10190D600);
  v72 = *(v18 - 8);
  v73 = v18;
  __chkstk_darwin(v18);
  v71 = &v69 - v19;
  v20 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v20 - 8);
  v21 = type metadata accessor for AttributedString();
  __chkstk_darwin(v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  if (!a2)
  {
    v40 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v41 = *(*(v40 - 8) + 56);
    v42 = v40;
    v43 = a6;
LABEL_31:

    v41(v43, 1, 1, v42);
    return;
  }

  v69 = &v69 - v26;
  v70 = v25;
  v75 = a6;
  v28 = v27;
  if (a4 && *(a4 + OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_useCase) == 2)
  {
    IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
  }

  else
  {
    IsEnabled_SearchAndDiscovery = 0;
  }

  v30 = [a3 searchResultsHoursWithConciseStyle:IsEnabled_SearchAndDiscovery openAt:{a5, v69}];
  if (!v30)
  {
LABEL_30:
    v58 = type metadata accessor for PlaceSummaryViewModelUnit(v30);
    v41 = *(*(v58 - 8) + 56);
    v42 = v58;
    v43 = v75;
    goto LABEL_31;
  }

  v74 = v30;
  if ((sub_1002DBB84(a2, v30) & 1) == 0)
  {
    goto LABEL_16;
  }

  if ((a1 & 1) == 0)
  {
    v46 = [v74 localizedOperatingHours];
    if (v46)
    {
      v47 = v46;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      if (String.count.getter() >= 1)
      {

        AttributeContainer.init()();
        v48 = v69;
        AttributedString.init(_:attributes:)();
        v49 = [v74 localizedOpenState];
        if (v49)
        {
          v50 = v49;
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v77[0] = v51;
          v77[1] = v53;
          v54 = type metadata accessor for Locale();
          (*(*(v54 - 8) + 56))(v14, 1, 1, v54);
          sub_1002E298C(&qword_101910100, &type metadata accessor for AttributedString);
          sub_1000E5580();
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_100024F64(v14, &unk_10190D5F0);

          if ((*(v72 + 48))(v17, 1, v73) != 1)
          {
            v59 = v71;
            sub_1000F11C4(v17, v71, &unk_10190D600);
            v60 = [objc_opt_self() secondaryLabelColor];
            [v74 updateHoursLabelColorWithDefaultLabelColor:v60];

            v61 = [v74 hoursStateLabelColor];
            if (v61)
            {
              v62 = v61;

              v63 = v62;
              v64 = Color.init(uiColor:)();
              sub_1000414C8(&qword_10190B858, &unk_10190D600);
              v65 = v59;
              v66 = v69;
              v67 = AttributedString.subscript.modify();
              v76 = v64;
              sub_10016EB80();
              AttributedSubstring.subscript.setter();
              v67(v77, 0);
              v55 = v75;
              UUID.init()();

              sub_100024F64(v65, &unk_10190D600);
              v68 = type metadata accessor for PlaceSummaryViewModelUnit.Hours(0);
              (*(v28 + 32))(v55 + *(v68 + 20), v66, v70);
            }

            else
            {
              AttributeContainer.init()();
              type metadata accessor for PlaceSummaryViewModelUnit.Hours(0);
              v55 = v75;
              AttributedString.init(_:attributes:)();
              UUID.init()();

              sub_100024F64(v59, &unk_10190D600);
              (*(v28 + 8))(v69, v70);
            }

            goto LABEL_25;
          }

          sub_100024F64(v17, &qword_10190B850);
          v48 = v69;
        }

        AttributeContainer.init()();
        type metadata accessor for PlaceSummaryViewModelUnit.Hours(0);
        v55 = v75;
        AttributedString.init(_:attributes:)();
        UUID.init()();

        (*(v28 + 8))(v48, v70);
LABEL_25:
        v56 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
        return;
      }
    }

    v30 = 0;
    goto LABEL_30;
  }

  v31 = [v74 state];
  if (v31 <= 6)
  {
    v32 = v75;
    if (((1 << v31) & 0x5E) != 0)
    {
      v33 = [v74 localizedOpenState];
      if (v33)
      {
        v34 = v33;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        v35 = [v74 hoursStateLabelColor];
        if (v35)
        {
          v36 = v35;
          v77[0] = Color.init(uiColor:)();
          sub_10016EB80();
          AttributedString.subscript.setter();
        }

        v37 = type metadata accessor for PlaceSummaryViewModelUnit.Hours(0);
        v38 = v70;
        (*(v28 + 16))(v32 + *(v37 + 20), v23, v70);
        UUID.init()();

        (*(v28 + 8))(v23, v38);
        v39 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v39 - 8) + 56))(v32, 0, 1, v39);
        return;
      }
    }

    v57 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v41 = *(*(v57 - 8) + 56);
    v42 = v57;
    v43 = v32;
    goto LABEL_31;
  }

LABEL_16:
  v44 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  (*(*(v44 - 8) + 56))(v75, 1, 1, v44);
  v45 = v74;
}

void sub_1002CF3D8(void *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  LOBYTE(v4) = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v67[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() shouldShowAppleRatingsForMapItem:a1])
  {
    v12 = [a1 _geoMapItem];
    if (!v12)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v13 = [v12 _overallAppleRating];
    swift_unknownObjectRelease();
    if (!v13)
    {
      v39 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      v22 = *(*(v39 - 8) + 56);
      v25 = v39;
      v23 = a4;
      v24 = 1;
      goto LABEL_35;
    }

    [v13 percentage];
    v15 = v14;
    v16 = objc_opt_self();
    v17 = &selRef_labelColor;
    if (v15 <= 0.5)
    {
      v17 = &selRef__maps_systemGrayColor;
    }

    v4 = [v16 *v17];
    UUID.init()();
    [a1 _normalizedUserRatingScore];
    v19 = v18;
    v8 = LODWORD(v18);

    if ((v8 & 0x7FFFFFFF) <= 0x7F7FFFFF)
    {
      if (v19 > -9.2234e18)
      {
        if (v19 < 9.2234e18)
        {
          PartyRatings = type metadata accessor for PlaceSummaryViewModelUnit.FirstPartyRatings(0);
          *(a4 + *(PartyRatings + 20)) = v19;
          *(a4 + *(PartyRatings + 24)) = v4;
          v21 = type metadata accessor for PlaceSummaryViewModelUnit(0);
          swift_storeEnumTagMultiPayload();
          v22 = *(*(v21 - 8) + 56);
          v23 = a4;
          v24 = 0;
          v25 = v21;
LABEL_35:

          v22(v23, v24, 1, v25);
          return;
        }

        __break(1u);
        goto LABEL_92;
      }

      __break(1u);
LABEL_90:
      v68 = 0;
      v35 = sub_100388658(v13, a2, 10);
      v54 = v65;
      goto LABEL_81;
    }

    __break(1u);
LABEL_88:

    goto LABEL_82;
  }

  if (![a1 _sampleSizeForUserRatingScore])
  {

    sub_1002D9D1C(a2 & 1, a4);
    return;
  }

  [a1 _normalizedUserRatingScore];
  v19 = v26;
  v27 = [a1 _localizedSampleSizeForUserRatingScoreString];
  if (!v27)
  {
LABEL_98:
    __break(1u);
    return;
  }

  v28 = v27;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a2 = v29;

  v30 = HIBYTE(a2) & 0xF;
  v31 = v13 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v32 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v32 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    goto LABEL_88;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_90;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v67[0] = v13;
    v67[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (v13 == 43)
    {
      if (v30)
      {
        if (--v30)
        {
          v35 = 0;
          v46 = v67 + 1;
          while (1)
          {
            v47 = *v46 - 48;
            if (v47 > 9)
            {
              break;
            }

            v48 = 10 * v35;
            if ((v35 * 10) >> 64 != (10 * v35) >> 63)
            {
              break;
            }

            v35 = v48 + v47;
            if (__OFADD__(v48, v47))
            {
              break;
            }

            ++v46;
            if (!--v30)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }

      goto LABEL_96;
    }

    if (v13 != 45)
    {
      if (v30)
      {
        v35 = 0;
        v51 = v67;
        while (1)
        {
          v52 = *v51 - 48;
          if (v52 > 9)
          {
            break;
          }

          v53 = 10 * v35;
          if ((v35 * 10) >> 64 != (10 * v35) >> 63)
          {
            break;
          }

          v35 = v53 + v52;
          if (__OFADD__(v53, v52))
          {
            break;
          }

          ++v51;
          if (!--v30)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    if (v30)
    {
      if (--v30)
      {
        v35 = 0;
        v40 = v67 + 1;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            break;
          }

          v42 = 10 * v35;
          if ((v35 * 10) >> 64 != (10 * v35) >> 63)
          {
            break;
          }

          v35 = v42 - v41;
          if (__OFSUB__(v42, v41))
          {
            break;
          }

          ++v40;
          if (!--v30)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    goto LABEL_94;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v33 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_20;
  }

LABEL_92:
  v33 = _StringObject.sharedUTF8.getter();
LABEL_20:
  v34 = *v33;
  if (v34 == 43)
  {
    if (v31 < 1)
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v30 = v31 - 1;
    if (v31 != 1)
    {
      v35 = 0;
      if (v33)
      {
        v43 = v33 + 1;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            goto LABEL_79;
          }

          v45 = 10 * v35;
          if ((v35 * 10) >> 64 != (10 * v35) >> 63)
          {
            goto LABEL_79;
          }

          v35 = v45 + v44;
          if (__OFADD__(v45, v44))
          {
            goto LABEL_79;
          }

          ++v43;
          if (!--v30)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_71;
    }

LABEL_79:
    v35 = 0;
    LOBYTE(v30) = 1;
    goto LABEL_80;
  }

  if (v34 != 45)
  {
    if (v31)
    {
      v35 = 0;
      if (v33)
      {
        while (1)
        {
          v49 = *v33 - 48;
          if (v49 > 9)
          {
            goto LABEL_79;
          }

          v50 = 10 * v35;
          if ((v35 * 10) >> 64 != (10 * v35) >> 63)
          {
            goto LABEL_79;
          }

          v35 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            goto LABEL_79;
          }

          ++v33;
          if (!--v31)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_71;
    }

    goto LABEL_79;
  }

  if (v31 < 1)
  {
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v30 = v31 - 1;
  if (v31 == 1)
  {
    goto LABEL_79;
  }

  v35 = 0;
  if (v33)
  {
    v36 = v33 + 1;
    while (1)
    {
      v37 = *v36 - 48;
      if (v37 > 9)
      {
        goto LABEL_79;
      }

      v38 = 10 * v35;
      if ((v35 * 10) >> 64 != (10 * v35) >> 63)
      {
        goto LABEL_79;
      }

      v35 = v38 - v37;
      if (__OFSUB__(v38, v37))
      {
        goto LABEL_79;
      }

      ++v36;
      if (!--v30)
      {
        goto LABEL_80;
      }
    }
  }

LABEL_71:
  LOBYTE(v30) = 0;
LABEL_80:
  v68 = v30;
  v54 = v30;
LABEL_81:

  if (v54)
  {
LABEL_82:
    v55 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v55 - 8) + 56))(a4, 1, 1, v55);
    return;
  }

  UUID.init()();
  v56 = sub_1002D9EA8(v19);
  v57 = [a1 _reviewsDisplayName];
  if (v57)
  {
    v58 = v57;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  (*(v9 + 32))(a4, v11, v8);
  v62 = type metadata accessor for PlaceSummaryViewModelUnit.ThirdPartyRatings(0);
  *(a4 + v62[5]) = v19;
  *(a4 + v62[6]) = v56;
  *(a4 + v62[7]) = v35;
  v63 = (a4 + v62[8]);
  *v63 = v59;
  v63[1] = v61;
  *(a4 + v62[9]) = v4 & 1;
  v64 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v64 - 8) + 56))(a4, 0, 1, v64);
}

uint64_t sub_1002CFB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedManager];
  v5 = [v4 firstUserGuideContainingMapItem:a1 requiresOrdering:0];

  if (v5)
  {
    UUID.init()();
    v6 = [v5 title];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = type metadata accessor for PlaceSummaryViewModelUnit.UserGeneratedGuide(0);
    v11 = (a2 + *(v10 + 20));
    *v11 = v7;
    v11[1] = v9;
    *(a2 + *(v10 + 24)) = v5;
    v12 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    swift_storeEnumTagMultiPayload();
    v13 = *(*(v12 - 8) + 56);
    v14 = a2;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

id sub_1002CFC90@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide(0);
  v85 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a2 _placeCollections];
  if (!v14)
  {
    v23 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v20 = *(*(v23 - 8) + 56);
    v21 = v23;
    v22 = a3;
    goto LABEL_8;
  }

  v15 = v14;
  v84 = v10;
  v86 = a3;
  sub_100014C84(0, &qword_10190D6B0);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = v16 >> 62;
  if (v16 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 < a1)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (v18 >= 2)
  {
    v83 = v18;
    if (!MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      UUID.init()();
      result = [a2 _placeCollections];
      if (result)
      {
        v26 = result;

        v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
        v28 = v86;
        (*(v85 + 56))(v86 + v27[7], 1, 1, v84);
        (*(v7 + 32))(v28, v9, v6);
        *(v28 + v27[5]) = v83;
        v29 = v27[6];
        goto LABEL_21;
      }

LABEL_52:
      __break(1u);
      return result;
    }

    if (v17)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!result)
    {
      goto LABEL_5;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_27;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(v16 + 32);
LABEL_27:
      v32 = v31;
      v33 = [v31 publisherAttribution];
      if (!v33)
      {

        goto LABEL_5;
      }

      v34 = v33;
      v35 = objc_opt_self();
      v36 = [v34 iconIdentifier];
      v37 = [objc_opt_self() mainScreen];
      [v37 scale];
      v39 = v38;

      v40 = [v35 imageForIconID:v36 contentScale:1 sizeGroup:0 nightMode:v39];
      if (!v40)
      {

        swift_unknownObjectRelease();
        goto LABEL_5;
      }

      v41 = v40;
      v42 = [v34 displayName];
      if (!v42)
      {

        swift_unknownObjectRelease();
        goto LABEL_5;
      }

      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      UUID.init()();
      v47 = [v32 collectionTitle];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v49;

      v50 = v84;
      *&v13[v84[5]] = v41;
      v51 = &v13[v50[6]];
      *v51 = v44;
      v51[1] = v46;
      v52 = &v13[v50[7]];
      v53 = v82;
      *v52 = v48;
      v52[1] = v53;
      *&v13[v50[8]] = v32;
      v28 = v86;
      UUID.init()();
      swift_unknownObjectRelease();
      v54 = type metadata accessor for PlaceSummaryViewModelUnit.MultipleCuratedGuides(0);
      v55 = v54[7];
      sub_1002E29D4(v13, v28 + v55, type metadata accessor for PlaceSummaryViewModelUnit.SingleCuratedGuide);
      (*(v85 + 56))(v28 + v55, 0, 1, v50);
      *(v28 + v54[5]) = v83;
      v29 = v54[6];
LABEL_21:
      *(v28 + v29) = v16;
      v30 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v18 != 1)
  {
    goto LABEL_5;
  }

  result = v17 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_5;
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v56 = *(v16 + 32);
  }

  v57 = v56;

  v58 = [v57 publisherAttribution];
  if (v58)
  {
    v59 = v58;
    v60 = objc_opt_self();
    v61 = [v59 iconIdentifier];
    v62 = [objc_opt_self() mainScreen];
    [v62 scale];
    v64 = v63;

    v65 = [v60 imageForIconID:v61 contentScale:1 sizeGroup:0 nightMode:v64];
    if (v65)
    {
      v66 = v65;
      v67 = [v59 displayName];
      if (v67)
      {
        v68 = v67;
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        v72 = v86;
        UUID.init()();
        v73 = [v57 collectionTitle];
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v75;
        swift_unknownObjectRelease();

        v77 = v84;
        *(v72 + v84[5]) = v66;
        v78 = (v72 + v77[6]);
        *v78 = v69;
        v78[1] = v71;
        v79 = (v72 + v77[7]);
        *v79 = v74;
        v79[1] = v76;
        *(v72 + v77[8]) = v57;
        v80 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        swift_storeEnumTagMultiPayload();
        v20 = *(*(v80 - 8) + 56);
        v22 = v72;
        v24 = 0;
        v21 = v80;
        goto LABEL_9;
      }

      swift_unknownObjectRelease();

      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

LABEL_6:
  v19 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v20 = *(*(v19 - 8) + 56);
  v21 = v19;
  v22 = v86;
LABEL_8:
  v24 = 1;
LABEL_9:

  return v20(v22, v24, 1, v21);
}

uint64_t sub_1002D0464@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 && (v4 = [a1 _realTimeAvailableEVCharger]) != 0)
  {
    v5 = v4;
    sub_1004CE7A4(v4, 0);
    v6 = [objc_opt_self() sharedSearchVirtualGarageManager];
    v7 = [v6 virtualGarage];

    if (v7)
    {
      v8 = [objc_opt_self() getRealTimeEVChargerInfo:v7 charger:v5];
      [v8 status];
    }

    else
    {
      [v5 _realTimePlugAvailabilityStatus];
    }

    type metadata accessor for PlaceSummaryEVChargerViewModel(0);
    v12 = swift_allocObject();
    UUID.init()();
    swift_beginAccess();
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    type metadata accessor for GEOEVChargerAvailability_RealTimeStatus(0);
    Published.init(initialValue:)();
    swift_endAccess();
    *(v12 + OBJC_IVAR____TtC4Maps30PlaceSummaryEVChargerViewModel_mapItem) = a1;
    type metadata accessor for PlaceSummaryViewModelUnit.RealTimeAvailableCharger(0);
    v13 = swift_allocObject();
    v14 = a1;
    UUID.init()();
    v15 = (v13 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit24RealTimeAvailableCharger__chargerViewModel);
    swift_beginAccess();
    sub_1002E298C(&unk_101918A60, type metadata accessor for PlaceSummaryEVChargerViewModel);

    *v15 = ObservedObject.init(wrappedValue:)();
    v15[1] = v16;
    swift_endAccess();

    *a2 = v13;
    v17 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
  }

  else
  {
    v9 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v10 = *(*(v9 - 8) + 56);

    return v10(a2, 1, 1, v9);
  }
}

uint64_t sub_1002D07B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 _chargerNumberString];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for PlaceSummaryEVChargerViewModel(0);
    v6 = swift_allocObject();
    v7 = a1;
    UUID.init()();
    swift_beginAccess();
    Published.init(initialValue:)();
    swift_endAccess();
    swift_beginAccess();
    type metadata accessor for GEOEVChargerAvailability_RealTimeStatus(0);
    Published.init(initialValue:)();
    swift_endAccess();
    *(v6 + OBJC_IVAR____TtC4Maps30PlaceSummaryEVChargerViewModel_mapItem) = a1;
    type metadata accessor for PlaceSummaryViewModelUnit.RealTimeAvailableCharger(0);
    v8 = swift_allocObject();
    UUID.init()();
    v9 = (v8 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit24RealTimeAvailableCharger__chargerViewModel);
    swift_beginAccess();
    sub_1002E298C(&unk_101918A60, type metadata accessor for PlaceSummaryEVChargerViewModel);

    *v9 = ObservedObject.init(wrappedValue:)();
    v9[1] = v10;
    swift_endAccess();

    *a2 = v8;
    v11 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t sub_1002D0A4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([objc_opt_self() shouldShowAppleRatingsForMapItem:a1])
  {
    v4 = [objc_opt_self() locallyCachedReviewedPlaceForMUID:{objc_msgSend(a1, "_muid")}];
    if (v4)
    {
      v5 = v4;
      if ([v4 recommendState])
      {
        v6 = [v5 recommendState] == 2;
        UUID.init()();

        *(a2 + *(type metadata accessor for PlaceSummaryViewModelUnit.UGCUserRecommendations(0) + 20)) = v6;
        v7 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        swift_storeEnumTagMultiPayload();
        v8 = *(*(v7 - 8) + 56);
        v9 = a2;
        v10 = 0;
        v11 = v7;
        goto LABEL_7;
      }
    }
  }

  v12 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v8 = *(*(v12 - 8) + 56);
  v11 = v12;
  v9 = a2;
  v10 = 1;
LABEL_7:

  return v8(v9, v10, 1, v11);
}

void sub_1002D0BB8(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v106 = a3;
  v103 = type metadata accessor for UUID();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
  __chkstk_darwin(v104);
  v105 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for PlaceSummaryImageViewModel.ImageType(0);
  __chkstk_darwin(v96);
  v97 = (&v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1000CE6B8(&unk_101918A00);
  __chkstk_darwin(v7 - 8);
  v110 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = &v96 - v10;
  v122 = type metadata accessor for AttributedSubstring();
  v11 = *(v122 - 8);
  __chkstk_darwin(v122);
  v108 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v107 = &v96 - v14;
  v15 = sub_1000CE6B8(&qword_10190B850);
  __chkstk_darwin(v15 - 8);
  v17 = &v96 - v16;
  v124 = sub_1000CE6B8(&unk_10190D600);
  v18 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v120 = &v96 - v21;
  __chkstk_darwin(v22);
  v125 = (&v96 - v23);
  v24 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v24 - 8);
  v119 = type metadata accessor for AttributedString();
  v114 = *(v119 - 8);
  __chkstk_darwin(v119);
  v100 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v96 - v27;
  __chkstk_darwin(v29);
  v118 = &v96 - v30;
  v31 = a1[3];
  v123 = a1;
  if (v31)
  {
    v32 = objc_opt_self();
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 _maps_colorFromHexString:v33];

    if (!v34)
    {
      __break(1u);
      goto LABEL_42;
    }

    v113 = Color.init(uiColor:)();
    a1 = v123;
    if (v123[7])
    {
LABEL_4:
      v35 = objc_opt_self();
      v36 = String._bridgeToObjectiveC()();
      v37 = [v35 _maps_colorFromHexString:v36];

      if (v37)
      {
        v99 = Color.init(uiColor:)();
        a1 = v123;
        goto LABEL_8;
      }

LABEL_42:
      __break(1u);
      return;
    }
  }

  else
  {
    v113 = 0;
    if (a1[7])
    {
      goto LABEL_4;
    }
  }

  v99 = 0;
LABEL_8:
  v38 = a1[10];

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v126[0] = v113;
  v39 = sub_10016EB80();

  v98 = v39;
  AttributedString.subscript.setter();
  v115 = v38;
  if (!v38)
  {
    goto LABEL_31;
  }

  v40 = v115[2];
  if (!v40)
  {
    goto LABEL_31;
  }

  v41 = (v18 + 48);
  v116 = (v11 + 8);
  v117 = (v18 + 48);
  v42 = v115 + 6;
  v112 = v17;
  while (1)
  {
    v48 = *(v42 - 1);
    v47 = *v42;
    v49 = *(v42 - 2);
    sub_1002E26F8(v49);
    sub_1002D9F24(v48, v47, v28, v17);
    if ((*v41)(v17, 1, v124) == 1)
    {
      break;
    }

    sub_1000F11C4(v17, v125, &unk_10190D600);
    if (!v49)
    {
      sub_1000D2DFC(v125, v120, &unk_10190D600);
      swift_beginAccess();
      sub_1000414C8(&qword_10190B858, &unk_10190D600);
      v55 = v107;
      AttributedString.subscript.getter();
      sub_1002E276C();
      AttributedSubstring.subscript.getter();
      (*v116)(v55, v122);
      if (v127)
      {
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        static Font.subheadline.getter();
      }

      v59 = Font.bold()();

      swift_beginAccess();
      v45 = v120;
      v60 = AttributedString.subscript.modify();
      v128 = v59;
      AttributedSubstring.subscript.setter();
      v60(v126, 0);
      goto LABEL_14;
    }

    if (v49 == 1)
    {
      sub_1000D2DFC(v125, v121, &unk_10190D600);
      swift_beginAccess();
      sub_1000414C8(&qword_10190B858, &unk_10190D600);
      v43 = v108;
      AttributedString.subscript.getter();
      sub_1002E276C();
      AttributedSubstring.subscript.getter();
      (*v116)(v43, v122);
      if (v127)
      {
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        static Font.subheadline.getter();
      }

      v44 = Font.italic()();

      swift_beginAccess();
      v45 = v121;
      v46 = AttributedString.subscript.modify();
      v128 = v44;
      AttributedSubstring.subscript.setter();
      v46(v126, 0);
LABEL_14:
      swift_endAccess();
      sub_100024F64(v45, &unk_10190D600);
      sub_100024F64(v125, &unk_10190D600);
      v41 = v117;
      goto LABEL_15;
    }

    if (v49 == 2)
    {
      v50 = v109;
      static Text.LineStyle.single.getter();
      v51 = type metadata accessor for Text.LineStyle();
      (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
      swift_beginAccess();
      sub_1000414C8(&qword_10190B858, &unk_10190D600);
      v52 = v125;
      v53 = AttributedString.subscript.modify();
      sub_1000D2DFC(v50, v110, &unk_101918A00);
      sub_1002E2718();
      AttributedSubstring.subscript.setter();
      sub_100024F64(v50, &unk_101918A00);
      v53(v126, 0);
      swift_endAccess();
      v54 = v52;
    }

    else
    {
      if ((v111 & 1) == 0)
      {
        sub_100024F64(v125, &unk_10190D600);
        sub_1002E2708(v49);
        goto LABEL_15;
      }

      v56 = static Color.blue.getter();
      swift_beginAccess();
      sub_1000414C8(&qword_10190B858, &unk_10190D600);
      v57 = v125;
      v58 = AttributedString.subscript.modify();
      v128 = v56;
      AttributedSubstring.subscript.setter();
      v58(v126, 0);
      swift_endAccess();
      sub_1002E2708(v49);
      v54 = v57;
    }

    v17 = v112;
    sub_100024F64(v54, &unk_10190D600);
LABEL_15:
    v42 += 3;
    if (!--v40)
    {
      goto LABEL_31;
    }
  }

  sub_1002E2708(v49);
  sub_100024F64(v17, &qword_10190B850);
LABEL_31:
  swift_beginAccess();
  v61 = v114;
  v62 = *(v114 + 16);
  v63 = v119;
  v62(v118, v28, v119);
  v125 = *(v61 + 8);
  (v125)(v28, v63);
  v64 = v123[12];
  if (v64)
  {
    v65 = objc_allocWithZone(MapsUIImageGEOFeatureSpec);
    v66 = v64;
    v67 = [v65 init];
    [v67 setStyle:v66];
    [v67 setMarkerFallback:0];
    v68 = v62;
    v69 = sub_1000CE6B8(&qword_1019141F8);
    v70 = swift_allocBox();
    v72 = v71;
    v73 = *(v69 + 96);
    v74 = *(v69 + 112);
    *v71 = v67;
    *(v71 + 8) = 0;
    *(v71 + 24) = 0;
    *(v71 + 16) = 0;
    v75 = enum case for Image.TemplateRenderingMode.original(_:);
    v76 = type metadata accessor for Image.TemplateRenderingMode();
    (*(*(v76 - 8) + 104))(v72 + v73, v75, v76);
    v77 = v67;
    *(v72 + v74) = static Color.clear.getter();
    v78 = v97;
    *v97 = v70;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PlaceSummaryImageViewModel(0);
    v79 = swift_allocObject();
    *&v127 = 0;
    sub_1000CE6B8(&unk_101918A10);
    Published.init(initialValue:)();
    UUID.init()();

    v62 = v68;
    sub_1002E29D4(v78, v79 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_type, type metadata accessor for PlaceSummaryImageViewModel.ImageType);
    v80 = v79 + OBJC_IVAR____TtC4Maps26PlaceSummaryImageViewModel_cornerRadius;
    *v80 = 0;
    *(v80 + 8) = 1;
  }

  else
  {
    v79 = 0;
  }

  v81 = v101;
  UUID.init()();
  v82 = v100;
  v83 = v119;
  v62(v100, v118, v119);
  v84 = *(v123 + 88);
  v127 = *(v123 + 2);
  v85 = v104;
  v86 = v114;
  v87 = v105;
  (*(v114 + 56))(&v105[*(v104 + 48)], 1, 1, v83);
  (*(v102 + 32))(v87, v81, v103);
  (*(v86 + 32))(v87 + v85[5], v82, v83);
  *(v87 + v85[6]) = v127;
  *(v87 + v85[7]) = v99;
  *(v87 + v85[8]) = 0;
  *(v87 + v85[9]) = v79;
  *(v87 + v85[10]) = 0;
  v88 = v87 + v85[11];
  *v88 = (v84 & 1) == 0;
  *(v88 + 8) = v84 & 1;
  *(v87 + v85[13]) = _swiftEmptyArrayStorage;
  v89 = v106;
  if (v115)
  {
    v90 = v115 + 4;
    v91 = v115[2] + 1;
    while (--v91)
    {
      v93 = *v90;
      v90 += 3;
      v92 = v93;
      if (v93 >= 3)
      {
        sub_1000D2DFC(&v127, &v128, &unk_10190D010);
        sub_1002E26F8(v92);
        UUID.init()();

        (v125)(v118, v119);
        v94 = type metadata accessor for PlaceSummaryViewModelUnit.TappableEntry(0);
        sub_1002E29D4(v87, v89 + *(v94 + 20), type metadata accessor for PlaceSummaryViewModelUnit.Label);
        *(v89 + *(v94 + 24)) = v92;
        goto LABEL_40;
      }
    }
  }

  sub_1000D2DFC(&v127, &v128, &unk_10190D010);

  (v125)(v118, v119);
  sub_1002E29D4(v87, v89, type metadata accessor for PlaceSummaryViewModelUnit.Label);
LABEL_40:
  v95 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v95 - 8) + 56))(v89, 0, 1, v95);
}

uint64_t sub_1002D1CD4@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      goto LABEL_14;
    }

    v12 = [a2 _addressFormattedAsShortenedAddress];
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else if (a1)
  {
    v12 = [a2 _addressFormattedAsCity];
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = [a2 _addressFormattedAsName];
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    UUID.init()();
    v18 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
    (*(v8 + 16))(a3 + v18[5], v11, v7);
    (*(v8 + 56))(a3 + v18[12], 1, 1, v7);
    (*(v8 + 8))(v11, v7);
    v19 = (a3 + v18[6]);
    *v19 = 0;
    v19[1] = 0;
    *(a3 + v18[7]) = 0;
    *(a3 + v18[8]) = 0;
    *(a3 + v18[9]) = 0;
    *(a3 + v18[10]) = 0;
    v20 = a3 + v18[11];
    *v20 = 1;
    *(v20 + 8) = 0;
    *(a3 + v18[13]) = _swiftEmptyArrayStorage;
    v21 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
  }

LABEL_14:
  v23 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v24 = *(*(v23 - 8) + 56);

  return v24(a3, 1, 1, v23);
}

uint64_t sub_1002D2018@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v24 = [a2 _geoMapItem];
    if (!v24 || (v25 = [v24 _containedPlace], swift_unknownObjectRelease(), !v25) || (v26 = objc_msgSend(v25, "parent"), v25, !v26) || (v27 = objc_msgSend(v26, "_identifier"), swift_unknownObjectRelease(), !v27))
    {
      v28 = [a2 _venueInfo];
      if (!v28 || (v29 = [v28 parent], swift_unknownObjectRelease(), !v29) || (v30 = objc_msgSend(v29, "businessID"), v29, UIView.annotateView(with:)(objc_msgSend(a2, "_coordinate")), (v33 = objc_msgSend(objc_allocWithZone(GEOMapItemIdentifier), "initWithMUID:coordinate:", v30, v31, v32)) == 0))
      {
LABEL_41:
        v12 = 0;
        goto LABEL_42;
      }

      v27 = v33;
    }

    v34 = [objc_allocWithZone(MKMapItemIdentifier) initWithGEOMapItemIdentifier:v27];

    if (v34)
    {
      type metadata accessor for PlaceSummaryViewModelUnit.ContainmentParent(0);
      v35 = swift_allocObject();
      UUID.init()();
      v75 = 0;
      sub_1000CE6B8(&qword_10191B670);
      Published.init(initialValue:)();
      *(v35 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit17ContainmentParent_parentIdentifier) = v34;
      *a3 = v35;
      v36 = type metadata accessor for PlaceSummaryViewModelUnit(0);
LABEL_37:
      swift_storeEnumTagMultiPayload();
      return (*(*(v36 - 8) + 56))(a3, 0, 1, v36);
    }

    goto LABEL_41;
  }

  if (a1 == 1)
  {
    v12 = [objc_allocWithZone(PlaceSummaryContainmentGeoViewModel) initWithMapItem:a2];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 containment];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        if (v19)
        {
          AttributeContainer.init()();
          AttributedString.init(_:attributes:)();
          UUID.init()();
          v20 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
          (*(v8 + 16))(a3 + v20[5], v11, v7);
          (*(v8 + 56))(a3 + v20[12], 1, 1, v7);

          (*(v8 + 8))(v11, v7);
          v21 = (a3 + v20[6]);
          *v21 = 0;
          v21[1] = 0;
          *(a3 + v20[7]) = 0;
          *(a3 + v20[8]) = 0;
          *(a3 + v20[9]) = 0;
          *(a3 + v20[10]) = 0;
          v22 = a3 + v20[11];
          *v22 = 1;
          v22[8] = 0;
          v23 = v20[13];
LABEL_36:
          *(a3 + v23) = _swiftEmptyArrayStorage;
          v36 = type metadata accessor for PlaceSummaryViewModelUnit(0);
          goto LABEL_37;
        }
      }

      goto LABEL_41;
    }

LABEL_42:
    v68 = type metadata accessor for PlaceSummaryViewModelUnit(v12);
    v69 = *(*(v68 - 8) + 56);

    return v69(a3, 1, 1, v68);
  }

  v12 = [objc_allocWithZone(PlaceSummaryContainmentGeoViewModel) initWithMapItem:a2];
  if (!v12)
  {
    goto LABEL_42;
  }

  v37 = v12;
  v38 = _swiftEmptyArrayStorage;
  v75 = _swiftEmptyArrayStorage;
  v39 = [v12 prefix];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v38 = sub_100356258(0, 1, 1, _swiftEmptyArrayStorage);
    v45 = *(v38 + 2);
    v44 = *(v38 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v73 = v45 + 1;
      v70 = sub_100356258((v44 > 1), v45 + 1, 1, v38);
      v46 = v73;
      v38 = v70;
    }

    *(v38 + 2) = v46;
    v47 = &v38[16 * v45];
    *(v47 + 4) = v41;
    *(v47 + 5) = v43;
    v75 = v38;
  }

  v48 = [v37 containment];
  if (v48)
  {
    v49 = v48;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_100356258(0, *(v38 + 2) + 1, 1, v38);
    }

    v54 = *(v38 + 2);
    v53 = *(v38 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v73 = v54 + 1;
      v71 = sub_100356258((v53 > 1), v54 + 1, 1, v38);
      v55 = v73;
      v38 = v71;
    }

    *(v38 + 2) = v55;
    v56 = &v38[16 * v54];
    *(v56 + 4) = v50;
    *(v56 + 5) = v52;
    v75 = v38;
  }

  v57 = [objc_opt_self() sharedApplication];
  v58 = [v57 userInterfaceLayoutDirection];

  if (v58 == 1)
  {
    sub_1002C00E0();
    v38 = v75;
  }

  v74 = v38;
  sub_1000CE6B8(&unk_101909C00);
  sub_1000414C8(&qword_101918A70, &unk_101909C00);
  v59 = BidirectionalCollection<>.joined(separator:)();
  v61 = v60;

  v62 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v62 = v59 & 0xFFFFFFFFFFFFLL;
  }

  if (v62)
  {
    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    UUID.init()();
    v63 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
    (*(v8 + 16))(a3 + v63[5], v11, v7);
    (*(v8 + 56))(a3 + v63[12], 1, 1, v7);

    (*(v8 + 8))(v11, v7);
    v64 = (a3 + v63[6]);
    *v64 = 0;
    v64[1] = 0;
    *(a3 + v63[7]) = 0;
    *(a3 + v63[8]) = 0;
    *(a3 + v63[9]) = 0;
    *(a3 + v63[10]) = 0;
    v65 = a3 + v63[11];
    *v65 = 1;
    v65[8] = 0;
    v23 = v63[13];
    goto LABEL_36;
  }

  v67 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  return (*(*(v67 - 8) + 56))(a3, 1, 1, v67);
}

uint64_t sub_1002D289C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 _encyclopedicInfo];
  if (v12)
  {
    v13 = [v12 placeSummaryFactoids];
    if (v13)
    {
      v14 = v13;
      sub_1000CE6B8(&qword_101918AE0);
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v15 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result > a2)
        {
LABEL_5:
          v49 = v8;
          if ((v15 & 0xC000000000000001) == 0)
          {
            if (a2 < 0)
            {
              __break(1u);
            }

            else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
            {
              v17 = *(v15 + 8 * a2 + 32);
              swift_unknownObjectRetain();
LABEL_9:

              v18 = objc_opt_self();
              v50 = v17;
              v19 = [v18 viewModelForFactoid:v17];
              sub_1000CE6B8(&qword_101909BF0);
              v20 = swift_allocObject();
              *(v20 + 16) = xmmword_1011E7D60;
              v21 = [v19 titleString];
              v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v24 = v23;

              *(v20 + 32) = v22;
              *(v20 + 40) = v24;
              *(v20 + 48) = 58;
              *(v20 + 56) = 0xE100000000000000;
              *(v20 + 64) = 32;
              *(v20 + 72) = 0xE100000000000000;
              v25 = [v19 valueString];
              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;

              *(v20 + 80) = v26;
              *(v20 + 88) = v28;
              v52 = v20;
              v29 = [objc_opt_self() sharedApplication];
              v30 = [v29 userInterfaceLayoutDirection];

              if (v30 == 1)
              {
                sub_1002C00E0();
                v20 = v52;
              }

              v51 = v20;
              sub_1000CE6B8(&unk_101909C00);
              sub_1000414C8(&qword_101918A70, &unk_101909C00);
              v31 = BidirectionalCollection<>.joined(separator:)();
              v33 = v32;

              v34 = [v19 symbolName];
              if (v34)
              {
                v35 = v34;
                v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v37 = v36;
              }

              else
              {
                v48 = 0;
                v37 = 0;
              }

              v38 = HIBYTE(v33) & 0xF;
              if ((v33 & 0x2000000000000000) == 0)
              {
                v38 = v31 & 0xFFFFFFFFFFFFLL;
              }

              if (v38)
              {
                AttributeContainer.init()();
                AttributedString.init(_:attributes:)();
                UUID.init()();
                v39 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
                v40 = v49;
                (*(v49 + 16))(a3 + v39[5], v11, v7);
                (*(v40 + 56))(a3 + v39[12], 1, 1, v7);
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                (*(v40 + 8))(v11, v7);
                v41 = (a3 + v39[6]);
                *v41 = v48;
                v41[1] = v37;
                *(a3 + v39[7]) = 0;
                *(a3 + v39[8]) = 0;
                *(a3 + v39[9]) = 0;
                *(a3 + v39[10]) = 0;
                v42 = a3 + v39[11];
                *v42 = 1;
                *(v42 + 8) = 0;
                *(a3 + v39[13]) = _swiftEmptyArrayStorage;
                v43 = type metadata accessor for PlaceSummaryViewModelUnit(0);
                swift_storeEnumTagMultiPayload();
                return (*(*(v43 - 8) + 56))(a3, 0, 1, v43);
              }

              else
              {

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                v44 = type metadata accessor for PlaceSummaryViewModelUnit(0);
                return (*(*(v44 - 8) + 56))(a3, 1, 1, v44);
              }
            }

            __break(1u);
            return result;
          }

          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_9;
        }
      }

      else
      {
        result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result > a2)
        {
          goto LABEL_5;
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v45 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v46 = *(*(v45 - 8) + 56);

  return v46(a3, 1, 1, v45);
}

uint64_t sub_1002D2EAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = a2;
  }

  v6 = [a1 venueLabelWithContext:v5];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (String.count.getter() >= 1)
    {
      v14[0] = v8;
      v14[1] = v10;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
      v19 = 1;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      sub_1002D0BB8(v14, 0, a4);
      return sub_1002E2888(v14);
    }
  }

  v12 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a4, 1, 1, v12);
}

uint64_t sub_1002D2FE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 _venueInfo];
  if (!v3 || (v4 = [v3 contents], swift_unknownObjectRelease(), !v4))
  {
    v6 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      goto LABEL_4;
    }

LABEL_8:
    v15[0] = v6;
    sub_1000CE6B8(&unk_101909C00);
    sub_1000414C8(&qword_101918A70, &unk_101909C00);
    v9 = BidirectionalCollection<>.joined(separator:)();
    v11 = v10;

    if (String.count.getter() < 1)
    {

      v12 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
    }

    else
    {
      v15[0] = v9;
      v15[1] = v11;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0;
      v20 = 1;
      *v21 = *v14;
      *&v21[3] = *&v14[3];
      v22 = 0;
      v23 = 0;
      *v24 = *v13;
      *&v24[3] = *&v13[3];
      v25 = 0;
      sub_1002D0BB8(v15, 0, a2);
      return sub_1002E2888(v15);
    }
  }

  v5 = [v4 items];
  swift_unknownObjectRelease();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6[2])
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
}

id sub_1002D3260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = [a1 locationType];
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    if (v4 > 1)
    {
      if (v4 != 2)
      {
        if (v4 != 3)
        {
          if (v4 == 4)
          {
            v7 = [a1 autocompletePerson];
            if (v7)
            {
              v8 = v7;
              v9 = sub_100509AEC();
            }

            else
            {
              sub_100014C84(0, &unk_10190B9E0);
              v9 = NSString.init(stringLiteral:)();
            }

            countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
            object = v21;
          }

          goto LABEL_28;
        }

        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v10.super.isa = qword_1019600D8;
        v25 = 0x800000010122CA30;
        v14 = 0x6C6F6F686353;
        v13 = 0xD000000000000016;
        v11 = 0x800000010122CA10;
        v12 = 0xD000000000000029;
        v15 = 0xE600000000000000;
        goto LABEL_21;
      }

      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v10.super.isa = qword_1019600D8;
      v25 = 0x800000010122CA80;
      v11 = 0x800000010122CA60;
      v12 = 0xD000000000000027;
      v13 = 0xD000000000000014;
      v14 = 1802661719;
LABEL_17:
      v15 = 0xE400000000000000;
LABEL_21:
      v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v13, 0, v10, *&v14, *&v12);
      countAndFlagsBits = v16._countAndFlagsBits;
      object = v16._object;
      goto LABEL_28;
    }

    if (v4)
    {
      if (v4 == 1)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v10.super.isa = qword_1019600D8;
        v25 = 0x800000010122CAD0;
        v11 = 0x800000010122CAB0;
        v12 = 0xD000000000000027;
        v13 = 0xD000000000000014;
        v14 = 1701670728;
        goto LABEL_17;
      }
    }

    else
    {
      result = [a1 address];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v18 = result;
      v19 = [result localizedLabel];

      if (v19)
      {
        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v20;
      }

      else
      {
        countAndFlagsBits = 0;
      }
    }
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

LABEL_28:
  v22 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v22 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v22 && String.count.getter() >= 1)
  {
    v26[0] = countAndFlagsBits;
    v26[1] = object;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    v31 = 1;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    sub_1002D0BB8(v26, 0, a2);
    return sub_1002E2888(v26);
  }

  else
  {

    v23 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v24 = *(*(v23 - 8) + 56);

    return v24(a2, 1, 1, v23);
  }
}

uint64_t sub_1002D364C@<X0>(void *a1@<X0>, NSObject *a2@<X8>)
{
  v4 = type metadata accessor for PlaceSummaryViewModelUnit.PhotoCarousel(0);
  __chkstk_darwin(v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = a1;
    v8 = [v7 _identifier];
    if (v8)
    {
      v9 = v8;
      v10 = [v7 _searchResultPhotoCarousel];
      if (v10)
      {
        v11 = v10;
        sub_1000CE6B8(&qword_10190ABA0);
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for PlaceSummaryPhotoCarouselViewModel(0);
        swift_allocObject();
        v13 = v7;
        v14 = sub_100220620(v13, 0);

        UUID.init()();
        v15 = &v6[*(v4 + 20)];
        sub_1002E298C(&unk_10190F350, type metadata accessor for PlaceSummaryPhotoCarouselViewModel);
        *v15 = ObservedObject.init(wrappedValue:)();
        v15[1] = v16;
        if (qword_101906728 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100021540(v17, qword_101960018);
        v18 = v9;
        v19 = v13;
        v20 = v18;

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v63 = v14;
          v64 = a2;
          v23 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v65[0] = v62;
          *v23 = 136381187;
          v24 = [v19 name];
          if (v24)
          {
            v25 = v24;
            v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v28 = v27;
          }

          else
          {
            v26 = 0;
            v28 = 0xE000000000000000;
          }

          v52 = sub_10004DEB8(v26, v28, v65);

          *(v23 + 4) = v52;
          *(v23 + 12) = 2049;
          v53 = [v20 muid];

          *(v23 + 14) = v53;
          *(v23 + 22) = 2048;
          if (v12 >> 62)
          {
            v54 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v54 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          a2 = v64;

          *(v23 + 24) = v54;

          _os_log_impl(&_mh_execute_header, v21, v22, "[Place Summary] Mapitem %{private}s, muid: %{private}llu has photo carousel with %ld photos", v23, 0x20u);
          sub_10004E3D0(v62);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        sub_1002E29D4(v6, a2, type metadata accessor for PlaceSummaryViewModelUnit.PhotoCarousel);
        v55 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v55 - 8) + 56))(a2, 0, 1, v55);
      }

      else
      {
        if (qword_101906728 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_100021540(v36, qword_101960018);
        v37 = v7;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.error.getter();

        v64 = v38;
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v66 = v42;
          *v40 = 136315395;
          v43 = [v37 name];
          if (v43)
          {
            v63 = v37;
            v44 = v41;
            v45 = v39;
            v46 = v42;
            v47 = a2;
            v48 = v43;
            v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v51 = v50;

            a2 = v47;
            v42 = v46;
            v39 = v45;
            v41 = v44;
            v37 = v63;
          }

          else
          {
            v49 = 0;
            v51 = 0;
          }

          v65[0] = v49;
          v65[1] = v51;
          sub_1000CE6B8(&unk_10190D010);
          v56 = String.init<A>(describing:)();
          v58 = sub_10004DEB8(v56, v57, &v66);

          *(v40 + 4) = v58;
          *(v40 + 12) = 2113;
          v59 = [v37 _identifier];
          *(v40 + 14) = v59;
          *v41 = v59;
          v60 = v64;
          _os_log_impl(&_mh_execute_header, v64, v39, "[Place Summary] Photo carousel is nil for mapItem %s, muid: %{private}@", v40, 0x16u);
          sub_100024F64(v41, &qword_1019144F0);

          sub_10004E3D0(v42);
        }

        else
        {
        }

        v61 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        return (*(*(v61 - 8) + 56))(a2, 1, 1, v61);
      }
    }
  }

  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100021540(v29, qword_101960018);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "[Place Summary] No Mapitem (or nil identifier) when building photo carousel unit", v32, 2u);
  }

  v33 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v34 = *(*(v33 - 8) + 56);

  return v34(a2, 1, 1, v33);
}

uint64_t sub_1002D3DEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for AttributedString();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale.MeasurementSystem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for Locale();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MapsFeature_IsEnabled_HikingiOS())
  {
    static Locale.current.getter();
    Locale.measurementSystem.getter();
    (*(v15 + 8))(v17, v14);
    static Locale.MeasurementSystem.us.getter();
    v18 = static Locale.MeasurementSystem.== infix(_:_:)();
    v19 = *(v8 + 8);
    v19(v10, v7);
    v19(v13, v7);
    v20 = objc_opt_self();
    v21 = &selRef_miles;
    if ((v18 & 1) == 0)
    {
      v21 = &selRef_kilometers;
    }

    v22 = [v20 *v21];
    v23 = [v39 _hikeSummary];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 lengthStringForUnit:v22];
      if (v25)
      {
        v26 = v25;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        UUID.init()();
        v27 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
        v29 = v37;
        v28 = v38;
        (*(v37 + 16))(a2 + v27[5], v6, v38);

        (*(v29 + 8))(v6, v28);
        (*(v29 + 56))(a2 + v27[12], 1, 1, v28);
        *(a2 + v27[6]) = xmmword_1011F9080;
        *(a2 + v27[7]) = 0;
        *(a2 + v27[8]) = 0;
        *(a2 + v27[9]) = 0;
        *(a2 + v27[10]) = 0;
        v30 = a2 + v27[11];
        *v30 = 1;
        *(v30 + 8) = 0;
        *(a2 + v27[13]) = _swiftEmptyArrayStorage;
        v31 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v31 - 8) + 56))(a2, 0, 1, v31);
      }
    }

    v35 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
  }

  else
  {
    v33 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v34 = *(*(v33 - 8) + 56);

    return v34(a2, 1, 1, v33);
  }
}

uint64_t sub_1002D42F0@<X0>(void *a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MapsFeature_IsEnabled_HikingiOS())
  {
    v11 = [a1 _hikeSummary];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 *a2];
      if (v13)
      {
        v14 = v13;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        UUID.init()();
        v15 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
        (*(v8 + 16))(a3 + v15[5], v10, v7);

        (*(v8 + 8))(v10, v7);
        (*(v8 + 56))(a3 + v15[12], 1, 1, v7);
        v16 = (a3 + v15[6]);
        *v16 = 0;
        v16[1] = 0;
        *(a3 + v15[7]) = 0;
        *(a3 + v15[8]) = 0;
        *(a3 + v15[9]) = 0;
        *(a3 + v15[10]) = 0;
        v17 = a3 + v15[11];
        *v17 = 1;
        *(v17 + 8) = 0;
        *(a3 + v15[13]) = _swiftEmptyArrayStorage;
        v18 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v18 - 8) + 56))(a3, 0, 1, v18);
      }
    }
  }

  v20 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v21 = *(*(v20 - 8) + 56);

  return v21(a3, 1, 1, v20);
}

uint64_t sub_1002D45F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributedString();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale.MeasurementSystem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  v16 = type metadata accessor for Locale();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MapsFeature_IsEnabled_HikingiOS())
  {
    static Locale.current.getter();
    Locale.measurementSystem.getter();
    (*(v17 + 8))(v19, v16);
    static Locale.MeasurementSystem.us.getter();
    v20 = static Locale.MeasurementSystem.== infix(_:_:)();
    v21 = *(v10 + 8);
    v21(v12, v9);
    v21(v15, v9);
    v22 = objc_opt_self();
    v23 = &selRef_feet;
    if ((v20 & 1) == 0)
    {
      v23 = &selRef_meters;
    }

    v24 = [v22 *v23];
    v25 = [a1 _hikeSummary];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 elevationGainStringForUnit:v24];
      if (v27)
      {
        v28 = v27;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = [v26 elevationLossStringForUnit:v24];
        if (v32)
        {
          v58 = v29;
          v60 = v31;
          v33 = v32;
          v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          if (qword_101906768 != -1)
          {
            swift_once();
          }

          v67._object = 0xA200000000000000;
          v36._object = 0x800000010122CB00;
          v36._countAndFlagsBits = 0xD000000000000011;
          v37._countAndFlagsBits = 16421;
          v37._object = 0xE200000000000000;
          v67._countAndFlagsBits = 47042;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, qword_1019600D8, v37, v67);
          sub_1000CE6B8(&unk_10190D5C0);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1011E1D30;
          *(v38 + 56) = &type metadata for String;
          *(v38 + 64) = sub_1000DA61C();
          *(v38 + 32) = 47042;
          *(v38 + 40) = 0xA200000000000000;
          v57 = static String.localizedStringWithFormat(_:_:)();
          v40 = v39;

          v64 = 0;
          v65 = 0xE000000000000000;
          _StringGuts.grow(_:)(16);

          v64 = 546801378;
          v65 = 0xA400000000000000;
          v41._countAndFlagsBits = v58;
          v41._object = v60;
          String.append(_:)(v41);

          v42._countAndFlagsBits = 32;
          v42._object = 0xE100000000000000;
          String.append(_:)(v42);
          v43._countAndFlagsBits = v57;
          v43._object = v40;
          String.append(_:)(v43);

          v44._countAndFlagsBits = 0x209886E220;
          v44._object = 0xA500000000000000;
          String.append(_:)(v44);
          v45._countAndFlagsBits = v59;
          v45._object = v35;
          String.append(_:)(v45);

          AttributeContainer.init()();
          AttributedString.init(_:attributes:)();
          UUID.init()();
          v46 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
          v48 = v62;
          v47 = v63;
          (*(v62 + 16))(a2 + v46[5], v8, v63);

          (*(v48 + 8))(v8, v47);
          (*(v48 + 56))(a2 + v46[12], 1, 1, v47);
          v49 = (a2 + v46[6]);
          *v49 = 0;
          v49[1] = 0;
          *(a2 + v46[7]) = 0;
          *(a2 + v46[8]) = 0;
          *(a2 + v46[9]) = 0;
          *(a2 + v46[10]) = 0;
          v50 = a2 + v46[11];
          *v50 = 1;
          *(v50 + 8) = 0;
          *(a2 + v46[13]) = _swiftEmptyArrayStorage;
          v51 = type metadata accessor for PlaceSummaryViewModelUnit(0);
          swift_storeEnumTagMultiPayload();
          return (*(*(v51 - 8) + 56))(a2, 0, 1, v51);
        }
      }

      else
      {
      }
    }

    v55 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    return (*(*(v55 - 8) + 56))(a2, 1, 1, v55);
  }

  v53 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v54 = *(*(v53 - 8) + 56);

  return v54(a2, 1, 1, v53);
}

uint64_t sub_1002D4CC8@<X0>(id a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_101906798 != -1)
  {
    swift_once();
  }

  if (byte_101960110 == 1)
  {
    v4 = [objc_opt_self() sharedManager];
    v5 = [v4 lookupMapItem:a1];

    if (v5)
    {

      type metadata accessor for PlaceSummaryViewModelUnit.UserLibrary(0);
      swift_allocObject();
      v6 = a1;
      v7 = 1;
LABEL_8:
      *a2 = sub_10021D97C(v6, v7);
      v10 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      swift_storeEnumTagMultiPayload();
      v11 = *(*(v10 - 8) + 56);
      v12 = a2;
      v13 = 0;
      v14 = v10;
      goto LABEL_10;
    }
  }

  v8 = [a1 _hikeAssociatedInfo];
  if (v8)
  {
    v9 = v8;
    [v8 hasEncryptedTourMuid];

    type metadata accessor for PlaceSummaryViewModelUnit.UserLibrary(0);
    swift_allocObject();
    v6 = a1;
    v7 = 0;
    goto LABEL_8;
  }

  v15 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v11 = *(*(v15 - 8) + 56);
  v14 = v15;
  v12 = a2;
  v13 = 1;
LABEL_10:

  return v11(v12, v13, 1, v14);
}

id sub_1002D4E94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_101906798 != -1)
  {
    swift_once();
  }

  if (byte_101960110 == 1)
  {
    v3 = [objc_opt_self() sharedManager];
    v4 = [v3 lookupMapItem:a1];

    if (v4)
    {
      v5 = [v4 placeItem];
      v6 = dispatch thunk of CollectionPlaceItem.placeItemNote.getter();
      v8 = v7;

      if (v8)
      {
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v6 & 0xFFFFFFFFFFFFLL;
        }

        if (v9)
        {
          type metadata accessor for PlaceSummaryViewModelUnit.UserNote(0);
          v10 = swift_allocObject();
          UUID.init()();

          *(v10 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_mapItem) = a1;
          v11 = (v10 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit8UserNote_userNote);
          *v11 = v6;
          v11[1] = v8;
          *a2 = v10;
          v12 = type metadata accessor for PlaceSummaryViewModelUnit(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v12 - 8) + 56))(a2, 0, 1, v12);

          return a1;
        }
      }
    }
  }

  v14 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  v15 = *(*(v14 - 8) + 56);

  return v15(a2, 1, 1, v14);
}

uint64_t sub_1002D50D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1019067D8 != -1)
  {
    swift_once();
  }

  if (byte_1019601D0 != 1 || a1 == 0)
  {
    v5 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }

  else
  {
    type metadata accessor for PlaceSummaryViewModelUnit.VisitedPlace(0);
    v7 = swift_allocObject();
    v8 = a1;
    UUID.init()();
    *(v7 + OBJC_IVAR____TtCO4Maps25PlaceSummaryViewModelUnit12VisitedPlace_mapItem) = v8;
    swift_beginAccess();
    Published.init(initialValue:)();
    swift_endAccess();
    *a2 = v7;
    v9 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
  }
}

void sub_1002D5280(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, void *a7@<X7>, uint64_t *a8@<X8>, id *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v149 = a6;
  v150 = a3;
  v151 = a2;
  v152 = a8;
  v147 = a11;
  v145 = a10;
  v146 = a9;
  v16 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v16 - 8);
  v148 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AttributedString();
  __chkstk_darwin(v18);
  v22 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 32);
  v164 = *(a1 + 16);
  v165 = v23;
  v24 = *(a1 + 64);
  v166 = *(a1 + 48);
  v167 = v24;
  v25 = *(a1 + 96);
  v168 = *(a1 + 80);
  v169 = v25;
  v26 = *(a1 + 112);
  v170 = v26;
  v27 = v164;
  v28 = *(&v164 + 1) | ((*(&v164 + 5) | (BYTE7(v164) << 16)) << 32);
  v29 = *(&v164 + 1);
  v30 = v164 | (v28 << 8);
  v31 = *(&v25 + 1) >> 60;
  if ((*(&v25 + 1) >> 60) <= 4)
  {
    if (v31 > 1)
    {
      if (v31 == 2)
      {

        v54 = [v151 mapItem];
        if (v54)
        {
          v55 = v54;
          sub_1002CEA28(v27 & 1, v29, v54, a5, 0, v152);
        }

        else
        {
          v82 = type metadata accessor for PlaceSummaryViewModelUnit(0);
          (*(*(v82 - 8) + 56))(v152, 1, 1, v82);
        }

        goto LABEL_61;
      }

      if (v31 != 3)
      {
        v36 = [v151 mapItem];
        if (v36)
        {
          v151 = v36;
          sub_1002CF3D8(v36, 0, v27 & 1, v152);
          goto LABEL_86;
        }

        goto LABEL_104;
      }

      if (v164 == 3)
      {
        sub_1002DA598(v151, a7, v152);
        return;
      }

      v36 = [v151 mapItem];
      if (!v36)
      {
        goto LABEL_104;
      }

      v151 = v36;
      sub_1002D1CD4(v27, v36, v152);
LABEL_86:
      v95 = v151;

      return;
    }

    if (v31)
    {
      sub_1002D67B4(v151, v164 | (v28 << 8), 0, a4, v152);
      return;
    }

    v37 = v22;
    v38 = v20;
    v150 = v19;

    v39 = [v151 mapItem];
    if (v39 && (v40 = v39, v41 = [v39 _secondaryName], v40, v41))
    {
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v45 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (v45)
      {
        AttributeContainer.init()();
        v46 = v37;
        AttributedString.init(_:attributes:)();
        v47 = v152;
        UUID.init()();
        v48 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
        v49 = v150;
        (*(v38 + 16))(v47 + v48[5], v46, v150);
        (*(v38 + 56))(v47 + v48[12], 1, 1, v49);
        (*(v38 + 8))(v46, v49);
        v50 = v47 + v48[6];
        *v50 = v27;
        v50[7] = BYTE6(v28);
        *(v50 + 5) = WORD2(v28);
        *(v50 + 1) = v28;
        *(v50 + 1) = v29;
        *(v47 + v48[7]) = 0;
        *(v47 + v48[8]) = 0;
        *(v47 + v48[9]) = 0;
        *(v47 + v48[10]) = 0;
        v51 = v47 + v48[11];
        *v51 = 1;
        v51[8] = 0;
        v52 = v48[13];
LABEL_22:
        *(v47 + v52) = _swiftEmptyArrayStorage;
        v53 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v53 - 8) + 56))(v47, 0, 1, v53);
        return;
      }

      sub_1002E2938(&v164);
    }

    else
    {
      sub_1002E2938(&v164);
    }

LABEL_46:
    v69 = type metadata accessor for PlaceSummaryViewModelUnit(0);
    (*(*(v69 - 8) + 56))(v152, 1, 1, v69);
    return;
  }

  if (v31 > 7)
  {
    if (v31 == 8)
    {
      v36 = [v151 mapItem];
      if (v36)
      {
        v151 = v36;
        if (v149)
        {
          sub_1002D2018(v27, v36, v152);
          goto LABEL_86;
        }

        goto LABEL_85;
      }

LABEL_104:
      v105 = type metadata accessor for PlaceSummaryViewModelUnit(v36);
      v90 = *(*(v105 - 8) + 56);
      v93 = v105;
      v91 = v152;
      v92 = 1;
      goto LABEL_105;
    }

    if (v31 == 9)
    {
      v36 = [v151 mapItem];
      if (!v36)
      {
        goto LABEL_104;
      }

      v151 = v36;
      sub_1002D289C(v36, v27 | (v28 << 8), v152);
      goto LABEL_86;
    }

    if (*(&v25 + 1) == 0xA000000000000000 && !(v30 | *(&v164 + 1) | v165 | *(&v165 + 1) | v166 | *(&v166 + 1) | v167 | *(&v167 + 1) | v168 | *(&v168 + 1) | v169 | v26))
    {
      v63 = v22;
      v64 = v20;
      v65 = v19;
      v66 = [v151 mapItem];
      if (v66)
      {
        v67 = v66;
        v68 = [v66 name];
        goto LABEL_55;
      }

      goto LABEL_103;
    }

    v70 = v165 | *(&v164 + 1) | *(&v165 + 1) | v166 | *(&v166 + 1) | v167 | *(&v167 + 1) | v168 | *(&v168 + 1) | v169;
    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 1 && !v70)
    {
      v63 = v22;
      v64 = v20;
      v65 = v19;
      v71 = [v151 mapItem];
      if (v71)
      {
        v67 = v71;
        v68 = [v71 _firstLocalizedCategoryName];
LABEL_55:
        v72 = v68;

        if (v72)
        {
          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v75 = v74;

          v76 = HIBYTE(v75) & 0xF;
          if ((v75 & 0x2000000000000000) == 0)
          {
            v76 = v73 & 0xFFFFFFFFFFFFLL;
          }

          if (v76)
          {
            AttributeContainer.init()();
            AttributedString.init(_:attributes:)();
            v77 = v152;
            UUID.init()();
            v78 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
            (*(v64 + 16))(v77 + v78[5], v63, v65);
            (*(v64 + 56))(v77 + v78[12], 1, 1, v65);
            (*(v64 + 8))(v63, v65);
            v79 = (v77 + v78[6]);
            *v79 = 0;
            v79[1] = 0;
            *(v77 + v78[7]) = 0;
            *(v77 + v78[8]) = 0;
            *(v77 + v78[9]) = 0;
            *(v77 + v78[10]) = 0;
            v80 = v77 + v78[11];
            *v80 = 1;
            v80[8] = 0;
            *(v77 + v78[13]) = _swiftEmptyArrayStorage;
            v81 = type metadata accessor for PlaceSummaryViewModelUnit(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v81 - 8) + 56))(v77, 0, 1, v81);
            return;
          }
        }
      }

LABEL_103:
      v36 = 0;
      goto LABEL_104;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 2 && !v70)
    {
      v83 = v22;
      v84 = v20;
      v85 = v19;
      v36 = [v151 mapItem];
      if (!v36)
      {
        goto LABEL_104;
      }

      v86 = v36;
      if ([v36 _hasPriceDescription])
      {
        v87 = [v86 _priceDescription];
      }

      else
      {
        v87 = [v86 _priceRangeString];
      }

      v96 = v87;
      if (v96)
      {
        v97 = v96;
        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v100 = v99;

        v101 = HIBYTE(v100) & 0xF;
        if ((v100 & 0x2000000000000000) == 0)
        {
          v101 = v98 & 0xFFFFFFFFFFFFLL;
        }

        if (v101)
        {
LABEL_94:
          AttributeContainer.init()();
          AttributedString.init(_:attributes:)();
          v47 = v152;
          UUID.init()();
          v102 = type metadata accessor for PlaceSummaryViewModelUnit.Label(0);
          (*(v84 + 16))(v47 + v102[5], v83, v85);
          (*(v84 + 56))(v47 + v102[12], 1, 1, v85);

          (*(v84 + 8))(v83, v85);
          v103 = (v47 + v102[6]);
          *v103 = 0;
          v103[1] = 0;
          *(v47 + v102[7]) = 0;
          *(v47 + v102[8]) = 0;
          *(v47 + v102[9]) = 0;
          *(v47 + v102[10]) = 0;
          v104 = v47 + v102[11];
          *v104 = 1;
          v104[8] = 0;
          v52 = v102[13];
          goto LABEL_22;
        }
      }

LABEL_102:

      goto LABEL_103;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 3 && !v70)
    {
      v36 = [v151 mapItem];
      if (!v36)
      {
        goto LABEL_104;
      }

      v86 = v36;
      if ([v36 _hasTransitLabels])
      {
        v88 = v152;
        UUID.init()();
        *(v88 + *(type metadata accessor for PlaceSummaryViewModelUnit.TransitShields(0) + 20)) = v86;
        v89 = type metadata accessor for PlaceSummaryViewModelUnit(0);
        swift_storeEnumTagMultiPayload();
        v90 = *(*(v89 - 8) + 56);
        v91 = v88;
        v92 = 0;
        v93 = v89;
LABEL_105:

        v90(v91, v92, 1, v93);
        return;
      }

      goto LABEL_102;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 4 && !v70)
    {
      v36 = [v151 mapItem];
      if (v36)
      {
        v151 = v36;
        if (v149)
        {
          sub_1002CFB28(v36, v152);
          goto LABEL_86;
        }

        goto LABEL_85;
      }

      goto LABEL_104;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 5 && !v70)
    {
      v36 = [v151 mapItem];
      if (v36)
      {
        v151 = v36;
        sub_1002D07B4(v36, v152);
        goto LABEL_86;
      }

      goto LABEL_104;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 6 && !v70)
    {
      v36 = [v151 mapItem];
      if (!v36)
      {
        goto LABEL_104;
      }

      v151 = v36;
      sub_1002D0A4C(v36, v152);
      goto LABEL_86;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 7 && !v70)
    {
      sub_1002D7E8C(v147, v152);
      return;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 8 && !v70)
    {
      v83 = v22;
      v84 = v20;
      v85 = v19;
      v106 = v146;
      swift_beginAccess();
      if (*v106)
      {
        v86 = *v106;
        v107 = [v86 titleCellString];
        if (!v107)
        {
          goto LABEL_136;
        }

        goto LABEL_132;
      }

      v115 = v151;
      v116 = [v151 title];
      v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;

      v120 = [v115 titleHighlightRanges];
      sub_100014C84(0, &unk_101918A40);
      v121 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v122 = *(v145 + OBJC_IVAR____TtC4Maps29PlaceSummaryTextHighlightType_type);
      v123 = v152;
      v124 = v117;
      v125 = v119;
      v126 = v121;
      v127 = 1;
      goto LABEL_150;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 9 && !v70)
    {
      v83 = v22;
      v84 = v20;
      v85 = v19;
      v108 = v146;
      swift_beginAccess();
      if (*v108)
      {
        v86 = *v108;
        v107 = [v86 subtitleCellString];
        if (!v107)
        {
LABEL_136:

          goto LABEL_46;
        }

LABEL_132:
        v109 = v107;
        v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v112 = v111;

        v113 = HIBYTE(v112) & 0xF;
        if ((v112 & 0x2000000000000000) == 0)
        {
          v113 = v110 & 0xFFFFFFFFFFFFLL;
        }

        if (v113)
        {
          goto LABEL_94;
        }

        goto LABEL_136;
      }

      v128 = v151;
      v129 = [v151 subtitle];
      v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v132 = v131;

      v133 = [v128 subtitleHighlightRanges];
      sub_100014C84(0, &unk_101918A40);
      v134 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v123 = v152;
      v124 = v130;
      v125 = v132;
      v126 = v134;
      v122 = 0;
      v127 = 0;
LABEL_150:
      sub_1002D6C7C(v124, v125, v126, v122, v127, v123);

      return;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 10 && !v70)
    {
      v114 = &selRef_displayName;
LABEL_142:
      sub_1002D7A88(v151, v114, v152);
      return;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 11 && !v70)
    {
      sub_1002D763C(v151, v152);
      return;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 12 && !v70)
    {
      v114 = &selRef_subtitle;
      goto LABEL_142;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 13 && !v70)
    {
      v151 = [v151 mapItem];
      sub_1002D0464(v151, v152);
      goto LABEL_86;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 14 && !v70)
    {
      goto LABEL_103;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 15 && !v70)
    {
      v36 = [v151 mapItem];
      v151 = v36;
      if (!v36)
      {
        goto LABEL_104;
      }

      if (MapsFeature_IsEnabled_HikingWatch())
      {
        v135 = [v151 _hikingTrailDifficultyFactoid];
        if (v135)
        {
          goto LABEL_180;
        }
      }

      goto LABEL_181;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 16 && !v70)
    {
      v36 = [v151 mapItem];
      v151 = v36;
      if (!v36)
      {
        goto LABEL_104;
      }

      if (MapsFeature_IsEnabled_HikingWatch())
      {
        v135 = [v151 _hikingTrailLengthFactoid];
        if (v135)
        {
LABEL_180:
          v136 = v135;
          v137 = [objc_opt_self() viewModelForFactoid:v135];
          sub_1002DABE8(v137, v152);

          goto LABEL_86;
        }
      }

LABEL_181:

      goto LABEL_103;
    }

    if (!v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 17 && !v70)
    {
      goto LABEL_103;
    }

    if (v26 || *(&v25 + 1) != 0xA000000000000000 || v30 != 18 || v70)
    {
      if (v26 || *(&v25 + 1) != 0xA000000000000000 || v30 != 19 || v70)
      {
        if (v26 || *(&v25 + 1) != 0xA000000000000000 || v30 != 20 || v70)
        {
          if (v26 || *(&v25 + 1) != 0xA000000000000000 || v30 != 21 || v70)
          {
            if ((v26 || *(&v25 + 1) != 0xA000000000000000 || v30 != 22 || v70) && (v26 || *(&v25 + 1) != 0xA000000000000000 || v30 != 23 || v70) && !v26 && *(&v25 + 1) == 0xA000000000000000 && v30 == 24 && !v70)
            {
              v151 = [v151 mapItem];
              sub_1002D50D4(v151, v152);
              goto LABEL_86;
            }

            goto LABEL_103;
          }

          v143 = [v151 mapItem];
          if (v143)
          {
            v151 = v143;
            sub_1002D45F4(v143, v152);
            goto LABEL_86;
          }

LABEL_228:
          __break(1u);
          return;
        }

        v142 = [v151 mapItem];
        if (v142)
        {
          v139 = v142;
          v140 = &selRef_durationString;
          goto LABEL_192;
        }

LABEL_227:
        __break(1u);
        goto LABEL_228;
      }

      v141 = [v151 mapItem];
      if (v141)
      {
        v151 = v141;
        sub_1002D3DEC(v141, v152);
        goto LABEL_86;
      }
    }

    else
    {
      v138 = [v151 mapItem];
      if (v138)
      {
        v139 = v138;
        v140 = &selRef_hikeTypeNameString;
LABEL_192:
        v151 = v139;
        sub_1002D42F0(v139, v140, v152);
        goto LABEL_86;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_227;
  }

  if (v31 == 5)
  {
    v36 = [v151 mapItem];
    if (v36)
    {
      v151 = v36;
      if (v149)
      {
        sub_1002CFC90(v27 | (v28 << 8), v36, v152);
        goto LABEL_86;
      }

LABEL_85:
      v94 = type metadata accessor for PlaceSummaryViewModelUnit(0);
      (*(*(v94 - 8) + 56))(v152, 1, 1, v94);
      goto LABEL_86;
    }

    goto LABEL_104;
  }

  if (v31 == 6)
  {
    LOBYTE(v157) = v164;
    *(&v157 + 1) = *(&v164 + 1);
    BYTE7(v157) = (*(&v164 + 1) | ((*(&v164 + 5) | (BYTE7(v164) << 16)) << 32)) >> 48;
    *(&v157 + 5) = *(&v164 + 5);
    *(&v157 + 1) = *(&v164 + 1);
    v158 = v165;
    v159 = v166;
    v160 = v167;
    v161 = v168;
    *&v162 = v169;
    *(&v162 + 1) = *(&v25 + 1) & 0xFFFFFFFFFFFFFFFLL;
    v163 = v26;
    v32 = *(a1 + 96);
    v154[4] = *(a1 + 80);
    v155 = v32;
    v33 = *(a1 + 112);
    v34 = *(a1 + 32);
    v154[0] = *(a1 + 16);
    v154[1] = v34;
    v35 = *(a1 + 64);
    v154[2] = *(a1 + 48);
    v154[3] = v35;
    *(&v155 + 1) &= 0xFFFFFFFFFFFFFFFuLL;
    v156 = v33;
    sub_1002E28DC(v154, &v153);
    sub_1002D0BB8(&v157, v149 & 1, v152);
LABEL_61:
    sub_1002E2938(&v164);
    return;
  }

  if (!a12)
  {
    goto LABEL_103;
  }

  v56 = *(a12 + 16);
  if (!v56)
  {
    goto LABEL_103;
  }

  v57 = (a12 + 32);
  while (1)
  {
    v58 = v57[5];
    v59 = *(v57 + 12);
    v60 = v57[3];
    v161 = v57[4];
    v61 = v57[1];
    v62 = v57[2];
    v157 = *v57;
    v158 = v61;
    v163 = v59;
    v162 = v58;
    v159 = v62;
    v160 = v60;
    if ((BYTE8(v161) & 1) == 0 && v161 == v30)
    {
      break;
    }

    v57 = (v57 + 104);
    if (!--v56)
    {
      goto LABEL_103;
    }
  }

  sub_1002E28DC(&v157, v154);
  sub_1002D0BB8(&v157, 1, v152);
  sub_1002E2888(&v157);
}