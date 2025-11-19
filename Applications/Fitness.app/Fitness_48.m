uint64_t sub_100563C04(uint64_t a1, void *a2, double a3)
{
  v122 = a2;
  v119 = a1;
  v5 = sub_100140278(&qword_1008DD250);
  __chkstk_darwin(v5 - 8);
  v106 = &v99 - v6;
  v7 = type metadata accessor for WorkoutChartDataElement(0);
  v123 = *(v7 - 8);
  v124 = v7;
  __chkstk_darwin(v7);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v99 - v11;
  __chkstk_darwin(v13);
  v103 = &v99 - v14;
  __chkstk_darwin(v15);
  v100 = &v99 - v16;
  __chkstk_darwin(v17);
  v102 = &v99 - v18;
  __chkstk_darwin(v19);
  v101 = &v99 - v20;
  v21 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v21 - 8);
  v109 = &v99 - v22;
  v23 = type metadata accessor for Calendar();
  v112 = *(v23 - 8);
  v113 = v23;
  __chkstk_darwin(v23);
  v108 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v120 = v25;
  v121 = v26;
  __chkstk_darwin(v25);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v99 - v30;
  v117 = type metadata accessor for WorkoutChartViewModel(0);
  v104 = *(v117 - 8);
  __chkstk_darwin(v117);
  v33 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v105 = &v99 - v35;
  v36 = *(a1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_formattingManager);
  v110 = objc_opt_self();
  v37 = [v110 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 localizedStringForKey:v38 value:0 table:0];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = sub_100197684(v40, v42, *&a3, 0, 5u);

  v118 = v43;
  v116 = v31;
  v44 = v119;
  sub_10055B348(v31);
  v115 = v28;
  sub_10055B568(v28);
  v111 = *(v44 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_pauseChartData);

  v114 = v36;

  UUID.init()();
  v45 = v117;
  v107 = *(v117 + 76);
  v46 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v47 = v108;
  static Calendar.current.getter();
  v48 = v109;
  static Locale.current.getter();
  v49 = type metadata accessor for Locale();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  Calendar.locale.setter();
  v50 = v47;
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  [v46 setCalendar:isa];

  [v46 setUnitsStyle:0];
  [v46 setZeroFormattingBehavior:0];
  [v46 setAllowedUnits:224];
  (*(v112 + 8))(v50, v113);
  *&v33[v107] = v46;
  v52 = v45[20];
  v53 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v53 setZeroFormattingBehavior:1];
  [v53 setUnitsStyle:4];
  [v53 setAllowedUnits:224];
  *&v33[v52] = v53;
  v33[v45[5]] = 5;
  v54 = [v110 mainBundle];
  v55 = String._bridgeToObjectiveC()();
  v56 = [v54 localizedStringForKey:v55 value:0 table:0];

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60 = &v33[v45[6]];
  *v60 = v57;
  v60[1] = v59;
  v61 = v45;
  *&v33[v45[7]] = v118;
  v125[0] = v122;

  sub_10056EDEC(v125);
  v62 = v45[13];
  *&v33[v45[8]] = v125[0];
  v33[v45[9]] = 1;
  v63 = v45[10];
  v64 = v120;
  v65 = *(v121 + 16);
  v66 = v116;
  v65(&v33[v63], v116, v120);
  v67 = v115;
  v65(&v33[v61[11]], v115, v64);
  *&v33[v61[12]] = v111;
  *&v33[v62] = 0;
  *&v33[v61[14]] = v114;
  v68 = v122[2];
  if (v68)
  {
    v69 = v121;
    v70 = v122 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
    v71 = v102;
    sub_100169E98(v70, v102, type metadata accessor for WorkoutChartDataElement);
    v72 = v103;
    if (v68 == 1)
    {
LABEL_3:
      v73 = v101;
      sub_10002B380(v71, v101, type metadata accessor for WorkoutChartDataElement);
      v74 = *(v73 + *(v124 + 24));
      sub_100169F24(v73, type metadata accessor for WorkoutChartDataElement);
      v61 = v117;
      *&v33[*(v117 + 60)] = v74;
      sub_100169E98(v70, v72, type metadata accessor for WorkoutChartDataElement);
      v75 = v120;
      v76 = v69;
      if (v68 == 1)
      {
LABEL_4:
        v77 = *(v76 + 8);
        v77(v115, v75);
        v77(v116, v75);
        v78 = v100;
        sub_10002B380(v72, v100, type metadata accessor for WorkoutChartDataElement);
        v79 = *(v78 + *(v124 + 28));
        sub_100169F24(v78, type metadata accessor for WorkoutChartDataElement);
        goto LABEL_6;
      }

      v97 = 1;
      while (1)
      {
        v98 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          break;
        }

        sub_100169E98(v70 + *(v123 + 72) * v97, v12, type metadata accessor for WorkoutChartDataElement);
        if (*(v72 + *(v124 + 28)) >= *&v12[*(v124 + 28)])
        {
          sub_100169F24(v12, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v72, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v12, v72, type metadata accessor for WorkoutChartDataElement);
        }

        ++v97;
        v76 = v69;
        if (v98 == v68)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v95 = 1;
      while (1)
      {
        v96 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          break;
        }

        sub_100169E98(v70 + *(v123 + 72) * v95, v9, type metadata accessor for WorkoutChartDataElement);
        if (*&v9[*(v124 + 24)] >= *(v71 + *(v124 + 24)))
        {
          sub_100169F24(v9, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v71, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v9, v71, type metadata accessor for WorkoutChartDataElement);
        }

        ++v95;
        if (v96 == v68)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  *&v33[v61[15]] = 0;
  v80 = v120;
  v81 = *(v121 + 8);
  v81(v67, v120);
  v81(v66, v80);
  v74 = 0.0;
  v79 = 0.0;
LABEL_6:
  *&v33[v61[16]] = v79;
  v82 = (v74 + v79) * 0.5;
  v83 = v82 + -25.0;
  v84 = v82 + 25.0;
  if (v79 - v74 >= 50.0)
  {
    v85 = v74;
  }

  else
  {
    v85 = v83;
  }

  if (v79 - v74 >= 50.0)
  {
    v84 = v79;
  }

  v86 = (v84 - v85) / 44.0;
  *&v33[v61[18]] = v86;
  v87 = v86 + v86;
  v88 = v85 - v87;
  v89 = v84 + v87;
  if (v88 <= v89)
  {
    v90 = &v33[v61[17]];
    *v90 = v88;
    v90[1] = v89;
    v91 = v105;
    sub_10002B380(v33, v105, type metadata accessor for WorkoutChartViewModel);
    v92 = v106;
    sub_100169E98(v91, v106, type metadata accessor for WorkoutChartViewModel);
    (*(v104 + 56))(v92, 0, 1, v61);
    swift_getKeyPath();
    swift_getKeyPath();
    v93 = static Published.subscript.modify();
    sub_10055ACD8(v92, 5);
    v93(v125, 0);

    return sub_100169F24(v91, type metadata accessor for WorkoutChartViewModel);
  }

LABEL_27:
  __break(1u);

  __break(1u);
  return result;
}

void sub_10056485C(unint64_t a1, uint64_t a2, void *a3, void (**a4)(void), uint64_t a5)
{
  v173 = a5;
  v177 = a4;
  v141 = a3;
  v166 = a1;
  v147 = type metadata accessor for DispatchWorkItemFlags();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchQoS();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NSIndexSetIterator();
  v164 = *(v7 - 8);
  __chkstk_darwin(v7);
  v168 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v163 = &v141 - v10;
  v162 = type metadata accessor for WorkoutChartDataElement(0);
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v160 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v141 - v16;
  v18 = type metadata accessor for Date();
  v159 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v141 - v22;
  __chkstk_darwin(v24);
  v26 = &v141 - v25;
  __chkstk_darwin(v27);
  v29 = &v141 - v28;
  __chkstk_darwin(v30);
  v32 = &v141 - v31;
  __chkstk_darwin(v33);
  v35 = &v141 - v34;
  v36 = sub_100140278(&qword_1008DD4C8);
  __chkstk_darwin(v36 - 8);
  __chkstk_darwin(v37);
  if (v177)
  {
    swift_errorRetain();
    v40 = static os_log_type_t.error.getter();
    v41 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, v40))
    {
      v42 = v41;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136315138;
      swift_getErrorValue();
      v45 = Error.localizedDescription.getter();
      v47 = sub_10000AFDC(v45, v46, &aBlock);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v42, v40, "Error getting heart rates: %s", v43, 0xCu);
      sub_100005A40(v44);
    }

    else
    {
LABEL_38:
    }
  }

  else
  {
    v155 = v35;
    v174 = v32;
    v167 = v29;
    v156 = v23;
    v158 = v17;
    v157 = v14;
    v154 = &v141 - v38;
    v169 = v39;
    v176 = v26;
    v170 = v20;
    v175 = v18;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v49 = v166;
      if (v166)
      {
        v173 = Strong;
        if (v166 >> 62)
        {
          goto LABEL_95;
        }

        for (i = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v51 = v175;
          v52 = v159;
          if (!i)
          {
            break;
          }

          v184 = &_swiftEmptyDictionarySingleton;
          v151 = objc_opt_self();
          if (i < 1)
          {
            __break(1u);
            return;
          }

          v53 = 0;
          v172 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity;
          v149 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout;
          v153 = v49 & 0xC000000000000001;
          v177 = (v52 + 32);
          v152 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_chartProperties;
          v171 = (v52 + 56);
          v148 = (v52 + 48);
          v54 = (v52 + 8);
          v165 = (v52 + 16);
          v55 = v176;
          v150 = i;
          while (1)
          {
            v57 = v153 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v49 + 8 * v53 + 32);
            v58 = v57;
            v59 = [v57 date];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v60 = v173;
            v61 = *&v172[v173];
            if (v61)
            {
              v62 = [v61 startDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v49 = v177;
              v63 = *v177;
              v64 = v158;
              (*v177)(v158, v55, v51);
              v65 = *v171;
              (*v171)(v64, 0, 1, v51);
              v66 = v167;
              (v63)(v167, v64, v51);
            }

            else
            {
              v65 = *v171;
              v49 = v158;
              (*v171)(v158, 1, 1, v51);
              v67 = [*(v60 + v149) startDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              if ((*v148)(v49, 1, v51) != 1)
              {
                sub_10000EA04(v49, &unk_1008F73A0);
              }

              v66 = v167;
            }

            Date.timeIntervalSince(_:)();
            v69 = v68;
            v70 = *v54;
            (*v54)(v66, v51);
            v71 = v173;
            v72 = v69 / *(*(v173 + v152) + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration);
            if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              break;
            }

            if (v72 <= -9.22337204e18)
            {
              goto LABEL_88;
            }

            if (v72 >= 9.22337204e18)
            {
              goto LABEL_89;
            }

            v73 = *&v172[v173];
            if (v73)
            {
              v74 = [v73 startDate];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v75 = *v177;
              v76 = v157;
              (*v177)();
              v65(v76, 0, 1, v51);
              v77 = v156;
              (v75)(v156, v76, v51);
            }

            else
            {
              v78 = v157;
              v65(v157, 1, 1, v51);
              v79 = [*(v71 + v149) startDate];
              v77 = v156;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              if ((*v148)(v78, 1, v51) != 1)
              {
                sub_10000EA04(v78, &unk_1008F73A0);
              }
            }

            v49 = v155;
            Date.addingTimeInterval(_:)();
            v70(v77, v51);
            v70(v174, v51);
            v80 = [v58 quantity];
            v81 = [v151 _countPerMinuteUnit];
            [v80 doubleValueForUnit:v81];
            v83 = v82;

            v84 = v184;
            if (v184[2] && (v85 = sub_1004C577C(v49), (v86 & 1) != 0))
            {
              v55 = v176;
              if ((*&v83 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_92;
              }

              if (v83 <= -9.22337204e18)
              {
                goto LABEL_93;
              }

              if (v83 >= 9.22337204e18)
              {
                goto LABEL_94;
              }

              [*(v84[7] + 8 * v85) addIndex:v83];
            }

            else
            {
              (*v165)(v176, v49, v51);
              if ((*&v83 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_90;
              }

              if (v83 <= -9.22337204e18)
              {
                goto LABEL_91;
              }

              if (v83 >= 9.22337204e18)
              {
                __break(1u);
                goto LABEL_38;
              }

              v56 = objc_allocWithZone(NSMutableIndexSet);
              v55 = v176;
              sub_100559840([v56 initWithIndex:v83], v176);
            }

            ++v53;

            v70(v49, v51);
            v49 = v166;
            if (v150 == v53)
            {
              v87 = (v184 + 8);
              v88 = 1 << *(v184 + 32);
              v89 = -1;
              if (v88 < 64)
              {
                v89 = ~(-1 << v88);
              }

              v90 = v89 & v184[8];
              v158 = (v88 + 63) >> 6;
              v172 = (v164 + 8);
              v166 = v184;

              v91 = 0;
              v92 = _swiftEmptyArrayStorage;
              v93 = &unk_1006F4B60;
              v167 = v87;
              v164 = v7;
              while (1)
              {
                v94 = v169;
                v174 = v92;
                if (!v90)
                {
                  break;
                }

                v95 = v91;
LABEL_54:
                v98 = __clz(__rbit64(v90));
                v90 &= v90 - 1;
                v99 = v98 | (v95 << 6);
                v100 = v166;
                v101 = v159;
                v103 = v175;
                v102 = v176;
                (*(v159 + 16))(v176, *(v166 + 48) + *(v159 + 72) * v99, v175);
                v104 = *(*(v100 + 56) + 8 * v99);
                v93 = &unk_1006F4B60;
                v105 = sub_100140278(&qword_1008DD4D0);
                v106 = *(v105 + 48);
                v107 = *(v101 + 32);
                v94 = v169;
                v107(v169, v102, v103);
                *(v94 + v106) = v104;
                (*(*(v105 - 8) + 56))(v94, 0, 1, v105);
                v108 = v104;
                v7 = v164;
LABEL_55:
                v109 = v154;
                sub_100015E80(v94, v154, &qword_1008DD4C8);
                v110 = sub_100140278(&qword_1008DD4D0);
                v111 = (*(*(v110 - 8) + 48))(v109, 1, v110);
                v112 = v163;
                if (v111 == 1)
                {

                  v130 = v141;
                  if (v141)
                  {
                    [v141 doubleValue];
                    v132 = v131;
                  }

                  else
                  {
                    v132 = 0;
                  }

                  v133 = v147;
                  v134 = v146;
                  v135 = v143;
                  v136 = v142;
                  sub_1000059F8(0, &qword_1008E3FD0);
                  v137 = static OS_dispatch_queue.main.getter();
                  v138 = swift_allocObject();
                  *(v138 + 16) = v173;
                  *(v138 + 24) = v132;
                  *(v138 + 32) = v130 == 0;
                  *(v138 + 40) = v174;
                  v182 = sub_10057104C;
                  v183 = v138;
                  aBlock = _NSConcreteStackBlock;
                  v179 = 1107296256;
                  v180 = sub_1000449A8;
                  v181 = &unk_1008603E8;
                  v139 = _Block_copy(&aBlock);

                  static DispatchQoS.unspecified.getter();
                  aBlock = _swiftEmptyArrayStorage;
                  sub_100045EF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
                  sub_100140278(&unk_1008E7F50);
                  sub_10002621C();
                  v140 = v144;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  OS_dispatch_queue.async(group:qos:flags:execute:)();
                  _Block_release(v139);

                  (*(v134 + 8))(v140, v133);
                  (*(v135 + 8))(v136, v145);

                  return;
                }

                v113 = *(v109 + *(v110 + 48));
                v171 = *v177;
                (v171)(v170, v109, v175);
                NSIndexSet.makeIterator()();
                sub_100045EF0(&qword_1008DD4D8, &type metadata accessor for NSIndexSetIterator);
                dispatch thunk of IteratorProtocol.next()();
                if (v179)
                {
                  v114 = v93;
                  v115 = v112;
                  v116 = *v172;
                  (*v172)(v115, v7);
                  v117 = 0.0;
                  v92 = v174;
                  v118 = v168;
                }

                else
                {
                  v119 = aBlock;
                  dispatch thunk of IteratorProtocol.next()();
                  if (v179)
                  {
                    v114 = v93;
                  }

                  else
                  {
                    v114 = v93;
                    do
                    {
                      if (aBlock < v119)
                      {
                        v119 = aBlock;
                      }

                      dispatch thunk of IteratorProtocol.next()();
                    }

                    while (v179 != 1);
                  }

                  v120 = v112;
                  v116 = *v172;
                  (*v172)(v120, v7);
                  v117 = v119;
                  v118 = v168;
                  v92 = v174;
                }

                NSIndexSet.makeIterator()();
                dispatch thunk of IteratorProtocol.next()();
                if (v179)
                {
                  v116(v118, v7);
                  v121 = 0.0;
                  v93 = v114;
                }

                else
                {
                  v122 = aBlock;
                  dispatch thunk of IteratorProtocol.next()();
                  if (v179)
                  {
                    v123 = v168;
                    v93 = v114;
                  }

                  else
                  {
                    v123 = v168;
                    v93 = v114;
                    do
                    {
                      if (v122 <= aBlock)
                      {
                        v122 = aBlock;
                      }

                      dispatch thunk of IteratorProtocol.next()();
                    }

                    while (v179 != 1);
                  }

                  v116(v123, v7);
                  v121 = v122;
                  v92 = v174;
                }

                v49 = v160;
                (v171)(v160, v170, v175);
                v124 = v162;
                *(v49 + *(v162 + 24)) = v117;
                *(v49 + *(v124 + 28)) = v121;
                *(v49 + *(v124 + 20)) = (v117 + v121) * 0.5;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v126 = v161;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v92 = sub_1001A1EB4(0, *(v92 + 2) + 1, 1, v92);
                }

                v128 = *(v92 + 2);
                v127 = *(v92 + 3);
                if (v128 >= v127 >> 1)
                {
                  v92 = sub_1001A1EB4(v127 > 1, v128 + 1, 1, v92);
                }

                *(v92 + 2) = v128 + 1;
                sub_10002B380(v49, &v92[((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v128], type metadata accessor for WorkoutChartDataElement);
                v87 = v167;
              }

              if (v158 <= v91 + 1)
              {
                v96 = v91 + 1;
              }

              else
              {
                v96 = v158;
              }

              v97 = v96 - 1;
              while (1)
              {
                v95 = v91 + 1;
                if (__OFADD__(v91, 1))
                {
                  break;
                }

                if (v95 >= v158)
                {
                  v129 = sub_100140278(&qword_1008DD4D0);
                  (*(*(v129 - 8) + 56))(v94, 1, 1, v129);
                  v90 = 0;
                  v91 = v97;
                  goto LABEL_55;
                }

                v90 = *&v87[8 * v95];
                ++v91;
                if (v90)
                {
                  v91 = v95;
                  goto LABEL_54;
                }
              }

              __break(1u);
              break;
            }
          }

          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          ;
        }
      }
    }
  }
}

uint64_t sub_100565D70(uint64_t a1, void *a2, int a3, void *a4)
{
  v117 = a4;
  LODWORD(v111) = a3;
  v113 = a2;
  v114 = a1;
  v5 = sub_100140278(&qword_1008DD250);
  __chkstk_darwin(v5 - 8);
  v103 = &v98 - v6;
  v7 = type metadata accessor for WorkoutChartDataElement(0);
  v120 = *(v7 - 8);
  v121 = v7;
  __chkstk_darwin(v7);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v98 - v11;
  __chkstk_darwin(v13);
  v15 = &v98 - v14;
  __chkstk_darwin(v16);
  v99 = &v98 - v17;
  __chkstk_darwin(v18);
  v20 = &v98 - v19;
  __chkstk_darwin(v21);
  v100 = &v98 - v22;
  v23 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v23 - 8);
  v106 = &v98 - v24;
  v25 = type metadata accessor for Calendar();
  v109 = *(v25 - 8);
  v110 = v25;
  __chkstk_darwin(v25);
  v105 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v115 = v27;
  v116 = v28;
  __chkstk_darwin(v27);
  v119 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v118 = &v98 - v31;
  v112 = type metadata accessor for WorkoutChartViewModel(0);
  v101 = *(v112 - 8);
  __chkstk_darwin(v112);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v102 = &v98 - v35;
  v36 = *(a1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_formattingManager);
  v107 = objc_opt_self();
  v37 = [v107 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 localizedStringForKey:v38 value:0 table:0];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = sub_100197684(v40, v42, v113, v111 & 1, 0);

  v113 = v43;
  v44 = v114;
  sub_10055B348(v118);
  sub_10055B568(v119);
  v108 = *(v44 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_pauseChartData);

  v111 = v36;

  UUID.init()();
  v45 = v112;
  v104 = *(v112 + 76);
  v46 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v47 = v105;
  static Calendar.current.getter();
  v48 = v106;
  static Locale.current.getter();
  v49 = type metadata accessor for Locale();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  Calendar.locale.setter();
  v50 = v47;
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  [v46 setCalendar:isa];

  [v46 setUnitsStyle:0];
  [v46 setZeroFormattingBehavior:0];
  [v46 setAllowedUnits:224];
  (*(v109 + 8))(v50, v110);
  *&v33[v104] = v46;
  v52 = v45[20];
  v53 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v53 setZeroFormattingBehavior:1];
  [v53 setUnitsStyle:4];
  [v53 setAllowedUnits:224];
  *&v33[v52] = v53;
  v33[v45[5]] = 0;
  v54 = [v107 mainBundle];
  v55 = String._bridgeToObjectiveC()();
  v56 = [v54 localizedStringForKey:v55 value:0 table:0];

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60 = &v33[v45[6]];
  *v60 = v57;
  v60[1] = v59;
  v61 = v45;
  *&v33[v45[7]] = v113;
  v122[0] = v117;

  sub_10056EDEC(v122);
  v62 = v45[13];
  *&v33[v45[8]] = v122[0];
  v33[v45[9]] = 1;
  v63 = v45[10];
  v64 = v115;
  v65 = *(v116 + 16);
  v65(&v33[v63], v118, v115);
  v65(&v33[v61[11]], v119, v64);
  *&v33[v61[12]] = v108;
  *&v33[v62] = 0;
  *&v33[v61[14]] = v111;
  v66 = v117[2];
  if (v66)
  {
    v67 = v119;
    v111 = v33;
    v68 = v116;
    v69 = v117 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    sub_100169E98(v69, v20, type metadata accessor for WorkoutChartDataElement);
    if (v66 == 1)
    {
LABEL_3:
      v70 = v20;
      v71 = v100;
      sub_10002B380(v70, v100, type metadata accessor for WorkoutChartDataElement);
      v72 = *(v71 + *(v121 + 24));
      sub_100169F24(v71, type metadata accessor for WorkoutChartDataElement);
      v61 = v112;
      *&v111[*(v112 + 60)] = v72;
      sub_100169E98(v69, v15, type metadata accessor for WorkoutChartDataElement);
      v73 = v115;
      v74 = v68;
      v75 = v67;
      if (v66 == 1)
      {
LABEL_4:
        v76 = *(v74 + 8);
        v76(v75, v73);
        v76(v118, v73);
        v77 = v99;
        sub_10002B380(v15, v99, type metadata accessor for WorkoutChartDataElement);
        v78 = *(v77 + *(v121 + 28));
        sub_100169F24(v77, type metadata accessor for WorkoutChartDataElement);
        v33 = v111;
        goto LABEL_6;
      }

      v96 = 1;
      while (1)
      {
        v97 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          break;
        }

        sub_100169E98(v69 + *(v120 + 72) * v96, v12, type metadata accessor for WorkoutChartDataElement);
        if (*&v15[*(v121 + 28)] >= *&v12[*(v121 + 28)])
        {
          sub_100169F24(v12, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v15, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v12, v15, type metadata accessor for WorkoutChartDataElement);
        }

        ++v96;
        v74 = v68;
        v75 = v67;
        if (v97 == v66)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v94 = 1;
      while (1)
      {
        v95 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        sub_100169E98(v69 + *(v120 + 72) * v94, v9, type metadata accessor for WorkoutChartDataElement);
        if (*&v9[*(v121 + 24)] >= *&v20[*(v121 + 24)])
        {
          sub_100169F24(v9, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v20, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v9, v20, type metadata accessor for WorkoutChartDataElement);
        }

        ++v94;
        if (v95 == v66)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  *&v33[v61[15]] = 0;
  v79 = v115;
  v80 = *(v116 + 8);
  v80(v119, v115);
  v80(v118, v79);
  v72 = 0.0;
  v78 = 0.0;
LABEL_6:
  *&v33[v61[16]] = v78;
  v81 = (v72 + v78) * 0.5;
  v82 = v81 + -5.0;
  v83 = v81 + 5.0;
  if (v78 - v72 >= 10.0)
  {
    v84 = v72;
  }

  else
  {
    v84 = v82;
  }

  if (v78 - v72 >= 10.0)
  {
    v83 = v78;
  }

  v85 = (v83 - v84) / 44.0;
  *&v33[v61[18]] = v85;
  v86 = v85 + v85;
  v87 = v84 - v86;
  v88 = v83 + v86;
  if (v87 <= v88)
  {
    v89 = &v33[v61[17]];
    *v89 = v87;
    v89[1] = v88;
    v90 = v102;
    sub_10002B380(v33, v102, type metadata accessor for WorkoutChartViewModel);
    v91 = v103;
    sub_100169E98(v90, v103, type metadata accessor for WorkoutChartViewModel);
    (*(v101 + 56))(v91, 0, 1, v61);
    swift_getKeyPath();
    swift_getKeyPath();
    v92 = static Published.subscript.modify();
    sub_10055ACD8(v91, 0);
    v92(v122, 0);

    return sub_100169F24(v90, type metadata accessor for WorkoutChartViewModel);
  }

LABEL_27:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1005669B0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v9 = v5;
  v11 = *(v5 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_dataCalculator);
  v12 = *(v9 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout);
  v13 = *(v9 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  v17[4] = a3;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10055B230;
  v17[3] = a4;
  v16 = _Block_copy(v17);

  [v11 *a5];
  _Block_release(v16);
}

void sub_100566AE0(id *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v51 = v13;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v25 = Strong;
    if (!a1)
    {
      goto LABEL_30;
    }

    if (a1 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_30;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v26 = sub_10055ECAC(a1, v25);
    if (v26)
    {
      v50 = v26;
      v27 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout;
      v28 = [*(v25 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout) totalDistance];
      if (v28)
      {
        v29 = v28;
        v30 = [objc_opt_self() meterUnit];
        [v29 doubleValueForUnit:v30];
        v32 = v31;
      }

      else
      {
        v32 = 0.0;
      }

      [*(v25 + v27) duration];
      v34 = v33;
      v35 = *(v25 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
      if (!v35)
      {
LABEL_21:
        if (v34 <= 0.0)
        {
          v44 = 1;
          v32 = 0.0;
LABEL_27:
          sub_1000059F8(0, &qword_1008E3FD0);
          v45 = static OS_dispatch_queue.main.getter();
          v46 = swift_allocObject();
          *(v46 + 16) = v25;
          *(v46 + 24) = v32;
          *(v46 + 32) = v44;
          *(v46 + 33) = a4;
          *(v46 + 40) = v50;
          aBlock[4] = sub_100571238;
          aBlock[5] = v46;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000449A8;
          aBlock[3] = &unk_1008605C8;
          v47 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_100045EF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
          sub_100140278(&unk_1008E7F50);
          sub_10002621C();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v47);

          (*(v8 + 8))(v10, v7);
          (*(v12 + 8))(v15, v51);
          return;
        }

LABEL_26:
        v44 = 0;
        v32 = v32 / v34;
        goto LABEL_27;
      }

      v36 = v35;
      v37 = [v36 distanceType];
      if (v37)
      {
        v38 = v37;
        [v36 duration];
        v34 = v39;
        v40 = [v36 statisticsForType:v38];
        if (v40)
        {
          v41 = v40;
          v42 = [v40 sumQuantity];
          if (v42)
          {
            v49 = v42;
            v48 = [objc_opt_self() meterUnit];
            [v49 doubleValueForUnit:v48];
            v32 = v43;

            goto LABEL_20;
          }
        }

        else
        {
          v41 = v38;
        }

        v32 = 0.0;
        if (v34 <= 0.0)
        {
          v44 = 1;
          goto LABEL_27;
        }

        goto LABEL_26;
      }

LABEL_20:

      goto LABEL_21;
    }

LABEL_30:

    return;
  }

  swift_errorRetain();
  v16 = static os_log_type_t.error.getter();
  v17 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, v16))
  {
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    swift_getErrorValue();
    v21 = Error.localizedDescription.getter();
    v23 = sub_10000AFDC(v21, v22, aBlock);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v18, v16, "Error getting pace data: %s", v19, 0xCu);
    sub_100005A40(v20);
  }

  else
  {
  }
}

