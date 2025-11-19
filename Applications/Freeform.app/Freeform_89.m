void *sub_100BBBB80(uint64_t a1)
{
  v3 = v1;
  v88 = sub_1005B981C(&qword_101A13F40);
  v84 = *(v88 - 8);
  __chkstk_darwin(v88);
  v80 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v82 = &v80 - v7;
  __chkstk_darwin(v8);
  v81 = &v80 - v9;
  __chkstk_darwin(v10);
  v87 = &v80 - v11;
  v83 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v83);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v80 - v15;
  v17 = sub_1005B981C(&qword_101A13F48);
  __chkstk_darwin(v17 - 8);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v80 - v21;
  type metadata accessor for CRLImageItem();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = &OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v26 = *(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v26 == &off_101A25280)
    {
      v27 = v23;
      v85 = v22;
      v86 = a1;
      v28 = qword_101AD8A28;
      swift_beginAccess();
      sub_100BBFC94(v26 + v28, v16, type metadata accessor for CRLImageItemCRDTData);
      v25 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v2 = *(v27 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v2 == &off_101A25280)
      {
        v29 = qword_101AD8A28;
        swift_beginAccess();
        sub_100BBFC94(v2 + v29, v13, type metadata accessor for CRLImageItemCRDTData);
        sub_100BBFB80(&qword_101A13F50, type metadata accessor for CRLImageItemCRDTData);
        swift_unknownObjectRetain();
        v30 = v85;
        CRType.observableDifference(from:)();
        sub_100BBFD64(v13, type metadata accessor for CRLImageItemCRDTData);
        sub_100BBFD64(v16, type metadata accessor for CRLImageItemCRDTData);
        sub_10000BE14(v30, v19, &qword_101A13F48);
        v31 = v88;
        if ((*(v84 + 48))(v19, 1, v88) == 1)
        {
          sub_10000CAAC(v19, &qword_101A13F48);
          v24 = _swiftEmptyArrayStorage;
          if (!_swiftEmptyArrayStorage[2])
          {
            goto LABEL_26;
          }

          goto LABEL_20;
        }

        v32 = v87;
        sub_10003DFF8(v19, v87, &qword_101A13F40);
        v33 = v81;
        sub_10000BE14(v32, v81, &qword_101A13F40);
        v34 = *(v31 + 48);
        v35 = *(v31 + 64);
        v16 = type metadata accessor for CRValueObservableDifference();
        v84 = *(*(v16 - 1) + 48);
        if ((v84)(v33, 1, v16) == 1)
        {
          sub_10000CAAC(v33 + v35, &qword_101A01F00);
          sub_10000CAAC(v33 + v34, &qword_101A01F00);
          sub_10000CAAC(v33, &qword_101A01F00);
          v24 = _swiftEmptyArrayStorage;
          v36 = v87;
          goto LABEL_11;
        }

        sub_10000CAAC(v33, &qword_101A01F00);
        sub_10000CAAC(v33 + v35, &qword_101A01F00);
        sub_10000CAAC(v33 + v34, &qword_101A01F00);
        v24 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v2 = *(v24 + 2);
        v25 = *(v24 + 3);
        v13 = (v2 + 1);
        if (v2 < v25 >> 1)
        {
LABEL_10:
          v36 = v87;
          *(v24 + 2) = v13;
          v37 = &v24[16 * v2];
          *(v37 + 4) = 0x737465737361;
          *(v37 + 5) = 0xE600000000000000;
LABEL_11:
          v38 = v82;
          sub_10000BE14(v36, v82, &qword_101A13F40);
          v39 = *(v88 + 48);
          v40 = *(v88 + 64);
          v41 = (v84)(v38 + v40, 1, v16);
          sub_10000CAAC(v38 + v40, &qword_101A01F00);
          sub_10000CAAC(v38 + v39, &qword_101A01F00);
          sub_10000CAAC(v38, &qword_101A01F00);
          if (v41 == 1)
          {
            v30 = v85;
            v42 = v87;
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_100024CBC(0, *(v24 + 2) + 1, 1, v24);
            }

            v30 = v85;
            v42 = v87;
            v44 = *(v24 + 2);
            v43 = *(v24 + 3);
            if (v44 >= v43 >> 1)
            {
              v24 = sub_100024CBC((v43 > 1), v44 + 1, 1, v24);
            }

            *(v24 + 2) = v44 + 1;
            v45 = &v24[16 * v44];
            *(v45 + 4) = 1802723693;
            *(v45 + 5) = 0xE400000000000000;
          }

          v46 = v80;
          sub_10000BE14(v42, v80, &qword_101A13F40);
          v47 = *(v88 + 48);
          v48 = *(v88 + 64);
          if ((v84)(v46 + v47, 1, v16) == 1)
          {
            sub_10000CAAC(v42, &qword_101A13F40);
            sub_10000CAAC(v46 + v48, &qword_101A01F00);
            sub_10000CAAC(v46 + v47, &qword_101A01F00);
            sub_10000CAAC(v46, &qword_101A01F00);
            if (!*(v24 + 2))
            {
LABEL_26:
              sub_10000CAAC(v30, &qword_101A13F48);

              swift_unknownObjectRelease();
              return _swiftEmptyDictionarySingleton;
            }
          }

          else
          {
            sub_10000CAAC(v46 + v47, &qword_101A01F00);
            sub_10000CAAC(v46 + v48, &qword_101A01F00);
            sub_10000CAAC(v46, &qword_101A01F00);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_100024CBC(0, *(v24 + 2) + 1, 1, v24);
            }

            v52 = *(v24 + 2);
            v51 = *(v24 + 3);
            if (v52 >= v51 >> 1)
            {
              v24 = sub_100024CBC((v51 > 1), v52 + 1, 1, v24);
            }

            sub_10000CAAC(v42, &qword_101A13F40);
            *(v24 + 2) = v52 + 1;
            v53 = &v24[16 * v52];
            *(v53 + 4) = 0x656B6F727473;
            *(v53 + 5) = 0xE600000000000000;
            if (!*(v24 + 2))
            {
              goto LABEL_26;
            }
          }

LABEL_20:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v89 = _swiftEmptyDictionarySingleton;
          sub_100A9B080(v24, 3, isUniquelyReferenced_nonNull_native);
          swift_unknownObjectRelease();
          v50 = v89;
          sub_10000CAAC(v30, &qword_101A13F48);
          return v50;
        }

