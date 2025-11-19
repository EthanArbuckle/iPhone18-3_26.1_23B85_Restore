void sub_100A29E08(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = sub_1012778D4(ObjectType, v5);

    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (a1)
  {
    type metadata accessor for CRLBoardItem(0);
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectWeakAssign();
LABEL_7:

      swift_unknownObjectRelease();
      return;
    }

    v7 = objc_opt_self();
    swift_unknownObjectRetain();
    v30 = v7;
    v8 = [v7 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31);
    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v10 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v8;
    v17 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v17;
    v18 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v18;
    *(inited + 72) = v9;
    *(inited + 136) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 112) = v12;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v19;
    *(inited + 152) = 841;
    v20 = v31;
    *(inited + 216) = v17;
    *(inited + 224) = v18;
    *(inited + 192) = v20;
    v21 = v9;
    v22 = v20;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v25 = swift_allocObject();
    v25[2] = 8;
    v25[3] = 0;
    v25[4] = 0;
    v25[5] = 0;
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v27 file:v28 lineNumber:841 isFatal:0 format:v29 args:v26];
    swift_unknownObjectRelease_n();
  }

  else
  {

    swift_unknownObjectWeakAssign();
  }
}

void sub_100A2A488()
{
  v1 = type metadata accessor for CharacterSet();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v34 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v33 = v0;
  v15 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v15)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  (*(*v15 + 896))(v11);
  v30 = v7;
  sub_100A49D68(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
  v29 = *(v4 + 16);
  v29(v6, v13, v3);
  sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
  v16 = CRAttributedString.attributedString.getter();
  v17 = *(v4 + 8);
  v17(v6, v3);
  v18 = [v16 length];

  if (v18 >= 1)
  {
    v19 = v34;
    v20 = static CharacterSet.whitespacesAndNewlines.getter();
    v21 = *(v33 + v14);
    if (v21)
    {
      (*(*v21 + 896))(v20);
      sub_100A49D68(&v9[*(v30 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
      v29(v6, v13, v3);
      sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
      v22 = CRAttributedString.attributedString.getter();
      v17(v6, v3);
      v23 = [v22 string];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      __chkstk_darwin(v27);
      *(&v28 - 2) = v19;
      sub_10097EFE8(sub_100A49F4C, (&v28 - 4), v24, v26);

      (*(v31 + 8))(v19, v32);
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_100A2A960()
{
  v1 = sub_1005B981C(&unk_101A09540);
  *&v259 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v234 - v2;
  v4 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v4 - 8);
  v255 = &v234 - v5;
  *&v257 = sub_1005B981C(&unk_101A09550);
  v239 = *(v257 - 8);
  __chkstk_darwin(v257);
  v256 = (&v234 - v6);
  v7 = sub_1005B981C(qword_101A0CF60);
  *&v260 = *(v7 - 8);
  __chkstk_darwin(v7);
  v237 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v234 - v10;
  v252 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v252);
  v13 = &v234 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v236);
  v251 = &v234 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_1005B981C(&unk_1019FFD10);
  v15 = *(v245 - 8);
  __chkstk_darwin(v245);
  v248 = &v234 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v244 = &v234 - v19;
  v264 = _swiftEmptyArrayStorage;
  if ((v0[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns] & 1) == 0)
  {
    sub_100A2CB04();
  }

  v247 = v7;
  v20 = *&v0[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns];
  v263 = _swiftEmptyArrayStorage;
  v21 = v0;
  v249 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v22 = *&v0[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v22)
  {
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  (*(*v22 + 896))(v18);
  v22 = v251;
  sub_100A49D68(&v13[*(v252 + 20)], v251, type metadata accessor for CRLWPStorageCRDTData);
  v258 = v20;

  sub_100A47694(v13, type metadata accessor for CRLWPShapeItemCRDTData);
  v23 = v15;
  v24 = *(v15 + 16);
  *&v246 = v15 + 16;
  v243 = v24;
  v24(v244, v22, v245);
  sub_100A47694(v22, type metadata accessor for CRLWPStorageCRDTData);
  v25 = [v21 characterCount];
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_187:
    __break(1u);
LABEL_188:

LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v242 = v13;
  v22 = *&v249[v21];
  if (!v22)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v26 = v25;
  v27 = v21;
  v28 = v242;
  (*(*v22 + 896))();
  v29 = v251;
  sub_100A49D68(v28 + *(v252 + 20), v251, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v28, type metadata accessor for CRLWPShapeItemCRDTData);
  v30 = v248;
  v31 = v245;
  v243(v248, v29, v245);
  sub_100A47694(v29, type metadata accessor for CRLWPStorageCRDTData);
  v32 = CRAttributedString.count.getter();
  v240 = *(v23 + 8);
  v241 = v23 + 8;
  v240(v30, v31);
  v33 = v32 & (v32 >> 63);
  if (v32 >= v26)
  {
    v32 = v26;
  }

  KeyPath = swift_getKeyPath();
  v235 = v27;
  v35 = v27;
  sub_100A1F968(KeyPath, v35, v33, v32, &v263);

  v36 = CRAttributedString.attributedString.getter();
  v37 = [v36 string];

  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  v38 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v37];

  v39 = v35;
  sub_100A24798(v39);
  sub_100A442F0();
  v40 = v260 + 8;
  v41 = *(v260 + 8);
  v41(v11, v247);
  type metadata accessor for Key(0);
  v43 = v42;
  v253 = sub_100A40278(&qword_1019F34A0, 255, type metadata accessor for Key);
  v254 = v43;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v45 = v38;
  v46 = [v45 length];
  v250 = v45;
  [v45 addAttributes:isa range:{0, v46}];

  v238 = v39;
  if ([v39 characterCount] >= 1)
  {
    v252 = v41;
    *&v260 = v40;
    CRAttributedString.runs.getter();
    v47 = v255;
    CRAttributedString.Runs.next()();
    v48 = *(v259 + 48);
    v251 = v259 + 48;
    v249 = v48;
    v49 = (v48)(v47, 1, v1);
    v50 = v247;
    if (v49 != 1)
    {
      v248 = *(v259 + 32);
      *&v259 = v259 + 32;
      v208 = (v259 - 24);
      v246 = xmmword_10146C6B0;
      (v248)(v3, v47, v1);
      while (1)
      {
        CRAttributedString.Runs.Run.attributes.getter();
        sub_100A442F0();
        v210 = v252;
        (v252)(v11, v50);
        v211.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v22 = v3;
        v212 = CRAttributedString.Runs.Run.range.getter();
        if (__OFSUB__(v213, v212))
        {
          goto LABEL_181;
        }

        [v250 addAttributes:v211.super.isa range:{v212, v213 - v212}];

        CRAttributedString.Runs.Run.attributes.getter();
        v214 = sub_100A44E98();
        v210(v11, v50);
        if (v214)
        {
          sub_1005B981C(&qword_101A0DA40);
          inited = swift_initStackObject();
          *(inited + 16) = v246;
          *(inited + 32) = CRAttributedString.Runs.Run.range.getter();
          *(inited + 40) = v216;
          *(inited + 48) = v214;
          v217 = inited;
          v50 = v247;
          sub_100799D28(v217);
        }

        (*v208)(v3, v1);
        v209 = v255;
        CRAttributedString.Runs.next()();
        if ((v249)(v209, 1, v1) == 1)
        {
          break;
        }

        (v248)(v3, v209, v1);
      }
    }

    (*(v239 + 8))(v256, v257);
    v51 = v258;
LABEL_17:
    v22 = &v264;
    sub_100A27A0C();
    v252 = *(v51 + 16);
    if (v252)
    {
      v61 = 0;
      v249 = (v51 + 32);
      v62 = _swiftEmptyDictionarySingleton;
      v255 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v61 >= *(v51 + 16))
        {
          goto LABEL_177;
        }

        v256 = v61;
        v64 = &v249[56 * v61];
        v65 = *(v64 + 1);
        *&v260 = *v64;
        v253 = v65;
        v66 = *(v64 + 3);
        *&v259 = *(v64 + 2);
        v67 = *(v64 + 4);
        v68 = *(v64 + 5);
        v69 = v64[48];
        if (v66 && !v66[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType])
        {
          v94 = (v62 + 8);
          v95 = 1 << *(v62 + 32);
          if (v95 < 64)
          {
            v96 = ~(-1 << v95);
          }

          else
          {
            v96 = -1;
          }

          v22 = v96 & v62[8];
          v97 = (v95 + 63) >> 6;
          v254 = v66;
          v98 = v259;

          v99 = 0;
          if (!v22)
          {
            goto LABEL_53;
          }

          do
          {
LABEL_51:
            while (1)
            {
              v100 = __clz(__rbit64(v22));
              v22 &= v22 - 1;
              v101 = v62[7];
              v102 = (v99 << 9) | (8 * v100);
              v103 = *(*(v101 + v102) + 16);
              if (v103)
              {
                break;
              }

              if (!v22)
              {
                goto LABEL_53;
              }
            }

            v253 = *(v101 + v102);

            v105 = v255;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v247 = v98;
            v248 = v62;
            v251 = v94;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v105 = sub_100B36564(0, *(v105 + 2) + 1, 1, v105);
            }

            v107 = v253 + 5;
            do
            {
              LODWORD(v257) = *(v107 - 8);
              v108 = *v107;
              v259 = *(v107 + 1);
              v260 = v108;
              v109 = v107[4];
              v110 = v105;
              v111 = *(v105 + 2);
              v255 = v110;
              v112 = *(v110 + 3);

              if (v111 >= v112 >> 1)
              {
                v255 = sub_100B36564((v112 > 1), v111 + 1, 1, v255);
              }

              v113 = v255;
              *(v255 + 2) = v111 + 1;
              v114 = &v113[48 * v111];
              v105 = v113;
              v114[32] = v257;
              v115 = v260;
              *(v114 + 56) = v259;
              *(v114 + 40) = v115;
              *(v114 + 9) = v109;
              v107 += 6;
              --v103;
            }

            while (v103);

            v51 = v258;
            v98 = v247;
            v62 = v248;
            v94 = v251;
          }

          while (v22);
LABEL_53:
          while (1)
          {
            v104 = v99 + 1;
            if (__OFADD__(v99, 1))
            {
              break;
            }

            if (v104 >= v97)
            {

              v62 = _swiftEmptyDictionarySingleton;
              v89 = v256;
              goto LABEL_22;
            }

            v22 = *(v94 + 8 * v104);
            ++v99;
            if (v22)
            {
              v99 = v104;
              goto LABEL_51;
            }
          }

LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        if (v62[2] && (v22 = v62, v70 = sub_1007C7EC0(v67), (v71 & 1) != 0))
        {
          v72 = *(v62[7] + 8 * v70);

          v73 = *(v72 + 2);
          if (!v73)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v72 = _swiftEmptyArrayStorage;
          v73 = _swiftEmptyArrayStorage[2];
          if (!v73)
          {
LABEL_29:
            if (!v66)
            {
              goto LABEL_189;
            }

            v74 = v62;
            v75 = OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType;
            goto LABEL_38;
          }
        }

        v76 = &v72[48 * v73];
        v77 = *(v76 + 3);
        if (!v66)
        {
          goto LABEL_188;
        }

        v74 = v62;
        v75 = OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType;
        v78 = v66[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType];
        LODWORD(v257) = *(v76 - 16);
        if (v257 != v78)
        {

LABEL_38:
          LODWORD(v257) = v66[v75];
          v84 = v66;
          v85 = v259;
          goto LABEL_39;
        }

        v79 = *v76;
        v251 = *(v76 - 1);
        v254 = *(v76 + 2);
        v80 = *(v77 + 2);
        if (!v80)
        {

          v116 = v66;
          v117 = v259;
          *&v260 = v79;
          goto LABEL_67;
        }

        v247 = v79;
        v81 = *&v77[8 * v80 + 24];

        v82 = v66;
        v83 = v259;
        if (sub_100A453B4(v81, v256, v258))
        {
          *&v260 = v247;
LABEL_67:
          v89 = v256;
          v90 = v253;
          goto LABEL_68;
        }

        LODWORD(v257) = v82[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType];
LABEL_39:

        if (v69)
        {
          v86 = 1;
        }

        else
        {
          v86 = v68;
        }

        v254 = v86;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_100B36564(0, *(v72 + 2) + 1, 1, v72);
        }

        v88 = *(v72 + 2);
        v87 = *(v72 + 3);
        v77 = _swiftEmptyArrayStorage;
        v89 = v256;
        v90 = v253;
        if (v88 >= v87 >> 1)
        {
          v72 = sub_100B36564((v87 > 1), v88 + 1, 1, v72);
        }

        *(v72 + 2) = v88 + 1;
        v91 = &v72[48 * v88];
        v91[32] = v257;
        v92 = v260;
        *(v91 + 5) = v67;
        *(v91 + 6) = v92;
        v93 = v254;
        *(v91 + 7) = v90;
        *(v91 + 8) = v93;
        *(v91 + 9) = _swiftEmptyArrayStorage;
        v251 = v67;
LABEL_68:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_100B36684(0, *(v77 + 2) + 1, 1, v77);
        }

        v119 = *(v77 + 2);
        v118 = *(v77 + 3);
        v22 = v119 + 1;
        if (v119 >= v118 >> 1)
        {
          v77 = sub_100B36684((v118 > 1), v119 + 1, 1, v77);
        }

        *(v77 + 2) = v22;
        *&v77[8 * v119 + 32] = v89;
        if (v90 < v260)
        {
          goto LABEL_178;
        }

        if (v72)
        {
          if (!*(v72 + 2))
          {
            goto LABEL_182;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v120 = *(v72 + 2);
            if (!v120)
            {
              goto LABEL_183;
            }
          }

          else
          {
            v72 = sub_10113CE08(v72);
            v120 = *(v72 + 2);
            if (!v120)
            {
              goto LABEL_183;
            }
          }

          *(v72 + 2) = v120 - 1;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_100B36564(0, *(v72 + 2) + 1, 1, v72);
          }

          v122 = *(v72 + 2);
          v121 = *(v72 + 3);
          if (v122 >= v121 >> 1)
          {
            v72 = sub_100B36564((v121 > 1), v122 + 1, 1, v72);
          }

          *(v72 + 2) = v122 + 1;
          v123 = &v72[48 * v122];
          v123[32] = v257;
          v124 = v260;
          *(v123 + 5) = v251;
          *(v123 + 6) = v124;
          v125 = v254;
          *(v123 + 7) = v90;
          *(v123 + 8) = v125;
          *(v123 + 9) = v77;

          v126 = swift_isUniquelyReferenced_nonNull_native();
          v262 = v74;
          v22 = v74;
          v127 = sub_1007C7EC0(v67);
          v129 = v74[2];
          v130 = (v128 & 1) == 0;
          v131 = __OFADD__(v129, v130);
          v132 = v129 + v130;
          if (v131)
          {
            goto LABEL_184;
          }

          v133 = v128;
          if (v74[3] >= v132)
          {
            if (v126)
            {
              goto LABEL_90;
            }

            v22 = &v262;
            v142 = v127;
            sub_100AA48F4();
            v127 = v142;
            v139 = v262;
            if (v133)
            {
              goto LABEL_19;
            }

LABEL_91:
            v139[(v127 >> 6) + 8] |= 1 << v127;
            *(v139[6] + 8 * v127) = v67;
            *(v139[7] + 8 * v127) = v72;
            v140 = v139[2];
            v131 = __OFADD__(v140, 1);
            v141 = v140 + 1;
            if (v131)
            {
              goto LABEL_186;
            }

            v62 = v139;
            v139[2] = v141;
          }

          else
          {
            sub_100A8A1CC(v132, v126);
            v22 = v262;
            v127 = sub_1007C7EC0(v67);
            if ((v133 & 1) != (v134 & 1))
            {
              goto LABEL_194;
            }

LABEL_90:
            v139 = v262;
            if ((v133 & 1) == 0)
            {
              goto LABEL_91;
            }

LABEL_19:
            v62 = v139;
            v63 = v139[7];
            v22 = *(v63 + 8 * v127);
            *(v63 + 8 * v127) = v72;
          }

          goto LABEL_21;
        }

        v22 = v74;
        v135 = sub_1007C7EC0(v67);
        if (v136)
        {
          v137 = v135;
          v138 = swift_isUniquelyReferenced_nonNull_native();
          v262 = v74;
          if ((v138 & 1) == 0)
          {
            v22 = &v262;
            sub_100AA48F4();
            v74 = v262;
          }

          v62 = v74;
          sub_100BDBBA0(v137, v74);
        }

        else
        {
          v62 = v74;
        }

LABEL_21:

        v51 = v258;
LABEL_22:
        v61 = v89 + 1;
        if (v61 == v252)
        {
          goto LABEL_101;
        }
      }
    }

    v62 = _swiftEmptyDictionarySingleton;
    v255 = _swiftEmptyArrayStorage;
LABEL_101:
    v143 = v62[2];
    v248 = v62;
    if (v143)
    {
      v22 = (v62 + 8);
      v144 = 1 << *(v62 + 32);
      v145 = -1;
      if (v144 < 64)
      {
        v145 = ~(-1 << v144);
      }

      v146 = v145 & v62[8];
      v147 = (v144 + 63) >> 6;

      v148 = 0;
      if (!v146)
      {
        goto LABEL_107;
      }

      do
      {
LABEL_105:
        while (1)
        {
          v149 = __clz(__rbit64(v146));
          v146 &= v146 - 1;
          v150 = *(*(v248 + 7) + ((v148 << 9) | (8 * v149)));
          v151 = *(v150 + 16);
          if (v151)
          {
            break;
          }

          if (!v146)
          {
            goto LABEL_107;
          }
        }

        v153 = v255;
        v154 = swift_isUniquelyReferenced_nonNull_native();
        v254 = v22;
        if ((v154 & 1) == 0)
        {
          v153 = sub_100B36564(0, *(v153 + 2) + 1, 1, v153);
        }

        v253 = v150;
        v155 = v150 + 40;
        do
        {
          LODWORD(v256) = *(v155 - 8);
          v156 = *v155;
          v257 = *(v155 + 16);
          v259 = v156;
          v157 = *(v155 + 32);
          v158 = v153;
          v159 = *(v153 + 2);
          v160 = *(v153 + 3);
          *&v260 = v159 + 1;

          if (v159 >= v160 >> 1)
          {
            v153 = sub_100B36564((v160 > 1), v260, 1, v158);
          }

          else
          {
            v153 = v158;
          }

          *(v153 + 2) = v260;
          v161 = &v153[48 * v159];
          v161[32] = v256;
          *(v161 + 56) = v257;
          *(v161 + 40) = v259;
          *(v161 + 9) = v157;
          v155 += 48;
          --v151;
        }

        while (v151);
        v255 = v153;

        v51 = v258;
        v22 = v254;
      }

      while (v146);
LABEL_107:
      while (1)
      {
        v152 = v148 + 1;
        if (__OFADD__(v148, 1))
        {
          break;
        }

        if (v152 >= v147)
        {

          goto LABEL_122;
        }

        v146 = *(v22 + 8 * v152);
        ++v148;
        if (v146)
        {
          v148 = v152;
          goto LABEL_105;
        }
      }

LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

LABEL_122:
    v162 = *(v51 + 16);
    *&v260 = _swiftEmptyArrayStorage;
    if (v162)
    {
      v262 = _swiftEmptyArrayStorage;
      v22 = &v262;
      specialized ContiguousArray.reserveCapacity(_:)();
      v163 = 0;
      v164 = (v51 + 56);
      v165 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
      v166 = &selRef_ignoreUrl_;
      v246 = xmmword_10146CA70;
      v247 = v162;
      while (v163 < *(v51 + 16))
      {
        v169 = *(v164 - 1);
        v168 = *v164;
        v170 = objc_allocWithZone(v165[426]);
        *&v259 = v168;
        v171 = v166[165];
        v172 = v169;
        v173 = [v170 v171];
        v22 = *&v172[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment];
        if (v22 >= 5)
        {
          goto LABEL_193;
        }

        v174 = v173;
        [v173 setAlignment:*(&qword_101490B18 + v22)];
        v175 = &v172[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection];
        if (v172[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection + 8])
        {
          v167 = -1;
        }

        else
        {
          v167 = *v175;
          if ((*v175 + 1) >= 3)
          {
            *&v257 = objc_opt_self();
            v176 = [v257 _atomicIncrementAssertCount];
            v261 = [objc_allocWithZone(NSString) v166[165]];
            sub_100604538(_swiftEmptyArrayStorage, &v261);
            StaticString.description.getter();
            v256 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v177 = String._bridgeToObjectiveC()();

            v178 = [v177 lastPathComponent];

            v251 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v249 = v179;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v253 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v180 = swift_initStackObject();
            *(v180 + 16) = v246;
            *(v180 + 56) = &type metadata for Int32;
            *(v180 + 64) = &protocol witness table for Int32;
            *(v180 + 32) = v176;
            v254 = (v180 + 32);
            v181 = sub_100006370(0, &qword_1019F4D30);
            *(v180 + 96) = v181;
            v182 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
            *(v180 + 104) = v182;
            v183 = v256;
            *(v180 + 72) = v256;
            *(v180 + 136) = &type metadata for String;
            v184 = sub_1000053B0();
            v185 = v249;
            *(v180 + 112) = v251;
            *(v180 + 120) = v185;
            *(v180 + 176) = &type metadata for UInt;
            *(v180 + 144) = v184;
            *(v180 + 152) = 39;
            v186 = v261;
            *(v180 + 216) = v181;
            *(v180 + 224) = v182;
            *(v180 + 184) = &protocol witness table for UInt;
            *(v180 + 192) = v186;
            v187 = v183;
            v188 = v186;
            v189 = static os_log_type_t.error.getter();
            v190 = v253;
            sub_100005404(v253, &_mh_execute_header, v189, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v180);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v191 = static os_log_type_t.error.getter();
            sub_100005404(v190, &_mh_execute_header, v191, "Unknown direction.", 18, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v192 = swift_allocObject();
            v192[2] = 8;
            v192[3] = 0;
            v192[4] = 0;
            v192[5] = 0;
            v256 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v193 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v194 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v195 = String._bridgeToObjectiveC()();

            [v257 handleFailureInFunction:v193 file:v194 lineNumber:39 isFatal:0 format:v195 args:v256];

            v167 = -1;
            v162 = v247;
            v165 = &_s5UIKit15UIPointerEffectO5hoveryACSo17UITargetedPreviewC_AC8TintModeOS2btcACmFWC_ptr;
            v166 = &selRef_ignoreUrl_;
          }
        }

        ++v163;
        [v174 setBaseWritingDirection:v167];

        v22 = &v262;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v164 += 7;
        v51 = v258;
        if (v162 == v163)
        {
          *&v260 = v262;
          goto LABEL_134;
        }
      }

      goto LABEL_176;
    }

LABEL_134:
    v196 = sub_100A45570(v51);
    v254 = v196[2];
    if (v254)
    {
      v197 = 0;
      v198 = 0;
      v256 = v196 + 4;
      *&v259 = v260 & 0xC000000000000001;
      v199 = v260 & 0xFFFFFFFFFFFFFF8;
      v253 = v196;
      while (2)
      {
        if (v198 >= v196[2])
        {
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
          goto LABEL_187;
        }

        v200 = v256[v198];
        *&v257 = v198 + 1;

        v22 = sub_100A45894(v201);
        v202 = 0;
        v203 = *(v200 + 16);
        while (v203 != v202)
        {
          if (v202 >= *(v200 + 16))
          {
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          if (v259)
          {
            v205 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v197 & 0x8000000000000000) != 0)
            {
              goto LABEL_171;
            }

            if (v197 >= *(v199 + 16))
            {
              goto LABEL_173;
            }

            v205 = *(v260 + 8 * v197 + 32);
          }

          v206 = v205;
          if (*(v22 + 16))
          {
            sub_1007C7EC0(v202);
            if (v207)
            {
            }
          }

          sub_100006370(0, &unk_101A0D860);
          v204 = Array._bridgeToObjectiveC()().super.isa;

          [v206 setTextLists:v204];

          ++v197;
          ++v202;
          if (v197 == 0x8000000000000000)
          {
            goto LABEL_172;
          }
        }

        v196 = v253;
        v198 = v257;
        if (v257 != v254)
        {
          continue;
        }

        break;
      }

      v51 = v258;
      if (v252)
      {
        goto LABEL_159;
      }
    }

    else
    {

      if (v252)
      {
LABEL_159:
        v22 = 0;
        *&v259 = v260 & 0xC000000000000001;
        v218 = v260 & 0xFFFFFFFFFFFFFF8;
        v219 = (v51 + 56);
        while (v22 < *(v51 + 16))
        {
          v220 = *(v219 - 3);
          v221 = *(v219 - 2);
          v222 = *(v219 - 1);
          v223 = *v219;
          if (v259)
          {
            v228 = v223;
            v229 = v222;
            v226 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            if (__OFSUB__(v221, v220))
            {
              goto LABEL_168;
            }
          }

          else
          {
            if (v22 >= *(v218 + 16))
            {
              goto LABEL_180;
            }

            v224 = *(v260 + 8 * v22 + 32);
            v225 = v223;
            v226 = v224;
            v227 = v222;
            if (__OFSUB__(v221, v220))
            {
LABEL_168:
              __break(1u);
              goto LABEL_169;
            }
          }

          ++v22;
          [v250 addAttribute:NSParagraphStyleAttributeName value:v226 range:v220];

          v219 += 7;
          v51 = v258;
          if (v252 == v22)
          {
            goto LABEL_169;
          }
        }

LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
        goto LABEL_185;
      }
    }

LABEL_169:

    v230 = v250;

    v240(v244, v245);
    v231 = v238;
    v232 = *&v238[OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString];
    *&v238[OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString] = v230;

    *&v231[OBJC_IVAR____TtC8Freeform12CRLWPStorage__characterStyleRuns] = v264;

    *&v231[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hyperlinkRuns] = v263;

    *&v231[OBJC_IVAR____TtC8Freeform12CRLWPStorage__listRuns] = v255;

    v231[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] = 1;
  }

  v22 = *&v249[v235];
  if (v22)
  {
    v52 = v242;
    (*(*v22 + 896))();
    v53 = v251;
    sub_100A49D68(v52 + *(v252 + 20), v251, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v52, type metadata accessor for CRLWPShapeItemCRDTData);
    v54 = v248;
    v55 = v245;
    v243(v248, v53 + *(v236 + 20), v245);
    sub_100A47694(v53, type metadata accessor for CRLWPStorageCRDTData);
    v56 = v237;
    CRAttributedString.attributes(at:effectiveRange:)();
    v240(v54, v55);
    sub_100A442F0();
    v57 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v250 addAttributes:v57 range:{0, 0}];

    v58 = sub_100A44E98();
    v51 = v258;
    if (v58)
    {
      v59 = v58;
      sub_1005B981C(&qword_101A0DA40);
      v60 = swift_initStackObject();
      *(v60 + 16) = xmmword_10146C6B0;
      *(v60 + 32) = 0;
      *(v60 + 40) = 0;
      *(v60 + 48) = v59;
      sub_100799D28(v60);
    }

    v41(v56, v247);
    goto LABEL_17;
  }