uint64_t sub_100567120(id *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    if (a2)
    {
      swift_errorRetain();
      v17 = static os_log_type_t.error.getter();
      v18 = HKLogWorkouts;
      if (!os_log_type_enabled(HKLogWorkouts, v17))
      {
      }

      v19 = v18;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_10000AFDC(v22, v23, aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v19, v17, "Error getting pace data: %s", v20, 0xCu);
      sub_100005A40(v21);
    }

    if (a1)
    {
      if (a1 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_27;
        }
      }

      else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v25 = sub_10055ECAC(a1, v16);
      if (v25)
      {
        v54 = v25;
        v26 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout;
        v27 = [*(v16 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout) totalDistance];
        if (v27)
        {
          v28 = v27;
          v29 = [objc_opt_self() meterUnit];
          v53 = v26;
          v30 = v29;
          [v28 doubleValueForUnit:v29];
          v32 = v31;

          v26 = v53;
        }

        else
        {
          v32 = 0.0;
        }

        [*(v16 + v26) duration];
        v34 = v33;
        v35 = *(v16 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
        if (!v35)
        {
LABEL_19:
          if (v34 <= 0.0)
          {
            v47 = 1;
            v32 = 0.0;
LABEL_24:
            sub_1000059F8(0, &qword_1008E3FD0);
            v53 = static OS_dispatch_queue.main.getter();
            v48 = swift_allocObject();
            *(v48 + 16) = v16;
            *(v48 + 24) = v32;
            *(v48 + 32) = v47;
            *(v48 + 33) = a4;
            *(v48 + 40) = v54;
            aBlock[4] = sub_100571080;
            aBlock[5] = v48;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1000449A8;
            aBlock[3] = &unk_100860528;
            v49 = _Block_copy(aBlock);

            static DispatchQoS.unspecified.getter();
            aBlock[0] = _swiftEmptyArrayStorage;
            sub_100045EF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
            sub_100140278(&unk_1008E7F50);
            sub_10002621C();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v50 = v53;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v49);

            (*(v8 + 8))(v10, v7);
            return (*(v12 + 8))(v14, v11);
          }

LABEL_23:
          v47 = 0;
          v32 = v32 / v34;
          goto LABEL_24;
        }

        v36 = v35;
        v37 = [v36 distanceType];
        if (v37)
        {
          v38 = v37;
          [v36 duration];
          v34 = v39;
          v40 = [v36 statisticsForType:v38];
          if (v40)
          {
            v53 = v36;
            v41 = v40;
            v42 = [v40 sumQuantity];
            if (v42)
            {
              v52 = v41;
              v43 = v42;
              v44 = [objc_opt_self() meterUnit];
              v51 = v38;
              v45 = v44;
              [v43 doubleValueForUnit:?];
              v32 = v46;

              v36 = v53;
              goto LABEL_18;
            }

            v38 = v41;
            v36 = v53;
          }

          v32 = 0.0;
          if (v34 <= 0.0)
          {
            v47 = 1;
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_18:

        goto LABEL_19;
      }
    }

LABEL_27:
    sub_1005669B0(a4, &unk_100860560, sub_100571084, &unk_100860578, &selRef_distanceSamplesForWorkout_workoutActivity_completion_);
  }

  return result;
}

uint64_t sub_100567790(uint64_t a1, uint64_t a2, int a3, unsigned int a4, void *a5)
{
  v111 = a5;
  v118 = a4;
  LODWORD(v113) = a3;
  v114 = a1;
  v115 = a2;
  v6 = sub_100140278(&qword_1008DD250);
  __chkstk_darwin(v6 - 8);
  v103 = &v99 - v7;
  v8 = type metadata accessor for WorkoutChartDataElement(0);
  v121 = *(v8 - 8);
  v122 = v8;
  __chkstk_darwin(v8);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v99 - v12;
  __chkstk_darwin(v14);
  v120 = &v99 - v15;
  __chkstk_darwin(v16);
  v99 = &v99 - v17;
  __chkstk_darwin(v18);
  v20 = &v99 - v19;
  __chkstk_darwin(v21);
  v100 = &v99 - v22;
  v23 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v23 - 8);
  v107 = &v99 - v24;
  v109 = type metadata accessor for Calendar();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  v116 = v26;
  v117 = v27;
  __chkstk_darwin(v26);
  v119 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v99 - v30;
  v112 = type metadata accessor for WorkoutChartViewModel(0);
  v101 = *(v112 - 8);
  __chkstk_darwin(v112);
  v33 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v102 = &v99 - v35;
  v36 = *(a1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_formattingManager);
  v37 = [objc_opt_self() mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 localizedStringForKey:v38 value:0 table:0];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = sub_100197684(v40, v42, v115, v113 & 1, v118);

  v113 = v43;
  v115 = v31;
  v44 = v114;
  sub_10055B348(v31);
  sub_10055B568(v119);
  v106 = *(v44 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_pauseChartData);

  v110 = v36;

  UUID.init()();
  v45 = v112;
  v104 = *(v112 + 76);
  v46 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v47 = v105;
  static Calendar.current.getter();
  v48 = v107;
  static Locale.current.getter();
  v49 = type metadata accessor for Locale();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  Calendar.locale.setter();
  v50 = v47;
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  [v46 setCalendar:isa];

  [v46 setUnitsStyle:0];
  [v46 setZeroFormattingBehavior:0];
  [v46 setAllowedUnits:224];
  (*(v108 + 8))(v50, v109);
  *&v33[v104] = v46;
  v52 = v45[20];
  v53 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v54 = v45;
  [v53 setZeroFormattingBehavior:1];
  [v53 setUnitsStyle:4];
  [v53 setAllowedUnits:224];
  *&v33[v52] = v53;
  v33[v45[5]] = v118;
  v55 = sub_1005D6184();
  v56 = &v33[v45[6]];
  *v56 = v55;
  v56[1] = v57;
  *&v33[v45[7]] = v113;
  v123[0] = v111;
  v58 = v111;

  sub_10056EDEC(v123);
  v59 = v45[13];
  *&v33[v45[8]] = v123[0];
  v33[v45[9]] = 0;
  v60 = v45[10];
  v61 = v116;
  v62 = *(v117 + 16);
  v62(&v33[v60], v115, v116);
  v62(&v33[v54[11]], v119, v61);
  *&v33[v54[12]] = v106;
  *&v33[v59] = 0;
  *&v33[v54[14]] = v110;
  v63 = v58[2];
  if (v63)
  {
    v64 = v58;
    v65 = v119;
    v66 = v117;
    v110 = v33;
    v67 = v64 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    sub_100169E98(v67, v20, type metadata accessor for WorkoutChartDataElement);
    if (v63 == 1)
    {
LABEL_3:
      v68 = v20;
      v69 = v100;
      sub_10002B380(v68, v100, type metadata accessor for WorkoutChartDataElement);
      v70 = *(v69 + *(v122 + 24));
      sub_100169F24(v69, type metadata accessor for WorkoutChartDataElement);
      v54 = v112;
      *&v110[*(v112 + 60)] = v70;
      sub_100169E98(v67, v120, type metadata accessor for WorkoutChartDataElement);
      v71 = v116;
      v72 = v66;
      v73 = v65;
      if (v63 == 1)
      {
LABEL_4:
        v74 = *(v72 + 8);
        v74(v73, v71);
        v74(v115, v71);
        v75 = v99;
        sub_10002B380(v120, v99, type metadata accessor for WorkoutChartDataElement);
        v76 = *(v75 + *(v122 + 28));
        sub_100169F24(v75, type metadata accessor for WorkoutChartDataElement);
        v77 = v110;
        goto LABEL_6;
      }

      v86 = 1;
      while (1)
      {
        v87 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          break;
        }

        sub_100169E98(v67 + *(v121 + 72) * v86, v13, type metadata accessor for WorkoutChartDataElement);
        v88 = v120;
        if (*(v120 + *(v122 + 28)) >= *&v13[*(v122 + 28)])
        {
          sub_100169F24(v13, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v120, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v13, v88, type metadata accessor for WorkoutChartDataElement);
        }

        ++v86;
        v72 = v66;
        v73 = v65;
        if (v87 == v63)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v84 = 1;
      while (1)
      {
        v85 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        sub_100169E98(v67 + *(v121 + 72) * v84, v10, type metadata accessor for WorkoutChartDataElement);
        if (*&v10[*(v122 + 24)] >= *&v20[*(v122 + 24)])
        {
          sub_100169F24(v10, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v20, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v10, v20, type metadata accessor for WorkoutChartDataElement);
        }

        ++v84;
        if (v85 == v63)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

  *&v33[v54[15]] = 0;
  v78 = v116;
  v79 = *(v117 + 8);
  v79(v119, v116);
  v79(v115, v78);
  v70 = 0.0;
  v76 = 0.0;
  v77 = v33;
LABEL_6:
  *(v77 + v54[16]) = v76;
  v80 = v76 - v70;
  v81 = v118;
  if (v118 > 4u)
  {
    if (v118 <= 7u)
    {
      if (v118 == 5 || v118 == 6)
      {
        if (v80 >= 50.0)
        {
          goto LABEL_47;
        }

        v82 = (v70 + v76) * 0.5;
        v83 = 25.0;
        goto LABEL_46;
      }

      if (v80 >= 200.0)
      {
        goto LABEL_47;
      }

      v82 = (v70 + v76) * 0.5;
      goto LABEL_44;
    }

    if (v118 - 8 >= 2)
    {
LABEL_28:
      if (v80 >= 10.0)
      {
        goto LABEL_47;
      }

      v82 = (v70 + v76) * 0.5;
      v83 = 5.0;
      goto LABEL_46;
    }

    goto LABEL_33;
  }

  if (v118 <= 1u)
  {
    if (v118)
    {
LABEL_33:
      if (v80 >= 0.0)
      {
        goto LABEL_47;
      }

LABEL_34:
      v82 = (v70 + v76) * 0.5;
      if (v118 > 4u)
      {
        if (v118 <= 7u)
        {
          if (v118 == 5 || v118 == 6)
          {
            v83 = 25.0;
LABEL_46:
            v70 = v82 - v83;
            v76 = v83 + v82;
            v80 = v83 + v82 - (v82 - v83);
            goto LABEL_47;
          }

LABEL_44:
          v83 = 100.0;
          goto LABEL_46;
        }
      }

      else
      {
        v83 = 5.0;
        if (v118 - 2 < 3 || !v118)
        {
          goto LABEL_46;
        }
      }

      v83 = 0.0;
      goto LABEL_46;
    }
  }

  else if (v118 - 2 >= 2)
  {
    goto LABEL_28;
  }

  if (v80 < 10.0)
  {
    goto LABEL_34;
  }

LABEL_47:
  v89 = v80 / 44.0;
  *(v77 + v54[18]) = v89;
  v90 = v89 + v89;
  v91 = v70 - (v89 + v89);
  v92 = v76 + v90;
  if (v91 <= v92)
  {
    v93 = (v77 + v54[17]);
    *v93 = v91;
    v93[1] = v92;
    v94 = v102;
    sub_10002B380(v77, v102, type metadata accessor for WorkoutChartViewModel);
    v95 = v54;
    v96 = v103;
    sub_100169E98(v94, v103, type metadata accessor for WorkoutChartViewModel);
    (*(v101 + 56))(v96, 0, 1, v95);
    swift_getKeyPath();
    swift_getKeyPath();
    v97 = static Published.subscript.modify();
    sub_10055ACD8(v96, v81);
    v97(v123, 0);

    return sub_100169F24(v94, type metadata accessor for WorkoutChartViewModel);
  }

LABEL_51:
  __break(1u);

  __break(1u);
  return result;
}

void sub_100568478(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    v13 = static os_log_type_t.error.getter();
    v14 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, v13))
    {
      v15 = v14;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = sub_10000AFDC(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v13, "Error getting power data: %s", v16, 0xCu);
      sub_100005A40(v17);
    }

    else
    {
    }

    return;
  }

  v34 = v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v22 = Strong;
  if (!a1)
  {
    goto LABEL_19;
  }

  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_8;
    }

LABEL_19:

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_8:
  v23 = sub_100561D08(a1, v22);
  if ([*(v22 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_activityType) identifier] == 13)
  {
    v33 = v23;
    v24 = *(v22 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutFormattingManager);
    v25 = *(v22 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout);
    v26 = *(v22 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
    if ([v24 hasAverageCyclingPowerForWorkout:v25 workoutActivity:v26])
    {
      [v24 averageCyclingPowerForWorkout:v25 workoutActivity:v26];
    }

    else
    {
      v27 = sub_10056FFD4(a1);
    }

    v28 = v27;
    v23 = v33;
  }

  else
  {
    v28 = sub_10056FFD4(a1);
  }

  sub_1000059F8(0, &qword_1008E3FD0);
  v29 = static OS_dispatch_queue.main.getter();
  v30 = swift_allocObject();
  *(v30 + 2) = v22;
  v30[3] = v28;
  *(v30 + 4) = v23;
  aBlock[4] = sub_100571064;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100860488;
  v31 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045EF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v12, v34);
}

