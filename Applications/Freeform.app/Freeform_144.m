uint64_t sub_101123A5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_101123AA4()
{
  result = qword_101A0DA20;
  if (!qword_101A0DA20)
  {
    sub_1005C4E5C(&qword_1019F7D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0DA20);
  }

  return result;
}

id sub_101123B24(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, id a5, void *a6)
{
  v155 = a4;
  v164 = a3;
  v122 = a1;
  v9 = sub_1005B981C(&qword_101A13F18);
  v147 = *(v9 - 8);
  v148 = v9;
  __chkstk_darwin(v9);
  v146 = &v121 - v10;
  v11 = sub_1005B981C(&unk_101A0D9D0);
  v143 = *(v11 - 8);
  v144 = v11;
  __chkstk_darwin(v11);
  v142 = &v121 - v12;
  v141 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v141);
  v140 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v14 - 8);
  v160 = &v121 - v15;
  v16 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v16 - 8);
  v165 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v139);
  v149 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v154 = &v121 - v20;
  v21 = sub_1005B981C(&unk_101A09DC0);
  v135 = *(v21 - 8);
  v136 = v21;
  __chkstk_darwin(v21);
  v134 = &v121 - v22;
  v163 = type metadata accessor for UUID();
  v23 = *(v163 - 8);
  __chkstk_darwin(v163);
  v132 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v158 = &v121 - v26;
  v152 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v152);
  v121 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v145 = &v121 - v29;
  __chkstk_darwin(v30);
  v153 = &v121 - v31;
  v32 = sub_1005B981C(&unk_101A09DD0);
  __chkstk_darwin(v32 - 8);
  v128 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v121 - v35;
  v37 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v37 - 8);
  v127 = &v121 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v121 - v40;
  v156 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v156);
  v131 = &v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v157 = &v121 - v44;
  __chkstk_darwin(v45);
  v161 = &v121 - v46;
  v138 = sub_1005B981C(&qword_101A13F10);
  __chkstk_darwin(v138);
  v133 = &v121 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v137 = &v121 - v49;
  __chkstk_darwin(v50);
  v159 = &v121 - v51;
  __chkstk_darwin(v52);
  v54 = &v121 - v53;
  v150 = a6;
  v151 = &v121 - v53;
  if (a5)
  {
    a5 = a5;
    sub_100B7DAB8(a5, v54);
    v55 = type metadata accessor for CRLMaskInfoData();
    (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
    v126 = a5;
  }

  else
  {
    v56 = type metadata accessor for CRLMaskInfoData();
    (*(*(v56 - 8) + 56))(v54, 1, 1, v56);
    v126 = [objc_allocWithZone(CRLCanvasInfoGeometry) init];
  }

  v57 = *(v23 + 16);
  v123 = a2;
  v58 = v163;
  v129 = v57;
  v130 = v23 + 16;
  v57(v41, a2, v163);
  v162 = v23;
  v59 = v41;
  v60 = *(v23 + 56);
  v124 = v59;
  v60(v59, 0, 1, v58);
  v206 = 1;
  v61 = type metadata accessor for CRLTableAnchorHint();
  v125 = *(*(v61 - 8) + 56);
  v125(v36, 1, 1, v61);
  v62 = a5;
  v63 = v126;
  sub_101271CCC(v63, v207);
  v126 = v63;

  v64 = v59;
  v65 = v127;
  sub_10000BE14(v64, v127, &qword_1019F6990);
  v66 = v128;
  sub_10000BE14(v36, v128, &unk_101A09DD0);
  v67 = v161;
  v60(v161, 1, 1, v58);
  v68 = v156;
  v69 = *(v156 + 7);
  v70 = v67 + *(v156 + 6);
  v125((v67 + v69), 1, 1, v61);
  *(v67 + *(v68 + 8)) = _swiftEmptyDictionarySingleton;
  sub_10002C638(v65, v67, &qword_1019F6990);
  sub_10000CAAC(v36, &unk_101A09DD0);
  sub_10000CAAC(v124, &qword_1019F6990);
  v71 = (v67 + *(v68 + 5));
  v72 = v207[1];
  *v71 = v207[0];
  v71[1] = v72;
  *v70 = 0u;
  *(v70 + 16) = 0u;
  *(v70 + 32) = 0u;
  *(v70 + 48) = 0u;
  *(v70 + 64) = v206;
  sub_10002C638(v66, v67 + v69, &unk_101A09DD0);
  v73 = v150;
  v74 = [v150 store];
  v75 = *&v74[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v75 + 16));
  v76 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v77 = *&v74[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v77)
  {
    v78 = *&v74[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v128 = type metadata accessor for CRLAssetManager();
    v79 = objc_allocWithZone(v128);
    swift_unknownObjectWeakInit();
    v80 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v81 = swift_allocObject();
    v82 = v74;
    v83 = swift_slowAlloc();
    *v83 = 0;
    *(v81 + 16) = v83;
    atomic_thread_fence(memory_order_acq_rel);
    *&v79[v80] = v81;
    *&v79[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v84 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v79[v84] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v79[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    swift_unknownObjectWeakAssign();
    v205.receiver = v79;
    v73 = v150;
    v205.super_class = v128;
    v85 = objc_msgSendSuper2(&v205, "init");

    v86 = *&v74[v76];
    *&v74[v76] = v85;
    v78 = v85;

    v77 = 0;
  }

  v87 = *(v75 + 16);
  v88 = v77;
  os_unfair_lock_unlock(v87);

  v89 = sub_1011225AC(v164, v73, v78);
  v90 = sub_100BBF8EC(v89);

  if (v90)
  {
    v91 = swift_allocObject();
    *(v91 + 16) = _swiftEmptyArrayStorage;
    v92 = (v91 + 16);
    *&v192 = sub_1009CEBEC;
    *(&v192 + 1) = v91;
    *&v190 = _NSConcreteStackBlock;
    *(&v190 + 1) = *"";
    *&v191 = sub_100CD0AFC;
    *(&v191 + 1) = &unk_1018B1E40;
    v93 = _Block_copy(&v190);

    [v90 iteratePathElementsWithBlock:v93];

    _Block_release(v93);
    swift_beginAccess();
    v150 = *v92;
  }

  else
  {
    v150 = 0;
  }

  v94 = v157;
  sub_101125504(v161, v157, type metadata accessor for CRLBoardItemParentAffinity);
  sub_1005D0C00(&v182);
  UUID.init()();
  v95 = v152;
  v128 = *(v152 + 52);
  v194 = v186;
  v195 = v187;
  v196 = v188;
  v197 = v189;
  v190 = v182;
  v191 = v183;
  v192 = v184;
  v193 = v185;
  v127 = sub_1005B981C(&unk_101A09DE0);
  sub_100A49DD0(&qword_101A106A0, &unk_101A09DE0, &unk_1014897A0, sub_10074933C);
  v96 = v153;
  CRRegister.init(wrappedValue:)();
  *(v96 + *(v95 + 56)) = _swiftEmptyDictionarySingleton;
  v97 = v158;
  v98 = v163;
  v129(v132, v158, v163);
  CRRegister.init(_:)();
  sub_101125504(v94, v131, type metadata accessor for CRLBoardItemParentAffinity);
  sub_101123A5C(&unk_101A226B0, type metadata accessor for CRLBoardItemParentAffinity);
  CRRegister.init(_:)();
  LOBYTE(v190) = 0;
  CRRegister.init(_:)();
  LOBYTE(v190) = 0;
  CRRegister.init(_:)();
  *&v190 = 0;
  *(&v190 + 1) = 0xE000000000000000;
  CRRegister.init(_:)();
  v194 = v186;
  v195 = v187;
  v196 = v188;
  v197 = v189;
  v190 = v182;
  v191 = v183;
  v192 = v184;
  v193 = v185;
  v99 = v134;
  CRRegister.init(_:)();
  v100 = *(v162 + 8);
  v162 += 8;
  v132 = v100;
  (v100)(v97, v98);
  sub_10112556C(v157, type metadata accessor for CRLBoardItemParentAffinity);
  (*(v135 + 40))(v96 + v128, v99, v136);
  v156 = type metadata accessor for CRLAssetData;
  sub_101125504(v164, v165, type metadata accessor for CRLAssetData);
  sub_10000BE14(v155, v160, &unk_101A1B880);
  sub_1005D0BD8(&v190);
  sub_10000BE14(v151, v159, &qword_101A13F10);
  v101 = v139;
  v157 = *(v139 + 20);
  v178 = v201;
  v179 = v202;
  v180 = v203;
  v174 = v197;
  v175 = v198;
  v176 = v199;
  v177 = v200;
  v181 = v204;
  v172 = v195;
  v173 = v196;
  v167 = v190;
  v168 = v191;
  v170 = v193;
  v171 = v194;
  v169 = v192;
  v136 = sub_1005B981C(&unk_101A106C0);
  v135 = sub_100A49DD0(&qword_101A0D9F0, &unk_101A106C0, &unk_1014907B0, sub_1005FEA64);
  v102 = v154;
  CRRegister.init(wrappedValue:)();
  v158 = *(v101 + 24);
  v103 = type metadata accessor for CRLMaskInfoData();
  v104 = v137;
  (*(*(v103 - 8) + 56))(v137, 1, 1, v103);
  sub_10000BE14(v104, v133, &qword_101A13F10);
  v134 = sub_100FA8844();
  CRRegister.init(wrappedValue:)();
  sub_10000CAAC(v104, &qword_101A13F10);
  *(v102 + *(v101 + 28)) = _swiftEmptyDictionarySingleton;
  v105 = v140;
  sub_101125504(v165, v140, v156);
  v106 = v141;
  v107 = v160;
  sub_10000BE14(v160, v105 + *(v141 + 20), &unk_101A1B880);
  *(v105 + v106[6]) = v150;
  *(v105 + v106[7]) = 2;
  *(v105 + v106[8]) = 2;
  *(v105 + v106[9]) = _swiftEmptyDictionarySingleton;
  sub_101123A5C(&qword_101A25628, type metadata accessor for CRLImageItemAssetData);
  CRRegister.init(_:)();
  v178 = v201;
  v179 = v202;
  v180 = v203;
  v174 = v197;
  v175 = v198;
  v176 = v199;
  v177 = v200;
  v181 = v204;
  v172 = v195;
  v173 = v196;
  v167 = v190;
  v168 = v191;
  v170 = v193;
  v171 = v194;
  v169 = v192;
  v108 = v142;
  CRRegister.init(_:)();
  (*(v143 + 40))(v102 + v157, v108, v144);
  v109 = v159;
  sub_10000BE14(v159, v104, &qword_101A13F10);
  v110 = v146;
  CRRegister.init(_:)();
  sub_10000CAAC(v109, &qword_101A13F10);
  sub_10000CAAC(v107, &unk_101A1B880);
  sub_10112556C(v165, type metadata accessor for CRLAssetData);
  (*(v147 + 40))(&v158[v102], v110, v148);
  v111 = v145;
  sub_10000BE14(v96, v145, &unk_101A226A0);
  v112 = v149;
  sub_101125504(v102, v149, type metadata accessor for CRLImageItemCRDTData);
  type metadata accessor for CRLImageItemData(0);
  v113 = swift_allocObject();
  sub_101125504(v112, v113 + qword_101AD8A28, type metadata accessor for CRLImageItemCRDTData);
  v114 = [objc_opt_self() standardUserDefaults];
  LODWORD(v105) = [v114 BOOLForKey:@"CRLNewImageItemsHaveGoodEnoughFidelityVersionSetAboveCurrentDefault"];

  if (!v105)
  {
    goto LABEL_13;
  }

  v115 = sub_10001FF1C();
  v116 = v115 + 1;
  if (v115 == -1)
  {
    __break(1u);
LABEL_13:
    v116 = 0x2000400000000;
  }

  v117 = v121;
  sub_10000BE14(v111, v121, &unk_101A226A0);
  *&v167 = 0x1000000000000;
  *(&v167 + 1) = v116;
  v168 = 0x1000000000000uLL;
  LOBYTE(v169) = 1;
  sub_10000BE14(v117, v113 + *(*v113 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v117, &unk_101A226A0);
  sub_10112556C(v112, type metadata accessor for CRLImageItemCRDTData);
  sub_10000CAAC(v111, &unk_101A226A0);
  v118 = sub_100747AF0(&v167, 2);
  swift_beginAccess();
  v166 = 1;

  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.setter();
  swift_endAccess();

  v119 = sub_101122410(v122, v118);

  sub_10000CAAC(v155, &unk_101A1B880);
  sub_10112556C(v164, type metadata accessor for CRLAssetData);
  (v132)(v123, v163);
  sub_10112556C(v161, type metadata accessor for CRLBoardItemParentAffinity);
  sub_10000CAAC(v151, &qword_101A13F10);
  sub_10112556C(v154, type metadata accessor for CRLImageItemCRDTData);
  sub_10000CAAC(v153, &unk_101A226A0);
  return v119;
}

void (*sub_101125048(void *a1, uint64_t a2, unint64_t a3, void *a4))()
{
  v7 = sub_100818518(a2);
  v8 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
  if (v7)
  {
    type metadata accessor for CRLConnectionLineItem();
    v9 = swift_dynamicCastClass();
    v8 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
    if (v9)
    {
      v10 = v9;
      if (a3 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
      if (v11 >= 1)
      {
        v12 = swift_allocObject();
        v12[2] = a4;
        v12[3] = v10;
        v12[4] = a3;
        v13 = a1;
        v14 = a4;

        return sub_101125490;
      }
    }
  }

  return v8;
}

uint64_t sub_101125154(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v6 - 8);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v11 = &v26[-v10 - 8];
  sub_10000630C(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v26);
  sub_1005B981C(&qword_1019FF208);
  type metadata accessor for CRLAssetBackedAssetStorage();
  result = swift_dynamicCast();
  if (result)
  {
    sub_101125504(v25 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v11, type metadata accessor for CRLAssetData);

    sub_10000630C(a2 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v26);
    result = swift_dynamicCast();
    if (result)
    {
      sub_101125504(v25 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v8, type metadata accessor for CRLAssetData);

      v13 = sub_10110D7C4(v11, v8, a3);
      sub_10112556C(v8, type metadata accessor for CRLAssetData);
      sub_10112556C(v11, type metadata accessor for CRLAssetData);
      v14 = objc_opt_self();
      v15 = v13;
      v16 = [v14 defaultShadow];
      if (sub_10110CA3C())
      {
        v17 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
        v18 = *(**&v15[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);

        v20 = v18(v19);

        if (v20)
        {
          if (v16)
          {
            sub_100006370(0, &unk_101A11F40);
            v21 = v16;
            v22 = static NSObject.== infix(_:_:)();

            if (v22)
            {

              return v15;
            }
          }

          else
          {
          }
        }

        else if (!v16)
        {

          return v15;
        }

        v23 = *(**&v15[v17] + 448);
        v24 = v16;

        v23(v16);

        return v15;
      }

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10112549C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_101125504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10112556C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*sub_1011255E8(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1011274C0(v4, a2);
  return sub_1011298A0;
}

uint64_t (*sub_101125660(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(*(type metadata accessor for CRLBoardIdentifier(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  sub_1005F1308(a2, v7);
  v5[5] = sub_101127564(v5, v8);
  return sub_10112989C;
}

uint64_t (*sub_101125728(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(*(type metadata accessor for CRLBoardIdentifier(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  sub_1005F1308(a2, v7);
  v5[5] = sub_10112764C(v5, v8);
  return sub_10112989C;
}

uint64_t (*sub_1011257F0(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_101127734(v4, a2);
  return sub_1011298A0;
}

void (*sub_101125868(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = type metadata accessor for UUID();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v8 = v7;
  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = sub_1011277D8(v3, v8);
  return sub_101125980;
}

void sub_101125980(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t (*sub_1011259F8(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(*(type metadata accessor for CRLBoardIdentifier(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  sub_1005F1308(a2, v7);
  v5[5] = sub_1011279AC(v5, v8);
  return sub_101125AC0;
}

void sub_101125AC4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_100086F34(v2);
  free(v2);

  free(v1);
}

void (*sub_101125B20(uint64_t **a1, uint64_t a2))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_101127B14(v4, a2);
  return sub_101125B98;
}

id CRLWPTopicNumbers.__allocating_init(with:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_topicNumberData;
  *&v1[v2] = sub_100BD9E18(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_invalidCharIndex] = 0;
  type metadata accessor for CRLWPStorage();
  *&v1[OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_storage] = swift_dynamicCastClassUnconditional();
  v4.receiver = v1;
  v4.super_class = v0;
  return objc_msgSendSuper2(&v4, "init");
}

id CRLWPTopicNumbers.init(with:)()
{
  v1 = OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_topicNumberData;
  *&v0[v1] = sub_100BD9E18(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_invalidCharIndex] = 0;
  type metadata accessor for CRLWPStorage();
  *&v0[OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_storage] = swift_dynamicCastClassUnconditional();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CRLWPTopicNumbers();
  return objc_msgSendSuper2(&v3, "init");
}

Swift::Void __swiftcall CRLWPTopicNumbers.invalidate(from:)(Swift::Int from)
{
  v2 = [*(v1 + OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_storage) textRangeForParagraphAtIndex:{objc_msgSend(*(v1 + OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_storage), "paragraphIndexAtCharIndex:", from)}];
  v3 = OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_topicNumberData;
  swift_beginAccess();
  v40 = v3;
  v4 = *(v1 + v3);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v1 + v3) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v41 = v12;
  v42 = v1;
  while (v10)
  {
LABEL_9:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = (v13 << 9) | (8 * v15);
    v17 = *(*(v12 + 56) + v16);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = *(*(v12 + 48) + v16);
      v21 = v17 + 32;
      v22 = v18;
      do
      {
        if (__OFSUB__(v22, v19))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v23 = v19 + (v22 - v19) / 2;
        if (__OFADD__(v19, (v22 - v19) / 2))
        {
          goto LABEL_39;
        }

        if (v23 >= v18)
        {
          goto LABEL_40;
        }

        if (*(v21 + 24 * v23) < v2)
        {
          v19 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_41;
          }

          v23 = v22;
        }

        v22 = v23;
      }

      while (v19 != v23);
      if (v23 >= v18)
      {
        continue;
      }

      v24 = v20;
      v25 = sub_101125B9C();
      v43 = v24;
      v26 = sub_101125B20(v45, v24);
      v44 = v27;
      v28 = *v27;
      if (!*v27)
      {
        (v26)(v45, 0);
        (v25)(v46, 0);
LABEL_34:
        v1 = v42;

        v12 = v41;
        continue;
      }

      v29 = *(v28 + 2);
      if (v29 < v23)
      {
        goto LABEL_43;
      }

      if ((v23 & 0x8000000000000000) == 0)
      {
        if (__OFADD__(v29, v23 - v29))
        {
          goto LABEL_45;
        }

        v39 = v26;
        v38 = v23 - v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v44 = v28;
        if (!isUniquelyReferenced_nonNull_native || v23 > *(v28 + 3) >> 1)
        {
          if (*(v28 + 2) <= v23)
          {
            v31 = v23;
          }

          else
          {
            v31 = *(v28 + 2);
          }

          v28 = sub_100B39734(isUniquelyReferenced_nonNull_native, v31, 1, v28);
          *v44 = v28;
        }

        swift_arrayDestroy();
        if (v29 != v23)
        {
          memmove(&v28[24 * v23 + 32], &v28[24 * v29 + 32], 24 * (*(v28 + 2) - v29));
          v32 = *(v28 + 2);
          v33 = __OFADD__(v32, v38);
          v34 = v32 + v38;
          if (v33)
          {
            goto LABEL_46;
          }

          *(v28 + 2) = v34;
        }

        *v44 = v28;
        v39(v45, 0);
        (v25)(v46, 0);
        goto LABEL_34;
      }

      goto LABEL_44;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      v36 = sub_101129554(v35);

      *(v1 + v40) = v36;

      v37 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_invalidCharIndex);
      if (v2 < v37)
      {
        v37 = v2;
      }

      *(v1 + OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_invalidCharIndex) = v37;
      return;
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

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
}

Swift::UInt __swiftcall CRLWPTopicNumbers.listNumber(for:)(Swift::Int a1)
{
  v2 = OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_storage;
  v3 = [*(v1 + OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_storage) paragraphIndexAtCharIndex:a1];
  if (v3 == NSNotFound.getter())
  {
    return 0;
  }

  v4 = [*(v1 + v2) paragraphLevelAtParIndex:v3];
  if (v4 > 8)
  {
    return 0;
  }

  v5 = v4;
  result = sub_1011269C0(v3);
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [*(v1 + v2) textRangeForParagraphAtIndex:v3];
  sub_101126B38(v8);
  result = sub_101126568(v7, v8);
  if (!v9)
  {

    return 0;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(v9 + 16))
  {
    v10 = *(v9 + 32 * v5 + 32);

    return v10;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall CRLWPTopicNumbers.numberedListLabel(for:includeFormatting:)(Swift::Int a1, Swift::Bool includeFormatting)
{
  v3 = includeFormatting;
  v4 = OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_storage;
  v5 = [*(v2 + OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_storage) paragraphIndexAtCharIndex:a1];
  if (v5 == NSNotFound.getter() || (v6 = [*(v2 + v4) paragraphLevelAtParIndex:v5], v6 > 8))
  {
    v8 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  v8 = sub_1011269C0(v5);
  if (!v8)
  {
LABEL_19:
    v11 = 0xE000000000000000;
    goto LABEL_27;
  }

  v9 = v8;
  v10 = [*(v2 + v4) textRangeForParagraphAtIndex:v5];
  sub_101126B38(v10);
  v8 = sub_101126568(v9, v10);
  if (v12)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      v32 = v9;
      if (*(v12 + 16) <= v7)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v13 = 0;
      v14 = (v12 + 32 * v7 + 56);
      v15 = 0xE000000000000000;
      v16 = &_s10Foundation9IndexPathVSHAAMc_ptr;
      v17 = &selRef_crlaxViewAncestorOfType_;
      v18 = v7;
      while (v18 <= v7)
      {
        if (*(v14 - 2) != 3)
        {
          goto LABEL_17;
        }

        v19 = *(v14 - 3);
        v20 = *(v14 - 1);
        v33 = *v14;
        v8 = objc_opt_self();
        if (HIDWORD(v19))
        {
          goto LABEL_24;
        }

        v21 = [v8 v17[25]];
        if (v21)
        {
          v22 = v3;
          v23 = v16;
          v24 = v21;
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;

          v16 = v23;
          v3 = v22;
          v17 = &selRef_crlaxViewAncestorOfType_;
        }

        else
        {
          v25 = 0;
          v27 = 0xE000000000000000;
        }

        v28._countAndFlagsBits = v13;
        v28._object = v15;
        String.append(_:)(v28);

        v13 = v25;
        v15 = v27;
        v29 = v18-- != 0;
        v30 = v33;
        if (!v29)
        {
          v30 = 0;
        }

        v14 -= 32;
        if ((v30 & 1) == 0)
        {
LABEL_17:

          v9 = v32;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  v13 = 0;
  v15 = 0xE000000000000000;
LABEL_22:

  v8 = v13;
  v11 = v15;
LABEL_27:
  result._object = v11;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_101126568(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_topicNumberData;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_1007C95EC(a1);
  if ((v8 & 1) == 0 || (v9 = *(*(v6 + 56) + 8 * v7), , result = , (v11 = *(v9 + 16)) == 0))
  {
LABEL_16:

    return 0;
  }

  v12 = 0;
  v13 = v9 + 32;
  v14 = *(v9 + 16);
  do
  {
    if (__OFSUB__(v14, v12))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v15 = v12 + (v14 - v12) / 2;
    if (__OFADD__(v12, (v14 - v12) / 2))
    {
      goto LABEL_21;
    }

    if (v15 >= v11)
    {
      goto LABEL_22;
    }

    if (*(v13 + 24 * v15) < a2)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_23;
      }

      v15 = v14;
    }

    v14 = v15;
  }

  while (v12 != v15);
  if (v15 >= v11)
  {
    goto LABEL_16;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  v16 = (v13 + 24 * v15);
  if (*v16 > a2)
  {
    goto LABEL_16;
  }

  v17 = *v16;

  return v17;
}

uint64_t sub_1011266D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_topicNumberData;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_1007C95EC(a1);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = *(v7 + 24 * v8 + 8);

        return v9;
      }
    }
  }

  return 0;
}

uint64_t sub_1011267A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_topicNumberData;
  swift_beginAccess();
  if (!*(*(v4 + v9) + 16) || (, sub_1007C95EC(a4), v11 = v10, , (v11 & 1) == 0))
  {
    swift_beginAccess();
    v12 = a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = *(v4 + v9);
    *(v4 + v9) = 0x8000000000000000;
    sub_100AA17C0(_swiftEmptyArrayStorage, v12, isUniquelyReferenced_nonNull_native);

    *(v4 + v9) = v24[0];
    swift_endAccess();
  }

  v14 = sub_101125B9C();
  v16 = sub_101125B20(v24, a4);
  v17 = *v15;
  if (*v15)
  {
    v18 = v15;

    v19 = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v17;
    if ((v19 & 1) == 0)
    {
      v17 = sub_100B39734(0, *(v17 + 2) + 1, 1, v17);
      *v18 = v17;
    }

    v21 = *(v17 + 2);
    v20 = *(v17 + 3);
    if (v21 >= v20 >> 1)
    {
      v17 = sub_100B39734((v20 > 1), v21 + 1, 1, v17);
      *v18 = v17;
    }

    *(v17 + 2) = v21 + 1;
    v22 = &v17[24 * v21];
    *(v22 + 4) = a1;
    *(v22 + 5) = a2;
    *(v22 + 6) = a3;
    (v16)(v24, 0);
    return (v14)(v25, 0);
  }

  else
  {
    (v16)(v24, 0);
    return (v14)(v25, 0);
  }
}

id sub_1011269C0(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_storage) listStyleAtParIndex:a1 effectiveRange:0];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (v2[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType] > 1u)
  {
    if (v2[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType] == 2)
    {
      if (qword_1019F1688 != -1)
      {
        swift_once();
      }

      v4 = &qword_101AD6740;
    }

    else
    {
      if (qword_1019F1690 != -1)
      {
        swift_once();
      }

      v4 = &qword_101AD6748;
    }
  }

  else if (v2[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType])
  {
    if (qword_1019F1680 != -1)
    {
      swift_once();
    }

    v4 = &qword_101AD6738;
  }

  else
  {
    if (qword_1019F1678 != -1)
    {
      swift_once();
    }

    v4 = &qword_101AD6730;
  }

  v5 = *v4;

  return v5;
}

void sub_101126B38(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_invalidCharIndex;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_invalidCharIndex);
  if (v3 > a1)
  {
    return;
  }

  v4 = a1;
  v5 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
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
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v6 = v1;
  v81 = OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_storage;
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLWPTopicNumbers_storage);
  v8 = [v7 characterCount];
  if (v8 < 0)
  {
    goto LABEL_121;
  }

  if (v8 >= v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (v3 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v8 >= v5)
  {
    v11 = v5 & ~(v5 >> 63);
  }

  else
  {
    v11 = v8;
  }

  v12 = sub_100619184(v7, v10, v11);
  v84 = sub_100618D84(v12, v13, v14);
  v16 = v15;
  v18 = v17;

  v83 = v16;
  v19 = v16 < v18;
  v20 = v81;
  if (v19)
  {
LABEL_15:

    return;
  }

  v21 = &selRef_tailLineEndAngle;
  v78 = v4;
  v79 = v2;
  while (1)
  {
    v22 = [v84 charIndexForParagraphAtIndex:v18];
    if ([v84 characterCount] < v22)
    {
      goto LABEL_112;
    }

    NSNotFound.getter();
    v23 = [v84 paragraphIndexAtCharIndex:v22];
    v24 = [v84 v21[90]];
    if (__OFADD__(v24, v25))
    {
      goto LABEL_113;
    }

    if (__OFADD__(v18++, 1))
    {
      goto LABEL_114;
    }

    if (&v24[v25] < v22)
    {
      goto LABEL_115;
    }

    v27 = [*(v6 + v20) v21[90]];
    if (v27 > v4)
    {
      goto LABEL_15;
    }

    v29 = v27;
    v30 = v28;
    v31 = [*(v6 + v20) listStyleAtParIndex:v23 effectiveRange:0];
    if (v31)
    {
      break;
    }

LABEL_107:
    if (__OFADD__(v29, v30))
    {
      goto LABEL_116;
    }

    *(v6 + v2) = v29 + v30;
    v21 = &selRef_tailLineEndAngle;
    if (v83 < v18)
    {
      goto LABEL_15;
    }
  }

  v32 = v31;
  v33 = [*(v6 + v20) listStyleAtParIndex:v23 effectiveRange:0];
  if (!v33)
  {

    goto LABEL_107;
  }

  v34 = v33;
  if (v33[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType] > 1u)
  {
    if (v33[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType] == 2)
    {
      v35 = &qword_101AD6740;
      if (qword_1019F1688 != -1)
      {
        swift_once();
        v35 = &qword_101AD6740;
      }
    }

    else
    {
      v35 = &qword_101AD6748;
      if (qword_1019F1690 != -1)
      {
        swift_once();
        v35 = &qword_101AD6748;
      }
    }
  }

  else if (v33[OBJC_IVAR____TtC8Freeform14CRLWPListStyle_listType])
  {
    v35 = &qword_101AD6738;
    if (qword_1019F1680 != -1)
    {
      swift_once();
      v35 = &qword_101AD6738;
    }
  }

  else
  {
    v35 = &qword_101AD6730;
    if (qword_1019F1678 != -1)
    {
      swift_once();
      v35 = &qword_101AD6730;
    }
  }

  v82 = *v35;

  v36 = [*(v6 + v20) paragraphLevelAtParIndex:v23];
  v37 = sub_10084AB1C();
  if (v36 < 0)
  {
    goto LABEL_117;
  }

  if (v36 >= *(v37 + 16))
  {
    goto LABEL_118;
  }

  v38 = v37 + 32;
  if (*(v37 + 32 + 8 * v36) != 3)
  {

LABEL_106:
    v2 = v79;
    v20 = v81;
    goto LABEL_107;
  }

  v80 = v37;
  sub_1011266D0(v82);
  if (v40)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      goto LABEL_122;
    }

    if (v41 >= v36)
    {
      v42 = v40;
      if (v36 >= v39)
      {
        goto LABEL_78;
      }

      goto LABEL_65;
    }

    v77 = v39;
    v42 = v40;
  }

  else
  {
    v77 = v39;
    v43 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v40 = 0;
    v42 = v43;
    v41 = 0;
    *(v43 + 16) = 9;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 32) = 0;
    *(v43 + 56) = 0;
    *(v43 + 72) = 0;
    *(v43 + 80) = 0;
    *(v43 + 64) = 0;
    *(v43 + 88) = 0;
    *(v43 + 104) = 0;
    *(v43 + 112) = 0;
    *(v43 + 96) = 0;
    *(v43 + 120) = 0;
    *(v43 + 136) = 0;
    *(v43 + 144) = 0;
    *(v43 + 128) = 0;
    *(v43 + 152) = 0;
    *(v43 + 160) = 0;
    *(v43 + 168) = 0;
    *(v43 + 184) = 0;
    *(v43 + 176) = 0;
    *(v43 + 192) = 0;
    *(v43 + 200) = 0;
    *(v43 + 216) = 0;
    *(v43 + 208) = 0;
    *(v43 + 232) = 0;
    *(v43 + 240) = 0;
    *(v43 + 224) = 0;
    *(v43 + 248) = 0;
    *(v43 + 264) = 0;
    *(v43 + 272) = 0;
    *(v43 + 256) = 0;
    *(v43 + 280) = 0;
    *(v43 + 296) = 0;
    *(v43 + 304) = 0;
    *(v43 + 288) = 0;
    *(v43 + 312) = 0;
    if (!v36)
    {
      goto LABEL_78;
    }
  }

  if (v36 == v41)
  {
    v44 = v40;

    v45 = v44;
    goto LABEL_63;
  }

  if (v36 <= v41)
  {
    goto LABEL_131;
  }

  if (v41 < 0)
  {
    goto LABEL_132;
  }

  v76 = v36 - v41;
  v46 = *(v42 + 2);
  if (v41 >= v46 || v36 - 1 >= v46)
  {
    goto LABEL_133;
  }

  v75 = v40;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_10113CF70(v42);
  }

  v45 = v75;
  if (v76 <= 1)
  {
    v47 = v41;
LABEL_61:
    v50 = 32 * v47 + 32;
    v51 = v36 - v47;
    do
    {
      *&v42[v50] = 1;
      v50 += 32;
      --v51;
    }

    while (v51);
    goto LABEL_63;
  }

  v47 = v41 + (v76 & 0xFFFFFFFFFFFFFFFELL);
  v48 = &v42[32 * v41 + 64];
  v49 = v76 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v48 - 4) = 1;
    *v48 = 1;
    v48 += 64;
    v49 -= 2;
  }

  while (v49);
  if (v76 != (v76 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_61;
  }

LABEL_63:
  if (!v45)
  {
    goto LABEL_78;
  }

  v39 = v77;
  if (v36 >= v77)
  {
    goto LABEL_78;
  }

LABEL_65:
  v52 = v39;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_10113CF70(v42);
  }

  v53 = v36 + 1;
  v54 = *(v42 + 2);
  if (v36 + 1 >= v54)
  {
    goto LABEL_130;
  }

  *&v42[32 * v53 + 32] = 0;
  if (v53 != v52)
  {
    if (v53 >= v52)
    {
      goto LABEL_134;
    }

    if (v36 + 2 >= v54)
    {
      goto LABEL_135;
    }

    if (v52 >= v54)
    {
      goto LABEL_136;
    }

    v55 = v52 + ~v36;
    if (v55 < 2)
    {
      goto LABEL_76;
    }

    v53 += v55 & 0xFFFFFFFFFFFFFFFELL;
    v56 = &v42[32 * v36 + 128];
    v57 = v55 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v56 - 4) = 0;
      *v56 = 0;
      v56 += 64;
      v57 -= 2;
    }

    while (v57);
    if (v55 != (v55 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_76:
      v58 = 32 * v53 + 64;
      v59 = v52 - v53;
      do
      {
        *&v42[v58] = 0;
        v58 += 32;
        --v59;
      }

      while (v59);
    }
  }

LABEL_78:
  v60 = [*(v6 + v81) listStartAtParIndex:{v23, v75}];
  v61 = NSNotFound.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v60 < 1 || v60 == v61)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_10113CF70(v42);
    }

    if (v36 >= *(v42 + 2))
    {
      goto LABEL_123;
    }

    v64 = *&v42[32 * v36 + 32];
    v65 = __CFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_125;
    }

    *&v42[32 * v36 + 32] = v66;
  }

  else
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_10113CF70(v42);
    }

    if (v36 >= *(v42 + 2))
    {
      goto LABEL_124;
    }

    *&v42[32 * v36 + 32] = v60;
  }

  v67 = sub_10084A9D4();
  v68 = sub_10084A9F4();
  v69 = *(v42 + 2);
  if (v69 < v36)
  {
    goto LABEL_119;
  }

  if (v36 == v69)
  {
LABEL_105:

    sub_1011267A8(v29, v36, v42, v82);

    v4 = v78;
    goto LABEL_106;
  }

  if (v36 >= v69)
  {
    goto LABEL_126;
  }

  v70 = *(v67 + 16);
  if (v36 >= v70 || v69 > v70)
  {
    goto LABEL_127;
  }

  v71 = *(v80 + 16);
  if (v36 >= v71 || v69 > v71)
  {
    goto LABEL_128;
  }

  v72 = *(v68 + 16);
  if (v36 < v72 && v69 <= v72)
  {
    v73 = &v42[32 * v36 + 56];
    v74 = v36;
    while ((v74 & 0x8000000000000000) == 0)
    {
      if (v74 >= *(v42 + 2))
      {
        goto LABEL_111;
      }

      *(v73 - 1) = *(v67 + 32 + 8 * v74);
      *(v73 - 2) = *(v38 + 8 * v74);
      *v73 = *(v68 + 32 + v74);
      v73 += 32;
      if (v69 == ++v74)
      {
        goto LABEL_105;
      }
    }

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
    goto LABEL_120;
  }

LABEL_129:
  __break(1u);
LABEL_130:
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
LABEL_136:
  __break(1u);
}

id CRLWPTopicNumbers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPTopicNumbers();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t *sub_101127448(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1011296B4(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t (*sub_1011274C0(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1011294F8(v5);
  v5[9] = sub_101127C1C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1011298A8;
}

uint64_t (*sub_101127564(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(*(type metadata accessor for CRLBoardIdentifier(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[8] = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1005F1308(a2, v8);
  v5[9] = sub_1011294F8(v5);
  v5[10] = sub_101127DF8(v5 + 4, v8, isUniquelyReferenced_nonNull_native);
  return sub_1011298A4;
}

uint64_t (*sub_10112764C(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(*(type metadata accessor for CRLBoardIdentifier(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[8] = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1005F1308(a2, v8);
  v5[9] = sub_1011294F8(v5);
  v5[10] = sub_101128390(v5 + 4, v8, isUniquelyReferenced_nonNull_native);
  return sub_1011298A4;
}

uint64_t (*sub_101127734(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1011294F8(v5);
  v5[9] = sub_10112861C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1011298A8;
}

void (*sub_1011277D8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_101129520(v5);
  v5[12] = sub_101128790(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_101127914;
}

void sub_101127914(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t (*sub_1011279AC(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = *(*(type metadata accessor for CRLBoardIdentifier(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[8] = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1005F1308(a2, v8);
  v5[9] = sub_1011294F8(v5);
  v5[10] = sub_101128D50(v5 + 4, v8, isUniquelyReferenced_nonNull_native);
  return sub_101127A94;
}

void sub_101127A98(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_100086F34(v3);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t (*sub_101127B14(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1011294F8(v5);
  v5[9] = sub_1011292E8(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_101127BB8;
}

void sub_101127BBC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_101127C1C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1007C7EC0(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_100AA48CC();
      v11 = v19;
      goto LABEL_11;
    }

    sub_100A8A1A4(v16, a3 & 1);
    v11 = sub_1007C7EC0(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_101127D64;
}

void sub_101127D64(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_100AA243C(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    sub_100BDBBA0(v1[3], *v1[2]);
  }

  free(v1);
}

void (*sub_101127DF8(void *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v8[2] = v9;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v8[3] = v10;
  v11 = type metadata accessor for CRLBoardEntity();
  v8[4] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v8[5] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[6] = swift_coroFrameAlloc();
    v8[7] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v8[6] = malloc(*(v12 + 64));
    v8[7] = malloc(v14);
    v15 = malloc(v14);
  }

  v8[8] = v15;
  v16 = *(*(sub_1005B981C(&qword_1019F6268) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[9] = swift_coroFrameAlloc();
    v8[10] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v8[9] = malloc(v16);
    v8[10] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v8[11] = v17;
  v19 = *v4;
  v21 = sub_1000486F0(a2);
  *(v8 + 104) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a3 & 1) != 0)
    {
LABEL_19:
      v8[12] = v21;
      if (v25)
      {
LABEL_20:
        sub_1011297D4(*(*v4 + 56) + *(v13 + 72) * v21, v18, type metadata accessor for CRLBoardEntity);
        v27 = 0;
LABEL_24:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_101128120;
      }

LABEL_23:
      v27 = 1;
      goto LABEL_24;
    }

    if (v26 >= v24 && (a3 & 1) == 0)
    {
      sub_100AA6E7C();
      goto LABEL_19;
    }

    sub_100A8D1C4(v24, a3 & 1);
    v28 = sub_1000486F0(a2);
    if ((v25 & 1) == (v29 & 1))
    {
      v21 = v28;
      v8[12] = v28;
      if (v25)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_101128120(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 40) + 48);
  v5 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(v2 + 72);
    sub_10000BE14(v5, v6, &qword_1019F6268);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 104);
    v9 = *(v2 + 72);
    if (v7 != 1)
    {
      v10 = *(v2 + 8);
      sub_1011297D4(v9, *(v2 + 56), type metadata accessor for CRLBoardEntity);
      v11 = *v10;
      v12 = *(v2 + 96);
      v13 = *(v2 + 56);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 48);
        v15 = *(v2 + 24);
        sub_1005F1308(*v2, v15);
        sub_1011297D4(v13, v14, type metadata accessor for CRLBoardEntity);
        sub_100AA2AB4(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 80);
    sub_10000BE14(v5, v16, &qword_1019F6268);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 104);
    v9 = *(v2 + 80);
    if (v17 != 1)
    {
      v20 = *(v2 + 8);
      sub_1011297D4(v9, *(v2 + 64), type metadata accessor for CRLBoardEntity);
      v11 = *v20;
      v12 = *(v2 + 96);
      v13 = *(v2 + 64);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1011297D4(v13, v11[7] + *(*(v2 + 40) + 72) * v12, type metadata accessor for CRLBoardEntity);
      goto LABEL_10;
    }
  }

  sub_10000CAAC(v9, &qword_1019F6268);
  if (v8)
  {
    v18 = *(v2 + 96);
    v19 = **(v2 + 8);
    sub_100086F34(*(v19 + 48) + *(*(v2 + 16) + 72) * v18);
    sub_100BCE370(v18, v19);
  }

LABEL_10:
  v21 = *(v2 + 80);
  v22 = *(v2 + 88);
  v24 = *(v2 + 64);
  v23 = *(v2 + 72);
  v26 = *(v2 + 48);
  v25 = *(v2 + 56);
  v27 = *(v2 + 24);
  sub_10000CAAC(v22, &qword_1019F6268);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_101128390(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  *(v9 + 24) = v10;
  if (&_swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  *(v9 + 32) = v11;
  v12 = *v3;
  v13 = sub_1000486F0(a2);
  *(v9 + 48) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      v21 = v13;
      sub_100AA7308();
      v13 = v21;
      goto LABEL_14;
    }

    sub_100A8D9D8(v18, a3 & 1);
    v13 = sub_1000486F0(a2);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 40) = v13;
  if (v19)
  {
    v23 = *(*(*v4 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v9 = v23;
  return sub_10112853C;
}

void sub_10112853C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[5];
    if ((*a1)[6])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[4];
      sub_1005F1308(v1[1], v7);
      sub_100AA2B08(v4, v7, v2, v3);
    }
  }

  else if ((*a1)[6])
  {
    v5 = v1[5];
    v6 = *v1[2];
    sub_100086F34(*(v6 + 48) + *(v1[3] + 72) * v5);
    sub_100BCE5A0(v5, v6);
  }

  v8 = v1[4];

  free(v8);

  free(v1);
}

void (*sub_10112861C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1007C8A78(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_100AA9D08();
      v11 = v19;
      goto LABEL_11;
    }

    sub_100A92A04(v16, a3 & 1);
    v11 = sub_1007C8A78(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_10112983C();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_101128764;
}

void (*sub_101128790(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = type metadata accessor for UUID();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  if (&_swift_coroFrameAlloc)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v8[4] = v11;
  v12 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
  v8[5] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v8[6] = v13;
  v15 = *(v13 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[7] = swift_coroFrameAlloc();
    v8[8] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v8[7] = malloc(*(v13 + 64));
    v8[8] = malloc(v15);
    v16 = malloc(v15);
  }

  v8[9] = v16;
  v17 = *(*(sub_1005B981C(&qword_101A0C008) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[10] = swift_coroFrameAlloc();
    v8[11] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v8[10] = malloc(v17);
    v8[11] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v8[12] = v18;
  v20 = *v4;
  v22 = sub_10003E994(a2);
  *(v8 + 112) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
    goto LABEL_26;
  }

  v26 = v21;
  v27 = *(v20 + 24);
  if (v27 < v25 || (a3 & 1) == 0)
  {
    if (v27 >= v25 && (a3 & 1) == 0)
    {
      sub_100AAAA20();
      goto LABEL_21;
    }

    sub_100A94464(v25, a3 & 1);
    v28 = sub_10003E994(a2);
    if ((v26 & 1) == (v29 & 1))
    {
      v22 = v28;
      goto LABEL_21;
    }

LABEL_26:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_21:
  v8[13] = v22;
  if (v26)
  {
    sub_1011297D4(*(*v4 + 56) + *(v14 + 72) * v22, v19, _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v14 + 56))(v19, v30, 1, v12);
  return sub_101128AC0;
}

void sub_101128AC0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_10000BE14(v5, v6, &qword_101A0C008);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_1011297D4(v9, v2[8], _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_1011297D4(v13, v14, _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa);
        sub_100AA3260(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_10000BE14(v5, v16, &qword_101A0C008);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_1011297D4(v9, v2[9], _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1011297D4(v13, v11[7] + *(v2[6] + 72) * v12, _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa);
      goto LABEL_10;
    }
  }

  sub_10000CAAC(v9, &qword_101A0C008);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_100BD0910(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_10000CAAC(v22, &qword_101A0C008);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_101128D50(void *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x70uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v8[2] = v9;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v8[3] = v10;
  v11 = _s5BoardVMa(0);
  v8[4] = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  v8[5] = v12;
  v14 = *(v12 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[6] = swift_coroFrameAlloc();
    v8[7] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v8[6] = malloc(*(v12 + 64));
    v8[7] = malloc(v14);
    v15 = malloc(v14);
  }

  v8[8] = v15;
  v16 = *(*(sub_1005B981C(&unk_1019FA3E0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8[9] = swift_coroFrameAlloc();
    v8[10] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v8[9] = malloc(v16);
    v8[10] = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  v8[11] = v17;
  v19 = *v4;
  v21 = sub_1000486F0(a2);
  *(v8 + 104) = v20 & 1;
  v22 = *(v19 + 16);
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    v25 = v20;
    v26 = *(v19 + 24);
    if (v26 >= v24 && (a3 & 1) != 0)
    {
LABEL_19:
      v8[12] = v21;
      if (v25)
      {
LABEL_20:
        sub_1011297D4(*(*v4 + 56) + *(v13 + 72) * v21, v18, _s5BoardVMa);
        v27 = 0;
LABEL_24:
        (*(v13 + 56))(v18, v27, 1, v11);
        return sub_101129078;
      }

LABEL_23:
      v27 = 1;
      goto LABEL_24;
    }

    if (v26 >= v24 && (a3 & 1) == 0)
    {
      sub_100AA62F0();
      goto LABEL_19;
    }

    sub_100A8CC60(v24, a3 & 1);
    v28 = sub_1000486F0(a2);
    if ((v25 & 1) == (v29 & 1))
    {
      v21 = v28;
      v8[12] = v28;
      if (v25)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_101129078(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 40) + 48);
  v5 = *(*a1 + 88);
  if (a2)
  {
    v6 = *(v2 + 72);
    sub_10000BE14(v5, v6, &unk_1019FA3E0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 104);
    v9 = *(v2 + 72);
    if (v7 != 1)
    {
      v10 = *(v2 + 8);
      sub_1011297D4(v9, *(v2 + 56), _s5BoardVMa);
      v11 = *v10;
      v12 = *(v2 + 96);
      v13 = *(v2 + 56);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 48);
        v15 = *(v2 + 24);
        sub_1005F1308(*v2, v15);
        sub_1011297D4(v13, v14, _s5BoardVMa);
        sub_100AA2978(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 80);
    sub_10000BE14(v5, v16, &unk_1019FA3E0);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 104);
    v9 = *(v2 + 80);
    if (v17 != 1)
    {
      v20 = *(v2 + 8);
      sub_1011297D4(v9, *(v2 + 64), _s5BoardVMa);
      v11 = *v20;
      v12 = *(v2 + 96);
      v13 = *(v2 + 64);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1011297D4(v13, v11[7] + *(*(v2 + 40) + 72) * v12, _s5BoardVMa);
      goto LABEL_10;
    }
  }

  sub_10000CAAC(v9, &unk_1019FA3E0);
  if (v8)
  {
    v18 = *(v2 + 96);
    v19 = **(v2 + 8);
    sub_100086F34(*(v19 + 48) + *(*(v2 + 16) + 72) * v18);
    sub_100BCE358(v18, v19);
  }

LABEL_10:
  v21 = *(v2 + 80);
  v22 = *(v2 + 88);
  v24 = *(v2 + 64);
  v23 = *(v2 + 72);
  v26 = *(v2 + 48);
  v25 = *(v2 + 56);
  v27 = *(v2 + 24);
  sub_10000CAAC(v22, &unk_1019FA3E0);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

void (*sub_1011292E8(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, uint64_t a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1007C95EC(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_100AAD820();
      v11 = v19;
      goto LABEL_11;
    }

    sub_100A994A8(v16, a3 & 1);
    v11 = sub_1007C95EC(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for CRLWPListStyle();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_101128764;
}

void sub_101129430(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, void *, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 32);
  if (v5)
  {
    v7 = v4[3];
    v8 = *v4[2];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      v12 = v4[1];
      a3(v7, v12, v5, v8);
      v13 = v12;
    }
  }

  else if ((*a1)[4])
  {
    v9 = v4[3];
    v10 = *v4[2];

    a4(v9, v10);
  }

  free(v4);
}

uint64_t (*sub_1011294F8(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_101129898;
}

uint64_t (*sub_101129520(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_101129548;
}

uint64_t sub_101129554(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1011296B4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_101127448(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1011296B4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_100A7AC0C(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_100A7AC0C(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1011297D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10112983C()
{
  result = qword_1019F69D0;
  if (!qword_1019F69D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F69D0);
  }

  return result;
}

uint64_t sub_1011298AC()
{
  v1 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  v2 = __chkstk_darwin(v1 - 8);
  v47 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v40 - v4;
  v6 = sub_10068AFC0();
  if (!v6)
  {
    return 1;
  }

  v7 = (v6 >> 62);
  if (v6 >> 62)
  {
    goto LABEL_56;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_57:

    return 0;
  }

  while (1)
  {
    v9 = v6 & 0xC000000000000001;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = v6;
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = v6;
      v11 = *(v6 + 32);
LABEL_7:
      v42 = v10;
      v41 = v11;
      v12 = **&v11[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
      v46 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_65;
      }

      v14 = result;
      v48 = v9;
      v15 = *(result + 16);

      v15(v12, v14);

      v45 = sub_1005B981C(&unk_101A10690);
      v0 = v5;
      CRRegister.wrappedValue.getter();
      sub_100BE9EEC(v5);
      v70 = v63;
      v71 = v64;
      v75 = v68;
      v76 = v69;
      v73 = v66;
      v74 = v67;
      v72 = v65;
      v77 = v63;
      v78[0] = v64;
      v78[4] = v68;
      v78[5] = v69;
      v78[2] = v66;
      v78[3] = v67;
      v78[1] = v65;
      if (v69)
      {
        sub_100006370(0, &qword_101A00EB0);
        v81[2] = v73;
        v81[3] = v74;
        v81[4] = v75;
        v82 = v76;
        v81[0] = v71;
        v81[1] = v72;
        sub_10074A990(v78, &v63);
        v0 = sub_1008B0490(v81);
        v9 = v42;
        if (BYTE8(v77) == 1)
        {
          if (qword_1019F2268 != -1)
          {
            goto LABEL_63;
          }

          goto LABEL_11;
        }

        goto LABEL_12;
      }

      v17 = 0;
      v9 = v42;
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

LABEL_27:
      __break(1u);
LABEL_28:

      goto LABEL_32;
    }

    __break(1u);
LABEL_61:
    __break(1u);
    do
    {
      __break(1u);
LABEL_63:
      swift_once();
LABEL_11:
      v5 = static OS_os_log.persistence;
      v16 = static os_log_type_t.info.getter();
      sub_100005404(v5, &_mh_execute_header, v16, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
LABEL_12:
      v17 = [objc_allocWithZone(CRLColorFill) initWithColor:v0];

      sub_100FC5DDC(&v70);
      if (v8 < 0)
      {
        goto LABEL_27;
      }

LABEL_13:
      if (v7)
      {
        if (v9 < 0)
        {
          v0 = v9;
        }

        else
        {
          v0 = (v9 & 0xFFFFFFFFFFFFFF8);
        }

        if (_CocoaArrayWrapper.endIndex.getter() < 1)
        {
          goto LABEL_61;
        }

        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_61;
        }
      }
    }

    while (v18 < v8);
    if (!v48)
    {
      goto LABEL_28;
    }

    if (v8 == 1)
    {
    }

    else
    {
      type metadata accessor for CRLShapeItem();

      v6 = 1;
      do
      {
        v19 = v6 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v6);
        v6 = v19;
      }

      while (v8 != v19);
    }

    if (v7)
    {

      v6 = _CocoaArrayWrapper.subscript.getter();
      v20 = v6;
      v8 = v24 >> 1;
      v23 = v22 < (v24 >> 1);
      if (v22 != v24 >> 1)
      {
        goto LABEL_35;
      }

LABEL_33:

      swift_unknownObjectRelease();

      return v17;
    }

LABEL_32:
    v20 = v9 & 0xFFFFFFFFFFFFFF8;
    v21 = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = 1;
    v23 = v8 > 1;
    if (v8 == 1)
    {
      goto LABEL_33;
    }

LABEL_35:
    v40[1] = v20;
    if (v23)
    {
      break;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    v0 = v6;
    v8 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v0;
    if (!v8)
    {
      goto LABEL_57;
    }
  }

  v25 = (v21 + 8 * v22);
  v26 = v22 + 1;
  v43 = v22;
  v44 = v8;
  while (1)
  {
    v48 = v25;
    v27 = *v25;
    v28 = **(*v25 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    result = swift_conformsToProtocol2();
    if (!result)
    {
      break;
    }

    v29 = result;
    v5 = *(result + 16);
    v7 = v27;

    v30 = v47;
    (v5)(v28, v29);

    CRRegister.wrappedValue.getter();
    sub_100BE9EEC(v30);
    v56 = v49;
    v57 = v50;
    v61 = v54;
    v62 = v55;
    v59 = v52;
    v60 = v53;
    v58 = v51;
    v63 = v49;
    v64 = v50;
    v68 = v54;
    v69 = v55;
    v66 = v52;
    v67 = v53;
    v65 = v51;
    if (v55)
    {
      sub_100006370(0, &qword_101A00EB0);
      v79[2] = v59;
      v79[3] = v60;
      v79[4] = v61;
      v80 = v62;
      v79[0] = v57;
      v79[1] = v58;
      sub_10074A990(&v64, &v49);
      v31 = sub_1008B0490(v79);
      if (BYTE8(v63))
      {
        if (qword_1019F2268 != -1)
        {
          swift_once();
        }

        v32 = static OS_os_log.persistence;
        v33 = static os_log_type_t.info.getter();
        sub_100005404(v32, &_mh_execute_header, v33, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
      }

      v34 = [objc_allocWithZone(CRLColorFill) initWithColor:v31];

      sub_100FC5DDC(&v56);
      v35 = v44;
      if (!v17)
      {
        v39 = v34;
        swift_unknownObjectRelease();

        return 0;
      }

      v36 = v34;
      sub_100006370(0, &qword_101A2BF30);
      v37 = v17;
      v38 = static NSObject.== infix(_:_:)();

      if ((v38 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {

      v35 = v44;
      if (v17)
      {
        goto LABEL_33;
      }
    }

    if (v35 == v26)
    {
      goto LABEL_33;
    }

    if (v26 >= v43)
    {
      v25 = (v48 + 8);
      v23 = v26++ < v35;
      if (v23)
      {
        continue;
      }
    }

    goto LABEL_55;
  }

  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

id sub_10112A004()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterShapeFillDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10112A1AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCanvasDotGridBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10112A204()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
  if (v1)
  {
    v2 = *((swift_isaMask & *v1) + 0x190);
    v3 = v1;
    v2();
  }
}

void *sub_10112A2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
    v9 = result;
    v10 = [result layoutForInfo:v8];

    result = 0;
    if (v10)
    {
      type metadata accessor for CRLWPLayout();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        if (([v11 layoutIsValid] & 1) == 0)
        {
          [v12 validate];
        }

        v13 = a3(a1, a2);
      }

      else
      {
        v13 = 0;
      }

      return v13;
    }
  }

  return result;
}

char *sub_10112A3CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
    v9 = result;
    v10 = [result layoutForInfo:v8];

    result = 0;
    if (v10)
    {
      type metadata accessor for CRLWPLayout();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        if (([v11 layoutIsValid] & 1) == 0)
        {
          [v12 validate];
        }

        v13 = sub_1007A421C(a1, a2, a3);
      }

      else
      {
        v13 = 0;
      }

      return v13;
    }
  }

  return result;
}

void *sub_10112A654(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = Strong;
  v5 = [Strong layoutForInfo:*(v1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for CRLWPLayout();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  if (([v6 layoutIsValid] & 1) == 0)
  {
    [v7 validate];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_10:

    return _swiftEmptyArrayStorage;
  }

  v9 = v8;
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v13[3] = type metadata accessor for CRLTextRange();
  v13[0] = a1;
  sub_10112A7A8(v7, a1, v9, &v12);

  v10 = v12;
  sub_100005070(v13);
  return v10;
}

uint64_t sub_10112A7A8@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1005B981C(&unk_1019F4D60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101465920;
  *(v8 + 32) = a2;
  v9 = qword_1019F1570;
  v10 = a2;
  if (v9 != -1)
  {
    swift_once();
  }

  v35[3] = sub_1005B981C(&unk_101A001E0);
  v35[0] = v8;

  sub_1007A22B0(a1, v8, &v34);
  sub_100005070(v35);
  v11 = v34;

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_15:

    v30 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_12:

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100C69B0C();
      v31 = v30;
LABEL_13:

      *a4 = v31;
      return result;
    }

LABEL_16:
    sub_100C69B0C();

    v31 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_13;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_5:
  v34 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v32 = a4;
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      [v15 rect];
      [a3 convertUnscaledToBoundsRect:?];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v25 = [v16 writingDirection];
      v26 = type metadata accessor for CRLTextSelectionRect();
      v27 = objc_allocWithZone(v26);
      v27[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__containsStart] = 0;
      v27[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__containsEnd] = 0;
      v28 = &v27[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__rect];
      *v28 = v18;
      v28[1] = v20;
      v28[2] = v22;
      v28[3] = v24;
      *&v27[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__writingDirection] = sub_1007260E4(v25);
      v33.receiver = v27;
      v33.super_class = v26;
      v29 = objc_msgSendSuper2(&v33, "init");
      [v29 setContainsStart:{objc_msgSend(v16, "containsStart")}];
      [v29 setContainsEnd:{objc_msgSend(v16, "containsEnd")}];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v12 != v14);

    v30 = v34;
    a4 = v32;
    if (!(v34 >> 62))
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

double sub_10112AB8C(void *a1)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v5[3] = type metadata accessor for CRLTextPosition();
  v5[0] = a1;
  sub_10112AC24(v1, a1, &v4);
  sub_100005070(v5);
  return v4;
}

void sub_10112AC24(uint64_t a1@<X0>, void *a2@<X1>, CGFloat *a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v7 = Strong;
  v8 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v8)
  {
    goto LABEL_9;
  }

  type metadata accessor for CRLWPLayout();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  if (([v9 layoutIsValid] & 1) == 0)
  {
    [v10 validate];
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
LABEL_8:

LABEL_9:
    x = CGRectInfinite.origin.x;
    y = CGRectInfinite.origin.y;
    width = CGRectInfinite.size.width;
    height = CGRectInfinite.size.height;
    goto LABEL_10;
  }

  v12 = v11;
  [v11 convertUnscaledToBoundsRect:sub_1007A2160(a2)];
  x = v13;
  y = v15;
  width = v17;
  height = v19;

LABEL_10:
  *a3 = x;
  a3[1] = y;
  a3[2] = width;
  a3[3] = height;
}

void sub_10112AE2C(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v9 = Strong;
  v10 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v10)
  {
    goto LABEL_11;
  }

  type metadata accessor for CRLWPLayout();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  if (([v11 layoutIsValid] & 1) == 0)
  {
    [v12 validate];
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
LABEL_10:

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v14 = v13;
  [v13 convertBoundsToUnscaledPoint:{a3, a4}];
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  sub_1007A3814(v12, &v16);

  v15 = v16;
LABEL_12:
  *a2 = v15;
}

void *sub_10112B0F8(CGFloat a1, CGFloat a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    goto LABEL_13;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_13;
  }

  if (*(*&v6[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
  {
    v9 = result;
    v10 = [result layoutForInfo:?];

    if (v10)
    {
      type metadata accessor for CRLWPLayout();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_17;
      }

      v11 = sub_1007539C4();
      if (v11)
      {
        v10 = v11;
        if ([v11 isEmpty])
        {
          v12 = [v10 start];
          v13 = (*((swift_isaMask & *v2) + 0x1B8))();
          v15 = v14;
          v17 = v16;
          v19 = v18;

          v26.origin.x = v13;
          v26.origin.y = v15;
          v26.size.width = v17;
          v26.size.height = v19;
          v20 = CGRectGetWidth(v26) + 5.0 + 5.0;
          if (v20 > *(v2 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_minimumCaretHitRegionWidth))
          {
            v21 = v20;
          }

          else
          {
            v21 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_minimumCaretHitRegionWidth);
          }

          v27.origin.x = v13;
          v27.origin.y = v15;
          v27.size.width = v17;
          v27.size.height = v19;
          CGRectGetHeight(v27);
          v22 = sub_100120414(v13, v15, v17, v19);
          v28.origin.x = sub_10011EC70(v22, v23, v21);
          v25.x = a1;
          v25.y = a2;
          v24 = CGRectContainsPoint(v28, v25);
          goto LABEL_18;
        }

LABEL_17:
        v24 = 0;
LABEL_18:

        v6 = v10;
        goto LABEL_14;
      }
    }

LABEL_13:
    v24 = 0;
LABEL_14:

    return v24;
  }

  __break(1u);
  return result;
}

void sub_10112B444(uint64_t a1, double a2, double a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = OBJC_IVAR____TtC8Freeform27CRLWPTextSelectionManager_i_loupeSession;
    if (!*(a1 + OBJC_IVAR____TtC8Freeform27CRLWPTextSelectionManager_i_loupeSession))
    {
      v8 = *(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
      if (v8)
      {
        v9 = *(v8 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView);
        if (v9)
        {
          v14 = Strong;
          v10 = v9;
          [v14 convertUnscaledToBoundsPoint:{a2, a3}];
          v13 = [objc_opt_self() beginLoupeSessionAtPoint:0 fromSelectionWidgetView:v10 inView:{v11, v12}];

          Strong = *(a1 + v7);
          *(a1 + v7) = v13;
        }
      }
    }
  }
}

void sub_10112B590(void *a1, double a2, double a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = OBJC_IVAR____TtC8Freeform27CRLWPTextSelectionManager_i_loupeSession;
    v23 = Strong;
    if (!*(a1 + OBJC_IVAR____TtC8Freeform27CRLWPTextSelectionManager_i_loupeSession))
    {
      if (qword_1019F1570 != -1)
      {
        swift_once();
      }

      sub_10112B444(a1, a2, a3);
      Strong = v23;
    }

    [Strong convertUnscaledToBoundsPoint:{a2, a3, v23}];
    v9 = v8;
    v11 = v10;
    if (qword_1019F1570 != -1)
    {
      swift_once();
    }

    sub_10112AE2C(a1, &v25, v9, v11);
    v12 = v25;
    if (v25)
    {
      (*((swift_isaMask & *a1) + 0x1B8))(v25);
      v17 = *(a1 + v7);
      if (v17)
      {
        v18 = v13;
        v19 = v14;
        v20 = v15;
        v21 = v16;
        v22 = v17;
        [v22 moveToPoint:1 withCaretRect:v9 trackingCaret:{v11, v18, v19, v20, v21}];
      }
    }
  }
}

void sub_10112B794(void *a1, double a2, double a3, uint64_t a4, void (*a5)(double, double))
{
  v8 = qword_1019F1570;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  a5(a2, a3);
}

id sub_10112B8D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPTextSelectionManager_i();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10112B93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  *(v10 + 552) = a4;
  *(v10 + 544) = a3;
  *(v10 + 536) = a10;
  *(v10 + 528) = a9;
  *(v10 + 520) = a8;
  *(v10 + 504) = a6;
  *(v10 + 512) = a7;
  *(v10 + 496) = a5;
  *(v10 + 480) = a1;
  *(v10 + 488) = a2;
  sub_1005B981C(&unk_1019F33C0);
  *(v10 + 560) = swift_task_alloc();
  *(v10 + 568) = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  *(v10 + 576) = swift_task_alloc();
  *(v10 + 584) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v10 + 592) = v11;
  *(v10 + 600) = *(v11 - 8);
  *(v10 + 608) = swift_task_alloc();
  *(v10 + 616) = swift_task_alloc();
  *(v10 + 624) = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  *(v10 + 632) = swift_task_alloc();
  *(v10 + 640) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v10 + 648) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v10 + 656) = v13;
  *(v10 + 664) = v12;

  return _swift_task_switch(sub_10112BB0C, v13, v12);
}

uint64_t sub_10112BB0C()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  v5 = *(v0 + 576);
  v6 = *(v0 + 560);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  v9 = *(v0 + 520);
  v10 = *(v0 + 512);
  v11 = *(v0 + 488);
  *(v0 + 432) = v10;
  *(v0 + 440) = v9;
  *(v0 + 448) = v8;
  *(v0 + 456) = v7;
  v71.origin.x = v10;
  v71.origin.y = v9;
  v71.size.width = v8;
  v71.size.height = v7;
  v72 = CGRectIntegral(v71);
  width = v72.size.width;
  height = v72.size.height;
  v72.origin.x = v10;
  v72.origin.y = v9;
  v72.size.width = v8;
  v72.size.height = v7;
  v73 = CGRectIntegral(v72);
  v14 = v73.size.width;
  v15 = v73.size.height;
  v16 = *(v3 + 16);
  v16(v1, v11, v4, v73.origin, *&v73.origin.y);
  (v16)(v2, v1, v4);
  (v16)(v5, v2, v4);
  (v16)(v6, v2, v4);
  v17 = *(v3 + 56);
  *(v0 + 672) = v17;
  *(v0 + 680) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v17(v6, 0, 1, v4);
  v18 = URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)();
  v20 = v19;
  v68 = *(v0 + 640);
  v21 = *(v0 + 632);
  v22 = *(v0 + 624);
  v60 = *(v0 + 608);
  v23 = *(v0 + 600);
  v24 = *(v0 + 592);
  v25 = *(v0 + 584);
  v26 = *(v0 + 576);
  v61 = *(v0 + 568);
  v62 = *(v0 + 616);
  v27 = *(v0 + 496);
  v64 = *(v0 + 512);
  v65 = matrix_identity_float4x4.columns[3];
  v63 = *(v0 + 528);
  sub_100686028(*(v0 + 560));
  v28 = *(v23 + 8);
  v28(v60, v24);
  v28(v62, v24);
  v29 = (v26 + *(v61 + 20));
  *v29 = v18;
  v29[1] = v20;
  sub_10112CBB4(v26, v25, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  sub_10112CBB4(v25, v21, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  v30 = v21 + *(v22 + 20);
  *v30 = 1103626240;
  *(v30 + 16) = v65;
  *(v30 + 32) = width;
  *(v30 + 40) = height;
  *(v30 + 48) = v14;
  *(v30 + 56) = v15;
  *(v30 + 64) = v27;
  v66 = v22;
  v31 = (v21 + *(v22 + 24));
  *v31 = v64;
  v31[1] = v63;
  sub_10112CBB4(v21, v68, type metadata accessor for CRLUSDRendering.SceneRequest);
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 640);
  v69 = *(v0 + 552);
  v33 = *(v0 + 504);
  v34 = *(v0 + 496);
  v35 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  v37 = URL.lastPathComponent.getter();
  v39 = v38;
  *(inited + 56) = &type metadata for String;
  v40 = sub_1000053B0();
  *(inited + 64) = v40;
  *(inited + 32) = v37;
  *(inited + 40) = v39;
  *(inited + 96) = &type metadata for CGFloat;
  v41 = sub_100B31FEC();
  *(inited + 104) = v41;
  *(inited + 72) = v34;
  *(inited + 136) = &type metadata for CGFloat;
  *(inited + 144) = v41;
  *(inited + 112) = v33;
  v42 = CGRect.debugDescription.getter();
  *(inited + 176) = &type metadata for String;
  *(inited + 184) = v40;
  *(inited + 152) = v42;
  *(inited + 160) = v43;
  v44 = static os_log_type_t.debug.getter();
  sub_100005404(v35, &_mh_execute_header, v44, "(Import) renderImportSnapshot(url: %@, contentsScale: %{public}.2f, canvasViewScale: %{public}.2f, naturalBounds: %{public}@)", 125, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_10146C6B0;
  _StringGuts.grow(_:)(35);

  sub_100AC0370();
  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  v47._countAndFlagsBits = 0x69666E6F63202C3ELL;
  v47._object = 0xEB00000000203A67;
  String.append(_:)(v47);
  v48 = v32 + *(v66 + 20);
  *(v0 + 16) = *v48;
  v49 = *(v48 + 16);
  v50 = *(v48 + 32);
  v51 = *(v48 + 48);
  *(v0 + 80) = *(v48 + 64);
  *(v0 + 48) = v50;
  *(v0 + 64) = v51;
  *(v0 + 32) = v49;
  v52._countAndFlagsBits = sub_100C70810();
  String.append(_:)(v52);

  v53._countAndFlagsBits = 41;
  v53._object = 0xE100000000000000;
  String.append(_:)(v53);
  *(v45 + 56) = &type metadata for String;
  *(v45 + 64) = v40;
  *(v45 + 32) = 0xD000000000000013;
  *(v45 + 40) = 0x80000001015957C0;
  v54 = static os_log_type_t.debug.getter();
  sub_100005404(v35, &_mh_execute_header, v54, "(Import) request: %@", 20, 2, v45);
  swift_setDeallocating();
  sub_100005070(v45 + 32);
  ObjectType = swift_getObjectType();
  *(v0 + 688) = ObjectType;
  v67 = (*(v69 + 16) + **(v69 + 16));
  v56 = swift_task_alloc();
  *(v0 + 696) = v56;
  *v56 = v0;
  v56[1] = sub_10112C264;
  v57 = *(v0 + 640);
  v58 = *(v0 + 552);

  return v67(v57, ObjectType, v58);
}

uint64_t sub_10112C264()
{
  v2 = *v1;
  *(v2 + 704) = v0;

  if (v0)
  {
    v3 = *(v2 + 664);
    v4 = *(v2 + 656);

    return _swift_task_switch(sub_10112CA04, v4, v3);
  }

  else
  {
    v5 = *(v2 + 496);
    v11 = (*(*(v2 + 552) + 48) + **(*(v2 + 552) + 48));
    v6 = swift_task_alloc();
    *(v2 + 712) = v6;
    *v6 = v2;
    v6[1] = sub_10112C474;
    v7 = *(v2 + 552);
    v8.n128_f32[0] = v5;
    v9 = *(v2 + 688);

    return v11(v9, v7, v8);
  }
}

uint64_t sub_10112C474(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *v4;
  *(v6 + 424) = v3;
  *(v6 + 416) = a3;
  *(v6 + 400) = a1;
  *(v6 + 408) = a2;
  *(v6 + 392) = v4;
  *(v6 + 720) = a1;
  *(v6 + 728) = v3;

  v7 = *(v5 + 664);
  v8 = *(v5 + 656);
  if (v3)
  {
    v9 = sub_10112CADC;
  }

  else
  {
    v9 = sub_10112C5CC;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10112C5CC()
{
  v1 = *(v0 + 720);

  if (v1)
  {
    v48 = *(v0 + 416);
    v47 = *(v0 + 408);
    v2 = *(v0 + 672);
    v3 = *(v0 + 432);
    v4 = *(v0 + 440);
    v5 = *(v0 + 448);
    v6 = *(v0 + 456);
    v45 = *(v0 + 720);
    v46 = *(v0 + 640);
    v7 = *(v0 + 592);
    v8 = *(v0 + 504);
    v9 = *(v0 + 480);
    v10 = sub_1005357BC(v45);
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = type metadata accessor for CRLDataAssetStorage();
    v15 = swift_allocObject();
    type metadata accessor for CRLUnfairLock();
    v16 = swift_allocObject();
    sub_100024E98(v11, v13);
    v17 = swift_slowAlloc();
    *v17 = 0;
    *(v16 + 16) = v17;
    atomic_thread_fence(memory_order_acq_rel);
    *(v15 + 6) = v16;
    v18 = OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__assetUUID;
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    *&v15[OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__temporaryDirectoryForAVAsset] = 0;
    v2(&v15[OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__temporaryURLForAVAsset], 1, 1, v7);
    *(v15 + 2) = v11;
    *(v15 + 3) = v13;
    *(v15 + 4) = 0x702E74726F706D69;
    *(v15 + 5) = 0xEA0000000000676ELL;
    *(v0 + 376) = v14;
    *(v0 + 384) = &off_10188D790;
    *(v0 + 352) = v15;
    v20 = type metadata accessor for CRLAsset();
    v21 = objc_allocWithZone(v20);
    sub_10000630C(v0 + 352, v21 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
    *(v0 + 464) = v21;
    *(v0 + 472) = v20;
    v22 = objc_msgSendSuper2((v0 + 464), "init");
    sub_100005070(v0 + 352);
    v23 = [objc_allocWithZone(CRLUSDZImageHitTestManager) initWith:v22 naturalBounds:v3 canvasViewScale:{v4, v5, v6, v8}];
    [v23 visibleBounds];
    x = v50.origin.x;
    y = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
    v51.origin.x = CGRectNull.origin.x;
    v51.origin.y = CGRectNull.origin.y;
    v51.size.width = CGRectNull.size.width;
    v51.size.height = CGRectNull.size.height;
    v28 = CGRectEqualToRect(v50, v51);
    if (v28)
    {
      v29 = v3;
    }

    else
    {
      v29 = x;
    }

    if (v28)
    {
      v30 = v4;
    }

    else
    {
      v30 = y;
    }

    if (v28)
    {
      v31 = v5;
    }

    else
    {
      v31 = width;
    }

    if (v28)
    {
      v32 = v6;
    }

    else
    {
      v32 = height;
    }

    sub_1001217FC(v29, v30, v31, v32);
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    sub_10112CC1C(v46);

    *v9 = v11;
    *(v9 + 8) = v13;
    *(v9 + 16) = v34;
    *(v9 + 24) = v36;
    *(v9 + 32) = v38;
    *(v9 + 40) = v40;
    *(v9 + 48) = v47;
    *(v9 + 56) = v48 & 1;
    v41 = *(v0 + 8);
  }

  else
  {
    v42 = *(v0 + 640);
    sub_10086E6A0();
    swift_allocError();
    *v43 = 0xD00000000000001DLL;
    *(v43 + 8) = 0x80000001015C3F40;
    *(v43 + 16) = 5;
    swift_willThrow();
    sub_10112CC1C(v42);

    v41 = *(v0 + 8);
  }

  return v41();
}

uint64_t sub_10112CA04()
{
  v1 = *(v0 + 640);

  sub_10112CC1C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10112CADC()
{
  v1 = *(v0 + 640);

  sub_10112CC1C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10112CBB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10112CC1C(uint64_t a1)
{
  v2 = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10112CC78(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v3 - 8);
  v78 = v3;
  __chkstk_darwin(v3);
  v75 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019FB750);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v72 = &v71 - v8;
  v9 = [a1 ownerName];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    v16 = 0;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v16 = v15 ^ 1;
  }

  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v17 = 0xEC00000065706F63;
  v18 = 0x5320646572616853;
  v19 = static OS_os_log.dataSync;
  v83 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v21 = inited;
  v71 = xmmword_10146BDE0;
  *(inited + 16) = xmmword_10146BDE0;
  if ((v16 & 1) == 0)
  {
    v18 = 0x2065746176697250;
    v17 = 0xED000065706F6353;
  }

  v80 = v16;
  *(inited + 56) = &type metadata for String;
  v22 = sub_1000053B0();
  v21[8] = v22;
  v81 = v17;
  v82 = v18;
  v21[4] = v18;
  v21[5] = v17;
  v79 = a1;
  v23 = [a1 ckShortDescription];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = v19;
  v21[12] = &type metadata for String;
  v21[13] = v22;
  v21[9] = v24;
  v21[10] = v26;
  v28 = static os_log_type_t.info.getter();
  sub_100005404(v19, &_mh_execute_header, v28, "<%{public}@> Refetching zone: %{public}@", 40, 2, v21);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v29 = *(v1 + 16);
  if (!*(v29 + 16) || (v30 = sub_10002D978(v80 & 1), (v31 & 1) == 0))
  {
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_10146C6B0;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = v22;
    v61 = v81;
    *(v60 + 32) = v82;
    *(v60 + 40) = v61;
    v62 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v62, "No syncController for syncScope: <%{public}@>", 45, 2, v60);
    swift_setDeallocating();
    v63 = v60 + 32;
    return sub_100005070(v63);
  }

  v32 = *(*(v29 + 56) + 8 * v30);
  v33 = OBJC_IVAR____TtC8Freeform17CRLSyncController_syncEngine;
  swift_beginAccess();
  sub_10112D994(v32 + v33, &v85);
  if (!v87)
  {
    v64 = v32;
    sub_10112DA04(&v85);
    v65 = swift_initStackObject();
    v66 = v65;
    *(v65 + 16) = xmmword_10146C6B0;
    v67 = 0x5320646572616853;
    if (!v64[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
    {
      v67 = 0x2065746176697250;
    }

    v68 = 0xED000065706F6353;
    if (v64[OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope])
    {
      v68 = 0xEC00000065706F63;
    }

    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = v22;
    *(v65 + 32) = v67;
    v69 = v65 + 32;
    *(v65 + 40) = v68;
    v70 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v70, "<%{public}@> Can't fetch records for zoneID. There is no syncEngine set", 71, 2, v66);

    swift_setDeallocating();
    v63 = v69;
    return sub_100005070(v63);
  }

  sub_100050F74(&v85, v90);
  v34 = swift_initStackObject();
  v35 = v34;
  *(v34 + 16) = v71;
  v36 = 0x5320646572616853;
  if (!*(v32 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v36 = 0x2065746176697250;
  }

  v37 = 0xED000065706F6353;
  if (*(v32 + OBJC_IVAR____TtC8Freeform17CRLSyncController_syncScope))
  {
    v37 = 0xEC00000065706F63;
  }

  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = v22;
  *(v34 + 32) = v36;
  *(v34 + 40) = v37;
  v83 = v32;
  v38 = v27;
  v39 = [v79 zoneName];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v35[12] = &type metadata for String;
  v35[13] = v22;
  v35[9] = v40;
  v35[10] = v42;
  v43 = static os_log_type_t.default.getter();
  sub_100005404(v38, &_mh_execute_header, v43, "<%{public}@> Fetching targeted changes for zoneID: <%{public}@>", 63, 2, v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  v44 = v72;
  static TaskPriority.userInitiated.getter();
  v45 = type metadata accessor for TaskPriority();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = swift_allocObject();
  v47 = v83;
  swift_unknownObjectWeakInit();
  sub_10000630C(v90, &v85);
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v46;
  v49 = v79;
  *(v48 + 40) = v79;
  sub_100050F74(&v85, v48 + 48);
  *(v48 + 88) = 0;
  *(v48 + 96) = 25;
  *(v48 + 104) = 2;
  v50 = v49;
  v51 = sub_10064191C(0, 0, v44, &unk_1014A08A0, v48);
  v52 = swift_allocObject();
  v52[2] = v47;
  v52[3] = v50;
  v52[4] = v51;
  v88 = sub_100C08440;
  v89 = v52;
  *&v85 = _NSConcreteStackBlock;
  *(&v85 + 1) = *"";
  v86 = sub_100007638;
  v87 = &unk_1018B1FF0;
  v53 = _Block_copy(&v85);
  v54 = v47;
  v55 = v50;

  v56 = v73;
  static DispatchQoS.unspecified.getter();
  v84 = _swiftEmptyArrayStorage;
  sub_1005D91D8();
  sub_1005B981C(&unk_1019FF400);
  sub_10000D494();
  v57 = v75;
  v58 = v78;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v53);

  (*(v77 + 8))(v57, v58);
  (*(v74 + 8))(v56, v76);
  sub_100005070(v90);
}

void sub_10112D538(uint64_t a1, char a2, char a3)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v8 = sub_10002D978(a3 & 1), (v9 & 1) != 0))
  {
    v16 = *(*(v5 + 56) + 8 * v8);
    sub_1009E0E30(a1, a2);
  }

  else
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v12 = inited;
    *(inited + 16) = xmmword_10146C6B0;
    if (a3)
    {
      v13 = 0x5320646572616853;
    }

    else
    {
      v13 = 0x2065746176697250;
    }

    if (a3)
    {
      v14 = 0xEC00000065706F63;
    }

    else
    {
      v14 = 0xED000065706F6353;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    v15 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v15, "No syncController for syncScope: <%{public}@>", 45, 2, v12);
    swift_setDeallocating();
    sub_100005070(v12 + 32);
  }
}

uint64_t sub_10112D70C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);
    v3 = v2 + 64;
    v4 = -1;
    v5 = -1 << *(v2 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v2 + 64);
    v7 = (63 - v5) >> 6;
    v18 = v2;

    v9 = 0;
    while (v6)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = *(*(v18 + 56) + ((v10 << 9) | (8 * v11)));
      queue = *&v12[OBJC_IVAR____TtC8Freeform17CRLSyncController_queue];
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_10112DA6C;
      *(v14 + 24) = v13;
      v0[6] = sub_10002AAE4;
      v0[7] = v14;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = *"";
      v0[4] = sub_10002AAB8;
      v0[5] = &unk_1018B2068;
      v15 = _Block_copy(v0 + 2);
      v16 = v12;

      dispatch_sync(queue, v15);

      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        __break(1u);
LABEL_13:

        goto LABEL_14;
      }
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_13;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    v17 = v0[1];

    return v17();
  }

  return result;
}

uint64_t sub_10112D994(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0BA28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10112DA04(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A0BA28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10112DA90(uint64_t a1, double a2)
{
  v13[3] = &type metadata for CRLLayerAnimationSequence;
  v13[4] = &off_10188A588;
  v13[0] = a1;
  *&v13[1] = a2;
  v2 = *sub_100020E58(v13, &type metadata for CRLLayerAnimationSequence);

  v3 = sub_100881BE4(v2);
  v14[3] = &type metadata for CRLLayerAnimationGroup;
  v14[4] = &off_101885E50;
  v14[0] = v3;
  v14[1] = v4;
  sub_100005070(v13);
  v5 = sub_100020E58(v14, &type metadata for CRLLayerAnimationGroup);
  __chkstk_darwin(v5);
  v7 = (v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_100788C18(*v8, *(v8 + 8));
  v7[1] = v9;
  sub_1007894CC();
  v11 = v10;
  (_swift_cvw_destroy)(v7, &type metadata for CRLLayerAnimationGroup);
  sub_100005070(v14);
  return v11;
}

double sub_10112DC08(uint64_t a1, double a2, double a3)
{
  v16[3] = &type metadata for CRLLayerAnimationCascade;
  v16[4] = &off_101887160;
  *v16 = a2;
  v16[1] = a1;
  *&v16[2] = a3;
  v3 = sub_100020E58(v16, &type metadata for CRLLayerAnimationCascade);
  v4 = *v3;
  v5 = *(v3 + 1);

  v6 = sub_1007CF1AC(v5, v4);
  v17[3] = &type metadata for CRLLayerAnimationGroup;
  v17[4] = &off_101885E50;
  v17[0] = v6;
  v17[1] = v7;
  sub_100005070(v16);
  v8 = sub_100020E58(v17, &type metadata for CRLLayerAnimationGroup);
  __chkstk_darwin(v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = sub_100788C18(*v11, *(v11 + 8));
  v10[1] = v12;
  sub_1007894CC();
  v14 = v13;
  (_swift_cvw_destroy)(v10, &type metadata for CRLLayerAnimationGroup);
  sub_100005070(v17);
  return v14;
}

uint64_t sub_10112DD90()
{
  v1 = type metadata accessor for CRLTweenLayerAnimation();
  __chkstk_darwin(v1);
  v3 = &v199 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = v4;
  v218 = &off_10187CB20;
  v5 = sub_10002C58C(v216);
  sub_10113E1F4(v0, v5, type metadata accessor for CRLTweenLayerAnimation);
  v6 = v217;
  v7 = v218;
  v8 = sub_100020E58(v216, v217);
  v9 = *(v6 - 8);
  __chkstk_darwin(v8);
  v11 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10113E1F4(v12, v11, type metadata accessor for CRLTweenLayerAnimation);
  v13 = (v7[4])(v6, v7);
  (*(v9 + 8))(v11, v6);
  sub_100005070(v216);
  v207 = v13[2];
  if (!v207)
  {
    return v13;
  }

  v14 = 0;
  v201 = kCAFillModeRemoved;
  v200 = kCAFillModeForwards;
  v203 = kCAFillModeBackwards;
  v202 = kCAFillModeBoth;
  v204 = v1;
  v205 = v3;
  while (v14 < v13[2])
  {
    v15 = (v13 + 4);
    sub_10000630C(&v13[5 * v14 + 4], v216);
    sub_1005B981C(&qword_1019F5870);
    if (swift_dynamicCast())
    {
      sub_1005F8BCC(v3);
      goto LABEL_4;
    }

    if (v14 >= v13[2])
    {
      goto LABEL_81;
    }

    sub_10000630C(&v13[5 * v14 + 4], &v222);
    v16 = v223;
    v17 = v224;
    sub_100020E58(&v222, v223);
    v208 = (*(v17 + 64))(v16, v17);
    if (!v208)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_10113CE44(v13);
      }

      if (v14 >= v13[2])
      {
        goto LABEL_83;
      }

      goto LABEL_54;
    }

    v18 = v223;
    v19 = v224;
    sub_100020E58(&v222, v223);
    (*(v19 + 88))(&v219, v18, v19);
    v20 = v220;
    v21 = v221;
    sub_100020E58(&v219, v220);
    (*(v21 + 56))(v216, v20, v21);
    sub_100005070(&v219);
    v22 = v13;
    v23 = sub_100B7694C();
    sub_100687CF4(v216);
    v206 = v22;
    v24 = v22[2];
    if (v24)
    {
      v25 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_10000630C(v15, &v212);
        v26 = v213;
        v27 = v214;
        sub_100020E58(&v212, v213);
        v28 = (*(v27 + 64))(v26, v27);
        if (v28)
        {
          v29 = v28;
          sub_1009354E4();
          v30 = v208;
          v31 = static NSObject.== infix(_:_:)();

          if (v31)
          {
            v32 = v213;
            v33 = v214;
            sub_100020E58(&v212, v213);
            (*(v33 + 88))(&v209, v32, v33);
            v34 = v210;
            v35 = v211;
            sub_100020E58(&v209, v210);
            v36 = (*(v35 + 80))(v34, v35);
            v37 = sub_100B76520(v36);
            v39 = v38;
            if (v37 == sub_100B76520(v23) && v39 == v40)
            {

              sub_100005070(&v209);
LABEL_22:
              sub_100050F74(&v212, &v209);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v215 = v25;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1007767E4(0, v25[2] + 1, 1);
                v25 = v215;
              }

              v45 = v25[2];
              v44 = v25[3];
              if (v45 >= v44 >> 1)
              {
                sub_1007767E4((v44 > 1), v45 + 1, 1);
                v25 = v215;
              }

              v25[2] = v45 + 1;
              sub_100050F74(&v209, &v25[5 * v45 + 4]);
              goto LABEL_12;
            }

            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_100005070(&v209);
            if (v42)
            {
              goto LABEL_22;
            }
          }
        }

        sub_100005070(&v212);
LABEL_12:
        v15 += 40;
        if (!--v24)
        {
          goto LABEL_32;
        }
      }
    }

    v25 = _swiftEmptyArrayStorage;
LABEL_32:
    *&v212 = v25;

    sub_101137F0C(&v212);

    v46 = v212;
    sub_10093524C(v212, &v219);
    v13 = v206;
    if (!v220)
    {

      sub_10000CAAC(&v219, &qword_1019F57A0);
      v3 = v205;
LABEL_51:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_10113CE44(v13);
      }

      if (v14 >= v13[2])
      {
        goto LABEL_82;
      }

LABEL_54:
      v115 = &v13[5 * v14];
      sub_100005070((v115 + 4));
      sub_100050F74(&v222, (v115 + 4));
      goto LABEL_4;
    }

    sub_100050F74(&v219, v216);
    sub_100935398(v46, &v212);

    v3 = v205;
    if (!v213)
    {

      sub_10000CAAC(&v212, &qword_1019F57A0);
      sub_100005070(v216);
      goto LABEL_51;
    }

    sub_100050F74(&v212, &v219);
    v47 = v223;
    v48 = v224;
    sub_100020E58(&v222, v223);
    if ((*(v48 + 128))(v216, v47, v48))
    {
      v49 = v217;
      v50 = v218;
      sub_100020E58(v216, v217);
      if ((v50[16])(&v219, v49, v50))
      {
        v51 = v223;
        v52 = v224;
        sub_100020E58(&v222, v223);
        (*(v52 + 88))(&v212, v51, v52);
        v53 = v213;
        v54 = v214;
        sub_100020E58(&v212, v213);
        v55 = (*(v54 + 112))(v53, v54);
        sub_100005070(&v212);
        if (v55 == 2)
        {
          v56 = v223;
          v57 = v224;
          sub_10002A948(&v222, v223);
          v58 = (*(v57 + 104))(&v212, v56, v57);
          v60 = *(v59 + 24);
          v61 = *(v59 + 32);
          sub_10002A948(v59, v60);
          v62 = *(v61 + 120);
          v63 = v61;
          v13 = v206;
          v62(1, v60, v63);
          v58(&v212, 0);
        }

        v64 = v223;
        v65 = v224;
        sub_100020E58(&v222, v223);
        (*(v65 + 88))(&v212, v64, v65);
        v66 = v213;
        v67 = v214;
        sub_100020E58(&v212, v213);
        v68 = (*(v67 + 136))(v66, v67);
        sub_100005070(&v212);
        if (v68 == 2)
        {
          v69 = v223;
          v70 = v224;
          sub_10002A948(&v222, v223);
          v71 = (*(v70 + 104))(&v212, v69, v70);
          v73 = *(v72 + 24);
          v74 = *(v72 + 32);
          sub_10002A948(v72, v73);
          v75 = *(v74 + 144);
          v76 = v74;
          v13 = v206;
          v75(1, v73, v76);
          v71(&v212, 0);
        }

        v77 = v223;
        v78 = v224;
        sub_100020E58(&v222, v223);
        (*(v78 + 88))(&v212, v77, v78);
        v79 = v213;
        v80 = v214;
        sub_100020E58(&v212, v213);
        v81 = (*(v80 + 88))(v79, v80);
        sub_100005070(&v212);
        if (v81)
        {
        }

        else
        {
          v167 = v223;
          v168 = v224;
          sub_10002A948(&v222, v223);
          v169 = *(v168 + 104);
          v170 = v202;
          v171 = v202;
          v172 = v169(&v212, v167, v168);
          v3 = v205;
          v173 = v172;
          v175 = *(v174 + 24);
          v176 = *(v174 + 32);
          sub_10002A948(v174, v175);
          v177 = *(v176 + 96);
          v178 = v176;
          v13 = v206;
          v177(v170, v175, v178);
          v173(&v212, 0);
        }

        goto LABEL_72;
      }
    }

    v82 = v223;
    v83 = v224;
    sub_100020E58(&v222, v223);
    LOBYTE(v83) = (*(v83 + 128))(v216, v82, v83);
    v84 = v223;
    v85 = v224;
    sub_100020E58(&v222, v223);
    if (v83)
    {
      (*(v85 + 88))(&v212, v84, v85);
      v86 = v213;
      v87 = v214;
      sub_100020E58(&v212, v213);
      v88 = (*(v87 + 112))(v86, v87);
      sub_100005070(&v212);
      if (v88 == 2)
      {
        v89 = v223;
        v90 = v224;
        sub_10002A948(&v222, v223);
        v91 = (*(v90 + 104))(&v212, v89, v90);
        v93 = *(v92 + 24);
        v94 = *(v92 + 32);
        sub_10002A948(v92, v93);
        (*(v94 + 120))(1, v93, v94);
        v91(&v212, 0);
      }

      v95 = v223;
      v96 = v224;
      sub_100020E58(&v222, v223);
      (*(v96 + 88))(&v212, v95, v96);
      v97 = v213;
      v98 = v214;
      sub_100020E58(&v212, v213);
      v99 = (*(v98 + 136))(v97, v98);
      sub_100005070(&v212);
      if (v99 == 2)
      {
        v100 = v223;
        v101 = v224;
        sub_10002A948(&v222, v223);
        v102 = (*(v101 + 104))(&v212, v100, v101);
        v104 = *(v103 + 24);
        v105 = *(v103 + 32);
        sub_10002A948(v103, v104);
        (*(v105 + 144))(0, v104, v105);
        v102(&v212, 0);
      }

      v106 = v223;
      v107 = v224;
      sub_100020E58(&v222, v223);
      (*(v107 + 88))(&v212, v106, v107);
      v108 = v213;
      v109 = v214;
      sub_100020E58(&v212, v213);
      v110 = (*(v109 + 88))(v108, v109);
      sub_100005070(&v212);
      if (!v110)
      {
        v111 = v223;
        v112 = v224;
        sub_10002A948(&v222, v223);
        v113 = *(v112 + 104);
        v114 = v203;
LABEL_70:
        v179 = v114;
        v180 = v113(&v212, v111, v112);
        v3 = v205;
        v181 = v180;
        v183 = *(v182 + 24);
        v184 = *(v182 + 32);
        sub_10002A948(v182, v183);
        (*(v184 + 96))(v114, v183, v184);
        v181(&v212, 0);
        goto LABEL_71;
      }
    }

    else
    {
      v116 = (*(v85 + 128))(&v219, v84, v85);
      v117 = v223;
      v118 = v224;
      sub_100020E58(&v222, v223);
      if (v116)
      {
        (*(v118 + 88))(&v212, v117, v118);
        v119 = v213;
        v120 = v214;
        sub_100020E58(&v212, v213);
        v121 = (*(v120 + 112))(v119, v120);
        sub_100005070(&v212);
        if (v121 == 2)
        {
          v122 = v223;
          v123 = v224;
          sub_10002A948(&v222, v223);
          v124 = (*(v123 + 104))(&v212, v122, v123);
          v126 = *(v125 + 24);
          v127 = *(v125 + 32);
          sub_10002A948(v125, v126);
          (*(v127 + 120))(0, v126, v127);
          v124(&v212, 0);
        }

        v128 = v223;
        v129 = v224;
        sub_100020E58(&v222, v223);
        (*(v129 + 88))(&v212, v128, v129);
        v130 = v213;
        v131 = v214;
        sub_100020E58(&v212, v213);
        v132 = (*(v131 + 136))(v130, v131);
        sub_100005070(&v212);
        if (v132 == 2)
        {
          v133 = v223;
          v134 = v224;
          sub_10002A948(&v222, v223);
          v135 = (*(v134 + 104))(&v212, v133, v134);
          v137 = *(v136 + 24);
          v138 = *(v136 + 32);
          sub_10002A948(v136, v137);
          (*(v138 + 144))(1, v137, v138);
          v135(&v212, 0);
        }

        v139 = v223;
        v140 = v224;
        sub_100020E58(&v222, v223);
        (*(v140 + 88))(&v212, v139, v140);
        v141 = v213;
        v142 = v214;
        sub_100020E58(&v212, v213);
        v110 = (*(v142 + 88))(v141, v142);
        sub_100005070(&v212);
        if (!v110)
        {
          v111 = v223;
          v112 = v224;
          sub_10002A948(&v222, v223);
          v113 = *(v112 + 104);
          v114 = v200;
          goto LABEL_70;
        }
      }

      else
      {
        (*(v118 + 88))(&v212, v117, v118);
        v143 = v213;
        v144 = v214;
        sub_100020E58(&v212, v213);
        v145 = (*(v144 + 112))(v143, v144);
        sub_100005070(&v212);
        if (v145 == 2)
        {
          v146 = v223;
          v147 = v224;
          sub_10002A948(&v222, v223);
          v148 = (*(v147 + 104))(&v212, v146, v147);
          v150 = *(v149 + 24);
          v151 = *(v149 + 32);
          sub_10002A948(v149, v150);
          (*(v151 + 120))(0, v150, v151);
          v148(&v212, 0);
        }

        v152 = v223;
        v153 = v224;
        sub_100020E58(&v222, v223);
        (*(v153 + 88))(&v212, v152, v153);
        v154 = v213;
        v155 = v214;
        sub_100020E58(&v212, v213);
        v156 = (*(v155 + 136))(v154, v155);
        sub_100005070(&v212);
        if (v156 == 2)
        {
          v157 = v223;
          v158 = v224;
          sub_10002A948(&v222, v223);
          v159 = (*(v158 + 104))(&v212, v157, v158);
          v161 = *(v160 + 24);
          v162 = *(v160 + 32);
          sub_10002A948(v160, v161);
          (*(v162 + 144))(0, v161, v162);
          v159(&v212, 0);
        }

        v163 = v223;
        v164 = v224;
        sub_100020E58(&v222, v223);
        (*(v164 + 88))(&v212, v163, v164);
        v165 = v213;
        v166 = v214;
        sub_100020E58(&v212, v213);
        v110 = (*(v166 + 88))(v165, v166);
        sub_100005070(&v212);
        if (!v110)
        {
          v111 = v223;
          v112 = v224;
          sub_10002A948(&v222, v223);
          v113 = *(v112 + 104);
          v114 = v201;
          goto LABEL_70;
        }
      }
    }

LABEL_71:
    v13 = v206;
LABEL_72:
    v185 = v223;
    v186 = v224;
    sub_100020E58(&v222, v223);
    (*(v186 + 88))(&v212, v185, v186);
    v187 = v213;
    v188 = v214;
    sub_100020E58(&v212, v213);
    v189 = (*(v188 + 160))(v187, v188);
    sub_100005070(&v212);
    if (v189 == 2)
    {
      v190 = v223;
      v191 = v224;
      sub_10002A948(&v222, v223);
      v192 = (*(v191 + 104))(&v212, v190, v191);
      v194 = *(v193 + 24);
      v195 = *(v193 + 32);
      sub_10002A948(v193, v194);
      v196 = *(v195 + 168);
      v197 = v195;
      v13 = v206;
      v196(1, v194, v197);
      v192(&v212, 0);

      sub_100005070(&v219);
    }

    else
    {
      sub_100005070(&v219);
    }

    sub_100005070(v216);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10113CE44(v13);
    }

    if (v14 >= v13[2])
    {
      goto LABEL_84;
    }

    sub_100774FCC(&v13[5 * v14 + 4], &v222);
    sub_100005070(&v222);
LABEL_4:
    if (++v14 == v207)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10112F1E8(uint64_t (*a1)(void, __n128), uint64_t a2, uint64_t (*a3)(void))
{
  v7 = type metadata accessor for CRLTweenLayerAnimation();
  v8 = __chkstk_darwin(v7);
  v10 = &v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = a1(0, v8);
  v224 = a2;
  v11 = sub_10002C58C(v222);
  sub_10113E1F4(v3, v11, a3);
  v12 = v223;
  v13 = v224;
  v14 = sub_100020E58(v222, v223);
  v15 = *(v12 - 8);
  __chkstk_darwin(v14);
  v17 = &v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10113E1F4(v18, v17, a3);
  v19 = (*(v13 + 32))(v12, v13);
  (*(v15 + 8))(v17, v12);
  sub_100005070(v222);
  v213 = v19[2];
  if (!v213)
  {
    return v19;
  }

  v20 = 0;
  v207 = kCAFillModeRemoved;
  v206 = kCAFillModeForwards;
  v209 = kCAFillModeBackwards;
  v208 = kCAFillModeBoth;
  v210 = v7;
  v211 = v10;
  while (v20 < v19[2])
  {
    v21 = (v19 + 4);
    sub_10000630C(&v19[5 * v20 + 4], v222);
    sub_1005B981C(&qword_1019F5870);
    if (swift_dynamicCast())
    {
      sub_1005F8BCC(v10);
      goto LABEL_4;
    }

    if (v20 >= v19[2])
    {
      goto LABEL_81;
    }

    sub_10000630C(&v19[5 * v20 + 4], &v228);
    v22 = v229;
    v23 = v230;
    sub_100020E58(&v228, v229);
    v214 = (*(v23 + 64))(v22, v23);
    if (!v214)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10113CE44(v19);
      }

      if (v20 >= v19[2])
      {
        goto LABEL_83;
      }

      goto LABEL_54;
    }

    v24 = v229;
    v25 = v230;
    sub_100020E58(&v228, v229);
    (*(v25 + 88))(&v225, v24, v25);
    v26 = v226;
    v27 = v227;
    sub_100020E58(&v225, v226);
    (*(v27 + 56))(v222, v26, v27);
    sub_100005070(&v225);
    v28 = v19;
    v29 = sub_100B7694C();
    sub_100687CF4(v222);
    v212 = v28;
    v30 = v28[2];
    if (v30)
    {
      v31 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_10000630C(v21, &v218);
        v32 = v219;
        v33 = v220;
        sub_100020E58(&v218, v219);
        v34 = (*(v33 + 64))(v32, v33);
        if (v34)
        {
          v35 = v34;
          sub_1009354E4();
          v36 = v214;
          v37 = static NSObject.== infix(_:_:)();

          if (v37)
          {
            v38 = v219;
            v39 = v220;
            sub_100020E58(&v218, v219);
            (*(v39 + 88))(&v215, v38, v39);
            v40 = v216;
            v41 = v217;
            sub_100020E58(&v215, v216);
            v42 = (*(v41 + 80))(v40, v41);
            v43 = sub_100B76520(v42);
            v45 = v44;
            if (v43 == sub_100B76520(v29) && v45 == v46)
            {

              sub_100005070(&v215);
LABEL_22:
              sub_100050F74(&v218, &v215);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v221 = v31;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1007767E4(0, v31[2] + 1, 1);
                v31 = v221;
              }

              v51 = v31[2];
              v50 = v31[3];
              if (v51 >= v50 >> 1)
              {
                sub_1007767E4((v50 > 1), v51 + 1, 1);
                v31 = v221;
              }

              v31[2] = v51 + 1;
              sub_100050F74(&v215, &v31[5 * v51 + 4]);
              goto LABEL_12;
            }

            v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_100005070(&v215);
            if (v48)
            {
              goto LABEL_22;
            }
          }
        }

        sub_100005070(&v218);
LABEL_12:
        v21 += 40;
        if (!--v30)
        {
          goto LABEL_32;
        }
      }
    }

    v31 = _swiftEmptyArrayStorage;
LABEL_32:
    *&v218 = v31;

    sub_101137F0C(&v218);

    v52 = v218;
    sub_10093524C(v218, &v225);
    v19 = v212;
    if (!v226)
    {

      sub_10000CAAC(&v225, &qword_1019F57A0);
      v10 = v211;
LABEL_51:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_10113CE44(v19);
      }

      if (v20 >= v19[2])
      {
        goto LABEL_82;
      }

LABEL_54:
      v121 = &v19[5 * v20];
      sub_100005070((v121 + 4));
      sub_100050F74(&v228, (v121 + 4));
      goto LABEL_4;
    }

    sub_100050F74(&v225, v222);
    sub_100935398(v52, &v218);

    v10 = v211;
    if (!v219)
    {

      sub_10000CAAC(&v218, &qword_1019F57A0);
      sub_100005070(v222);
      goto LABEL_51;
    }

    sub_100050F74(&v218, &v225);
    v53 = v229;
    v54 = v230;
    sub_100020E58(&v228, v229);
    if ((*(v54 + 128))(v222, v53, v54))
    {
      v55 = v223;
      v56 = v224;
      sub_100020E58(v222, v223);
      if ((*(v56 + 128))(&v225, v55, v56))
      {
        v57 = v229;
        v58 = v230;
        sub_100020E58(&v228, v229);
        (*(v58 + 88))(&v218, v57, v58);
        v59 = v219;
        v60 = v220;
        sub_100020E58(&v218, v219);
        v61 = (*(v60 + 112))(v59, v60);
        sub_100005070(&v218);
        if (v61 == 2)
        {
          v62 = v229;
          v63 = v230;
          sub_10002A948(&v228, v229);
          v64 = (*(v63 + 104))(&v218, v62, v63);
          v66 = *(v65 + 24);
          v67 = *(v65 + 32);
          sub_10002A948(v65, v66);
          v68 = *(v67 + 120);
          v69 = v67;
          v19 = v212;
          v68(1, v66, v69);
          v64(&v218, 0);
        }

        v70 = v229;
        v71 = v230;
        sub_100020E58(&v228, v229);
        (*(v71 + 88))(&v218, v70, v71);
        v72 = v219;
        v73 = v220;
        sub_100020E58(&v218, v219);
        v74 = (*(v73 + 136))(v72, v73);
        sub_100005070(&v218);
        if (v74 == 2)
        {
          v75 = v229;
          v76 = v230;
          sub_10002A948(&v228, v229);
          v77 = (*(v76 + 104))(&v218, v75, v76);
          v79 = *(v78 + 24);
          v80 = *(v78 + 32);
          sub_10002A948(v78, v79);
          v81 = *(v80 + 144);
          v82 = v80;
          v19 = v212;
          v81(1, v79, v82);
          v77(&v218, 0);
        }

        v83 = v229;
        v84 = v230;
        sub_100020E58(&v228, v229);
        (*(v84 + 88))(&v218, v83, v84);
        v85 = v219;
        v86 = v220;
        sub_100020E58(&v218, v219);
        v87 = (*(v86 + 88))(v85, v86);
        sub_100005070(&v218);
        if (v87)
        {
        }

        else
        {
          v173 = v229;
          v174 = v230;
          sub_10002A948(&v228, v229);
          v175 = *(v174 + 104);
          v176 = v208;
          v177 = v208;
          v178 = v175(&v218, v173, v174);
          v10 = v211;
          v179 = v178;
          v181 = *(v180 + 24);
          v182 = *(v180 + 32);
          sub_10002A948(v180, v181);
          v183 = *(v182 + 96);
          v184 = v182;
          v19 = v212;
          v183(v176, v181, v184);
          v179(&v218, 0);
        }

        goto LABEL_72;
      }
    }

    v88 = v229;
    v89 = v230;
    sub_100020E58(&v228, v229);
    LOBYTE(v89) = (*(v89 + 128))(v222, v88, v89);
    v90 = v229;
    v91 = v230;
    sub_100020E58(&v228, v229);
    if (v89)
    {
      (*(v91 + 88))(&v218, v90, v91);
      v92 = v219;
      v93 = v220;
      sub_100020E58(&v218, v219);
      v94 = (*(v93 + 112))(v92, v93);
      sub_100005070(&v218);
      if (v94 == 2)
      {
        v95 = v229;
        v96 = v230;
        sub_10002A948(&v228, v229);
        v97 = (*(v96 + 104))(&v218, v95, v96);
        v99 = *(v98 + 24);
        v100 = *(v98 + 32);
        sub_10002A948(v98, v99);
        (*(v100 + 120))(1, v99, v100);
        v97(&v218, 0);
      }

      v101 = v229;
      v102 = v230;
      sub_100020E58(&v228, v229);
      (*(v102 + 88))(&v218, v101, v102);
      v103 = v219;
      v104 = v220;
      sub_100020E58(&v218, v219);
      v105 = (*(v104 + 136))(v103, v104);
      sub_100005070(&v218);
      if (v105 == 2)
      {
        v106 = v229;
        v107 = v230;
        sub_10002A948(&v228, v229);
        v108 = (*(v107 + 104))(&v218, v106, v107);
        v110 = *(v109 + 24);
        v111 = *(v109 + 32);
        sub_10002A948(v109, v110);
        (*(v111 + 144))(0, v110, v111);
        v108(&v218, 0);
      }

      v112 = v229;
      v113 = v230;
      sub_100020E58(&v228, v229);
      (*(v113 + 88))(&v218, v112, v113);
      v114 = v219;
      v115 = v220;
      sub_100020E58(&v218, v219);
      v116 = (*(v115 + 88))(v114, v115);
      sub_100005070(&v218);
      if (!v116)
      {
        v117 = v229;
        v118 = v230;
        sub_10002A948(&v228, v229);
        v119 = *(v118 + 104);
        v120 = v209;
LABEL_70:
        v185 = v120;
        v186 = v119(&v218, v117, v118);
        v10 = v211;
        v187 = v186;
        v189 = *(v188 + 24);
        v190 = *(v188 + 32);
        sub_10002A948(v188, v189);
        (*(v190 + 96))(v120, v189, v190);
        v187(&v218, 0);
        goto LABEL_71;
      }
    }

    else
    {
      v122 = (*(v91 + 128))(&v225, v90, v91);
      v123 = v229;
      v124 = v230;
      sub_100020E58(&v228, v229);
      if (v122)
      {
        (*(v124 + 88))(&v218, v123, v124);
        v125 = v219;
        v126 = v220;
        sub_100020E58(&v218, v219);
        v127 = (*(v126 + 112))(v125, v126);
        sub_100005070(&v218);
        if (v127 == 2)
        {
          v128 = v229;
          v129 = v230;
          sub_10002A948(&v228, v229);
          v130 = (*(v129 + 104))(&v218, v128, v129);
          v132 = *(v131 + 24);
          v133 = *(v131 + 32);
          sub_10002A948(v131, v132);
          (*(v133 + 120))(0, v132, v133);
          v130(&v218, 0);
        }

        v134 = v229;
        v135 = v230;
        sub_100020E58(&v228, v229);
        (*(v135 + 88))(&v218, v134, v135);
        v136 = v219;
        v137 = v220;
        sub_100020E58(&v218, v219);
        v138 = (*(v137 + 136))(v136, v137);
        sub_100005070(&v218);
        if (v138 == 2)
        {
          v139 = v229;
          v140 = v230;
          sub_10002A948(&v228, v229);
          v141 = (*(v140 + 104))(&v218, v139, v140);
          v143 = *(v142 + 24);
          v144 = *(v142 + 32);
          sub_10002A948(v142, v143);
          (*(v144 + 144))(1, v143, v144);
          v141(&v218, 0);
        }

        v145 = v229;
        v146 = v230;
        sub_100020E58(&v228, v229);
        (*(v146 + 88))(&v218, v145, v146);
        v147 = v219;
        v148 = v220;
        sub_100020E58(&v218, v219);
        v116 = (*(v148 + 88))(v147, v148);
        sub_100005070(&v218);
        if (!v116)
        {
          v117 = v229;
          v118 = v230;
          sub_10002A948(&v228, v229);
          v119 = *(v118 + 104);
          v120 = v206;
          goto LABEL_70;
        }
      }

      else
      {
        (*(v124 + 88))(&v218, v123, v124);
        v149 = v219;
        v150 = v220;
        sub_100020E58(&v218, v219);
        v151 = (*(v150 + 112))(v149, v150);
        sub_100005070(&v218);
        if (v151 == 2)
        {
          v152 = v229;
          v153 = v230;
          sub_10002A948(&v228, v229);
          v154 = (*(v153 + 104))(&v218, v152, v153);
          v156 = *(v155 + 24);
          v157 = *(v155 + 32);
          sub_10002A948(v155, v156);
          (*(v157 + 120))(0, v156, v157);
          v154(&v218, 0);
        }

        v158 = v229;
        v159 = v230;
        sub_100020E58(&v228, v229);
        (*(v159 + 88))(&v218, v158, v159);
        v160 = v219;
        v161 = v220;
        sub_100020E58(&v218, v219);
        v162 = (*(v161 + 136))(v160, v161);
        sub_100005070(&v218);
        if (v162 == 2)
        {
          v163 = v229;
          v164 = v230;
          sub_10002A948(&v228, v229);
          v165 = (*(v164 + 104))(&v218, v163, v164);
          v167 = *(v166 + 24);
          v168 = *(v166 + 32);
          sub_10002A948(v166, v167);
          (*(v168 + 144))(0, v167, v168);
          v165(&v218, 0);
        }

        v169 = v229;
        v170 = v230;
        sub_100020E58(&v228, v229);
        (*(v170 + 88))(&v218, v169, v170);
        v171 = v219;
        v172 = v220;
        sub_100020E58(&v218, v219);
        v116 = (*(v172 + 88))(v171, v172);
        sub_100005070(&v218);
        if (!v116)
        {
          v117 = v229;
          v118 = v230;
          sub_10002A948(&v228, v229);
          v119 = *(v118 + 104);
          v120 = v207;
          goto LABEL_70;
        }
      }
    }

LABEL_71:
    v19 = v212;
LABEL_72:
    v191 = v229;
    v192 = v230;
    sub_100020E58(&v228, v229);
    (*(v192 + 88))(&v218, v191, v192);
    v193 = v219;
    v194 = v220;
    sub_100020E58(&v218, v219);
    v195 = (*(v194 + 160))(v193, v194);
    sub_100005070(&v218);
    if (v195 == 2)
    {
      v196 = v229;
      v197 = v230;
      sub_10002A948(&v228, v229);
      v198 = (*(v197 + 104))(&v218, v196, v197);
      v200 = *(v199 + 24);
      v201 = *(v199 + 32);
      sub_10002A948(v199, v200);
      v202 = *(v201 + 168);
      v203 = v201;
      v19 = v212;
      v202(1, v200, v203);
      v198(&v218, 0);

      sub_100005070(&v225);
    }

    else
    {
      sub_100005070(&v225);
    }

    sub_100005070(v222);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_10113CE44(v19);
    }

    if (v20 >= v19[2])
    {
      goto LABEL_84;
    }

    sub_100774FCC(&v19[5 * v20 + 4], &v228);
    sub_100005070(&v228);
LABEL_4:
    if (++v20 == v213)
    {
      return v19;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_101130608(uint64_t a1, double a2)
{
  v4 = type metadata accessor for CRLTweenLayerAnimation();
  __chkstk_darwin(v4);
  v6 = &v201 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = &type metadata for CRLLayerAnimationGroup;
  v220 = &off_101885E50;
  v218[0] = a1;
  *&v218[1] = a2;
  v7 = sub_100020E58(v218, &type metadata for CRLLayerAnimationGroup);
  v8 = __chkstk_darwin(v7);
  v10 = (&v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v8;
  v12 = *(v8 + 1);

  *v10 = sub_100788C18(v11, v12);
  v10[1] = v13;
  v14 = sub_1007894CC();
  (_swift_cvw_destroy)(v10, &type metadata for CRLLayerAnimationGroup);
  v15 = v14;
  sub_100005070(v218);
  v209 = v14[2];
  if (!v209)
  {
    return v15;
  }

  v16 = 0;
  v203 = kCAFillModeRemoved;
  v202 = kCAFillModeForwards;
  v205 = kCAFillModeBackwards;
  v204 = kCAFillModeBoth;
  v206 = v4;
  v207 = v6;
  while (v16 < v15[2])
  {
    v17 = (v15 + 4);
    sub_10000630C(&v15[5 * v16 + 4], v218);
    sub_1005B981C(&qword_1019F5870);
    if (swift_dynamicCast())
    {
      sub_1005F8BCC(v6);
      goto LABEL_4;
    }

    if (v16 >= v15[2])
    {
      goto LABEL_81;
    }

    sub_10000630C(&v15[5 * v16 + 4], &v224);
    v18 = v225;
    v19 = v226;
    sub_100020E58(&v224, v225);
    v210 = (*(v19 + 64))(v18, v19);
    if (!v210)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_10113CE44(v15);
      }

      if (v16 >= v15[2])
      {
        goto LABEL_83;
      }

      goto LABEL_54;
    }

    v20 = v225;
    v21 = v226;
    sub_100020E58(&v224, v225);
    (*(v21 + 88))(&v221, v20, v21);
    v22 = v222;
    v23 = v223;
    sub_100020E58(&v221, v222);
    (*(v23 + 56))(v218, v22, v23);
    sub_100005070(&v221);
    v24 = v15;
    v25 = sub_100B7694C();
    sub_100687CF4(v218);
    v208 = v24;
    v26 = v24[2];
    if (v26)
    {
      v27 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_10000630C(v17, &v214);
        v28 = v215;
        v29 = v216;
        sub_100020E58(&v214, v215);
        v30 = (*(v29 + 64))(v28, v29);
        if (v30)
        {
          v31 = v30;
          sub_1009354E4();
          v32 = v210;
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            v34 = v215;
            v35 = v216;
            sub_100020E58(&v214, v215);
            (*(v35 + 88))(&v211, v34, v35);
            v36 = v212;
            v37 = v213;
            sub_100020E58(&v211, v212);
            v38 = (*(v37 + 80))(v36, v37);
            v39 = sub_100B76520(v38);
            v41 = v40;
            if (v39 == sub_100B76520(v25) && v41 == v42)
            {

              sub_100005070(&v211);
LABEL_22:
              sub_100050F74(&v214, &v211);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v217 = v27;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1007767E4(0, v27[2] + 1, 1);
                v27 = v217;
              }

              v47 = v27[2];
              v46 = v27[3];
              if (v47 >= v46 >> 1)
              {
                sub_1007767E4((v46 > 1), v47 + 1, 1);
                v27 = v217;
              }

              v27[2] = v47 + 1;
              sub_100050F74(&v211, &v27[5 * v47 + 4]);
              goto LABEL_12;
            }

            v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_100005070(&v211);
            if (v44)
            {
              goto LABEL_22;
            }
          }
        }

        sub_100005070(&v214);
LABEL_12:
        v17 += 40;
        if (!--v26)
        {
          goto LABEL_32;
        }
      }
    }

    v27 = _swiftEmptyArrayStorage;
LABEL_32:
    *&v214 = v27;

    sub_101137F0C(&v214);

    v48 = v214;
    sub_10093524C(v214, &v221);
    v15 = v208;
    if (!v222)
    {

      sub_10000CAAC(&v221, &qword_1019F57A0);
      v6 = v207;
LABEL_51:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_10113CE44(v15);
      }

      if (v16 >= v15[2])
      {
        goto LABEL_82;
      }

LABEL_54:
      v117 = &v15[5 * v16];
      sub_100005070((v117 + 4));
      sub_100050F74(&v224, (v117 + 4));
      goto LABEL_4;
    }

    sub_100050F74(&v221, v218);
    sub_100935398(v48, &v214);

    v6 = v207;
    if (!v215)
    {

      sub_10000CAAC(&v214, &qword_1019F57A0);
      sub_100005070(v218);
      goto LABEL_51;
    }

    sub_100050F74(&v214, &v221);
    v49 = v225;
    v50 = v226;
    sub_100020E58(&v224, v225);
    if ((*(v50 + 128))(v218, v49, v50))
    {
      v51 = v219;
      v52 = v220;
      sub_100020E58(v218, v219);
      if ((v52[16])(&v221, v51, v52))
      {
        v53 = v225;
        v54 = v226;
        sub_100020E58(&v224, v225);
        (*(v54 + 88))(&v214, v53, v54);
        v55 = v215;
        v56 = v216;
        sub_100020E58(&v214, v215);
        v57 = (*(v56 + 112))(v55, v56);
        sub_100005070(&v214);
        if (v57 == 2)
        {
          v58 = v225;
          v59 = v226;
          sub_10002A948(&v224, v225);
          v60 = (*(v59 + 104))(&v214, v58, v59);
          v62 = *(v61 + 24);
          v63 = *(v61 + 32);
          sub_10002A948(v61, v62);
          v64 = *(v63 + 120);
          v65 = v63;
          v15 = v208;
          v64(1, v62, v65);
          v60(&v214, 0);
        }

        v66 = v225;
        v67 = v226;
        sub_100020E58(&v224, v225);
        (*(v67 + 88))(&v214, v66, v67);
        v68 = v215;
        v69 = v216;
        sub_100020E58(&v214, v215);
        v70 = (*(v69 + 136))(v68, v69);
        sub_100005070(&v214);
        if (v70 == 2)
        {
          v71 = v225;
          v72 = v226;
          sub_10002A948(&v224, v225);
          v73 = (*(v72 + 104))(&v214, v71, v72);
          v75 = *(v74 + 24);
          v76 = *(v74 + 32);
          sub_10002A948(v74, v75);
          v77 = *(v76 + 144);
          v78 = v76;
          v15 = v208;
          v77(1, v75, v78);
          v73(&v214, 0);
        }

        v79 = v225;
        v80 = v226;
        sub_100020E58(&v224, v225);
        (*(v80 + 88))(&v214, v79, v80);
        v81 = v215;
        v82 = v216;
        sub_100020E58(&v214, v215);
        v83 = (*(v82 + 88))(v81, v82);
        sub_100005070(&v214);
        if (v83)
        {
        }

        else
        {
          v169 = v225;
          v170 = v226;
          sub_10002A948(&v224, v225);
          v171 = *(v170 + 104);
          v172 = v204;
          v173 = v204;
          v174 = v171(&v214, v169, v170);
          v6 = v207;
          v175 = v174;
          v177 = *(v176 + 24);
          v178 = *(v176 + 32);
          sub_10002A948(v176, v177);
          v179 = *(v178 + 96);
          v180 = v178;
          v15 = v208;
          v179(v172, v177, v180);
          v175(&v214, 0);
        }

        goto LABEL_72;
      }
    }

    v84 = v225;
    v85 = v226;
    sub_100020E58(&v224, v225);
    LOBYTE(v85) = (*(v85 + 128))(v218, v84, v85);
    v86 = v225;
    v87 = v226;
    sub_100020E58(&v224, v225);
    if (v85)
    {
      (*(v87 + 88))(&v214, v86, v87);
      v88 = v215;
      v89 = v216;
      sub_100020E58(&v214, v215);
      v90 = (*(v89 + 112))(v88, v89);
      sub_100005070(&v214);
      if (v90 == 2)
      {
        v91 = v225;
        v92 = v226;
        sub_10002A948(&v224, v225);
        v93 = (*(v92 + 104))(&v214, v91, v92);
        v95 = *(v94 + 24);
        v96 = *(v94 + 32);
        sub_10002A948(v94, v95);
        (*(v96 + 120))(1, v95, v96);
        v93(&v214, 0);
      }

      v97 = v225;
      v98 = v226;
      sub_100020E58(&v224, v225);
      (*(v98 + 88))(&v214, v97, v98);
      v99 = v215;
      v100 = v216;
      sub_100020E58(&v214, v215);
      v101 = (*(v100 + 136))(v99, v100);
      sub_100005070(&v214);
      if (v101 == 2)
      {
        v102 = v225;
        v103 = v226;
        sub_10002A948(&v224, v225);
        v104 = (*(v103 + 104))(&v214, v102, v103);
        v106 = *(v105 + 24);
        v107 = *(v105 + 32);
        sub_10002A948(v105, v106);
        (*(v107 + 144))(0, v106, v107);
        v104(&v214, 0);
      }

      v108 = v225;
      v109 = v226;
      sub_100020E58(&v224, v225);
      (*(v109 + 88))(&v214, v108, v109);
      v110 = v215;
      v111 = v216;
      sub_100020E58(&v214, v215);
      v112 = (*(v111 + 88))(v110, v111);
      sub_100005070(&v214);
      if (!v112)
      {
        v113 = v225;
        v114 = v226;
        sub_10002A948(&v224, v225);
        v115 = *(v114 + 104);
        v116 = v205;
LABEL_70:
        v181 = v116;
        v182 = v115(&v214, v113, v114);
        v6 = v207;
        v183 = v182;
        v185 = *(v184 + 24);
        v186 = *(v184 + 32);
        sub_10002A948(v184, v185);
        (*(v186 + 96))(v116, v185, v186);
        v183(&v214, 0);
        goto LABEL_71;
      }
    }

    else
    {
      v118 = (*(v87 + 128))(&v221, v86, v87);
      v119 = v225;
      v120 = v226;
      sub_100020E58(&v224, v225);
      if (v118)
      {
        (*(v120 + 88))(&v214, v119, v120);
        v121 = v215;
        v122 = v216;
        sub_100020E58(&v214, v215);
        v123 = (*(v122 + 112))(v121, v122);
        sub_100005070(&v214);
        if (v123 == 2)
        {
          v124 = v225;
          v125 = v226;
          sub_10002A948(&v224, v225);
          v126 = (*(v125 + 104))(&v214, v124, v125);
          v128 = *(v127 + 24);
          v129 = *(v127 + 32);
          sub_10002A948(v127, v128);
          (*(v129 + 120))(0, v128, v129);
          v126(&v214, 0);
        }

        v130 = v225;
        v131 = v226;
        sub_100020E58(&v224, v225);
        (*(v131 + 88))(&v214, v130, v131);
        v132 = v215;
        v133 = v216;
        sub_100020E58(&v214, v215);
        v134 = (*(v133 + 136))(v132, v133);
        sub_100005070(&v214);
        if (v134 == 2)
        {
          v135 = v225;
          v136 = v226;
          sub_10002A948(&v224, v225);
          v137 = (*(v136 + 104))(&v214, v135, v136);
          v139 = *(v138 + 24);
          v140 = *(v138 + 32);
          sub_10002A948(v138, v139);
          (*(v140 + 144))(1, v139, v140);
          v137(&v214, 0);
        }

        v141 = v225;
        v142 = v226;
        sub_100020E58(&v224, v225);
        (*(v142 + 88))(&v214, v141, v142);
        v143 = v215;
        v144 = v216;
        sub_100020E58(&v214, v215);
        v112 = (*(v144 + 88))(v143, v144);
        sub_100005070(&v214);
        if (!v112)
        {
          v113 = v225;
          v114 = v226;
          sub_10002A948(&v224, v225);
          v115 = *(v114 + 104);
          v116 = v202;
          goto LABEL_70;
        }
      }

      else
      {
        (*(v120 + 88))(&v214, v119, v120);
        v145 = v215;
        v146 = v216;
        sub_100020E58(&v214, v215);
        v147 = (*(v146 + 112))(v145, v146);
        sub_100005070(&v214);
        if (v147 == 2)
        {
          v148 = v225;
          v149 = v226;
          sub_10002A948(&v224, v225);
          v150 = (*(v149 + 104))(&v214, v148, v149);
          v152 = *(v151 + 24);
          v153 = *(v151 + 32);
          sub_10002A948(v151, v152);
          (*(v153 + 120))(0, v152, v153);
          v150(&v214, 0);
        }

        v154 = v225;
        v155 = v226;
        sub_100020E58(&v224, v225);
        (*(v155 + 88))(&v214, v154, v155);
        v156 = v215;
        v157 = v216;
        sub_100020E58(&v214, v215);
        v158 = (*(v157 + 136))(v156, v157);
        sub_100005070(&v214);
        if (v158 == 2)
        {
          v159 = v225;
          v160 = v226;
          sub_10002A948(&v224, v225);
          v161 = (*(v160 + 104))(&v214, v159, v160);
          v163 = *(v162 + 24);
          v164 = *(v162 + 32);
          sub_10002A948(v162, v163);
          (*(v164 + 144))(0, v163, v164);
          v161(&v214, 0);
        }

        v165 = v225;
        v166 = v226;
        sub_100020E58(&v224, v225);
        (*(v166 + 88))(&v214, v165, v166);
        v167 = v215;
        v168 = v216;
        sub_100020E58(&v214, v215);
        v112 = (*(v168 + 88))(v167, v168);
        sub_100005070(&v214);
        if (!v112)
        {
          v113 = v225;
          v114 = v226;
          sub_10002A948(&v224, v225);
          v115 = *(v114 + 104);
          v116 = v203;
          goto LABEL_70;
        }
      }
    }

LABEL_71:
    v15 = v208;
LABEL_72:
    v187 = v225;
    v188 = v226;
    sub_100020E58(&v224, v225);
    (*(v188 + 88))(&v214, v187, v188);
    v189 = v215;
    v190 = v216;
    sub_100020E58(&v214, v215);
    v191 = (*(v190 + 160))(v189, v190);
    sub_100005070(&v214);
    if (v191 == 2)
    {
      v192 = v225;
      v193 = v226;
      sub_10002A948(&v224, v225);
      v194 = (*(v193 + 104))(&v214, v192, v193);
      v196 = *(v195 + 24);
      v197 = *(v195 + 32);
      sub_10002A948(v195, v196);
      v198 = *(v197 + 168);
      v199 = v197;
      v15 = v208;
      v198(1, v196, v199);
      v194(&v214, 0);

      sub_100005070(&v221);
    }

    else
    {
      sub_100005070(&v221);
    }

    sub_100005070(v218);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_10113CE44(v15);
    }

    if (v16 >= v15[2])
    {
      goto LABEL_84;
    }

    sub_100774FCC(&v15[5 * v16 + 4], &v224);
    sub_100005070(&v224);
LABEL_4:
    if (++v16 == v209)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_101131A3C(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for CRLTweenLayerAnimation();
  __chkstk_darwin(v6);
  v8 = &v196 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10112DC08(a1, a2, a3);
  v10 = v9;
  v204 = v9[2];
  if (!v204)
  {
    return v10;
  }

  v11 = 0;
  v198 = kCAFillModeRemoved;
  v197 = kCAFillModeForwards;
  v200 = kCAFillModeBackwards;
  v199 = kCAFillModeBoth;
  v201 = v6;
  v202 = v8;
  while (v11 < v10[2])
  {
    v12 = (v10 + 4);
    sub_10000630C(&v10[5 * v11 + 4], v213);
    sub_1005B981C(&qword_1019F5870);
    if (swift_dynamicCast())
    {
      sub_1005F8BCC(v8);
      goto LABEL_4;
    }

    if (v11 >= v10[2])
    {
      goto LABEL_81;
    }

    sub_10000630C(&v10[5 * v11 + 4], &v219);
    v13 = v220;
    v14 = v221;
    sub_100020E58(&v219, v220);
    v205 = (*(v14 + 64))(v13, v14);
    if (!v205)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10113CE44(v10);
      }

      if (v11 >= v10[2])
      {
        goto LABEL_83;
      }

      goto LABEL_54;
    }

    v15 = v220;
    v16 = v221;
    sub_100020E58(&v219, v220);
    (*(v16 + 88))(&v216, v15, v16);
    v17 = v217;
    v18 = v218;
    sub_100020E58(&v216, v217);
    (*(v18 + 56))(v213, v17, v18);
    sub_100005070(&v216);
    v19 = v10;
    v20 = sub_100B7694C();
    sub_100687CF4(v213);
    v203 = v19;
    v21 = v19[2];
    if (v21)
    {
      v22 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_10000630C(v12, &v209);
        v23 = v210;
        v24 = v211;
        sub_100020E58(&v209, v210);
        v25 = (*(v24 + 64))(v23, v24);
        if (v25)
        {
          v26 = v25;
          sub_1009354E4();
          v27 = v205;
          v28 = static NSObject.== infix(_:_:)();

          if (v28)
          {
            v29 = v210;
            v30 = v211;
            sub_100020E58(&v209, v210);
            (*(v30 + 88))(&v206, v29, v30);
            v31 = v207;
            v32 = v208;
            sub_100020E58(&v206, v207);
            v33 = (*(v32 + 80))(v31, v32);
            v34 = sub_100B76520(v33);
            v36 = v35;
            if (v34 == sub_100B76520(v20) && v36 == v37)
            {

              sub_100005070(&v206);
LABEL_22:
              sub_100050F74(&v209, &v206);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v212 = v22;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1007767E4(0, v22[2] + 1, 1);
                v22 = v212;
              }

              v42 = v22[2];
              v41 = v22[3];
              if (v42 >= v41 >> 1)
              {
                sub_1007767E4((v41 > 1), v42 + 1, 1);
                v22 = v212;
              }

              v22[2] = v42 + 1;
              sub_100050F74(&v206, &v22[5 * v42 + 4]);
              goto LABEL_12;
            }

            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_100005070(&v206);
            if (v39)
            {
              goto LABEL_22;
            }
          }
        }

        sub_100005070(&v209);
LABEL_12:
        v12 += 40;
        if (!--v21)
        {
          goto LABEL_32;
        }
      }
    }

    v22 = _swiftEmptyArrayStorage;
LABEL_32:
    *&v209 = v22;

    sub_101137F0C(&v209);

    v43 = v209;
    sub_10093524C(v209, &v216);
    v10 = v203;
    if (!v217)
    {

      sub_10000CAAC(&v216, &qword_1019F57A0);
      v8 = v202;
LABEL_51:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_10113CE44(v10);
      }

      if (v11 >= v10[2])
      {
        goto LABEL_82;
      }

LABEL_54:
      v112 = &v10[5 * v11];
      sub_100005070((v112 + 4));
      sub_100050F74(&v219, (v112 + 4));
      goto LABEL_4;
    }

    sub_100050F74(&v216, v213);
    sub_100935398(v43, &v209);

    v8 = v202;
    if (!v210)
    {

      sub_10000CAAC(&v209, &qword_1019F57A0);
      sub_100005070(v213);
      goto LABEL_51;
    }

    sub_100050F74(&v209, &v216);
    v44 = v220;
    v45 = v221;
    sub_100020E58(&v219, v220);
    if ((*(v45 + 128))(v213, v44, v45))
    {
      v46 = v214;
      v47 = v215;
      sub_100020E58(v213, v214);
      if ((*(v47 + 128))(&v216, v46, v47))
      {
        v48 = v220;
        v49 = v221;
        sub_100020E58(&v219, v220);
        (*(v49 + 88))(&v209, v48, v49);
        v50 = v210;
        v51 = v211;
        sub_100020E58(&v209, v210);
        v52 = (*(v51 + 112))(v50, v51);
        sub_100005070(&v209);
        if (v52 == 2)
        {
          v53 = v220;
          v54 = v221;
          sub_10002A948(&v219, v220);
          v55 = (*(v54 + 104))(&v209, v53, v54);
          v57 = *(v56 + 24);
          v58 = *(v56 + 32);
          sub_10002A948(v56, v57);
          v59 = *(v58 + 120);
          v60 = v58;
          v10 = v203;
          v59(1, v57, v60);
          v55(&v209, 0);
        }

        v61 = v220;
        v62 = v221;
        sub_100020E58(&v219, v220);
        (*(v62 + 88))(&v209, v61, v62);
        v63 = v210;
        v64 = v211;
        sub_100020E58(&v209, v210);
        v65 = (*(v64 + 136))(v63, v64);
        sub_100005070(&v209);
        if (v65 == 2)
        {
          v66 = v220;
          v67 = v221;
          sub_10002A948(&v219, v220);
          v68 = (*(v67 + 104))(&v209, v66, v67);
          v70 = *(v69 + 24);
          v71 = *(v69 + 32);
          sub_10002A948(v69, v70);
          v72 = *(v71 + 144);
          v73 = v71;
          v10 = v203;
          v72(1, v70, v73);
          v68(&v209, 0);
        }

        v74 = v220;
        v75 = v221;
        sub_100020E58(&v219, v220);
        (*(v75 + 88))(&v209, v74, v75);
        v76 = v210;
        v77 = v211;
        sub_100020E58(&v209, v210);
        v78 = (*(v77 + 88))(v76, v77);
        sub_100005070(&v209);
        if (v78)
        {
        }

        else
        {
          v164 = v220;
          v165 = v221;
          sub_10002A948(&v219, v220);
          v166 = *(v165 + 104);
          v167 = v199;
          v168 = v199;
          v169 = v166(&v209, v164, v165);
          v8 = v202;
          v170 = v169;
          v172 = *(v171 + 24);
          v173 = *(v171 + 32);
          sub_10002A948(v171, v172);
          v174 = *(v173 + 96);
          v175 = v173;
          v10 = v203;
          v174(v167, v172, v175);
          v170(&v209, 0);
        }

        goto LABEL_72;
      }
    }

    v79 = v220;
    v80 = v221;
    sub_100020E58(&v219, v220);
    LOBYTE(v80) = (*(v80 + 128))(v213, v79, v80);
    v81 = v220;
    v82 = v221;
    sub_100020E58(&v219, v220);
    if (v80)
    {
      (*(v82 + 88))(&v209, v81, v82);
      v83 = v210;
      v84 = v211;
      sub_100020E58(&v209, v210);
      v85 = (*(v84 + 112))(v83, v84);
      sub_100005070(&v209);
      if (v85 == 2)
      {
        v86 = v220;
        v87 = v221;
        sub_10002A948(&v219, v220);
        v88 = (*(v87 + 104))(&v209, v86, v87);
        v90 = *(v89 + 24);
        v91 = *(v89 + 32);
        sub_10002A948(v89, v90);
        (*(v91 + 120))(1, v90, v91);
        v88(&v209, 0);
      }

      v92 = v220;
      v93 = v221;
      sub_100020E58(&v219, v220);
      (*(v93 + 88))(&v209, v92, v93);
      v94 = v210;
      v95 = v211;
      sub_100020E58(&v209, v210);
      v96 = (*(v95 + 136))(v94, v95);
      sub_100005070(&v209);
      if (v96 == 2)
      {
        v97 = v220;
        v98 = v221;
        sub_10002A948(&v219, v220);
        v99 = (*(v98 + 104))(&v209, v97, v98);
        v101 = *(v100 + 24);
        v102 = *(v100 + 32);
        sub_10002A948(v100, v101);
        (*(v102 + 144))(0, v101, v102);
        v99(&v209, 0);
      }

      v103 = v220;
      v104 = v221;
      sub_100020E58(&v219, v220);
      (*(v104 + 88))(&v209, v103, v104);
      v105 = v210;
      v106 = v211;
      sub_100020E58(&v209, v210);
      v107 = (*(v106 + 88))(v105, v106);
      sub_100005070(&v209);
      if (!v107)
      {
        v108 = v220;
        v109 = v221;
        sub_10002A948(&v219, v220);
        v110 = *(v109 + 104);
        v111 = v200;
LABEL_70:
        v176 = v111;
        v177 = v110(&v209, v108, v109);
        v8 = v202;
        v178 = v177;
        v180 = *(v179 + 24);
        v181 = *(v179 + 32);
        sub_10002A948(v179, v180);
        (*(v181 + 96))(v111, v180, v181);
        v178(&v209, 0);
        goto LABEL_71;
      }
    }

    else
    {
      v113 = (*(v82 + 128))(&v216, v81, v82);
      v114 = v220;
      v115 = v221;
      sub_100020E58(&v219, v220);
      if (v113)
      {
        (*(v115 + 88))(&v209, v114, v115);
        v116 = v210;
        v117 = v211;
        sub_100020E58(&v209, v210);
        v118 = (*(v117 + 112))(v116, v117);
        sub_100005070(&v209);
        if (v118 == 2)
        {
          v119 = v220;
          v120 = v221;
          sub_10002A948(&v219, v220);
          v121 = (*(v120 + 104))(&v209, v119, v120);
          v123 = *(v122 + 24);
          v124 = *(v122 + 32);
          sub_10002A948(v122, v123);
          (*(v124 + 120))(0, v123, v124);
          v121(&v209, 0);
        }

        v125 = v220;
        v126 = v221;
        sub_100020E58(&v219, v220);
        (*(v126 + 88))(&v209, v125, v126);
        v127 = v210;
        v128 = v211;
        sub_100020E58(&v209, v210);
        v129 = (*(v128 + 136))(v127, v128);
        sub_100005070(&v209);
        if (v129 == 2)
        {
          v130 = v220;
          v131 = v221;
          sub_10002A948(&v219, v220);
          v132 = (*(v131 + 104))(&v209, v130, v131);
          v134 = *(v133 + 24);
          v135 = *(v133 + 32);
          sub_10002A948(v133, v134);
          (*(v135 + 144))(1, v134, v135);
          v132(&v209, 0);
        }

        v136 = v220;
        v137 = v221;
        sub_100020E58(&v219, v220);
        (*(v137 + 88))(&v209, v136, v137);
        v138 = v210;
        v139 = v211;
        sub_100020E58(&v209, v210);
        v107 = (*(v139 + 88))(v138, v139);
        sub_100005070(&v209);
        if (!v107)
        {
          v108 = v220;
          v109 = v221;
          sub_10002A948(&v219, v220);
          v110 = *(v109 + 104);
          v111 = v197;
          goto LABEL_70;
        }
      }

      else
      {
        (*(v115 + 88))(&v209, v114, v115);
        v140 = v210;
        v141 = v211;
        sub_100020E58(&v209, v210);
        v142 = (*(v141 + 112))(v140, v141);
        sub_100005070(&v209);
        if (v142 == 2)
        {
          v143 = v220;
          v144 = v221;
          sub_10002A948(&v219, v220);
          v145 = (*(v144 + 104))(&v209, v143, v144);
          v147 = *(v146 + 24);
          v148 = *(v146 + 32);
          sub_10002A948(v146, v147);
          (*(v148 + 120))(0, v147, v148);
          v145(&v209, 0);
        }

        v149 = v220;
        v150 = v221;
        sub_100020E58(&v219, v220);
        (*(v150 + 88))(&v209, v149, v150);
        v151 = v210;
        v152 = v211;
        sub_100020E58(&v209, v210);
        v153 = (*(v152 + 136))(v151, v152);
        sub_100005070(&v209);
        if (v153 == 2)
        {
          v154 = v220;
          v155 = v221;
          sub_10002A948(&v219, v220);
          v156 = (*(v155 + 104))(&v209, v154, v155);
          v158 = *(v157 + 24);
          v159 = *(v157 + 32);
          sub_10002A948(v157, v158);
          (*(v159 + 144))(0, v158, v159);
          v156(&v209, 0);
        }

        v160 = v220;
        v161 = v221;
        sub_100020E58(&v219, v220);
        (*(v161 + 88))(&v209, v160, v161);
        v162 = v210;
        v163 = v211;
        sub_100020E58(&v209, v210);
        v107 = (*(v163 + 88))(v162, v163);
        sub_100005070(&v209);
        if (!v107)
        {
          v108 = v220;
          v109 = v221;
          sub_10002A948(&v219, v220);
          v110 = *(v109 + 104);
          v111 = v198;
          goto LABEL_70;
        }
      }
    }

LABEL_71:
    v10 = v203;
LABEL_72:
    v182 = v220;
    v183 = v221;
    sub_100020E58(&v219, v220);
    (*(v183 + 88))(&v209, v182, v183);
    v184 = v210;
    v185 = v211;
    sub_100020E58(&v209, v210);
    v186 = (*(v185 + 160))(v184, v185);
    sub_100005070(&v209);
    if (v186 == 2)
    {
      v187 = v220;
      v188 = v221;
      sub_10002A948(&v219, v220);
      v189 = (*(v188 + 104))(&v209, v187, v188);
      v191 = *(v190 + 24);
      v192 = *(v190 + 32);
      sub_10002A948(v190, v191);
      v193 = *(v192 + 168);
      v194 = v192;
      v10 = v203;
      v193(1, v191, v194);
      v189(&v209, 0);

      sub_100005070(&v216);
    }

    else
    {
      sub_100005070(&v216);
    }

    sub_100005070(v213);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10113CE44(v10);
    }

    if (v11 >= v10[2])
    {
      goto LABEL_84;
    }

    sub_100774FCC(&v10[5 * v11 + 4], &v219);
    sub_100005070(&v219);
LABEL_4:
    if (++v11 == v204)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_101132D88()
{
  v0 = type metadata accessor for CRLTweenLayerAnimation();
  __chkstk_darwin(v0);
  v2 = &v189 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100D3E738();
  v197 = v3[2];
  if (!v197)
  {
    return v3;
  }

  v4 = 0;
  v191 = kCAFillModeRemoved;
  v190 = kCAFillModeForwards;
  v193 = kCAFillModeBackwards;
  v192 = kCAFillModeBoth;
  v194 = v0;
  v195 = v2;
  while (v4 < v3[2])
  {
    v5 = (v3 + 4);
    sub_10000630C(&v3[5 * v4 + 4], v206);
    sub_1005B981C(&qword_1019F5870);
    if (swift_dynamicCast())
    {
      sub_1005F8BCC(v2);
      goto LABEL_4;
    }

    if (v4 >= v3[2])
    {
      goto LABEL_81;
    }

    sub_10000630C(&v3[5 * v4 + 4], &v212);
    v6 = v213;
    v7 = v214;
    sub_100020E58(&v212, v213);
    v198 = (*(v7 + 64))(v6, v7);
    if (!v198)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10113CE44(v3);
      }

      if (v4 >= v3[2])
      {
        goto LABEL_83;
      }

      goto LABEL_54;
    }

    v8 = v213;
    v9 = v214;
    sub_100020E58(&v212, v213);
    (*(v9 + 88))(&v209, v8, v9);
    v10 = v210;
    v11 = v211;
    sub_100020E58(&v209, v210);
    (*(v11 + 56))(v206, v10, v11);
    sub_100005070(&v209);
    v12 = v3;
    v13 = sub_100B7694C();
    sub_100687CF4(v206);
    v196 = v12;
    v14 = v12[2];
    if (v14)
    {
      v15 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_10000630C(v5, &v202);
        v16 = v203;
        v17 = v204;
        sub_100020E58(&v202, v203);
        v18 = (*(v17 + 64))(v16, v17);
        if (v18)
        {
          v19 = v18;
          sub_1009354E4();
          v20 = v198;
          v21 = static NSObject.== infix(_:_:)();

          if (v21)
          {
            v22 = v203;
            v23 = v204;
            sub_100020E58(&v202, v203);
            (*(v23 + 88))(&v199, v22, v23);
            v24 = v200;
            v25 = v201;
            sub_100020E58(&v199, v200);
            v26 = (*(v25 + 80))(v24, v25);
            v27 = sub_100B76520(v26);
            v29 = v28;
            if (v27 == sub_100B76520(v13) && v29 == v30)
            {

              sub_100005070(&v199);
LABEL_22:
              sub_100050F74(&v202, &v199);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v205 = v15;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1007767E4(0, v15[2] + 1, 1);
                v15 = v205;
              }

              v35 = v15[2];
              v34 = v15[3];
              if (v35 >= v34 >> 1)
              {
                sub_1007767E4((v34 > 1), v35 + 1, 1);
                v15 = v205;
              }

              v15[2] = v35 + 1;
              sub_100050F74(&v199, &v15[5 * v35 + 4]);
              goto LABEL_12;
            }

            v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_100005070(&v199);
            if (v32)
            {
              goto LABEL_22;
            }
          }
        }

        sub_100005070(&v202);
LABEL_12:
        v5 += 40;
        if (!--v14)
        {
          goto LABEL_32;
        }
      }
    }

    v15 = _swiftEmptyArrayStorage;
LABEL_32:
    *&v202 = v15;

    sub_101137F0C(&v202);

    v36 = v202;
    sub_10093524C(v202, &v209);
    v3 = v196;
    if (!v210)
    {

      sub_10000CAAC(&v209, &qword_1019F57A0);
      v2 = v195;
LABEL_51:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10113CE44(v3);
      }

      if (v4 >= v3[2])
      {
        goto LABEL_82;
      }

LABEL_54:
      v105 = &v3[5 * v4];
      sub_100005070((v105 + 4));
      sub_100050F74(&v212, (v105 + 4));
      goto LABEL_4;
    }

    sub_100050F74(&v209, v206);
    sub_100935398(v36, &v202);

    v2 = v195;
    if (!v203)
    {

      sub_10000CAAC(&v202, &qword_1019F57A0);
      sub_100005070(v206);
      goto LABEL_51;
    }

    sub_100050F74(&v202, &v209);
    v37 = v213;
    v38 = v214;
    sub_100020E58(&v212, v213);
    if ((*(v38 + 128))(v206, v37, v38))
    {
      v39 = v207;
      v40 = v208;
      sub_100020E58(v206, v207);
      if ((*(v40 + 128))(&v209, v39, v40))
      {
        v41 = v213;
        v42 = v214;
        sub_100020E58(&v212, v213);
        (*(v42 + 88))(&v202, v41, v42);
        v43 = v203;
        v44 = v204;
        sub_100020E58(&v202, v203);
        v45 = (*(v44 + 112))(v43, v44);
        sub_100005070(&v202);
        if (v45 == 2)
        {
          v46 = v213;
          v47 = v214;
          sub_10002A948(&v212, v213);
          v48 = (*(v47 + 104))(&v202, v46, v47);
          v50 = *(v49 + 24);
          v51 = *(v49 + 32);
          sub_10002A948(v49, v50);
          v52 = *(v51 + 120);
          v53 = v51;
          v3 = v196;
          v52(1, v50, v53);
          v48(&v202, 0);
        }

        v54 = v213;
        v55 = v214;
        sub_100020E58(&v212, v213);
        (*(v55 + 88))(&v202, v54, v55);
        v56 = v203;
        v57 = v204;
        sub_100020E58(&v202, v203);
        v58 = (*(v57 + 136))(v56, v57);
        sub_100005070(&v202);
        if (v58 == 2)
        {
          v59 = v213;
          v60 = v214;
          sub_10002A948(&v212, v213);
          v61 = (*(v60 + 104))(&v202, v59, v60);
          v63 = *(v62 + 24);
          v64 = *(v62 + 32);
          sub_10002A948(v62, v63);
          v65 = *(v64 + 144);
          v66 = v64;
          v3 = v196;
          v65(1, v63, v66);
          v61(&v202, 0);
        }

        v67 = v213;
        v68 = v214;
        sub_100020E58(&v212, v213);
        (*(v68 + 88))(&v202, v67, v68);
        v69 = v203;
        v70 = v204;
        sub_100020E58(&v202, v203);
        v71 = (*(v70 + 88))(v69, v70);
        sub_100005070(&v202);
        if (v71)
        {
        }

        else
        {
          v157 = v213;
          v158 = v214;
          sub_10002A948(&v212, v213);
          v159 = *(v158 + 104);
          v160 = v192;
          v161 = v192;
          v162 = v159(&v202, v157, v158);
          v2 = v195;
          v163 = v162;
          v165 = *(v164 + 24);
          v166 = *(v164 + 32);
          sub_10002A948(v164, v165);
          v167 = *(v166 + 96);
          v168 = v166;
          v3 = v196;
          v167(v160, v165, v168);
          v163(&v202, 0);
        }

        goto LABEL_72;
      }
    }

    v72 = v213;
    v73 = v214;
    sub_100020E58(&v212, v213);
    LOBYTE(v73) = (*(v73 + 128))(v206, v72, v73);
    v74 = v213;
    v75 = v214;
    sub_100020E58(&v212, v213);
    if (v73)
    {
      (*(v75 + 88))(&v202, v74, v75);
      v76 = v203;
      v77 = v204;
      sub_100020E58(&v202, v203);
      v78 = (*(v77 + 112))(v76, v77);
      sub_100005070(&v202);
      if (v78 == 2)
      {
        v79 = v213;
        v80 = v214;
        sub_10002A948(&v212, v213);
        v81 = (*(v80 + 104))(&v202, v79, v80);
        v83 = *(v82 + 24);
        v84 = *(v82 + 32);
        sub_10002A948(v82, v83);
        (*(v84 + 120))(1, v83, v84);
        v81(&v202, 0);
      }

      v85 = v213;
      v86 = v214;
      sub_100020E58(&v212, v213);
      (*(v86 + 88))(&v202, v85, v86);
      v87 = v203;
      v88 = v204;
      sub_100020E58(&v202, v203);
      v89 = (*(v88 + 136))(v87, v88);
      sub_100005070(&v202);
      if (v89 == 2)
      {
        v90 = v213;
        v91 = v214;
        sub_10002A948(&v212, v213);
        v92 = (*(v91 + 104))(&v202, v90, v91);
        v94 = *(v93 + 24);
        v95 = *(v93 + 32);
        sub_10002A948(v93, v94);
        (*(v95 + 144))(0, v94, v95);
        v92(&v202, 0);
      }

      v96 = v213;
      v97 = v214;
      sub_100020E58(&v212, v213);
      (*(v97 + 88))(&v202, v96, v97);
      v98 = v203;
      v99 = v204;
      sub_100020E58(&v202, v203);
      v100 = (*(v99 + 88))(v98, v99);
      sub_100005070(&v202);
      if (!v100)
      {
        v101 = v213;
        v102 = v214;
        sub_10002A948(&v212, v213);
        v103 = *(v102 + 104);
        v104 = v193;
LABEL_70:
        v169 = v104;
        v170 = v103(&v202, v101, v102);
        v2 = v195;
        v171 = v170;
        v173 = *(v172 + 24);
        v174 = *(v172 + 32);
        sub_10002A948(v172, v173);
        (*(v174 + 96))(v104, v173, v174);
        v171(&v202, 0);
        goto LABEL_71;
      }
    }

    else
    {
      v106 = (*(v75 + 128))(&v209, v74, v75);
      v107 = v213;
      v108 = v214;
      sub_100020E58(&v212, v213);
      if (v106)
      {
        (*(v108 + 88))(&v202, v107, v108);
        v109 = v203;
        v110 = v204;
        sub_100020E58(&v202, v203);
        v111 = (*(v110 + 112))(v109, v110);
        sub_100005070(&v202);
        if (v111 == 2)
        {
          v112 = v213;
          v113 = v214;
          sub_10002A948(&v212, v213);
          v114 = (*(v113 + 104))(&v202, v112, v113);
          v116 = *(v115 + 24);
          v117 = *(v115 + 32);
          sub_10002A948(v115, v116);
          (*(v117 + 120))(0, v116, v117);
          v114(&v202, 0);
        }

        v118 = v213;
        v119 = v214;
        sub_100020E58(&v212, v213);
        (*(v119 + 88))(&v202, v118, v119);
        v120 = v203;
        v121 = v204;
        sub_100020E58(&v202, v203);
        v122 = (*(v121 + 136))(v120, v121);
        sub_100005070(&v202);
        if (v122 == 2)
        {
          v123 = v213;
          v124 = v214;
          sub_10002A948(&v212, v213);
          v125 = (*(v124 + 104))(&v202, v123, v124);
          v127 = *(v126 + 24);
          v128 = *(v126 + 32);
          sub_10002A948(v126, v127);
          (*(v128 + 144))(1, v127, v128);
          v125(&v202, 0);
        }

        v129 = v213;
        v130 = v214;
        sub_100020E58(&v212, v213);
        (*(v130 + 88))(&v202, v129, v130);
        v131 = v203;
        v132 = v204;
        sub_100020E58(&v202, v203);
        v100 = (*(v132 + 88))(v131, v132);
        sub_100005070(&v202);
        if (!v100)
        {
          v101 = v213;
          v102 = v214;
          sub_10002A948(&v212, v213);
          v103 = *(v102 + 104);
          v104 = v190;
          goto LABEL_70;
        }
      }

      else
      {
        (*(v108 + 88))(&v202, v107, v108);
        v133 = v203;
        v134 = v204;
        sub_100020E58(&v202, v203);
        v135 = (*(v134 + 112))(v133, v134);
        sub_100005070(&v202);
        if (v135 == 2)
        {
          v136 = v213;
          v137 = v214;
          sub_10002A948(&v212, v213);
          v138 = (*(v137 + 104))(&v202, v136, v137);
          v140 = *(v139 + 24);
          v141 = *(v139 + 32);
          sub_10002A948(v139, v140);
          (*(v141 + 120))(0, v140, v141);
          v138(&v202, 0);
        }

        v142 = v213;
        v143 = v214;
        sub_100020E58(&v212, v213);
        (*(v143 + 88))(&v202, v142, v143);
        v144 = v203;
        v145 = v204;
        sub_100020E58(&v202, v203);
        v146 = (*(v145 + 136))(v144, v145);
        sub_100005070(&v202);
        if (v146 == 2)
        {
          v147 = v213;
          v148 = v214;
          sub_10002A948(&v212, v213);
          v149 = (*(v148 + 104))(&v202, v147, v148);
          v151 = *(v150 + 24);
          v152 = *(v150 + 32);
          sub_10002A948(v150, v151);
          (*(v152 + 144))(0, v151, v152);
          v149(&v202, 0);
        }

        v153 = v213;
        v154 = v214;
        sub_100020E58(&v212, v213);
        (*(v154 + 88))(&v202, v153, v154);
        v155 = v203;
        v156 = v204;
        sub_100020E58(&v202, v203);
        v100 = (*(v156 + 88))(v155, v156);
        sub_100005070(&v202);
        if (!v100)
        {
          v101 = v213;
          v102 = v214;
          sub_10002A948(&v212, v213);
          v103 = *(v102 + 104);
          v104 = v191;
          goto LABEL_70;
        }
      }
    }

LABEL_71:
    v3 = v196;
LABEL_72:
    v175 = v213;
    v176 = v214;
    sub_100020E58(&v212, v213);
    (*(v176 + 88))(&v202, v175, v176);
    v177 = v203;
    v178 = v204;
    sub_100020E58(&v202, v203);
    v179 = (*(v178 + 160))(v177, v178);
    sub_100005070(&v202);
    if (v179 == 2)
    {
      v180 = v213;
      v181 = v214;
      sub_10002A948(&v212, v213);
      v182 = (*(v181 + 104))(&v202, v180, v181);
      v184 = *(v183 + 24);
      v185 = *(v183 + 32);
      sub_10002A948(v183, v184);
      v186 = *(v185 + 168);
      v187 = v185;
      v3 = v196;
      v186(1, v184, v187);
      v182(&v202, 0);

      sub_100005070(&v209);
    }

    else
    {
      sub_100005070(&v209);
    }

    sub_100005070(v206);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_10113CE44(v3);
    }

    if (v4 >= v3[2])
    {
      goto LABEL_84;
    }

    sub_100774FCC(&v3[5 * v4 + 4], &v212);
    sub_100005070(&v212);
LABEL_4:
    if (++v4 == v197)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1011340B4(uint64_t a1, double a2)
{
  v4 = type metadata accessor for CRLTweenLayerAnimation();
  __chkstk_darwin(v4);
  v6 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10112DA90(a1, a2);
  v8 = v7;
  v202 = v7[2];
  if (!v202)
  {
    return v8;
  }

  v9 = 0;
  v196 = kCAFillModeRemoved;
  v195 = kCAFillModeForwards;
  v198 = kCAFillModeBackwards;
  v197 = kCAFillModeBoth;
  v199 = v4;
  v200 = v6;
  while (v9 < v8[2])
  {
    v10 = (v8 + 4);
    sub_10000630C(&v8[5 * v9 + 4], v211);
    sub_1005B981C(&qword_1019F5870);
    if (swift_dynamicCast())
    {
      sub_1005F8BCC(v6);
      goto LABEL_4;
    }

    if (v9 >= v8[2])
    {
      goto LABEL_81;
    }

    sub_10000630C(&v8[5 * v9 + 4], &v217);
    v11 = v218;
    v12 = v219;
    sub_100020E58(&v217, v218);
    v203 = (*(v12 + 64))(v11, v12);
    if (!v203)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10113CE44(v8);
      }

      if (v9 >= v8[2])
      {
        goto LABEL_83;
      }

      goto LABEL_54;
    }

    v13 = v218;
    v14 = v219;
    sub_100020E58(&v217, v218);
    (*(v14 + 88))(&v214, v13, v14);
    v15 = v215;
    v16 = v216;
    sub_100020E58(&v214, v215);
    (*(v16 + 56))(v211, v15, v16);
    sub_100005070(&v214);
    v17 = v8;
    v18 = sub_100B7694C();
    sub_100687CF4(v211);
    v201 = v17;
    v19 = v17[2];
    if (v19)
    {
      v20 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_10000630C(v10, &v207);
        v21 = v208;
        v22 = v209;
        sub_100020E58(&v207, v208);
        v23 = (*(v22 + 64))(v21, v22);
        if (v23)
        {
          v24 = v23;
          sub_1009354E4();
          v25 = v203;
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            v27 = v208;
            v28 = v209;
            sub_100020E58(&v207, v208);
            (*(v28 + 88))(&v204, v27, v28);
            v29 = v205;
            v30 = v206;
            sub_100020E58(&v204, v205);
            v31 = (*(v30 + 80))(v29, v30);
            v32 = sub_100B76520(v31);
            v34 = v33;
            if (v32 == sub_100B76520(v18) && v34 == v35)
            {

              sub_100005070(&v204);
LABEL_22:
              sub_100050F74(&v207, &v204);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v210 = v20;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1007767E4(0, v20[2] + 1, 1);
                v20 = v210;
              }

              v40 = v20[2];
              v39 = v20[3];
              if (v40 >= v39 >> 1)
              {
                sub_1007767E4((v39 > 1), v40 + 1, 1);
                v20 = v210;
              }

              v20[2] = v40 + 1;
              sub_100050F74(&v204, &v20[5 * v40 + 4]);
              goto LABEL_12;
            }

            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_100005070(&v204);
            if (v37)
            {
              goto LABEL_22;
            }
          }
        }

        sub_100005070(&v207);
LABEL_12:
        v10 += 40;
        if (!--v19)
        {
          goto LABEL_32;
        }
      }
    }

    v20 = _swiftEmptyArrayStorage;
LABEL_32:
    *&v207 = v20;

    sub_101137F0C(&v207);

    v41 = v207;
    sub_10093524C(v207, &v214);
    v8 = v201;
    if (!v215)
    {

      sub_10000CAAC(&v214, &qword_1019F57A0);
      v6 = v200;
LABEL_51:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10113CE44(v8);
      }

      if (v9 >= v8[2])
      {
        goto LABEL_82;
      }

LABEL_54:
      v110 = &v8[5 * v9];
      sub_100005070((v110 + 4));
      sub_100050F74(&v217, (v110 + 4));
      goto LABEL_4;
    }

    sub_100050F74(&v214, v211);
    sub_100935398(v41, &v207);

    v6 = v200;
    if (!v208)
    {

      sub_10000CAAC(&v207, &qword_1019F57A0);
      sub_100005070(v211);
      goto LABEL_51;
    }

    sub_100050F74(&v207, &v214);
    v42 = v218;
    v43 = v219;
    sub_100020E58(&v217, v218);
    if ((*(v43 + 128))(v211, v42, v43))
    {
      v44 = v212;
      v45 = v213;
      sub_100020E58(v211, v212);
      if ((*(v45 + 128))(&v214, v44, v45))
      {
        v46 = v218;
        v47 = v219;
        sub_100020E58(&v217, v218);
        (*(v47 + 88))(&v207, v46, v47);
        v48 = v208;
        v49 = v209;
        sub_100020E58(&v207, v208);
        v50 = (*(v49 + 112))(v48, v49);
        sub_100005070(&v207);
        if (v50 == 2)
        {
          v51 = v218;
          v52 = v219;
          sub_10002A948(&v217, v218);
          v53 = (*(v52 + 104))(&v207, v51, v52);
          v55 = *(v54 + 24);
          v56 = *(v54 + 32);
          sub_10002A948(v54, v55);
          v57 = *(v56 + 120);
          v58 = v56;
          v8 = v201;
          v57(1, v55, v58);
          v53(&v207, 0);
        }

        v59 = v218;
        v60 = v219;
        sub_100020E58(&v217, v218);
        (*(v60 + 88))(&v207, v59, v60);
        v61 = v208;
        v62 = v209;
        sub_100020E58(&v207, v208);
        v63 = (*(v62 + 136))(v61, v62);
        sub_100005070(&v207);
        if (v63 == 2)
        {
          v64 = v218;
          v65 = v219;
          sub_10002A948(&v217, v218);
          v66 = (*(v65 + 104))(&v207, v64, v65);
          v68 = *(v67 + 24);
          v69 = *(v67 + 32);
          sub_10002A948(v67, v68);
          v70 = *(v69 + 144);
          v71 = v69;
          v8 = v201;
          v70(1, v68, v71);
          v66(&v207, 0);
        }

        v72 = v218;
        v73 = v219;
        sub_100020E58(&v217, v218);
        (*(v73 + 88))(&v207, v72, v73);
        v74 = v208;
        v75 = v209;
        sub_100020E58(&v207, v208);
        v76 = (*(v75 + 88))(v74, v75);
        sub_100005070(&v207);
        if (v76)
        {
        }

        else
        {
          v162 = v218;
          v163 = v219;
          sub_10002A948(&v217, v218);
          v164 = *(v163 + 104);
          v165 = v197;
          v166 = v197;
          v167 = v164(&v207, v162, v163);
          v6 = v200;
          v168 = v167;
          v170 = *(v169 + 24);
          v171 = *(v169 + 32);
          sub_10002A948(v169, v170);
          v172 = *(v171 + 96);
          v173 = v171;
          v8 = v201;
          v172(v165, v170, v173);
          v168(&v207, 0);
        }

        goto LABEL_72;
      }
    }

    v77 = v218;
    v78 = v219;
    sub_100020E58(&v217, v218);
    LOBYTE(v78) = (*(v78 + 128))(v211, v77, v78);
    v79 = v218;
    v80 = v219;
    sub_100020E58(&v217, v218);
    if (v78)
    {
      (*(v80 + 88))(&v207, v79, v80);
      v81 = v208;
      v82 = v209;
      sub_100020E58(&v207, v208);
      v83 = (*(v82 + 112))(v81, v82);
      sub_100005070(&v207);
      if (v83 == 2)
      {
        v84 = v218;
        v85 = v219;
        sub_10002A948(&v217, v218);
        v86 = (*(v85 + 104))(&v207, v84, v85);
        v88 = *(v87 + 24);
        v89 = *(v87 + 32);
        sub_10002A948(v87, v88);
        (*(v89 + 120))(1, v88, v89);
        v86(&v207, 0);
      }

      v90 = v218;
      v91 = v219;
      sub_100020E58(&v217, v218);
      (*(v91 + 88))(&v207, v90, v91);
      v92 = v208;
      v93 = v209;
      sub_100020E58(&v207, v208);
      v94 = (*(v93 + 136))(v92, v93);
      sub_100005070(&v207);
      if (v94 == 2)
      {
        v95 = v218;
        v96 = v219;
        sub_10002A948(&v217, v218);
        v97 = (*(v96 + 104))(&v207, v95, v96);
        v99 = *(v98 + 24);
        v100 = *(v98 + 32);
        sub_10002A948(v98, v99);
        (*(v100 + 144))(0, v99, v100);
        v97(&v207, 0);
      }

      v101 = v218;
      v102 = v219;
      sub_100020E58(&v217, v218);
      (*(v102 + 88))(&v207, v101, v102);
      v103 = v208;
      v104 = v209;
      sub_100020E58(&v207, v208);
      v105 = (*(v104 + 88))(v103, v104);
      sub_100005070(&v207);
      if (!v105)
      {
        v106 = v218;
        v107 = v219;
        sub_10002A948(&v217, v218);
        v108 = *(v107 + 104);
        v109 = v198;
LABEL_70:
        v174 = v109;
        v175 = v108(&v207, v106, v107);
        v6 = v200;
        v176 = v175;
        v178 = *(v177 + 24);
        v179 = *(v177 + 32);
        sub_10002A948(v177, v178);
        (*(v179 + 96))(v109, v178, v179);
        v176(&v207, 0);
        goto LABEL_71;
      }
    }

    else
    {
      v111 = (*(v80 + 128))(&v214, v79, v80);
      v112 = v218;
      v113 = v219;
      sub_100020E58(&v217, v218);
      if (v111)
      {
        (*(v113 + 88))(&v207, v112, v113);
        v114 = v208;
        v115 = v209;
        sub_100020E58(&v207, v208);
        v116 = (*(v115 + 112))(v114, v115);
        sub_100005070(&v207);
        if (v116 == 2)
        {
          v117 = v218;
          v118 = v219;
          sub_10002A948(&v217, v218);
          v119 = (*(v118 + 104))(&v207, v117, v118);
          v121 = *(v120 + 24);
          v122 = *(v120 + 32);
          sub_10002A948(v120, v121);
          (*(v122 + 120))(0, v121, v122);
          v119(&v207, 0);
        }

        v123 = v218;
        v124 = v219;
        sub_100020E58(&v217, v218);
        (*(v124 + 88))(&v207, v123, v124);
        v125 = v208;
        v126 = v209;
        sub_100020E58(&v207, v208);
        v127 = (*(v126 + 136))(v125, v126);
        sub_100005070(&v207);
        if (v127 == 2)
        {
          v128 = v218;
          v129 = v219;
          sub_10002A948(&v217, v218);
          v130 = (*(v129 + 104))(&v207, v128, v129);
          v132 = *(v131 + 24);
          v133 = *(v131 + 32);
          sub_10002A948(v131, v132);
          (*(v133 + 144))(1, v132, v133);
          v130(&v207, 0);
        }

        v134 = v218;
        v135 = v219;
        sub_100020E58(&v217, v218);
        (*(v135 + 88))(&v207, v134, v135);
        v136 = v208;
        v137 = v209;
        sub_100020E58(&v207, v208);
        v105 = (*(v137 + 88))(v136, v137);
        sub_100005070(&v207);
        if (!v105)
        {
          v106 = v218;
          v107 = v219;
          sub_10002A948(&v217, v218);
          v108 = *(v107 + 104);
          v109 = v195;
          goto LABEL_70;
        }
      }

      else
      {
        (*(v113 + 88))(&v207, v112, v113);
        v138 = v208;
        v139 = v209;
        sub_100020E58(&v207, v208);
        v140 = (*(v139 + 112))(v138, v139);
        sub_100005070(&v207);
        if (v140 == 2)
        {
          v141 = v218;
          v142 = v219;
          sub_10002A948(&v217, v218);
          v143 = (*(v142 + 104))(&v207, v141, v142);
          v145 = *(v144 + 24);
          v146 = *(v144 + 32);
          sub_10002A948(v144, v145);
          (*(v146 + 120))(0, v145, v146);
          v143(&v207, 0);
        }

        v147 = v218;
        v148 = v219;
        sub_100020E58(&v217, v218);
        (*(v148 + 88))(&v207, v147, v148);
        v149 = v208;
        v150 = v209;
        sub_100020E58(&v207, v208);
        v151 = (*(v150 + 136))(v149, v150);
        sub_100005070(&v207);
        if (v151 == 2)
        {
          v152 = v218;
          v153 = v219;
          sub_10002A948(&v217, v218);
          v154 = (*(v153 + 104))(&v207, v152, v153);
          v156 = *(v155 + 24);
          v157 = *(v155 + 32);
          sub_10002A948(v155, v156);
          (*(v157 + 144))(0, v156, v157);
          v154(&v207, 0);
        }

        v158 = v218;
        v159 = v219;
        sub_100020E58(&v217, v218);
        (*(v159 + 88))(&v207, v158, v159);
        v160 = v208;
        v161 = v209;
        sub_100020E58(&v207, v208);
        v105 = (*(v161 + 88))(v160, v161);
        sub_100005070(&v207);
        if (!v105)
        {
          v106 = v218;
          v107 = v219;
          sub_10002A948(&v217, v218);
          v108 = *(v107 + 104);
          v109 = v196;
          goto LABEL_70;
        }
      }
    }

LABEL_71:
    v8 = v201;
LABEL_72:
    v180 = v218;
    v181 = v219;
    sub_100020E58(&v217, v218);
    (*(v181 + 88))(&v207, v180, v181);
    v182 = v208;
    v183 = v209;
    sub_100020E58(&v207, v208);
    v184 = (*(v183 + 160))(v182, v183);
    sub_100005070(&v207);
    if (v184 == 2)
    {
      v185 = v218;
      v186 = v219;
      sub_10002A948(&v217, v218);
      v187 = (*(v186 + 104))(&v207, v185, v186);
      v189 = *(v188 + 24);
      v190 = *(v188 + 32);
      sub_10002A948(v188, v189);
      v191 = *(v190 + 168);
      v192 = v190;
      v8 = v201;
      v191(1, v189, v192);
      v187(&v207, 0);

      sub_100005070(&v214);
    }

    else
    {
      sub_100005070(&v214);
    }

    sub_100005070(v211);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_10113CE44(v8);
    }

    if (v9 >= v8[2])
    {
      goto LABEL_84;
    }

    sub_100774FCC(&v8[5 * v9 + 4], &v217);
    sub_100005070(&v217);
LABEL_4:
    if (++v9 == v202)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1011353F8(uint64_t a1, double a2)
{
  v4 = type metadata accessor for CRLTweenLayerAnimation();
  __chkstk_darwin(v4);
  v6 = &v203 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = &type metadata for CRLLayerAnimationFlatGroup;
  v222 = &off_1018A0308;
  v220[0] = a1;
  *&v220[1] = a2;
  v7 = sub_100020E58(v220, &type metadata for CRLLayerAnimationFlatGroup);
  __chkstk_darwin(v7);
  v9 = (&v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v10;
  v12 = *(v10 + 1);

  *v9 = sub_100CCF120(v11, v12);
  v9[1] = v13;
  v14 = sub_100CCF57C();
  v16 = v15;
  (_swift_cvw_destroy)(v9, &type metadata for CRLLayerAnimationFlatGroup, v14);
  v17 = v16;
  sub_100005070(v220);
  v211 = v16[2];
  if (!v211)
  {
    return v17;
  }

  v18 = 0;
  v205 = kCAFillModeRemoved;
  v204 = kCAFillModeForwards;
  v207 = kCAFillModeBackwards;
  v206 = kCAFillModeBoth;
  v208 = v4;
  v209 = v6;
  while (v18 < v17[2])
  {
    v19 = (v17 + 4);
    sub_10000630C(&v17[5 * v18 + 4], v220);
    sub_1005B981C(&qword_1019F5870);
    if (swift_dynamicCast())
    {
      sub_1005F8BCC(v6);
      goto LABEL_4;
    }

    if (v18 >= v17[2])
    {
      goto LABEL_81;
    }

    sub_10000630C(&v17[5 * v18 + 4], &v226);
    v20 = v227;
    v21 = v228;
    sub_100020E58(&v226, v227);
    v212 = (*(v21 + 64))(v20, v21);
    if (!v212)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_10113CE44(v17);
      }

      if (v18 >= v17[2])
      {
        goto LABEL_83;
      }

      goto LABEL_54;
    }

    v22 = v227;
    v23 = v228;
    sub_100020E58(&v226, v227);
    (*(v23 + 88))(&v223, v22, v23);
    v24 = v224;
    v25 = v225;
    sub_100020E58(&v223, v224);
    (*(v25 + 56))(v220, v24, v25);
    sub_100005070(&v223);
    v26 = v17;
    v27 = sub_100B7694C();
    sub_100687CF4(v220);
    v210 = v26;
    v28 = v26[2];
    if (v28)
    {
      v29 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_10000630C(v19, &v216);
        v30 = v217;
        v31 = v218;
        sub_100020E58(&v216, v217);
        v32 = (*(v31 + 64))(v30, v31);
        if (v32)
        {
          v33 = v32;
          sub_1009354E4();
          v34 = v212;
          v35 = static NSObject.== infix(_:_:)();

          if (v35)
          {
            v36 = v217;
            v37 = v218;
            sub_100020E58(&v216, v217);
            (*(v37 + 88))(&v213, v36, v37);
            v38 = v214;
            v39 = v215;
            sub_100020E58(&v213, v214);
            v40 = (*(v39 + 80))(v38, v39);
            v41 = sub_100B76520(v40);
            v43 = v42;
            if (v41 == sub_100B76520(v27) && v43 == v44)
            {

              sub_100005070(&v213);
LABEL_22:
              sub_100050F74(&v216, &v213);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v219 = v29;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1007767E4(0, v29[2] + 1, 1);
                v29 = v219;
              }

              v49 = v29[2];
              v48 = v29[3];
              if (v49 >= v48 >> 1)
              {
                sub_1007767E4((v48 > 1), v49 + 1, 1);
                v29 = v219;
              }

              v29[2] = v49 + 1;
              sub_100050F74(&v213, &v29[5 * v49 + 4]);
              goto LABEL_12;
            }

            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_100005070(&v213);
            if (v46)
            {
              goto LABEL_22;
            }
          }
        }

        sub_100005070(&v216);
LABEL_12:
        v19 += 40;
        if (!--v28)
        {
          goto LABEL_32;
        }
      }
    }

    v29 = _swiftEmptyArrayStorage;
LABEL_32:
    *&v216 = v29;

    sub_101137F0C(&v216);

    v50 = v216;
    sub_10093524C(v216, &v223);
    v17 = v210;
    if (!v224)
    {

      sub_10000CAAC(&v223, &qword_1019F57A0);
      v6 = v209;
LABEL_51:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_10113CE44(v17);
      }

      if (v18 >= v17[2])
      {
        goto LABEL_82;
      }

LABEL_54:
      v119 = &v17[5 * v18];
      sub_100005070((v119 + 4));
      sub_100050F74(&v226, (v119 + 4));
      goto LABEL_4;
    }

    sub_100050F74(&v223, v220);
    sub_100935398(v50, &v216);

    v6 = v209;
    if (!v217)
    {

      sub_10000CAAC(&v216, &qword_1019F57A0);
      sub_100005070(v220);
      goto LABEL_51;
    }

    sub_100050F74(&v216, &v223);
    v51 = v227;
    v52 = v228;
    sub_100020E58(&v226, v227);
    if ((*(v52 + 128))(v220, v51, v52))
    {
      v53 = v221;
      v54 = v222;
      sub_100020E58(v220, v221);
      if ((v54[16])(&v223, v53, v54))
      {
        v55 = v227;
        v56 = v228;
        sub_100020E58(&v226, v227);
        (*(v56 + 88))(&v216, v55, v56);
        v57 = v217;
        v58 = v218;
        sub_100020E58(&v216, v217);
        v59 = (*(v58 + 112))(v57, v58);
        sub_100005070(&v216);
        if (v59 == 2)
        {
          v60 = v227;
          v61 = v228;
          sub_10002A948(&v226, v227);
          v62 = (*(v61 + 104))(&v216, v60, v61);
          v64 = *(v63 + 24);
          v65 = *(v63 + 32);
          sub_10002A948(v63, v64);
          v66 = *(v65 + 120);
          v67 = v65;
          v17 = v210;
          v66(1, v64, v67);
          v62(&v216, 0);
        }

        v68 = v227;
        v69 = v228;
        sub_100020E58(&v226, v227);
        (*(v69 + 88))(&v216, v68, v69);
        v70 = v217;
        v71 = v218;
        sub_100020E58(&v216, v217);
        v72 = (*(v71 + 136))(v70, v71);
        sub_100005070(&v216);
        if (v72 == 2)
        {
          v73 = v227;
          v74 = v228;
          sub_10002A948(&v226, v227);
          v75 = (*(v74 + 104))(&v216, v73, v74);
          v77 = *(v76 + 24);
          v78 = *(v76 + 32);
          sub_10002A948(v76, v77);
          v79 = *(v78 + 144);
          v80 = v78;
          v17 = v210;
          v79(1, v77, v80);
          v75(&v216, 0);
        }

        v81 = v227;
        v82 = v228;
        sub_100020E58(&v226, v227);
        (*(v82 + 88))(&v216, v81, v82);
        v83 = v217;
        v84 = v218;
        sub_100020E58(&v216, v217);
        v85 = (*(v84 + 88))(v83, v84);
        sub_100005070(&v216);
        if (v85)
        {
        }

        else
        {
          v171 = v227;
          v172 = v228;
          sub_10002A948(&v226, v227);
          v173 = *(v172 + 104);
          v174 = v206;
          v175 = v206;
          v176 = v173(&v216, v171, v172);
          v6 = v209;
          v177 = v176;
          v179 = *(v178 + 24);
          v180 = *(v178 + 32);
          sub_10002A948(v178, v179);
          v181 = *(v180 + 96);
          v182 = v180;
          v17 = v210;
          v181(v174, v179, v182);
          v177(&v216, 0);
        }

        goto LABEL_72;
      }
    }

    v86 = v227;
    v87 = v228;
    sub_100020E58(&v226, v227);
    LOBYTE(v87) = (*(v87 + 128))(v220, v86, v87);
    v88 = v227;
    v89 = v228;
    sub_100020E58(&v226, v227);
    if (v87)
    {
      (*(v89 + 88))(&v216, v88, v89);
      v90 = v217;
      v91 = v218;
      sub_100020E58(&v216, v217);
      v92 = (*(v91 + 112))(v90, v91);
      sub_100005070(&v216);
      if (v92 == 2)
      {
        v93 = v227;
        v94 = v228;
        sub_10002A948(&v226, v227);
        v95 = (*(v94 + 104))(&v216, v93, v94);
        v97 = *(v96 + 24);
        v98 = *(v96 + 32);
        sub_10002A948(v96, v97);
        (*(v98 + 120))(1, v97, v98);
        v95(&v216, 0);
      }

      v99 = v227;
      v100 = v228;
      sub_100020E58(&v226, v227);
      (*(v100 + 88))(&v216, v99, v100);
      v101 = v217;
      v102 = v218;
      sub_100020E58(&v216, v217);
      v103 = (*(v102 + 136))(v101, v102);
      sub_100005070(&v216);
      if (v103 == 2)
      {
        v104 = v227;
        v105 = v228;
        sub_10002A948(&v226, v227);
        v106 = (*(v105 + 104))(&v216, v104, v105);
        v108 = *(v107 + 24);
        v109 = *(v107 + 32);
        sub_10002A948(v107, v108);
        (*(v109 + 144))(0, v108, v109);
        v106(&v216, 0);
      }

      v110 = v227;
      v111 = v228;
      sub_100020E58(&v226, v227);
      (*(v111 + 88))(&v216, v110, v111);
      v112 = v217;
      v113 = v218;
      sub_100020E58(&v216, v217);
      v114 = (*(v113 + 88))(v112, v113);
      sub_100005070(&v216);
      if (!v114)
      {
        v115 = v227;
        v116 = v228;
        sub_10002A948(&v226, v227);
        v117 = *(v116 + 104);
        v118 = v207;
LABEL_70:
        v183 = v118;
        v184 = v117(&v216, v115, v116);
        v6 = v209;
        v185 = v184;
        v187 = *(v186 + 24);
        v188 = *(v186 + 32);
        sub_10002A948(v186, v187);
        (*(v188 + 96))(v118, v187, v188);
        v185(&v216, 0);
        goto LABEL_71;
      }
    }

    else
    {
      v120 = (*(v89 + 128))(&v223, v88, v89);
      v121 = v227;
      v122 = v228;
      sub_100020E58(&v226, v227);
      if (v120)
      {
        (*(v122 + 88))(&v216, v121, v122);
        v123 = v217;
        v124 = v218;
        sub_100020E58(&v216, v217);
        v125 = (*(v124 + 112))(v123, v124);
        sub_100005070(&v216);
        if (v125 == 2)
        {
          v126 = v227;
          v127 = v228;
          sub_10002A948(&v226, v227);
          v128 = (*(v127 + 104))(&v216, v126, v127);
          v130 = *(v129 + 24);
          v131 = *(v129 + 32);
          sub_10002A948(v129, v130);
          (*(v131 + 120))(0, v130, v131);
          v128(&v216, 0);
        }

        v132 = v227;
        v133 = v228;
        sub_100020E58(&v226, v227);
        (*(v133 + 88))(&v216, v132, v133);
        v134 = v217;
        v135 = v218;
        sub_100020E58(&v216, v217);
        v136 = (*(v135 + 136))(v134, v135);
        sub_100005070(&v216);
        if (v136 == 2)
        {
          v137 = v227;
          v138 = v228;
          sub_10002A948(&v226, v227);
          v139 = (*(v138 + 104))(&v216, v137, v138);
          v141 = *(v140 + 24);
          v142 = *(v140 + 32);
          sub_10002A948(v140, v141);
          (*(v142 + 144))(1, v141, v142);
          v139(&v216, 0);
        }

        v143 = v227;
        v144 = v228;
        sub_100020E58(&v226, v227);
        (*(v144 + 88))(&v216, v143, v144);
        v145 = v217;
        v146 = v218;
        sub_100020E58(&v216, v217);
        v114 = (*(v146 + 88))(v145, v146);
        sub_100005070(&v216);
        if (!v114)
        {
          v115 = v227;
          v116 = v228;
          sub_10002A948(&v226, v227);
          v117 = *(v116 + 104);
          v118 = v204;
          goto LABEL_70;
        }
      }

      else
      {
        (*(v122 + 88))(&v216, v121, v122);
        v147 = v217;
        v148 = v218;
        sub_100020E58(&v216, v217);
        v149 = (*(v148 + 112))(v147, v148);
        sub_100005070(&v216);
        if (v149 == 2)
        {
          v150 = v227;
          v151 = v228;
          sub_10002A948(&v226, v227);
          v152 = (*(v151 + 104))(&v216, v150, v151);
          v154 = *(v153 + 24);
          v155 = *(v153 + 32);
          sub_10002A948(v153, v154);
          (*(v155 + 120))(0, v154, v155);
          v152(&v216, 0);
        }

        v156 = v227;
        v157 = v228;
        sub_100020E58(&v226, v227);
        (*(v157 + 88))(&v216, v156, v157);
        v158 = v217;
        v159 = v218;
        sub_100020E58(&v216, v217);
        v160 = (*(v159 + 136))(v158, v159);
        sub_100005070(&v216);
        if (v160 == 2)
        {
          v161 = v227;
          v162 = v228;
          sub_10002A948(&v226, v227);
          v163 = (*(v162 + 104))(&v216, v161, v162);
          v165 = *(v164 + 24);
          v166 = *(v164 + 32);
          sub_10002A948(v164, v165);
          (*(v166 + 144))(0, v165, v166);
          v163(&v216, 0);
        }

        v167 = v227;
        v168 = v228;
        sub_100020E58(&v226, v227);
        (*(v168 + 88))(&v216, v167, v168);
        v169 = v217;
        v170 = v218;
        sub_100020E58(&v216, v217);
        v114 = (*(v170 + 88))(v169, v170);
        sub_100005070(&v216);
        if (!v114)
        {
          v115 = v227;
          v116 = v228;
          sub_10002A948(&v226, v227);
          v117 = *(v116 + 104);
          v118 = v205;
          goto LABEL_70;
        }
      }
    }