LABEL_192:
  __break(1u);
LABEL_193:
  type metadata accessor for CRLWPParagraphAlignment(0);
  v261 = v22;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
LABEL_194:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100A2C630()
{
  v1 = v0;
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_1019FFD10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  result = swift_allocObject();
  result[2] = _swiftEmptyArrayStorage;
  v13 = (result + 2);
  v14 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = result;
  (*(*v14 + 896))();
  sub_100A49D68(&v4[*(v2 + 20)], v7, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v9 + 16))(v11, v7, v8);
  sub_100A47694(v7, type metadata accessor for CRLWPStorageCRDTData);
  v16 = CRAttributedString.attributedString.getter();
  result = [v16 string];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v17 = result;

  if ([v17 length] >= 1)
  {
    v27 = v1;
    v18 = [v17 crl_range];
    v20 = v19;
    aBlock[4] = sub_100A49EB4;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100A3E944;
    aBlock[3] = &unk_1018924B0;
    v21 = _Block_copy(aBlock);

    [v17 enumerateSubstringsInRange:v18 options:v20 usingBlock:{1, v21}];
    _Block_release(v21);
    result = [v17 length];
    if (__OFSUB__(result, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v22 = sub_10027E2F0([v17 characterAtIndex:result - 1]);
    v1 = v27;
    if (v22)
    {
      sub_1005B981C(&qword_101A0DA98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v24 = [v17 length];
      result = [v17 length];
      if (result >= v24)
      {
        *(inited + 32) = v24;
        *(inited + 40) = result;
        swift_beginAccess();
        sub_100799B44(inited);
        swift_endAccess();
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

LABEL_8:
  swift_beginAccess();
  if (!*(*v13 + 16))
  {
    sub_1005B981C(&qword_101A0DA98);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_10146C6B0;
    *(v25 + 32) = 0;
    *(v25 + 40) = 0;
    swift_beginAccess();
    sub_100799B44(v25);
    swift_endAccess();
  }

  (*(v9 + 8))(v11, v8);
  *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges) = v15[2];

  *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) = 1;
}

void sub_100A2CB04()
{
  v2 = KeyPath;
  v57 = sub_1005B981C(&unk_1019FFD10);
  v3 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v46 - v4;
  v55 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v55);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v6 - 8);
  v53 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = _swiftEmptyArrayStorage;
  if ((*(KeyPath + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) & 1) == 0)
  {
    sub_100A2C630();
  }

  v8 = (*(KeyPath + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges))[2];
  if (!v8)
  {
    v22 = _swiftEmptyArrayStorage;
    if (!_swiftEmptyArrayStorage[2])
    {
      goto LABEL_33;
    }

    goto LABEL_38;
  }

  v52 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v51 = (v3 + 16);
  v50 = (v3 + 8);

  v9 = (v47 + 40);
  v48 = xmmword_10146C6B0;
  v49 = KeyPath;
  while (1)
  {
    v17 = *(v2 + v52);
    if (!v17)
    {
      __break(1u);
      return;
    }

    v19 = *(v9 - 1);
    v18 = *v9;
    v20 = v54;
    (*(*v17 + 896))();
    v21 = v53;
    sub_100A49D68(v20 + *(v55 + 20), v53, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v20, type metadata accessor for CRLWPShapeItemCRDTData);
    KeyPath = v56;
    v1 = v57;
    (*v51)(v56, v21, v57);
    sub_100A47694(v21, type metadata accessor for CRLWPStorageCRDTData);
    v22 = CRAttributedString.count.getter();
    (*v50)(KeyPath, v1);
    if (v22 >= (v19 & ~(v19 >> 63)))
    {
      v23 = (v19 & ~(v19 >> 63));
    }

    else
    {
      v23 = v22;
    }

    v61 = v18;
    v24 = v18 & ~(v18 >> 63);
    if (v22 >= v24)
    {
      v25 = (v18 & ~(v18 >> 63));
    }

    else
    {
      v25 = v22;
    }

    if (v24 < v23)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v60 = v19;
    KeyPath = swift_getKeyPath();
    v26 = v2;
    v22 = sub_100954FAC(KeyPath, v26, v23, v25);
    v1 = v27;

    if (v1)
    {
      if (!*(v22 + 2))
      {
        goto LABEL_40;
      }

      v28 = v22[32];
      sub_1000C1080(v22, 1);
      LOBYTE(v22) = v28;
    }

    v2 = sub_100A3EA04(v26, v23, v25, v22);
    KeyPath = swift_getKeyPath();
    v22 = sub_1009543F8(KeyPath, v26, v23, v25);
    v1 = v29;

    if (v1)
    {
      if (!*(v22 + 2))
      {
        goto LABEL_41;
      }

      v30 = *(v22 + 4);
      sub_1000C1080(v22, 1);
      v22 = v30;
    }

    KeyPath = swift_getKeyPath();
    sub_10095EAFC(KeyPath, v26, v23, v25);
    v1 = v31;
    v33 = v32;

    v58 = v2;
    v59 = v8;
    if (v33)
    {
      if (!*(v1 + 16))
      {
        goto LABEL_42;
      }

      v34 = *(v1 + 32);
      sub_1000C1080(v1, 1);
      v1 = v34;
    }

    KeyPath = sub_100A3E758();
    v2 = swift_getKeyPath();
    v35 = sub_1009569D8(v2, v26, v23, v25);
    v37 = v36;

    if (v37)
    {
      if (!*(v35 + 16))
      {
        goto LABEL_43;
      }

      v38 = *(v35 + 32);
      sub_1000C1080(v35, 1);
      v35 = v38;
    }

    *(KeyPath + OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment) = v35;
    v39 = swift_getKeyPath();
    KeyPath = KeyPath;
    v11 = sub_100955B74(v39, v26, v23, v25);
    v2 = v40;

    v41 = v59;
    if (v2)
    {
      break;
    }

LABEL_6:
    v9 += 2;
    v12 = KeyPath + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_writingDirection;
    *v12 = v11;
    v12[8] = 0;

    sub_1005B981C(&qword_101A0DA48);
    inited = swift_initStackObject();
    *(inited + 16) = v48;
    v14 = v61;
    *(inited + 32) = v60;
    *(inited + 40) = v14;
    v15 = v58;
    *(inited + 48) = KeyPath;
    *(inited + 56) = v15;
    *(inited + 64) = v1;
    *(inited + 72) = v22;
    *(inited + 80) = 0;
    v16 = KeyPath;
    KeyPath = &v62;
    sub_100799C30(inited);

    v8 = v41 - 1;
    v2 = v49;
    if (!v8)
    {
      goto LABEL_30;
    }
  }

  if (*(v11 + 16))
  {
    v10 = *(v11 + 32);
    sub_1000C1080(v11, 1);
    v11 = v10;
    goto LABEL_6;
  }

  __break(1u);
LABEL_30:

  v22 = v62;
  if (*(v62 + 2))
  {
    goto LABEL_38;
  }

LABEL_33:
  v42 = [v2 characterCount];
  if (v42 < 0)
  {
LABEL_44:
    __break(1u);
  }

  else
  {
    v1 = v42;
    KeyPath = sub_100A3E758();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_35;
    }
  }

  v22 = sub_100B36524(0, *(v22 + 2) + 1, 1, v22);
LABEL_35:
  v44 = *(v22 + 2);
  v43 = *(v22 + 3);
  if (v44 >= v43 >> 1)
  {
    v22 = sub_100B36524((v43 > 1), v44 + 1, 1, v22);
  }

  *(v22 + 2) = v44 + 1;
  v45 = &v22[56 * v44];
  *(v45 + 4) = 0;
  *(v45 + 5) = v1;
  *(v45 + 6) = KeyPath;
  *(v45 + 7) = 0;
  *(v45 + 8) = 0;
  *(v45 + 9) = 0;
  v45[80] = 1;
LABEL_38:
  *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns) = v22;

  *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns) = 1;
}

