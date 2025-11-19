uint64_t sub_1001B2F20(uint64_t a1, void *a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v46 = a3;
  v47 = a7;
  v40 = a1;
  v12 = sub_100164A3C(&qword_1002D7178, &unk_10024B0C0);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v38 - v14;
  v16 = sub_100164A3C(&qword_1002D79C8, &qword_10024BA30);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v38 - v19;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = a2[4];
  v44 = a2[3];
  v42 = v21;
  v43 = sub_100014E1C(a2, v44);
  (*(v17 + 16))(v20, v40, v16);
  sub_10001A718(a5, v15, &qword_1002D7178, &unk_10024B0C0);
  v22 = *(v17 + 80);
  v39 = v15;
  v40 = a6;
  v23 = (v22 + 16) & ~v22;
  v24 = (v18 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v41 + 80) + v24 + 208) & ~*(v41 + 80);
  v26 = (v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v17 + 32))(v27 + v23, v20, v16);
  v28 = (v27 + v24);
  v29 = a4[11];
  v28[10] = a4[10];
  v28[11] = v29;
  v28[12] = a4[12];
  v30 = a4[7];
  v28[6] = a4[6];
  v28[7] = v30;
  v31 = a4[9];
  v28[8] = a4[8];
  v28[9] = v31;
  v32 = a4[3];
  v28[2] = a4[2];
  v28[3] = v32;
  v33 = a4[5];
  v28[4] = a4[4];
  v28[5] = v33;
  v34 = a4[1];
  *v28 = *a4;
  v28[1] = v34;
  sub_100191E28(v39, v27 + v25, &qword_1002D7178, &unk_10024B0C0);
  *(v27 + v26) = v40;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;
  v35 = v42;
  v36 = *(v42 + 8);

  v36(v46, 20, 4, sub_1001B9A68, v27, v47, v44, v35);
}