LABEL_71:
    v17 = v210;
LABEL_72:
    v189 = v227;
    v190 = v228;
    sub_100020E58(&v226, v227);
    (*(v190 + 88))(&v216, v189, v190);
    v191 = v217;
    v192 = v218;
    sub_100020E58(&v216, v217);
    v193 = (*(v192 + 160))(v191, v192);
    sub_100005070(&v216);
    if (v193 == 2)
    {
      v194 = v227;
      v195 = v228;
      sub_10002A948(&v226, v227);
      v196 = (*(v195 + 104))(&v216, v194, v195);
      v198 = *(v197 + 24);
      v199 = *(v197 + 32);
      sub_10002A948(v197, v198);
      v200 = *(v199 + 168);
      v201 = v199;
      v17 = v210;
      v200(1, v198, v201);
      v196(&v216, 0);

      sub_100005070(&v223);
    }

    else
    {
      sub_100005070(&v223);
    }

    sub_100005070(v220);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_10113CE44(v17);
    }

    if (v18 >= v17[2])
    {
      goto LABEL_84;
    }

    sub_100774FCC(&v17[5 * v18 + 4], &v226);
    sub_100005070(&v226);
LABEL_4:
    if (++v18 == v211)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10113682C()
{
  v1 = type metadata accessor for CRLTweenLayerAnimation();
  __chkstk_darwin(v1);
  v213 = &v207 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CRLCanvasLayerAnimationProvider();
  v225 = v3;
  v226 = &off_10188FCB8;
  v4 = sub_10002C58C(v224);
  sub_10113E1F4(v0, v4, type metadata accessor for CRLCanvasLayerAnimationProvider);
  v6 = v225;
  v5 = v226;
  v7 = sub_100020E58(v224, v225);
  v8 = *(v6 - 8);
  __chkstk_darwin(v7);
  v10 = &v207 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + *(v3 + 20));
  sub_10113E1F4(v11, v10, type metadata accessor for CRLCanvasLayerAnimation);
  v13 = &v10[*(type metadata accessor for CRLCanvasLayerAnimation() + 48)];
  v14 = *(v13 + 24);
  v15 = *(v13 + 32);
  sub_10002A948(v13, v14);
  v16 = (*(*(v15 + 32) + 24))(&v230, v14);
  *v17 = v12 + *v17;
  v16(&v230, 0);
  *&v10[*(v3 + 20)] = 0;
  v18 = (v5[4])(v6, v5);
  v19 = v6;
  v20 = v18;
  (*(v8 + 8))(v10, v19);
  sub_100005070(v224);
  v215 = v20[2];
  if (!v215)
  {
    return v20;
  }

  v21 = 0;
  v209 = kCAFillModeRemoved;
  v208 = kCAFillModeForwards;
  v211 = kCAFillModeBackwards;
  v210 = kCAFillModeBoth;
  v22 = v213;
  v212 = v1;
  while (v21 < v20[2])
  {
    v23 = (v20 + 4);
    sub_10000630C(&v20[5 * v21 + 4], v224);
    sub_1005B981C(&qword_1019F5870);
    if (swift_dynamicCast())
    {
      sub_1005F8BCC(v22);
      goto LABEL_4;
    }

    if (v21 >= v20[2])
    {
      goto LABEL_81;
    }

    sub_10000630C(&v20[5 * v21 + 4], &v230);
    v24 = v231;
    v25 = v232;
    sub_100020E58(&v230, v231);
    v216 = (*(v25 + 64))(v24, v25);
    if (!v216)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10113CE44(v20);
      }

      if (v21 >= v20[2])
      {
        goto LABEL_83;
      }

      goto LABEL_54;
    }

    v26 = v231;
    v27 = v232;
    sub_100020E58(&v230, v231);
    (*(v27 + 88))(&v227, v26, v27);
    v28 = v228;
    v29 = v229;
    sub_100020E58(&v227, v228);
    (*(v29 + 56))(v224, v28, v29);
    sub_100005070(&v227);
    v30 = v20;
    v31 = sub_100B7694C();
    sub_100687CF4(v224);
    v214 = v30;
    v32 = v30[2];
    if (v32)
    {
      v33 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_10000630C(v23, &v220);
        v34 = v221;
        v35 = v222;
        sub_100020E58(&v220, v221);
        v36 = (*(v35 + 64))(v34, v35);
        if (v36)
        {
          v37 = v36;
          sub_1009354E4();
          v38 = v216;
          v39 = static NSObject.== infix(_:_:)();

          if (v39)
          {
            v40 = v221;
            v41 = v222;
            sub_100020E58(&v220, v221);
            (*(v41 + 88))(&v217, v40, v41);
            v42 = v218;
            v43 = v219;
            sub_100020E58(&v217, v218);
            v44 = (*(v43 + 80))(v42, v43);
            v45 = sub_100B76520(v44);
            v47 = v46;
            if (v45 == sub_100B76520(v31) && v47 == v48)
            {

              sub_100005070(&v217);
LABEL_22:
              sub_100050F74(&v220, &v217);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v223 = v33;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1007767E4(0, v33[2] + 1, 1);
                v33 = v223;
              }

              v53 = v33[2];
              v52 = v33[3];
              if (v53 >= v52 >> 1)
              {
                sub_1007767E4((v52 > 1), v53 + 1, 1);
                v33 = v223;
              }

              v33[2] = v53 + 1;
              sub_100050F74(&v217, &v33[5 * v53 + 4]);
              goto LABEL_12;
            }

            v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

            sub_100005070(&v217);
            if (v50)
            {
              goto LABEL_22;
            }
          }
        }

        sub_100005070(&v220);