uint64_t sub_100A2D1A0(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t a1))
{
  v4 = v3;
  v77 = a3;
  v82 = sub_1005B981C(&unk_1019FFD10);
  v70 = *(v82 - 8);
  __chkstk_darwin(v82);
  v8 = &v65 - v7;
  v74 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v74);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v78);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v72 = &v65 - v13;
  v14 = sub_1005B981C(&qword_1019FC080);
  v80 = *(v14 - 8);
  v81 = v14;
  __chkstk_darwin(v14);
  v71 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v79 = &v65 - v17;
  v69 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData] = 0;
  v18 = &v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
  sub_1006950BC(v85);
  v19 = v85[13];
  *(v18 + 12) = v85[12];
  *(v18 + 13) = v19;
  *(v18 + 14) = v85[14];
  *(v18 + 30) = v86;
  v20 = v85[9];
  *(v18 + 8) = v85[8];
  *(v18 + 9) = v20;
  v21 = v85[11];
  *(v18 + 10) = v85[10];
  *(v18 + 11) = v21;
  v22 = v85[5];
  *(v18 + 4) = v85[4];
  *(v18 + 5) = v22;
  v23 = v85[7];
  *(v18 + 6) = v85[6];
  *(v18 + 7) = v23;
  v24 = v85[1];
  *v18 = v85[0];
  *(v18 + 1) = v24;
  v25 = v85[3];
  *(v18 + 2) = v85[2];
  *(v18 + 3) = v25;
  v26 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_geometry;
  *&v3[v26] = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{100.0, 100.0}];
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextStyle] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_isSupported] = 1;
  v27 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_layoutClass;
  *&v3[v27] = type metadata accessor for CRLWPLayout();
  v28 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_repClass;
  *&v3[v28] = sub_100006370(0, &unk_101A0D840);
  v29 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_editorClass;
  *&v3[v29] = type metadata accessor for CRLWPEditor();
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges] = 0;
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] = 0;
  v30 = OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString;
  *&v3[v30] = [objc_allocWithZone(NSAttributedString) init];
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__characterStyleRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hyperlinkRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__listRuns] = _swiftEmptyArrayStorage;
  v31 = a1;
  v32 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_store];
  *&v4[OBJC_IVAR____TtC8Freeform12CRLWPStorage_store] = v32;
  v33 = v32;
  sub_100A33D9C(a2, v77);
  v35 = v34;
  v37 = v36;
  result = NSNotFound.getter();
  if (v35 == result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v68 = v11;
  if (__OFADD__(v35, v37))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v77 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v39 = *&v31[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v39)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v40 = *(*v39 + 504);

  v75 = v40(0);

  v76 = v31;
  v41 = *(v77 + v31);
  if (!v41)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v67 = v8;
  v42 = v73;
  (*(*v41 + 896))(result);
  v43 = v74;
  v44 = v72;
  sub_100A49D68(v42 + *(v74 + 20), v72, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v42, type metadata accessor for CRLWPShapeItemCRDTData);
  v45 = v79;
  CRAttributedString.subscript.getter();
  sub_100A47694(v44, type metadata accessor for CRLWPStorageCRDTData);
  (*(v80 + 16))(v71, v45, v81);
  sub_10068D144();
  v46 = v43;
  CRAttributedString.init(_:)();
  v47 = v78;
  CRAttributedString.init(_:)();
  v48 = v75;
  *(v44 + *(v47 + 24)) = _swiftEmptyDictionarySingleton;
  v49 = *(*v48 + 912);
  v71 = (*v48 + 912);
  v66 = v49;
  v50 = v49(v84);
  sub_100824550(v44, v51 + *(v43 + 20));
  v50(v84, 0);
  result = sub_100A47694(v44, type metadata accessor for CRLWPStorageCRDTData);
  v52 = *(v77 + v76);
  if (v52)
  {
    (*(*v52 + 896))(result);
    v53 = *(v43 + 20);
    v65 = type metadata accessor for CRLWPStorageCRDTData;
    sub_100A49D68(v42 + v53, v44, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v42, type metadata accessor for CRLWPShapeItemCRDTData);
    v54 = *(v47 + 20);
    v55 = v70;
    v56 = v67;
    v57 = v82;
    (*(v70 + 16))(v67, v44 + v54, v82);
    v77 = type metadata accessor for CRLWPStorageCRDTData;
    v58 = sub_100A47694(v44, type metadata accessor for CRLWPStorageCRDTData);
    v59 = v75;
    (*(*v75 + 896))(v58);
    v60 = v68;
    sub_100A49D68(v42 + *(v46 + 20), v68, v65);
    sub_100A47694(v42, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v55 + 40))(v60 + *(v78 + 20), v56, v57);
    v61 = v66(v84);
    sub_100824550(v60, v62 + *(v46 + 20));
    v61(v84, 0);
    sub_100A47694(v60, v77);
    *&v4[v69] = v59;

    v63 = type metadata accessor for CRLWPStorage();
    v83.receiver = v4;
    v83.super_class = v63;
    v64 = objc_msgSendSuper2(&v83, "init");

    (*(v80 + 8))(v79, v81);
    return v64;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_100A2DAD0()
{
  v1 = sub_1005B981C(&unk_1019FFD10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v12)
  {
    (*(*v12 + 896))(v9);
    sub_100A49D68(&v7[*(v5 + 20)], v11, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v2 + 16))(v4, v11, v1);
    sub_100A47694(v11, type metadata accessor for CRLWPStorageCRDTData);
    v13 = CRAttributedString.attributedString.getter();
    (*(v2 + 8))(v4, v1);
    v14 = [v13 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_100A2DD54(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

void sub_100A2DDC4()
{
  v32 = sub_1005B981C(&unk_1019FFD10);
  v1 = *(v32 - 8);
  __chkstk_darwin(v32);
  v3 = &v30 - v2;
  v31 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v33 = v0;
  v10 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v10)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v11 = *(*v10 + 464);

  v11(v12);

  v13 = sub_1009B6B8C();
  v15 = v14;
  v16 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_100024CBC((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = &v16[16 * v18];
  *(v19 + 4) = v13;
  *(v19 + 5) = v15;
  v20 = *(v33 + v9);
  if (!v20)
  {
    goto LABEL_12;
  }

  (*(*v20 + 896))();
  sub_100A49D68(&v5[*(v31 + 20)], v8, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v5, type metadata accessor for CRLWPShapeItemCRDTData);
  v21 = v32;
  (*(v1 + 16))(v3, v8, v32);
  sub_100A47694(v8, type metadata accessor for CRLWPStorageCRDTData);
  v22 = CRAttributedString.attributedString.getter();
  (*(v1 + 8))(v3, v21);
  v23 = [v22 string];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (String.count.getter() < 1)
  {
  }

  else
  {
    v28 = *(v16 + 2);
    v27 = *(v16 + 3);
    if (v28 >= v27 >> 1)
    {
      v16 = sub_100024CBC((v27 > 1), v28 + 1, 1, v16);
    }

    *(v16 + 2) = v28 + 1;
    v29 = &v16[16 * v28];
    *(v29 + 4) = v24;
    *(v29 + 5) = v26;
  }

  v34 = v16;
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  BidirectionalCollection<>.joined(separator:)();
}

void sub_100A2E1E0(uint64_t a1, unint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v3 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v27 = v2;
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  (*(*v15 + 896))(v11);
  v26 = v7;
  sub_100A49D68(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
  v16 = *(v4 + 16);
  v16(v6, v13, v3);
  sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
  v17 = CRAttributedString.attributedString.getter();
  v18 = *(v4 + 8);
  v18(v6, v3);
  v25 = [v17 length];

  v19 = *(v27 + v14);
  if (v19)
  {
    (*(*v19 + 896))();
    sub_100A49D68(&v9[*(v26 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    v16(v6, v13, v3);
    sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
    v20 = CRAttributedString.attributedString.getter();
    v18(v6, v3);
    v21 = [v20 length];

    if (v21 >= v25)
    {
      sub_100A2E55C(v25, v21, v23, v24, 1);
      return;
    }

    __break(1u);
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_100A2E55C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v158 = a3;
  v159 = a1;
  v9 = type metadata accessor for CharacterSet();
  v151 = *(v9 - 8);
  __chkstk_darwin(v9);
  v165 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A0DAE0);
  __chkstk_darwin(v11 - 8);
  v175 = &v141 - v12;
  v13 = sub_1005B981C(&unk_101A096C0);
  __chkstk_darwin(v13 - 8);
  v176 = &v141 - v14;
  v177 = sub_1005B981C(qword_101A0CF60);
  v15 = *(v177 - 8);
  __chkstk_darwin(v177);
  v156 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v157 = &v141 - v18;
  __chkstk_darwin(v19);
  v21 = &v141 - v20;
  v178 = sub_1005B981C(&unk_1019FFD10);
  v22 = *(v178 - 8);
  __chkstk_darwin(v178);
  v146 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v141 - v25;
  v172 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v172);
  v169 = &v141 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v147);
  v145 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v179 = &v141 - v30;
  __chkstk_darwin(v31);
  v160 = &v141 - v32;
  v171 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v34 = Strong;
    ObjectType = swift_getObjectType();
    v36 = swift_conformsToProtocol2();
    if (!v36)
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v37 = sub_1012778D4(ObjectType, v36);

    if ((v37 & 1) == 0)
    {
      return;
    }
  }

  v150 = v15;
  v166 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v38 = *&v171[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v38)
  {
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v39 = v169;
  (*(*v38 + 896))();
  v40 = v160;
  sub_100A49D68(v39 + *(v172 + 20), v160, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v39, type metadata accessor for CRLWPShapeItemCRDTData);
  v41 = v22 + 16;
  v42 = v178;
  v153 = *(v22 + 16);
  v153(v26, v40, v178);
  sub_100A47694(v40, type metadata accessor for CRLWPStorageCRDTData);
  v43 = CRAttributedString.count.getter();
  v45 = *(v22 + 8);
  v44 = v22 + 8;
  v154 = v44;
  v152 = v45;
  v45(v26, v42);
  if (v43 >= (v159 & ~(v159 >> 63)))
  {
    v46 = (v159 & ~(v159 >> 63));
  }

  else
  {
    v46 = v43;
  }

  v47 = a2 & ~(a2 >> 63);
  if (v43 >= v47)
  {
    v48 = a2 & ~(a2 >> 63);
  }

  else
  {
    v48 = v43;
  }

  v167 = v48;
  if (v47 < v46)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v49 = String.UTF16View.count.getter();
  if (__OFADD__(v46, v49))
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if (&v46[v49] >= v46)
  {
    v144 = &v46[v49];
    v168 = v46;
    v50 = *&v171[v166];
    if (v50)
    {
      v51 = v169;
      (*(*v50 + 896))();
      v52 = v160;
      sub_100A49D68(v51 + *(v172 + 20), v160, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v51, type metadata accessor for CRLWPShapeItemCRDTData);
      v46 = v178;
      v153(v26, v52, v178);
      sub_100A47694(v52, type metadata accessor for CRLWPStorageCRDTData);
      a2 = CRAttributedString.count.getter();
      v152(v26, v46);
      if (a2 >= (v168 & ~(v168 >> 63)))
      {
        v43 = (v168 & ~(v168 >> 63));
      }

      else
      {
        v43 = a2;
      }

      v53 = v167 & ~(v167 >> 63);
      v44 = v165;
      if (v53 < v43)
      {
        goto LABEL_118;
      }

      v149 = v9;
      if (a2 >= v53)
      {
        a2 = v167 & ~(v167 >> 63);
      }

      KeyPath = swift_getKeyPath();
      v55 = v171;
      sub_10095F6B0(KeyPath, v55, v43, a2);
      v57 = v56;
      a2 = v58;

      v155 = v55;

      v9 = v57;
      if (a2)
      {
        if (!v57[2])
        {
          __break(1u);
          goto LABEL_121;
        }

        v9 = v57[4];
      }

      v46 = v9;
      sub_1000C10AC(v57, a2 & 1);
      v148 = v41;
      if (v9)
      {

        v43 = v155;
        if ((v155[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] & 1) == 0)
        {
          sub_100A2A960();
        }

        v59 = *&v43[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hyperlinkRuns];
        v164 = *(v59 + 16);
        if (v164)
        {
          v141 = v26;
          v142 = a5;
          v143 = a4;
          v163 = v59 + 32;
          v174 = (v150 + 16);
          v60 = (v150 + 56);
          v61 = (v150 + 8);

          v63 = 0;
          v65 = v167;
          v64 = v168;
          v161 = v62;
          v66 = v175;
LABEL_32:
          if (v63 >= *(v62 + 16))
          {
            goto LABEL_113;
          }

          v68 = (v163 + 24 * v63);
          a2 = *v68;
          v43 = v68[1];
          v9 = v68[2];
          if (v64 < *v68 || v64 >= v43)
          {
            if (v64 == v65)
            {
              goto LABEL_31;
            }

            v70 = v64 < v43 && a2 < v65;
            if (!v70 || a2 == v43)
            {
              goto LABEL_31;
            }
          }

          v170 = v63;
          v173 = *&v171[v166];
          if (!v173)
          {
            goto LABEL_122;
          }

          v72 = swift_getKeyPath();
          v44 = &v43[-a2];
          if (__OFSUB__(v43, a2))
          {
            goto LABEL_114;
          }

          v46 = v72;
          a4 = v169;
          (*(*v173 + 896))();
          sub_100A49D68(a4 + *(v172 + 20), v179, type metadata accessor for CRLWPStorageCRDTData);
          v9 = v9;

          sub_100A47694(a4, type metadata accessor for CRLWPShapeItemCRDTData);
          if (v44 < 1)
          {

            goto LABEL_30;
          }

          v162 = v9;
          while (1)
          {
            aBlock = 0;
            v181 = 0;
            v73 = CRAttributedString.attributes(at:effectiveRange:)();
            __chkstk_darwin(v73);
            *(&v141 - 4) = &type metadata for CRLWPHyperlinkAttribute;
            *(&v141 - 3) = sub_1008247F4();
            *(&v141 - 2) = v46;
            swift_getKeyPath();
            v74 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
            a4 = v176;
            (*(*(v74 - 8) + 56))(v176, 1, 1, v74);
            v9 = sub_100824848();

            CRAttributedString.Attributes.subscript.setter();
            v43 = aBlock;
            v75 = aBlock + v181;
            if (__OFADD__(aBlock, v181))
            {
              break;
            }

            v76 = a2 + v44;
            if (__OFADD__(a2, v44))
            {
              goto LABEL_108;
            }

            if (v75 >= v76)
            {
              v77 = (a2 + v44);
            }

            else
            {
              v77 = aBlock + v181;
            }

            if (aBlock < a2 || aBlock >= v76)
            {
              if (a2 < aBlock || a2 >= v75)
              {
                (*v61)(v21, v177);
LABEL_67:

                v9 = v162;
LABEL_30:
                v46 = v173;
                v43 = (*(*v173 + 912))(&aBlock);
                a2 = v179;
                sub_100824550(v179, v67 + *(v172 + 20));
                (v43)(&aBlock, 0);

                sub_100A47694(a2, type metadata accessor for CRLWPStorageCRDTData);
                v44 = v165;
                v65 = v167;
                v64 = v168;
                v62 = v161;
                v63 = v170;
LABEL_31:
                if (++v63 == v164)
                {

                  a4 = v143;
                  LOBYTE(a5) = v142;
                  v26 = v141;
                  goto LABEL_69;
                }

                goto LABEL_32;
              }

              v9 = &v77[-a2];
              if (__OFSUB__(v77, a2))
              {
                goto LABEL_112;
              }
            }

            else
            {
              v9 = v77 - aBlock;
              if (__OFSUB__(v77, aBlock))
              {
                goto LABEL_111;
              }
            }

            a4 = v177;
            (*v174)(v66, v21, v177);
            (*v60)(v66, 0, 1, a4);
            v43 = v179;
            CRAttributedString.setAttributes(_:range:)();
            sub_10000CAAC(v66, &unk_101A0DAE0);
            (*v61)(v21, a4);
            v78 = __OFADD__(a2, v9);
            a2 += v9;
            if (v78)
            {
              goto LABEL_109;
            }

            v78 = __OFSUB__(v44, v9);
            v44 -= v9;
            if (v78)
            {
              goto LABEL_110;
            }

            if (v44 <= 0)
            {
              goto LABEL_67;
            }
          }

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
          goto LABEL_115;
        }
      }

LABEL_69:
      v9 = v155;
      v80 = v167;
      v79 = v168;
      if (!v168 && v80 == [v155 characterCount] && !v144)
      {
        sub_100A31D74();
      }

      v81 = sub_100A31CD0(v79, v80);
      if (a5)
      {
        v82 = v81;
        sub_100A3230C(v81);
        if (sub_100A31B44(v79, v80))
        {
          v83 = *&v171[v166];
          if (!v83)
          {
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          v84 = v169;
          (*(*v83 + 896))();
          v85 = v160;
          sub_100A49D68(v84 + *(v172 + 20), v160, type metadata accessor for CRLWPStorageCRDTData);
          sub_100A47694(v84, type metadata accessor for CRLWPShapeItemCRDTData);
          v86 = v178;
          v153(v26, v85 + *(v147 + 20), v178);
          sub_100A47694(v85, type metadata accessor for CRLWPStorageCRDTData);
          CRAttributedString.attributes(at:effectiveRange:)();
          v87 = (v152)(v26, v86);
        }

        else
        {
          v87 = sub_100A32A1C(v82);
        }
      }

      else
      {
        sub_10068D144();
        CRAttributedString.Attributes.init()();
        v87 = CRAttributedString.Attributes.init()();
      }

      v88 = *&v171[v166];
      if (v88)
      {
        v89 = a5;
        v90 = v169;
        (*(*v88 + 896))(v87);
        v91 = v172;
        v92 = v160;
        sub_100A49D68(v90 + *(v172 + 20), v160, type metadata accessor for CRLWPStorageCRDTData);

        sub_100A47694(v90, type metadata accessor for CRLWPShapeItemCRDTData);
        v93 = v158;
        CRAttributedString.replaceSubrange(_:with:)();
        v94 = (*(*v88 + 912))(&aBlock);
        sub_100824550(v92, v95 + *(v91 + 20));
        v94(&aBlock, 0);

        sub_100A47694(v92, type metadata accessor for CRLWPStorageCRDTData);
        *(v9 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
        *(v9 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) = 0;
        if (v89)
        {
          v96 = HIBYTE(a4) & 0xF;
          if ((a4 & 0x2000000000000000) == 0)
          {
            v96 = v93 & 0xFFFFFFFFFFFFLL;
          }

          if (v96)
          {
            sub_100A32F80(v157, v156, v168, v144);
          }
        }

        v97 = String.count.getter();
        a2 = v151;
        v46 = v149;
        if (v97 < 1)
        {
          goto LABEL_97;
        }

        v98 = sub_100BC19C0(v93, a4);
        if (v99)
        {
          v43 = v98;
          v21 = v99;
          if (qword_1019F1AD0 == -1)
          {
            goto LABEL_88;
          }

          goto LABEL_119;
        }

LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    goto LABEL_124;
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  swift_once();
LABEL_88:
  v100 = sub_1005EB3DC(v46, qword_101AD6F98);
  (*(a2 + 16))(v44, v100, v46);
  if ((sub_100BC1874(v43, v21) & 0x100000000) != 0)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v101 = CharacterSet.contains(_:)();

  (*(a2 + 8))(v44, v46);
  if (v101)
  {
    v102 = objc_allocWithZone(NSDataDetector);
    aBlock = 0;
    v103 = [v102 initWithTypes:32 error:&aBlock];
    v104 = aBlock;
    if (v103)
    {
      v105 = *&v171[v166];
      if (v105)
      {
        v106 = v103;
        v143 = a4;
        v107 = v169;
        (*(*v105 + 896))();
        v108 = v145;
        sub_100A49D68(v107 + *(v172 + 20), v145, type metadata accessor for CRLWPStorageCRDTData);
        v109 = v104;
        sub_100A47694(v107, type metadata accessor for CRLWPShapeItemCRDTData);
        v110 = v146;
        v111 = v178;
        v153(v146, v108, v178);
        sub_100A47694(v108, type metadata accessor for CRLWPStorageCRDTData);
        v112 = CRAttributedString.attributedString.getter();
        v152(v110, v111);
        v113 = [v112 string];

        if (!v113)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = String._bridgeToObjectiveC()();
        }

        v114 = [v9 range];
        v116 = v115;
        v117 = swift_allocObject();
        *(v117 + 16) = v9;
        v118 = swift_allocObject();
        v119 = sub_100A49F3C;
        *(v118 + 16) = sub_100A49F3C;
        *(v118 + 24) = v117;
        v184 = sub_100A49F44;
        v185 = v118;
        aBlock = _NSConcreteStackBlock;
        v181 = *"";
        v182 = sub_10123F800;
        v183 = &unk_1018925E8;
        v120 = _Block_copy(&aBlock);
        v121 = v9;

        [v106 enumerateMatchesInString:v113 options:0 range:v114 usingBlock:{v116, v120}];

        _Block_release(v120);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          v123 = v150;
          v9 = v155;
          goto LABEL_98;
        }

LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
      }

LABEL_130:
      __break(1u);
      return;
    }

    v124 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_97:
  v119 = 0;
  v123 = v150;
LABEL_98:
  v125 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange;
  v126 = *(v9 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
  if (v126 && *&v126[OBJC_IVAR____TtC8Freeform12CRLTextRange_range] >= v159)
  {
    v127 = v126;
    v128 = String.count.getter();
    v129 = sub_10078D9DC(v128);

    v130 = *(v9 + v125);
    *(v9 + v125) = v129;
  }

  v131 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange;
  v132 = *(v9 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange);
  if (v132 && *&v132[OBJC_IVAR____TtC8Freeform12CRLTextRange_range] >= v159)
  {
    v135 = v132;
    v136 = String.count.getter();
    v137 = sub_10078D9DC(v136);

    v138 = *(v123 + 8);
    v139 = v177;
    v138(v156, v177);
    v138(v157, v139);
    v140 = *&v155[v131];
    *&v155[v131] = v137;
  }

  else
  {
    v133 = *(v123 + 8);
    v134 = v177;
    v133(v156, v177);
    v133(v157, v134);
  }

  sub_1000C1014(v119);
}

void sub_100A2FAD8(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v61 = a4;
  v5 = sub_1005B981C(&unk_1019FFD10);
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v7 = &KeyPath - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v14 - 8);
  v16 = &KeyPath - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &KeyPath - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &KeyPath - v22;
  if (a1)
  {
    v62 = a1;
    v24 = [v62 URL];
    if (v24)
    {
      v25 = v24;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v18 + 32))(v23, v20, v17);
      v26 = [v62 range];
      v28 = v27;
      if (v26 == NSNotFound.getter())
      {
        (*(v18 + 8))(v23, v17);

        return;
      }

      v30 = __OFADD__(v26, v28);
      v31 = &v26[v28];
      if (v30)
      {
        __break(1u);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        (*(v18 + 16))(v16, v23, v17);
        (*(v18 + 56))(v16, 0, 1, v17);
        v56 = v31;
        v57 = (v31 - v26);
        v58 = v26;
        if (!__OFSUB__(v31, v26))
        {
          v32 = [objc_allocWithZone(NSUUID) init];
          v33 = [v32 UUIDString];

          if (!v33)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = String._bridgeToObjectiveC()();
          }

          if ((*(v18 + 48))(v16, 1, v17) == 1)
          {
            v35 = 0;
          }

          else
          {
            URL._bridgeToObjectiveC()(v34);
            v35 = v36;
            (*(v18 + 8))(v16, v17);
          }

          v37 = objc_allocWithZone(CRLWPHyperlinkField);
          v57 = [v37 initWithURL:v35 range:v58 displayText:v57 uuidString:{0, v33}];

          v38 = v61;
          v39 = *&v61[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
          if (!v39)
          {
            goto LABEL_34;
          }

          (*(*v39 + 896))();
          sub_100A49D68(&v10[*(v8 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
          sub_100A47694(v10, type metadata accessor for CRLWPShapeItemCRDTData);
          v41 = v59;
          v40 = v60;
          (*(v59 + 16))(v7, v13, v60);
          sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
          v42 = CRAttributedString.count.getter();
          (*(v41 + 8))(v7, v40);
          if (v42 >= (v58 & ~(v58 >> 63)))
          {
            v43 = v58 & ~(v58 >> 63);
          }

          else
          {
            v43 = v42;
          }

          v44 = v56 & ~(v56 >> 63);
          if (v42 >= v44)
          {
            v45 = v56 & ~(v56 >> 63);
          }

          else
          {
            v45 = v42;
          }

          if (v44 >= v43)
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            if (!Strong)
            {
              v53 = v38;
              goto LABEL_28;
            }

            v47 = Strong;
            ObjectType = swift_getObjectType();
            v49 = swift_conformsToProtocol2();
            if (v49)
            {
              v50 = v49;
              v51 = v38;
              v52 = sub_1012778D4(ObjectType, v50);

              if ((v52 & 1) == 0)
              {

LABEL_29:
                (*(v18 + 8))(v23, v17);

                return;
              }

LABEL_28:
              v54 = v57;
              sub_100821A74(KeyPath, v57, 0, v38, v43, v45);

              goto LABEL_29;
            }

LABEL_35:
            __break(1u);
            return;
          }

LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

    v29 = v62;
  }
}

void sub_100A30128(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v129 = a4;
  v135 = a3;
  v141 = a1;
  v142 = a2;
  v5 = sub_1005B981C(&unk_101A0DAE0);
  __chkstk_darwin(v5 - 8);
  v128 = &v115 - v6;
  v7 = sub_1005B981C(qword_101A0CF60);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v125 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v124 = &v115 - v11;
  __chkstk_darwin(v12);
  v130 = &v115 - v13;
  __chkstk_darwin(v14);
  v16 = &v115 - v15;
  v144 = sub_1005B981C(&unk_101A09540);
  v140 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = &v115 - v17;
  v18 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v18 - 8);
  v137 = &v115 - v19;
  v139 = sub_1005B981C(&unk_101A09550);
  v117 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v115 - v20;
  v21 = sub_1005B981C(&unk_1019FFD10);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v115 - v23;
  v123 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v123);
  v122 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v26 - 8);
  v28 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v30 = Strong;
  ObjectType = swift_getObjectType();
  v32 = swift_conformsToProtocol2();
  if (!v32)
  {
    goto LABEL_46;
  }

  v33 = sub_1012778D4(ObjectType, v32);

  if (v33)
  {
LABEL_4:
    v132 = v8;
    v118 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
    v34 = *(v131 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
    if (!v34)
    {
      goto LABEL_45;
    }

    v35 = v122;
    (*(*v34 + 896))();
    sub_100A49D68(v35 + *(v123 + 20), v28, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v35, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v22 + 16))(v24, v28, v21);
    sub_100A47694(v28, type metadata accessor for CRLWPStorageCRDTData);
    v36 = CRAttributedString.count.getter();
    (*(v22 + 8))(v24, v21);
    if (v36 >= (v141 & ~(v141 >> 63)))
    {
      v37 = v141 & ~(v141 >> 63);
    }

    else
    {
      v37 = v36;
    }

    v38 = v142 & ~(v142 >> 63);
    if (v38 < v37)
    {
      goto LABEL_43;
    }

    if (v36 >= v38)
    {
      v39 = v142 & ~(v142 >> 63);
    }

    else
    {
      v39 = v36;
    }

    v40 = CRAttributedString.attributedString.getter();
    v41 = [v40 string];

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = v129;
    v136 = v37;
    v46 = v39;
    v47 = v131;
    sub_100A2E55C(v37, v46, v42, v44, v129 & 1);

    CRAttributedString.runs.getter();
    v48 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
    v49 = v137;
    CRAttributedString.Runs.next()();
    v50 = v49;
    v51 = v49;
    v52 = v144;
    v134 = *(v140 + 48);
    v135 = v140 + 48;
    v53 = v134(v51, 1, v144);
    v54 = v128;
    if (v53 == 1)
    {
LABEL_13:
      (*(v117 + 8))(v138, v139);
      return;
    }

    v55 = (v47 + v48);
    v56 = *(v140 + 32);
    v120 = (v132 + 2);
    v121 = v7;
    v140 += 32;
    v141 = (v132 + 1);
    v119 = (v132 + 4);
    v126 = v16;
    v127 = (v132 + 7);
    v116 = (v132 + 6);
    v132 = (v140 - 24);
    v133 = v56;
    v56(v143, v50, v52);
    while (1)
    {
      v60 = CRAttributedString.Runs.Run.range.getter();
      if (__OFADD__(v136, v60))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        return;
      }

      v142 = v136 + v60;
      if (v45)
      {
        CRAttributedString.Runs.Run.attributes.getter();
        v61 = CRAttributedString.Runs.Run.range.getter();
        v63 = v62 - v61;
        if (__OFSUB__(v62, v61))
        {
          goto LABEL_38;
        }

        v64 = v142 + v63;
        if (__OFADD__(v142, v63))
        {
          goto LABEL_40;
        }

        if (v64 < v142)
        {
          goto LABEL_42;
        }

        sub_100A33634(v16, v142, v64);
        (*v141)(v16, v7);
        v58 = v144;
        (*v132)(v143, v144);
        goto LABEL_17;
      }

      v65 = v55[13];
      v66 = v55[11];
      v198 = v55[12];
      v199 = v65;
      v67 = v55[13];
      v200 = v55[14];
      v68 = v55[9];
      v69 = v55[7];
      v194 = v55[8];
      v195 = v68;
      v70 = v55[9];
      v71 = v55[11];
      v196 = v55[10];
      v197 = v71;
      v72 = v55[5];
      v73 = v55[3];
      v190 = v55[4];
      v191 = v72;
      v74 = v55[5];
      v75 = v55[7];
      v192 = v55[6];
      v193 = v75;
      v76 = v55[1];
      v186 = *v55;
      v187 = v76;
      v77 = v55[3];
      v79 = *v55;
      v78 = v55[1];
      v188 = v55[2];
      v189 = v77;
      v202[12] = v198;
      v202[13] = v67;
      v202[14] = v55[14];
      v202[8] = v194;
      v202[9] = v70;
      v202[10] = v196;
      v202[11] = v66;
      v202[4] = v190;
      v202[5] = v74;
      v202[6] = v192;
      v202[7] = v69;
      v202[0] = v79;
      v202[1] = v78;
      v201 = *(v55 + 30);
      v203 = *(v55 + 30);
      v202[2] = v188;
      v202[3] = v73;
      if (sub_100695050(v202) == 1)
      {
        v80 = *(v47 + v118);
        if (!v80)
        {
          goto LABEL_44;
        }

        v81 = v122;
        (*(*v80 + 896))();
        sub_1005B981C(&unk_101A095A0);
        CRRegister.wrappedValue.getter();
        sub_100A47694(v81, type metadata accessor for CRLWPShapeItemCRDTData);
        v175 = v159;
        v176 = v160;
        v177 = v161;
        v178 = v162;
        v171 = v155;
        v172 = v156;
        v173 = v157;
        v174 = v158;
        v167 = v151;
        v168 = v152;
        v169 = v153;
        v170 = v154;
        v163 = v147;
        v164 = v148;
        v165 = v149;
        v166 = v150;
        v82 = sub_100695050(&v163);
        v83 = v130;
        if (v82 == 1)
        {
          (*v127)(v54, 1, 1, v7);
          v84 = v143;
          CRAttributedString.Runs.Run.attributes.getter();
          if ((*v116)(v54, 1, v7) != 1)
          {
            sub_10000CAAC(v54, &unk_101A0DAE0);
          }

          goto LABEL_33;
        }

        v101 = v178;
        v100 = v177;
        v102 = BYTE8(v177);
        v98 = v176;
        v99 = BYTE8(v176);
        v96 = v175;
        v97 = BYTE8(v175);
        v94 = v174;
        v95 = BYTE8(v174);
        v92 = v166;
        v93 = BYTE8(v166);
        v90 = v165;
        v91 = BYTE8(v165);
        v89 = BYTE10(v164);
        v88 = BYTE9(v164);
        v87 = DWORD1(v164);
        v103 = BYTE8(v164);
        v85 = v163;
        v86 = v164;
        v104 = &v163;
      }

      else
      {
        v85 = v186;
        v86 = v187;
        v87 = DWORD1(v187);
        v88 = BYTE9(v187);
        v89 = BYTE10(v187);
        v90 = v188;
        v91 = BYTE8(v188);
        v92 = v189;
        v93 = BYTE8(v189);
        v94 = v197;
        v95 = BYTE8(v197);
        v96 = v198;
        v97 = BYTE8(v198);
        v98 = v199;
        v99 = BYTE8(v199);
        v100 = v200;
        v101 = v201;
        v102 = BYTE8(v200);
        v103 = BYTE8(v187);
        v104 = &v186;
      }

      v105 = v104[9];
      v183 = v104[8];
      v184 = v105;
      v185 = v104[10];
      v106 = v104[5];
      v179 = v104[4];
      v180 = v106;
      v107 = v104[7];
      v181 = v104[6];
      v182 = v107;
      v163 = v85;
      LOBYTE(v164) = v86;
      DWORD1(v164) = v87;
      BYTE8(v164) = v103 & 1;
      BYTE9(v164) = v88;
      BYTE10(v164) = v89;
      *&v165 = v90;
      BYTE8(v165) = v91;
      *&v166 = v92;
      BYTE8(v166) = v93;
      v171 = v183;
      v172 = v184;
      v173 = v185;
      v167 = v179;
      v168 = v106;
      v169 = v181;
      v170 = v107;
      *&v174 = v94;
      BYTE8(v174) = v95;
      *&v175 = v96;
      BYTE8(v175) = v97;
      *&v176 = v98;
      BYTE8(v176) = v99;
      *&v177 = v100;
      BYTE8(v177) = v102 & 1;
      v178 = v101;
      sub_10000BE14(&v186, &v147, &unk_101A0D830);
      sub_10081852C(&v163);
      v108 = v124;
      v84 = v143;
      CRAttributedString.Runs.Run.attributes.getter();
      v7 = v121;
      v109 = v125;
      (*v120)(v125, v108, v121);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1008244FC();
      CRAttributedString.Attributes.subscript.getter();

      LOBYTE(v147) = v147 & 1;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1009623E4();
      CRAttributedString.Attributes.subscript.getter();

      v145 = v147;
      v146 = v148;
      CRAttributedString.Attributes.subscript.setter();
      (*v141)(v108, v7);
      v110 = *v119;
      v54 = v128;
      (*v119)(v128, v109, v7);
      (*v127)(v54, 0, 1, v7);
      v83 = v130;
      v110(v130, v54, v7);
LABEL_33:
      v111 = CRAttributedString.Runs.Run.range.getter();
      v113 = v112 - v111;
      if (__OFSUB__(v112, v111))
      {
        goto LABEL_39;
      }

      v114 = v142 + v113;
      if (__OFADD__(v142, v113))
      {
        goto LABEL_41;
      }

      if (v114 < v142)
      {
        __break(1u);
        goto LABEL_37;
      }

      v47 = v131;
      sub_100A33634(v83, v142, v114);
      (*v141)(v83, v7);
      v57 = v84;
      v58 = v144;
      (*v132)(v57, v144);
      v45 = v129;
      v16 = v126;
LABEL_17:
      v59 = v137;
      CRAttributedString.Runs.next()();
      if (v134(v59, 1, v58) == 1)
      {
        goto LABEL_13;
      }

      v133(v143, v59, v58);
    }
  }
}

void sub_100A30E84(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v117 = a3;
  v111 = a1;
  v102 = sub_1005B981C(&qword_101A06188);
  __chkstk_darwin(v102);
  v7 = &v94 - v6;
  v103 = sub_1005B981C(&qword_101A0D850);
  __chkstk_darwin(v103);
  v118 = (&v94 - v8);
  v9 = sub_1005B981C(&unk_101A09540);
  v106 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v94 - v10;
  v12 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v12 - 8);
  v14 = &v94 - v13;
  v105 = sub_1005B981C(&unk_101A09550);
  v15 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v94 - v16;
  v116 = sub_1005B981C(&unk_1019FFD10);
  v17 = *(v116 - 8);
  __chkstk_darwin(v116);
  v115 = &v94 - v18;
  v114 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v114);
  v113 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v20 - 8);
  v112 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    ObjectType = swift_getObjectType();
    v25 = swift_conformsToProtocol2();
    if (!v25)
    {
LABEL_47:
      __break(1u);
      return;
    }

    v26 = sub_1012778D4(ObjectType, v25);

    if ((v26 & 1) == 0)
    {
      return;
    }
  }

  v95 = v15;
  sub_100A33D9C(v111, a2);
  v101 = v28;
  v111 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v29 = *&v117[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v29)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v30 = v27;
  v31 = v113;
  (*(*v29 + 896))();
  v32 = v112;
  sub_100A49D68(v31 + *(v114 + 20), v112, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v31, type metadata accessor for CRLWPShapeItemCRDTData);
  v33 = *(v17 + 16);
  v35 = v115;
  v34 = v116;
  v109 = v17 + 16;
  v108 = v33;
  v33(v115, v32, v116);
  sub_100A47694(v32, type metadata accessor for CRLWPStorageCRDTData);
  v36 = CRAttributedString.attributedString.getter();
  v37 = *(v17 + 8);
  v110 = v17 + 8;
  v107 = v37;
  v37(v35, v34);
  v38 = [v36 string];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v42 = v30 + v101;
  if (__OFADD__(v30, v101))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v42 < v30)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v101 = v30;
  sub_100A2E55C(v30, v42, v39, v41, 1);

  v44 = *&v117[v111];
  if (!v44)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v45 = v113;
  (*(*v44 + 896))(v43);
  v46 = v112;
  sub_100A49D68(v45 + *(v114 + 20), v112, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v45, type metadata accessor for CRLWPShapeItemCRDTData);
  v47 = v115;
  v48 = v116;
  v108(v115, v46, v116);
  sub_100A47694(v46, type metadata accessor for CRLWPStorageCRDTData);
  CRAttributedString.runs.getter();
  v107(v47, v48);
  CRAttributedString.Runs.next()();
  v49 = *(v106 + 48);
  v100 = v106 + 48;
  v99 = v49;
  if (v49(v14, 1, v9) != 1)
  {
    v98 = *(v106 + 32);
    v106 += 32;
    v96 = (v106 - 24);
    v97 = v4;
    do
    {
      v98(v11, v14, v9);
      v50 = CRAttributedString.Runs.Run.range.getter();
      v52 = *&v117[v111];
      if (!v52)
      {
        goto LABEL_43;
      }

      v53 = v50;
      v54 = v51;
      v55 = v113;
      (*(*v52 + 896))();
      v56 = v112;
      sub_100A49D68(v55 + *(v114 + 20), v112, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v55, type metadata accessor for CRLWPShapeItemCRDTData);
      v57 = v115;
      v58 = v116;
      v108(v115, v56, v116);
      sub_100A47694(v56, type metadata accessor for CRLWPStorageCRDTData);
      v59 = CRAttributedString.count.getter();
      v107(v57, v58);
      v60 = (v53 & ~(v53 >> 63));
      if (v59 < v60)
      {
        v60 = v59;
      }

      v61 = (v54 & ~(v54 >> 63));
      if (v61 < v60)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v62 = v14;
      v63 = v11;
      v64 = v7;
      if (v59 < v61)
      {
        v61 = v59;
      }

      v65 = v117;
      v120[0] = v117;
      v120[1] = v60;
      v120[2] = v61;
      v120[3] = v117;
      v120[4] = v60;
      v120[5] = v61;
      v66 = v117;
      sub_100A25A48(v120, v118);
      v67 = v9;
      v68 = v63;
      v69 = CRAttributedString.Runs.Run.range.getter();
      v71 = *&v65[v111];
      if (!v71)
      {
        goto LABEL_44;
      }

      v72 = v69;
      v73 = v70;
      v74 = v113;
      (*(*v71 + 896))();
      v75 = v112;
      sub_100A49D68(v74 + *(v114 + 20), v112, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v74, type metadata accessor for CRLWPShapeItemCRDTData);
      v76 = v115;
      v77 = v116;
      v108(v115, v75, v116);
      sub_100A47694(v75, type metadata accessor for CRLWPStorageCRDTData);
      v78 = CRAttributedString.count.getter();
      v107(v76, v77);
      v79 = (v72 & ~(v72 >> 63));
      if (v78 < v79)
      {
        v79 = v78;
      }

      v80 = (v73 & ~(v73 >> 63));
      if (v80 < v79)
      {
        goto LABEL_33;
      }

      v7 = v64;
      if (v78 < v80)
      {
        v80 = v78;
      }

      v119[0] = v66;
      v119[1] = v79;
      v119[2] = v80;
      v119[3] = v66;
      v119[4] = v79;
      v119[5] = v80;
      v81 = v66;
      sub_100A26474(v119, v64);
      v9 = v67;
      v11 = v68;
      v82 = CRAttributedString.Runs.Run.range.getter();
      v83 = v101 + v82;
      if (__OFADD__(v101, v82))
      {
        goto LABEL_34;
      }

      v84 = *(v103 + 36);
      v85 = CRAttributedString.Runs.Run.range.getter();
      v87 = v86 - v85;
      if (__OFSUB__(v86, v85))
      {
        goto LABEL_35;
      }

      v88 = v83 + v87;
      if (__OFADD__(v83, v87))
      {
        goto LABEL_36;
      }

      if (v88 < v83)
      {
        goto LABEL_37;
      }

      sub_100A33634(v118 + v84, v83, v88);
      v89 = *(v102 + 36);
      v90 = CRAttributedString.Runs.Run.range.getter();
      v92 = v91 - v90;
      if (__OFSUB__(v91, v90))
      {
        goto LABEL_38;
      }

      v93 = v83 + v92;
      if (__OFADD__(v83, v92))
      {
        goto LABEL_39;
      }

      if (v93 < v83)
      {
        goto LABEL_40;
      }

      sub_100A33634(&v7[v89], v83, v93);
      sub_10000CAAC(v7, &qword_101A06188);
      sub_10000CAAC(v118, &qword_101A0D850);
      (*v96)(v68, v67);
      v14 = v62;
      CRAttributedString.Runs.next()();
    }

    while (v99(v62, 1, v67) != 1);
  }

  (*(v95 + 8))(v104, v105);
}

id sub_100A31B44(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a2 != a1)
  {
    return 0;
  }

  if (a2 < 1)
  {
LABEL_7:
    [v2 textRangeForParagraphAtCharIndex:a2];
    return (v14 == 0);
  }

  v10 = result;
  if (([v2 characterAtIndex:{objc_msgSend(v2, "previousCharacterIndex:", a2)}] & 0xF800) == 0xD800)
  {
    return 0;
  }

  v11 = v2;
  result = sub_10027E0D0();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v12 = result;
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = CharacterSet.contains(_:)();
  (*(v6 + 8))(v9, v10);
  v2 = v11;
  if (v13)
  {
    goto LABEL_7;
  }

  return 0;
}

char *sub_100A31CD0(char *result, char *a2)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (a2 != result)
  {
    return result;
  }

  if ([v2 characterCount] < 1)
  {
    return a2;
  }

  v6 = [v2 textRangeForParagraphAtCharIndex:a2] != a2 || v4 == 0;
  if (!a2 || !v6)
  {
    result = a2;
    goto LABEL_17;
  }

  result = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    return a2;
  }

LABEL_17:
  if (__OFADD__(result, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((result + 1) < result)
  {
LABEL_22:
    __break(1u);
  }

  return result;
}

void sub_100A31D74()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019FFD10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v29 - v4;
  v6 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v34);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(qword_101A0CF60);
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v35 = v29 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    ObjectType = swift_getObjectType();
    v16 = swift_conformsToProtocol2();
    if (!v16)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v17 = sub_1012778D4(ObjectType, v16);

    if ((v17 & 1) == 0)
    {
      return;
    }
  }

  if ([v1 characterCount] < 1)
  {
    return;
  }

  v30 = v11;
  v32 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v18 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v18)
  {
    goto LABEL_11;
  }

  (*(*v18 + 896))();
  sub_100A49D68(&v8[*(v6 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v8, type metadata accessor for CRLWPShapeItemCRDTData);
  v31 = v6;
  v19 = *(v3 + 16);
  v19(v5, v10, v2);
  sub_100A47694(v10, type metadata accessor for CRLWPStorageCRDTData);
  CRAttributedString.attributes(at:effectiveRange:)();
  v20 = *(v3 + 8);
  v29[1] = v3 + 8;
  v21 = v20(v5, v2);
  v22 = *&v1[v32];
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  (*(*v22 + 896))(v21);
  sub_100A49D68(&v8[*(v31 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v8, type metadata accessor for CRLWPShapeItemCRDTData);
  v19(v5, &v10[*(v34 + 20)], v2);
  sub_100A47694(v10, type metadata accessor for CRLWPStorageCRDTData);
  CRAttributedString.count.getter();
  v23 = v20(v5, v2);
  v24 = *&v1[v32];
  if (!v24)
  {
LABEL_13:
    __break(1u);
    return;
  }

  (*(*v24 + 896))(v23);
  v25 = v31;
  sub_100A49D68(&v8[*(v31 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);

  sub_100A47694(v8, type metadata accessor for CRLWPShapeItemCRDTData);
  v26 = v35;
  CRAttributedString.addAttributes(_:range:)();
  v27 = (*(*v24 + 912))(v36);
  sub_100824550(v10, v28 + *(v25 + 20));
  v27(v36, 0);

  sub_100A47694(v10, type metadata accessor for CRLWPStorageCRDTData);
  (*(v33 + 8))(v26, v30);
}

id sub_100A3230C(uint64_t a1)
{
  v19[1] = a1;
  v2 = sub_1005B981C(qword_101A0CF60);
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v19 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1005B981C(&unk_1019FFD10);
  v11 = *(v20 - 8);
  *&v12 = __chkstk_darwin(v20).n128_u64[0];
  v14 = v19 - v13;
  result = [v1 characterCount];
  v16 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (result)
  {
    if (v16)
    {
      (*(*v16 + 896))();
      sub_100A49D68(&v7[*(v5 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
      v17 = v10;
LABEL_6:
      v18 = v20;
      (*(v11 + 16))(v14, v17, v20);
      sub_100A47694(v10, type metadata accessor for CRLWPStorageCRDTData);
      CRAttributedString.attributes(at:effectiveRange:)();
      sub_10068D144();
      CRAttributedString.Attributes.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100824758();
      CRAttributedString.Attributes.subscript.getter();

      *&v22 = v29;
      BYTE8(v22) = BYTE8(v29);
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1009622D0();
      CRAttributedString.Attributes.subscript.getter();

      *&v22 = v29;
      BYTE8(v22) = BYTE8(v29);
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1008246B0();
      CRAttributedString.Attributes.subscript.getter();

      LODWORD(v22) = v29;
      BYTE4(v22) = BYTE4(v29);
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1009623E4();
      CRAttributedString.Attributes.subscript.getter();

      v22 = v29;
      LOBYTE(v23) = v30;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1008248F0();
      CRAttributedString.Attributes.subscript.getter();

      v26 = v33;
      v27 = v34;
      v28 = v35;
      v22 = v29;
      v23 = v30;
      v25 = v32;
      v24 = v31;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1008244FC();
      CRAttributedString.Attributes.subscript.getter();

      LOBYTE(v22) = v29;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100824608();
      CRAttributedString.Attributes.subscript.getter();

      LOBYTE(v22) = v29;
      CRAttributedString.Attributes.subscript.setter();
      (*(v21 + 8))(v4, v2);
      return (*(v11 + 8))(v14, v18);
    }

    __break(1u);
  }

  else if (v16)
  {
    (*(*v16 + 896))();
    sub_100A49D68(&v7[*(v5 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    v17 = &v10[*(v8 + 20)];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_100A32A1C(uint64_t a1)
{
  v19[1] = a1;
  v2 = sub_1005B981C(qword_101A0CF60);
  v21 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v19 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1005B981C(&unk_1019FFD10);
  v11 = *(v20 - 8);
  *&v12 = __chkstk_darwin(v20).n128_u64[0];
  v14 = v19 - v13;
  result = [v1 characterCount];
  v16 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (result)
  {
    if (v16)
    {
      (*(*v16 + 896))();
      sub_100A49D68(&v7[*(v5 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
      v17 = v10;
LABEL_6:
      v18 = v20;
      (*(v11 + 16))(v14, v17, v20);
      sub_100A47694(v10, type metadata accessor for CRLWPStorageCRDTData);
      CRAttributedString.attributes(at:effectiveRange:)();
      sub_10068D144();
      CRAttributedString.Attributes.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1009621D4();
      CRAttributedString.Attributes.subscript.getter();

      v22 = v24;
      v23 = v25;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100962084();
      CRAttributedString.Attributes.subscript.getter();

      v22 = v24;
      v23 = v25;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100962228();
      CRAttributedString.Attributes.subscript.getter();

      v22 = v24;
      v23 = v25;
      CRAttributedString.Attributes.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1009624A4();
      CRAttributedString.Attributes.subscript.getter();

      v22 = v24;
      v23 = v25;
      CRAttributedString.Attributes.subscript.setter();
      (*(v21 + 8))(v4, v2);
      return (*(v11 + 8))(v14, v18);
    }

    __break(1u);
  }

  else if (v16)
  {
    (*(*v16 + 896))();
    sub_100A49D68(&v7[*(v5 + 20)], v10, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    v17 = &v10[*(v8 + 20)];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_100A32F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39[1] = a2;
  v39[2] = a1;
  v8 = sub_1005B981C(&unk_1019FFD10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v39 - v10;
  v12 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v40 = a4;
  if (!Strong)
  {
    if (a3 == a4)
    {
      return;
    }

    goto LABEL_7;
  }

  v19 = Strong;
  ObjectType = swift_getObjectType();
  v21 = swift_conformsToProtocol2();
  if (!v21)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v22 = sub_1012778D4(ObjectType, v21);

  if ((v22 & 1) != 0 && a3 != v40)
  {
LABEL_7:
    v23 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
    v24 = *&v5[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v24)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    (*(*v24 + 896))();
    sub_100A49D68(&v14[*(v12 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v14, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v9 + 16))(v11, v17, v8);
    sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
    v25 = CRAttributedString.count.getter();
    v26 = (*(v9 + 8))(v11, v8);
    if (v25 >= (a3 & ~(a3 >> 63)))
    {
      v27 = a3 & ~(a3 >> 63);
    }

    else
    {
      v27 = v25;
    }

    v28 = v40 & ~(v40 >> 63);
    if (v28 >= v25)
    {
      v29 = v25;
    }

    else
    {
      v29 = v40 & ~(v40 >> 63);
    }

    if (v28 < v27)
    {
      __break(1u);
    }

    else
    {
      v39[0] = v23;
      v30 = *&v5[v23];
      if (!v30)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (!__OFSUB__(v29, v27))
      {
        (*(*v30 + 896))(v26);
        sub_100A49D68(&v14[*(v12 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);

        sub_100A47694(v14, type metadata accessor for CRLWPShapeItemCRDTData);
        CRAttributedString.addAttributes(_:range:)();
        v31 = (*(*v30 + 912))(v41);
        sub_100824550(v17, v32 + *(v12 + 20));
        v31(v41, 0);

        sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
        if (!__OFSUB__(v40, a3))
        {
          v33 = [v5 textRangeForParagraphsInCharRange:{a3, v40 - a3}];
          v35 = &v33[v34];
          if (!__OFADD__(v33, v34))
          {
            if (v35 >= v33)
            {
              v36 = *&v5[v39[0]];
              if (!v36)
              {
LABEL_33:
                __break(1u);
                return;
              }

              if (!__OFSUB__(v35, v33))
              {
                (*(*v36 + 896))();
                sub_100A49D68(&v14[*(v12 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);

                sub_100A47694(v14, type metadata accessor for CRLWPShapeItemCRDTData);
                CRAttributedString.addAttributes(_:range:)();
                v37 = (*(*v36 + 912))(v41);
                sub_100824550(v17, v38 + *(v12 + 20));
                v37(v41, 0);

                sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
                return;
              }

              goto LABEL_29;
            }

LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_26;
  }
}

void sub_100A33528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v13 = Strong;
  ObjectType = swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = sub_1012778D4(ObjectType, v15);

  if (v16)
  {
LABEL_4:
    v17 = (*(a5 + 8))(a2, a3, v6, a4, a5);
    v19 = v18;
    v20 = type metadata accessor for CRLWPAttributeDictionary();
    sub_100A33634(a1 + *(v20 + 36), v17, v19);
    *(v6 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
  }
}

void sub_100A33634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v6 = sub_1005B981C(&unk_1019FFD10);
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CRLWPStorageCRDTData(0);
  v12 = __chkstk_darwin(v32);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v15)
  {
    goto LABEL_10;
  }

  v29 = a3;
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = v3;
  v30 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  (*(*v15 + 896))(v12);
  sub_100A49D68(&v11[*(v9 + 20)], v14, type metadata accessor for CRLWPStorageCRDTData);

  sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  CRAttributedString.addAttributes(_:range:)();
  v17 = (*(*v15 + 912))(v34);
  sub_100824550(v14, v18 + *(v9 + 20));
  v17(v34, 0);

  v19 = sub_100A47694(v14, type metadata accessor for CRLWPStorageCRDTData);
  if (a2)
  {
    v19 = sub_100A31B44(a2, v29);
    if ((v19 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v20 = v8;
  v21 = v30;
  v22 = *(v16 + v30);
  if (!v22)
  {
    goto LABEL_11;
  }

  (*(*v22 + 896))(v19);
  sub_100A49D68(&v11[*(v9 + 20)], v14, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  v23 = v31;
  (*(v31 + 16))(v20, &v14[*(v32 + 20)], v6);
  sub_100A47694(v14, type metadata accessor for CRLWPStorageCRDTData);
  CRAttributedString.count.getter();
  v24 = (*(v23 + 8))(v20, v6);
  v25 = *(v16 + v21);
  if (v25)
  {
    (*(*v25 + 896))(v24);
    sub_100A49D68(&v11[*(v9 + 20)], v14, type metadata accessor for CRLWPStorageCRDTData);

    sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
    CRAttributedString.addAttributes(_:range:)();
    v26 = (*(*v25 + 912))(v34);
    sub_100824550(v14, v27 + *(v9 + 20));
    v26(v34, 0);

    sub_100A47694(v14, type metadata accessor for CRLWPStorageCRDTData);
LABEL_8:
    *(v16 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_100A33B38(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&unk_1019FFD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v16)
  {
    goto LABEL_7;
  }

  (*(*v16 + 896))(v13);
  sub_100A49D68(&v11[*(v9 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v6 + 16))(v8, v15, v5);
  sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
  v17 = CRAttributedString.count.getter();
  (*(v6 + 8))(v8, v5);
  if (v17 >= (a1 & ~(a1 >> 63)))
  {
    v18 = a1 & ~(a1 >> 63);
  }

  else
  {
    v18 = v17;
  }

  if ((a2 & ~(a2 >> 63)) < v18)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }
}

void sub_100A33D9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&unk_1019FFD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v16)
  {
    goto LABEL_11;
  }

  (*(*v16 + 896))(v13);
  sub_100A49D68(&v11[*(v9 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v6 + 16))(v8, v15, v5);
  sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
  v17 = CRAttributedString.count.getter();
  (*(v6 + 8))(v8, v5);
  if (v17 >= (a1 & ~(a1 >> 63)))
  {
    v18 = a1 & ~(a1 >> 63);
  }

  else
  {
    v18 = v17;
  }

  if (__OFADD__(a1, a2))
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  if (v17 < a1 + a2 && __OFSUB__(v17, v18))
  {
    goto LABEL_10;
  }
}

void sub_100A3400C(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v3 = sub_1005B981C(&unk_101A096C0);
  __chkstk_darwin(v3 - 8);
  v52 = &v43 - v4;
  v51 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v46 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A09540);
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  v9 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v54 = sub_1005B981C(&unk_1019FFD10);
  v12 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v43 - v13;
  v49 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v49);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_101A09550);
  v21 = __chkstk_darwin(v19);
  v23 = &v43 - v22;
  v24 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v24)
  {
    goto LABEL_35;
  }

  v43 = v20;
  v25 = 0;
  v55 = 0x7FFFFFFFFFFFFFFFLL;
  (*(*v24 + 896))(v21);
  sub_100A49D68(&v15[*(v49 + 20)], v18, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v26 = v53;
  v27 = v54;
  (*(v12 + 16))(v53, v18, v54);
  sub_100A47694(v18, type metadata accessor for CRLWPStorageCRDTData);
  CRAttributedString.runs.getter();
  (*(v12 + 8))(v26, v27);
  v53 = v23;
  v54 = v19;
  CRAttributedString.Runs.next()();
  v28 = v56;
  v48 = *(v56 + 48);
  v49 = v56 + 48;
  if (v48(v11, 1, v6) == 1)
  {
LABEL_3:
    (*(v43 + 8))(v53, v54);
    return;
  }

  v29 = *(v28 + 32);
  v30 = (v46 + 48);
  v56 = v28 + 32;
  v31 = (v28 + 8);
  v46 = 0;
  v47 = v29;
  v32 = v55;
  v29(v8, v11, v6);
  while (1)
  {
    swift_getKeyPath();
    sub_100824848();
    v33 = v52;
    CRAttributedString.Runs.Run.subscript.getter();

    v34 = v51;
    if ((*v30)(v33, 1, v51) == 1)
    {
      sub_10000CAAC(v33, &unk_101A096C0);
LABEL_10:
      (*v31)(v8, v6);
      v35 = v55;
      if (v32 != v55)
      {
        goto LABEL_3;
      }

      v36 = v46;
      if (v25 != v46)
      {
        goto LABEL_3;
      }

      goto LABEL_6;
    }

    v37 = v50;
    sub_100A49E4C(v33, v50, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    v38 = (v37 + *(v34 + 24));
    v39 = *v38 == v44 && v38[1] == v45;
    if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_100A47694(v50, type metadata accessor for CRLWPHyperlinkSmartFieldData);
      goto LABEL_10;
    }

    v35 = CRAttributedString.Runs.Run.range.getter();
    v40 = CRAttributedString.Runs.Run.range.getter();
    v36 = v41 - v40;
    if (__OFSUB__(v41, v40))
    {
      break;
    }

    (*v31)(v8, v6);
    if (v32 != v55 || v25 != v46)
    {
      v42 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_32;
      }

      if (__OFADD__(v32, v25))
      {
        goto LABEL_33;
      }

      if (v42 <= v32 + v25)
      {
        v42 = v32 + v25;
      }

      if (v35 >= v32)
      {
        v35 = v32;
      }

      v36 = v42 - v35;
      if (__OFSUB__(v42, v35))
      {
        goto LABEL_34;
      }
    }

    sub_100A47694(v50, type metadata accessor for CRLWPHyperlinkSmartFieldData);
LABEL_6:
    CRAttributedString.Runs.next()();
    v25 = v36;
    v32 = v35;
    if (v48(v11, 1, v6) == 1)
    {
      goto LABEL_3;
    }

    v47(v8, v11, v6);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100A34728()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_10061655C(v7, qword_101AD6F98);
  sub_1005EB3DC(v0, qword_101AD6F98);
  static CharacterSet.whitespacesAndNewlines.getter();
  CharacterSet.init(charactersIn:)();
  CharacterSet.union(_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  return (v8)(v6, v0);
}

id sub_100A348A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPStorage();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100A34A80()
{
  v1 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_1019FFD10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v21 - v12;
  v24 = v0;
  v14 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v14)
  {
    (*(*v14 + 896))(v11);
    v15 = *(v1 + 20);
    v22 = v1;
    sub_100A49D68(&v3[v15], v5, type metadata accessor for CRLWPStorageCRDTData);

    sub_100A47694(v3, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v7 + 16))(v9, &v5[*(v23 + 5)], v6);
    v23 = type metadata accessor for CRLWPStorageCRDTData;
    sub_100A47694(v5, type metadata accessor for CRLWPStorageCRDTData);
    sub_10001A2F8(qword_101A0DB18, &unk_1019FFD10);
    CRType.copy()();
    v16 = (*(v7 + 8))(v9, v6);
    (*(*v14 + 896))(v16);
    v17 = v22;
    sub_100A49D68(&v3[*(v22 + 20)], v5, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v3, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v7 + 40))(v5, v13, v6);
    v18 = (*(*v14 + 912))(v25);
    sub_100824550(v5, v19 + *(v17 + 20));
    v18(v25, 0);

    sub_100A47694(v5, v23);
    v20 = v24;
    *(v24 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) = 0;
    *(v20 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_100A34E98()
{
  v1 = sub_1005B981C(&unk_1019FFD10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v12)
  {
    (*(*v12 + 896))(v9);
    sub_100A49D68(&v7[*(v5 + 20)], v11, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v2 + 16))(v4, v11, v1);
    sub_100A47694(v11, type metadata accessor for CRLWPStorageCRDTData);
    v13 = CRAttributedString.attributedString.getter();
    (*(v2 + 8))(v4, v1);
    [v13 length];
  }

  else
  {
    __break(1u);
  }
}

char *sub_100A3513C(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  result = [v4 characterCount];
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a2 + 32;
    v12 = *(a2 + 16);
    do
    {
      if (__OFSUB__(v12, v10))
      {
        goto LABEL_44;
      }

      v13 = v10 + (v12 - v10) / 2;
      if (__OFADD__(v10, (v12 - v10) / 2))
      {
        goto LABEL_45;
      }

      if (v13 >= v9)
      {
        goto LABEL_46;
      }

      v14 = (v11 + 24 * v13);
      v16 = *v14;
      v15 = v14[1];
      v18 = v15 < a3 || result > a3;
      if (v16 < a3 && v15 <= a3 && v18)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_47;
        }

        v13 = v12;
      }

      v12 = v13;
    }

    while (v10 != v13);
    if (v13 >= v9)
    {
      v26 = *(v11 + 24 * v9 - 16);
      goto LABEL_36;
    }

    v21 = (v11 + 24 * v13);
    v22 = *v21;
    v23 = v21[1];
    if (*v21 == a3 || result == a3 && v23 == a3 || (v22 <= a3 ? (v24 = v23 <= a3) : (v24 = 1), !v24))
    {
      v30 = v21[2];
      v26 = *v21;
      v31 = v30;
      goto LABEL_40;
    }

    if (v13)
    {
      v25 = v13 - 1;
      if (v25 >= v9)
      {
        goto LABEL_50;
      }

      v26 = *(v11 + 24 * v25 + 8);
    }

    else
    {
      v26 = 0;
    }

    if (v22 < v26)
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    goto LABEL_38;
  }

  v26 = 0;
LABEL_36:
  result = [v4 range];
  v28 = __OFADD__(result, v27);
  v29 = &result[v27];
  if (v28)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    return result;
  }

  if (v29 < v26)
  {
    goto LABEL_49;
  }

LABEL_38:
  v30 = 0;
LABEL_40:
  *a1 = v30;
  return v26;
}

void sub_100A3539C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_1019FFD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v15 < a1)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    return;
  }

  (*(*v16 + 896))(v12);
  sub_100A49D68(&v10[*(v8 + 20)], v14, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v10, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v5 + 16))(v7, v14, v4);
  sub_100A47694(v14, type metadata accessor for CRLWPStorageCRDTData);
  v17 = CRAttributedString.count.getter();
  (*(v5 + 8))(v7, v4);
  if (v17 >= (a1 & ~(a1 >> 63)))
  {
    v18 = (a1 & ~(a1 >> 63));
  }

  else
  {
    v18 = v17;
  }

  v19 = v15 & ~(v15 >> 63);
  if (v19 < v18)
  {
    goto LABEL_17;
  }

  if (v17 >= v19)
  {
    v20 = v15 & ~(v15 >> 63);
  }

  else
  {
    v20 = v17;
  }

  KeyPath = swift_getKeyPath();
  v22 = v2;
  v23 = sub_100955B74(KeyPath, v22, v18, v20);
  v25 = v24;

  if (v25)
  {
    if (*(v23 + 16))
    {
      sub_1000C1080(v23, 1);
      return;
    }

    goto LABEL_18;
  }
}

void sub_100A35820(uint64_t a1, int a2)
{
  v34 = a2;
  v38 = a1;
  v3 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33[-v5];
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v37 = v2;
  v14 = *&v2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v14)
  {
    goto LABEL_24;
  }

  (*(*v14 + 896))(v11);
  sub_100A49D68(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
  v35 = *(v4 + 16);
  v35(v6, v13, v3);
  sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
  v15 = CRAttributedString.attributedString.getter();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v17 = [v15 length];

  if (v17 >= 1 && (v38 & 0x8000000000000000) == 0)
  {
    v18 = *&v37[v36];
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    (*(*v18 + 896))();
    sub_100A49D68(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    v35(v6, v13, v3);
    sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
    v19 = CRAttributedString.attributedString.getter();
    v16(v6, v3);
    v20 = [v19 length];

    if (v20 < v38)
    {
      return;
    }

    v21 = v37;
    v22 = *&v37[v36];
    if (!v22)
    {
LABEL_26:
      __break(1u);
      return;
    }

    (*(*v22 + 896))();
    sub_100A49D68(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    v35(v6, v13, v3);
    sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
    v23 = CRAttributedString.attributedString.getter();
    v16(v6, v3);
    v24 = [v23 length];

    v25 = v38;
    if (v24 == v38)
    {
      v25 = [v21 previousCharacterIndex:v38];
    }

    if (sub_10027E3D4([v21 characterAtIndex:v25]))
    {
      v26 = [v21 rangeOfNearestWhitespaceBeforeCharIndex:v25 includingBreaks:1];
      if (v26 != NSNotFound.getter())
      {
        v25 = v26;
      }
    }

    v27 = [v21 wordAtCharIndex:v25 includePreviousWord:1];
    v29 = v28;
    v30 = NSNotFound.getter();
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v32 = v25;
    }

    else
    {
      v32 = v27;
    }

    if (!v31 && (v34 & 1) != 0)
    {
      v38 = &v27[v29];
      if (__OFADD__(v27, v29))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v32 = v27;
    }

    if (!__OFSUB__(v38, v32))
    {
      return;
    }

    __break(1u);
    goto LABEL_23;
  }
}

void sub_100A35DB8(uint64_t a1, int a2)
{
  v3 = v2;
  v29 = a2;
  v5 = sub_1005B981C(&unk_1019FFD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [v2 range];
  v34 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v16 = *&v2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v16)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v27 = 0;
  (*(*v16 + 896))();
  v32 = v9;
  sub_100A49D68(&v11[*(v9 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  v31 = *(v6 + 16);
  v31(v8, v15, v5);
  sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
  v17 = CRAttributedString.attributedString.getter();
  v18 = *(v6 + 8);
  v33 = v6 + 8;
  v30 = v18;
  v18(v8, v5);
  v19 = [v17 length];

  if (v19 > a1 && sub_10027E3D4([v3 characterAtIndex:a1]))
  {
    v20 = a1;
    if (v28 >= a1)
    {
      goto LABEL_14;
    }

    v20 = a1;
    while (1)
    {
      v21 = (v20 - 1);
      v22 = [v3 characterAtIndex:v20 - 1];
      if ((sub_10027E3D4(v22) & 1) == 0 && ((v29 & 1) == 0 || !sub_100A49F0C(v22)))
      {
        break;
      }

      --v20;
      if (v28 >= v21)
      {
        v20 = v28;
        break;
      }
    }

LABEL_14:
    while (1)
    {
      v23 = *&v3[v34];
      if (!v23)
      {
        break;
      }

      (*(*v23 + 896))();
      sub_100A49D68(&v11[*(v32 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
      v31(v8, v15, v5);
      sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
      v24 = CRAttributedString.attributedString.getter();
      v30(v8, v5);
      v25 = [v24 length];

      if (a1 >= v25 || (v26 = [v3 characterAtIndex:a1], (sub_10027E3D4(v26) & 1) == 0) && ((v29 & 1) == 0 || !sub_100A49F0C(v26)))
      {
        if (!__OFSUB__(a1, v20))
        {
          return;
        }

        __break(1u);
        break;
      }

      ++a1;
    }

    __break(1u);
    goto LABEL_23;
  }
}

uint64_t sub_100A36400(uint64_t result)
{
  v2 = result;
  if ((*(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) & 1) == 0)
  {
    result = sub_100A2C630();
  }

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges);
  if (*(v3 + 16) <= v2)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = v3 + 16 * v2;
  result = *(v4 + 32);
  if (__OFSUB__(*(v4 + 40), result))
  {
    __break(1u);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100A364C0(uint64_t a1)
{
  result = [v1 paragraphIndexAtCharIndex:a1];
  v3 = result;
  if ((v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges] & 1) == 0)
  {
    result = sub_100A2C630();
  }

  v4 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges];
  if (v3 >= *(v4 + 16))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = v4 + 16 * v3;
  result = *(v5 + 32);
  if (__OFSUB__(*(v5 + 40), result))
  {
    __break(1u);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

void sub_100A3659C(uint64_t a1, Swift::Int a2, Swift::Int a3)
{
  v43.location = a2;
  v43.length = a3;
  v4 = sub_1005B981C(&unk_101A096C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v51 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v47 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A09540);
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  v11 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v50 = sub_1005B981C(&unk_1019FFD10);
  v14 = *(v50 - 8);
  __chkstk_darwin(v50);
  v16 = &v42 - v15;
  v17 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1005B981C(&unk_101A09550);
  v24 = __chkstk_darwin(v44);
  v52 = &v42 - v25;
  if (a1 == 6)
  {
    v42 = v23;
    v26 = *(v45 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
    if (v26)
    {
      (*(*v26 + 896))(v24);
      sub_100A49D68(&v19[*(v17 + 20)], v22, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v19, type metadata accessor for CRLWPShapeItemCRDTData);
      v27 = v50;
      (*(v14 + 16))(v16, v22, v50);
      sub_100A47694(v22, type metadata accessor for CRLWPStorageCRDTData);
      CRAttributedString.runs.getter();
      (*(v14 + 8))(v16, v27);
      v28 = v44;
      CRAttributedString.Runs.next()();
      v29 = v48;
      v49 = v48[6];
      v50 = (v48 + 6);
      if (v49(v13, 1, v8) == 1)
      {
        v47 = _swiftEmptyArrayStorage;
      }

      else
      {
        v31 = v29[4];
        v30 = v29 + 4;
        v48 = v31;
        v32 = v47 + 48;
        v33 = (v30 - 3);
        v47 = _swiftEmptyArrayStorage;
        (v31)(v10, v13, v8);
        while (1)
        {
          swift_getKeyPath();
          sub_100824848();
          CRAttributedString.Runs.Run.subscript.getter();

          v34 = v51;
          if ((*v32)(v6, 1, v51) == 1)
          {
            (*v33)(v10, v8);
            sub_10000CAAC(v6, &unk_101A096C0);
          }

          else
          {
            v35 = v30;
            v36 = v46;
            sub_100A49E4C(v6, v46, type metadata accessor for CRLWPHyperlinkSmartFieldData);
            sub_100A3400C(*(v36 + *(v34 + 24)), *(v36 + *(v34 + 24) + 8));
            v55 = _NSRange.intersection(_:)(v43);
            if (v55.is_nil)
            {
              (*v33)(v10, v8);
              sub_100A47694(v36, type metadata accessor for CRLWPHyperlinkSmartFieldData);
              v30 = v35;
              v28 = v44;
            }

            else
            {
              v54 = v34;
              v37 = sub_10002C58C(&v53);
              sub_100A49D68(v36, v37, type metadata accessor for CRLWPHyperlinkSmartFieldData);
              v38 = v47;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v38 = sub_100B3865C(0, *(v38 + 2) + 1, 1, v38);
              }

              v30 = v35;
              v40 = *(v38 + 2);
              v39 = *(v38 + 3);
              v47 = v38;
              v28 = v44;
              if (v40 >= v39 >> 1)
              {
                v47 = sub_100B3865C((v39 > 1), v40 + 1, 1, v47);
              }

              (*v33)(v10, v8);
              v41 = v47;
              *(v47 + 2) = v40 + 1;
              sub_10000BF3C(&v53, &v41[32 * v40 + 32]);
              sub_100A47694(v46, type metadata accessor for CRLWPHyperlinkSmartFieldData);
            }
          }

          CRAttributedString.Runs.next()();
          if (v49(v13, 1, v8) == 1)
          {
            break;
          }

          (v48)(v10, v13, v8);
        }
      }

      (*(v42 + 8))(v52, v28);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100A36D98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v35 = a3;
  v7 = sub_1005B981C(&unk_1019FFD10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 6)
  {
    v18 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v18 >= a1)
    {
      v19 = *&v4[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
      if (!v19)
      {
LABEL_24:
        __break(1u);
        return;
      }

      (*(*v19 + 896))(v15);
      sub_100A49D68(&v13[*(v11 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v13, type metadata accessor for CRLWPShapeItemCRDTData);
      (*(v8 + 16))(v10, v17, v7);
      sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
      v20 = CRAttributedString.count.getter();
      (*(v8 + 8))(v10, v7);
      if (v20 >= (a1 & ~(a1 >> 63)))
      {
        v21 = (a1 & ~(a1 >> 63));
      }

      else
      {
        v21 = v20;
      }

      v22 = v18 & ~(v18 >> 63);
      if (v22 >= v21)
      {
        if (v20 >= v22)
        {
          v23 = v18 & ~(v18 >> 63);
        }

        else
        {
          v23 = v20;
        }

        KeyPath = swift_getKeyPath();
        v25 = v4;
        sub_10095F6B0(KeyPath, v25, v21, v23);
        v27 = v26;
        v29 = v28;

        v30 = v27;
        if ((v29 & 1) == 0)
        {
          goto LABEL_15;
        }

        if (v27[2])
        {
          v30 = v27[4];
LABEL_15:
          v31 = v30;
          sub_1000C10AC(v27, v29 & 1);
          if (v30)
          {
            v32 = v35;
            if (v35)
            {
              *v32 = [v31 range];
              v32[1] = v33;
            }
          }

          else
          {
            [v25 hyperlinkFieldAtCharIndex:a1 effectiveRange:v35];
          }

          return;
        }

        goto LABEL_23;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_22;
  }
}

void sub_100A372E0(unint64_t a1, void *a2)
{
  if ((*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns) & 1) == 0)
  {
    sub_100A2CB04();
  }

  v5 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns);
  v6 = *(v5 + 16);
  if (v6 > a1)
  {
    if (a2)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v7 = v5 + 56 * a1;
      v8 = *(v7 + 32);
      v9 = *(v7 + 40);
      v10 = __OFSUB__(v9, v8);
      v11 = v9 - v8;
      if (v10)
      {
LABEL_15:
        __break(1u);
        return;
      }

      *a2 = v8;
      a2[1] = v11;
      v6 = *(v5 + 16);
    }

    else if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v6 > a1)
    {
      v12 = *(v5 + 56 * a1 + 48);
      return;
    }

    goto LABEL_13;
  }
}

uint64_t sub_100A37480(uint64_t a1, uint64_t *a2)
{
  result = NSNotFound.getter();
  if ((*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges) & 1) == 0)
  {
    v6 = result;
    sub_100A2C630();
    result = v6;
  }

  v7 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges);
  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = 0;
  v10 = v7 + 32;
  v11 = v8;
  do
  {
    if (__OFSUB__(v11, v9))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    result = v9 + (v11 - v9) / 2;
    if (__OFADD__(v9, (v11 - v9) / 2))
    {
      goto LABEL_22;
    }

    if (result >= v8)
    {
      goto LABEL_23;
    }

    if (*(v10 + 16 * result + 8) <= a1)
    {
      v9 = result + 1;
      if (__OFADD__(result, 1))
      {
        goto LABEL_24;
      }

      result = v11;
    }

    v11 = result;
  }

  while (v9 != result);
  if (result >= v8)
  {
    result = v8 - 1;
    v17 = (v10 + 16 * (v8 - 1));
    v13 = *v17;
    v18 = v17[1];
    v15 = __OFSUB__(v18, v13);
    v16 = v18 - v13;
    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v12 = (v10 + 16 * result);
  v13 = *v12;
  v14 = v12[1];
  v15 = __OFSUB__(v14, v13);
  v16 = v14 - v13;
  if (!v15)
  {
    goto LABEL_18;
  }

  __break(1u);
LABEL_16:
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = 0;
LABEL_18:
  if (a2)
  {
    *a2 = v13;
    a2[1] = v16;
  }

  return result;
}

void sub_100A37620(uint64_t a1, uint64_t *a2)
{
  if ((*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns) & 1) == 0)
  {
    sub_100A2CB04();
  }

  v5 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = 0;
    if (a2)
    {
      goto LABEL_20;
    }

    return;
  }

  v7 = 0;
  v8 = v5 + 32;
  v9 = v5 + 40;
  v10 = v6;
  do
  {
    if (__OFSUB__(v10, v7))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v11 = v7 + (v10 - v7) / 2;
    if (__OFADD__(v7, (v10 - v7) / 2))
    {
      goto LABEL_23;
    }

    if (v11 >= v6)
    {
      goto LABEL_24;
    }

    if (*(v9 + 56 * v11) <= a1)
    {
      v7 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_25;
      }

      v11 = v10;
    }

    v10 = v11;
  }

  while (v7 != v11);
  if (v11 >= v6)
  {
    v17 = v8 + 56 * v6;
    v14 = *(v17 - 56);
    v18 = *(v17 - 48);
    v15 = v18 - v14;
    if (!__OFSUB__(v18, v14))
    {
      v16 = (v17 - 40);
      goto LABEL_19;
    }

LABEL_27:
    __break(1u);
    return;
  }

  v12 = (v8 + 56 * v11);
  v14 = *v12;
  v13 = v12[1];
  v15 = v13 - *v12;
  if (__OFSUB__(v13, *v12))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = (v12 + 2);
LABEL_19:
  v19 = *v16;
  if (!a2)
  {
    return;
  }

LABEL_20:
  *a2 = v14;
  a2[1] = v15;
}

void sub_100A37908(uint64_t a1)
{
  if ((v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns] & 1) == 0)
  {
    sub_100A2CB04();
  }

  v3 = *&v1[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns];
  if (*(v3 + 16) > a1)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = (v3 + 56 * a1);
      v5 = v4[7];
      if (!v5)
      {
        return;
      }

      v6 = v4[6];
      v7 = v4[8];
      v8 = v5;
      v9 = v6;
      v10 = [v1 listNumberAtParIndex:a1];
      v11 = v8;
      v12 = sub_10084A9D4();

      if ((v7 & 0x8000000000000000) == 0)
      {
        if (v7 < *(v12 + 16))
        {
          v13 = *(v12 + 8 * v7 + 32);

          v14 = objc_opt_self();
          if ((v10 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v10))
            {
              v15 = [v14 crlwp_stringForValue:v10 withListNumberFormat:v13 includeFormatting:1];
              if (v15)
              {
                v16 = v15;
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }

              else
              {
              }

              return;
            }

LABEL_18:
            __break(1u);
            return;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_100A37AE0(uint64_t a1)
{
  if ((*(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) & 1) == 0)
  {
    sub_100A2A960();
  }

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__listRuns);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 1;
  }

  v5 = 0;
  v6 = v3 + 32;
  result = 1;
  while (2)
  {
    v8 = v6 + 48 * v5++;
    v9 = *(v8 + 40);
    v10 = *(v9 + 16);
    v11 = (v9 + 32);
    v12 = v10;
    while (v12)
    {
      v13 = *v11++;
      --v12;
      if (v13 == a1)
      {
        v14 = *(v8 + 32);
        result = v14 - 1;
        if (!__OFSUB__(v14, 1))
        {
          v15 = result + v10;
          v16 = (v9 + 32);
          while (1)
          {
            if (!v10)
            {
              return v15;
            }

            if (result == 9223372036854775807)
            {
              break;
            }

            v17 = *v16++;
            ++result;
            --v10;
            if (v17 >= a1)
            {
              return result;
            }
          }

          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    if (v5 != v4)
    {
      continue;
    }

    break;
  }

  return result;
}

void sub_100A37C40(unint64_t a1, void *a2)
{
  if ((*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns) & 1) == 0)
  {
    sub_100A2CB04();
  }

  v5 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns);
  v6 = *(v5 + 16);
  if (v6 > a1)
  {
    if (a2)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v7 = v5 + 56 * a1;
      v8 = *(v7 + 32);
      v9 = *(v7 + 40);
      v10 = __OFSUB__(v9, v8);
      v11 = v9 - v8;
      if (v10)
      {
LABEL_15:
        __break(1u);
        return;
      }

      *a2 = v8;
      a2[1] = v11;
      v6 = *(v5 + 16);
    }

    else if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v6 > a1)
    {
      v12 = *(v5 + 56 * a1 + 56);
      return;
    }

    goto LABEL_13;
  }
}

void sub_100A37E24(unint64_t a1, void *a2)
{
  if ((*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns) & 1) == 0)
  {
    sub_100A2CB04();
  }

  v5 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns);
  v6 = *(v5 + 16);
  if (v6 > a1)
  {
    if (a2)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v7 = v5 + 56 * a1;
      v8 = *(v7 + 32);
      v9 = *(v7 + 40);
      v10 = __OFSUB__(v9, v8);
      v11 = v9 - v8;
      if (v10)
      {
LABEL_15:
        __break(1u);
        return;
      }

      *a2 = v8;
      a2[1] = v11;
      v6 = *(v5 + 16);
    }

    else if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v6 > a1)
    {
      return;
    }

    goto LABEL_13;
  }
}

uint64_t sub_100A37F34(uint64_t a1, void *a2)
{
  if ((*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) & 1) == 0)
  {
    sub_100A2A960();
  }

  v5 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__listRuns);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return 1;
  }

  v7 = 0;
  v8 = v5 + 32;
  result = 1;
  while (2)
  {
    v10 = (v8 + 48 * v7++);
    v11 = v10[5];
    v12 = *(v11 + 16);
    v13 = (v11 + 32);
    while (v12)
    {
      v14 = *v13++;
      --v12;
      if (v14 == a1)
      {
        result = v10[4];
        if (a2)
        {
          v15 = v10[2];
          v16 = v10[3];
          v17 = __OFSUB__(v16, v15);
          v18 = v16 - v15;
          if (v17)
          {
            __break(1u);
          }

          else
          {
            *a2 = v15;
            a2[1] = v18;
          }
        }

        return result;
      }
    }

    if (v7 != v6)
    {
      continue;
    }

    break;
  }

  return result;
}

void sub_100A38080(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v14)
  {
    (*(*v14 + 896))(v11);
    sub_100A49D68(&v9[*(v7 + 20)], v13, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v4 + 16))(v6, v13, v3);
    sub_100A47694(v13, type metadata accessor for CRLWPStorageCRDTData);
    v15 = CRAttributedString.attributedString.getter();
    (*(v4 + 8))(v6, v3);
    v16 = [v15 string];

    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = String._bridgeToObjectiveC()();
    }

    [v16 characterAtIndex:a1];
  }

  else
  {
    __break(1u);
  }
}

void sub_100A38364(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019FC080);
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v36 - v6;
  v7 = sub_1005B981C(&unk_1019FFD10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v40 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v40);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v41 = v2;
  sub_100A33D9C(a1, a2);
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_12;
  }

  v22 = v19;
  if (v21 < v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v37 = v5;
  v23 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v24 = *&v41[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v24)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  (*(*v24 + 896))();
  sub_100A49D68(&v12[*(v40 + 20)], v18, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v12, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v8 + 16))(v10, v18, v7);
  sub_100A47694(v18, type metadata accessor for CRLWPStorageCRDTData);
  v25 = CRAttributedString.count.getter();
  v26 = (*(v8 + 8))(v10, v7);
  if (v25 >= (v22 & ~(v22 >> 63)))
  {
    v27 = v22 & ~(v22 >> 63);
  }

  else
  {
    v27 = v25;
  }

  if ((v21 & ~(v21 >> 63)) < v27)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v28 = v41;
  v29 = *&v41[v23];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  (*(*v29 + 896))(v26);
  sub_100A49D68(&v12[*(v40 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
  v30 = v28;
  sub_100A47694(v12, type metadata accessor for CRLWPShapeItemCRDTData);
  v31 = v38;
  CRAttributedString.subscript.getter();
  sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
  v32 = v37;
  v33 = CRAttributedString.Substring.attributedString.getter();
  (*(v39 + 8))(v31, v32);
  v34 = [v33 string];
  if (v34)
  {
    v35 = v34;

    String.init(_:)(v35);
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_100A38854(uint64_t a1, uint64_t a2)
{
  if (*(*&v2[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hyperlinkRuns] + 16))
  {
    return 1;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  v10[4] = sub_100A49EBC;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = *"";
  v10[2] = sub_100A38998;
  v10[3] = &unk_101892550;
  v8 = _Block_copy(v10);

  [v2 enumerateSmartFieldsWithAttributeKind:6 inRange:a1 usingBlock:{a2, v8}];
  _Block_release(v8);
  swift_beginAccess();
  v3 = *v7;

  return v3;
}

uint64_t sub_100A38998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v11[3] = swift_getObjectType();
  v11[0] = a2;

  swift_unknownObjectRetain();
  v9(v11, a3, a4, a5);

  return sub_100005070(v11);
}

uint64_t sub_100A38A8C()
{
  v1 = sub_1005B981C(&unk_1019FFD10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  result = __chkstk_darwin(v8 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v12)
  {
    (*(*v12 + 896))(result);
    sub_100A49D68(&v7[*(v5 + 20)], v11, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v7, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v2 + 16))(v4, v11, v1);
    sub_100A47694(v11, type metadata accessor for CRLWPStorageCRDTData);
    v13 = CRAttributedString.attributedString.getter();
    (*(v2 + 8))(v4, v1);
    v14 = [v13 length];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100A38CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1005B981C(&unk_1019FFD10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v18)
  {
    (*(*v18 + 896))(v15);
    sub_100A49D68(&v13[*(v11 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v13, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v8 + 16))(v10, v17, v7);
    sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
    v19 = CRAttributedString.attributedString.getter();
    (*(v8 + 8))(v10, v7);
    v20 = [v19 string];

    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = String._bridgeToObjectiveC()();
    }

    [v20 getCharacters:a1 range:{a2, a3}];
  }

  else
  {
    __break(1u);
  }
}

id sub_100A39020(uint64_t a1, char *a2)
{
  v86 = a2;
  v96 = sub_1005B981C(&unk_1019FFD10);
  v5 = *(v96 - 8);
  __chkstk_darwin(v96 - 8);
  v88 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v85 - v8;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v87 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v93 = a1;
  v94 = &v85 - v16;
  v17 = a1;
  if (a1 >= 1)
  {
    v18 = sub_10027E3D4([v2 characterAtIndex:{a1 - 1, v15}]);
    v17 = v93;
    if ((v18 & 1) == 0)
    {
      v91 = v5;
      v92 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
      v89 = (v5 + 8);
      v90 = (v5 + 16);
      v17 = v93;
      while (1)
      {
        v39 = [v2 wordAtCharIndex:v17 - 1 includePreviousWord:0];
        if (v39 == NSNotFound.getter())
        {
          break;
        }

        v17 = v39;
        v3 = (v39 - 1);
        if (v39 < 1)
        {
          break;
        }

        v97 = v39;
        v40 = v2;
        v41 = *&v2[v92];
        if (!v41)
        {
          goto LABEL_20;
        }

        (*(*v41 + 896))();
        v42 = v94;
        sub_100A49D68(&v11[*(v9 + 20)], v94, type metadata accessor for CRLWPStorageCRDTData);
        sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
        v43 = v95;
        v44 = v96;
        (*v90)(v95, v42, v96);
        sub_100A47694(v42, type metadata accessor for CRLWPStorageCRDTData);
        v45 = CRAttributedString.attributedString.getter();
        (*v89)(v43, v44);
        v46 = [v45 string];

        if (!v46)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v46 = String._bridgeToObjectiveC()();
        }

        v47 = [v46 crlwp_isHyphenationAtCharacterIndex:v39 - 1];

        v2 = v40;
        v5 = v91;
        v17 = v97;
        if (!v47)
        {
          break;
        }

        v17 = (v39 - 1);
        if (v39 == 1)
        {
          v17 = 0;
          break;
        }
      }
    }
  }

  v97 = v17;
  v19 = v2;
  v92 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v20 = *&v2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v20)
  {
    goto LABEL_21;
  }

  v95 = &v93[v86];
  (*(*v20 + 896))();
  v21 = v87;
  sub_100A49D68(&v11[*(v9 + 20)], v87, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  v22 = *(v5 + 2);
  v89 = v9;
  v23 = v11;
  v24 = v88;
  v25 = v5;
  v26 = v96;
  v93 = v22;
  (v22)(v88, v21, v96);
  sub_100A47694(v21, type metadata accessor for CRLWPStorageCRDTData);
  v27 = CRAttributedString.attributedString.getter();
  v90 = *(v25 + 1);
  (v90)(v24, v26);
  v91 = [v27 length];

  v85 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = v95;
  v94 = inited + 32;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  v86 = v19;
  v29 = *&v19[v92];
  if (!v29)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = inited;
  (*(*v29 + 896))();
  sub_100A49D68(v23 + *(v89 + 20), v21, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v23, type metadata accessor for CRLWPShapeItemCRDTData);
  (v93)(v24, v21, v26);
  sub_100A47694(v21, type metadata accessor for CRLWPStorageCRDTData);
  v30 = CRAttributedString.attributedString.getter();
  (v90)(v24, v26);
  v31 = [v30 length];

  v3[12] = &type metadata for Int;
  v3[13] = &protocol witness table for Int;
  v3[9] = v31;
  v32 = v95;
  if (v91 < v95)
  {
LABEL_23:
    v97 = objc_opt_self();
    LODWORD(v48) = [v97 _atomicIncrementAssertCount];
    v98 = [objc_allocWithZone(NSString) init];
    v49 = v3;
    sub_100604538(v3, &v98);
    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    v52 = [v51 lastPathComponent];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (qword_1019F20A0 != -1)
    {
LABEL_52:
      swift_once();
    }

    v56 = static OS_os_log.crlAssert;
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_10146CA70;
    *(v57 + 56) = &type metadata for Int32;
    *(v57 + 64) = &protocol witness table for Int32;
    *(v57 + 32) = v48;
    v58 = sub_100006370(0, &qword_1019F4D30);
    *(v57 + 96) = v58;
    v59 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v57 + 104) = v59;
    *(v57 + 72) = v50;
    *(v57 + 136) = &type metadata for String;
    v60 = sub_1000053B0();
    *(v57 + 112) = v53;
    *(v57 + 120) = v55;
    *(v57 + 176) = &type metadata for UInt;
    *(v57 + 184) = &protocol witness table for UInt;
    *(v57 + 144) = v60;
    *(v57 + 152) = 2009;
    v61 = v98;
    *(v57 + 216) = v58;
    *(v57 + 224) = v59;
    *(v57 + 192) = v61;
    v62 = v50;
    v63 = v61;
    v64 = static os_log_type_t.error.getter();
    sub_100005404(v56, &_mh_execute_header, v64, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v57);

    v65 = static os_log_type_t.error.getter();
    sub_100005404(v56, &_mh_execute_header, v65, "Illegal range past end of storage: %lu vs %lu", 45, 2, v49);

    sub_10063DF98(v49, "Illegal range past end of storage: %lu vs %lu");
    type metadata accessor for __VaListBuilder();
    v48 = swift_allocObject();
    v48[2] = 8;
    v48[3] = 0;
    v53 = v48 + 3;
    v48[4] = 0;
    v48[5] = 0;
    v49 = *(v49 + 16);
    if (!v49)
    {
LABEL_54:
      v79 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v80 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v81 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v82 = String._bridgeToObjectiveC()();

      [v97 handleFailureInFunction:v80 file:v81 lineNumber:2009 isFatal:1 format:v82 args:v79];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v83, v84);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v55 = 0;
    while (1)
    {
      v50 = sub_100020E58((v94 + 40 * v55), *(v94 + 40 * v55 + 24));
      v66 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v67 = *v53;
      v68 = *(v66 + 16);
      v69 = __OFADD__(*v53, v68);
      v70 = *v53 + v68;
      if (v69)
      {
        goto LABEL_49;
      }

      v71 = v66;
      v50 = v48[4];
      if (v50 >= v70)
      {
        goto LABEL_41;
      }

      if (v50 + 0x4000000000000000 < 0)
      {
        goto LABEL_50;
      }

      v72 = v48[5];
      if (2 * v50 > v70)
      {
        v70 = 2 * v50;
      }

      v48[4] = v70;
      if ((v70 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_51;
      }

      v73 = swift_slowAlloc();
      v48[5] = v73;
      if (v72)
      {
        break;
      }

LABEL_42:
      if (!v73)
      {
        __break(1u);
        goto LABEL_54;
      }

      v75 = *(v71 + 16);
      if (v75)
      {
        v76 = (v71 + 32);
        v77 = *v53;
        while (1)
        {
          v78 = *v76++;
          *&v73[8 * v77] = v78;
          v77 = *v53 + 1;
          if (__OFADD__(*v53, 1))
          {
            break;
          }

          *v53 = v77;
          if (!--v75)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_26:

      if (++v55 == v49)
      {
        goto LABEL_54;
      }
    }

    if (v73 != v72 || v73 >= &v72[8 * v67])
    {
      memmove(v73, v72, 8 * v67);
    }

    v50 = v48;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_41:
    v73 = v48[5];
    goto LABEL_42;
  }

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v33 = [v86 wordAtCharIndex:v32 includePreviousWord:0];
  v35 = v34;
  v36 = NSNotFound.getter();
  v37 = &v33[v35];
  if (v33 == v36)
  {
    v37 = v32;
  }

  result = v97;
  if (__OFSUB__(v37, v97))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return result;
}

void sub_100A39C38(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&unk_1019FFD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v16)
  {
    (*(*v16 + 896))(v13);
    sub_100A49D68(&v11[*(v9 + 20)], v15, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v11, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v6 + 16))(v8, v15, v5);
    sub_100A47694(v15, type metadata accessor for CRLWPStorageCRDTData);
    v17 = CRAttributedString.attributedString.getter();
    (*(v6 + 8))(v8, v5);
    v18 = [v17 string];

    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();
    }

    [v18 crlwp_isAllWhitespaceInRange:{a1, a2}];
  }

  else
  {
    __break(1u);
  }
}

double sub_100A39F34@<D0>(uint64_t *a1@<X8>)
{
  sub_100A1B8A0(*v1, v12);
  a1[3] = &type metadata for CRLWPTextPresetData;
  a1[4] = sub_100967AAC();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = v24;
  *(v3 + 208) = v23;
  *(v3 + 224) = v4;
  *(v3 + 240) = v25;
  *(v3 + 256) = v26;
  v5 = v20;
  *(v3 + 144) = v19;
  *(v3 + 160) = v5;
  v6 = v22;
  *(v3 + 176) = v21;
  *(v3 + 192) = v6;
  v7 = v16;
  *(v3 + 80) = v15;
  *(v3 + 96) = v7;
  v8 = v18;
  *(v3 + 112) = v17;
  *(v3 + 128) = v8;
  v9 = v12[1];
  *(v3 + 16) = v12[0];
  *(v3 + 32) = v9;
  result = *&v13;
  v11 = v14;
  *(v3 + 48) = v13;
  *(v3 + 64) = v11;
  return result;
}

id sub_100A39FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = [v6 range];
  if (!a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a5)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = v13;
  v16 = objc_allocWithZone(CRLWPSearch);
  v17 = String._bridgeToObjectiveC()();
  aBlock[4] = a5;
  aBlock[5] = a6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_1007A5954;
  aBlock[3] = &unk_101892500;
  v18 = _Block_copy(aBlock);

  v19 = [v16 initWithString:v17 options:a3 hitBlock:v18 storage:v6 range:v14 searchCanvasDelegate:{v15, a4}];

  _Block_release(v18);

  sub_100A3A270(v19);
  if ([v19 isComplete])
  {

    return 0;
  }

  return v19;
}

id sub_100A3A270(void *a1)
{
  v2 = v1;
  v4 = [a1 storageChangeCount];
  if (v4 == [v2 changeCount])
  {
    v5 = [v2 range];
    v7 = v6;
    v8 = [a1 range];
    if (v5 > v8 || &v5[v7] < &v8[v9])
    {
      v43 = v2;
      v45 = objc_opt_self();
      v11 = [v45 _atomicIncrementAssertCount];
      v46.location = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v46);
      StaticString.description.getter();
      v44 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v12 = String._bridgeToObjectiveC()();

      v13 = [v12 lastPathComponent];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v17 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v11;
      v19 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v19;
      v20 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v20;
      *(inited + 72) = v44;
      *(inited + 136) = &type metadata for String;
      v21 = sub_1000053B0();
      *(inited + 112) = v14;
      *(inited + 120) = v16;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v21;
      *(inited + 152) = 2170;
      location = v46.location;
      *(inited + 216) = v19;
      *(inited + 224) = v20;
      *(inited + 192) = location;
      v23 = v44;
      v24 = location;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v26, "Expected search range to be within storage range.", 49, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v27 = swift_allocObject();
      v27[2] = 8;
      v27[3] = 0;
      v27[4] = 0;
      v27[5] = 0;
      v28 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v31 = String._bridgeToObjectiveC()();

      [v45 handleFailureInFunction:v29 file:v30 lineNumber:2170 isFatal:0 format:v31 args:v28];
    }

    v32 = [v2 range];
    v34 = v33;
    v49.location = [a1 range];
    v49.length = v35;
    v48.location = v32;
    v48.length = v34;
    v37 = NSIntersectionRange(v48, v49);
    result = v37.location;
    v46 = v37;
    if (v37.length >= 1)
    {
      result = [v2 wpKind];
      if (result != 7)
      {
        v38 = [a1 searchedString];
        if (!v38)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = String._bridgeToObjectiveC()();
        }

        v39 = [a1 string];
        v40 = [v38 crl_rangeOfString:v39 searchOptions:objc_msgSend(a1 updatingSearchRange:{"options"), &v46}];
        v42 = v41;

        if (v40 != NSNotFound.getter())
        {
          [a1 foundHitWithRange:{v40, v42}];
        }

        return [a1 setRange:{v46.location, v46.length}];
      }
    }
  }

  else
  {

    return [a1 setRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
  }

  return result;
}

void sub_100A3A854(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v5 = inited + 32;
    sub_100006370(0, &qword_101A0DAC0);
    sub_1005B981C(&qword_101A0DAC8);
    sub_1005B981C(&unk_1019F5670);
    swift_dynamicCast();
    *(inited + 96) = sub_100006370(0, &qword_101A0DAD0);
    *(inited + 104) = sub_10000FDE0(&qword_101A0DAD8, &qword_101A0DAD0);
    *(inited + 72) = a1;
    v6 = objc_opt_self();
    v7 = a1;
    v45 = v6;
    LODWORD(v8) = [v6 _atomicIncrementAssertCount];
    v49 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v49);
    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v12;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v13 = static OS_os_log.crlAssert;
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_10146CA70;
      *(v14 + 56) = &type metadata for Int32;
      *(v14 + 64) = &protocol witness table for Int32;
      *(v14 + 32) = v8;
      v15 = sub_100006370(0, &qword_1019F4D30);
      *(v14 + 96) = v15;
      v16 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v14 + 104) = v16;
      *(v14 + 72) = v47;
      *(v14 + 136) = &type metadata for String;
      v17 = sub_1000053B0();
      *(v14 + 112) = v11;
      *(v14 + 120) = v46;
      *(v14 + 176) = &type metadata for UInt;
      *(v14 + 184) = &protocol witness table for UInt;
      *(v14 + 144) = v17;
      *(v14 + 152) = 2158;
      v18 = v49;
      *(v14 + 216) = v15;
      *(v14 + 224) = v16;
      *(v14 + 192) = v18;
      v19 = v47;
      v20 = v18;
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v14);
      swift_setDeallocating();
      swift_arrayDestroy();
      v22 = static os_log_type_t.error.getter();
      sub_100005404(v13, &_mh_execute_header, v22, "Expected search class of type %@, instead recieved %@.", 54, 2, inited);

      type metadata accessor for __VaListBuilder();
      v8 = swift_allocObject();
      v8[2] = 8;
      v8[3] = 0;
      v23 = v8 + 3;
      v8[4] = 0;
      v8[5] = 0;
      v11 = *(inited + 16);
      v24 = inited;
      if (!v11)
      {
LABEL_31:
        v41 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v42 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v43 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v44 = String._bridgeToObjectiveC()();

        [v45 handleFailureInFunction:v42 file:v43 lineNumber:2158 isFatal:0 format:v44 args:v41];

        swift_setDeallocating();
        swift_arrayDestroy();
        return;
      }

      v25 = 0;
      inited = 40;
      while (1)
      {
        sub_100020E58((v5 + 40 * v25), *(v5 + 40 * v25 + 24));
        v26 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v27 = *v23;
        v28 = *(v26 + 16);
        v29 = __OFADD__(*v23, v28);
        v30 = *v23 + v28;
        if (v29)
        {
          break;
        }

        v31 = v8[4];
        if (v31 >= v30)
        {
          goto LABEL_23;
        }

        if (v31 + 0x4000000000000000 < 0)
        {
          goto LABEL_34;
        }

        inited = v5;
        v5 = v24;
        v32 = v8[5];
        if (2 * v31 > v30)
        {
          v30 = 2 * v31;
        }

        v8[4] = v30;
        if ((v30 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_35;
        }

        v33 = v26;
        v34 = swift_slowAlloc();
        v35 = v34;
        v8[5] = v34;
        if (v32)
        {
          if (v34 != v32 || v34 >= &v32[8 * v27])
          {
            memmove(v34, v32, 8 * v27);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v26 = v33;
          v24 = v5;
          v5 = inited;
          inited = 40;
LABEL_23:
          v35 = v8[5];
          if (!v35)
          {
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        v26 = v33;
        v24 = v5;
        v5 = inited;
        inited = 40;
        if (!v35)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_24:
        v37 = *(v26 + 16);
        if (v37)
        {
          v38 = (v26 + 32);
          v39 = *v23;
          while (1)
          {
            v40 = *v38++;
            *&v35[8 * v39] = v40;
            v39 = *v23 + 1;
            if (__OFADD__(*v23, 1))
            {
              break;
            }

            *v23 = v39;
            if (!--v37)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          break;
        }

LABEL_8:

        if (++v25 == v11)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      swift_once();
    }
  }

  v3 = v2;
  v48 = a1;
  sub_100A3A270(v3);
}

id sub_100A3AF40(void *a1)
{
  v2 = v1;
  v152 = sub_1005B981C(&unk_101A0DAA0);
  __chkstk_darwin(v152);
  v151 = &v142 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v150 = (&v142 - v6);
  v7 = sub_1005B981C(&unk_101A096B0);
  __chkstk_darwin(v7 - 8);
  v155 = &v142 - v8;
  v9 = sub_1005B981C(&unk_101A0DAB0);
  __chkstk_darwin(v9 - 8);
  v11 = &v142 - v10;
  v12 = sub_1005B981C(&unk_1019FFD10);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v154 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v159 = &v142 - v16;
  __chkstk_darwin(v17);
  v161 = &v142 - v18;
  v165 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v165);
  v20 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v21 - 8);
  v153 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v158 = &v142 - v24;
  __chkstk_darwin(v25);
  v160 = &v142 - v26;
  v156 = [objc_allocWithZone(type metadata accessor for CRLCommandGroup()) init];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v149 = v11;
    v28 = Strong;
    type metadata accessor for CRLWPShapeItem();
    v29 = swift_dynamicCastClass();
    if (v29)
    {
      v146 = v29;
      v148 = v28;
      if ([v2 canUserReplaceText])
      {
        v157 = a1;
        v30 = _swiftEmptyArrayStorage;
        v170 = _swiftEmptyArrayStorage;
        v168 = [v2 range];
        v169 = v31;
        if (v31 < 1)
        {
          goto LABEL_37;
        }

        v162 = (v13 + 8);
        v163 = (v13 + 16);
        v145 = _swiftEmptyArrayStorage;
        v164 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
        while (1)
        {
          v83 = *&v2[v164];
          if (!v83)
          {
            goto LABEL_82;
          }

          v84 = v168;
          (*(*v83 + 896))();
          v85 = v160;
          sub_100A49D68(&v20[*(v165 + 20)], v160, type metadata accessor for CRLWPStorageCRDTData);
          sub_100A47694(v20, type metadata accessor for CRLWPShapeItemCRDTData);
          v86 = *v163;
          v87 = v161;
          (*v163)(v161, v85, v12);
          sub_100A47694(v85, type metadata accessor for CRLWPStorageCRDTData);
          v88 = CRAttributedString.attributedString.getter();
          v89 = *v162;
          (*v162)(v87, v12);
          v90 = [v88 length];

          if (v84 >= v90)
          {
            goto LABEL_38;
          }

          v91 = v157;
          if (!v157)
          {
            goto LABEL_83;
          }

          v92 = v2;
          v93 = [v157 findString];
          if (!v93)
          {
            goto LABEL_84;
          }

          v2 = v93;
          v94 = [v91 options];
          v95 = *&v92[v164];
          if (!v95)
          {
            goto LABEL_85;
          }

          v96 = v94;
          (*(*v95 + 896))();
          v97 = v158;
          sub_100A49D68(&v20[*(v165 + 20)], v158, type metadata accessor for CRLWPStorageCRDTData);
          sub_100A47694(v20, type metadata accessor for CRLWPShapeItemCRDTData);
          v98 = v159;
          v86(v159, v97, v12);
          sub_100A47694(v97, type metadata accessor for CRLWPStorageCRDTData);
          v99 = CRAttributedString.attributedString.getter();
          v89(v98, v12);
          v100 = [v99 string];

          if (!v100)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v100 = String._bridgeToObjectiveC()();
          }

          v101 = [v100 crl_rangeOfString:v2 searchOptions:v96 updatingSearchRange:&v168];
          v103 = v102;

          if (v101 != NSNotFound.getter())
          {
            v104 = [objc_allocWithZone(CRLWPSelection) initWithRange:{v101, v103}];
            v2 = v92;
            if (!v104)
            {
              goto LABEL_49;
            }

            v81 = v104;
            v105 = [objc_allocWithZone(CRLWPSearchReference) initWithStorage:v92 selection:v104 selectionPath:0];
            if (!v105)
            {

              goto LABEL_49;
            }

            v147 = v103;
            v106 = v105;
            if (([v105 isReplaceable] & 1) == 0)
            {

              goto LABEL_49;
            }

            v143 = v106;
            v144 = v81;
            v107 = [v157 replaceString];
            if (!v107)
            {
              goto LABEL_87;
            }

            v81 = *&v92[v164];
            if (!v81)
            {
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              v77 = v156;
              v82 = v157;
              goto LABEL_44;
            }

            v108 = v107;
            (*(*v81 + 896))();
            v109 = v153;
            sub_100A49D68(&v20[*(v165 + 20)], v153, type metadata accessor for CRLWPStorageCRDTData);
            sub_100A47694(v20, type metadata accessor for CRLWPShapeItemCRDTData);
            v110 = v154;
            v86(v154, v109, v12);
            sub_100A47694(v109, type metadata accessor for CRLWPStorageCRDTData);
            v111 = CRAttributedString.attributedString.getter();
            v89(v110, v12);
            v112 = [v111 string];

            if (!v112)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v112 = String._bridgeToObjectiveC()();
            }

            v113 = [v157 options];
            v114 = v108;
            v115 = v108;
            v116 = v147;
            v2 = [v115 crl_stringByCapitalizingToMatchString:v112 range:v101 searchOptions:{v147, v113}];

            if (v2)
            {
              v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v119 = v118;

              if (v101 == NSNotFound.getter())
              {
                goto LABEL_80;
              }

              v2 = v119;
              v120 = v116 + v101;
              if (__OFADD__(v101, v116))
              {
                goto LABEL_81;
              }

              v121 = sub_1005B981C(&qword_101A0D850);
              (*(*(v121 - 8) + 56))(v149, 1, 1, v121);
              v122 = sub_1005B981C(&qword_101A06188);
              v123 = v155;
              (*(*(v122 - 8) + 56))(v155, 1, 1, v122);
              v124 = type metadata accessor for CRLWPTextString();
              v125 = objc_allocWithZone(v124);
              v126 = &v125[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
              *v126 = v117;
              *(v126 + 1) = v2;
              v126[16] = 0;
              v167.receiver = v125;
              v167.super_class = v124;
              v127 = v148;
              v128 = objc_msgSendSuper2(&v167, "init");
              v147 = type metadata accessor for CRLWPReplaceTextCommand(0);
              v129 = objc_allocWithZone(v147);
              v130 = v149;
              v131 = v150;
              *v150 = v101;
              *(v131 + 8) = v120;
              *(v131 + 16) = v128;
              v132 = v152;
              sub_10000BE14(v130, v131 + *(v152 + 64), &unk_101A0DAB0);
              sub_10000BE14(v123, v131 + *(v132 + 80), &unk_101A096B0);
              v133 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
              v134 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
              (*(*(v134 - 8) + 56))(&v129[v133], 1, 1, v134);
              v129[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalesceReplaceTextCommands] = 0;
              v129[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_didUseWritingTools] = 0;
              *&v129[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem] = v146;
              v135 = v151;
              sub_10000BE14(v131, v151, &unk_101A0DAA0);
              v136 = *(v135 + 16);
              v137 = *(v132 + 64);
              v138 = *(v132 + 80);
              v139 = &v129[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement];
              *v139 = *v135;
              *(v139 + 2) = v136;
              sub_10003DFF8(v135 + v137, &v139[*(v132 + 64)], &unk_101A0DAB0);
              sub_10003DFF8(v135 + v138, &v139[*(v132 + 80)], &unk_101A096B0);
              v166.receiver = v129;
              v166.super_class = v147;
              v140 = objc_msgSendSuper2(&v166, "init");
              sub_10000CAAC(v131, &unk_101A0DAA0);
              sub_10000CAAC(v155, &unk_101A096B0);
              sub_10000CAAC(v149, &unk_101A0DAB0);
              v141 = v140;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v145 = v170;
            }

            else
            {
            }
          }

          v2 = v92;
LABEL_49:
          if (v169 < 1)
          {
            goto LABEL_38;
          }
        }
      }

      return v156;
    }
  }

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = type metadata accessor for CRLWPStorage();
  v34 = sub_100A40278(&unk_101A27F90, v33, type metadata accessor for CRLWPStorage);
  *(inited + 32) = v2;
  v165 = inited + 32;
  *(inited + 64) = v34;
  v35 = objc_opt_self();
  v36 = v2;
  v163 = v35;
  LODWORD(v2) = [v35 _atomicIncrementAssertCount];
  v171 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v171);
  StaticString.description.getter();
  v164 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  v38 = [v37 lastPathComponent];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (qword_1019F20A0 != -1)
  {
LABEL_76:
    swift_once();
  }

  v42 = static OS_os_log.crlAssert;
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_10146CA70;
  *(v43 + 56) = &type metadata for Int32;
  *(v43 + 64) = &protocol witness table for Int32;
  *(v43 + 32) = v2;
  v44 = sub_100006370(0, &qword_1019F4D30);
  *(v43 + 96) = v44;
  v45 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v43 + 104) = v45;
  v46 = v164;
  *(v43 + 72) = v164;
  *(v43 + 136) = &type metadata for String;
  v47 = sub_1000053B0();
  *(v43 + 112) = v39;
  *(v43 + 120) = v41;
  *(v43 + 176) = &type metadata for UInt;
  *(v43 + 184) = &protocol witness table for UInt;
  *(v43 + 144) = v47;
  *(v43 + 152) = 2191;
  v48 = v171;
  *(v43 + 216) = v44;
  *(v43 + 224) = v45;
  *(v43 + 192) = v48;
  v49 = v46;
  v50 = v48;
  v51 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v43);
  swift_setDeallocating();
  v164 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v52 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v52, "Text storage has no parent info: %@", 35, 2, inited);

  type metadata accessor for __VaListBuilder();
  v53 = swift_allocObject();
  v53[2] = 8;
  v53[3] = 0;
  v54 = v53 + 3;
  v53[4] = 0;
  v53[5] = 0;
  v2 = *(inited + 16);
  v39 = inited;
  if (!v2)
  {
LABEL_33:
    v70 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v71 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v72 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v73 = String._bridgeToObjectiveC()();

    [v163 handleFailureInFunction:v71 file:v72 lineNumber:2191 isFatal:0 format:v73 args:v70];

    swift_setDeallocating();
    swift_arrayDestroy();
    return v156;
  }

  inited = 0;
  while (1)
  {
    v55 = (v165 + 40 * inited);
    v41 = v55[4];
    sub_100020E58(v55, v55[3]);
    v56 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v30 = *v54;
    v57 = *(v56 + 16);
    v58 = __OFADD__(*v54, v57);
    v59 = *v54 + v57;
    if (v58)
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v60 = v53[4];
    if (v60 >= v59)
    {
      goto LABEL_25;
    }

    if (v60 + 0x4000000000000000 < 0)
    {
      goto LABEL_74;
    }

    v41 = v53[5];
    if (2 * v60 > v59)
    {
      v59 = 2 * v60;
    }

    v53[4] = v59;
    if ((v59 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_75;
    }

    v61 = v39;
    v62 = v56;
    v63 = swift_slowAlloc();
    v64 = v63;
    v53[5] = v63;
    if (v41)
    {
      if (v63 != v41 || v63 >= &v41[8 * v30])
      {
        memmove(v63, v41, 8 * v30);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v56 = v62;
      v39 = v61;
LABEL_25:
      v64 = v53[5];
      if (!v64)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    v56 = v62;
    v39 = v61;
    if (!v64)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_26:
    v66 = *(v56 + 16);
    if (v66)
    {
      break;
    }

LABEL_10:

    if (++inited == v2)
    {
      goto LABEL_33;
    }
  }

  v67 = (v56 + 32);
  v68 = *v54;
  while (1)
  {
    v69 = *v67++;
    *&v64[8 * v68] = v69;
    v68 = *v54 + 1;
    if (__OFADD__(*v54, 1))
    {
      break;
    }

    *v54 = v68;
    if (!--v66)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_37:
  v145 = v30;
LABEL_38:
  v75 = v145;
  if (v145 >> 62)
  {
    v76 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v76 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v156;
  if (v76 < 1)
  {
  }

  else
  {

    v79 = sub_100FE1518(v78);
    v80 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
    swift_beginAccess();
    v81 = v77 + v80;
    sub_100799F10(v79);
    swift_endAccess();
    v82 = v157;
    if (!v157)
    {
      goto LABEL_88;
    }

    if (v75 >> 62)
    {
      v81 = _CocoaArrayWrapper.endIndex.getter();

      if (v81 < 0)
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:

        __break(1u);
      }

      goto LABEL_89;
    }

    v81 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);

LABEL_44:
    [v82 appendReplacementCount:v81];
  }

  return v77;
}

uint64_t sub_100A3C2BC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for CRLBoardItem(0);
    for (i = v1; ; i = v5)
    {
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = (*((swift_isaMask & *v3) + 0x160))();
        swift_unknownObjectRelease();
        if (v4)
        {
          swift_unknownObjectRelease();
          return 0;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v5 = [i parentInfo];
      swift_unknownObjectRelease();
      if (!v5)
      {
        return 1;
      }

      swift_unknownObjectRetain();
    }
  }

  return 1;
}

void sub_100A3C3CC(CFIndex a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_1019FFD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v14 - 8);
  v65 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v54 - v18;
  v66 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v20 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v20)
  {
    goto LABEL_15;
  }

  (*(*v20 + 896))(v17);
  sub_100A49D68(&v13[*(v11 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v13, type metadata accessor for CRLWPShapeItemCRDTData);
  v21 = *(v5 + 16);
  v64 = v5 + 16;
  v63 = v21;
  v21(v10, v19, v4);
  sub_100A47694(v19, type metadata accessor for CRLWPStorageCRDTData);
  v22 = CRAttributedString.attributedString.getter();
  v25 = *(v5 + 8);
  v24 = v5 + 8;
  v23 = v25;
  v25(v10, v4);
  v26 = [v22 length];

  if ((a1 & 0x8000000000000000) == 0 && v26 >= a1)
  {
    if (v26 <= a1)
    {
      return;
    }

    goto LABEL_9;
  }

  v56 = v26;
  v57 = v23;
  v58 = v11;
  v59 = v2;
  v60 = v7;
  v61 = v24;
  v62 = a1;
  v55 = objc_opt_self();
  v27 = [v55 _atomicIncrementAssertCount];
  v67 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v67);
  StaticString.description.getter();
  v54 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  v29 = [v28 lastPathComponent];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v33 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v27;
  v35 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v35;
  v36 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v36;
  v37 = v54;
  *(inited + 72) = v54;
  *(inited + 136) = &type metadata for String;
  v38 = sub_1000053B0();
  *(inited + 112) = v30;
  *(inited + 120) = v32;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v38;
  *(inited + 152) = 2257;
  v39 = v67;
  *(inited + 216) = v35;
  *(inited + 224) = v36;
  *(inited + 192) = v39;
  v40 = v37;
  v41 = v39;
  v42 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v43 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v43, "Character index is outside storage bounds", 41, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v44 = swift_allocObject();
  v44[2] = 8;
  v44[3] = 0;
  v44[4] = 0;
  v44[5] = 0;
  v45 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  [v55 handleFailureInFunction:v46 file:v47 lineNumber:2257 isFatal:0 format:v48 args:v45];

  a1 = v62;
  v7 = v60;
  v2 = v59;
  v11 = v58;
  v23 = v57;
  if (v56 > v62)
  {
LABEL_9:
    v49 = *(v2 + v66);
    if (!v49)
    {
LABEL_16:
      __break(1u);
      return;
    }

    (*(*v49 + 896))();
    v50 = v65;
    sub_100A49D68(&v13[*(v11 + 20)], v65, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v13, type metadata accessor for CRLWPShapeItemCRDTData);
    v63(v7, v50, v4);
    sub_100A47694(v50, type metadata accessor for CRLWPStorageCRDTData);
    v51 = CRAttributedString.attributedString.getter();
    v23(v7, v4);
    v52 = [v51 string];

    if (!v52)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = String._bridgeToObjectiveC()();
    }

    RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v52, a1);

    if (!__OFADD__(RangeOfComposedCharactersAtIndex.location, RangeOfComposedCharactersAtIndex.length))
    {
      return;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

void sub_100A3CC44(uint64_t a1)
{
  v97 = a1;
  v2 = sub_1005B981C(&unk_1019FFD10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v88 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v80 - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v87 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v80 - v15;
  v17 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v96 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v18)
  {
    __break(1u);
    goto LABEL_46;
  }

  (*(*v18 + 896))(v14);
  v95 = v8;
  sub_100A49D68(&v10[*(v8 + 20)], v16, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v10, type metadata accessor for CRLWPShapeItemCRDTData);
  v19 = v3 + 16;
  v93 = *(v3 + 16);
  v93(v7, v16, v2);
  sub_100A47694(v16, type metadata accessor for CRLWPStorageCRDTData);
  v20 = CRAttributedString.attributedString.getter();
  v22 = *(v3 + 8);
  v21 = v3 + 8;
  v92 = v22;
  v22(v7, v2);
  v94 = [v20 length];

  v89 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = v97;
  v98 = inited + 32;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  v24 = *(v96 + v17);
  if (!v24)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v25 = inited;
  (*(*v24 + 896))();
  sub_100A49D68(&v10[*(v95 + 20)], v16, type metadata accessor for CRLWPStorageCRDTData);
  v90 = v10;
  sub_100A47694(v10, type metadata accessor for CRLWPShapeItemCRDTData);
  v26 = v93;
  v93(v7, v16, v2);
  sub_100A47694(v16, type metadata accessor for CRLWPStorageCRDTData);
  v27 = CRAttributedString.attributedString.getter();
  v91 = v2;
  v86 = v21;
  v28 = v92;
  v92(v7, v2);
  v29 = [v27 length];

  v25[12] = &type metadata for Int;
  v25[13] = &protocol witness table for Int;
  v25[9] = v29;
  v30 = v97;
  v31 = v25;
  if (v97 < 0 || v94 < v97)
  {
    v82 = v19;
    v83 = v17;
    v81 = objc_opt_self();
    v34 = [v81 _atomicIncrementAssertCount];
    v99 = [objc_allocWithZone(NSString) init];
    sub_100604538(v25, &v99);
    StaticString.description.getter();
    v85 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    v36 = [v35 lastPathComponent];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v38;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v39 = static OS_os_log.crlAssert;
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_10146CA70;
      *(v40 + 56) = &type metadata for Int32;
      *(v40 + 64) = &protocol witness table for Int32;
      *(v40 + 32) = v34;
      v41 = sub_100006370(0, &qword_1019F4D30);
      *(v40 + 96) = v41;
      v42 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v40 + 104) = v42;
      v43 = v85;
      *(v40 + 72) = v85;
      *(v40 + 136) = &type metadata for String;
      v44 = sub_1000053B0();
      v45 = v84;
      *(v40 + 112) = v37;
      *(v40 + 120) = v45;
      *(v40 + 176) = &type metadata for UInt;
      *(v40 + 184) = &protocol witness table for UInt;
      *(v40 + 144) = v44;
      *(v40 + 152) = 2273;
      v46 = v99;
      *(v40 + 216) = v41;
      *(v40 + 224) = v42;
      *(v40 + 192) = v46;
      v47 = v43;
      v48 = v46;
      v49 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v40);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v50 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v50, "Character index is outside storage bounds %lu / %lu", 51, 2, v31);

      type metadata accessor for __VaListBuilder();
      v51 = swift_allocObject();
      v51[2] = 8;
      v51[3] = 0;
      v52 = v51 + 3;
      v51[4] = 0;
      v51[5] = 0;
      v89 = v31;
      v53 = *(v31 + 16);
      if (!v53)
      {
LABEL_32:
        v68 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v69 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v70 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v71 = String._bridgeToObjectiveC()();

        [v81 handleFailureInFunction:v69 file:v70 lineNumber:2273 isFatal:0 format:v71 args:v68];

        v33 = v96;
        v30 = v97;
        v17 = v83;
        v28 = v92;
        v26 = v93;
        goto LABEL_33;
      }

      v31 = 0;
      v34 = 40;
      while (1)
      {
        sub_100020E58((v98 + 40 * v31), *(v98 + 40 * v31 + 24));
        v54 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v55 = *v52;
        v56 = *(v54 + 16);
        v57 = __OFADD__(*v52, v56);
        v58 = *v52 + v56;
        if (v57)
        {
          break;
        }

        v59 = v51[4];
        if (v59 >= v58)
        {
          goto LABEL_24;
        }

        if (v59 + 0x4000000000000000 < 0)
        {
          goto LABEL_42;
        }

        v60 = v51[5];
        if (2 * v59 > v58)
        {
          v58 = 2 * v59;
        }

        v51[4] = v58;
        if ((v58 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_43;
        }

        v37 = v54;
        v61 = swift_slowAlloc();
        v62 = v61;
        v51[5] = v61;
        if (v60)
        {
          if (v61 != v60 || v61 >= &v60[8 * v55])
          {
            memmove(v61, v60, 8 * v55);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v54 = v37;
LABEL_24:
          v62 = v51[5];
          if (!v62)
          {
            goto LABEL_31;
          }

          goto LABEL_25;
        }

        v54 = v37;
        if (!v62)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_25:
        v64 = *(v54 + 16);
        if (v64)
        {
          v65 = (v54 + 32);
          v66 = *v52;
          while (1)
          {
            v67 = *v65++;
            *&v62[8 * v66] = v67;
            v66 = *v52 + 1;
            if (__OFADD__(*v52, 1))
            {
              break;
            }

            *v52 = v66;
            if (!--v64)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
          break;
        }

LABEL_9:

        if (++v31 == v53)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      swift_once();
    }
  }

  v33 = v96;
LABEL_33:
  v72 = v30 - 1;
  v74 = v90;
  v73 = v91;
  if (v30 >= 1 && v94 >= v30)
  {
    v75 = *(v33 + v17);
    if (v75)
    {
      (*(*v75 + 896))(v32);
      v76 = v87;
      sub_100A49D68(v74 + *(v95 + 20), v87, type metadata accessor for CRLWPStorageCRDTData);
      sub_100A47694(v74, type metadata accessor for CRLWPShapeItemCRDTData);
      v77 = v88;
      v26(v88, v76, v73);
      sub_100A47694(v76, type metadata accessor for CRLWPStorageCRDTData);
      v78 = CRAttributedString.attributedString.getter();
      v28(v77, v73);
      v79 = [v78 string];

      if (!v79)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = String._bridgeToObjectiveC()();
      }

      CFStringGetRangeOfComposedCharactersAtIndex(v79, v72);

      return;
    }

LABEL_47:
    __break(1u);
  }
}

void sub_100A3D70C(uint64_t a1, char a2, char a3)
{
  v7 = sub_1005B981C(&unk_1019FFD10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v18)
  {
    (*(*v18 + 896))(v15);
    sub_100A49D68(&v13[*(v11 + 20)], v17, type metadata accessor for CRLWPStorageCRDTData);
    sub_100A47694(v13, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v8 + 16))(v10, v17, v7);
    sub_100A47694(v17, type metadata accessor for CRLWPStorageCRDTData);
    v19 = CRAttributedString.attributedString.getter();
    (*(v8 + 8))(v10, v7);
    v20 = [v19 string];

    v21 = v20;
    v22 = v20;
    if (!v20)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = String._bridgeToObjectiveC()();

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = String._bridgeToObjectiveC()();
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      v23 = v20;
      v24 = [v21 crl_range];
      v26 = v25;

      [v22 crlwp_rangeOfWordAtCharacterIndex:a1 range:v24 includePreviousWord:v26 includeHyphenation:{a2 & 1, a3 & 1}];
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100A3DA74()
{
  v41 = sub_1005B981C(&unk_1019FFD10);
  v0 = *(v41 - 8);
  __chkstk_darwin(v41);
  v2 = &v34 - v1;
  v43 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v43);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A0D850);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  *(&v34 - v9) = _swiftEmptySetSingleton;
  v12 = *(v11 + 44);
  sub_10068D144();
  CRAttributedString.Attributes.init()();
  KeyPath = swift_getKeyPath();
  sub_100E6DE34(v52, 0x656D614E746E6F66, 0xE800000000000000);

  v48 = &type metadata for CRLWPCharacterScope;
  v49 = &type metadata for CRLWPFontNameAttribute;
  v50 = sub_100962324();
  v51 = KeyPath;
  swift_getKeyPath();

  v52[0] = sub_100CB23B4(0x63697465766C6548, 0xE900000000000061);
  v52[1] = v14;
  v53 = 0;
  sub_1005B981C(qword_101A0CF60);
  sub_1009623E4();
  CRAttributedString.Attributes.subscript.setter();

  v15 = swift_getKeyPath();
  sub_100E6DE34(v52, 0x657A6953746E6F66, 0xE800000000000000);

  v44 = &type metadata for CRLWPCharacterScope;
  v45 = &type metadata for CRLWPFontSizeAttribute;
  v46 = sub_10082465C();
  v47 = v15;
  swift_getKeyPath();
  LODWORD(v52[0]) = 1096810496;
  BYTE4(v52[0]) = 0;
  sub_1008246B0();
  v39 = v12;
  v16 = v42;
  v17 = CRAttributedString.Attributes.subscript.setter();
  v40 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v18 = *(v16 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v18)
  {
    goto LABEL_14;
  }

  (*(*v18 + 896))(v17);
  sub_100A49D68(&v4[*(v43 + 20)], v7, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
  v19 = v41;
  v37 = *(v0 + 16);
  v37(v2, v7, v41);
  v38 = v7;
  sub_100A47694(v7, type metadata accessor for CRLWPStorageCRDTData);
  v20 = CRAttributedString.attributedString.getter();
  v21 = *(v0 + 8);
  v21(v2, v19);
  v22 = [v20 length];

  if (v22 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v36 = v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v35 = v4;
    v25 = v19;
    v26 = v16;
    ObjectType = swift_getObjectType();
    v28 = swift_conformsToProtocol2();
    if (!v28)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v29 = sub_1012778D4(ObjectType, v28);

    v16 = v26;
    v19 = v25;
    v4 = v35;
    if ((v29 & 1) == 0)
    {
      sub_10000CAAC(v10, &qword_101A0D850);
      return;
    }
  }

  v30 = *(v16 + v40);
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  (*(*v30 + 896))();
  v31 = v38;
  sub_100A49D68(&v4[*(v43 + 20)], v38, type metadata accessor for CRLWPStorageCRDTData);
  sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
  v37(v2, v31, v19);
  sub_100A47694(v31, type metadata accessor for CRLWPStorageCRDTData);
  v32 = CRAttributedString.count.getter();
  v36(v2, v19);
  if (v32 >= v22)
  {
    v33 = v22;
  }

  else
  {
    v33 = v32;
  }

  sub_100A33634(&v10[v39], v32 & (v32 >> 63), v33);
  sub_10000CAAC(v10, &qword_101A0D850);
  *(v16 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) = 0;
}

uint64_t sub_100A3E0D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100A3E11C(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_100A3E188(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100A3E1D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100A3E2E0()
{
  sub_100A4A3E4(319, &qword_101A0CFE8, &type metadata for String, &protocol witness table for String, &type metadata accessor for Set);
  if (v0 <= 0x3F)
  {
    sub_100A3E6F4(319, &qword_101A0CFF0, &type metadata accessor for CRAttributedString.Attributes);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100A3E474()
{
  sub_100A3E544();
  if (v0 <= 0x3F)
  {
    sub_10084E720();
    if (v1 <= 0x3F)
    {
      sub_100749390(319, &qword_1019F5D58, &type metadata accessor for AnyCRValue);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100A3E544()
{
  if (!qword_101A0D060[0])
  {
    sub_1007AB290();
    v0 = type metadata accessor for CRExtensible();
    if (!v1)
    {
      atomic_store(v0, qword_101A0D060);
    }
  }
}

void sub_100A3E628()
{
  sub_100A3E6F4(319, qword_101A0D110, &type metadata accessor for CRAttributedString);
  if (v0 <= 0x3F)
  {
    sub_100749390(319, &qword_1019F48F8, &type metadata accessor for AnyCRDT);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100A3E6F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_10068D144();
    v7 = a3(a1, &type metadata for CRLTextAttributeScope, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *sub_100A3E758()
{
  v1 = [objc_allocWithZone(type metadata accessor for CRLWPParagraphStyle()) init];
  v2 = sub_100A41EDC(v0);
  v3 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontName];
  *v3 = v2;
  v3[1] = v4;

  sub_100A42510(v0);
  v5 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_fontSize];
  *v5 = v6;
  v5[4] = 0;
  v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_bold] = sub_100A42890(v0) & 1;
  v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_italic] = sub_100A42C08(v0) & 1;
  v7 = sub_100A42F80(v0);
  v8 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline];
  *v8 = v7;
  v8[8] = 0;
  v9 = sub_100A43300(v0);
  v10 = &v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough];
  *v10 = v9;
  v10[8] = 0;
  v11 = sub_100A43680(v0);
  v12 = *&v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill];
  *&v1[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill] = v11;

  *&v1[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment] = sub_100A43BEC(v0);
  return v1;
}

uint64_t sub_100A3E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = NSNotFound.getter();
  if (result != a5)
  {
    v9 = a5 + a6;
    if (__OFADD__(a5, a6))
    {
      __break(1u);
    }

    else
    {
      sub_1005B981C(&qword_101A0DA98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 32) = a5;
      *(inited + 40) = v9;
      swift_beginAccess();
      sub_100799B44(inited);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_100A3E944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  if (a2)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v12(v13, v15, a3, a4, a5, a6, a7);
}

uint64_t sub_100A3EA04(char *a1, char *a2, uint64_t a3, unsigned __int8 a4)
{
  KeyPath = swift_getKeyPath();
  v10 = sub_10095CB84(KeyPath, a1, a2, a3);
  v12 = v11;

  if (v12)
  {
    if (!*(v10 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v4 = *(v10 + 32);
    sub_1000C1080(v10, 1);
  }

  else
  {
    v4 = *&v10;
  }

  v13 = swift_getKeyPath();
  a3 = sub_100957838(v13, a1, a2, a3);
  v15 = v14;

  if (v15)
  {
    if ((a3 & 0xC000000000000001) == 0)
    {
      if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v17 = *(a3 + 32);
      goto LABEL_9;
    }

LABEL_19:
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v18 = v17;
    sub_1000C10AC(a3, 1);
    a3 = v18;
  }

  v19 = [a3 referenceColor];

  *&v20 = v4;
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      v21 = sub_10084B4FC(v19, v20);
    }

    else
    {
      v21 = sub_10084B50C(v19, v20);
    }
  }

  else if (a4)
  {
    v21 = sub_10084B394(v19, v4);
  }

  else
  {
    v21 = sub_10084B230(v19, v4);
  }

  v22 = v21;

  return v22;
}

uint64_t sub_100A3EB88(uint64_t a1)
{
  v76 = sub_1005B981C(qword_101A0CF60);
  v72 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v74 = v69 - v4;
  v5 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v5 - 8);
  v7 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = v69 - v9;
  v70 = sub_1005B981C(&unk_101A09540);
  v77 = *(v70 - 8);
  __chkstk_darwin(v70);
  v86 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v85 = v69 - v12;
  __chkstk_darwin(v13);
  v81 = v69 - v14;
  __chkstk_darwin(v15);
  v88 = v69 - v16;
  v80 = sub_1005B981C(&unk_101A0D910);
  __chkstk_darwin(v80);
  v79 = v69 - v17;
  v18 = sub_1005B981C(&unk_101A09550);
  v87 = *(v18 - 8);
  __chkstk_darwin(v18);
  v73 = v69 - v19;
  v84 = sub_1005B981C(&qword_101A0D920);
  __chkstk_darwin(v84);
  v78 = v69 - v20;
  v71 = sub_1005B981C(&qword_101A0D928);
  __chkstk_darwin(v71);
  v83 = v69 - v21;
  sub_1005B981C(&unk_1019FFD10);
  v69[1] = a1;
  v22 = CRAttributedString.attributedString.getter();
  v23 = [v22 string];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = CRAttributedString.attributedString.getter();
  v28 = [v27 string];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  if (v24 == v29 && v26 == v31)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v33 = 0;
    if ((v32 & 1) == 0)
    {
      return v33;
    }
  }

  v34 = v78;
  CRAttributedString.runs.getter();
  v35 = *(v84 + 52);
  CRAttributedString.runs.getter();
  v84 = v18;
  v36 = v87[4];
  v37 = v73;
  v36(v73, v34, v84);
  sub_10001A2F8(&qword_101A0D930, &unk_101A09550);
  v38 = v83;
  dispatch thunk of Sequence.makeIterator()();
  v39 = &v34[v35];
  v40 = v38;
  v36(v37, v39, v84);
  v41 = v71;
  v78 = *(v71 + 52);
  dispatch thunk of Sequence.makeIterator()();
  v71 = *(v41 + 56);
  v38[v71] = 0;
  v42 = sub_10001A2F8(&qword_101A0D938, &unk_101A09550);
  v43 = v70;
  v87 = (v77 + 6);
  v44 = (v77 + 4);
  ++v72;
  v73 = v42;
  ++v77;
  while (1)
  {
    v45 = v82;
    dispatch thunk of IteratorProtocol.next()();
    v46 = *v87;
    if ((*v87)(v45, 1, v43) == 1)
    {
      v7 = v45;
LABEL_14:
      v66 = v71;
      sub_10000CAAC(v7, &unk_101A0D900);
      v33 = 1;
      *(v40 + v66) = 1;
      goto LABEL_16;
    }

    v47 = *v44;
    (*v44)(v88, v45, v43);
    dispatch thunk of IteratorProtocol.next()();
    if (v46(v7, 1, v43) == 1)
    {
      (*v77)(v88, v43);
      goto LABEL_14;
    }

    v48 = v81;
    v47(v81, v7, v43);
    v49 = v79;
    v50 = *(v80 + 48);
    v47(v79, v88, v43);
    v47(&v49[v50], v48, v43);
    v47(v85, v49, v43);
    v47(v86, &v49[v50], v43);
    v51 = CRAttributedString.Runs.Run.range.getter();
    v53 = v52;
    if (v51 != CRAttributedString.Runs.Run.range.getter() || v53 != v54)
    {
      break;
    }

    v55 = v7;
    v56 = v74;
    v57 = v85;
    CRAttributedString.Runs.Run.attributes.getter();
    v58 = v75;
    v59 = v86;
    CRAttributedString.Runs.Run.attributes.getter();
    sub_10068D144();
    v60 = static CRAttributedString.Attributes.== infix(_:_:)();
    v61 = *v72;
    v62 = v58;
    v63 = v76;
    (*v72)(v62, v76);
    v64 = v56;
    v7 = v55;
    v61(v64, v63);
    v65 = *v77;
    (*v77)(v59, v43);
    v65(v57, v43);
    v40 = v83;
    if ((v60 & 1) == 0)
    {
      v33 = 0;
      goto LABEL_16;
    }
  }

  v67 = *v77;
  (*v77)(v86, v43);
  v67(v85, v43);
  v33 = 0;
  v40 = v83;
LABEL_16:
  sub_10000CAAC(v40, &qword_101A0D928);
  return v33;
}

uint64_t sub_100A3F464()
{
  qword_101AD6FB0 = 97;
  *algn_101AD6FB8 = 0xE100000000000000;
  qword_101AD6FC0 = swift_getKeyPath();
  unk_101AD6FC8 = 98;
  qword_101AD6FD0 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD6FD8 = result;
  return result;
}

uint64_t sub_100A3F4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100A3EB88(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = a1 + *(a3 + 20);

  return sub_100A3EB88(v5);
}

uint64_t sub_100A3F524@<X0>(void *a1@<X8>)
{
  if (qword_1019F1AD8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *algn_101AD6FB8;
  v3 = qword_101AD6FC0;
  v2 = unk_101AD6FC8;
  v4 = qword_101AD6FD0;
  v5 = qword_101AD6FD8;
  *a1 = qword_101AD6FB0;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_100A3F5C8(uint64_t a1)
{
  v2 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return static CRStruct_2.fieldKeys.getter(a1, v2);
}

uint64_t sub_100A3F644(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_100A3F6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10068D144();
  CRAttributedString.init()();
  result = CRAttributedString.init(_:)();
  *(a2 + *(a1 + 24)) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100A3F718(uint64_t a1)
{
  v2 = sub_100A40278(&qword_101A0D160, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_100A3F788(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_100A3F808(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.actionUndoingDifference(from:)(a1, a2, v4);
}

uint64_t sub_100A3F890(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.apply(_:)(a1, a2, v4);
}

uint64_t sub_100A3F910(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.hasDelta(from:)(a1, a2, v4);
}

uint64_t sub_100A3F990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.delta(_:from:)(a1, a2, a3, v6);
}

uint64_t sub_100A3FA28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_100A3FAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.merge(delta:)(a1, a2, v4);
}

uint64_t sub_100A3FB28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A3FBB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100A3FC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_100A3FCD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_100A3FD50()
{
  sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.needToFinalizeTimestamps()();
}

uint64_t sub_100A3FDC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_100A3FE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_100A3FEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.merge(_:)(a1, a2, v4);
}

uint64_t sub_100A40160(uint64_t a1)
{
  v2 = sub_100A40278(&qword_101A0D9A8, 255, type metadata accessor for CRLWPStorageCRDTData);

  return CRStruct_2.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100A40278(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100A40484()
{
  result = qword_101A0D1A0;
  if (!qword_101A0D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D1A0);
  }

  return result;
}

unint64_t sub_100A40508(uint64_t a1)
{
  result = sub_1008246B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A40534()
{
  result = qword_101A0D1F8;
  if (!qword_101A0D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D1F8);
  }

  return result;
}

unint64_t sub_100A4058C()
{
  result = qword_101A0D200;
  if (!qword_101A0D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D200);
  }

  return result;
}

unint64_t sub_100A405E4()
{
  result = qword_101A0D208;
  if (!qword_101A0D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D208);
  }

  return result;
}

unint64_t sub_100A4076C()
{
  result = qword_101A0D238;
  if (!qword_101A0D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D238);
  }

  return result;
}

unint64_t sub_100A407C4()
{
  result = qword_101A0D240;
  if (!qword_101A0D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D240);
  }

  return result;
}

unint64_t sub_100A4081C()
{
  result = qword_101A0D248;
  if (!qword_101A0D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D248);
  }

  return result;
}

unint64_t sub_100A40874()
{
  result = qword_101A0D250;
  if (!qword_101A0D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D250);
  }

  return result;
}

unint64_t sub_100A408CC()
{
  result = qword_101A0D258;
  if (!qword_101A0D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D258);
  }

  return result;
}

unint64_t sub_100A40924()
{
  result = qword_101A0D260;
  if (!qword_101A0D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D260);
  }

  return result;
}

uint64_t sub_100A40A54(uint64_t a1)
{
  *(a1 + 8) = sub_100A40278(&qword_101A0D288, 255, type metadata accessor for CRLWPHyperlinkSmartFieldData);
  result = sub_100A40278(&qword_101A0D290, 255, type metadata accessor for CRLWPHyperlinkSmartFieldData);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100A40AE4()
{
  result = qword_101A0D298;
  if (!qword_101A0D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D298);
  }

  return result;
}

unint64_t sub_100A40B5C(uint64_t a1)
{
  result = sub_1008244FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A40B88()
{
  result = qword_101A0D2F0;
  if (!qword_101A0D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D2F0);
  }

  return result;
}

unint64_t sub_100A40BDC(uint64_t a1)
{
  result = sub_100824608();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A40C08()
{
  result = qword_101A0D348;
  if (!qword_101A0D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D348);
  }

  return result;
}

unint64_t sub_100A40D30(uint64_t a1)
{
  result = sub_100824758();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A40D5C()
{
  result = qword_101A0D3C0;
  if (!qword_101A0D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D3C0);
  }

  return result;
}

unint64_t sub_100A40E84(uint64_t a1)
{
  result = sub_1009622D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A40EB0()
{
  result = qword_101A0D438;
  if (!qword_101A0D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D438);
  }

  return result;
}

unint64_t sub_100A40F98(uint64_t a1)
{
  result = sub_1009623E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A40FC4()
{
  result = qword_101A0D4A8;
  if (!qword_101A0D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D4A8);
  }

  return result;
}

unint64_t sub_100A41064(uint64_t a1)
{
  result = sub_1008248F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A41090()
{
  result = qword_101A0D520;
  if (!qword_101A0D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D520);
  }

  return result;
}

unint64_t sub_100A41170()
{
  result = qword_101A0D540;
  if (!qword_101A0D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D540);
  }

  return result;
}

unint64_t sub_100A411D0(uint64_t a1)
{
  result = sub_1009621D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A411FC()
{
  result = qword_101A0D598;
  if (!qword_101A0D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D598);
  }

  return result;
}

unint64_t sub_100A41274(uint64_t a1)
{
  result = sub_10096212C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A412A0()
{
  result = qword_101A0D5F0;
  if (!qword_101A0D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D5F0);
  }

  return result;
}

unint64_t sub_100A412F4(uint64_t a1)
{
  result = sub_100962084();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A41320()
{
  result = qword_101A0D648;
  if (!qword_101A0D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D648);
  }

  return result;
}

unint64_t sub_100A413C4()
{
  result = qword_101A0D650;
  if (!qword_101A0D650)
  {
    sub_1005C4E5C(&qword_101A0D658);
    sub_10000FDE0(&qword_101A0D660, &qword_101A0D668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D650);
  }

  return result;
}

unint64_t sub_100A41474(uint64_t a1)
{
  result = sub_100824848();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A414A0()
{
  result = qword_101A0D6C0;
  if (!qword_101A0D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D6C0);
  }

  return result;
}

unint64_t sub_100A415C8(uint64_t a1)
{
  result = sub_100962228();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100A415F4()
{
  result = qword_101A0D738;
  if (!qword_101A0D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D738);
  }

  return result;
}

unint64_t sub_100A4171C(uint64_t a1)
{
  result = sub_1009624A4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100A417D4(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1005B981C(&unk_101A0B780);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = *(a1 + 8);
  v34 = *a1;
  v35 = v14;
  v15 = *(a2 + 8);
  v32 = *a2;
  v33 = v15;
  sub_1007AB290();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  v30 = v7;
  v31 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v16 = *(v31 + 20);
  v17 = *(v11 + 48);
  sub_10000BE14(a1 + v16, v13, &unk_1019F33C0);
  sub_10000BE14(a2 + v16, &v13[v17], &unk_1019F33C0);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_10000BE14(v13, v10, &unk_1019F33C0);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      v21 = &v13[v17];
      v22 = v30;
      (*(v5 + 32))(v30, v21, v4);
      sub_100A40278(&qword_101A00190, 255, &type metadata accessor for URL);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v5 + 8);
      v24(v22, v4);
      v24(v10, v4);
      sub_10000CAAC(v13, &unk_1019F33C0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_10000CAAC(v13, &unk_101A0B780);
    goto LABEL_8;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_10000CAAC(v13, &unk_1019F33C0);
LABEL_11:
  v25 = v31;
  v26 = *(v31 + 24);
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if (v27 == *v29 && v28 == v29[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v19 = sub_100B3216C(*(a1 + *(v25 + 28)), *(a2 + *(v25 + 28)));
    return v19 & 1;
  }

LABEL_8:
  v19 = 0;
  return v19 & 1;
}

id sub_100A41BB8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData] = 0;
  v8 = &v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
  sub_1006950BC(v38);
  v9 = v38[13];
  *(v8 + 12) = v38[12];
  *(v8 + 13) = v9;
  *(v8 + 14) = v38[14];
  *(v8 + 30) = v39;
  v10 = v38[9];
  *(v8 + 8) = v38[8];
  *(v8 + 9) = v10;
  v11 = v38[11];
  *(v8 + 10) = v38[10];
  *(v8 + 11) = v11;
  v12 = v38[5];
  *(v8 + 4) = v38[4];
  *(v8 + 5) = v12;
  v13 = v38[7];
  *(v8 + 6) = v38[6];
  *(v8 + 7) = v13;
  v14 = v38[1];
  *v8 = v38[0];
  *(v8 + 1) = v14;
  v15 = v38[3];
  *(v8 + 2) = v38[2];
  *(v8 + 3) = v15;
  v16 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_geometry;
  *&v3[v16] = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{100.0, 100.0}];
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextStyle] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_isSupported] = 1;
  v17 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_layoutClass;
  *&v3[v17] = type metadata accessor for CRLWPLayout();
  v18 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_repClass;
  *&v3[v18] = sub_100006370(0, &unk_101A0D840);
  v19 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_editorClass;
  *&v3[v19] = type metadata accessor for CRLWPEditor();
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidRanges] = 0;
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidParagraphRuns] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphRanges] = _swiftEmptyArrayStorage;
  v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] = 0;
  v20 = OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString;
  *&v3[v20] = [objc_allocWithZone(NSAttributedString) init];
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__characterStyleRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__paragraphStyleRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hyperlinkRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage__listRuns] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform12CRLWPStorage_store] = a1;
  *&v3[v7] = a2;
  v21 = a1;

  v22 = *(v8 + 13);
  v40[12] = *(v8 + 12);
  v40[13] = v22;
  v40[14] = *(v8 + 14);
  v41 = *(v8 + 30);
  v23 = *(v8 + 9);
  v40[8] = *(v8 + 8);
  v40[9] = v23;
  v24 = *(v8 + 11);
  v40[10] = *(v8 + 10);
  v40[11] = v24;
  v25 = *(v8 + 5);
  v40[4] = *(v8 + 4);
  v40[5] = v25;
  v26 = *(v8 + 7);
  v40[6] = *(v8 + 6);
  v40[7] = v26;
  v27 = *(v8 + 1);
  v40[0] = *v8;
  v40[1] = v27;
  v28 = *(v8 + 3);
  v40[2] = *(v8 + 2);
  v40[3] = v28;
  v29 = *(a3 + 208);
  *(v8 + 12) = *(a3 + 192);
  *(v8 + 13) = v29;
  *(v8 + 14) = *(a3 + 224);
  *(v8 + 30) = *(a3 + 240);
  v30 = *(a3 + 144);
  *(v8 + 8) = *(a3 + 128);
  *(v8 + 9) = v30;
  v31 = *(a3 + 176);
  *(v8 + 10) = *(a3 + 160);
  *(v8 + 11) = v31;
  v32 = *(a3 + 80);
  *(v8 + 4) = *(a3 + 64);
  *(v8 + 5) = v32;
  v33 = *(a3 + 112);
  *(v8 + 6) = *(a3 + 96);
  *(v8 + 7) = v33;
  v34 = *(a3 + 16);
  *v8 = *a3;
  *(v8 + 1) = v34;
  v35 = *(a3 + 48);
  *(v8 + 2) = *(a3 + 32);
  *(v8 + 3) = v35;
  sub_10000CAAC(v40, &unk_101A0D830);
  v37.receiver = v3;
  v37.super_class = type metadata accessor for CRLWPStorage();
  return objc_msgSendSuper2(&v37, "init");
}