uint64_t sub_10056899C(uint64_t a1, void *a2, double a3)
{
  v117 = a2;
  v114 = a1;
  v5 = sub_100140278(&qword_1008DD250);
  __chkstk_darwin(v5 - 8);
  v103 = &v98 - v6;
  v7 = type metadata accessor for WorkoutChartDataElement(0);
  v120 = *(v7 - 8);
  v121 = v7;
  __chkstk_darwin(v7);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v98 - v11;
  __chkstk_darwin(v13);
  v15 = &v98 - v14;
  __chkstk_darwin(v16);
  v99 = &v98 - v17;
  __chkstk_darwin(v18);
  v20 = &v98 - v19;
  __chkstk_darwin(v21);
  v100 = &v98 - v22;
  v23 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v23 - 8);
  v106 = &v98 - v24;
  v25 = type metadata accessor for Calendar();
  v109 = *(v25 - 8);
  v110 = v25;
  __chkstk_darwin(v25);
  v105 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v115 = v27;
  v116 = v28;
  __chkstk_darwin(v27);
  v119 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v118 = &v98 - v31;
  v112 = type metadata accessor for WorkoutChartViewModel(0);
  v101 = *(v112 - 8);
  __chkstk_darwin(v112);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v102 = &v98 - v35;
  v36 = *(a1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_formattingManager);
  v107 = objc_opt_self();
  v37 = [v107 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 localizedStringForKey:v38 value:0 table:0];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = sub_100197684(v40, v42, *&a3, 0, 4u);

  v113 = v43;
  v44 = v114;
  sub_10055B348(v118);
  sub_10055B568(v119);
  v108 = *(v44 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_pauseChartData);

  v111 = v36;

  UUID.init()();
  v45 = v112;
  v104 = *(v112 + 76);
  v46 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v47 = v105;
  static Calendar.current.getter();
  v48 = v106;
  static Locale.current.getter();
  v49 = type metadata accessor for Locale();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  Calendar.locale.setter();
  v50 = v47;
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  [v46 setCalendar:isa];

  [v46 setUnitsStyle:0];
  [v46 setZeroFormattingBehavior:0];
  [v46 setAllowedUnits:224];
  (*(v109 + 8))(v50, v110);
  *&v33[v104] = v46;
  v52 = v45[20];
  v53 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v53 setZeroFormattingBehavior:1];
  [v53 setUnitsStyle:4];
  [v53 setAllowedUnits:224];
  *&v33[v52] = v53;
  v33[v45[5]] = 4;
  v54 = [v107 mainBundle];
  v55 = String._bridgeToObjectiveC()();
  v56 = [v54 localizedStringForKey:v55 value:0 table:0];

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60 = &v33[v45[6]];
  *v60 = v57;
  v60[1] = v59;
  v61 = v45;
  *&v33[v45[7]] = v113;
  v122[0] = v117;

  sub_10056EDEC(v122);
  v62 = v45[13];
  *&v33[v45[8]] = v122[0];
  v33[v45[9]] = 1;
  v63 = v45[10];
  v64 = v115;
  v65 = *(v116 + 16);
  v65(&v33[v63], v118, v115);
  v65(&v33[v61[11]], v119, v64);
  *&v33[v61[12]] = v108;
  *&v33[v62] = 0;
  *&v33[v61[14]] = v111;
  v66 = v117[2];
  if (v66)
  {
    v67 = v119;
    v111 = v33;
    v68 = v116;
    v69 = v117 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
    sub_100169E98(v69, v20, type metadata accessor for WorkoutChartDataElement);
    if (v66 == 1)
    {
LABEL_3:
      v70 = v20;
      v71 = v100;
      sub_10002B380(v70, v100, type metadata accessor for WorkoutChartDataElement);
      v72 = *(v71 + *(v121 + 24));
      sub_100169F24(v71, type metadata accessor for WorkoutChartDataElement);
      v61 = v112;
      *&v111[*(v112 + 60)] = v72;
      sub_100169E98(v69, v15, type metadata accessor for WorkoutChartDataElement);
      v73 = v115;
      v74 = v68;
      v75 = v67;
      if (v66 == 1)
      {
LABEL_4:
        v76 = *(v74 + 8);
        v76(v75, v73);
        v76(v118, v73);
        v77 = v99;
        sub_10002B380(v15, v99, type metadata accessor for WorkoutChartDataElement);
        v78 = *(v77 + *(v121 + 28));
        sub_100169F24(v77, type metadata accessor for WorkoutChartDataElement);
        v33 = v111;
        goto LABEL_6;
      }

      v96 = 1;
      while (1)
      {
        v97 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          break;
        }

        sub_100169E98(v69 + *(v120 + 72) * v96, v12, type metadata accessor for WorkoutChartDataElement);
        if (*&v15[*(v121 + 28)] >= *&v12[*(v121 + 28)])
        {
          sub_100169F24(v12, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v15, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v12, v15, type metadata accessor for WorkoutChartDataElement);
        }

        ++v96;
        v74 = v68;
        v75 = v67;
        if (v97 == v66)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v94 = 1;
      while (1)
      {
        v95 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        sub_100169E98(v69 + *(v120 + 72) * v94, v9, type metadata accessor for WorkoutChartDataElement);
        if (*&v9[*(v121 + 24)] >= *&v20[*(v121 + 24)])
        {
          sub_100169F24(v9, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v20, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v9, v20, type metadata accessor for WorkoutChartDataElement);
        }

        ++v94;
        if (v95 == v66)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  *&v33[v61[15]] = 0;
  v79 = v115;
  v80 = *(v116 + 8);
  v80(v119, v115);
  v80(v118, v79);
  v72 = 0.0;
  v78 = 0.0;
LABEL_6:
  *&v33[v61[16]] = v78;
  v81 = (v72 + v78) * 0.5;
  v82 = v81 + -5.0;
  v83 = v81 + 5.0;
  if (v78 - v72 >= 10.0)
  {
    v84 = v72;
  }

  else
  {
    v84 = v82;
  }

  if (v78 - v72 >= 10.0)
  {
    v83 = v78;
  }

  v85 = (v83 - v84) / 44.0;
  *&v33[v61[18]] = v85;
  v86 = v85 + v85;
  v87 = v84 - v86;
  v88 = v83 + v86;
  if (v87 <= v88)
  {
    v89 = &v33[v61[17]];
    *v89 = v87;
    v89[1] = v88;
    v90 = v102;
    sub_10002B380(v33, v102, type metadata accessor for WorkoutChartViewModel);
    v91 = v103;
    sub_100169E98(v90, v103, type metadata accessor for WorkoutChartViewModel);
    (*(v101 + 56))(v91, 0, 1, v61);
    swift_getKeyPath();
    swift_getKeyPath();
    v92 = static Published.subscript.modify();
    sub_10055ACD8(v91, 4);
    v92(v122, 0);

    return sub_100169F24(v90, type metadata accessor for WorkoutChartViewModel);
  }

LABEL_27:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1005695DC(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    v13 = static os_log_type_t.error.getter();
    v14 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, v13))
    {
      v15 = v14;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = sub_10000AFDC(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v13, "Error getting power data: %s", v16, 0xCu);
      sub_100005A40(v17);
    }

    else
    {
    }

    return;
  }

  v36 = v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!a1)
  {
    goto LABEL_16;
  }

  if (a1 >> 62)
  {
    v32 = Strong;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    Strong = v32;
    if (v33)
    {
      goto LABEL_8;
    }

LABEL_16:

    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_8:
  v22 = Strong;
  v35 = sub_100561D08(a1, Strong);
  v23 = *(v22 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutFormattingManager);
  v24 = *(v22 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout);
  v25 = v22;
  v26 = *(v22 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity);
  if ([v23 hasAverageCyclingSpeedForWorkout:v24 workoutActivity:v26])
  {
    [v23 averageCyclingSpeedForWorkout:v24 workoutActivity:v26];
  }

  else
  {
    v27 = sub_10056FFD4(a1);
  }

  v28 = v27;
  sub_1000059F8(0, &qword_1008E3FD0);
  v29 = static OS_dispatch_queue.main.getter();
  v30 = swift_allocObject();
  *(v30 + 2) = v25;
  v30[3] = v28;
  *(v30 + 4) = v35;
  aBlock[4] = sub_100571100;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100860640;
  v31 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045EF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v12, v36);
}

uint64_t sub_100569AE0(uint64_t a1, void *a2, double a3)
{
  v115 = a2;
  v112 = a1;
  v5 = sub_100140278(&qword_1008DD250);
  __chkstk_darwin(v5 - 8);
  v101 = &v96 - v6;
  v7 = type metadata accessor for WorkoutChartDataElement(0);
  v118 = *(v7 - 8);
  v119 = v7;
  __chkstk_darwin(v7);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v96 - v11;
  __chkstk_darwin(v13);
  v15 = &v96 - v14;
  __chkstk_darwin(v16);
  v97 = &v96 - v17;
  __chkstk_darwin(v18);
  v20 = &v96 - v19;
  __chkstk_darwin(v21);
  v98 = &v96 - v22;
  v23 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v23 - 8);
  v104 = &v96 - v24;
  v25 = type metadata accessor for Calendar();
  v107 = *(v25 - 8);
  v108 = v25;
  __chkstk_darwin(v25);
  v103 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v113 = v27;
  v114 = v28;
  __chkstk_darwin(v27);
  v117 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v116 = &v96 - v31;
  v110 = type metadata accessor for WorkoutChartViewModel(0);
  v99 = *(v110 - 8);
  __chkstk_darwin(v110);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v100 = &v96 - v35;
  v36 = *(a1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_formattingManager);
  v105 = objc_opt_self();
  v37 = [v105 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 localizedStringForKey:v38 value:0 table:0];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = sub_100197684(v40, v42, *&a3, 0, 9u);

  v111 = v43;
  v44 = v112;
  sub_10055B348(v116);
  sub_10055B568(v117);
  v106 = *(v44 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_pauseChartData);

  v109 = v36;

  UUID.init()();
  v45 = v110;
  v102 = *(v110 + 76);
  v46 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v47 = v103;
  static Calendar.current.getter();
  v48 = v104;
  static Locale.current.getter();
  v49 = type metadata accessor for Locale();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  Calendar.locale.setter();
  v50 = v47;
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  [v46 setCalendar:isa];

  [v46 setUnitsStyle:0];
  [v46 setZeroFormattingBehavior:0];
  [v46 setAllowedUnits:224];
  (*(v107 + 8))(v50, v108);
  *&v33[v102] = v46;
  v52 = v45[20];
  v53 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v53 setZeroFormattingBehavior:1];
  [v53 setUnitsStyle:4];
  [v53 setAllowedUnits:224];
  *&v33[v52] = v53;
  v33[v45[5]] = 9;
  v54 = [v105 mainBundle];
  v55 = String._bridgeToObjectiveC()();
  v56 = [v54 localizedStringForKey:v55 value:0 table:0];

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60 = &v33[v45[6]];
  *v60 = v57;
  v60[1] = v59;
  v61 = v45;
  *&v33[v45[7]] = v111;
  v120[0] = v115;

  sub_10056EDEC(v120);
  v62 = v45[13];
  *&v33[v45[8]] = v120[0];
  v33[v45[9]] = 1;
  v63 = v45[10];
  v64 = v113;
  v65 = *(v114 + 16);
  v65(&v33[v63], v116, v113);
  v65(&v33[v61[11]], v117, v64);
  *&v33[v61[12]] = v106;
  *&v33[v62] = 0;
  *&v33[v61[14]] = v109;
  v66 = v115[2];
  if (v66)
  {
    v67 = v117;
    v109 = v33;
    v68 = v114;
    v69 = v115 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
    sub_100169E98(v69, v20, type metadata accessor for WorkoutChartDataElement);
    if (v66 == 1)
    {
LABEL_3:
      v70 = v20;
      v71 = v98;
      sub_10002B380(v70, v98, type metadata accessor for WorkoutChartDataElement);
      v72 = *(v71 + *(v119 + 24));
      sub_100169F24(v71, type metadata accessor for WorkoutChartDataElement);
      v61 = v110;
      *&v109[*(v110 + 60)] = v72;
      sub_100169E98(v69, v15, type metadata accessor for WorkoutChartDataElement);
      v73 = v113;
      v74 = v68;
      v75 = v67;
      if (v66 == 1)
      {
LABEL_4:
        v76 = *(v74 + 8);
        v76(v75, v73);
        v76(v116, v73);
        v77 = v97;
        sub_10002B380(v15, v97, type metadata accessor for WorkoutChartDataElement);
        v78 = *(v77 + *(v119 + 28));
        sub_100169F24(v77, type metadata accessor for WorkoutChartDataElement);
        v33 = v109;
        goto LABEL_6;
      }

      v94 = 1;
      while (1)
      {
        v95 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        sub_100169E98(v69 + *(v118 + 72) * v94, v12, type metadata accessor for WorkoutChartDataElement);
        if (*&v15[*(v119 + 28)] >= *&v12[*(v119 + 28)])
        {
          sub_100169F24(v12, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v15, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v12, v15, type metadata accessor for WorkoutChartDataElement);
        }

        ++v94;
        v74 = v68;
        v75 = v67;
        if (v95 == v66)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v92 = 1;
      while (1)
      {
        v93 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          break;
        }

        sub_100169E98(v69 + *(v118 + 72) * v92, v9, type metadata accessor for WorkoutChartDataElement);
        if (*&v9[*(v119 + 24)] >= *&v20[*(v119 + 24)])
        {
          sub_100169F24(v9, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v20, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v9, v20, type metadata accessor for WorkoutChartDataElement);
        }

        ++v92;
        if (v93 == v66)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  *&v33[v61[15]] = 0;
  v79 = v113;
  v80 = *(v114 + 8);
  v80(v117, v113);
  v80(v116, v79);
  v72 = 0.0;
  v78 = 0.0;
LABEL_6:
  *&v33[v61[16]] = v78;
  v81 = (v72 + v78) * 0.5;
  v82 = v81 + 0.0;
  if (v78 >= v72)
  {
    v81 = v72;
    v82 = v78;
  }

  v83 = (v82 - v81) / 44.0;
  *&v33[v61[18]] = v83;
  v84 = v83 + v83;
  v85 = v81 - v84;
  v86 = v82 + v84;
  if (v85 <= v86)
  {
    v87 = &v33[v61[17]];
    *v87 = v85;
    v87[1] = v86;
    v88 = v100;
    sub_10002B380(v33, v100, type metadata accessor for WorkoutChartViewModel);
    v89 = v101;
    sub_100169E98(v88, v101, type metadata accessor for WorkoutChartViewModel);
    (*(v99 + 56))(v89, 0, 1, v61);
    swift_getKeyPath();
    swift_getKeyPath();
    v90 = static Published.subscript.modify();
    sub_10055ACD8(v89, 9);
    v90(v120, 0);

    return sub_100169F24(v88, type metadata accessor for WorkoutChartViewModel);
  }

LABEL_24:
  __break(1u);

  __break(1u);
  return result;
}

void sub_10056A710(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    v13 = static os_log_type_t.error.getter();
    v14 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, v13))
    {
      v15 = v14;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = sub_10000AFDC(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v13, "Error getting stride length data: %s", v16, 0xCu);
      sub_100005A40(v17);
    }

    else
    {
    }

    return;
  }

  v49 = v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!a1)
  {
    goto LABEL_26;
  }

  v48 = v12;
  v22 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_26:

    return;
  }

LABEL_25:
  v38 = v9;
  v39 = Strong;
  v23 = _CocoaArrayWrapper.endIndex.getter();
  Strong = v39;
  v9 = v38;
  if (!v23)
  {
    goto LABEL_26;
  }

LABEL_8:
  v41 = v22;
  v43 = v9;
  v44 = v7;
  v45 = v5;
  v46 = v4;
  v47 = Strong;
  Strong = sub_100562C80(a1, Strong);
  v42 = Strong;
  v7 = 0;
  v22 = a1 & 0xC000000000000001;
  v24 = 0.0;
  v9 = &selRef_initWithFitnessAppContext_activitySharingClient_;
  v4 = &selRef__setFont_;
  do
  {
    if (v22)
    {
      Strong = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      Strong = *(a1 + 8 * v7 + 32);
    }

    v25 = Strong;
    v5 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v26 = [Strong quantity];
    [v26 _value];
    v28 = v27;

    v24 = v24 + v28;
    ++v7;
  }

  while (v5 != v23);
  if (v41)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v46;
  v31 = v42;
  v32 = v24 / v29 * 100.0;
  sub_1000059F8(0, &qword_1008E3FD0);
  v33 = static OS_dispatch_queue.main.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = v47;
  *(v34 + 24) = v32;
  *(v34 + 32) = v31;
  aBlock[4] = sub_100571118;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_1008606B8;
  v35 = _Block_copy(aBlock);

  v36 = v48;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045EF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  v37 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  (*(v45 + 1))(v37, v30);
  (v43[1])(v36, v49);
}