LABEL_12:
        v23 += 40;
        if (!--v32)
        {
          goto LABEL_32;
        }
      }
    }

    v33 = _swiftEmptyArrayStorage;
LABEL_32:
    *&v220 = v33;

    sub_101137F0C(&v220);

    v54 = v220;
    sub_10093524C(v220, &v227);
    v20 = v214;
    if (!v228)
    {

      sub_10000CAAC(&v227, &qword_1019F57A0);
      v22 = v213;
LABEL_51:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10113CE44(v20);
      }

      if (v21 >= v20[2])
      {
        goto LABEL_82;
      }

LABEL_54:
      v123 = &v20[5 * v21];
      sub_100005070((v123 + 4));
      sub_100050F74(&v230, (v123 + 4));
      goto LABEL_4;
    }

    sub_100050F74(&v227, v224);
    sub_100935398(v54, &v220);

    v22 = v213;
    if (!v221)
    {

      sub_10000CAAC(&v220, &qword_1019F57A0);
      sub_100005070(v224);
      goto LABEL_51;
    }

    sub_100050F74(&v220, &v227);
    v55 = v231;
    v56 = v232;
    sub_100020E58(&v230, v231);
    if ((*(v56 + 128))(v224, v55, v56))
    {
      v57 = v225;
      v58 = v226;
      sub_100020E58(v224, v225);
      if ((v58[16])(&v227, v57, v58))
      {
        v59 = v231;
        v60 = v232;
        sub_100020E58(&v230, v231);
        (*(v60 + 88))(&v220, v59, v60);
        v61 = v221;
        v62 = v222;
        sub_100020E58(&v220, v221);
        v63 = (*(v62 + 112))(v61, v62);
        sub_100005070(&v220);
        if (v63 == 2)
        {
          v64 = v231;
          v65 = v232;
          sub_10002A948(&v230, v231);
          v66 = (*(v65 + 104))(&v220, v64, v65);
          v68 = *(v67 + 24);
          v69 = *(v67 + 32);
          sub_10002A948(v67, v68);
          v70 = *(v69 + 120);
          v71 = v69;
          v20 = v214;
          v70(1, v68, v71);
          v66(&v220, 0);
        }

        v72 = v231;
        v73 = v232;
        sub_100020E58(&v230, v231);
        (*(v73 + 88))(&v220, v72, v73);
        v74 = v221;
        v75 = v222;
        sub_100020E58(&v220, v221);
        v76 = (*(v75 + 136))(v74, v75);
        sub_100005070(&v220);
        if (v76 == 2)
        {
          v77 = v231;
          v78 = v232;
          sub_10002A948(&v230, v231);
          v79 = (*(v78 + 104))(&v220, v77, v78);
          v81 = *(v80 + 24);
          v82 = *(v80 + 32);
          sub_10002A948(v80, v81);
          v83 = *(v82 + 144);
          v84 = v82;
          v20 = v214;
          v83(1, v81, v84);
          v79(&v220, 0);
        }

        v85 = v231;
        v86 = v232;
        sub_100020E58(&v230, v231);
        (*(v86 + 88))(&v220, v85, v86);
        v87 = v221;
        v88 = v222;
        sub_100020E58(&v220, v221);
        v89 = (*(v88 + 88))(v87, v88);
        sub_100005070(&v220);
        if (v89)
        {
        }

        else
        {
          v175 = v231;
          v176 = v232;
          sub_10002A948(&v230, v231);
          v177 = *(v176 + 104);
          v178 = v210;
          v179 = v210;
          v180 = v177(&v220, v175, v176);
          v22 = v213;
          v181 = v180;
          v183 = *(v182 + 24);
          v184 = *(v182 + 32);
          sub_10002A948(v182, v183);
          v185 = *(v184 + 96);
          v186 = v184;
          v20 = v214;
          v185(v178, v183, v186);
          v181(&v220, 0);
        }

        goto LABEL_72;
      }
    }

    v90 = v231;
    v91 = v232;
    sub_100020E58(&v230, v231);
    LOBYTE(v91) = (*(v91 + 128))(v224, v90, v91);
    v92 = v231;
    v93 = v232;
    sub_100020E58(&v230, v231);
    if (v91)
    {
      (*(v93 + 88))(&v220, v92, v93);
      v94 = v221;
      v95 = v222;
      sub_100020E58(&v220, v221);
      v96 = (*(v95 + 112))(v94, v95);
      sub_100005070(&v220);
      if (v96 == 2)
      {
        v97 = v231;
        v98 = v232;
        sub_10002A948(&v230, v231);
        v99 = (*(v98 + 104))(&v220, v97, v98);
        v101 = *(v100 + 24);
        v102 = *(v100 + 32);
        sub_10002A948(v100, v101);
        (*(v102 + 120))(1, v101, v102);
        v99(&v220, 0);
      }

      v103 = v231;
      v104 = v232;
      sub_100020E58(&v230, v231);
      (*(v104 + 88))(&v220, v103, v104);
      v105 = v221;
      v106 = v222;
      sub_100020E58(&v220, v221);
      v107 = (*(v106 + 136))(v105, v106);
      sub_100005070(&v220);
      if (v107 == 2)
      {
        v108 = v231;
        v109 = v232;
        sub_10002A948(&v230, v231);
        v110 = (*(v109 + 104))(&v220, v108, v109);
        v112 = *(v111 + 24);
        v113 = *(v111 + 32);
        sub_10002A948(v111, v112);
        (*(v113 + 144))(0, v112, v113);
        v110(&v220, 0);
      }

      v114 = v231;
      v115 = v232;
      sub_100020E58(&v230, v231);
      (*(v115 + 88))(&v220, v114, v115);
      v116 = v221;
      v117 = v222;
      sub_100020E58(&v220, v221);
      v118 = (*(v117 + 88))(v116, v117);
      sub_100005070(&v220);
      if (!v118)
      {
        v119 = v231;
        v120 = v232;
        sub_10002A948(&v230, v231);
        v121 = *(v120 + 104);
        v122 = v211;
LABEL_70:
        v187 = v122;
        v188 = v121(&v220, v119, v120);
        v22 = v213;
        v189 = v188;
        v191 = *(v190 + 24);
        v192 = *(v190 + 32);
        sub_10002A948(v190, v191);
        (*(v192 + 96))(v122, v191, v192);
        v189(&v220, 0);
        goto LABEL_71;
      }
    }

    else
    {
      v124 = (*(v93 + 128))(&v227, v92, v93);
      v125 = v231;
      v126 = v232;
      sub_100020E58(&v230, v231);
      if (v124)
      {
        (*(v126 + 88))(&v220, v125, v126);
        v127 = v221;
        v128 = v222;
        sub_100020E58(&v220, v221);
        v129 = (*(v128 + 112))(v127, v128);
        sub_100005070(&v220);
        if (v129 == 2)
        {
          v130 = v231;
          v131 = v232;
          sub_10002A948(&v230, v231);
          v132 = (*(v131 + 104))(&v220, v130, v131);
          v134 = *(v133 + 24);
          v135 = *(v133 + 32);
          sub_10002A948(v133, v134);
          (*(v135 + 120))(0, v134, v135);
          v132(&v220, 0);
        }

        v136 = v231;
        v137 = v232;
        sub_100020E58(&v230, v231);
        (*(v137 + 88))(&v220, v136, v137);
        v138 = v221;
        v139 = v222;
        sub_100020E58(&v220, v221);
        v140 = (*(v139 + 136))(v138, v139);
        sub_100005070(&v220);
        if (v140 == 2)
        {
          v141 = v231;
          v142 = v232;
          sub_10002A948(&v230, v231);
          v143 = (*(v142 + 104))(&v220, v141, v142);
          v145 = *(v144 + 24);
          v146 = *(v144 + 32);
          sub_10002A948(v144, v145);
          (*(v146 + 144))(1, v145, v146);
          v143(&v220, 0);
        }

        v147 = v231;
        v148 = v232;
        sub_100020E58(&v230, v231);
        (*(v148 + 88))(&v220, v147, v148);
        v149 = v221;
        v150 = v222;
        sub_100020E58(&v220, v221);
        v118 = (*(v150 + 88))(v149, v150);
        sub_100005070(&v220);
        if (!v118)
        {
          v119 = v231;
          v120 = v232;
          sub_10002A948(&v230, v231);
          v121 = *(v120 + 104);
          v122 = v208;
          goto LABEL_70;
        }
      }

      else
      {
        (*(v126 + 88))(&v220, v125, v126);
        v151 = v221;
        v152 = v222;
        sub_100020E58(&v220, v221);
        v153 = (*(v152 + 112))(v151, v152);
        sub_100005070(&v220);
        if (v153 == 2)
        {
          v154 = v231;
          v155 = v232;
          sub_10002A948(&v230, v231);
          v156 = (*(v155 + 104))(&v220, v154, v155);
          v158 = *(v157 + 24);
          v159 = *(v157 + 32);
          sub_10002A948(v157, v158);
          (*(v159 + 120))(0, v158, v159);
          v156(&v220, 0);
        }

        v160 = v231;
        v161 = v232;
        sub_100020E58(&v230, v231);
        (*(v161 + 88))(&v220, v160, v161);
        v162 = v221;
        v163 = v222;
        sub_100020E58(&v220, v221);
        v164 = (*(v163 + 136))(v162, v163);
        sub_100005070(&v220);
        if (v164 == 2)
        {
          v165 = v231;
          v166 = v232;
          sub_10002A948(&v230, v231);
          v167 = (*(v166 + 104))(&v220, v165, v166);
          v169 = *(v168 + 24);
          v170 = *(v168 + 32);
          sub_10002A948(v168, v169);
          (*(v170 + 144))(0, v169, v170);
          v167(&v220, 0);
        }

        v171 = v231;
        v172 = v232;
        sub_100020E58(&v230, v231);
        (*(v172 + 88))(&v220, v171, v172);
        v173 = v221;
        v174 = v222;
        sub_100020E58(&v220, v221);
        v118 = (*(v174 + 88))(v173, v174);
        sub_100005070(&v220);
        if (!v118)
        {
          v119 = v231;
          v120 = v232;
          sub_10002A948(&v230, v231);
          v121 = *(v120 + 104);
          v122 = v209;
          goto LABEL_70;
        }
      }
    }

