uint64_t sub_100EBF1E0(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v28 = a4;
  v30 = a3;
  v5 = *a1;
  v6 = a1[3];
  v7 = type metadata accessor for MergeResult();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardCRDTData(0);
  v10 = __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  sub_10123C0AC(v6);
  v29 = a2;
  v15 = *(a2 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v5 + v16, v14, type metadata accessor for CRLBoardCRDTData);
  v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v15 + v17, v12, type metadata accessor for CRLBoardCRDTData);
  sub_100ED5648(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);
  v18 = CRStruct_6.hasDelta(from:)();
  sub_10003D69C(v12, type metadata accessor for CRLBoardCRDTData);
  result = sub_10003D69C(v14, type metadata accessor for CRLBoardCRDTData);
  if (v18)
  {
    v20 = v33;
    result = sub_1012E0400(v29, &off_1018A75D0);
    if (!v20)
    {
      v21 = v29;
      sub_10004FECC(v5 + v16, v14, type metadata accessor for CRLBoardCRDTData);
      swift_beginAccess();

      v22 = v25;
      CRStruct_6.merge(_:)();
      sub_10003D69C(v14, type metadata accessor for CRLBoardCRDTData);
      (*(v26 + 8))(v22, v27);
      swift_endAccess();
      v23 = *(v5 + 40);
      v31[0] = *(v5 + 24);
      v31[1] = v23;
      v32 = *(v5 + 56);
      sub_1012F22F0(v31);

      return sub_1012CF6CC(v21, &off_1018A75D0, v28);
    }
  }

  return result;
}

uint64_t sub_100EBF540(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v196 = a7;
  v197 = a6;
  v204 = a4;
  v206 = a2;
  v207 = a3;
  v9 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v9 - 8);
  v189 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1005B981C(&unk_101A28650);
  v11 = *(v193 - 8);
  __chkstk_darwin(v193);
  v192 = &v176 - v12;
  v13 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v13 - 8);
  v195 = &v176 - v14;
  v15 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v200 = &v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 1);
  v19 = __chkstk_darwin(v17);
  v187 = &v176 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v194 = &v176 - v22;
  v23 = __chkstk_darwin(v21);
  v210 = &v176 - v24;
  __chkstk_darwin(v23);
  v211 = &v176 - v25;
  swift_beginAccess();
  v26 = *(a1 + 24);
  v215 = v26;
  if (v26 >> 62)
  {
    goto LABEL_89;
  }

  for (result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); result; result = _CocoaArrayWrapper.endIndex.getter())
  {
    v205 = a5;
    v199 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v190 = (v18 + 32);
    v191 = (v18 + 48);
    v184 = (v11 + 16);
    v185 = OBJC_IVAR____TtC8Freeform8CRLBoard_store;
    v186 = (v11 + 8);

    v198 = xmmword_10146C4D0;
    v180 = xmmword_10146BDE0;
    v188 = xmmword_10146CA70;
    v183 = xmmword_101465920;
    v182 = xmmword_10146C6B0;
    v209 = v17;
    v212 = (v18 + 8);
    while (1)
    {
      v11 = (v26 >> 62);
      if (!(v26 >> 62))
      {
        break;
      }

      if (v26 < 0)
      {
        v18 = v26;
      }

      else
      {
        v18 = v26 & 0xFFFFFFFFFFFFFF8;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        return result;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_93;
      }

LABEL_6:
      if ((v26 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v18 = *(v26 + 32);

        if (!v11)
        {
LABEL_9:
          v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_18;
        }
      }

      v28 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:
      if (!v28)
      {
        goto LABEL_86;
      }

      v29 = sub_10067853C(0, 1);
      v11 = *(v18 + 16);
      v30 = (*v11 + 264);
      v31 = *v30;
      a5 = v30;
      v32 = v210;
      (*v30)(v29);
      swift_beginAccess();

      v33 = v211;
      v34 = v32;
      v35 = v212;
      sub_100E6AF38(v211, v34);
      swift_endAccess();
      v36 = *v35;
      (*v35)(v33, v17);
      swift_beginAccess();
      v213 = v18;
      v18 = v36;

      v38 = sub_100799AD0(v37);
      (v31)(v38);
      LOBYTE(v36) = sub_10079C3B4(v33, v207);
      v39 = (v18)(v33, v17);
      if (v36)
      {
        if ((v204 & 1) == 0)
        {
          if (qword_1019F22B8 != -1)
          {
            swift_once();
          }

          v202 = static OS_os_log.boardItemLifecycle;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = v198;
          v45 = v211;
          v31();
          v46 = UUID.uuidString.getter();
          v48 = v47;
          (v18)(v45, v17);
          *(inited + 56) = &type metadata for String;
          v49 = sub_1000053B0();
          v208 = v18;
          v18 = v49;
          *(inited + 64) = v49;
          *(inited + 32) = v46;
          *(inited + 40) = v48;
          v214 = v11;
          type metadata accessor for CRLBoardItemData();

          v50 = String.init<A>(describing:)();
          *(inited + 96) = &type metadata for String;
          *(inited + 104) = v18;
          *(inited + 72) = v50;
          *(inited + 80) = v51;
          v52 = *&v205[v199];
          v53 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          swift_beginAccess();
          v54 = v52 + v53;
          v55 = v200;
          sub_10004FECC(v54, v200, type metadata accessor for CRLBoardCRDTData);
          sub_1005B981C(&unk_1019F5250);
          a5 = v210;
          CRRegister.wrappedValue.getter();
          sub_10003D69C(v55, type metadata accessor for CRLBoardCRDTData);
          v56 = UUID.uuidString.getter();
          v58 = v57;
          v208(a5, v209);
          *(inited + 136) = &type metadata for String;
          *(inited + 144) = v18;
          *(inited + 112) = v56;
          *(inited + 120) = v58;
          v59 = static os_log_type_t.default.getter();
          sub_100005404(v202, &_mh_execute_header, v59, "🚖 mergeDatabaseChanges() ignoring %{public}@%{public}@ because it is pending deletion, or is a realTimePeerDeletedItemIds. Board: %{public}@", 143, 0, inited);

          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          v17 = v209;
LABEL_34:
          swift_arrayDestroy();
          goto LABEL_35;
        }
      }

      else
      {
        (v31)(v39);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (v18)(v33, v17);
        v41 = v17;
        v42 = [v205 getBoardItemForUUID:isa];

        if (v42)
        {
          v43 = v203;
          (*((swift_isaMask & *v42) + 0x280))(v11, v197, v196);
          v203 = v43;
          if (v43)
          {
          }

          if ((v204 & 1) == 0)
          {
            v63 = v18;
            v64 = v211;
            if (qword_1019F22B8 != -1)
            {
              swift_once();
            }

            v202 = static OS_os_log.boardItemLifecycle;
            sub_1005B981C(&qword_1019F54E0);
            v65 = swift_initStackObject();
            *(v65 + 16) = v198;
            (*((swift_isaMask & *v42) + 0x88))();
            v66 = UUID.uuidString.getter();
            v68 = v67;
            v208 = v63;
            v63(v64, v209);
            *(v65 + 56) = &type metadata for String;
            v18 = sub_1000053B0();
            *(v65 + 64) = v18;
            *(v65 + 32) = v66;
            v201 = (v65 + 32);
            *(v65 + 40) = v68;
            v69 = v42;
            v70 = [v69 description];
            v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v73 = v72;

            *(v65 + 96) = &type metadata for String;
            *(v65 + 104) = v18;
            *(v65 + 72) = v71;
            *(v65 + 80) = v73;
            v74 = *&v205[v199];
            v75 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
            swift_beginAccess();
            v76 = v74 + v75;
            v77 = v200;
            sub_10004FECC(v76, v200, type metadata accessor for CRLBoardCRDTData);
            sub_1005B981C(&unk_1019F5250);
            v78 = v210;
            CRRegister.wrappedValue.getter();
            sub_10003D69C(v77, type metadata accessor for CRLBoardCRDTData);
            v79 = UUID.uuidString.getter();
            a5 = v80;
            v81 = v78;
            v82 = v209;
            v208(v81, v209);
            *(v65 + 136) = &type metadata for String;
            *(v65 + 144) = v18;
            *(v65 + 112) = v79;
            *(v65 + 120) = a5;
            v83 = static os_log_type_t.default.getter();
            sub_100005404(v202, &_mh_execute_header, v83, "🚖 mergeDatabaseChanges() modified %{public}@%{public}@. Board: %{public}@", 76, 0, v65);

            v17 = v82;

            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            goto LABEL_34;
          }

          v17 = v209;
        }

        else
        {
          v60 = v195;
          (*(*v11 + 272))();
          v61 = v60;
          v62 = (*v191)(v60, 1, v41);
          v17 = v41;
          if (v62 != 1)
          {
            v208 = v18;
            (*v190)(v194, v61, v41);
            v84 = UUID._bridgeToObjectiveC()().super.isa;
            v85 = v205;
            v86 = [v205 getContainerItemForUUID:v84];

            if (v86)
            {
              v202 = sub_100B6D698(v11, *&v85[v185]);
              v181 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
              type metadata accessor for CRLContainerItemData(0);
              v87 = *(*swift_dynamicCastClassUnconditional() + 840);
              v88 = v86;

              v90 = v189;
              v87(v89);

              (*v184)(v192, v90, v193);
              sub_10003D69C(v90, type metadata accessor for CRLContainerItemCRDTData);
              v201 = v88;
              if (v204)
              {
              }

              else
              {
                if (qword_1019F22B8 != -1)
                {
                  swift_once();
                }

                v179 = static OS_os_log.boardItemLifecycle;
                sub_1005B981C(&qword_1019F54E0);
                v132 = swift_initStackObject();
                *(v132 + 16) = v188;
                v133 = v211;
                (*(**&v86[v181] + 264))();
                v134 = v201;

                v135 = UUID.uuidString.getter();
                v137 = v136;
                v208(v133, v209);
                *(v132 + 56) = &type metadata for String;
                v138 = sub_1000053B0();
                *(v132 + 64) = v138;
                *(v132 + 32) = v135;
                v181 = v132 + 32;
                *(v132 + 40) = v137;
                v139 = v134;
                v140 = [v139 description];
                v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v143 = v142;

                *(v132 + 96) = &type metadata for String;
                *(v132 + 104) = v138;
                *(v132 + 72) = v141;
                *(v132 + 80) = v143;
                v144 = v202;
                v145 = v210;
                (*((swift_isaMask & *v202) + 0x88))();
                v146 = UUID.uuidString.getter();
                v148 = v147;
                v208(v145, v209);
                *(v132 + 136) = &type metadata for String;
                *(v132 + 144) = v138;
                *(v132 + 112) = v146;
                *(v132 + 120) = v148;
                v149 = v144;
                v150 = [v149 description];
                v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v153 = v152;

                *(v132 + 176) = &type metadata for String;
                *(v132 + 184) = v138;
                *(v132 + 152) = v151;
                *(v132 + 160) = v153;
                v154 = *&v205[v199];
                v155 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
                swift_beginAccess();
                v156 = v154 + v155;
                v157 = v200;
                sub_10004FECC(v156, v200, type metadata accessor for CRLBoardCRDTData);
                sub_1005B981C(&unk_1019F5250);
                v158 = v187;
                CRRegister.wrappedValue.getter();
                sub_10003D69C(v157, type metadata accessor for CRLBoardCRDTData);
                v159 = UUID.uuidString.getter();
                v161 = v160;
                v208(v158, v209);
                *(v132 + 216) = &type metadata for String;
                *(v132 + 224) = v138;
                *(v132 + 192) = v159;
                *(v132 + 200) = v161;
                v162 = static os_log_type_t.default.getter();
                sub_100005404(v179, &_mh_execute_header, v162, "🚖 🟢 mergeDatabaseChanges() parent %{public}@%{public}@ created %{public}@%{public}@. Board: %{public}@", 108, 0, v132);
                swift_setDeallocating();
                sub_1005B981C(&unk_1019F5670);
                swift_arrayDestroy();
              }

              v163 = v203;
              v164 = CROrderedSet.index(where:)();
              v166 = v165;
              v18 = v163;
              sub_1005B981C(&unk_1019F4D60);
              v167 = swift_allocObject();
              *(v167 + 16) = v183;
              v168 = v202;
              *(v167 + 32) = v202;
              v169 = v168;
              if (v166)
              {
                v164 = NSNotFound.getter();
              }

              v17 = v209;
              sub_1005B981C(&unk_101A09DB0);
              a5 = swift_initStackObject();
              *(a5 + 16) = v182;
              *(a5 + 32) = v164;
              *(a5 + 40) = v167;
              v170 = sub_100BD4E94(a5);
              swift_setDeallocating();
              sub_10000CAAC(a5 + 32, &qword_101A039D0);
              v26 = v201;
              sub_100971EFC(v170, v197);
              if (!v163)
              {
                v203 = 0;

                (*v186)(v192, v193);
                v171 = v194;
LABEL_76:
                v208(v171, v17);
                goto LABEL_35;
              }

LABEL_82:

              (*v186)(v192, v193);
              v208(v194, v17);
            }

            v201 = sub_1005B981C(&qword_1019F54E0);
            v91 = swift_initStackObject();
            *(v91 + 16) = v180;
            v92 = v211;
            v31();
            v93 = UUID.uuidString.getter();
            v95 = v94;
            v208(v92, v41);
            *(v91 + 56) = &type metadata for String;
            v96 = sub_1000053B0();
            *(v91 + 32) = v93;
            v202 = (v91 + 32);
            *(v91 + 64) = v96;
            *(v91 + 40) = v95;
            v97 = UUID.uuidString.getter();
            *(v91 + 96) = &type metadata for String;
            *(v91 + 104) = v96;
            v179 = v96;
            *(v91 + 72) = v97;
            *(v91 + 80) = v98;
            v176 = objc_opt_self();
            v99 = [v176 _atomicIncrementAssertCount];
            v214 = [objc_allocWithZone(NSString) init];
            v181 = v91;
            sub_100604538(v91, &v214);
            StaticString.description.getter();
            v178 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v100 = String._bridgeToObjectiveC()();

            v101 = [v100 lastPathComponent];

            v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v103 = v102;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v104 = static OS_os_log.crlAssert;
            v105 = swift_initStackObject();
            *(v105 + 16) = v188;
            *(v105 + 56) = &type metadata for Int32;
            *(v105 + 64) = &protocol witness table for Int32;
            *(v105 + 32) = v99;
            v106 = sub_100006370(0, &qword_1019F4D30);
            *(v105 + 96) = v106;
            v107 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
            v108 = v178;
            *(v105 + 72) = v178;
            v109 = v179;
            *(v105 + 136) = &type metadata for String;
            *(v105 + 144) = v109;
            v110 = v177;
            *(v105 + 104) = v107;
            *(v105 + 112) = v110;
            *(v105 + 120) = v103;
            *(v105 + 176) = &type metadata for UInt;
            *(v105 + 152) = 344;
            v111 = v214;
            *(v105 + 216) = v106;
            *(v105 + 224) = v107;
            *(v105 + 184) = &protocol witness table for UInt;
            *(v105 + 192) = v111;
            v112 = v108;
            v113 = v111;
            v114 = static os_log_type_t.error.getter();
            sub_100005404(v104, &_mh_execute_header, v114, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v105);
            swift_setDeallocating();
            v179 = sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v115 = static os_log_type_t.error.getter();
            v116 = v104;
            v117 = v181;
            sub_100005404(v116, &_mh_execute_header, v115, "Unable to create item %@ because expected parent %@ does not exist.", 67, 2, v181);

            type metadata accessor for __VaListBuilder();
            v17 = swift_allocObject();
            v17[2] = 8;
            v17[3] = 0;
            v118 = v17 + 3;
            v17[4] = 0;
            v17[5] = 0;
            v201 = *(v117 + 16);
            if (!v201)
            {
LABEL_75:
              v172 = __VaListBuilder.va_list()();
              StaticString.description.getter();
              v18 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v173 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              a5 = v174;
              v175 = String._bridgeToObjectiveC()();

              [v176 handleFailureInFunction:v18 file:v173 lineNumber:344 isFatal:0 format:v175 args:v172];

              swift_setDeallocating();
              swift_arrayDestroy();

              v171 = v194;
              v17 = v209;
              goto LABEL_76;
            }

            v119 = 0;
            while (2)
            {
              v120 = &v202[40 * v119];
              v18 = *(v120 + 3);
              v26 = sub_100020E58(v120, v18);
              result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
              a5 = *v118;
              v121 = *(result + 16);
              v122 = __OFADD__(*v118, v121);
              v123 = *v118 + v121;
              if (v122)
              {
                goto LABEL_85;
              }

              v26 = v17[4];
              if (v26 >= v123)
              {
LABEL_60:
                v126 = v17[5];
                if (!v126)
                {
                  goto LABEL_91;
                }
              }

              else
              {
                if (v26 + 0x4000000000000000 < 0)
                {
                  goto LABEL_87;
                }

                v18 = v17[5];
                if (2 * v26 > v123)
                {
                  v123 = 2 * v26;
                }

                v17[4] = v123;
                if ((v123 - 0x1000000000000000) >> 61 != 7)
                {
                  goto LABEL_88;
                }

                v124 = result;
                v125 = swift_slowAlloc();
                v126 = v125;
                v17[5] = v125;
                if (v18)
                {
                  if (v125 != v18 || v125 >= v18 + 8 * a5)
                  {
                    memmove(v125, v18, 8 * a5);
                  }

                  v26 = v17;
                  __VaListBuilder.deallocStorage(wordCount:storage:)();
                  result = v124;
                  goto LABEL_60;
                }

                result = v124;
                if (!v126)
                {
LABEL_91:
                  __break(1u);
                  goto LABEL_92;
                }
              }

              v128 = *(result + 16);
              if (v128)
              {
                v129 = (result + 32);
                v130 = *v118;
                while (1)
                {
                  v131 = *v129++;
                  v126[v130] = v131;
                  v130 = *v118 + 1;
                  if (__OFADD__(*v118, 1))
                  {
                    break;
                  }

                  *v118 = v130;
                  if (!--v128)
                  {
                    goto LABEL_45;
                  }
                }

                __break(1u);
                goto LABEL_82;
              }

LABEL_45:

              if (++v119 == v201)
              {
                goto LABEL_75;
              }

              continue;
            }
          }

          sub_10000CAAC(v61, &qword_1019F6990);
        }
      }

LABEL_35:
      v26 = v215;
      if (v215 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
        }
      }

      else if (!*((v215 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
      }
    }

    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    ;
  }

  return result;
}

uint64_t sub_100EC0CC8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a2 + 264))(v5);
  LOBYTE(a2) = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v7, v3);
  return a2 & 1;
}