uint64_t sub_1001B3238(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v133 = a5;
  v143 = a4;
  v144 = a3;
  v148 = a2;
  v8 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v132 = &v128 - v10;
  v11 = sub_100164A3C(&qword_1002D7178, &unk_10024B0C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v142 = &v128 - v13;
  v145 = type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(0);
  v141 = *(v145 - 1);
  v14 = *(v141 + 64);
  v15 = __chkstk_darwin(v145);
  v131 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v138 = &v128 - v17;
  v18 = sub_100164A3C(&unk_1002D79D0, &unk_10024BA38);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v153 = &v128 - v20;
  v155 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  v152 = *(v155 - 8);
  v21 = *(v152 + 64);
  v22 = __chkstk_darwin(v155);
  v134 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v154 = &v128 - v25;
  __chkstk_darwin(v24);
  v151 = &v128 - v26;
  v27 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = (&v128 - v29);
  v31 = type metadata accessor for Date();
  v150 = *(v31 - 8);
  v32 = *(v150 + 64);
  v33 = __chkstk_darwin(v31);
  v137 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v128 - v35;
  v37 = type metadata accessor for Logger();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v130 = &v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v129 = &v128 - v43;
  v44 = __chkstk_darwin(v42);
  v46 = &v128 - v45;
  __chkstk_darwin(v44);
  v48 = &v128 - v47;
  v146 = a6;
  sub_100003E50(&off_1002B70B0, &v128 - v47);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();
  v51 = os_log_type_enabled(v49, v50);
  v156 = a1;
  v149 = v46;
  if (v51)
  {
    v52 = swift_slowAlloc();
    *v52 = 134217984;
    if (a1)
    {
      if (a1 >> 62)
      {
        v126 = v31;
        v127 = v52;
        v53 = _CocoaArrayWrapper.endIndex.getter();
        v52 = v127;
        v31 = v126;
      }

      else
      {
        v53 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v53 = 0;
    }

    *(v52 + 4) = v53;
    v54 = v52;
    a1 = v156;

    _os_log_impl(&_mh_execute_header, v49, v50, "Obtained %ld suggestions", v54, 0xCu);

    v46 = v149;
  }

  else
  {
  }

  v56 = *(v38 + 8);
  v55 = v38 + 8;
  v147 = v56;
  v56(v48, v37);
  v57 = v153;
  if (!a1)
  {
    v158 = _swiftEmptyArrayStorage;
    v159 = _swiftEmptyArrayStorage;
    sub_100164A3C(&qword_1002D79C8, &qword_10024BA30);
    return CheckedContinuation.resume(returning:)();
  }

  v58 = Date.init()();
  v158 = _swiftEmptyArrayStorage;
  v128 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_68;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v58)
  {
    v157 = i;
    v140 = v37;
    v139 = v55;
    if (i)
    {
      v135 = v36;
      v46 = 0;
      v36 = v156;
      v57 = v156 & 0xC000000000000001;
      v55 = v156 & 0xFFFFFFFFFFFFFF8;
      v60 = (v150 + 56);
      while (1)
      {
        if (v57)
        {
          v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v46 >= *(v55 + 16))
          {
            goto LABEL_65;
          }

          v61 = *&v36[8 * v46 + 32];
        }

        v62 = v61;
        v37 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        v63 = [v61 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
        if (v63)
        {
          v64 = v63;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          (*v60)(v30, 0, 1, v31);
          sub_1000157F0(v30, &unk_1002D7BD0, &unk_10024A800);
          v65 = [v62 numberForKey:@"MapsSuggestionsLatitudeKey"];
          if (v65 && (v65, (v66 = [v62 numberForKey:@"MapsSuggestionsLongitudeKey"]) != 0))
          {

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v67 = v31;
            v68 = v158[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v31 = v67;
            v36 = v156;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v58 = specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          i = v157;
        }

        else
        {

          (*v60)(v30, 1, 1, v31);
          v58 = sub_1000157F0(v30, &unk_1002D7BD0, &unk_10024A800);
        }

        ++v46;
        if (v37 == i)
        {
          v36 = v135;
          v37 = v140;
          v57 = v153;
          v46 = v149;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_28:
    __chkstk_darwin(v58);
    v70 = v144;
    *(&v128 - 4) = v36;
    *(&v128 - 3) = v70;
    *(&v128 - 2) = v146;
    v135 = v71;
    v72 = sub_1001B4F5C(sub_1001B9B9C, (&v128 - 6), v71);
    sub_100003E50(&off_1002B70B0, v46);

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();

    v75 = os_log_type_enabled(v73, v74);
    v136 = v31;
    v144 = v72;
    if (!v75)
    {

      v147(v46, v37);
      if (!v157)
      {
        break;
      }

      goto LABEL_32;
    }

    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v158 = v77;
    *v76 = 134218242;
    v78 = v128 ? _CocoaArrayWrapper.endIndex.getter() : *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v76 + 4) = v78;

    *(v76 + 12) = 2080;
    type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
    v87 = Array.description.getter();
    v89 = sub_10017A8A8(v87, v88, &v158);

    *(v76 + 14) = v89;
    _os_log_impl(&_mh_execute_header, v73, v74, "Filtered %ld suggestions to %s", v76, 0x16u);
    sub_100164B98(v77);

    v147(v149, v37);
    v57 = v153;
    if (!v157)
    {
      break;
    }

LABEL_32:
    v79 = 0;
    v31 = v156 & 0xC000000000000001;
    v80 = v156 & 0xFFFFFFFFFFFFFF8;
    v55 = v152 + 48;
    v30 = _swiftEmptyArrayStorage;
    v46 = &unk_10024BA38;
    while (1)
    {
      if (v31)
      {
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v79 >= *(v80 + 16))
        {
          goto LABEL_67;
        }

        v81 = *(v156 + 8 * v79 + 32);
      }

      v82 = v81;
      v37 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      v158 = v81;
      sub_1001B52EC(&v158, v57);

      if ((*v55)(v57, 1, v155) == 1)
      {
        sub_1000157F0(v57, &unk_1002D79D0, &unk_10024BA38);
      }

      else
      {
        v83 = v57;
        v84 = v151;
        sub_1001B88C0(v83, v151, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
        sub_1001B88C0(v84, v154, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1001B77F0(0, v30[2] + 1, 1, v30, &qword_1002D79E0, &qword_10024BA58, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
        }

        v86 = v30[2];
        v85 = v30[3];
        if (v86 >= v85 >> 1)
        {
          v30 = sub_1001B77F0(v85 > 1, v86 + 1, 1, v30, &qword_1002D79E0, &qword_10024BA58, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
        }

        v30[2] = v86 + 1;
        sub_1001B88C0(v154, v30 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v86, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
        v57 = v153;
      }

      ++v79;
      if (v37 == v157)
      {
        goto LABEL_49;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v58 = _CocoaArrayWrapper.endIndex.getter();
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_49:

  v90 = v142;
  sub_10001A718(v143, v142, &qword_1002D7178, &unk_10024B0C0);
  if ((*(v141 + 48))(v90, 1, v145) == 1)
  {
    sub_1000157F0(v90, &qword_1002D7178, &unk_10024B0C0);
    v91 = v136;
    v92 = v36;
    v93 = v144;
  }

  else
  {
    v94 = v138;
    sub_1001B88C0(v90, v138, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
    v95 = v137;
    static Date.now.getter();
    v96 = static Date.< infix(_:_:)();
    v91 = v136;
    (*(v150 + 8))(v95, v136);
    v92 = v36;
    if (v96)
    {
      v97 = v129;
      sub_100003E50(&off_1002B70B0, v129);
      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&_mh_execute_header, v98, v99, "Simulated flight travel start time is in the past, removing", v100, 2u);
      }

      v147(v97, v140);
      v101 = type metadata accessor for TaskPriority();
      v102 = v132;
      (*(*(v101 - 8) + 56))(v132, 1, 1, v101);
      v103 = swift_allocObject();
      v103[2] = 0;
      v103[3] = 0;
      v103[4] = v133;

      sub_100176B80(0, 0, v102, &unk_10024BA50, v103);

      sub_1001B8860(v94, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
      v93 = v144;
    }

    else
    {
      v104 = v130;
      sub_100003E50(&off_1002B70B0, v130);
      v105 = v131;
      sub_1001B87F8(v94, v131, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v158 = v109;
        *v108 = 136315138;
        v110 = sub_1001A5354();
        v111 = v105;
        v113 = v112;
        sub_1001B8860(v111, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
        v114 = sub_10017A8A8(v110, v113, &v158);

        *(v108 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v106, v107, "Adding simulated flight travel entry %s", v108, 0xCu);
        sub_100164B98(v109);

        v91 = v136;
        v92 = v36;
      }

      else
      {

        sub_1001B8860(v105, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
      }

      v147(v104, v140);
      v115 = v134;
      static Date.now.getter();
      v116 = *(v94 + v145[5]);
      v117 = *(v94 + v145[6]);
      v118 = *(v94 + v145[7]);
      v119 = *(v94 + v145[8]);
      v120 = v155;
      (*(v150 + 16))(v115 + *(v155 + 52), v94, v91);
      v121 = v115 + v120[14];
      static Date.+ infix(_:_:)();
      *(v115 + v120[5]) = 1;
      *(v115 + v120[6]) = 0;
      v122 = (v115 + v120[7]);
      *v122 = 0xD000000000000013;
      v122[1] = 0x800000010025D7A0;
      *(v115 + v120[8]) = v116;
      *(v115 + v120[9]) = v117;
      v123 = (v115 + v120[10]);
      *v123 = 0xD000000000000011;
      v123[1] = 0x800000010025D7C0;
      *(v115 + v120[11]) = v118;
      *(v115 + v120[12]) = v119;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1001B77F0(0, v30[2] + 1, 1, v30, &qword_1002D79E0, &qword_10024BA58, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      }

      v93 = v144;
      v125 = v30[2];
      v124 = v30[3];
      if (v125 >= v124 >> 1)
      {
        v30 = sub_1001B77F0(v124 > 1, v125 + 1, 1, v30, &qword_1002D79E0, &qword_10024BA58, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      }

      sub_1001B8860(v94, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
      v30[2] = v125 + 1;
      sub_1001B88C0(v115, v30 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v125, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
    }
  }

  v158 = v93;
  v159 = v30;
  sub_100164A3C(&qword_1002D79C8, &qword_10024BA30);
  CheckedContinuation.resume(returning:)();
  return (*(v150 + 8))(v92, v91);
}

uint64_t sub_1001B44C4@<X0>(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v95 = a3;
  v92 = a2;
  v105 = a4;
  v5 = type metadata accessor for Logger();
  v97 = *(v5 - 8);
  v98 = v5;
  v6 = *(v97 + 64);
  __chkstk_darwin(v5);
  v8 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v99 = (v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v15 = v88 - v14;
  v16 = __chkstk_darwin(v13);
  v102 = v88 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = v88 - v19;
  v21 = __chkstk_darwin(v18);
  v100 = v88 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = v88 - v24;
  __chkstk_darwin(v23);
  v103 = v88 - v26;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v96 = v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v94 = v88 - v33;
  v34 = __chkstk_darwin(v32);
  v93 = v88 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = v88 - v37;
  __chkstk_darwin(v36);
  v104 = v88 - v39;
  v40 = *a1;
  v41 = [v40 numberForKey:@"MapsSuggestionsLatitudeKey"];
  if (!v41)
  {
    goto LABEL_8;
  }

  v101 = v41;
  v42 = [v40 numberForKey:@"MapsSuggestionsLongitudeKey"];
  if (!v42)
  {

LABEL_8:
    v49 = type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
    v50 = *(*(v49 - 8) + 56);
    v51 = v49;
    v52 = v105;

    return v50(v52, 1, 1, v51);
  }

  v91 = v42;
  v43 = [v40 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
  if (!v43)
  {
LABEL_12:

LABEL_13:
    v54 = type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
    return (*(*(v54 - 8) + 56))(v105, 1, 1, v54);
  }

  v44 = v43;
  v90 = v8;
  v45 = v104;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001B840C(&qword_1002D71E0, 255, &type metadata accessor for Date);
  if ((dispatch thunk of static Comparable.>= infix(_:_:)() & 1) == 0)
  {
    (*(v28 + 8))(v45, v27);
    goto LABEL_12;
  }

  v88[3] = [v40 BOOLeanForKey:@"MapsSuggestionsCalendarIsSharedToMeKey"];
  v46 = [v40 dateForKey:@"MapsSuggestionsScheduledEndTimeKey"];
  if (v46)
  {
    v47 = v46;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v55 = v28;
  v56 = *(v28 + 56);
  v57 = 1;
  v56(v25, v48, 1, v27);
  sub_100191E28(v25, v103, &unk_1002D7BD0, &unk_10024A800);
  v58 = [v40 type] - 1;
  v89 = v28;
  if (v58 <= 0xF)
  {
    if ((0xB18Bu >> v58))
    {
      v59 = *(v92 + qword_10024C540[v58]);
      v55 = v89;
      (*(v89 + 16))(v38, v104, v27);
      Date.init(timeInterval:since:)();
      v57 = 0;
    }

    else
    {
      v55 = v89;
    }
  }

  v56(v20, v57, 1, v27);
  v60 = v100;
  sub_100191E28(v20, v100, &unk_1002D7BD0, &unk_10024A800);
  sub_10001A718(v103, v15, &unk_1002D7BD0, &unk_10024A800);
  v61 = *(v55 + 48);
  if (v61(v15, 1, v27) == 1)
  {
    sub_10001A718(v60, v102, &unk_1002D7BD0, &unk_10024A800);
    v62 = v61(v15, 1, v27);
    v63 = v99;
    if (v62 != 1)
    {
      sub_1000157F0(v15, &unk_1002D7BD0, &unk_10024A800);
    }
  }

  else
  {
    v64 = v102;
    (*(v55 + 32))(v102, v15, v27);
    v56(v64, 0, 1, v27);
    v63 = v99;
  }

  sub_10001A718(v102, v63, &unk_1002D7BD0, &unk_10024A800);
  if (v61(v63, 1, v27) == 1)
  {
    sub_1000157F0(v63, &unk_1002D7BD0, &unk_10024A800);
    sub_100003E50(&off_1002B70B0, v90);
    v65 = v40;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 134217984;
      *(v68 + 4) = [v65 type];

      _os_log_impl(&_mh_execute_header, v66, v67, "No duration estimate for entry type %ld", v68, 0xCu);
    }

    else
    {
    }

    v87 = v104;

    (*(v97 + 8))(v90, v98);
    sub_1000157F0(v102, &unk_1002D7BD0, &unk_10024A800);
    sub_1000157F0(v60, &unk_1002D7BD0, &unk_10024A800);
    (*(v89 + 8))(v87, v27);
    sub_1000157F0(v103, &unk_1002D7BD0, &unk_10024A800);
    goto LABEL_13;
  }

  v99 = *(v89 + 32);
  v69 = v93;
  v99(v93, v63, v27);
  v70 = v101;
  [v101 doubleValue];
  v72 = v71;
  v73 = v91;
  [v91 doubleValue];
  v75 = v74;
  [v40 type];
  LODWORD(v98) = sub_1001B7E84();
  v76 = [v40 originatingSourceName];
  v77 = v61;
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  LOBYTE(v80) = sub_1001B7F48(v78, v80);
  sub_1000157F0(v102, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v100, &unk_1002D7BD0, &unk_10024A800);
  v81 = v94;
  v82 = v99;
  v99(v94, v104, v27);
  v83 = v96;
  v82(v96, v69, v27);
  v84 = v103;
  LOBYTE(v69) = v77(v103, 1, v27) == 1;
  v85 = v105;
  *v105 = v72;
  v85[1] = v75;
  *(v85 + 16) = v98;
  *(v85 + 17) = v80;
  v86 = type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
  v82(v85 + v86[8], v81, v27);
  v82(v85 + v86[9], v83, v27);
  *(v85 + v86[10]) = v69;
  sub_1000157F0(v84, &unk_1002D7BD0, &unk_10024A800);
  return (*(*(v86 - 1) + 56))(v85, 0, 1, v86);
}

void *sub_1001B4F5C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v33 = a1;
  v5 = sub_100164A3C(&qword_1002D79E8, &qword_10024BA60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v24 - v7;
  v32 = type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
  v27 = *(v32 - 8);
  v9 = *(v27 + 64);
  v10 = __chkstk_darwin(v32);
  v31 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v26 = &v24 - v12;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = a3 & 0xC000000000000001;
    v15 = (v27 + 48);
    v16 = _swiftEmptyArrayStorage;
    v25 = a3;
    v28 = i;
    while (1)
    {
      if (v30)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v29 + 16))
        {
          goto LABEL_20;
        }

        v17 = *(a3 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v34 = v17;
      v33(&v34);
      if (v3)
      {

        return v16;
      }

      if ((*v15)(v8, 1, v32) == 1)
      {
        sub_1000157F0(v8, &qword_1002D79E8, &qword_10024BA60);
      }

      else
      {
        v20 = v26;
        sub_1001B88C0(v8, v26, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        sub_1001B88C0(v20, v31, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1001B77F0(0, v16[2] + 1, 1, v16, &unk_1002D79F0, &qword_10024BA68, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_1001B77F0(v21 > 1, v22 + 1, 1, v16, &unk_1002D79F0, &qword_10024BA68, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        }

        v16[2] = v22 + 1;
        sub_1001B88C0(v31, v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        a3 = v25;
      }

      ++v14;
      if (v19 == v28)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001B52EC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v61 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v61 - v14;
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  v18 = *a1;
  if ([*a1 type] == 15)
  {
    v19 = [v18 stringForKey:@"MapsSuggestionsFlightDepartureAirportCodeKey"];
    if (v19)
    {
      v65 = v5;
      v20 = v19;
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = [v18 numberForKey:@"MapsSuggestionsLatitudeKey"];
      if (v23)
      {
        v66 = v22;
        v24 = v23;
        [v23 doubleValue];
        v26 = v25;

        v27 = [v18 numberForKey:@"MapsSuggestionsLongitudeKey"];
        if (v27)
        {
          v28 = v27;
          [v27 doubleValue];
          v30 = v29;

          v31 = [v18 stringForKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];
          if (v31)
          {
            v32 = v31;
            v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v34 = v33;

            v35 = [v18 numberForKey:@"MapsSuggestionsFlightArrivalAirportLatitudeKey"];
            if (v35)
            {
              v63 = v34;
              v36 = v35;
              [v35 doubleValue];
              v38 = v37;

              v39 = [v18 numberForKey:@"MapsSuggestionsFlightArrivalAirportLongitudeKey"];
              if (v39)
              {
                v40 = v39;
                [v39 doubleValue];
                v42 = v41;

                v43 = [v18 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
                if (v43)
                {
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v44 = v65;
                  v45 = *(v65 + 32);
                  v45(v17, v15, v4);
                  v46 = [v18 dateForKey:@"MapsSuggestionsScheduledEndTimeKey"];
                  if (v46)
                  {
                    v47 = v45;
                    v48 = v46;
                    static Date._unconditionallyBridgeFromObjectiveC(_:)();

                    v47(v12, v9, v4);
                    static Date.now.getter();
                    v49 = [v18 BOOLeanForKey:@"MapsSuggestionsAlreadyThereKey"];
                    v50 = [v18 originatingSourceName];
                    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v53 = v52;

                    LOBYTE(v50) = sub_1001B7F48(v51, v53);
                    v54 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
                    v47((a2 + v54[13]), v17, v4);
                    v47((a2 + v54[14]), v12, v4);
                    *(a2 + v54[5]) = v49;
                    *(a2 + v54[6]) = v50;
                    v55 = (a2 + v54[7]);
                    v56 = v66;
                    *v55 = v64;
                    v55[1] = v56;
                    *(a2 + v54[8]) = v26;
                    *(a2 + v54[9]) = v30;
                    v57 = (a2 + v54[10]);
                    v58 = v63;
                    *v57 = v62;
                    v57[1] = v58;
                    *(a2 + v54[11]) = v38;
                    *(a2 + v54[12]) = v42;
                    return (*(*(v54 - 1) + 56))(a2, 0, 1, v54);
                  }

                  (*(v44 + 8))(v17, v4);
                }
              }
            }
          }
        }
      }
    }
  }

  v60 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  return (*(*(v60 - 8) + 56))(a2, 1, 1, v60);
}

uint64_t sub_1001B5828(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = *a4 + 688;
  v4[3] = *v5;
  v4[4] = v5 & 0xFFFFFFFFFFFFLL | 0xB072000000000000;
  return _swift_task_switch(sub_1001995E8, a4, 0);
}

uint64_t sub_1001B586C(char a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v1;
  *(v8 + 40) = a1;

  sub_100176B80(0, 0, v6, &unk_10024B138, v8);
}

uint64_t sub_1001B597C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  v6 = *a4 + 664;
  *(v5 + 24) = *v6;
  *(v5 + 32) = v6 & 0xFFFFFFFFFFFFLL | 0x44D4000000000000;
  return _swift_task_switch(sub_1001B59C4, a4, 0);
}

uint64_t sub_1001B59C4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))(*(v0 + 40));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001B5A2C(char a1)
{
  v3 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v1;
  *(v8 + 40) = a1;

  sub_100176B80(0, 0, v6, &unk_10024B148, v8);
}

uint64_t sub_1001B5B3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  v6 = *a4 + 672;
  *(v5 + 24) = *v6;
  *(v5 + 32) = v6 & 0xFFFFFFFFFFFFLL | 0xC797000000000000;
  return _swift_task_switch(sub_1001B5B84, a4, 0);
}

uint64_t sub_1001B5B84()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))(*(v0 + 40));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001B5BEC(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(sub_1001B5C10, v2, 0);
}

uint64_t sub_1001B5C10()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 232);
  v3 = *(v1 + 240);
  v4 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v0 + 16) longitude:*(v0 + 24)];
  *(v0 + 40) = v4;
  v8 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1001B5D3C;

  return v8(v4);
}

uint64_t sub_1001B5D3C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v9 = *v2;

  v7 = *(v9 + 8);

  return v7(a1, a2);
}

uint64_t *sub_1001B5E60()
{
  sub_1000157F0((v0 + 14), &qword_1002D7168, &qword_10024B0B8);
  sub_100164B98(v0 + 19);
  sub_100164B98(v0 + 24);
  v1 = v0[30];

  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_simulatedFlightTravelLocation, &qword_1002D7178, &unk_10024B0C0);
  sub_1001B8A60(v0 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_delegate);

  v2 = *(v0 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_locationControllerFactory + 8);

  v3 = *(v0 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentPredictions);

  v4 = *(v0 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_registrationTimeCounter);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001B5F54()
{
  sub_1001B5E60();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001B5F80@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for MapsSuggestionController(0);

  return sub_100003E50(a1, a2);
}

unint64_t sub_1001B6064()
{
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10024B050;
  *(v1 + 32) = 0x6F6E6B6E556D756ELL;
  *(v1 + 72) = &type metadata for Int;
  *(v1 + 80) = &off_1002B54E0;
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 40) = 0xEA00000000006E77;
  *(v1 + 48) = v2;
  *(v1 + 88) = 0x656D6F486D756ELL;
  *(v1 + 96) = 0xE700000000000000;
  *(v1 + 128) = &type metadata for Int;
  *(v1 + 136) = &off_1002B54E0;
  *(v1 + 104) = v3;
  *(v1 + 144) = 0x6B726F576D756ELL;
  *(v1 + 152) = 0xE700000000000000;
  *(v1 + 184) = &type metadata for Int;
  *(v1 + 192) = &off_1002B54E0;
  v4 = v0[3];
  *(v1 + 160) = v0[2];
  *(v1 + 200) = 0xD000000000000010;
  *(v1 + 208) = 0x800000010025D060;
  *(v1 + 240) = &type metadata for Int;
  *(v1 + 248) = &off_1002B54E0;
  *(v1 + 216) = v4;
  *(v1 + 256) = 0xD000000000000013;
  *(v1 + 264) = 0x800000010025D080;
  *(v1 + 296) = &type metadata for Int;
  *(v1 + 304) = &off_1002B54E0;
  v5 = v0[5];
  *(v1 + 272) = v0[4];
  strcpy((v1 + 312), "numParkedCar");
  *(v1 + 325) = 0;
  *(v1 + 326) = -5120;
  *(v1 + 352) = &type metadata for Int;
  *(v1 + 360) = &off_1002B54E0;
  *(v1 + 328) = v5;
  *(v1 + 368) = 0xD000000000000018;
  *(v1 + 376) = 0x800000010025D0A0;
  *(v1 + 408) = &type metadata for Int;
  *(v1 + 416) = &off_1002B54E0;
  v6 = v0[7];
  *(v1 + 384) = v0[6];
  strcpy((v1 + 424), "numRidesharing");
  *(v1 + 439) = -18;
  *(v1 + 464) = &type metadata for Int;
  *(v1 + 472) = &off_1002B54E0;
  *(v1 + 440) = v6;
  *(v1 + 480) = 0x6C65746F486D756ELL;
  *(v1 + 488) = 0xE800000000000000;
  *(v1 + 520) = &type metadata for Int;
  *(v1 + 528) = &off_1002B54E0;
  v7 = v0[9];
  *(v1 + 496) = v0[8];
  strcpy((v1 + 536), "numCarRental");
  *(v1 + 549) = 0;
  *(v1 + 550) = -5120;
  *(v1 + 576) = &type metadata for Int;
  *(v1 + 584) = &off_1002B54E0;
  *(v1 + 552) = v7;
  *(v1 + 592) = 0x65766172546D756ELL;
  *(v1 + 600) = 0xEF746867696C466CLL;
  *(v1 + 632) = &type metadata for Int;
  *(v1 + 640) = &off_1002B54E0;
  v8 = v0[11];
  *(v1 + 608) = v0[10];
  *(v1 + 648) = 0x7274726F506D756ELL;
  *(v1 + 656) = 0xEB00000000746961;
  *(v1 + 688) = &type metadata for Int;
  *(v1 + 696) = &off_1002B54E0;
  *(v1 + 664) = v8;
  *(v1 + 704) = 0x6F6F6863536D756ELL;
  *(v1 + 712) = 0xE90000000000006CLL;
  *(v1 + 744) = &type metadata for Int;
  *(v1 + 752) = &off_1002B54E0;
  v9 = v0[13];
  *(v1 + 720) = v0[12];
  strcpy((v1 + 760), "numOrderStatus");
  *(v1 + 775) = -18;
  *(v1 + 800) = &type metadata for Int;
  *(v1 + 808) = &off_1002B54E0;
  *(v1 + 776) = v9;
  *(v1 + 816) = 0xD000000000000012;
  *(v1 + 824) = 0x800000010025D0C0;
  *(v1 + 856) = &type metadata for Int;
  *(v1 + 864) = &off_1002B54E0;
  v10 = v0[15];
  *(v1 + 832) = v0[14];
  strcpy((v1 + 872), "numUserPlace");
  *(v1 + 885) = 0;
  *(v1 + 886) = -5120;
  *(v1 + 912) = &type metadata for Int;
  *(v1 + 920) = &off_1002B54E0;
  *(v1 + 888) = v10;
  *(v1 + 928) = 0xD000000000000010;
  *(v1 + 936) = 0x800000010025D0E0;
  *(v1 + 968) = &type metadata for Int;
  *(v1 + 976) = &off_1002B54E0;
  v11 = v0[17];
  *(v1 + 944) = v0[16];
  *(v1 + 984) = 0x70616D6E556D756ELL;
  *(v1 + 992) = 0xEB00000000646570;
  *(v1 + 1024) = &type metadata for Int;
  *(v1 + 1032) = &off_1002B54E0;
  *(v1 + 1000) = v11;
  v12 = sub_1001B8A88(v1);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D71F0, &qword_10024B160);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v12;
}

uint64_t sub_1001B6418()
{
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10024B060;
  *(inited + 32) = 0x736D6574496D756ELL;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = &off_1002B54E0;
  v2 = *v0;
  v3 = v0[1];
  *(inited + 40) = 0xEF64656863746546;
  *(inited + 48) = v2;
  *(inited + 88) = 0xD000000000000015;
  *(inited + 96) = 0x800000010025D100;
  *(inited + 128) = &type metadata for Int;
  *(inited + 136) = &off_1002B54E0;
  *(inited + 104) = v3;
  *(inited + 144) = 0xD000000000000018;
  *(inited + 152) = 0x800000010025D120;
  *(inited + 184) = &type metadata for Int;
  *(inited + 192) = &off_1002B54E0;
  v4 = v0[3];
  *(inited + 160) = v0[2];
  *(inited + 200) = 0xD000000000000017;
  *(inited + 208) = 0x800000010025D140;
  *(inited + 240) = &type metadata for Int;
  *(inited + 248) = &off_1002B54E0;
  *(inited + 216) = v4;
  *(inited + 256) = 0xD00000000000001FLL;
  *(inited + 264) = 0x800000010025D160;
  v5 = v0[4];
  *(inited + 296) = &type metadata for Int;
  *(inited + 304) = &off_1002B54E0;
  *(inited + 272) = v5;
  *(inited + 312) = 0xD000000000000014;
  *(inited + 320) = 0x800000010025D180;
  v6 = *(v0 + 40);
  *(inited + 352) = &type metadata for Bool;
  *(inited + 360) = &off_1002B54D0;
  *(inited + 328) = v6;
  v7 = sub_1001B8A88(inited);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D71F0, &qword_10024B160);
  swift_arrayDestroy();
  v8 = sub_1001B6064();
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v57 = v8;

  v14 = 0;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v16 >= v13)
        {

          return v7;
        }

        v12 = *(v9 + 8 * v16);
        ++v14;
        if (v12)
        {
          v14 = v16;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_12:
    v17 = __clz(__rbit64(v12)) | (v14 << 6);
    v18 = (*(v57 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_100164B34(*(v57 + 56) + 40 * v17, v62);
    v61[0] = v20;
    v61[1] = v19;
    sub_100164B34(v62, v60);
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v7;
    v22 = sub_100164498(v20, v19);
    v24 = *(v7 + 16);
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_41;
    }

    v28 = v23;
    if (*(v7 + 24) < v27)
    {
      sub_1001B79CC(v27, isUniquelyReferenced_nonNull_native);
      v29 = v59;
      v22 = sub_100164498(v20, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_44;
      }

LABEL_18:
      if (v28)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v7;
      goto LABEL_18;
    }

    v50 = v22;
    sub_100164A3C(&qword_1002D71F8, &qword_10024B168);
    v34 = static _DictionaryStorage.copy(original:)();
    v29 = v34;
    if (*(v7 + 16))
    {
      break;
    }

LABEL_37:

    v22 = v50;
    if (v28)
    {
LABEL_5:
      v15 = (*(v29 + 56) + 40 * v22);
      sub_100164B98(v15);
      sub_10001A700(v60, v15);

      goto LABEL_6;
    }

LABEL_19:
    *(v29 + 8 * (v22 >> 6) + 64) |= 1 << v22;
    v31 = (*(v29 + 48) + 16 * v22);
    *v31 = v20;
    v31[1] = v19;
    sub_10001A700(v60, *(v29 + 56) + 40 * v22);
    v32 = *(v29 + 16);
    v26 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v26)
    {
      goto LABEL_42;
    }

    *(v29 + 16) = v33;
LABEL_6:
    v12 &= v12 - 1;
    sub_1000157F0(v61, &qword_1002D7200, &qword_10024B170);
    v7 = v29;
  }

  v35 = (v34 + 64);
  v36 = (v7 + 64);
  v37 = ((1 << *(v29 + 32)) + 63) >> 6;
  if (v29 != v7 || v35 >= &v36[8 * v37])
  {
    memmove(v35, v36, 8 * v37);
  }

  v38 = 0;
  *(v29 + 16) = *(v7 + 16);
  v39 = 1 << *(v7 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(v7 + 64);
  v42 = (v39 + 63) >> 6;
  v51 = v42;
  if (v41)
  {
    do
    {
      v43 = __clz(__rbit64(v41));
      v55 = (v41 - 1) & v41;
LABEL_35:
      v46 = v43 | (v38 << 6);
      v53 = 16 * v46;
      v47 = (*(v7 + 48) + 16 * v46);
      v54 = *v47;
      v56 = v47[1];
      v52 = 40 * v46;
      sub_100164B34(*(v7 + 56) + 40 * v46, v58);
      v48 = (*(v29 + 48) + v53);
      *v48 = v54;
      v48[1] = v56;
      sub_10001A700(v58, *(v29 + 56) + v52);

      v42 = v51;
      v41 = v55;
    }

    while (v55);
  }

  v44 = v38;
  while (1)
  {
    v38 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v38 >= v42)
    {
      goto LABEL_37;
    }

    v45 = *(v7 + 64 + 8 * v38);
    ++v44;
    if (v45)
    {
      v43 = __clz(__rbit64(v45));
      v55 = (v45 - 1) & v45;
      goto LABEL_35;
    }
  }

LABEL_43:
  __break(1u);
LABEL_44:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1001B6960()
{
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000011;
  *(inited + 16) = xmmword_10024B070;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = &off_1002B54E0;
  v2 = *v0;
  v3 = v0[1];
  *(inited + 40) = 0x800000010025D1A0;
  *(inited + 48) = v2;
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x800000010025D1C0;
  *(inited + 128) = &type metadata for Int;
  *(inited + 136) = &off_1002B54E0;
  *(inited + 104) = v3;
  *(inited + 144) = 0xD000000000000013;
  *(inited + 152) = 0x800000010025D1E0;
  *(inited + 184) = &type metadata for Int;
  *(inited + 192) = &off_1002B54E0;
  v4 = v0[3];
  *(inited + 160) = v0[2];
  *(inited + 200) = 0xD000000000000018;
  *(inited + 208) = 0x800000010025D200;
  *(inited + 240) = &type metadata for Int;
  *(inited + 248) = &off_1002B54E0;
  *(inited + 216) = v4;
  *(inited + 256) = 0xD00000000000001BLL;
  *(inited + 264) = 0x800000010025D220;
  *(inited + 296) = &type metadata for Int;
  *(inited + 304) = &off_1002B54E0;
  v5 = v0[5];
  *(inited + 272) = v0[4];
  *(inited + 312) = 0xD00000000000001FLL;
  *(inited + 320) = 0x800000010025D240;
  *(inited + 352) = &type metadata for Int;
  *(inited + 360) = &off_1002B54E0;
  *(inited + 328) = v5;
  *(inited + 368) = 0x61746E6563726570;
  *(inited + 376) = 0xEF726F7272456567;
  *(inited + 408) = &type metadata for Int;
  *(inited + 416) = &off_1002B54E0;
  v6 = v0[7];
  *(inited + 384) = v0[6];
  strcpy((inited + 424), "updateInterval");
  *(inited + 439) = -18;
  *(inited + 464) = &type metadata for Int;
  *(inited + 472) = &off_1002B54E0;
  *(inited + 440) = v6;
  v7 = sub_1001B8A88(inited);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D71F0, &qword_10024B160);
  swift_arrayDestroy();
  return v7;
}

unint64_t sub_1001B6B38()
{
  sub_100164A3C(&qword_1002D71E8, &qword_10024B158);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10024B060;
  *(inited + 32) = 0x7079547972746E65;
  *(inited + 40) = 0xE900000000000065;
  v2 = *v0;
  *(inited + 72) = &type metadata for MapsSuggestionController.MapsSuggestionEntry.EntryType;
  *(inited + 80) = &off_1002B7138;
  *(inited + 48) = v2;
  strcpy((inited + 88), "predictionType");
  *(inited + 103) = -18;
  v3 = _s37MapsSuggestionsPredictedEventAccuracyVMa(0);
  v4 = v3[5];
  v5 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  *(inited + 128) = v5;
  *(inited + 136) = &off_1002B7188;
  v6 = sub_1001B8BDC((inited + 104));
  (*(*(v5 - 8) + 16))(v6, &v0[v4], v5);
  strcpy((inited + 144), "didEventOccur");
  *(inited + 158) = -4864;
  v7 = v0[v3[6]];
  *(inited + 184) = &_s23ServicePredictionMetricV15EventOccurrenceON;
  *(inited + 192) = &off_1002B7A90;
  *(inited + 160) = v7;
  *(inited + 200) = 0xD000000000000018;
  *(inited + 208) = 0x800000010025D260;
  v8 = *&v0[v3[8]];
  *(inited + 240) = &type metadata for Double;
  *(inited + 248) = &off_1002B54F0;
  *(inited + 216) = v8;
  strcpy((inited + 256), "haveLocation");
  *(inited + 269) = 0;
  *(inited + 270) = -5120;
  v9 = v0[v3[9]];
  *(inited + 296) = &_s23ServicePredictionMetricV8LocationON;
  *(inited + 304) = &off_1002B7AB8;
  *(inited + 272) = v9;
  *(inited + 312) = 0xD000000000000015;
  *(inited + 320) = 0x800000010025D280;
  v10 = v0[v3[10]];
  *(inited + 352) = &_s23ServicePredictionMetricV17PredictedLocationON;
  *(inited + 360) = &off_1002B7AE0;
  *(inited + 328) = v10;
  v11 = sub_1001B8A88(inited);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D71F0, &qword_10024B160);
  swift_arrayDestroy();
  return v11;
}

unint64_t sub_1001B6D9C(char a1)
{
  result = 0x64657070616D6E75;
  switch(a1)
  {
    case 1:
      result = 0x6E776F6E6B6E75;
      break;
    case 2:
    case 3:
    case 15:
    case 16:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x7261646E656C6163;
      break;
    case 6:
    case 7:
    case 14:
    case 17:
    case 18:
      result = 0x726568746FLL;
      break;
    case 8:
      result = 0x7461767265736572;
      break;
    case 9:
    case 10:
    case 11:
      result = 0x76456C6576617274;
      break;
    case 12:
      result = 0x6C466C6576617274;
      break;
    case 13:
      result = 0x646574656B636974;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001B6EE4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x76456C6576617274;
    v6 = 0x6C466C6576617274;
    if (a1 != 8)
    {
      v6 = 0x646574656B636974;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x726568746FLL;
    if (a1 != 5)
    {
      v7 = 0x7461767265736572;
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
    v1 = 0x64657070616D6E75;
    v2 = 0xD000000000000014;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0x7261646E656C6163;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6E776F6E6B6E75;
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

uint64_t sub_1001B7054(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1001B6EE4(*a1);
  v5 = v4;
  if (v3 == sub_1001B6EE4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001B70DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001B6EE4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001B7140()
{
  sub_1001B6EE4(*v0);
  String.hash(into:)();
}

Swift::Int sub_1001B7194()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001B6EE4(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001B71F4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B8C40(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1001B7224@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1001B6EE4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001B7278(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6552676E69746172;
    v7 = 0x7261687365646972;
    if (a1 != 10)
    {
      v7 = 0x74756374726F6873;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x4B65636E616E6966;
    v9 = 0x79616C50726163;
    if (a1 != 7)
    {
      v9 = 0x5064657469736976;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E776F6E6B6E75;
    v2 = 0x7261646E656C6163;
    v3 = 0x7461767265736572;
    if (a1 != 4)
    {
      v3 = 0x656E6E6F43707061;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x656E6974756F72;
    if (a1 != 1)
    {
      v4 = 0x74656C6C6177;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1001B7428(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1001B7278(*a1);
  v5 = v4;
  if (v3 == sub_1001B7278(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001B74B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001B7278(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001B7514()
{
  sub_1001B7278(*v0);
  String.hash(into:)();
}

Swift::Int sub_1001B7568()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001B7278(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001B75C8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B8C8C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001B75F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001B7278(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001B764C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:))
  {
    return 0xD000000000000015;
  }

  if (v6 == enum case for PrivateServicePrediction.ServicePredictionType.cellularDataCongestion(_:))
  {
    return 0xD000000000000016;
  }

  if (v6 == enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:))
  {
    return 0xD000000000000011;
  }

  (*(v2 + 8))(v5, a1);
  return 0x6E776F6E6B6E75;
}

size_t sub_1001B77F0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100164A3C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1001B79CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100164A3C(&qword_1002D71F8, &qword_10024B168);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_10001A700(v25, v37);
      }

      else
      {
        sub_100164B34(v25, v37);
      }

      v26 = *(v8 + 40);
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
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10001A700(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

id sub_1001B7C90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, double a9, double a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  *&v12[OBJC_IVAR___WISCellularCoverageTile_latitude] = a9;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_longitude] = a10;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_noServiceCount] = a1;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_inServiceCount] = a2;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_limitedServiceCount] = a3;
  if (a4)
  {
    v24 = [a4 integerValue];
  }

  else
  {
    v24 = 0;
  }

  v25 = &v12[OBJC_IVAR___WISCellularCoverageTile_highestFrequencyRsrp];
  *v25 = v24;
  v25[8] = a4 == 0;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_highestCountMCC] = a5;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_highestCountMNC] = a6;
  if (a7)
  {
    v26 = [a7 integerValue];
  }

  else
  {
    v26 = 0;
  }

  v27 = &v12[OBJC_IVAR___WISCellularCoverageTile_highestCountBand];
  *v27 = v26;
  v27[8] = a7 == 0;
  if (a8)
  {
    v28 = [a8 integerValue];
  }

  else
  {
    v28 = 0;
  }

  v29 = &v12[OBJC_IVAR___WISCellularCoverageTile_highestCountARFCN];
  *v29 = v28;
  v29[8] = a8 == 0;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_highestCountRAT] = a11;
  *&v12[OBJC_IVAR___WISCellularCoverageTile_highestCount] = a12;
  v31.receiver = v12;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, "init");
}

uint64_t sub_1001B7F48(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x800000010025D830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010025D850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000010025D870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 3;
  }

  else if (a1 == 0xD000000000000021 && 0x800000010025D890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 4;
  }

  else if (a1 == 0xD000000000000022 && 0x800000010025D8C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = 5;
  }

  else
  {
    if ((a1 != 0xD000000000000022 || 0x800000010025D8F0 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (a1 == 0xD00000000000001FLL && 0x800000010025D920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = 6;
        goto LABEL_5;
      }

      if (a1 == 0xD00000000000001CLL && 0x800000010025D940 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = 7;
        goto LABEL_5;
      }

      if (a1 == 0xD000000000000022 && 0x800000010025D960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = 8;
        goto LABEL_5;
      }

      if (a1 == 0xD000000000000022 && 0x800000010025D990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = 9;
        goto LABEL_5;
      }

      if (a1 == 0xD000000000000020 && 0x800000010025D9C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = 10;
        goto LABEL_5;
      }

      if (a1 == 0xD00000000000001DLL && 0x800000010025D9F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = 11;
        goto LABEL_5;
      }

      if ((a1 != 0xD00000000000001BLL || 0x800000010025DA10 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0xD00000000000001DLL || 0x800000010025DA30 != a2))
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    v4 = 0;
  }

LABEL_5:

  return v4;
}

uint64_t sub_1001B8318(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  v4 = type metadata accessor for MapsSuggestionController.MapsSuggestionEntry(0);
  v5 = v4[8];
  if (static Date.== infix(_:_:)() & 1) != 0 && (v6 = v4[9], (static Date.== infix(_:_:)()))
  {
    v7 = *(a1 + v4[10]) ^ *(a2 + v4[10]) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1001B840C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B8454(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v7 != *v8 || v6 != v8[1])
  {
    v10 = v4;
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v4 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  v12 = v4[10];
  v14 = *(a1 + v12);
  v13 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if (v14 != *v15 || v13 != v15[1])
  {
    v17 = v4;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v4 = v17;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  if (*(a1 + v4[12]) != *(a2 + v4[12]))
  {
    return 0;
  }

  v19 = v4[13];
  v20 = v4;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v21 = v20[14];

  return static Date.== infix(_:_:)();
}

uint64_t sub_1001B85E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D7178, &unk_10024B0C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B869C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10017F434;

  return sub_1001A8558(v3, v4, v5, v2);
}

unint64_t sub_1001B8730()
{
  result = qword_1002D7C50;
  if (!qword_1002D7C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7C50);
  }

  return result;
}

unint64_t sub_1001B8784()
{
  result = qword_1002D71A0;
  if (!qword_1002D71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D71A0);
  }

  return result;
}

uint64_t sub_1001B87F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B8860(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001B88C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B8928()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001B597C(v4, v5, v6, v2, v3);
}

uint64_t sub_1001B89C4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001B5B3C(v4, v5, v6, v2, v3);
}

unint64_t sub_1001B8A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100164A3C(&qword_1002D71F8, &qword_10024B168);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001A718(v4, &v13, &qword_1002D71F0, &qword_10024B160);
      v5 = v13;
      v6 = v14;
      result = sub_100164498(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001A700(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t *sub_1001B8BDC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1001B8C40(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B6C58, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001B8C8C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B6D68, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001B8CD8(uint64_t a1, uint64_t a2)
{
  result = sub_1001B840C(&qword_1002D7208, a2, type metadata accessor for CellularCoverageTile);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001B8D34()
{
  result = qword_1002D7210;
  if (!qword_1002D7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7210);
  }

  return result;
}

unint64_t sub_1001B8DD0()
{
  result = qword_1002D7228;
  if (!qword_1002D7228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7228);
  }

  return result;
}

unint64_t sub_1001B8EB8()
{
  result = qword_1002D7248;
  if (!qword_1002D7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7248);
  }

  return result;
}

unint64_t sub_1001B8F10()
{
  result = qword_1002D7250;
  if (!qword_1002D7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D7250);
  }

  return result;
}

void sub_1001B8F6C()
{
  sub_1001B90A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001B90A4()
{
  if (!qword_1002D7330)
  {
    type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D7330);
    }
  }
}

uint64_t sub_1001B9124()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapsSuggestionController.MapsSuggestionEntry.EntryType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MapsSuggestionController.MapsSuggestionEntry.EntryType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1001B934C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001B9420()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1001B94A0(uint64_t a1, __int128 *a2)
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
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1001B94D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 192))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001B9528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1001B95AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1001B95D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B95F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 144) = v3;
  return result;
}

__n128 sub_1001B9658(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1001B966C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B968C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1001B9700()
{
  result = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapsSuggestionController.MapsSuggestionEntry.EntryType.MetricApprovedFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MapsSuggestionController.MapsSuggestionEntry.EntryType.MetricApprovedFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001B98FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1001B9990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001B9A50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001B9A68(unint64_t a1)
{
  v3 = *(sub_100164A3C(&qword_1002D79C8, &qword_10024BA30) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100164A3C(&qword_1002D7178, &unk_10024B0C0) - 8);
  v7 = (v5 + *(v6 + 80) + 208) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001B3238(a1, v1 + v4, (v1 + v5), v1 + v7, v9, v10);
}

uint64_t sub_1001B9BCC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_1001B5828(v3, v4, v5, v2);
}

uint64_t sub_1001B9C60()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001A9ACC(v2, v4, v5, v6, v3);
}

uint64_t type metadata accessor for MapsNavigationController.CoverageInfo()
{
  result = qword_1002DAE90;
  if (!qword_1002DAE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B9D6C()
{
  swift_beginAccess();
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t sub_1001B9DA4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t sub_1001B9DF8()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
}

uint64_t sub_1001B9E30(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  *(v1 + 136) = a1;
}

uint64_t sub_1001B9FB0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 536);
  return result;
}

uint64_t sub_1001B9FEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 536) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1001BA04C(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 536);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1001BA0E0;
}

void sub_1001BA0E0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 536) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_1001BA1B0(const void *a1, void *a2)
{
  v3 = v2;
  v35 = a2;
  v29 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  __chkstk_darwin(v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v34);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  swift_defaultActor_initialize();
  sub_100164AEC(0, &qword_1002D6640, OS_dispatch_queue_ptr);

  static DispatchQoS.unspecified.getter();
  v37 = _swiftEmptyArrayStorage;
  sub_1001BCB78(&qword_1002D5E50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100164A3C(&unk_1002D6650, &qword_100249DD0);
  sub_100180530();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  v15 = v35;
  *(v2 + 112) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 120) = 0;
  *(v2 + 128) = 1;
  *(v2 + 136) = _swiftEmptyArrayStorage;
  *(v2 + 536) = 0;
  swift_unknownObjectWeakInit();
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v17 = *(v2 + 112);
    v18 = objc_allocWithZone(GEONavigationListener);
    v19 = v17;
    v16 = [v18 initWithQueue:{v19, v29, ObjectType}];

    if (!v16)
    {

      v28 = *(v3 + 136);

      sub_1001B8A60(v3 + 528);
      type metadata accessor for MapsNavigationController();
      swift_defaultActor_destroy();
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  *(v3 + 144) = v16;
  memcpy((v3 + 152), v29, 0x178uLL);
  v20 = type metadata accessor for MapsNavigationController();
  v36.receiver = v3;
  v36.super_class = v20;
  v21 = v16;
  v22 = objc_msgSendSuper2(&v36, "init");
  [v21 setNoCellCoverageAlertPrecedingTime:240.0];
  [v21 setDelegate:v22];
  v23 = v31;
  sub_100003E50(&off_1002B7730, v31);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Started navigation controller.", v26, 2u);
  }

  else
  {
  }

  (*(v32 + 8))(v23, v33);
  return v22;
}

uint64_t sub_1001BA6B0(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7730, v8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating configuration", v11, 2u);
  }

  (*(v5 + 8))(v8, v4);
  return (*((swift_isaMask & *v2) + 0xC0))(a1);
}

uint64_t sub_1001BA84C(uint64_t a1, uint64_t a2)
{
  v6 = *((swift_isaMask & *v2) + 0xD8);
  v4 = swift_unknownObjectRetain();

  return v6(v4, a2);
}

uint64_t sub_1001BA8C0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v82 = &v79 - v7;
  v8 = type metadata accessor for Logger();
  v83 = *(v8 - 8);
  v9 = *(v83 + 64);
  __chkstk_darwin(v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivateServicePrediction.ConfidenceScore();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v105 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Date();
  v87 = *(v104 - 8);
  v15 = *(v87 + 64);
  __chkstk_darwin(v104);
  v103 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  v108 = *(v102 - 8);
  v17 = v108[8];
  __chkstk_darwin(v102);
  v101 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v107 = *(v100 - 8);
  v19 = *(v107 + 64);
  __chkstk_darwin(v100);
  v99 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PrivateServicePrediction();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v98 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for MapsNavigationController.CoverageInfo();
  v24 = *(v97 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v97);
  v109 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for InternalServicePrediction();
  v96 = *(v80 - 8);
  v27 = *(v96 + 64);
  v28 = __chkstk_darwin(v80);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 16);
  v84 = v8;
  if (v31)
  {
    v81 = ObjectType;
    v85 = v11;
    v110 = _swiftEmptyArrayStorage;
    sub_1001BBCAC(0, v31, 0);
    v32 = v110;
    v33 = *v2;
    v86 = v2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v95 = *((swift_isaMask & v33) + 0xB8);
    v93 = (swift_isaMask & v33) + 184;
    v34 = a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v92 = *(v24 + 72);
    v91 = enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:);
    v90 = (v107 + 104);
    v89 = enum case for PrivateServicePrediction.ServicePredictionSource.navigation(_:);
    v87 += 16;
    v88 = (v108 + 13);
    v106 = v2;
    v94 = v30;
    v35 = v99;
    v36 = v101;
    v37 = v95;
    do
    {
      v107 = v31;
      v108 = v32;
      sub_1001BCB10(v34, v109, type metadata accessor for MapsNavigationController.CoverageInfo);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      (*v90)(v35, v91, v100);
      (*v88)(v36, v89, v102);
      v38 = v109;
      v39 = (*v87)(v103, v109, v104);
      v40 = *(v38 + *(v97 + 20));
      v41 = v37(v111, v39);
      v42 = v37(v112, v41);
      v37(v113, v42);
      PrivateServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
      v43 = v98;
      PrivateServicePrediction.init(type:source:predictedStartTime:predictedDuration:confidenceScore:)();
      v44 = static xpc_event_publisher_action_t.add.getter();
      v45 = v94;
      sub_100162DE0(v43, 0, 0, 0, 0, 1, 0, 1, v94, 0, 1, 0, 0, v44 & 1);
      sub_1001BCBC0(v38, type metadata accessor for MapsNavigationController.CoverageInfo);
      v32 = v108;
      v110 = v108;
      v47 = v108[2];
      v46 = v108[3];
      if (v47 >= v46 >> 1)
      {
        sub_1001BBCAC(v46 > 1, v47 + 1, 1);
        v32 = v110;
      }

      v32[2] = v47 + 1;
      v28 = sub_1001BCA10(v45, v32 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v47, type metadata accessor for InternalServicePrediction);
      v34 += v92;
      v2 = v106;
      v31 = v107 - 1;
    }

    while (v107 != 1);
    v11 = v85;
    v48 = v86;
    v49 = v32;
  }

  else
  {
    v48 = v2 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v49 = _swiftEmptyArrayStorage;
  }

  v50 = swift_isaMask & *v2;
  v86 = v48;
  v51 = *(v50 + 160);
  v52 = (v51)(v28);
  v53 = sub_100004814(v52, v49);

  if (v53)
  {
  }

  sub_100003E50(&off_1002B7730, v11);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();

  v56 = v49;
  if (os_log_type_enabled(v54, v55))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v106 = v2;
    v110 = v58;
    *v57 = 136315394;
    v59 = v56;
    v51();
    v60 = Array.debugDescription.getter();
    v85 = v11;
    v62 = v61;

    v63 = sub_10017A8A8(v60, v62, &v110);

    *(v57 + 4) = v63;
    *(v57 + 12) = 2080;
    v64 = Array.description.getter();
    v66 = sub_10017A8A8(v64, v65, &v110);
    v56 = v59;

    *(v57 + 14) = v66;
    _os_log_impl(&_mh_execute_header, v54, v55, "Updating service prediction from %s suggestions to %s", v57, 0x16u);
    swift_arrayDestroy();
    v2 = v106;

    (*(v83 + 8))(v85, v84);
  }

  else
  {

    (*(v83 + 8))(v11, v84);
  }

  v67 = *((swift_isaMask & *v2) + 0xA8);

  v69 = v56;
  v70 = v67(v68);
  v71 = (*((swift_isaMask & *v2) + 0xD0))(v70);
  if (!v71)
  {
  }

  v73 = v71;
  v74 = v72;
  v75 = type metadata accessor for TaskPriority();
  v76 = v82;
  (*(*(v75 - 8) + 56))(v82, 1, 1, v75);
  v77 = swift_allocObject();
  v77[2] = 0;
  v77[3] = 0;
  v77[4] = v73;
  v77[5] = v74;
  v77[6] = v69;
  sub_100176B80(0, 0, v76, &unk_10024C5E8, v77);
}

uint64_t sub_1001BB334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v10 = *(a5 + 8);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_100002A5C;

  return v14(a6, ObjectType, a5);
}