uint64_t sub_100A41EDC(char *a1)
{
  v2 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0x63697465766C6548;
  }

  v5 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 48];
  v7 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
  v6 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 16];
  v86 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 32];
  v87 = v5;
  v84 = v7;
  v85 = v6;
  v8 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 112];
  v10 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 64];
  v9 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 80];
  v90 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 96];
  v91 = v8;
  v88 = v10;
  v89 = v9;
  v11 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 176];
  v13 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 128];
  v12 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 144];
  v94 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 160];
  v95 = v11;
  v92 = v13;
  v93 = v12;
  v15 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 208];
  v14 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 224];
  v16 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 192];
  v99 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride + 240];
  v97 = v15;
  v98 = v14;
  v96 = v16;
  memmove(v100, &a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride], 0xF8uLL);
  result = sub_100695050(v100);
  if (result == 1)
  {
    v18 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v18)
    {
      __break(1u);
      return result;
    }

    (*(*v18 + 896))();
    v19 = a1;
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.getter();
    sub_100A47694(v4, type metadata accessor for CRLWPShapeItemCRDTData);
    v73 = v59[12];
    v74 = v59[13];
    v75 = v59[14];
    v76 = v60;
    v69 = v59[8];
    v70 = v59[9];
    v71 = v59[10];
    v72 = v59[11];
    v65 = v59[4];
    v66 = v59[5];
    v67 = v59[6];
    v68 = v59[7];
    v61 = v59[0];
    v62 = v59[1];
    v63 = v59[2];
    v64 = v59[3];
    if (sub_100695050(&v61) == 1)
    {

      return 0x63697465766C6548;
    }

    v58 = a1;
    v26 = v76;
    v25 = v75;
    v39 = BYTE8(v75);
    v23 = v74;
    v24 = BYTE8(v74);
    v20 = v73;
    v22 = BYTE8(v73);
    v38 = v72;
    v35 = BYTE8(v72);
    v37 = v64;
    v34 = BYTE8(v64);
    v36 = v63;
    v32 = BYTE8(v63);
    v33 = BYTE10(v62);
    v30 = BYTE9(v62);
    v31 = DWORD1(v62);
    v28 = BYTE8(v62);
    v41 = v61;
    v40 = v62;
    v81 = v69;
    v82 = v70;
    v83 = v71;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v80 = v68;
  }

  else
  {
    v57 = v84;
    v55 = DWORD1(v85);
    v56 = v85;
    v53 = BYTE10(v85);
    v54 = BYTE9(v85);
    v52 = v86;
    v51 = BYTE8(v86);
    v50 = v87;
    v47 = v95;
    v48 = BYTE8(v95);
    v49 = BYTE8(v87);
    v20 = v96;
    v21 = a1;
    v22 = BYTE8(v96);
    v23 = v97;
    v24 = BYTE8(v97);
    v25 = v98;
    v26 = v99;
    v27 = BYTE8(v98);
    v28 = BYTE8(v85);
    v81 = v92;
    v82 = v93;
    v83 = v94;
    v77 = v88;
    v78 = v89;
    v79 = v90;
    v80 = v91;
    v58 = v21;
    v29 = v21;
    v30 = v54;
    v31 = v55;
    v32 = v51;
    v33 = v53;
    v35 = v48;
    v34 = v49;
    v36 = v52;
    v37 = v50;
    v38 = v47;
    v39 = v27;
    v40 = v56;
    v41 = v57;
  }

  v61 = v41;
  LOBYTE(v62) = v40;
  DWORD1(v62) = v31;
  BYTE8(v62) = v28 & 1;
  BYTE9(v62) = v30;
  BYTE10(v62) = v33;
  *&v63 = v36;
  BYTE8(v63) = v32;
  *&v64 = v37;
  BYTE8(v64) = v34;
  v69 = v81;
  v70 = v82;
  v71 = v83;
  v65 = v77;
  v66 = v78;
  v67 = v79;
  v68 = v80;
  *&v72 = v38;
  BYTE8(v72) = v35;
  *&v73 = v20;
  BYTE8(v73) = v22;
  *&v74 = v23;
  BYTE8(v74) = v24;
  *&v75 = v25;
  BYTE8(v75) = v39 & 1;
  v76 = v26;
  v42 = *(&v41 + 1);
  v43 = v41;
  sub_100962438(v41, *(&v41 + 1), v40);
  sub_10000BE14(&v84, v59, &unk_101A0D830);
  sub_10081852C(&v61);
  if (v40 == 255)
  {

    return 0x63697465766C6548;
  }

  if (v40)
  {
    sub_1009623A8(v43, v42, v40);
    return 0x63697465766C6548;
  }

  result = v43;
  if (v42 <= 3)
  {
    if (v42 > 1)
    {
      if (v42 != 2)
      {
        sub_1009623A8(v43, 3uLL, v40);
        return 0xD000000000000026;
      }

      v44 = 2;
      goto LABEL_34;
    }

    if (!v42)
    {
      sub_1009623A8(v43, 0, v40);
      return 0xD000000000000029;
    }

    if (v42 != 1)
    {
      return result;
    }

    v45 = 1;
LABEL_31:
    sub_1009623A8(v43, v45, v40);
    return 0xD000000000000023;
  }

  if (v42 <= 5)
  {
    if (v42 == 4)
    {
      sub_1009623A8(v43, 4uLL, v40);
      return 0xD000000000000025;
    }

    else
    {
      sub_1009623A8(v43, 5uLL, v40);
      return 0xD000000000000027;
    }
  }

  switch(v42)
  {
    case 6:
      v45 = 6;
      goto LABEL_31;
    case 7:
      v44 = 7;
      goto LABEL_34;
    case 8:
      v44 = 8;
LABEL_34:
      sub_1009623A8(v43, v44, v40);
      return 0xD000000000000024;
  }

  return result;
}