LABEL_30:
        v24 = sub_100024CBC((v25 > 1), v13, 1, v24);
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v55 = objc_opt_self();
  v56 = [v55 _atomicIncrementAssertCount];
  v90 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v90);
  StaticString.description.getter();
  v57 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v58 = String._bridgeToObjectiveC()();

  v59 = [v58 lastPathComponent];

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v63 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v56;
  v65 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v65;
  v66 = sub_1005CF04C();
  *(inited + 104) = v66;
  *(inited + 72) = v57;
  *(inited + 136) = &type metadata for String;
  v67 = sub_1000053B0();
  *(inited + 112) = v60;
  *(inited + 120) = v62;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v67;
  *(inited + 152) = 683;
  v68 = v90;
  *(inited + 216) = v65;
  *(inited + 224) = v66;
  *(inited + 192) = v68;
  v69 = v57;
  v70 = v68;
  v71 = static os_log_type_t.error.getter();
  sub_100005404(v63, &_mh_execute_header, v71, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v72 = static os_log_type_t.error.getter();
  sub_100005404(v63, &_mh_execute_header, v72, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v73 = swift_allocObject();
  v73[2] = 8;
  v73[3] = 0;
  v73[4] = 0;
  v73[5] = 0;
  v74 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v75 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v76 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v77 = String._bridgeToObjectiveC()();

  [v55 handleFailureInFunction:v75 file:v76 lineNumber:683 isFatal:1 format:v77 args:v74];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v78, v79);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100BBC7DC(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v4 = type metadata accessor for CRLMaskInfoData();
  v76 = *(v4 - 8);
  v77 = v4;
  __chkstk_darwin(v4);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1005B981C(&qword_101A13F20);
  __chkstk_darwin(v75);
  v78 = &v68 - v6;
  v7 = sub_1005B981C(&qword_101A13F10);
  __chkstk_darwin(v7 - 8);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v68 - v10;
  __chkstk_darwin(v11);
  v79 = &v68 - v12;
  __chkstk_darwin(v13);
  v80 = &v68 - v14;
  v81 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v81);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_101A13F28);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v68 - v21;
  v23 = sub_1005B981C(&qword_101A13F30);
  v82 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v68 - v24;
  v26 = a1;
  v27 = a1;
  v28 = v2;
  v29 = v130;
  result = sub_1009B611C(v27);
  if (!v29)
  {
    v70 = v19;
    v71 = v16;
    v83 = v25;
    v130 = 0;
    v31 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v32 = *(v26 + v31);
    v33 = v23;
    v34 = v82;
    if (*(v32 + 16))
    {

      v35 = sub_1007C8124(3);
      if (v36)
      {
        sub_10000BE14(*(v32 + 56) + 32 * v35, v101, &unk_1019F4D00);

        v102[1] = v101[1];
        v102[0] = v101[0];
        if (*(&v101[1] + 1))
        {
          v37 = swift_dynamicCast();
          v38 = *(v34 + 56);
          v38(v22, v37 ^ 1u, 1, v33);
          if ((*(v34 + 48))(v22, 1, v33) != 1)
          {
            v39 = v33;
            result = sub_10003DFF8(v22, v83, &qword_101A13F30);
            v69 = v28;
            v82 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
            v40 = *(v28 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
            if (*v40 == &off_101A25280)
            {
              v41 = qword_101AD8A28;
              swift_beginAccess();
              result = sub_100BBFC94(v40 + v41, v71, type metadata accessor for CRLImageItemCRDTData);
              v42 = v70;
              if (*v40 == &off_101A25280)
              {
                sub_10000BE14(v83, v70, &qword_101A13F30);
                v38(v42, 0, 1, v39);
                swift_beginAccess();
                sub_100BBFB80(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);

                CRStruct_3.apply(_:)();
                swift_endAccess();

                sub_10000CAAC(v42, &qword_101A13F28);
                sub_1005B981C(&unk_101A0D9D0);
                result = CRRegister.wrappedValue.getter();
                if (**(v69 + v82) == &off_101A25280)
                {
                  swift_beginAccess();

                  CRRegister.wrappedValue.getter();
                  swift_endAccess();

                  v102[12] = v115;
                  v102[13] = v116;
                  v102[8] = v111;
                  v102[9] = v112;
                  v102[11] = v114;
                  v102[10] = v113;
                  v102[4] = v107;
                  v102[5] = v108;
                  v102[7] = v110;
                  v102[6] = v109;
                  v102[0] = v103;
                  v102[1] = v104;
                  v102[3] = v106;
                  v102[2] = v105;
                  *(&v102[26] + 8) = v118[12];
                  *(&v102[27] + 8) = v118[13];
                  *(&v102[22] + 8) = v118[8];
                  *(&v102[23] + 8) = v118[9];
                  *(&v102[24] + 8) = v118[10];
                  *(&v102[25] + 8) = v118[11];
                  *(&v102[18] + 8) = v118[4];
                  *(&v102[19] + 8) = v118[5];
                  *(&v102[20] + 8) = v118[6];
                  *(&v102[21] + 8) = v118[7];
                  *(&v102[16] + 8) = v118[2];
                  *(&v102[17] + 8) = v118[3];
                  *(&v102[14] + 8) = v118[0];
                  *(&v102[15] + 8) = v118[1];
                  v120[12] = v115;
                  v120[13] = v116;
                  v120[8] = v111;
                  v120[9] = v112;
                  v120[11] = v114;
                  v120[10] = v113;
                  v120[4] = v107;
                  v120[5] = v108;
                  v120[7] = v110;
                  v120[6] = v109;
                  v120[0] = v103;
                  v120[1] = v104;
                  *&v102[14] = v117;
                  *(&v102[28] + 1) = v119;
                  v121 = v117;
                  v120[3] = v106;
                  v120[2] = v105;
                  if (sub_1000C0FB4(v120) == 1)
                  {
                    v101[12] = *(&v102[26] + 8);
                    v101[13] = *(&v102[27] + 8);
                    *&v101[14] = *(&v102[28] + 1);
                    v101[8] = *(&v102[22] + 8);
                    v101[9] = *(&v102[23] + 8);
                    v101[10] = *(&v102[24] + 8);
                    v101[11] = *(&v102[25] + 8);
                    v101[4] = *(&v102[18] + 8);
                    v101[5] = *(&v102[19] + 8);
                    v101[6] = *(&v102[20] + 8);
                    v101[7] = *(&v102[21] + 8);
                    v101[0] = *(&v102[14] + 8);
                    v101[1] = *(&v102[15] + 8);
                    v101[2] = *(&v102[16] + 8);
                    v101[3] = *(&v102[17] + 8);
                    if (sub_1000C0FB4(v101) == 1)
                    {
                      v98 = v102[12];
                      v99 = v102[13];
                      v100 = *&v102[14];
                      v94 = v102[8];
                      v95 = v102[9];
                      v96 = v102[10];
                      v97 = v102[11];
                      v90 = v102[4];
                      v91 = v102[5];
                      v92 = v102[6];
                      v93 = v102[7];
                      v86 = v102[0];
                      v87 = v102[1];
                      v88 = v102[2];
                      v89 = v102[3];
                      sub_10000CAAC(&v86, &unk_101A106C0);
                      v43 = v69;
LABEL_25:
                      v46 = v81;
                      goto LABEL_28;
                    }
                  }

                  else
                  {
                    v101[12] = *(&v102[26] + 8);
                    v101[13] = *(&v102[27] + 8);
                    *&v101[14] = *(&v102[28] + 1);
                    v101[8] = *(&v102[22] + 8);
                    v101[9] = *(&v102[23] + 8);
                    v101[10] = *(&v102[24] + 8);
                    v101[11] = *(&v102[25] + 8);
                    v101[4] = *(&v102[18] + 8);
                    v101[5] = *(&v102[19] + 8);
                    v101[6] = *(&v102[20] + 8);
                    v101[7] = *(&v102[21] + 8);
                    v101[0] = *(&v102[14] + 8);
                    v101[1] = *(&v102[15] + 8);
                    v101[2] = *(&v102[16] + 8);
                    v101[3] = *(&v102[17] + 8);
                    if (sub_1000C0FB4(v101) != 1)
                    {
                      v84[12] = *(&v102[26] + 8);
                      v84[13] = *(&v102[27] + 8);
                      v84[8] = *(&v102[22] + 8);
                      v84[9] = *(&v102[23] + 8);
                      v84[10] = *(&v102[24] + 8);
                      v84[11] = *(&v102[25] + 8);
                      v84[4] = *(&v102[18] + 8);
                      v84[5] = *(&v102[19] + 8);
                      v84[6] = *(&v102[20] + 8);
                      v84[7] = *(&v102[21] + 8);
                      v84[0] = *(&v102[14] + 8);
                      v84[1] = *(&v102[15] + 8);
                      v84[2] = *(&v102[16] + 8);
                      v84[3] = *(&v102[17] + 8);
                      v128[12] = *(&v102[26] + 8);
                      v128[13] = *(&v102[27] + 8);
                      v128[8] = *(&v102[22] + 8);
                      v128[9] = *(&v102[23] + 8);
                      v128[11] = *(&v102[25] + 8);
                      v128[10] = *(&v102[24] + 8);
                      v128[4] = *(&v102[18] + 8);
                      v128[5] = *(&v102[19] + 8);
                      v128[7] = *(&v102[21] + 8);
                      v128[6] = *(&v102[20] + 8);
                      v128[0] = *(&v102[14] + 8);
                      v128[1] = *(&v102[15] + 8);
                      v85 = *(&v102[28] + 1);
                      v129 = *(&v102[28] + 1);
                      v128[3] = *(&v102[17] + 8);
                      v128[2] = *(&v102[16] + 8);
                      v126[12] = v102[12];
                      v126[13] = v102[13];
                      v127 = *&v102[14];
                      v126[8] = v102[8];
                      v126[9] = v102[9];
                      v126[11] = v102[11];
                      v126[10] = v102[10];
                      v126[4] = v102[4];
                      v126[5] = v102[5];
                      v126[7] = v102[7];
                      v126[6] = v102[6];
                      v126[0] = v102[0];
                      v126[1] = v102[1];
                      v126[3] = v102[3];
                      v126[2] = v102[2];
                      sub_10000BE14(&v103, &v86, &unk_101A106C0);
                      sub_10000BE14(v118, &v86, &unk_101A106C0);
                      v54 = sub_100B93EBC(v126, v128);
                      sub_10000CAAC(v118, &unk_101A106C0);
                      sub_10000CAAC(&v103, &unk_101A106C0);
                      sub_10000CAAC(v84, &unk_101A106C0);
                      v98 = v102[12];
                      v99 = v102[13];
                      v100 = *&v102[14];
                      v94 = v102[8];
                      v95 = v102[9];
                      v96 = v102[10];
                      v97 = v102[11];
                      v90 = v102[4];
                      v91 = v102[5];
                      v92 = v102[6];
                      v93 = v102[7];
                      v86 = v102[0];
                      v87 = v102[1];
                      v88 = v102[2];
                      v89 = v102[3];
                      result = sub_10000CAAC(&v86, &unk_101A106C0);
                      v43 = v69;
                      v46 = v81;
                      if (v54)
                      {
                        goto LABEL_28;
                      }

                      goto LABEL_20;
                    }
                  }

                  v43 = v69;
                  v46 = v81;
                  memcpy(v101, v102, sizeof(v101));
                  result = sub_10000CAAC(v101, &qword_1019F5EE0);
LABEL_20:
                  if (**(v43 + v82) != &off_101A25280)
                  {
LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }

                  swift_beginAccess();

                  CRRegister.wrappedValue.getter();
                  swift_endAccess();

                  v102[12] = v101[12];
                  v102[13] = v101[13];
                  *&v102[14] = *&v101[14];
                  v102[8] = v101[8];
                  v102[9] = v101[9];
                  v102[11] = v101[11];
                  v102[10] = v101[10];
                  v102[4] = v101[4];
                  v102[5] = v101[5];
                  v102[7] = v101[7];
                  v102[6] = v101[6];
                  v102[0] = v101[0];
                  v102[1] = v101[1];
                  v102[3] = v101[3];
                  v102[2] = v101[2];
                  v47 = sub_1000C0FB4(v102);
                  if (v47 == 1)
                  {
                    if ((sub_1011255D0(v47) & 1) == 0)
                    {
                      goto LABEL_28;
                    }

                    v48 = *(v43 + v82);
                    result = swift_conformsToProtocol2();
                    if (!result)
                    {
LABEL_45:
                      __break(1u);
                      return result;
                    }

                    v49 = result;
                    sub_1005D0BD8(&v86);
                    v124[12] = v98;
                    v124[13] = v99;
                    v125 = v100;
                    v124[8] = v94;
                    v124[9] = v95;
                    v124[11] = v97;
                    v124[10] = v96;
                    v124[4] = v90;
                    v124[5] = v91;
                    v124[7] = v93;
                    v124[6] = v92;
                    v124[0] = v86;
                    v124[1] = v87;
                    v124[3] = v89;
                    v124[2] = v88;
                    v50 = *v48;
                    *&v84[0] = v48;
                    v51 = *(v49 + 16);

                    v51(v124, v50, v49);

                    v52 = *(v43 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
                    *(v43 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke) = 0;

                    goto LABEL_25;
                  }

                  v122[12] = v102[12];
                  v122[13] = v102[13];
                  v123 = *&v102[14];
                  v122[8] = v102[8];
                  v122[9] = v102[9];
                  v122[11] = v102[11];
                  v122[10] = v102[10];
                  v122[4] = v102[4];
                  v122[5] = v102[5];
                  v122[7] = v102[7];
                  v122[6] = v102[6];
                  v122[0] = v102[0];
                  v122[1] = v102[1];
                  v122[3] = v102[3];
                  v122[2] = v102[2];
                  v53 = sub_100B946C8(v122, 0);
                  sub_10000CAAC(v101, &unk_101A106C0);
                  sub_100D654FC(v53);
LABEL_28:
                  v55 = *(v46 + 24);
                  sub_1005B981C(&qword_101A13F18);
                  v81 = v55;
                  v56 = v80;
                  result = CRRegister.wrappedValue.getter();
                  if (**(v43 + v82) == &off_101A25280)
                  {
                    swift_beginAccess();

                    v57 = v79;
                    CRRegister.wrappedValue.getter();
                    swift_endAccess();

                    v58 = *(v75 + 48);
                    v59 = v78;
                    sub_10000BE14(v56, v78, &qword_101A13F10);
                    sub_10000BE14(v57, v59 + v58, &qword_101A13F10);
                    v60 = v77;
                    v61 = *(v76 + 48);
                    if (v61(v59, 1, v77) == 1)
                    {
                      sub_10000CAAC(v57, &qword_101A13F10);
                      v59 = v78;
                      sub_10000CAAC(v56, &qword_101A13F10);
                      v62 = v61(v59 + v58, 1, v60);
                      v63 = v71;
                      if (v62 == 1)
                      {
                        goto LABEL_36;
                      }
                    }

                    else
                    {
                      v64 = v73;
                      sub_10000BE14(v59, v73, &qword_101A13F10);
                      if (v61(v59 + v58, 1, v60) != 1)
                      {
                        v65 = v59 + v58;
                        v66 = v72;
                        sub_100BBFCFC(v65, v72, type metadata accessor for CRLMaskInfoData);
                        v67 = sub_100B7EB94(v64, v66);
                        sub_100BBFD64(v66, type metadata accessor for CRLMaskInfoData);
                        sub_10000CAAC(v79, &qword_101A13F10);
                        sub_10000CAAC(v80, &qword_101A13F10);
                        sub_100BBFD64(v64, type metadata accessor for CRLMaskInfoData);
                        sub_10000CAAC(v59, &qword_101A13F10);
                        v59 = v74;
                        v63 = v71;
                        if (v67)
                        {
                          goto LABEL_37;
                        }

                        goto LABEL_35;
                      }

                      sub_10000CAAC(v79, &qword_101A13F10);
                      sub_10000CAAC(v80, &qword_101A13F10);
                      sub_100BBFD64(v64, type metadata accessor for CRLMaskInfoData);
                      v63 = v71;
                    }

                    sub_10000CAAC(v59, &qword_101A13F20);
                    v59 = v74;
LABEL_35:
                    CRRegister.wrappedValue.getter();
                    sub_100BB8084(v59, 0);
LABEL_36:
                    sub_10000CAAC(v59, &qword_101A13F10);
LABEL_37:
                    sub_100BBFD64(v63, type metadata accessor for CRLImageItemCRDTData);
                    v44 = &qword_101A13F30;
                    v45 = v83;
                    return sub_10000CAAC(v45, v44);
                  }

                  goto LABEL_43;
                }

LABEL_42:
                __break(1u);
LABEL_43:
                __break(1u);
                goto LABEL_44;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
            goto LABEL_42;
          }

LABEL_15:
          v44 = &qword_101A13F28;
          v45 = v22;
          return sub_10000CAAC(v45, v44);
        }

        sub_10000CAAC(v102, &unk_1019F4D00);
      }

      else
      {
      }
    }

    (*(v34 + 56))(v22, 1, 1, v33);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_100BBD9E4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1005B981C(&qword_101A13F10);
  __chkstk_darwin(v10 - 8);
  v12 = &v100 - v11;
  v118 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v118);
  v115 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v116 = &v100 - v15;
  if (a3 <= 5u && a3 > 2u && a3 == 3)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      swift_getObjectType();

      return sub_1009BE298(a1, a2, a3, a4, v5);
    }
  }

  type metadata accessor for CRLImageItem();
  result = swift_dynamicCastClass();
  v117 = result;
  if (!result)
  {
    return result;
  }

  v122 = *(a2 + 16);
  if (!v122)
  {
    return result;
  }

  v111 = OBJC_IVAR____TtC8Freeform12CRLImageItem__isSpatial;
  v112 = OBJC_IVAR____TtC8Freeform12CRLImageItem__imageAssetAsData;
  v109 = v12;
  v110 = OBJC_IVAR____TtC8Freeform12CRLImageItem__thumbnailAssetAsData;
  v18 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
  v121 = a2 + 32;
  v108 = a4;
  swift_unknownObjectRetain();
  v19 = 0;
  v107 = xmmword_10146C6B0;
  v106 = xmmword_10146CA70;
  v119 = v5;
  v120 = a1;
  while (1)
  {
    v20 = (v121 + 16 * v19);
    v22 = *v20;
    v21 = v20[1];
    v23 = *v20 == 0x656B6F727473 && v21 == 0xE600000000000000;
    if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v32 = v22 == 0x737465737361 && v21 == 0xE600000000000000;
    if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v33 = *(v5 + v112);
      *(v5 + v112) = 0;

      *(v5 + v111) = 2;
      v34 = *(v5 + v110);
      *(v5 + v110) = 0;

      *(&v126 + 1) = &type metadata for Bool;
      LOBYTE(v125) = 1;
      sub_10000BE14(&v125, v124, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(v124, 19);
      swift_endAccess();
      sub_10000CAAC(&v125, &unk_1019F4D00);
      v35 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      if (**(v117 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A25280)
      {
        goto LABEL_93;
      }

      swift_beginAccess();

      sub_1005B981C(&unk_101A2F5B0);
      v36 = v116;
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      v37 = *(v36 + *(v118 + 28));
      sub_100BBFD64(v36, type metadata accessor for CRLImageItemAssetData);
      if (v37 == 2)
      {
        v125 = 0u;
        v126 = 0u;
      }

      else
      {
        *(&v126 + 1) = &type metadata for Bool;
        LOBYTE(v125) = v37 & 1;
      }

      sub_10000BE14(&v125, v124, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(v124, 43);
      swift_endAccess();
      sub_10000CAAC(&v125, &unk_1019F4D00);
      if (**(v117 + v35) != &off_101A25280)
      {
        goto LABEL_94;
      }

      swift_beginAccess();

      v52 = v115;
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      v53 = *(v52 + *(v118 + 32));
      sub_100BBFD64(v52, type metadata accessor for CRLImageItemAssetData);
      if (v53 == 2)
      {
        v125 = 0u;
        v126 = 0u;
      }

      else
      {
        *(&v126 + 1) = &type metadata for Bool;
        LOBYTE(v125) = v53 & 1;
      }

      sub_10000BE14(&v125, v124, &unk_1019F4D00);
      swift_beginAccess();
      sub_100BC1F00(v124, 20);
      goto LABEL_81;
    }

    v54 = v22 == 1802723693 && v21 == 0xE400000000000000;
    if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (**(v117 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A25280)
      {
        goto LABEL_97;
      }

      swift_beginAccess();
      type metadata accessor for CRLImageItemCRDTData(0);

      sub_1005B981C(&qword_101A13F18);
      v55 = v109;
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      sub_100BB8084(v55, a1);
      sub_10000CAAC(v55, &qword_101A13F10);
      goto LABEL_82;
    }

    sub_1005B981C(&qword_1019F54E0);
    v56 = swift_allocObject();
    *(v56 + 16) = v107;
    *(v56 + 56) = &type metadata for String;
    v57 = sub_1000053B0();
    *(v56 + 32) = v22;
    v113 = v57;
    v114 = v56 + 32;
    *(v56 + 64) = v57;
    *(v56 + 40) = v21;
    v58 = objc_opt_self();

    v101 = v58;
    LODWORD(v104) = [v58 _atomicIncrementAssertCount];
    *&v125 = [objc_allocWithZone(NSString) init];
    v105 = v56;
    sub_100604538(v56, &v125);
    StaticString.description.getter();
    v103 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    v60 = [v59 lastPathComponent];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v62;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v63 = static OS_os_log.crlAssert;
    v64 = swift_allocObject();
    *(v64 + 16) = v106;
    *(v64 + 56) = &type metadata for Int32;
    *(v64 + 64) = &protocol witness table for Int32;
    *(v64 + 32) = v104;
    v65 = sub_100006370(0, &qword_1019F4D30);
    *(v64 + 96) = v65;
    v66 = sub_1005CF04C();
    v67 = v103;
    *(v64 + 72) = v103;
    v68 = v113;
    *(v64 + 136) = &type metadata for String;
    *(v64 + 144) = v68;
    *(v64 + 104) = v66;
    *(v64 + 112) = v61;
    *(v64 + 120) = v102;
    *(v64 + 176) = &type metadata for UInt;
    *(v64 + 152) = 746;
    v69 = v125;
    *(v64 + 216) = v65;
    *(v64 + 224) = v66;
    *(v64 + 184) = &protocol witness table for UInt;
    *(v64 + 192) = v69;
    v70 = v67;
    v71 = v69;
    v72 = static os_log_type_t.error.getter();
    sub_100005404(v63, &_mh_execute_header, v72, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v64);
    swift_setDeallocating();
    v104 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v73 = static os_log_type_t.error.getter();
    v74 = v105;

    type metadata accessor for __VaListBuilder();
    v75 = swift_allocObject();
    v75[2] = 8;
    v75[3] = 0;
    v76 = v75 + 3;
    v75[4] = 0;
    v75[5] = 0;
    v113 = *(v74 + 16);
    if (v113)
    {
      v77 = 0;
      while (1)
      {
        sub_100020E58((v114 + 40 * v77), *(v114 + 40 * v77 + 24));
        v78 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v79 = *v76;
        v80 = *(v78 + 16);
        v47 = __OFADD__(*v76, v80);
        v81 = *v76 + v80;
        if (v47)
        {
          goto LABEL_92;
        }

        v82 = v78;
        v83 = v75[4];
        if (v83 >= v81)
        {
          goto LABEL_69;
        }

        if (v83 + 0x4000000000000000 < 0)
        {
          goto LABEL_95;
        }

        v84 = v75[5];
        if (2 * v83 > v81)
        {
          v81 = 2 * v83;
        }

        v75[4] = v81;
        if ((v81 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_96;
        }

        v85 = swift_slowAlloc();
        v75[5] = v85;
        if (v84)
        {
          break;
        }

LABEL_70:
        v5 = v119;
        if (!v85)
        {
          goto LABEL_99;
        }

        v87 = *(v82 + 16);
        if (v87)
        {
          v88 = (v82 + 32);
          v89 = *v76;
          while (1)
          {
            v90 = *v88++;
            *&v85[8 * v89] = v90;
            v89 = *v76 + 1;
            if (__OFADD__(*v76, 1))
            {
              break;
            }

            *v76 = v89;
            if (!--v87)
            {
              goto LABEL_54;
            }
          }

          __break(1u);
          goto LABEL_90;
        }

LABEL_54:

        if (++v77 == v113)
        {
          goto LABEL_76;
        }
      }

      if (v85 != v84 || v85 >= &v84[8 * v79])
      {
        memmove(v85, v84, 8 * v79);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_69:
      v85 = v75[5];
      goto LABEL_70;
    }

LABEL_76:
    v91 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v92 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v93 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v94 = String._bridgeToObjectiveC()();

    [v101 handleFailureInFunction:v92 file:v93 lineNumber:746 isFatal:0 format:v94 args:v91];

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    a1 = v120;
LABEL_82:
    if (++v19 == v122)
    {
      return swift_unknownObjectRelease();
    }
  }

  v24 = OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke;
  v25 = *(v5 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
  if (v25)
  {
    v26 = *(v5 + OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke);
    a1 = v120;
LABEL_29:
    *(&v126 + 1) = sub_100006370(0, &qword_101A0C7F0);
    *&v125 = v26;
    v40 = v25;
    goto LABEL_30;
  }

  v27 = *(v5 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v28 = *v27;
  v29 = swift_conformsToProtocol2();
  if (!v29)
  {
    goto LABEL_98;
  }

  v30 = v29;
  *&v125 = v27;
  v31 = *(v29 + 8);

  v31(v127, v28, v30);
  v141 = v127[12];
  v142 = v127[13];
  v143 = v128;
  v137 = v127[8];
  v138 = v127[9];
  v139 = v127[10];
  v140 = v127[11];
  v133 = v127[4];
  v134 = v127[5];
  v135 = v127[6];
  v136 = v127[7];
  v129 = v127[0];
  v130 = v127[1];
  v131 = v127[2];
  v132 = v127[3];
  if (sub_1000C0FB4(&v129) != 1)
  {
    v144[12] = v141;
    v144[13] = v142;
    v145 = v143;
    v144[8] = v137;
    v144[9] = v138;
    v144[10] = v139;
    v144[11] = v140;
    v144[4] = v133;
    v144[5] = v134;
    v144[6] = v135;
    v144[7] = v136;
    v144[0] = v129;
    v144[1] = v130;
    v144[2] = v131;
    v144[3] = v132;

    v38 = sub_100B946C8(v144, 0);
    sub_10000CAAC(v127, &unk_101A106C0);
    v5 = v119;
    v39 = *(v119 + v24);
    *(v119 + v24) = v38;
    v26 = v38;

    v25 = 0;
    a1 = v120;
    goto LABEL_29;
  }

  v125 = 0u;
  v126 = 0u;
  v5 = v119;
  a1 = v120;
LABEL_30:
  swift_beginAccess();
  sub_10000BE14(&v125, v124, &unk_1019F4D00);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v123 = *(a1 + v18);
  v42 = v123;
  *(a1 + v18) = 0x8000000000000000;
  v43 = sub_1007CF108();
  v45 = v42[2];
  v46 = (v44 & 1) == 0;
  v47 = __OFADD__(v45, v46);
  v48 = v45 + v46;
  if (!v47)
  {
    v49 = v44;
    if (v42[3] >= v48)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v95 = v43;
        sub_100AA3EA4();
        v43 = v95;
        v51 = v123;
        if (v49)
        {
          goto LABEL_36;
        }

        goto LABEL_78;
      }
    }

    else
    {
      sub_100A890C0(v48, isUniquelyReferenced_nonNull_native);
      v43 = sub_1007CF108();
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_100;
      }
    }

    v51 = v123;
    if (v49)
    {
LABEL_36:
      sub_10002C638(v124, v51[7] + 32 * v43, &unk_1019F4D00);
LABEL_80:
      *(a1 + v18) = v51;
LABEL_81:
      swift_endAccess();
      sub_10000CAAC(&v125, &unk_1019F4D00);
      goto LABEL_82;
    }

LABEL_78:
    v51[(v43 >> 6) + 8] |= 1 << v43;
    *(v51[6] + 8 * v43) = 16;
    v96 = (v51[7] + 32 * v43);
    v97 = v124[1];
    *v96 = v124[0];
    v96[1] = v97;
    v98 = v51[2];
    v47 = __OFADD__(v98, 1);
    v99 = v98 + 1;
    if (v47)
    {
      goto LABEL_91;
    }

    v51[2] = v99;
    goto LABEL_80;
  }

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
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  type metadata accessor for CRLChangeProperty(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100BBEB54()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo);
}

id sub_100BBEBA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLImageItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLImageItem()
{
  result = qword_101A13F00;
  if (!qword_101A13F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100BBECE4(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(*v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2F5B0);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_100BBFC94(v5, a1, type metadata accessor for CRLAssetData);
    sub_100BBFD64(v5, type metadata accessor for CRLImageItemAssetData);
    v6 = type metadata accessor for CRLAssetData();
    (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_100BBEE78(void *a1, void *a2, uint64_t a3, id a4, void *a5, uint64_t a6)
{
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    [a4 size];
    v11 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:0.0 size:{0.0, v12, v13}];
  }

  v14 = a5;
  [v11 transformedBounds];
  v16 = v15;
  v18 = v17;
  v19 = [objc_opt_self() sharedPool];
  v20 = [v19 providerForAsset:a3 shouldValidate:1];

  v85 = v20;
  [v20 naturalSize];
  width = v87.width;
  height = v87.height;
  v90.width = 0.0;
  v90.height = 0.0;
  if (!CGSizeEqualToSize(v87, v90))
  {
    v16 = sub_100121EF4(1, width, height, v16, v18);
    v18 = v23;
  }

  v24 = fmax(v16, 1.0);
  v25 = fmax(v18, 1.0);
  [a1 setSize:{v24, v25}];
  [v11 center];
  v27 = v26;
  v29 = v28;

  [a4 transform];
  v88.x = v27;
  v88.y = v29;
  v30 = CGPointApplyAffineTransform(v88, &v86);
  [a1 setCenter:{v30.x, v30.y}];
  [a1 size];
  v31 = sub_10011ECB4();
  [a2 setCenter:{sub_100120414(v31, v32, v33, v34)}];
  v35 = objc_opt_self();
  [a2 transformedBounds];
  v37 = v36;
  v39 = v38;
  [a2 center];
  [v35 maskCenterForFacesInImageData:a3 imageSize:a6 maskSize:v24 defaultCenter:v25 assetOwner:{v37, v39, v40, v41}];
  v43 = v42;
  v45 = v44;
  [a2 center];
  if (!sub_10011ED38(v46, v47, v43, v45))
  {
    [a2 setCenter:{v43, v45}];
    v48 = sub_10011ECB4();
    v52 = sub_100120414(v48, v49, v50, v51);
    v54 = sub_10011F31C(v52, v53, v43);
    [v11 center];
    v57 = sub_10011F334(v55, v56, v54);
    v59 = v58;
    [a4 transform];
    v89.x = v57;
    v89.y = v59;
    v60 = CGPointApplyAffineTransform(v89, &v86);
    [a1 setCenter:{v60.x, v60.y}];
  }

  if ([a1 heightValid] && objc_msgSend(a1, "widthValid"))
  {
    v61 = v20;
  }

  else
  {
    v84 = objc_opt_self();
    v62 = [v84 _atomicIncrementAssertCount];
    *&v86.a = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v86);
    StaticString.description.getter();
    v63 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v64 = String._bridgeToObjectiveC()();

    v65 = [v64 lastPathComponent];

    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v69 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v62;
    v71 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v71;
    v72 = sub_1005CF04C();
    *(inited + 104) = v72;
    *(inited + 72) = v63;
    *(inited + 136) = &type metadata for String;
    v73 = sub_1000053B0();
    *(inited + 112) = v66;
    *(inited + 120) = v68;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v73;
    *(inited + 152) = 527;
    a = v86.a;
    *(inited + 216) = v71;
    *(inited + 224) = v72;
    *(inited + 192) = a;
    v75 = v63;
    v76 = *&a;
    v77 = static os_log_type_t.error.getter();
    sub_100005404(v69, &_mh_execute_header, v77, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v78 = static os_log_type_t.error.getter();
    sub_100005404(v69, &_mh_execute_header, v78, "returning an image geometry with invalid height/width.", 54, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v79 = swift_allocObject();
    v79[2] = 8;
    v79[3] = 0;
    v79[4] = 0;
    v79[5] = 0;
    v80 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v61 = String._bridgeToObjectiveC()();

    [v84 handleFailureInFunction:v81 file:v82 lineNumber:527 isFatal:0 format:v61 args:v80];

    v11 = v82;
  }
}

uint64_t sub_100BBF54C()
{
  v1 = sub_1005B981C(&qword_101A13F10);
  __chkstk_darwin(v1 - 8);
  v3 = &v28[-v2];
  v4 = type metadata accessor for CRLMaskInfoData();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v6);
  v11 = &v28[-v10];
  v12 = OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo;
  if (*&v0[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo])
  {
    return *&v0[v12];
  }

  if (**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A25280)
  {
    v31 = v0;
    swift_beginAccess();
    type metadata accessor for CRLImageItemCRDTData(0);

    sub_1005B981C(&qword_101A13F18);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000CAAC(v3, &qword_101A13F10);
      v0 = v31;
    }

    else
    {
      sub_100BBFCFC(v3, v11, type metadata accessor for CRLMaskInfoData);
      sub_100BBFC94(v11, v8, type metadata accessor for CRLMaskInfoData);
      v30 = objc_allocWithZone(CRLMaskInfo);
      v13 = &v8[*(v4 + 20)];
      v14 = *v13;
      v15 = *(v13 + 1);
      v16 = *(v13 + 2);
      v17 = *(v13 + 3);
      v18 = *(v13 + 4);
      v19 = v13[20];
      v20 = v13[21];
      v21 = v13[22];
      v29 = v13[23];
      v22 = objc_allocWithZone(CRLCanvasInfoGeometry);
      v0 = v31;
      v23 = v31;
      v24 = [v22 initWithPosition:v19 size:v20 widthValid:v21 heightValid:v29 horizontalFlip:v14 verticalFlip:v15 angle:{v16, v17, v18}];
      v25 = sub_100C49F20(v8);
      v26 = [v30 initWithImageItem:v23 geometry:v24 pathSource:v25];

      sub_100BBFD64(v8, type metadata accessor for CRLMaskInfoData);
      sub_100BBFD64(v11, type metadata accessor for CRLMaskInfoData);
      v27 = *&v0[v12];
      *&v0[v12] = v26;
    }

    return *&v0[v12];
  }

  __break(1u);
  return result;
}

void *sub_100BBF8EC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedPool];
  v3 = [v2 providerForAsset:a1 shouldValidate:1];

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v4 CGImageOfLargestSafeSize];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [objc_opt_self() tracedPathForImage:v6 alphaThreshold:0.5 pointSpacing:2.0];
  if (!v8)
  {

LABEL_10:
    return 0;
  }

  v9 = v8;
  Width = CGImageGetWidth(v7);
  Height = CGImageGetHeight(v7);
  [v5 naturalSize];
  if (v12 != Width || v13 != Height)
  {
    CGAffineTransformMakeScale(&v31, v12 / Width, v13 / Height);
    v15 = *&v31.a;
    v16 = *&v31.c;
    v17 = *&v31.tx;
LABEL_13:
    *&v31.a = v15;
    *&v31.c = v16;
    *&v31.tx = v17;
    [v9 transformUsingAffineTransform:&v31];
    goto LABEL_14;
  }

  sub_1004F3D84([v5 orientation], 0, &v31, 0.0, 0.0, 1.0, 1.0);
  a = v31.a;
  b = v31.b;
  c = v31.c;
  d = v31.d;
  tx = v31.tx;
  ty = v31.ty;
  if (!CGAffineTransformIsIdentity(&v31))
  {
    v32.origin.x = sub_10011ECB4();
    v31.a = a;
    v31.b = b;
    v31.c = c;
    v31.d = d;
    v31.tx = tx;
    v31.ty = ty;
    v33 = CGRectApplyAffineTransform(v32, &v31);
    x = v33.origin.x;
    y = v33.origin.y;
    v29 = v33.size.height;
    v30 = v33.size.width;
    v31.a = a;
    v31.b = b;
    v31.c = c;
    v31.d = d;
    v31.tx = tx;
    v31.ty = ty;
    [v9 transformUsingAffineTransform:&v31];
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = v30;
    v34.size.height = v29;
    v27 = -CGRectGetMinX(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = v30;
    v35.size.height = v29;
    MinY = CGRectGetMinY(v35);
    CGAffineTransformMakeTranslation(&v31, v27, -MinY);
    v15 = *&v31.a;
    v16 = *&v31.c;
    v17 = *&v31.tx;
    goto LABEL_13;
  }

LABEL_14:

  return v9;
}

uint64_t sub_100BBFB80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100BBFBC8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100BBFC94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BBFCFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BBFD64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100BBFDC4(void (*a1)(char *, void, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100685F08(a1, a2, v6);
}

void sub_100BBFE7C(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 functionWithName:v6];

  *a3 = v7;
}

void sub_100BBFEE8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v2 = OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_overlayView;
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_overlayView);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *(v0 + v2);
      *(v0 + v2) = 0;
    }

    v5 = OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_underlayView;
    v6 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_underlayView);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v0 + v5);
      *(v0 + v5) = 0;
    }

    v8 = OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView;
    v9 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v0 + v8);
      *(v0 + v8) = 0;
    }

    if (qword_1019F1570 != -1)
    {
      swift_once();
    }

    sub_10091244C(v0, &v73);
    m11 = v73.m11;
    m12 = v73.m12;
    m13 = v73.m13;
    m14 = v73.m14;
    v15 = [objc_allocWithZone(UIView) initWithFrame:{v73.m11, v73.m12, v73.m13, v73.m14}];
    v16 = [v15 layer];
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {

      v18 = sub_100BC0BB0();
      CGAffineTransformMakeRotation(&v73, v18);
      *&m.m11 = *&v73.m11;
      *&m.m13 = *&v73.m13;
      *&m.m21 = *&v73.m21;
      CATransform3DMakeAffineTransform(&v73, &m);
    }

    else
    {
      v41 = *&CATransform3DIdentity.m33;
      *&v73.m31 = *&CATransform3DIdentity.m31;
      *&v73.m33 = v41;
      v42 = *&CATransform3DIdentity.m43;
      *&v73.m41 = *&CATransform3DIdentity.m41;
      *&v73.m43 = v42;
      v43 = *&CATransform3DIdentity.m13;
      *&v73.m11 = *&CATransform3DIdentity.m11;
      *&v73.m13 = v43;
      v44 = *&CATransform3DIdentity.m23;
      *&v73.m21 = *&CATransform3DIdentity.m21;
      *&v73.m23 = v44;
    }

    m = v73;
    [v16 setTransform:&m];

    [v15 setUserInteractionEnabled:0];
    v45 = [objc_allocWithZone(UIView) initWithFrame:{m11, m12, m13, m14}];
    v46 = [v45 layer];
    v47 = swift_unknownObjectWeakLoadStrong();
    if (v47)
    {

      v48 = sub_100BC0BB0();
      CGAffineTransformMakeRotation(&m, v48);
      *&v71.m11 = *&m.m11;
      *&v71.m13 = *&m.m13;
      *&v71.m21 = *&m.m21;
      CATransform3DMakeAffineTransform(&m, &v71);
    }

    else
    {
      v49 = *&CATransform3DIdentity.m33;
      *&m.m31 = *&CATransform3DIdentity.m31;
      *&m.m33 = v49;
      v50 = *&CATransform3DIdentity.m43;
      *&m.m41 = *&CATransform3DIdentity.m41;
      *&m.m43 = v50;
      v51 = *&CATransform3DIdentity.m13;
      *&m.m11 = *&CATransform3DIdentity.m11;
      *&m.m13 = v51;
      v52 = *&CATransform3DIdentity.m23;
      *&m.m21 = *&CATransform3DIdentity.m21;
      *&m.m23 = v52;
    }

    v71 = m;
    [v46 setTransform:&v71];

    [v45 setUserInteractionEnabled:0];
    v53 = [objc_allocWithZone(UIView) initWithFrame:{m11, m12, m13, m14}];
    v54 = [v53 layer];
    v55 = swift_unknownObjectWeakLoadStrong();
    if (v55)
    {

      v56 = sub_100BC0BB0();
      CGAffineTransformMakeRotation(&v71, v56);
      *&v65.a = *&v71.m11;
      *&v65.c = *&v71.m13;
      *&v65.tx = *&v71.m21;
      CATransform3DMakeAffineTransform(&v71, &v65);
    }

    else
    {
      v57 = *&CATransform3DIdentity.m33;
      *&v71.m31 = *&CATransform3DIdentity.m31;
      *&v71.m33 = v57;
      v58 = *&CATransform3DIdentity.m43;
      *&v71.m41 = *&CATransform3DIdentity.m41;
      *&v71.m43 = v58;
      v59 = *&CATransform3DIdentity.m13;
      *&v71.m11 = *&CATransform3DIdentity.m11;
      *&v71.m13 = v59;
      v60 = *&CATransform3DIdentity.m23;
      *&v71.m21 = *&CATransform3DIdentity.m21;
      *&v71.m23 = v60;
    }

    v67 = *&v71.m31;
    v68 = *&v71.m33;
    v69 = *&v71.m41;
    v70 = *&v71.m43;
    *&v65.a = *&v71.m11;
    *&v65.c = *&v71.m13;
    *&v65.tx = *&v71.m21;
    v66 = *&v71.m23;
    [v54 setTransform:&v65];

    [v53 setUserInteractionEnabled:0];
    v61 = *(v0 + v8);
    *(v0 + v8) = v15;

    v62 = *(v0 + v2);
    *(v0 + v2) = v45;

    v63 = *(v0 + v5);
    *(v0 + v5) = v53;
  }

  else
  {
    v19 = objc_opt_self();
    v20 = [v19 _atomicIncrementAssertCount];
    *&v73.m11 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v73);
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    v23 = [v22 lastPathComponent];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10146CA70;
    *(v28 + 56) = &type metadata for Int32;
    *(v28 + 64) = &protocol witness table for Int32;
    *(v28 + 32) = v20;
    v29 = sub_1005CF000();
    *(v28 + 96) = v29;
    v30 = sub_1005CF04C();
    *(v28 + 104) = v30;
    *(v28 + 72) = v21;
    *(v28 + 136) = &type metadata for String;
    v31 = sub_1000053B0();
    *(v28 + 112) = v24;
    *(v28 + 120) = v26;
    *(v28 + 176) = &type metadata for UInt;
    *(v28 + 184) = &protocol witness table for UInt;
    *(v28 + 144) = v31;
    *(v28 + 152) = 29;
    v32 = v73.m11;
    *(v28 + 216) = v29;
    *(v28 + 224) = v30;
    *(v28 + 192) = v32;
    v33 = v21;
    v34 = *&v32;
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v35, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v28);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v36, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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
    v64 = String._bridgeToObjectiveC()();

    [v19 handleFailureInFunction:v39 file:v40 lineNumber:29 isFatal:0 format:v64 args:v38];
  }
}