uint64_t sub_10056ACB4(uint64_t a1, void *a2, double a3)
{
  v122 = a2;
  v119 = a1;
  v5 = sub_100140278(&qword_1008DD250);
  __chkstk_darwin(v5 - 8);
  v106 = &v99 - v6;
  v7 = type metadata accessor for WorkoutChartDataElement(0);
  v123 = *(v7 - 8);
  v124 = v7;
  __chkstk_darwin(v7);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v99 - v11;
  __chkstk_darwin(v13);
  v103 = &v99 - v14;
  __chkstk_darwin(v15);
  v100 = &v99 - v16;
  __chkstk_darwin(v17);
  v102 = &v99 - v18;
  __chkstk_darwin(v19);
  v101 = &v99 - v20;
  v21 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v21 - 8);
  v109 = &v99 - v22;
  v23 = type metadata accessor for Calendar();
  v112 = *(v23 - 8);
  v113 = v23;
  __chkstk_darwin(v23);
  v108 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v120 = v25;
  v121 = v26;
  __chkstk_darwin(v25);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v99 - v30;
  v117 = type metadata accessor for WorkoutChartViewModel(0);
  v104 = *(v117 - 8);
  __chkstk_darwin(v117);
  v33 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v105 = &v99 - v35;
  v36 = *(a1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_formattingManager);
  v110 = objc_opt_self();
  v37 = [v110 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 localizedStringForKey:v38 value:0 table:0];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = sub_100197684(v40, v42, *&a3, 0, 6u);

  v118 = v43;
  v116 = v31;
  v44 = v119;
  sub_10055B348(v31);
  v115 = v28;
  sub_10055B568(v28);
  v111 = *(v44 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_pauseChartData);

  v114 = v36;

  UUID.init()();
  v45 = v117;
  v107 = *(v117 + 76);
  v46 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v47 = v108;
  static Calendar.current.getter();
  v48 = v109;
  static Locale.current.getter();
  v49 = type metadata accessor for Locale();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  Calendar.locale.setter();
  v50 = v47;
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  [v46 setCalendar:isa];

  [v46 setUnitsStyle:0];
  [v46 setZeroFormattingBehavior:0];
  [v46 setAllowedUnits:224];
  (*(v112 + 8))(v50, v113);
  *&v33[v107] = v46;
  v52 = v45[20];
  v53 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v53 setZeroFormattingBehavior:1];
  [v53 setUnitsStyle:4];
  [v53 setAllowedUnits:224];
  *&v33[v52] = v53;
  v33[v45[5]] = 6;
  v54 = [v110 mainBundle];
  v55 = String._bridgeToObjectiveC()();
  v56 = [v54 localizedStringForKey:v55 value:0 table:0];

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60 = &v33[v45[6]];
  *v60 = v57;
  v60[1] = v59;
  v61 = v45;
  *&v33[v45[7]] = v118;
  v125[0] = v122;

  sub_10056EDEC(v125);
  v62 = v45[13];
  *&v33[v45[8]] = v125[0];
  v33[v45[9]] = 1;
  v63 = v45[10];
  v64 = v120;
  v65 = *(v121 + 16);
  v66 = v116;
  v65(&v33[v63], v116, v120);
  v67 = v115;
  v65(&v33[v61[11]], v115, v64);
  *&v33[v61[12]] = v111;
  *&v33[v62] = 0;
  *&v33[v61[14]] = v114;
  v68 = v122[2];
  if (v68)
  {
    v69 = v121;
    v70 = v122 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
    v71 = v102;
    sub_100169E98(v70, v102, type metadata accessor for WorkoutChartDataElement);
    v72 = v103;
    if (v68 == 1)
    {
LABEL_3:
      v73 = v101;
      sub_10002B380(v71, v101, type metadata accessor for WorkoutChartDataElement);
      v74 = *(v73 + *(v124 + 24));
      sub_100169F24(v73, type metadata accessor for WorkoutChartDataElement);
      v61 = v117;
      *&v33[*(v117 + 60)] = v74;
      sub_100169E98(v70, v72, type metadata accessor for WorkoutChartDataElement);
      v75 = v120;
      v76 = v69;
      if (v68 == 1)
      {
LABEL_4:
        v77 = *(v76 + 8);
        v77(v115, v75);
        v77(v116, v75);
        v78 = v100;
        sub_10002B380(v72, v100, type metadata accessor for WorkoutChartDataElement);
        v79 = *(v78 + *(v124 + 28));
        sub_100169F24(v78, type metadata accessor for WorkoutChartDataElement);
        goto LABEL_6;
      }

      v97 = 1;
      while (1)
      {
        v98 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          break;
        }

        sub_100169E98(v70 + *(v123 + 72) * v97, v12, type metadata accessor for WorkoutChartDataElement);
        if (*(v72 + *(v124 + 28)) >= *&v12[*(v124 + 28)])
        {
          sub_100169F24(v12, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v72, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v12, v72, type metadata accessor for WorkoutChartDataElement);
        }

        ++v97;
        v76 = v69;
        if (v98 == v68)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v95 = 1;
      while (1)
      {
        v96 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          break;
        }

        sub_100169E98(v70 + *(v123 + 72) * v95, v9, type metadata accessor for WorkoutChartDataElement);
        if (*&v9[*(v124 + 24)] >= *(v71 + *(v124 + 24)))
        {
          sub_100169F24(v9, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v71, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v9, v71, type metadata accessor for WorkoutChartDataElement);
        }

        ++v95;
        if (v96 == v68)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  *&v33[v61[15]] = 0;
  v80 = v120;
  v81 = *(v121 + 8);
  v81(v67, v120);
  v81(v66, v80);
  v74 = 0.0;
  v79 = 0.0;
LABEL_6:
  *&v33[v61[16]] = v79;
  v82 = (v74 + v79) * 0.5;
  v83 = v82 + -25.0;
  v84 = v82 + 25.0;
  if (v79 - v74 >= 50.0)
  {
    v85 = v74;
  }

  else
  {
    v85 = v83;
  }

  if (v79 - v74 >= 50.0)
  {
    v84 = v79;
  }

  v86 = (v84 - v85) / 44.0;
  *&v33[v61[18]] = v86;
  v87 = v86 + v86;
  v88 = v85 - v87;
  v89 = v84 + v87;
  if (v88 <= v89)
  {
    v90 = &v33[v61[17]];
    *v90 = v88;
    v90[1] = v89;
    v91 = v105;
    sub_10002B380(v33, v105, type metadata accessor for WorkoutChartViewModel);
    v92 = v106;
    sub_100169E98(v91, v106, type metadata accessor for WorkoutChartViewModel);
    (*(v104 + 56))(v92, 0, 1, v61);
    swift_getKeyPath();
    swift_getKeyPath();
    v93 = static Published.subscript.modify();
    sub_10055ACD8(v92, 6);
    v93(v125, 0);

    return sub_100169F24(v91, type metadata accessor for WorkoutChartViewModel);
  }

LABEL_27:
  __break(1u);

  __break(1u);
  return result;
}

void sub_10056B90C(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    v13 = static os_log_type_t.error.getter();
    v14 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, v13))
    {
      v15 = v14;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = sub_10000AFDC(v18, v19, aBlock);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v13, "Error getting vertical oscillation data: %s", v16, 0xCu);
      sub_100005A40(v17);
    }

    else
    {
    }

    return;
  }

  v49 = v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!a1)
  {
    goto LABEL_26;
  }

  v48 = v12;
  v22 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_26:

    return;
  }

LABEL_25:
  v38 = v9;
  v39 = Strong;
  v23 = _CocoaArrayWrapper.endIndex.getter();
  Strong = v39;
  v9 = v38;
  if (!v23)
  {
    goto LABEL_26;
  }