uint64_t sub_1001BB46C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7730, v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Clearing prediction.", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v14 = (*((swift_isaMask & *v1) + 0xA8))(_swiftEmptyArrayStorage);
  result = (*((swift_isaMask & *v1) + 0xD0))(v14);
  if (result)
  {
    v17 = result;
    v18 = v16;
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v17;
    v20[5] = v18;
    sub_100176B80(0, 0, v5, &unk_10024C5F8, v20);
  }

  return result;
}

uint64_t sub_1001BB714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = *(a5 + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10017F434;

  return (v12)(_swiftEmptyArrayStorage, ObjectType, a5);
}

id sub_1001BB844(double a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7730, v8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating lookahead time to %f", v11, 0xCu);
  }

  (*(v5 + 8))(v8, v4);
  (*((swift_isaMask & *v2) + 0x90))(*&a1, 0);
  return [*(v2 + 144) setNoCellCoverageAlertPrecedingTime:a1];
}

uint64_t sub_1001BBA14(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = ((swift_isaMask & *a4) + 256) & 0xFFFFFFFFFFFFLL | 0x9AAA000000000000;
  v5[4] = *((swift_isaMask & *a4) + 0x100);
  v5[5] = v6;
  return _swift_task_switch(sub_100014384, a4, 0);
}

uint64_t sub_1001BBB08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = ((swift_isaMask & *a4) + 264) & 0xFFFFFFFFFFFFLL | 0xEFF0000000000000;
  v4[3] = *((swift_isaMask & *a4) + 0x108);
  v4[4] = v5;
  return _swift_task_switch(sub_1001995E8, a4, 0);
}

uint64_t sub_1001BBBF8()
{
  v1 = *(v0 + 136);

  sub_1001B8A60(v0 + 528);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001BBC48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for MapsNavigationController();

  return sub_100003E50(a1, a2);
}

size_t sub_1001BBCAC(size_t a1, int64_t a2, char a3)
{
  result = sub_1001BBE74(a1, a2, a3, *v3, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
  *v3 = result;
  return result;
}

uint64_t sub_1001BBCF0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100002A5C;

  return sub_1001BB334(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_1001BBD98()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10017F434;

  return sub_1001BB714(v4, v5, v6, v2, v3);
}

size_t sub_1001BBE30(size_t a1, int64_t a2, char a3)
{
  result = sub_1001BBE74(a1, a2, a3, *v3, &unk_1002D7B98, &qword_10024C6C8, type metadata accessor for MapsNavigationController.CoverageInfo);
  *v3 = result;
  return result;
}

size_t sub_1001BBE74(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100164A3C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t *sub_1001BC050(unint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v50 = type metadata accessor for Date();
  v4 = *(v50 - 8);
  v5 = v4[8];
  __chkstk_darwin(v50);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MapsNavigationController.CoverageInfo();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  __chkstk_darwin(v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v42 - v13);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7730, v19);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    LODWORD(v44) = v21;
    v45 = v15;
    v46 = v4;
    v22 = swift_slowAlloc();
    result = swift_slowAlloc();
    v43 = result;
    v51 = result;
    *v22 = 136315138;
    if (!a1)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_100164AEC(0, &qword_1002D7B90, GEONavigationListenerNoCellCoverageInfo_ptr);
    v24 = Array.description.getter();
    v26 = sub_10017A8A8(v24, v25, &v51);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v44, "Received no cell coverage infos update %s", v22, 0xCu);
    sub_100164B98(v43);

    (*(v16 + 8))(v19, v45);
    v4 = v46;
LABEL_5:
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v29 = _swiftEmptyArrayStorage;
      if (!i)
      {
LABEL_20:
        v40 = type metadata accessor for TaskPriority();
        (*(*(v40 - 8) + 56))(v14, 1, 1, v40);
        v41 = swift_allocObject();
        v41[2] = 0;
        v41[3] = 0;
        v41[4] = v2;
        v41[5] = v29;

        sub_100176B80(0, 0, v14, &unk_10024C6C0, v41);
      }

      v45 = v27;
      v51 = _swiftEmptyArrayStorage;
      result = sub_1001BBE30(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v46 = i;
      v43 = v14;
      v44 = v2;
      v27 = 0;
      v29 = v51;
      v30 = a1 & 0xC000000000000001;
      v2 = (v4 + 4);
      while (1)
      {
        v14 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v30)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *(v45 + 16))
          {
            goto LABEL_22;
          }

          v31 = *(a1 + 8 * v27 + 32);
        }

        v32 = v31;
        v33 = a1;
        result = [v31 noCellCoverageStartDate];
        if (!result)
        {
          goto LABEL_25;
        }

        v34 = result;
        v35 = v49;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        [v32 outageDuration];
        v37 = v36;

        (*v2)(v10, v35, v50);
        *&v10[*(v48 + 20)] = v37;
        v51 = v29;
        v39 = v29[2];
        v38 = v29[3];
        v4 = (v39 + 1);
        if (v39 >= v38 >> 1)
        {
          sub_1001BBE30(v38 > 1, v39 + 1, 1);
          v29 = v51;
        }

        v29[2] = v4;
        sub_1001BCA10(v10, v29 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v39, type metadata accessor for MapsNavigationController.CoverageInfo);
        ++v27;
        a1 = v33;
        if (v14 == v46)
        {
          v14 = v43;
          v2 = v44;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = (*(v16 + 8))(v19, v15);
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1001BC61C(uint64_t a1, int a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7730, v14);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = a1;
    *(v17 + 12) = 1024;
    *(v17 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received navigation state change: %lu, %d", v17, 0x12u);
  }

  result = (*(v11 + 8))(v14, v10);
  if (!a1)
  {
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v3;

    sub_100176B80(0, 0, v9, &unk_10024C6B0, v20);
  }

  return result;
}

uint64_t sub_1001BC8AC()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001BC920(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1001BC97C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_1001BBB08(v3, v4, v5, v2);
}

uint64_t sub_1001BCA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BCA78()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_1001BBA14(v4, v5, v6, v2, v3);
}