void sub_100BC0690()
{
  v1 = OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_icc;
  v2 = [*(v0 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_icc) textInputResponder];
  if (v2)
  {
    v3 = OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_textSelectionInteraction;
    if (!*(v0 + OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_textSelectionInteraction))
    {
      v36 = v2;
      v4 = [objc_allocWithZone(UITextSelectionDisplayInteraction) initWithTextInput:v36 delegate:v36];
      v5 = OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView;
      v6 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView);
      if (v6)
      {
        [v6 addInteraction:v4];
      }

      v7 = [*(v0 + v1) layerHost];
      if (v7)
      {
        v8 = v7;
        if ([v7 respondsToSelector:"asiOSCVC"])
        {
          v9 = [v8 asiOSCVC];
          swift_unknownObjectRelease();
          v10 = [v9 writingToolsCoordinator];

          if (v10)
          {
            v11 = *(v0 + v5);
            if (v11)
            {
              v12 = v11;
              [v12 addInteraction:v10];
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      [v4 setActivated:1];
      [v4 layoutManagedSubviews];

      v2 = *(v0 + v3);
      *(v0 + v3) = v4;
    }
  }

  else
  {
    v13 = objc_opt_self();
    v14 = [v13 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37);
    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v14;
    v23 = sub_1005CF000();
    *(inited + 96) = v23;
    v24 = sub_1005CF04C();
    *(inited + 104) = v24;
    *(inited + 72) = v15;
    *(inited + 136) = &type metadata for String;
    v25 = sub_1000053B0();
    *(inited + 112) = v18;
    *(inited + 120) = v20;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v25;
    *(inited + 152) = 80;
    v26 = v37;
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v26;
    v27 = v15;
    v28 = v26;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v30, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    [v13 handleFailureInFunction:v33 file:v34 lineNumber:80 isFatal:0 format:v35 args:v32];
  }
}

double sub_100BC0BB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = 0.0;
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3 && (v4 = v3, v5 = [v3 layoutForInfo:*&v2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape]], v4, v5))
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        [v6 transformInRoot];
        v1 = sub_1001399C0(&v8);
      }
    }

    else
    {
    }
  }

  return v1;
}