LABEL_8:
  v41 = v22;
  v43 = v9;
  v44 = v7;
  v45 = v5;
  v46 = v4;
  v47 = Strong;
  Strong = sub_100562C80(a1, Strong);
  v42 = Strong;
  v7 = 0;
  v22 = a1 & 0xC000000000000001;
  v24 = 0.0;
  v9 = &selRef_initWithFitnessAppContext_activitySharingClient_;
  v4 = &selRef__setFont_;
  do
  {
    if (v22)
    {
      Strong = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      Strong = *(a1 + 8 * v7 + 32);
    }

    v25 = Strong;
    v5 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v26 = [Strong quantity];
    [v26 _value];
    v28 = v27;

    v24 = v24 + v28;
    ++v7;
  }

  while (v5 != v23);
  if (v41)
  {
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v46;
  v31 = v42;
  v32 = v24 * 100.0 / v29;
  sub_1000059F8(0, &qword_1008E3FD0);
  v33 = static OS_dispatch_queue.main.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = v47;
  *(v34 + 24) = v32;
  *(v34 + 32) = v31;
  aBlock[4] = sub_100571130;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100860730;
  v35 = _Block_copy(aBlock);

  v36 = v48;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045EF0(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  v37 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  (*(v45 + 1))(v37, v30);
  (v43[1])(v36, v49);
}

uint64_t sub_10056BEB0(uint64_t a1, void *a2, double a3)
{
  v122 = a2;
  v119 = a1;
  v5 = sub_100140278(&qword_1008DD250);
  __chkstk_darwin(v5 - 8);
  v106 = &v99 - v6;
  v7 = type metadata accessor for WorkoutChartDataElement(0);
  v123 = *(v7 - 8);
  v124 = v7;
  __chkstk_darwin(v7);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v99 - v11;
  __chkstk_darwin(v13);
  v103 = &v99 - v14;
  __chkstk_darwin(v15);
  v100 = &v99 - v16;
  __chkstk_darwin(v17);
  v102 = &v99 - v18;
  __chkstk_darwin(v19);
  v101 = &v99 - v20;
  v21 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v21 - 8);
  v109 = &v99 - v22;
  v23 = type metadata accessor for Calendar();
  v112 = *(v23 - 8);
  v113 = v23;
  __chkstk_darwin(v23);
  v108 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v120 = v25;
  v121 = v26;
  __chkstk_darwin(v25);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v99 - v30;
  v117 = type metadata accessor for WorkoutChartViewModel(0);
  v104 = *(v117 - 8);
  __chkstk_darwin(v117);
  v33 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v105 = &v99 - v35;
  v36 = *(a1 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_formattingManager);
  v110 = objc_opt_self();
  v37 = [v110 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 localizedStringForKey:v38 value:0 table:0];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43 = sub_100197684(v40, v42, *&a3, 0, 7u);

  v118 = v43;
  v116 = v31;
  v44 = v119;
  sub_10055B348(v31);
  v115 = v28;
  sub_10055B568(v28);
  v111 = *(v44 + OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_pauseChartData);

  v114 = v36;

  UUID.init()();
  v45 = v117;
  v107 = *(v117 + 76);
  v46 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v47 = v108;
  static Calendar.current.getter();
  v48 = v109;
  static Locale.current.getter();
  v49 = type metadata accessor for Locale();
  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  Calendar.locale.setter();
  v50 = v47;
  isa = Calendar._bridgeToObjectiveC()().super.isa;
  [v46 setCalendar:isa];

  [v46 setUnitsStyle:0];
  [v46 setZeroFormattingBehavior:0];
  [v46 setAllowedUnits:224];
  (*(v112 + 8))(v50, v113);
  *&v33[v107] = v46;
  v52 = v45[20];
  v53 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v53 setZeroFormattingBehavior:1];
  [v53 setUnitsStyle:4];
  [v53 setAllowedUnits:224];
  *&v33[v52] = v53;
  v33[v45[5]] = 7;
  v54 = [v110 mainBundle];
  v55 = String._bridgeToObjectiveC()();
  v56 = [v54 localizedStringForKey:v55 value:0 table:0];

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60 = &v33[v45[6]];
  *v60 = v57;
  v60[1] = v59;
  v61 = v45;
  *&v33[v45[7]] = v118;
  v125[0] = v122;

  sub_10056EDEC(v125);
  v62 = v45[13];
  *&v33[v45[8]] = v125[0];
  v33[v45[9]] = 1;
  v63 = v45[10];
  v64 = v120;
  v65 = *(v121 + 16);
  v66 = v116;
  v65(&v33[v63], v116, v120);
  v67 = v115;
  v65(&v33[v61[11]], v115, v64);
  *&v33[v61[12]] = v111;
  *&v33[v62] = 0;
  *&v33[v61[14]] = v114;
  v68 = v122[2];
  if (v68)
  {
    v69 = v121;
    v70 = v122 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
    v71 = v102;
    sub_100169E98(v70, v102, type metadata accessor for WorkoutChartDataElement);
    v72 = v103;
    if (v68 == 1)
    {
LABEL_3:
      v73 = v101;
      sub_10002B380(v71, v101, type metadata accessor for WorkoutChartDataElement);
      v74 = *(v73 + *(v124 + 24));
      sub_100169F24(v73, type metadata accessor for WorkoutChartDataElement);
      v61 = v117;
      *&v33[*(v117 + 60)] = v74;
      sub_100169E98(v70, v72, type metadata accessor for WorkoutChartDataElement);
      v75 = v120;
      v76 = v69;
      if (v68 == 1)
      {
LABEL_4:
        v77 = *(v76 + 8);
        v77(v115, v75);
        v77(v116, v75);
        v78 = v100;
        sub_10002B380(v72, v100, type metadata accessor for WorkoutChartDataElement);
        v79 = *(v78 + *(v124 + 28));
        sub_100169F24(v78, type metadata accessor for WorkoutChartDataElement);
        goto LABEL_6;
      }

      v97 = 1;
      while (1)
      {
        v98 = v97 + 1;
        if (__OFADD__(v97, 1))
        {
          break;
        }

        sub_100169E98(v70 + *(v123 + 72) * v97, v12, type metadata accessor for WorkoutChartDataElement);
        if (*(v72 + *(v124 + 28)) >= *&v12[*(v124 + 28)])
        {
          sub_100169F24(v12, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v72, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v12, v72, type metadata accessor for WorkoutChartDataElement);
        }

        ++v97;
        v76 = v69;
        if (v98 == v68)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      v95 = 1;
      while (1)
      {
        v96 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          break;
        }

        sub_100169E98(v70 + *(v123 + 72) * v95, v9, type metadata accessor for WorkoutChartDataElement);
        if (*&v9[*(v124 + 24)] >= *(v71 + *(v124 + 24)))
        {
          sub_100169F24(v9, type metadata accessor for WorkoutChartDataElement);
        }

        else
        {
          sub_100169F24(v71, type metadata accessor for WorkoutChartDataElement);
          sub_10002B380(v9, v71, type metadata accessor for WorkoutChartDataElement);
        }

        ++v95;
        if (v96 == v68)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  *&v33[v61[15]] = 0;
  v80 = v120;
  v81 = *(v121 + 8);
  v81(v67, v120);
  v81(v66, v80);
  v74 = 0.0;
  v79 = 0.0;
LABEL_6:
  *&v33[v61[16]] = v79;
  v82 = (v74 + v79) * 0.5;
  v83 = v82 + -100.0;
  v84 = v82 + 100.0;
  if (v79 - v74 >= 200.0)
  {
    v85 = v74;
  }

  else
  {
    v85 = v83;
  }

  if (v79 - v74 >= 200.0)
  {
    v84 = v79;
  }

  v86 = (v84 - v85) / 44.0;
  *&v33[v61[18]] = v86;
  v87 = v86 + v86;
  v88 = v85 - v87;
  v89 = v84 + v87;
  if (v88 <= v89)
  {
    v90 = &v33[v61[17]];
    *v90 = v88;
    v90[1] = v89;
    v91 = v105;
    sub_10002B380(v33, v105, type metadata accessor for WorkoutChartViewModel);
    v92 = v106;
    sub_100169E98(v91, v106, type metadata accessor for WorkoutChartViewModel);
    (*(v104 + 56))(v92, 0, 1, v61);
    swift_getKeyPath();
    swift_getKeyPath();
    v93 = static Published.subscript.modify();
    sub_10055ACD8(v92, 7);
    v93(v125, 0);

    return sub_100169F24(v91, type metadata accessor for WorkoutChartViewModel);
  }

LABEL_27:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10056CB10@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10056CB90()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10056CC0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_10055C47C(a1, v4, v5, v6, v7);
}

uint64_t sub_10056CCD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E1760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10056CD40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BBC0;

  return sub_100281490(a1, v4);
}

double sub_10056CE04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_100066F20(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100494F48();
      v10 = v12;
    }

    sub_1001AA76C((*(v10 + 56) + 32 * v8), a3);
    sub_10056E128(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10056CEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_100066F20(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1004950EC();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Trainer();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_10056E2D8(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Trainer();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_10056D018(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      Hasher.init(_seed:)();
      if ((v12 & 1) == 0)
      {
        Hasher._combine(_:)(3uLL);
      }

      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v13 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_12;
      }

LABEL_13:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v3);
      v16 = (v14 + v9);
      if (16 * v3 != v9 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for MetricDetailViewModel() - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_22:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_10056D208(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10056D39C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10056D50C(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for EffortUtilities.WorkoutAndActivityKey();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_100045EF0(&qword_1008EEF78, &type metadata accessor for EffortUtilities.WorkoutAndActivityKey);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_10056D82C(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_100045EF0(&qword_1008EEE18, &type metadata accessor for IndexPath);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for ImpressionMetrics() - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

unint64_t sub_10056DB70(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for ImpressionMetrics() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10056DD1C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v11 = *(*(a2 + 48) + v7);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = result & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + v4);
      v15 = (v13 + v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10056DEF4(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v28 = v2;
    do
    {
      v9 = 24 * v6;
      v10 = (*(v2 + 48) + 24 * v6);
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = v10[16];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      if ((v13 & 1) == 0)
      {
        Hasher._combine(_:)(3uLL);
      }

      Hasher._combine(_:)(v12);
      result = Hasher._finalize()();
      v14 = result & v7;
      if (v3 >= v8)
      {
        v2 = v28;
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v2 = v28;
        if (v14 >= v8)
        {
          goto LABEL_12;
        }
      }

      if (v3 >= v14)
      {
LABEL_12:
        v15 = *(v2 + 48);
        v16 = v15 + 24 * v3;
        v17 = (v15 + v9);
        if (24 * v3 < v9 || v16 >= v17 + 24 || v3 != v6)
        {
          v18 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v18;
        }

        v19 = *(v2 + 56);
        v20 = *(*(type metadata accessor for MetricDetailViewModel() - 8) + 72);
        v21 = v20 * v3;
        result = v19 + v20 * v3;
        v22 = v20 * v6;
        v23 = v19 + v20 * v6 + v20;
        if (v21 < v22 || result >= v23)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          v3 = v6;
          v2 = v28;
        }

        else
        {
          v3 = v6;
          v2 = v28;
          if (v21 != v22)
          {
            result = swift_arrayInitWithTakeBackToFront();
            v3 = v6;
          }
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(v2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v27;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_10056E128(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10056E2D8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Trainer() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10056E4C4(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = _HashTable.previousHole(before:)();
    v18 = v16;
    v40 = (v17 + 1) & v16;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v44 = *(v19 + 56);
    v38 = (v19 - 8);
    v39 = v20;
    do
    {
      v21 = v44 * v15;
      v22 = v18;
      v23 = v19;
      v39(v12, *(a2 + 48) + v44 * v15, v8);
      sub_100045EF0(v41, v42);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v12, v8);
      v18 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v44 * a1;
          v29 = v28 + v21 + v44;
          v30 = v44 * a1 < v21 || result >= v29;
          v19 = v23;
          if (!v30)
          {
            if (v44 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v18 = v22;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v15);
            if (a1 != v15 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v15;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v19 = v23;
LABEL_4:
      v15 = (v15 + 1) & v18;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10056E778(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10056E8E8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for WorkoutChartViewModel(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10056EC3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_10056EDEC(void **a1)
{
  v2 = *(type metadata accessor for WorkoutChartDataElement(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AA4C4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10056EE94(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10056EE94(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for WorkoutChartDataElement(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for WorkoutChartDataElement(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10056F1FC(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10056EFC0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10056EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for WorkoutChartDataElement(0);
  v8 = __chkstk_darwin(v34);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_100169E98(v23, v17, type metadata accessor for WorkoutChartDataElement);
      sub_100169E98(v20, v13, type metadata accessor for WorkoutChartDataElement);
      v24 = static Date.< infix(_:_:)();
      sub_100169F24(v13, type metadata accessor for WorkoutChartDataElement);
      result = sub_100169F24(v17, type metadata accessor for WorkoutChartDataElement);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_10002B380(v23, v10, type metadata accessor for WorkoutChartDataElement);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002B380(v10, v20, type metadata accessor for WorkoutChartDataElement);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10056F1FC(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v100 = a1;
  v112 = type metadata accessor for WorkoutChartDataElement(0);
  v108 = *(v112 - 8);
  v9 = __chkstk_darwin(v112);
  v102 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v111 = &v97 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v97 - v14;
  result = __chkstk_darwin(v13);
  v18 = &v97 - v17;
  v110 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_1001A99A4(a4);
    }

    v113 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v110)
      {
        v93 = *(result + 16 * a4);
        v94 = result;
        v95 = *(result + 16 * (a4 - 1) + 40);
        sub_10056FAE8(*v110 + *(v108 + 72) * v93, *v110 + *(v108 + 72) * *(result + 16 * (a4 - 1) + 32), *v110 + *(v108 + 72) * v95, v5);
        if (v6)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1001A99A4(v94);
        }

        if (a4 - 2 >= *(v94 + 2))
        {
          goto LABEL_123;
        }

        v96 = &v94[16 * a4];
        *v96 = v93;
        *(v96 + 1) = v95;
        v113 = v94;
        sub_1001A9918(a4 - 1);
        result = v113;
        a4 = *(v113 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v99 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v103 = v21;
    if (v23 >= v19)
    {
      v29 = v23;
    }

    else
    {
      v24 = *(v108 + 72);
      v5 = *v110 + v24 * v23;
      v106 = *v110;
      v25 = v106;
      sub_100169E98(v106 + v24 * v23, v18, type metadata accessor for WorkoutChartDataElement);
      sub_100169E98(v25 + v24 * v22, v15, type metadata accessor for WorkoutChartDataElement);
      LODWORD(v107) = static Date.< infix(_:_:)();
      sub_100169F24(v15, type metadata accessor for WorkoutChartDataElement);
      result = sub_100169F24(v18, type metadata accessor for WorkoutChartDataElement);
      v98 = v22;
      v26 = v22 + 2;
      v109 = v24;
      v27 = v106 + v24 * (v22 + 2);
      while (v19 != v26)
      {
        sub_100169E98(v27, v18, type metadata accessor for WorkoutChartDataElement);
        sub_100169E98(v5, v15, type metadata accessor for WorkoutChartDataElement);
        v28 = static Date.< infix(_:_:)() & 1;
        sub_100169F24(v15, type metadata accessor for WorkoutChartDataElement);
        result = sub_100169F24(v18, type metadata accessor for WorkoutChartDataElement);
        ++v26;
        v27 += v109;
        v5 += v109;
        if ((v107 & 1) != v28)
        {
          v29 = v26 - 1;
          goto LABEL_11;
        }
      }

      v29 = v19;
LABEL_11:
      v22 = v98;
      a4 = v99;
      if (v107)
      {
        if (v29 < v98)
        {
          goto LABEL_126;
        }

        if (v98 < v29)
        {
          v97 = v6;
          v30 = v109 * (v29 - 1);
          v31 = v29 * v109;
          v107 = v29;
          v32 = v29;
          v33 = v98;
          v34 = v98 * v109;
          do
          {
            if (v33 != --v32)
            {
              v35 = *v110;
              if (!*v110)
              {
                goto LABEL_132;
              }

              v5 = v35 + v34;
              sub_10002B380(v35 + v34, v102, type metadata accessor for WorkoutChartDataElement);
              if (v34 < v30 || v5 >= v35 + v31)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v34 != v30)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10002B380(v102, v35 + v30, type metadata accessor for WorkoutChartDataElement);
            }

            ++v33;
            v30 -= v109;
            v31 -= v109;
            v34 += v109;
          }

          while (v33 < v32);
          v6 = v97;
          v22 = v98;
          a4 = v99;
          v29 = v107;
        }
      }
    }

    v36 = v110[1];
    if (v29 < v36)
    {
      if (__OFSUB__(v29, v22))
      {
        goto LABEL_125;
      }

      if (v29 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v36)
        {
          v37 = v110[1];
        }

        else
        {
          v37 = v22 + a4;
        }

        if (v37 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v29 != v37)
        {
          break;
        }
      }
    }

    v38 = v29;
    if (v29 < v22)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v103;
    }

    else
    {
      result = sub_1001A1D54(0, *(v103 + 2) + 1, 1, v103);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v39 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v39 >> 1)
    {
      result = sub_1001A1D54((v39 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v40 = &v21[16 * a4];
    *(v40 + 4) = v22;
    *(v40 + 5) = v38;
    v41 = *v100;
    if (!*v100)
    {
      goto LABEL_134;
    }

    v104 = v38;
    if (a4)
    {
      while (1)
      {
        v42 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v43 = *(v21 + 4);
          v44 = *(v21 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_54:
          if (v46)
          {
            goto LABEL_113;
          }

          v59 = &v21[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_116;
          }

          v65 = &v21[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_120;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v69 = &v21[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_68:
        if (v64)
        {
          goto LABEL_115;
        }

        v72 = &v21[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_118;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v42 - 1;
        if (v42 - 1 >= v5)
        {
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
          __break(1u);
          goto LABEL_128;
        }

        if (!*v110)
        {
          goto LABEL_131;
        }

        v80 = v21;
        v81 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v42 + 40];
        sub_10056FAE8(*v110 + *(v108 + 72) * v81, *v110 + *(v108 + 72) * *&v21[16 * v42 + 32], *v110 + *(v108 + 72) * v5, v41);
        if (v6)
        {
        }

        if (v5 < v81)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_1001A99A4(v80);
        }

        if (a4 >= *(v80 + 2))
        {
          goto LABEL_110;
        }

        v82 = &v80[16 * a4];
        *(v82 + 4) = v81;
        *(v82 + 5) = v5;
        v113 = v80;
        result = sub_1001A9918(v42);
        v21 = v113;
        v5 = *(v113 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v21[16 * v5 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_111;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_112;
      }

      v54 = &v21[16 * v5];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_114;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_117;
      }

      if (v58 >= v50)
      {
        v76 = &v21[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_121;
        }

        if (v45 < v79)
        {
          v42 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v19 = v110[1];
    v20 = v104;
    a4 = v99;
    if (v104 >= v19)
    {
      goto LABEL_96;
    }
  }

  v97 = v6;
  v98 = v22;
  v83 = *v110;
  v84 = *(v108 + 72);
  v85 = *v110 + v84 * (v29 - 1);
  v86 = -v84;
  v87 = v22 - v29;
  v101 = v84;
  v5 = v83 + v29 * v84;
  v104 = v37;
LABEL_86:
  v106 = v87;
  v107 = v29;
  v105 = v5;
  v88 = v87;
  v109 = v85;
  v89 = v85;
  while (1)
  {
    a4 = type metadata accessor for WorkoutChartDataElement;
    sub_100169E98(v5, v18, type metadata accessor for WorkoutChartDataElement);
    sub_100169E98(v89, v15, type metadata accessor for WorkoutChartDataElement);
    v90 = static Date.< infix(_:_:)();
    sub_100169F24(v15, type metadata accessor for WorkoutChartDataElement);
    result = sub_100169F24(v18, type metadata accessor for WorkoutChartDataElement);
    if ((v90 & 1) == 0)
    {
LABEL_85:
      v29 = v107 + 1;
      v85 = v109 + v101;
      v87 = v106 - 1;
      v38 = v104;
      v5 = v105 + v101;
      if (v107 + 1 != v104)
      {
        goto LABEL_86;
      }

      v6 = v97;
      v22 = v98;
      if (v104 < v98)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v83)
    {
      break;
    }

    a4 = type metadata accessor for WorkoutChartDataElement;
    v91 = v111;
    sub_10002B380(v5, v111, type metadata accessor for WorkoutChartDataElement);
    swift_arrayInitWithTakeFrontToBack();
    sub_10002B380(v91, v89, type metadata accessor for WorkoutChartDataElement);
    v89 += v86;
    v5 += v86;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_10056FAE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v40 = type metadata accessor for WorkoutChartDataElement(0);
  v8 = __chkstk_darwin(v40);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v41 = &v34 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v45 = a1;
  v44 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v24 = a4 + v17;
    }

    else
    {
      v22 = -v13;
      v23 = a4 + v17;
      v24 = a4 + v17;
      v37 = a1;
      v38 = a4;
      v36 = -v13;
      do
      {
        v34 = v24;
        v25 = a2 + v22;
        v39 = a2;
        v40 = a2 + v22;
        while (1)
        {
          if (a2 <= a1)
          {
            v45 = a2;
            v43 = v34;
            goto LABEL_59;
          }

          v35 = v24;
          v27 = a3 + v22;
          v28 = v23 + v22;
          v29 = v41;
          sub_100169E98(v28, v41, type metadata accessor for WorkoutChartDataElement);
          v30 = v25;
          v31 = v42;
          sub_100169E98(v30, v42, type metadata accessor for WorkoutChartDataElement);
          v32 = static Date.< infix(_:_:)();
          sub_100169F24(v31, type metadata accessor for WorkoutChartDataElement);
          sub_100169F24(v29, type metadata accessor for WorkoutChartDataElement);
          if (v32)
          {
            break;
          }

          v24 = v28;
          if (a3 < v23 || v27 >= v23)
          {
            a3 = v27;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v37;
          }

          else
          {
            v33 = a3 == v23;
            a3 = v27;
            a1 = v37;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v28;
          a2 = v39;
          v26 = v28 > v38;
          v25 = v40;
          v22 = v36;
          if (!v26)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v39 || v27 >= v39)
        {
          a3 = v27;
          a2 = v40;
          swift_arrayInitWithTakeFrontToBack();
          v22 = v36;
          a1 = v37;
          v24 = v35;
        }

        else
        {
          v33 = a3 == v39;
          a3 = v27;
          a2 = v40;
          v22 = v36;
          a1 = v37;
          v24 = v35;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v23 > v38);
    }

LABEL_57:
    v45 = a2;
    v43 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39 = a4 + v16;
    v43 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v41;
        sub_100169E98(a2, v41, type metadata accessor for WorkoutChartDataElement);
        v20 = v42;
        sub_100169E98(a4, v42, type metadata accessor for WorkoutChartDataElement);
        v21 = static Date.< infix(_:_:)();
        sub_100169F24(v20, type metadata accessor for WorkoutChartDataElement);
        sub_100169F24(v19, type metadata accessor for WorkoutChartDataElement);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v44 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v45 = a1;
      }

      while (a4 < v39 && a2 < a3);
    }
  }

LABEL_59:
  sub_1004AB9C4(&v45, &v44, &v43);
  return 1;
}

double sub_10056FFD4(unint64_t a1)
{
  v13 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = 0.0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v5 quantity];
      [v8 _value];
      v10 = v9;

      v4 = v4 + v10;
      ++v3;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v4 = 0.0;
LABEL_15:
  if (v13)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 / v11;
}

uint64_t sub_10057011C(unint64_t a1, void *a2, uint64_t a3)
{
  v125 = a3;
  v140 = a2;
  v4 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v4 - 8);
  v131 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v112 - v7;
  v9 = type metadata accessor for Date();
  v135 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v112 - v13;
  __chkstk_darwin(v15);
  v143 = &v112 - v16;
  __chkstk_darwin(v17);
  v124 = &v112 - v18;
  __chkstk_darwin(v19);
  v116 = &v112 - v20;
  __chkstk_darwin(v21);
  v138 = &v112 - v22;
  v115 = type metadata accessor for DateInterval();
  v23 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100140278(&qword_1008F2EE8);
  __chkstk_darwin(v130);
  v129 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v128 = &v112 - v27;
  v127 = type metadata accessor for WorkoutChartDataElement(0);
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v30 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_34;
  }

  for (result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); result; v28 = v80)
  {
    if (result < 1)
    {
      goto LABEL_64;
    }

    v137 = v14;
    v120 = v11;
    v123 = v8;
    v8 = 0;
    v134 = v28 & 0xC000000000000001;
    v122 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_chartProperties;
    v121 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workoutActivity;
    v118 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_workout;
    v113 = (v23 + 1);
    v136 = (v135 + 32);
    v119 = OBJC_IVAR____TtC10FitnessApp21WorkoutChartDataStore_activityType;
    v139 = (v135 + 56);
    v117 = (v135 + 48);
    v142 = (v135 + 8);
    v32 = &_swiftEmptyDictionarySingleton;
    v33 = &selRef_setNavigationBarHidden_animated_;
    v112 = xmmword_1006D46C0;
    v132 = result;
    v133 = v28;
    while (1)
    {
      v144 = v32;
      if (v134)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v42 = *(v28 + 8 * v8 + 32);
      }

      v43 = v42;
      v44 = [v42 quantityType];
      v45 = [v44 aggregationStyle];

      *&v46 = 1.0;
      if (!v45)
      {
        v47 = v43;
        v48 = [v47 v33[352]];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v49 = [v47 endDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = v114;
        DateInterval.init(start:end:)();
        DateInterval.duration.getter();
        v141 = v51;
        (*v113)(v50, v115);
        v46 = v141;
        if (*&v141 <= 0.0)
        {
          static os_log_type_t.error.getter();
          v76 = HKLogWorkouts;
          sub_100140278(&unk_1008E4E50);
          v77 = swift_allocObject();
          *(v77 + 16) = v112;
          *(v77 + 56) = sub_1000059F8(0, &qword_1008EE6F0);
          *(v77 + 64) = sub_100570F9C();
          *(v77 + 32) = v47;
          v78 = v47;
          v79 = v76;
          os_log(_:dso:log:_:_:)();

          v32 = v144;
          goto LABEL_9;
        }
      }

      v141 = v46;
      v52 = [v43 v33[352]];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = v140;
      v54 = *(v140 + v121);
      if (v54)
      {
        v55 = [*(v140 + v121) v33[352]];
        v56 = v138;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v57 = *v136;
        v58 = v123;
        (*v136)(v123, v56, v9);
        v59 = *v139;
        (*v139)(v58, 0, 1, v9);
        v14 = v137;
        v57(v137, v58, v9);
      }

      else
      {
        v59 = *v139;
        v60 = v123;
        (*v139)(v123, 1, 1, v9);
        v61 = [*(v53 + v118) v33[352]];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        if ((*v117)(v60, 1, v9) != 1)
        {
          sub_10000EA04(v60, &unk_1008F73A0);
        }

        v14 = v137;
      }

      Date.timeIntervalSince(_:)();
      v63 = v62;
      v11 = *v142;
      (*v142)(v14, v9);
      v23 = v140;
      v64 = v63 / *(*(v140 + v122) + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration);
      if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v64 <= -9.22337204e18)
      {
        goto LABEL_32;
      }

      if (v64 >= 9.22337204e18)
      {
        goto LABEL_33;
      }

      if (v54)
      {
        v65 = [v54 startDate];
        v66 = v138;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v67 = *v136;
        v68 = v131;
        (*v136)(v131, v66, v9);
        v59(v68, 0, 1, v9);
        v69 = v120;
        v67(v120, v68, v9);
        v70 = v124;
      }

      else
      {
        v71 = v131;
        v59(v131, 1, 1, v9);
        v72 = [*(v23 + v118) startDate];
        v69 = v120;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v73 = (*v117)(v71, 1, v9);
        v70 = v124;
        if (v73 != 1)
        {
          sub_10000EA04(v131, &unk_1008F73A0);
        }
      }

      Date.addingTimeInterval(_:)();
      (v11)(v69, v9);
      (v11)(v143, v9);
      if (v144[2] && (v74 = sub_1004C577C(v70), (v75 & 1) != 0))
      {
        v34 = *(v144[7] + 8 * v74);
      }

      else
      {
        type metadata accessor for WorkoutDataBucket();
        v34 = swift_allocObject();
        *(v34 + 16) = 0;
        *(v34 + 24) = 0;
      }

      v35 = [*(v125 + v119) identifier];
      v36 = [v43 quantity];
      [v36 _value];
      v38 = v37;

      v39.f64[0] = v38 * 60.0;
      if (v35 == 13)
      {
        v39.f64[0] = v38;
      }

      *&v39.f64[1] = v141;
      *(v34 + 16) = vaddq_f64(v39, *(v34 + 16));
      v40 = v144;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v145 = v40;
      sub_100491B10(v34, v70, isUniquelyReferenced_nonNull_native);

      v32 = v145;
      (v11)(v70, v9);
      v33 = &selRef_setNavigationBarHidden_animated_;
LABEL_9:
      ++v8;
      v28 = v133;
      if (v132 == v8)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v80 = v28;
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  v32 = &_swiftEmptyDictionarySingleton;
LABEL_36:
  v81 = v32[2];
  v142 = _swiftEmptyArrayStorage;
  if (v81)
  {
    v145 = _swiftEmptyArrayStorage;
    sub_100185C34(0, v81, 0);
    v142 = v145;
    v82 = v32 + 8;
    result = _HashTable.startBucket.getter();
    v83 = result;
    v84 = 0;
    v143 = *(v32 + 9);
    v144 = v32;
    v138 = (v135 + 32);
    v139 = (v135 + 16);
    v136 = (v32 + 9);
    v137 = v81;
    v140 = v32 + 8;
    while ((v83 & 0x8000000000000000) == 0 && v83 < 1 << *(v32 + 32))
    {
      v87 = v83 >> 6;
      if ((v82[v83 >> 6] & (1 << v83)) == 0)
      {
        goto LABEL_59;
      }

      if (v143 != *(v32 + 9))
      {
        goto LABEL_60;
      }

      *&v141 = v84;
      v88 = v135;
      v89 = v32[6] + *(v135 + 72) * v83;
      v90 = *(v135 + 16);
      v91 = v32;
      v92 = v30;
      v93 = v9;
      v94 = v128;
      v90(v128, v89, v93);
      v95 = *(v91[7] + 8 * v83);
      v96 = *(v88 + 32);
      v97 = v129;
      v98 = v94;
      v9 = v93;
      v30 = v92;
      v96(v129, v98, v9);
      *(v97 + *(v130 + 48)) = v95;
      v90(v92, v97, v9);
      v99 = *(v95 + 16) / *(v95 + 24);
      v100 = v127;
      *(v92 + *(v127 + 20)) = v99;
      *(v92 + *(v100 + 24)) = v99;
      *(v92 + *(v100 + 28)) = v99;

      sub_10000EA04(v97, &qword_1008F2EE8);
      v145 = v142;
      v102 = v142[2];
      v101 = v142[3];
      if (v102 >= v101 >> 1)
      {
        sub_100185C34(v101 > 1, v102 + 1, 1);
        v142 = v145;
      }

      v103 = v142;
      v142[2] = v102 + 1;
      result = sub_10002B380(v92, v103 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v102, type metadata accessor for WorkoutChartDataElement);
      v32 = v144;
      v85 = 1 << *(v144 + 32);
      v82 = v140;
      if (v83 >= v85)
      {
        goto LABEL_61;
      }

      v104 = v140[v87];
      if ((v104 & (1 << v83)) == 0)
      {
        goto LABEL_62;
      }

      if (v143 != *(v144 + 9))
      {
        goto LABEL_63;
      }

      v105 = v104 & (-2 << (v83 & 0x3F));
      if (v105)
      {
        v85 = __clz(__rbit64(v105)) | v83 & 0x7FFFFFFFFFFFFFC0;
        v86 = v137;
      }

      else
      {
        v106 = v87 << 6;
        v107 = v87 + 1;
        v86 = v137;
        v108 = &v136[v87];
        while (v107 < (v85 + 63) >> 6)
        {
          v110 = *v108++;
          v109 = v110;
          v106 += 64;
          ++v107;
          if (v110)
          {
            result = sub_100453590(v83, v143, 0);
            v85 = __clz(__rbit64(v109)) + v106;
            goto LABEL_39;
          }
        }

        result = sub_100453590(v83, v143, 0);
      }

LABEL_39:
      v84 = v141 + 1;
      v83 = v85;
      if ((v141 + 1) == v86)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  else
  {
LABEL_55:
    v111 = v142[2];

    if (!v111)
    {

      return 0;
    }

    return v142;
  }

  return result;
}

unint64_t sub_100570F9C()
{
  result = qword_1008F2EF0;
  if (!qword_1008F2EF0)
  {
    sub_1000059F8(255, &qword_1008EE6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F2EF0);
  }

  return result;
}

uint64_t sub_100571090()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100571140(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return sub_100281490(a1, v4);
}

uint64_t sub_1005712A4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_100571344(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp23TrophyCaseRestoringView_badgeView;
  v11 = [objc_allocWithZone(AAUIBadgeView) initUsingEarnedShader:0];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC10FitnessApp23TrophyCaseRestoringView_restoringLabel;
  v13 = [objc_allocWithZone(UILabel) init];
  v14 = UILabel.withNumberOfLines(_:)();

  [v14 setTextAlignment:1];
  v15 = UILabel.withLineBreakMode(_:)();

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v12] = v15;
  v37.receiver = v5;
  v37.super_class = type metadata accessor for TrophyCaseRestoringView();
  v16 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  v17 = *&v16[OBJC_IVAR____TtC10FitnessApp23TrophyCaseRestoringView_badgeView];
  v18 = v16;
  [v18 addSubview:v17];
  v19 = OBJC_IVAR____TtC10FitnessApp23TrophyCaseRestoringView_restoringLabel;
  [v18 addSubview:*&v18[OBJC_IVAR____TtC10FitnessApp23TrophyCaseRestoringView_restoringLabel]];
  sub_100571768();
  v20 = [objc_opt_self() mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 localizedStringForKey:v21 value:0 table:0];

  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  v23 = *&v18[v19];
  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSFontAttributeName;
  v25 = objc_opt_self();
  v26 = v23;
  v27 = NSFontAttributeName;
  v28 = [v25 preferredFontForTextStyle:UIFontTextStyleTitle1];
  v29 = sub_1000059F8(0, &qword_1008F73C0);
  *(inited + 40) = v28;
  *(inited + 64) = v29;
  *(inited + 72) = NSForegroundColorAttributeName;
  v30 = objc_opt_self();
  v31 = NSForegroundColorAttributeName;
  v32 = [v30 secondaryLabelColor];
  *(inited + 104) = sub_1000059F8(0, &qword_1008E7FC0);
  *(inited + 80) = v32;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730);
  swift_arrayDestroy();
  v33 = objc_allocWithZone(NSAttributedString);
  type metadata accessor for Key(0);
  sub_10017597C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v35 = [v33 initWithString:v22 attributes:isa];

  [v26 setAttributedText:v35];
  return v18;
}

void sub_100571768()
{
  v1 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D9800;
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrophyCaseRestoringView_badgeView];
  v4 = [v3 centerYAnchor];
  v5 = [v0 centerYAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:-16.0];

  *(v2 + 32) = v6;
  v7 = [v3 centerXAnchor];
  v8 = [v0 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [v3 widthAnchor];
  v11 = [v0 widthAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 multiplier:0.76];

  *(v2 + 48) = v12;
  v13 = [v3 heightAnchor];
  v14 = [v3 widthAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:20.0];

  *(v2 + 56) = v15;
  v16 = *&v0[OBJC_IVAR____TtC10FitnessApp23TrophyCaseRestoringView_restoringLabel];
  v17 = [v16 topAnchor];
  v18 = [v3 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:30.0];

  *(v2 + 64) = v19;
  v20 = [v16 leadingAnchor];
  v21 = [v0 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:16.0];

  *(v2 + 72) = v22;
  v23 = [v16 trailingAnchor];
  v24 = [v0 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-16.0];

  *(v2 + 80) = v25;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

id sub_100571B10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrophyCaseRestoringView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100571BB4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp23TrophyCaseRestoringView_badgeView;
  v3 = [objc_allocWithZone(AAUIBadgeView) initUsingEarnedShader:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC10FitnessApp23TrophyCaseRestoringView_restoringLabel;
  v5 = [objc_allocWithZone(UILabel) init];
  v6 = UILabel.withNumberOfLines(_:)();

  [v6 setTextAlignment:1];
  v7 = UILabel.withLineBreakMode(_:)();

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v4) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

NSString sub_100571CCC()
{
  result = String._bridgeToObjectiveC()();
  qword_100925E88 = result;
  return result;
}

id sub_100571D04()
{
  v1 = &v0[OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_noteListener];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v2 = OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers;
  *&v0[v2] = [objc_opt_self() weakObjectsHashTable];
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ActivitySummaryChangeListener();
  v3 = objc_msgSendSuper2(&v18, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  if (qword_1008DAE08 != -1)
  {
    swift_once();
  }

  v7 = qword_100925E88;
  v8 = [objc_opt_self() mainQueue];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_100572454;
  v17 = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026F8C;
  ObjectType = &unk_1008607F0;
  v10 = _Block_copy(aBlock);

  v11 = [v6 addObserverForName:v7 object:0 queue:v8 usingBlock:v10];
  _Block_release(v10);

  ObjectType = swift_getObjectType();
  aBlock[0] = v11;
  v12 = OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_noteListener;
  swift_beginAccess();
  sub_1002885B8(aBlock, v5 + v12);
  swift_endAccess();

  return v5;
}

void sub_100571F34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100571FB4();
  }
}

void sub_100571FB4()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (v2)
  {
    v3 = v2;
    AnyHashable.init<A>(_:)();
    if (*(v3 + 16) && (v4 = sub_1004C5BC0(v18), (v5 & 1) != 0))
    {
      sub_10000B1B4(*(v3 + 56) + 32 * v4, v19);
      sub_100282EF8(v18);

      sub_100140278(&qword_1008F3018);
      if (swift_dynamicCast())
      {
        v6 = MEMORY[0x65676E6180];
        if (!MEMORY[0x65676E6180])
        {
          goto LABEL_23;
        }

        v7 = MEMORY[0x65676E6192];
        v8 = [v7 longLongValue];

        v9 = v6 - 1;
        if (__OFSUB__(v6, 1))
        {
          __break(1u);
          __break(1u);
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          if (v9 >= MEMORY[0x65676E6180])
          {
LABEL_29:
            __break(1u);
            return;
          }

          v10 = *(8 * v9 + 0x65676E6192);

          v6 = [v10 longLongValue];

          v11 = [*(v1 + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) allObjects];
          v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!(v7 >> 62))
          {
            v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v12)
            {
LABEL_14:
              if (v12 >= 1)
              {
                for (i = 0; i != v12; ++i)
                {
                  if ((v7 & 0xC000000000000001) != 0)
                  {
                    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v14 = *(v7 + 8 * i + 32);
                    swift_unknownObjectRetain();
                  }

                  swift_getObjectType();
                  v15 = swift_conformsToProtocol2();
                  if (v15)
                  {
                    if (v14)
                    {
                      v16 = v15;
                      ObjectType = swift_getObjectType();
                      (*(v16 + 8))(v1, v8, v6, ObjectType, v16);
                    }
                  }

                  swift_unknownObjectRelease();
                }

                goto LABEL_23;
              }

              __break(1u);
              goto LABEL_28;
            }

LABEL_23:

            return;
          }
        }

        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (v12)
        {
          goto LABEL_14;
        }

        goto LABEL_23;
      }
    }

    else
    {

      sub_100282EF8(v18);
    }
  }
}

id sub_1005722C8()
{
  v1 = OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_noteListener;
  swift_beginAccess();
  sub_1002E12DC(v0 + v1, &v5);
  if (v6)
  {
    sub_1001AA76C(&v5, &v7);
    v2 = [objc_opt_self() defaultCenter];
    sub_1000066AC(&v7, v8);
    [v2 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_100005A40(&v7);
  }

  else
  {
    sub_1001B3EEC(&v5);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for ActivitySummaryChangeListener();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ActivityRingEntity()
{
  result = qword_1008F3250;
  if (!qword_1008F3250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100572584()
{
  result = qword_1008F3038;
  if (!qword_1008F3038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3038);
  }

  return result;
}

uint64_t sub_1005726B0()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  qword_100925E90 = result;
  return result;
}

uint64_t sub_100572720()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_100925E98);
  sub_10001AC90(v5, qword_100925E98);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100572890()
{
  v0 = sub_100140278(&qword_1008F3388);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100140278(&unk_1008F3390);
  __chkstk_darwin(v4);
  v5 = sub_100140278(&qword_1008F3380);
  sub_100163368(v5, qword_100925EB0);
  sub_10001AC90(v5, qword_100925EB0);
  type metadata accessor for ActivityRingEntity();
  sub_100577DDC(&qword_1008F3040, type metadata accessor for ActivityRingEntity);
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x80000001007530B0;
  v6._countAndFlagsBits = 0xD000000000000016;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  EntityURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

void sub_100572AC0()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setDateFormat:v1];

  qword_100925EC8 = v0;
}

uint64_t sub_100572B38()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  LocalizedStringResource.init(stringLiteral:)();
  if (qword_1008DAE28 != -1)
  {
    swift_once();
  }

  v6 = qword_100925EC8;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v8 = [v6 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v5 + 56))(v3, 0, 1, v4);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  return DisplayRepresentation.init(title:subtitle:image:)();
}

void sub_100572D94(uint64_t a1@<X0>, void *a2@<X8>)
{
  v88 = a2;
  v3 = type metadata accessor for DispatchTimeInterval();
  v85 = *(v3 - 8);
  v86 = v3;
  __chkstk_darwin(v3);
  v83 = (&v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = type metadata accessor for DispatchTime();
  v84 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = &v68 - v7;
  v8 = type metadata accessor for ActivityRingEntity();
  v79 = *(v8 - 8);
  v9 = *(v79 + 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for Calendar.Component();
  v77 = *(v10 - 8);
  v78 = v10;
  __chkstk_darwin(v10);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v68 - v14;
  v16 = type metadata accessor for Date();
  v87 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v68 - v20;
  v22 = type metadata accessor for Calendar();
  __chkstk_darwin(v22);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + *(v8 + 40));
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = *(v27 + 16);
LABEL_11:
    *v88 = v29;
    v67 = v28;
    return;
  }

  v72 = v9;
  v73 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v27;
  v76 = v8;
  v69 = v24;
  v71 = v23;
  v75 = v18;
  v30 = v26;
  static Calendar.current.getter();
  Calendar.startOfDay(for:)();
  v32 = v77;
  v31 = v78;
  (*(v77 + 104))(v12, enum case for Calendar.Component.day(_:), v78);
  v68 = v30;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v32 + 8))(v12, v31);
  v33 = v87;
  v34 = *(v87 + 48);
  v35 = v34(v15, 1, v16);
  v36 = v33;
  v37 = v21;
  v70 = v16;
  if (v35 == 1)
  {
    (*(v36 + 16))(v75, a1, v16);
    v38 = v34(v15, 1, v16);
    v39 = v73;
    if (v38 != 1)
    {
      sub_10000EA04(v15, &unk_1008F73A0);
    }
  }

  else
  {
    (*(v36 + 32))(v75, v15, v16);
    v39 = v73;
  }

  v40 = dispatch_semaphore_create(0);
  sub_100577790(a1, v39);
  v41 = (v79[80] + 16) & ~v79[80];
  v42 = (v72 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_1005777F4(v39, &v43[v41]);
  *&v43[v42] = v40;
  v44 = objc_allocWithZone(_HKActivityStatisticsQuery);
  v45 = v40;
  v79 = v37;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v47 = Date._bridgeToObjectiveC()().super.isa;
  v48 = DateComponents._bridgeToObjectiveC()().super.isa;
  v49 = DateComponents._bridgeToObjectiveC()().super.isa;
  aBlock[4] = sub_100577858;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018C74;
  aBlock[3] = &unk_100860960;
  v50 = _Block_copy(aBlock);
  v51 = [v44 initWithStartDate:isa endDate:v47 moveIntervalComponents:v48 exerciseIntervalComponents:v49 initialQueryResultsHandler:v50];
  _Block_release(v50);

  AppDependency.wrappedValue.getter();
  v52 = aBlock[0];
  [aBlock[0] executeQuery:v51];

  v53 = v80;
  static DispatchTime.now()();
  v54 = v83;
  *v83 = 15;
  v56 = v85;
  v55 = v86;
  (*(v85 + 104))(v54, enum case for DispatchTimeInterval.seconds(_:), v86);
  v57 = v82;
  + infix(_:_:)();
  (*(v56 + 8))(v54, v55);
  v58 = *(v84 + 8);
  v59 = v53;
  v60 = v81;
  v58(v59, v81);
  OS_dispatch_semaphore.wait(timeout:)();
  v58(v57, v60);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0 && (v61 = *(v74 + 16)) != 0 || (v62 = [objc_allocWithZone(_HKActivityStatisticsQueryResult) init], v63 = v74, v64 = *(v74 + 16), *(v74 + 16) = v62, v64, (v61 = *(v63 + 16)) != 0))
  {
    v29 = v61;

    v65 = *(v87 + 8);
    v66 = v70;
    v65(v75, v70);
    v65(v79, v66);
    (*(v69 + 8))(v68, v71);
    v28 = 0;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1005735E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActivityRingEntity();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a4 + *(v17 + 52));
  sub_100577790(a4, v16);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1005777F4(v16, v20 + v18);
  *(v20 + v19) = a2;
  v21 = v27;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  aBlock[4] = sub_10057790C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_1008609B0;
  v22 = _Block_copy(aBlock);
  v23 = a2;
  v24 = v21;
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_100577DDC(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v30 + 8))(v9, v7);
  (*(v10 + 8))(v12, v29);
}

Swift::Int sub_100573974(uint64_t a1, void *a2)
{
  v3 = *(a1 + *(type metadata accessor for ActivityRingEntity() + 40));
  v4 = *(v3 + 16);
  *(v3 + 16) = a2;
  v5 = a2;

  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_1005739C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v3 = sub_100140278(&unk_1008E3FB0);
  __chkstk_darwin(v3 - 8);
  v33 = &v27 - v4;
  v5 = sub_100140278(&unk_1008E51A0);
  __chkstk_darwin(v5 - 8);
  v32 = &v27 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v28);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for ActivityRingEntity();
  v13 = v12[5];
  sub_100140278(&qword_1008F3300);
  LocalizedStringResource.init(stringLiteral:)();
  sub_10014A6B0(&qword_1008F3308, &qword_1008F3268);
  *(a2 + v13) = EntityProperty<>.init(title:_get:)();
  v14 = v12[6];
  sub_100140278(&qword_1008F3310);
  LocalizedStringResource.init(stringLiteral:)();
  sub_10014A6B0(&qword_1008F3318, &qword_1008F3280);
  *(a2 + v14) = EntityProperty<>.init(title:_get:)();
  v15 = v12[7];
  LocalizedStringResource.init(stringLiteral:)();
  *(a2 + v15) = EntityProperty<>.init(title:_get:)();
  v16 = v12[8];
  sub_100140278(&qword_1008F3320);
  LocalizedStringResource.init(stringLiteral:)();
  sub_10014A6B0(&qword_1008F3328, &qword_1008F3298);
  *(a2 + v16) = EntityProperty<>.init(title:_get:)();
  v17 = v12[9];
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  static AppDependencyManager.shared.getter();
  *(a2 + v17) = AppDependency.__allocating_init(key:manager:)();
  v18 = v12[10];
  type metadata accessor for ActivityRingEntity.Cache();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(a2 + v18) = v19;
  v20 = v12[11];
  sub_1000059F8(0, &qword_1008E3FD0);
  static DispatchQoS.userInitiated.getter();
  *&v35 = _swiftEmptyArrayStorage;
  sub_100577DDC(&qword_1008EA878, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100140278(&qword_1008EA880);
  sub_10014A6B0(&qword_1008EA888, &qword_1008EA880);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  *(a2 + v20) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = v12[12];
  sub_100140278(&qword_1008E8648);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(a2 + v21) = v22;
  v23 = type metadata accessor for Calendar();
  (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
  v24 = type metadata accessor for TimeZone();
  (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.day.setter();
  v25 = type metadata accessor for Date();
  return (*(*(v25 - 8) + 32))(a2, v34, v25);
}

uint64_t sub_100574140@<X0>(void *a1@<X8>)
{
  if (qword_1008DAE10 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_100925E90;
}

uint64_t sub_100574240@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAE20 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008F3380);
  v3 = sub_10001AC90(v2, qword_100925EB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_100574384(uint64_t *a1@<X8>)
{
  if (qword_1008DAE28 != -1)
  {
    swift_once();
  }

  v2 = qword_100925EC8;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v4 = [v2 stringFromDate:isa];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
}

uint64_t sub_100574428()
{
  sub_100577DDC(&qword_1008F3378, type metadata accessor for ActivityRingEntity);
  v1 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1005744C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAE18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_100925E98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1005745B0(uint64_t a1)
{
  v2 = sub_100577DDC(&qword_1008F3040, type metadata accessor for ActivityRingEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100574678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002BBC0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10057473C(uint64_t a1)
{
  v2 = sub_100577DDC(&qword_1008F3068, type metadata accessor for ActivityRingEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1005747BC()
{
  result = qword_1008F3088;
  if (!qword_1008F3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3088);
  }

  return result;
}

unint64_t sub_100574814()
{
  result = qword_1008F3090;
  if (!qword_1008F3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3090);
  }

  return result;
}

unint64_t sub_10057486C()
{
  result = qword_1008F3098;
  if (!qword_1008F3098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3098);
  }

  return result;
}

uint64_t sub_100574904()
{
  v0 = sub_100140278(&qword_1008DFAB8);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v23 - v4;
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = sub_100140278(&qword_1008DEC98);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - v13;
  EntityProperty.wrappedValue.getter();
  v15 = sub_100140278(&qword_1008DECB0);
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  sub_10000EA04(v14, &qword_1008DEC98);
  if (v16 == 1)
  {
    EntityProperty.wrappedValue.getter();
    v17 = sub_100140278(&qword_1008DEC58);
    v18 = *(*(v17 - 8) + 48);
    v19 = v18(v11, 1, v17);
    sub_10000EA04(v11, &qword_1008DFAB8);
    if (v19 == 1)
    {
      EntityProperty.wrappedValue.getter();
      v20 = v18(v8, 1, v17);
      sub_10000EA04(v8, &qword_1008DFAB8);
      if (v20 == 1)
      {
        EntityProperty.wrappedValue.getter();
        v21 = v18(v5, 1, v17);
        sub_10000EA04(v5, &qword_1008DFAB8);
        if (v21 == 1)
        {
          EntityProperty.wrappedValue.getter();
          v18(v2, 1, v17);
          sub_10000EA04(v2, &qword_1008DFAB8);
        }
      }
    }
  }

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100574CE0()
{
  v82 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v78 = &v70 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v83 = *(v1 - 8);
  v84 = v1;
  __chkstk_darwin(v1);
  v79 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v85 = *(v3 - 8);
  v86 = v3;
  __chkstk_darwin(v3);
  v80 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Duration.UnitsFormatStyle();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v87 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008DFAB8);
  __chkstk_darwin(v7 - 8);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v70 - v10;
  __chkstk_darwin(v11);
  v75 = &v70 - v12;
  __chkstk_darwin(v13);
  v97 = &v70 - v14;
  v98 = sub_100140278(&qword_1008DEC58);
  v96 = *(v98 - 8);
  __chkstk_darwin(v98);
  v70 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v72 = &v70 - v17;
  __chkstk_darwin(v18);
  v74 = &v70 - v19;
  __chkstk_darwin(v20);
  v77 = &v70 - v21;
  __chkstk_darwin(v22);
  v76 = &v70 - v23;
  v24 = sub_100140278(&qword_1008F3338);
  __chkstk_darwin(v24 - 8);
  v26 = &v70 - v25;
  v27 = sub_100140278(&qword_1008F3340);
  v94 = *(v27 - 8);
  v95 = v27;
  __chkstk_darwin(v27);
  v29 = &v70 - v28;
  v92 = sub_100140278(&qword_1008F3348);
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v31 = &v70 - v30;
  v93 = sub_100140278(&qword_1008F3350);
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v33 = &v70 - v32;
  v34 = sub_100140278(&qword_1008DEC98);
  __chkstk_darwin(v34 - 8);
  v36 = &v70 - v35;
  v37 = sub_100140278(&qword_1008DECB0);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v70 - v39;
  EntityProperty.wrappedValue.getter();
  if ((*(v38 + 48))(v36, 1, v37) != 1)
  {
    (*(v38 + 32))(v40, v36, v37);
    sub_1000059F8(0, &qword_1008DEE40);
    static Measurement<>.FormatStyle.UnitWidth.abbreviated.getter();
    static MeasurementFormatUnitUsage<>.workout.getter();
    v48 = sub_100140278(&qword_1008F3360);
    (*(*(v48 - 8) + 56))(v26, 1, 1, v48);
    static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
    sub_10000EA04(v26, &qword_1008F3338);
    (*(v94 + 8))(v29, v95);
    (*(v90 + 8))(v31, v92);
    sub_10014A6B0(&qword_1008F3368, &qword_1008F3350);
    v49 = v93;
    Measurement<>.formatted<A>(_:)();
    (*(v91 + 8))(v33, v49);
    (*(v38 + 8))(v40, v37);
    return v99;
  }

  sub_10000EA04(v36, &qword_1008DEC98);
  v41 = v97;
  EntityProperty.wrappedValue.getter();
  v42 = v96;
  v43 = *(v96 + 48);
  v44 = v98;
  if (v43(v41, 1, v98) != 1)
  {
    v50 = v76;
    (*(v42 + 32))(v76, v41, v44);
    v51 = [objc_opt_self() seconds];
LABEL_10:
    v52 = v51;
    v53 = v77;
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v54 = *(v42 + 8);
    v54(v53, v44);
    static Duration.seconds(_:)();
    v97 = v55;
    sub_100140278(&qword_1008EF898);
    v56 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
    v57 = *(v56 - 8);
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1006D46C0;
    static Duration.UnitsFormatStyle.Unit.minutes.getter();
LABEL_11:
    sub_10029CB54(v59);
    swift_setDeallocating();
    (*(v57 + 8))(v59 + v58, v56);
    swift_deallocClassInstance();
    v60 = v80;
    static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
    v61 = v79;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v62 = v78;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
    v63 = v87;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v81 + 8))(v62, v82);
    (*(v83 + 8))(v61, v84);
    (*(v85 + 8))(v60, v86);
    sub_100577DDC(&qword_1008F3358, &type metadata accessor for Duration.UnitsFormatStyle);
    v64 = v89;
    Duration.formatted<A>(_:)();
    (*(v88 + 8))(v63, v64);
    v54(v50, v44);
    return v99;
  }

  sub_10000EA04(v41, &qword_1008DFAB8);
  v45 = v75;
  EntityProperty.wrappedValue.getter();
  if (v43(v45, 1, v44) != 1)
  {
    v50 = v74;
    (*(v42 + 32))(v74, v45, v44);
    v51 = [objc_opt_self() seconds];
    goto LABEL_10;
  }

  sub_10000EA04(v45, &qword_1008DFAB8);
  v46 = v73;
  EntityProperty.wrappedValue.getter();
  if (v43(v46, 1, v44) != 1)
  {
    v50 = v72;
    (*(v42 + 32))(v72, v46, v44);
    v66 = [objc_opt_self() seconds];
LABEL_15:
    v67 = v66;
    v68 = v77;
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v54 = *(v42 + 8);
    v54(v68, v44);
    static Duration.seconds(_:)();
    v97 = v69;
    sub_100140278(&qword_1008EF898);
    v56 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
    v57 = *(v56 - 8);
    v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1006D46C0;
    static Duration.UnitsFormatStyle.Unit.hours.getter();
    goto LABEL_11;
  }

  sub_10000EA04(v46, &qword_1008DFAB8);
  v47 = v71;
  EntityProperty.wrappedValue.getter();
  if (v43(v47, 1, v44) != 1)
  {
    v50 = v70;
    (*(v42 + 32))(v70, v47, v44);
    v66 = [objc_opt_self() seconds];
    goto LABEL_15;
  }

  sub_10000EA04(v47, &qword_1008DFAB8);
  v99 = 0;
  v100 = 0xE000000000000000;
  return v99;
}

uint64_t sub_100575B4C(uint64_t a1)
{
  v2 = sub_100577D88();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

unint64_t sub_100575B9C()
{
  result = qword_1008F30B0;
  if (!qword_1008F30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F30B0);
  }

  return result;
}

double sub_100575BF0@<D0>(uint64_t a1@<X8>)
{
  sub_1005779F8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_100575C38()
{
  result = qword_1008F30B8;
  if (!qword_1008F30B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F30B8);
  }

  return result;
}

unint64_t sub_100575C8C()
{
  result = qword_1008F30C0;
  if (!qword_1008F30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F30C0);
  }

  return result;
}

unint64_t sub_100575CE4()
{
  result = qword_1008F30C8;
  if (!qword_1008F30C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F30C8);
  }

  return result;
}

uint64_t sub_100575D38(uint64_t a1)
{
  v2 = sub_100577D88();

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_100575DC8(uint64_t a1)
{
  v2 = sub_100575B9C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100575E18()
{
  result = qword_1008F30E0;
  if (!qword_1008F30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F30E0);
  }

  return result;
}

uint64_t sub_100575E6C()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100574904();
  sub_100574CE0();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_100576040(uint64_t a1)
{
  v2 = sub_100575CE4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

double sub_100576090@<D0>(_OWORD *a1@<X8>)
{
  sub_100577BA0(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1005760D4()
{
  result = qword_1008F30E8;
  if (!qword_1008F30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F30E8);
  }

  return result;
}

unint64_t sub_10057612C()
{
  result = qword_1008F30F0;
  if (!qword_1008F30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F30F0);
  }

  return result;
}

unint64_t sub_100576184()
{
  result = qword_1008F30F8;
  if (!qword_1008F30F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F30F8);
  }

  return result;
}

uint64_t sub_10057621C(uint64_t a1)
{
  v2 = sub_1005779A4();

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

unint64_t sub_10057626C()
{
  result = qword_1008F3110;
  if (!qword_1008F3110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3110);
  }

  return result;
}

unint64_t sub_1005762C0()
{
  result = qword_1008F3118;
  if (!qword_1008F3118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3118);
  }

  return result;
}

unint64_t sub_100576318()
{
  result = qword_1008F3120;
  if (!qword_1008F3120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3120);
  }

  return result;
}

uint64_t sub_10057636C(uint64_t a1)
{
  v2 = sub_1005779A4();

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_1005763B8()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100576544(uint64_t a1)
{
  v2 = sub_1002C1884();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100576594()
{
  result = qword_1008F3138;
  if (!qword_1008F3138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3138);
  }

  return result;
}

uint64_t sub_1005765E8()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v7 + 56))(v5, 1, 1, v6);
  v8 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1005767C0(uint64_t a1)
{
  v2 = sub_100576318();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void sub_100576858()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1005769F4(319, &qword_1008F3260, &qword_1008F3268, &unk_1006FA4E8, &qword_1008F3270);
    if (v1 <= 0x3F)
    {
      sub_1005769F4(319, &qword_1008F3278, &qword_1008F3280, &unk_1006FA4F0, &qword_1008F3288);
      if (v2 <= 0x3F)
      {
        sub_1005769F4(319, &qword_1008F3290, &qword_1008F3298, &unk_1006FA4F8, &qword_1008F32A0);
        if (v3 <= 0x3F)
        {
          sub_100576A90();
          if (v4 <= 0x3F)
          {
            type metadata accessor for ActivityRingEntity.Cache();
            if (v5 <= 0x3F)
            {
              sub_1000059F8(319, &qword_1008E3FD0);
              if (v6 <= 0x3F)
              {
                sub_100576AF8();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for DateComponents();
                  if (v8 <= 0x3F)
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
}

void sub_1005769F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_100141EEC(a3);
    sub_10014A6B0(a5, a3);
    v8 = type metadata accessor for EntityProperty();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100576A90()
{
  if (!qword_1008F32A8)
  {
    sub_1000059F8(255, &qword_1008F24A0);
    v0 = type metadata accessor for AppDependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F32A8);
    }
  }
}

void sub_100576AF8()
{
  if (!qword_1008F32B0)
  {
    v0 = type metadata accessor for OSAllocatedUnfairLock();
    if (!v1)
    {
      atomic_store(v0, &qword_1008F32B0);
    }
  }
}

uint64_t sub_100576B6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100576B8C, 0, 0);
}

uint64_t sub_100576B8C()
{
  v17 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + *(type metadata accessor for ActivityRingEntity() + 48));
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_100577E44;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  sub_100577E2C(&v16);
  os_unfair_lock_unlock(v2 + 4);
  v5 = v16;

  v6 = [v5 activeEnergyResults];

  if (!v6)
  {
    goto LABEL_11;
  }

  sub_1000059F8(0, &unk_1008EE710);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_10:

LABEL_11:
    v14 = [objc_opt_self() kilocalories];
    sub_1000059F8(0, &qword_1008DEE40);
    Measurement.init(value:unit:)();
    goto LABEL_12;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;

  v11 = [v10 quantityValue];

  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = [objc_opt_self() largeCalorieUnit];
  [v11 doubleValueForUnit:v12];

  v13 = [objc_opt_self() kilocalories];
  sub_1000059F8(0, &qword_1008DEE40);
  Measurement.init(value:unit:)();

LABEL_12:
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100576E78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100576E98, 0, 0);
}

uint64_t sub_100576E98()
{
  v17 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + *(type metadata accessor for ActivityRingEntity() + 48));
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_100577E44;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  sub_100577E2C(&v16);
  os_unfair_lock_unlock(v2 + 4);
  v5 = v16;

  v6 = [v5 appleMoveTimeResults];

  if (!v6)
  {
    goto LABEL_11;
  }

  sub_1000059F8(0, &unk_1008EE710);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_10:

LABEL_11:
    v14 = [objc_opt_self() minutes];
    sub_1000059F8(0, &qword_1008DEE10);
    Measurement.init(value:unit:)();
    goto LABEL_12;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;

  v11 = [v10 quantityValue];

  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = [objc_opt_self() minuteUnit];
  [v11 doubleValueForUnit:v12];

  v13 = [objc_opt_self() minutes];
  sub_1000059F8(0, &qword_1008DEE10);
  Measurement.init(value:unit:)();

LABEL_12:
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100577184(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1005771A4, 0, 0);
}

uint64_t sub_1005771A4()
{
  v17 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + *(type metadata accessor for ActivityRingEntity() + 48));
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_100577E44;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  sub_100577E2C(&v16);
  os_unfair_lock_unlock(v2 + 4);
  v5 = v16;

  v6 = [v5 appleExerciseTimeResults];

  if (!v6)
  {
    goto LABEL_11;
  }

  sub_1000059F8(0, &unk_1008EE710);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_10:

LABEL_11:
    v14 = [objc_opt_self() minutes];
    sub_1000059F8(0, &qword_1008DEE10);
    Measurement.init(value:unit:)();
    goto LABEL_12;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;

  v11 = [v10 quantityValue];

  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = [objc_opt_self() minuteUnit];
  [v11 doubleValueForUnit:v12];

  v13 = [objc_opt_self() minutes];
  sub_1000059F8(0, &qword_1008DEE10);
  Measurement.init(value:unit:)();

LABEL_12:
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100577490(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1005774B0, 0, 0);
}

uint64_t sub_1005774B0()
{
  v19 = p_ivars;
  v1 = p_ivars[3];
  v2 = *(v1 + *(type metadata accessor for ActivityRingEntity() + 48));
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_10057775C;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  sub_100577778(&v18);
  os_unfair_lock_unlock(v2 + 4);
  v5 = v18;

  v6 = [v5 appleStandHourResults];

  if (v6)
  {
    sub_1000059F8(0, &qword_1008E0F68);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = _swiftEmptyArrayStorage;
    if (v7 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v17 = p_ivars;
      v9 = 0;
      p_ivars = &ResourceBundleClass.ivars;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ([v10 state])
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v9;
        if (v12 == i)
        {
          p_ivars = v17;
          v13 = v18;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_20:

    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v14 = *(v13 + 16);
    }
  }

  else
  {
    v14 = 0;
  }

  *p_ivars[2] = v14;
  v15 = p_ivars[1];

  return v15();
}

uint64_t sub_100577790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityRingEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005777F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityRingEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100577858(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for ActivityRingEntity() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005735E0(a1, a2, a3, v3 + v8, v9);
}

Swift::Int sub_10057790C()
{
  v1 = *(type metadata accessor for ActivityRingEntity() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100573974(v0 + v2, v3);
}

unint64_t sub_1005779A4()
{
  result = qword_1008F3330;
  if (!qword_1008F3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3330);
  }

  return result;
}

uint64_t sub_1005779F8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v2 - 8);
  sub_100140278(&qword_1008DEDE8);
  LocalizedStringResource.init(stringLiteral:)();
  v3 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DFAC0);
  LocalizedStringResource.init(stringLiteral:)();
  v4 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v5 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v6 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  result = EntityProperty<>.init(title:)();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = result;
  return result;
}

uint64_t sub_100577BA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v2 - 8);
  sub_100140278(&qword_1008DEDE8);
  LocalizedStringResource.init(stringLiteral:)();
  v3 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DFAC0);
  LocalizedStringResource.init(stringLiteral:)();
  v4 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v5 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v6 = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v7 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008E6028);
  LocalizedStringResource.init(stringLiteral:)();
  result = EntityProperty<>.init(title:)();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = result;
  return result;
}

unint64_t sub_100577D88()
{
  result = qword_1008F3370;
  if (!qword_1008F3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F3370);
  }

  return result;
}

uint64_t sub_100577DDC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100577E7C()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption2;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1008F33A0 = v2;
}

char *sub_100577EE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_nameLabel;
  v11 = [objc_allocWithZone(UILabel) init];
  if (qword_1008DAE30 != -1)
  {
    swift_once();
  }

  v12 = UILabel.withFont(_:)();

  [v12 setTextAlignment:1];
  [v12 setLineBreakMode:0];
  [v12 setNumberOfLines:2];
  v13 = UIView.forAutoLayout()();

  *&v5[v10] = v13;
  v14 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_avatarImageView;
  v15 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = UIView.forAutoLayout()();

  *&v5[v14] = v16;
  v17 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_fallbackAvatarView;
  v18 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = UIView.forAutoLayout()();

  *&v5[v17] = v19;
  v26.receiver = v5;
  v26.super_class = type metadata accessor for TrophyCaseAwardDetailFriendCell();
  v20 = objc_msgSendSuper2(&v26, "initWithFrame:", a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_avatarImageView;
  v22 = *&v20[OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_avatarImageView];
  v23 = v20;
  v24 = [v22 layer];
  [v24 setMasksToBounds:1];

  [v23 addSubview:*&v20[v21]];
  [v23 addSubview:*&v23[OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_fallbackAvatarView]];
  [v23 addSubview:*&v23[OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_nameLabel]];
  sub_100578180();

  return v23;
}

void sub_100578180()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v3)
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 8.0;
  }

  if (v3)
  {
    v5 = 20.0;
  }

  else
  {
    v5 = 10.0;
  }

  if (v3)
  {
    v6 = 128.0;
  }

  else
  {
    v6 = 64.0;
  }

  v7 = *&v0[OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_avatarImageView];
  v8 = [v7 layer];
  [v8 setCornerRadius:v6 * 0.5];

  v52 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D9830;
  v10 = [v7 topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:v5];

  *(v9 + 32) = v12;
  v13 = [v7 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:-v5];

  *(v9 + 40) = v15;
  v16 = [v7 leadingAnchor];
  v17 = [v0 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:v5];

  *(v9 + 48) = v18;
  v19 = [v7 widthAnchor];
  v20 = [v7 heightAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v9 + 56) = v21;
  v22 = [v7 widthAnchor];
  v23 = [v22 constraintEqualToConstant:v6];

  *(v9 + 64) = v23;
  v24 = *&v0[OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_fallbackAvatarView];
  v25 = [v24 topAnchor];
  v26 = [v0 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:v5];

  *(v9 + 72) = v27;
  v28 = [v24 trailingAnchor];
  v29 = [v0 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-v5];

  *(v9 + 80) = v30;
  v31 = [v24 leadingAnchor];
  v32 = [v0 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:v5];

  *(v9 + 88) = v33;
  v34 = [v24 widthAnchor];
  v35 = [v24 heightAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v9 + 96) = v36;
  v37 = [v24 widthAnchor];
  v38 = [v37 constraintEqualToConstant:v6];

  *(v9 + 104) = v38;
  v39 = *&v0[OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_nameLabel];
  v40 = [v39 topAnchor];
  v41 = [v7 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:v4];

  *(v9 + 112) = v42;
  v43 = [v39 trailingAnchor];
  v44 = [v0 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-v5];

  *(v9 + 120) = v45;
  v46 = [v39 leadingAnchor];
  v47 = [v0 leadingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:v5];

  *(v9 + 128) = v48;
  v49 = [v39 bottomAnchor];
  v50 = [v0 bottomAnchor];
  v51 = [v49 constraintLessThanOrEqualToAnchor:v50 constant:-v5];

  *(v9 + 136) = v51;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v52 activateConstraints:isa];
}

void sub_100578848(void *a1)
{
  v43 = [objc_allocWithZone(CNContactStore) init];
  v3 = [a1 contact];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 linkedContactStoreIdentifier];
    if (v5)
    {
      v6 = v5;
      sub_100140278(&unk_1008E4E20);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1006D68C0;
      *(v7 + 32) = CNContactThumbnailImageDataKey;
      *(v7 + 40) = CNContactGivenNameKey;
      *(v7 + 48) = CNContactNicknameKey;
      v8 = CNContactThumbnailImageDataKey;
      v9 = CNContactGivenNameKey;
      v10 = CNContactNicknameKey;
      sub_100140278(&unk_1008E53F0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v44 = 0;
      v12 = [v43 unifiedContactWithIdentifier:v6 keysToFetch:isa error:&v44];

      if (v12)
      {
        v13 = *(v1 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_nameLabel);
        v14 = v44;
        v15 = [v12 nickname];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        if (v19)
        {
          v20 = &selRef_nickname;
        }

        else
        {
          v20 = &selRef_givenName;
        }

        v21 = [v12 *v20];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v22 = String._bridgeToObjectiveC()();

        [v13 setText:v22];

        v23 = [v12 thumbnailImageData];
        if (v23)
        {
          v24 = v23;
          v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;

          v28 = *(v1 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_avatarImageView);
          v29 = objc_allocWithZone(UIImage);
          sub_100215414(v25, v27);
          v30 = Data._bridgeToObjectiveC()().super.isa;
          v31 = [v29 initWithData:v30];

          sub_10000AF88(v25, v27);
          [v28 setImage:v31];

          [*(v1 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_fallbackAvatarView) setHidden:1];
          [v28 setHidden:0];

          sub_10000AF88(v25, v27);
        }

        else
        {
          v33 = [objc_opt_self() settingsWithContactStore:v43 threeDTouchEnabled:0];
          v34 = [objc_allocWithZone(CNAvatarViewController) initWithSettings:v33];
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_1006D4E70;
          *(v35 + 32) = v12;
          sub_1000059F8(0, &qword_1008F8670);
          v36 = v12;
          v37 = Array._bridgeToObjectiveC()().super.isa;

          [v34 setContacts:v37];

          v38 = [objc_opt_self() sharedApplication];
          v39 = [v38 preferredContentSizeCategory];

          LOBYTE(v38) = UIContentSizeCategory.isAccessibilityCategory.getter();
          if (v38)
          {
            v40 = 128.0;
          }

          else
          {
            v40 = 64.0;
          }

          v41 = [v34 view];
          [v41 setFrame:{0.0, 0.0, v40, v40}];
          v42 = *(v1 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_fallbackAvatarView);
          [v42 addSubview:v41];
          [v42 setHidden:0];
          [*(v1 + OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_avatarImageView) setHidden:1];
        }
      }

      else
      {
        v32 = v44;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      return;
    }
  }
}

id sub_100578DFC()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for TrophyCaseAwardDetailFriendCell();
  objc_msgSendSuper2(&v10, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_avatarImageView] setImage:0];
  [*&v0[OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_nameLabel] setText:0];
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_fallbackAvatarView];
  v2 = [v1 subviews];
  sub_1000059F8(0, &qword_1008E7580);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return [v1 setHidden:0];
}

id sub_100578FE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrophyCaseAwardDetailFriendCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100579098()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_nameLabel;
  v3 = [objc_allocWithZone(UILabel) init];
  if (qword_1008DAE30 != -1)
  {
    swift_once();
  }

  v4 = UILabel.withFont(_:)();

  [v4 setTextAlignment:1];
  [v4 setLineBreakMode:0];
  [v4 setNumberOfLines:2];
  v5 = UIView.forAutoLayout()();

  *(v1 + v2) = v5;
  v6 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_avatarImageView;
  v7 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = UIView.forAutoLayout()();

  *(v1 + v6) = v8;
  v9 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseAwardDetailFriendCell_fallbackAvatarView;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = UIView.forAutoLayout()();

  *(v1 + v9) = v11;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for LoadDetailsView()
{
  result = qword_1008F3450;
  if (!qword_1008F3450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005792B0()
{
  sub_1000059F8(319, &unk_1008DC348);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FitnessAppContext();
    if (v1 <= 0x3F)
    {
      type metadata accessor for StackFormattingManager();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SeymourCatalogItemDataProvider();
        if (v3 <= 0x3F)
        {
          sub_1000059F8(319, &qword_1008F24B0);
          if (v4 <= 0x3F)
          {
            type metadata accessor for AAUIAwardsDataProvider();
            if (v5 <= 0x3F)
            {
              type metadata accessor for WorkoutImageProvider();
              if (v6 <= 0x3F)
              {
                sub_1005794BC(319, &qword_1008F03A8, type metadata accessor for LoadDetailViewControllerCoordinator, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_1005794BC(319, &unk_1008F3460, &type metadata accessor for TrainingLoadDataType, &type metadata accessor for State);
                  if (v8 <= 0x3F)
                  {
                    sub_10006DC4C();
                    if (v9 <= 0x3F)
                    {
                      sub_1005794BC(319, &qword_1008E0B78, type metadata accessor for BalanceDataProvider, &type metadata accessor for Environment);
                      if (v10 <= 0x3F)
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
    }
  }
}

void sub_1005794BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100579560(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_100579628()
{
  v44 = sub_100140278(&qword_1008E04A8);
  __chkstk_darwin(v44);
  v2 = &v39 - v1;
  v43 = type metadata accessor for Calendar.Identifier();
  v3 = *(v43 - 8);
  __chkstk_darwin(v43);
  v57 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v58 = *(v5 - 8);
  __chkstk_darwin(v5);
  v54 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for GregorianDayRange();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DayIndex();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v51 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v12 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v45 = *(ViewModel - 8);
  v46 = ViewModel;
  __chkstk_darwin(ViewModel);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v0 + *(type metadata accessor for LoadDetailsView() + 56);
  v23 = *v22;
  if (*(v22 + 8) == 1)
  {
    v24 = v23;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v40 = v15;
    v25 = static Log.runtimeIssuesLog.getter();
    v41 = v2;
    v26 = v25;
    os_log(_:dso:log:_:_:)();

    v2 = v41;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v23, 0);
    (*(v16 + 8))(v18, v40);
    v24 = v59;
  }

  v27 = DataType;
  (*(v12 + 104))(v14, enum case for TrainingLoadDataType.workout(_:), DataType);
  v28 = v21;
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v12 + 8))(v14, v27);
  type metadata accessor for TrainingLoadViewModelProvider();
  v29 = v49;
  static Date.now.getter();
  v30 = v57;
  v31 = v43;
  (*(v3 + 104))(v57, enum case for Calendar.Identifier.gregorian(_:), v43);
  v32 = v54;
  Calendar.init(identifier:)();
  (*(v3 + 8))(v30, v31);
  v33 = v47;
  static TrainingLoadViewModelProvider.createDayRange(now:days:gregorianCalendar:)();
  (*(v58 + 8))(v32, v5);
  (*(v52 + 8))(v29, v53);
  GregorianDayRange.dayIndexRange.getter();
  (*(v48 + 8))(v33, v50);
  v35 = v55;
  v34 = v56;
  v36 = v51;
  (*(v55 + 16))(v51, &v2[*(v44 + 36)], v56);
  sub_10000EA04(v2, &qword_1008E04A8);
  if (TrainingLoadViewModel.isPending(onDay:)())
  {
    v37 = 0;
  }

  else
  {
    v37 = TrainingLoadViewModel.isNoData(onDay:)() ^ 1;
  }

  (*(v35 + 8))(v36, v34);
  (*(v45 + 8))(v28, v46);
  return v37 & 1;
}

uint64_t sub_100579D58()
{
  v1 = type metadata accessor for OvernightMetricsViewModel();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100579628())
  {
    v9 = 0;
  }

  else
  {
    v10 = v0 + *(type metadata accessor for LoadDetailsView() + 56);
    v11 = *v10;
    if (*(v10 + 8) == 1)
    {
      v12 = v11;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v13 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v11, 0);
      (*(v6 + 8))(v8, v5);
      v12 = v15[1];
    }

    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    v9 = OvernightMetricsViewModel.watchExperienceRequiresSetup.getter();
    (*(v2 + 8))(v4, v1);
  }

  return v9 & 1;
}

uint64_t sub_100579FC8@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  DataType = type metadata accessor for TrainingLoadDataType();
  v43 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v38 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsView = type metadata accessor for LoadDetailsView();
  v4 = DetailsView - 8;
  v5 = *(DetailsView - 8);
  __chkstk_darwin(DetailsView);
  v35 = v6;
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100140278(&qword_1008F34B8);
  __chkstk_darwin(v37);
  v9 = v31 - v8;
  v10 = sub_100140278(&qword_1008F34C0);
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  __chkstk_darwin(v10);
  v36 = v31 - v12;
  sub_10057A530(v1, v9);
  v13 = v1 + *(v4 + 60);
  v44 = v1;
  v14 = *v13;
  v15 = *(v13 + 8);
  v51 = v14;
  v52 = v15;
  sub_100140278(&qword_1008DDBB8);
  State.projectedValue.getter();
  v31[3] = v49;
  v46 = type metadata accessor for LoadDetailsView;
  v34 = v7;
  sub_10057E5D4(v1, v7, type metadata accessor for LoadDetailsView);
  v45 = *(v5 + 80);
  v16 = (v45 + 16) & ~v45;
  v17 = swift_allocObject();
  sub_10057DCB4(v7, v17 + v16);
  DetailsStackedChartView = type metadata accessor for LoadDetailsStackedChartView(0);
  v33 = sub_10057DD88();
  v30 = sub_10057E500(&qword_1008F3540, type metadata accessor for LoadDetailsStackedChartView);
  v18 = v37;
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_10000EA04(v9, &qword_1008F34B8);
  sub_100140278(&qword_1008F33F0);
  v19 = v44;
  v20 = v38;
  State.wrappedValue.getter();
  v21 = v34;
  sub_10057E5D4(v19, v34, v46);
  v22 = swift_allocObject();
  sub_10057DCB4(v21, v22 + v16);
  v47 = v18;
  v48 = DetailsStackedChartView;
  v49 = v33;
  v50 = v30;
  swift_getOpaqueTypeConformance2();
  sub_10057E500(&qword_1008F3548, &type metadata accessor for TrainingLoadDataType);
  v24 = DataType;
  v23 = v42;
  v25 = v39;
  v26 = v36;
  View.onChange<A>(of:initial:_:)();

  (*(v43 + 8))(v20, v24);
  (*(v40 + 8))(v26, v25);
  sub_10057E5D4(v44, v21, v46);
  v27 = swift_allocObject();
  sub_10057DCB4(v21, v27 + v16);
  result = sub_100140278(&qword_1008F3550);
  v29 = (v23 + *(result + 36));
  *v29 = sub_10057E1F4;
  v29[1] = v27;
  v29[2] = 0;
  v29[3] = 0;
  return result;
}

uint64_t sub_10057A530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v61 = type metadata accessor for PlainListStyle();
  v55 = *(v61 - 8);
  __chkstk_darwin(v61);
  v53 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ListSectionSpacing();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100140278(&qword_1008F34E0);
  __chkstk_darwin(v59);
  v50 = &v46 - v5;
  v60 = sub_100140278(&qword_1008F3558);
  v54 = *(v60 - 8);
  __chkstk_darwin(v60);
  v52 = &v46 - v6;
  v56 = sub_100140278(&qword_1008F3560);
  __chkstk_darwin(v56);
  v57 = &v46 - v7;
  v58 = sub_100140278(&qword_1008DC0E0);
  v8 = *(v58 - 8);
  __chkstk_darwin(v58);
  v10 = &v46 - v9;
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for LoadDetailsView() + 56);
  v47 = a1;
  v16 = a1 + v15;
  v17 = *v16;
  v18 = *(v16 + 8);
  if (v18 == 1)
  {
    v19 = v17;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v17, 0);
    (*(v12 + 8))(v14, v11);
    v19 = v63;
  }

  ViewModel = dispatch thunk of TrainingLoadViewModelProvider.isLoadingWorkoutViewModelForTheFirstTime.getter();

  if (ViewModel & 1) != 0 || (!v18 ? (, static os_log_type_t.fault.getter(), v23 = static Log.runtimeIssuesLog.getter(), os_log(_:dso:log:_:_:)(), v23, EnvironmentValues.init()(), swift_getAtKeyPath(), sub_1000A73A4(v17, 0), (*(v12 + 8))(v14, v11), v22 = v63) : (v22 = v17), , v22, v24 = dispatch thunk of TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.getter(), v25 = , (v24))
  {
    ProgressView<>.init<>()();
    v26 = v58;
    (*(v8 + 16))(v57, v10, v58);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008DC0D8, &qword_1008DC0E0);
    v27 = sub_10057DF20();
    v63 = v59;
    v64 = v61;
    v65 = v27;
    v66 = &protocol witness table for PlainListStyle;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v8 + 8))(v10, v26);
  }

  else
  {
    __chkstk_darwin(v25);
    *(&v46 - 2) = v47;
    sub_100140278(&qword_1008F3568);
    sub_10014A6B0(&qword_1008F3570, &qword_1008F3568);
    v29 = v50;
    List<>.init(content:)();
    v63 = static Color.clear.getter();
    v30 = AnyView.init<A>(_:)();
    *(v29 + *(sub_100140278(&qword_1008F3508) + 36)) = v30;
    v31 = v48;
    static ListSectionSpacing.custom(_:)();
    v32 = *(sub_100140278(&qword_1008F34F8) + 36);
    v33 = v49;
    v34 = v51;
    (*(v49 + 16))(v29 + v32, v31, v51);
    v35 = *(v33 + 56);
    v35(v29 + v32, 0, 1, v34);
    KeyPath = swift_getKeyPath();
    v37 = v59;
    v38 = (v29 + *(v59 + 36));
    v39 = *(sub_100140278(&qword_1008F3538) + 28);
    (*(v33 + 32))(v38 + v39, v31, v34);
    v35(v38 + v39, 0, 1, v34);
    *v38 = KeyPath;
    v40 = v53;
    PlainListStyle.init()();
    v41 = sub_10057DF20();
    v42 = v52;
    v43 = v61;
    View.listStyle<A>(_:)();
    (*(v55 + 8))(v40, v43);
    sub_10000EA04(v29, &qword_1008F34E0);
    v44 = v54;
    v45 = v60;
    (*(v54 + 16))(v57, v42, v60);
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008DC0D8, &qword_1008DC0E0);
    v63 = v37;
    v64 = v43;
    v65 = v41;
    v66 = &protocol witness table for PlainListStyle;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v44 + 8))(v42, v45);
  }
}