uint64_t sub_1001BCB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BCB78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001BCBC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001BCC20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001BCC88()
{
  v1 = v0;
  v2 = 7104878;
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(143);
  v26 = 0;
  v27 = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD00000000000003BLL;
  v3._object = 0x800000010025DC50;
  String.append(_:)(v3);
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&qword_1002D7BB8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._object = 0x800000010025DC90;
  v5._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v5);
  v6 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  sub_10001A718(v0 + v6[5], v23, &qword_1002D71D0, &qword_10024AE20);
  if (v24)
  {
    v7 = v25;
    sub_100014E1C(v23, v24);
    v8 = *(v7 + 8);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_100164B98(v23);
  }

  else
  {
    sub_1000157F0(v23, &qword_1002D71D0, &qword_10024AE20);
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0xD00000000000001BLL;
  v13._object = 0x800000010025DCB0;
  String.append(_:)(v13);
  v14 = (v1 + v6[6]);
  if (v14[1])
  {
    v15 = *v14;
    v16 = v14[1];
  }

  else
  {
    v16 = 0xE300000000000000;
    v15 = 7104878;
  }

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0xD000000000000019;
  v18._object = 0x800000010025DCD0;
  String.append(_:)(v18);
  v19 = (v1 + v6[7]);
  if (v19[1])
  {
    v2 = *v19;
    v20 = v19[1];
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  v21._countAndFlagsBits = v2;
  v21._object = v20;
  String.append(_:)(v21);

  return v26;
}

__n128 sub_1001BCEFC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1001DC56C(a1, a7, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
  v13 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v14 = a7 + v13[5];
  result = *a2;
  v16 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v16;
  *(v14 + 32) = *(a2 + 32);
  v17 = (a7 + v13[6]);
  *v17 = a3;
  v17[1] = a4;
  v18 = (a7 + v13[7]);
  *v18 = a5;
  v18[1] = a6;
  return result;
}

uint64_t sub_1001BCF94()
{
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&qword_1002D7240, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int sub_1001BD020()
{
  Hasher.init(_seed:)();
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001BD0AC()
{
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001BD134()
{
  Hasher.init(_seed:)();
  type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  sub_1001BCC20(&unk_1002D7BA8, 255, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001BD474(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x676E696D616F72;
  v3 = 0x646574696D696CLL;
  if (a1 != 3)
  {
    v3 = 7565167;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1701670760;
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

uint64_t sub_1001BD500()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x676E696D616F72;
  v4 = 0x646574696D696CLL;
  if (v1 != 3)
  {
    v4 = 7565167;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701670760;
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

uint64_t sub_1001BD58C()
{
  v1 = 0x6976726573206E69;
  if (*v0 != 1)
  {
    v1 = 0x7320666F2074756FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1001BD5F8()
{
  v1 = 1801545079;
  if (*v0 != 1)
  {
    v1 = 0x676E6F727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1001BD648()
{
  _StringGuts.grow(_:)(45);

  countAndFlagsBits = v0->_countAndFlagsBits;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x20636E6D202CLL;
  v2._object = 0xE600000000000000;
  String.append(_:)(v2);
  object = v0->_object;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x20746172202CLL;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);
  String.append(_:)(v0[1]);
  v5._countAndFlagsBits = 0x20646E6162202CLL;
  v5._object = 0xE700000000000000;
  String.append(_:)(v5);
  v12 = v0[2]._countAndFlagsBits;
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x657571657266202CLL;
  v7._object = 0xEC0000002079636ELL;
  String.append(_:)(v7);
  v13 = v0[2]._object;
  v14 = v0[3]._countAndFlagsBits;
  sub_100164A3C(&qword_1002D7BC8, &qword_10024C700);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  return 543384429;
}

uint64_t sub_1001BD808(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v9, v4);
  Date.timeIntervalSince(_:)();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  *(v2 + 72) = v11 + *(v2 + 72);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v9, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1001BD980(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
  swift_beginAccess();
  (*(v5 + 16))(v8, v2 + v9, v4);
  Date.timeIntervalSince(_:)();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  *(v2 + 80) = v11 + *(v2 + 80);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v9, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1001BDAF8(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
  v12 = (v11 + 16);
  v13 = (v11 + 8);
  v14 = (v11 + 24);
  if (a1)
  {
    swift_beginAccess();
    (*v12)(v9, v3 + v10, v6);
    Date.timeIntervalSince(_:)();
    v16 = v15;
    (*v13)(v9, v6);
    swift_beginAccess();
    if (a1 == 1)
    {
      v3[4] = v16 + v3[4];
    }

    else
    {
      v3[3] = v16 + v3[3];
    }
  }

  else
  {
    swift_beginAccess();
    (*v12)(v9, v3 + v10, v6);
    Date.timeIntervalSince(_:)();
    v18 = v17;
    (*v13)(v9, v6);
    swift_beginAccess();
    v3[2] = v18 + v3[2];
  }

  swift_beginAccess();
  (*v14)(v3 + v10, a2, v6);
  return swift_endAccess();
}

uint64_t sub_1001BDD78()
{
  swift_beginAccess();
  v1 = v0[2];
  swift_beginAccess();
  v2 = v1 + v0[3];
  swift_beginAccess();
  result = 0;
  v4 = v2 + v0[4];
  if (v4 != 0.0)
  {
    v5 = round(v1 / v4 * 100.0);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return v5;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1001BDE54()
{
  swift_beginAccess();
  v1 = v0[2];
  swift_beginAccess();
  v2 = v0[3];
  swift_beginAccess();
  result = 0;
  v4 = v1 + v2 + v0[4];
  if (v4 != 0.0)
  {
    v5 = round(v2 / v4 * 100.0);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return v5;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1001BDF30()
{
  swift_beginAccess();
  v1 = v0[2];
  swift_beginAccess();
  v2 = v1 + v0[3];
  swift_beginAccess();
  result = 0;
  v4 = v0[4];
  if (v2 + v4 != 0.0)
  {
    v5 = round(v4 / (v2 + v4) * 100.0);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        return v5;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1001BE00C()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  swift_beginAccess();
  result = 0;
  v3 = v1 + *(v0 + 80);
  if (v3 != 0.0)
  {
    v4 = round(v1 / v3 * 100.0);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return v4;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1001BE0CC()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  swift_beginAccess();
  result = 0;
  v3 = *(v0 + 80);
  if (v1 + v3 != 0.0)
  {
    v4 = round(v3 / (v1 + v3) * 100.0);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return v4;
      }

LABEL_9:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1001BE18C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastResetTime;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 24);
  v5(&v1[v3], a1, v4);
  swift_endAccess();
  v6 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
  swift_beginAccess();
  v5(&v1[v6], a1, v4);
  swift_endAccess();
  v7 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
  swift_beginAccess();
  v5(&v1[v7], a1, v4);
  swift_endAccess();
  v8 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
  swift_beginAccess();
  v5(&v1[v8], a1, v4);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
  swift_beginAccess();
  v5(&v1[v9], a1, v4);
  swift_endAccess();
  swift_beginAccess();
  *(v1 + 2) = 0;
  swift_beginAccess();
  *(v1 + 3) = 0;
  swift_beginAccess();
  *(v1 + 4) = 0;
  swift_beginAccess();
  *(v1 + 9) = 0;
  result = swift_beginAccess();
  *(v1 + 10) = 0;
  return result;
}

uint64_t sub_1001BE390()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastResetTime;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime, v2);
  v3(v0 + OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime, v2);
  v3(v0 + OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime, v2);
  v3(v0 + OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1001BE4C8()
{
  *(v0 + 80) = 0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  Date.init()();
  Date.init()();
  Date.init()();
  Date.init()();
  Date.init()();
  return v0;
}

uint64_t sub_1001BE550(uint64_t a1)
{
  v3 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001A718(a1, v9, &unk_1002D7BD0, &unk_10024A800);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000157F0(a1, &unk_1002D7BD0, &unk_10024A800);
    return sub_1000157F0(v9, &unk_1002D7BD0, &unk_10024A800);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    (*(v11 + 16))(v7, v14, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    v16 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
    swift_beginAccess();
    sub_10019B228(v7, v1 + v16);
    swift_endAccess();
    v17 = type metadata accessor for RegistrationTimeCounter(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    sub_1001BE4C8();
    swift_beginAccess();
    v21 = *(v1 + 32);
    *(v1 + 32) = v20;

    swift_beginAccess();
    if (*(v1 + 32))
    {
      swift_endAccess();

      sub_1001BE18C(v14);

      sub_1000157F0(a1, &unk_1002D7BD0, &unk_10024A800);
      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      sub_1000157F0(a1, &unk_1002D7BD0, &unk_10024A800);
      (*(v11 + 8))(v14, v10);
      return swift_endAccess();
    }
  }
}

uint64_t sub_1001BE878(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v90 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v91 = &v82 - v11;
  v12 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v89 = (&v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = &v82 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v82 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v82 - v23;
  __chkstk_darwin(v22);
  v26 = &v82 - v25;
  result = swift_beginAccess();
  *(v3 + 41) = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v28 = v7;
      v88 = v7[2];
      v89 = v7 + 2;
      v88(v26, a2, v6);
      v29 = v7[7];
      v29(v26, 0, 1, v6);
      v30 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastInServiceTime;
      swift_beginAccess();
      sub_10019B228(v26, v3 + v30);
      swift_endAccess();
      v29(v26, 1, 1, v6);
      v31 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastOutOfServiceTime;
      swift_beginAccess();
      sub_10019B228(v26, v3 + v31);
      swift_endAccess();
      v32 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      result = swift_beginAccess();
      if (*(v3 + v32) == 1)
      {
        swift_beginAccess();
        v33 = *(v3 + 24);

        Date.init()();
        v34 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
        swift_beginAccess();
        v35 = v90;
        v88(v90, v33 + v34, v6);
        Date.timeIntervalSince(_:)();
        v37 = v36;
        v87 = v21;
        v38 = v28[1];
        v38(v35, v6);
        swift_beginAccess();
        *(v33 + 32) = v37 + *(v33 + 32);
        swift_beginAccess();
        v39 = v33 + v34;
        v40 = v91;
        v83 = v28[3];
        v84 = v28 + 3;
        v83(v39, v91, v6);
        swift_endAccess();

        v85 = v38;
        v86 = v28 + 1;
        v38(v40, v6);
        v41 = v87;
        v42 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
        swift_beginAccess();
        sub_10001A718(v3 + v42, v24, &unk_1002D7BD0, &unk_10024A800);
        v43 = v28[6];
        LODWORD(v42) = v43(v24, 1, v6);
        result = sub_1000157F0(v24, &unk_1002D7BD0, &unk_10024A800);
        if (v42 != 1)
        {
          v44 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
          swift_beginAccess();
          sub_10001A718(v3 + v44, v41, &unk_1002D7BD0, &unk_10024A800);
          LODWORD(v44) = v43(v41, 1, v6);
          result = sub_1000157F0(v41, &unk_1002D7BD0, &unk_10024A800);
          if (v44 == 1)
          {
            result = swift_beginAccess();
            v45 = *(v3 + 32);
            if (v45)
            {
              v46 = *(v3 + 32);

              v47 = v91;
              Date.init()();
              v48 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
              swift_beginAccess();
              v49 = v90;
              v88(v90, v45 + v48, v6);
              Date.timeIntervalSince(_:)();
              v51 = v50;
              v52 = v6;
              v53 = v6;
              v54 = v85;
              v85(v49, v52);
              swift_beginAccess();
              *(v45 + 32) = v51 + *(v45 + 32);
              swift_beginAccess();
              v83(v45 + v48, v47, v53);
              swift_endAccess();

              return v54(v47, v53);
            }
          }
        }
      }
    }

    else
    {
      v55 = v7;
      v57 = v7[2];
      v56 = (v7 + 2);
      v88 = v57;
      v57(v26, a2, v6);
      v58 = v55[7];
      v58(v26, 0, 1, v6);
      v59 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastOutOfServiceTime;
      swift_beginAccess();
      sub_10019B228(v26, v3 + v59);
      swift_endAccess();
      v58(v26, 1, 1, v6);
      v60 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastInServiceTime;
      swift_beginAccess();
      sub_10019B228(v26, v3 + v60);
      swift_endAccess();
      v61 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      result = swift_beginAccess();
      if (*(v3 + v61) == 1)
      {
        swift_beginAccess();
        v62 = *(v3 + 24);

        Date.init()();
        v63 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
        swift_beginAccess();
        v64 = v90;
        v88(v90, v62 + v63, v6);
        Date.timeIntervalSince(_:)();
        v66 = v65;
        v87 = v56;
        v67 = v55[1];
        v67(v64, v6);
        swift_beginAccess();
        *(v62 + 24) = v66 + *(v62 + 24);
        swift_beginAccess();
        v68 = v62 + v63;
        v69 = v91;
        v83 = v55[3];
        v84 = v55 + 3;
        v83(v68, v91, v6);
        swift_endAccess();

        v85 = v67;
        v86 = v55 + 1;
        v67(v69, v6);
        v70 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
        swift_beginAccess();
        sub_10001A718(v3 + v70, v18, &unk_1002D7BD0, &unk_10024A800);
        v71 = v55[6];
        LODWORD(v70) = v71(v18, 1, v6);
        result = sub_1000157F0(v18, &unk_1002D7BD0, &unk_10024A800);
        if (v70 != 1)
        {
          v72 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
          swift_beginAccess();
          v73 = v89;
          sub_10001A718(v3 + v72, v89, &unk_1002D7BD0, &unk_10024A800);
          LODWORD(v72) = v71(v73, 1, v6);
          result = sub_1000157F0(v73, &unk_1002D7BD0, &unk_10024A800);
          if (v72 == 1)
          {
            result = swift_beginAccess();
            v74 = *(v3 + 32);
            if (v74)
            {
              v75 = *(v3 + 32);

              v76 = v91;
              Date.init()();
              v77 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
              swift_beginAccess();
              v78 = v90;
              v88(v90, v74 + v77, v6);
              Date.timeIntervalSince(_:)();
              v80 = v79;
              v81 = v85;
              v85(v78, v6);
              swift_beginAccess();
              *(v74 + 24) = v80 + *(v74 + 24);
              swift_beginAccess();
              v83(v74 + v77, v76, v6);
              swift_endAccess();

              return v81(v76, v6);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001BF264(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v90 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v91 = &v82 - v11;
  v12 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v89 = (&v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = &v82 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v82 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v82 - v23;
  __chkstk_darwin(v22);
  v26 = &v82 - v25;
  result = swift_beginAccess();
  *(v3 + 42) = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v28 = v7;
      v30 = v7[2];
      v29 = (v7 + 2);
      v88 = v30;
      v30(v26, a2, v6);
      v31 = v28[7];
      v31(v26, 0, 1, v6);
      v32 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastWeakSignalStrengthTime;
      swift_beginAccess();
      sub_10019B228(v26, v3 + v32);
      swift_endAccess();
      v31(v26, 1, 1, v6);
      v33 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastStrongSignalStrengthTime;
      swift_beginAccess();
      sub_10019B228(v26, v3 + v33);
      swift_endAccess();
      v34 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      result = swift_beginAccess();
      if (*(v3 + v34) == 1)
      {
        swift_beginAccess();
        v35 = *(v3 + 24);

        Date.init()();
        v36 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
        swift_beginAccess();
        v37 = v90;
        v88(v90, v35 + v36, v6);
        Date.timeIntervalSince(_:)();
        v39 = v38;
        v87 = v29;
        v40 = v28[1];
        v40(v37, v6);
        swift_beginAccess();
        *(v35 + 48) = v39 + *(v35 + 48);
        swift_beginAccess();
        v41 = v35 + v36;
        v42 = v91;
        v83 = v28[3];
        v84 = v28 + 3;
        v83(v41, v91, v6);
        swift_endAccess();

        v85 = v40;
        v86 = v28 + 1;
        v40(v42, v6);
        v43 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
        swift_beginAccess();
        sub_10001A718(v3 + v43, v18, &unk_1002D7BD0, &unk_10024A800);
        v44 = v28[6];
        LODWORD(v43) = v44(v18, 1, v6);
        result = sub_1000157F0(v18, &unk_1002D7BD0, &unk_10024A800);
        if (v43 != 1)
        {
          v45 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
          swift_beginAccess();
          v46 = v89;
          sub_10001A718(v3 + v45, v89, &unk_1002D7BD0, &unk_10024A800);
          LODWORD(v45) = v44(v46, 1, v6);
          result = sub_1000157F0(v46, &unk_1002D7BD0, &unk_10024A800);
          if (v45 == 1)
          {
            result = swift_beginAccess();
            v47 = *(v3 + 32);
            if (v47)
            {
              v48 = *(v3 + 32);

              v49 = v91;
              Date.init()();
              v50 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
              swift_beginAccess();
              v51 = v90;
              v88(v90, v47 + v50, v6);
              Date.timeIntervalSince(_:)();
              v53 = v52;
              v54 = v85;
              v85(v51, v6);
              swift_beginAccess();
              *(v47 + 48) = v53 + *(v47 + 48);
              swift_beginAccess();
              v83(v47 + v50, v49, v6);
              swift_endAccess();

              return v54(v49, v6);
            }
          }
        }
      }
    }

    else
    {
      v55 = v7;
      v88 = v7[2];
      v89 = v7 + 2;
      v88(v26, a2, v6);
      v56 = v7[7];
      v56(v26, 0, 1, v6);
      v57 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastStrongSignalStrengthTime;
      swift_beginAccess();
      sub_10019B228(v26, v3 + v57);
      swift_endAccess();
      v56(v26, 1, 1, v6);
      v58 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastWeakSignalStrengthTime;
      swift_beginAccess();
      sub_10019B228(v26, v3 + v58);
      swift_endAccess();
      v59 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
      result = swift_beginAccess();
      if (*(v3 + v59) == 1)
      {
        swift_beginAccess();
        v60 = *(v3 + 24);

        Date.init()();
        v61 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
        swift_beginAccess();
        v62 = v90;
        v88(v90, v60 + v61, v6);
        Date.timeIntervalSince(_:)();
        v64 = v63;
        v87 = v21;
        v65 = v55[1];
        v65(v62, v6);
        swift_beginAccess();
        *(v60 + 40) = v64 + *(v60 + 40);
        swift_beginAccess();
        v66 = v60 + v61;
        v67 = v91;
        v83 = v55[3];
        v84 = v55 + 3;
        v83(v66, v91, v6);
        swift_endAccess();

        v85 = v65;
        v86 = v55 + 1;
        v65(v67, v6);
        v68 = v87;
        v69 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
        swift_beginAccess();
        sub_10001A718(v3 + v69, v24, &unk_1002D7BD0, &unk_10024A800);
        v70 = v55[6];
        LODWORD(v69) = v70(v24, 1, v6);
        result = sub_1000157F0(v24, &unk_1002D7BD0, &unk_10024A800);
        if (v69 != 1)
        {
          v71 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
          swift_beginAccess();
          sub_10001A718(v3 + v71, v68, &unk_1002D7BD0, &unk_10024A800);
          LODWORD(v71) = v70(v68, 1, v6);
          result = sub_1000157F0(v68, &unk_1002D7BD0, &unk_10024A800);
          if (v71 == 1)
          {
            result = swift_beginAccess();
            v72 = *(v3 + 32);
            if (v72)
            {
              v73 = *(v3 + 32);

              v74 = v91;
              Date.init()();
              v75 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
              swift_beginAccess();
              v76 = v90;
              v88(v90, v72 + v75, v6);
              Date.timeIntervalSince(_:)();
              v78 = v77;
              v79 = v6;
              v80 = v6;
              v81 = v85;
              v85(v76, v79);
              swift_beginAccess();
              *(v72 + 40) = v78 + *(v72 + 40);
              swift_beginAccess();
              v83(v72 + v75, v74, v80);
              swift_endAccess();

              return v81(v74, v80);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001BFC50(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v80 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v72 - v11;
  v12 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v77 = (&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v14);
  v18 = &v72 - v17;
  v19 = __chkstk_darwin(v16);
  v76 = (&v72 - v20);
  v21 = __chkstk_darwin(v19);
  v23 = &v72 - v22;
  __chkstk_darwin(v21);
  v25 = &v72 - v24;
  swift_beginAccess();
  *(v3 + 40) = a1;
  v78 = *(v7 + 16);
  v79 = v7 + 16;
  v78(v25, a2, v6);
  (*(v7 + 56))(v25, 0, 1, v6);
  v26 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastAirplaneModeChangeTime;
  swift_beginAccess();
  sub_10019B228(v25, v3 + v26);
  swift_endAccess();
  v27 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
  result = swift_beginAccess();
  if (*(v3 + v27) == 1)
  {
    v29 = v6;
    v75 = v7 + 8;
    if (a1)
    {
      swift_beginAccess();
      v30 = *(v3 + 24);

      v31 = v81;
      Date.init()();
      v32 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
      swift_beginAccess();
      v33 = v80;
      v34 = v29;
      v78(v80, v30 + v32, v29);
      Date.timeIntervalSince(_:)();
      v36 = v35;
      v37 = *(v7 + 8);
      v37(v33, v34);
      swift_beginAccess();
      *(v30 + 80) = v36 + *(v30 + 80);
      swift_beginAccess();
      v73 = *(v7 + 24);
      v74 = v7 + 24;
      v73(v30 + v32, v31, v34);
      swift_endAccess();

      v77 = v37;
      v37(v31, v34);
      v38 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      sub_10001A718(v3 + v38, v23, &unk_1002D7BD0, &unk_10024A800);
      v39 = *(v7 + 48);
      LODWORD(v38) = v39(v23, 1, v34);
      result = sub_1000157F0(v23, &unk_1002D7BD0, &unk_10024A800);
      if (v38 != 1)
      {
        v40 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v41 = v76;
        sub_10001A718(v3 + v40, v76, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v40) = v39(v41, 1, v34);
        result = sub_1000157F0(v41, &unk_1002D7BD0, &unk_10024A800);
        if (v40 == 1)
        {
          result = swift_beginAccess();
          v42 = *(v3 + 32);
          if (v42)
          {
            v43 = *(v3 + 32);

            v44 = v81;
            Date.init()();
            v45 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
            swift_beginAccess();
            v46 = v80;
            v78(v80, v42 + v45, v34);
            Date.timeIntervalSince(_:)();
            v48 = v47;
            v49 = v46;
            v50 = v77;
            v77(v49, v34);
            swift_beginAccess();
            *(v42 + 80) = v48 + *(v42 + 80);
            swift_beginAccess();
            v73(v42 + v45, v44, v34);
            swift_endAccess();

            return v50(v44, v34);
          }
        }
      }
    }

    else
    {
      swift_beginAccess();
      v51 = *(v3 + 24);

      v52 = v81;
      Date.init()();
      v53 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
      swift_beginAccess();
      v54 = v80;
      v55 = v29;
      v78(v80, v51 + v53, v29);
      Date.timeIntervalSince(_:)();
      v57 = v56;
      v58 = *(v7 + 8);
      v58(v54, v55);
      swift_beginAccess();
      *(v51 + 72) = v57 + *(v51 + 72);
      swift_beginAccess();
      v73 = *(v7 + 24);
      v74 = v7 + 24;
      v73(v51 + v53, v52, v55);
      swift_endAccess();

      v76 = v58;
      v58(v52, v55);
      v59 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      sub_10001A718(v3 + v59, v18, &unk_1002D7BD0, &unk_10024A800);
      v60 = *(v7 + 48);
      LODWORD(v59) = v60(v18, 1, v55);
      result = sub_1000157F0(v18, &unk_1002D7BD0, &unk_10024A800);
      if (v59 != 1)
      {
        v61 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v62 = v77;
        sub_10001A718(v3 + v61, v77, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v61) = v60(v62, 1, v55);
        result = sub_1000157F0(v62, &unk_1002D7BD0, &unk_10024A800);
        if (v61 == 1)
        {
          result = swift_beginAccess();
          v63 = *(v3 + 32);
          if (v63)
          {
            v64 = *(v3 + 32);

            v65 = v81;
            Date.init()();
            v66 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
            swift_beginAccess();
            v67 = v80;
            v78(v80, v63 + v66, v55);
            Date.timeIntervalSince(_:)();
            v69 = v68;
            v70 = v67;
            v71 = v76;
            v76(v70, v55);
            swift_beginAccess();
            *(v63 + 72) = v69 + *(v63 + 72);
            swift_beginAccess();
            v73(v63 + v66, v65, v55);
            swift_endAccess();

            return v71(v65, v55);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001C04E0(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v67 = (&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = &v62 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v62 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v62 - v21;
  __chkstk_darwin(v20);
  v24 = &v62 - v23;
  swift_beginAccess();
  *(v3 + 43) = a1;
  v25 = *(v7 + 16);
  v71 = a2;
  v68 = v25;
  v69 = v7 + 16;
  v25(v24, a2, v6);
  (*(v7 + 56))(v24, 0, 1, v6);
  v26 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastCongestionChangeTime;
  swift_beginAccess();
  sub_10019B228(v24, v3 + v26);
  swift_endAccess();
  v27 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
  result = swift_beginAccess();
  if (*(v3 + v27) == 1)
  {
    v66 = v7 + 8;
    if (a1)
    {
      swift_beginAccess();
      v29 = *(v3 + 24);
      v30 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
      swift_beginAccess();
      v31 = v70;
      v68(v70, v29 + v30, v6);

      v32 = v71;
      Date.timeIntervalSince(_:)();
      v34 = v33;
      v67 = *(v7 + 8);
      v67(v31, v6);
      swift_beginAccess();
      *(v29 + 64) = v34 + *(v29 + 64);
      swift_beginAccess();
      v64 = *(v7 + 24);
      v65 = (v7 + 24);
      v64(v29 + v30, v32, v6);
      swift_endAccess();

      v35 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      sub_10001A718(v3 + v35, v22, &unk_1002D7BD0, &unk_10024A800);
      v36 = *(v7 + 48);
      LODWORD(v35) = v36(v22, 1, v6);
      result = sub_1000157F0(v22, &unk_1002D7BD0, &unk_10024A800);
      if (v35 != 1)
      {
        v37 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        sub_10001A718(v3 + v37, v19, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v37) = v36(v19, 1, v6);
        result = sub_1000157F0(v19, &unk_1002D7BD0, &unk_10024A800);
        if (v37 == 1)
        {
          result = swift_beginAccess();
          v38 = *(v3 + 32);
          if (v38)
          {
            v39 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
            swift_beginAccess();
            v40 = v70;
            v68(v70, v38 + v39, v6);

            v41 = v71;
            Date.timeIntervalSince(_:)();
            v43 = v42;
            v67(v40, v6);
            swift_beginAccess();
            *(v38 + 64) = v43 + *(v38 + 64);
            swift_beginAccess();
            v64(v38 + v39, v41, v6);
LABEL_11:
            swift_endAccess();
          }
        }
      }
    }

    else
    {
      swift_beginAccess();
      v44 = *(v3 + 24);
      v45 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
      swift_beginAccess();
      v46 = v70;
      v68(v70, v44 + v45, v6);

      v47 = v71;
      Date.timeIntervalSince(_:)();
      v49 = v48;
      v65 = *(v7 + 8);
      v65(v46, v6);
      swift_beginAccess();
      *(v44 + 56) = v49 + *(v44 + 56);
      swift_beginAccess();
      v63 = *(v7 + 24);
      v64 = (v7 + 24);
      v63(v44 + v45, v47, v6);
      swift_endAccess();

      v50 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      sub_10001A718(v3 + v50, v16, &unk_1002D7BD0, &unk_10024A800);
      v51 = *(v7 + 48);
      LODWORD(v45) = v51(v16, 1, v6);
      result = sub_1000157F0(v16, &unk_1002D7BD0, &unk_10024A800);
      if (v45 != 1)
      {
        v52 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v53 = v3 + v52;
        v54 = v67;
        sub_10001A718(v53, v67, &unk_1002D7BD0, &unk_10024A800);
        v55 = v51(v54, 1, v6);
        result = sub_1000157F0(v54, &unk_1002D7BD0, &unk_10024A800);
        if (v55 == 1)
        {
          result = swift_beginAccess();
          v56 = *(v3 + 32);
          if (v56)
          {
            v57 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
            swift_beginAccess();
            v58 = v70;
            v68(v70, v56 + v57, v6);

            v59 = v71;
            Date.timeIntervalSince(_:)();
            v61 = v60;
            v65(v58, v6);
            swift_beginAccess();
            *(v56 + 56) = v61 + *(v56 + 56);
            swift_beginAccess();
            v63(v56 + v57, v59, v6);
            goto LABEL_11;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001C0CA0(int a1, uint64_t a2)
{
  v3 = v2;
  v230 = a2;
  v5 = type metadata accessor for Date();
  v228 = *(v5 - 8);
  v6 = v228[8];
  __chkstk_darwin(v5);
  v229 = &v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v224 = &v204 - v14;
  v15 = __chkstk_darwin(v13);
  v217 = &v204 - v16;
  v17 = __chkstk_darwin(v15);
  v223 = &v204 - v18;
  v19 = __chkstk_darwin(v17);
  v216 = &v204 - v20;
  v21 = __chkstk_darwin(v19);
  v222 = (&v204 - v22);
  v23 = __chkstk_darwin(v21);
  v215 = &v204 - v24;
  v25 = __chkstk_darwin(v23);
  v221 = (&v204 - v26);
  v27 = __chkstk_darwin(v25);
  v214 = &v204 - v28;
  v29 = __chkstk_darwin(v27);
  v220 = &v204 - v30;
  v31 = __chkstk_darwin(v29);
  v226 = &v204 - v32;
  v33 = __chkstk_darwin(v31);
  v213 = &v204 - v34;
  v35 = __chkstk_darwin(v33);
  v219 = &v204 - v36;
  v37 = __chkstk_darwin(v35);
  v225 = &v204 - v38;
  v39 = __chkstk_darwin(v37);
  v212 = &v204 - v40;
  v41 = __chkstk_darwin(v39);
  v218 = &v204 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v204 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = &v204 - v47;
  v49 = __chkstk_darwin(v46);
  v51 = &v204 - v50;
  __chkstk_darwin(v49);
  v53 = &v204 - v52;
  v54 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
  result = swift_beginAccess();
  if (*(v3 + v54) == 1)
  {
    v210 = v12;
    v211 = a1;
    *(v3 + v54) = 2;
    v56 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastInServiceTime;
    swift_beginAccess();
    sub_10001A718(v3 + v56, v53, &unk_1002D7BD0, &unk_10024A800);
    v231 = v228[6];
    v232 = v228 + 6;
    LODWORD(v56) = v231(v53, 1, v5);
    sub_1000157F0(v53, &unk_1002D7BD0, &unk_10024A800);
    v227 = v5;
    if (v56 != 1)
    {
      swift_beginAccess();
      v57 = *(v3 + 24);
      v58 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
      swift_beginAccess();
      v59 = v228;
      v60 = v229;
      v208 = v228[2];
      v209 = (v228 + 2);
      v208(v229, v57 + v58, v227);

      v61 = v230;
      Date.timeIntervalSince(_:)();
      v63 = v62;
      v206 = v59[1];
      v207 = (v59 + 1);
      v206(v60, v227);
      swift_beginAccess();
      *(v57 + 32) = v63 + *(v57 + 32);
      swift_beginAccess();
      v64 = v59;
      v5 = v227;
      v205 = v64[3];
      v205(v57 + v58, v61, v227);
      swift_endAccess();

      v65 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      sub_10001A718(v3 + v65, v51, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v65) = v231(v51, 1, v5);
      sub_1000157F0(v51, &unk_1002D7BD0, &unk_10024A800);
      if (v65 != 1)
      {
        v66 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        sub_10001A718(v3 + v66, v48, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v66) = v231(v48, 1, v5);
        sub_1000157F0(v48, &unk_1002D7BD0, &unk_10024A800);
        if (v66 == 1)
        {
          swift_beginAccess();
          v67 = *(v3 + 32);
          if (v67)
          {
            v68 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
            swift_beginAccess();
            v69 = v229;
            v208(v229, v67 + v68, v5);

            v70 = v230;
            Date.timeIntervalSince(_:)();
            v72 = v71;
            v206(v69, v5);
            swift_beginAccess();
            *(v67 + 32) = v72 + *(v67 + 32);
            swift_beginAccess();
            v205(v67 + v68, v70, v5);
            swift_endAccess();
          }
        }
      }
    }

    v73 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastOutOfServiceTime;
    swift_beginAccess();
    sub_10001A718(v3 + v73, v45, &unk_1002D7BD0, &unk_10024A800);
    LODWORD(v73) = v231(v45, 1, v5);
    sub_1000157F0(v45, &unk_1002D7BD0, &unk_10024A800);
    if (v73 != 1)
    {
      swift_beginAccess();
      v74 = *(v3 + 24);
      v75 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
      swift_beginAccess();
      v76 = v228;
      v77 = v229;
      v209 = v228[2];
      v209(v229, v74 + v75, v227);

      v78 = v230;
      Date.timeIntervalSince(_:)();
      v80 = v79;
      v208 = v76[1];
      (v208)(v77, v227);
      swift_beginAccess();
      *(v74 + 24) = v80 + *(v74 + 24);
      swift_beginAccess();
      v81 = v76;
      v5 = v227;
      v207 = v81[3];
      v207(v74 + v75, v78, v227);
      swift_endAccess();

      v82 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v83 = v218;
      sub_10001A718(v3 + v82, v218, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v82) = v231(v83, 1, v5);
      sub_1000157F0(v83, &unk_1002D7BD0, &unk_10024A800);
      if (v82 != 1)
      {
        v84 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v85 = v212;
        sub_10001A718(v3 + v84, v212, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v84) = v231(v85, 1, v5);
        sub_1000157F0(v85, &unk_1002D7BD0, &unk_10024A800);
        if (v84 == 1)
        {
          swift_beginAccess();
          v86 = *(v3 + 32);
          if (v86)
          {
            v87 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastRegistrationMarkTime;
            swift_beginAccess();
            v88 = v229;
            v209(v229, v86 + v87, v5);

            v89 = v230;
            Date.timeIntervalSince(_:)();
            v91 = v90;
            (v208)(v88, v5);
            swift_beginAccess();
            *(v86 + 24) = v91 + *(v86 + 24);
            swift_beginAccess();
            v207(v86 + v87, v89, v5);
            swift_endAccess();
          }
        }
      }
    }

    v92 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastWeakSignalStrengthTime;
    swift_beginAccess();
    v93 = v225;
    sub_10001A718(v3 + v92, v225, &unk_1002D7BD0, &unk_10024A800);
    LODWORD(v92) = v231(v93, 1, v5);
    sub_1000157F0(v93, &unk_1002D7BD0, &unk_10024A800);
    if (v92 != 1)
    {
      swift_beginAccess();
      v94 = *(v3 + 24);
      v95 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
      swift_beginAccess();
      v97 = v228;
      v96 = v229;
      v225 = v228[2];
      (v225)(v229, v94 + v95, v5);

      v98 = v230;
      Date.timeIntervalSince(_:)();
      v100 = v99;
      v218 = v97[1];
      (v218)(v96, v5);
      swift_beginAccess();
      *(v94 + 40) = v100 + *(v94 + 40);
      swift_beginAccess();
      v212 = v97[3];
      (v212)(v94 + v95, v98, v5);
      swift_endAccess();

      v101 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v102 = v219;
      sub_10001A718(v3 + v101, v219, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v101) = v231(v102, 1, v5);
      sub_1000157F0(v102, &unk_1002D7BD0, &unk_10024A800);
      if (v101 != 1)
      {
        v103 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v104 = v213;
        sub_10001A718(v3 + v103, v213, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v103) = v231(v104, 1, v5);
        sub_1000157F0(v104, &unk_1002D7BD0, &unk_10024A800);
        if (v103 == 1)
        {
          swift_beginAccess();
          v105 = *(v3 + 32);
          if (v105)
          {
            v106 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
            swift_beginAccess();
            v107 = v229;
            (v225)(v229, v105 + v106, v5);

            v108 = v230;
            Date.timeIntervalSince(_:)();
            v110 = v109;
            (v218)(v107, v5);
            swift_beginAccess();
            *(v105 + 40) = v110 + *(v105 + 40);
            swift_beginAccess();
            (v212)(v105 + v106, v108, v5);
            swift_endAccess();
          }
        }
      }
    }

    v111 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastStrongSignalStrengthTime;
    swift_beginAccess();
    v112 = v226;
    sub_10001A718(v3 + v111, v226, &unk_1002D7BD0, &unk_10024A800);
    LODWORD(v111) = v231(v112, 1, v5);
    sub_1000157F0(v112, &unk_1002D7BD0, &unk_10024A800);
    if (v111 != 1)
    {
      swift_beginAccess();
      v113 = *(v3 + 24);
      v114 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
      swift_beginAccess();
      v116 = v228;
      v115 = v229;
      v226 = v228[2];
      (v226)(v229, v113 + v114, v5);

      v117 = v230;
      Date.timeIntervalSince(_:)();
      v119 = v118;
      v225 = v116[1];
      (v225)(v115, v5);
      swift_beginAccess();
      *(v113 + 48) = v119 + *(v113 + 48);
      swift_beginAccess();
      v219 = v116[3];
      (v219)(v113 + v114, v117, v5);
      swift_endAccess();

      v120 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v121 = v220;
      sub_10001A718(v3 + v120, v220, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v120) = v231(v121, 1, v5);
      sub_1000157F0(v121, &unk_1002D7BD0, &unk_10024A800);
      if (v120 != 1)
      {
        v122 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v123 = v214;
        sub_10001A718(v3 + v122, v214, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v122) = v231(v123, 1, v5);
        sub_1000157F0(v123, &unk_1002D7BD0, &unk_10024A800);
        if (v122 == 1)
        {
          swift_beginAccess();
          v124 = *(v3 + 32);
          if (v124)
          {
            v125 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastSignalStrengthMarkTime;
            swift_beginAccess();
            v126 = v229;
            (v226)(v229, v124 + v125, v5);

            v127 = v230;
            Date.timeIntervalSince(_:)();
            v129 = v128;
            (v225)(v126, v5);
            swift_beginAccess();
            *(v124 + 48) = v129 + *(v124 + 48);
            swift_beginAccess();
            (v219)(v124 + v125, v127, v5);
            swift_endAccess();
          }
        }
      }
    }

    swift_beginAccess();
    v130 = *(v3 + 43);
    v131 = v228;
    v218 = (v228 + 2);
    v219 = (v228 + 1);
    if (v130 == 1)
    {
      swift_beginAccess();
      v132 = *(v3 + 24);
      v133 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
      swift_beginAccess();
      v134 = v229;
      v135 = v227;
      v226 = v131[2];
      (v226)(v229, v132 + v133, v227);

      v136 = v230;
      Date.timeIntervalSince(_:)();
      v138 = v137;
      v225 = v131[1];
      (v225)(v134, v135);
      swift_beginAccess();
      *(v132 + 56) = v138 + *(v132 + 56);
      swift_beginAccess();
      v220 = v131[3];
      v222 = v131 + 3;
      (v220)(v132 + v133, v136, v135);
      swift_endAccess();

      v139 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v140 = v221;
      sub_10001A718(v3 + v139, v221, &unk_1002D7BD0, &unk_10024A800);
      v141 = v231;
      LODWORD(v139) = v231(v140, 1, v135);
      sub_1000157F0(v140, &unk_1002D7BD0, &unk_10024A800);
      if (v139 != 1)
      {
        v142 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v143 = v215;
        sub_10001A718(v3 + v142, v215, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v142) = v141(v143, 1, v135);
        sub_1000157F0(v143, &unk_1002D7BD0, &unk_10024A800);
        if (v142 == 1)
        {
          swift_beginAccess();
          v144 = *(v3 + 32);
          if (v144)
          {
            v145 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
            swift_beginAccess();
            v146 = v229;
            v147 = v227;
            (v226)(v229, v144 + v145, v227);

            v148 = v230;
            Date.timeIntervalSince(_:)();
            v150 = v149;
            (v225)(v146, v147);
            swift_beginAccess();
            *(v144 + 56) = v150 + *(v144 + 56);
            swift_beginAccess();
            (v220)(v144 + v145, v148, v147);
LABEL_31:
            swift_endAccess();
          }
        }
      }
    }

    else
    {
      swift_beginAccess();
      v151 = *(v3 + 24);
      v152 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
      swift_beginAccess();
      v153 = v229;
      v154 = v227;
      v226 = v131[2];
      (v226)(v229, v151 + v152, v227);

      v155 = v230;
      Date.timeIntervalSince(_:)();
      v157 = v156;
      v225 = v131[1];
      (v225)(v153, v154);
      swift_beginAccess();
      *(v151 + 64) = v157 + *(v151 + 64);
      swift_beginAccess();
      v220 = v131[3];
      v221 = v131 + 3;
      (v220)(v151 + v152, v155, v154);
      swift_endAccess();

      v158 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v159 = v222;
      sub_10001A718(v3 + v158, v222, &unk_1002D7BD0, &unk_10024A800);
      v160 = v231;
      LODWORD(v158) = v231(v159, 1, v154);
      sub_1000157F0(v159, &unk_1002D7BD0, &unk_10024A800);
      if (v158 != 1)
      {
        v161 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
        swift_beginAccess();
        v162 = v216;
        sub_10001A718(v3 + v161, v216, &unk_1002D7BD0, &unk_10024A800);
        LODWORD(v161) = v160(v162, 1, v154);
        sub_1000157F0(v162, &unk_1002D7BD0, &unk_10024A800);
        if (v161 == 1)
        {
          swift_beginAccess();
          v163 = *(v3 + 32);
          if (v163)
          {
            v164 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastCongestionMarkTime;
            swift_beginAccess();
            v165 = v229;
            v166 = v227;
            (v226)(v229, v163 + v164, v227);

            v167 = v230;
            Date.timeIntervalSince(_:)();
            v169 = v168;
            (v225)(v165, v166);
            swift_beginAccess();
            *(v163 + 64) = v169 + *(v163 + 64);
            swift_beginAccess();
            (v220)(v163 + v164, v167, v166);
            goto LABEL_31;
          }
        }
      }
    }

    swift_beginAccess();
    if (*(v3 + 40) == 1)
    {
      swift_beginAccess();
      v170 = *(v3 + 24);
      v171 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
      swift_beginAccess();
      v172 = v229;
      v173 = v227;
      (v226)(v229, v170 + v171, v227);

      v174 = v230;
      Date.timeIntervalSince(_:)();
      v176 = v175;
      (v225)(v172, v173);
      swift_beginAccess();
      *(v170 + 72) = v176 + *(v170 + 72);
      swift_beginAccess();
      v177 = v173;
      (v220)(v170 + v171, v174, v173);
      swift_endAccess();

      v178 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v179 = v223;
      sub_10001A718(v3 + v178, v223, &unk_1002D7BD0, &unk_10024A800);
      v180 = v231;
      LODWORD(v178) = v231(v179, 1, v177);
      sub_1000157F0(v179, &unk_1002D7BD0, &unk_10024A800);
      if (v178 == 1)
      {
        goto LABEL_42;
      }

      v181 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
      swift_beginAccess();
      v182 = v217;
      sub_10001A718(v3 + v181, v217, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v181) = v180(v182, 1, v177);
      sub_1000157F0(v182, &unk_1002D7BD0, &unk_10024A800);
      if (v181 != 1)
      {
        goto LABEL_42;
      }

      swift_beginAccess();
      v183 = *(v3 + 32);
      if (!v183)
      {
        goto LABEL_42;
      }

      v184 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
      swift_beginAccess();
      v185 = v229;
      (v226)(v229, v183 + v184, v177);

      v186 = v230;
      Date.timeIntervalSince(_:)();
      v188 = v187;
      (v225)(v185, v177);
      swift_beginAccess();
      *(v183 + 72) = v188 + *(v183 + 72);
    }

    else
    {
      swift_beginAccess();
      v189 = *(v3 + 24);
      v190 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
      swift_beginAccess();
      v191 = v229;
      v192 = v227;
      (v226)(v229, v189 + v190, v227);

      v193 = v230;
      Date.timeIntervalSince(_:)();
      v195 = v194;
      (v225)(v191, v192);
      swift_beginAccess();
      *(v189 + 80) = v195 + *(v189 + 80);
      swift_beginAccess();
      v177 = v192;
      (v220)(v189 + v190, v193, v192);
      swift_endAccess();

      v196 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
      swift_beginAccess();
      v197 = v224;
      sub_10001A718(v3 + v196, v224, &unk_1002D7BD0, &unk_10024A800);
      v198 = v231;
      LODWORD(v196) = v231(v197, 1, v177);
      sub_1000157F0(v197, &unk_1002D7BD0, &unk_10024A800);
      if (v196 == 1)
      {
        goto LABEL_42;
      }

      v199 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
      swift_beginAccess();
      v200 = v210;
      sub_10001A718(v3 + v199, v210, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v199) = v198(v200, 1, v177);
      sub_1000157F0(v200, &unk_1002D7BD0, &unk_10024A800);
      if (v199 != 1)
      {
        goto LABEL_42;
      }

      swift_beginAccess();
      v183 = *(v3 + 32);
      if (!v183)
      {
        goto LABEL_42;
      }

      v184 = OBJC_IVAR____TtC17wirelessinsightsd23RegistrationTimeCounter_lastAirplaneMarkTime;
      swift_beginAccess();
      v201 = v229;
      (v226)(v229, v183 + v184, v177);

      v186 = v230;
      Date.timeIntervalSince(_:)();
      v203 = v202;
      (v225)(v201, v177);
      swift_beginAccess();
      *(v183 + 80) = v203 + *(v183 + 80);
    }

    swift_beginAccess();
    (v220)(v183 + v184, v186, v177);
    swift_endAccess();

LABEL_42:
    result = swift_beginAccess();
    if (*(v3 + 44) == 3)
    {
      *(v3 + 44) = v211;
    }
  }

  return result;
}

uint64_t sub_1001C28F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastInServiceTime, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastOutOfServiceTime, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastWeakSignalStrengthTime, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastStrongSignalStrengthTime, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastCongestionChangeTime, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastAirplaneModeChangeTime, &unk_1002D7BD0, &unk_10024A800);

  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation, &unk_1002D7BD0, &unk_10024A800);
  return v0;
}

uint64_t sub_1001C2A20()
{
  sub_1001C28F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1001C2A90(void (*a1)(void))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  a1();
  return v5;
}

uint64_t sub_1001C2AD0()
{
  v1 = v0;
  *(v0 + 16) = 0x4072C00000000000;
  v2 = type metadata accessor for RegistrationTimeCounter(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  sub_1001BE4C8();
  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 44) = 3;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  v6 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastInServiceTime;
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(v1 + v6, 1, 1, v7);
  v8(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastOutOfServiceTime, 1, 1, v7);
  v8(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastWeakSignalStrengthTime, 1, 1, v7);
  v8(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastStrongSignalStrengthTime, 1, 1, v7);
  v8(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastCongestionChangeTime, 1, 1, v7);
  v8(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_lastAirplaneModeChangeTime, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_startTimeLocation) = 0;
  *(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_closestLocation) = 0;
  v8(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation, 1, 1, v7);
  v8(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state) = 0;
  return v1;
}

uint64_t sub_1001C2CB4()
{
  v1 = 0x6574616C756D6973;
  if (*v0 != 1)
  {
    v1 = 0x64656E69626D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1818322290;
  }
}

unint64_t sub_1001C2D0C()
{
  v1 = 0x76614E207370614DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1001C2D8C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t sub_1001C2DD4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 128);
  *(v1 + 128) = a1;
}

uint64_t sub_1001C2E1C()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  PrivateServicePrediction.predictedStartTime.getter();
  v5 = static Date.< infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_1001C2F00(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = type metadata accessor for PrivateServicePrediction();
  v7 = *(*(v40 - 8) + 64);
  v8 = __chkstk_darwin(v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = _swiftEmptyArrayStorage;
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001D5FA0(0, v24[2] + 1, 1);
          v24 = v41;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_1001D5FA0(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        v24[2] = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_1001C31D0()
{
  v1 = v0;
  v41 = type metadata accessor for PrivateServicePrediction();
  v47 = *(v41 - 8);
  v2 = *(v47 + 64);
  __chkstk_darwin(v41);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InternalServicePrediction();
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v44 = &v39 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - v11;
  result = (*((swift_isaMask & *v0) + 0x148))(v10);
  v14 = *(result + 16);
  v15 = _swiftEmptyArrayStorage;
  v42 = v0;
  v43 = v14;
  if (v14)
  {
    v16 = 0;
    while (v16 < *(result + 16))
    {
      v17 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v18 = result;
      v19 = *(v46 + 72);
      sub_1001DC504(result + v17 + v19 * v16, v12, type metadata accessor for InternalServicePrediction);
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      (*((swift_isaMask & *v1) + 0x238))(v49, isCurrentExecutor);
      v21 = sub_100162F14(v49);

      if (v21)
      {
        sub_1001DC56C(v12, v44, type metadata accessor for InternalServicePrediction);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001BBCAC(0, v15[2] + 1, 1);
          v15 = v48;
        }

        v24 = v15[2];
        v23 = v15[3];
        if (v24 >= v23 >> 1)
        {
          sub_1001BBCAC(v23 > 1, v24 + 1, 1);
          v15 = v48;
        }

        v15[2] = v24 + 1;
        sub_1001DC56C(v44, v15 + v17 + v24 * v19, type metadata accessor for InternalServicePrediction);
        v1 = v42;
      }

      else
      {
        sub_1001DE088(v12, type metadata accessor for InternalServicePrediction);
      }

      ++v16;
      result = v18;
      if (v43 == v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    v25 = v15[2];
    if (v25)
    {
      v48 = _swiftEmptyArrayStorage;
      sub_1001D5FA0(0, v25, 0);
      v26 = v15 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v46 = *(v46 + 72);
      v27 = v48;
      v28 = (v47 + 16);
      v44 = v47 + 32;
      v30 = v40;
      v29 = v41;
      do
      {
        v31 = v45;
        sub_1001DC504(v26, v45, type metadata accessor for InternalServicePrediction);
        (*v28)(v30, v31, v29);
        sub_1001DE088(v31, type metadata accessor for InternalServicePrediction);
        v48 = v27;
        v33 = v27[2];
        v32 = v27[3];
        if (v33 >= v32 >> 1)
        {
          sub_1001D5FA0(v32 > 1, v33 + 1, 1);
          v29 = v41;
          v27 = v48;
        }

        v27[2] = v33 + 1;
        (*(v47 + 32))(v27 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v33, v30, v29);
        v26 += v46;
        --v25;
      }

      while (v25);
    }

    else
    {

      v27 = _swiftEmptyArrayStorage;
    }

    v48 = v27;
    v35 = v42;
    v36 = *((swift_isaMask & *v42) + 0x158);
    if ((v36)(v34) == 1)
    {

      return (*((swift_isaMask & *v35) + 0x170))(v37);
    }

    else if (v36() == 2)
    {
      v38 = (*((swift_isaMask & *v35) + 0x170))();
      sub_1000046B8(v38, &unk_1002D8270, &qword_10024D548, &type metadata accessor for PrivateServicePrediction, &type metadata accessor for PrivateServicePrediction);
      return v48;
    }

    return v27;
  }

  return result;
}

uint64_t sub_1001C37EC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = type metadata accessor for PrivateServicePrediction();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (!v10)
  {
    return v11;
  }

  v23 = _swiftEmptyArrayStorage;
  sub_1001D5FA0(0, v10, 0);
  v11 = v23;
  v12 = *(type metadata accessor for WIS.SimulatedPredictionItem() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v19 = v6 + 32;
  v18 = *(v12 + 72);
  while (1)
  {
    v21(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = v11[2];
    v14 = v11[3];
    if (v15 >= v14 >> 1)
    {
      sub_1001D5FA0(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    v11[2] = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v20);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001C3A24(char a1)
{
  result = swift_beginAccess();
  *(v1 + 192) = a1;
  return result;
}

uint64_t sub_1001C3AB4()
{
  swift_beginAccess();
  v1 = *(v0 + 200);
}

uint64_t sub_1001C3AEC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 200);
  *(v1 + 200) = a1;
}

uint64_t sub_1001C3B84(uint64_t a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x170))();
  v5[2] = a1;
  return sub_1001C2F00(sub_1001DFBD0, v5, v3);
}

uint64_t sub_1001C3C18()
{
  swift_beginAccess();
  v1 = *(v0 + 208);
}

uint64_t sub_1001C3C50(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 208);
  *(v1 + 208) = a1;
}

uint64_t sub_1001C3D1C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 216) = a1;
  return result;
}

uint64_t sub_1001C3DE0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 217) = a1;
  return result;
}

uint64_t sub_1001C3EA4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 218) = a1;
  return result;
}

uint64_t sub_1001C3F68(char a1)
{
  result = swift_beginAccess();
  *(v1 + 219) = a1;
  return result;
}

void *sub_1001C3FF8()
{
  swift_beginAccess();
  v1 = *(v0 + 224);
  v2 = v1;
  return v1;
}

uint64_t sub_1001C408C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 240);
  *(v1 + 240) = a1;
}

id sub_1001C420C()
{
  v0 = [objc_allocWithZone(type metadata accessor for ServicePredictionRegistrationAdaptor()) init];
  [*&v0[OBJC_IVAR____TtC17wirelessinsightsd36ServicePredictionRegistrationAdaptor_relayAdaptor] setDelegate:v0];
  v1 = v0;
  v2 = sub_100167E18();
  v3 = sub_1001654A8(v2, v8);
  XPCEventPublisher.Token.rawValue.getter(v3, v4);
  type metadata accessor for ServicePredictionController();
  v5 = swift_allocObject();
  v6 = sub_1001DC800(v1, sub_1001C42E0, 0, v8, v5);

  return v6;
}

id sub_1001C42E0()
{
  v0 = [objc_opt_self() getSharedInstance];
  v1 = [v0 locationController];

  return v1;
}

uint64_t sub_1001C4340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v16 = a7(a1, a2, a3, a4, a5, a6, v7, ObjectType);

  return v16;
}

uint64_t sub_1001C43CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1001C43F0, 0, 0);
}

uint64_t sub_1001C43F0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  [(*(v0 + 16))() addDelegate:v1];
  swift_unknownObjectRelease();
  v3 = *(v1 + 136);
  *(v0 + 48) = v3;
  if (v3)
  {
    v4 = ((swift_isaMask & *v3) + 248) & 0xFFFFFFFFFFFFLL | 0x5958000000000000;
    *(v0 + 56) = *((swift_isaMask & *v3) + 0xF8);
    *(v0 + 64) = v4;
    v5 = sub_1001C44F0;
  }

  else
  {
    v3 = *(*(v0 + 32) + 144);
    *(v0 + 72) = v3;
    v6 = *v3 + 608;
    *(v0 + 80) = *v6;
    *(v0 + 88) = v6 & 0xFFFFFFFFFFFFLL | 0x92C4000000000000;
    v5 = sub_1001C45B0;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_1001C44F0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  (*(v0 + 56))(*(v0 + 32), &off_1002B7A80);

  return _swift_task_switch(sub_1001C4568, 0, 0);
}

uint64_t sub_1001C4568()
{
  v1 = *(v0[4] + 144);
  v0[9] = v1;
  v2 = *v1 + 608;
  v0[10] = *v2;
  v0[11] = v2 & 0xFFFFFFFFFFFFLL | 0x92C4000000000000;
  return _swift_task_switch(sub_1001C45B0, v1, 0);
}

uint64_t sub_1001C45B0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 32), &off_1002B7A50);
  v3 = *v2 + 704;
  *(v0 + 96) = *v3;
  *(v0 + 104) = v3 & 0xFFFFFFFFFFFFLL | 0xB38D000000000000;

  return _swift_task_switch(sub_1001C464C, v2, 0);
}

uint64_t sub_1001C464C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  (*(v0 + 96))();

  return _swift_task_switch(sub_1001C46B8, 0, 0);
}

uint64_t sub_1001C46B8()
{
  v1 = *(v0 + 32);
  [*(v0 + 40) triggerAirplaneModeActiveFetch];
  v2 = ((swift_isaMask & *v1) + 616) & 0xFFFFFFFFFFFFLL | 0x9CE0000000000000;
  *(v0 + 112) = *((swift_isaMask & *v1) + 0x268);
  *(v0 + 120) = v2;

  return _swift_task_switch(sub_1001C475C, v1, 0);
}

uint64_t sub_1001C475C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 32);
  (*(v0 + 112))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001C47C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001A718(a3, v27 - v11, &qword_1002D7180, &qword_10024ABF0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000157F0(v12, &qword_1002D7180, &qword_10024ABF0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100164A3C(&qword_1002D8230, &qword_10024D510);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000157F0(a3, &qword_1002D7180, &qword_10024ABF0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100164A3C(&qword_1002D8230, &qword_10024D510);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1001C4AD4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v12 - v5;
  v7 = (*((swift_isaMask & *v0) + 0x278))(v4);
  v8 = (*((swift_isaMask & *v0) + 0x150))(v7);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v10[5] = ObjectType;
  sub_100176B80(0, 0, v6, &unk_10024C710, v10);
}

uint64_t sub_1001C4C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for PrivateServicePrediction();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = type metadata accessor for ServicePrediction();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = type metadata accessor for WIS.XPC.ServicePredictionUpdate();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();
  v15 = type metadata accessor for WIS.XPC.PrivateServicePredictionUpdate();
  v5[13] = v15;
  v16 = *(v15 - 8);
  v5[14] = v16;
  v17 = *(v16 + 64) + 15;
  v5[15] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v5[16] = v18;
  v19 = *(v18 - 8);
  v5[17] = v19;
  v20 = *(v19 + 64) + 15;
  v5[18] = swift_task_alloc();

  return _swift_task_switch(sub_1001C4E98, 0, 0);
}

uint64_t sub_1001C4E98()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_100003E50(&off_1002B7A38, v0[18]);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[2];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "sending predictions %ld", v7, 0xCu);
  }

  else
  {
    v8 = v0[2];
  }

  (*(v0[17] + 8))(v0[18], v0[16]);
  v9 = sub_1000CE644();
  v0[19] = v9;
  if (v9)
  {
    v10 = v0[15];
    v11 = v0[2];

    WIS.XPC.PrivateServicePredictionUpdate.init(predictions:)();
    v12 = swift_task_alloc();
    v0[20] = v12;
    *v12 = v0;
    v12[1] = sub_1001C529C;
    v13 = v0[15];

    return sub_100168EA8(v13);
  }

  else
  {
    v15 = sub_1000CE644();
    v0[21] = v15;
    if (v15)
    {
      v16 = v0[2];
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = v0[8];
        v19 = v0[5];
        sub_1001D5FE4(0, v17, 0);
        v20 = *(v19 + 16);
        v19 += 16;
        v21 = v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
        v39 = *(v19 + 56);
        v40 = v20;
        v22 = (v19 - 8);
        do
        {
          v23 = v0[9];
          v24 = v0[6];
          v25 = v0[4];
          v40(v24, v21, v25);
          sub_1001C5880(v23);
          (*v22)(v24, v25);
          v27 = _swiftEmptyArrayStorage[2];
          v26 = _swiftEmptyArrayStorage[3];
          if (v27 >= v26 >> 1)
          {
            sub_1001D5FE4(v26 > 1, v27 + 1, 1);
          }

          v28 = v0[9];
          v29 = v0[7];
          _swiftEmptyArrayStorage[2] = v27 + 1;
          (*(v18 + 32))(_swiftEmptyArrayStorage + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v27, v28, v29);
          v21 += v39;
          --v17;
        }

        while (v17);
      }

      v30 = v0[12];
      WIS.XPC.ServicePredictionUpdate.init(predictions:)();
      v31 = swift_task_alloc();
      v0[22] = v31;
      *v31 = v0;
      v31[1] = sub_1001C5690;
      v32 = v0[12];

      return sub_100168C64(v32);
    }

    else
    {
      v33 = v0[18];
      v34 = v0[15];
      v35 = v0[12];
      v36 = v0[9];
      v37 = v0[6];

      v38 = v0[1];

      return v38();
    }
  }
}

uint64_t sub_1001C529C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v5 = *(*v0 + 104);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_1001C540C, 0, 0);
}

uint64_t sub_1001C540C()
{
  v1 = sub_1000CE644();
  v0[21] = v1;
  if (v1)
  {
    v2 = v0[2];
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[8];
      v5 = v0[5];
      sub_1001D5FE4(0, v3, 0);
      v6 = *(v5 + 16);
      v5 += 16;
      v7 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
      v26 = *(v5 + 56);
      v27 = v6;
      v8 = (v5 - 8);
      do
      {
        v9 = v0[9];
        v10 = v0[6];
        v11 = v0[4];
        v27(v10, v7, v11);
        sub_1001C5880(v9);
        (*v8)(v10, v11);
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_1001D5FE4(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[9];
        v15 = v0[7];
        _swiftEmptyArrayStorage[2] = v13 + 1;
        (*(v4 + 32))(_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v14, v15);
        v7 += v26;
        --v3;
      }

      while (v3);
    }

    v16 = v0[12];
    WIS.XPC.ServicePredictionUpdate.init(predictions:)();
    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_1001C5690;
    v18 = v0[12];

    return sub_100168C64(v18);
  }

  else
  {
    v20 = v0[18];
    v21 = v0[15];
    v22 = v0[12];
    v23 = v0[9];
    v24 = v0[6];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1001C5690()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 88);
  v6 = *(*v0 + 80);
  v7 = *v0;

  (*(v5 + 8))(v4, v6);
  v8 = v1[18];
  v9 = v1[15];
  v10 = v1[12];
  v11 = v1[9];
  v12 = v1[6];

  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_1001C5880@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v94 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for ServicePrediction.ConfidenceScore();
  v93 = *(v95 - 8);
  v5 = *(v93 + 64);
  v6 = __chkstk_darwin(v95);
  v92 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = &v80 - v8;
  v84 = type metadata accessor for PrivateServicePrediction.ConfidenceScore();
  v83 = *(v84 - 8);
  v9 = *(v83 + 64);
  __chkstk_darwin(v84);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ServicePrediction.Confidence();
  v90 = *(v85 - 8);
  v12 = v90[8];
  v13 = __chkstk_darwin(v85);
  v89 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v87 = &v80 - v16;
  v17 = __chkstk_darwin(v15);
  v86 = &v80 - v18;
  v19 = __chkstk_darwin(v17);
  v100 = &v80 - v20;
  v21 = __chkstk_darwin(v19);
  v102 = &v80 - v22;
  __chkstk_darwin(v21);
  v101 = &v80 - v23;
  v24 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ServicePrediction.Impact();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = __chkstk_darwin(v29);
  v82 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v80 - v34;
  v36 = enum case for ServicePrediction.Impact.high(_:);
  v80 = v30[13];
  v80(&v80 - v34, enum case for ServicePrediction.Impact.high(_:), v29);
  v99 = v1;
  PrivateServicePrediction.type.getter();
  v37 = (*(v25 + 88))(v28, v24);
  v97 = v30;
  if (v37 == enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:))
  {
    v81 = v30[1];
    v81(v35, v29);
    v38 = v29;
  }

  else
  {
    if (v37 == enum case for PrivateServicePrediction.ServicePredictionType.cellularDataCongestion(_:))
    {
      v38 = v29;
      v81 = v97[1];
      v81(v35, v29);
      v39 = &enum case for ServicePrediction.Impact.medium(_:);
    }

    else
    {
      if (v37 != enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v38 = v29;
      v81 = v97[1];
      v81(v35, v29);
      v39 = &enum case for ServicePrediction.Impact.low(_:);
    }

    v36 = *v39;
  }

  v98 = v35;
  v80(v35, v36, v38);
  static ServicePrediction.QuantizedInterval.minimal.getter();
  PrivateServicePrediction.predictedDuration.getter();
  v41 = v40;
  static ServicePrediction.QuantizedInterval.medium.getter();
  v88 = v38;
  if (v42 * 1.3 >= v41)
  {
    PrivateServicePrediction.predictedDuration.getter();
    v48 = v47;
    static ServicePrediction.QuantizedInterval.short.getter();
    v43 = v90;
    v44 = v84;
    v45 = v85;
    v46 = v83;
    if (v49 >= v48)
    {
      PrivateServicePrediction.predictedDuration.getter();
      v51 = v50;
      static ServicePrediction.QuantizedInterval.minimal.getter();
      if (v52 < v51)
      {
        static ServicePrediction.QuantizedInterval.short.getter();
      }
    }

    else
    {
      static ServicePrediction.QuantizedInterval.medium.getter();
    }
  }

  else
  {
    static ServicePrediction.QuantizedInterval.long.getter();
    v43 = v90;
    v44 = v84;
    v45 = v85;
    v46 = v83;
  }

  PrivateServicePrediction.confidenceScore.getter();
  PrivateServicePrediction.ConfidenceScore.predictionConfidence.getter();
  v54 = v53;
  v55 = *(v46 + 8);
  v55(v11, v44);
  if (v54 <= 0.7)
  {
    PrivateServicePrediction.confidenceScore.getter();
    PrivateServicePrediction.ConfidenceScore.predictionConfidence.getter();
    v58 = v57;
    v55(v11, v44);
    v56 = v43[13];
    if (v58 <= 0.3)
    {
      v59 = &enum case for ServicePrediction.Confidence.low(_:);
    }

    else
    {
      v59 = &enum case for ServicePrediction.Confidence.medium(_:);
    }

    v56(v101, *v59, v45);
  }

  else
  {
    v56 = v43[13];
    v56(v101, enum case for ServicePrediction.Confidence.high(_:), v45);
  }

  PrivateServicePrediction.confidenceScore.getter();
  PrivateServicePrediction.ConfidenceScore.startTimeConfidence.getter();
  v61 = v60;
  v55(v11, v44);
  if (v61 <= 0.7)
  {
    PrivateServicePrediction.confidenceScore.getter();
    PrivateServicePrediction.ConfidenceScore.startTimeConfidence.getter();
    v64 = v63;
    v55(v11, v44);
    if (v64 <= 0.3)
    {
      v65 = &enum case for ServicePrediction.Confidence.low(_:);
    }

    else
    {
      v65 = &enum case for ServicePrediction.Confidence.medium(_:);
    }

    v62 = *v65;
  }

  else
  {
    v62 = enum case for ServicePrediction.Confidence.high(_:);
  }

  v56(v102, v62, v45);
  PrivateServicePrediction.confidenceScore.getter();
  PrivateServicePrediction.ConfidenceScore.durationConfidence.getter();
  v67 = v66;
  v55(v11, v44);
  if (v67 <= 0.7)
  {
    PrivateServicePrediction.confidenceScore.getter();
    PrivateServicePrediction.ConfidenceScore.durationConfidence.getter();
    v70 = v69;
    v55(v11, v44);
    if (v70 <= 0.3)
    {
      v71 = &enum case for ServicePrediction.Confidence.low(_:);
    }

    else
    {
      v71 = &enum case for ServicePrediction.Confidence.medium(_:);
    }

    v68 = *v71;
  }

  else
  {
    v68 = enum case for ServicePrediction.Confidence.high(_:);
  }

  v72 = v100;
  v56(v100, v68, v45);
  v73 = v43[2];
  v73(v86, v101, v45);
  v73(v87, v102, v45);
  v73(v89, v72, v45);
  v74 = v91;
  ServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
  v75 = v88;
  (v97[2])(v82, v98, v88);
  PrivateServicePrediction.predictedStartTime.getter();
  v76 = v93;
  v77 = v95;
  (*(v93 + 16))(v92, v74, v95);
  ServicePrediction.init(impact:predictedStartTime:predictedInterval:confidenceScore:)();
  (*(v76 + 8))(v74, v77);
  v78 = v43[1];
  v78(v100, v45);
  v78(v102, v45);
  v78(v101, v45);
  return (v81)(v98, v75);
}

uint64_t sub_1001C6270(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1[36];
  v9 = v1[37];
  sub_100014E1C(v1 + 33, v8);
  (*(v9 + 8))(v8, v9);
  v13 = v7;

  v10 = sub_1000043BC(sub_1001DD494, v12, a1);
  (*(v4 + 8))(v7, v3);
  return v10;
}

BOOL sub_1001C63AC()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  PrivateServicePrediction.predictedStartTime.getter();
  PrivateServicePrediction.predictedDuration.getter();
  Date.addingTimeInterval(_:)();
  v8 = *(v1 + 8);
  v8(v5, v0);
  v9 = static Date.< infix(_:_:)();
  v8(v7, v0);
  return (v9 & 1) == 0;
}

uint64_t sub_1001C64D8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v13 - v5;
  if ((*((swift_isaMask & *v0) + 0x190))(v4))
  {
  }

  else
  {
    static TaskPriority.background.getter();
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v9;
    v10[5] = ObjectType;
    sub_1001C6A50(0, 0, v6, &unk_10024C720, v10);
    sub_1000157F0(v6, &qword_1002D7180, &qword_10024ABF0);
    v11 = *((swift_isaMask & *v0) + 0x198);

    v11(v12);
  }
}

uint64_t sub_1001C66F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001C67BC, 0, 0);
}

uint64_t sub_1001C67BC()
{
  v1 = v0[5];
  swift_beginAccess();
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (v2 = v0[5], Strong = swift_weakLoadStrong(), (v0[11] = Strong) == 0))
  {
LABEL_7:
    v15 = v0[9];
    v14 = v0[10];

    v16 = v0[1];

    return v16();
  }

  v4 = Strong;
  sleep(0x3Cu);
  v5 = static Task<>.isCancelled.getter();
  v6 = v0[6];
  if (v5)
  {
    v7 = v0[6];
    sub_100003E50(&off_1002B7A38, v0[10]);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "expired prediction remover cancelled", v10, 2u);
    }

    v11 = v0[10];
    v12 = v0[7];
    v13 = v0[8];

    (*(v13 + 8))(v11, v12);
    goto LABEL_7;
  }

  v18 = v0[6];
  sub_100003E50(&off_1002B7A38, v0[9]);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Check for expired", v21, 2u);
  }

  v23 = v0[8];
  v22 = v0[9];
  v24 = v0[7];

  (*(v23 + 8))(v22, v24);
  v25 = ((swift_isaMask & *v4) + 624) & 0xFFFFFFFFFFFFLL | 0x585F000000000000;
  v0[12] = *((swift_isaMask & *v4) + 0x270);
  v0[13] = v25;

  return _swift_task_switch(sub_100003F50, v4, 0);
}

uint64_t sub_1001C6A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001A718(a3, v27 - v11, &qword_1002D7180, &qword_10024ABF0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000157F0(v12, &qword_1002D7180, &qword_10024ABF0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1001C6D10(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = *(type metadata accessor for InternalServicePrediction() - 8);
  v2[51] = v3;
  v4 = *(v3 + 64) + 15;
  v2[52] = swift_task_alloc();
  v5 = *(*(sub_100164A3C(&qword_1002D7BE0, &qword_10024C730) - 8) + 64) + 15;
  v2[53] = swift_task_alloc();
  v6 = type metadata accessor for PrivateServicePrediction();
  v2[54] = v6;
  v7 = *(v6 - 8);
  v2[55] = v7;
  v8 = *(v7 + 64) + 15;
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v9 = swift_isaMask & *v1;
  v2[60] = *(v9 + 0x238);
  v2[61] = (v9 + 568) & 0xFFFFFFFFFFFFLL | 0x91C7000000000000;

  return _swift_task_switch(sub_1001C6EC8, v1, 0);
}

uint64_t sub_1001C6EC8()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 400);
  (*(v0 + 480))();

  return _swift_task_switch(sub_1001C6F38, 0, 0);
}

uint64_t sub_1001C6F38()
{
  v49 = v0;
  v1 = (v0 + 2);
  v2 = v0[2];
  v3 = v0[49];
  if (v3 >> 62)
  {
    goto LABEL_31;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = 0;
    v7 = v0[55];
    v45 = v3 & 0xFFFFFFFFFFFFFF8;
    v47 = v3 & 0xC000000000000001;
    v42 = v0[49] + 32;
    v44 = (v7 + 48);
    v39 = v7;
    v40 = v1;
    v8 = (v7 + 32);
    do
    {
      if (v47)
      {
        v21 = v0[49];
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v6 >= *(v45 + 16))
        {
          goto LABEL_30;
        }

        v9 = *(v42 + 8 * v6);
        swift_unknownObjectRetain();
        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v4 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v10 = v5;
      v12 = v0[53];
      v11 = v0[54];
      v48 = v9;
      sub_1001C74C0(&v48, v1, v12);
      swift_unknownObjectRelease();
      if ((*v44)(v12, 1, v11) == 1)
      {
        sub_1000157F0(v0[53], &qword_1002D7BE0, &qword_10024C730);
        v5 = v10;
      }

      else
      {
        v14 = v0[58];
        v13 = v0[59];
        v15 = v0[54];
        v16 = *v8;
        (*v8)(v13, v0[53], v15);
        v16(v14, v13, v15);
        v5 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100005380(0, v10[2] + 1, 1, v10, &unk_1002D8270, &qword_10024D548, &type metadata accessor for PrivateServicePrediction);
        }

        v18 = v5[2];
        v17 = v5[3];
        if (v18 >= v17 >> 1)
        {
          v5 = sub_100005380(v17 > 1, v18 + 1, 1, v5, &unk_1002D8270, &qword_10024D548, &type metadata accessor for PrivateServicePrediction);
        }

        v19 = v0[58];
        v20 = v0[54];
        v5[2] = v18 + 1;
        v16(v5 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v18, v19, v20);
        v1 = v40;
      }

      ++v6;
    }

    while (v3 != v4);
  }

  v22 = v5[2];
  if (v22)
  {
    v23 = v0[55];
    v46 = v0[51];
    v48 = _swiftEmptyArrayStorage;
    sub_1001BBCAC(0, v22, 0);
    v24 = v48;
    v25 = *(v23 + 16);
    v23 += 16;
    v26 = v5 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v43 = *(v23 + 56);
    v41 = (v23 - 8);
    v27 = v25;
    do
    {
      v29 = v0[56];
      v28 = v0[57];
      v30 = v0[54];
      v31 = v0[52];
      v27(v28, v26, v30);
      v27(v29, v28, v30);
      v32 = static xpc_event_publisher_action_t.add.getter();
      sub_100162DE0(v29, 0, 0, 0, 0, 1, 0, 1, v31, 0, 1, 0, 0, v32 & 1);
      (*v41)(v28, v30);
      v48 = v24;
      v34 = v24[2];
      v33 = v24[3];
      if (v34 >= v33 >> 1)
      {
        sub_1001BBCAC(v33 > 1, v34 + 1, 1);
        v24 = v48;
      }

      v35 = v0[52];
      v24[2] = v34 + 1;
      sub_1001DC56C(v35, v24 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v34, type metadata accessor for InternalServicePrediction);
      v26 += v43;
      --v22;
    }

    while (v22);
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  v0[62] = v24;
  v36 = v0[50];
  v37 = ((swift_isaMask & *v36) + 648) & 0xFFFFFFFFFFFFLL | 0xF9F1000000000000;
  v0[63] = *((swift_isaMask & *v36) + 0x288);
  v0[64] = v37;

  return _swift_task_switch(sub_1001C73F4, v36, 0);
}

uint64_t sub_1001C73F4()
{
  v1 = *(v0 + 512);
  v3 = *(v0 + 464);
  v2 = *(v0 + 472);
  v5 = *(v0 + 448);
  v4 = *(v0 + 456);
  v7 = *(v0 + 416);
  v6 = *(v0 + 424);
  v8 = *(v0 + 400);
  (*(v0 + 504))(*(v0 + 496), 0);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1001C74C0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v5 = type metadata accessor for PrivateServicePrediction.ConfidenceScore();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v61 = *(v8 - 8);
  v9 = *(v61 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v59 - v13;
  v14 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  __chkstk_darwin(v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = [swift_unknownObjectRetain() numPrevPredictions];
    v27 = *(a2 + 24);
    if ((v27 & 0x8000000000000000) != 0 || v27 < v26)
    {
      [v23 confidenceAnomaly];
      if (*(a2 + 32) < v28)
      {
        [v23 confidenceTimeUntilAnomaly];
        if (*(a2 + 40) < v29)
        {
          [v23 confidenceDuration];
          if (*(a2 + 48) < v30)
          {
            (*(v19 + 104))(v22, enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:), v18);
            (*(v60 + 104))(v17, enum case for PrivateServicePrediction.ServicePredictionSource.cellularLearning(_:), v14);
            v31 = [v25 predictionTime];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            [v25 predictedTimeUntilAnomaly];
            static Date.+ infix(_:_:)();
            (*(v61 + 8))(v12, v8);
            [v25 predictedDuration];
            [v25 confidenceAnomaly];
            v32 = *(a2 + 56);
            [v25 confidenceTimeUntilAnomaly];
            [v25 confidenceDuration];
LABEL_23:
            PrivateServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
            v52 = v64;
            PrivateServicePrediction.init(type:source:predictedStartTime:predictedDuration:confidenceScore:)();
            swift_unknownObjectRelease();
            v53 = type metadata accessor for PrivateServicePrediction();
            return (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
          }
        }
      }
    }

    goto LABEL_24;
  }

  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (v33)
  {
    v34 = v33;
    v35 = [swift_unknownObjectRetain() numPrevPredictions];
    v36 = *(a2 + 64);
    if ((v36 & 0x8000000000000000) != 0 || v36 < v35)
    {
      [v23 confidenceAnomaly];
      if (*(a2 + 72) < v37)
      {
        [v23 confidenceTimeUntilAnomaly];
        if (*(a2 + 80) < v38)
        {
          [v23 confidenceDuration];
          if (*(a2 + 88) < v39)
          {
            (*(v19 + 104))(v22, enum case for PrivateServicePrediction.ServicePredictionType.cellularDataCongestion(_:), v18);
            (*(v60 + 104))(v17, enum case for PrivateServicePrediction.ServicePredictionSource.cellularLearning(_:), v14);
            v40 = v34;
            v41 = [v34 predictionTime];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            [v40 predictedTimeUntilAnomaly];
            static Date.+ infix(_:_:)();
            (*(v61 + 8))(v12, v8);
            [v40 predictedDuration];
            [v40 confidenceAnomaly];
            v42 = *(a2 + 96);
LABEL_22:
            [v40 confidenceTimeUntilAnomaly];
            [v40 confidenceDuration];
            goto LABEL_23;
          }
        }
      }
    }

    goto LABEL_24;
  }

  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (v43)
  {
    v44 = v43;
    v45 = [swift_unknownObjectRetain() numPrevPredictions];
    v46 = *(a2 + 104);
    if ((v46 & 0x8000000000000000) != 0 || v46 < v45)
    {
      [v23 confidenceAnomaly];
      if (*(a2 + 112) < v47)
      {
        [v23 confidenceTimeUntilAnomaly];
        if (*(a2 + 120) < v48)
        {
          [v23 confidenceDuration];
          if (*(a2 + 128) < v49)
          {
            (*(v19 + 104))(v22, enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:), v18);
            (*(v60 + 104))(v17, enum case for PrivateServicePrediction.ServicePredictionSource.cellularLearning(_:), v14);
            v40 = v44;
            v50 = [v44 predictionTime];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            [v40 predictedTimeUntilAnomaly];
            static Date.+ infix(_:_:)();
            (*(v61 + 8))(v12, v8);
            [v40 predictedDuration];
            [v40 confidenceAnomaly];
            v51 = *(a2 + 136);
            goto LABEL_22;
          }
        }
      }
    }

LABEL_24:
    swift_unknownObjectRelease();
  }

  v55 = type metadata accessor for PrivateServicePrediction();
  v56 = *(*(v55 - 8) + 56);
  v57 = v55;
  v58 = v64;

  return v56(v58, 1, 1, v57);
}

uint64_t sub_1001C7CB0(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B7A38, v10);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *&v53[0] = swift_slowAlloc();
    *v13 = 136315394;
    v51 = v4;
    v50 = v6;
    if (v4)
    {
      if (v4 == 1)
      {
        v14 = 0xD000000000000010;
      }

      else
      {
        v14 = 0x76614E207370614DLL;
      }

      if (v4 == 1)
      {
        v15 = 0x800000010025DCF0;
      }

      else
      {
        v15 = 0xEF6E6F6974616769;
      }
    }

    else
    {
      v15 = 0x800000010025DD10;
      v14 = 0xD000000000000014;
    }

    v17 = sub_10017A8A8(v14, v15, v53);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    type metadata accessor for InternalServicePrediction();
    v18 = Array.description.getter();
    v4 = sub_10017A8A8(v18, v19, v53);

    *(v13 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received %s predictions %s", v13, 0x16u);
    swift_arrayDestroy();

    v16 = (*(v7 + 8))(v10, v50);
    LOBYTE(v4) = v51;
  }

  else
  {

    v16 = (*(v7 + 8))(v10, v6);
  }

  v20 = swift_isaMask & *v3;
  if (!v4)
  {
    v29 = *((swift_isaMask & *v3) + 0xF8);
    v30 = v29(v16);
    sub_1001DD55C(0, v30, a1, v53);

    v32 = v29(v31);
    v33 = sub_1001DDD40(v32);

    v35 = sub_1001DDD40(v34);

    if (*(v35 + 16) <= v33[2] >> 3)
    {
      v52[0] = v33;
      sub_1001D69EC(v35);

      v28 = v52[0];
    }

    else
    {
      v28 = sub_1001D6BF4(v35, v33);
    }

    v41 = (*((swift_isaMask & *v3) + 0x260))(a1);
    (*((swift_isaMask & *v3) + 0x100))(v41);
    goto LABEL_24;
  }

  if (v4 == 1)
  {
    v21 = *((swift_isaMask & *v3) + 0x110);
    v22 = v21(v16);
    sub_1001DD55C(1, v22, a1, v53);

    v24 = v21(v23);
    v25 = sub_1001DDD40(v24);

    v27 = sub_1001DDD40(v26);

    if (*(v27 + 16) <= v25[2] >> 3)
    {
      v52[0] = v25;
      sub_1001D69EC(v27);

      v28 = v52[0];
    }

    else
    {
      v28 = sub_1001D6BF4(v27, v25);
    }

    v40 = (*((swift_isaMask & *v3) + 0x260))(a1);
    (*((swift_isaMask & *v3) + 0x118))(v40);
LABEL_24:
    v42 = v3[22];
    v43 = v3[23];
    sub_100014E1C(v3 + 19, v42);
    v52[3] = &_s31ServicePredictionDidUpdateEventVN;
    v52[4] = &off_1002B7AF0;
    v44 = swift_allocObject();
    v52[0] = v44;
    v45 = v53[1];
    *(v44 + 16) = v53[0];
    *(v44 + 32) = v45;
    *(v44 + 48) = v53[2];
    *(v44 + 64) = v54;
    (*(v43 + 8))(0xD000000000000033, 0x800000010025DB90, v52, v42, v43);
    v46 = sub_100164B98(v52);
    goto LABEL_27;
  }

  v36 = (*((swift_isaMask & *v3) + 0x128))(v16);
  v37 = sub_1001DDD40(v36);

  v39 = sub_1001DDD40(v38);

  if (*(v39 + 16) <= v37[2] >> 3)
  {
    *&v53[0] = v37;
    sub_1001D69EC(v39);

    v28 = *&v53[0];
  }

  else
  {
    v28 = sub_1001D6BF4(v39, v37);
  }

  v47 = (*((swift_isaMask & *v3) + 0x260))(a1);
  v46 = (*((swift_isaMask & *v3) + 0x130))(v47);
LABEL_27:
  (*((swift_isaMask & *v3) + 0x2B0))(v46);
  (*((swift_isaMask & *v3) + 0x2C0))(v28);

  return (*((swift_isaMask & *v3) + 0x258))(v48);
}

uint64_t sub_1001C8488(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C84A8, v1, 0);
}

uint64_t sub_1001C84A8()
{
  (*((swift_isaMask & **(v0 + 24)) + 0x288))(*(v0 + 16), 1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C8544(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C8564, v1, 0);
}

uint64_t sub_1001C8564()
{
  v1 = v0[2];
  v2 = *(v0[3] + 304);
  v0[4] = v2;

  v0[5] = sub_1001DDED4(v3);

  v4 = *v2 + 552;
  v0[6] = *v4;
  v0[7] = v4 & 0xFFFFFFFFFFFFLL | 0x67F6000000000000;

  return _swift_task_switch(sub_1001C860C, v2, 0);
}

uint64_t sub_1001C860C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  (*(v0 + 48))(*(v0 + 40));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001C867C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1001C869C, v1, 0);
}

uint64_t sub_1001C869C()
{
  (*((swift_isaMask & **(v0 + 24)) + 0x288))(*(v0 + 16), 2);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001C8738(int *a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateServicePrediction.ConfidenceScore();
  v214 = *(v4 - 8);
  v215 = v4;
  v5 = *(v214 + 64);
  __chkstk_darwin(v4);
  v213 = &v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrivateServicePrediction.ServicePredictionSource();
  v211 = *(v7 - 8);
  v8 = *(v211 + 64);
  __chkstk_darwin(v7);
  v226 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s30ServicePredictionEventAccuracyVMa(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v197 = &v191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v222 = &v191 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v220 = v19;
  v221 = v20;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v196 = &v191 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v216 = &v191 - v25;
  v26 = __chkstk_darwin(v24);
  v199 = &v191 - v27;
  __chkstk_darwin(v26);
  v29 = &v191 - v28;
  v30 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v229 = *(v30 - 8);
  v230 = v30;
  v31 = *(v229 + 64);
  v32 = __chkstk_darwin(v30);
  v225 = &v191 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v191 - v35;
  __chkstk_darwin(v34);
  v38 = &v191 - v37;
  swift_beginAccess();
  v231 = a2;
  v39 = *(a2 + 24);
  v228 = sub_1001BDE54();
  v210 = sub_1001BDF30();
  swift_beginAccess();
  v40 = v39[5];
  swift_beginAccess();
  v41 = 0;
  v224 = 0;
  v42 = v39[6];
  v43 = v40 + v42;
  if (v40 + v42 != 0.0)
  {
    v44 = round(v40 / v43 * 100.0);
    if (v44 <= -9.22337204e18)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    if (v44 >= 9.22337204e18)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v45 = round(v42 / v43 * 100.0);
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_139;
    }

    if (v45 <= -9.22337204e18)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v45 >= 9.22337204e18)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v224 = v44;
    v41 = v45;
  }

  v209 = v41;
  swift_beginAccess();
  v46 = v39[7];
  swift_beginAccess();
  v47 = 0;
  v48 = v46 + v39[8];
  if (v48 != 0.0)
  {
    v49 = round(v46 / v48 * 100.0);
    if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v49 <= -9.22337204e18)
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    if (v49 >= 9.22337204e18)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v47 = v49;
  }

  v227 = v47;
  swift_beginAccess();
  v50 = v39[9];
  swift_beginAccess();
  v51 = 0;
  v52 = v50 + v39[10];
  if (v52 != 0.0)
  {
    v53 = round(v50 / v52 * 100.0);
    if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    if (v53 <= -9.22337204e18)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v53 >= 9.22337204e18)
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v51 = v53;
  }

  v207 = v51;
  PrivateServicePrediction.type.getter();
  v54 = (*(v229 + 88))(v38, v230);
  v208 = v7;
  if (v54 != enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:))
  {
    v56 = v231;
    if (v54 == enum case for PrivateServicePrediction.ServicePredictionType.cellularDataCongestion(_:))
    {
      if (v227 > 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = 2;
      }

      if (__OFSUB__(100, v227))
      {
        goto LABEL_154;
      }

      v232 = v58;
      v206 = 100 - v227;
      swift_beginAccess();
      v59 = *(v56 + 32);
      if (v59)
      {
        swift_beginAccess();
        v60 = *(v59 + 56);
        swift_beginAccess();
        v61 = 0;
        v62 = v60 + *(v59 + 64);
        v36 = v222;
        if (v62 != 0.0)
        {
          v63 = round(v60 / v62 * 100.0);
          if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

          if (v63 <= -9.22337204e18)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          if (v63 >= 9.22337204e18)
          {
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          v61 = v63;
        }

        v64 = __OFSUB__(100, v61);
        v65 = 100 - v61;
        if (v64)
        {
          goto LABEL_167;
        }

        v205 = v65;
        v204 = 0;
        goto LABEL_58;
      }

      v205 = 0;
      v204 = 1;
LABEL_57:
      v36 = v222;
      goto LABEL_58;
    }

    if (v54 != enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:))
    {
LABEL_175:
      v237[0] = 0;
      v237[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(30);
      v189._object = 0x800000010025DD90;
      v189._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v189);
      PrivateServicePrediction.type.getter();
      v190 = v230;
      _print_unlocked<A, B>(_:_:)();
      (*(v229 + 8))(v36, v190);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if (v224 > 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = 2;
    }

    if (__OFSUB__(100, v224))
    {
      goto LABEL_155;
    }

    v232 = v66;
    v206 = 100 - v224;
    swift_beginAccess();
    v67 = *(v56 + 32);
    if (v67)
    {
      swift_beginAccess();
      v68 = *(v67 + 40);
      swift_beginAccess();
      v69 = 0;
      v70 = v68 + *(v67 + 48);
      v36 = v222;
      if (v70 != 0.0)
      {
        v71 = round(v68 / v70 * 100.0);
        if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        if (v71 <= -9.22337204e18)
        {
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        if (v71 >= 9.22337204e18)
        {
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        v69 = v71;
      }

      v64 = __OFSUB__(100, v69);
      v72 = 100 - v69;
      if (v64)
      {
        goto LABEL_168;
      }

      v205 = v72;
      v204 = 0;
      v227 = v224;
      goto LABEL_58;
    }

    v205 = 0;
    v204 = 1;
    v73 = v224;
LABEL_56:
    v227 = v73;
    goto LABEL_57;
  }

  if (v228 > 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = 2;
  }

  v56 = v231;
  if (__OFSUB__(100, v228))
  {
    goto LABEL_132;
  }

  v232 = v55;
  v206 = 100 - v228;
  swift_beginAccess();
  if (!*(v56 + 32))
  {
    v205 = 0;
    v204 = 1;
    v73 = v228;
    goto LABEL_56;
  }

  v57 = sub_1001BDE54();
  v36 = v222;
  if (__OFSUB__(100, v57))
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v205 = 100 - v57;
  v204 = 0;
  v227 = v228;
LABEL_58:
  v74 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
  swift_beginAccess();
  v212 = v74;
  v203 = *(v56 + v74);
  v75 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_startTimeLocation;
  v76 = swift_beginAccess();
  if (*(v56 + v75))
  {
LABEL_61:
    v78 = 1;
    goto LABEL_62;
  }

  v77 = (*((swift_isaMask & *v233) + 0x208))(v76);
  if (v77)
  {

    goto LABEL_61;
  }

  v78 = 2;
LABEL_62:
  v202 = v78;
  v79 = type metadata accessor for InternalServicePrediction();
  v80 = a1 + *(v79 + 24);
  v81 = *(v80 + 16);
  v82 = 0.0;
  v219 = a1;
  v223 = v79;
  if (v81)
  {
    v217 = 0;
    v200 = 0;
    v201 = 0;
    v83 = 1;
    v218 = 1;
  }

  else
  {
    v198 = v29;
    v84 = *(v56 + v75);
    v86 = *v80;
    v85 = *(v80 + 8);
    v218 = v84 == 0;
    if (v84)
    {
      v87 = objc_allocWithZone(CLLocation);
      v88 = v84;
      v89 = [v87 initWithLatitude:v86 longitude:v85];
      [v89 distanceFromLocation:v88];
      v91 = v90;
      v92 = v90;

      if ((*&v92 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      if (v91 <= -9.22337204e18)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v91 >= 9.22337204e18)
      {
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      v217 = v91;
      (*((swift_isaMask & *v233) + 0x238))(v235);

      if (v91 < *&v235[1])
      {
        v93 = 1;
      }

      else
      {
        v93 = 2;
      }

      v201 = v93;
      v56 = v231;
    }

    else
    {
      v217 = 0;
      v201 = 0;
    }

    v94 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_closestLocation;
    swift_beginAccess();
    v95 = *(v56 + v94);
    if (v95)
    {
      v96 = objc_allocWithZone(CLLocation);
      v97 = v95;
      v98 = [v96 initWithLatitude:v86 longitude:v85];
      [v98 distanceFromLocation:v97];
      v100 = v99;
      v101 = v99;

      if ((*&v101 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_150:
        __break(1u);
        goto LABEL_151;
      }

      if (v100 <= -9.22337204e18)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      if (v100 >= 9.22337204e18)
      {
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      v217 = v100;
      (*((swift_isaMask & *v233) + 0x238))(v236);
      if (v100 < *&v236[1])
      {
        v102 = 1;
      }

      else
      {
        v102 = 2;
      }

      v200 = v102;
      v103 = v198;
      PrivateServicePrediction.predictedStartTime.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v105 = v104;
      v106 = v220;
      v107 = *(v221 + 8);
      v107(v103, v220);
      v108 = [v97 timestamp];
      v109 = v199;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceReferenceDate.getter();
      v111 = v110;

      v112 = v106;
      v36 = v222;
      v107(v109, v112);
      a1 = v219;
      v83 = 0;
      v218 = 0;
      v82 = v105 - v111;
      v56 = v231;
    }

    else
    {
      v200 = 0;
      v83 = 1;
      a1 = v219;
    }

    v79 = v223;
  }

  v113 = a1 + *(v79 + 28);
  v114 = *(v113 + 8);
  LODWORD(v222) = v83;
  LODWORD(v199) = v114;
  if (v114)
  {
    v198 = 0;
    v115 = v221;
  }

  else
  {
    v116 = *v113 * 100.0;
    v115 = v221;
    if (COERCE__INT64(fabs(v116)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_133:
      __break(1u);
      goto LABEL_134;
    }

    if (v116 <= -9.22337204e18)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    if (v116 >= 9.22337204e18)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v198 = v116;
  }

  v117 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
  swift_beginAccess();
  sub_10001A718(v56 + v117, v36, &unk_1002D7BD0, &unk_10024A800);
  v118 = *(v115 + 48);
  v119 = v36;
  v120 = v36;
  v36 = v220;
  if (v118(v119, 1, v220) == 1)
  {
    v121 = sub_1000157F0(v120, &unk_1002D7BD0, &unk_10024A800);
    v122 = 0;
    v123 = 1;
    v124 = v233;
    v36 = v232;
  }

  else
  {
    v221 = *(v115 + 32);
    (v221)(v216, v120, v36);
    v125 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
    swift_beginAccess();
    v126 = v56 + v125;
    v127 = v197;
    sub_10001A718(v126, v197, &unk_1002D7BD0, &unk_10024A800);
    if (v118(v127, 1, v36) == 1)
    {
      (*(v115 + 8))(v216, v36);
      v121 = sub_1000157F0(v127, &unk_1002D7BD0, &unk_10024A800);
      v122 = 0;
      v123 = 1;
      v124 = v233;
      a1 = v219;
    }

    else
    {
      v128 = v196;
      (v221)(v196, v127, v36);
      v129 = v216;
      Date.timeIntervalSince(_:)();
      v131 = v130;
      a1 = v219;
      PrivateServicePrediction.predictedDuration.getter();
      v133 = v132;
      v134 = *(v115 + 8);
      v134(v128, v36);
      v121 = (v134)(v129, v36);
      v135 = v131 / v133 * 100.0;
      v124 = v233;
      if (COERCE__INT64(fabs(v135)) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      if (v135 <= -9.22337204e18)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (v135 >= 9.22337204e18)
      {
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v123 = 0;
      v122 = v135;
    }

    v36 = v232;
    v56 = v231;
  }

  (*((swift_isaMask & *v124) + 0x238))(v237, v121);
  LODWORD(v220) = sub_100162F14(v237);
  v231 = v136;
  v221 = v137;
  LODWORD(v216) = *(v56 + v212);
  swift_beginAccess();
  LODWORD(v212) = *(v56 + 44);
  swift_beginAccess();
  v197 = *(v56 + 48);
  LODWORD(v196) = *(v56 + 56);
  PrivateServicePrediction.source.getter();
  PrivateServicePrediction.type.getter();
  PrivateServicePrediction.predictedDuration.getter();
  v139 = v138;
  if ((*&v138 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_127;
  }

  if (v138 <= -9.22337204e18)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v138 >= 9.22337204e18)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v195 = v123;
  v140 = v213;
  PrivateServicePrediction.confidenceScore.getter();
  PrivateServicePrediction.ConfidenceScore.predictionConfidence.getter();
  v142 = v141;
  (*(v214 + 8))(v140, v215);
  v143 = v142 * 100.0;
  if ((*&v143 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v143 <= -9.22337204e18)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v143 >= 9.22337204e18)
  {
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v144 = (a1 + v223[5]);
  v145 = *v144;
  v146 = v144[1];
  v147 = v223[9];
  v148 = (a1 + v223[8]);
  v214 = *v148;
  v215 = v145;
  LODWORD(v213) = *(v148 + 8);
  v149 = a1 + v147;
  v150 = *(a1 + v147);
  v151 = *(v149 + 8);
  v223 = v150;
  swift_beginAccess();
  v152 = *(v56 + 32);
  v194 = v122;
  v219 = v151;
  if (v152)
  {
    swift_beginAccess();
    v153 = v152[9];
    swift_beginAccess();
    v154 = 0;
    v155 = v153 + v152[10];
    if (v155 == 0.0)
    {
LABEL_110:
      v232 = v36;
      v36 = sub_1001BDE54();
      v193 = sub_1001BDF30();
      swift_beginAccess();
      v157 = v152[5];
      swift_beginAccess();
      v158 = v152[6];
      v159 = v157 + v158;
      if (v157 + v158 == 0.0)
      {
        v160 = v146;
        v191 = 0;
        v192 = 0;
LABEL_120:
        v162 = v203;
        v161 = v36;
        LOBYTE(v36) = v232;
        goto LABEL_121;
      }

      v163 = round(v157 / v159 * 100.0);
      if (v163 > -9.22337204e18)
      {
        if (v163 < 9.22337204e18)
        {
          v164 = round(v158 / v159 * 100.0);
          if ((*&v163 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v164 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v164 > -9.22337204e18)
            {
              if (v164 < 9.22337204e18)
              {
                v160 = v146;
                v191 = v163;
                v192 = v164;
                goto LABEL_120;
              }

              goto LABEL_166;
            }

LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
            goto LABEL_169;
          }

LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      goto LABEL_161;
    }

    v156 = round(v153 / v155 * 100.0);
    if ((*&v156 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v156 > -9.22337204e18)
      {
        if (v156 >= 9.22337204e18)
        {
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        v154 = v156;
        goto LABEL_110;
      }

LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v160 = v146;
  v191 = 0;
  v192 = 0;
  v193 = 0;
  v161 = 0;
  v154 = 0;
  v162 = v203;
LABEL_121:
  v165 = v152 == 0;
  if (v162)
  {
    v166 = v36;
  }

  else
  {
    v166 = 3;
  }

  *v13 = v216;
  v13[1] = v212;
  *(v13 + 1) = v197;
  v13[16] = v196;
  (*(v211 + 32))(&v13[v10[7]], v226, v208);
  (*(v229 + 32))(&v13[v10[8]], v225, v230);
  *&v13[v10[9]] = v139;
  v13[v10[10]] = v220 & 1;
  v167 = &v13[v10[11]];
  v168 = v221;
  *v167 = v231;
  *(v167 + 1) = v168;
  *&v13[v10[12]] = v143;
  v13[v10[13]] = v166;
  *&v13[v10[14]] = v207;
  *&v13[v10[15]] = v228;
  *&v13[v10[16]] = v210;
  *&v13[v10[17]] = v224;
  *&v13[v10[18]] = v209;
  *&v13[v10[19]] = v206;
  *&v13[v10[20]] = v227;
  LOBYTE(v168) = v201;
  v13[v10[21]] = v202;
  v13[v10[22]] = v168;
  v13[v10[23]] = v200;
  v169 = &v13[v10[24]];
  *v169 = v217;
  v169[8] = v218;
  v170 = &v13[v10[25]];
  v170[8] = v222;
  *v170 = v82;
  v171 = &v13[v10[26]];
  *v171 = v215;
  *(v171 + 1) = v160;
  v172 = &v13[v10[27]];
  *v172 = v198;
  v172[8] = v199;
  v173 = &v13[v10[28]];
  *v173 = v214;
  v173[8] = v213;
  v174 = &v13[v10[29]];
  v175 = v219;
  *v174 = v223;
  v174[1] = v175;
  v176 = &v13[v10[30]];
  *v176 = v154;
  v176[8] = v165;
  v177 = &v13[v10[31]];
  *v177 = v161;
  v177[8] = v165;
  v178 = &v13[v10[32]];
  *v178 = v193;
  v178[8] = v165;
  v179 = &v13[v10[33]];
  v180 = v192;
  *v179 = v191;
  v179[8] = v165;
  v181 = &v13[v10[34]];
  *v181 = v180;
  v181[8] = v165;
  v182 = &v13[v10[35]];
  *v182 = v205;
  v182[8] = v204;
  v183 = &v13[v10[36]];
  *v183 = v194;
  v183[8] = v195;
  v184 = v233[22];
  v185 = v233[23];
  sub_100014E1C(v233 + 19, v184);
  v234[3] = v10;
  v234[4] = &off_1002B7B00;
  v186 = sub_1001B8BDC(v234);
  sub_1001DC504(v13, v186, _s30ServicePredictionEventAccuracyVMa);
  v187 = *(v185 + 8);

  v187(0xD000000000000032, 0x800000010025DBD0, v234, v184, v185);
  sub_1001DE088(v13, _s30ServicePredictionEventAccuracyVMa);
  return sub_100164B98(v234);
}

uint64_t sub_1001C9E8C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for InternalServicePrediction();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (*((*((swift_isaMask & *a2) + 0x220))(isCurrentExecutor) + 16))
  {
    sub_1001D6204(a1);
    v15 = v14;

    if (v15)
    {
      return result;
    }
  }

  else
  {
  }

  v37 = v8;
  sub_100003E50(&off_1002B7A38, v12);
  sub_1001DC504(a1, v7, type metadata accessor for InternalServicePrediction);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v39[0] = v21;
    *v20 = 136315138;
    sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_1001DE088(v7, type metadata accessor for InternalServicePrediction);
    v25 = sub_10017A8A8(v22, v24, v39);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "Creating accuracy tracker for prediction %s", v20, 0xCu);
    sub_100164B98(v21);

    a1 = v36;
  }

  else
  {

    sub_1001DE088(v7, type metadata accessor for InternalServicePrediction);
  }

  (*(v9 + 8))(v12, v37);
  v26 = type metadata accessor for ServicePredictionAccuracyCounter(0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  v29 = swift_allocObject();
  sub_1001C2AD0();
  v30 = (*((swift_isaMask & *a2) + 0x230))(v39);
  v32 = v31;
  v33 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v32;
  *v32 = 0x8000000000000000;
  sub_1001DA2F0(v29, a1, isUniquelyReferenced_nonNull_native);
  *v32 = v38;
  return v30(v39, 0);
}

uint64_t sub_1001CA2B4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v24 = sub_100164A3C(&qword_1002D7BE8, &qword_10024C750);
  v6 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v8 = &v23 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v27 = v4;
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = v17 | (v16 << 6);
    v19 = v26;
    v20 = *(v26 + 48);
    v21 = type metadata accessor for InternalServicePrediction();
    sub_1001DC504(v20 + *(*(v21 - 8) + 72) * v18, v8, type metadata accessor for InternalServicePrediction);
    *&v8[*(v24 + 48)] = *(*(v19 + 56) + 8 * v18);

    v22 = v27;
    v25(v8);
    v4 = v22;
    result = sub_1000157F0(v8, &qword_1002D7BE8, &qword_10024C750);
    if (v22)
    {
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v27 = v4;
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CA484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6)
{
  v268 = a6;
  v269 = a5;
  v274 = a3;
  v275 = a2;
  v270 = a1;
  v7 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v258 = &v238[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v262 = &v238[-v12];
  v13 = __chkstk_darwin(v11);
  v249 = &v238[-v14];
  v15 = __chkstk_darwin(v13);
  v255 = &v238[-v16];
  v17 = __chkstk_darwin(v15);
  v256 = &v238[-v18];
  __chkstk_darwin(v17);
  v257 = &v238[-v19];
  v265 = type metadata accessor for InternalServicePrediction();
  v20 = *(*(v265 - 8) + 64);
  v21 = __chkstk_darwin(v265);
  v261 = &v238[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v253 = &v238[-v24];
  v25 = __chkstk_darwin(v23);
  v247 = &v238[-v26];
  v27 = __chkstk_darwin(v25);
  v245 = &v238[-v28];
  v29 = __chkstk_darwin(v27);
  v246 = &v238[-v30];
  v31 = __chkstk_darwin(v29);
  v251 = &v238[-v32];
  v33 = __chkstk_darwin(v31);
  v250 = &v238[-v34];
  __chkstk_darwin(v33);
  v36 = &v238[-v35];
  v37 = type metadata accessor for Logger();
  v266 = *(v37 - 8);
  v267 = v37;
  v38 = *(v266 + 64);
  v39 = __chkstk_darwin(v37);
  v254 = &v238[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = __chkstk_darwin(v39);
  v264 = &v238[-v42];
  v43 = __chkstk_darwin(v41);
  v252 = &v238[-v44];
  v45 = __chkstk_darwin(v43);
  v259 = &v238[-v46];
  v47 = __chkstk_darwin(v45);
  v244 = &v238[-v48];
  v49 = __chkstk_darwin(v47);
  v248 = &v238[-v50];
  v51 = __chkstk_darwin(v49);
  v53 = &v238[-v52];
  v54 = __chkstk_darwin(v51);
  v263 = &v238[-v55];
  __chkstk_darwin(v54);
  v57 = &v238[-v56];
  v58 = type metadata accessor for Date();
  v273 = *(v58 - 8);
  v59 = *(v273 + 64);
  v60 = __chkstk_darwin(v58);
  v272 = &v238[-((v61 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = __chkstk_darwin(v60);
  v64 = &v238[-v63];
  __chkstk_darwin(v62);
  v66 = &v238[-v65];
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v260 = a4;
  v67 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_state;
  v68 = v275;
  swift_beginAccess();
  v69 = *(v68 + v67);
  v271 = v58;
  if (v69 || (PrivateServicePrediction.predictedStartTime.getter(), sub_1001BCC20(&qword_1002D71E0, 255, &type metadata accessor for Date), v70 = dispatch thunk of static Comparable.<= infix(_:_:)(), v242 = *(v273 + 8), v242(v66, v58), (v70 & 1) == 0))
  {
    v80 = v275;
    v81 = v272;
    v82 = v269;
    v83 = v270;
    if (!v269)
    {
      goto LABEL_23;
    }
  }

  else
  {
    sub_100003E50(&off_1002B7A38, v57);
    sub_1001DC504(v270, v36, type metadata accessor for InternalServicePrediction);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.info.getter();
    v73 = os_log_type_enabled(v71, v72);
    v243 = v53;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v240 = v74;
      v241 = swift_slowAlloc();
      v278 = v241;
      *v74 = 136315138;
      sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction);
      v239 = v72;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      sub_1001DE088(v36, type metadata accessor for InternalServicePrediction);
      v78 = sub_10017A8A8(v75, v77, &v278);

      v79 = v240;
      *(v240 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v71, v239, "Starting accuracy tracker for %s", v79, 0xCu);
      sub_100164B98(v241);
    }

    else
    {

      sub_1001DE088(v36, type metadata accessor for InternalServicePrediction);
    }

    v241 = *(v266 + 8);
    (v241)(v57, v267);
    started = PrivateServicePrediction.predictedStartTime.getter();
    v100 = v260;
    v101 = (*((swift_isaMask & *v260) + 0x1D8))(started);
    v102 = (*((swift_isaMask & *v100) + 0x1F0))();
    v103 = (*((swift_isaMask & *v100) + 0x1A8))();
    v104 = (*((swift_isaMask & *v100) + 0x1C0))();
    v80 = v275;
    if (*(v275 + v67))
    {
      v58 = v271;
      v242(v64, v271);
    }

    else
    {
      v105 = v104;
      Date.init()();
      sub_1001BE878(v103, v66);
      v58 = v271;
      LODWORD(v240) = v101;
      v106 = v242;
      v242(v66, v271);
      Date.init()();
      v107 = v105;
      v80 = v275;
      sub_1001BF264(v107, v66);
      v106(v66, v58);
      *(v80 + v67) = 1;
      swift_beginAccess();
      v108 = *(v80 + 24);

      sub_1001BE18C(v64);

      v106(v64, v58);
      swift_beginAccess();
      *(v80 + 40) = v240 & 1;
      swift_beginAccess();
      *(v80 + 43) = v102 & 1;
    }

    v53 = v243;
    v81 = v272;
    v82 = v269;
    v83 = v270;
    v109 = v263;
    if (!v269)
    {
      goto LABEL_23;
    }

    v242 = v269;
    sub_100003E50(&off_1002B7A38, v109);
    v110 = v250;
    sub_1001DC504(v83, v250, type metadata accessor for InternalServicePrediction);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v278 = v240;
      *v113 = 136315138;
      sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction);
      v114 = v112;
      v115 = dispatch thunk of CustomStringConvertible.description.getter();
      v116 = v53;
      v118 = v117;
      sub_1001DE088(v110, type metadata accessor for InternalServicePrediction);
      v119 = sub_10017A8A8(v115, v118, &v278);
      v53 = v116;
      v82 = v269;

      *(v113 + 4) = v119;
      _os_log_impl(&_mh_execute_header, v111, v114, "Setting start time location for accuracy tracker for %s", v113, 0xCu);
      sub_100164B98(v240);
      v80 = v275;

      v83 = v270;
    }

    else
    {

      sub_1001DE088(v110, type metadata accessor for InternalServicePrediction);
    }

    (v241)(v263, v267);
    v167 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_startTimeLocation;
    swift_beginAccess();
    v168 = *(v80 + v167);
    *(v80 + v167) = v82;
    v169 = v242;

    v170 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_closestLocation;
    swift_beginAccess();
    v171 = *(v80 + v170);
    *(v80 + v170) = v82;

    v58 = v271;
    v81 = v272;
  }

  if (*(v80 + v67) == 1)
  {
    v84 = v53;
    v85 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_startTimeLocation;
    swift_beginAccess();
    if (*(v80 + v85))
    {
      v86 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_closestLocation;
      swift_beginAccess();
      if (!*(v80 + v86))
      {
        *(v80 + v86) = v82;
        v87 = v82;
      }
    }

    else
    {
      v88 = v82;
      sub_100003E50(&off_1002B7A38, v84);
      v89 = v251;
      sub_1001DC504(v83, v251, type metadata accessor for InternalServicePrediction);
      v243 = v84;
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v270 = v92;
        v93 = swift_slowAlloc();
        v278 = v93;
        *v92 = 136315138;
        sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction);
        v94 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v95;
        sub_1001DE088(v89, type metadata accessor for InternalServicePrediction);
        v97 = sub_10017A8A8(v94, v96, &v278);
        v80 = v275;

        v98 = v270;
        *(v270 + 1) = v97;
        _os_log_impl(&_mh_execute_header, v90, v91, "Updating start time location for accuracy tracker for %s", v98, 0xCu);
        sub_100164B98(v93);
        v81 = v272;
      }

      else
      {

        sub_1001DE088(v89, type metadata accessor for InternalServicePrediction);
      }

      (*(v266 + 8))(v243, v267);
      v58 = v271;
      v120 = *(v80 + v85);
      v82 = v269;
      *(v80 + v85) = v269;
    }
  }

LABEL_23:
  PrivateServicePrediction.predictedStartTime.getter();
  PrivateServicePrediction.predictedDuration.getter();
  static Date.+ infix(_:_:)();
  v121 = v83;
  v122 = (v273 + 8);
  v123 = *(v273 + 8);
  (v123)(v66, v58);
  PrivateServicePrediction.predictedStartTime.getter();
  sub_1001BCC20(&qword_1002D71E0, 255, &type metadata accessor for Date);
  v124 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v270 = v123;
  (v123)(v66, v58);
  v125 = v121;
  if (v124)
  {
    if (v82)
    {
      v126 = v121 + *(v265 + 24);
      if ((*(v126 + 16) & 1) == 0)
      {
        v263 = v122;
        v128 = *v126;
        v127 = *(v126 + 8);
        v129 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
        swift_beginAccess();
        v130 = v82;
        v131 = v80 + v129;
        v132 = v257;
        sub_10001A718(v131, v257, &unk_1002D7BD0, &unk_10024A800);
        v133 = *(v273 + 48);
        v134 = v133(v132, 1, v58);
        v251 = v130;
        sub_1000157F0(v132, &unk_1002D7BD0, &unk_10024A800);
        if (v134 == 1 && (v135 = [objc_allocWithZone(CLLocation) initWithLatitude:v128 longitude:v127], objc_msgSend(v251, "distanceFromLocation:", v135), v137 = v136, v135, (*((swift_isaMask & *v260) + 0x238))(v277), v137 < *&v277[1]))
        {
          v138 = v248;
          sub_100003E50(&off_1002B7A38, v248);
          v139 = v246;
          sub_1001DC504(v125, v246, type metadata accessor for InternalServicePrediction);
          v140 = Logger.logObject.getter();
          v141 = static os_log_type_t.debug.getter();
          v142 = os_log_type_enabled(v140, v141);
          v143 = v259;
          if (v142)
          {
            v144 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            v278 = v145;
            *v144 = 136315138;
            sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction);
            v146 = dispatch thunk of CustomStringConvertible.description.getter();
            v148 = v147;
            sub_1001DE088(v139, type metadata accessor for InternalServicePrediction);
            v149 = sub_10017A8A8(v146, v148, &v278);

            *(v144 + 4) = v149;
            _os_log_impl(&_mh_execute_header, v140, v141, "Entered location for accuracy tracker for %s", v144, 0xCu);
            sub_100164B98(v145);

            (*(v266 + 8))(v248, v267);
          }

          else
          {

            sub_1001DE088(v139, type metadata accessor for InternalServicePrediction);
            (*(v266 + 8))(v138, v267);
          }

          v80 = v275;
          v172 = v273;
          v173 = v256;
          v174 = v271;
          (*(v273 + 16))(v256, v274, v271);
          (*(v172 + 56))(v173, 0, 1, v174);
          sub_1001BE550(v173);
        }

        else
        {
          v150 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
          v80 = v275;
          swift_beginAccess();
          v257 = v150;
          v151 = v255;
          sub_10001A718(&v150[v80], v255, &unk_1002D7BD0, &unk_10024A800);
          LODWORD(v150) = v133(v151, 1, v271);
          sub_1000157F0(v151, &unk_1002D7BD0, &unk_10024A800);
          v143 = v259;
          if (v150 == 1)
          {
            v152 = v80 + v129;
            v153 = v249;
            sub_10001A718(v152, v249, &unk_1002D7BD0, &unk_10024A800);
            v154 = v133(v153, 1, v271);
            sub_1000157F0(v153, &unk_1002D7BD0, &unk_10024A800);
            if (v154 != 1)
            {
              v155 = [objc_allocWithZone(CLLocation) initWithLatitude:v128 longitude:v127];
              [v251 distanceFromLocation:v155];
              v157 = v156;

              (*((swift_isaMask & *v260) + 0x238))(&v278);
              if (v279 + v279 < v157)
              {
                v158 = v244;
                sub_100003E50(&off_1002B7A38, v244);
                v159 = v245;
                sub_1001DC504(v125, v245, type metadata accessor for InternalServicePrediction);
                v160 = Logger.logObject.getter();
                v161 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v160, v161))
                {
                  v162 = swift_slowAlloc();
                  v260 = swift_slowAlloc();
                  v276[0] = v260;
                  *v162 = 136315138;
                  sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction);
                  v163 = dispatch thunk of CustomStringConvertible.description.getter();
                  v165 = v164;
                  sub_1001DE088(v159, type metadata accessor for InternalServicePrediction);
                  v166 = sub_10017A8A8(v163, v165, v276);

                  *(v162 + 4) = v166;
                  _os_log_impl(&_mh_execute_header, v160, v161, "Left location for accuracy tracker for %s", v162, 0xCu);
                  sub_100164B98(v260);
                }

                else
                {

                  sub_1001DE088(v159, type metadata accessor for InternalServicePrediction);
                }

                (*(v266 + 8))(v158, v267);
                v80 = v275;
                v175 = v273;
                v176 = v256;
                v177 = v271;
                (*(v273 + 16))(v256, v274, v271);
                (*(v175 + 56))(v176, 0, 1, v177);
                v178 = v257;
                swift_beginAccess();
                sub_10019B228(v176, &v178[v80]);
                swift_endAccess();
              }
            }
          }
        }

        v179 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_closestLocation;
        swift_beginAccess();
        v180 = *(v80 + v179);
        v122 = v263;
        if (v180)
        {
          v181 = objc_allocWithZone(CLLocation);
          v182 = v180;
          v183 = [v181 initWithLatitude:v128 longitude:v127];
          [v251 distanceFromLocation:v183];
          v185 = v184;

          v186 = [objc_allocWithZone(CLLocation) initWithLatitude:v128 longitude:v127];
          [v182 distanceFromLocation:v186];
          v188 = v187;

          if (v185 < v188)
          {
            sub_100003E50(&off_1002B7A38, v143);
            v189 = v247;
            sub_1001DC504(v125, v247, type metadata accessor for InternalServicePrediction);
            v190 = Logger.logObject.getter();
            v191 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v190, v191))
            {
              v192 = v189;
              v193 = swift_slowAlloc();
              v260 = swift_slowAlloc();
              v276[0] = v260;
              *v193 = 136315138;
              sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction);
              v194 = dispatch thunk of CustomStringConvertible.description.getter();
              v196 = v195;
              sub_1001DE088(v192, type metadata accessor for InternalServicePrediction);
              v197 = sub_10017A8A8(v194, v196, v276);
              v80 = v275;

              *(v193 + 4) = v197;
              _os_log_impl(&_mh_execute_header, v190, v191, "Updated closest location for %s", v193, 0xCu);
              sub_100164B98(v260);

              (*(v266 + 8))(v259, v267);
            }

            else
            {

              sub_1001DE088(v189, type metadata accessor for InternalServicePrediction);
              (*(v266 + 8))(v143, v267);
            }

            v122 = v263;
LABEL_52:
            v251 = *(v80 + v179);
            *(v80 + v179) = v269;
            goto LABEL_53;
          }

          v122 = v263;
          if (*(v80 + v179))
          {
LABEL_53:

            v58 = v271;
            v81 = v272;
            goto LABEL_54;
          }
        }

        v198 = v252;
        sub_100003E50(&off_1002B7A38, v252);
        v199 = v253;
        sub_1001DC504(v125, v253, type metadata accessor for InternalServicePrediction);
        v200 = Logger.logObject.getter();
        v201 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v200, v201))
        {
          v202 = swift_slowAlloc();
          v203 = swift_slowAlloc();
          v276[0] = v203;
          *v202 = 136315138;
          sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction);
          v204 = dispatch thunk of CustomStringConvertible.description.getter();
          v205 = v199;
          v207 = v206;
          sub_1001DE088(v205, type metadata accessor for InternalServicePrediction);
          v208 = sub_10017A8A8(v204, v207, v276);

          *(v202 + 4) = v208;
          _os_log_impl(&_mh_execute_header, v200, v201, "Setting closest location for %s", v202, 0xCu);
          sub_100164B98(v203);
          v80 = v275;

          v122 = v263;
        }

        else
        {

          sub_1001DE088(v199, type metadata accessor for InternalServicePrediction);
        }

        (*(v266 + 8))(v198, v267);
        goto LABEL_52;
      }
    }
  }

LABEL_54:
  v209 = static Date.< infix(_:_:)();
  v210 = v264;
  if ((v209 & 1) == 0)
  {
    return (v270)(v81, v58);
  }

  v263 = v122;
  sub_100003E50(&off_1002B7A38, v264);
  v211 = v261;
  sub_1001DC504(v125, v261, type metadata accessor for InternalServicePrediction);
  v212 = Logger.logObject.getter();
  v213 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v212, v213))
  {
    v214 = swift_slowAlloc();
    v215 = swift_slowAlloc();
    v276[0] = v215;
    *v214 = 136315138;
    sub_1001BCC20(&qword_1002D7BF0, 255, type metadata accessor for InternalServicePrediction);
    v216 = dispatch thunk of CustomStringConvertible.description.getter();
    v218 = v217;
    sub_1001DE088(v211, type metadata accessor for InternalServicePrediction);
    v219 = sub_10017A8A8(v216, v218, v276);

    *(v214 + 4) = v219;
    _os_log_impl(&_mh_execute_header, v212, v213, "Stopping accuracy tracker for %s", v214, 0xCu);
    sub_100164B98(v215);
  }

  else
  {

    sub_1001DE088(v211, type metadata accessor for InternalServicePrediction);
  }

  v221 = *(v266 + 8);
  v221(v210, v267);
  v222 = v262;
  v223 = v272;
  sub_1001C0CA0(2, v272);
  v224 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter__timeEnteredLocation;
  swift_beginAccess();
  sub_10001A718(v80 + v224, v222, &unk_1002D7BD0, &unk_10024A800);
  v225 = *(v273 + 48);
  v226 = v271;
  if (v225(v222, 1, v271) == 1)
  {
    (v270)(v223, v226);
    v227 = v222;
    return sub_1000157F0(v227, &unk_1002D7BD0, &unk_10024A800);
  }

  sub_1000157F0(v222, &unk_1002D7BD0, &unk_10024A800);
  v228 = OBJC_IVAR____TtC17wirelessinsightsd32ServicePredictionAccuracyCounter_timeLeftLocation;
  swift_beginAccess();
  v229 = v258;
  v230 = v271;
  sub_10001A718(v80 + v228, v258, &unk_1002D7BD0, &unk_10024A800);
  if (v225(v229, 1, v230) != 1)
  {
    (v270)(v272, v230);
    v227 = v229;
    return sub_1000157F0(v227, &unk_1002D7BD0, &unk_10024A800);
  }

  sub_1000157F0(v229, &unk_1002D7BD0, &unk_10024A800);
  v231 = v254;
  sub_100003E50(&off_1002B7A38, v254);
  v232 = Logger.logObject.getter();
  v233 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v232, v233))
  {
    v234 = swift_slowAlloc();
    *v234 = 0;
    _os_log_impl(&_mh_execute_header, v232, v233, "Setting timeLeftLocation", v234, 2u);
  }

  v221(v231, v267);
  v235 = v273;
  v236 = v256;
  v237 = v271;
  (*(v273 + 32))(v256, v272, v271);
  (*(v235 + 56))(v236, 0, 1, v237);
  swift_beginAccess();
  sub_10019B228(v236, v80 + v228);
  return swift_endAccess();
}