void sub_100BC0CAC()
{
  v1 = OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView;
  if (*(v0 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView))
  {
    v2 = v0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        sub_100960E34();
        if (!v7)
        {
LABEL_12:

          goto LABEL_13;
        }

        v8 = [swift_unknownObjectRetain() selectedTextRange];
        swift_unknownObjectRelease();

        if (v8)
        {
          if ([v8 isEmpty])
          {
            v9 = OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_textSelectionInteraction;
            v10 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_textSelectionInteraction);
            if (v10)
            {
              v11 = [v10 cursorView];
              v12 = [v11 isBlinking];

              v13 = *(v2 + v9);
              if (v12)
              {
                if (v13)
                {
                  v14 = [v13 cursorView];
                  [v14 resetBlinkAnimation];

                  v8 = v14;
                }
              }

              else if (v13)
              {
                v55 = [v13 cursorView];
                [v55 setBlinking:1];
              }
            }

            goto LABEL_15;
          }

          v6 = v8;
          goto LABEL_12;
        }
      }

LABEL_13:
      v15 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_textSelectionInteraction);
      if (!v15)
      {
        goto LABEL_16;
      }

      v8 = [v15 cursorView];
      [v8 setBlinking:0];
LABEL_15:

LABEL_16:
      v16 = objc_opt_self();
      [v16 begin];
      [v16 setDisableActions:1];
      if (qword_1019F1570 != -1)
      {
        swift_once();
      }

      sub_10091244C(v2, &v62);
      m13 = v62.m13;
      m14 = v62.m14;
      v19 = *(v2 + v1);
      if (v19)
      {
        v20 = v19;
        sub_10091244C(v2, &v62);
        [v20 setFrame:{v62.m11, v62.m12, v62.m13, v62.m14}];

        v21 = *(v2 + v1);
      }

      else
      {
        v21 = 0;
      }

      [v21 setBounds:{0.0, 0.0, m13, m14}];
      v22 = OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_overlayView;
      [*(v2 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_overlayView) setBounds:{0.0, 0.0, m13, m14}];
      v23 = OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_underlayView;
      v24 = *(v2 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_underlayView);
      if (v24)
      {
        v25 = v24;
        sub_10091244C(v2, &v62);
        [v25 setFrame:{v62.m11, v62.m12, v62.m13, v62.m14}];
      }

      v26 = *(v2 + v1);
      if (v26)
      {
        v27 = [v26 layer];
        v28 = swift_unknownObjectWeakLoadStrong();
        if (v28)
        {

          v29 = sub_100BC0BB0();
          CGAffineTransformMakeRotation(&v62, v29);
          *&v56.a = *&v62.m11;
          *&v56.c = *&v62.m13;
          *&v56.tx = *&v62.m21;
          CATransform3DMakeAffineTransform(&v62, &v56);
        }

        else
        {
          v30 = *&CATransform3DIdentity.m33;
          *&v62.m31 = *&CATransform3DIdentity.m31;
          *&v62.m33 = v30;
          v31 = *&CATransform3DIdentity.m43;
          *&v62.m41 = *&CATransform3DIdentity.m41;
          *&v62.m43 = v31;
          v32 = *&CATransform3DIdentity.m13;
          *&v62.m11 = *&CATransform3DIdentity.m11;
          *&v62.m13 = v32;
          v33 = *&CATransform3DIdentity.m23;
          *&v62.m21 = *&CATransform3DIdentity.m21;
          *&v62.m23 = v33;
        }

        v58 = *&v62.m31;
        v59 = *&v62.m33;
        v60 = *&v62.m41;
        v61 = *&v62.m43;
        *&v56.a = *&v62.m11;
        *&v56.c = *&v62.m13;
        *&v56.tx = *&v62.m21;
        v57 = *&v62.m23;
        [v27 setTransform:&v56];
      }

      v34 = *(v2 + v22);
      if (v34)
      {
        v35 = [v34 layer];
        v36 = swift_unknownObjectWeakLoadStrong();
        if (v36)
        {

          v37 = sub_100BC0BB0();
          CGAffineTransformMakeRotation(&v62, v37);
          *&v56.a = *&v62.m11;
          *&v56.c = *&v62.m13;
          *&v56.tx = *&v62.m21;
          CATransform3DMakeAffineTransform(&v62, &v56);
        }

        else
        {
          v38 = *&CATransform3DIdentity.m33;
          *&v62.m31 = *&CATransform3DIdentity.m31;
          *&v62.m33 = v38;
          v39 = *&CATransform3DIdentity.m43;
          *&v62.m41 = *&CATransform3DIdentity.m41;
          *&v62.m43 = v39;
          v40 = *&CATransform3DIdentity.m13;
          *&v62.m11 = *&CATransform3DIdentity.m11;
          *&v62.m13 = v40;
          v41 = *&CATransform3DIdentity.m23;
          *&v62.m21 = *&CATransform3DIdentity.m21;
          *&v62.m23 = v41;
        }

        v58 = *&v62.m31;
        v59 = *&v62.m33;
        v60 = *&v62.m41;
        v61 = *&v62.m43;
        *&v56.a = *&v62.m11;
        *&v56.c = *&v62.m13;
        *&v56.tx = *&v62.m21;
        v57 = *&v62.m23;
        [v35 setTransform:&v56];
      }

      v42 = *(v2 + v23);
      if (v42)
      {
        v43 = [v42 layer];
        v44 = swift_unknownObjectWeakLoadStrong();
        if (v44)
        {

          v45 = sub_100BC0BB0();
          CGAffineTransformMakeRotation(&v62, v45);
          *&v56.a = *&v62.m11;
          *&v56.c = *&v62.m13;
          *&v56.tx = *&v62.m21;
          CATransform3DMakeAffineTransform(&v62, &v56);
        }

        else
        {
          v46 = *&CATransform3DIdentity.m33;
          *&v62.m31 = *&CATransform3DIdentity.m31;
          *&v62.m33 = v46;
          v47 = *&CATransform3DIdentity.m43;
          *&v62.m41 = *&CATransform3DIdentity.m41;
          *&v62.m43 = v47;
          v48 = *&CATransform3DIdentity.m13;
          *&v62.m11 = *&CATransform3DIdentity.m11;
          *&v62.m13 = v48;
          v49 = *&CATransform3DIdentity.m23;
          *&v62.m21 = *&CATransform3DIdentity.m21;
          *&v62.m23 = v49;
        }

        v58 = *&v62.m31;
        v59 = *&v62.m33;
        v60 = *&v62.m41;
        v61 = *&v62.m43;
        *&v56.a = *&v62.m11;
        *&v56.c = *&v62.m13;
        *&v56.tx = *&v62.m21;
        v57 = *&v62.m23;
        [v43 setTransform:&v56];
      }

      [v16 commit];
      v50 = OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_textSelectionInteraction;
      [*(v2 + OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_textSelectionInteraction) setNeedsSelectionUpdate];
      [*(v2 + v50) layoutManagedSubviews];
      v51 = [*&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionForEditor:v4];
      if (v51)
      {
        v52 = v51;
        objc_opt_self();
        v53 = swift_dynamicCastObjCClass();
        if (v53)
        {
          if ([v53 type] == 3)
          {
            goto LABEL_43;
          }

          v54 = *(*&v4[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
          if (!v54)
          {
            __break(1u);
            return;
          }

          if (*(v54 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
          {
LABEL_43:
            sub_100BC12CC();

LABEL_46:
            return;
          }
        }
      }

      sub_100BC12D4();
      goto LABEL_46;
    }
  }
}

void *sub_100BC12DC(char a1)
{
  result = *(v1 + OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_textSelectionInteraction);
  if (result)
  {
    v4 = [result handleViews];
    sub_1005B981C(&unk_101A13FE0);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setHidden:a1 & 1];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:
  }

  return result;
}

void sub_100BC143C()
{
  v1 = OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_textSelectionInteraction;
  if (*(v0 + OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_textSelectionInteraction))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView);
    if (v2)
    {
      v2 = [v2 removeInteraction:?];
    }

    *(v0 + v1) = 0;

    _objc_release_x2(v2);
  }
}

id sub_100BC154C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSelectionViewController_i();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100BC15B8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    type metadata accessor for CRLURLItemCommandProvider();
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v1 + 24) = 0;
    swift_unknownObjectWeakAssign();

    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_100BC1654()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100BC16B8(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10072455C(v2, *(a1 + 36), 0, a1);
  }
}

unint64_t sub_100BC1734(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  v3 = v2;
  v4 = 1 << *(a1 + 32);
  if (v2 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_1007245AC(v2, *(a1 + 36), 0, a1);
  }

  return v5 | ((v3 == v4) << 32);
}

uint64_t sub_100BC17F8(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_100725298(v2, *(a1 + 36), 0, a1);

  return v4;
}

unint64_t sub_100BC1874(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_100BD42D0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t sub_100BC19C0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100BC1A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v5 = *(a1 + 36);

    return sub_100724C24(result, v5, a1, a2);
  }

  return result;
}

uint64_t sub_100BC1AE8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void, void, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = _HashTable.startBucket.getter();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    a2(v8, *(a1 + 36), 0, a1);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_100BC1BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100A9AB44(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1007C7FB8(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!v13)
      {
        sub_100AA3A24();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      sub_100BCCC28(v12, v14);

      *v4 = v14;
    }

    else
    {
    }
  }

  return result;
}

_OWORD *sub_100BC1CF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_10000BF3C(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_100A9ACB8(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_10000CAAC(a1, &unk_1019F4D00);
    v7 = sub_1007C8124(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_100AA3B9C();
        v11 = v13;
      }

      sub_10000BF3C((*(v11 + 56) + 32 * v9), v14);
      sub_100BCCF10(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_10000CAAC(v14, &unk_1019F4D00);
  }

  return result;
}

unint64_t sub_100BC1DF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24) == 1)
  {
    sub_10000CAAC(a1, &unk_1019F4D50);
    v5 = sub_1007C8124(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v15 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA3D18();
        v9 = v15;
      }

      v10 = (*(v9 + 56) + 32 * v7);
      v11 = v10[1];
      v17 = *v10;
      v18 = v11;
      sub_100BCCF10(v7, v9);
      *v3 = v9;
    }

    else
    {
      v17 = 0uLL;
      *&v18 = 0;
      *(&v18 + 1) = 1;
    }

    return sub_10000CAAC(&v17, &unk_1019F4D50);
  }

  else
  {
    v12 = *(a1 + 16);
    v17 = *a1;
    v18 = v12;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_100A9ADE4(&v17, a2, v13);
    *v2 = v16;
  }

  return result;
}