uint64_t sub_10057AE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = type metadata accessor for LoadItemsList() - 8;
  __chkstk_darwin(v48);
  v50 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = (v46 - v5);
  v7 = sub_100140278(&qword_1008F3578);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v49 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v46 - v11;
  v52 = a1;
  sub_100140278(&qword_1008F3580);
  v13 = sub_100141EEC(&qword_1008F3588);
  v14 = sub_100141EEC(&qword_1008F3590);
  v15 = sub_10057E28C();
  v53 = v14;
  v54 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v13;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v47 = v12;
  Section<>.init(content:)();
  v17 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v18 = &v12[*(v8 + 44)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v23 = *a1;
  v24 = *(a1 + 8);
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  v28 = *(a1 + 40);
  v27 = *(a1 + 48);
  v29 = *(a1 + 56);
  v30 = *(type metadata accessor for LoadDetailsView() + 48);
  v31 = v48;
  v46[1] = *(v48 + 52);
  v46[2] = v30;

  v46[0] = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v28;

  sub_100140278(&qword_1008F33F0);
  State.wrappedValue.getter();
  v36 = *(a1 + 32);
  *v6 = v46[0];
  v6[1] = v32;
  v6[2] = v33;
  v6[3] = v34;
  v6[4] = v35;
  v6[5] = v27;
  v6[6] = v29;
  *(v6 + *(v31 + 56)) = v36;
  v37 = v6 + *(v31 + 60);
  type metadata accessor for BalanceDataProvider();
  sub_10057E500(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  v38 = v36;
  *v37 = Environment.init<A>(_:)();
  v37[8] = v39 & 1;
  v40 = v47;
  v41 = v49;
  sub_10001B104(v47, v49, &qword_1008F3578);
  v42 = v50;
  sub_10057E5D4(v6, v50, type metadata accessor for LoadItemsList);
  v43 = v51;
  sub_10001B104(v41, v51, &qword_1008F3578);
  v44 = sub_100140278(&qword_1008F35B0);
  sub_10057E5D4(v42, v43 + *(v44 + 48), type metadata accessor for LoadItemsList);
  sub_10057E63C(v6, type metadata accessor for LoadItemsList);
  sub_10000EA04(v40, &qword_1008F3578);
  sub_10057E63C(v42, type metadata accessor for LoadItemsList);
  return sub_10000EA04(v41, &qword_1008F3578);
}

uint64_t sub_10057B244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  DetailsView = type metadata accessor for LoadDetailsView();
  v24 = *(DetailsView - 8);
  v4 = *(v24 + 64);
  __chkstk_darwin(DetailsView - 8);
  v5 = sub_100140278(&qword_1008F3590);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v25 = sub_100140278(&qword_1008F3588);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v23 - v9;
  *v7 = static HorizontalAlignment.leading.getter();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  v11 = sub_100140278(&qword_1008F35B8);
  v12 = a1;
  sub_10057B5D4(a1, &v7[*(v11 + 44)]);
  if (qword_1008DAE38 != -1)
  {
    swift_once();
  }

  v13 = qword_1008F33E8;
  v14 = &v7[*(v5 + 36)];
  v15 = *(type metadata accessor for RoundedRectangle() + 20);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = v13;
  v14[1] = v13;
  *(v14 + *(sub_100140278(&qword_1008DE1E0) + 36)) = 256;
  sub_10057E5D4(v12, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadDetailsView);
  v18 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v19 = swift_allocObject();
  sub_10057DCB4(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v20 = sub_10057E28C();
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v7, &qword_1008F3590);
  static VerticalEdge.Set.all.getter();
  v27 = v5;
  v28 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v25;
  View.listRowSeparator(_:edges:)();
  return (*(v8 + 8))(v10, v21);
}