uint64_t sub_100EC0DE8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v80 = a3;
  v73 = a1;
  v74 = a2;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v75 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v81 = &v67 - v8;
  v9 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v9 - 8);
  v72 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v82 = *(v11 - 8);
  v83 = v11;
  __chkstk_darwin(v11);
  v71 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v13 - 8);
  v79 = (&v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v67 - v16;
  v18 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  v78 = v18;
  sub_10000BE14(v3 + v18, v17, &qword_101A08DF0);
  v19 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v76 = *(v19 - 8);
  v77 = v19;
  if ((*(v76 + 48))(v17, 1) != 1)
  {
    v68 = v3;
    v70 = v17;
    v69 = objc_opt_self();
    v20 = [v69 _atomicIncrementAssertCount];
    v85 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v85);
    StaticString.description.getter();
    v67 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v20;
    v28 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v28;
    v29 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v29;
    v30 = v67;
    *(inited + 72) = v67;
    *(inited + 136) = &type metadata for String;
    v31 = sub_1000053B0();
    *(inited + 112) = v23;
    *(inited + 120) = v25;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v31;
    *(inited + 152) = 466;
    v32 = v85;
    *(inited + 216) = v28;
    *(inited + 224) = v29;
    *(inited + 192) = v32;
    v33 = v30;
    v34 = v32;
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v36, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v37 = swift_allocObject();
    v37[2] = 8;
    v37[3] = 0;
    v37[4] = 0;
    v37[5] = 0;
    v38 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v41 = String._bridgeToObjectiveC()();

    [v69 handleFailureInFunction:v39 file:v40 lineNumber:466 isFatal:0 format:v41 args:v38];

    v17 = v70;
    v4 = v68;
  }

  sub_10000CAAC(v17, &qword_101A08DF0);
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v70 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_10146C6B0;
  v69 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v43 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v44 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v68 = type metadata accessor for CRLBoardCRDTData;
  v45 = v72;
  sub_10004FECC(v43 + v44, v72, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  v46 = v71;
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v45, type metadata accessor for CRLBoardCRDTData);
  v47 = UUID.uuidString.getter();
  v48 = v4;
  v50 = v49;
  (*(v82 + 8))(v46, v83);
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = sub_1000053B0();
  *(v42 + 32) = v47;
  *(v42 + 40) = v50;
  v51 = v48;
  v52 = static os_log_type_t.default.getter();
  sub_100005404(v70, &_mh_execute_header, v52, "CRLBoard: Entering real time collaboration session for board %{public}@", 71, 2, v42);
  swift_setDeallocating();
  sub_100005070(v42 + 32);
  v53 = *&v69[v48];
  v54 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v53 + v54, v45, v68);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v45, type metadata accessor for CRLBoardCRDTData);
  v55 = v74;

  v56 = v81;
  sub_10084BD4C(v46, v73, v55, v81);
  v57 = v75;
  v58 = sub_10004FECC(v56, v75, type metadata accessor for CRLBoardIdentifier);
  (*(**(*(v48 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v58);
  type metadata accessor for CRLBoardChangeSet(0);
  swift_allocObject();
  v59 = sub_100768A10(v57, v46, 1);
  v84 = *(v59 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_uncommittedChangeAvailablePublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1005B981C(&unk_101A22680);
  sub_10001A2F8(&qword_101A12980, &unk_101A22680);
  v60 = Publisher<>.sink(receiveValue:)();

  *(v48 + OBJC_IVAR____TtC8Freeform8CRLBoard_realTimePendingChangesCancellable) = v60;

  v61 = v77;
  v62 = v79;
  (*(v82 + 16))(v79 + *(v77 + 20), v80, v83);
  *v62 = v59;
  v63 = *(v61 + 24);
  type metadata accessor for CRLCollaborationParticipantCollection(0);
  swift_allocObject();

  *(v62 + v63) = sub_1007E0100();
  Date.init()();
  (*(v76 + 56))(v62, 0, 1, v61);
  v64 = v78;
  swift_beginAccess();
  sub_10002C638(v62, v51 + v64, &qword_101A08DF0);
  swift_endAccess();
  v65 = [objc_opt_self() defaultCenter];
  if (qword_1019F2580 != -1)
  {
    swift_once();
  }

  [v65 postNotificationName:qword_101AD86B8 object:v51];

  return sub_10003D69C(v56, type metadata accessor for CRLBoardIdentifier);
}

void sub_100EC18EC(char *a1, uint64_t a2, void *a3)
{
  v5 = sub_1005B981C(&unk_101A22690);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11 - 8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27[1] = *(Strong + *a3);
    v19 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v20 = *(Strong + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v21 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    v22 = Strong;
    swift_beginAccess();
    sub_10004FECC(v20 + v21, v10, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10003D69C(v10, type metadata accessor for CRLBoardCRDTData);
    v23 = (*&v22[v19] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v24 = *v23;
    v25 = v23[1];

    sub_10084BD4C(v13, v24, v25, v16);
    v26 = *(v5 + 48);
    sub_100EDD3F4(v16, v7, type metadata accessor for CRLBoardIdentifier);
    v7[v26] = v17;
    PassthroughSubject.send(_:)();
    sub_10000CAAC(v7, &unk_101A22690);
  }
}

uint64_t sub_100EC1CB0()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v8 - 8);
  v34 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v1 + v17, v12, &qword_101A08DF0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_10000CAAC(v12, &qword_101A08DF0);
  }

  v31 = v16;
  sub_100EDD3F4(v12, v16, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v30 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v20 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v21 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v20 + v21, v4, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v22 = UUID.uuidString.getter();
  v24 = v23;
  (*(v32 + 8))(v7, v33);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v22;
  *(inited + 40) = v24;
  v25 = static os_log_type_t.default.getter();
  sub_100005404(v30, &_mh_execute_header, v25, "CRLBoard: Exiting real time collaboration session for board %{public}@", 70, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v26 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimePendingChangesCancellable;
  if (*(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_realTimePendingChangesCancellable))
  {

    AnyCancellable.cancel()();
  }

  *(v1 + v26) = 0;

  v27 = v31;
  sub_100768EB0(0);
  v28 = v34;
  (*(v14 + 56))(v34, 1, 1, v13);
  swift_beginAccess();
  sub_10002C638(v28, v1 + v17, &qword_101A08DF0);
  swift_endAccess();
  v29 = [objc_opt_self() defaultCenter];
  if (qword_1019F2580 != -1)
  {
    swift_once();
  }

  [v29 postNotificationName:qword_101AD86B8 object:v1];

  return sub_10003D69C(v27, type metadata accessor for CRLBoard.RealTimeSessionInfo);
}

char *sub_100EC224C()
{
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1 - 8);
  v82 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v3 - 8);
  v83 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v81 = &v73 - v6;
  v7 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v7 - 8);
  v77 = (&v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v0;
  v18 = *(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v19 = *(v18 + 56);
  v20 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  v86 = *(v18 + 24);
  v85 = *(v18 + 40);
  swift_beginAccess();
  v80 = type metadata accessor for CRLBoardCRDTData;
  v79 = v17;
  sub_10004FECC(v18 + v20, v17, type metadata accessor for CRLBoardCRDTData);
  v84 = v18;
  v22 = *(v18 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v21 = *(v18 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);
  type metadata accessor for CRLBoardData(0);
  v23 = swift_allocObject();
  *(v23 + 16) = 7;
  *(v23 + 40) = v85;
  *(v23 + 24) = v86;
  *(v23 + 56) = v19;
  v24 = v23;
  v78 = v23;
  sub_100EDD3F4(v17, v23 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, type metadata accessor for CRLBoardCRDTData);
  v25 = (v24 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  *v25 = v22;
  v25[1] = v21;
  type metadata accessor for CRLContainerItemData(0);
  v26 = swift_dynamicCastClassUnconditional();
  v27 = *(*v26 + 736);
  swift_beginAccess();
  sub_10000BE14(v26 + v27, v14, &unk_101A226A0);
  v28 = *(*swift_dynamicCastClassUnconditional() + 840);

  v30 = v77;
  v28(v29);

  v91[0] = 0x1000000000000;
  v91[1] = 0x2000400000000;
  v91[2] = 0x1000000000000;
  v91[3] = 0;
  v92 = 1;
  v31 = swift_allocObject();
  v76 = type metadata accessor for CRLContainerItemCRDTData;
  v32 = v30;
  sub_10004FECC(v30, v31 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000BE14(v14, v11, &unk_101A226A0);
  sub_10000BE14(v11, v31 + *(*v31 + 736), &unk_101A226A0);
  *&v85 = sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v11, &unk_101A226A0);
  v74 = type metadata accessor for CRLContainerItemCRDTData;
  sub_10003D69C(v30, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v14, &unk_101A226A0);
  *&v86 = sub_100747AF0(v91, 4);
  v33 = v75;
  v34 = swift_dynamicCastClassUnconditional();
  v35 = *(*v34 + 736);
  swift_beginAccess();
  sub_10000BE14(v34 + v35, v14, &unk_101A226A0);
  v36 = *(*swift_dynamicCastClassUnconditional() + 840);

  v36(v37);

  v38 = swift_allocObject();
  sub_10004FECC(v32, v38 + qword_101AD8098, v76);
  sub_10000BE14(v14, v11, &unk_101A226A0);
  sub_10000BE14(v11, v38 + *(*v38 + 736), &unk_101A226A0);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v11, &unk_101A226A0);
  sub_10003D69C(v32, v74);
  sub_10000CAAC(v14, &unk_101A226A0);
  v76 = sub_100747AF0(v91, 4);
  v39 = *(v33 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  LOBYTE(v28) = *(v33 + OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported);
  v77 = type metadata accessor for CRLBoard(0);
  v40 = objc_allocWithZone(v77);
  *&v40[OBJC_IVAR____TtC8Freeform8CRLBoard_transactionContext] = 0;
  v41 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  v42 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  (*(*(v42 - 8) + 56))(&v40[v41], 1, 1, v42);
  *&v40[OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  v43 = &v40[OBJC_IVAR____TtC8Freeform8CRLBoard_fixupData];
  *v43 = _swiftEmptySetSingleton;
  v43[1] = _swiftEmptySetSingleton;
  *&v40[OBJC_IVAR____TtC8Freeform8CRLBoard_cancellables] = _swiftEmptySetSingleton;
  v44 = OBJC_IVAR____TtC8Freeform8CRLBoard_opportunisticallyBuiltAffectedItemSetIncludingParents;
  *&v40[v44] = sub_100BD4D84(_swiftEmptyArrayStorage);
  v45 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedChangeAvailablePublisher;
  sub_1005B981C(&unk_101A22670);
  swift_allocObject();
  *&v40[v45] = PassthroughSubject.init()();
  v46 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedRealTimeChangesAvailablePublisher;
  swift_allocObject();
  *&v40[v46] = PassthroughSubject.init()();
  v47 = OBJC_IVAR____TtC8Freeform8CRLBoard_changeSummaryPublisher;
  sub_1005B981C(&qword_101A12970);
  swift_allocObject();
  *&v40[v47] = PassthroughSubject.init()();
  *&v40[OBJC_IVAR____TtC8Freeform8CRLBoard_realTimePendingChangesCancellable] = 0;
  swift_unknownObjectWeakInit();
  *&v40[OBJC_IVAR____TtC8Freeform8CRLBoard_store] = v39;
  v48 = v78;
  *&v40[OBJC_IVAR____TtC8Freeform8CRLBoard_data] = v78;
  v40[OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported] = v28;
  v49 = type metadata accessor for CRLRootContainerItem(0);
  v50 = objc_allocWithZone(v49);
  swift_unknownObjectWeakInit();
  *&v50[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v50[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v50[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v50[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v50[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v50[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v39;
  *&v50[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v86;
  v51 = type metadata accessor for CRLBoardItemBase(0);
  v90.receiver = v50;
  v90.super_class = v51;
  v52 = v39;

  v53 = objc_msgSendSuper2(&v90, "init");
  v54 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
  *&v40[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] = v53;
  v55 = objc_allocWithZone(v49);
  swift_unknownObjectWeakInit();
  *&v55[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v55[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v55[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v55[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v55[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v55[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v52;
  *&v55[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v76;
  v89.receiver = v55;
  v89.super_class = v51;
  v56 = v52;

  *&v40[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] = objc_msgSendSuper2(&v89, "init");
  v57 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v58 = v48 + v57;
  v59 = v79;
  sub_10004FECC(v58, v79, v80);
  v60 = v82;
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v59, type metadata accessor for CRLBoardCRDTData);
  v61 = *(v48 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v62 = *(v48 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

  v63 = v81;
  sub_10084BD4C(v60, v61, v62, v81);
  v64 = v83;
  v65 = sub_10004FECC(v63, v83, type metadata accessor for CRLBoardIdentifier);
  (*(**(*&v40[v54] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v65);
  type metadata accessor for CRLBoardChangeSet(0);
  swift_allocObject();
  *&v40[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] = sub_100768A10(v64, v60, 0);
  type metadata accessor for CRLFreehandDrawingShapeItemBucketManager();
  v66 = swift_allocObject();
  sub_1005B981C(&qword_101A12978);
  v67 = swift_allocObject();
  *(v67 + 16) = _swiftEmptyDictionarySingleton;
  *(v67 + 24) = _swiftEmptyDictionarySingleton;
  *(v66 + 16) = v67;
  *&v40[OBJC_IVAR____TtC8Freeform8CRLBoard_freehandDrawingBucketManager] = v66;
  type metadata accessor for CRLActiveBoardShareState();
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  swift_unknownObjectWeakInit();
  v69 = *(v68 + 16);
  *(v68 + 16) = 0;

  *&v40[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] = v68;
  *&v40[OBJC_IVAR____TtC8Freeform8CRLBoard_lastSaveChangesTime] = 0;
  v88.receiver = v40;
  v88.super_class = v77;
  v70 = objc_msgSendSuper2(&v88, "init");
  swift_unknownObjectWeakAssign();
  v87 = *(*&v70[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_uncommittedChangeAvailablePublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = v70;

  sub_1005B981C(&unk_101A22680);
  sub_10001A2F8(&qword_101A12980, &unk_101A22680);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10003D69C(v63, type metadata accessor for CRLBoardIdentifier);
  return v71;
}

uint64_t sub_100EC307C(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v65 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v62);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v59 - v8;
  v10 = sub_1005B981C(&qword_101A227A8);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - v11;
  type metadata accessor for CRLBoard(0);
  v68 = a1;
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v71 = _swiftEmptyDictionarySingleton;
    v63 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v64 = v1;
    v15 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FECC(v15 + v16, v9, type metadata accessor for CRLBoardCRDTData);
    v17 = *(v14 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v18 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FECC(v17 + v18, v6, type metadata accessor for CRLBoardCRDTData);
    sub_100ED5648(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);
    swift_unknownObjectRetain();
    CRStruct_6.actionUndoingDifference(from:)();
    sub_10003D69C(v6, type metadata accessor for CRLBoardCRDTData);
    sub_10003D69C(v9, type metadata accessor for CRLBoardCRDTData);
    v19 = sub_1005B981C(&unk_101A227B0);
    if ((*(*(v19 - 1) + 48))(v12, 1, v19) == 1)
    {
      sub_10000CAAC(v12, &qword_101A227A8);
      v69 = 0u;
      v70 = 0u;
    }

    else
    {
      v20 = v19[12];
      v21 = v19[16];
      v22 = v19[24];
      v60 = v19[20];
      v61 = v22;
      v62 = v19[28];
      *(&v70 + 1) = v19;
      v23 = sub_10002C58C(&v69);
      v24 = v19[12];
      v25 = v19[16];
      v26 = v19[20];
      v59 = v19[24];
      v27 = v19[28];
      sub_10003DFF8(v12, v23, &qword_1019FDFB0);
      sub_10003DFF8(&v12[v20], v23 + v24, &unk_101A22820);
      sub_10003DFF8(&v12[v21], v23 + v25, &qword_1019FDFC0);
      sub_10003DFF8(&v12[v60], v23 + v26, &qword_101A22830);
      sub_10003DFF8(&v12[v61], v23 + v59, &qword_101A22838);
      sub_10003DFF8(&v12[v62], v23 + v27, &unk_101A22840);
    }

    sub_100BC1CF0(&v69, 2);
    v28 = *(v64 + v63);
    v29 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FECC(v28 + v29, v9, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    v30 = v65;
    CRRegister.wrappedValue.getter();
    sub_10003D69C(v9, type metadata accessor for CRLBoardCRDTData);
    v31 = sub_1010A7F08(v71);

    swift_unknownObjectRelease();
    type metadata accessor for CRLTransactableUndoingMutations(0);
    v32 = swift_allocObject();
    (*(v66 + 32))(v32 + OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_id, v30, v67);
    *(v32 + OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values) = v31;
    return v32;
  }

  else
  {
    v34 = objc_opt_self();
    v35 = [v34 _atomicIncrementAssertCount];
    *&v69 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v69);
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    v38 = [v37 lastPathComponent];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v42 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v35;
    v44 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v44;
    v45 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v45;
    *(inited + 72) = v36;
    *(inited + 136) = &type metadata for String;
    v46 = sub_1000053B0();
    *(inited + 112) = v39;
    *(inited + 120) = v41;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v46;
    *(inited + 152) = 550;
    v47 = v69;
    *(inited + 216) = v44;
    *(inited + 224) = v45;
    *(inited + 192) = v47;
    v48 = v36;
    v49 = v47;
    v50 = static os_log_type_t.error.getter();
    sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v51 = static os_log_type_t.error.getter();
    sub_100005404(v42, &_mh_execute_header, v51, "Tried to undo from mismatched type", 34, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Tried to undo from mismatched type");
    type metadata accessor for __VaListBuilder();
    v52 = swift_allocObject();
    v52[2] = 8;
    v52[3] = 0;
    v52[4] = 0;
    v52[5] = 0;
    v53 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    [v34 handleFailureInFunction:v54 file:v55 lineNumber:550 isFatal:1 format:v56 args:v53];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v57, v58);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100EC3948(char *a1)
{
  v3 = type metadata accessor for UUID();
  v150 = *(v3 - 8);
  v151 = v3;
  __chkstk_darwin(v3);
  v149 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1005B981C(&qword_101A227C8);
  v143 = *(v152 - 1);
  __chkstk_darwin(v152);
  v140 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v139 = &v135 - v7;
  __chkstk_darwin(v8);
  v138 = &v135 - v9;
  __chkstk_darwin(v10);
  v137 = &v135 - v11;
  __chkstk_darwin(v12);
  v136 = &v135 - v13;
  __chkstk_darwin(v14);
  v153 = &v135 - v15;
  v142 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v142);
  v17 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v135 - v19;
  v21 = sub_1005B981C(&qword_101A227D0);
  __chkstk_darwin(v21 - 8);
  v141 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v135 - v24;
  type metadata accessor for CRLBoard(0);
  v144 = a1;
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v148 = v1;
    v146 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v28 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v29 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FECC(v28 + v29, v20, type metadata accessor for CRLBoardCRDTData);
    v30 = *(v27 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v31 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FECC(v30 + v31, v17, type metadata accessor for CRLBoardCRDTData);
    sub_100ED5648(&unk_101A22770, type metadata accessor for CRLBoardCRDTData);
    swift_unknownObjectRetain();
    CRType.observableDifference(from:)();
    sub_10003D69C(v17, type metadata accessor for CRLBoardCRDTData);
    sub_10003D69C(v20, type metadata accessor for CRLBoardCRDTData);
    v32 = v141;
    sub_10000BE14(v25, v141, &qword_101A227D0);
    v33 = v152;
    v34 = (*(v143 + 48))(v32, 1, v152);
    v145 = v27;
    v147 = v25;
    if (v34 == 1)
    {
      sub_10000CAAC(v32, &qword_101A227D0);
      v35 = _swiftEmptyArrayStorage;
    }

    else
    {
      v144 = v20;
      v36 = v153;
      sub_10003DFF8(v32, v153, &qword_101A227C8);
      v37 = v36;
      v38 = v136;
      sub_10000BE14(v37, v136, &qword_101A227C8);
      v39 = v33[12];
      v40 = v33[16];
      v41 = v33[20];
      v42 = v33[24];
      v43 = v33[28];
      v44 = type metadata accessor for CRValueObservableDifference();
      v45 = *(v44 - 8);
      v46 = *(v45 + 48);
      v141 = v45 + 48;
      v142 = v46;
      v47 = v46(v38, 1, v44);
      v143 = v44;
      if (v47 == 1)
      {
        sub_10000CAAC(v38 + v43, &qword_101A227D8);
        sub_10000CAAC(v38 + v42, &qword_101A227E0);
        sub_10000CAAC(v38 + v41, &unk_101A227E8);
        sub_10000CAAC(v38 + v40, &qword_101A01F00);
        sub_10000CAAC(v38 + v39, &qword_101A227F8);
        sub_10000CAAC(v38, &qword_101A01F00);
        v35 = _swiftEmptyArrayStorage;
        v48 = v153;
        v49 = v137;
      }

      else
      {
        sub_10000CAAC(v38, &qword_101A01F00);
        sub_10000CAAC(v38 + v43, &qword_101A227D8);
        sub_10000CAAC(v38 + v42, &qword_101A227E0);
        sub_10000CAAC(v38 + v41, &unk_101A227E8);
        sub_10000CAAC(v38 + v40, &qword_101A01F00);
        sub_10000CAAC(v38 + v39, &qword_101A227F8);
        v35 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v51 = *(v35 + 2);
        v50 = *(v35 + 3);
        if (v51 >= v50 >> 1)
        {
          v35 = sub_100024CBC((v50 > 1), v51 + 1, 1, v35);
        }

        v48 = v153;
        v49 = v137;
        *(v35 + 2) = v51 + 1;
        v52 = &v35[16 * v51];
        *(v52 + 4) = 25705;
        *(v52 + 5) = 0xE200000000000000;
      }

      sub_10000BE14(v48, v49, &qword_101A227C8);
      v53 = v33[12];
      v54 = v33[16];
      v55 = v33[20];
      v56 = v33[24];
      v57 = v33[28];
      v58 = sub_1005B981C(&qword_101A22800);
      if ((*(*(v58 - 8) + 48))(v49 + v53, 1, v58) == 1)
      {
        sub_10000CAAC(v49 + v57, &qword_101A227D8);
        sub_10000CAAC(v49 + v56, &qword_101A227E0);
        sub_10000CAAC(v49 + v55, &unk_101A227E8);
        sub_10000CAAC(v49 + v54, &qword_101A01F00);
        sub_10000CAAC(v49 + v53, &qword_101A227F8);
        sub_10000CAAC(v49, &qword_101A01F00);
        v59 = v143;
      }

      else
      {
        sub_10000CAAC(v49 + v53, &qword_101A227F8);
        sub_10000CAAC(v49 + v57, &qword_101A227D8);
        sub_10000CAAC(v49 + v56, &qword_101A227E0);
        sub_10000CAAC(v49 + v55, &unk_101A227E8);
        sub_10000CAAC(v49 + v54, &qword_101A01F00);
        sub_10000CAAC(v49, &qword_101A01F00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_100024CBC(0, *(v35 + 2) + 1, 1, v35);
        }

        v59 = v143;
        v61 = *(v35 + 2);
        v60 = *(v35 + 3);
        if (v61 >= v60 >> 1)
        {
          v35 = sub_100024CBC((v60 > 1), v61 + 1, 1, v35);
        }

        *(v35 + 2) = v61 + 1;
        v62 = &v35[16 * v61];
        *(v62 + 4) = 0xD000000000000015;
        *(v62 + 5) = 0x80000001015AD790;
      }

      v63 = v138;
      sub_10000BE14(v48, v138, &qword_101A227C8);
      v64 = v33[12];
      v65 = v33;
      v66 = v33[16];
      v67 = v65[20];
      v68 = v65[24];
      v69 = v65[28];
      if (v142(v63 + v66, 1, v59) == 1)
      {
        sub_10000CAAC(v63 + v69, &qword_101A227D8);
        sub_10000CAAC(v63 + v68, &qword_101A227E0);
        sub_10000CAAC(v63 + v67, &unk_101A227E8);
        sub_10000CAAC(v63 + v66, &qword_101A01F00);
        sub_10000CAAC(v63 + v64, &qword_101A227F8);
        sub_10000CAAC(v63, &qword_101A01F00);
        v20 = v144;
        v71 = v152;
        v70 = v153;
        v72 = v139;
      }

      else
      {
        sub_10000CAAC(v63 + v66, &qword_101A01F00);
        sub_10000CAAC(v63 + v69, &qword_101A227D8);
        sub_10000CAAC(v63 + v68, &qword_101A227E0);
        sub_10000CAAC(v63 + v67, &unk_101A227E8);
        sub_10000CAAC(v63 + v64, &qword_101A227F8);
        sub_10000CAAC(v63, &qword_101A01F00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_100024CBC(0, *(v35 + 2) + 1, 1, v35);
        }

        v20 = v144;
        v71 = v152;
        v70 = v153;
        v72 = v139;
        v74 = *(v35 + 2);
        v73 = *(v35 + 3);
        if (v74 >= v73 >> 1)
        {
          v108 = v153;
          v35 = sub_100024CBC((v73 > 1), v74 + 1, 1, v35);
          v70 = v108;
        }

        *(v35 + 2) = v74 + 1;
        v75 = &v35[16 * v74];
        *(v75 + 4) = 0x656C746974;
        *(v75 + 5) = 0xE500000000000000;
      }

      sub_10000BE14(v70, v72, &qword_101A227C8);
      v76 = v71[12];
      v77 = v71[16];
      v78 = v71[20];
      v79 = v71[24];
      v80 = v71[28];
      v81 = sub_1005B981C(&qword_101A22808);
      if ((*(*(v81 - 8) + 48))(v72 + v78, 1, v81) == 1)
      {
        sub_10000CAAC(v72 + v80, &qword_101A227D8);
        sub_10000CAAC(v72 + v79, &qword_101A227E0);
        sub_10000CAAC(v72 + v78, &unk_101A227E8);
        sub_10000CAAC(v72 + v77, &qword_101A01F00);
        sub_10000CAAC(v72 + v76, &qword_101A227F8);
        sub_10000CAAC(v72, &qword_101A01F00);
        v82 = v140;
      }

      else
      {
        sub_10000CAAC(v72 + v78, &unk_101A227E8);
        sub_10000CAAC(v72 + v80, &qword_101A227D8);
        sub_10000CAAC(v72 + v79, &qword_101A227E0);
        sub_10000CAAC(v72 + v77, &qword_101A01F00);
        sub_10000CAAC(v72 + v76, &qword_101A227F8);
        sub_10000CAAC(v72, &qword_101A01F00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_100024CBC(0, *(v35 + 2) + 1, 1, v35);
        }

        v82 = v140;
        v84 = *(v35 + 2);
        v83 = *(v35 + 3);
        if (v84 >= v83 >> 1)
        {
          v35 = sub_100024CBC((v83 > 1), v84 + 1, 1, v35);
        }

        *(v35 + 2) = v84 + 1;
        v85 = &v35[16 * v84];
        *(v85 + 4) = 0x7453747265736E69;
        *(v85 + 5) = 0xEF61746144656C79;
      }

      v86 = v153;
      sub_10000BE14(v153, v82, &qword_101A227C8);
      v87 = v152[12];
      v88 = v152[16];
      v89 = v152[20];
      v90 = v152[24];
      v91 = v152[28];
      v92 = sub_1005B981C(&unk_101A22810);
      if ((*(*(v92 - 8) + 48))(v82 + v91, 1, v92) != 1)
      {
        sub_10000CAAC(v82 + v91, &qword_101A227D8);
        sub_10000CAAC(v82 + v90, &qword_101A227E0);
        sub_10000CAAC(v82 + v89, &unk_101A227E8);
        sub_10000CAAC(v82 + v88, &qword_101A01F00);
        sub_10000CAAC(v82 + v87, &qword_101A227F8);
        sub_10000CAAC(v82, &qword_101A01F00);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_100024CBC(0, *(v35 + 2) + 1, 1, v35);
        }

        v94 = v150;
        v93 = v151;
        v95 = v149;
        v99 = v153;
        v96 = v146;
        v101 = *(v35 + 2);
        v100 = *(v35 + 3);
        if (v101 >= v100 >> 1)
        {
          v109 = v153;
          v35 = sub_100024CBC((v100 > 1), v101 + 1, 1, v35);
          v99 = v109;
        }

        sub_10000CAAC(v99, &qword_101A227C8);
        *(v35 + 2) = v101 + 1;
        v102 = &v35[16 * v101];
        *(v102 + 4) = 0x73656E656373;
        *(v102 + 5) = 0xE600000000000000;
        if (*(v35 + 2))
        {
          goto LABEL_33;
        }

        goto LABEL_39;
      }

      sub_10000CAAC(v86, &qword_101A227C8);
      sub_10000CAAC(v82 + v91, &qword_101A227D8);
      sub_10000CAAC(v82 + v90, &qword_101A227E0);
      sub_10000CAAC(v82 + v89, &unk_101A227E8);
      sub_10000CAAC(v82 + v88, &qword_101A01F00);
      sub_10000CAAC(v82 + v87, &qword_101A227F8);
      sub_10000CAAC(v82, &qword_101A01F00);
    }

    v94 = v150;
    v93 = v151;
    v95 = v149;
    v96 = v146;
    if (*(v35 + 2))
    {
LABEL_33:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154 = _swiftEmptyDictionarySingleton;
      sub_100A9B080(v35, 2, isUniquelyReferenced_nonNull_native);
      v98 = v154;
LABEL_40:
      v103 = *(v148 + v96);
      v104 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10004FECC(v103 + v104, v20, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10003D69C(v20, type metadata accessor for CRLBoardCRDTData);
      sub_10000CAAC(v147, &qword_101A227D0);
      type metadata accessor for CRLTransactableObservableDeltas(0);
      v105 = swift_allocObject();
      (*(v94 + 32))(v105 + OBJC_IVAR____TtC8Freeform31CRLTransactableObservableDeltas_id, v95, v93);
      *(v105 + OBJC_IVAR____TtC8Freeform31CRLTransactableObservableDeltas_invalidationKeys) = v98;
      v106 = (v105 + OBJC_IVAR____TtC8Freeform31CRLTransactableObservableDeltas_snapshot);
      *v106 = v145;
      v106[1] = &off_1018A75D0;
      return v105;
    }

LABEL_39:

    v98 = _swiftEmptyDictionarySingleton;
    goto LABEL_40;
  }

  v110 = objc_opt_self();
  v111 = [v110 _atomicIncrementAssertCount];
  v155 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v155);
  StaticString.description.getter();
  v112 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v113 = String._bridgeToObjectiveC()();

  v114 = [v113 lastPathComponent];

  v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v117 = v116;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v118 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v111;
  v120 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v120;
  v121 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v121;
  *(inited + 72) = v112;
  *(inited + 136) = &type metadata for String;
  v122 = sub_1000053B0();
  *(inited + 112) = v115;
  *(inited + 120) = v117;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v122;
  *(inited + 152) = 561;
  v123 = v155;
  *(inited + 216) = v120;
  *(inited + 224) = v121;
  *(inited + 192) = v123;
  v124 = v112;
  v125 = v123;
  v126 = static os_log_type_t.error.getter();
  sub_100005404(v118, &_mh_execute_header, v126, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v127 = static os_log_type_t.error.getter();
  sub_100005404(v118, &_mh_execute_header, v127, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v128 = swift_allocObject();
  v128[2] = 8;
  v128[3] = 0;
  v128[4] = 0;
  v128[5] = 0;
  v129 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v130 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v131 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v132 = String._bridgeToObjectiveC()();

  [v110 handleFailureInFunction:v130 file:v131 lineNumber:561 isFatal:1 format:v132 args:v129];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v133, v134);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100EC4DEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a2;
  v5 = sub_1005B981C(&qword_101A227A8);
  __chkstk_darwin(v5 - 8);
  v43 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = v41 - v8;
  v47 = sub_1005B981C(&unk_101A227B0);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = v41 - v9;
  v42 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v42);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = v41 - v18;
  (*(v13 + 16))(v41 - v18, a1 + OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_id, v12, v17);
  v41[1] = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v20 = *(v3 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v21 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v20 + v21, v11, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v11, type metadata accessor for CRLBoardCRDTData);
  LOBYTE(v11) = static UUID.== infix(_:_:)();
  v22 = *(v13 + 8);
  v22(v15, v12);
  v22(v19, v12);
  if ((v11 & 1) == 0)
  {
    sub_1009C3238();
    swift_allocError();
    *v40 = 3;
    return swift_willThrow();
  }

  v23 = v48;
  result = sub_1012E0400(v3, &off_1018A75D0);
  if (v23)
  {
    return result;
  }

  v25 = v3;
  v48 = 0;
  v26 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
  swift_beginAccess();
  v27 = *(a1 + v26);
  v29 = v46;
  v28 = v47;
  if (!*(v27 + 16))
  {
    goto LABEL_11;
  }

  v30 = sub_1007C8124(2);
  if ((v31 & 1) == 0)
  {

LABEL_11:
    (*(v45 + 56))(v29, 1, 1, v28);
    goto LABEL_12;
  }

  sub_10000BE14(*(v27 + 56) + 32 * v30, &v49, &unk_1019F4D00);

  v51[0] = v49;
  v51[1] = v50;
  if (!*(&v50 + 1))
  {
    sub_10000CAAC(v51, &unk_1019F4D00);
    goto LABEL_11;
  }

  v32 = swift_dynamicCast();
  v33 = v45;
  v34 = *(v45 + 56);
  v34(v29, v32 ^ 1u, 1, v28);
  if ((*(v33 + 48))(v29, 1, v28) == 1)
  {
LABEL_12:
    v39 = &qword_101A227A8;
    v38 = v29;
    goto LABEL_13;
  }

  v35 = v44;
  sub_10003DFF8(v29, v44, &unk_101A227B0);
  v36 = v35;
  v37 = v43;
  sub_10000BE14(v36, v43, &unk_101A227B0);
  v34(v37, 0, 1, v28);
  swift_beginAccess();
  sub_100ED5648(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  CRStruct_6.apply(_:)();
  sub_10000CAAC(v37, &qword_101A227A8);
  swift_endAccess();

  v38 = v44;
  v39 = &unk_101A227B0;
LABEL_13:
  sub_10000CAAC(v38, v39);
  return sub_1012CF6CC(v25, &off_1018A75D0, 2);
}

uint64_t sub_100EC53F4(char a1)
{
  result = sub_1012F80F4();
  v15 = result;
  if (a1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);

    v5 = sub_100743DF0();

    v14 = v5;
    v6 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    result = *&v4[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
    if (!result)
    {
      sub_10096C7D4();
      result = *&v4[v6];
    }

    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    if (v7 >> 62)
    {
      v13 = result;
      v8 = _CocoaArrayWrapper.endIndex.getter();
      result = v13;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
LABEL_9:
        if (v8 < 1)
        {
          __break(1u);
          return result;
        }

        v9 = 0;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          ++v9;
          v12 = (*((swift_isaMask & *v10) + 0x3E0))(1);
          sub_100636EA0(v12);
        }

        while (v8 != v9);

        v5 = v14;
        goto LABEL_18;
      }
    }

LABEL_18:
    sub_100636EA0(v5);
    return v15;
  }

  return result;
}

uint64_t sub_100EC5754()
{
  v29 = sub_1005B981C(&qword_101A1F1B0);
  __chkstk_darwin(v29);
  v28 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v27 = &v27 - v3;
  v4 = *(*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v30 = *(*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items);
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = v28;
  while (v10)
  {
    v15 = v13;
LABEL_10:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = v16 | (v15 << 6);
    v18 = v30;
    v19 = *(v30 + 48);
    v20 = type metadata accessor for UUID();
    v21 = *(v20 - 8);
    v31 = v20;
    v32 = v21;
    v22 = v27;
    (*(v21 + 16))(v27, v19 + *(v21 + 72) * v17, v20);
    v23 = *(*(v18 + 56) + 8 * v17);
    v24 = v29;
    *(v22 + *(v29 + 48)) = v23;
    sub_10000BE14(v22, v14, &qword_101A1F1B0);
    v25 = *(v14 + *(v24 + 48));
    LOBYTE(v23) = (*((swift_isaMask & *v25) + 0x3F0))(v23);

    sub_10000CAAC(v22, &qword_101A1F1B0);
    result = (*(v32 + 8))(v14, v31);
    if ((v23 & 1) == 0)
    {
      v26 = 1;
LABEL_13:

      return v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      v26 = 0;
      goto LABEL_13;
    }

    v10 = *(v6 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100EC5A5C()
{
  v29 = sub_1005B981C(&qword_101A1F1B0);
  __chkstk_darwin(v29);
  v28 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v27 = &v27 - v3;
  v4 = *(*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v30 = *(*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items);
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = v28;
  while (v10)
  {
    v15 = v13;
LABEL_10:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = v16 | (v15 << 6);
    v18 = v30;
    v19 = *(v30 + 48);
    v20 = type metadata accessor for UUID();
    v21 = *(v20 - 8);
    v31 = v20;
    v32 = v21;
    v22 = v27;
    (*(v21 + 16))(v27, v19 + *(v21 + 72) * v17, v20);
    v23 = *(*(v18 + 56) + 8 * v17);
    v24 = v29;
    *(v22 + *(v29 + 48)) = v23;
    sub_10000BE14(v22, v14, &qword_101A1F1B0);
    v25 = *(v14 + *(v24 + 48));
    LOBYTE(v23) = (*((swift_isaMask & *v25) + 0x270))(v23);

    sub_10000CAAC(v22, &qword_101A1F1B0);
    result = (*(v32 + 8))(v14, v31);
    if (v23)
    {
      v26 = 1;
LABEL_13:

      return v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      v26 = 0;
      goto LABEL_13;
    }

    v10 = *(v6 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100EC5D30()
{
  v154 = type metadata accessor for CocoaError.Code();
  v194 = *(v154 - 8);
  __chkstk_darwin(v154);
  v2 = &v150 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1005B981C(&qword_1019FBED8);
  v3 = *(v189 - 8);
  __chkstk_darwin(v189);
  v162 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v169 = &v150 - v6;
  __chkstk_darwin(v7);
  v151 = &v150 - v8;
  v9 = sub_1005B981C(&qword_101A0B040);
  __chkstk_darwin(v9 - 8);
  v165 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v168 = &v150 - v12;
  v159 = sub_1005B981C(&qword_101A0B048);
  __chkstk_darwin(v159);
  v158 = &v150 - v13;
  v14 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v14 - 8);
  v167 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v16 - 8);
  v195 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v18 - 8);
  v166 = &v150 - v19;
  v188 = type metadata accessor for URL();
  v20 = *(v188 - 8);
  __chkstk_darwin(v188);
  v178 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v157 = &v150 - v23;
  __chkstk_darwin(v24);
  v156 = &v150 - v25;
  v193 = type metadata accessor for UUID();
  v26 = *(v193 - 8);
  __chkstk_darwin(v193);
  v176 = &v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1005B981C(&unk_101A22798);
  __chkstk_darwin(v28 - 8);
  v191 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v190 = &v150 - v31;
  v32 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v32);
  v34 = &v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v36 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v35 + v36, v34, type metadata accessor for CRLBoardCRDTData);
  type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_101A22790);
  CRMaxRegister.wrappedValue.getter();
  sub_10003D69C(v34, type metadata accessor for CRLBoardCRDTData);
  if (v200)
  {
    return 1;
  }

  v153 = v2;
  v38 = *(*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items);
  v39 = *(v38 + 64);
  v180 = v38 + 64;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v39;
  v172 = v26 + 32;
  v173 = v26 + 16;
  v182 = (v3 + 48);
  v183 = (v3 + 56);
  v185 = (v20 + 32);
  v171 = (v20 + 8);
  v152 = (v194 + 8);
  v160 = (v40 + 63) >> 6;
  v161 = (v20 + 16);
  v163 = (v20 + 48);
  v164 = (v20 + 56);
  v179 = (v26 + 8);
  v175 = v38;

  LODWORD(v194) = 0;
  v43 = 0;
  v177 = 0;
  v150 = xmmword_10146C4D0;
  v155 = v3;
  v174 = v26;
  v45 = v190;
  v44 = v191;
  while (v42)
  {
    v46 = v43;
LABEL_18:
    v49 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    v50 = v49 | (v46 << 6);
    v52 = v174;
    v51 = v175;
    v53 = v176;
    v54 = v193;
    (*(v174 + 16))(v176, *(v175 + 48) + *(v174 + 72) * v50, v193);
    v55 = *(*(v51 + 56) + 8 * v50);
    v56 = sub_1005B981C(&qword_101A1F1B0);
    v57 = *(v56 + 48);
    v58 = *(v52 + 32);
    v44 = v191;
    v58(v191, v53, v54);
    *(v44 + v57) = v55;
    (*(*(v56 - 8) + 56))(v44, 0, 1, v56);
    v59 = v55;
    v45 = v190;
LABEL_19:
    sub_10003DFF8(v44, v45, &unk_101A22798);
    v60 = sub_1005B981C(&qword_101A1F1B0);
    if ((*(*(v60 - 8) + 48))(v45, 1, v60) == 1)
    {

      return v194;
    }

    v61 = *(v45 + *(v60 + 48));
    v62 = (*((swift_isaMask & *v61) + 0x270))();
    v63 = v194;
    if (v62)
    {
      v63 = 2;
    }

    type metadata accessor for CRLImageItem();
    result = swift_dynamicCastClass();
    LODWORD(v194) = v63;
    if (!result)
    {

      goto LABEL_7;
    }

    v64 = result;
    if (**(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A25280)
    {
      goto LABEL_77;
    }

    swift_beginAccess();

    sub_1005B981C(&unk_101A2F5B0);
    v65 = v167;
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_10004FECC(v65, v195, type metadata accessor for CRLAssetData);
    sub_10003D69C(v65, type metadata accessor for CRLImageItemAssetData);
    v66 = *(v64 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v67 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
    os_unfair_lock_lock(*(*&v66[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock] + 16));
    v68 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v69 = *&v66[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    v186 = v61;
    if (v69)
    {
      v70 = v69;
    }

    else
    {
      v71 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
      v72 = v66;
      v73 = sub_10001F1A0(v72);

      v74 = *&v66[v68];
      *&v66[v68] = v73;
      v70 = v73;

      v69 = 0;
    }

    v75 = *(*&v66[v67] + 16);
    v76 = v69;
    os_unfair_lock_unlock(v75);
    v187 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock;
    v77 = *&v70[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock];
    os_unfair_lock_lock(*(v77 + 16));
    v78 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetFileURLCache;
    swift_beginAccess();
    v79 = *&v70[v78];
    v80 = v195;
    if (*(v79 + 16))
    {

      v81 = sub_10003E994(v80);
      v82 = v168;
      if (v83)
      {
        sub_10000BE14(*(v79 + 56) + *(v155 + 72) * v81, v168, &qword_1019FBED8);
        v84 = 0;
      }

      else
      {
        v84 = 1;
      }
    }

    else
    {
      v84 = 1;
      v82 = v168;
    }

    v86 = v189;
    v181 = *v183;
    v181(v82, v84, 1, v189);
    os_unfair_lock_unlock(*(v77 + 16));
    v87 = *v182;
    v88 = (*v182)(v82, 1, v86);
    v192 = v70;
    v184 = v78;
    if (v88 == 1)
    {
      sub_10000CAAC(v82, &qword_101A0B040);
      goto LABEL_38;
    }

    v170 = v87;
    v89 = *(v82 + *(v86 + 48));
    v90 = v82;
    v91 = v158;
    v92 = v159;
    v93 = *(v159 + 48);
    v94 = *v185;
    v95 = v188;
    (*v185)(v158, v90, v188);
    *&v91[v93] = v89;
    v96 = *&v91[*(v92 + 48)];
    v97 = v157;
    v94(v157, v91, v95);
    if ((v96 & 2) == 0)
    {
      (*v171)(v97, v95);
      v80 = v195;
      v70 = v192;
      v78 = v184;
      v87 = v170;
LABEL_38:
      v98 = *&v70[v187];
      os_unfair_lock_lock(*(v98 + 16));
      v99 = *&v70[v78];
      if (*(v99 + 16))
      {

        v100 = sub_10003E994(v80);
        if (v101)
        {
          sub_10000BE14(*(v99 + 56) + *(v155 + 72) * v100, v165, &qword_1019FBED8);
          v102 = 0;
        }

        else
        {
          v102 = 1;
        }
      }

      else
      {
        v102 = 1;
      }

      v106 = v165;
      v107 = v189;
      v181(v165, v102, 1, v189);
      os_unfair_lock_unlock(*(v98 + 16));
      if (v87(v106, 1, v107) == 1)
      {
        sub_10000CAAC(v106, &qword_101A0B040);
        v108 = sub_10108C21C();
        v109 = v188;
        v170 = v108;
        if (v108)
        {
          v111 = *(v108 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
          v110 = *(v108 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);

          LODWORD(v181) = 1;
        }

        else
        {
          LODWORD(v181) = 0;
          v111 = 0;
          v110 = 0;
        }

        v117 = v195;
        sub_1010934D4(v195, v111, v110);

        v118 = v178;
        URL.appendingPathComponent(_:)();

        v116 = v181;
        sub_10108B1E0(v117, v118, v181);
      }

      else
      {
        v112 = v106;
        v113 = v151;
        sub_10003DFF8(v112, v151, &qword_1019FBED8);
        v114 = v113;
        v115 = v169;
        sub_10003DFF8(v114, v169, &qword_1019FBED8);
        v116 = *(v115 + *(v107 + 48));
        v109 = v188;
        (*v185)(v178, v115, v188);
      }

      v119 = URL.checkResourceIsReachable()();
      if (v120)
      {
        LODWORD(v181) = v116;
        swift_errorRetain();
        v121 = v153;
        static CocoaError.fileNoSuchFile.getter();
        sub_100ED5648(&unk_101A0B060, &type metadata accessor for CocoaError.Code);
        v122 = v154;
        v123 = static _ErrorCodeProtocol.~= infix(_:_:)();

        v124 = *v152;
        (*v152)(v121, v122);
        if (v123 & 1) != 0 || (swift_errorRetain(), static CocoaError.fileReadNoSuchFile.getter(), v125 = static _ErrorCodeProtocol.~= infix(_:_:)(), , v124(v121, v122), (v125))
        {

          LODWORD(v170) = 0;
          v177 = 0;
          v126 = 2;
          v70 = v192;
          v109 = v188;
          if (v181)
          {
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        swift_willThrow();
        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v187 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = v150;
        v136 = v178;
        v138 = URL.path.getter();
        v140 = v139;
        *(inited + 56) = &type metadata for String;
        v141 = sub_1000053B0();
        *(inited + 64) = v141;
        *(inited + 32) = v138;
        *(inited + 40) = v140;
        swift_getErrorValue();
        v142 = Error.publicDescription.getter(v198, v199);
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v141;
        *(inited + 72) = v142;
        *(inited + 80) = v143;
        swift_getErrorValue();
        v144 = Error.fullDescription.getter(v197);
        *(inited + 136) = &type metadata for String;
        *(inited + 144) = v141;
        *(inited + 112) = v144;
        *(inited + 120) = v145;
        v146 = static os_log_type_t.error.getter();
        sub_100005404(v187, &_mh_execute_header, v146, "Failed to check if file exists. filePath=%@, error=%{public}@ <%@>", 68, 2, inited);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v177 = 0;
        v105 = v166;
        v95 = v188;
        v135 = v195;
        v103 = v186;
      }

      else
      {
        v177 = 0;
        LODWORD(v170) = v119;
        if (v119)
        {
          v126 = 6;
        }

        else
        {
          v126 = 2;
        }

        if (v116)
        {
LABEL_56:
          v126 |= 1u;
        }

LABEL_57:
        v127 = *&v70[v187];
        os_unfair_lock_lock(*(v127 + 16));
        v128 = *(v189 + 48);
        v129 = v169;
        v130 = v178;
        (*v161)(v169, v178, v109);
        *(v129 + v128) = v126;
        v131 = v184;
        swift_beginAccess();
        v132 = v162;
        sub_10003DFF8(v129, v162, &qword_1019FBED8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v196 = *&v70[v131];
        v134 = v132;
        v135 = v195;
        sub_100A9B1E0(v134, v195, isUniquelyReferenced_nonNull_native);
        *&v70[v131] = v196;
        swift_endAccess();
        os_unfair_lock_unlock(*(v127 + 16));
        if (v170)
        {
          v105 = v166;
          v95 = v188;
          (*v185)(v166, v130, v188);
          v104 = 0;
          v45 = v190;
          v103 = v186;
          goto LABEL_71;
        }

        v105 = v166;
        v136 = v130;
        v103 = v186;
        v95 = v188;
      }

      (*v171)(v136, v95);
      v104 = 1;
      v45 = v190;
      goto LABEL_71;
    }

    v45 = v190;
    v103 = v186;
    if ((v96 & 4) != 0)
    {
      v105 = v166;
      v94(v166, v97, v95);
      v104 = 0;
    }

    else
    {
      (*v171)(v97, v95);
      v104 = 1;
      v105 = v166;
    }

    v135 = v195;
LABEL_71:
    (*v164)(v105, v104, 1, v95);

    sub_10003D69C(v135, type metadata accessor for CRLAssetData);
    if ((*v163)(v105, 1, v95) == 1)
    {

      sub_10000CAAC(v105, &unk_1019F33C0);
      v44 = v191;
    }

    else
    {
      v147 = v156;
      (*v185)(v156, v105, v95);
      v149 = sub_10126ECF4(v148);

      (*v171)(v147, v95);
      v44 = v191;
      if (v149)
      {

        (*v179)(v45, v193);
        return 1;
      }
    }

LABEL_7:
    result = (*v179)(v45, v193);
  }

  if (v160 <= v43 + 1)
  {
    v47 = v43 + 1;
  }

  else
  {
    v47 = v160;
  }

  v48 = v47 - 1;
  while (1)
  {
    v46 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v46 >= v160)
    {
      v85 = sub_1005B981C(&qword_101A1F1B0);
      (*(*(v85 - 8) + 56))(v44, 1, 1, v85);
      v42 = 0;
      v43 = v48;
      goto LABEL_19;
    }

    v42 = *(v180 + 8 * v46);
    ++v43;
    if (v42)
    {
      v43 = v46;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

void sub_100EC7294()
{
  if (sub_10110CE4C())
  {
    swift_beginAccess();
    type metadata accessor for CRLBoardCRDTData(0);
    type metadata accessor for CRLSharedBoardMetadataCRDTData(0);

    sub_1005B981C(&qword_101A22790);
    CRMaxRegister.wrappedValue.setter();
    swift_endAccess();
  }

  else
  {
    v0 = objc_opt_self();
    v1 = [v0 _atomicIncrementAssertCount];
    v23 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v23);
    StaticString.description.getter();
    v2 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    v4 = [v3 lastPathComponent];

    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v1;
    v10 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v10;
    v11 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v11;
    *(inited + 72) = v2;
    *(inited + 136) = &type metadata for String;
    v12 = sub_1000053B0();
    *(inited + 112) = v5;
    *(inited + 120) = v7;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v12;
    *(inited + 152) = 732;
    v13 = v23;
    *(inited + 216) = v10;
    *(inited + 224) = v11;
    *(inited + 192) = v13;
    v14 = v2;
    v15 = v13;
    v16 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v16, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v17, "No transaction", 14, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v18 = swift_allocObject();
    v18[2] = 8;
    v18[3] = 0;
    v18[4] = 0;
    v18[5] = 0;
    v19 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    [v0 handleFailureInFunction:v20 file:v21 lineNumber:732 isFatal:0 format:v22 args:v19];
  }
}

uint64_t sub_100EC7714()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_data) + 24);
  v6 = [objc_allocWithZone(CRLDocumentModelEnumerator) initWithRootModelObject:*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) flags:0 filter:0];
  v7 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  NSEnumerator.makeIterator()();
  sub_100ED5648(&qword_101A22788, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  while (v18)
  {
    sub_10000BF3C(&v17, v15);
    type metadata accessor for CRLBoardItemBase(0);
    if ((swift_dynamicCast() & 1) != 0 && v16)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v19;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  result = (*(v2 + 8))(v4, v1);
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_23:

    return v5;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v9 = result;
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_11:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v7 + 8 * i + 32);
      }

      v12 = v11;
      v13 = *&v11[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];

      if (*(v13 + 16))
      {
        v14 = *(v13 + 24);

        if (v14 > v5)
        {
          v5 = v14;
        }
      }

      else
      {
      }
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_100EC7A40()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_data) + 32);
  v6 = [objc_allocWithZone(CRLDocumentModelEnumerator) initWithRootModelObject:*(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) flags:0 filter:0];
  v7 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  NSEnumerator.makeIterator()();
  sub_100ED5648(&qword_101A22788, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  while (v18)
  {
    sub_10000BF3C(&v17, v15);
    type metadata accessor for CRLBoardItemBase(0);
    if ((swift_dynamicCast() & 1) != 0 && v16)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v19;
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  result = (*(v2 + 8))(v4, v1);
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_22:

    return v5;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v9 = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v7 + 8 * i + 32);
      }

      v14 = v13;
      if ((*((swift_isaMask & *v13) + 0x3F0))())
      {
        v11 = *&v14[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];

        v12 = *(v11 + 32);

        if (v12 > v5)
        {
          v5 = v12;
        }
      }

      else
      {
      }
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_100EC7DBC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v87 = a3;
  v8 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v71 - v12;
  v86 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v14 = *(v5 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v15 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  if (a2)
  {
    sub_10004FECC(v14 + v15, v10, type metadata accessor for CRLBoardCRDTData);
    sub_100ED5648(&unk_101A22770, type metadata accessor for CRLBoardCRDTData);

    CRType.copy(renamingReferences:)();
    sub_10003D69C(v10, type metadata accessor for CRLBoardCRDTData);
  }

  else
  {
    sub_10004FECC(v14 + v15, v13, type metadata accessor for CRLBoardCRDTData);
  }

  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v16, qword_101AD6348);
  sub_100ED5648(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);
  v17 = CRDT.serializedData(_:version:)();
  if (v4)
  {

    return sub_10003D69C(v13, type metadata accessor for CRLBoardCRDTData);
  }

  else
  {
    v84 = v17;
    v85 = v18;

    sub_10003D69C(v13, type metadata accessor for CRLBoardCRDTData);
    v20 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
    v21 = *(**(*(v5 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 520);

    v82 = v21(a1, a2 & 1);
    v83 = v22;

    v23 = *(**(*(v5 + v20) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 528);

    v24 = v23(a1, a2 & 1);
    v26 = v25;

    v80 = v24;
    v81 = v26;
    v79 = OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer;
    v27 = *(**(*(v5 + OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 520);

    v28 = v27(a1, a2 & 1);
    v30 = v29;

    v77 = v28;
    v78 = v30;
    v31 = *(**(*(v5 + v79) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 528);

    v32 = v31(a1, a2 & 1);
    v34 = v33;

    sub_1005B981C(&unk_101A22760);
    inited = swift_initStackObject();
    v36 = v34;
    v76 = v34;
    v37 = inited;
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 32) = 0;
    v74 = inited + 32;
    v38 = v84;
    v39 = v85;
    *(v37 + 40) = v84;
    *(v37 + 48) = v39;
    *(v37 + 56) = 1;
    v40 = v82;
    v41 = v83;
    *(v37 + 64) = v82;
    *(v37 + 72) = v41;
    *(v37 + 80) = 2;
    v42 = v80;
    v43 = v81;
    *(v37 + 88) = v80;
    *(v37 + 96) = v43;
    *(v37 + 104) = 4;
    v44 = v78;
    *(v37 + 112) = v77;
    *(v37 + 120) = v44;
    *(v37 + 128) = 5;
    *(v37 + 136) = v32;
    *(v37 + 144) = v36;
    sub_100024E98(v38, v39);
    sub_100024E98(v40, v41);
    sub_100024E98(v42, v81);
    sub_100024E98(v77, v78);
    v75 = v32;
    sub_100024E98(v32, v76);
    v45 = sub_100BD5754(v37);
    swift_setDeallocating();
    sub_1005B981C(&unk_101A0B000);
    swift_arrayDestroy();
    v46 = *(**(*(v5 + v20) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 664);

    v48 = v46(v47);

    v49 = *(**(*(v5 + v20) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 672);

    v51 = v49(v50);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v48;
    sub_100EDC05C(v51, sub_100E8FDF4, 0, isUniquelyReferenced_nonNull_native, &v89);
    v74 = v45;

    v53 = v89;
    v54 = _swiftEmptyArrayStorage;
    v55 = sub_100BD5554(_swiftEmptyArrayStorage);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v89 = v55;
    sub_100EDC05C(v53, sub_100E8FDF4, 0, v56, &v89);

    v73 = v89;
    v57 = *(v5 + v86);
    v58 = v57[4];
    v86 = v57[3];
    v72 = v57[5];
    v59 = *(v5 + v20);
    v60 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v61 = *&v59[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
    v62 = v59;
    if (!v61)
    {
      sub_10096C7D4();
      v61 = *&v59[v60];
    }

    if (v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = _swiftEmptyArrayStorage;
    }

    v64 = *(v5 + v79);
    v65 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
    v66 = *&v64[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
    v67 = v64;
    if (!v66)
    {
      sub_10096C7D4();
      v66 = *&v64[v65];
    }

    if (v66)
    {
      v54 = v66;
    }

    v88 = v63;
    sub_100798D00(v54);
    v68 = sub_100640564(v88);
    sub_10002640C(v84, v85);
    sub_10002640C(v82, v83);
    sub_10002640C(v80, v81);
    sub_10002640C(v77, v78);
    sub_10002640C(v75, v76);

    v69 = v87;
    *v87 = v86;
    v69[1] = v58;
    v69[2] = v72;
    *(v69 + 3) = xmmword_1014B7430;
    v69[5] = 0;
    *(v69 + 48) = 1;
    v70 = v73;
    v69[7] = v74;
    v69[8] = v70;
    v69[9] = v68;
  }

  return result;
}

void *sub_100EC8784()
{
  v1 = v0;
  v67 = type metadata accessor for CRLBoardScenesCRDTData(0);
  v2 = __chkstk_darwin(v67);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v50 - v4;
  v6 = type metadata accessor for UUID();
  v64 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v11 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v11 - 8);
  v13 = &v50 - v12;
  v14 = sub_1005B981C(&unk_101A28650);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  v18 = sub_1005B981C(&unk_101A22740);
  v50 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  v68 = v1;
  v66 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v21 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v65 = type metadata accessor for CRLBoardCRDTData(0);
  v22 = *(v65 + 36);
  v55 = _swiftEmptyArrayStorage;
  v73 = _swiftEmptyArrayStorage;
  (*(v15 + 16))(v17, v21 + v22, v14);
  sub_10001A2F8(&qword_1019FCE58, &unk_101A28650);
  dispatch thunk of Sequence.makeIterator()();
  v23 = sub_10001A2F8(&unk_101A22750, &unk_101A22740);
  v62 = v20;
  v63 = v18;
  v61 = v23;
  dispatch thunk of IteratorProtocol.next()();
  v24 = v64;
  v25 = *(v64 + 48);
  v60 = v64 + 48;
  v59 = v25;
  if (v25(v13, 1, v6) != 1)
  {
    v28 = *(v24 + 32);
    v27 = v24 + 32;
    v58 = v28;
    v52 = (v27 - 16);
    v55 = _swiftEmptyArrayStorage;
    v64 = v27;
    v29 = (v27 - 24);
    v56 = xmmword_10146C6B0;
    v53 = v5;
    v51 = v13;
    v28(v10, v13, v6);
    while (1)
    {
      v36 = *(v68 + v66) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10004FECC(v36 + *(v65 + 36), v5, type metadata accessor for CRLBoardScenesCRDTData);
      sub_1005B981C(&qword_1019FCC98);
      CRDictionary.subscript.getter();
      sub_10003D69C(v5, type metadata accessor for CRLBoardScenesCRDTData);
      v37 = v71;
      if (v71)
      {
        v38 = v70;
        v39 = *(v68 + v66) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
        swift_beginAccess();
        v40 = v57;
        sub_10004FECC(v39 + *(v65 + 36), v57, type metadata accessor for CRLBoardScenesCRDTData);
        sub_1005B981C(&unk_101A22730);
        CRDictionary.subscript.getter();
        sub_10003D69C(v40, type metadata accessor for CRLBoardScenesCRDTData);
        if (v72)
        {
          v41 = v70;
          v42 = v71;

          v43 = *v52;
          v44 = v54;
          (*v52)(v54, v10, v6);
          v45 = type metadata accessor for CRLSceneInfo();
          v46 = objc_allocWithZone(v45);
          *&v46[OBJC_IVAR____TtC8Freeform12CRLSceneInfo__parentInfo] = 0;
          *&v46[OBJC_IVAR____TtC8Freeform12CRLSceneInfo__editorClass] = 0;
          ObservationRegistrar.init()();
          v43(&v46[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID], v44, v6);
          v47 = &v46[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name];
          *v47 = v38;
          *(v47 + 1) = v37;
          v48 = &v46[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect];
          *v48 = *&v41;
          v48[1] = *(&v41 + 1);
          v48[2] = *&v42;
          v48[3] = *(&v42 + 1);
          v69.receiver = v46;
          v69.super_class = v45;
          objc_msgSendSuper2(&v69, "init");
          v49 = *v29;
          (*v29)(v44, v6);
          v49(v10, v6);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v55 = v73;
          v5 = v53;
          v13 = v51;
          goto LABEL_8;
        }
      }

      if (qword_1019F21D0 != -1)
      {
        swift_once();
      }

      v30 = static OS_os_log.crlScenes;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v56;
      v32 = UUID.uuidString.getter();
      v34 = v33;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v32;
      *(inited + 40) = v34;
      v35 = static os_log_type_t.error.getter();
      sub_100005404(v30, &_mh_execute_header, v35, "Failed creating scene info with UUID %{public}", 46, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      (*v29)(v10, v6);
LABEL_8:
      dispatch thunk of IteratorProtocol.next()();
      if (v59(v13, 1, v6) == 1)
      {
        break;
      }

      v58(v10, v13, v6);
    }
  }

  (*(v50 + 8))(v62, v63);
  return v55;
}

uint64_t sub_100EC90D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v33 = a1;
  v34 = a2;
  v12 = type metadata accessor for CRLSceneDataValue(0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1005B981C(&unk_101A28650);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v32 - v18;
  v20 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLBoard_data) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v21 = type metadata accessor for CRLBoardCRDTData(0);
  (*(v17 + 16))(v19, v20 + *(v21 + 36), v16);
  v22 = CROrderedSet.count.getter();
  (*(v17 + 8))(v19, v16);
  v23 = sub_100EDAE6C(v22);
  v25 = v24;
  swift_beginAccess();
  v32[1] = *(v21 + 36);
  v26 = type metadata accessor for UUID();
  v27 = *(*(v26 - 8) + 16);
  v28 = v33;
  v27(v15, v33, v26);
  v29 = &v15[*(v13 + 28)];
  *v29 = v23;
  v29[1] = v25;
  v30 = &v15[*(v13 + 32)];
  *v30 = a3;
  v30[1] = a4;
  v30[2] = a5;
  v30[3] = a6;

  sub_1007265C0(v15);
  sub_10003D69C(v15, type metadata accessor for CRLSceneDataValue);
  swift_endAccess();

  return (v27)(v34, v28, v26);
}

id sub_100EC94FC(uint64_t a1)
{
  v2 = v1;
  v38 = type metadata accessor for UUID();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardScenesCRDTData(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v13 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v14 = type metadata accessor for CRLBoardCRDTData(0);
  sub_10004FECC(v13 + *(v14 + 36), v11, type metadata accessor for CRLBoardScenesCRDTData);
  sub_1005B981C(&qword_1019FCC98);
  CRDictionary.subscript.getter();
  sub_10003D69C(v11, type metadata accessor for CRLBoardScenesCRDTData);
  v15 = v46;
  if (v46)
  {
    v36 = v45;
    v16 = *(v2 + v12) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FECC(v16 + *(v14 + 36), v9, type metadata accessor for CRLBoardScenesCRDTData);
    sub_1005B981C(&unk_101A22730);
    CRDictionary.subscript.getter();
    sub_10003D69C(v9, type metadata accessor for CRLBoardScenesCRDTData);
    if (v44)
    {
      v17 = v40;
      v18 = v41;
      v19 = v42;
      v20 = v43;

      v21 = v37;
      v22 = *(v37 + 16);
      v23 = v38;
      v22(v5, a1, v38);
      v24 = type metadata accessor for CRLSceneInfo();
      v25 = objc_allocWithZone(v24);
      *&v25[OBJC_IVAR____TtC8Freeform12CRLSceneInfo__parentInfo] = 0;
      *&v25[OBJC_IVAR____TtC8Freeform12CRLSceneInfo__editorClass] = 0;
      ObservationRegistrar.init()();
      v22(&v25[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID], v5, v23);
      v26 = &v25[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_name];
      *v26 = v36;
      *(v26 + 1) = v15;
      v27 = &v25[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect];
      *v27 = v17;
      v27[1] = v18;
      v27[2] = v19;
      v27[3] = v20;
      v39.receiver = v25;
      v39.super_class = v24;
      v28 = objc_msgSendSuper2(&v39, "init");
      (*(v21 + 8))(v5, v23);
      return v28;
    }
  }

  if (qword_1019F21D0 != -1)
  {
    swift_once();
  }

  v30 = static OS_os_log.crlScenes;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v32 = UUID.uuidString.getter();
  v34 = v33;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v32;
  *(inited + 40) = v34;
  v35 = static os_log_type_t.default.getter();
  sub_100005404(v30, &_mh_execute_header, v35, "Failed retrieving scene data with UUID %{public}", 48, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  return 0;
}

size_t sub_100ECA104(unint64_t a1)
{
  v2 = v1;
  v44 = type metadata accessor for UUID();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = &v40 - v7;
  v8 = sub_1005B981C(&qword_101A22708);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - v10;
  v49 = a1;
  v50 = sub_100EC8784();
  sub_1005B981C(&qword_101A22710);
  sub_10001A2F8(&qword_101A22718, &qword_101A22710);
  sub_100ED5648(&unk_101A22720, type metadata accessor for CRLSceneInfo);
  BidirectionalCollection<>.difference<A>(from:)();

  v12 = *(CollectionDifference.insertions.getter() + 16);

  v13 = *(CollectionDifference.removals.getter() + 16);

  if (v12 != v13)
  {
    v45 = v11;
    v46 = v9;
    v47 = v8;
    if (qword_1019F21D0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlScenes;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    type metadata accessor for CRLSceneInfo();
    v26 = Array.description.getter();
    v28 = v27;
    *(inited + 56) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 64) = v29;
    *(inited + 32) = v26;
    *(inited + 40) = v28;
    sub_100EC8784();
    v30 = Array.description.getter();
    v32 = v31;

    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v29;
    *(inited + 72) = v30;
    *(inited + 80) = v32;
    v33 = static os_log_type_t.default.getter();
    sub_100005404(v24, &_mh_execute_header, v33, "Reordered scene infos (%{public}@) do not match existing scene infos (%{public}@).", 82, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v34 = 0;
    v9 = v46;
    v8 = v47;
    v11 = v45;
    goto LABEL_22;
  }

  v14 = *(v2 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_20:

    v17 = _swiftEmptyArrayStorage;
LABEL_21:
    swift_beginAccess();
    type metadata accessor for CRLBoardCRDTData(0);
    v34 = sub_100727474(v17);
    swift_endAccess();

LABEL_22:
    (*(v9 + 8))(v11, v8);
    return v34 & 1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_4:
  v41 = a1;
  v49 = _swiftEmptyArrayStorage;

  result = sub_100776524(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v40 = v14;
    v45 = v11;
    v46 = v9;
    v47 = v8;
    v17 = v49;
    if ((v41 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      v48 = (v4 + 32);
      v19 = v43;
      v20 = v44;
      do
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        (*(v4 + 16))(v19, v21 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID, v20);
        swift_unknownObjectRelease();
        v49 = v17;
        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          sub_100776524(v22 > 1, v23 + 1, 1);
          v17 = v49;
        }

        ++v18;
        v17[2] = v23 + 1;
        (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, v19, v20);
      }

      while (v15 != v18);
    }

    else
    {
      v35 = (v41 + 32);
      v48 = *(v4 + 16);
      v36 = v42;
      v37 = v44;
      do
      {
        v48(v36, *v35 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_sceneID, v37);
        v49 = v17;
        v39 = v17[2];
        v38 = v17[3];
        if (v39 >= v38 >> 1)
        {
          sub_100776524(v38 > 1, v39 + 1, 1);
          v36 = v42;
          v17 = v49;
        }

        v17[2] = v39 + 1;
        (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v39, v36, v37);
        ++v35;
        --v15;
      }

      while (v15);
    }

    v9 = v46;
    v8 = v47;
    v11 = v45;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

id sub_100ECA970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLBoard(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100ECAB38()
{
  sub_100ECAC40();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100ECAC40()
{
  if (!qword_101A22568)
  {
    type metadata accessor for CRLBoard.RealTimeSessionInfo(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A22568);
    }
  }
}

uint64_t sub_100ECACB8()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v5 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v4 + v5, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  return sub_10003D69C(v3, type metadata accessor for CRLBoardCRDTData);
}

uint64_t sub_100ECADE0()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v5 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v4 + v5, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  return sub_10003D69C(v3, type metadata accessor for CRLBoardCRDTData);
}

uint64_t sub_100ECAF20()
{

  sub_1012F035C();

  *(v0 + OBJC_IVAR____TtC8Freeform8CRLBoard_opportunisticallyBuiltAffectedItemSetIncludingParents) = _swiftEmptyDictionarySingleton;
}

uint64_t sub_100ECAF8C()
{
  v1 = *v0;
  type metadata accessor for UUID();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v1 resolveAncestorsFor:isa ignoringIds:v3];

  type metadata accessor for CRLBoardItem(0);
  sub_100ED5648(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

__n128 sub_100ECB0A8@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_100EC7DBC(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[3];
    *(a3 + 32) = v7[2];
    *(a3 + 48) = v6;
    *(a3 + 64) = v7[4];
    result = v7[1];
    *a3 = v7[0];
    *(a3 + 16) = result;
  }

  return result;
}

id sub_100ECB14C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  v11 = sub_100EB6CA8(v9);

  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    a4(0);
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  v12 = 0;
LABEL_5:

  return v12;
}

uint64_t sub_100ECB27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v15 + v16, v10, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v10, type metadata accessor for CRLBoardCRDTData);
  sub_100ED5648(&qword_1019F37C0, &type metadata accessor for UUID);
  LOBYTE(v10) = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v12 + 8))(v14, v11);
  if ((v10 & 1) == 0)
  {
    if (a1)
    {
      v18 = OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap;
      swift_beginAccess();
      v19 = *(v4 + v18);
      v20 = *(v19 + 16);
      swift_unknownObjectRetain();
      if (v20)
      {

        v21 = sub_10003E994(a3);
        if (v22)
        {
          v23 = *(*(v19 + 56) + 16 * v21);
          swift_unknownObjectRetain();

          if (v23 == a1)
          {
            swift_unknownObjectRelease();
          }

          else
          {
            if (qword_1019F2098 != -1)
            {
              swift_once();
            }

            v31 = static OS_os_log.crlDefault;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C6B0;
            v25 = UUID.uuidString.getter();
            v27 = v26;
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v25;
            *(inited + 40) = v27;
            v28 = static os_log_type_t.default.getter();
            sub_100005404(v31, &_mh_execute_header, v28, "Overwriting an existing object in objectUUIDMap with a different instance for the same UUID %@.", 95, 2, inited);
            swift_unknownObjectRelease();
            swift_setDeallocating();
            sub_100005070(inited + 32);
          }
        }

        else
        {
        }
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v4 + v18);
      *(v4 + v18) = 0x8000000000000000;
      sub_100A9A968(a1, a2, a3, isUniquelyReferenced_nonNull_native);
      *(v4 + v18) = v32;
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      sub_1006F6994(a3);
      swift_endAccess();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100ECB67C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLBoardItem(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v10 = result;
    type metadata accessor for CRLTransactableHashableWrapper();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &off_10188FE10;
    v12 = (v2 + OBJC_IVAR____TtC8Freeform8CRLBoard_fixupData);
    swift_beginAccess();
    v13 = *v12;
    swift_unknownObjectRetain_n();

    v14 = sub_10079C5CC(v11, v13);

    if (v14 & 1) != 0 || (ObjectType = swift_getObjectType(), (*(a2 + 32))(ObjectType, a2), sub_100ECB27C(a1, a2, v8), (*(v6 + 8))(v8, v5), v16 = v12[1], , v17 = sub_10079C5CC(v11, v16), , (v17))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();

      sub_100E6B218(&v19, v11);
      swift_endAccess();

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100ECB8B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v12 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v11 + v12, v9, type metadata accessor for CRLBoardCRDTData);
  v28 = type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  result = sub_10003D69C(v9, type metadata accessor for CRLBoardCRDTData);
  if (v31 == 1)
  {
    sub_1012E0400(v2, &off_1018A75D0);
    v26 = v2;
    v25 = a1;
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v15 = *(v26 + v10);
    v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v23 = type metadata accessor for CRLBoardCRDTData;
    sub_10004FECC(v15 + v16, v9, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    v22 = type metadata accessor for CRLBoardCRDTData;
    sub_10003D69C(v9, type metadata accessor for CRLBoardCRDTData);
    v17 = UUID.uuidString.getter();
    v19 = v18;
    (*(v27 + 8))(v6, v4);
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v17;
    *(inited + 40) = v19;
    v20 = static os_log_type_t.default.getter();
    sub_100005404(v24, &_mh_execute_header, v20, "Marking board as not discardable: %{public}@", 44, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v21 = *(v26 + v10) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FECC(v21, v9, v23);

    CRRegister.wrappedValue.getter();
    sub_10003D69C(v9, v22);
    if (v30 == 1)
    {
      swift_beginAccess();
      v29 = 0;
      CRRegister.wrappedValue.setter();
      swift_endAccess();
    }

    return sub_1012CF6CC(v26, &off_1018A75D0, 2);
  }

  return result;
}

void sub_100ECBE40()
{
  v1 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v1 - 8);
  v158 = &v143 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v164 = &v143 - v4;
  v171 = type metadata accessor for UUID();
  v5 = *(v171 - 8);
  __chkstk_darwin(v171);
  v161 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v143 - v8;
  __chkstk_darwin(v10);
  v166 = &v143 - v11;
  v172 = v0;
  v12 = &v0[OBJC_IVAR____TtC8Freeform8CRLBoard_fixupData];
  swift_beginAccess();
  v154 = v12;
  v13 = *v12;
  if ((*v12 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_100ED5648(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper);
    Set.Iterator.init(_cocoa:)();
    v14 = v175[24];
    v165 = v175[23];
    v16 = v175[25];
    v15 = v175[26];
    v17 = v175[27];
  }

  else
  {
    v18 = -1 << v13[32];
    v14 = (v13 + 56);
    v16 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = (v20 & *(v13 + 7));
    v165 = v13;

    v15 = 0;
  }

  v162 = v16;
  v21 = (v16 + 64) >> 6;
  v167 = (v5 + 48);
  v159 = (v5 + 32);
  v173 = (v5 + 8);
  v168 = v14;
  v169 = v9;
  v23 = v164;
  v22 = v165;
  if ((v165 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v24 = __CocoaSet.Iterator.next()();
  if (!v24 || (v175[0] = v24, type metadata accessor for CRLTransactableHashableWrapper(), swift_dynamicCast(), v25 = v15, v170 = v17, v14 = v168, !v176))
  {
LABEL_32:
    sub_100035F90();
    v45 = *(v154 + 1);
    if ((v45 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for CRLTransactableHashableWrapper();
      sub_100ED5648(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper);
      Set.Iterator.init(_cocoa:)();
      v45 = v176;
      v46 = v177;
      v47 = v178;
      v48 = v179;
      v49 = v180;
    }

    else
    {
      v50 = -1 << *(v45 + 32);
      v46 = (v45 + 56);
      v47 = ~v50;
      v51 = -v50;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      else
      {
        v52 = -1;
      }

      v49 = v52 & *(v45 + 56);

      v48 = 0;
    }

    v151 = v47;
    v53 = (v47 + 64) >> 6;
    v153 = xmmword_10146C4D0;
    v147 = xmmword_10146CA70;
    v166 = v53;
    v162 = v46;
    v163 = v45;
    while (1)
    {
      while (1)
      {
        if ((v45 & 0x8000000000000000) != 0)
        {
          v59 = __CocoaSet.Iterator.next()();
          if (!v59 || (v174 = v59, type metadata accessor for CRLTransactableHashableWrapper(), swift_dynamicCast(), v58 = v175[0], i = v48, v57 = v49, !v175[0]))
          {
LABEL_97:
            sub_100035F90();
            v142 = v154;
            *v154 = _swiftEmptySetSingleton;
            *(v142 + 1) = _swiftEmptySetSingleton;

            return;
          }
        }

        else
        {
          v54 = v48;
          v55 = v49;
          for (i = v48; !v55; ++v54)
          {
            i = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_101;
            }

            if (i >= v53)
            {
              goto LABEL_97;
            }

            v55 = *&v46[8 * i];
          }

          v57 = (v55 - 1) & v55;
          v58 = *(*(v45 + 48) + ((i << 9) | (8 * __clz(__rbit64(v55)))));

          if (!v58)
          {
            goto LABEL_97;
          }
        }

        v170 = v57;
        v61 = v58[2];
        v60 = v58[3];
        ObjectType = swift_getObjectType();
        v63 = *(v60 + 32);
        swift_unknownObjectRetain();
        v64 = v169;
        v63(ObjectType, v60);
        v65 = v171;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v168 = *v173;
        v168(v64, v65);
        v67 = [v172 getBoardItemForUUID:isa];

        if (!v67)
        {

          swift_unknownObjectRelease();
          v48 = i;
          v49 = v170;
          v45 = v163;
          goto LABEL_40;
        }

        v164 = v61;
        v165 = v58;
        v68 = v158;
        (*((swift_isaMask & *v67) + 0xB8))();
        if ((*v167)(v68, 1, v65) != 1)
        {
          break;
        }

        swift_unknownObjectRelease();
        sub_10000CAAC(v68, &qword_1019F6990);
        v69 = *&v172[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];

        v48 = i;
        v70 = v170;
        v49 = v170;
        v71 = v67 == v69;
        v46 = v162;
        v45 = v163;
        v53 = v166;
        if (v71)
        {
          v72 = *&v172[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];
          *&v72[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
          v73 = v72;

          *&v73[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;

          *&v73[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;

          v53 = v166;
          v48 = i;
          v49 = v70;
        }
      }

      (*v159)();
      v155 = [v67 parentContainerItem];
      v74 = UUID._bridgeToObjectiveC()().super.isa;
      v157 = [v172 getContainerItemForUUID:v74];

      v152 = sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v153;
      v76 = *((swift_isaMask & *v67) + 0x88);
      v77 = v169;
      v149 = (swift_isaMask & *v67) + 136;
      v150 = v76;
      v76();
      v78 = UUID.uuidString.getter();
      v80 = v79;
      v168(v77, v65);
      *(inited + 56) = &type metadata for String;
      v81 = sub_1000053B0();
      *(inited + 32) = v78;
      *(inited + 64) = v81;
      *(inited + 40) = v80;
      v82 = v67;
      v83 = [v82 description];
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;
      v156 = v82;

      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v81;
      *(inited + 72) = v84;
      *(inited + 80) = v86;
      v87 = UUID.uuidString.getter();
      v88 = v157;
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v81;
      *(inited + 112) = v87;
      *(inited + 120) = v89;
      if (v88)
      {

        v45 = v163;
        v91 = v171;
        goto LABEL_85;
      }

      v160 = inited + 32;
      v144 = objc_opt_self();
      v92 = [v144 _atomicIncrementAssertCount];
      v175[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(inited, v175);
      StaticString.description.getter();
      v146 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v93 = String._bridgeToObjectiveC()();
      v148 = inited;
      v94 = v93;

      v95 = [v94 lastPathComponent];

      v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v145 = v97;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v98 = static OS_os_log.crlAssert;
      v99 = swift_initStackObject();
      *(v99 + 16) = v147;
      *(v99 + 56) = &type metadata for Int32;
      *(v99 + 64) = &protocol witness table for Int32;
      *(v99 + 32) = v92;
      v100 = sub_100006370(0, &qword_1019F4D30);
      *(v99 + 96) = v100;
      v101 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
      v102 = v146;
      *(v99 + 72) = v146;
      *(v99 + 136) = &type metadata for String;
      *(v99 + 144) = v81;
      *(v99 + 104) = v101;
      *(v99 + 112) = v96;
      *(v99 + 120) = v145;
      *(v99 + 176) = &type metadata for UInt;
      *(v99 + 152) = 1146;
      v103 = v175[0];
      *(v99 + 216) = v100;
      *(v99 + 224) = v101;
      *(v99 + 184) = &protocol witness table for UInt;
      *(v99 + 192) = v103;
      v104 = v102;
      v105 = v103;
      v106 = static os_log_type_t.error.getter();
      sub_100005404(v98, &_mh_execute_header, v106, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v99);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v107 = static os_log_type_t.error.getter();
      v108 = v148;
      sub_100005404(v98, &_mh_execute_header, v107, "Unable to find the parent of child %@%@ with parentUUID %@", 58, 2, v148);

      type metadata accessor for __VaListBuilder();
      v109 = swift_allocObject();
      v109[2] = 8;
      v109[3] = 0;
      v110 = v109 + 3;
      v109[4] = 0;
      v109[5] = 0;
      v111 = *(v108 + 16);
      v112 = v160;
      if (v111)
      {
        break;
      }

LABEL_84:
      v129 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v130 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v131 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v132 = String._bridgeToObjectiveC()();

      [v144 handleFailureInFunction:v130 file:v131 lineNumber:1146 isFatal:0 format:v132 args:v129];

      v91 = v171;
      v45 = v163;
      v88 = v157;
LABEL_85:
      v133 = v170;
      v134 = v155;
      if (v155)
      {
        v135 = v169;
        (*(**&v155[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v90);
        v136 = v134;
        v137 = sub_100EB6CA8(v135);
        v168(v135, v91);
        if (v137)
        {
          v138 = swift_unknownObjectRelease();
          if (v88 && v136 == v88)
          {
            *&v136[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;

            *&v136[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;

            *&v136[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;

            v133 = v170;
            goto LABEL_94;
          }

          v139 = v169;
          (v150)(v138);
          sub_10096F3C0(v139, 1);

          v168(v139, v91);
        }

        else
        {
        }

        v133 = v170;
      }

      if (!v88)
      {
        v168(v161, v91);

        swift_unknownObjectRelease();

        goto LABEL_96;
      }

LABEL_94:
      v140 = v88;
      v141 = v156;
      sub_10096E1AC(v156, 1);

      swift_unknownObjectRelease();

      v168(v161, v91);
LABEL_96:
      v48 = i;
      v49 = v133;
LABEL_40:
      v46 = v162;
      v53 = v166;
    }

    v113 = 0;
    while (1)
    {
      sub_100020E58((v112 + 40 * v113), *(v112 + 40 * v113 + 24));
      v114 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v115 = *v110;
      v116 = *(v114 + 16);
      v117 = __OFADD__(*v110, v116);
      v118 = *v110 + v116;
      if (v117)
      {
        goto LABEL_102;
      }

      v119 = v109[4];
      if (v119 >= v118)
      {
        goto LABEL_76;
      }

      if (v119 + 0x4000000000000000 < 0)
      {
        goto LABEL_103;
      }

      v120 = v109[5];
      if (2 * v119 > v118)
      {
        v118 = 2 * v119;
      }

      v109[4] = v118;
      if ((v118 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_104;
      }

      v121 = v114;
      v122 = swift_slowAlloc();
      v123 = v122;
      v109[5] = v122;
      if (v120)
      {
        break;
      }

      v114 = v121;
      v112 = v160;
      if (!v123)
      {
        goto LABEL_105;
      }

LABEL_77:
      v125 = *(v114 + 16);
      if (v125)
      {
        v126 = (v114 + 32);
        v127 = *v110;
        while (1)
        {
          v128 = *v126++;
          *&v123[8 * v127] = v128;
          v127 = *v110 + 1;
          if (__OFADD__(*v110, 1))
          {
            break;
          }

          *v110 = v127;
          if (!--v125)
          {
            goto LABEL_61;
          }
        }

        __break(1u);
        goto LABEL_32;
      }

LABEL_61:

      if (++v113 == v111)
      {
        goto LABEL_84;
      }
    }

    if (v122 != v120 || v122 >= &v120[8 * v115])
    {
      memmove(v122, v120, 8 * v115);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v114 = v121;
    v112 = v160;
LABEL_76:
    v123 = v109[5];
    if (!v123)
    {
      goto LABEL_105;
    }

    goto LABEL_77;
  }

  while (1)
  {
    type metadata accessor for CRLBoardItem(0);
    v29 = swift_dynamicCastClass();
    if (!v29)
    {

      v15 = v25;
      v17 = v170;
      if ((v22 & 0x8000000000000000) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    v30 = v29;
    v31 = *((swift_isaMask & *v29) + 0xB8);
    v32 = swift_unknownObjectRetain();
    v31(v32);
    v33 = v171;
    if ((*v167)(v23, 1, v171) == 1)
    {

      swift_unknownObjectRelease();
      sub_10000CAAC(v23, &qword_1019F6990);
LABEL_27:
      v15 = v25;
      v17 = v170;
      goto LABEL_30;
    }

    (*v159)(v166, v23, v33);
    v34 = UUID._bridgeToObjectiveC()().super.isa;
    v35 = [v172 getContainerItemForUUID:v34];

    if (v35)
    {
      v36 = v169;
      (*((swift_isaMask & *v30) + 0x88))();
      sub_10096F3C0(v36, 1);

      v37 = v36;
      v23 = v164;
      (*v173)(v37, v33);
    }

    v38 = [v30 parentContainerItem];
    if (!v38)
    {
      (*v173)(v166, v33);

      swift_unknownObjectRelease();
      goto LABEL_27;
    }

    v39 = v38;
    v40 = v169;
    (*(**&v38[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
    sub_100ED5648(&qword_1019F37C0, &type metadata accessor for UUID);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v163 = *v173;
    v42 = v163(v40, v33);
    if (v41)
    {
      v163(v166, v171);

      swift_unknownObjectRelease();
    }

    else
    {
      (*((swift_isaMask & *v30) + 0x88))(v42);
      sub_10096F3C0(v40, 1);

      swift_unknownObjectRelease();
      v43 = v171;
      v44 = v163;
      v163(v40, v171);
      v44(v166, v43);
    }

    v15 = v25;
    v17 = v170;
    v23 = v164;
LABEL_30:
    v22 = v165;
    v14 = v168;
    if ((v165 & 0x8000000000000000) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v26 = v15;
    v27 = v17;
    v25 = v15;
    if (!v17)
    {
      break;
    }

LABEL_17:
    v170 = (v27 - 1) & v27;
    v28 = *(*(v22 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v27)))));

    if (!v28)
    {
      goto LABEL_32;
    }
  }

  while (1)
  {
    v25 = (v26 + 1);
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v25 >= v21)
    {
      goto LABEL_32;
    }

    v27 = *(v14 + v25);
    ++v26;
    if (v27)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}

void *sub_100ECD1C8(uint64_t a1, uint64_t a2)
{
  v203 = a2;
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v213 = &v201[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v206 = &v201[-v7];
  v8 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v217 = &v201[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v227 = type metadata accessor for UUID();
  __chkstk_darwin(v227);
  v212 = &v201[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v205 = &v201[-v12];
  __chkstk_darwin(v13);
  v216 = &v201[-v14];
  __chkstk_darwin(v15);
  v231 = &v201[-v16];
  __chkstk_darwin(v17);
  v20 = &v201[-v19];
  v235 = _swiftEmptySetSingleton;
  v236 = _swiftEmptySetSingleton;
  v21 = *&v2[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];
  v226 = v2;
  v22 = *&v2[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer];
  v23 = *(a1 + 16);
  v208 = v22;
  v223 = v18;
  v224 = v21;
  if (!v23)
  {
    goto LABEL_87;
  }

  v232 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v25 = *(v18 + 16);
  v24 = v18 + 16;
  v26 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
  v228 = *(v24 + 56);
  v229 = v25;
  v230 = v24;
  v27 = (v24 - 8);
  v28 = v21;
  v225 = v22;
  v29 = v21;
  v30 = v227;
  do
  {
    v31 = (v229)(v20, v26, v30);
    v32 = v231;
    (*(**(v232 + v29) + 264))(v31);
    v33 = static UUID.== infix(_:_:)();
    v34 = *v27;
    v35 = (*v27)(v32, v30);
    if (v33 & 1) != 0 || (v36 = v231, (*(**(v225 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v35), v37 = static UUID.== infix(_:_:)(), v34(v36, v30), (v37))
    {
      v34(v20, v30);
    }

    else
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v39 = [v226 getBoardItemForUUID:isa];

      if (v39)
      {
        sub_100E6CCD4(v237, v39);
      }

      v30 = v227;
      v34(v20, v227);
      v29 = v224;
    }

    v26 += v228;
    --v23;
  }

  while (v23);
  v40 = v235;
  v22 = v208;
  if ((v235 & 0xC000000000000001) != 0)
  {
    goto LABEL_11;
  }

LABEL_88:
  if (!*(v40 + 16))
  {
    goto LABEL_89;
  }

LABEL_12:
  v202 = 0;
  v228 = v223 + 8;
  v214 = (v223 + 48);
  v215 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v204 = (v223 + 32);
  v210 = xmmword_10146C4D0;
  v211 = xmmword_10146CA70;
  while (1)
  {
    v209 = v40;
    if ((v40 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (!__CocoaSet.count.getter())
    {
      goto LABEL_92;
    }

    v235 = _swiftEmptySetSingleton;

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_100ED5648(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
    Set.Iterator.init(_cocoa:)();
    v42 = v237[0];
    v41 = v237[1];
    v43 = v237[2];
    v21 = v237[3];
    v44 = v237[4];
LABEL_21:
    v207 = v43;
    v22 = ((v43 + 64) >> 6);
    v219 = v42;
    v220 = v41;
    v218 = v22;
LABEL_22:
    v48 = v21;
    v49 = v44;
    while ((v42 & 0x8000000000000000) != 0)
    {
      v59 = __CocoaSet.Iterator.next()();
      if (!v59)
      {
        goto LABEL_85;
      }

      v233 = v59;
      type metadata accessor for CRLBoardItem(0);
      swift_dynamicCast();
      v58 = v234[0];
      v21 = v48;
      v57 = v49;
      if (!v234[0])
      {
        goto LABEL_85;
      }

LABEL_34:
      v230 = v57;
      v60 = v231;
      v232 = *((swift_isaMask & *v58) + 0x88);
      v232();
      v61 = *&v226[v215];
      v62 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v63 = v61 + v62;
      v64 = v217;
      sub_10004FECC(v63, v217, type metadata accessor for CRLBoardCRDTData);
      v65 = v58;
      sub_1005B981C(&unk_1019F5250);
      v66 = v216;
      CRRegister.wrappedValue.getter();
      sub_10003D69C(v64, type metadata accessor for CRLBoardCRDTData);
      LOBYTE(v64) = static UUID.== infix(_:_:)();
      v67 = *v228;
      v68 = v66;
      v69 = v227;
      (*v228)(v68, v227);
      v70 = v69;
      v71 = v67;
      v67(v60, v70);
      if (v64)
      {
        goto LABEL_35;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      v72 = v65;
      if (Strong)
      {
        v92 = Strong;
      }

      else
      {
        v225 = v71;
        v135 = *((swift_isaMask & *v65) + 0xB8);
        v136 = v65;
        v137 = v206;
        v135();
        v138 = v227;
        if ((*v214)(v137, 1, v227) == 1)
        {

          sub_10000CAAC(v137, &qword_1019F6990);
          v71 = v225;
LABEL_35:

          v72 = v65;
LABEL_36:
          v221 = sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 1) = v210;
          v74 = v71;
          v75 = v212;
          v232();
          v76 = UUID.uuidString.getter();
          v78 = v77;
          v222 = v58;
          v79 = v227;
          v225 = v74;
          (v74)(v75, v227);
          *(inited + 7) = &type metadata for String;
          v80 = sub_1000053B0();
          *(inited + 4) = v76;
          v232 = (inited + 32);
          *(inited + 8) = v80;
          *(inited + 5) = v78;
          v81 = v72;
          v82 = [v81 description];
          v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v85 = v84;

          *(inited + 12) = &type metadata for String;
          *(inited + 13) = v80;
          *(inited + 9) = v83;
          *(inited + 10) = v85;
          v86 = v79;
          v87 = *((swift_isaMask & *v81) + 0xB8);
          v88 = v213;
          v222 = v81;
          v87();
          v89 = (*v214)(v88, 1, v86);
          v223 = v80;
          if (v89 == 1)
          {
            sub_10000CAAC(v88, &qword_1019F6990);
            v90 = (inited + 112);
            *(inited + 17) = &type metadata for String;
            *(inited + 18) = v80;
            goto LABEL_46;
          }

          v97 = UUID.uuidString.getter();
          v99 = v98;
          (v225)(v88, v86);
          v90 = (inited + 112);
          *(inited + 17) = &type metadata for String;
          *(inited + 18) = v80;
          if (v99)
          {
            *v90 = v97;
          }

          else
          {
LABEL_46:
            *v90 = 7104878;
            v99 = 0xE300000000000000;
          }

          v229 = inited;
          *(inited + 15) = v99;
          v221 = objc_opt_self();
          v100 = [v221 _atomicIncrementAssertCount];
          v234[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(inited, v234);
          StaticString.description.getter();
          v225 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v101 = String._bridgeToObjectiveC()();

          v102 = [v101 lastPathComponent];

          v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v106 = static OS_os_log.crlAssert;
          v107 = swift_initStackObject();
          *(v107 + 16) = v211;
          *(v107 + 56) = &type metadata for Int32;
          *(v107 + 64) = &protocol witness table for Int32;
          *(v107 + 32) = v100;
          v108 = sub_100006370(0, &qword_1019F4D30);
          *(v107 + 96) = v108;
          v109 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
          v110 = v225;
          *(v107 + 72) = v225;
          v111 = v223;
          *(v107 + 136) = &type metadata for String;
          *(v107 + 144) = v111;
          *(v107 + 104) = v109;
          *(v107 + 112) = v103;
          *(v107 + 120) = v105;
          *(v107 + 176) = &type metadata for UInt;
          *(v107 + 152) = 1234;
          v112 = v234[0];
          *(v107 + 216) = v108;
          *(v107 + 224) = v109;
          *(v107 + 184) = &protocol witness table for UInt;
          *(v107 + 192) = v112;
          v113 = v110;
          v114 = v112;
          v115 = static os_log_type_t.error.getter();
          sub_100005404(v106, &_mh_execute_header, v115, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v107);
          swift_setDeallocating();
          v225 = sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v116 = static os_log_type_t.error.getter();
          v117 = v229;
          sub_100005404(v106, &_mh_execute_header, v116, "BoardItem %{public}@%{public}@ has no parentItem for parentUUID %{public}@", 74, 2, v229);

          type metadata accessor for __VaListBuilder();
          v22 = swift_allocObject();
          v22[2] = 8;
          v22[3] = 0;
          v118 = v22 + 3;
          v22[4] = 0;
          v22[5] = 0;
          v119 = v117[2];
          if (v119)
          {
            v120 = 0;
            while (1)
            {
              sub_100020E58(v232 + 5 * v120, *(v232 + 5 * v120 + 3));
              v121 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
              v122 = *v118;
              v123 = *(v121 + 16);
              v124 = __OFADD__(*v118, v123);
              v125 = *v118 + v123;
              if (v124)
              {
                __break(1u);
                goto LABEL_95;
              }

              v126 = v121;
              v127 = v22[4];
              if (v127 >= v125)
              {
                goto LABEL_66;
              }

              if (v127 + 0x4000000000000000 < 0)
              {
                __break(1u);
LABEL_99:
                __break(1u);
                goto LABEL_100;
              }

              v128 = v22[5];
              if (2 * v127 > v125)
              {
                v125 = 2 * v127;
              }

              v22[4] = v125;
              if ((v125 - 0x1000000000000000) >> 61 != 7)
              {
                goto LABEL_99;
              }

              v129 = swift_slowAlloc();
              v22[5] = v129;
              if (v128)
              {
                break;
              }

LABEL_67:
              if (!v129)
              {
                __break(1u);
                goto LABEL_105;
              }

              v131 = *(v126 + 16);
              if (v131)
              {
                v132 = (v126 + 32);
                v133 = *v118;
                while (1)
                {
                  v134 = *v132++;
                  *&v129[8 * v133] = v134;
                  v133 = *v118 + 1;
                  if (__OFADD__(*v118, 1))
                  {
                    break;
                  }

                  *v118 = v133;
                  if (!--v131)
                  {
                    goto LABEL_51;
                  }
                }

                __break(1u);
LABEL_87:
                v149 = v21;
                v150 = v22;
                v40 = _swiftEmptySetSingleton;
                if ((_swiftEmptySetSingleton & 0xC000000000000001) == 0)
                {
                  goto LABEL_88;
                }

LABEL_11:
                if (__CocoaSet.count.getter())
                {
                  goto LABEL_12;
                }

LABEL_89:

                if (!(_swiftEmptyArrayStorage >> 62))
                {
LABEL_90:

                  return _swiftEmptySetSingleton;
                }

LABEL_101:
                if (!_CocoaArrayWrapper.endIndex.getter())
                {
                  goto LABEL_90;
                }

                sub_1005BC5DC(_swiftEmptyArrayStorage);
                v174 = v173;

                return v174;
              }

LABEL_51:

              if (++v120 == v119)
              {
                goto LABEL_23;
              }
            }

            if (v129 != v128 || v129 >= &v128[8 * v122])
            {
              memmove(v129, v128, 8 * v122);
            }

            LODWORD(v127) = v22;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_66:
            v129 = v22[5];
            goto LABEL_67;
          }

LABEL_23:
          v50 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v51 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v52 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v53 = String._bridgeToObjectiveC()();

          [v221 handleFailureInFunction:v51 file:v52 lineNumber:1234 isFatal:0 format:v53 args:v50];

          swift_setDeallocating();
          swift_arrayDestroy();
          v54 = v222;
          goto LABEL_24;
        }

        v145 = v205;
        (*v204)(v205, v137, v138);
        v146 = UUID._bridgeToObjectiveC()().super.isa;
        v147 = [v226 getBoardItemForUUID:v146];

        v148 = v138;
        v71 = v225;
        (v225)(v145, v148);

        v72 = v65;
        v92 = v147;
        if (!v147)
        {
          goto LABEL_36;
        }
      }

      type metadata accessor for CRLBoardItem(0);
      v93 = swift_dynamicCastClass();
      if (!v93)
      {
        swift_unknownObjectRelease();
        v176 = objc_opt_self();
        v177 = [v176 _atomicIncrementAssertCount];
        v234[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v234);
        StaticString.description.getter();
        v178 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v179 = String._bridgeToObjectiveC()();

        v180 = [v179 lastPathComponent];

        v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v183 = v182;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v184 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v185 = swift_initStackObject();
        *(v185 + 16) = v211;
        *(v185 + 56) = &type metadata for Int32;
        *(v185 + 64) = &protocol witness table for Int32;
        *(v185 + 32) = v177;
        v186 = sub_100006370(0, &qword_1019F4D30);
        *(v185 + 96) = v186;
        v187 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
        *(v185 + 104) = v187;
        *(v185 + 72) = v178;
        *(v185 + 136) = &type metadata for String;
        v188 = sub_1000053B0();
        *(v185 + 112) = v181;
        *(v185 + 120) = v183;
        *(v185 + 176) = &type metadata for UInt;
        *(v185 + 144) = v188;
        *(v185 + 152) = 1221;
        v189 = v234[0];
        *(v185 + 216) = v186;
        *(v185 + 224) = v187;
        *(v185 + 184) = &protocol witness table for UInt;
        *(v185 + 192) = v189;
        v190 = v178;
        v191 = v189;
        v192 = static os_log_type_t.error.getter();
        sub_100005404(v184, &_mh_execute_header, v192, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v185);

        v193 = static os_log_type_t.error.getter();
        sub_100005404(v184, &_mh_execute_header, v193, "Found a non board item parent somehow", 37, 2, _swiftEmptyArrayStorage);

        sub_10063DF98(_swiftEmptyArrayStorage, "Found a non board item parent somehow");
        type metadata accessor for __VaListBuilder();
        v194 = swift_allocObject();
        v194[2] = 8;
        v194[3] = 0;
        v194[4] = 0;
        v194[5] = 0;
        v195 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v196 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v197 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v198 = String._bridgeToObjectiveC()();

        [v176 handleFailureInFunction:v196 file:v197 lineNumber:1221 isFatal:1 format:v198 args:v195];

        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v199, v200);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v94 = v93;
      v232 = v72;
      v95 = v236;
      v229 = v92;
      if ((v236 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        v96 = __CocoaSet.contains(_:)();
        swift_unknownObjectRelease();
        if (v96)
        {
          goto LABEL_43;
        }
      }

      else if (*(v236 + 16))
      {
        v139 = NSObject._rawHashValue(seed:)(*(v236 + 40));
        v140 = -1 << *(v95 + 32);
        v141 = v139 & ~v140;
        if ((*(v95 + 56 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141))
        {
          v142 = ~v140;
          while (1)
          {
            v143 = *(*(v95 + 48) + 8 * v141);
            v144 = static NSObject.== infix(_:_:)();

            if (v144)
            {
              break;
            }

            v141 = (v141 + 1) & v142;
            if (((*(v95 + 56 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) == 0)
            {
              goto LABEL_80;
            }
          }

LABEL_43:
          swift_unknownObjectRelease();
          v54 = v232;
          goto LABEL_24;
        }
      }

LABEL_80:
      swift_unknownObjectRetain();
      sub_100E6CCD4(v234, v94);

      sub_100006370(0, &qword_1019F54D0);
      if (static NSObject.== infix(_:_:)())
      {
        swift_unknownObjectRelease();

        v202 = 1;
        v42 = v219;
        v41 = v220;
        v22 = v218;
        v44 = v230;
        goto LABEL_22;
      }

      sub_100E6CCD4(v234, v94);

      v54 = v234[0];
LABEL_24:

      v48 = v21;
      v49 = v230;
      v42 = v219;
      v41 = v220;
      v22 = v218;
    }

    v55 = v48;
    v56 = v49;
    v21 = v48;
    if (v49)
    {
LABEL_30:
      v57 = (v56 - 1) & v56;
      v58 = *(*(v42 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v56)))));
      if (!v58)
      {
        goto LABEL_85;
      }

      goto LABEL_34;
    }

    while (1)
    {
      v21 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (v21 >= v22)
      {
        break;
      }

      v56 = v41[v21];
      ++v55;
      if (v56)
      {
        goto LABEL_30;
      }
    }

LABEL_85:
    sub_100035F90();

    v40 = v235;
    v22 = v208;
  }

  if (*(v40 + 16))
  {
    v235 = _swiftEmptySetSingleton;
    v45 = -1 << *(v40 + 32);
    v41 = (v40 + 56);
    v43 = ~v45;
    v46 = -v45;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    else
    {
      v47 = -1;
    }

    v44 = (v47 & *(v40 + 56));

    v21 = 0;
    v42 = v40;
    goto LABEL_21;
  }

LABEL_92:
  if (v202)
  {
    v152 = v203;

    v154 = sub_100EDE1B8(v153, v152);

    return v154;
  }

  else
  {
LABEL_95:
    v232 = objc_opt_self();
    LODWORD(v127) = [v232 _atomicIncrementAssertCount];
    v234[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v234);
    StaticString.description.getter();
    v119 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v155 = String._bridgeToObjectiveC()();

    v156 = [v155 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v118 = v157;

    if (qword_1019F20A0 != -1)
    {
LABEL_105:
      swift_once();
    }

    v158 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v159 = swift_initStackObject();
    *(v159 + 16) = v211;
    *(v159 + 56) = &type metadata for Int32;
    *(v159 + 64) = &protocol witness table for Int32;
    *(v159 + 32) = v127;
    v160 = sub_100006370(0, &qword_1019F4D30);
    *(v159 + 96) = v160;
    v161 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
    *(v159 + 104) = v161;
    *(v159 + 72) = v119;
    *(v159 + 136) = &type metadata for String;
    v162 = sub_1000053B0();
    *(v159 + 112) = v21;
    *(v159 + 120) = v118;
    *(v159 + 176) = &type metadata for UInt;
    *(v159 + 144) = v162;
    *(v159 + 152) = 1240;
    v163 = v234[0];
    *(v159 + 216) = v160;
    *(v159 + 224) = v161;
    *(v159 + 184) = &protocol witness table for UInt;
    *(v159 + 192) = v163;
    v164 = v119;
    v165 = v163;
    v166 = static os_log_type_t.error.getter();
    sub_100005404(v158, &_mh_execute_header, v166, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v159);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v167 = static os_log_type_t.error.getter();
    sub_100005404(v158, &_mh_execute_header, v167, "resolveParentHierarchy didn't find root, maybe in a loop? or maybe rootContainer was sent as only input param", 109, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v168 = swift_allocObject();
    v168[2] = 8;
    v168[3] = 0;
    v168[4] = 0;
    v168[5] = 0;
    v169 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v170 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v171 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v172 = String._bridgeToObjectiveC()();

    [v232 handleFailureInFunction:v170 file:v171 lineNumber:1240 isFatal:0 format:v172 args:v169];

    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_1005BC5DC(_swiftEmptyArrayStorage);
      v174 = v175;

      return v174;
    }

    return _swiftEmptySetSingleton;
  }
}

void *sub_100ECEC48(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v81 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v72 - v9;
  if (!*(a1 + 16))
  {
    return _swiftEmptySetSingleton;
  }

  v11 = *(v2 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  v12 = sub_1007C9518(v11);
  if ((v13 & 1) == 0)
  {

    return _swiftEmptySetSingleton;
  }

  v73 = v10;
  v74 = v7;
  v75 = v5;
  v76 = a2;
  v72 = a1;
  v14 = *(*(a1 + 56) + 8 * v12);

  v77 = v11;

  v78 = v81 + 8;
  v79 = v81 + 16;
LABEL_4:
  v15 = v14 & 0xC000000000000001;
  v80 = (v14 & 0xC000000000000001) != 0;
  while (1)
  {
    if (v15)
    {
      if (__CocoaSet.count.getter() >= 2)
      {
        goto LABEL_39;
      }

      v23 = __CocoaSet.startIndex.getter();
      v25 = v24;
      v26 = __CocoaSet.endIndex.getter();
      v28 = v27;
      v29 = static __CocoaSet.Index.== infix(_:_:)();
      sub_1000341AC(v26, v28, 1);
      if (v29)
      {
        goto LABEL_5;
      }
    }

    else
    {
      if (*(v14 + 16) > 1uLL)
      {
LABEL_39:

        return v14;
      }

      v30 = 0;
      v23 = 1 << *(v14 + 32);
      v31 = (v23 + 63) >> 6;
      v32 = (v14 + 56);
      while (1)
      {
        v34 = *v32++;
        v33 = v34;
        if (v34)
        {
          break;
        }

        v30 -= 64;
        if (!--v31)
        {
          v25 = *(v14 + 36);
          goto LABEL_5;
        }
      }

      v35 = __clz(__rbit64(v33));
      v25 = *(v14 + 36);
      if (v35 - v23 == v30)
      {
LABEL_5:
        sub_1000341AC(v23, v25, v15 != 0);
        if (v15)
        {
          goto LABEL_6;
        }

        goto LABEL_24;
      }

      v23 = v35 - v30;
    }

    sub_1007245FC(v23, v25, v80, v14);
    v37 = v36;
    sub_1000341AC(v23, v25, v15 != 0);
    type metadata accessor for CRLGroupItem();
    v38 = swift_dynamicCastClass();
    if (v38)
    {
      break;
    }

    if (v15)
    {
LABEL_6:
      v16 = __CocoaSet.startIndex.getter();
      v18 = v17;
      v19 = __CocoaSet.endIndex.getter();
      v21 = v20;
      v22 = static __CocoaSet.Index.== infix(_:_:)();
      sub_1000341AC(v19, v21, 1);
      if ((v22 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_7;
    }

LABEL_24:
    v44 = 0;
    v16 = 1 << *(v14 + 32);
    v45 = (v16 + 63) >> 6;
    v46 = (v14 + 56);
    while (1)
    {
      v48 = *v46++;
      v47 = v48;
      if (v48)
      {
        break;
      }

      v44 -= 64;
      if (!--v45)
      {
        v18 = *(v14 + 36);
        goto LABEL_7;
      }
    }

    v49 = __clz(__rbit64(v47));
    v18 = *(v14 + 36);
    if (v49 - v16 != v44)
    {
      v16 = v49 - v44;
LABEL_30:
      sub_1007245FC(v16, v18, v80, v14);
      v51 = v50;
      sub_1000341AC(v16, v18, v15 != 0);

      v52 = 0;
      v53 = v76;
      v54 = *(v76 + 16);
      v55 = v75;
      v56 = v74;
      v57 = v73;
      while (v54 != v52)
      {
        v58 = v81;
        v59 = (*(v81 + 16))(v57, v53 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v52++, v55);
        (*((swift_isaMask & *v51) + 0x88))(v59);
        v60 = static UUID.== infix(_:_:)();
        v61 = *(v58 + 8);
        v61(v56, v55);
        v61(v57, v55);
        if (v60)
        {
          goto LABEL_33;
        }
      }

      v62 = v72;
      if (!*(v72 + 16) || (v63 = sub_1007C9518(v51), (v64 & 1) == 0))
      {
LABEL_33:
        sub_1005B981C(&unk_1019F4D60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_101465920;
        *(inited + 32) = v51;
        v66 = v51;
        sub_1005BC5DC(inited);
        v14 = v67;

        goto LABEL_41;
      }

      v14 = *(*(v62 + 56) + 8 * v63);

      goto LABEL_4;
    }

LABEL_7:
    sub_1000341AC(v16, v18, v15 != 0);
  }

  v39 = v38;
  v40 = *(**(v38 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 368);
  v41 = v37;

  v43 = v40(v42);

  if ((v43 & 1) == 0)
  {

    if (v15)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  sub_1005B981C(&unk_1019F4D60);
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_101465920;
  *(v68 + 32) = v39;
  v69 = v41;
  sub_1005BC5DC(v68);
  v14 = v70;

LABEL_41:

  return v14;
}

uint64_t sub_100ECF3A0(uint64_t a1)
{
  isUniquelyReferenced_nonNull_native = v1;
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v203 = &v186[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v195 = &v186[-v7];
  v8 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v207 = &v186[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v211 = type metadata accessor for UUID();
  v10 = *(v211 - 8);
  __chkstk_darwin(v211);
  v202 = &v186[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v192 = &v186[-v13];
  __chkstk_darwin(v14);
  v206 = &v186[-v15];
  __chkstk_darwin(v16);
  v205 = &v186[-v17];
  v18 = *(isUniquelyReferenced_nonNull_native + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
  v221 = _swiftEmptySetSingleton;
  v19 = *(a1 + 16);
  v190 = v18;
  if (!v19)
  {
    goto LABEL_95;
  }

  v20 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v21 = *(v10 + 72);
  v22 = v18;
  do
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v24 = [isUniquelyReferenced_nonNull_native getBoardItemForUUID:isa];

    if (v24)
    {
      sub_100E6CCD4(v222, v24);
    }

    v20 += v21;
    --v19;
  }

  while (v19);
  v25 = v221;
  if ((v221 & 0xC000000000000001) != 0)
  {
    goto LABEL_7;
  }

  while (2)
  {
    if (!*(v25 + 16))
    {
      goto LABEL_97;
    }

LABEL_8:
    v187 = 0;
    v198 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v209 = (v10 + 48);
    v210 = (v10 + 8);
    v191 = (v10 + 32);
    v189 = _swiftEmptyDictionarySingleton;
    v196 = xmmword_10146C4D0;
    v197 = xmmword_10146CA70;
    v188 = xmmword_101465920;
    v204 = isUniquelyReferenced_nonNull_native;
LABEL_9:
    v194 = v25;
    if ((v25 & 0xC000000000000001) != 0)
    {
      if (!__CocoaSet.count.getter())
      {
        goto LABEL_99;
      }

      v221 = _swiftEmptySetSingleton;

      __CocoaSet.makeIterator()();
      type metadata accessor for CRLBoardItem(0);
      sub_100ED5648(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
      Set.Iterator.init(_cocoa:)();
      v25 = v222[0];
      v26 = v222[1];
      v27 = v222[2];
      v28 = v222[3];
      v29 = v222[4];
    }

    else
    {
      if (!*(v25 + 16))
      {
LABEL_99:
        if (v187)
        {

          return v189;
        }

LABEL_102:
        v218 = objc_opt_self();
        LODWORD(v27) = [v218 _atomicIncrementAssertCount];
        v220[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, v220);
        StaticString.description.getter();
        v34 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v143 = String._bridgeToObjectiveC()();

        v144 = [v143 lastPathComponent];

        isUniquelyReferenced_nonNull_native = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v145;

        if (qword_1019F20A0 == -1)
        {
LABEL_103:
          v146 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v147 = swift_allocObject();
          *(v147 + 16) = v197;
          *(v147 + 56) = &type metadata for Int32;
          *(v147 + 64) = &protocol witness table for Int32;
          *(v147 + 32) = v27;
          v148 = sub_100006370(0, &qword_1019F4D30);
          *(v147 + 96) = v148;
          v149 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
          *(v147 + 104) = v149;
          *(v147 + 72) = v34;
          *(v147 + 136) = &type metadata for String;
          v150 = sub_1000053B0();
          *(v147 + 112) = isUniquelyReferenced_nonNull_native;
          *(v147 + 120) = v26;
          *(v147 + 176) = &type metadata for UInt;
          *(v147 + 144) = v150;
          *(v147 + 152) = 1319;
          v151 = v220[0];
          *(v147 + 216) = v148;
          *(v147 + 224) = v149;
          *(v147 + 184) = &protocol witness table for UInt;
          *(v147 + 192) = v151;
          v152 = v34;
          v153 = v151;
          v154 = static os_log_type_t.error.getter();
          sub_100005404(v146, &_mh_execute_header, v154, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v147);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v155 = static os_log_type_t.error.getter();
          sub_100005404(v146, &_mh_execute_header, v155, "resolveToSiblings didn't find root, maybe in a loop?", 52, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v156 = swift_allocObject();
          v156[2] = 8;
          v156[3] = 0;
          v156[4] = 0;
          v156[5] = 0;
          v157 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v158 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v159 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v160 = String._bridgeToObjectiveC()();

          [v218 handleFailureInFunction:v158 file:v159 lineNumber:1319 isFatal:0 format:v160 args:v157];

          v141 = sub_100BD977C(_swiftEmptyArrayStorage);

          goto LABEL_98;
        }

LABEL_111:
        swift_once();
        goto LABEL_103;
      }

      v221 = _swiftEmptySetSingleton;
      v30 = -1 << *(v25 + 32);
      v26 = v25 + 56;
      v27 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v29 = (v32 & *(v25 + 56));

      v28 = 0;
    }

    v193 = v27;
    v33 = (v27 + 64) >> 6;
    v199 = v33;
    v200 = v26;
    v201 = v25;
LABEL_18:
    v34 = v29;
    while (1)
    {
      if ((v25 & 0x8000000000000000) != 0)
      {
        v42 = __CocoaSet.Iterator.next()();
        if (!v42 || (v219[0] = v42, type metadata accessor for CRLBoardItem(0), swift_dynamicCast(), v41 = v220[0], v213 = v34, v214 = v28, !v220[0]))
        {
LABEL_93:
          sub_100035F90();

          v25 = v221;
          goto LABEL_9;
        }
      }

      else
      {
        v38 = v28;
        v39 = v34;
        v40 = v28;
        if (!v34)
        {
          while (1)
          {
            v40 = (v38 + 1);
            if (__OFADD__(v38, 1))
            {
              break;
            }

            if (v40 >= v33)
            {
              goto LABEL_93;
            }

            v39 = *(v26 + 8 * v40);
            ++v38;
            if (v39)
            {
              goto LABEL_25;
            }
          }

LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

LABEL_25:
        v213 = (v39 - 1) & v39;
        v214 = v40;
        v41 = *(*(v25 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));
        if (!v41)
        {
          goto LABEL_93;
        }
      }

      v43 = *((swift_isaMask & *v41) + 0x88);
      v44 = (swift_isaMask & *v41) + 136;
      v45 = v205;
      v43();
      v46 = *(isUniquelyReferenced_nonNull_native + v198);
      v47 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v48 = v207;
      sub_10004FECC(v46 + v47, v207, type metadata accessor for CRLBoardCRDTData);
      v49 = v41;
      v218 = v41;
      v50 = v49;
      sub_1005B981C(&unk_1019F5250);
      v51 = v206;
      CRRegister.wrappedValue.getter();
      sub_10003D69C(v48, type metadata accessor for CRLBoardCRDTData);
      v52 = static UUID.== infix(_:_:)();
      isUniquelyReferenced_nonNull_native = v211;
      v53 = *v210;
      (*v210)(v51, v211);
      v53(v45, isUniquelyReferenced_nonNull_native);
      if ((v52 & 1) == 0)
      {
        v217 = v44;
        if (swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_65;
        }

        v216 = v43;
        v54 = *((swift_isaMask & *v50) + 0xB8);
        v215 = v50;
        v55 = v50;
        v56 = v195;
        v54();
        isUniquelyReferenced_nonNull_native = v211;
        if ((*v209)(v56, 1, v211) == 1)
        {

          sub_10000CAAC(v56, &qword_1019F6990);
          v43 = v216;
          v50 = v215;
        }

        else
        {
          v57 = v192;
          (*v191)(v192, v56, isUniquelyReferenced_nonNull_native);
          v58 = UUID._bridgeToObjectiveC()().super.isa;
          v59 = [v204 getBoardItemForUUID:v58];

          v53(v57, isUniquelyReferenced_nonNull_native);
          v43 = v216;
          v50 = v215;
          if (v59)
          {
LABEL_65:
            v25 = v201;

            v34 = type metadata accessor for CRLBoardItem(0);
            v111 = swift_dynamicCastClass();
            if (!v111)
            {
              goto LABEL_113;
            }

            v112 = v111;
            if (v189[2] && (v113 = sub_1007C9518(v111), (v114 & 1) != 0))
            {
              v220[0] = *(v189[7] + 8 * v113);
              v115 = v50;

              sub_100E6CCD4(v219, v115);

              v26 = v220[0];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v219[0] = v189;
              LODWORD(v27) = v189;
              v116 = sub_1007C9518(v112);
              v118 = v189[2];
              v119 = (v117 & 1) == 0;
              v103 = __OFADD__(v118, v119);
              v120 = v118 + v119;
              if (v103)
              {
                goto LABEL_110;
              }

              v121 = v117;
              if (v189[3] >= v120)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v27 = v219;
                  v139 = v116;
                  sub_100AACC20();
                  v116 = v139;
                }
              }

              else
              {
                sub_100A98044(v120, isUniquelyReferenced_nonNull_native);
                LODWORD(v27) = v219[0];
                v116 = sub_1007C9518(v112);
                if ((v121 & 1) != (v122 & 1))
                {
                  goto LABEL_116;
                }
              }

              isUniquelyReferenced_nonNull_native = v204;
              v135 = v219[0];
              v189 = v219[0];
              if (v121)
              {
                v136 = *(v219[0] + 7);
                v27 = *(v136 + 8 * v116);
                *(v136 + 8 * v116) = v26;

                swift_unknownObjectRelease();
              }

              else
              {
                *(v219[0] + (v116 >> 6) + 8) |= 1 << v116;
                *(v135[6] + 8 * v116) = v112;
                *(v135[7] + 8 * v116) = v26;

                v137 = v189[2];
                v103 = __OFADD__(v137, 1);
                v138 = v137 + 1;
                if (v103)
                {
                  __break(1u);
LABEL_113:
                  swift_unknownObjectRelease();
                  v161 = objc_opt_self();
                  v162 = [v161 _atomicIncrementAssertCount];
                  v220[0] = [objc_allocWithZone(NSString) init];
                  sub_100604538(_swiftEmptyArrayStorage, v220);
                  StaticString.description.getter();
                  v163 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v164 = String._bridgeToObjectiveC()();

                  v165 = [v164 lastPathComponent];

                  v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v168 = v167;

                  if (qword_1019F20A0 != -1)
                  {
                    swift_once();
                  }

                  v169 = static OS_os_log.crlAssert;
                  sub_1005B981C(&qword_1019F54E0);
                  inited = swift_initStackObject();
                  *(inited + 16) = v197;
                  *(inited + 56) = &type metadata for Int32;
                  *(inited + 64) = &protocol witness table for Int32;
                  *(inited + 32) = v162;
                  v171 = sub_100006370(0, &qword_1019F4D30);
                  *(inited + 96) = v171;
                  v172 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
                  *(inited + 104) = v172;
                  *(inited + 72) = v163;
                  *(inited + 136) = &type metadata for String;
                  v173 = sub_1000053B0();
                  *(inited + 112) = v166;
                  *(inited + 120) = v168;
                  *(inited + 176) = &type metadata for UInt;
                  *(inited + 144) = v173;
                  *(inited + 152) = 1293;
                  v174 = v220[0];
                  *(inited + 216) = v171;
                  *(inited + 224) = v172;
                  *(inited + 184) = &protocol witness table for UInt;
                  *(inited + 192) = v174;
                  v175 = v163;
                  v176 = v174;
                  v177 = static os_log_type_t.error.getter();
                  sub_100005404(v169, &_mh_execute_header, v177, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

                  v178 = static os_log_type_t.error.getter();
                  sub_100005404(v169, &_mh_execute_header, v178, "Found a non board item parent somehow", 37, 2, _swiftEmptyArrayStorage);

                  sub_10063DF98(_swiftEmptyArrayStorage, "Found a non board item parent somehow");
                  type metadata accessor for __VaListBuilder();
                  v179 = swift_allocObject();
                  v179[2] = 8;
                  v179[3] = 0;
                  v179[4] = 0;
                  v179[5] = 0;
                  v180 = __VaListBuilder.va_list()();
                  StaticString.description.getter();
                  v181 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v182 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v183 = String._bridgeToObjectiveC()();

                  [v161 handleFailureInFunction:v181 file:v182 lineNumber:1293 isFatal:1 format:v183 args:v180];

                  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v184, v185);
                  _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
LABEL_116:
                  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                  __break(1u);
                  return result;
                }

                v189[2] = v138;
              }

              v26 = v200;
            }

            else
            {
              sub_1005B981C(&unk_1019F4D60);
              v27 = swift_initStackObject();
              *(v27 + 16) = v188;
              *(v27 + 32) = v50;
              v123 = v50;
              sub_1005BC5DC(v27);
              v125 = v124;
              swift_setDeallocating();
              swift_arrayDestroy();
              swift_unknownObjectRetain();
              v26 = swift_isUniquelyReferenced_nonNull_native();
              v220[0] = v189;
              LODWORD(v27) = v189;
              v126 = sub_1007C9518(v112);
              v128 = v189[2];
              v129 = (v127 & 1) == 0;
              v103 = __OFADD__(v128, v129);
              v130 = v128 + v129;
              if (v103)
              {
                goto LABEL_108;
              }

              isUniquelyReferenced_nonNull_native = v127;
              if (v189[3] >= v130)
              {
                if ((v26 & 1) == 0)
                {
                  v27 = v220;
                  v34 = v126;
                  sub_100AACC20();
                  v126 = v34;
                }
              }

              else
              {
                sub_100A98044(v130, v26);
                LODWORD(v27) = v220[0];
                v126 = sub_1007C9518(v112);
                if ((isUniquelyReferenced_nonNull_native & 1) != (v131 & 1))
                {
                  goto LABEL_116;
                }
              }

              v26 = v200;
              v132 = v220[0];
              v189 = v220[0];
              if (isUniquelyReferenced_nonNull_native)
              {
                *(*(v220[0] + 7) + 8 * v126) = v125;
                swift_unknownObjectRelease();
              }

              else
              {
                *(v220[0] + (v126 >> 6) + 8) |= 1 << v126;
                *(v132[6] + 8 * v126) = v112;
                *(v132[7] + 8 * v126) = v125;
                v133 = v132[2];
                v103 = __OFADD__(v133, 1);
                v134 = v133 + 1;
                if (v103)
                {
                  goto LABEL_109;
                }

                v132[2] = v134;
              }

              isUniquelyReferenced_nonNull_native = v204;
              LODWORD(v27) = sub_100006370(0, &qword_1019F54D0);
              if (static NSObject.== infix(_:_:)())
              {
                swift_unknownObjectRelease();

                v187 = 1;
              }

              else
              {
                v27 = &v221;
                sub_100E6CCD4(v220, v112);
              }
            }

            v33 = v199;
            v29 = v213;
            v28 = v214;
            goto LABEL_18;
          }
        }
      }

      v216 = sub_1005B981C(&qword_1019F54E0);
      v60 = v53;
      v61 = swift_initStackObject();
      *(v61 + 16) = v196;
      v62 = v43;
      v63 = v202;
      v62();
      v64 = UUID.uuidString.getter();
      v66 = v65;
      v208 = v60;
      v60(v63, isUniquelyReferenced_nonNull_native);
      *(v61 + 56) = &type metadata for String;
      v67 = sub_1000053B0();
      *(v61 + 32) = v64;
      v217 = v61 + 32;
      *(v61 + 64) = v67;
      *(v61 + 40) = v66;
      v68 = v50;
      v69 = [v68 description];
      v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v72 = v71;

      *(v61 + 96) = &type metadata for String;
      *(v61 + 104) = v67;
      *(v61 + 72) = v70;
      *(v61 + 80) = v72;
      v73 = *((swift_isaMask & *v68) + 0xB8);
      v74 = v203;
      v212 = v68;
      v73();
      v75 = (*v209)(v74, 1, isUniquelyReferenced_nonNull_native);
      v215 = v67;
      if (v75 == 1)
      {
        sub_10000CAAC(v74, &qword_1019F6990);
        v76 = (v61 + 112);
        *(v61 + 136) = &type metadata for String;
        *(v61 + 144) = v67;
      }

      else
      {
        v77 = UUID.uuidString.getter();
        v79 = v78;
        v208(v74, isUniquelyReferenced_nonNull_native);
        v76 = (v61 + 112);
        *(v61 + 136) = &type metadata for String;
        *(v61 + 144) = v67;
        if (v79)
        {
          *v76 = v77;
          goto LABEL_39;
        }
      }

      *v76 = 7104878;
      v79 = 0xE300000000000000;
LABEL_39:
      *(v61 + 120) = v79;
      v216 = objc_opt_self();
      v80 = [v216 _atomicIncrementAssertCount];
      v220[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(v61, v220);
      StaticString.description.getter();
      v218 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v81 = String._bridgeToObjectiveC()();

      v82 = [v81 lastPathComponent];

      v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v85 = v84;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v86 = static OS_os_log.crlAssert;
      v87 = swift_initStackObject();
      *(v87 + 16) = v197;
      *(v87 + 56) = &type metadata for Int32;
      *(v87 + 64) = &protocol witness table for Int32;
      *(v87 + 32) = v80;
      v88 = sub_100006370(0, &qword_1019F4D30);
      *(v87 + 96) = v88;
      v89 = sub_10000FE24(&qword_1019F52E0, &qword_1019F4D30);
      v90 = v218;
      *(v87 + 72) = v218;
      v91 = v215;
      *(v87 + 136) = &type metadata for String;
      *(v87 + 144) = v91;
      *(v87 + 104) = v89;
      *(v87 + 112) = v83;
      *(v87 + 120) = v85;
      *(v87 + 176) = &type metadata for UInt;
      *(v87 + 152) = 1313;
      v92 = v220[0];
      *(v87 + 216) = v88;
      *(v87 + 224) = v89;
      *(v87 + 184) = &protocol witness table for UInt;
      *(v87 + 192) = v92;
      v93 = v90;
      v94 = v92;
      v95 = static os_log_type_t.error.getter();
      sub_100005404(v86, &_mh_execute_header, v95, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v87);
      swift_setDeallocating();
      v215 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v96 = static os_log_type_t.error.getter();
      sub_100005404(v86, &_mh_execute_header, v96, "BoardItem %{public}@%{public}@ has no parentItem for parentUUID %{public}@", 74, 2, v61);

      type metadata accessor for __VaListBuilder();
      v97 = swift_allocObject();
      v97[2] = 8;
      v97[3] = 0;
      v98 = v97 + 3;
      v97[4] = 0;
      v97[5] = 0;
      v218 = v61;
      v34 = *(v61 + 16);
      v26 = v217;
      if (v34)
      {
        break;
      }

LABEL_19:
      v27 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v37 = String._bridgeToObjectiveC()();

      [v216 handleFailureInFunction:v35 file:v36 lineNumber:1313 isFatal:0 format:v37 args:v27];

      swift_setDeallocating();
      swift_arrayDestroy();

      v34 = v213;
      v28 = v214;
      isUniquelyReferenced_nonNull_native = v204;
      v26 = v200;
      v25 = v201;
      v33 = v199;
    }

    isUniquelyReferenced_nonNull_native = 0;
    while (1)
    {
      v99 = (v26 + 40 * isUniquelyReferenced_nonNull_native);
      v10 = v99[3];
      sub_100020E58(v99, v10);
      v100 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v101 = *v98;
      v102 = *(v100 + 16);
      v103 = __OFADD__(*v98, v102);
      v104 = *v98 + v102;
      if (v103)
      {
        __break(1u);
        goto LABEL_102;
      }

      v105 = v100;
      v27 = v97[4];
      if (v27 >= v104)
      {
        goto LABEL_58;
      }

      if (v27 + 0x4000000000000000 < 0)
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v10 = v97[5];
      if (2 * v27 > v104)
      {
        v104 = 2 * v27;
      }

      v97[4] = v104;
      if ((v104 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_105;
      }

      v106 = swift_slowAlloc();
      v97[5] = v106;
      if (v10)
      {
        if (v106 != v10 || v106 >= v10 + 8 * v101)
        {
          memmove(v106, v10, 8 * v101);
        }

        LODWORD(v27) = v97;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_58:
        v106 = v97[5];
      }

      if (!v106)
      {
        goto LABEL_107;
      }

      v108 = *(v105 + 16);
      if (v108)
      {
        break;
      }

LABEL_43:

      if (++isUniquelyReferenced_nonNull_native == v34)
      {
        goto LABEL_19;
      }
    }

    v109 = (v105 + 32);
    v18 = *v98;
    while (1)
    {
      v110 = *v109++;
      *(v106 + v18) = v110;
      v18 = *v98 + 1;
      if (__OFADD__(*v98, 1))
      {
        break;
      }

      *v98 = v18;
      if (!--v108)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_95:
    v140 = v18;
    v25 = _swiftEmptySetSingleton;
    if ((_swiftEmptySetSingleton & 0xC000000000000001) == 0)
    {
      continue;
    }

    break;
  }

LABEL_7:
  if (__CocoaSet.count.getter())
  {
    goto LABEL_8;
  }

LABEL_97:

  v141 = sub_100BD977C(_swiftEmptyArrayStorage);
LABEL_98:

  return v141;
}

uint64_t sub_100ED0DE8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  type metadata accessor for CRLBoardCRDTData(0);
  v2[7] = swift_task_alloc();
  type metadata accessor for UUID();
  v2[8] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100ED0ED0, 0, 0);
}

uint64_t sub_100ED0ED0()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v7 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v8 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v8 + v9, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v3, type metadata accessor for CRLBoardCRDTData);
  v10 = (*(v4 + v7) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v11 = *v10;
  v12 = v10[1];

  sub_10084BD4C(v2, v11, v12, v1);
  v13 = swift_task_alloc();
  v0[10] = v13;
  v13[2] = v6;
  v13[3] = v1;
  v13[4] = v5;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_100ED10AC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v14, 0, 0, 0xD000000000000028, 0x80000001015AD430, sub_100EDD504, v13, &type metadata for () + 8);
}

uint64_t sub_100ED10AC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100ED1268;
  }

  else
  {

    v2 = sub_100ED11C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100ED11C8()
{
  sub_10003D69C(*(v0 + 72), type metadata accessor for CRLBoardIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ED1268()
{
  v1 = *(v0 + 72);

  sub_10003D69C(v1, type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100ED130C()
{
  v1[18] = v0;
  type metadata accessor for CRLBoardCRDTData(0);
  v1[19] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[20] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_100ED13F4, 0, 0);
}

uint64_t sub_100ED13F4()
{
  if (sub_100768904())
  {

    v1 = v0[1];

    return v1(1);
  }

  else
  {
    v4 = v0[20];
    v3 = v0[21];
    v6 = v0[18];
    v5 = v0[19];
    v7 = *(v6 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
    v8 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v9 = *(v6 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v10 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FECC(v9 + v10, v5, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10003D69C(v5, type metadata accessor for CRLBoardCRDTData);
    v11 = (*(v6 + v8) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v12 = *v11;
    v13 = v11[1];

    sub_10084BD4C(v4, v12, v13, v3);
    v14 = swift_task_alloc();
    v0[22] = v14;
    *(v14 + 16) = v7;
    *(v14 + 24) = v3;
    v15 = swift_task_alloc();
    v0[23] = v15;
    *v15 = v0;
    v15[1] = sub_100ED1638;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 25, 0, 0, 0xD00000000000002ELL, 0x80000001015AD480, sub_100EDDA84, v14, &type metadata for Bool);
  }
}

uint64_t sub_100ED1638()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100ED17F4;
  }

  else
  {

    v2 = sub_100ED1754;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100ED1754()
{
  v1 = *(v0 + 200);
  sub_10003D69C(*(v0 + 168), type metadata accessor for CRLBoardIdentifier);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100ED17F4()
{
  v1 = *(v0 + 168);

  sub_10003D69C(v1, type metadata accessor for CRLBoardIdentifier);
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Failed to check if board hasUnsyncedChanges %@", 46, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  v8 = *(v0 + 8);

  return v8(0);
}

uint64_t sub_100ED1B08(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100ED1BB0;

  return sub_100ED130C();
}

uint64_t sub_100ED1BB0(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100ED1CF8(uint64_t (*a1)(void, void), uint64_t a2)
{
  v30 = a2;
  v31 = a1;
  v3 = sub_1005B981C(&unk_101A226C0);
  __chkstk_darwin(v3);
  v5 = &v27 - v4;
  v6 = type metadata accessor for CRLBoardDataStoreChangeSet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v32 = &v27 - v10;
  v11 = *&v2[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges];
  v12 = *&v2[OBJC_IVAR____TtC8Freeform8CRLBoard_freehandDrawingBucketManager];
  v37 = type metadata accessor for CRLBoard(0);
  v38 = &off_1018A75B0;
  aBlock[0] = v2;
  v13 = OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue;
  v33 = v11;
  v34 = v12;
  v35 = aBlock;
  v28 = v2;
  OS_dispatch_queue.sync<A>(execute:)();
  sub_100005070(aBlock);
  v14 = v7;
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_10000CAAC(v5, &unk_101A226C0);
    if (v31)
    {
      return v31(0, 0);
    }
  }

  else
  {
    sub_100EDD3F4(v5, v32, type metadata accessor for CRLBoardDataStoreChangeSet);
    v16 = *(v11 + v13);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_100EDD47C;
    *(v17 + 24) = v11;
    v38 = sub_10002AAE4;
    v39 = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10002AAB8;
    v37 = &unk_1018A76B0;
    v18 = _Block_copy(aBlock);

    dispatch_sync(v16, v18);
    _Block_release(v18);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }

    else
    {
      v19 = v28;
      v20 = v29;
      v21 = v32;
      sub_10004FECC(v32, v29, type metadata accessor for CRLBoardDataStoreChangeSet);
      v22 = (*(v14 + 80) + 40) & ~*(v14 + 80);
      v23 = swift_allocObject();
      v24 = v30;
      v25 = v31;
      v23[2] = v19;
      v23[3] = v25;
      v23[4] = v24;
      sub_100EDD3F4(v20, v23 + v22, type metadata accessor for CRLBoardDataStoreChangeSet);
      v26 = v19;
      sub_10002E7A8(v25);
      sub_100E1B004(v21, sub_100EDD484, v23);

      return sub_10003D69C(v21, type metadata accessor for CRLBoardDataStoreChangeSet);
    }
  }

  return result;
}

uint64_t sub_100ED2164(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A226F0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_100ED1CF8(sub_100EDD94C, v8);
}

uint64_t sub_100ED22AC(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1005B981C(&unk_101A226F0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1005B981C(&unk_101A226F0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100ED24A0(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100ED2518, 0, 0);
}

uint64_t sub_100ED2518()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100ED2610;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000019, 0x80000001015AD460, sub_100EDD944, v2, &type metadata for Bool);
}

uint64_t sub_100ED2610()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100ED27AC;
  }

  else
  {

    v2 = sub_100ED272C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100ED272C()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, *(v0 + 56), 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100ED27AC()
{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, 0, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

size_t sub_100ED285C(uint64_t a1, void (**a2)(unint64_t, char *, uint64_t), void (*a3)(void, void), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = a2;
    swift_errorRetain();
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v64 = v16;
    v61 = v13;
    v62 = v11;
    v60 = v10;
    v30 = (*(a2 + OBJC_IVAR____TtC8Freeform8CRLBoard_freehandDrawingBucketManager))[2];
    swift_beginAccess();
    v31 = 0;
    v32 = *(v30 + 16);
    v33 = 1 << *(v32 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v32 + 64);
    for (i = (v33 + 63) >> 6; v35; *(v38 + *(*v38 + 136)) = 0)
    {
      v37 = v31;
LABEL_15:
      v38 = *(*(v32 + 56) + ((v37 << 9) | (8 * __clz(__rbit64(v35)))));
      v35 &= v35 - 1;
    }

    while (1)
    {
      v37 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v37 >= i)
      {
        v28 = *(a5 + *(type metadata accessor for CRLBoardDataStoreChangeSet(0) + 52));
        if (!v28)
        {
          v47 = 0;
          goto LABEL_32;
        }

        if (v28 >> 62)
        {
          goto LABEL_40;
        }

        v39 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_20;
      }

      v35 = *(v32 + 64 + 8 * v37);
      ++v31;
      if (v35)
      {
        v31 = v37;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v21 = Error.localizedDescription.getter();
  v23 = v22;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v21;
  *(inited + 40) = v23;
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v24, "Saving board change set failed with error %@", 44, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v25 = *(v15 + OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges);
  v26 = *(v25 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100EDE700;
  *(v27 + 24) = v25;
  v69 = sub_10002AAE0;
  v70 = v27;
  aBlock = _NSConcreteStackBlock;
  v66 = *"";
  v67 = sub_10002AAB8;
  v68 = &unk_1018A7778;
  a2 = _Block_copy(&aBlock);

  dispatch_sync(v26, a2);
  _Block_release(a2);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
    do
    {
      __break(1u);
LABEL_40:
      v54 = v28;
      v55 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v54;
      v39 = v55;
LABEL_20:
      v40 = _swiftEmptyArrayStorage;
      if (v39)
      {
        v41 = v28;
        v57 = a2;
        v58 = a4;
        v59 = a3;
        aBlock = _swiftEmptyArrayStorage;
        result = sub_100776524(0, v39 & ~(v39 >> 63), 0);
        if (v39 < 0)
        {
          __break(1u);
          return result;
        }

        v42 = 0;
        v40 = aBlock;
        v43 = v41;
        v63 = v41 & 0xC000000000000001;
        do
        {
          if (v63)
          {
            v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v44 = *(v43 + 8 * v42 + 32);
          }

          (*(*v44 + 264))();

          aBlock = v40;
          v46 = v40[2];
          v45 = v40[3];
          if (v46 >= v45 >> 1)
          {
            sub_100776524(v45 > 1, v46 + 1, 1);
            v40 = aBlock;
          }

          ++v42;
          v40[2] = (v46 + 1);
          v15[4](v40 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v15[9] * v46, v18, v64);
          v43 = v41;
        }

        while (v39 != v42);
        a3 = v59;
        a4 = v58;
        a2 = v57;
      }

      v47 = sub_100E93A84(v40);

LABEL_32:
      v48 = v62;
      v18 = v61;
      v15 = a2;
      v49 = *(a2 + OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges);
      sub_100768EB0(v47);

      v50 = *(v49 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
      v51 = swift_allocObject();
      *(v51 + 16) = sub_100EDD4FC;
      *(v51 + 24) = v49;
      v69 = sub_10002AAE0;
      v70 = v51;
      aBlock = _NSConcreteStackBlock;
      v66 = *"";
      v67 = sub_10002AAB8;
      v68 = &unk_1018A7728;
      a2 = _Block_copy(&aBlock);

      dispatch_sync(v50, a2);
      _Block_release(a2);
      LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();
    }

    while ((v50 & 1) != 0);
    if (a3)
    {
      a3(1, 0);
    }

    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v53 = v52;
    result = (*(v48 + 8))(v18, v60);
    *(v15 + OBJC_IVAR____TtC8Freeform8CRLBoard_lastSaveChangesTime) = v53;
  }

  else
  {
    if (a3)
    {
      swift_errorRetain();
      a3(a1, 1);
    }
  }

  return result;
}

char *sub_100ED3038(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v59 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  __chkstk_darwin(v5 - 8);
  v62 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v60 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = v57 - v10;
  v11 = *&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
  v12 = *&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v13 = *(*&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v14 = *(*&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v15 = *(*&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] + 16);
  if (v15)
  {
    v16 = v11;

    v17 = v15;
    [v17 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    sub_100006370(0, &qword_1019F52C0);
    v18 = swift_dynamicCast();
    v19 = v64;
    if (!v18)
    {
      v19 = 0;
    }

    v58 = v19;
  }

  else
  {
    v20 = v11;

    v58 = 0;
  }

  v21 = a1[OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported];
  type metadata accessor for CRLContainerItemData(0);
  v22 = swift_dynamicCastClassUnconditional();
  v57[2] = v13;
  v23 = v22;
  v57[0] = swift_dynamicCastClassUnconditional();
  v24 = objc_allocWithZone(ObjectType);
  *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_transactionContext] = 0;
  v25 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  v26 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  (*(*(v26 - 8) + 56))(&v24[v25], 1, 1, v26);
  *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  v27 = &v24[OBJC_IVAR____TtC8Freeform8CRLBoard_fixupData];
  *v27 = _swiftEmptySetSingleton;
  v27[1] = _swiftEmptySetSingleton;
  *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_cancellables] = _swiftEmptySetSingleton;
  v28 = OBJC_IVAR____TtC8Freeform8CRLBoard_opportunisticallyBuiltAffectedItemSetIncludingParents;
  *&v24[v28] = sub_100BD4D84(_swiftEmptyArrayStorage);
  v61 = a1;
  v29 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedChangeAvailablePublisher;
  sub_1005B981C(&unk_101A22670);
  swift_allocObject();
  *&v24[v29] = PassthroughSubject.init()();
  v30 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedRealTimeChangesAvailablePublisher;
  swift_allocObject();
  *&v24[v30] = PassthroughSubject.init()();
  v31 = OBJC_IVAR____TtC8Freeform8CRLBoard_changeSummaryPublisher;
  sub_1005B981C(&qword_101A12970);
  swift_allocObject();
  *&v24[v31] = PassthroughSubject.init()();
  *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_realTimePendingChangesCancellable] = 0;
  swift_unknownObjectWeakInit();
  *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_store] = v11;
  *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_data] = v12;
  v24[OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported] = v21;
  v32 = type metadata accessor for CRLRootContainerItem(0);
  v33 = objc_allocWithZone(v32);
  swift_unknownObjectWeakInit();
  *&v33[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v33[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  v57[1] = v14;
  *&v33[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v33[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v33[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v33[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v11;
  *&v33[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v23;
  v34 = type metadata accessor for CRLBoardItemBase(0);
  v67.receiver = v33;
  v67.super_class = v34;
  v35 = v11;

  v36 = objc_msgSendSuper2(&v67, "init");
  v37 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
  *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] = v36;
  v38 = objc_allocWithZone(v32);
  swift_unknownObjectWeakInit();
  *&v38[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v38[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v38[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v38[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v38[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v38[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v35;
  *&v38[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v57[0];
  v66.receiver = v38;
  v66.super_class = v34;
  v57[0] = v35;

  *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] = objc_msgSendSuper2(&v66, "init");
  v39 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v40 = v59;
  sub_10004FECC(v12 + v39, v59, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  v41 = v62;
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v40, type metadata accessor for CRLBoardCRDTData);
  v42 = *(v12 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v43 = *(v12 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

  v44 = v63;
  sub_10084BD4C(v41, v42, v43, v63);
  v45 = v60;
  v46 = sub_10004FECC(v44, v60, type metadata accessor for CRLBoardIdentifier);
  (*(**(*&v24[v37] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v46);
  type metadata accessor for CRLBoardChangeSet(0);
  swift_allocObject();
  *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] = sub_100768A10(v45, v41, 0);
  type metadata accessor for CRLFreehandDrawingShapeItemBucketManager();
  v47 = swift_allocObject();
  sub_1005B981C(&qword_101A12978);
  v48 = swift_allocObject();
  *(v48 + 16) = _swiftEmptyDictionarySingleton;
  *(v48 + 24) = _swiftEmptyDictionarySingleton;
  *(v47 + 16) = v48;
  *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_freehandDrawingBucketManager] = v47;
  type metadata accessor for CRLActiveBoardShareState();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  swift_unknownObjectWeakInit();
  v50 = *(v49 + 16);
  v51 = v58;
  *(v49 + 16) = v58;
  v52 = v51;

  *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] = v49;
  *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_lastSaveChangesTime] = 0;
  v53 = type metadata accessor for CRLBoard(0);
  v65.receiver = v24;
  v65.super_class = v53;
  v54 = objc_msgSendSuper2(&v65, "init");
  swift_unknownObjectWeakAssign();
  v64 = *(*&v54[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_uncommittedChangeAvailablePublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = v54;

  sub_1005B981C(&unk_101A22680);
  sub_10001A2F8(&qword_101A12980, &unk_101A22680);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10003D69C(v44, type metadata accessor for CRLBoardIdentifier);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v55;
}

void *sub_100ED3AE4(uint64_t a1)
{
  v2 = v1;
  v49 = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v5 = *(a1 + OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems);
  if (!v5)
  {
    sub_10096C7D4();
    v5 = *(a1 + v4);
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  if (v6 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = v6 & 0xC000000000000001;
    v45 = v6 + 32;
    v46 = v6 & 0xFFFFFFFFFFFFFF8;

    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v42 = i;
    v43 = v6;
    v41 = v6 & 0xC000000000000001;
    v39 = v2;
    while (1)
    {
      if (v8)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v46 + 16))
        {
          goto LABEL_54;
        }

        v11 = *(v45 + 8 * v9);
      }

      v12 = v11;
      v13 = __OFADD__(v9++, 1);
      if (v13)
      {
        break;
      }

      type metadata accessor for CRLFreehandDrawingItem();
      if (swift_dynamicCastClass())
      {
        v14 = v12;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v10 = v49;
        goto LABEL_11;
      }

      type metadata accessor for CRLContainerItem(0);
      if (!swift_dynamicCastClass())
      {

        goto LABEL_11;
      }

      v47 = v12;
      v15 = sub_100ED3AE4();
      v16 = v15 >> 62;
      v17 = v15;
      if (v15 >> 62)
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = v10;
      v19 = v10 & 0xFFFFFFFFFFFFFF8;
      v10 >>= 62;
      if (v10)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
        v21 = v37 + v18;
        if (__OFADD__(v37, v18))
        {
LABEL_51:
          __break(1u);
LABEL_52:

          return v10;
        }
      }

      else
      {
        v20 = *(v19 + 16);
        v21 = v20 + v18;
        if (__OFADD__(v20, v18))
        {
          goto LABEL_51;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v10)
        {
          v22 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v21 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

LABEL_32:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_33;
      }

      if (v10)
      {
        goto LABEL_32;
      }

LABEL_33:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v22 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_34:
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v25 = v17;
      if (v16)
      {
        v27 = v22;
        v28 = _CocoaArrayWrapper.endIndex.getter();
        v22 = v27;
        v26 = v28;
        v25 = v17;
        if (v26)
        {
LABEL_38:
          if (((v24 >> 1) - v23) < v18)
          {
            goto LABEL_56;
          }

          v29 = v22 + 8 * v23 + 32;
          v44 = v22;
          if (v16)
          {
            if (v26 < 1)
            {
              goto LABEL_58;
            }

            v40 = v6;
            v30 = v25;
            sub_10001A2F8(&qword_1019FFF28, &qword_1019FFF20);
            for (j = 0; j != v26; ++j)
            {
              sub_1005B981C(&qword_1019FFF20);
              v32 = sub_100777974(v48, j, v30);
              v34 = *v33;
              (v32)(v48, 0);
              *(v29 + 8 * j) = v34;
            }

            v2 = v39;
            v6 = v40;
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          if (v18 > 0)
          {
            v35 = *(v44 + 16);
            v13 = __OFADD__(v35, v18);
            v36 = v35 + v18;
            if (v13)
            {
              goto LABEL_57;
            }

            *(v44 + 16) = v36;
          }

          goto LABEL_10;
        }
      }

      else
      {
        v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          goto LABEL_38;
        }
      }

      if (v18 > 0)
      {
        goto LABEL_55;
      }

LABEL_10:
      v10 = v6;
      v49 = v6;
      i = v42;
      v6 = v43;
      v8 = v41;
LABEL_11:
      if (v9 == i)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100ED4010(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v58 = a5;
  v59 = a4;
  v60 = a3;
  v10 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  __chkstk_darwin(v12 - 8);
  v55 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v14 - 8);
  v57 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v53 = &v52 - v17;
  v18 = objc_allocWithZone(v6);
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_transactionContext] = 0;
  v19 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  v20 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  v21 = &v18[OBJC_IVAR____TtC8Freeform8CRLBoard_fixupData];
  *v21 = _swiftEmptySetSingleton;
  v21[1] = _swiftEmptySetSingleton;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_cancellables] = _swiftEmptySetSingleton;
  v22 = OBJC_IVAR____TtC8Freeform8CRLBoard_opportunisticallyBuiltAffectedItemSetIncludingParents;
  *&v18[v22] = sub_100BD4D84(_swiftEmptyArrayStorage);
  v23 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedChangeAvailablePublisher;
  sub_1005B981C(&unk_101A22670);
  swift_allocObject();
  *&v18[v23] = PassthroughSubject.init()();
  v24 = OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedRealTimeChangesAvailablePublisher;
  swift_allocObject();
  *&v18[v24] = PassthroughSubject.init()();
  v25 = OBJC_IVAR____TtC8Freeform8CRLBoard_changeSummaryPublisher;
  sub_1005B981C(&qword_101A12970);
  swift_allocObject();
  *&v18[v25] = PassthroughSubject.init()();
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_realTimePendingChangesCancellable] = 0;
  swift_unknownObjectWeakInit();
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_store] = a1;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_data] = a2;
  v18[OBJC_IVAR____TtC8Freeform8CRLBoard_makeUnsupported] = a6;
  v26 = type metadata accessor for CRLRootContainerItem(0);
  v27 = objc_allocWithZone(v26);
  swift_unknownObjectWeakInit();
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = a1;
  *&v27[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v60;
  v28 = type metadata accessor for CRLBoardItemBase(0);
  v64.receiver = v27;
  v64.super_class = v28;
  v29 = a1;

  v30 = objc_msgSendSuper2(&v64, "init");
  v31 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer] = v30;
  v32 = objc_allocWithZone(v26);
  swift_unknownObjectWeakInit();
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem_items] = _swiftEmptyDictionarySingleton;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem_timeStamp] = 0;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems] = 0;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItemUUIDs] = 0;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedUnorderedItemUUIDs] = 0;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v29;
  *&v32[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v59;
  v63.receiver = v32;
  v63.super_class = v28;
  v54 = v29;

  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_alternateRootContainer] = objc_msgSendSuper2(&v63, "init");
  v33 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v34 = a2 + v33;
  v35 = v56;
  sub_10004FECC(v34, v56, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  v36 = v55;
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v35, type metadata accessor for CRLBoardCRDTData);
  v37 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v38 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

  v39 = v53;
  sub_10084BD4C(v36, v37, v38, v53);
  v40 = v57;
  v41 = sub_10004FECC(v39, v57, type metadata accessor for CRLBoardIdentifier);
  (*(**(*&v18[v31] + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))(v41);
  type metadata accessor for CRLBoardChangeSet(0);
  swift_allocObject();
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] = sub_100768A10(v40, v36, 0);
  type metadata accessor for CRLFreehandDrawingShapeItemBucketManager();
  v42 = swift_allocObject();
  sub_1005B981C(&qword_101A12978);
  v43 = swift_allocObject();
  *(v43 + 16) = _swiftEmptyDictionarySingleton;
  *(v43 + 24) = _swiftEmptyDictionarySingleton;
  *(v42 + 16) = v43;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_freehandDrawingBucketManager] = v42;
  type metadata accessor for CRLActiveBoardShareState();
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  swift_unknownObjectWeakInit();
  v45 = *(v44 + 16);
  v46 = v58;
  *(v44 + 16) = v58;
  v47 = v46;

  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] = v44;
  *&v18[OBJC_IVAR____TtC8Freeform8CRLBoard_lastSaveChangesTime] = 0;
  v48 = type metadata accessor for CRLBoard(0);
  v62.receiver = v18;
  v62.super_class = v48;
  v49 = objc_msgSendSuper2(&v62, "init");
  swift_unknownObjectWeakAssign();
  v61 = *(*&v49[OBJC_IVAR____TtC8Freeform8CRLBoard_pendingChanges] + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_uncommittedChangeAvailablePublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = v49;

  sub_1005B981C(&unk_101A22680);
  sub_10001A2F8(&qword_101A12980, &unk_101A22680);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10003D69C(v39, type metadata accessor for CRLBoardIdentifier);
  return v50;
}

uint64_t *sub_100ED4888()
{
  v73 = type metadata accessor for CRLContainerItemCRDTData(0) - 8;
  __chkstk_darwin(v73);
  v74 = &v56 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v72 = &v56 - v2;
  v3 = sub_1005B981C(&unk_101A09DC0);
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v69 = &v56 - v4;
  v5 = type metadata accessor for UUID();
  v62 = *(v5 - 8);
  v6 = v62;
  __chkstk_darwin(v5);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v56 - v9;
  v10 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v10 - 8);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v56 - v13;
  v15 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v15 - 8);
  v59 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v76 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v76);
  v64 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v58 = &v56 - v22;
  v61 = sub_1005B981C(&unk_101A226A0) - 8;
  __chkstk_darwin(v61);
  v68 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v66 = &v56 - v25;
  __chkstk_darwin(v26);
  v63 = &v56 - v27;
  v28 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];
  v67 = v28;
  v29 = *(v6 + 56);
  v57 = v19;
  v75 = v5;
  v29(v19, 1, 1, v5);
  v87 = 1;
  v30 = type metadata accessor for CRLTableAnchorHint();
  v31 = *(*(v30 - 8) + 56);
  v56 = v14;
  v31(v14, 1, 1, v30);
  sub_101271CCC(v28, v86);
  v32 = v19;
  v33 = v59;
  sub_10000BE14(v32, v59, &qword_1019F6990);
  v34 = v14;
  v35 = v60;
  sub_10000BE14(v34, v60, &unk_101A09DD0);
  v36 = v58;
  v29(v58, 1, 1, v5);
  v37 = v76;
  v38 = *(v76 + 28);
  v39 = v36 + *(v76 + 24);
  v31((v36 + v38), 1, 1, v30);
  v40 = v37;
  *(v36 + *(v37 + 32)) = _swiftEmptyDictionarySingleton;
  v41 = v36;
  sub_10002C638(v33, v36, &qword_1019F6990);
  sub_10000CAAC(v56, &unk_101A09DD0);
  sub_10000CAAC(v57, &qword_1019F6990);
  v42 = (v36 + *(v40 + 20));
  v43 = v86[1];
  *v42 = v86[0];
  v42[1] = v43;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 48) = 0u;
  *(v39 + 64) = v87;
  sub_10002C638(v35, v36 + v38, &unk_101A09DD0);
  sub_1005D0C00(&v88);
  v44 = v77;
  UUID.init()();
  v45 = v61;
  v60 = *(v61 + 60);
  v82 = v92;
  v83 = v93;
  v84 = v94;
  v85 = v95;
  v78 = v88;
  v79 = v89;
  v80 = v90;
  v81 = v91;
  sub_1005B981C(&unk_101A09DE0);
  sub_1007492B8();
  v46 = v63;
  CRRegister.init(wrappedValue:)();
  *(v46 + *(v45 + 64)) = _swiftEmptyDictionarySingleton;
  v47 = v62;
  (*(v62 + 16))(v65, v44, v75);
  CRRegister.init(_:)();
  sub_10004FECC(v41, v64, type metadata accessor for CRLBoardItemParentAffinity);
  sub_100ED5648(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity);
  CRRegister.init(_:)();
  LOBYTE(v78) = 0;
  CRRegister.init(_:)();
  LOBYTE(v78) = 0;
  CRRegister.init(_:)();
  *&v78 = 0;
  *(&v78 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v82 = v92;
  v83 = v93;
  v84 = v94;
  v85 = v95;
  v78 = v88;
  v79 = v89;
  v80 = v90;
  v81 = v91;
  v48 = v69;
  CRRegister.init(_:)();
  (*(v47 + 8))(v77, v75);
  sub_10003D69C(v41, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v70 + 40))(v46 + v60, v48, v71);
  v49 = v72;
  *&v72[*(v73 + 28)] = _swiftEmptyDictionarySingleton;
  sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID);
  CROrderedSet.init()();
  v50 = v66;
  sub_10000BE14(v46, v66, &unk_101A226A0);
  v51 = v74;
  sub_10004FECC(v49, v74, type metadata accessor for CRLContainerItemCRDTData);
  *&v78 = 0x1000000000000;
  *(&v78 + 1) = 0x2000400000000;
  v79 = 0x1000000000000uLL;
  LOBYTE(v80) = 1;
  type metadata accessor for CRLContainerItemData(0);
  v52 = swift_allocObject();
  sub_10004FECC(v51, v52 + qword_101AD8098, type metadata accessor for CRLContainerItemCRDTData);
  v53 = v68;
  sub_10000BE14(v50, v68, &unk_101A226A0);
  sub_10000BE14(v53, v52 + *(*v52 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();

  sub_10000CAAC(v53, &unk_101A226A0);
  sub_10003D69C(v51, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v50, &unk_101A226A0);
  sub_10003D69C(v49, type metadata accessor for CRLContainerItemCRDTData);
  v54 = sub_100747AF0(&v78, 4);
  sub_10000CAAC(v46, &unk_101A226A0);
  return v54;
}

id sub_100ED544C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100ED54F4()
{
  result = type metadata accessor for CRLBoardChangeSet(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CRLCollaborationParticipantCollection(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100ED55A8(uint64_t a1)
{
  result = sub_100ED5648(&unk_101A22640, type metadata accessor for CRLBoard);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100ED5648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100ED5690()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLBoard(0);
  v30.receiver = v0;
  v30.super_class = v12;
  v13 = objc_msgSendSuper2(&v30, "description");
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v31 = v14;
  v32 = v16;
  v17._countAndFlagsBits = 8250;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v19 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v20 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FECC(v19 + v20, v4, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D69C(v4, type metadata accessor for CRLBoardCRDTData);
  v21 = (*&v1[v18] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v22 = *v21;
  v23 = v21[1];

  sub_10084BD4C(v8, v22, v23, v11);
  (*(v6 + 16))(v8, v11, v5);
  sub_10003D69C(v11, type metadata accessor for CRLBoardIdentifier);
  v24 = UUID.uuidString.getter();
  v26 = v25;
  (*(v6 + 8))(v8, v5);
  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  return v31;
}

uint64_t sub_100ED5960(uint64_t a1)
{
  v92 = sub_1005B981C(&unk_101A341C0);
  v3 = *(v92 - 8);
  v4 = __chkstk_darwin(v92);
  v80 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v82 = &v77 - v6;
  swift_beginAccess();
  v7 = *(a1 + 16);
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v7 + 64);
  swift_bridgeObjectRetain_n();
  v93 = v1;
  swift_beginAccess();
  v12 = 0;
  v13 = (v9 + 63) >> 6;
  v86 = (v3 + 16);
  v79 = 0x1000000000000;
  v78 = (v3 + 8);
  v77 = 0x2000400000000;
  v81 = (v3 + 32);
  v83 = v13;
  v85 = v7;
  v84 = v7 + 64;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v12 = v14;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_13:
    v15 = (v12 << 9) | (8 * __clz(__rbit64(v11)));
    v16 = *(*(v7 + 48) + v15);
    v17 = *(*(v7 + 56) + v15);
    v18 = *(v93 + 16);
    if (!*(v18 + 16))
    {
      break;
    }

    v19 = sub_1007C7EC0(v16);
    if ((v20 & 1) == 0)
    {
      break;
    }

    v21 = *(*(v18 + 56) + 8 * v19);
    v22 = *(*v17 + 120);
    swift_beginAccess();
    (*v86)(v80, &v17[v22], v92);
    v23 = &v17[*(*v17 + 128)];
    v24 = *(v23 + 4);
    v90 = *(v23 + 5);
    v91 = v24;
    LODWORD(v89) = v23[48];
    v25 = *(v23 + 1);
    v88 = *v23;
    v87 = v25;
    swift_beginAccess();

    sub_1005B981C(&unk_101A22860);
    sub_10001A2F8(&qword_101A228C0, &unk_101A22860);
    v26 = Capsule.merge<A>(_:)();
    swift_endAccess();
    v27 = v21 + *(*v21 + 128);
    v28 = v87;
    *v27 = v88;
    *(v27 + 16) = v28;
    v29 = v90;
    *(v27 + 32) = v91;
    *(v27 + 40) = v29;
    *(v27 + 48) = v89;
    v30 = sub_10001FF1C();
    if (v30 >= *v27)
    {
      *v27 = v79;
      if (v30 >= *(v27 + 16))
      {
        *(v27 + 16) = v77;
      }

      if (v30 >= *(v27 + 32))
      {
        v31 = v30;
        v32 = sub_100E6A044();
        v30 = v31;
        *(v27 + 32) = v32;
      }
    }

    v8 = v84;
    if (v30 >= *(v27 + 8))
    {
      *(v27 + 8) = v79;
      if (v30 >= *(v27 + 24))
      {
        *(v27 + 24) = v77;
      }
    }

    (*v78)(v80, v92);
    *(v21 + *(*v21 + 136)) = (*(v21 + *(*v21 + 136)) | v26) & 1;
    v7 = v85;
LABEL_7:
    v11 &= v11 - 1;

    v13 = v83;
  }

  v33 = *(*v17 + 120);
  swift_beginAccess();
  v34 = v82;
  v35 = v92;
  (*v86)(v82, &v17[v33], v92);
  LOBYTE(v33) = v17[*(*v17 + 136)];
  v36 = *(v17 + 2);
  v37 = &v17[*(*v17 + 128)];
  v38 = *(v37 + 4);
  v90 = *(v37 + 5);
  v91 = v38;
  LODWORD(v89) = v37[48];
  sub_1005B981C(&unk_101A228D0);
  v39 = swift_allocObject();
  v40 = *(*v39 + 136);
  v41 = *(v37 + 1);
  v88 = *v37;
  v87 = v41;
  *(v39 + v40) = 0;
  v39[2] = v36;
  (*v81)(v39 + *(*v39 + 120), v34, v35);
  v42 = *(*v39 + 136);
  *(v39 + v42) = v33;
  v43 = v39 + *(*v39 + 128);
  v44 = v87;
  *v43 = v88;
  *(v43 + 1) = v44;
  v45 = v90;
  *(v43 + 4) = v91;
  *(v43 + 5) = v45;
  v43[48] = v89;
  v46 = v93;
  *(v39 + v42) = 1;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = *(v46 + 16);
  v48 = v94;
  *(v46 + 16) = 0x8000000000000000;
  v91 = v16;
  v50 = sub_1007C7EC0(v16);
  v51 = *(v48 + 16);
  v52 = (v49 & 1) == 0;
  v53 = v51 + v52;
  if (__OFADD__(v51, v52))
  {
    goto LABEL_53;
  }

  v54 = v49;
  if (*(v48 + 24) < v53)
  {
    sub_100A89AE8(v53, isUniquelyReferenced_nonNull_native);
    v55 = v94;
    v56 = v91;
    v57 = sub_1007C7EC0(v91);
    v7 = v85;
    if ((v54 & 1) != (v58 & 1))
    {
      goto LABEL_56;
    }

    v50 = v57;
    if ((v54 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_5;
  }

  v7 = v85;
  if (isUniquelyReferenced_nonNull_native)
  {
    v55 = v48;
    goto LABEL_31;
  }

  sub_1005B981C(&qword_101A0EE20);
  v62 = static _DictionaryStorage.copy(original:)();
  v55 = v62;
  if (!*(v48 + 16))
  {
LABEL_50:

LABEL_31:
    v56 = v91;
    if ((v54 & 1) == 0)
    {
LABEL_32:
      *(v55 + 8 * (v50 >> 6) + 64) |= 1 << v50;
      *(*(v55 + 48) + 8 * v50) = v56;
      *(*(v55 + 56) + 8 * v50) = v39;
      v59 = *(v55 + 16);
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_54;
      }

      *(v55 + 16) = v61;
      goto LABEL_6;
    }

LABEL_5:
    *(*(v55 + 56) + 8 * v50) = v39;

LABEL_6:
    *(v93 + 16) = v55;
    swift_endAccess();
    v8 = v84;
    goto LABEL_7;
  }

  v63 = (v62 + 64);
  v64 = (v48 + 64);
  v65 = ((1 << *(v55 + 32)) + 63) >> 6;
  *&v88 = v48 + 64;
  if (v55 != v48 || v63 >= &v64[8 * v65])
  {
    memmove(v63, v64, 8 * v65);
  }

  v66 = 0;
  *(v55 + 16) = *(v48 + 16);
  v67 = 1 << *(v48 + 32);
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  else
  {
    v68 = -1;
  }

  v69 = v68 & *(v48 + 64);
  v70 = (v67 + 63) >> 6;
  v89 = v70;
  if (v69)
  {
    do
    {
      v71 = __clz(__rbit64(v69));
      v90 = (v69 - 1) & v69;
LABEL_48:
      v74 = v71 | (v66 << 6);
      v75 = *(*(v48 + 56) + 8 * v74);
      *(*(v55 + 48) + 8 * v74) = *(*(v48 + 48) + 8 * v74);
      *(*(v55 + 56) + 8 * v74) = v75;

      v70 = v89;
      v69 = v90;
    }

    while (v90);
  }

  v72 = v66;
  while (1)
  {
    v66 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v66 >= v70)
    {
      goto LABEL_50;
    }

    v73 = *(v88 + 8 * v66);
    ++v72;
    if (v73)
    {
      v71 = __clz(__rbit64(v73));
      v90 = (v73 - 1) & v73;
      goto LABEL_48;
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100ED6240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A341C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_1005B981C(&qword_101A1F610);
  __chkstk_darwin(v10 - 8);
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v15 = *(*v2 + 120);
  swift_beginAccess();
  v16 = *(v7 + 16);
  v33 = v15;
  v34 = v2;
  v17 = v2 + v15;
  v18 = v6;
  v32 = v16;
  v16(v9, v17, v6);
  v19 = v35;
  v20 = (*(v4 + 16))(v35, v38, v3);
  __chkstk_darwin(v20);
  v21 = (&v31 - ((v5 + 47) & 0xFFFFFFFFFFFFFFF0));
  *v21 = v3;
  v37 = type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT(0);
  v21[1] = v37;
  v21[2] = sub_100ED5648(&qword_101A228A8, &type metadata accessor for UUID);
  v21[3] = sub_100ED5648(&unk_101A228B0, type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT);
  (*(v4 + 32))(v21 + 4, v19, v3);
  swift_getKeyPath();
  Capsule.subscript.getter();

  v22 = *(v7 + 8);
  v35 = (v7 + 8);
  v22(v9, v18);
  v38 = v14;
  v23 = v14;
  v24 = v36;
  sub_10000BE14(v23, v36, &qword_101A1F610);
  v25 = sub_1005B981C(&qword_101A228A0);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_10000CAAC(v38, &qword_101A1F610);
    sub_10000CAAC(v24, &qword_101A1F610);
    v27 = 1;
    v28 = v39;
  }

  else
  {
    v32(v9, v34 + v33, v18);
    sub_1005B981C(&unk_101A22860);
    sub_10001A2F8(&qword_101A228C0, &unk_101A22860);
    v29 = v39;
    Ref.subscript.getter();
    v22(v9, v18);
    sub_10000CAAC(v38, &qword_101A1F610);
    (*(v26 + 8))(v24, v25);
    v27 = 0;
    v28 = v29;
  }

  return (*(*(v37 - 8) + 56))(v28, v27, 1);
}

uint64_t sub_100ED6750()
{
  type metadata accessor for Ref();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for CRDictionary();
  return CRDictionary.subscript.getter();
}

uint64_t sub_100ED6818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 16);
  v8 = type metadata accessor for Ref();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  v14 = __chkstk_darwin(v13);
  (*(v16 + 16))(v21 - v15, a3, v6, v14);
  (*(v10 + 16))(v12, a1, v9);
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = *(v7 + 8);
  v21[0] = v6;
  v21[1] = v8;
  v22 = v19;
  v23 = WitnessTable;
  v24 = v18;
  type metadata accessor for CRDictionary();
  return CRDictionary.subscript.setter();
}

uint64_t sub_100ED6A00(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v10 < 0)
    {
      v11 = *v1;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = __CocoaSet.contains(_:)();

    if (v12)
    {
      v13 = sub_100ED9554(v11, a1);

      return v13;
    }

    return 0;
  }

  v38 = v1;
  Hasher.init(_seed:)();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 32);
  v47 = v16;
  v48 = v15;
  v45 = v16 + 32;
  v46 = ObjectType;
  v44 = v18;
  v18(ObjectType, v16);
  sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v20 = *(v4 + 8);
  v19 = v4 + 8;
  v49 = v9;
  v43 = v20;
  v20(v9, v3);
  v21 = Hasher._finalize()();
  v22 = -1 << *(v10 + 32);
  v23 = v21 & ~v22;
  v42 = v10 + 56;
  if (((*(v10 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
    return 0;
  }

  v39 = ~v22;
  v40 = v10;
  v41 = v7;
  v24 = v49;
  while (1)
  {
    v25 = *(*(*(v10 + 48) + 8 * v23) + 24);
    v26 = swift_getObjectType();
    v27 = v19;
    v28 = v3;
    v29 = *(v25 + 32);

    v29(v26, v25);
    v3 = v28;
    v19 = v27;
    v30 = v41;
    v44(v46, v47);
    v31 = static UUID.== infix(_:_:)();

    v32 = v43;
    v43(v30, v3);
    v32(v24, v3);
    if (v31)
    {
      break;
    }

    v10 = v40;
    v23 = (v23 + 1) & v39;
    if (((*(v42 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      return 0;
    }
  }

  v33 = v23;
  v34 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v34;
  v50 = *v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E83610();
    v36 = v50;
  }

  v37 = *(*(v36 + 48) + 8 * v33);
  sub_100F64320(v33);
  result = v37;
  *v38 = v50;
  return result;
}

uint64_t sub_100ED6D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100ED5648(&qword_1019F37C0, &type metadata accessor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E835E8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100F64620(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_100ED7018(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E83E68();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_100F64668(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_100ED7154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  sub_100068D24();
  result = Hasher._finalize()();
  v53 = v4 + 56;
  v54 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = result & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_68:
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = -2;
    return result;
  }

  v52 = ~v6;
  while (1)
  {
    v8 = *(v54 + 48) + 56 * v7;
    v9 = *(v8 + 48);
    v10 = *(v8 + 32);
    v11 = *v8;
    v57 = *(v8 + 16);
    v58 = v10;
    v56 = v11;
    v59 = v9;
    sub_1000693DC(&v56, v55);
    v12 = sub_100068F28();
    v14 = v13;
    if (v12 == sub_100068F28() && v14 == v15)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    result = v56;
    v17 = v57;
    v18 = BYTE8(v57);
    v19 = v59;
    v20 = v59 >> 6;
    if (v20 <= 1)
    {
      break;
    }

    v23 = v58;
    v24 = (*(&v57 + 9) << 8) | ((*(&v57 + 13) | (HIBYTE(v57) << 16)) << 40);
    if (v20 == 2)
    {
      v25 = *(a1 + 48);
      if ((v25 & 0xC0) != 0x80)
      {
        goto LABEL_4;
      }

      v26 = *(a1 + 8);
      v27 = *(a1 + 16);
      v29 = *(a1 + 24);
      v28 = *(a1 + 32);
      v30 = *(a1 + 40);
      if (*(&v56 + 1))
      {
        if (!v26)
        {
          goto LABEL_4;
        }

        if (v56 != *a1)
        {
          v48 = *(a1 + 32);
          v49 = *(a1 + 40);
          v46 = *(a1 + 16);
          v47 = *(a1 + 24);
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v27 = v46;
          v29 = v47;
          v28 = v48;
          v30 = v49;
          if ((v31 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v26)
      {
        goto LABEL_4;
      }

      if (v24 | v18)
      {
        if (!v29 || (v17 != v27 || (v24 | v18) != v29) && (v32 = v30, v33 = v28, v34 = _stringCompareWithSmolCheck(_:_:expecting:)(), v28 = v33, v30 = v32, (v34 & 1) == 0))
        {
LABEL_4:
          result = sub_1000698D0(&v56);
          goto LABEL_5;
        }
      }

      else if (v29)
      {
        goto LABEL_4;
      }

      if (!*(&v23 + 1))
      {
        v39 = v30;
        result = sub_1000698D0(&v56);
        if (v39)
        {
          goto LABEL_5;
        }

        goto LABEL_63;
      }

      if (!v30)
      {
        goto LABEL_4;
      }

      if (v23 == __PAIR128__(v30, v28))
      {
        result = sub_1000698D0(&v56);
LABEL_63:
        if (((v19 ^ v25) & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_5;
      }

      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = sub_1000698D0(&v56);
      if ((v19 ^ v25) & 1) == 0 && (v40)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v35 = v24 | BYTE8(v57);
      v36 = v57 | *(&v56 + 1);
      if (v59 != 192 || v36 | v56 | v58 | *(&v58 + 1) | v35)
      {
        if (v59 == 192 && v56 == 1 && !(v36 | v58 | *(&v58 + 1) | v35))
        {
          if (*(a1 + 48) != 192 || *a1 != 1)
          {
            goto LABEL_5;
          }
        }

        else if (*(a1 + 48) != 192 || *a1 != 2)
        {
          goto LABEL_5;
        }

        v38 = vorrq_s8(*(a1 + 16), *(a1 + 32));
        if (!(*&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL)) | *(a1 + 8)))
        {
          goto LABEL_69;
        }
      }

      else if (*(a1 + 48) == 192)
      {
        v37 = vorrq_s8(*(a1 + 16), *(a1 + 32));
        if (!(*&vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)) | *(a1 + 8) | *a1))
        {
          goto LABEL_69;
        }
      }
    }

LABEL_5:
    v7 = (v7 + 1) & v52;
    if (((*(v53 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  if (v20)
  {
    if ((*(a1 + 48) & 0xC0) == 0x40 && *a1 == v56 && *(a1 + 8) == *(&v56 + 1))
    {
      if (BYTE8(v57))
      {
        if (*(a1 + 24))
        {
          goto LABEL_69;
        }
      }

      else if ((*(a1 + 24) & 1) == 0 && *(a1 + 16) == *&v57)
      {
        goto LABEL_69;
      }
    }

    goto LABEL_5;
  }

  if (*(a1 + 48) >= 0x40u)
  {
    goto LABEL_4;
  }

  v21 = *(a1 + 8);
  if (!*(&v56 + 1))
  {
    result = sub_1000698D0(&v56);
    if (!v21)
    {
      goto LABEL_69;
    }

    goto LABEL_5;
  }

  if (!v21)
  {
    goto LABEL_4;
  }

  if (v56 != *a1)
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = sub_1000698D0(&v56);
    if (v22)
    {
      goto LABEL_69;
    }

    goto LABEL_5;
  }

  sub_1000698D0(&v56);
LABEL_69:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v50;
  v55[0] = *v50;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E84344();
    v42 = v55[0];
  }

  v43 = *(v42 + 48) + 56 * v7;
  v44 = *(v43 + 48);
  v45 = *(v43 + 16);
  *a2 = *v43;
  *(a2 + 16) = v45;
  *(a2 + 32) = *(v43 + 32);
  *(a2 + 48) = v44;
  result = sub_100F6482C(v7);
  *v50 = v55[0];
  return result;
}

uint64_t sub_100ED7648(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_100ED9DE0(v4, v5, sub_100E73128, type metadata accessor for CRLCollaborationParticipant, sub_100F79594);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for CRLCollaborationParticipant(0);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E846E4();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_100F79594(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_100ED780C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v2;
  v8 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100ED5648(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v33 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v34 = a1;
  v9 = (a1 + *(v33 + 20));
  v10 = *v9;
  v11 = v9[1];
  String.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v8 + 32);
  v14 = v12 & ~v13;
  if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    v21 = 1;
    v22 = v32;
    return (*(v5 + 56))(v22, v21, 1, v4);
  }

  v15 = v5;
  v16 = ~v13;
  v29 = v15;
  v30 = v4;
  v17 = *(v15 + 72);
  while (1)
  {
    sub_10004FECC(*(v8 + 48) + v17 * v14, v7, type metadata accessor for CRLBoardIdentifier);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      sub_10003D69C(v7, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_4;
    }

    v18 = &v7[*(v33 + 20)];
    if (*v18 == v10 && *(v18 + 1) == v11)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10003D69C(v7, type metadata accessor for CRLBoardIdentifier);
    if (v20)
    {
      goto LABEL_15;
    }

LABEL_4:
    v14 = (v14 + 1) & v16;
    if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      v21 = 1;
      v22 = v32;
      goto LABEL_18;
    }
  }

  sub_10003D69C(v7, type metadata accessor for CRLBoardIdentifier);
LABEL_15:
  v23 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v23;
  v35 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E84138();
    v25 = v35;
  }

  v26 = v32;
  sub_100EDD3F4(*(v25 + 48) + v17 * v14, v32, type metadata accessor for CRLBoardIdentifier);
  sub_100F64A38(v14);
  v22 = v26;
  v21 = 0;
  *v23 = v35;
LABEL_18:
  v5 = v29;
  v4 = v30;
  return (*(v5 + 56))(v22, v21, 1, v4);
}

unint64_t sub_100ED7B28@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  if (a3)
  {
    v12 = dbl_1014B78B0[*&a1];
  }

  else
  {
    v12 = a1;
  }

  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  Hasher._combine(_:)(*&v12);
  if (a3)
  {
    v13 = dbl_1014B78B0[*&a1];
  }

  else
  {
    v13 = a2;
  }

  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  Hasher._combine(_:)(*&v13);
  if (a5 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = a5;
  }

  Hasher._combine(_:)(*&v14);
  result = Hasher._finalize()();
  v16 = -1 << *(v11 + 32);
  v17 = result & ~v16;
  v18 = 0uLL;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v19 = ~v16;
    while (1)
    {
      v20 = *(v11 + 48) + 32 * v17;
      if (*(v20 + 16) == 1)
      {
        v21 = &dbl_1014B78B0[*v20];
        v22 = *v21;
      }

      else
      {
        v21 = (v20 + 8);
        v22 = *v20;
      }

      v23 = a1;
      v24 = a2;
      if (a3)
      {
        v23 = dbl_1014B78B0[*&a1];
        v24 = v23;
      }

      v25 = v22 == v23 && *v21 == v24;
      if (v25 && *(v20 + 24) == a5)
      {
        break;
      }

      v17 = (v17 + 1) & v19;
      if (((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v5;
    v34 = *v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E84B10();
      v31 = v34;
    }

    v32 = *(v31 + 48) + 32 * v17;
    v33 = *v32;
    v27 = *(v32 + 16);
    v28 = *(v32 + 24);
    result = sub_100F64D6C(v17);
    v18 = v33;
    v29 = 0;
    *v5 = v34;
  }

  else
  {
LABEL_29:
    v27 = 0;
    v28 = 0;
    v29 = 1;
  }

  *a4 = v18;
  *(a4 + 16) = v27;
  *(a4 + 24) = v28;
  *(a4 + 32) = v29;
  return result;
}

uint64_t sub_100ED7D30()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaSet.contains(_:)();

    if (v2)
    {
      v3 = sub_100ED98E8();

      return v3;
    }

    return 0;
  }

  type metadata accessor for CalculateExpression();
  sub_100ED5648(&qword_1019F37A0, &type metadata accessor for CalculateExpression);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v6 = -1 << *(v1 + 32);
  v7 = v5 & ~v6;
  if (((*(v1 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  sub_100ED5648(&qword_1019F37A8, &type metadata accessor for CalculateExpression);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v1 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  v12 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E85C00();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v7);
  sub_100F64F94(v7);
  result = v11;
  *v0 = v12;
  return result;
}

uint64_t sub_100ED7F30(Swift::UInt a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100ED9AC4(v4, a1);

      return v6;
    }

    return 0;
  }

  v8 = v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_10;
    }

    v14 = Strong;
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_10:
    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  v16 = v15;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v14 != v16)
  {
    goto LABEL_10;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v8;
  v20 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E85C14();
    v18 = v20;
  }

  v19 = *(*(v18 + 48) + 8 * v11);
  sub_100F65180(v11);
  result = v19;
  *v8 = v20;
  return result;
}

uint64_t sub_100ED80E4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_100ED9C68(v4, v5, sub_100E7377C, &qword_1019F69D0, CKRecordZoneID_ptr, sub_100F79594);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100006370(0, &qword_1019F69D0);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E85C28();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_100F79594(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_100ED82B4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_100ED9C68(v4, v5, sub_100E737A0, &qword_1019F4D70, NSLayoutConstraint_ptr, sub_100F79594);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100006370(0, &qword_1019F4D70);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E85C3C();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_100F79594(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_100ED8484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100ED5648(&unk_101A22910, &type metadata accessor for UTType);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_100ED5648(&qword_101A07820, &type metadata accessor for UTType);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E85C50();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_100F65328(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_100ED872C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_1007F0E00(v24);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v21 = v2;
    v22 = v5;
    v23 = a2;
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_10004FECC(*(v9 + 48) + v14 * v12, v8, type metadata accessor for CRLSELibraryViewModel.Item);
      v15 = sub_1007F5338(v8, a1);
      sub_10003D69C(v8, type metadata accessor for CRLSELibraryViewModel.Item);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v16 = 1;
        a2 = v23;
        goto LABEL_10;
      }
    }

    v17 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v17;
    v24[0] = *v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E85C78();
      v19 = v24[0];
    }

    a2 = v23;
    sub_100EDD3F4(*(v19 + 48) + v14 * v12, v23, type metadata accessor for CRLSELibraryViewModel.Item);
    sub_100F65370(v12);
    v16 = 0;
    *v17 = v24[0];
LABEL_10:
    v5 = v22;
  }

  else
  {
    v16 = 1;
  }

  return (*(v6 + 56))(a2, v16, 1, v5);
}

uint64_t sub_100ED8960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  v6 = __chkstk_darwin(v5 - 8);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v53 = &v49 - v8;
  v57 = sub_1005B981C(&qword_101A00148);
  __chkstk_darwin(v57);
  v10 = &v49 - v9;
  v11 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v49 - v17;
  __chkstk_darwin(v16);
  v20 = &v49 - v19;
  v49 = v2;
  v21 = *v2;
  Hasher.init(_seed:)();
  v58 = a1;
  sub_10007995C();
  v22 = Hasher._finalize()();
  v23 = -1 << *(v21 + 32);
  v24 = v22 & ~v23;
  v56 = v21 + 56;
  if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
  {
    v44 = 1;
    return (*(v12 + 56))(a2, v44, 1, v11);
  }

  v50 = v12;
  v51 = a2;
  v54 = ~v23;
  v55 = *(v12 + 72);
  while (1)
  {
    v25 = v55 * v24;
    sub_10004FECC(*(v21 + 48) + v55 * v24, v20, type metadata accessor for CRLSpotlightManager.ChangeType);
    v26 = *(v57 + 48);
    sub_10004FECC(v20, v10, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_10004FECC(v58, &v10[v26], type metadata accessor for CRLSpotlightManager.ChangeType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_10004FECC(v10, v18, type metadata accessor for CRLSpotlightManager.ChangeType);
    v27 = v18;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v37 = &v10[v26];
      v29 = v53;
      sub_100EDD3F4(v37, v53, type metadata accessor for CRLBoardIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v38 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
        v39 = *&v18[v38];
        v40 = *&v18[v38 + 8];
        v41 = (v29 + v38);
        if (v39 == *v41 && v40 == v41[1])
        {
          goto LABEL_29;
        }

        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_10003D69C(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
        sub_10003D69C(v29, type metadata accessor for CRLBoardIdentifier);
        v36 = v18;
LABEL_20:
        sub_10003D69C(v36, type metadata accessor for CRLBoardIdentifier);
        if (v35)
        {
          goto LABEL_30;
        }

LABEL_25:
        sub_10003D69C(v10, type metadata accessor for CRLSpotlightManager.ChangeType);
        goto LABEL_4;
      }

      sub_10003D69C(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
      sub_10003D69C(v29, type metadata accessor for CRLBoardIdentifier);
      v43 = v18;
LABEL_24:
      sub_10003D69C(v43, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_25;
    }

LABEL_3:
    sub_10003D69C(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_10003D69C(v27, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v10, &qword_101A00148);
LABEL_4:
    v24 = (v24 + 1) & v54;
    if (((*(v56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
    {
      v44 = 1;
      a2 = v51;
      goto LABEL_33;
    }
  }

  sub_10004FECC(v10, v15, type metadata accessor for CRLSpotlightManager.ChangeType);
  v27 = v15;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_3;
  }

  v28 = &v10[v26];
  v29 = v52;
  sub_100EDD3F4(v28, v52, type metadata accessor for CRLBoardIdentifier);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    sub_10003D69C(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_10003D69C(v29, type metadata accessor for CRLBoardIdentifier);
    v43 = v15;
    goto LABEL_24;
  }

  v30 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v31 = *&v15[v30];
  v32 = *&v15[v30 + 8];
  v33 = (v29 + v30);
  if (v31 != *v33 || v32 != v33[1])
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10003D69C(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_10003D69C(v29, type metadata accessor for CRLBoardIdentifier);
    v36 = v15;
    goto LABEL_20;
  }

  v18 = v15;
LABEL_29:
  sub_10003D69C(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
  sub_10003D69C(v29, type metadata accessor for CRLBoardIdentifier);
  sub_10003D69C(v18, type metadata accessor for CRLBoardIdentifier);
LABEL_30:
  sub_10003D69C(v10, type metadata accessor for CRLSpotlightManager.ChangeType);
  v45 = v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v45;
  v59 = *v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100E86128();
    v47 = v59;
  }

  a2 = v51;
  sub_100EDD3F4(*(v47 + 48) + v25, v51, type metadata accessor for CRLSpotlightManager.ChangeType);
  sub_100F65E04(v24);
  v44 = 0;
  *v45 = v59;
LABEL_33:
  v12 = v50;
  return (*(v12 + 56))(a2, v44, 1, v11);
}