unint64_t sub_100BC1F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24) == 1)
  {
    sub_10000CAAC(a1, &unk_1019F4D50);
    v5 = sub_1007CF108(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v15 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA3EA4();
        v9 = v15;
      }

      v10 = (*(v9 + 56) + 32 * v7);
      v11 = v10[1];
      v17 = *v10;
      v18 = v11;
      sub_100BCD214(v7, v9);
      *v3 = v9;
    }

    else
    {
      v17 = 0uLL;
      *&v18 = 0;
      *(&v18 + 1) = 1;
    }

    return sub_10000CAAC(&v17, &unk_1019F4D50);
  }

  else
  {
    v12 = *(a1 + 16);
    v17 = *a1;
    v18 = v12;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_100A9AF28(&v17, a2, v13);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_100BC2038(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_101A0B040);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1005B981C(&qword_1019FBED8);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000CAAC(a1, &qword_101A0B040);
    sub_1006F7074(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10000CAAC(v7, &qword_101A0B040);
  }

  else
  {
    sub_10003DFF8(a1, v10, &qword_1019FBED8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100A9B1E0(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_100BC2288(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_10000CAAC(a1, &qword_1019F6990);
    sub_1010F59C0(a2, v7);
    (*(v9 + 8))(a2, v8);
    return sub_10000CAAC(v7, &qword_1019F6990);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_100A9B9B4(v12, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v9 + 8))(a2, v8);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_100BC24A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_101A00E90);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for CRLRealTimeEnter(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_10000CAAC(a1, &qword_101A00E90);
    sub_1010F5B58(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_10000CAAC(v7, &qword_101A00E90);
  }

  else
  {
    sub_100BDBA0C(a1, v11, type metadata accessor for CRLRealTimeEnter);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_100A9BD5C(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_100BC26C4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&qword_101A04F48);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1005B981C(&qword_1019F6700);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_10000CAAC(a1, &qword_101A04F48);
    v13 = sub_10002D978(a2 & 1);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA514C();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_100BCDB84(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_10000CAAC(v8, &qword_101A04F48);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    result = sub_100A9BFC8(v12, a2 & 1, v18);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_100BC291C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_10000BF3C(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_100A9C4E8(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for CodingUserInfoKey();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_10000CAAC(a1, &qword_101A145D8);
    sub_1010F5C40(a2, v9);
    v7 = type metadata accessor for CodingUserInfoKey();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_10000CAAC(v9, &qword_101A145D8);
  }

  return result;
}

uint64_t sub_100BC2A38(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CRLFolderIdentifier(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_10000CAAC(a1, &qword_1019F33E0);
    sub_1010F5D1C(a2, v7);
    sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
    return sub_10000CAAC(v7, &qword_1019F33E0);
  }

  else
  {
    sub_100BDBA0C(a1, v11, type metadata accessor for CRLFolderIdentifier);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_100A9C8C4(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_100BC2C20(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _s5BoardVMa(0);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000CAAC(a1, &unk_1019FA3E0);
    sub_1010F5D70(a2, v7);
    sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
    return sub_10000CAAC(v7, &unk_1019FA3E0);
  }

  else
  {
    sub_100BDBA0C(a1, v10, _s5BoardVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_100A9CD50(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_100BC2E08(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for CRLBoardEntity();
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_10000CAAC(a1, &qword_1019F6268);
    sub_1010F5F80(a2, v7);
    sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
    return sub_10000CAAC(v7, &qword_1019F6268);
  }

  else
  {
    sub_100BDBA0C(a1, v10, type metadata accessor for CRLBoardEntity);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_100A9CFB0(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_100BC301C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v10 = type metadata accessor for UUID();
    result = (*(*(v10 - 8) + 8))(a2, v10);
    *v4 = v24;
  }

  else
  {
    v13 = sub_10003E994(a2);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v25 = *v5;
      if (!v16)
      {
        a4();
        v17 = v25;
      }

      v18 = *(v17 + 48);
      v19 = type metadata accessor for UUID();
      v20 = *(v19 - 8);
      v21 = *(v20 + 8);
      v21(v18 + *(v20 + 72) * v15, v19);

      sub_100BCE8CC(v15, v17);
      result = (v21)(a2, v19);
      *v5 = v17;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_100BC31EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100A9D660(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_10003E994(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_100AA7344();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_100BCE8CC(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_100BC33AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_100A9D64C(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
    *v2 = v15;
  }

  else
  {
    v8 = sub_1000486F0(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_100AA7308();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for CRLBoardIdentifier(0);
      sub_100BDB9AC(v13 + *(*(v14 - 8) + 72) * v10, type metadata accessor for CRLBoardIdentifier);

      sub_100BCE5A0(v10, v12);
      result = sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
      *v3 = v12;
    }

    else
    {
      return sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
    }
  }

  return result;
}

uint64_t sub_100BC3528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 8))
  {
    sub_10000CAAC(a1, &qword_1019FBE68);
    v5 = sub_1007C7EC0(a2);
    v7 = v6;
    if (v6)
    {
      v8 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA78C0();
        v10 = v13;
      }

      sub_10003DFF8(*(v10 + 56) + 8 * v8, &v15, &qword_1019FBEF0);
      sub_100BCF59C(v8, v10);
      *v3 = v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = (v7 & 1) == 0;
    return sub_10000CAAC(&v15, &qword_1019FBE68);
  }

  else
  {
    sub_10003DFF8(a1, &v15, &qword_1019FBEF0);
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_100A9DED4(&v15, a2, v11);
    *v2 = v14;
  }

  return result;
}

uint64_t sub_100BC3658(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v8 + 48))(a1, 1, v7) == 1)
  {
    sub_10000CAAC(a1, &qword_101A0A320);
    v11 = sub_10005F124();
    if (v12)
    {
      v13 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v2;
      v19 = *v2;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA7A70();
        v15 = v19;
      }

      (*(v8 + 32))(v6, *(v15 + 56) + *(v8 + 72) * v13, v7);
      sub_100BCF760(v13, v15);
      *v2 = v15;
      (*(v8 + 56))(v6, 0, 1, v7);
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
    }

    return sub_10000CAAC(v6, &qword_101A0A320);
  }

  else
  {
    (*(v8 + 32))(v10, a1, v7);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    result = sub_100A9DFF8(v10, v16);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_100BC38C8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_10000BE7C(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AA7CF8();
        v13 = v16;
      }

      result = sub_100BCF924(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_100A9E158(a1, a3, a4, v15);

    *v4 = v17;
  }

  return result;
}

uint64_t sub_100BC39B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    result = a3(a1, a2, isUniquelyReferenced_nonNull_native);
    *v4 = v16;
  }

  else
  {
    result = sub_1007C7EC0(a2);
    if (v12)
    {
      v13 = result;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v17 = *v5;
      if (!v14)
      {
        a4();
        v15 = v17;
      }

      result = sub_100BCD6FC(v13, v15);
      *v5 = v15;
    }
  }

  return result;
}

unint64_t sub_100BC3A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    result = sub_100A9E720(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    *v4 = v16;
  }

  else
  {
    result = sub_1007C7EC0(a4);
    if (v12)
    {
      v13 = result;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v17 = *v5;
      if (!v14)
      {
        sub_100AA8600();
        v15 = v17;
      }

      result = sub_100BCFAD4(v13, v15);
      *v5 = v15;
    }
  }

  return result;
}

uint64_t sub_100BC3BA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v10 = type metadata accessor for UUID();
    result = (*(*(v10 - 8) + 8))(a2, v10);
    *v4 = v24;
  }

  else
  {
    v13 = sub_10003E994(a2);
    if (v14)
    {
      v15 = v13;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v25 = *v5;
      if (!v16)
      {
        a4();
        v17 = v25;
      }

      v18 = *(v17 + 48);
      v19 = type metadata accessor for UUID();
      v20 = *(v19 - 8);
      v21 = *(v20 + 8);
      v21(v18 + *(v20 + 72) * v15, v19);

      sub_100BCE8CC(v15, v17);
      result = (v21)(a2, v19);
      *v5 = v17;
    }

    else
    {
      v22 = type metadata accessor for UUID();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

void sub_100BC3D70(uint64_t a1, void *a2)
{
  v5 = sub_1005B981C(&qword_101A0BA30);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for CRLZoneSyncResultScenarios();
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_10000CAAC(a1, &qword_101A0BA30);
    sub_1010F6254(a2, v7);

    sub_10000CAAC(v7, &qword_101A0BA30);
  }

  else
  {
    sub_100BDBA0C(a1, v11, type metadata accessor for CRLZoneSyncResultScenarios);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_100A9F454(v11, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }
}

uint64_t sub_100BC3F28(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_101A0C008);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_10000CAAC(a1, &qword_101A0C008);
    sub_1010F6450(a2, v7);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_10000CAAC(v7, &qword_101A0C008);
  }

  else
  {
    sub_100BDBA0C(a1, v11, _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_100A9FBDC(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_100BC4174(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8, v10) == 1)
  {
    sub_10000CAAC(a1, &qword_101A0A320);
    sub_1010F6664(a2, v7);
    sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
    return sub_10000CAAC(v7, &qword_101A0A320);
  }

  else
  {
    (*(v9 + 32))(v12, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_100AA0280(v12, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_100BC4394(char a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 2)
  {
    v5 = sub_1007C8484(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v15 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100AAB870();
        v9 = v15;
      }

      v10 = *(v9 + 48);
      v11 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
      sub_100BDB9AC(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      sub_100BD0C98(v7, v9);
      result = sub_100BDB9AC(a2, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      *v3 = v9;
    }

    else
    {
      return sub_100BDB9AC(a2, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    }
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_100AA06A0(a1 & 1, a2, v14);
    result = sub_100BDB9AC(a2, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    *v3 = v16;
  }

  return result;
}

uint64_t sub_100BC44E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_100AA0470(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100BDB9AC(a2, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    *v2 = v15;
  }

  else
  {
    v8 = sub_1007C8484(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v16 = *v3;
      if (!v11)
      {
        sub_100AAB834();
        v12 = v16;
      }

      v13 = *(v12 + 48);
      v14 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
      sub_100BDB9AC(v13 + *(*(v14 - 8) + 72) * v10, type metadata accessor for CRLGloballyScopedBoardIdentifier);

      sub_100BD1ACC(v10, v12, type metadata accessor for CRLGloballyScopedBoardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      result = sub_100BDB9AC(a2, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      *v3 = v12;
    }

    else
    {
      return sub_100BDB9AC(a2, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    }
  }

  return result;
}

void sub_100BC465C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100AA08A4(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_1007CF10C(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_100AAB8AC();
        v11 = v13;
      }

      sub_100BD0FC4(v9, v11);
      *v3 = v11;
    }
  }
}

uint64_t sub_100BC471C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_10000CAAC(a1, &unk_1019F52D0);
    sub_1010F6800(a2, v7);
    sub_100BDB9AC(a2, type metadata accessor for CRLAssetReferrerIdentifier);
    return sub_10000CAAC(v7, &unk_1019F52D0);
  }

  else
  {
    sub_100BDBA0C(a1, v11, type metadata accessor for CRLBoardIdentifier);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_100AA0D64(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100BDB9AC(a2, type metadata accessor for CRLAssetReferrerIdentifier);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_100BC4930(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
    *v4 = v19;
  }

  else
  {
    v12 = sub_1000486F0(a2);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v5;
      if (!v15)
      {
        a4();
        v16 = v20;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for CRLBoardIdentifier(0);
      sub_100BDB9AC(v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for CRLBoardIdentifier);

      sub_100BD1ACC(v14, v16, type metadata accessor for CRLBoardIdentifier, type metadata accessor for CRLBoardIdentifier, type metadata accessor for CRLBoardIdentifier);
      result = sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
      *v5 = v16;
    }

    else
    {
      return sub_100BDB9AC(a2, type metadata accessor for CRLBoardIdentifier);
    }
  }

  return result;
}

void sub_100BC4ABC(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_10000BF3C(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_100AA12A4(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_10000CAAC(a1, &unk_1019F4D00);
    sub_1010F6998(a2, v6);

    sub_10000CAAC(v6, &unk_1019F4D00);
  }
}

uint64_t sub_100BC4B70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_100AA15E4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    result = sub_10002640C(a3, a4);
    *v4 = v17;
  }

  else
  {
    v12 = sub_1007C956C(a3, a4);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v18 = *v5;
      if (!v15)
      {
        sub_100AACF28();
        v16 = v18;
      }

      sub_10002640C(*(*(v16 + 48) + 16 * v14), *(*(v16 + 48) + 16 * v14 + 8));

      sub_100BD2140(v14, v16);
      result = sub_10002640C(a3, a4);
      *v5 = v16;
    }

    else
    {

      return sub_10002640C(a3, a4);
    }
  }

  return result;
}

void sub_100BC4CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRKeyPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v45 = _s6CellIDVMa(0);
  __chkstk_darwin(v45);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v35 - v14;
  __chkstk_darwin(v15);
  v18 = &v35 - v16;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v19 = 0;
    v20 = *(a1 + 56);
    v36 = a1 + 56;
    v37 = &v35 - v16;
    v21 = 1 << *(a1 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v20;
    v35 = (v21 + 63) >> 6;
    v44 = a2 + 56;
    v24 = (v5 + 8);
    v38 = v17;
    v39 = a1;
    if (v23)
    {
      while (1)
      {
        v25 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
LABEL_13:
        v41 = v19;
        v28 = *(a1 + 48);
        v43 = *(v17 + 72);
        sub_10000C76C(v28 + v43 * (v25 | (v19 << 6)), v18, _s6CellIDVMa);
        sub_100BDBA0C(v18, v46, _s6CellIDVMa);
        Hasher.init(_seed:)();
        UUID.hash(into:)();
        UUID.hash(into:)();
        v29 = Hasher._finalize()();
        v30 = -1 << *(a2 + 32);
        v31 = v29 & ~v30;
        if (((*(v44 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          break;
        }

        v42 = ~v30;
        while (1)
        {
          v32 = a2;
          sub_10000C76C(*(a2 + 48) + v31 * v43, v12, _s6CellIDVMa);
          sub_100BDAEF0(&unk_101A0B020, _s6CellIDVMa);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          sub_100BDAEF0(&unk_101A2C5A0, &type metadata accessor for CRKeyPath);
          v33 = dispatch thunk of static Equatable.== infix(_:_:)();
          v34 = *v24;
          (*v24)(v7, v4);
          v34(v10, v4);
          sub_100BDB9AC(v12, _s6CellIDVMa);
          if (v33)
          {
            break;
          }

          v31 = (v31 + 1) & v42;
          a2 = v32;
          if (((*(v44 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        sub_100BDB9AC(v46, _s6CellIDVMa);
        a2 = v32;
        v17 = v38;
        a1 = v39;
        v18 = v37;
        v23 = v40;
        v19 = v41;
        if (!v40)
        {
          goto LABEL_8;
        }
      }

LABEL_21:
      sub_100BDB9AC(v46, _s6CellIDVMa);
    }

    else
    {
LABEL_8:
      v26 = v19;
      while (1)
      {
        v19 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v19 >= v35)
        {
          return;
        }

        v27 = *(v36 + 8 * v19);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v40 = (v27 - 1) & v27;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

Swift::Int _s8Freeform21CRLUIPropertyNotifierC14PropertyFilterV23__derived_struct_equalsySbAE_AEtFZ_0(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int _s8Freeform21CRLUIPropertyNotifierC10KindFilterV23__derived_struct_equalsySbAE_AEtFZ_0(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 4 * (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 4 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100BC5454(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v3)
    {
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v6 = a2;
      }

      sub_100BCC808(v6, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v7 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v8 = a1 + 56;
        v9 = 1 << *(a1 + 32);
        if (v9 < 64)
        {
          v10 = ~(-1 << v9);
        }

        else
        {
          v10 = -1;
        }

        v11 = v10 & *(a1 + 56);
        v5 = type metadata accessor for CRLBoardItem(0);
        v12 = 0;
        v13 = (v9 + 63) >> 6;
        v14 = a2 + 56;
        v28 = v13;
        v15 = a1;
        if (!v11)
        {
LABEL_24:
          v17 = v12;
          while (1)
          {
            v12 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v12 >= v13)
            {
              goto LABEL_36;
            }

            v18 = *(v8 + 8 * v12);
            ++v17;
            if (v18)
            {
              v16 = __clz(__rbit64(v18));
              v29 = (v18 - 1) & v18;
              goto LABEL_29;
            }
          }

          __break(1u);
          return __CocoaSet.isEqual(to:)(v5, v4);
        }

        while (1)
        {
          v16 = __clz(__rbit64(v11));
          v29 = (v11 - 1) & v11;
LABEL_29:
          v19 = *(a2 + 40);
          v20 = *(*(v15 + 48) + 8 * (v16 | (v12 << 6)));
          v21 = NSObject._rawHashValue(seed:)(v19);
          v22 = -1 << *(a2 + 32);
          v23 = v21 & ~v22;
          if (((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            break;
          }

          v24 = ~v22;
          while (1)
          {
            v25 = *(*(a2 + 48) + 8 * v23);
            v26 = static NSObject.== infix(_:_:)();

            if (v26)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v13 = v28;
          v11 = v29;
          v15 = a1;
          if (!v29)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v7 = 0;
    }

    return v7 & 1;
  }

  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v3)
  {
    sub_100BCC808(v4, a2);
    return v7 & 1;
  }

  if (a2 < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  return __CocoaSet.isEqual(to:)(v5, v4);
}

uint64_t sub_100BC569C(uint64_t a1, uint64_t a2)
{
  v4 = _s17CategoryViewModelVMa();
  v5 = __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v53 - v9;
  result = __chkstk_darwin(v8);
  v14 = &v53 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v21 = a2 + 56;
  if (!v19)
  {
    goto LABEL_8;
  }

  do
  {
    v56 = v20;
    v57 = v16;
    v55 = (v19 - 1) & v19;
    v54 = v15;
    v22 = __clz(__rbit64(v19)) | (v15 << 6);
LABEL_13:
    v59 = v12;
    v60 = a1;
    v26 = *(v12 + 72);
    sub_10000C76C(*(a1 + 48) + v26 * v22, v14, _s17CategoryViewModelVMa);
    v58 = v14;
    sub_100BDBA0C(v14, v10, _s17CategoryViewModelVMa);
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v27 = &v10[v4[5]];
    v29 = *v27;
    v28 = *(v27 + 1);
    String.hash(into:)();
    v30 = &v10[v4[6]];
    v31 = *v30;
    v65 = *(v30 + 1);
    if (v65)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v32 = &v10[v4[7]];
    v33 = *v32;
    v63 = *(v32 + 1);
    v64 = v33;
    String.hash(into:)();
    v62 = *&v10[v4[8]];
    Hasher._combine(_:)(v62);
    v34 = Hasher._finalize()();
    v35 = -1 << *(a2 + 32);
    v36 = v34 & ~v35;
    if (((*(v21 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
    {
LABEL_44:
      sub_100BDB9AC(v10, _s17CategoryViewModelVMa);
      return 0;
    }

    v66 = ~v35;
    v61 = v31;
    while (1)
    {
      sub_10000C76C(*(a2 + 48) + v36 * v26, v7, _s17CategoryViewModelVMa);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_19;
      }

      v37 = &v7[v4[5]];
      v38 = *v37 == v29 && *(v37 + 1) == v28;
      if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_19;
      }

      v39 = &v7[v4[6]];
      v40 = *(v39 + 1);
      if (v40)
      {
        break;
      }

      if (!v65)
      {
        goto LABEL_34;
      }

LABEL_19:
      sub_100BDB9AC(v7, _s17CategoryViewModelVMa);
LABEL_20:
      v36 = (v36 + 1) & v66;
      if (((*(v21 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    if (!v65)
    {
      goto LABEL_19;
    }

    v41 = *v39 == v31 && v40 == v65;
    if (!v41 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_34:
    v42 = &v7[v4[7]];
    v43 = *v42 == v64 && *(v42 + 1) == v63;
    if (!v43 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }

    v44 = v4[8];
    v45 = v28;
    v46 = v10;
    v47 = v4;
    v48 = v26;
    v49 = v29;
    v50 = v21;
    v51 = a2;
    v52 = *&v7[v44];
    sub_100BDB9AC(v7, _s17CategoryViewModelVMa);
    v38 = v52 == v62;
    a2 = v51;
    v21 = v50;
    v29 = v49;
    v26 = v48;
    v4 = v47;
    v10 = v46;
    v28 = v45;
    v31 = v61;
    if (!v38)
    {
      goto LABEL_20;
    }

    result = sub_100BDB9AC(v10, _s17CategoryViewModelVMa);
    v12 = v59;
    a1 = v60;
    v16 = v57;
    v14 = v58;
    v19 = v55;
    v20 = v56;
    v15 = v54;
  }

  while (v55);
LABEL_8:
  v23 = v15;
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      return 1;
    }

    v25 = *(v16 + 8 * v24);
    ++v23;
    if (v25)
    {
      v56 = v20;
      v57 = v16;
      v55 = (v25 - 1) & v25;
      v54 = v24;
      v22 = __clz(__rbit64(v25)) | (v24 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100BC5BA8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100BC5D60(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v3)
    {
      v6 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v6 = a2;
      }

      sub_100BCC808(v6, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v7 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v8 = a1 + 56;
        v9 = 1 << *(a1 + 32);
        if (v9 < 64)
        {
          v10 = ~(-1 << v9);
        }

        else
        {
          v10 = -1;
        }

        v11 = v10 & *(a1 + 56);
        v5 = sub_100006370(0, &qword_1019FB7A0);
        v12 = 0;
        v13 = (v9 + 63) >> 6;
        v14 = a2 + 56;
        v28 = v13;
        v15 = a1;
        if (!v11)
        {
LABEL_24:
          v17 = v12;
          while (1)
          {
            v12 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v12 >= v13)
            {
              goto LABEL_36;
            }

            v18 = *(v8 + 8 * v12);
            ++v17;
            if (v18)
            {
              v16 = __clz(__rbit64(v18));
              v29 = (v18 - 1) & v18;
              goto LABEL_29;
            }
          }

          __break(1u);
          return __CocoaSet.isEqual(to:)(v5, v4);
        }

        while (1)
        {
          v16 = __clz(__rbit64(v11));
          v29 = (v11 - 1) & v11;
LABEL_29:
          v19 = *(a2 + 40);
          v20 = *(*(v15 + 48) + 8 * (v16 | (v12 << 6)));
          v21 = NSObject._rawHashValue(seed:)(v19);
          v22 = -1 << *(a2 + 32);
          v23 = v21 & ~v22;
          if (((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            break;
          }

          v24 = ~v22;
          while (1)
          {
            v25 = *(*(a2 + 48) + 8 * v23);
            v26 = static NSObject.== infix(_:_:)();

            if (v26)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v13 = v28;
          v11 = v29;
          v15 = a1;
          if (!v29)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v7 = 0;
    }

    return v7 & 1;
  }

  if (a1 < 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v3)
  {
    sub_100BCC808(v4, a2);
    return v7 & 1;
  }

  if (a2 < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  return __CocoaSet.isEqual(to:)(v5, v4);
}

uint64_t sub_100BC5FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_100BDAEF0(&qword_1019F37C0, &type metadata accessor for UUID);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100BC6368(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v36 = result + 56;
  v37 = result;
  v35 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v38 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 16 * (v10 | (v3 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    Hasher.init(_seed:)();
    if (v15 <= 1)
    {
      v16 = v15 != 0;
LABEL_17:
      Hasher._combine(_:)(v16);
      v17 = v14;
      NSObject.hash(into:)();
      goto LABEL_24;
    }

    if (v15 == 2)
    {
      v16 = 2;
      goto LABEL_17;
    }

    if (v14)
    {
      if (v14 == 1)
      {
        v18 = 4;
      }

      else
      {
        v18 = 5;
      }
    }

    else
    {
      v18 = 3;
    }

    Hasher._combine(_:)(v18);
LABEL_24:
    v19 = Hasher._finalize()();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_57:
      sub_1007A98C8(v14, v15);
      return 0;
    }

    v22 = ~v20;
    v23 = v15 == 3;
    v24 = v14 == 2 && v15 == 3;
    v25 = v14 == 1 && v15 == 3;
    v40 = v25;
    v41 = v24;
    if (v14)
    {
      v23 = 0;
    }

    v39 = v23;
    while (1)
    {
      v26 = *(a2 + 48) + 16 * v21;
      v27 = *v26;
      v28 = *(v26 + 8);
      if (v28 <= 1)
      {
        break;
      }

      if (v28 == 2)
      {
        if (v15 != 2)
        {
          goto LABEL_35;
        }

        sub_100006370(0, &qword_1019F54D0);
        v33 = v27;
        v30 = static NSObject.== infix(_:_:)();
        v31 = v27;
        v32 = 2;
        goto LABEL_34;
      }

      if (v27)
      {
        if (v27 == 1)
        {
          if (v40)
          {
            goto LABEL_54;
          }
        }

        else if (v41)
        {
          goto LABEL_54;
        }
      }

      else if (v39)
      {
        goto LABEL_54;
      }

LABEL_35:
      v21 = (v21 + 1) & v22;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    if (*(v26 + 8))
    {
      if (v15 != 1)
      {
        goto LABEL_35;
      }

      sub_100006370(0, &qword_1019F54D0);
      v34 = v27;
      v30 = static NSObject.== infix(_:_:)();
      v31 = v27;
      v32 = 1;
    }

    else
    {
      if (v15)
      {
        goto LABEL_35;
      }

      sub_100006370(0, &qword_1019F54D0);
      v29 = v27;
      v30 = static NSObject.== infix(_:_:)();
      v31 = v27;
      v32 = 0;
    }

LABEL_34:
    sub_1007A98C8(v31, v32);
    if ((v30 & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_1007A98C8(v14, v28);
LABEL_54:
    v4 = v36;
    result = v37;
    v8 = v35;
    v7 = v38;
  }

  while (v38);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_100BC66AC()
{
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x70));
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *((swift_isaMask & *v0) + 0x88);
  v3 = *(v0 + v2);
  if (!v3 || (v4 = v0 + *((swift_isaMask & *v0) + 0x90), v5 = v4[8], v5 == 255))
  {
    v8 = *(v1 + 16);

    os_unfair_lock_unlock(v8);
  }

  else
  {
    v6 = *v4;
    *(v0 + v2) = 0;
    *v4 = 0;
    v4[8] = -1;
    v7 = *((swift_isaMask & *v0) + 0x98);
    swift_beginAccess();
    *(v0 + v7) = 0;

    os_unfair_lock_unlock(*(v1 + 16));
    if (v5)
    {
      [v3 removeObserver:v0 forChangeSourceOfClass:swift_getObjCClassFromMetadata()];
    }

    else
    {
      sub_1008B59E8(v6, 0);
      [v3 removeObserver:v0 forChangeSource:v6];

      sub_100095E0C(v6, v5);
      sub_100095E0C(v6, v5);
    }
  }
}

id CRLUIPropertyNotifier.__allocating_init(parent:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_propertyStateUpdateCount] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  *&v3[v4] = sub_100BD954C(_swiftEmptyArrayStorage, &qword_101A0F178);
  swift_unknownObjectWeakAssign();
  v7.receiver = v3;
  v7.super_class = v1;
  v5 = objc_msgSendSuper2(&v7, "init");

  return v5;
}

id CRLUIPropertyNotifier.init(parent:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_propertyStateUpdateCount] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  *&v1[v4] = sub_100BD954C(_swiftEmptyArrayStorage, &qword_101A0F178);
  swift_unknownObjectWeakAssign();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "init");

  return v5;
}

void CRLUIPropertyNotifier.init()()
{
  *(v0 + OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_propertyStateUpdateCount) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  *(v0 + v1) = sub_100BD954C(_swiftEmptyArrayStorage, &qword_101A0F178);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t CRLUIPropertyNotifier.registerProperty(for:changeKind:seed:)(Swift::UInt a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1005B981C(&qword_101A140F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = a2;
  v11 = sub_1005C1D4C(inited);
  swift_setDeallocating();
  v12 = sub_100BC77F0(a1, v11, _s8Freeform21CRLUIPropertyNotifierC10KindFilterV4hash4intoys6HasherVz_tF_0, &qword_101A147F8, &unk_10149ED58, _s8Freeform21CRLUIPropertyNotifierC10KindFilterV4hash4intoys6HasherVz_tF_0);

  type metadata accessor for CRLUIPropertyNotifier.PropertySubscription();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();

  v13 = ObjectIdentifier.hashValue.getter();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v12[3];
  v12[3] = 0x8000000000000000;
  sub_100A9E720(a3, a4, a5, v13, isUniquelyReferenced_nonNull_native);
  v12[3] = v18;
  v15 = swift_endAccess();
  if (!*(v18 + 16))
  {
    (*(*v12 + 184))(v15);
  }

  type metadata accessor for AnyCancellable();
  swift_allocObject();
  sub_100BDAEF0(&qword_101A14100, type metadata accessor for CRLUIPropertyNotifier.PropertySubscription);

  v16 = AnyCancellable.init<A>(_:)();

  return v16;
}

Swift::Int CRLUIPropertyNotifier.KindFilter.init(kind:)(int a1)
{
  sub_1005B981C(&qword_101A140F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = a1;
  v3 = sub_1005C1D4C(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t CRLUIPropertyNotifier.registerProperty<A>(for:changeFilter:seed:)(Swift::UInt a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100BC7AF0(a1, a2);
  type metadata accessor for CRLUIPropertyNotifier.PropertySubscription();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();

  v9 = ObjectIdentifier.hashValue.getter();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v8[3];
  v8[3] = 0x8000000000000000;
  sub_100A9E720(a3, a4, a5, v9, isUniquelyReferenced_nonNull_native);
  v8[3] = v14;
  v11 = swift_endAccess();
  if (!*(v14 + 16))
  {
    (*(*v8 + 184))(v11);
  }

  type metadata accessor for AnyCancellable();
  swift_allocObject();
  sub_100BDAEF0(&qword_101A14100, type metadata accessor for CRLUIPropertyNotifier.PropertySubscription);

  v12 = AnyCancellable.init<A>(_:)();

  return v12;
}

uint64_t CRLUIPropertyNotifier.registerProperty(for:changeProperty:seed:)(Swift::UInt a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1005B981C(&qword_101A14108);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = a2;
  v11 = sub_1005C1E88(inited);
  swift_setDeallocating();
  v12 = sub_100BC77F0(a1, v11, _s8Freeform21CRLUIPropertyNotifierC14PropertyFilterV4hash4intoys6HasherVz_tF_0, &qword_101A147F0, &unk_10149ED50, _s8Freeform21CRLUIPropertyNotifierC14PropertyFilterV4hash4intoys6HasherVz_tF_0);

  type metadata accessor for CRLUIPropertyNotifier.PropertySubscription();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();

  v13 = ObjectIdentifier.hashValue.getter();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v12[3];
  v12[3] = 0x8000000000000000;
  sub_100A9E720(a3, a4, a5, v13, isUniquelyReferenced_nonNull_native);
  v12[3] = v18;
  v15 = swift_endAccess();
  if (!*(v18 + 16))
  {
    (*(*v12 + 184))(v15);
  }

  type metadata accessor for AnyCancellable();
  swift_allocObject();
  sub_100BDAEF0(&qword_101A14100, type metadata accessor for CRLUIPropertyNotifier.PropertySubscription);

  v16 = AnyCancellable.init<A>(_:)();

  return v16;
}

Swift::Int CRLUIPropertyNotifier.PropertyFilter.init(property:)(uint64_t a1)
{
  sub_1005B981C(&qword_101A14108);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = a1;
  v3 = sub_1005C1E88(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t sub_100BC7374(Swift::UInt a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t), uint64_t *a7, uint64_t a8)
{
  v11 = sub_100BC77F0(a1, a2, a6, a7, a8, a6);
  type metadata accessor for CRLUIPropertyNotifier.PropertySubscription();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();

  v12 = ObjectIdentifier.hashValue.getter();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v11[3];
  v11[3] = 0x8000000000000000;
  sub_100A9E720(a3, a4, a5, v12, isUniquelyReferenced_nonNull_native);
  v11[3] = v17;
  v14 = swift_endAccess();
  if (!*(v17 + 16))
  {
    (*(*v11 + 184))(v14);
  }

  type metadata accessor for AnyCancellable();
  swift_allocObject();
  sub_100BDAEF0(&qword_101A14100, type metadata accessor for CRLUIPropertyNotifier.PropertySubscription);

  v15 = AnyCancellable.init<A>(_:)();

  return v15;
}

uint64_t CRLUIPropertyNotifier.registerProperty(for:where:seed:)(Swift::UInt a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for CRLUIPropertyNotifier.CustomFilter();
  __chkstk_darwin(v12 - 8);
  v14 = (v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = a2;
  v14[1] = a3;

  UUID.init()();
  v15 = sub_100BC78F8(a1, v14);
  type metadata accessor for CRLUIPropertyNotifier.PropertySubscription();
  v16 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();

  v17 = ObjectIdentifier.hashValue.getter();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = v15[3];
  v15[3] = 0x8000000000000000;
  sub_100A9E720(a4, a5, a6, v17, isUniquelyReferenced_nonNull_native);
  v19 = v23[0];
  v15[3] = v23[0];
  v20 = swift_endAccess();
  if (!*(v19 + 16))
  {
    (*(*v15 + 184))(v20);
  }

  v23[1] = v16;
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  sub_100BDAEF0(&qword_101A14100, type metadata accessor for CRLUIPropertyNotifier.PropertySubscription);
  v21 = AnyCancellable.init<A>(_:)();

  sub_100BDB9AC(v14, type metadata accessor for CRLUIPropertyNotifier.CustomFilter);
  return v21;
}

uint64_t CRLUIPropertyNotifier.CustomFilter.init(filter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for CRLUIPropertyNotifier.CustomFilter();
  return UUID.init()();
}

uint64_t sub_100BC77F0(Swift::UInt a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t *a4, uint64_t a5, void (*a6)(_BYTE *, uint64_t))
{
  v11 = v6;
  Hasher.init()();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(1uLL);
  a3(v18, a2);
  v14 = Hasher.finalize()();
  v15 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  swift_beginAccess();
  if (*(*&v11[v15] + 16) && (sub_1007C7EC0(v14), (v16 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return sub_100BC9548(a1, a2, v11, a4, a5, a6);
  }
}

uint64_t sub_100BC78F8(Swift::UInt a1, uint64_t a2)
{
  v3 = v2;
  Hasher.init()();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(1uLL);
  type metadata accessor for CRLUIPropertyNotifier.CustomFilter();
  type metadata accessor for UUID();
  sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v6 = Hasher.finalize()();
  v7 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  swift_beginAccess();
  if (*(*&v3[v7] + 16) && (sub_1007C7EC0(v6), (v8 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return sub_100BC99C0(a1, a2, v3);
  }
}

uint64_t sub_100BC7A2C(Swift::UInt a1)
{
  v2 = v1;
  Hasher.init()();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(1uLL);
  v4 = Hasher.finalize()();
  v5 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  swift_beginAccess();
  if (*(*(v2 + v5) + 16) && (sub_1007C7EC0(v4), (v6 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return sub_100BC9E94(a1);
  }
}

uint64_t sub_100BC7AF0(Swift::UInt a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_100BC94C8(a1);
  v7 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  swift_beginAccess();
  if (*(*&v3[v7] + 16) && (sub_1007C7EC0(v6), (v8 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    return sub_100BCA2DC(a1, a2, v3);
  }
}

uint64_t CRLUIPropertyNotifier.registerProperty(forAllChangeRecordsOn:seed:)(Swift::UInt a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100BC7A2C(a1);
  type metadata accessor for CRLUIPropertyNotifier.PropertySubscription();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();

  v8 = ObjectIdentifier.hashValue.getter();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v7[3];
  v7[3] = 0x8000000000000000;
  sub_100A9E720(a2, a3, a4, v8, isUniquelyReferenced_nonNull_native);
  v7[3] = v13;
  v10 = swift_endAccess();
  if (!*(v13 + 16))
  {
    (*(*v7 + 184))(v10);
  }

  type metadata accessor for AnyCancellable();
  swift_allocObject();
  sub_100BDAEF0(&qword_101A14100, type metadata accessor for CRLUIPropertyNotifier.PropertySubscription);

  v11 = AnyCancellable.init<A>(_:)();

  return v11;
}

uint64_t CRLUIPropertyNotifier.registerProperty<A>(updatePublisher:seed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for CRLUIPropertyNotifier.PublisherSubscriber();
  v7 = sub_100BDAEA8();
  sub_100BC8AF0(v7);
  type metadata accessor for CRLUIPropertyNotifier.PropertySubscription();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();

  v8 = ObjectIdentifier.hashValue.getter();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = v7[3];
  v7[3] = 0x8000000000000000;
  sub_100A9E720(a2, a3, a4, v8, isUniquelyReferenced_nonNull_native);
  v7[3] = v12;
  swift_endAccess();
  if (!*(v12 + 16))
  {
    sub_100BCB390();
  }

  type metadata accessor for AnyCancellable();
  swift_allocObject();
  sub_100BDAEF0(&qword_101A14100, type metadata accessor for CRLUIPropertyNotifier.PropertySubscription);

  v10 = AnyCancellable.init<A>(_:)();

  return v10;
}

void sub_100BC8018(uint64_t a1, void *a2, uint64_t a3, __int16 a4)
{
  v5 = v4;
  v10 = *(*a1 + 192);
  v11 = v10();
  v12 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  swift_beginAccess();
  if (*(*(v4 + v12) + 16) && (sub_1007C7EC0(v11), (v13 & 1) != 0))
  {
    v46 = v10;
    v47 = a2;
    v48 = a4;
    v49 = a3;
    swift_endAccess();
    v45 = objc_opt_self();
    v14 = [v45 _atomicIncrementAssertCount];
    v51 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v51);
    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v18;
    v43 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v14;
    v21 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v21;
    v22 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v22;
    *(inited + 72) = v44;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v43;
    *(inited + 120) = v42;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 260;
    v24 = v51;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v44;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "Should not add identical subscribers.", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    [v45 handleFailureInFunction:v31 file:v32 lineNumber:260 isFatal:0 format:v33 args:v30];

    a3 = v49;
    a4 = v48;
    a2 = v47;
    v35 = (v46)(v34);
  }

  else
  {
    v36 = swift_endAccess();
    v35 = (v10)(v36);
  }

  v37 = v35;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v5 + v12);
  *(v5 + v12) = 0x8000000000000000;
  sub_100A9E59C(a1, v37, isUniquelyReferenced_nonNull_native);
  *(v5 + v12) = v50;
  swift_endAccess();
  v39 = objc_allocWithZone(sub_1005B981C(&qword_101A147D0));
  v39[*((swift_isaMask & *v39) + 0x138)] = HIBYTE(a4) & 1;

  v40 = a2;
  sub_1008B59E8(a3, a4 & 1);
  v41 = sub_100BDA770(v40, a3, a4 & 1, a1);

  sub_100BD44F0(v41, a1);
}

uint64_t sub_100BC8580(void *a1)
{
  v2 = v1;
  v4 = *(*a1 + 192);
  v5 = v4();
  v6 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  swift_beginAccess();
  if (*(*(v1 + v6) + 16) && (sub_1007C7EC0(v5), (v7 & 1) != 0))
  {
    v37 = v4;
    swift_endAccess();
    v36 = objc_opt_self();
    v8 = [v36 _atomicIncrementAssertCount];
    v39 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v39);
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v15;
    v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v16;
    *(inited + 72) = v35;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v34;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 260;
    v18 = v39;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v35;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "Should not add identical subscribers.", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v25 file:v26 lineNumber:260 isFatal:0 format:v27 args:v24];

    v29 = (v37)(v28);
  }

  else
  {
    v30 = swift_endAccess();
    v29 = (v4)(v30);
  }

  v31 = v29;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v2 + v6);
  *(v2 + v6) = 0x8000000000000000;
  sub_100A9E59C(a1, v31, isUniquelyReferenced_nonNull_native);
  *(v2 + v6) = v38;
  swift_endAccess();
  v39 = a1;
  type metadata accessor for NSNotificationCenter.Publisher();
  sub_100BDAEF0(&qword_1019FB850, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_1005B981C(&qword_101A147B8);
  sub_10001A2F8(&qword_101A147C0, &qword_101A147B8);
  return dispatch thunk of Publisher.receive<A>(subscriber:)();
}

uint64_t sub_100BC8AF0(void *a1)
{
  v2 = v1;
  v4 = *(*a1 + 192);
  v5 = v4();
  v6 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  swift_beginAccess();
  if (*(*(v1 + v6) + 16) && (sub_1007C7EC0(v5), (v7 & 1) != 0))
  {
    v37 = v4;
    swift_endAccess();
    v36 = objc_opt_self();
    v8 = [v36 _atomicIncrementAssertCount];
    v39 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v39);
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v15;
    *(inited + 72) = v35;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v33;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 260;
    v17 = v39;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v35;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v21, "Should not add identical subscribers.", 37, 2, _swiftEmptyArrayStorage);

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

    [v36 handleFailureInFunction:v24 file:v25 lineNumber:260 isFatal:0 format:v26 args:v23];

    v28 = (v37)(v27);
  }

  else
  {
    v29 = swift_endAccess();
    v28 = (v4)(v29);
  }

  v30 = v28;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v2 + v6);
  *(v2 + v6) = 0x8000000000000000;
  sub_100A9E59C(a1, v30, isUniquelyReferenced_nonNull_native);
  *(v2 + v6) = v38;
  swift_endAccess();
  v39 = a1;
  type metadata accessor for CRLUIPropertyNotifier.PublisherSubscriber();
  swift_getWitnessTable();
  return dispatch thunk of Publisher.receive<A>(subscriber:)();
}

uint64_t CRLUIPropertyNotifier.registerProperty(notification:object:seed:)(uint64_t a1, Swift::UInt a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100BC9230(a2);
  type metadata accessor for CRLUIPropertyNotifier.PropertySubscription();
  swift_allocObject();
  swift_weakInit();
  swift_weakAssign();

  v9 = ObjectIdentifier.hashValue.getter();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v8[3];
  v8[3] = 0x8000000000000000;
  sub_100A9E720(a3, a4, a5, v9, isUniquelyReferenced_nonNull_native);
  v8[3] = v14;
  v11 = swift_endAccess();
  if (!*(v14 + 16))
  {
    (*(*v8 + 184))(v11);
  }

  type metadata accessor for AnyCancellable();
  swift_allocObject();
  sub_100BDAEF0(&qword_101A14100, type metadata accessor for CRLUIPropertyNotifier.PropertySubscription);

  v12 = AnyCancellable.init<A>(_:)();

  return v12;
}

uint64_t sub_100BC9230(Swift::UInt a1)
{
  v2 = v1;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Hasher.init()();
  if (a1)
  {
    Hasher._combine(_:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(2uLL);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  v8 = Hasher.finalize()();
  v9 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (*(v10 + 16) && (v11 = sub_1007C7EC0(v8), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v14 = [objc_opt_self() defaultCenter];
    NSNotificationCenter.publisher(for:object:)();

    sub_1005B981C(&qword_101A147B8);
    v13 = swift_allocObject();
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
    *(v13 + 80) = 0;
    swift_unknownObjectWeakInit();
    *(v13 + 24) = sub_100BD8BE0(_swiftEmptyArrayStorage);
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    swift_unknownObjectWeakAssign();
    *(v13 + 32) = v8;
    *(v13 + 40) = 0;

    sub_100BC8580(v15);

    (*(v5 + 8))(v7, v4);
  }

  return v13;
}

uint64_t CRLUIPropertyNotifier.subscriberCount.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_subscribers;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

Swift::Int sub_100BC94C8(Swift::UInt a1)
{
  Hasher.init()();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(1uLL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher.finalize()();
}

uint64_t sub_100BC9548(Swift::UInt a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, void (*a6)(_BYTE *, uint64_t))
{
  sub_1005B981C(a4);
  swift_allocObject();

  swift_unknownObjectRetain();
  v10 = a3;
  v11 = sub_100BDAB58(a1, a2, v10, a6);
  swift_unknownObjectRelease();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_unknownObjectRetain();
    sub_100BC8018(v11, v13, a1, 256);
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = objc_opt_self();
    v14 = [v37 _atomicIncrementAssertCount];
    v38 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v38);
    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v14;
    v23 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v23;
    v24 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v24;
    *(inited + 72) = v15;
    *(inited + 136) = &type metadata for String;
    v25 = sub_1000053B0();
    *(inited + 112) = v18;
    *(inited + 120) = v20;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v25;
    *(inited + 152) = 225;
    v26 = v38;
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v26;
    v27 = v15;
    v28 = v26;
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v30, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v31 = swift_allocObject();
    v31[2] = 8;
    v31[3] = 0;
    v31[4] = 0;
    v31[5] = 0;
    v32 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    [v37 handleFailureInFunction:v33 file:v34 lineNumber:225 isFatal:0 format:v35 args:v32];
  }

  return v11;
}

uint64_t sub_100BC99C0(Swift::UInt a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for CRLUIPropertyNotifier.CustomFilter();
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C76C(a2, v8, type metadata accessor for CRLUIPropertyNotifier.CustomFilter);
  sub_1005B981C(&qword_101A147E8);
  swift_allocObject();
  swift_unknownObjectRetain();
  v9 = a3;
  v10 = sub_100BDAC30(a1, v8);
  swift_unknownObjectRelease();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_unknownObjectRetain();
    sub_100BC8018(v10, v12, a1, 256);
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = objc_opt_self();
    v13 = [v36 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v22;
    v23 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 225;
    v25 = v37;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v32 file:v33 lineNumber:225 isFatal:0 format:v12 args:v31];
  }

  return v10;
}

uint64_t sub_100BC9E94(Swift::UInt a1)
{
  sub_1005B981C(&qword_101A147C8);
  swift_allocObject();
  v2 = sub_100BDADA8(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_unknownObjectRetain();
    sub_100BC8018(v2, v4, a1, 256);
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = objc_opt_self();
    v5 = [v28 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
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
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 225;
    v17 = v29;
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

    [v28 handleFailureInFunction:v24 file:v25 lineNumber:225 isFatal:0 format:v26 args:v23];
  }

  return v2;
}

uint64_t sub_100BCA2DC(Swift::UInt a1, uint64_t a2, void *a3)
{
  type metadata accessor for CRLUIPropertyNotifier.ChangeSubscriber();
  swift_allocObject();
  swift_unknownObjectRetain();
  v5 = a3;
  v6 = sub_100BDA9D4(a1);
  swift_unknownObjectRelease();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_unknownObjectRetain();
    sub_100BC8018(v6, v8, a1, 256);
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = objc_opt_self();
    v9 = [v32 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v9;
    v18 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v18;
    v19 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 225;
    v21 = v33;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v28 file:v29 lineNumber:225 isFatal:0 format:v30 args:v27];
  }

  return v6;
}

void sub_100BCA748()
{
  v1 = ObjectIdentifier.hashValue.getter();
  swift_beginAccess();
  if (*(v0[3] + 16) && (sub_1007C7EC0(v1), (v2 & 1) != 0))
  {
    swift_beginAccess();
    sub_100BC3A8C(0, 0, 0, v1);
    v3 = swift_endAccess();
    if (!*(v0[3] + 16))
    {
      (*(*v0 + 184))(v3);
    }
  }

  else
  {
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
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
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 340;
    v17 = v27;
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
    sub_100005404(v12, &_mh_execute_header, v21, "Unknown subscriber.", 19, 2, _swiftEmptyArrayStorage);

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

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:340 isFatal:0 format:v26 args:v23];
  }
}

uint64_t sub_100BCABAC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v11 = *&Strong[OBJC_IVAR____TtC8Freeform21CRLUIPropertyNotifier_propertyStateUpdateCount], Strong, v11))
  {
    sub_100006370(0, &qword_1019F2D90);
    v12 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100BDB9A4;
    aBlock[5] = v1;
    v18 = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_101899878;
    v13 = _Block_copy(aBlock);
    v17 = v6;
    v14 = v13;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100BDAEF0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v17);
  }

  else
  {

    return sub_100BCAEDC(v1);
  }
}

uint64_t sub_100BCAEDC(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1005B981C(&qword_101A14670);
        Binding.wrappedValue.getter();
        Binding.wrappedValue.setter();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

void sub_100BCB050()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (*(*v0 + 192))();
    swift_beginAccess();
    sub_100BC39B4(0, v3, sub_100A9E59C, sub_100AA85EC);
    swift_endAccess();
  }
}

uint64_t sub_100BCB114()
{
  if (*(v0 + 40) != 1)
  {
    return *(v0 + 32);
  }

  result = ObjectIdentifier.hashValue.getter();
  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

uint64_t sub_100BCB150()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100BCB1D4(void *a1)
{
  v3 = v1 + 48;
  swift_beginAccess();
  v4 = type metadata accessor for CRLUIPropertyNotifier.PublisherSubscriber.Status();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v8, v3, v4);
  v6 = v9;
  (*(v5 + 8))(v8, v4);
  if (v6)
  {
    sub_100020E58(a1, a1[3]);
    return dispatch thunk of Cancellable.cancel()();
  }

  else
  {
    sub_10000630C(a1, v8);
    swift_beginAccess();
    (*(v5 + 40))(v3, v8, v4);
    swift_endAccess();
    sub_100020E58(a1, a1[3]);
    static Subscribers.Demand.unlimited.getter();
    return dispatch thunk of Subscription.request(_:)();
  }
}

uint64_t sub_100BCB368()
{
  sub_100BCABAC();

  return static Subscribers.Demand.none.getter();
}

void sub_100BCB390()
{
  swift_beginAccess();
  v1 = type metadata accessor for CRLUIPropertyNotifier.PublisherSubscriber.Status();
  v2 = *(v1 - 8);
  (*(v2 + 16))(&v6, v0 + 48, v1);
  if (v7 > 1)
  {
    sub_100050F74(&v6, v8);
    sub_100020E58(v8, v9);
    dispatch thunk of Cancellable.cancel()();
    sub_100005070(v8);
  }

  else
  {
    (*(v2 + 8))(&v6, v1);
  }

  memset(v8, 0, sizeof(v8));
  v9 = xmmword_101482150;
  swift_beginAccess();
  (*(v2 + 40))(v0 + 48, v8, v1);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*(*v0 + 192))();
    swift_beginAccess();
    sub_100BC39B4(0, v5, sub_100A9E59C, sub_100AA85EC);
    swift_endAccess();
  }
}

uint64_t sub_100BCB5BC()
{
  v1 = type metadata accessor for CRLUIPropertyNotifier.PublisherSubscriber.Status();
  v2 = *(*(v1 - 8) + 8);

  return v2(v0 + 48, v1);
}

uint64_t sub_100BCB660()
{
  swift_unknownObjectWeakDestroy();

  v1 = type metadata accessor for CRLUIPropertyNotifier.PublisherSubscriber.Status();
  (*(*(v1 - 8) + 8))(v0 + 48, v1);
  return v0;
}

uint64_t sub_100BCB708()
{
  sub_100BCB660();

  return swift_deallocClassInstance();
}

uint64_t *sub_100BCB840()
{
  v1 = *v0;
  swift_unknownObjectWeakDestroy();

  sub_10000CAAC((v0 + 6), &qword_101A14668);
  (*(*(*(v1 + 296) - 8) + 8))(v0 + *(*v0 + 312));
  return v0;
}

uint64_t sub_100BCB8E0()
{
  sub_100BCB840();

  return swift_deallocClassInstance();
}

uint64_t sub_100BCB93C()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100BCA748();
  }

  return result;
}

Swift::Int sub_100BCBA6C()
{
  result = sub_1005C1D4C(&off_101876550);
  static CRLUIPropertyNotifier.KindFilter.invalidation = result;
  return result;
}

uint64_t *CRLUIPropertyNotifier.KindFilter.invalidation.unsafeMutableAddressor()
{
  if (qword_1019F1E30 != -1)
  {
    swift_once();
  }

  return &static CRLUIPropertyNotifier.KindFilter.invalidation;
}

uint64_t static CRLUIPropertyNotifier.KindFilter.invalidation.getter()
{
  if (qword_1019F1E30 != -1)
  {
    swift_once();
  }
}

unint64_t CRLUIPropertyNotifier.KindFilter.description.getter(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    _StringGuts.grow(_:)(19);

    v6 = 0xD000000000000010;
    type metadata accessor for CRLChangeKind(0);
    sub_100BDAEF0(&qword_101A14110, type metadata accessor for CRLChangeKind);
    v4._countAndFlagsBits = Set.description.getter();
    String.append(_:)(v4);

    goto LABEL_5;
  }

  v6 = 0;
  _StringGuts.grow(_:)(19);
  v2._object = 0x800000010158EE30;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  result = sub_100BC1734(a1);
  if ((result & 0x100000000) == 0)
  {
    type metadata accessor for CRLChangeKind(0);
    _print_unlocked<A, B>(_:_:)();
LABEL_5:
    v5._countAndFlagsBits = 41;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    return v6;
  }

  __break(1u);
  return result;
}

BOOL CRLUIPropertyNotifier.PropertyFilter.accepts(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  v4 = sub_100BD2800(v3, a2);

  v5 = *(v4 + 16);

  return v5 != 0;
}

uint64_t CRLUIPropertyNotifier.PropertyFilter.description.getter(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    _StringGuts.grow(_:)(20);

    v8 = 40;
    type metadata accessor for CRLChangeProperty(0);
    sub_100BDAEF0(&qword_101A14118, type metadata accessor for CRLChangeProperty);
    v7._countAndFlagsBits = Set.description.getter();
    String.append(_:)(v7);

    v5 = 0x800000010158EE50;
    v6 = 0x1000000000000011;
    goto LABEL_5;
  }

  v8 = 0;
  _StringGuts.grow(_:)(19);
  v2._countAndFlagsBits = 40;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  result = sub_100BC16B8(a1);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for CRLChangeProperty(0);
    _print_unlocked<A, B>(_:_:)();
    v5 = 0x800000010158EE70;
    v6 = 0xD000000000000010;
LABEL_5:
    String.append(_:)(*&v6);
    return v8;
  }

  __break(1u);
  return result;
}

Swift::Int sub_100BCBF68(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a2(v5, a1);
  return Hasher._finalize()();
}

BOOL sub_100BCBFB8()
{
  v1 = *v0;
  swift_beginAccess();

  v3 = sub_100BD2800(v2, v1);

  v4 = *(v3 + 16);

  return v4 != 0;
}

Swift::Int sub_100BCC06C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v7, v5);
  return Hasher._finalize()();
}

Swift::Int sub_100BCC0DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t CRLUIPropertyNotifier.CustomFilter.filter.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static CRLUIPropertyNotifier.CustomFilter.== infix(_:_:)()
{
  type metadata accessor for CRLUIPropertyNotifier.CustomFilter();

  return static UUID.== infix(_:_:)();
}

uint64_t CRLUIPropertyNotifier.CustomFilter.hash(into:)()
{
  type metadata accessor for CRLUIPropertyNotifier.CustomFilter();
  type metadata accessor for UUID();
  sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

unint64_t CRLUIPropertyNotifier.CustomFilter.description.getter()
{
  _StringGuts.grow(_:)(27);

  type metadata accessor for CRLUIPropertyNotifier.CustomFilter();
  type metadata accessor for UUID();
  sub_100BDAEF0(&qword_101A02180, &type metadata accessor for UUID);
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 10558;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  return 0xD000000000000017;
}

Swift::Int CRLUIPropertyNotifier.CustomFilter.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for CRLUIPropertyNotifier.CustomFilter();
  type metadata accessor for UUID();
  sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100BCC3F4()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100BCC490()
{
  type metadata accessor for UUID();
  sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100BCC510()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AnyCancellable.init(_:)(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  return dispatch thunk of AnyCancellable.__allocating_init(_:)();
}

uint64_t sub_100BCC61C(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 16);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    swift_beginAccess();
    *(a1 + 16) = _swiftEmptyArrayStorage;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      AnyCancellable.cancel()();
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t AnyCancellable.init(_:_:)(uint64_t a1, unint64_t a2)
{
  sub_1005B981C(&unk_1019F4D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101465920;
  *(v4 + 32) = a1;
  v7 = v4;

  sub_10079BCFC(a2);
  *(swift_allocObject() + 16) = v7;

  v5 = dispatch thunk of AnyCancellable.__allocating_init(_:)();

  return v5;
}

void sub_100BCC808(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = __CocoaSet.contains(_:)();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_100BCC908(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
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
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
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
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
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

uint64_t sub_100BCCC28(int64_t a1, uint64_t a2)
{
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  result = __chkstk_darwin(v37);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = _HashTable.previousHole(before:)();
    v32 = (v4 + 8);
    v33 = (v11 + 1) & v10;
    v34 = a2;
    v35 = a2 + 64;
    do
    {
      v12 = *(*(a2 + 48) + 8 * v9);
      Hasher.init(_seed:)();
      v13 = *(v12 + 24);
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 32);

      v16 = a1;
      v17 = v36;
      v15(ObjectType, v13);
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      v18 = v37;
      dispatch thunk of Hashable.hash(into:)();
      v19 = v17;
      a1 = v16;
      (*v32)(v19, v18);
      v20 = Hasher._finalize()();

      v21 = v20 & v10;
      if (v16 >= v33)
      {
        if (v21 < v33)
        {
          a2 = v34;
          v7 = v35;
        }

        else
        {
          a2 = v34;
          v7 = v35;
          if (a1 >= v21)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        a2 = v34;
        v7 = v35;
        if (v21 >= v33 || a1 >= v21)
        {
LABEL_11:
          v22 = *(a2 + 48);
          v23 = (v22 + 8 * a1);
          v24 = (v22 + 8 * v9);
          if (a1 != v9 || v23 >= v24 + 1)
          {
            *v23 = *v24;
          }

          v25 = *(a2 + 56);
          v26 = (v25 + 16 * a1);
          v27 = (v25 + 16 * v9);
          if (a1 != v9 || v26 >= v27 + 1)
          {
            *v26 = *v27;
            a1 = v9;
          }
        }
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100BCCF10(Swift::Int result, uint64_t a2)
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
        v15 = (v14 + 32 * v3);
        v16 = (v14 + 32 * v6);
        if (v3 != v6 || v15 >= v16 + 2)
        {
          v9 = v16[1];
          *v15 = *v16;
          v15[1] = v9;
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

Swift::Int sub_100BCD214(Swift::Int result, uint64_t a2)
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
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
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
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
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

unint64_t sub_100BCD3A8(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_1005B981C(&qword_1019FBED8) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

  return result;
}

uint64_t sub_100BCD6FC(uint64_t result, uint64_t a2)
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

void sub_100BCD86C(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v31 = (v12 + 1) & v11;
    v32 = a2 + 64;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = *(v14 + 56);
    v29 = (v14 - 8);
    v30 = v15;
    do
    {
      v17 = v16 * v10;
      v18 = v13;
      v19 = v14;
      v30(v7, *(a2 + 48) + v16 * v10, v4);
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v29)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v31)
      {
        if (v21 >= v31 && a1 >= v21)
        {
LABEL_15:
          v24 = v16 * a1;
          if (v16 * a1 < v17 || *(a2 + 48) + v16 * a1 >= (*(a2 + 48) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v24 != v17)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v24 < v17 || *(a2 + 56) + v24 >= (*(a2 + 56) + v17 + v16))
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v14 = v19;
            v13 = v18;
          }

          else
          {
            a1 = v10;
            v25 = v24 == v17;
            v14 = v19;
            v13 = v18;
            if (!v25)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v31 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v8 = v32;
    }

    while (((*(v32 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

unint64_t sub_100BCDB84(unint64_t result, uint64_t a2)
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
      v9 = *(*(a2 + 48) + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1005B981C(&qword_1019F6700) - 8) + 72);
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

void sub_100BCDD6C(int64_t a1, uint64_t a2)
{
  v39 = type metadata accessor for UUID();
  v4 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v40 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v39;
    v5 = v40;
    v13 = v10;
    v37 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v35 = a2 + 64;
    v36 = v15;
    v16 = *(v14 + 56);
    v34 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v38;
      v20 = v13;
      v21 = v14;
      v36(v38, *(v5 + 48) + v16 * v9, v12);
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v34)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v37)
      {
        if (v23 >= v37 && a1 >= v23)
        {
LABEL_15:
          v5 = v40;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v40 + 48) + v17 * a1 >= (*(v40 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v40;
            v16 = v17;
            v13 = v20;
            v7 = v35;
          }

          else
          {
            v7 = v35;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v40;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 32 * a1);
          v28 = (v26 + 32 * v9);
          if (a1 != v9 || v27 >= v28 + 2)
          {
            v29 = v28[1];
            *v27 = *v28;
            v27[1] = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v37 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v35;
      v16 = v17;
      v5 = v40;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(v5 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v32;
    ++*(v5 + 36);
  }
}

void sub_100BCE08C(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v38 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = *(v14 + 56);
    v36 = (v14 - 8);
    v37 = v15;
    do
    {
      v16 = v8;
      v17 = v39 * v10;
      v18 = v13;
      v19 = v14;
      v37(v7, *(a2 + 48) + v39 * v10, v4);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v38)
      {
        if (v21 >= v38 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v39 * a1;
          v26 = v24 + v17 + v39;
          v27 = v39 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v39 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v10);
          if (a1 != v10 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v38 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
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

void sub_100BCE388(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v30 = v2;
    v31 = v4;
    do
    {
      v9 = (*(v2 + 48) + 40 * v6);
      v10 = *v9;
      v11 = v9[1];
      v12 = v7;
      v14 = v9[2];
      v13 = v9[3];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v14);
      v15 = v13;
      v7 = v12;
      v16 = v15;
      NSObject.hash(into:)();
      Selector.hash(into:)();
      v17 = Hasher._finalize()();

      v18 = v17 & v12;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          v2 = v30;
          v4 = v31;
        }

        else
        {
          v2 = v30;
          v4 = v31;
          if (v3 >= v18)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v2 = v30;
        v4 = v31;
        if (v18 >= v8 || v3 >= v18)
        {
LABEL_11:
          v19 = *(v2 + 48);
          v20 = v19 + 40 * v3;
          v21 = (v19 + 40 * v6);
          if (v3 != v6 || v20 >= v21 + 40)
          {
            v22 = *v21;
            v23 = v21[1];
            *(v20 + 32) = *(v21 + 4);
            *v20 = v22;
            *(v20 + 16) = v23;
          }

          v24 = *(v2 + 56);
          v25 = (v24 + 8 * v3);
          v26 = (v24 + 8 * v6);
          if (v3 != v6 || v25 >= v26 + 1)
          {
            *v25 = *v26;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }
}

void sub_100BCE5A0(int64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for CRLBoardIdentifier(0);
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (_HashTable.previousHole(before:)() + 1) & ~v8;
    v12 = *(v4 + 72);
    v26 = a2 + 64;
    do
    {
      v13 = v12;
      v14 = v12 * v9;
      sub_10000C76C(*(a2 + 48) + v12 * v9, v6, type metadata accessor for CRLBoardIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v15 = Hasher._finalize()();
      sub_100BDB9AC(v6, type metadata accessor for CRLBoardIdentifier);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v7 = v26;
          v12 = v13;
          goto LABEL_4;
        }

        v12 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v13;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v26;
          }

          else
          {
            v17 = v12 * a1 == v14;
            v7 = v26;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * a1);
          v20 = (v18 + 8 * v9);
          if (a1 != v9 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v26;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

void sub_100BCE8CC(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

unint64_t sub_100BCEBEC(unint64_t result, uint64_t a2)
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
      v15 = *(*(sub_1005B981C(&qword_1019F6990) - 8) + 72);
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

void sub_100BCEDF0(int64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for UUID();
  v4 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v9 - 8);
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v11 - 8);
  v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v53 - v14;
  v16 = type metadata accessor for CRLPreviewImages.Item(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v66 = &v53 - v21;
  v22 = a2 + 64;
  v23 = -1 << *(a2 + 32);
  v24 = (a1 + 1) & ~v23;
  if ((*(a2 + 64 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
  {
    v65 = v4;
    v25 = ~v23;
    v63 = (_HashTable.previousHole(before:)() + 1) & ~v23;
    v64 = v25;
    v26 = *(v17 + 72);
    v55 = (v65 + 8);
    v56 = (v65 + 32);
    v59 = v19;
    v57 = a2 + 64;
    v62 = v26;
    while (1)
    {
      v27 = *(a2 + 48);
      v65 = v26 * v24;
      v28 = v66;
      sub_10000C76C(v27 + v26 * v24, v66, type metadata accessor for CRLPreviewImages.Item);
      Hasher.init(_seed:)();
      sub_10000C76C(v28, v19, type metadata accessor for CRLPreviewImages.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_100BDBA0C(v19, v8, type metadata accessor for CRLBoardIdentifier);
        sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for CRLBoardIdentifierStorage(0);
        String.hash(into:)();
      }

      else
      {
        v35 = *(sub_1005B981C(&unk_1019FB780) + 48);
        sub_100BDBA0C(v19, v8, type metadata accessor for CRLBoardIdentifier);
        v36 = v16;
        v37 = v15;
        v38 = a2;
        v39 = v8;
        v40 = v58;
        v41 = v61;
        (*v56)(v58, &v19[v35], v61);
        sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for CRLBoardIdentifierStorage(0);
        String.hash(into:)();
        v19 = v59;
        dispatch thunk of Hashable.hash(into:)();
        v42 = v40;
        v8 = v39;
        a2 = v38;
        v15 = v37;
        v16 = v36;
        v22 = v57;
        (*v55)(v42, v41);
      }

      sub_100BDB9AC(v8, type metadata accessor for CRLBoardIdentifier);
      v33 = v64;
LABEL_21:
      v45 = Hasher._finalize()();
      sub_100BDB9AC(v66, type metadata accessor for CRLPreviewImages.Item);
      v46 = v45 & v33;
      if (a1 >= v63)
      {
        v26 = v62;
        if (v46 < v63)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v26 = v62;
        if (v46 >= v63)
        {
          goto LABEL_26;
        }
      }

      if (a1 >= v46)
      {
LABEL_26:
        if (v26 * a1 < v65 || *(a2 + 48) + v26 * a1 >= (*(a2 + 48) + v65 + v26))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v26 * a1 != v65)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v47 = *(a2 + 56);
        v48 = (v47 + 8 * a1);
        v49 = (v47 + 8 * v24);
        if (a1 != v24 || v48 >= v49 + 1)
        {
          *v48 = *v49;
          a1 = v24;
        }
      }

LABEL_4:
      v24 = (v24 + 1) & v33;
      if (((*(v22 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    sub_100BDBA0C(v19, v15, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v30 = v60;
    sub_10000C76C(v15, v60, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v31 = sub_1005B981C(&qword_1019F3480);
    v32 = (*(*(v31 - 8) + 48))(v30, 5, v31);
    if (v32 > 2)
    {
      v33 = v64;
      if (v32 == 3)
      {
        v34 = 2;
      }

      else if (v32 == 4)
      {
        v34 = 3;
      }

      else
      {
        v34 = 4;
      }
    }

    else
    {
      v33 = v64;
      if (!v32)
      {
        v43 = v54;
        sub_100BDBA0C(v60, v54, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        Hasher._combine(_:)(5uLL);
        sub_100F8ED58();
        v44 = v43;
        v19 = v59;
        sub_100BDB9AC(v44, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_20:
        sub_100BDB9AC(v15, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        goto LABEL_21;
      }

      v34 = v32 != 1;
    }

    Hasher._combine(_:)(v34);
    goto LABEL_20;
  }

LABEL_34:
  *(v22 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v50 = *(a2 + 16);
  v51 = __OFSUB__(v50, 1);
  v52 = v50 - 1;
  if (v51)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v52;
    ++*(a2 + 36);
  }
}

uint64_t sub_100BCF59C(uint64_t result, uint64_t a2)
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

      if (v3 < v6 || *(a2 + 56) + 8 * v3 >= *(a2 + 56) + 8 * v6 + 8)
      {
        sub_1005B981C(&qword_1019FBEF0);
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        sub_1005B981C(&qword_1019FBEF0);
        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100BCF760(unint64_t result, uint64_t a2)
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
      Hasher._combine(_:)(0);
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
      v14 = *(*(type metadata accessor for Date() - 8) + 72);
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

uint64_t sub_100BCF924(uint64_t result, uint64_t a2)
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

uint64_t sub_100BCFAD4(uint64_t result, uint64_t a2)
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
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = v16 + 24 * v3;
          v18 = (v16 + 24 * v6);
          if (v3 != v6 || v17 >= v18 + 24)
          {
            v9 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

void sub_100BCFC50(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v41 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v40;
    v5 = v41;
    v13 = v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v37 = (v11 + 1) & v10;
    v38 = v15;
    v16 = *(v14 + 56);
    v35 = (v14 - 8);
    v36 = a2 + 64;
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v39;
      v20 = v13;
      v21 = v14;
      v38(v39, *(v5 + 48) + v16 * v9, v12);
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v35)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v37)
      {
        if (v23 >= v37 && a1 >= v23)
        {
LABEL_15:
          v5 = v41;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v41;
            v16 = v17;
            v13 = v20;
            v7 = v36;
          }

          else
          {
            v7 = v36;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v41;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 48 * a1);
          v28 = (v26 + 48 * v9);
          if (a1 != v9 || v27 >= v28 + 3)
          {
            v29 = *v28;
            v30 = v28[2];
            v27[1] = v28[1];
            v27[2] = v30;
            *v27 = v29;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v37 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v36;
      v16 = v17;
      v5 = v41;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v5 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v33;
    ++*(v5 + 36);
  }
}

void sub_100BCFF74(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

void sub_100BD0100(int64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v42 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v41;
    v5 = v42;
    v13 = v10;
    v39 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v37 = a2 + 64;
    v38 = v15;
    v16 = *(v14 + 56);
    v36 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v40;
      v20 = v13;
      v21 = v14;
      v38(v40, *(v5 + 48) + v16 * v9, v12);
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v36)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v39)
      {
        if (v23 >= v39 && a1 >= v23)
        {
LABEL_15:
          v5 = v42;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v42 + 48) + v17 * a1 >= (*(v42 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v42;
            v16 = v17;
            v13 = v20;
            v7 = v37;
          }

          else
          {
            v7 = v37;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v42;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + (a1 << 6));
          v28 = (v26 + (v9 << 6));
          if (a1 != v9 || v27 >= v28 + 4)
          {
            v29 = *v28;
            v30 = v28[1];
            v31 = v28[3];
            v27[2] = v28[2];
            v27[3] = v31;
            *v27 = v29;
            v27[1] = v30;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v39 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v37;
      v16 = v17;
      v5 = v42;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v5 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v34;
    ++*(v5 + 36);
  }
}

void sub_100BD0428(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = _HashTable.previousHole(before:)();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + a1);
          v28 = (v26 + v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

void sub_100BD0748(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for CRLZoneSyncResultScenarios() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

unint64_t sub_100BD0940(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v29 = a3;
  v27 = type metadata accessor for CRLBoardIdentifier(0);
  v5 = *(v27 - 8);
  result = __chkstk_darwin(v27);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v30 = (_HashTable.previousHole(before:)() + 1) & ~v10;
    v13 = *(v5 + 72);
    v28 = v12;
    do
    {
      v14 = v13 * v11;
      sub_10000C76C(*(a2 + 48) + v13 * v11, v8, type metadata accessor for CRLBoardIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v15 = Hasher._finalize()();
      result = sub_100BDB9AC(v8, type metadata accessor for CRLBoardIdentifier);
      v16 = v15 & v12;
      if (a1 >= v30)
      {
        if (v16 >= v30 && a1 >= v16)
        {
LABEL_11:
          if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 * a1 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17 = *(a2 + 56);
          v18 = *(*(v29(0) - 8) + 72);
          v19 = v18 * a1;
          result = v17 + v18 * a1;
          v20 = v18 * v11;
          v21 = v17 + v18 * v11 + v18;
          if (v19 < v20 || result >= v21)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v12 = v28;
          }

          else
          {
            a1 = v11;
            v12 = v28;
            if (v19 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v11;
            }
          }
        }
      }

      else if (v16 >= v30 || a1 >= v16)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

void sub_100BD0C98(int64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (_HashTable.previousHole(before:)() + 1) & ~v8;
    v12 = *(v4 + 72);
    v26 = a2 + 64;
    do
    {
      v13 = v12;
      v14 = v12 * v9;
      sub_10000C76C(*(a2 + 48) + v12 * v9, v6, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_100BDAEF0(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v15 = Hasher._finalize()();
      sub_100BDB9AC(v6, type metadata accessor for CRLGloballyScopedBoardIdentifier);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v7 = v26;
          v12 = v13;
          goto LABEL_4;
        }

        v12 = v13;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v12 = v13;
        if (v16 >= v11 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v14 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v14 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v26;
          }

          else
          {
            v17 = v12 * a1 == v14;
            v7 = v26;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = (v18 + a1);
          v20 = (v18 + v9);
          if (a1 != v9 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v26;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}