uint64_t sub_10057B5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v103 = sub_100140278(&qword_1008F35C0);
  __chkstk_darwin(v103);
  v104 = (v86 - v3);
  v100 = type metadata accessor for AccessibilityTraits();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for AccessibilityChildBehavior();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsView = type metadata accessor for LoadDetailsView();
  v86[0] = *(DetailsView - 8);
  __chkstk_darwin(DetailsView);
  v86[1] = v7;
  v87 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_100140278(&qword_1008F35C8);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = v86 - v8;
  v94 = sub_100140278(&qword_1008F35D0);
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v90 = v86 - v9;
  v102 = sub_100140278(&qword_1008F35D8);
  __chkstk_darwin(v102);
  v93 = v86 - v10;
  v121 = sub_100140278(&qword_1008F35E0);
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v101 = v86 - v11;
  v12 = type metadata accessor for OvernightMetricsViewModel();
  v115 = *(v12 - 8);
  v116 = v12;
  __chkstk_darwin(v12);
  v114 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&qword_1008F35E8);
  __chkstk_darwin(v14 - 8);
  v120 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v86 - v17;
  DataType = type metadata accessor for TrainingLoadDataType();
  v110 = *(DataType - 8);
  v111 = DataType;
  __chkstk_darwin(DataType);
  v21 = v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for EnvironmentValues();
  v112 = *(v22 - 8);
  v113 = v22;
  __chkstk_darwin(v22);
  v24 = v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel();
  v108 = *(ViewModel - 8);
  __chkstk_darwin(ViewModel);
  v26 = v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100140278(&qword_1008F35F0);
  __chkstk_darwin(v27);
  v117 = v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = v86 - v30;
  *v31 = static HorizontalAlignment.leading.getter();
  *(v31 + 1) = 0x4028000000000000;
  v31[16] = 0;
  v32 = sub_100140278(&qword_1008F35F8);
  sub_10057C490(a1, &v31[*(v32 + 44)]);
  v33 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v31;
  v43 = &v31[*(sub_100140278(&qword_1008F3600) + 36)];
  *v43 = v33;
  *(v43 + 1) = v35;
  *(v43 + 2) = v37;
  *(v43 + 3) = v39;
  *(v43 + 4) = v41;
  v43[40] = 0;
  v107 = static Alignment.center.getter();
  v106 = v44;
  v45 = *(DetailsView + 56);
  v123 = a1;
  v46 = a1 + v45;
  v47 = *v46;
  v48 = *(v46 + 8);
  v118 = v18;
  v105 = v24;
  if (v48 == 1)
  {
    v49 = v47;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v50 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v47, 0);
    (*(v112 + 8))(v24, v113);
    v49 = v124;
  }

  v51 = &v31[*(v27 + 36)];

  sub_100140278(&qword_1008F33F0);
  State.wrappedValue.getter();
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  (*(v110 + 8))(v21, v111);
  TrainingLoadViewModel.loadBandFlavoredGradientBackground(rotated:)();
  (*(v108 + 8))(v26, ViewModel);
  v52 = &v51[*(sub_100140278(&qword_1008F3608) + 36)];
  v53 = v106;
  *v52 = v107;
  v52[1] = v53;
  if (v48)
  {
    v54 = v47;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v55 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v56 = v105;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v47, 0);
    (*(v112 + 8))(v56, v113);
    v54 = v124;
  }

  v57 = v118;
  v58 = v114;
  dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();
  v59 = OvernightMetricsViewModel.isWatchExperienceAvailable.getter();

  (*(v115 + 8))(v58, v116);
  if (v59 == 2 || (v59 & 1) == 0)
  {
    v79 = 1;
  }

  else
  {
    v60 = v123;
    v61 = sub_100579D58();
    type metadata accessor for BalanceDataProvider();
    sub_10057E500(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    v62 = Environment.init<A>(_:)();
    if (v61)
    {
      v124 = v62;
      v64 = v63 & 1;
      LOBYTE(v125) = v63 & 1;
      v65 = v62;
      v66 = v87;
      sub_10057E5D4(v60, v87, type metadata accessor for LoadDetailsView);
      v67 = (*(v86[0] + 80) + 16) & ~*(v86[0] + 80);
      v68 = swift_allocObject();
      sub_10057DCB4(v66, v68 + v67);
      v69 = sub_10057E4AC();
      v70 = v88;
      View.onTapGesture(count:perform:)();

      sub_1000A73A4(v65, v64);
      v71 = v95;
      static AccessibilityChildBehavior.combine.getter();
      v124 = &type metadata for OvernightMetricsView;
      v125 = v69;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v73 = v90;
      v74 = v91;
      View.accessibilityElement(children:)();
      (*(v96 + 8))(v71, v97);
      (*(v89 + 8))(v70, v74);
      v75 = v98;
      static AccessibilityTraits.isLink.getter();
      v124 = v74;
      v125 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v76 = v93;
      v77 = v94;
      View.accessibilityAddTraits(_:)();
      (*(v99 + 8))(v75, v100);
      (*(v92 + 8))(v73, v77);
      sub_10001B104(v76, v104, &qword_1008F35D8);
      swift_storeEnumTagMultiPayload();
      sub_10057E388();
      v78 = v101;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v76, &qword_1008F35D8);
    }

    else
    {
      v80 = v104;
      *v104 = v62;
      *(v80 + 8) = v63 & 1;
      swift_storeEnumTagMultiPayload();
      sub_10057E388();
      sub_10057E4AC();
      v78 = v101;
      _ConditionalContent<>.init(storage:)();
    }

    sub_10009EAA0(v78, v57);
    v79 = 0;
  }

  (*(v119 + 56))(v57, v79, 1, v121);
  v81 = v117;
  sub_10001B104(v42, v117, &qword_1008F35F0);
  v82 = v120;
  sub_10001B104(v57, v120, &qword_1008F35E8);
  v83 = v122;
  sub_10001B104(v81, v122, &qword_1008F35F0);
  v84 = sub_100140278(&qword_1008F3610);
  sub_10001B104(v82, v83 + *(v84 + 48), &qword_1008F35E8);
  sub_10000EA04(v57, &qword_1008F35E8);
  sub_10000EA04(v42, &qword_1008F35F0);
  sub_10000EA04(v82, &qword_1008F35E8);
  return sub_10000EA04(v81, &qword_1008F35F0);
}