LABEL_71:
    v20 = v214;
LABEL_72:
    v193 = v231;
    v194 = v232;
    sub_100020E58(&v230, v231);
    (*(v194 + 88))(&v220, v193, v194);
    v195 = v221;
    v196 = v222;
    sub_100020E58(&v220, v221);
    v197 = (*(v196 + 160))(v195, v196);
    sub_100005070(&v220);
    if (v197 == 2)
    {
      v198 = v231;
      v199 = v232;
      sub_10002A948(&v230, v231);
      v200 = (*(v199 + 104))(&v220, v198, v199);
      v202 = *(v201 + 24);
      v203 = *(v201 + 32);
      sub_10002A948(v201, v202);
      v204 = *(v203 + 168);
      v205 = v203;
      v20 = v214;
      v204(1, v202, v205);
      v200(&v220, 0);

      sub_100005070(&v227);
    }

    else
    {
      sub_100005070(&v227);
    }

    sub_100005070(v224);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_10113CE44(v20);
    }

    if (v21 >= v20[2])
    {
      goto LABEL_84;
    }

    sub_100774FCC(&v20[5 * v21 + 4], &v230);
    sub_100005070(&v230);
LABEL_4:
    if (++v21 == v215)
    {
      return v20;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);

  __break(1u);
  return result;
}