uint64_t sub_10057C490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = type metadata accessor for Calendar.Identifier();
  v62 = *(v3 - 8);
  v63 = v3;
  __chkstk_darwin(v3);
  v59 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v60 = *(v5 - 8);
  v61 = v5;
  __chkstk_darwin(v5);
  v57 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Date();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailsChartView = type metadata accessor for LoadDetailsChartView();
  __chkstk_darwin(DetailsChartView);
  v65 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v64 = &v47 - v10;
  DataType = type metadata accessor for TrainingLoadDataType();
  v70 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EnvironmentValues();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TypeScrollView = type metadata accessor for LoadTypeScrollView();
  __chkstk_darwin(TypeScrollView);
  v53 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v68 = &v47 - v20;
  v21 = *(type metadata accessor for LoadDetailsView() + 56);
  v69 = a1;
  v22 = a1 + v21;
  v23 = *v22;
  v51 = *(v22 + 8);
  v49 = v13;
  v48 = v14;
  if (v51 == 1)
  {
    v25 = v23;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v23, 0);
    (*(v14 + 8))(v16, v13);
    v25 = v71;
  }

  sub_100140278(&qword_1008F33F0);
  State.wrappedValue.getter();
  v26 = v68;
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  v27 = *(v70 + 8);
  v70 += 8;
  v50 = v27;
  v27(v12, DataType);
  State.projectedValue.getter();
  v28 = v26 + *(TypeScrollView + 24);
  type metadata accessor for BalanceDataProvider();
  v52 = sub_10057E500(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  *v28 = Environment.init<A>(_:)();
  *(v28 + 8) = v29 & 1;
  if (v51)
  {
    v30 = v23;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v23, 0);
    (*(v48 + 8))(v16, v49);
    v30 = v71;
  }

  State.wrappedValue.getter();
  v32 = v64;
  dispatch thunk of TrainingLoadViewModelProvider.viewModel(for:)();

  v50(v12, DataType);
  type metadata accessor for TrainingLoadViewModelProvider();
  v33 = v54;
  static Date.now.getter();
  v35 = v62;
  v34 = v63;
  v36 = v59;
  (*(v62 + 104))(v59, enum case for Calendar.Identifier.gregorian(_:), v63);
  v37 = v57;
  Calendar.init(identifier:)();
  (*(v35 + 8))(v36, v34);
  v38 = DetailsChartView;
  static TrainingLoadViewModelProvider.createDayRange(now:days:gregorianCalendar:)();
  (*(v60 + 8))(v37, v61);
  (*(v56 + 8))(v33, v58);
  *(v32 + *(v38 + 24)) = sub_100579628() & 1;
  v39 = v32 + *(v38 + 28);
  *v39 = Environment.init<A>(_:)();
  *(v39 + 8) = v40 & 1;
  v41 = v68;
  v42 = v53;
  sub_10057E5D4(v68, v53, type metadata accessor for LoadTypeScrollView);
  v43 = v65;
  sub_10057E5D4(v32, v65, type metadata accessor for LoadDetailsChartView);
  v44 = v66;
  sub_10057E5D4(v42, v66, type metadata accessor for LoadTypeScrollView);
  v45 = sub_100140278(&qword_1008F3628);
  sub_10057E5D4(v43, v44 + *(v45 + 48), type metadata accessor for LoadDetailsChartView);
  sub_10057E63C(v32, type metadata accessor for LoadDetailsChartView);
  sub_10057E63C(v41, type metadata accessor for LoadTypeScrollView);
  sub_10057E63C(v43, type metadata accessor for LoadDetailsChartView);
  return sub_10057E63C(v42, type metadata accessor for LoadTypeScrollView);
}

void sub_10057CCF0(uint64_t a1)
{
  v2 = type metadata accessor for OvernightMetricsViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EffortUtilities.OvernightVitalsState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 56))
  {
    v14 = a1 + *(type metadata accessor for LoadDetailsView() + 56);
    v15 = *v14;
    if (*(v14 + 8) == 1)
    {
      v16 = v15;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v20 = v6;
      v17 = static Log.runtimeIssuesLog.getter();
      v21 = v3;
      v18 = v17;
      os_log(_:dso:log:_:_:)();

      v3 = v21;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v15, 0);
      (*(v7 + 8))(v9, v20);
      v16 = v22;
    }

    dispatch thunk of SleepingSampleViewModelProvider.overnightMetricsModel.getter();

    OvernightMetricsViewModel.overnightVitalsState.getter();
    (*(v3 + 8))(v5, v2);
    sub_10043DBA4(v13);
    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10057CFEC()
{
  result = sub_100579628();
  if (result)
  {
    type metadata accessor for LoadDetailsView();

    sub_100140278(&qword_1008DDBB8);
    State.wrappedValue.getter();
    State.wrappedValue.setter();
  }

  return result;
}